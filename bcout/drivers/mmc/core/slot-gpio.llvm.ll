; ModuleID = '../bcout/drivers/mmc/core/slot-gpio.llvm.bc'
source_filename = "drivers/mmc/core/slot-gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.mmc_host = type { %struct.device*, %struct.device, i32, %struct.mmc_host_ops*, %struct.mmc_pwrseq*, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.wakeup_source*, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, %struct.mmc_card*, %struct.wait_queue_head, %struct.mmc_ctx*, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, %struct.mmc_bus_ops*, i32, i32, %struct.task_struct*, %struct.delayed_work, i8, %struct.atomic_t, i32, %struct.led_trigger*, %struct.mmc_supply, %struct.dentry*, %struct.mmc_request*, i32, i32, i32, i32, %struct.mmc_cqe_ops*, i8*, i32, i8, i8, i8, [41 x i8], [0 x i64] }
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
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i8, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, %struct.wakeup_source*, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, %struct.wake_irq*, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i64, i64, i64, i64, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, i32 (%struct.hrtimer*)*, %struct.hrtimer_clock_base*, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.hrtimer_clock_base = type { %struct.hrtimer_cpu_base*, i32, i32, %struct.seqcount_raw_spinlock, %struct.hrtimer*, %struct.timerqueue_head, i64 ()*, i64 }
%struct.hrtimer_cpu_base = type { %struct.raw_spinlock, i32, i32, i32, i8, i64, %struct.hrtimer*, i64, %struct.hrtimer*, [16 x i8], [8 x %struct.hrtimer_clock_base] }
%struct.seqcount_raw_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.wake_irq = type opaque
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
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.mmc_host_ops = type { void (%struct.mmc_host*, %struct.mmc_request*, i32)*, void (%struct.mmc_host*, %struct.mmc_request*)*, void (%struct.mmc_host*, %struct.mmc_request*)*, i32 (%struct.mmc_host*, %struct.mmc_request*)*, void (%struct.mmc_host*, %struct.mmc_ios*)*, {}*, {}*, void (%struct.mmc_host*, i32)*, void (%struct.mmc_host*)*, void (%struct.mmc_host*, %struct.mmc_card*)*, i32 (%struct.mmc_host*, %struct.mmc_ios*)*, {}*, i32 (%struct.mmc_host*, i32)*, i32 (%struct.mmc_host*, %struct.mmc_ios*)*, {}*, void (%struct.mmc_host*)*, void (%struct.mmc_host*)*, void (%struct.mmc_host*, %struct.mmc_ios*)*, i32 (%struct.mmc_card*, i32, i32, i32, i32*)*, void (%struct.mmc_host*)*, void (%struct.mmc_host*)*, i32 (%struct.mmc_card*, i32, i32)* }
%struct.mmc_pwrseq = type opaque
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.wakeup_source = type { i8*, i32, %struct.list_head, %struct.spinlock, %struct.wake_irq*, %struct.timer_list, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.device*, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.mmc_card = type { %struct.mmc_host*, %struct.device, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i8, [4 x i32], [4 x i32], [2 x i32], [16 x i32], %struct.mmc_cid, %struct.mmc_csd, %struct.mmc_ext_csd, %struct.sd_scr, %struct.sd_ssr, %struct.sd_switch_caps, i32, %struct.atomic_t, %struct.sdio_cccr, %struct.sdio_cis, [7 x %struct.sdio_func*], %struct.sdio_func*, i8, i8, i32, i8**, %struct.sdio_func_tuple*, i32, i32, i32, %struct.dentry*, [7 x %struct.mmc_part], i32, i32, %struct.workqueue_struct* }
%struct.mmc_cid = type { i32, [8 x i8], i8, i32, i16, i16, i8, i8, i8 }
%struct.mmc_csd = type { i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.mmc_ext_csd = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i8, i8, i32, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, i32 }
%struct.sd_scr = type { i8, i8, i8, i8, i8, i8 }
%struct.sd_ssr = type { i32, i32, i32 }
%struct.sd_switch_caps = type { i32, i32, i32, i32, i32 }
%struct.sdio_cccr = type { i32, i32, i8 }
%struct.sdio_cis = type { i16, i16, i16, i32 }
%struct.sdio_func = type opaque
%struct.sdio_func_tuple = type opaque
%struct.mmc_part = type { i64, i32, [20 x i8], i8, i32 }
%struct.workqueue_struct = type opaque
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mmc_ctx = type { %struct.task_struct* }
%struct.mmc_slot = type { i32, i8, i8* }
%struct.mmc_bus_ops = type opaque
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.17, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i32 }
%struct.sched_class = type opaque
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, %struct.sched_statistics }
%struct.load_weight = type { i64, i32 }
%struct.sched_statistics = type {}
%struct.sched_rt_entity = type { %struct.list_head, i64, i64, i32, i16, i16, %struct.sched_rt_entity* }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, %struct.sched_dl_entity* }
%struct.cpumask = type { [1 x i64] }
%struct.sched_info = type {}
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
%struct.vm_struct = type opaque
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
%struct.atomic_t = type { i32 }
%struct.led_trigger = type opaque
%struct.mmc_supply = type { %struct.regulator*, %struct.regulator* }
%struct.regulator = type opaque
%struct.dentry = type opaque
%struct.mmc_request = type { %struct.mmc_command*, %struct.mmc_command*, %struct.mmc_data*, %struct.mmc_command*, %struct.completion, %struct.completion, void (%struct.mmc_request*)*, void (%struct.mmc_request*)*, %struct.mmc_host*, i8, i32 }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.mmc_command*, %struct.mmc_request*, i32, i32, %struct.scatterlist*, i32 }
%struct.scatterlist = type opaque
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, %struct.mmc_data*, %struct.mmc_request* }
%struct.mmc_cqe_ops = type { i32 (%struct.mmc_host*, %struct.mmc_card*)*, void (%struct.mmc_host*)*, i32 (%struct.mmc_host*, %struct.mmc_request*)*, void (%struct.mmc_host*, %struct.mmc_request*)*, void (%struct.mmc_host*)*, {}*, i1 (%struct.mmc_host*, %struct.mmc_request*, i8*)*, void (%struct.mmc_host*)*, void (%struct.mmc_host*)* }
%struct.mmc_gpio = type { %struct.gpio_desc*, %struct.gpio_desc*, i32 (i32, i8*)*, i8*, i8*, i32 }
%struct.gpio_desc = type opaque

@.str = private unnamed_addr constant [6 x i8] c"%s cd\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s ro\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"drivers/mmc/core/slot-gpio.c\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @mmc_gpio_alloc(%struct.mmc_host* %host) #0 !dbg !80 {
entry:
  %retval = alloca i32, align 4
  %host.addr = alloca %struct.mmc_host*, align 8
  %ctx = alloca %struct.mmc_gpio*, align 8
  store %struct.mmc_host* %host, %struct.mmc_host** %host.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_host** %host.addr, metadata !2428, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.declare(metadata %struct.mmc_gpio** %ctx, metadata !2430, metadata !DIExpression()), !dbg !2446
  %0 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2447
  %parent = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %0, i32 0, i32 0, !dbg !2448
  %1 = load %struct.device*, %struct.device** %parent, align 64, !dbg !2448
  %call = call i8* @devm_kzalloc(%struct.device* %1, i64 48, i32 3264) #4, !dbg !2449
  %2 = bitcast i8* %call to %struct.mmc_gpio*, !dbg !2449
  store %struct.mmc_gpio* %2, %struct.mmc_gpio** %ctx, align 8, !dbg !2446
  %3 = load %struct.mmc_gpio*, %struct.mmc_gpio** %ctx, align 8, !dbg !2450
  %tobool = icmp ne %struct.mmc_gpio* %3, null, !dbg !2450
  br i1 %tobool, label %if.then, label %if.end17, !dbg !2452

if.then:                                          ; preds = %entry
  %4 = load %struct.mmc_gpio*, %struct.mmc_gpio** %ctx, align 8, !dbg !2453
  %cd_debounce_delay_ms = getelementptr inbounds %struct.mmc_gpio, %struct.mmc_gpio* %4, i32 0, i32 5, !dbg !2455
  store i32 200, i32* %cd_debounce_delay_ms, align 8, !dbg !2456
  %5 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2457
  %parent1 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %5, i32 0, i32 0, !dbg !2458
  %6 = load %struct.device*, %struct.device** %parent1, align 64, !dbg !2458
  %7 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2459
  %parent2 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %7, i32 0, i32 0, !dbg !2460
  %8 = load %struct.device*, %struct.device** %parent2, align 64, !dbg !2460
  %call3 = call i8* @dev_name(%struct.device* %8) #4, !dbg !2461
  %call4 = call noalias i8* (%struct.device*, i32, i8*, ...) @devm_kasprintf(%struct.device* %6, i32 3264, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %call3) #4, !dbg !2462
  %9 = load %struct.mmc_gpio*, %struct.mmc_gpio** %ctx, align 8, !dbg !2463
  %cd_label = getelementptr inbounds %struct.mmc_gpio, %struct.mmc_gpio* %9, i32 0, i32 4, !dbg !2464
  store i8* %call4, i8** %cd_label, align 8, !dbg !2465
  %10 = load %struct.mmc_gpio*, %struct.mmc_gpio** %ctx, align 8, !dbg !2466
  %cd_label5 = getelementptr inbounds %struct.mmc_gpio, %struct.mmc_gpio* %10, i32 0, i32 4, !dbg !2468
  %11 = load i8*, i8** %cd_label5, align 8, !dbg !2468
  %tobool6 = icmp ne i8* %11, null, !dbg !2466
  br i1 %tobool6, label %if.end, label %if.then7, !dbg !2469

if.then7:                                         ; preds = %if.then
  store i32 -12, i32* %retval, align 4, !dbg !2470
  br label %return, !dbg !2470

if.end:                                           ; preds = %if.then
  %12 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2471
  %parent8 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %12, i32 0, i32 0, !dbg !2472
  %13 = load %struct.device*, %struct.device** %parent8, align 64, !dbg !2472
  %14 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2473
  %parent9 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %14, i32 0, i32 0, !dbg !2474
  %15 = load %struct.device*, %struct.device** %parent9, align 64, !dbg !2474
  %call10 = call i8* @dev_name(%struct.device* %15) #4, !dbg !2475
  %call11 = call noalias i8* (%struct.device*, i32, i8*, ...) @devm_kasprintf(%struct.device* %13, i32 3264, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %call10) #4, !dbg !2476
  %16 = load %struct.mmc_gpio*, %struct.mmc_gpio** %ctx, align 8, !dbg !2477
  %ro_label = getelementptr inbounds %struct.mmc_gpio, %struct.mmc_gpio* %16, i32 0, i32 3, !dbg !2478
  store i8* %call11, i8** %ro_label, align 8, !dbg !2479
  %17 = load %struct.mmc_gpio*, %struct.mmc_gpio** %ctx, align 8, !dbg !2480
  %ro_label12 = getelementptr inbounds %struct.mmc_gpio, %struct.mmc_gpio* %17, i32 0, i32 3, !dbg !2482
  %18 = load i8*, i8** %ro_label12, align 8, !dbg !2482
  %tobool13 = icmp ne i8* %18, null, !dbg !2480
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !2483

if.then14:                                        ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !2484
  br label %return, !dbg !2484

if.end15:                                         ; preds = %if.end
  %19 = load %struct.mmc_gpio*, %struct.mmc_gpio** %ctx, align 8, !dbg !2485
  %20 = bitcast %struct.mmc_gpio* %19 to i8*, !dbg !2485
  %21 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2486
  %slot = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %21, i32 0, i32 45, !dbg !2487
  %handler_priv = getelementptr inbounds %struct.mmc_slot, %struct.mmc_slot* %slot, i32 0, i32 2, !dbg !2488
  store i8* %20, i8** %handler_priv, align 8, !dbg !2489
  %22 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2490
  %slot16 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %22, i32 0, i32 45, !dbg !2491
  %cd_irq = getelementptr inbounds %struct.mmc_slot, %struct.mmc_slot* %slot16, i32 0, i32 0, !dbg !2492
  store i32 -22, i32* %cd_irq, align 8, !dbg !2493
  br label %if.end17, !dbg !2494

if.end17:                                         ; preds = %if.end15, %entry
  %23 = load %struct.mmc_gpio*, %struct.mmc_gpio** %ctx, align 8, !dbg !2495
  %tobool18 = icmp ne %struct.mmc_gpio* %23, null, !dbg !2495
  %24 = zext i1 %tobool18 to i64, !dbg !2495
  %cond = select i1 %tobool18, i32 0, i32 -12, !dbg !2495
  store i32 %cond, i32* %retval, align 4, !dbg !2496
  br label %return, !dbg !2496

return:                                           ; preds = %if.end17, %if.then14, %if.then7
  %25 = load i32, i32* %retval, align 4, !dbg !2497
  ret i32 %25, !dbg !2497
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kzalloc(%struct.device* %dev, i64 %size, i32 %gfp) #0 !dbg !2498 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2501, metadata !DIExpression()), !dbg !2502
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2503, metadata !DIExpression()), !dbg !2504
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !2505, metadata !DIExpression()), !dbg !2506
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2507
  %1 = load i64, i64* %size.addr, align 8, !dbg !2508
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !2509
  %or = or i32 %2, 256, !dbg !2510
  %call = call noalias i8* @devm_kmalloc(%struct.device* %0, i64 %1, i32 %or) #4, !dbg !2511
  ret i8* %call, !dbg !2512
}

; Function Attrs: noredzone
declare dso_local noalias i8* @devm_kasprintf(%struct.device*, i32, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_name(%struct.device* %dev) #0 !dbg !2513 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2518, metadata !DIExpression()), !dbg !2519
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2520
  %init_name = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 3, !dbg !2522
  %1 = load i8*, i8** %init_name, align 8, !dbg !2522
  %tobool = icmp ne i8* %1, null, !dbg !2520
  br i1 %tobool, label %if.then, label %if.end, !dbg !2523

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2524
  %init_name1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 3, !dbg !2525
  %3 = load i8*, i8** %init_name1, align 8, !dbg !2525
  store i8* %3, i8** %retval, align 8, !dbg !2526
  br label %return, !dbg !2526

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2527
  %kobj = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0, !dbg !2528
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #4, !dbg !2529
  store i8* %call, i8** %retval, align 8, !dbg !2530
  br label %return, !dbg !2530

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !2531
  ret i8* %5, !dbg !2531
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @mmc_gpio_get_ro(%struct.mmc_host* %host) #0 !dbg !2532 {
entry:
  %retval = alloca i32, align 4
  %host.addr = alloca %struct.mmc_host*, align 8
  %ctx = alloca %struct.mmc_gpio*, align 8
  store %struct.mmc_host* %host, %struct.mmc_host** %host.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_host** %host.addr, metadata !2533, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.declare(metadata %struct.mmc_gpio** %ctx, metadata !2535, metadata !DIExpression()), !dbg !2536
  %0 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2537
  %slot = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %0, i32 0, i32 45, !dbg !2538
  %handler_priv = getelementptr inbounds %struct.mmc_slot, %struct.mmc_slot* %slot, i32 0, i32 2, !dbg !2539
  %1 = load i8*, i8** %handler_priv, align 8, !dbg !2539
  %2 = bitcast i8* %1 to %struct.mmc_gpio*, !dbg !2537
  store %struct.mmc_gpio* %2, %struct.mmc_gpio** %ctx, align 8, !dbg !2536
  %3 = load %struct.mmc_gpio*, %struct.mmc_gpio** %ctx, align 8, !dbg !2540
  %tobool = icmp ne %struct.mmc_gpio* %3, null, !dbg !2540
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2542

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.mmc_gpio*, %struct.mmc_gpio** %ctx, align 8, !dbg !2543
  %ro_gpio = getelementptr inbounds %struct.mmc_gpio, %struct.mmc_gpio* %4, i32 0, i32 0, !dbg !2544
  %5 = load %struct.gpio_desc*, %struct.gpio_desc** %ro_gpio, align 8, !dbg !2544
  %tobool1 = icmp ne %struct.gpio_desc* %5, null, !dbg !2543
  br i1 %tobool1, label %if.end, label %if.then, !dbg !2545

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -38, i32* %retval, align 4, !dbg !2546
  br label %return, !dbg !2546

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct.mmc_gpio*, %struct.mmc_gpio** %ctx, align 8, !dbg !2547
  %ro_gpio2 = getelementptr inbounds %struct.mmc_gpio, %struct.mmc_gpio* %6, i32 0, i32 0, !dbg !2548
  %7 = load %struct.gpio_desc*, %struct.gpio_desc** %ro_gpio2, align 8, !dbg !2548
  %call = call i32 @gpiod_get_value_cansleep(%struct.gpio_desc* %7) #4, !dbg !2549
  store i32 %call, i32* %retval, align 4, !dbg !2550
  br label %return, !dbg !2550

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !2551
  ret i32 %8, !dbg !2551
}

; Function Attrs: noredzone
declare dso_local i32 @gpiod_get_value_cansleep(%struct.gpio_desc*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @mmc_gpio_get_cd(%struct.mmc_host* %host) #0 !dbg !2552 {
entry:
  %retval = alloca i32, align 4
  %host.addr = alloca %struct.mmc_host*, align 8
  %ctx = alloca %struct.mmc_gpio*, align 8
  %cansleep = alloca i32, align 4
  store %struct.mmc_host* %host, %struct.mmc_host** %host.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_host** %host.addr, metadata !2553, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.declare(metadata %struct.mmc_gpio** %ctx, metadata !2555, metadata !DIExpression()), !dbg !2556
  %0 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2557
  %slot = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %0, i32 0, i32 45, !dbg !2558
  %handler_priv = getelementptr inbounds %struct.mmc_slot, %struct.mmc_slot* %slot, i32 0, i32 2, !dbg !2559
  %1 = load i8*, i8** %handler_priv, align 8, !dbg !2559
  %2 = bitcast i8* %1 to %struct.mmc_gpio*, !dbg !2557
  store %struct.mmc_gpio* %2, %struct.mmc_gpio** %ctx, align 8, !dbg !2556
  call void @llvm.dbg.declare(metadata i32* %cansleep, metadata !2560, metadata !DIExpression()), !dbg !2561
  %3 = load %struct.mmc_gpio*, %struct.mmc_gpio** %ctx, align 8, !dbg !2562
  %tobool = icmp ne %struct.mmc_gpio* %3, null, !dbg !2562
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2564

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.mmc_gpio*, %struct.mmc_gpio** %ctx, align 8, !dbg !2565
  %cd_gpio = getelementptr inbounds %struct.mmc_gpio, %struct.mmc_gpio* %4, i32 0, i32 1, !dbg !2566
  %5 = load %struct.gpio_desc*, %struct.gpio_desc** %cd_gpio, align 8, !dbg !2566
  %tobool1 = icmp ne %struct.gpio_desc* %5, null, !dbg !2565
  br i1 %tobool1, label %if.end, label %if.then, !dbg !2567

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -38, i32* %retval, align 4, !dbg !2568
  br label %return, !dbg !2568

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct.mmc_gpio*, %struct.mmc_gpio** %ctx, align 8, !dbg !2569
  %cd_gpio2 = getelementptr inbounds %struct.mmc_gpio, %struct.mmc_gpio* %6, i32 0, i32 1, !dbg !2570
  %7 = load %struct.gpio_desc*, %struct.gpio_desc** %cd_gpio2, align 8, !dbg !2570
  %call = call i32 @gpiod_cansleep(%struct.gpio_desc* %7) #4, !dbg !2571
  store i32 %call, i32* %cansleep, align 4, !dbg !2572
  %8 = load i32, i32* %cansleep, align 4, !dbg !2573
  %tobool3 = icmp ne i32 %8, 0, !dbg !2573
  br i1 %tobool3, label %cond.true, label %cond.false, !dbg !2573

cond.true:                                        ; preds = %if.end
  %9 = load %struct.mmc_gpio*, %struct.mmc_gpio** %ctx, align 8, !dbg !2574
  %cd_gpio4 = getelementptr inbounds %struct.mmc_gpio, %struct.mmc_gpio* %9, i32 0, i32 1, !dbg !2575
  %10 = load %struct.gpio_desc*, %struct.gpio_desc** %cd_gpio4, align 8, !dbg !2575
  %call5 = call i32 @gpiod_get_value_cansleep(%struct.gpio_desc* %10) #4, !dbg !2576
  br label %cond.end, !dbg !2573

cond.false:                                       ; preds = %if.end
  %11 = load %struct.mmc_gpio*, %struct.mmc_gpio** %ctx, align 8, !dbg !2577
  %cd_gpio6 = getelementptr inbounds %struct.mmc_gpio, %struct.mmc_gpio* %11, i32 0, i32 1, !dbg !2578
  %12 = load %struct.gpio_desc*, %struct.gpio_desc** %cd_gpio6, align 8, !dbg !2578
  %call7 = call i32 @gpiod_get_value(%struct.gpio_desc* %12) #4, !dbg !2579
  br label %cond.end, !dbg !2573

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call5, %cond.true ], [ %call7, %cond.false ], !dbg !2573
  store i32 %cond, i32* %retval, align 4, !dbg !2580
  br label %return, !dbg !2580

return:                                           ; preds = %cond.end, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !2581
  ret i32 %13, !dbg !2581
}

; Function Attrs: noredzone
declare dso_local i32 @gpiod_cansleep(%struct.gpio_desc*) #2

; Function Attrs: noredzone
declare dso_local i32 @gpiod_get_value(%struct.gpio_desc*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @mmc_gpiod_request_cd_irq(%struct.mmc_host* %host) #0 !dbg !2582 {
entry:
  %host.addr = alloca %struct.mmc_host*, align 8
  %ctx = alloca %struct.mmc_gpio*, align 8
  %irq = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.mmc_host* %host, %struct.mmc_host** %host.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_host** %host.addr, metadata !2583, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.declare(metadata %struct.mmc_gpio** %ctx, metadata !2585, metadata !DIExpression()), !dbg !2586
  %0 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2587
  %slot = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %0, i32 0, i32 45, !dbg !2588
  %handler_priv = getelementptr inbounds %struct.mmc_slot, %struct.mmc_slot* %slot, i32 0, i32 2, !dbg !2589
  %1 = load i8*, i8** %handler_priv, align 8, !dbg !2589
  %2 = bitcast i8* %1 to %struct.mmc_gpio*, !dbg !2587
  store %struct.mmc_gpio* %2, %struct.mmc_gpio** %ctx, align 8, !dbg !2586
  call void @llvm.dbg.declare(metadata i32* %irq, metadata !2590, metadata !DIExpression()), !dbg !2591
  store i32 -22, i32* %irq, align 4, !dbg !2591
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2592, metadata !DIExpression()), !dbg !2593
  %3 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2594
  %slot1 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %3, i32 0, i32 45, !dbg !2596
  %cd_irq = getelementptr inbounds %struct.mmc_slot, %struct.mmc_slot* %slot1, i32 0, i32 0, !dbg !2597
  %4 = load i32, i32* %cd_irq, align 8, !dbg !2597
  %cmp = icmp sge i32 %4, 0, !dbg !2598
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2599

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.mmc_gpio*, %struct.mmc_gpio** %ctx, align 8, !dbg !2600
  %tobool = icmp ne %struct.mmc_gpio* %5, null, !dbg !2600
  br i1 %tobool, label %lor.lhs.false2, label %if.then, !dbg !2601

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %6 = load %struct.mmc_gpio*, %struct.mmc_gpio** %ctx, align 8, !dbg !2602
  %cd_gpio = getelementptr inbounds %struct.mmc_gpio, %struct.mmc_gpio* %6, i32 0, i32 1, !dbg !2603
  %7 = load %struct.gpio_desc*, %struct.gpio_desc** %cd_gpio, align 8, !dbg !2603
  %tobool3 = icmp ne %struct.gpio_desc* %7, null, !dbg !2602
  br i1 %tobool3, label %if.end, label %if.then, !dbg !2604

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  br label %if.end25, !dbg !2605

if.end:                                           ; preds = %lor.lhs.false2
  %8 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2606
  %caps = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %8, i32 0, i32 17, !dbg !2608
  %9 = load i32, i32* %caps, align 4, !dbg !2608
  %and = and i32 %9, 32, !dbg !2609
  %tobool4 = icmp ne i32 %and, 0, !dbg !2609
  br i1 %tobool4, label %if.end7, label %if.then5, !dbg !2610

if.then5:                                         ; preds = %if.end
  %10 = load %struct.mmc_gpio*, %struct.mmc_gpio** %ctx, align 8, !dbg !2611
  %cd_gpio6 = getelementptr inbounds %struct.mmc_gpio, %struct.mmc_gpio* %10, i32 0, i32 1, !dbg !2612
  %11 = load %struct.gpio_desc*, %struct.gpio_desc** %cd_gpio6, align 8, !dbg !2612
  %call = call i32 @gpiod_to_irq(%struct.gpio_desc* %11) #4, !dbg !2613
  store i32 %call, i32* %irq, align 4, !dbg !2614
  br label %if.end7, !dbg !2615

if.end7:                                          ; preds = %if.then5, %if.end
  %12 = load i32, i32* %irq, align 4, !dbg !2616
  %cmp8 = icmp sge i32 %12, 0, !dbg !2618
  br i1 %cmp8, label %if.then9, label %if.end19, !dbg !2619

if.then9:                                         ; preds = %if.end7
  %13 = load %struct.mmc_gpio*, %struct.mmc_gpio** %ctx, align 8, !dbg !2620
  %cd_gpio_isr = getelementptr inbounds %struct.mmc_gpio, %struct.mmc_gpio* %13, i32 0, i32 2, !dbg !2623
  %14 = load i32 (i32, i8*)*, i32 (i32, i8*)** %cd_gpio_isr, align 8, !dbg !2623
  %tobool10 = icmp ne i32 (i32, i8*)* %14, null, !dbg !2620
  br i1 %tobool10, label %if.end13, label %if.then11, !dbg !2624

if.then11:                                        ; preds = %if.then9
  %15 = load %struct.mmc_gpio*, %struct.mmc_gpio** %ctx, align 8, !dbg !2625
  %cd_gpio_isr12 = getelementptr inbounds %struct.mmc_gpio, %struct.mmc_gpio* %15, i32 0, i32 2, !dbg !2626
  store i32 (i32, i8*)* @mmc_gpio_cd_irqt, i32 (i32, i8*)** %cd_gpio_isr12, align 8, !dbg !2627
  br label %if.end13, !dbg !2625

if.end13:                                         ; preds = %if.then11, %if.then9
  %16 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2628
  %parent = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %16, i32 0, i32 0, !dbg !2629
  %17 = load %struct.device*, %struct.device** %parent, align 64, !dbg !2629
  %18 = load i32, i32* %irq, align 4, !dbg !2630
  %19 = load %struct.mmc_gpio*, %struct.mmc_gpio** %ctx, align 8, !dbg !2631
  %cd_gpio_isr14 = getelementptr inbounds %struct.mmc_gpio, %struct.mmc_gpio* %19, i32 0, i32 2, !dbg !2632
  %20 = load i32 (i32, i8*)*, i32 (i32, i8*)** %cd_gpio_isr14, align 8, !dbg !2632
  %21 = load %struct.mmc_gpio*, %struct.mmc_gpio** %ctx, align 8, !dbg !2633
  %cd_label = getelementptr inbounds %struct.mmc_gpio, %struct.mmc_gpio* %21, i32 0, i32 4, !dbg !2634
  %22 = load i8*, i8** %cd_label, align 8, !dbg !2634
  %23 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2635
  %24 = bitcast %struct.mmc_host* %23 to i8*, !dbg !2635
  %call15 = call i32 @devm_request_threaded_irq(%struct.device* %17, i32 %18, i32 (i32, i8*)* null, i32 (i32, i8*)* %20, i64 8195, i8* %22, i8* %24) #4, !dbg !2636
  store i32 %call15, i32* %ret, align 4, !dbg !2637
  %25 = load i32, i32* %ret, align 4, !dbg !2638
  %cmp16 = icmp slt i32 %25, 0, !dbg !2640
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !2641

if.then17:                                        ; preds = %if.end13
  %26 = load i32, i32* %ret, align 4, !dbg !2642
  store i32 %26, i32* %irq, align 4, !dbg !2643
  br label %if.end18, !dbg !2644

if.end18:                                         ; preds = %if.then17, %if.end13
  br label %if.end19, !dbg !2645

if.end19:                                         ; preds = %if.end18, %if.end7
  %27 = load i32, i32* %irq, align 4, !dbg !2646
  %28 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2647
  %slot20 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %28, i32 0, i32 45, !dbg !2648
  %cd_irq21 = getelementptr inbounds %struct.mmc_slot, %struct.mmc_slot* %slot20, i32 0, i32 0, !dbg !2649
  store i32 %27, i32* %cd_irq21, align 8, !dbg !2650
  %29 = load i32, i32* %irq, align 4, !dbg !2651
  %cmp22 = icmp slt i32 %29, 0, !dbg !2653
  br i1 %cmp22, label %if.then23, label %if.end25, !dbg !2654

if.then23:                                        ; preds = %if.end19
  %30 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2655
  %caps24 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %30, i32 0, i32 17, !dbg !2656
  %31 = load i32, i32* %caps24, align 4, !dbg !2657
  %or = or i32 %31, 32, !dbg !2657
  store i32 %or, i32* %caps24, align 4, !dbg !2657
  br label %if.end25, !dbg !2655

if.end25:                                         ; preds = %if.then, %if.then23, %if.end19
  ret void, !dbg !2658
}

; Function Attrs: noredzone
declare dso_local i32 @gpiod_to_irq(%struct.gpio_desc*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mmc_gpio_cd_irqt(i32 %irq, i8* %dev_id) #0 !dbg !2659 {
entry:
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !2660, metadata !DIExpression()), !dbg !2666
  %irq.addr = alloca i32, align 4
  %dev_id.addr = alloca i8*, align 8
  %host = alloca %struct.mmc_host*, align 8
  %ctx = alloca %struct.mmc_gpio*, align 8
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !2668, metadata !DIExpression()), !dbg !2669
  store i8* %dev_id, i8** %dev_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev_id.addr, metadata !2670, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.declare(metadata %struct.mmc_host** %host, metadata !2672, metadata !DIExpression()), !dbg !2673
  %0 = load i8*, i8** %dev_id.addr, align 8, !dbg !2674
  %1 = bitcast i8* %0 to %struct.mmc_host*, !dbg !2674
  store %struct.mmc_host* %1, %struct.mmc_host** %host, align 8, !dbg !2673
  call void @llvm.dbg.declare(metadata %struct.mmc_gpio** %ctx, metadata !2675, metadata !DIExpression()), !dbg !2676
  %2 = load %struct.mmc_host*, %struct.mmc_host** %host, align 8, !dbg !2677
  %slot = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %2, i32 0, i32 45, !dbg !2678
  %handler_priv = getelementptr inbounds %struct.mmc_slot, %struct.mmc_slot* %slot, i32 0, i32 2, !dbg !2679
  %3 = load i8*, i8** %handler_priv, align 8, !dbg !2679
  %4 = bitcast i8* %3 to %struct.mmc_gpio*, !dbg !2677
  store %struct.mmc_gpio* %4, %struct.mmc_gpio** %ctx, align 8, !dbg !2676
  %5 = load %struct.mmc_host*, %struct.mmc_host** %host, align 8, !dbg !2680
  %trigger_card_event = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %5, i32 0, i32 37, !dbg !2681
  store i8 1, i8* %trigger_card_event, align 32, !dbg !2682
  %6 = load %struct.mmc_host*, %struct.mmc_host** %host, align 8, !dbg !2683
  %7 = load %struct.mmc_gpio*, %struct.mmc_gpio** %ctx, align 8, !dbg !2684
  %cd_debounce_delay_ms = getelementptr inbounds %struct.mmc_gpio, %struct.mmc_gpio* %7, i32 0, i32 5, !dbg !2685
  %8 = load i32, i32* %cd_debounce_delay_ms, align 8, !dbg !2685
  store i32 %8, i32* %m.addr.i, align 4
  %9 = load i32, i32* %m.addr.i, align 4, !dbg !2686
  %10 = call i1 @llvm.is.constant.i32(i32 %9) #5, !dbg !2688
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !2689

if.then.i:                                        ; preds = %entry
  %11 = load i32, i32* %m.addr.i, align 4, !dbg !2690
  %cmp.i = icmp slt i32 %11, 0, !dbg !2693
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !2694

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !2695
  br label %msecs_to_jiffies.exit, !dbg !2695

if.end.i:                                         ; preds = %if.then.i
  %12 = load i32, i32* %m.addr.i, align 4, !dbg !2696
  %call.i = call i64 @_msecs_to_jiffies(i32 %12) #6, !dbg !2697
  store i64 %call.i, i64* %retval.i, align 8, !dbg !2698
  br label %msecs_to_jiffies.exit, !dbg !2698

if.else.i:                                        ; preds = %entry
  %13 = load i32, i32* %m.addr.i, align 4, !dbg !2699
  %call2.i = call i64 @__msecs_to_jiffies(i32 %13) #6, !dbg !2701
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !2702
  br label %msecs_to_jiffies.exit, !dbg !2702

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %14 = load i64, i64* %retval.i, align 8, !dbg !2703
  call void @mmc_detect_change(%struct.mmc_host* %6, i64 %14) #4, !dbg !2704
  ret i32 1, !dbg !2705
}

; Function Attrs: noredzone
declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32 (i32, i8*)*, i32 (i32, i8*)*, i64, i8*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @mmc_gpio_set_cd_wake(%struct.mmc_host* %host, i1 zeroext %on) #0 !dbg !2706 {
entry:
  %retval = alloca i32, align 4
  %host.addr = alloca %struct.mmc_host*, align 8
  %on.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  store %struct.mmc_host* %host, %struct.mmc_host** %host.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_host** %host.addr, metadata !2709, metadata !DIExpression()), !dbg !2710
  %frombool = zext i1 %on to i8
  store i8 %frombool, i8* %on.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %on.addr, metadata !2711, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2713, metadata !DIExpression()), !dbg !2714
  store i32 0, i32* %ret, align 4, !dbg !2714
  %0 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2715
  %caps = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %0, i32 0, i32 17, !dbg !2717
  %1 = load i32, i32* %caps, align 4, !dbg !2717
  %and = and i32 %1, 268435456, !dbg !2718
  %tobool = icmp ne i32 %and, 0, !dbg !2718
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2719

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2720
  %slot = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %2, i32 0, i32 45, !dbg !2721
  %cd_irq = getelementptr inbounds %struct.mmc_slot, %struct.mmc_slot* %slot, i32 0, i32 0, !dbg !2722
  %3 = load i32, i32* %cd_irq, align 8, !dbg !2722
  %cmp = icmp slt i32 %3, 0, !dbg !2723
  br i1 %cmp, label %if.then, label %lor.lhs.false1, !dbg !2724

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %4 = load i8, i8* %on.addr, align 1, !dbg !2725
  %tobool2 = trunc i8 %4 to i1, !dbg !2725
  %conv = zext i1 %tobool2 to i32, !dbg !2725
  %5 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2726
  %slot3 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %5, i32 0, i32 45, !dbg !2727
  %cd_wake_enabled = getelementptr inbounds %struct.mmc_slot, %struct.mmc_slot* %slot3, i32 0, i32 1, !dbg !2728
  %6 = load i8, i8* %cd_wake_enabled, align 4, !dbg !2728
  %tobool4 = trunc i8 %6 to i1, !dbg !2728
  %conv5 = zext i1 %tobool4 to i32, !dbg !2726
  %cmp6 = icmp eq i32 %conv, %conv5, !dbg !2729
  br i1 %cmp6, label %if.then, label %if.end, !dbg !2730

if.then:                                          ; preds = %lor.lhs.false1, %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4, !dbg !2731
  br label %return, !dbg !2731

if.end:                                           ; preds = %lor.lhs.false1
  %7 = load i8, i8* %on.addr, align 1, !dbg !2732
  %tobool8 = trunc i8 %7 to i1, !dbg !2732
  br i1 %tobool8, label %if.then9, label %if.else, !dbg !2734

if.then9:                                         ; preds = %if.end
  %8 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2735
  %slot10 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %8, i32 0, i32 45, !dbg !2737
  %cd_irq11 = getelementptr inbounds %struct.mmc_slot, %struct.mmc_slot* %slot10, i32 0, i32 0, !dbg !2738
  %9 = load i32, i32* %cd_irq11, align 8, !dbg !2738
  %call = call i32 @enable_irq_wake(i32 %9) #4, !dbg !2739
  store i32 %call, i32* %ret, align 4, !dbg !2740
  %10 = load i32, i32* %ret, align 4, !dbg !2741
  %tobool12 = icmp ne i32 %10, 0, !dbg !2742
  %lnot = xor i1 %tobool12, true, !dbg !2742
  %11 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2743
  %slot13 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %11, i32 0, i32 45, !dbg !2744
  %cd_wake_enabled14 = getelementptr inbounds %struct.mmc_slot, %struct.mmc_slot* %slot13, i32 0, i32 1, !dbg !2745
  %frombool15 = zext i1 %lnot to i8, !dbg !2746
  store i8 %frombool15, i8* %cd_wake_enabled14, align 4, !dbg !2746
  br label %if.end21, !dbg !2747

if.else:                                          ; preds = %if.end
  %12 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2748
  %slot16 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %12, i32 0, i32 45, !dbg !2750
  %cd_irq17 = getelementptr inbounds %struct.mmc_slot, %struct.mmc_slot* %slot16, i32 0, i32 0, !dbg !2751
  %13 = load i32, i32* %cd_irq17, align 8, !dbg !2751
  %call18 = call i32 @disable_irq_wake(i32 %13) #4, !dbg !2752
  %14 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2753
  %slot19 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %14, i32 0, i32 45, !dbg !2754
  %cd_wake_enabled20 = getelementptr inbounds %struct.mmc_slot, %struct.mmc_slot* %slot19, i32 0, i32 1, !dbg !2755
  store i8 0, i8* %cd_wake_enabled20, align 4, !dbg !2756
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then9
  %15 = load i32, i32* %ret, align 4, !dbg !2757
  store i32 %15, i32* %retval, align 4, !dbg !2758
  br label %return, !dbg !2758

return:                                           ; preds = %if.end21, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !2759
  ret i32 %16, !dbg !2759
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @enable_irq_wake(i32 %irq) #0 !dbg !2760 {
entry:
  %irq.addr = alloca i32, align 4
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !2764, metadata !DIExpression()), !dbg !2765
  %0 = load i32, i32* %irq.addr, align 4, !dbg !2766
  %call = call i32 @irq_set_irq_wake(i32 %0, i32 1) #4, !dbg !2767
  ret i32 %call, !dbg !2768
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @disable_irq_wake(i32 %irq) #0 !dbg !2769 {
entry:
  %irq.addr = alloca i32, align 4
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !2770, metadata !DIExpression()), !dbg !2771
  %0 = load i32, i32* %irq.addr, align 4, !dbg !2772
  %call = call i32 @irq_set_irq_wake(i32 %0, i32 0) #4, !dbg !2773
  ret i32 %call, !dbg !2774
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @mmc_gpio_set_cd_isr(%struct.mmc_host* %host, i32 (i32, i8*)* %isr) #0 !dbg !2775 {
entry:
  %host.addr = alloca %struct.mmc_host*, align 8
  %isr.addr = alloca i32 (i32, i8*)*, align 8
  %ctx = alloca %struct.mmc_gpio*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.mmc_host* %host, %struct.mmc_host** %host.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_host** %host.addr, metadata !2778, metadata !DIExpression()), !dbg !2779
  store i32 (i32, i8*)* %isr, i32 (i32, i8*)** %isr.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i32, i8*)** %isr.addr, metadata !2780, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.declare(metadata %struct.mmc_gpio** %ctx, metadata !2782, metadata !DIExpression()), !dbg !2783
  %0 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2784
  %slot = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %0, i32 0, i32 45, !dbg !2785
  %handler_priv = getelementptr inbounds %struct.mmc_slot, %struct.mmc_slot* %slot, i32 0, i32 2, !dbg !2786
  %1 = load i8*, i8** %handler_priv, align 8, !dbg !2786
  %2 = bitcast i8* %1 to %struct.mmc_gpio*, !dbg !2784
  store %struct.mmc_gpio* %2, %struct.mmc_gpio** %ctx, align 8, !dbg !2783
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !2787, metadata !DIExpression()), !dbg !2789
  %3 = load %struct.mmc_gpio*, %struct.mmc_gpio** %ctx, align 8, !dbg !2789
  %cd_gpio_isr = getelementptr inbounds %struct.mmc_gpio, %struct.mmc_gpio* %3, i32 0, i32 2, !dbg !2789
  %4 = load i32 (i32, i8*)*, i32 (i32, i8*)** %cd_gpio_isr, align 8, !dbg !2789
  %tobool = icmp ne i32 (i32, i8*)* %4, null, !dbg !2789
  %lnot = xor i1 %tobool, true, !dbg !2789
  %lnot1 = xor i1 %lnot, true, !dbg !2789
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2789
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !2789
  %5 = load i32, i32* %__ret_warn_on, align 4, !dbg !2790
  %tobool2 = icmp ne i32 %5, 0, !dbg !2790
  %lnot3 = xor i1 %tobool2, true, !dbg !2790
  %lnot5 = xor i1 %lnot3, true, !dbg !2790
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !2790
  %conv = sext i32 %lnot.ext6 to i64, !dbg !2790
  %tobool7 = icmp ne i64 %conv, 0, !dbg !2790
  br i1 %tobool7, label %if.then, label %if.end, !dbg !2789

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2790

do.body:                                          ; preds = %if.then
  br label %do.body8, !dbg !2792

do.body8:                                         ; preds = %do.body
  br label %do.end, !dbg !2794

do.end:                                           ; preds = %do.body8
  br label %do.body9, !dbg !2792

do.body9:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 151, i32 2305, i64 12) #5, !dbg !2796, !srcloc !2798
  br label %do.end10, !dbg !2796

do.end10:                                         ; preds = %do.body9
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 162) #5, !dbg !2799, !srcloc !2801
  br label %do.body11, !dbg !2792

do.body11:                                        ; preds = %do.end10
  br label %do.end12, !dbg !2802

do.end12:                                         ; preds = %do.body11
  br label %do.end13, !dbg !2792

do.end13:                                         ; preds = %do.end12
  br label %if.end, !dbg !2792

if.end:                                           ; preds = %do.end13, %entry
  %6 = load i32, i32* %__ret_warn_on, align 4, !dbg !2789
  %tobool14 = icmp ne i32 %6, 0, !dbg !2789
  %lnot15 = xor i1 %tobool14, true, !dbg !2789
  %lnot17 = xor i1 %lnot15, true, !dbg !2789
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !2789
  %conv19 = sext i32 %lnot.ext18 to i64, !dbg !2789
  store i64 %conv19, i64* %tmp, align 8, !dbg !2790
  %7 = load i64, i64* %tmp, align 8, !dbg !2789
  %8 = load i32 (i32, i8*)*, i32 (i32, i8*)** %isr.addr, align 8, !dbg !2804
  %9 = load %struct.mmc_gpio*, %struct.mmc_gpio** %ctx, align 8, !dbg !2805
  %cd_gpio_isr20 = getelementptr inbounds %struct.mmc_gpio, %struct.mmc_gpio* %9, i32 0, i32 2, !dbg !2806
  store i32 (i32, i8*)* %8, i32 (i32, i8*)** %cd_gpio_isr20, align 8, !dbg !2807
  ret void, !dbg !2808
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @mmc_gpiod_request_cd(%struct.mmc_host* %host, i8* %con_id, i32 %idx, i1 zeroext %override_active_level, i32 %debounce) #0 !dbg !2809 {
entry:
  %retval = alloca i32, align 4
  %host.addr = alloca %struct.mmc_host*, align 8
  %con_id.addr = alloca i8*, align 8
  %idx.addr = alloca i32, align 4
  %override_active_level.addr = alloca i8, align 1
  %debounce.addr = alloca i32, align 4
  %ctx = alloca %struct.mmc_gpio*, align 8
  %desc = alloca %struct.gpio_desc*, align 8
  %ret = alloca i32, align 4
  store %struct.mmc_host* %host, %struct.mmc_host** %host.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_host** %host.addr, metadata !2812, metadata !DIExpression()), !dbg !2813
  store i8* %con_id, i8** %con_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %con_id.addr, metadata !2814, metadata !DIExpression()), !dbg !2815
  store i32 %idx, i32* %idx.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %idx.addr, metadata !2816, metadata !DIExpression()), !dbg !2817
  %frombool = zext i1 %override_active_level to i8
  store i8 %frombool, i8* %override_active_level.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %override_active_level.addr, metadata !2818, metadata !DIExpression()), !dbg !2819
  store i32 %debounce, i32* %debounce.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %debounce.addr, metadata !2820, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.declare(metadata %struct.mmc_gpio** %ctx, metadata !2822, metadata !DIExpression()), !dbg !2823
  %0 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2824
  %slot = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %0, i32 0, i32 45, !dbg !2825
  %handler_priv = getelementptr inbounds %struct.mmc_slot, %struct.mmc_slot* %slot, i32 0, i32 2, !dbg !2826
  %1 = load i8*, i8** %handler_priv, align 8, !dbg !2826
  %2 = bitcast i8* %1 to %struct.mmc_gpio*, !dbg !2824
  store %struct.mmc_gpio* %2, %struct.mmc_gpio** %ctx, align 8, !dbg !2823
  call void @llvm.dbg.declare(metadata %struct.gpio_desc** %desc, metadata !2827, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2829, metadata !DIExpression()), !dbg !2830
  %3 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2831
  %parent = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %3, i32 0, i32 0, !dbg !2832
  %4 = load %struct.device*, %struct.device** %parent, align 64, !dbg !2832
  %5 = load i8*, i8** %con_id.addr, align 8, !dbg !2833
  %6 = load i32, i32* %idx.addr, align 4, !dbg !2834
  %call = call %struct.gpio_desc* @devm_gpiod_get_index(%struct.device* %4, i8* %5, i32 %6, i32 1) #4, !dbg !2835
  store %struct.gpio_desc* %call, %struct.gpio_desc** %desc, align 8, !dbg !2836
  %7 = load %struct.gpio_desc*, %struct.gpio_desc** %desc, align 8, !dbg !2837
  %8 = bitcast %struct.gpio_desc* %7 to i8*, !dbg !2837
  %call1 = call zeroext i1 @IS_ERR(i8* %8) #4, !dbg !2839
  br i1 %call1, label %if.then, label %if.end, !dbg !2840

if.then:                                          ; preds = %entry
  %9 = load %struct.gpio_desc*, %struct.gpio_desc** %desc, align 8, !dbg !2841
  %10 = bitcast %struct.gpio_desc* %9 to i8*, !dbg !2841
  %call2 = call i64 @PTR_ERR(i8* %10) #4, !dbg !2842
  %conv = trunc i64 %call2 to i32, !dbg !2842
  store i32 %conv, i32* %retval, align 4, !dbg !2843
  br label %return, !dbg !2843

if.end:                                           ; preds = %entry
  %11 = load i32, i32* %debounce.addr, align 4, !dbg !2844
  %tobool = icmp ne i32 %11, 0, !dbg !2844
  br i1 %tobool, label %if.then3, label %if.end8, !dbg !2846

if.then3:                                         ; preds = %if.end
  %12 = load %struct.gpio_desc*, %struct.gpio_desc** %desc, align 8, !dbg !2847
  %13 = load i32, i32* %debounce.addr, align 4, !dbg !2849
  %call4 = call i32 @gpiod_set_debounce(%struct.gpio_desc* %12, i32 %13) #4, !dbg !2850
  store i32 %call4, i32* %ret, align 4, !dbg !2851
  %14 = load i32, i32* %ret, align 4, !dbg !2852
  %cmp = icmp slt i32 %14, 0, !dbg !2854
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !2855

if.then6:                                         ; preds = %if.then3
  %15 = load i32, i32* %debounce.addr, align 4, !dbg !2856
  %div = udiv i32 %15, 1000, !dbg !2857
  %16 = load %struct.mmc_gpio*, %struct.mmc_gpio** %ctx, align 8, !dbg !2858
  %cd_debounce_delay_ms = getelementptr inbounds %struct.mmc_gpio, %struct.mmc_gpio* %16, i32 0, i32 5, !dbg !2859
  store i32 %div, i32* %cd_debounce_delay_ms, align 8, !dbg !2860
  br label %if.end7, !dbg !2858

if.end7:                                          ; preds = %if.then6, %if.then3
  br label %if.end8, !dbg !2861

if.end8:                                          ; preds = %if.end7, %if.end
  %17 = load i8, i8* %override_active_level.addr, align 1, !dbg !2862
  %tobool9 = trunc i8 %17 to i1, !dbg !2862
  br i1 %tobool9, label %land.lhs.true, label %if.end14, !dbg !2864

land.lhs.true:                                    ; preds = %if.end8
  %18 = load %struct.gpio_desc*, %struct.gpio_desc** %desc, align 8, !dbg !2865
  %call11 = call i32 @gpiod_is_active_low(%struct.gpio_desc* %18) #4, !dbg !2866
  %tobool12 = icmp ne i32 %call11, 0, !dbg !2866
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !2867

if.then13:                                        ; preds = %land.lhs.true
  %19 = load %struct.gpio_desc*, %struct.gpio_desc** %desc, align 8, !dbg !2868
  call void @gpiod_toggle_active_low(%struct.gpio_desc* %19) #4, !dbg !2869
  br label %if.end14, !dbg !2869

if.end14:                                         ; preds = %if.then13, %land.lhs.true, %if.end8
  %20 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2870
  %caps2 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %20, i32 0, i32 18, !dbg !2872
  %21 = load i32, i32* %caps2, align 8, !dbg !2872
  %and = and i32 %21, 1024, !dbg !2873
  %tobool15 = icmp ne i32 %and, 0, !dbg !2873
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !2874

if.then16:                                        ; preds = %if.end14
  %22 = load %struct.gpio_desc*, %struct.gpio_desc** %desc, align 8, !dbg !2875
  call void @gpiod_toggle_active_low(%struct.gpio_desc* %22) #4, !dbg !2876
  br label %if.end17, !dbg !2876

if.end17:                                         ; preds = %if.then16, %if.end14
  %23 = load %struct.gpio_desc*, %struct.gpio_desc** %desc, align 8, !dbg !2877
  %24 = load %struct.mmc_gpio*, %struct.mmc_gpio** %ctx, align 8, !dbg !2878
  %cd_gpio = getelementptr inbounds %struct.mmc_gpio, %struct.mmc_gpio* %24, i32 0, i32 1, !dbg !2879
  store %struct.gpio_desc* %23, %struct.gpio_desc** %cd_gpio, align 8, !dbg !2880
  store i32 0, i32* %retval, align 4, !dbg !2881
  br label %return, !dbg !2881

return:                                           ; preds = %if.end17, %if.then
  %25 = load i32, i32* %retval, align 4, !dbg !2882
  ret i32 %25, !dbg !2882
}

; Function Attrs: noredzone
declare dso_local %struct.gpio_desc* @devm_gpiod_get_index(%struct.device*, i8*, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !2883 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2887, metadata !DIExpression()), !dbg !2888
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2889
  %1 = ptrtoint i8* %0 to i64, !dbg !2889
  %2 = inttoptr i64 %1 to i8*, !dbg !2889
  %3 = ptrtoint i8* %2 to i64, !dbg !2889
  %cmp = icmp uge i64 %3, -4095, !dbg !2889
  %lnot = xor i1 %cmp, true, !dbg !2889
  %lnot1 = xor i1 %lnot, true, !dbg !2889
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2889
  %conv = sext i32 %lnot.ext to i64, !dbg !2889
  %tobool = icmp ne i64 %conv, 0, !dbg !2889
  ret i1 %tobool, !dbg !2890
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !2891 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2894, metadata !DIExpression()), !dbg !2895
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2896
  %1 = ptrtoint i8* %0 to i64, !dbg !2897
  ret i64 %1, !dbg !2898
}

; Function Attrs: noredzone
declare dso_local i32 @gpiod_set_debounce(%struct.gpio_desc*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @gpiod_is_active_low(%struct.gpio_desc*) #2

; Function Attrs: noredzone
declare dso_local void @gpiod_toggle_active_low(%struct.gpio_desc*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @mmc_can_gpio_cd(%struct.mmc_host* %host) #0 !dbg !2899 {
entry:
  %host.addr = alloca %struct.mmc_host*, align 8
  %ctx = alloca %struct.mmc_gpio*, align 8
  store %struct.mmc_host* %host, %struct.mmc_host** %host.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_host** %host.addr, metadata !2902, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.declare(metadata %struct.mmc_gpio** %ctx, metadata !2904, metadata !DIExpression()), !dbg !2905
  %0 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2906
  %slot = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %0, i32 0, i32 45, !dbg !2907
  %handler_priv = getelementptr inbounds %struct.mmc_slot, %struct.mmc_slot* %slot, i32 0, i32 2, !dbg !2908
  %1 = load i8*, i8** %handler_priv, align 8, !dbg !2908
  %2 = bitcast i8* %1 to %struct.mmc_gpio*, !dbg !2906
  store %struct.mmc_gpio* %2, %struct.mmc_gpio** %ctx, align 8, !dbg !2905
  %3 = load %struct.mmc_gpio*, %struct.mmc_gpio** %ctx, align 8, !dbg !2909
  %cd_gpio = getelementptr inbounds %struct.mmc_gpio, %struct.mmc_gpio* %3, i32 0, i32 1, !dbg !2910
  %4 = load %struct.gpio_desc*, %struct.gpio_desc** %cd_gpio, align 8, !dbg !2910
  %tobool = icmp ne %struct.gpio_desc* %4, null, !dbg !2909
  %5 = zext i1 %tobool to i64, !dbg !2909
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !2909
  %tobool1 = icmp ne i32 %cond, 0, !dbg !2909
  ret i1 %tobool1, !dbg !2911
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @mmc_gpiod_request_ro(%struct.mmc_host* %host, i8* %con_id, i32 %idx, i32 %debounce) #0 !dbg !2912 {
entry:
  %retval = alloca i32, align 4
  %host.addr = alloca %struct.mmc_host*, align 8
  %con_id.addr = alloca i8*, align 8
  %idx.addr = alloca i32, align 4
  %debounce.addr = alloca i32, align 4
  %ctx = alloca %struct.mmc_gpio*, align 8
  %desc = alloca %struct.gpio_desc*, align 8
  %ret = alloca i32, align 4
  store %struct.mmc_host* %host, %struct.mmc_host** %host.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_host** %host.addr, metadata !2915, metadata !DIExpression()), !dbg !2916
  store i8* %con_id, i8** %con_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %con_id.addr, metadata !2917, metadata !DIExpression()), !dbg !2918
  store i32 %idx, i32* %idx.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %idx.addr, metadata !2919, metadata !DIExpression()), !dbg !2920
  store i32 %debounce, i32* %debounce.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %debounce.addr, metadata !2921, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.declare(metadata %struct.mmc_gpio** %ctx, metadata !2923, metadata !DIExpression()), !dbg !2924
  %0 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2925
  %slot = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %0, i32 0, i32 45, !dbg !2926
  %handler_priv = getelementptr inbounds %struct.mmc_slot, %struct.mmc_slot* %slot, i32 0, i32 2, !dbg !2927
  %1 = load i8*, i8** %handler_priv, align 8, !dbg !2927
  %2 = bitcast i8* %1 to %struct.mmc_gpio*, !dbg !2925
  store %struct.mmc_gpio* %2, %struct.mmc_gpio** %ctx, align 8, !dbg !2924
  call void @llvm.dbg.declare(metadata %struct.gpio_desc** %desc, metadata !2928, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2930, metadata !DIExpression()), !dbg !2931
  %3 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2932
  %parent = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %3, i32 0, i32 0, !dbg !2933
  %4 = load %struct.device*, %struct.device** %parent, align 64, !dbg !2933
  %5 = load i8*, i8** %con_id.addr, align 8, !dbg !2934
  %6 = load i32, i32* %idx.addr, align 4, !dbg !2935
  %call = call %struct.gpio_desc* @devm_gpiod_get_index(%struct.device* %4, i8* %5, i32 %6, i32 1) #4, !dbg !2936
  store %struct.gpio_desc* %call, %struct.gpio_desc** %desc, align 8, !dbg !2937
  %7 = load %struct.gpio_desc*, %struct.gpio_desc** %desc, align 8, !dbg !2938
  %8 = bitcast %struct.gpio_desc* %7 to i8*, !dbg !2938
  %call1 = call zeroext i1 @IS_ERR(i8* %8) #4, !dbg !2940
  br i1 %call1, label %if.then, label %if.end, !dbg !2941

if.then:                                          ; preds = %entry
  %9 = load %struct.gpio_desc*, %struct.gpio_desc** %desc, align 8, !dbg !2942
  %10 = bitcast %struct.gpio_desc* %9 to i8*, !dbg !2942
  %call2 = call i64 @PTR_ERR(i8* %10) #4, !dbg !2943
  %conv = trunc i64 %call2 to i32, !dbg !2943
  store i32 %conv, i32* %retval, align 4, !dbg !2944
  br label %return, !dbg !2944

if.end:                                           ; preds = %entry
  %11 = load i32, i32* %debounce.addr, align 4, !dbg !2945
  %tobool = icmp ne i32 %11, 0, !dbg !2945
  br i1 %tobool, label %if.then3, label %if.end8, !dbg !2947

if.then3:                                         ; preds = %if.end
  %12 = load %struct.gpio_desc*, %struct.gpio_desc** %desc, align 8, !dbg !2948
  %13 = load i32, i32* %debounce.addr, align 4, !dbg !2950
  %call4 = call i32 @gpiod_set_debounce(%struct.gpio_desc* %12, i32 %13) #4, !dbg !2951
  store i32 %call4, i32* %ret, align 4, !dbg !2952
  %14 = load i32, i32* %ret, align 4, !dbg !2953
  %cmp = icmp slt i32 %14, 0, !dbg !2955
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !2956

if.then6:                                         ; preds = %if.then3
  %15 = load i32, i32* %ret, align 4, !dbg !2957
  store i32 %15, i32* %retval, align 4, !dbg !2958
  br label %return, !dbg !2958

if.end7:                                          ; preds = %if.then3
  br label %if.end8, !dbg !2959

if.end8:                                          ; preds = %if.end7, %if.end
  %16 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2960
  %caps2 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %16, i32 0, i32 18, !dbg !2962
  %17 = load i32, i32* %caps2, align 8, !dbg !2962
  %and = and i32 %17, 2048, !dbg !2963
  %tobool9 = icmp ne i32 %and, 0, !dbg !2963
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !2964

if.then10:                                        ; preds = %if.end8
  %18 = load %struct.gpio_desc*, %struct.gpio_desc** %desc, align 8, !dbg !2965
  call void @gpiod_toggle_active_low(%struct.gpio_desc* %18) #4, !dbg !2966
  br label %if.end11, !dbg !2966

if.end11:                                         ; preds = %if.then10, %if.end8
  %19 = load %struct.gpio_desc*, %struct.gpio_desc** %desc, align 8, !dbg !2967
  %20 = load %struct.mmc_gpio*, %struct.mmc_gpio** %ctx, align 8, !dbg !2968
  %ro_gpio = getelementptr inbounds %struct.mmc_gpio, %struct.mmc_gpio* %20, i32 0, i32 0, !dbg !2969
  store %struct.gpio_desc* %19, %struct.gpio_desc** %ro_gpio, align 8, !dbg !2970
  store i32 0, i32* %retval, align 4, !dbg !2971
  br label %return, !dbg !2971

return:                                           ; preds = %if.end11, %if.then6, %if.then
  %21 = load i32, i32* %retval, align 4, !dbg !2972
  ret i32 %21, !dbg !2972
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @mmc_can_gpio_ro(%struct.mmc_host* %host) #0 !dbg !2973 {
entry:
  %host.addr = alloca %struct.mmc_host*, align 8
  %ctx = alloca %struct.mmc_gpio*, align 8
  store %struct.mmc_host* %host, %struct.mmc_host** %host.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_host** %host.addr, metadata !2974, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.declare(metadata %struct.mmc_gpio** %ctx, metadata !2976, metadata !DIExpression()), !dbg !2977
  %0 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2978
  %slot = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %0, i32 0, i32 45, !dbg !2979
  %handler_priv = getelementptr inbounds %struct.mmc_slot, %struct.mmc_slot* %slot, i32 0, i32 2, !dbg !2980
  %1 = load i8*, i8** %handler_priv, align 8, !dbg !2980
  %2 = bitcast i8* %1 to %struct.mmc_gpio*, !dbg !2978
  store %struct.mmc_gpio* %2, %struct.mmc_gpio** %ctx, align 8, !dbg !2977
  %3 = load %struct.mmc_gpio*, %struct.mmc_gpio** %ctx, align 8, !dbg !2981
  %ro_gpio = getelementptr inbounds %struct.mmc_gpio, %struct.mmc_gpio* %3, i32 0, i32 0, !dbg !2982
  %4 = load %struct.gpio_desc*, %struct.gpio_desc** %ro_gpio, align 8, !dbg !2982
  %tobool = icmp ne %struct.gpio_desc* %4, null, !dbg !2981
  %5 = zext i1 %tobool to i64, !dbg !2981
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !2981
  %tobool1 = icmp ne i32 %cond, 0, !dbg !2981
  ret i1 %tobool1, !dbg !2983
}

; Function Attrs: noredzone
declare dso_local noalias i8* @devm_kmalloc(%struct.device*, i64, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #0 !dbg !2984 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !2989, metadata !DIExpression()), !dbg !2990
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !2991
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !2992
  %1 = load i8*, i8** %name, align 8, !dbg !2992
  ret i8* %1, !dbg !2993
}

; Function Attrs: noredzone
declare dso_local void @mmc_detect_change(%struct.mmc_host*, i64) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @_msecs_to_jiffies(i32 %m) #0 !dbg !2994 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr, metadata !2995, metadata !DIExpression()), !dbg !2996
  %0 = load i32, i32* %m.addr, align 4, !dbg !2997
  %conv = zext i32 %0 to i64, !dbg !2997
  %add = add i64 %conv, 4, !dbg !2998
  %sub = sub i64 %add, 1, !dbg !2999
  %div = sdiv i64 %sub, 4, !dbg !3000
  ret i64 %div, !dbg !3001
}

; Function Attrs: noredzone
declare dso_local i64 @__msecs_to_jiffies(i32) #2

; Function Attrs: noredzone
declare dso_local i32 @irq_set_irq_wake(i32, i32) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone willreturn }
attributes #4 = { noredzone }
attributes #5 = { nounwind }
attributes #6 = { noredzone nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !68, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/mmc/core/slot-gpio.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3, !9, !15, !21, !27, !34, !42, !48, !54, !59}
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
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !49, line: 11, baseType: !5, size: 32, elements: !50)
!49 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!50 = !{!51, !52, !53}
!51 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!52 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!53 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !55, line: 10, baseType: !5, size: 32, elements: !56)
!55 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!56 = !{!57, !58}
!57 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!58 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gpiod_flags", file: !60, line: 49, baseType: !5, size: 32, elements: !61)
!60 = !DIFile(filename: "./include/linux/gpio/consumer.h", directory: "/home/lizy2001/genbc/linux")
!61 = !{!62, !63, !64, !65, !66, !67}
!62 = !DIEnumerator(name: "GPIOD_ASIS", value: 0, isUnsigned: true)
!63 = !DIEnumerator(name: "GPIOD_IN", value: 1, isUnsigned: true)
!64 = !DIEnumerator(name: "GPIOD_OUT_LOW", value: 3, isUnsigned: true)
!65 = !DIEnumerator(name: "GPIOD_OUT_HIGH", value: 7, isUnsigned: true)
!66 = !DIEnumerator(name: "GPIOD_OUT_LOW_OPEN_DRAIN", value: 11, isUnsigned: true)
!67 = !DIEnumerator(name: "GPIOD_OUT_HIGH_OPEN_DRAIN", value: 15, isUnsigned: true)
!68 = !{!69, !71, !72, !73, !74}
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !70, line: 148, baseType: !5)
!70 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!71 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!72 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!73 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!75 = !{i32 7, !"Dwarf Version", i32 4}
!76 = !{i32 2, !"Debug Info Version", i32 3}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"Code Model", i32 2}
!79 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!80 = distinct !DISubprogram(name: "mmc_gpio_alloc", scope: !1, file: !1, line: 40, type: !81, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !127)
!81 = !DISubroutineType(types: !82)
!82 = !{!71, !83}
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_host", file: !85, line: 275, size: 10752, elements: !86)
!85 = !DIFile(filename: "./include/linux/mmc/host.h", directory: "/home/lizy2001/genbc/linux")
!86 = !{!87, !1948, !1949, !1950, !2292, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2358, !2359, !2360, !2367, !2368, !2374, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2388, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2422, !2423, !2424, !2425, !2426, !2427}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !84, file: !85, line: 276, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !28, line: 461, size: 5568, elements: !90)
!90 = !{!91, !1582, !1583, !1586, !1587, !1638, !1735, !1736, !1737, !1738, !1739, !1748, !1853, !1866, !1869, !1870, !1874, !1876, !1877, !1878, !1882, !1888, !1889, !1892, !1895, !1898, !1901, !1902, !1903, !1904, !1936, !1937, !1938, !1941, !1944, !1945, !1946, !1947}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !89, file: !28, line: 462, baseType: !92, size: 512)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !93, line: 64, size: 512, elements: !94)
!93 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!94 = !{!95, !99, !105, !107, !167, !1419, !1572, !1577, !1578, !1579, !1580, !1581}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !92, file: !93, line: 65, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!98 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !92, file: !93, line: 66, baseType: !100, size: 128, offset: 64)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !70, line: 178, size: 128, elements: !101)
!101 = !{!102, !104}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !100, file: !70, line: 179, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !100, file: !70, line: 179, baseType: !103, size: 64, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !92, file: !93, line: 67, baseType: !106, size: 64, offset: 192)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !92, file: !93, line: 68, baseType: !108, size: 64, offset: 256)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !93, line: 192, size: 704, elements: !110)
!110 = !{!111, !112, !128, !129}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !109, file: !93, line: 193, baseType: !100, size: 128)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !109, file: !93, line: 194, baseType: !113, offset: 128)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !114, line: 83, baseType: !115)
!114 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !114, line: 71, elements: !116)
!116 = !{!117}
!117 = !DIDerivedType(tag: DW_TAG_member, scope: !115, file: !114, line: 72, baseType: !118)
!118 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !115, file: !114, line: 72, elements: !119)
!119 = !{!120}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !118, file: !114, line: 73, baseType: !121)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !114, line: 20, elements: !122)
!122 = !{!123}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !121, file: !114, line: 21, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !125, line: 25, baseType: !126)
!125 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !125, line: 25, elements: !127)
!127 = !{}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !109, file: !93, line: 195, baseType: !92, size: 512, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !109, file: !93, line: 196, baseType: !130, size: 64, offset: 640)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !93, line: 156, size: 192, elements: !133)
!133 = !{!134, !139, !144}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !132, file: !93, line: 157, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{!71, !108, !106}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !132, file: !93, line: 158, baseType: !140, size: 64, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DISubroutineType(types: !143)
!143 = !{!96, !108, !106}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !132, file: !93, line: 159, baseType: !145, size: 64, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{!71, !108, !106, !149}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !93, line: 148, size: 20736, elements: !151)
!151 = !{!152, !157, !161, !162, !166}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !150, file: !93, line: 149, baseType: !153, size: 192)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 192, elements: !155)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!155 = !{!156}
!156 = !DISubrange(count: 3)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !150, file: !93, line: 150, baseType: !158, size: 4096, offset: 192)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 4096, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !150, file: !93, line: 151, baseType: !71, size: 32, offset: 4288)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !150, file: !93, line: 152, baseType: !163, size: 16384, offset: 4320)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 16384, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 2048)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !150, file: !93, line: 153, baseType: !71, size: 32, offset: 20704)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !92, file: !93, line: 69, baseType: !168, size: 64, offset: 320)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !93, line: 138, size: 448, elements: !170)
!170 = !{!171, !175, !203, !205, !1365, !1398, !1402}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !169, file: !93, line: 139, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DISubroutineType(types: !174)
!174 = !{null, !106}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !169, file: !93, line: 140, baseType: !176, size: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !178)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !179, line: 230, size: 128, elements: !180)
!179 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!180 = !{!181, !196}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !178, file: !179, line: 231, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{!185, !106, !189, !154}
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !70, line: 60, baseType: !186)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !187, line: 73, baseType: !188)
!187 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !187, line: 15, baseType: !72)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !179, line: 30, size: 128, elements: !191)
!191 = !{!192, !193}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !190, file: !179, line: 31, baseType: !96, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !190, file: !179, line: 32, baseType: !194, size: 16, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !70, line: 19, baseType: !195)
!195 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !178, file: !179, line: 232, baseType: !197, size: 64, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!185, !106, !189, !96, !200}
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !70, line: 55, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !187, line: 72, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !187, line: 16, baseType: !73)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !169, file: !93, line: 141, baseType: !204, size: 64, offset: 128)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !169, file: !93, line: 142, baseType: !206, size: 64, offset: 192)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !179, line: 84, size: 320, elements: !210)
!210 = !{!211, !212, !216, !1362, !1363}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !209, file: !179, line: 85, baseType: !96, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !209, file: !179, line: 86, baseType: !213, size: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{!194, !106, !189, !71}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !209, file: !179, line: 88, baseType: !217, size: 64, offset: 128)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!194, !106, !220, !71}
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !179, line: 168, size: 448, elements: !222)
!222 = !{!223, !224, !225, !226, !236, !237}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !221, file: !179, line: 169, baseType: !190, size: 128)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !221, file: !179, line: 170, baseType: !200, size: 64, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !221, file: !179, line: 171, baseType: !74, size: 64, offset: 192)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !221, file: !179, line: 172, baseType: !227, size: 64, offset: 256)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{!185, !230, !106, !220, !154, !233, !200}
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !232, line: 526, flags: DIFlagFwdDecl)
!232 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !70, line: 46, baseType: !234)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !187, line: 88, baseType: !235)
!235 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !221, file: !179, line: 174, baseType: !227, size: 64, offset: 320)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !221, file: !179, line: 176, baseType: !238, size: 64, offset: 384)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!71, !230, !106, !220, !241}
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !243, line: 305, size: 1472, elements: !244)
!243 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!244 = !{!245, !246, !247, !248, !249, !257, !258, !1336, !1342, !1343, !1348, !1349, !1352, !1356, !1357, !1358, !1359, !1360}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !242, file: !243, line: 308, baseType: !73, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !242, file: !243, line: 309, baseType: !73, size: 64, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !242, file: !243, line: 313, baseType: !241, size: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !242, file: !243, line: 313, baseType: !241, size: 64, offset: 192)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !242, file: !243, line: 315, baseType: !250, size: 192, align: 64, offset: 256)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !251, line: 24, size: 192, align: 64, elements: !252)
!251 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!252 = !{!253, !254, !256}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !250, file: !251, line: 25, baseType: !73, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !250, file: !251, line: 26, baseType: !255, size: 64, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !250, file: !251, line: 27, baseType: !255, size: 64, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !242, file: !243, line: 323, baseType: !73, size: 64, offset: 448)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !242, file: !243, line: 327, baseType: !259, size: 64, offset: 512)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !243, line: 388, size: 7296, elements: !261)
!261 = !{!262, !1332}
!262 = !DIDerivedType(tag: DW_TAG_member, scope: !260, file: !243, line: 389, baseType: !263, size: 7296)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !260, file: !243, line: 389, size: 7296, elements: !264)
!264 = !{!265, !266, !270, !276, !280, !281, !282, !283, !284, !292, !297, !298, !299, !300, !309, !310, !311, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !346, !354, !357, !405, !406, !1302, !1303, !1306, !1310, !1311, !1314, !1315, !1316, !1319, !1331}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !263, file: !243, line: 390, baseType: !241, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !263, file: !243, line: 391, baseType: !267, size: 64, offset: 64)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !251, line: 31, size: 64, elements: !268)
!268 = !{!269}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !267, file: !251, line: 32, baseType: !255, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !263, file: !243, line: 392, baseType: !271, size: 64, offset: 128)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !272, line: 23, baseType: !273)
!272 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !274, line: 31, baseType: !275)
!274 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!275 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !263, file: !243, line: 394, baseType: !277, size: 64, offset: 192)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{!73, !230, !73, !73, !73, !73}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !263, file: !243, line: 398, baseType: !73, size: 64, offset: 256)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !263, file: !243, line: 399, baseType: !73, size: 64, offset: 320)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !263, file: !243, line: 405, baseType: !73, size: 64, offset: 384)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !263, file: !243, line: 406, baseType: !73, size: 64, offset: 448)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !263, file: !243, line: 407, baseType: !285, size: 64, offset: 512)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !232, line: 286, baseType: !287)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !232, line: 286, size: 64, elements: !288)
!288 = !{!289}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !287, file: !232, line: 286, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !291, line: 18, baseType: !73)
!291 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!292 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !263, file: !243, line: 416, baseType: !293, size: 32, offset: 576)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !70, line: 168, baseType: !294)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !70, line: 166, size: 32, elements: !295)
!295 = !{!296}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !294, file: !70, line: 167, baseType: !71, size: 32)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !263, file: !243, line: 428, baseType: !293, size: 32, offset: 608)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !263, file: !243, line: 437, baseType: !293, size: 32, offset: 640)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !263, file: !243, line: 447, baseType: !293, size: 32, offset: 672)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !263, file: !243, line: 450, baseType: !301, size: 64, offset: 704)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !302, line: 13, baseType: !303)
!302 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !70, line: 175, baseType: !304)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !70, line: 173, size: 64, elements: !305)
!305 = !{!306}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !304, file: !70, line: 174, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !272, line: 22, baseType: !308)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !274, line: 30, baseType: !235)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !263, file: !243, line: 452, baseType: !71, size: 32, offset: 768)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !263, file: !243, line: 454, baseType: !113, offset: 800)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !263, file: !243, line: 457, baseType: !312, size: 256, offset: 832)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !313, line: 35, size: 256, elements: !314)
!313 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!314 = !{!315, !316, !317, !319}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !312, file: !313, line: 36, baseType: !301, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !312, file: !313, line: 42, baseType: !301, size: 64, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !312, file: !313, line: 46, baseType: !318, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !114, line: 29, baseType: !121)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !312, file: !313, line: 47, baseType: !100, size: 128, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !263, file: !243, line: 459, baseType: !100, size: 128, offset: 1088)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !263, file: !243, line: 466, baseType: !73, size: 64, offset: 1216)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !263, file: !243, line: 467, baseType: !73, size: 64, offset: 1280)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !263, file: !243, line: 469, baseType: !73, size: 64, offset: 1344)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !263, file: !243, line: 470, baseType: !73, size: 64, offset: 1408)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !263, file: !243, line: 471, baseType: !303, size: 64, offset: 1472)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !263, file: !243, line: 472, baseType: !73, size: 64, offset: 1536)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !263, file: !243, line: 473, baseType: !73, size: 64, offset: 1600)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !263, file: !243, line: 474, baseType: !73, size: 64, offset: 1664)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !263, file: !243, line: 475, baseType: !73, size: 64, offset: 1728)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !263, file: !243, line: 477, baseType: !113, offset: 1792)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !263, file: !243, line: 478, baseType: !73, size: 64, offset: 1792)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !263, file: !243, line: 478, baseType: !73, size: 64, offset: 1856)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !263, file: !243, line: 478, baseType: !73, size: 64, offset: 1920)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !263, file: !243, line: 478, baseType: !73, size: 64, offset: 1984)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !263, file: !243, line: 479, baseType: !73, size: 64, offset: 2048)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !263, file: !243, line: 479, baseType: !73, size: 64, offset: 2112)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !263, file: !243, line: 479, baseType: !73, size: 64, offset: 2176)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !263, file: !243, line: 480, baseType: !73, size: 64, offset: 2240)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !263, file: !243, line: 480, baseType: !73, size: 64, offset: 2304)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !263, file: !243, line: 480, baseType: !73, size: 64, offset: 2368)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !263, file: !243, line: 480, baseType: !73, size: 64, offset: 2432)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !263, file: !243, line: 482, baseType: !343, size: 2816, offset: 2496)
!343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 2816, elements: !344)
!344 = !{!345}
!345 = !DISubrange(count: 44)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !263, file: !243, line: 488, baseType: !347, size: 256, offset: 5312)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !348, line: 60, size: 256, elements: !349)
!348 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!349 = !{!350}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !347, file: !348, line: 61, baseType: !351, size: 256)
!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 256, elements: !352)
!352 = !{!353}
!353 = !DISubrange(count: 4)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !263, file: !243, line: 490, baseType: !355, size: 64, offset: 5568)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !243, line: 490, flags: DIFlagFwdDecl)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !263, file: !243, line: 493, baseType: !358, size: 896, offset: 5632)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !359, line: 53, baseType: !360)
!359 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !359, line: 13, size: 896, elements: !361)
!361 = !{!362, !363, !364, !365, !368, !369, !376, !377, !397, !398, !401}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !360, file: !359, line: 18, baseType: !271, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !360, file: !359, line: 28, baseType: !303, size: 64, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !360, file: !359, line: 31, baseType: !312, size: 256, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !360, file: !359, line: 32, baseType: !366, size: 64, offset: 384)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !359, line: 32, flags: DIFlagFwdDecl)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !360, file: !359, line: 37, baseType: !195, size: 16, offset: 448)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !360, file: !359, line: 40, baseType: !370, size: 192, offset: 512)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !371, line: 53, size: 192, elements: !372)
!371 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!372 = !{!373, !374, !375}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !370, file: !371, line: 54, baseType: !301, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !370, file: !371, line: 55, baseType: !113, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !370, file: !371, line: 59, baseType: !100, size: 128, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !360, file: !359, line: 41, baseType: !74, size: 64, offset: 704)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !360, file: !359, line: 42, baseType: !378, size: 64, offset: 768)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !380)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !381, line: 13, size: 896, elements: !382)
!381 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!382 = !{!383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !380, file: !381, line: 14, baseType: !74, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !380, file: !381, line: 15, baseType: !73, size: 64, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !380, file: !381, line: 17, baseType: !73, size: 64, offset: 128)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !380, file: !381, line: 17, baseType: !73, size: 64, offset: 192)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !380, file: !381, line: 19, baseType: !72, size: 64, offset: 256)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !380, file: !381, line: 21, baseType: !72, size: 64, offset: 320)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !380, file: !381, line: 22, baseType: !72, size: 64, offset: 384)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !380, file: !381, line: 23, baseType: !72, size: 64, offset: 448)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !380, file: !381, line: 24, baseType: !72, size: 64, offset: 512)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !380, file: !381, line: 25, baseType: !72, size: 64, offset: 576)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !380, file: !381, line: 26, baseType: !72, size: 64, offset: 640)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !380, file: !381, line: 27, baseType: !72, size: 64, offset: 704)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !380, file: !381, line: 28, baseType: !72, size: 64, offset: 768)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !380, file: !381, line: 29, baseType: !72, size: 64, offset: 832)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !360, file: !359, line: 44, baseType: !293, size: 32, offset: 832)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !360, file: !359, line: 50, baseType: !399, size: 16, offset: 864)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !272, line: 19, baseType: !400)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !274, line: 24, baseType: !195)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !360, file: !359, line: 51, baseType: !402, size: 16, offset: 880)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !272, line: 18, baseType: !403)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !274, line: 23, baseType: !404)
!404 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !263, file: !243, line: 495, baseType: !73, size: 64, offset: 6528)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !263, file: !243, line: 497, baseType: !407, size: 64, offset: 6592)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !243, line: 381, size: 384, elements: !409)
!409 = !{!410, !411, !1301}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !408, file: !243, line: 382, baseType: !293, size: 32)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !408, file: !243, line: 383, baseType: !412, size: 128, offset: 64)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !243, line: 376, size: 128, elements: !413)
!413 = !{!414, !1299}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !412, file: !243, line: 377, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !417, line: 640, size: 48640, elements: !418)
!417 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!418 = !{!419, !427, !429, !430, !436, !437, !438, !439, !440, !441, !442, !443, !447, !465, !476, !571, !572, !573, !584, !585, !587, !588, !589, !590, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !669, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !725, !727, !728, !729, !741, !743, !744, !745, !746, !747, !753, !754, !755, !756, !757, !758, !759, !771, !776, !780, !781, !782, !785, !789, !792, !795, !798, !801, !804, !807, !810, !816, !817, !818, !824, !825, !826, !827, !828, !837, !838, !839, !840, !841, !846, !847, !848, !851, !852, !855, !858, !861, !864, !867, !870, !871, !951, !954, !957, !958, !961, !962, !963, !969, !970, !971, !984, !985, !986, !998, !1003, !1006, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !416, file: !417, line: 646, baseType: !420, size: 128)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !421, line: 56, size: 128, elements: !422)
!421 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!422 = !{!423, !424}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !420, file: !421, line: 57, baseType: !73, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !420, file: !421, line: 58, baseType: !425, size: 32, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !272, line: 21, baseType: !426)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !274, line: 27, baseType: !5)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !416, file: !417, line: 649, baseType: !428, size: 64, offset: 128)
!428 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !72)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !416, file: !417, line: 657, baseType: !74, size: 64, offset: 192)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !416, file: !417, line: 658, baseType: !431, size: 32, offset: 256)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !432, line: 113, baseType: !433)
!432 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !432, line: 111, size: 32, elements: !434)
!434 = !{!435}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !433, file: !432, line: 112, baseType: !293, size: 32)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !416, file: !417, line: 660, baseType: !5, size: 32, offset: 288)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !416, file: !417, line: 661, baseType: !5, size: 32, offset: 320)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !416, file: !417, line: 684, baseType: !71, size: 32, offset: 352)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !416, file: !417, line: 686, baseType: !71, size: 32, offset: 384)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !416, file: !417, line: 687, baseType: !71, size: 32, offset: 416)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !416, file: !417, line: 688, baseType: !71, size: 32, offset: 448)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !416, file: !417, line: 689, baseType: !5, size: 32, offset: 480)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !416, file: !417, line: 691, baseType: !444, size: 64, offset: 512)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !446)
!446 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !417, line: 691, flags: DIFlagFwdDecl)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !416, file: !417, line: 692, baseType: !448, size: 832, offset: 576)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !417, line: 451, size: 832, elements: !449)
!449 = !{!450, !455, !456, !457, !458, !459, !460, !461, !462, !463}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !448, file: !417, line: 453, baseType: !451, size: 128)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !417, line: 325, size: 128, elements: !452)
!452 = !{!453, !454}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !451, file: !417, line: 326, baseType: !73, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !451, file: !417, line: 327, baseType: !425, size: 32, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !448, file: !417, line: 454, baseType: !250, size: 192, align: 64, offset: 128)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !448, file: !417, line: 455, baseType: !100, size: 128, offset: 320)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !448, file: !417, line: 456, baseType: !5, size: 32, offset: 448)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !448, file: !417, line: 458, baseType: !271, size: 64, offset: 512)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !448, file: !417, line: 459, baseType: !271, size: 64, offset: 576)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !448, file: !417, line: 460, baseType: !271, size: 64, offset: 640)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !448, file: !417, line: 461, baseType: !271, size: 64, offset: 704)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !448, file: !417, line: 463, baseType: !271, size: 64, offset: 768)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !448, file: !417, line: 465, baseType: !464, offset: 832)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !417, line: 415, elements: !127)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !416, file: !417, line: 693, baseType: !466, size: 384, offset: 1408)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !417, line: 489, size: 384, elements: !467)
!467 = !{!468, !469, !470, !471, !472, !473, !474}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !466, file: !417, line: 490, baseType: !100, size: 128)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !466, file: !417, line: 491, baseType: !73, size: 64, offset: 128)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !466, file: !417, line: 492, baseType: !73, size: 64, offset: 192)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !466, file: !417, line: 493, baseType: !5, size: 32, offset: 256)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !466, file: !417, line: 494, baseType: !195, size: 16, offset: 288)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !466, file: !417, line: 495, baseType: !195, size: 16, offset: 304)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !466, file: !417, line: 497, baseType: !475, size: 64, offset: 320)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !416, file: !417, line: 697, baseType: !477, size: 1792, offset: 1792)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !417, line: 507, size: 1792, elements: !478)
!478 = !{!479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !568, !569}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !477, file: !417, line: 508, baseType: !250, size: 192, align: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !477, file: !417, line: 515, baseType: !271, size: 64, offset: 192)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !477, file: !417, line: 516, baseType: !271, size: 64, offset: 256)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !477, file: !417, line: 517, baseType: !271, size: 64, offset: 320)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !477, file: !417, line: 518, baseType: !271, size: 64, offset: 384)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !477, file: !417, line: 519, baseType: !271, size: 64, offset: 448)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !477, file: !417, line: 526, baseType: !307, size: 64, offset: 512)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !477, file: !417, line: 527, baseType: !271, size: 64, offset: 576)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !477, file: !417, line: 528, baseType: !5, size: 32, offset: 640)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !477, file: !417, line: 554, baseType: !5, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !477, file: !417, line: 555, baseType: !5, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !477, file: !417, line: 556, baseType: !5, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !477, file: !417, line: 557, baseType: !5, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !477, file: !417, line: 563, baseType: !493, size: 512, offset: 704)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !4, line: 118, size: 512, elements: !494)
!494 = !{!495, !503, !504, !509, !561, !565, !566, !567}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !493, file: !4, line: 119, baseType: !496, size: 256)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !497, line: 9, size: 256, elements: !498)
!497 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!498 = !{!499, !500}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !496, file: !497, line: 10, baseType: !250, size: 192, align: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !496, file: !497, line: 11, baseType: !501, size: 64, offset: 192)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !502, line: 29, baseType: !307)
!502 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!503 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !493, file: !4, line: 120, baseType: !501, size: 64, offset: 256)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !493, file: !4, line: 121, baseType: !505, size: 64, offset: 320)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{!3, !508}
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !493, file: !4, line: 122, baseType: !510, size: 64, offset: 384)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !4, line: 159, size: 512, align: 512, elements: !512)
!512 = !{!513, !533, !534, !537, !547, !548, !556, !560}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !511, file: !4, line: 160, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !4, line: 214, size: 4608, align: 512, elements: !516)
!516 = !{!517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !515, file: !4, line: 215, baseType: !318)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !515, file: !4, line: 216, baseType: !5, size: 32)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !515, file: !4, line: 217, baseType: !5, size: 32, offset: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !515, file: !4, line: 218, baseType: !5, size: 32, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !515, file: !4, line: 219, baseType: !5, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !515, file: !4, line: 220, baseType: !5, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !515, file: !4, line: 221, baseType: !5, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !515, file: !4, line: 222, baseType: !5, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !515, file: !4, line: 233, baseType: !501, size: 64, offset: 128)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !515, file: !4, line: 234, baseType: !508, size: 64, offset: 192)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !515, file: !4, line: 235, baseType: !501, size: 64, offset: 256)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !515, file: !4, line: 236, baseType: !508, size: 64, offset: 320)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !515, file: !4, line: 237, baseType: !530, size: 4096, offset: 512)
!530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !511, size: 4096, elements: !531)
!531 = !{!532}
!532 = !DISubrange(count: 8)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !511, file: !4, line: 161, baseType: !5, size: 32, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !511, file: !4, line: 162, baseType: !535, size: 32, offset: 96)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !70, line: 27, baseType: !536)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !187, line: 96, baseType: !71)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !511, file: !4, line: 163, baseType: !538, size: 32, offset: 128)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !539, line: 276, baseType: !540)
!539 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !539, line: 276, size: 32, elements: !541)
!541 = !{!542}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !540, file: !539, line: 276, baseType: !543, size: 32)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !539, line: 70, baseType: !544)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !539, line: 65, size: 32, elements: !545)
!545 = !{!546}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !544, file: !539, line: 66, baseType: !5, size: 32)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !511, file: !4, line: 164, baseType: !508, size: 64, offset: 192)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !511, file: !4, line: 165, baseType: !549, size: 128, offset: 256)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !497, line: 14, size: 128, elements: !550)
!550 = !{!551}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !549, file: !497, line: 15, baseType: !552, size: 128)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !251, line: 125, size: 128, elements: !553)
!553 = !{!554, !555}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !552, file: !251, line: 126, baseType: !267, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !552, file: !251, line: 127, baseType: !255, size: 64, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !511, file: !4, line: 166, baseType: !557, size: 64, offset: 384)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{!501}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !511, file: !4, line: 167, baseType: !501, size: 64, offset: 448)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !493, file: !4, line: 123, baseType: !562, size: 8, offset: 448)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !272, line: 17, baseType: !563)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !274, line: 21, baseType: !564)
!564 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !493, file: !4, line: 124, baseType: !562, size: 8, offset: 456)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !493, file: !4, line: 125, baseType: !562, size: 8, offset: 464)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !493, file: !4, line: 126, baseType: !562, size: 8, offset: 472)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !477, file: !417, line: 572, baseType: !493, size: 512, offset: 1216)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !477, file: !417, line: 580, baseType: !570, size: 64, offset: 1728)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !416, file: !417, line: 721, baseType: !5, size: 32, offset: 3584)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !416, file: !417, line: 722, baseType: !71, size: 32, offset: 3616)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !416, file: !417, line: 723, baseType: !574, size: 64, offset: 3648)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !576)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !577, line: 17, baseType: !578)
!577 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !577, line: 17, size: 64, elements: !579)
!579 = !{!580}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !578, file: !577, line: 17, baseType: !581, size: 64)
!581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 64, elements: !582)
!582 = !{!583}
!583 = !DISubrange(count: 1)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !416, file: !417, line: 724, baseType: !576, size: 64, offset: 3712)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !416, file: !417, line: 749, baseType: !586, offset: 3776)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !417, line: 290, elements: !127)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !416, file: !417, line: 751, baseType: !100, size: 128, offset: 3776)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !416, file: !417, line: 757, baseType: !259, size: 64, offset: 3904)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !416, file: !417, line: 758, baseType: !259, size: 64, offset: 3968)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !416, file: !417, line: 761, baseType: !591, size: 320, offset: 4032)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !348, line: 34, size: 320, elements: !592)
!592 = !{!593, !594}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !591, file: !348, line: 35, baseType: !271, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !591, file: !348, line: 36, baseType: !595, size: 256, offset: 64)
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 256, elements: !352)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !416, file: !417, line: 766, baseType: !71, size: 32, offset: 4352)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !416, file: !417, line: 767, baseType: !71, size: 32, offset: 4384)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !416, file: !417, line: 768, baseType: !71, size: 32, offset: 4416)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !416, file: !417, line: 770, baseType: !71, size: 32, offset: 4448)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !416, file: !417, line: 772, baseType: !73, size: 64, offset: 4480)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !416, file: !417, line: 775, baseType: !5, size: 32, offset: 4544)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !416, file: !417, line: 778, baseType: !5, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !416, file: !417, line: 779, baseType: !5, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !416, file: !417, line: 780, baseType: !5, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !416, file: !417, line: 803, baseType: !5, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !416, file: !417, line: 806, baseType: !5, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !416, file: !417, line: 807, baseType: !5, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !416, file: !417, line: 809, baseType: !5, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !416, file: !417, line: 815, baseType: !5, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !416, file: !417, line: 831, baseType: !73, size: 64, offset: 4672)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !416, file: !417, line: 833, baseType: !612, size: 384, offset: 4736)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !10, line: 25, size: 384, elements: !613)
!613 = !{!614, !619}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !612, file: !10, line: 26, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{!72, !618}
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, scope: !612, file: !10, line: 27, baseType: !620, size: 320, offset: 64)
!620 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !612, file: !10, line: 27, size: 320, elements: !621)
!621 = !{!622, !632, !659}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !620, file: !10, line: 36, baseType: !623, size: 320)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !620, file: !10, line: 29, size: 320, elements: !624)
!624 = !{!625, !627, !628, !629, !630, !631}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !623, file: !10, line: 30, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !623, file: !10, line: 31, baseType: !425, size: 32, offset: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !623, file: !10, line: 32, baseType: !425, size: 32, offset: 96)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !623, file: !10, line: 33, baseType: !425, size: 32, offset: 128)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !623, file: !10, line: 34, baseType: !271, size: 64, offset: 192)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !623, file: !10, line: 35, baseType: !626, size: 64, offset: 256)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !620, file: !10, line: 46, baseType: !633, size: 192)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !620, file: !10, line: 38, size: 192, elements: !634)
!634 = !{!635, !636, !637, !658}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !633, file: !10, line: 39, baseType: !535, size: 32)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !633, file: !10, line: 40, baseType: !9, size: 32, offset: 32)
!637 = !DIDerivedType(tag: DW_TAG_member, scope: !633, file: !10, line: 41, baseType: !638, size: 64, offset: 64)
!638 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !633, file: !10, line: 41, size: 64, elements: !639)
!639 = !{!640, !648}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !638, file: !10, line: 42, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !643, line: 7, size: 128, elements: !644)
!643 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!644 = !{!645, !647}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !642, file: !643, line: 8, baseType: !646, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !187, line: 93, baseType: !235)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !642, file: !643, line: 9, baseType: !235, size: 64, offset: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !638, file: !10, line: 43, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !651, line: 7, size: 64, elements: !652)
!651 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!652 = !{!653, !657}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !650, file: !651, line: 8, baseType: !654, size: 32)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !651, line: 5, baseType: !655)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !272, line: 20, baseType: !656)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !274, line: 26, baseType: !71)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !650, file: !651, line: 9, baseType: !655, size: 32, offset: 32)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !633, file: !10, line: 45, baseType: !271, size: 64, offset: 128)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !620, file: !10, line: 54, baseType: !660, size: 256)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !620, file: !10, line: 48, size: 256, elements: !661)
!661 = !{!662, !665, !666, !667, !668}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !660, file: !10, line: 49, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !10, line: 14, flags: DIFlagFwdDecl)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !660, file: !10, line: 50, baseType: !71, size: 32, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !660, file: !10, line: 51, baseType: !71, size: 32, offset: 96)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !660, file: !10, line: 52, baseType: !73, size: 64, offset: 128)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !660, file: !10, line: 53, baseType: !73, size: 64, offset: 192)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !416, file: !417, line: 835, baseType: !670, size: 32, offset: 5120)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !70, line: 22, baseType: !671)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !187, line: 28, baseType: !71)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !416, file: !417, line: 836, baseType: !670, size: 32, offset: 5152)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !416, file: !417, line: 840, baseType: !73, size: 64, offset: 5184)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !416, file: !417, line: 849, baseType: !415, size: 64, offset: 5248)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !416, file: !417, line: 852, baseType: !415, size: 64, offset: 5312)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !416, file: !417, line: 857, baseType: !100, size: 128, offset: 5376)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !416, file: !417, line: 858, baseType: !100, size: 128, offset: 5504)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !416, file: !417, line: 859, baseType: !415, size: 64, offset: 5632)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !416, file: !417, line: 867, baseType: !100, size: 128, offset: 5696)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !416, file: !417, line: 868, baseType: !100, size: 128, offset: 5824)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !416, file: !417, line: 871, baseType: !682, size: 64, offset: 5952)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !684, line: 59, size: 768, elements: !685)
!684 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!685 = !{!686, !687, !688, !689, !700, !701, !708, !717}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !683, file: !684, line: 61, baseType: !431, size: 32)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !683, file: !684, line: 62, baseType: !5, size: 32, offset: 32)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !683, file: !684, line: 63, baseType: !113, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !683, file: !684, line: 65, baseType: !690, size: 256, offset: 64)
!690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !691, size: 256, elements: !352)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !70, line: 182, size: 64, elements: !692)
!692 = !{!693}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !691, file: !70, line: 183, baseType: !694, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !70, line: 186, size: 128, elements: !696)
!696 = !{!697, !698}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !695, file: !70, line: 187, baseType: !694, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !695, file: !70, line: 187, baseType: !699, size: 64, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !683, file: !684, line: 66, baseType: !691, size: 64, offset: 320)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !683, file: !684, line: 68, baseType: !702, size: 128, offset: 384)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !703, line: 40, baseType: !704)
!703 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !703, line: 36, size: 128, elements: !705)
!705 = !{!706, !707}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !704, file: !703, line: 37, baseType: !113)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !704, file: !703, line: 38, baseType: !100, size: 128)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !683, file: !684, line: 69, baseType: !709, size: 128, align: 64, offset: 512)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !70, line: 216, size: 128, align: 64, elements: !710)
!710 = !{!711, !713}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !709, file: !70, line: 217, baseType: !712, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !709, file: !70, line: 218, baseType: !714, size: 64, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{null, !712}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !683, file: !684, line: 70, baseType: !718, size: 128, offset: 640)
!718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !719, size: 128, elements: !582)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !684, line: 54, size: 128, elements: !720)
!720 = !{!721, !722}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !719, file: !684, line: 55, baseType: !71, size: 32)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !719, file: !684, line: 56, baseType: !723, size: 64, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !684, line: 56, flags: DIFlagFwdDecl)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !416, file: !417, line: 872, baseType: !726, size: 512, offset: 6016)
!726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !695, size: 512, elements: !352)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !416, file: !417, line: 873, baseType: !100, size: 128, offset: 6528)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !416, file: !417, line: 874, baseType: !100, size: 128, offset: 6656)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !416, file: !417, line: 876, baseType: !730, size: 64, offset: 6784)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !732, line: 26, size: 192, elements: !733)
!732 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!733 = !{!734, !735}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !731, file: !732, line: 27, baseType: !5, size: 32)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !731, file: !732, line: 28, baseType: !736, size: 128, offset: 64)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !737, line: 43, size: 128, elements: !738)
!737 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!738 = !{!739, !740}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !736, file: !737, line: 44, baseType: !318)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !736, file: !737, line: 45, baseType: !100, size: 128)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !416, file: !417, line: 879, baseType: !742, size: 64, offset: 6848)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !416, file: !417, line: 882, baseType: !742, size: 64, offset: 6912)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !416, file: !417, line: 884, baseType: !271, size: 64, offset: 6976)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !416, file: !417, line: 885, baseType: !271, size: 64, offset: 7040)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !416, file: !417, line: 890, baseType: !271, size: 64, offset: 7104)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !416, file: !417, line: 891, baseType: !748, size: 128, offset: 7168)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !417, line: 242, size: 128, elements: !749)
!749 = !{!750, !751, !752}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !748, file: !417, line: 244, baseType: !271, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !748, file: !417, line: 245, baseType: !271, size: 64, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !748, file: !417, line: 246, baseType: !318, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !416, file: !417, line: 900, baseType: !73, size: 64, offset: 7296)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !416, file: !417, line: 901, baseType: !73, size: 64, offset: 7360)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !416, file: !417, line: 904, baseType: !271, size: 64, offset: 7424)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !416, file: !417, line: 907, baseType: !271, size: 64, offset: 7488)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !416, file: !417, line: 910, baseType: !73, size: 64, offset: 7552)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !416, file: !417, line: 911, baseType: !73, size: 64, offset: 7616)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !416, file: !417, line: 914, baseType: !760, size: 640, offset: 7680)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !761, line: 123, size: 640, elements: !762)
!761 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!762 = !{!763, !769, !770}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !760, file: !761, line: 124, baseType: !764, size: 576)
!764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !765, size: 576, elements: !155)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !761, line: 108, size: 192, elements: !766)
!766 = !{!767, !768}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !765, file: !761, line: 109, baseType: !271, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !765, file: !761, line: 110, baseType: !549, size: 128, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !760, file: !761, line: 125, baseType: !5, size: 32, offset: 576)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !760, file: !761, line: 126, baseType: !5, size: 32, offset: 608)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !416, file: !417, line: 917, baseType: !772, size: 192, offset: 8320)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !761, line: 134, size: 192, elements: !773)
!773 = !{!774, !775}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !772, file: !761, line: 135, baseType: !709, size: 128, align: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !772, file: !761, line: 136, baseType: !5, size: 32, offset: 128)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !416, file: !417, line: 923, baseType: !777, size: 64, offset: 8512)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !779)
!779 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !417, line: 923, flags: DIFlagFwdDecl)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !416, file: !417, line: 926, baseType: !777, size: 64, offset: 8576)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !416, file: !417, line: 929, baseType: !777, size: 64, offset: 8640)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !416, file: !417, line: 933, baseType: !783, size: 64, offset: 8704)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !417, line: 933, flags: DIFlagFwdDecl)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !416, file: !417, line: 943, baseType: !786, size: 128, offset: 8768)
!786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 128, elements: !787)
!787 = !{!788}
!788 = !DISubrange(count: 16)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !416, file: !417, line: 945, baseType: !790, size: 64, offset: 8896)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !417, line: 49, flags: DIFlagFwdDecl)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !416, file: !417, line: 956, baseType: !793, size: 64, offset: 8960)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !417, line: 45, flags: DIFlagFwdDecl)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !416, file: !417, line: 959, baseType: !796, size: 64, offset: 9024)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !417, line: 959, flags: DIFlagFwdDecl)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !416, file: !417, line: 962, baseType: !799, size: 64, offset: 9088)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !417, line: 66, flags: DIFlagFwdDecl)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !416, file: !417, line: 966, baseType: !802, size: 64, offset: 9152)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !417, line: 50, flags: DIFlagFwdDecl)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !416, file: !417, line: 969, baseType: !805, size: 64, offset: 9216)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !761, line: 223, flags: DIFlagFwdDecl)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !416, file: !417, line: 970, baseType: !808, size: 64, offset: 9280)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !417, line: 62, flags: DIFlagFwdDecl)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !416, file: !417, line: 971, baseType: !811, size: 64, offset: 9344)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !812, line: 25, baseType: !813)
!812 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !812, line: 23, size: 64, elements: !814)
!814 = !{!815}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !813, file: !812, line: 24, baseType: !581, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !416, file: !417, line: 972, baseType: !811, size: 64, offset: 9408)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !416, file: !417, line: 974, baseType: !811, size: 64, offset: 9472)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !416, file: !417, line: 975, baseType: !819, size: 192, offset: 9536)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !820, line: 30, size: 192, elements: !821)
!820 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!821 = !{!822, !823}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !819, file: !820, line: 31, baseType: !100, size: 128)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !819, file: !820, line: 32, baseType: !811, size: 64, offset: 128)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !416, file: !417, line: 976, baseType: !73, size: 64, offset: 9728)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !416, file: !417, line: 977, baseType: !200, size: 64, offset: 9792)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !416, file: !417, line: 978, baseType: !5, size: 32, offset: 9856)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !416, file: !417, line: 980, baseType: !712, size: 64, offset: 9920)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !416, file: !417, line: 989, baseType: !829, size: 128, offset: 9984)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !830, line: 35, size: 128, elements: !831)
!830 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!831 = !{!832, !833, !834}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !829, file: !830, line: 36, baseType: !71, size: 32)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !829, file: !830, line: 37, baseType: !293, size: 32, offset: 32)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !829, file: !830, line: 38, baseType: !835, size: 64, offset: 64)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !830, line: 23, flags: DIFlagFwdDecl)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !416, file: !417, line: 992, baseType: !271, size: 64, offset: 10112)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !416, file: !417, line: 993, baseType: !271, size: 64, offset: 10176)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !416, file: !417, line: 996, baseType: !113, offset: 10240)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !416, file: !417, line: 999, baseType: !318, offset: 10240)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !416, file: !417, line: 1001, baseType: !842, size: 64, offset: 10240)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !417, line: 636, size: 64, elements: !843)
!843 = !{!844}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !842, file: !417, line: 637, baseType: !845, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !416, file: !417, line: 1005, baseType: !552, size: 128, offset: 10304)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !416, file: !417, line: 1007, baseType: !415, size: 64, offset: 10432)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !416, file: !417, line: 1009, baseType: !849, size: 64, offset: 10496)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !417, line: 1009, flags: DIFlagFwdDecl)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !416, file: !417, line: 1043, baseType: !74, size: 64, offset: 10560)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !416, file: !417, line: 1046, baseType: !853, size: 64, offset: 10624)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !417, line: 41, flags: DIFlagFwdDecl)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !416, file: !417, line: 1050, baseType: !856, size: 64, offset: 10688)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !417, line: 42, flags: DIFlagFwdDecl)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !416, file: !417, line: 1054, baseType: !859, size: 64, offset: 10752)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !417, line: 55, flags: DIFlagFwdDecl)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !416, file: !417, line: 1056, baseType: !862, size: 64, offset: 10816)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !417, line: 40, flags: DIFlagFwdDecl)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !416, file: !417, line: 1058, baseType: !865, size: 64, offset: 10880)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !417, line: 47, flags: DIFlagFwdDecl)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !416, file: !417, line: 1061, baseType: !868, size: 64, offset: 10944)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !417, line: 43, flags: DIFlagFwdDecl)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !416, file: !417, line: 1064, baseType: !73, size: 64, offset: 11008)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !416, file: !417, line: 1065, baseType: !872, size: 64, offset: 11072)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !820, line: 14, baseType: !874)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !820, line: 12, size: 384, elements: !875)
!875 = !{!876}
!876 = !DIDerivedType(tag: DW_TAG_member, scope: !874, file: !820, line: 13, baseType: !877, size: 384)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !874, file: !820, line: 13, size: 384, elements: !878)
!878 = !{!879, !880, !881, !882}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !877, file: !820, line: 13, baseType: !71, size: 32)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !877, file: !820, line: 13, baseType: !71, size: 32, offset: 32)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !877, file: !820, line: 13, baseType: !71, size: 32, offset: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !877, file: !820, line: 13, baseType: !883, size: 256, offset: 128)
!883 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !884, line: 32, size: 256, elements: !885)
!884 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!885 = !{!886, !892, !905, !911, !920, !940, !945}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !883, file: !884, line: 37, baseType: !887, size: 64)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !883, file: !884, line: 34, size: 64, elements: !888)
!888 = !{!889, !890}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !887, file: !884, line: 35, baseType: !671, size: 32)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !887, file: !884, line: 36, baseType: !891, size: 32, offset: 32)
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !187, line: 49, baseType: !5)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !883, file: !884, line: 45, baseType: !893, size: 192)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !883, file: !884, line: 40, size: 192, elements: !894)
!894 = !{!895, !897, !898, !904}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !893, file: !884, line: 41, baseType: !896, size: 32)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !187, line: 95, baseType: !71)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !893, file: !884, line: 42, baseType: !71, size: 32, offset: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !893, file: !884, line: 43, baseType: !899, size: 64, offset: 64)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !884, line: 11, baseType: !900)
!900 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !884, line: 8, size: 64, elements: !901)
!901 = !{!902, !903}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !900, file: !884, line: 9, baseType: !71, size: 32)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !900, file: !884, line: 10, baseType: !74, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !893, file: !884, line: 44, baseType: !71, size: 32, offset: 128)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !883, file: !884, line: 52, baseType: !906, size: 128)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !883, file: !884, line: 48, size: 128, elements: !907)
!907 = !{!908, !909, !910}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !906, file: !884, line: 49, baseType: !671, size: 32)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !906, file: !884, line: 50, baseType: !891, size: 32, offset: 32)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !906, file: !884, line: 51, baseType: !899, size: 64, offset: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !883, file: !884, line: 61, baseType: !912, size: 256)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !883, file: !884, line: 55, size: 256, elements: !913)
!913 = !{!914, !915, !916, !917, !919}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !912, file: !884, line: 56, baseType: !671, size: 32)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !912, file: !884, line: 57, baseType: !891, size: 32, offset: 32)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !912, file: !884, line: 58, baseType: !71, size: 32, offset: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !912, file: !884, line: 59, baseType: !918, size: 64, offset: 128)
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !187, line: 94, baseType: !188)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !912, file: !884, line: 60, baseType: !918, size: 64, offset: 192)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !883, file: !884, line: 95, baseType: !921, size: 256)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !883, file: !884, line: 64, size: 256, elements: !922)
!922 = !{!923, !924}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !921, file: !884, line: 65, baseType: !74, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, scope: !921, file: !884, line: 77, baseType: !925, size: 192, offset: 64)
!925 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !921, file: !884, line: 77, size: 192, elements: !926)
!926 = !{!927, !928, !935}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !925, file: !884, line: 82, baseType: !404, size: 16)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !925, file: !884, line: 88, baseType: !929, size: 192)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !925, file: !884, line: 84, size: 192, elements: !930)
!930 = !{!931, !933, !934}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !929, file: !884, line: 85, baseType: !932, size: 64)
!932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 64, elements: !531)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !929, file: !884, line: 86, baseType: !74, size: 64, offset: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !929, file: !884, line: 87, baseType: !74, size: 64, offset: 128)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !925, file: !884, line: 93, baseType: !936, size: 96)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !925, file: !884, line: 90, size: 96, elements: !937)
!937 = !{!938, !939}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !936, file: !884, line: 91, baseType: !932, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !936, file: !884, line: 92, baseType: !426, size: 32, offset: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !883, file: !884, line: 101, baseType: !941, size: 128)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !883, file: !884, line: 98, size: 128, elements: !942)
!942 = !{!943, !944}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !941, file: !884, line: 99, baseType: !72, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !941, file: !884, line: 100, baseType: !71, size: 32, offset: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !883, file: !884, line: 108, baseType: !946, size: 128)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !883, file: !884, line: 104, size: 128, elements: !947)
!947 = !{!948, !949, !950}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !946, file: !884, line: 105, baseType: !74, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !946, file: !884, line: 106, baseType: !71, size: 32, offset: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !946, file: !884, line: 107, baseType: !5, size: 32, offset: 96)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !416, file: !417, line: 1067, baseType: !952, offset: 11136)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !953, line: 12, elements: !127)
!953 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!954 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !416, file: !417, line: 1099, baseType: !955, size: 64, offset: 11136)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !417, line: 56, flags: DIFlagFwdDecl)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !416, file: !417, line: 1103, baseType: !100, size: 128, offset: 11200)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !416, file: !417, line: 1104, baseType: !959, size: 64, offset: 11328)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !417, line: 46, flags: DIFlagFwdDecl)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !416, file: !417, line: 1105, baseType: !370, size: 192, offset: 11392)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !416, file: !417, line: 1106, baseType: !5, size: 32, offset: 11584)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !416, file: !417, line: 1109, baseType: !964, size: 128, offset: 11648)
!964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !965, size: 128, elements: !967)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !417, line: 51, flags: DIFlagFwdDecl)
!967 = !{!968}
!968 = !DISubrange(count: 2)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !416, file: !417, line: 1110, baseType: !370, size: 192, offset: 11776)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !416, file: !417, line: 1111, baseType: !100, size: 128, offset: 11968)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !416, file: !417, line: 1173, baseType: !972, size: 64, offset: 12096)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !974, line: 62, size: 256, align: 256, elements: !975)
!974 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!975 = !{!976, !977, !978, !983}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !973, file: !974, line: 75, baseType: !426, size: 32)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !973, file: !974, line: 90, baseType: !426, size: 32, offset: 32)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !973, file: !974, line: 124, baseType: !979, size: 64, offset: 64)
!979 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !973, file: !974, line: 109, size: 64, elements: !980)
!980 = !{!981, !982}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !979, file: !974, line: 110, baseType: !273, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !979, file: !974, line: 112, baseType: !273, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !973, file: !974, line: 144, baseType: !426, size: 32, offset: 128)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !416, file: !417, line: 1174, baseType: !425, size: 32, offset: 12160)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !416, file: !417, line: 1179, baseType: !73, size: 64, offset: 12224)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !416, file: !417, line: 1182, baseType: !987, size: 128, offset: 12288)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !348, line: 76, size: 128, elements: !988)
!988 = !{!989, !994, !997}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !987, file: !348, line: 85, baseType: !990, size: 64)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !991, line: 7, size: 64, elements: !992)
!991 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!992 = !{!993}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !990, file: !991, line: 12, baseType: !578, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !987, file: !348, line: 88, baseType: !995, size: 8, offset: 64)
!995 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !70, line: 30, baseType: !996)
!996 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !987, file: !348, line: 95, baseType: !995, size: 8, offset: 72)
!998 = !DIDerivedType(tag: DW_TAG_member, scope: !416, file: !417, line: 1184, baseType: !999, size: 128, offset: 12416)
!999 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !416, file: !417, line: 1184, size: 128, elements: !1000)
!1000 = !{!1001, !1002}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !999, file: !417, line: 1185, baseType: !431, size: 32)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !999, file: !417, line: 1186, baseType: !709, size: 128, align: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !416, file: !417, line: 1190, baseType: !1004, size: 64, offset: 12544)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !417, line: 53, flags: DIFlagFwdDecl)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !416, file: !417, line: 1192, baseType: !1007, size: 128, offset: 12608)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !348, line: 64, size: 128, elements: !1008)
!1008 = !{!1009, !1102, !1103}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1007, file: !348, line: 65, baseType: !1010, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !243, line: 68, size: 512, align: 128, elements: !1012)
!1012 = !{!1013, !1014, !1094, !1101}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1011, file: !243, line: 69, baseType: !73, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, scope: !1011, file: !243, line: 77, baseType: !1015, size: 320, offset: 64)
!1015 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1011, file: !243, line: 77, size: 320, elements: !1016)
!1016 = !{!1017, !1026, !1031, !1059, !1067, !1073, !1086, !1093}
!1017 = !DIDerivedType(tag: DW_TAG_member, scope: !1015, file: !243, line: 78, baseType: !1018, size: 320)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1015, file: !243, line: 78, size: 320, elements: !1019)
!1019 = !{!1020, !1021, !1024, !1025}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1018, file: !243, line: 84, baseType: !100, size: 128)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1018, file: !243, line: 86, baseType: !1022, size: 64, offset: 128)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !243, line: 26, flags: DIFlagFwdDecl)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1018, file: !243, line: 87, baseType: !73, size: 64, offset: 192)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1018, file: !243, line: 94, baseType: !73, size: 64, offset: 256)
!1026 = !DIDerivedType(tag: DW_TAG_member, scope: !1015, file: !243, line: 96, baseType: !1027, size: 64)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1015, file: !243, line: 96, size: 64, elements: !1028)
!1028 = !{!1029}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1027, file: !243, line: 101, baseType: !1030, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !70, line: 143, baseType: !271)
!1031 = !DIDerivedType(tag: DW_TAG_member, scope: !1015, file: !243, line: 103, baseType: !1032, size: 320)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1015, file: !243, line: 103, size: 320, elements: !1033)
!1033 = !{!1034, !1044, !1047, !1048}
!1034 = !DIDerivedType(tag: DW_TAG_member, scope: !1032, file: !243, line: 104, baseType: !1035, size: 128)
!1035 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1032, file: !243, line: 104, size: 128, elements: !1036)
!1036 = !{!1037, !1038}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1035, file: !243, line: 105, baseType: !100, size: 128)
!1038 = !DIDerivedType(tag: DW_TAG_member, scope: !1035, file: !243, line: 106, baseType: !1039, size: 128)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1035, file: !243, line: 106, size: 128, elements: !1040)
!1040 = !{!1041, !1042, !1043}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1039, file: !243, line: 107, baseType: !1010, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1039, file: !243, line: 109, baseType: !71, size: 32, offset: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1039, file: !243, line: 110, baseType: !71, size: 32, offset: 96)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1032, file: !243, line: 117, baseType: !1045, size: 64, offset: 128)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !243, line: 117, flags: DIFlagFwdDecl)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1032, file: !243, line: 119, baseType: !74, size: 64, offset: 192)
!1048 = !DIDerivedType(tag: DW_TAG_member, scope: !1032, file: !243, line: 120, baseType: !1049, size: 64, offset: 256)
!1049 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1032, file: !243, line: 120, size: 64, elements: !1050)
!1050 = !{!1051, !1052, !1053}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1049, file: !243, line: 121, baseType: !74, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1049, file: !243, line: 122, baseType: !73, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, scope: !1049, file: !243, line: 123, baseType: !1054, size: 32)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1049, file: !243, line: 123, size: 32, elements: !1055)
!1055 = !{!1056, !1057, !1058}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1054, file: !243, line: 124, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1054, file: !243, line: 125, baseType: !5, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1054, file: !243, line: 126, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1059 = !DIDerivedType(tag: DW_TAG_member, scope: !1015, file: !243, line: 130, baseType: !1060, size: 192)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1015, file: !243, line: 130, size: 192, elements: !1061)
!1061 = !{!1062, !1063, !1064, !1065, !1066}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1060, file: !243, line: 131, baseType: !73, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1060, file: !243, line: 134, baseType: !564, size: 8, offset: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1060, file: !243, line: 135, baseType: !564, size: 8, offset: 72)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1060, file: !243, line: 136, baseType: !293, size: 32, offset: 96)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1060, file: !243, line: 137, baseType: !5, size: 32, offset: 128)
!1067 = !DIDerivedType(tag: DW_TAG_member, scope: !1015, file: !243, line: 139, baseType: !1068, size: 256)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1015, file: !243, line: 139, size: 256, elements: !1069)
!1069 = !{!1070, !1071, !1072}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1068, file: !243, line: 140, baseType: !73, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1068, file: !243, line: 141, baseType: !293, size: 32, offset: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1068, file: !243, line: 143, baseType: !100, size: 128, offset: 128)
!1073 = !DIDerivedType(tag: DW_TAG_member, scope: !1015, file: !243, line: 145, baseType: !1074, size: 256)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1015, file: !243, line: 145, size: 256, elements: !1075)
!1075 = !{!1076, !1077, !1079, !1080, !1085}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1074, file: !243, line: 146, baseType: !73, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1074, file: !243, line: 147, baseType: !1078, size: 64, offset: 64)
!1078 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !232, line: 509, baseType: !1010)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1074, file: !243, line: 148, baseType: !73, size: 64, offset: 128)
!1080 = !DIDerivedType(tag: DW_TAG_member, scope: !1074, file: !243, line: 149, baseType: !1081, size: 64, offset: 192)
!1081 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1074, file: !243, line: 149, size: 64, elements: !1082)
!1082 = !{!1083, !1084}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1081, file: !243, line: 150, baseType: !259, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1081, file: !243, line: 151, baseType: !293, size: 32)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1074, file: !243, line: 156, baseType: !113, offset: 256)
!1086 = !DIDerivedType(tag: DW_TAG_member, scope: !1015, file: !243, line: 159, baseType: !1087, size: 128)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1015, file: !243, line: 159, size: 128, elements: !1088)
!1088 = !{!1089, !1092}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1087, file: !243, line: 161, baseType: !1090, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !243, line: 161, flags: DIFlagFwdDecl)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1087, file: !243, line: 162, baseType: !74, size: 64, offset: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1015, file: !243, line: 176, baseType: !709, size: 128, align: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, scope: !1011, file: !243, line: 179, baseType: !1095, size: 32, offset: 384)
!1095 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1011, file: !243, line: 179, size: 32, elements: !1096)
!1096 = !{!1097, !1098, !1099, !1100}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1095, file: !243, line: 184, baseType: !293, size: 32)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1095, file: !243, line: 192, baseType: !5, size: 32)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1095, file: !243, line: 194, baseType: !5, size: 32)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1095, file: !243, line: 195, baseType: !71, size: 32)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1011, file: !243, line: 199, baseType: !293, size: 32, offset: 416)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1007, file: !348, line: 67, baseType: !426, size: 32, offset: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1007, file: !348, line: 68, baseType: !426, size: 32, offset: 96)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !416, file: !417, line: 1206, baseType: !71, size: 32, offset: 12736)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !416, file: !417, line: 1207, baseType: !71, size: 32, offset: 12768)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !416, file: !417, line: 1209, baseType: !73, size: 64, offset: 12800)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !416, file: !417, line: 1219, baseType: !271, size: 64, offset: 12864)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !416, file: !417, line: 1220, baseType: !271, size: 64, offset: 12928)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !416, file: !417, line: 1317, baseType: !71, size: 32, offset: 12992)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !416, file: !417, line: 1319, baseType: !415, size: 64, offset: 13056)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !416, file: !417, line: 1322, baseType: !1112, size: 64, offset: 13120)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !417, line: 1322, flags: DIFlagFwdDecl)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !416, file: !417, line: 1326, baseType: !431, size: 32, offset: 13184)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !416, file: !417, line: 1342, baseType: !74, size: 64, offset: 13248)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !416, file: !417, line: 1343, baseType: !273, size: 64, offset: 13312)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !416, file: !417, line: 1344, baseType: !271, size: 64, offset: 13376)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !416, file: !417, line: 1345, baseType: !273, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !416, file: !417, line: 1346, baseType: !273, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !416, file: !417, line: 1347, baseType: !273, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !416, file: !417, line: 1348, baseType: !709, size: 128, align: 64, offset: 13504)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !416, file: !417, line: 1358, baseType: !1123, size: 34816, offset: 13824)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1124, line: 485, size: 34816, elements: !1125)
!1124 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1125 = !{!1126, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1155, !1156, !1157, !1158, !1159, !1160, !1163, !1164, !1165}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1123, file: !1124, line: 487, baseType: !1127, size: 192)
!1127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1128, size: 192, elements: !155)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1129, line: 16, size: 64, elements: !1130)
!1129 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1130 = !{!1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1128, file: !1129, line: 17, baseType: !399, size: 16)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1128, file: !1129, line: 18, baseType: !399, size: 16, offset: 16)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1128, file: !1129, line: 19, baseType: !399, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1128, file: !1129, line: 19, baseType: !399, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1128, file: !1129, line: 19, baseType: !399, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1128, file: !1129, line: 19, baseType: !399, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1128, file: !1129, line: 19, baseType: !399, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1128, file: !1129, line: 20, baseType: !399, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1128, file: !1129, line: 20, baseType: !399, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1128, file: !1129, line: 20, baseType: !399, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1128, file: !1129, line: 20, baseType: !399, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1128, file: !1129, line: 20, baseType: !399, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1128, file: !1129, line: 20, baseType: !399, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1123, file: !1124, line: 491, baseType: !73, size: 64, offset: 192)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1123, file: !1124, line: 495, baseType: !195, size: 16, offset: 256)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1123, file: !1124, line: 496, baseType: !195, size: 16, offset: 272)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1123, file: !1124, line: 497, baseType: !195, size: 16, offset: 288)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1123, file: !1124, line: 498, baseType: !195, size: 16, offset: 304)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1123, file: !1124, line: 502, baseType: !73, size: 64, offset: 320)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1123, file: !1124, line: 503, baseType: !73, size: 64, offset: 384)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1123, file: !1124, line: 514, baseType: !1152, size: 256, offset: 448)
!1152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1153, size: 256, elements: !352)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1124, line: 483, flags: DIFlagFwdDecl)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1123, file: !1124, line: 516, baseType: !73, size: 64, offset: 704)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1123, file: !1124, line: 518, baseType: !73, size: 64, offset: 768)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1123, file: !1124, line: 520, baseType: !73, size: 64, offset: 832)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1123, file: !1124, line: 521, baseType: !73, size: 64, offset: 896)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1123, file: !1124, line: 522, baseType: !73, size: 64, offset: 960)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1123, file: !1124, line: 528, baseType: !1161, size: 64, offset: 1024)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1124, line: 10, flags: DIFlagFwdDecl)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1123, file: !1124, line: 535, baseType: !73, size: 64, offset: 1088)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1123, file: !1124, line: 537, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1123, file: !1124, line: 540, baseType: !1166, size: 33280, offset: 1536)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1167, line: 317, size: 33280, elements: !1168)
!1167 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1168 = !{!1169, !1170, !1171}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1166, file: !1167, line: 330, baseType: !5, size: 32)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1166, file: !1167, line: 337, baseType: !73, size: 64, offset: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1166, file: !1167, line: 348, baseType: !1172, size: 32768, offset: 512)
!1172 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1167, line: 304, size: 32768, elements: !1173)
!1173 = !{!1174, !1189, !1228, !1278, !1295}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1172, file: !1167, line: 305, baseType: !1175, size: 896)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1167, line: 12, size: 896, elements: !1176)
!1176 = !{!1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1188}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1175, file: !1167, line: 13, baseType: !425, size: 32)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1175, file: !1167, line: 14, baseType: !425, size: 32, offset: 32)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1175, file: !1167, line: 15, baseType: !425, size: 32, offset: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1175, file: !1167, line: 16, baseType: !425, size: 32, offset: 96)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1175, file: !1167, line: 17, baseType: !425, size: 32, offset: 128)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1175, file: !1167, line: 18, baseType: !425, size: 32, offset: 160)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1175, file: !1167, line: 19, baseType: !425, size: 32, offset: 192)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1175, file: !1167, line: 22, baseType: !1185, size: 640, offset: 224)
!1185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 640, elements: !1186)
!1186 = !{!1187}
!1187 = !DISubrange(count: 20)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1175, file: !1167, line: 25, baseType: !425, size: 32, offset: 864)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1172, file: !1167, line: 306, baseType: !1190, size: 4096, align: 128)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1167, line: 34, size: 4096, align: 128, elements: !1191)
!1191 = !{!1192, !1193, !1194, !1195, !1196, !1211, !1212, !1213, !1217, !1219, !1223}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1190, file: !1167, line: 35, baseType: !399, size: 16)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1190, file: !1167, line: 36, baseType: !399, size: 16, offset: 16)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1190, file: !1167, line: 37, baseType: !399, size: 16, offset: 32)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1190, file: !1167, line: 38, baseType: !399, size: 16, offset: 48)
!1196 = !DIDerivedType(tag: DW_TAG_member, scope: !1190, file: !1167, line: 39, baseType: !1197, size: 128, offset: 64)
!1197 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1190, file: !1167, line: 39, size: 128, elements: !1198)
!1198 = !{!1199, !1204}
!1199 = !DIDerivedType(tag: DW_TAG_member, scope: !1197, file: !1167, line: 40, baseType: !1200, size: 128)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1197, file: !1167, line: 40, size: 128, elements: !1201)
!1201 = !{!1202, !1203}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1200, file: !1167, line: 41, baseType: !271, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1200, file: !1167, line: 42, baseType: !271, size: 64, offset: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, scope: !1197, file: !1167, line: 44, baseType: !1205, size: 128)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1197, file: !1167, line: 44, size: 128, elements: !1206)
!1206 = !{!1207, !1208, !1209, !1210}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1205, file: !1167, line: 45, baseType: !425, size: 32)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1205, file: !1167, line: 46, baseType: !425, size: 32, offset: 32)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1205, file: !1167, line: 47, baseType: !425, size: 32, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1205, file: !1167, line: 48, baseType: !425, size: 32, offset: 96)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1190, file: !1167, line: 51, baseType: !425, size: 32, offset: 192)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1190, file: !1167, line: 52, baseType: !425, size: 32, offset: 224)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1190, file: !1167, line: 55, baseType: !1214, size: 1024, offset: 256)
!1214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 1024, elements: !1215)
!1215 = !{!1216}
!1216 = !DISubrange(count: 32)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1190, file: !1167, line: 58, baseType: !1218, size: 2048, offset: 1280)
!1218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 2048, elements: !159)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1190, file: !1167, line: 60, baseType: !1220, size: 384, offset: 3328)
!1220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 384, elements: !1221)
!1221 = !{!1222}
!1222 = !DISubrange(count: 12)
!1223 = !DIDerivedType(tag: DW_TAG_member, scope: !1190, file: !1167, line: 62, baseType: !1224, size: 384, offset: 3712)
!1224 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1190, file: !1167, line: 62, size: 384, elements: !1225)
!1225 = !{!1226, !1227}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1224, file: !1167, line: 63, baseType: !1220, size: 384)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1224, file: !1167, line: 64, baseType: !1220, size: 384)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1172, file: !1167, line: 307, baseType: !1229, size: 1088)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1167, line: 79, size: 1088, elements: !1230)
!1230 = !{!1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1277}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1229, file: !1167, line: 80, baseType: !425, size: 32)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1229, file: !1167, line: 81, baseType: !425, size: 32, offset: 32)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1229, file: !1167, line: 82, baseType: !425, size: 32, offset: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1229, file: !1167, line: 83, baseType: !425, size: 32, offset: 96)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1229, file: !1167, line: 84, baseType: !425, size: 32, offset: 128)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1229, file: !1167, line: 85, baseType: !425, size: 32, offset: 160)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1229, file: !1167, line: 86, baseType: !425, size: 32, offset: 192)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1229, file: !1167, line: 88, baseType: !1185, size: 640, offset: 224)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1229, file: !1167, line: 89, baseType: !562, size: 8, offset: 864)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1229, file: !1167, line: 90, baseType: !562, size: 8, offset: 872)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1229, file: !1167, line: 91, baseType: !562, size: 8, offset: 880)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1229, file: !1167, line: 92, baseType: !562, size: 8, offset: 888)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1229, file: !1167, line: 93, baseType: !562, size: 8, offset: 896)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1229, file: !1167, line: 94, baseType: !562, size: 8, offset: 904)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1229, file: !1167, line: 95, baseType: !1246, size: 64, offset: 960)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1248, line: 11, size: 128, elements: !1249)
!1248 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1249 = !{!1250, !1251}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1247, file: !1248, line: 12, baseType: !72, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1247, file: !1248, line: 13, baseType: !1252, size: 64, offset: 64)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1254, line: 56, size: 1344, elements: !1255)
!1254 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1255 = !{!1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1253, file: !1254, line: 61, baseType: !73, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1253, file: !1254, line: 62, baseType: !73, size: 64, offset: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1253, file: !1254, line: 63, baseType: !73, size: 64, offset: 128)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1253, file: !1254, line: 64, baseType: !73, size: 64, offset: 192)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1253, file: !1254, line: 65, baseType: !73, size: 64, offset: 256)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1253, file: !1254, line: 66, baseType: !73, size: 64, offset: 320)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1253, file: !1254, line: 68, baseType: !73, size: 64, offset: 384)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1253, file: !1254, line: 69, baseType: !73, size: 64, offset: 448)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1253, file: !1254, line: 70, baseType: !73, size: 64, offset: 512)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1253, file: !1254, line: 71, baseType: !73, size: 64, offset: 576)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1253, file: !1254, line: 72, baseType: !73, size: 64, offset: 640)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1253, file: !1254, line: 73, baseType: !73, size: 64, offset: 704)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1253, file: !1254, line: 74, baseType: !73, size: 64, offset: 768)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1253, file: !1254, line: 75, baseType: !73, size: 64, offset: 832)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1253, file: !1254, line: 76, baseType: !73, size: 64, offset: 896)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1253, file: !1254, line: 81, baseType: !73, size: 64, offset: 960)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1253, file: !1254, line: 83, baseType: !73, size: 64, offset: 1024)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1253, file: !1254, line: 84, baseType: !73, size: 64, offset: 1088)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1253, file: !1254, line: 85, baseType: !73, size: 64, offset: 1152)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1253, file: !1254, line: 86, baseType: !73, size: 64, offset: 1216)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1253, file: !1254, line: 87, baseType: !73, size: 64, offset: 1280)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1229, file: !1167, line: 96, baseType: !425, size: 32, offset: 1024)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1172, file: !1167, line: 308, baseType: !1279, size: 4608, align: 512)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1167, line: 289, size: 4608, align: 512, elements: !1280)
!1280 = !{!1281, !1282, !1291}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1279, file: !1167, line: 290, baseType: !1190, size: 4096, align: 128)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1279, file: !1167, line: 291, baseType: !1283, size: 512, offset: 4096)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1167, line: 268, size: 512, elements: !1284)
!1284 = !{!1285, !1286, !1287}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1283, file: !1167, line: 269, baseType: !271, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1283, file: !1167, line: 270, baseType: !271, size: 64, offset: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1283, file: !1167, line: 271, baseType: !1288, size: 384, offset: 128)
!1288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 384, elements: !1289)
!1289 = !{!1290}
!1290 = !DISubrange(count: 6)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1279, file: !1167, line: 292, baseType: !1292, offset: 4608)
!1292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !562, elements: !1293)
!1293 = !{!1294}
!1294 = !DISubrange(count: 0)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1172, file: !1167, line: 309, baseType: !1296, size: 32768)
!1296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !562, size: 32768, elements: !1297)
!1297 = !{!1298}
!1298 = !DISubrange(count: 4096)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !412, file: !243, line: 378, baseType: !1300, size: 64, offset: 64)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !408, file: !243, line: 384, baseType: !731, size: 192, offset: 192)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !263, file: !243, line: 500, baseType: !113, offset: 6656)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !263, file: !243, line: 501, baseType: !1304, size: 64, offset: 6656)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !243, line: 387, flags: DIFlagFwdDecl)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !263, file: !243, line: 516, baseType: !1307, size: 64, offset: 6720)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1309, line: 18, flags: DIFlagFwdDecl)
!1309 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !263, file: !243, line: 519, baseType: !230, size: 64, offset: 6784)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !263, file: !243, line: 521, baseType: !1312, size: 64, offset: 6848)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !243, line: 521, flags: DIFlagFwdDecl)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !263, file: !243, line: 545, baseType: !293, size: 32, offset: 6912)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !263, file: !243, line: 548, baseType: !995, size: 8, offset: 6944)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !263, file: !243, line: 550, baseType: !1317, offset: 6952)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1318, line: 142, elements: !127)
!1318 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !263, file: !243, line: 554, baseType: !1320, size: 256, offset: 6976)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1321, line: 102, size: 256, elements: !1322)
!1321 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1322 = !{!1323, !1324, !1325}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1320, file: !1321, line: 103, baseType: !301, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1320, file: !1321, line: 104, baseType: !100, size: 128, offset: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1320, file: !1321, line: 105, baseType: !1326, size: 64, offset: 192)
!1326 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1321, line: 21, baseType: !1327)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{null, !1330}
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !263, file: !243, line: 557, baseType: !425, size: 32, offset: 7232)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !260, file: !243, line: 565, baseType: !1333, offset: 7296)
!1333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, elements: !1334)
!1334 = !{!1335}
!1335 = !DISubrange(count: -1)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !242, file: !243, line: 333, baseType: !1337, size: 64, offset: 576)
!1337 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !232, line: 284, baseType: !1338)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !232, line: 284, size: 64, elements: !1339)
!1339 = !{!1340}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1338, file: !232, line: 284, baseType: !1341, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !291, line: 19, baseType: !73)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !242, file: !243, line: 334, baseType: !73, size: 64, offset: 640)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !242, file: !243, line: 343, baseType: !1344, size: 256, offset: 704)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !242, file: !243, line: 340, size: 256, elements: !1345)
!1345 = !{!1346, !1347}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1344, file: !243, line: 341, baseType: !250, size: 192, align: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1344, file: !243, line: 342, baseType: !73, size: 64, offset: 192)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !242, file: !243, line: 351, baseType: !100, size: 128, offset: 960)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !242, file: !243, line: 353, baseType: !1350, size: 64, offset: 1088)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !243, line: 353, flags: DIFlagFwdDecl)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !242, file: !243, line: 356, baseType: !1353, size: 64, offset: 1152)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1355)
!1355 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !243, line: 356, flags: DIFlagFwdDecl)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !242, file: !243, line: 359, baseType: !73, size: 64, offset: 1216)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !242, file: !243, line: 361, baseType: !230, size: 64, offset: 1280)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !242, file: !243, line: 362, baseType: !74, size: 64, offset: 1344)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !242, file: !243, line: 365, baseType: !301, size: 64, offset: 1408)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !242, file: !243, line: 373, baseType: !1361, offset: 1472)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !243, line: 296, elements: !127)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !209, file: !179, line: 90, baseType: !204, size: 64, offset: 192)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !209, file: !179, line: 91, baseType: !1364, size: 64, offset: 256)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !169, file: !93, line: 143, baseType: !1366, size: 64, offset: 256)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{!1369, !106}
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1371)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !16, line: 39, size: 384, elements: !1372)
!1372 = !{!1373, !1374, !1378, !1382, !1390, !1394}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1371, file: !16, line: 40, baseType: !15, size: 32)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1371, file: !16, line: 41, baseType: !1375, size: 64, offset: 64)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{!995}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1371, file: !16, line: 42, baseType: !1379, size: 64, offset: 128)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!74}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1371, file: !16, line: 43, baseType: !1383, size: 64, offset: 192)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!1386, !1388}
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !16, line: 19, flags: DIFlagFwdDecl)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1371, file: !16, line: 44, baseType: !1391, size: 64, offset: 256)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!1386}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1371, file: !16, line: 45, baseType: !1395, size: 64, offset: 320)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{null, !74}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !169, file: !93, line: 144, baseType: !1399, size: 64, offset: 320)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!1386, !106}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !169, file: !93, line: 145, baseType: !1403, size: 64, offset: 384)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{null, !106, !1406, !1412}
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1309, line: 23, baseType: !1408)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1309, line: 21, size: 32, elements: !1409)
!1409 = !{!1410}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1408, file: !1309, line: 22, baseType: !1411, size: 32)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !70, line: 32, baseType: !891)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1309, line: 28, baseType: !1414)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1309, line: 26, size: 32, elements: !1415)
!1415 = !{!1416}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1414, file: !1309, line: 27, baseType: !1417, size: 32)
!1417 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !70, line: 33, baseType: !1418)
!1418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !187, line: 50, baseType: !5)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !92, file: !93, line: 70, baseType: !1420, size: 64, offset: 384)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1422, line: 123, size: 1024, elements: !1423)
!1422 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1423 = !{!1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1565, !1566, !1567, !1568, !1569}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1421, file: !1422, line: 124, baseType: !293, size: 32)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1421, file: !1422, line: 125, baseType: !293, size: 32, offset: 32)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1421, file: !1422, line: 135, baseType: !1420, size: 64, offset: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1421, file: !1422, line: 136, baseType: !96, size: 64, offset: 128)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1421, file: !1422, line: 138, baseType: !250, size: 192, align: 64, offset: 192)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1421, file: !1422, line: 140, baseType: !1386, size: 64, offset: 384)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1421, file: !1422, line: 141, baseType: !5, size: 32, offset: 448)
!1431 = !DIDerivedType(tag: DW_TAG_member, scope: !1421, file: !1422, line: 142, baseType: !1432, size: 256, offset: 512)
!1432 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1421, file: !1422, line: 142, size: 256, elements: !1433)
!1433 = !{!1434, !1488, !1492}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1432, file: !1422, line: 143, baseType: !1435, size: 192)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1422, line: 91, size: 192, elements: !1436)
!1436 = !{!1437, !1438, !1439}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1435, file: !1422, line: 92, baseType: !73, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1435, file: !1422, line: 94, baseType: !267, size: 64, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1435, file: !1422, line: 100, baseType: !1440, size: 64, offset: 128)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1422, line: 180, size: 704, elements: !1442)
!1442 = !{!1443, !1444, !1445, !1458, !1459, !1460, !1486, !1487}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1441, file: !1422, line: 182, baseType: !1420, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1441, file: !1422, line: 183, baseType: !5, size: 32, offset: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1441, file: !1422, line: 186, baseType: !1446, size: 192, offset: 128)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1447, line: 19, size: 192, elements: !1448)
!1447 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1448 = !{!1449, !1456, !1457}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1446, file: !1447, line: 20, baseType: !1450, size: 128)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1451, line: 292, size: 128, elements: !1452)
!1451 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1452 = !{!1453, !1454, !1455}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1450, file: !1451, line: 293, baseType: !113)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1450, file: !1451, line: 295, baseType: !69, size: 32)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1450, file: !1451, line: 296, baseType: !74, size: 64, offset: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1446, file: !1447, line: 21, baseType: !5, size: 32, offset: 128)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1446, file: !1447, line: 22, baseType: !5, size: 32, offset: 160)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1441, file: !1422, line: 187, baseType: !425, size: 32, offset: 320)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1441, file: !1422, line: 188, baseType: !425, size: 32, offset: 352)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1441, file: !1422, line: 189, baseType: !1461, size: 64, offset: 384)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1422, line: 168, size: 320, elements: !1463)
!1463 = !{!1464, !1470, !1474, !1478, !1482}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1462, file: !1422, line: 169, baseType: !1465, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!71, !1468, !1440}
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !232, line: 539, flags: DIFlagFwdDecl)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1462, file: !1422, line: 171, baseType: !1471, size: 64, offset: 64)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{!71, !1420, !96, !194}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1462, file: !1422, line: 173, baseType: !1475, size: 64, offset: 128)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!71, !1420}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1462, file: !1422, line: 174, baseType: !1479, size: 64, offset: 192)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{!71, !1420, !1420, !96}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1462, file: !1422, line: 176, baseType: !1483, size: 64, offset: 256)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!71, !1468, !1420, !1440}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1441, file: !1422, line: 192, baseType: !100, size: 128, offset: 448)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1441, file: !1422, line: 194, baseType: !702, size: 128, offset: 576)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1432, file: !1422, line: 144, baseType: !1489, size: 64)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1422, line: 103, size: 64, elements: !1490)
!1490 = !{!1491}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1489, file: !1422, line: 104, baseType: !1420, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1432, file: !1422, line: 145, baseType: !1493, size: 256)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1422, line: 107, size: 256, elements: !1494)
!1494 = !{!1495, !1560, !1563, !1564}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1493, file: !1422, line: 108, baseType: !1496, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1498)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1422, line: 217, size: 768, elements: !1499)
!1499 = !{!1500, !1520, !1524, !1528, !1533, !1537, !1541, !1545, !1546, !1547, !1548, !1556}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1498, file: !1422, line: 222, baseType: !1501, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!71, !1504}
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1422, line: 197, size: 1088, elements: !1506)
!1506 = !{!1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1505, file: !1422, line: 199, baseType: !1420, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1505, file: !1422, line: 200, baseType: !230, size: 64, offset: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1505, file: !1422, line: 201, baseType: !1468, size: 64, offset: 128)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1505, file: !1422, line: 202, baseType: !74, size: 64, offset: 192)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1505, file: !1422, line: 205, baseType: !370, size: 192, offset: 256)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1505, file: !1422, line: 206, baseType: !370, size: 192, offset: 448)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1505, file: !1422, line: 207, baseType: !71, size: 32, offset: 640)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1505, file: !1422, line: 208, baseType: !100, size: 128, offset: 704)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1505, file: !1422, line: 209, baseType: !154, size: 64, offset: 832)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1505, file: !1422, line: 211, baseType: !200, size: 64, offset: 896)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1505, file: !1422, line: 212, baseType: !995, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1505, file: !1422, line: 213, baseType: !995, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1505, file: !1422, line: 214, baseType: !1353, size: 64, offset: 1024)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1498, file: !1422, line: 223, baseType: !1521, size: 64, offset: 64)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{null, !1504}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1498, file: !1422, line: 236, baseType: !1525, size: 64, offset: 128)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{!71, !1468, !74}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1498, file: !1422, line: 238, baseType: !1529, size: 64, offset: 192)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!74, !1468, !1532}
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1498, file: !1422, line: 239, baseType: !1534, size: 64, offset: 256)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{!74, !1468, !74, !1532}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1498, file: !1422, line: 240, baseType: !1538, size: 64, offset: 320)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{null, !1468, !74}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1498, file: !1422, line: 242, baseType: !1542, size: 64, offset: 384)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{!185, !1504, !154, !200, !233}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1498, file: !1422, line: 252, baseType: !200, size: 64, offset: 448)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1498, file: !1422, line: 259, baseType: !995, size: 8, offset: 512)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1498, file: !1422, line: 260, baseType: !1542, size: 64, offset: 576)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1498, file: !1422, line: 263, baseType: !1549, size: 64, offset: 640)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{!1552, !1504, !1554}
!1552 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1553, line: 52, baseType: !5)
!1553 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1422, line: 27, flags: DIFlagFwdDecl)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1498, file: !1422, line: 266, baseType: !1557, size: 64, offset: 704)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!71, !1504, !241}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1493, file: !1422, line: 109, baseType: !1561, size: 64, offset: 64)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1422, line: 31, flags: DIFlagFwdDecl)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1493, file: !1422, line: 110, baseType: !233, size: 64, offset: 128)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1493, file: !1422, line: 111, baseType: !1420, size: 64, offset: 192)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1421, file: !1422, line: 148, baseType: !74, size: 64, offset: 768)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1421, file: !1422, line: 154, baseType: !271, size: 64, offset: 832)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1421, file: !1422, line: 156, baseType: !195, size: 16, offset: 896)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1421, file: !1422, line: 157, baseType: !194, size: 16, offset: 912)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1421, file: !1422, line: 158, baseType: !1570, size: 64, offset: 960)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1422, line: 32, flags: DIFlagFwdDecl)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !92, file: !93, line: 71, baseType: !1573, size: 32, offset: 448)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1574, line: 19, size: 32, elements: !1575)
!1574 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1575 = !{!1576}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1573, file: !1574, line: 20, baseType: !431, size: 32)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !92, file: !93, line: 75, baseType: !5, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !92, file: !93, line: 76, baseType: !5, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !92, file: !93, line: 77, baseType: !5, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !92, file: !93, line: 78, baseType: !5, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !92, file: !93, line: 79, baseType: !5, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !89, file: !28, line: 463, baseType: !88, size: 64, offset: 512)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !89, file: !28, line: 465, baseType: !1584, size: 64, offset: 576)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !28, line: 36, flags: DIFlagFwdDecl)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !89, file: !28, line: 467, baseType: !96, size: 64, offset: 640)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !89, file: !28, line: 468, baseType: !1588, size: 64, offset: 704)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1590)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !28, line: 87, size: 384, elements: !1591)
!1591 = !{!1592, !1593, !1594, !1598, !1603, !1607}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1590, file: !28, line: 88, baseType: !96, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1590, file: !28, line: 89, baseType: !206, size: 64, offset: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1590, file: !28, line: 90, baseType: !1595, size: 64, offset: 128)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{!71, !88, !149}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1590, file: !28, line: 91, baseType: !1599, size: 64, offset: 192)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{!154, !88, !1602, !1406, !1412}
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1590, file: !28, line: 93, baseType: !1604, size: 64, offset: 256)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{null, !88}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1590, file: !28, line: 95, baseType: !1608, size: 64, offset: 320)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1610)
!1610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !35, line: 278, size: 1472, elements: !1611)
!1611 = !{!1612, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1610, file: !35, line: 279, baseType: !1613, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{!71, !88}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1610, file: !35, line: 280, baseType: !1604, size: 64, offset: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1610, file: !35, line: 281, baseType: !1613, size: 64, offset: 128)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1610, file: !35, line: 282, baseType: !1613, size: 64, offset: 192)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1610, file: !35, line: 283, baseType: !1613, size: 64, offset: 256)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1610, file: !35, line: 284, baseType: !1613, size: 64, offset: 320)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1610, file: !35, line: 285, baseType: !1613, size: 64, offset: 384)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1610, file: !35, line: 286, baseType: !1613, size: 64, offset: 448)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1610, file: !35, line: 287, baseType: !1613, size: 64, offset: 512)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1610, file: !35, line: 288, baseType: !1613, size: 64, offset: 576)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1610, file: !35, line: 289, baseType: !1613, size: 64, offset: 640)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1610, file: !35, line: 290, baseType: !1613, size: 64, offset: 704)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1610, file: !35, line: 291, baseType: !1613, size: 64, offset: 768)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1610, file: !35, line: 292, baseType: !1613, size: 64, offset: 832)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1610, file: !35, line: 293, baseType: !1613, size: 64, offset: 896)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1610, file: !35, line: 294, baseType: !1613, size: 64, offset: 960)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1610, file: !35, line: 295, baseType: !1613, size: 64, offset: 1024)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1610, file: !35, line: 296, baseType: !1613, size: 64, offset: 1088)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1610, file: !35, line: 297, baseType: !1613, size: 64, offset: 1152)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1610, file: !35, line: 298, baseType: !1613, size: 64, offset: 1216)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1610, file: !35, line: 299, baseType: !1613, size: 64, offset: 1280)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1610, file: !35, line: 300, baseType: !1613, size: 64, offset: 1344)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1610, file: !35, line: 301, baseType: !1613, size: 64, offset: 1408)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !89, file: !28, line: 470, baseType: !1639, size: 64, offset: 768)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1641, line: 82, size: 1408, elements: !1642)
!1641 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1642 = !{!1643, !1644, !1645, !1646, !1647, !1648, !1649, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1728, !1731, !1734}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1640, file: !1641, line: 83, baseType: !96, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1640, file: !1641, line: 84, baseType: !96, size: 64, offset: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1640, file: !1641, line: 85, baseType: !88, size: 64, offset: 128)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1640, file: !1641, line: 86, baseType: !206, size: 64, offset: 192)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1640, file: !1641, line: 87, baseType: !206, size: 64, offset: 256)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1640, file: !1641, line: 88, baseType: !206, size: 64, offset: 320)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1640, file: !1641, line: 90, baseType: !1650, size: 64, offset: 384)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!71, !88, !1653}
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !22, line: 95, size: 1152, elements: !1655)
!1655 = !{!1656, !1657, !1658, !1662, !1663, !1664, !1665, !1679, !1692, !1693, !1694, !1695, !1696, !1704, !1705, !1706, !1707, !1708, !1709}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1654, file: !22, line: 96, baseType: !96, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1654, file: !22, line: 97, baseType: !1639, size: 64, offset: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1654, file: !22, line: 99, baseType: !1659, size: 64, offset: 128)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1661, line: 76, flags: DIFlagFwdDecl)
!1661 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1654, file: !22, line: 100, baseType: !96, size: 64, offset: 192)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1654, file: !22, line: 102, baseType: !995, size: 8, offset: 256)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1654, file: !22, line: 103, baseType: !21, size: 32, offset: 288)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1654, file: !22, line: 105, baseType: !1666, size: 64, offset: 320)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1668)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1669, line: 262, size: 1600, elements: !1670)
!1669 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1670 = !{!1671, !1673, !1674, !1678}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1668, file: !1669, line: 263, baseType: !1672, size: 256)
!1672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 256, elements: !1215)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1668, file: !1669, line: 264, baseType: !1672, size: 256, offset: 256)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1668, file: !1669, line: 265, baseType: !1675, size: 1024, offset: 512)
!1675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 1024, elements: !1676)
!1676 = !{!1677}
!1677 = !DISubrange(count: 128)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1668, file: !1669, line: 266, baseType: !1386, size: 64, offset: 1536)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1654, file: !22, line: 106, baseType: !1680, size: 64, offset: 384)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1682)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1669, line: 210, size: 256, elements: !1683)
!1683 = !{!1684, !1688, !1690, !1691}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1682, file: !1669, line: 211, baseType: !1685, size: 72)
!1685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 72, elements: !1686)
!1686 = !{!1687}
!1687 = !DISubrange(count: 9)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1682, file: !1669, line: 212, baseType: !1689, size: 64, offset: 128)
!1689 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1669, line: 14, baseType: !73)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1682, file: !1669, line: 213, baseType: !426, size: 32, offset: 192)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1682, file: !1669, line: 214, baseType: !426, size: 32, offset: 224)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1654, file: !22, line: 108, baseType: !1613, size: 64, offset: 448)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1654, file: !22, line: 109, baseType: !1604, size: 64, offset: 512)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1654, file: !22, line: 110, baseType: !1613, size: 64, offset: 576)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1654, file: !22, line: 111, baseType: !1604, size: 64, offset: 640)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1654, file: !22, line: 112, baseType: !1697, size: 64, offset: 704)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!71, !88, !1700}
!1700 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !35, line: 52, baseType: !1701)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !35, line: 50, size: 32, elements: !1702)
!1702 = !{!1703}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1701, file: !35, line: 51, baseType: !71, size: 32)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1654, file: !22, line: 113, baseType: !1613, size: 64, offset: 768)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1654, file: !22, line: 114, baseType: !206, size: 64, offset: 832)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1654, file: !22, line: 115, baseType: !206, size: 64, offset: 896)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1654, file: !22, line: 117, baseType: !1608, size: 64, offset: 960)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1654, file: !22, line: 118, baseType: !1604, size: 64, offset: 1024)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1654, file: !22, line: 120, baseType: !1710, size: 64, offset: 1088)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !22, line: 120, flags: DIFlagFwdDecl)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1640, file: !1641, line: 91, baseType: !1595, size: 64, offset: 448)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1640, file: !1641, line: 92, baseType: !1613, size: 64, offset: 512)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1640, file: !1641, line: 93, baseType: !1604, size: 64, offset: 576)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1640, file: !1641, line: 94, baseType: !1613, size: 64, offset: 640)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1640, file: !1641, line: 95, baseType: !1604, size: 64, offset: 704)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1640, file: !1641, line: 97, baseType: !1613, size: 64, offset: 768)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1640, file: !1641, line: 98, baseType: !1613, size: 64, offset: 832)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1640, file: !1641, line: 100, baseType: !1697, size: 64, offset: 896)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1640, file: !1641, line: 101, baseType: !1613, size: 64, offset: 960)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1640, file: !1641, line: 103, baseType: !1613, size: 64, offset: 1024)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1640, file: !1641, line: 105, baseType: !1613, size: 64, offset: 1088)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1640, file: !1641, line: 107, baseType: !1608, size: 64, offset: 1152)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1640, file: !1641, line: 109, baseType: !1725, size: 64, offset: 1216)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1727)
!1727 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1641, line: 109, flags: DIFlagFwdDecl)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1640, file: !1641, line: 111, baseType: !1729, size: 64, offset: 1280)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1641, line: 111, flags: DIFlagFwdDecl)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1640, file: !1641, line: 112, baseType: !1732, offset: 1344)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1733, line: 187, elements: !127)
!1733 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1640, file: !1641, line: 114, baseType: !995, size: 8, offset: 1344)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !89, file: !28, line: 471, baseType: !1653, size: 64, offset: 832)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !89, file: !28, line: 473, baseType: !74, size: 64, offset: 896)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !89, file: !28, line: 475, baseType: !74, size: 64, offset: 960)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !89, file: !28, line: 480, baseType: !370, size: 192, offset: 1024)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !89, file: !28, line: 484, baseType: !1740, size: 576, offset: 1216)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !28, line: 361, size: 576, elements: !1741)
!1741 = !{!1742, !1743, !1744, !1745, !1746, !1747}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1740, file: !28, line: 362, baseType: !100, size: 128)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1740, file: !28, line: 363, baseType: !100, size: 128, offset: 128)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1740, file: !28, line: 364, baseType: !100, size: 128, offset: 256)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1740, file: !28, line: 365, baseType: !100, size: 128, offset: 384)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1740, file: !28, line: 366, baseType: !995, size: 8, offset: 512)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1740, file: !28, line: 367, baseType: !27, size: 32, offset: 544)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !89, file: !28, line: 485, baseType: !1749, size: 2304, offset: 1792)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !35, line: 565, size: 2304, elements: !1750)
!1750 = !{!1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1846, !1850}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1749, file: !35, line: 566, baseType: !1700, size: 32)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1749, file: !35, line: 567, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1749, file: !35, line: 568, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1749, file: !35, line: 569, baseType: !995, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1749, file: !35, line: 570, baseType: !995, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1749, file: !35, line: 571, baseType: !995, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1749, file: !35, line: 572, baseType: !995, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1749, file: !35, line: 573, baseType: !995, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1749, file: !35, line: 574, baseType: !995, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1749, file: !35, line: 575, baseType: !995, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1749, file: !35, line: 576, baseType: !995, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1749, file: !35, line: 577, baseType: !425, size: 32, offset: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1749, file: !35, line: 578, baseType: !113, offset: 96)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1749, file: !35, line: 580, baseType: !100, size: 128, offset: 128)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1749, file: !35, line: 581, baseType: !731, size: 192, offset: 256)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1749, file: !35, line: 582, baseType: !1767, size: 64, offset: 448)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1769, line: 43, size: 1472, elements: !1770)
!1769 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1770 = !{!1771, !1772, !1773, !1774, !1775, !1778, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1768, file: !1769, line: 44, baseType: !96, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1768, file: !1769, line: 45, baseType: !71, size: 32, offset: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1768, file: !1769, line: 46, baseType: !100, size: 128, offset: 128)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1768, file: !1769, line: 47, baseType: !113, offset: 256)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1768, file: !1769, line: 48, baseType: !1776, size: 64, offset: 256)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !35, line: 533, flags: DIFlagFwdDecl)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1768, file: !1769, line: 49, baseType: !1779, size: 320, offset: 320)
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1780, line: 11, size: 320, elements: !1781)
!1780 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1781 = !{!1782, !1783, !1784, !1789}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1779, file: !1780, line: 16, baseType: !695, size: 128)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1779, file: !1780, line: 17, baseType: !73, size: 64, offset: 128)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1779, file: !1780, line: 18, baseType: !1785, size: 64, offset: 192)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DISubroutineType(types: !1787)
!1787 = !{null, !1788}
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1779, file: !1780, line: 19, baseType: !425, size: 32, offset: 256)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1768, file: !1769, line: 50, baseType: !73, size: 64, offset: 640)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1768, file: !1769, line: 51, baseType: !501, size: 64, offset: 704)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1768, file: !1769, line: 52, baseType: !501, size: 64, offset: 768)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1768, file: !1769, line: 53, baseType: !501, size: 64, offset: 832)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1768, file: !1769, line: 54, baseType: !501, size: 64, offset: 896)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1768, file: !1769, line: 55, baseType: !501, size: 64, offset: 960)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1768, file: !1769, line: 56, baseType: !73, size: 64, offset: 1024)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1768, file: !1769, line: 57, baseType: !73, size: 64, offset: 1088)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1768, file: !1769, line: 58, baseType: !73, size: 64, offset: 1152)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1768, file: !1769, line: 59, baseType: !73, size: 64, offset: 1216)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1768, file: !1769, line: 60, baseType: !73, size: 64, offset: 1280)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1768, file: !1769, line: 61, baseType: !88, size: 64, offset: 1344)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1768, file: !1769, line: 62, baseType: !995, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1768, file: !1769, line: 63, baseType: !995, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1749, file: !35, line: 583, baseType: !995, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1749, file: !35, line: 584, baseType: !995, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1749, file: !35, line: 585, baseType: !995, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1749, file: !35, line: 586, baseType: !5, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1749, file: !35, line: 587, baseType: !5, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1749, file: !35, line: 592, baseType: !493, size: 512, offset: 576)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1749, file: !35, line: 593, baseType: !271, size: 64, offset: 1088)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1749, file: !35, line: 594, baseType: !1320, size: 256, offset: 1152)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1749, file: !35, line: 595, baseType: !702, size: 128, offset: 1408)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1749, file: !35, line: 596, baseType: !1776, size: 64, offset: 1536)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1749, file: !35, line: 597, baseType: !293, size: 32, offset: 1600)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1749, file: !35, line: 598, baseType: !293, size: 32, offset: 1632)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1749, file: !35, line: 599, baseType: !5, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1749, file: !35, line: 600, baseType: !5, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1749, file: !35, line: 601, baseType: !5, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1749, file: !35, line: 602, baseType: !5, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1749, file: !35, line: 603, baseType: !5, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1749, file: !35, line: 604, baseType: !995, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1749, file: !35, line: 605, baseType: !5, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1749, file: !35, line: 606, baseType: !5, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1749, file: !35, line: 607, baseType: !5, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1749, file: !35, line: 608, baseType: !5, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1749, file: !35, line: 609, baseType: !5, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1749, file: !35, line: 610, baseType: !5, size: 32, offset: 1696)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1749, file: !35, line: 611, baseType: !34, size: 32, offset: 1728)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1749, file: !35, line: 612, baseType: !42, size: 32, offset: 1760)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1749, file: !35, line: 613, baseType: !71, size: 32, offset: 1792)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1749, file: !35, line: 614, baseType: !71, size: 32, offset: 1824)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1749, file: !35, line: 615, baseType: !271, size: 64, offset: 1856)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1749, file: !35, line: 616, baseType: !271, size: 64, offset: 1920)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1749, file: !35, line: 617, baseType: !271, size: 64, offset: 1984)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1749, file: !35, line: 618, baseType: !271, size: 64, offset: 2048)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1749, file: !35, line: 620, baseType: !1837, size: 64, offset: 2112)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !35, line: 536, size: 256, elements: !1839)
!1839 = !{!1840, !1841, !1842, !1843}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1838, file: !35, line: 537, baseType: !113)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1838, file: !35, line: 538, baseType: !5, size: 32)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1838, file: !35, line: 540, baseType: !100, size: 128, offset: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1838, file: !35, line: 543, baseType: !1844, size: 64, offset: 192)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !35, line: 534, flags: DIFlagFwdDecl)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1749, file: !35, line: 621, baseType: !1847, size: 64, offset: 2176)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{null, !88, !655}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1749, file: !35, line: 622, baseType: !1851, size: 64, offset: 2240)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !35, line: 622, flags: DIFlagFwdDecl)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !89, file: !28, line: 486, baseType: !1854, size: 64, offset: 4096)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !35, line: 642, size: 1792, elements: !1856)
!1856 = !{!1857, !1858, !1859, !1863, !1864, !1865}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1855, file: !35, line: 643, baseType: !1610, size: 1472)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1855, file: !35, line: 644, baseType: !1613, size: 64, offset: 1472)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1855, file: !35, line: 645, baseType: !1860, size: 64, offset: 1536)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{null, !88, !995}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1855, file: !35, line: 646, baseType: !1613, size: 64, offset: 1600)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1855, file: !35, line: 647, baseType: !1604, size: 64, offset: 1664)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1855, file: !35, line: 648, baseType: !1604, size: 64, offset: 1728)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !89, file: !28, line: 493, baseType: !1867, size: 64, offset: 4160)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !28, line: 493, flags: DIFlagFwdDecl)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !89, file: !28, line: 499, baseType: !100, size: 128, offset: 4224)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !89, file: !28, line: 502, baseType: !1871, size: 64, offset: 4352)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1873)
!1873 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !28, line: 502, flags: DIFlagFwdDecl)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !89, file: !28, line: 504, baseType: !1875, size: 64, offset: 4416)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !89, file: !28, line: 505, baseType: !271, size: 64, offset: 4480)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !89, file: !28, line: 510, baseType: !271, size: 64, offset: 4544)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !89, file: !28, line: 511, baseType: !1879, size: 64, offset: 4608)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1881)
!1881 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !28, line: 511, flags: DIFlagFwdDecl)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !89, file: !28, line: 513, baseType: !1883, size: 64, offset: 4672)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !28, line: 288, size: 128, elements: !1885)
!1885 = !{!1886, !1887}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1884, file: !28, line: 293, baseType: !5, size: 32)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1884, file: !28, line: 294, baseType: !73, size: 64, offset: 64)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !89, file: !28, line: 515, baseType: !100, size: 128, offset: 4736)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !89, file: !28, line: 526, baseType: !1890, offset: 4864)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1891, line: 5, elements: !127)
!1891 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !89, file: !28, line: 528, baseType: !1893, size: 64, offset: 4864)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !60, line: 610, flags: DIFlagFwdDecl)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !89, file: !28, line: 529, baseType: !1896, size: 64, offset: 4928)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !60, line: 176, flags: DIFlagFwdDecl)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !89, file: !28, line: 534, baseType: !1899, size: 32, offset: 4992)
!1899 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !70, line: 16, baseType: !1900)
!1900 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !70, line: 13, baseType: !425)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !89, file: !28, line: 535, baseType: !425, size: 32, offset: 5024)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !89, file: !28, line: 537, baseType: !113, offset: 5056)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !89, file: !28, line: 538, baseType: !100, size: 128, offset: 5056)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !89, file: !28, line: 540, baseType: !1905, size: 64, offset: 5184)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1907, line: 54, size: 960, elements: !1908)
!1907 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!1908 = !{!1909, !1910, !1911, !1912, !1913, !1914, !1915, !1919, !1923, !1924, !1925, !1926, !1930, !1934, !1935}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1906, file: !1907, line: 55, baseType: !96, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1906, file: !1907, line: 56, baseType: !1659, size: 64, offset: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1906, file: !1907, line: 58, baseType: !206, size: 64, offset: 128)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1906, file: !1907, line: 59, baseType: !206, size: 64, offset: 192)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !1906, file: !1907, line: 60, baseType: !106, size: 64, offset: 256)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1906, file: !1907, line: 62, baseType: !1595, size: 64, offset: 320)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1906, file: !1907, line: 63, baseType: !1916, size: 64, offset: 384)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{!154, !88, !1602}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1906, file: !1907, line: 65, baseType: !1920, size: 64, offset: 448)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{null, !1905}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1906, file: !1907, line: 66, baseType: !1604, size: 64, offset: 512)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1906, file: !1907, line: 68, baseType: !1613, size: 64, offset: 576)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1906, file: !1907, line: 70, baseType: !1369, size: 64, offset: 640)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1906, file: !1907, line: 71, baseType: !1927, size: 64, offset: 704)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!1386, !88}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1906, file: !1907, line: 73, baseType: !1931, size: 64, offset: 768)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{null, !88, !1406, !1412}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1906, file: !1907, line: 75, baseType: !1608, size: 64, offset: 832)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1906, file: !1907, line: 77, baseType: !1729, size: 64, offset: 896)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !89, file: !28, line: 541, baseType: !206, size: 64, offset: 5248)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !89, file: !28, line: 543, baseType: !1604, size: 64, offset: 5312)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !89, file: !28, line: 544, baseType: !1939, size: 64, offset: 5376)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !28, line: 45, flags: DIFlagFwdDecl)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !89, file: !28, line: 545, baseType: !1942, size: 64, offset: 5440)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !28, line: 47, flags: DIFlagFwdDecl)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !89, file: !28, line: 547, baseType: !995, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !89, file: !28, line: 548, baseType: !995, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !89, file: !28, line: 549, baseType: !995, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !89, file: !28, line: 550, baseType: !995, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !84, file: !85, line: 277, baseType: !89, size: 5568, offset: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !84, file: !85, line: 278, baseType: !71, size: 32, offset: 5632)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !84, file: !85, line: 279, baseType: !1951, size: 64, offset: 5696)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1953)
!1953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_host_ops", file: !85, line: 82, size: 1408, elements: !1954)
!1954 = !{!1955, !2009, !2013, !2014, !2018, !2036, !2038, !2039, !2043, !2047, !2268, !2272, !2273, !2277, !2278, !2279, !2280, !2281, !2282, !2286, !2287, !2288}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "post_req", scope: !1953, file: !85, line: 91, baseType: !1956, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{null, !83, !1959, !71}
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_request", file: !1961, line: 144, size: 896, elements: !1962)
!1961 = !DIFile(filename: "./include/linux/mmc/core.h", directory: "/home/lizy2001/genbc/linux")
!1962 = !{!1963, !1996, !1997, !1998, !1999, !2000, !2001, !2005, !2006, !2007, !2008}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "sbc", scope: !1960, file: !1961, line: 145, baseType: !1964, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_command", file: !1961, line: 26, size: 448, elements: !1966)
!1966 = !{!1967, !1968, !1969, !1971, !1972, !1973, !1974, !1975, !1995}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !1965, file: !1961, line: 27, baseType: !425, size: 32)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1965, file: !1961, line: 28, baseType: !425, size: 32, offset: 32)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "resp", scope: !1965, file: !1961, line: 32, baseType: !1970, size: 128, offset: 64)
!1970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 128, elements: !352)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1965, file: !1961, line: 33, baseType: !5, size: 32, offset: 192)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !1965, file: !1961, line: 92, baseType: !5, size: 32, offset: 224)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !1965, file: !1961, line: 93, baseType: !71, size: 32, offset: 256)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "busy_timeout", scope: !1965, file: !1961, line: 109, baseType: !5, size: 32, offset: 288)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1965, file: !1961, line: 110, baseType: !1976, size: 64, offset: 320)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_data", file: !1961, line: 114, size: 576, elements: !1978)
!1978 = !{!1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1994}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_ns", scope: !1977, file: !1961, line: 115, baseType: !5, size: 32)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_clks", scope: !1977, file: !1961, line: 116, baseType: !5, size: 32, offset: 32)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "blksz", scope: !1977, file: !1961, line: 117, baseType: !5, size: 32, offset: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1977, file: !1961, line: 118, baseType: !5, size: 32, offset: 96)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "blk_addr", scope: !1977, file: !1961, line: 119, baseType: !5, size: 32, offset: 128)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !1977, file: !1961, line: 120, baseType: !71, size: 32, offset: 160)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1977, file: !1961, line: 121, baseType: !5, size: 32, offset: 192)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_xfered", scope: !1977, file: !1961, line: 132, baseType: !5, size: 32, offset: 224)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1977, file: !1961, line: 134, baseType: !1964, size: 64, offset: 256)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "mrq", scope: !1977, file: !1961, line: 135, baseType: !1959, size: 64, offset: 320)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "sg_len", scope: !1977, file: !1961, line: 137, baseType: !5, size: 32, offset: 384)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "sg_count", scope: !1977, file: !1961, line: 138, baseType: !71, size: 32, offset: 416)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !1977, file: !1961, line: 139, baseType: !1992, size: 64, offset: 448)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !1961, line: 139, flags: DIFlagFwdDecl)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "host_cookie", scope: !1977, file: !1961, line: 140, baseType: !655, size: 32, offset: 512)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "mrq", scope: !1965, file: !1961, line: 111, baseType: !1959, size: 64, offset: 384)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !1960, file: !1961, line: 146, baseType: !1964, size: 64, offset: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1960, file: !1961, line: 147, baseType: !1976, size: 64, offset: 128)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1960, file: !1961, line: 148, baseType: !1964, size: 64, offset: 192)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1960, file: !1961, line: 150, baseType: !731, size: 192, offset: 256)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_completion", scope: !1960, file: !1961, line: 151, baseType: !731, size: 192, offset: 448)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1960, file: !1961, line: 152, baseType: !2002, size: 64, offset: 640)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{null, !1959}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_notifier", scope: !1960, file: !1961, line: 158, baseType: !2002, size: 64, offset: 704)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1960, file: !1961, line: 159, baseType: !83, size: 64, offset: 768)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "cap_cmd_during_tfr", scope: !1960, file: !1961, line: 162, baseType: !995, size: 8, offset: 832)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !1960, file: !1961, line: 164, baseType: !71, size: 32, offset: 864)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "pre_req", scope: !1953, file: !85, line: 93, baseType: !2010, size: 64, offset: 64)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{null, !83, !1959}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1953, file: !85, line: 94, baseType: !2010, size: 64, offset: 128)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "request_atomic", scope: !1953, file: !85, line: 96, baseType: !2015, size: 64, offset: 192)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!71, !83, !1959}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "set_ios", scope: !1953, file: !85, line: 113, baseType: !2019, size: 64, offset: 256)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{null, !83, !2022}
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_ios", file: !85, line: 19, size: 160, elements: !2024)
!2024 = !{!2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !2023, file: !85, line: 20, baseType: !5, size: 32)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "vdd", scope: !2023, file: !85, line: 21, baseType: !195, size: 16, offset: 32)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "power_delay_ms", scope: !2023, file: !85, line: 22, baseType: !5, size: 32, offset: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "bus_mode", scope: !2023, file: !85, line: 26, baseType: !564, size: 8, offset: 96)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "chip_select", scope: !2023, file: !85, line: 31, baseType: !564, size: 8, offset: 104)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "power_mode", scope: !2023, file: !85, line: 37, baseType: !564, size: 8, offset: 112)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "bus_width", scope: !2023, file: !85, line: 44, baseType: !564, size: 8, offset: 120)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "timing", scope: !2023, file: !85, line: 50, baseType: !564, size: 8, offset: 128)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "signal_voltage", scope: !2023, file: !85, line: 64, baseType: !564, size: 8, offset: 136)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "drv_type", scope: !2023, file: !85, line: 70, baseType: !564, size: 8, offset: 144)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "enhanced_strobe", scope: !2023, file: !85, line: 77, baseType: !995, size: 8, offset: 152)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "get_ro", scope: !1953, file: !85, line: 122, baseType: !2037, size: 64, offset: 320)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "get_cd", scope: !1953, file: !85, line: 131, baseType: !2037, size: 64, offset: 384)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "enable_sdio_irq", scope: !1953, file: !85, line: 133, baseType: !2040, size: 64, offset: 448)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{null, !83, !71}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "ack_sdio_irq", scope: !1953, file: !85, line: 135, baseType: !2044, size: 64, offset: 512)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{null, !83}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "init_card", scope: !1953, file: !85, line: 138, baseType: !2048, size: 64, offset: 576)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DISubroutineType(types: !2050)
!2050 = !{null, !83, !2051}
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_card", file: !2053, line: 244, size: 12672, elements: !2054)
!2053 = !DIFile(filename: "./include/linux/mmc/card.h", directory: "/home/lizy2001/genbc/linux")
!2054 = !{!2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2074, !2076, !2088, !2108, !2189, !2198, !2204, !2212, !2213, !2214, !2225, !2232, !2238, !2239, !2240, !2241, !2242, !2244, !2247, !2248, !2249, !2250, !2253, !2263, !2264, !2265}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !2052, file: !2053, line: 245, baseType: !83, size: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2052, file: !2053, line: 246, baseType: !89, size: 5568, offset: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "ocr", scope: !2052, file: !2053, line: 247, baseType: !425, size: 32, offset: 5632)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "rca", scope: !2052, file: !2053, line: 248, baseType: !5, size: 32, offset: 5664)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2052, file: !2053, line: 249, baseType: !5, size: 32, offset: 5696)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2052, file: !2053, line: 254, baseType: !5, size: 32, offset: 5728)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !2052, file: !2053, line: 255, baseType: !5, size: 32, offset: 5760)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_max_rate", scope: !2052, file: !2053, line: 256, baseType: !5, size: 32, offset: 5792)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "reenable_cmdq", scope: !2052, file: !2053, line: 274, baseType: !995, size: 8, offset: 5824)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "erase_size", scope: !2052, file: !2053, line: 276, baseType: !5, size: 32, offset: 5856)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "erase_shift", scope: !2052, file: !2053, line: 277, baseType: !5, size: 32, offset: 5888)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "pref_erase", scope: !2052, file: !2053, line: 278, baseType: !5, size: 32, offset: 5920)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "eg_boundary", scope: !2052, file: !2053, line: 279, baseType: !5, size: 32, offset: 5952)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "erase_arg", scope: !2052, file: !2053, line: 280, baseType: !5, size: 32, offset: 5984)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "erased_byte", scope: !2052, file: !2053, line: 281, baseType: !562, size: 8, offset: 6016)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "raw_cid", scope: !2052, file: !2053, line: 283, baseType: !1970, size: 128, offset: 6048)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "raw_csd", scope: !2052, file: !2053, line: 284, baseType: !1970, size: 128, offset: 6176)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "raw_scr", scope: !2052, file: !2053, line: 285, baseType: !2073, size: 64, offset: 6304)
!2073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 64, elements: !967)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "raw_ssr", scope: !2052, file: !2053, line: 286, baseType: !2075, size: 512, offset: 6368)
!2075 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 512, elements: !787)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2052, file: !2053, line: 287, baseType: !2077, size: 224, offset: 6880)
!2077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_cid", file: !2053, line: 13, size: 224, elements: !2078)
!2078 = !{!2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "manfid", scope: !2077, file: !2053, line: 14, baseType: !5, size: 32)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "prod_name", scope: !2077, file: !2053, line: 15, baseType: !932, size: 64, offset: 32)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !2077, file: !2053, line: 16, baseType: !564, size: 8, offset: 96)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !2077, file: !2053, line: 17, baseType: !5, size: 32, offset: 128)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "oemid", scope: !2077, file: !2053, line: 18, baseType: !195, size: 16, offset: 160)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "year", scope: !2077, file: !2053, line: 19, baseType: !195, size: 16, offset: 176)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "hwrev", scope: !2077, file: !2053, line: 20, baseType: !564, size: 8, offset: 192)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "fwrev", scope: !2077, file: !2053, line: 21, baseType: !564, size: 8, offset: 200)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "month", scope: !2077, file: !2053, line: 22, baseType: !564, size: 8, offset: 208)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "csd", scope: !2052, file: !2053, line: 288, baseType: !2089, size: 352, offset: 7104)
!2089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_csd", file: !2053, line: 25, size: 352, elements: !2090)
!2090 = !{!2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !2089, file: !2053, line: 26, baseType: !564, size: 8)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "mmca_vsn", scope: !2089, file: !2053, line: 27, baseType: !564, size: 8, offset: 8)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "cmdclass", scope: !2089, file: !2053, line: 28, baseType: !195, size: 16, offset: 16)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "taac_clks", scope: !2089, file: !2053, line: 29, baseType: !195, size: 16, offset: 32)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "taac_ns", scope: !2089, file: !2053, line: 30, baseType: !5, size: 32, offset: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "c_size", scope: !2089, file: !2053, line: 31, baseType: !5, size: 32, offset: 96)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "r2w_factor", scope: !2089, file: !2053, line: 32, baseType: !5, size: 32, offset: 128)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "max_dtr", scope: !2089, file: !2053, line: 33, baseType: !5, size: 32, offset: 160)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "erase_size", scope: !2089, file: !2053, line: 34, baseType: !5, size: 32, offset: 192)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "read_blkbits", scope: !2089, file: !2053, line: 35, baseType: !5, size: 32, offset: 224)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "write_blkbits", scope: !2089, file: !2053, line: 36, baseType: !5, size: 32, offset: 256)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !2089, file: !2053, line: 37, baseType: !5, size: 32, offset: 288)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "read_partial", scope: !2089, file: !2053, line: 38, baseType: !5, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "read_misalign", scope: !2089, file: !2053, line: 39, baseType: !5, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "write_partial", scope: !2089, file: !2053, line: 40, baseType: !5, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "write_misalign", scope: !2089, file: !2053, line: 41, baseType: !5, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "dsr_imp", scope: !2089, file: !2053, line: 42, baseType: !5, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "ext_csd", scope: !2052, file: !2053, line: 289, baseType: !2109, size: 1344, offset: 7488)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_ext_csd", file: !2053, line: 45, size: 1344, elements: !2110)
!2110 = !{!2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2185, !2186, !2187, !2188}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2109, file: !2053, line: 46, baseType: !562, size: 8)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "erase_group_def", scope: !2109, file: !2053, line: 47, baseType: !562, size: 8, offset: 8)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "sec_feature_support", scope: !2109, file: !2053, line: 48, baseType: !562, size: 8, offset: 16)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "rel_sectors", scope: !2109, file: !2053, line: 49, baseType: !562, size: 8, offset: 24)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "rel_param", scope: !2109, file: !2053, line: 50, baseType: !562, size: 8, offset: 32)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "enhanced_rpmb_supported", scope: !2109, file: !2053, line: 51, baseType: !995, size: 8, offset: 40)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "part_config", scope: !2109, file: !2053, line: 52, baseType: !562, size: 8, offset: 48)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "cache_ctrl", scope: !2109, file: !2053, line: 53, baseType: !562, size: 8, offset: 56)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "rst_n_function", scope: !2109, file: !2053, line: 54, baseType: !562, size: 8, offset: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "max_packed_writes", scope: !2109, file: !2053, line: 55, baseType: !562, size: 8, offset: 72)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "max_packed_reads", scope: !2109, file: !2053, line: 56, baseType: !562, size: 8, offset: 80)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "packed_event_en", scope: !2109, file: !2053, line: 57, baseType: !562, size: 8, offset: 88)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "part_time", scope: !2109, file: !2053, line: 58, baseType: !5, size: 32, offset: 96)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "sa_timeout", scope: !2109, file: !2053, line: 59, baseType: !5, size: 32, offset: 128)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "generic_cmd6_time", scope: !2109, file: !2053, line: 60, baseType: !5, size: 32, offset: 160)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "power_off_longtime", scope: !2109, file: !2053, line: 61, baseType: !5, size: 32, offset: 192)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "power_off_notification", scope: !2109, file: !2053, line: 62, baseType: !562, size: 8, offset: 224)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "hs_max_dtr", scope: !2109, file: !2053, line: 63, baseType: !5, size: 32, offset: 256)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "hs200_max_dtr", scope: !2109, file: !2053, line: 64, baseType: !5, size: 32, offset: 288)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "sectors", scope: !2109, file: !2053, line: 69, baseType: !5, size: 32, offset: 320)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "hc_erase_size", scope: !2109, file: !2053, line: 70, baseType: !5, size: 32, offset: 352)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "hc_erase_timeout", scope: !2109, file: !2053, line: 71, baseType: !5, size: 32, offset: 384)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "sec_trim_mult", scope: !2109, file: !2053, line: 72, baseType: !5, size: 32, offset: 416)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "sec_erase_mult", scope: !2109, file: !2053, line: 73, baseType: !5, size: 32, offset: 448)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "trim_timeout", scope: !2109, file: !2053, line: 74, baseType: !5, size: 32, offset: 480)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "partition_setting_completed", scope: !2109, file: !2053, line: 75, baseType: !995, size: 8, offset: 512)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "enhanced_area_offset", scope: !2109, file: !2053, line: 76, baseType: !275, size: 64, offset: 576)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "enhanced_area_size", scope: !2109, file: !2053, line: 77, baseType: !5, size: 32, offset: 640)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "cache_size", scope: !2109, file: !2053, line: 78, baseType: !5, size: 32, offset: 672)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "hpi_en", scope: !2109, file: !2053, line: 79, baseType: !995, size: 8, offset: 704)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "hpi", scope: !2109, file: !2053, line: 80, baseType: !995, size: 8, offset: 712)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "hpi_cmd", scope: !2109, file: !2053, line: 81, baseType: !5, size: 32, offset: 736)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "bkops", scope: !2109, file: !2053, line: 82, baseType: !995, size: 8, offset: 768)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "man_bkops_en", scope: !2109, file: !2053, line: 83, baseType: !995, size: 8, offset: 776)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "auto_bkops_en", scope: !2109, file: !2053, line: 84, baseType: !995, size: 8, offset: 784)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "data_sector_size", scope: !2109, file: !2053, line: 85, baseType: !5, size: 32, offset: 800)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "data_tag_unit_size", scope: !2109, file: !2053, line: 86, baseType: !5, size: 32, offset: 832)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "boot_ro_lock", scope: !2109, file: !2053, line: 87, baseType: !5, size: 32, offset: 864)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "boot_ro_lockable", scope: !2109, file: !2053, line: 88, baseType: !995, size: 8, offset: 896)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "ffu_capable", scope: !2109, file: !2053, line: 89, baseType: !995, size: 8, offset: 904)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "cmdq_en", scope: !2109, file: !2053, line: 90, baseType: !995, size: 8, offset: 912)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "cmdq_support", scope: !2109, file: !2053, line: 91, baseType: !995, size: 8, offset: 920)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "cmdq_depth", scope: !2109, file: !2053, line: 92, baseType: !5, size: 32, offset: 928)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "fwrev", scope: !2109, file: !2053, line: 94, baseType: !2155, size: 64, offset: 960)
!2155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !562, size: 64, elements: !531)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "raw_exception_status", scope: !2109, file: !2053, line: 95, baseType: !562, size: 8, offset: 1024)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "raw_partition_support", scope: !2109, file: !2053, line: 96, baseType: !562, size: 8, offset: 1032)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "raw_rpmb_size_mult", scope: !2109, file: !2053, line: 97, baseType: !562, size: 8, offset: 1040)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "raw_erased_mem_count", scope: !2109, file: !2053, line: 98, baseType: !562, size: 8, offset: 1048)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "strobe_support", scope: !2109, file: !2053, line: 99, baseType: !562, size: 8, offset: 1056)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "raw_ext_csd_structure", scope: !2109, file: !2053, line: 100, baseType: !562, size: 8, offset: 1064)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "raw_card_type", scope: !2109, file: !2053, line: 101, baseType: !562, size: 8, offset: 1072)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "raw_driver_strength", scope: !2109, file: !2053, line: 102, baseType: !562, size: 8, offset: 1080)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "out_of_int_time", scope: !2109, file: !2053, line: 103, baseType: !562, size: 8, offset: 1088)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "raw_pwr_cl_52_195", scope: !2109, file: !2053, line: 104, baseType: !562, size: 8, offset: 1096)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "raw_pwr_cl_26_195", scope: !2109, file: !2053, line: 105, baseType: !562, size: 8, offset: 1104)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "raw_pwr_cl_52_360", scope: !2109, file: !2053, line: 106, baseType: !562, size: 8, offset: 1112)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "raw_pwr_cl_26_360", scope: !2109, file: !2053, line: 107, baseType: !562, size: 8, offset: 1120)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "raw_s_a_timeout", scope: !2109, file: !2053, line: 108, baseType: !562, size: 8, offset: 1128)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "raw_hc_erase_gap_size", scope: !2109, file: !2053, line: 109, baseType: !562, size: 8, offset: 1136)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "raw_erase_timeout_mult", scope: !2109, file: !2053, line: 110, baseType: !562, size: 8, offset: 1144)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "raw_hc_erase_grp_size", scope: !2109, file: !2053, line: 111, baseType: !562, size: 8, offset: 1152)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "raw_sec_trim_mult", scope: !2109, file: !2053, line: 112, baseType: !562, size: 8, offset: 1160)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "raw_sec_erase_mult", scope: !2109, file: !2053, line: 113, baseType: !562, size: 8, offset: 1168)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "raw_sec_feature_support", scope: !2109, file: !2053, line: 114, baseType: !562, size: 8, offset: 1176)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "raw_trim_mult", scope: !2109, file: !2053, line: 115, baseType: !562, size: 8, offset: 1184)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "raw_pwr_cl_200_195", scope: !2109, file: !2053, line: 116, baseType: !562, size: 8, offset: 1192)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "raw_pwr_cl_200_360", scope: !2109, file: !2053, line: 117, baseType: !562, size: 8, offset: 1200)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "raw_pwr_cl_ddr_52_195", scope: !2109, file: !2053, line: 118, baseType: !562, size: 8, offset: 1208)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "raw_pwr_cl_ddr_52_360", scope: !2109, file: !2053, line: 119, baseType: !562, size: 8, offset: 1216)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "raw_pwr_cl_ddr_200_360", scope: !2109, file: !2053, line: 120, baseType: !562, size: 8, offset: 1224)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "raw_bkops_status", scope: !2109, file: !2053, line: 121, baseType: !562, size: 8, offset: 1232)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "raw_sectors", scope: !2109, file: !2053, line: 122, baseType: !2184, size: 32, offset: 1240)
!2184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !562, size: 32, elements: !352)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "pre_eol_info", scope: !2109, file: !2053, line: 123, baseType: !562, size: 8, offset: 1272)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "device_life_time_est_typ_a", scope: !2109, file: !2053, line: 124, baseType: !562, size: 8, offset: 1280)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "device_life_time_est_typ_b", scope: !2109, file: !2053, line: 125, baseType: !562, size: 8, offset: 1288)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "feature_support", scope: !2109, file: !2053, line: 127, baseType: !5, size: 32, offset: 1312)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "scr", scope: !2052, file: !2053, line: 290, baseType: !2190, size: 48, offset: 8832)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sd_scr", file: !2053, line: 131, size: 48, elements: !2191)
!2191 = !{!2192, !2193, !2194, !2195, !2196, !2197}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "sda_vsn", scope: !2190, file: !2053, line: 132, baseType: !564, size: 8)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "sda_spec3", scope: !2190, file: !2053, line: 133, baseType: !564, size: 8, offset: 8)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "sda_spec4", scope: !2190, file: !2053, line: 134, baseType: !564, size: 8, offset: 16)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "sda_specx", scope: !2190, file: !2053, line: 135, baseType: !564, size: 8, offset: 24)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "bus_widths", scope: !2190, file: !2053, line: 136, baseType: !564, size: 8, offset: 32)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "cmds", scope: !2190, file: !2053, line: 139, baseType: !564, size: 8, offset: 40)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "ssr", scope: !2052, file: !2053, line: 291, baseType: !2199, size: 96, offset: 8896)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sd_ssr", file: !2053, line: 144, size: 96, elements: !2200)
!2200 = !{!2201, !2202, !2203}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "au", scope: !2199, file: !2053, line: 145, baseType: !5, size: 32)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "erase_timeout", scope: !2199, file: !2053, line: 146, baseType: !5, size: 32, offset: 32)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "erase_offset", scope: !2199, file: !2053, line: 147, baseType: !5, size: 32, offset: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "sw_caps", scope: !2052, file: !2053, line: 292, baseType: !2205, size: 160, offset: 8992)
!2205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sd_switch_caps", file: !2053, line: 150, size: 160, elements: !2206)
!2206 = !{!2207, !2208, !2209, !2210, !2211}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "hs_max_dtr", scope: !2205, file: !2053, line: 151, baseType: !5, size: 32)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "uhs_max_dtr", scope: !2205, file: !2053, line: 152, baseType: !5, size: 32, offset: 32)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "sd3_bus_mode", scope: !2205, file: !2053, line: 160, baseType: !5, size: 32, offset: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "sd3_drv_type", scope: !2205, file: !2053, line: 174, baseType: !5, size: 32, offset: 96)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "sd3_curr_limit", scope: !2205, file: !2053, line: 179, baseType: !5, size: 32, offset: 128)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_funcs", scope: !2052, file: !2053, line: 294, baseType: !5, size: 32, offset: 9152)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_funcs_probed", scope: !2052, file: !2053, line: 295, baseType: !293, size: 32, offset: 9184)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "cccr", scope: !2052, file: !2053, line: 296, baseType: !2215, size: 96, offset: 9216)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdio_cccr", file: !2053, line: 192, size: 96, elements: !2216)
!2216 = !{!2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_vsn", scope: !2215, file: !2053, line: 193, baseType: !5, size: 32)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "sd_vsn", scope: !2215, file: !2053, line: 194, baseType: !5, size: 32, offset: 32)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "multi_block", scope: !2215, file: !2053, line: 195, baseType: !5, size: 1, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "low_speed", scope: !2215, file: !2053, line: 196, baseType: !5, size: 1, offset: 65, flags: DIFlagBitField, extraData: i64 64)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "wide_bus", scope: !2215, file: !2053, line: 197, baseType: !5, size: 1, offset: 66, flags: DIFlagBitField, extraData: i64 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "high_power", scope: !2215, file: !2053, line: 198, baseType: !5, size: 1, offset: 67, flags: DIFlagBitField, extraData: i64 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "high_speed", scope: !2215, file: !2053, line: 199, baseType: !5, size: 1, offset: 68, flags: DIFlagBitField, extraData: i64 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "disable_cd", scope: !2215, file: !2053, line: 200, baseType: !5, size: 1, offset: 69, flags: DIFlagBitField, extraData: i64 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "cis", scope: !2052, file: !2053, line: 297, baseType: !2226, size: 96, offset: 9312)
!2226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdio_cis", file: !2053, line: 203, size: 96, elements: !2227)
!2227 = !{!2228, !2229, !2230, !2231}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !2226, file: !2053, line: 204, baseType: !195, size: 16)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !2226, file: !2053, line: 205, baseType: !195, size: 16, offset: 16)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !2226, file: !2053, line: 206, baseType: !195, size: 16, offset: 32)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "max_dtr", scope: !2226, file: !2053, line: 207, baseType: !5, size: 32, offset: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_func", scope: !2052, file: !2053, line: 298, baseType: !2233, size: 448, offset: 9408)
!2233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2234, size: 448, elements: !2236)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = !DICompositeType(tag: DW_TAG_structure_type, name: "sdio_func", file: !2053, line: 211, flags: DIFlagFwdDecl)
!2236 = !{!2237}
!2237 = !DISubrange(count: 7)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_single_irq", scope: !2052, file: !2053, line: 299, baseType: !2234, size: 64, offset: 9856)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "major_rev", scope: !2052, file: !2053, line: 300, baseType: !562, size: 8, offset: 9920)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "minor_rev", scope: !2052, file: !2053, line: 301, baseType: !562, size: 8, offset: 9928)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "num_info", scope: !2052, file: !2053, line: 302, baseType: !5, size: 32, offset: 9952)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2052, file: !2053, line: 303, baseType: !2243, size: 64, offset: 9984)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "tuples", scope: !2052, file: !2053, line: 304, baseType: !2245, size: 64, offset: 10048)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DICompositeType(tag: DW_TAG_structure_type, name: "sdio_func_tuple", file: !2053, line: 212, flags: DIFlagFwdDecl)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "sd_bus_speed", scope: !2052, file: !2053, line: 306, baseType: !5, size: 32, offset: 10112)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_avail_type", scope: !2052, file: !2053, line: 307, baseType: !5, size: 32, offset: 10144)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "drive_strength", scope: !2052, file: !2053, line: 308, baseType: !5, size: 32, offset: 10176)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_root", scope: !2052, file: !2053, line: 310, baseType: !2251, size: 64, offset: 10240)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1422, line: 21, flags: DIFlagFwdDecl)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !2052, file: !2053, line: 311, baseType: !2254, size: 2240, offset: 10304)
!2254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2255, size: 2240, elements: !2236)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_part", file: !2053, line: 229, size: 320, elements: !2256)
!2256 = !{!2257, !2258, !2259, !2261, !2262}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2255, file: !2053, line: 230, baseType: !271, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "part_cfg", scope: !2255, file: !2053, line: 231, baseType: !5, size: 32, offset: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2255, file: !2053, line: 232, baseType: !2260, size: 160, offset: 96)
!2260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 160, elements: !1186)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "force_ro", scope: !2255, file: !2053, line: 233, baseType: !995, size: 8, offset: 256)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "area_type", scope: !2255, file: !2053, line: 234, baseType: !5, size: 32, offset: 288)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "nr_parts", scope: !2052, file: !2053, line: 312, baseType: !5, size: 32, offset: 12544)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "bouncesz", scope: !2052, file: !2053, line: 314, baseType: !5, size: 32, offset: 12576)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "complete_wq", scope: !2052, file: !2053, line: 315, baseType: !2266, size: 64, offset: 12608)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1321, line: 18, flags: DIFlagFwdDecl)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "start_signal_voltage_switch", scope: !1953, file: !85, line: 140, baseType: !2269, size: 64, offset: 640)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{!71, !83, !2022}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "card_busy", scope: !1953, file: !85, line: 143, baseType: !2037, size: 64, offset: 704)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "execute_tuning", scope: !1953, file: !85, line: 146, baseType: !2274, size: 64, offset: 768)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = !DISubroutineType(types: !2276)
!2276 = !{!71, !83, !425}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_hs400_tuning", scope: !1953, file: !85, line: 149, baseType: !2269, size: 64, offset: 832)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "hs400_prepare_ddr", scope: !1953, file: !85, line: 152, baseType: !2037, size: 64, offset: 896)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "hs400_downgrade", scope: !1953, file: !85, line: 155, baseType: !2044, size: 64, offset: 960)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "hs400_complete", scope: !1953, file: !85, line: 158, baseType: !2044, size: 64, offset: 1024)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "hs400_enhanced_strobe", scope: !1953, file: !85, line: 161, baseType: !2019, size: 64, offset: 1088)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "select_drive_strength", scope: !1953, file: !85, line: 163, baseType: !2283, size: 64, offset: 1152)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{!71, !2051, !5, !71, !71, !742}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "hw_reset", scope: !1953, file: !85, line: 167, baseType: !2044, size: 64, offset: 1216)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "card_event", scope: !1953, file: !85, line: 168, baseType: !2044, size: 64, offset: 1280)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "multi_io_quirk", scope: !1953, file: !85, line: 174, baseType: !2289, size: 64, offset: 1344)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{!71, !2051, !5, !71}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "pwrseq", scope: !84, file: !85, line: 280, baseType: !2293, size: 64, offset: 5760)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_pwrseq", file: !85, line: 264, flags: DIFlagFwdDecl)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "f_min", scope: !84, file: !85, line: 281, baseType: !5, size: 32, offset: 5824)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "f_max", scope: !84, file: !85, line: 282, baseType: !5, size: 32, offset: 5856)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "f_init", scope: !84, file: !85, line: 283, baseType: !5, size: 32, offset: 5888)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "ocr_avail", scope: !84, file: !85, line: 284, baseType: !425, size: 32, offset: 5920)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "ocr_avail_sdio", scope: !84, file: !85, line: 285, baseType: !425, size: 32, offset: 5952)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "ocr_avail_sd", scope: !84, file: !85, line: 286, baseType: !425, size: 32, offset: 5984)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "ocr_avail_mmc", scope: !84, file: !85, line: 287, baseType: !425, size: 32, offset: 6016)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "pm_notify", scope: !84, file: !85, line: 289, baseType: !2303, size: 192, offset: 6080)
!2303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !2304, line: 54, size: 192, elements: !2305)
!2304 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!2305 = !{!2306, !2312, !2313}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !2303, file: !2304, line: 55, baseType: !2307, size: 64)
!2307 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !2304, line: 51, baseType: !2308)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{!71, !2311, !73, !74}
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2303, file: !2304, line: 56, baseType: !2311, size: 64, offset: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !2303, file: !2304, line: 57, baseType: !71, size: 32, offset: 128)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !84, file: !85, line: 291, baseType: !1767, size: 64, offset: 6272)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "max_current_330", scope: !84, file: !85, line: 292, baseType: !425, size: 32, offset: 6336)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "max_current_300", scope: !84, file: !85, line: 293, baseType: !425, size: 32, offset: 6368)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "max_current_180", scope: !84, file: !85, line: 294, baseType: !425, size: 32, offset: 6400)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "caps", scope: !84, file: !85, line: 314, baseType: !425, size: 32, offset: 6432)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "caps2", scope: !84, file: !85, line: 352, baseType: !425, size: 32, offset: 6464)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_drv_type", scope: !84, file: !85, line: 381, baseType: !71, size: 32, offset: 6496)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "pm_caps", scope: !84, file: !85, line: 383, baseType: !2322, size: 32, offset: 6528)
!2322 = !DIDerivedType(tag: DW_TAG_typedef, name: "mmc_pm_flag_t", file: !2323, line: 22, baseType: !5)
!2323 = !DIFile(filename: "./include/linux/mmc/pm.h", directory: "/home/lizy2001/genbc/linux")
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "max_seg_size", scope: !84, file: !85, line: 386, baseType: !5, size: 32, offset: 6560)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "max_segs", scope: !84, file: !85, line: 387, baseType: !195, size: 16, offset: 6592)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !84, file: !85, line: 388, baseType: !195, size: 16, offset: 6608)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "max_req_size", scope: !84, file: !85, line: 389, baseType: !5, size: 32, offset: 6624)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "max_blk_size", scope: !84, file: !85, line: 390, baseType: !5, size: 32, offset: 6656)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "max_blk_count", scope: !84, file: !85, line: 391, baseType: !5, size: 32, offset: 6688)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "max_busy_timeout", scope: !84, file: !85, line: 392, baseType: !5, size: 32, offset: 6720)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !84, file: !85, line: 395, baseType: !113, offset: 6752)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "ios", scope: !84, file: !85, line: 397, baseType: !2023, size: 160, offset: 6752)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "use_spi_crc", scope: !84, file: !85, line: 400, baseType: !5, size: 1, offset: 6912, flags: DIFlagBitField, extraData: i64 6912)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "claimed", scope: !84, file: !85, line: 401, baseType: !5, size: 1, offset: 6913, flags: DIFlagBitField, extraData: i64 6912)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dead", scope: !84, file: !85, line: 402, baseType: !5, size: 1, offset: 6914, flags: DIFlagBitField, extraData: i64 6912)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "doing_init_tune", scope: !84, file: !85, line: 403, baseType: !5, size: 1, offset: 6915, flags: DIFlagBitField, extraData: i64 6912)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "can_retune", scope: !84, file: !85, line: 404, baseType: !5, size: 1, offset: 6916, flags: DIFlagBitField, extraData: i64 6912)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "doing_retune", scope: !84, file: !85, line: 405, baseType: !5, size: 1, offset: 6917, flags: DIFlagBitField, extraData: i64 6912)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "retune_now", scope: !84, file: !85, line: 406, baseType: !5, size: 1, offset: 6918, flags: DIFlagBitField, extraData: i64 6912)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "retune_paused", scope: !84, file: !85, line: 407, baseType: !5, size: 1, offset: 6919, flags: DIFlagBitField, extraData: i64 6912)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "use_blk_mq", scope: !84, file: !85, line: 408, baseType: !5, size: 1, offset: 6920, flags: DIFlagBitField, extraData: i64 6912)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "retune_crc_disable", scope: !84, file: !85, line: 409, baseType: !5, size: 1, offset: 6921, flags: DIFlagBitField, extraData: i64 6912)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "can_dma_map_merge", scope: !84, file: !85, line: 410, baseType: !5, size: 1, offset: 6922, flags: DIFlagBitField, extraData: i64 6912)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "rescan_disable", scope: !84, file: !85, line: 412, baseType: !71, size: 32, offset: 6944)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "rescan_entered", scope: !84, file: !85, line: 413, baseType: !71, size: 32, offset: 6976)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "need_retune", scope: !84, file: !85, line: 415, baseType: !71, size: 32, offset: 7008)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "hold_retune", scope: !84, file: !85, line: 416, baseType: !71, size: 32, offset: 7040)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "retune_period", scope: !84, file: !85, line: 417, baseType: !5, size: 32, offset: 7072)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "retune_timer", scope: !84, file: !85, line: 418, baseType: !1779, size: 320, offset: 7104)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "trigger_card_event", scope: !84, file: !85, line: 420, baseType: !995, size: 8, offset: 7424)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !84, file: !85, line: 422, baseType: !2051, size: 64, offset: 7488)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !84, file: !85, line: 424, baseType: !702, size: 128, offset: 7552)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "claimer", scope: !84, file: !85, line: 425, baseType: !2354, size: 64, offset: 7680)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_ctx", file: !85, line: 271, size: 64, elements: !2356)
!2356 = !{!2357}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2355, file: !85, line: 272, baseType: !415, size: 64)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "claim_cnt", scope: !84, file: !85, line: 426, baseType: !71, size: 32, offset: 7744)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "default_ctx", scope: !84, file: !85, line: 427, baseType: !2355, size: 64, offset: 7808)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !84, file: !85, line: 429, baseType: !2361, size: 704, offset: 7872)
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1321, line: 115, size: 704, elements: !2362)
!2362 = !{!2363, !2364, !2365, !2366}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2361, file: !1321, line: 116, baseType: !1320, size: 256)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2361, file: !1321, line: 117, baseType: !1779, size: 320, offset: 256)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2361, file: !1321, line: 120, baseType: !2266, size: 64, offset: 576)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2361, file: !1321, line: 121, baseType: !71, size: 32, offset: 640)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "detect_change", scope: !84, file: !85, line: 430, baseType: !71, size: 32, offset: 8576)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !84, file: !85, line: 431, baseType: !2369, size: 128, offset: 8640)
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_slot", file: !85, line: 243, size: 128, elements: !2370)
!2370 = !{!2371, !2372, !2373}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "cd_irq", scope: !2369, file: !85, line: 244, baseType: !71, size: 32)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "cd_wake_enabled", scope: !2369, file: !85, line: 245, baseType: !995, size: 8, offset: 32)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "handler_priv", scope: !2369, file: !85, line: 246, baseType: !74, size: 64, offset: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "bus_ops", scope: !84, file: !85, line: 433, baseType: !2375, size: 64, offset: 8768)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2377)
!2377 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_bus_ops", file: !85, line: 433, flags: DIFlagFwdDecl)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "bus_refs", scope: !84, file: !85, line: 434, baseType: !5, size: 32, offset: 8832)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_irqs", scope: !84, file: !85, line: 436, baseType: !5, size: 32, offset: 8864)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_irq_thread", scope: !84, file: !85, line: 437, baseType: !415, size: 64, offset: 8896)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_irq_work", scope: !84, file: !85, line: 438, baseType: !2361, size: 704, offset: 8960)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_irq_pending", scope: !84, file: !85, line: 439, baseType: !995, size: 8, offset: 9664)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_irq_thread_abort", scope: !84, file: !85, line: 440, baseType: !293, size: 32, offset: 9696)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "pm_flags", scope: !84, file: !85, line: 442, baseType: !2322, size: 32, offset: 9728)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !84, file: !85, line: 444, baseType: !2386, size: 64, offset: 9792)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = !DICompositeType(tag: DW_TAG_structure_type, name: "led_trigger", file: !85, line: 444, flags: DIFlagFwdDecl)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "supply", scope: !84, file: !85, line: 449, baseType: !2389, size: 128, offset: 9856)
!2389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_supply", file: !85, line: 266, size: 128, elements: !2390)
!2390 = !{!2391, !2394}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "vmmc", scope: !2389, file: !85, line: 267, baseType: !2392, size: 64)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = !DICompositeType(tag: DW_TAG_structure_type, name: "regulator", file: !85, line: 263, flags: DIFlagFwdDecl)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "vqmmc", scope: !2389, file: !85, line: 268, baseType: !2392, size: 64, offset: 64)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_root", scope: !84, file: !85, line: 451, baseType: !2251, size: 64, offset: 9984)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "ongoing_mrq", scope: !84, file: !85, line: 454, baseType: !1959, size: 64, offset: 10048)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "actual_clock", scope: !84, file: !85, line: 460, baseType: !5, size: 32, offset: 10112)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "slotno", scope: !84, file: !85, line: 462, baseType: !5, size: 32, offset: 10144)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "dsr_req", scope: !84, file: !85, line: 464, baseType: !71, size: 32, offset: 10176)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "dsr", scope: !84, file: !85, line: 465, baseType: !425, size: 32, offset: 10208)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_ops", scope: !84, file: !85, line: 468, baseType: !2402, size: 64, offset: 10240)
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2404)
!2404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_cqe_ops", file: !85, line: 178, size: 576, elements: !2405)
!2405 = !{!2406, !2410, !2411, !2412, !2413, !2414, !2415, !2420, !2421}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_enable", scope: !2404, file: !85, line: 180, baseType: !2407, size: 64)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{!71, !83, !2051}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_disable", scope: !2404, file: !85, line: 182, baseType: !2044, size: 64, offset: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_request", scope: !2404, file: !85, line: 187, baseType: !2015, size: 64, offset: 128)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_post_req", scope: !2404, file: !85, line: 189, baseType: !2010, size: 64, offset: 192)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_off", scope: !2404, file: !85, line: 195, baseType: !2044, size: 64, offset: 256)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_wait_for_idle", scope: !2404, file: !85, line: 200, baseType: !2037, size: 64, offset: 320)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_timeout", scope: !2404, file: !85, line: 206, baseType: !2416, size: 64, offset: 384)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{!995, !83, !1959, !2419}
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_recovery_start", scope: !2404, file: !85, line: 212, baseType: !2044, size: 64, offset: 448)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_recovery_finish", scope: !2404, file: !85, line: 219, baseType: !2044, size: 64, offset: 512)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_private", scope: !84, file: !85, line: 469, baseType: !74, size: 64, offset: 10304)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_qdepth", scope: !84, file: !85, line: 470, baseType: !71, size: 32, offset: 10368)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_enabled", scope: !84, file: !85, line: 471, baseType: !995, size: 8, offset: 10400)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_on", scope: !84, file: !85, line: 472, baseType: !995, size: 8, offset: 10408)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "hsq_enabled", scope: !84, file: !85, line: 475, baseType: !995, size: 8, offset: 10416)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !84, file: !85, line: 477, baseType: !1333, align: 512, offset: 10752)
!2428 = !DILocalVariable(name: "host", arg: 1, scope: !80, file: !1, line: 40, type: !83)
!2429 = !DILocation(line: 40, column: 37, scope: !80)
!2430 = !DILocalVariable(name: "ctx", scope: !80, file: !1, line: 42, type: !2431)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_gpio", file: !1, line: 19, size: 384, elements: !2433)
!2433 = !{!2434, !2437, !2438, !2443, !2444, !2445}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "ro_gpio", scope: !2432, file: !1, line: 20, baseType: !2435, size: 64)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !60, line: 19, flags: DIFlagFwdDecl)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "cd_gpio", scope: !2432, file: !1, line: 21, baseType: !2435, size: 64, offset: 64)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "cd_gpio_isr", scope: !2432, file: !1, line: 22, baseType: !2439, size: 64, offset: 128)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = !DISubroutineType(types: !2441)
!2441 = !{!2442, !71, !74}
!2442 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !49, line: 17, baseType: !48)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "ro_label", scope: !2432, file: !1, line: 23, baseType: !154, size: 64, offset: 192)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "cd_label", scope: !2432, file: !1, line: 24, baseType: !154, size: 64, offset: 256)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "cd_debounce_delay_ms", scope: !2432, file: !1, line: 25, baseType: !425, size: 32, offset: 320)
!2446 = !DILocation(line: 42, column: 19, scope: !80)
!2447 = !DILocation(line: 42, column: 38, scope: !80)
!2448 = !DILocation(line: 42, column: 44, scope: !80)
!2449 = !DILocation(line: 42, column: 25, scope: !80)
!2450 = !DILocation(line: 45, column: 6, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !80, file: !1, line: 45, column: 6)
!2452 = !DILocation(line: 45, column: 6, scope: !80)
!2453 = !DILocation(line: 46, column: 3, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2451, file: !1, line: 45, column: 11)
!2455 = !DILocation(line: 46, column: 8, scope: !2454)
!2456 = !DILocation(line: 46, column: 29, scope: !2454)
!2457 = !DILocation(line: 47, column: 34, scope: !2454)
!2458 = !DILocation(line: 47, column: 40, scope: !2454)
!2459 = !DILocation(line: 48, column: 23, scope: !2454)
!2460 = !DILocation(line: 48, column: 29, scope: !2454)
!2461 = !DILocation(line: 48, column: 14, scope: !2454)
!2462 = !DILocation(line: 47, column: 19, scope: !2454)
!2463 = !DILocation(line: 47, column: 3, scope: !2454)
!2464 = !DILocation(line: 47, column: 8, scope: !2454)
!2465 = !DILocation(line: 47, column: 17, scope: !2454)
!2466 = !DILocation(line: 49, column: 8, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2454, file: !1, line: 49, column: 7)
!2468 = !DILocation(line: 49, column: 13, scope: !2467)
!2469 = !DILocation(line: 49, column: 7, scope: !2454)
!2470 = !DILocation(line: 50, column: 4, scope: !2467)
!2471 = !DILocation(line: 51, column: 34, scope: !2454)
!2472 = !DILocation(line: 51, column: 40, scope: !2454)
!2473 = !DILocation(line: 52, column: 23, scope: !2454)
!2474 = !DILocation(line: 52, column: 29, scope: !2454)
!2475 = !DILocation(line: 52, column: 14, scope: !2454)
!2476 = !DILocation(line: 51, column: 19, scope: !2454)
!2477 = !DILocation(line: 51, column: 3, scope: !2454)
!2478 = !DILocation(line: 51, column: 8, scope: !2454)
!2479 = !DILocation(line: 51, column: 17, scope: !2454)
!2480 = !DILocation(line: 53, column: 8, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2454, file: !1, line: 53, column: 7)
!2482 = !DILocation(line: 53, column: 13, scope: !2481)
!2483 = !DILocation(line: 53, column: 7, scope: !2454)
!2484 = !DILocation(line: 54, column: 4, scope: !2481)
!2485 = !DILocation(line: 55, column: 29, scope: !2454)
!2486 = !DILocation(line: 55, column: 3, scope: !2454)
!2487 = !DILocation(line: 55, column: 9, scope: !2454)
!2488 = !DILocation(line: 55, column: 14, scope: !2454)
!2489 = !DILocation(line: 55, column: 27, scope: !2454)
!2490 = !DILocation(line: 56, column: 3, scope: !2454)
!2491 = !DILocation(line: 56, column: 9, scope: !2454)
!2492 = !DILocation(line: 56, column: 14, scope: !2454)
!2493 = !DILocation(line: 56, column: 21, scope: !2454)
!2494 = !DILocation(line: 57, column: 2, scope: !2454)
!2495 = !DILocation(line: 59, column: 9, scope: !80)
!2496 = !DILocation(line: 59, column: 2, scope: !80)
!2497 = !DILocation(line: 60, column: 1, scope: !80)
!2498 = distinct !DISubprogram(name: "devm_kzalloc", scope: !28, file: !28, line: 215, type: !2499, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !127)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{!74, !88, !200, !69}
!2501 = !DILocalVariable(name: "dev", arg: 1, scope: !2498, file: !28, line: 215, type: !88)
!2502 = !DILocation(line: 215, column: 49, scope: !2498)
!2503 = !DILocalVariable(name: "size", arg: 2, scope: !2498, file: !28, line: 215, type: !200)
!2504 = !DILocation(line: 215, column: 61, scope: !2498)
!2505 = !DILocalVariable(name: "gfp", arg: 3, scope: !2498, file: !28, line: 215, type: !69)
!2506 = !DILocation(line: 215, column: 73, scope: !2498)
!2507 = !DILocation(line: 217, column: 22, scope: !2498)
!2508 = !DILocation(line: 217, column: 27, scope: !2498)
!2509 = !DILocation(line: 217, column: 33, scope: !2498)
!2510 = !DILocation(line: 217, column: 37, scope: !2498)
!2511 = !DILocation(line: 217, column: 9, scope: !2498)
!2512 = !DILocation(line: 217, column: 2, scope: !2498)
!2513 = distinct !DISubprogram(name: "dev_name", scope: !28, file: !28, line: 609, type: !2514, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !127)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{!96, !2516}
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!2518 = !DILocalVariable(name: "dev", arg: 1, scope: !2513, file: !28, line: 609, type: !2516)
!2519 = !DILocation(line: 609, column: 57, scope: !2513)
!2520 = !DILocation(line: 612, column: 6, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2513, file: !28, line: 612, column: 6)
!2522 = !DILocation(line: 612, column: 11, scope: !2521)
!2523 = !DILocation(line: 612, column: 6, scope: !2513)
!2524 = !DILocation(line: 613, column: 10, scope: !2521)
!2525 = !DILocation(line: 613, column: 15, scope: !2521)
!2526 = !DILocation(line: 613, column: 3, scope: !2521)
!2527 = !DILocation(line: 615, column: 23, scope: !2513)
!2528 = !DILocation(line: 615, column: 28, scope: !2513)
!2529 = !DILocation(line: 615, column: 9, scope: !2513)
!2530 = !DILocation(line: 615, column: 2, scope: !2513)
!2531 = !DILocation(line: 616, column: 1, scope: !2513)
!2532 = distinct !DISubprogram(name: "mmc_gpio_get_ro", scope: !1, file: !1, line: 62, type: !81, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !127)
!2533 = !DILocalVariable(name: "host", arg: 1, scope: !2532, file: !1, line: 62, type: !83)
!2534 = !DILocation(line: 62, column: 38, scope: !2532)
!2535 = !DILocalVariable(name: "ctx", scope: !2532, file: !1, line: 64, type: !2431)
!2536 = !DILocation(line: 64, column: 19, scope: !2532)
!2537 = !DILocation(line: 64, column: 25, scope: !2532)
!2538 = !DILocation(line: 64, column: 31, scope: !2532)
!2539 = !DILocation(line: 64, column: 36, scope: !2532)
!2540 = !DILocation(line: 66, column: 7, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2532, file: !1, line: 66, column: 6)
!2542 = !DILocation(line: 66, column: 11, scope: !2541)
!2543 = !DILocation(line: 66, column: 15, scope: !2541)
!2544 = !DILocation(line: 66, column: 20, scope: !2541)
!2545 = !DILocation(line: 66, column: 6, scope: !2532)
!2546 = !DILocation(line: 67, column: 3, scope: !2541)
!2547 = !DILocation(line: 69, column: 34, scope: !2532)
!2548 = !DILocation(line: 69, column: 39, scope: !2532)
!2549 = !DILocation(line: 69, column: 9, scope: !2532)
!2550 = !DILocation(line: 69, column: 2, scope: !2532)
!2551 = !DILocation(line: 70, column: 1, scope: !2532)
!2552 = distinct !DISubprogram(name: "mmc_gpio_get_cd", scope: !1, file: !1, line: 73, type: !81, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !127)
!2553 = !DILocalVariable(name: "host", arg: 1, scope: !2552, file: !1, line: 73, type: !83)
!2554 = !DILocation(line: 73, column: 38, scope: !2552)
!2555 = !DILocalVariable(name: "ctx", scope: !2552, file: !1, line: 75, type: !2431)
!2556 = !DILocation(line: 75, column: 19, scope: !2552)
!2557 = !DILocation(line: 75, column: 25, scope: !2552)
!2558 = !DILocation(line: 75, column: 31, scope: !2552)
!2559 = !DILocation(line: 75, column: 36, scope: !2552)
!2560 = !DILocalVariable(name: "cansleep", scope: !2552, file: !1, line: 76, type: !71)
!2561 = !DILocation(line: 76, column: 6, scope: !2552)
!2562 = !DILocation(line: 78, column: 7, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2552, file: !1, line: 78, column: 6)
!2564 = !DILocation(line: 78, column: 11, scope: !2563)
!2565 = !DILocation(line: 78, column: 15, scope: !2563)
!2566 = !DILocation(line: 78, column: 20, scope: !2563)
!2567 = !DILocation(line: 78, column: 6, scope: !2552)
!2568 = !DILocation(line: 79, column: 3, scope: !2563)
!2569 = !DILocation(line: 81, column: 28, scope: !2552)
!2570 = !DILocation(line: 81, column: 33, scope: !2552)
!2571 = !DILocation(line: 81, column: 13, scope: !2552)
!2572 = !DILocation(line: 81, column: 11, scope: !2552)
!2573 = !DILocation(line: 82, column: 9, scope: !2552)
!2574 = !DILocation(line: 83, column: 28, scope: !2552)
!2575 = !DILocation(line: 83, column: 33, scope: !2552)
!2576 = !DILocation(line: 83, column: 3, scope: !2552)
!2577 = !DILocation(line: 84, column: 19, scope: !2552)
!2578 = !DILocation(line: 84, column: 24, scope: !2552)
!2579 = !DILocation(line: 84, column: 3, scope: !2552)
!2580 = !DILocation(line: 82, column: 2, scope: !2552)
!2581 = !DILocation(line: 85, column: 1, scope: !2552)
!2582 = distinct !DISubprogram(name: "mmc_gpiod_request_cd_irq", scope: !1, file: !1, line: 88, type: !2045, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !127)
!2583 = !DILocalVariable(name: "host", arg: 1, scope: !2582, file: !1, line: 88, type: !83)
!2584 = !DILocation(line: 88, column: 48, scope: !2582)
!2585 = !DILocalVariable(name: "ctx", scope: !2582, file: !1, line: 90, type: !2431)
!2586 = !DILocation(line: 90, column: 19, scope: !2582)
!2587 = !DILocation(line: 90, column: 25, scope: !2582)
!2588 = !DILocation(line: 90, column: 31, scope: !2582)
!2589 = !DILocation(line: 90, column: 36, scope: !2582)
!2590 = !DILocalVariable(name: "irq", scope: !2582, file: !1, line: 91, type: !71)
!2591 = !DILocation(line: 91, column: 6, scope: !2582)
!2592 = !DILocalVariable(name: "ret", scope: !2582, file: !1, line: 92, type: !71)
!2593 = !DILocation(line: 92, column: 6, scope: !2582)
!2594 = !DILocation(line: 94, column: 6, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2582, file: !1, line: 94, column: 6)
!2596 = !DILocation(line: 94, column: 12, scope: !2595)
!2597 = !DILocation(line: 94, column: 17, scope: !2595)
!2598 = !DILocation(line: 94, column: 24, scope: !2595)
!2599 = !DILocation(line: 94, column: 29, scope: !2595)
!2600 = !DILocation(line: 94, column: 33, scope: !2595)
!2601 = !DILocation(line: 94, column: 37, scope: !2595)
!2602 = !DILocation(line: 94, column: 41, scope: !2595)
!2603 = !DILocation(line: 94, column: 46, scope: !2595)
!2604 = !DILocation(line: 94, column: 6, scope: !2582)
!2605 = !DILocation(line: 95, column: 3, scope: !2595)
!2606 = !DILocation(line: 101, column: 8, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2582, file: !1, line: 101, column: 6)
!2608 = !DILocation(line: 101, column: 14, scope: !2607)
!2609 = !DILocation(line: 101, column: 19, scope: !2607)
!2610 = !DILocation(line: 101, column: 6, scope: !2582)
!2611 = !DILocation(line: 102, column: 22, scope: !2607)
!2612 = !DILocation(line: 102, column: 27, scope: !2607)
!2613 = !DILocation(line: 102, column: 9, scope: !2607)
!2614 = !DILocation(line: 102, column: 7, scope: !2607)
!2615 = !DILocation(line: 102, column: 3, scope: !2607)
!2616 = !DILocation(line: 104, column: 6, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2582, file: !1, line: 104, column: 6)
!2618 = !DILocation(line: 104, column: 10, scope: !2617)
!2619 = !DILocation(line: 104, column: 6, scope: !2582)
!2620 = !DILocation(line: 105, column: 8, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2622, file: !1, line: 105, column: 7)
!2622 = distinct !DILexicalBlock(scope: !2617, file: !1, line: 104, column: 16)
!2623 = !DILocation(line: 105, column: 13, scope: !2621)
!2624 = !DILocation(line: 105, column: 7, scope: !2622)
!2625 = !DILocation(line: 106, column: 4, scope: !2621)
!2626 = !DILocation(line: 106, column: 9, scope: !2621)
!2627 = !DILocation(line: 106, column: 21, scope: !2621)
!2628 = !DILocation(line: 107, column: 35, scope: !2622)
!2629 = !DILocation(line: 107, column: 41, scope: !2622)
!2630 = !DILocation(line: 107, column: 49, scope: !2622)
!2631 = !DILocation(line: 108, column: 10, scope: !2622)
!2632 = !DILocation(line: 108, column: 15, scope: !2622)
!2633 = !DILocation(line: 110, column: 4, scope: !2622)
!2634 = !DILocation(line: 110, column: 9, scope: !2622)
!2635 = !DILocation(line: 110, column: 19, scope: !2622)
!2636 = !DILocation(line: 107, column: 9, scope: !2622)
!2637 = !DILocation(line: 107, column: 7, scope: !2622)
!2638 = !DILocation(line: 111, column: 7, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2622, file: !1, line: 111, column: 7)
!2640 = !DILocation(line: 111, column: 11, scope: !2639)
!2641 = !DILocation(line: 111, column: 7, scope: !2622)
!2642 = !DILocation(line: 112, column: 10, scope: !2639)
!2643 = !DILocation(line: 112, column: 8, scope: !2639)
!2644 = !DILocation(line: 112, column: 4, scope: !2639)
!2645 = !DILocation(line: 113, column: 2, scope: !2622)
!2646 = !DILocation(line: 115, column: 22, scope: !2582)
!2647 = !DILocation(line: 115, column: 2, scope: !2582)
!2648 = !DILocation(line: 115, column: 8, scope: !2582)
!2649 = !DILocation(line: 115, column: 13, scope: !2582)
!2650 = !DILocation(line: 115, column: 20, scope: !2582)
!2651 = !DILocation(line: 117, column: 6, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2582, file: !1, line: 117, column: 6)
!2653 = !DILocation(line: 117, column: 10, scope: !2652)
!2654 = !DILocation(line: 117, column: 6, scope: !2582)
!2655 = !DILocation(line: 118, column: 3, scope: !2652)
!2656 = !DILocation(line: 118, column: 9, scope: !2652)
!2657 = !DILocation(line: 118, column: 14, scope: !2652)
!2658 = !DILocation(line: 119, column: 1, scope: !2582)
!2659 = distinct !DISubprogram(name: "mmc_gpio_cd_irqt", scope: !1, file: !1, line: 28, type: !2440, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !127)
!2660 = !DILocalVariable(name: "m", arg: 1, scope: !2661, file: !2662, line: 363, type: !2665)
!2661 = distinct !DISubprogram(name: "msecs_to_jiffies", scope: !2662, file: !2662, line: 363, type: !2663, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !127)
!2662 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/lizy2001/genbc/linux")
!2663 = !DISubroutineType(types: !2664)
!2664 = !{!73, !2665}
!2665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!2666 = !DILocation(line: 363, column: 74, scope: !2661, inlinedAt: !2667)
!2667 = distinct !DILocation(line: 35, column: 26, scope: !2659)
!2668 = !DILocalVariable(name: "irq", arg: 1, scope: !2659, file: !1, line: 28, type: !71)
!2669 = !DILocation(line: 28, column: 41, scope: !2659)
!2670 = !DILocalVariable(name: "dev_id", arg: 2, scope: !2659, file: !1, line: 28, type: !74)
!2671 = !DILocation(line: 28, column: 52, scope: !2659)
!2672 = !DILocalVariable(name: "host", scope: !2659, file: !1, line: 31, type: !83)
!2673 = !DILocation(line: 31, column: 19, scope: !2659)
!2674 = !DILocation(line: 31, column: 26, scope: !2659)
!2675 = !DILocalVariable(name: "ctx", scope: !2659, file: !1, line: 32, type: !2431)
!2676 = !DILocation(line: 32, column: 19, scope: !2659)
!2677 = !DILocation(line: 32, column: 25, scope: !2659)
!2678 = !DILocation(line: 32, column: 31, scope: !2659)
!2679 = !DILocation(line: 32, column: 36, scope: !2659)
!2680 = !DILocation(line: 34, column: 2, scope: !2659)
!2681 = !DILocation(line: 34, column: 8, scope: !2659)
!2682 = !DILocation(line: 34, column: 27, scope: !2659)
!2683 = !DILocation(line: 35, column: 20, scope: !2659)
!2684 = !DILocation(line: 35, column: 43, scope: !2659)
!2685 = !DILocation(line: 35, column: 48, scope: !2659)
!2686 = !DILocation(line: 365, column: 27, scope: !2687, inlinedAt: !2667)
!2687 = distinct !DILexicalBlock(scope: !2661, file: !2662, line: 365, column: 6)
!2688 = !DILocation(line: 365, column: 6, scope: !2687, inlinedAt: !2667)
!2689 = !DILocation(line: 365, column: 6, scope: !2661, inlinedAt: !2667)
!2690 = !DILocation(line: 366, column: 12, scope: !2691, inlinedAt: !2667)
!2691 = distinct !DILexicalBlock(scope: !2692, file: !2662, line: 366, column: 7)
!2692 = distinct !DILexicalBlock(scope: !2687, file: !2662, line: 365, column: 31)
!2693 = !DILocation(line: 366, column: 14, scope: !2691, inlinedAt: !2667)
!2694 = !DILocation(line: 366, column: 7, scope: !2692, inlinedAt: !2667)
!2695 = !DILocation(line: 367, column: 4, scope: !2691, inlinedAt: !2667)
!2696 = !DILocation(line: 368, column: 28, scope: !2692, inlinedAt: !2667)
!2697 = !DILocation(line: 368, column: 10, scope: !2692, inlinedAt: !2667)
!2698 = !DILocation(line: 368, column: 3, scope: !2692, inlinedAt: !2667)
!2699 = !DILocation(line: 370, column: 29, scope: !2700, inlinedAt: !2667)
!2700 = distinct !DILexicalBlock(scope: !2687, file: !2662, line: 369, column: 9)
!2701 = !DILocation(line: 370, column: 10, scope: !2700, inlinedAt: !2667)
!2702 = !DILocation(line: 370, column: 3, scope: !2700, inlinedAt: !2667)
!2703 = !DILocation(line: 372, column: 1, scope: !2661, inlinedAt: !2667)
!2704 = !DILocation(line: 35, column: 2, scope: !2659)
!2705 = !DILocation(line: 37, column: 2, scope: !2659)
!2706 = distinct !DISubprogram(name: "mmc_gpio_set_cd_wake", scope: !1, file: !1, line: 122, type: !2707, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !127)
!2707 = !DISubroutineType(types: !2708)
!2708 = !{!71, !83, !995}
!2709 = !DILocalVariable(name: "host", arg: 1, scope: !2706, file: !1, line: 122, type: !83)
!2710 = !DILocation(line: 122, column: 43, scope: !2706)
!2711 = !DILocalVariable(name: "on", arg: 2, scope: !2706, file: !1, line: 122, type: !995)
!2712 = !DILocation(line: 122, column: 54, scope: !2706)
!2713 = !DILocalVariable(name: "ret", scope: !2706, file: !1, line: 124, type: !71)
!2714 = !DILocation(line: 124, column: 6, scope: !2706)
!2715 = !DILocation(line: 126, column: 8, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2706, file: !1, line: 126, column: 6)
!2717 = !DILocation(line: 126, column: 14, scope: !2716)
!2718 = !DILocation(line: 126, column: 19, scope: !2716)
!2719 = !DILocation(line: 126, column: 38, scope: !2716)
!2720 = !DILocation(line: 127, column: 6, scope: !2716)
!2721 = !DILocation(line: 127, column: 12, scope: !2716)
!2722 = !DILocation(line: 127, column: 17, scope: !2716)
!2723 = !DILocation(line: 127, column: 24, scope: !2716)
!2724 = !DILocation(line: 127, column: 28, scope: !2716)
!2725 = !DILocation(line: 128, column: 6, scope: !2716)
!2726 = !DILocation(line: 128, column: 12, scope: !2716)
!2727 = !DILocation(line: 128, column: 18, scope: !2716)
!2728 = !DILocation(line: 128, column: 23, scope: !2716)
!2729 = !DILocation(line: 128, column: 9, scope: !2716)
!2730 = !DILocation(line: 126, column: 6, scope: !2706)
!2731 = !DILocation(line: 129, column: 3, scope: !2716)
!2732 = !DILocation(line: 131, column: 6, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2706, file: !1, line: 131, column: 6)
!2734 = !DILocation(line: 131, column: 6, scope: !2706)
!2735 = !DILocation(line: 132, column: 25, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2733, file: !1, line: 131, column: 10)
!2737 = !DILocation(line: 132, column: 31, scope: !2736)
!2738 = !DILocation(line: 132, column: 36, scope: !2736)
!2739 = !DILocation(line: 132, column: 9, scope: !2736)
!2740 = !DILocation(line: 132, column: 7, scope: !2736)
!2741 = !DILocation(line: 133, column: 33, scope: !2736)
!2742 = !DILocation(line: 133, column: 32, scope: !2736)
!2743 = !DILocation(line: 133, column: 3, scope: !2736)
!2744 = !DILocation(line: 133, column: 9, scope: !2736)
!2745 = !DILocation(line: 133, column: 14, scope: !2736)
!2746 = !DILocation(line: 133, column: 30, scope: !2736)
!2747 = !DILocation(line: 134, column: 2, scope: !2736)
!2748 = !DILocation(line: 135, column: 20, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2733, file: !1, line: 134, column: 9)
!2750 = !DILocation(line: 135, column: 26, scope: !2749)
!2751 = !DILocation(line: 135, column: 31, scope: !2749)
!2752 = !DILocation(line: 135, column: 3, scope: !2749)
!2753 = !DILocation(line: 136, column: 3, scope: !2749)
!2754 = !DILocation(line: 136, column: 9, scope: !2749)
!2755 = !DILocation(line: 136, column: 14, scope: !2749)
!2756 = !DILocation(line: 136, column: 30, scope: !2749)
!2757 = !DILocation(line: 139, column: 9, scope: !2706)
!2758 = !DILocation(line: 139, column: 2, scope: !2706)
!2759 = !DILocation(line: 140, column: 1, scope: !2706)
!2760 = distinct !DISubprogram(name: "enable_irq_wake", scope: !2761, file: !2761, line: 465, type: !2762, scopeLine: 466, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !127)
!2761 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!2762 = !DISubroutineType(types: !2763)
!2763 = !{!71, !5}
!2764 = !DILocalVariable(name: "irq", arg: 1, scope: !2760, file: !2761, line: 465, type: !5)
!2765 = !DILocation(line: 465, column: 48, scope: !2760)
!2766 = !DILocation(line: 467, column: 26, scope: !2760)
!2767 = !DILocation(line: 467, column: 9, scope: !2760)
!2768 = !DILocation(line: 467, column: 2, scope: !2760)
!2769 = distinct !DISubprogram(name: "disable_irq_wake", scope: !2761, file: !2761, line: 470, type: !2762, scopeLine: 471, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !127)
!2770 = !DILocalVariable(name: "irq", arg: 1, scope: !2769, file: !2761, line: 470, type: !5)
!2771 = !DILocation(line: 470, column: 49, scope: !2769)
!2772 = !DILocation(line: 472, column: 26, scope: !2769)
!2773 = !DILocation(line: 472, column: 9, scope: !2769)
!2774 = !DILocation(line: 472, column: 2, scope: !2769)
!2775 = distinct !DISubprogram(name: "mmc_gpio_set_cd_isr", scope: !1, file: !1, line: 146, type: !2776, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !127)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{null, !83, !2439}
!2778 = !DILocalVariable(name: "host", arg: 1, scope: !2775, file: !1, line: 146, type: !83)
!2779 = !DILocation(line: 146, column: 43, scope: !2775)
!2780 = !DILocalVariable(name: "isr", arg: 2, scope: !2775, file: !1, line: 147, type: !2439)
!2781 = !DILocation(line: 147, column: 19, scope: !2775)
!2782 = !DILocalVariable(name: "ctx", scope: !2775, file: !1, line: 149, type: !2431)
!2783 = !DILocation(line: 149, column: 19, scope: !2775)
!2784 = !DILocation(line: 149, column: 25, scope: !2775)
!2785 = !DILocation(line: 149, column: 31, scope: !2775)
!2786 = !DILocation(line: 149, column: 36, scope: !2775)
!2787 = !DILocalVariable(name: "__ret_warn_on", scope: !2788, file: !1, line: 151, type: !71)
!2788 = distinct !DILexicalBlock(scope: !2775, file: !1, line: 151, column: 2)
!2789 = !DILocation(line: 151, column: 2, scope: !2788)
!2790 = !DILocation(line: 151, column: 2, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2788, file: !1, line: 151, column: 2)
!2792 = !DILocation(line: 151, column: 2, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2791, file: !1, line: 151, column: 2)
!2794 = !DILocation(line: 151, column: 2, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2793, file: !1, line: 151, column: 2)
!2796 = !DILocation(line: 151, column: 2, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2793, file: !1, line: 151, column: 2)
!2798 = !{i32 -2143370813, i32 -2143370784, i32 -2143370738, i32 -2143370680, i32 -2143370626, i32 -2143370572, i32 -2143370517, i32 -2143370486}
!2799 = !DILocation(line: 151, column: 2, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2793, file: !1, line: 151, column: 2)
!2801 = !{i32 -2143370076, i32 -2143370069, i32 -2143370017, i32 -2143369986, i32 -2143369956}
!2802 = !DILocation(line: 151, column: 2, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2793, file: !1, line: 151, column: 2)
!2804 = !DILocation(line: 152, column: 21, scope: !2775)
!2805 = !DILocation(line: 152, column: 2, scope: !2775)
!2806 = !DILocation(line: 152, column: 7, scope: !2775)
!2807 = !DILocation(line: 152, column: 19, scope: !2775)
!2808 = !DILocation(line: 153, column: 1, scope: !2775)
!2809 = distinct !DISubprogram(name: "mmc_gpiod_request_cd", scope: !1, file: !1, line: 169, type: !2810, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !127)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!71, !83, !96, !5, !995, !5}
!2812 = !DILocalVariable(name: "host", arg: 1, scope: !2809, file: !1, line: 169, type: !83)
!2813 = !DILocation(line: 169, column: 43, scope: !2809)
!2814 = !DILocalVariable(name: "con_id", arg: 2, scope: !2809, file: !1, line: 169, type: !96)
!2815 = !DILocation(line: 169, column: 61, scope: !2809)
!2816 = !DILocalVariable(name: "idx", arg: 3, scope: !2809, file: !1, line: 170, type: !5)
!2817 = !DILocation(line: 170, column: 18, scope: !2809)
!2818 = !DILocalVariable(name: "override_active_level", arg: 4, scope: !2809, file: !1, line: 170, type: !995)
!2819 = !DILocation(line: 170, column: 28, scope: !2809)
!2820 = !DILocalVariable(name: "debounce", arg: 5, scope: !2809, file: !1, line: 171, type: !5)
!2821 = !DILocation(line: 171, column: 18, scope: !2809)
!2822 = !DILocalVariable(name: "ctx", scope: !2809, file: !1, line: 173, type: !2431)
!2823 = !DILocation(line: 173, column: 19, scope: !2809)
!2824 = !DILocation(line: 173, column: 25, scope: !2809)
!2825 = !DILocation(line: 173, column: 31, scope: !2809)
!2826 = !DILocation(line: 173, column: 36, scope: !2809)
!2827 = !DILocalVariable(name: "desc", scope: !2809, file: !1, line: 174, type: !2435)
!2828 = !DILocation(line: 174, column: 20, scope: !2809)
!2829 = !DILocalVariable(name: "ret", scope: !2809, file: !1, line: 175, type: !71)
!2830 = !DILocation(line: 175, column: 6, scope: !2809)
!2831 = !DILocation(line: 177, column: 30, scope: !2809)
!2832 = !DILocation(line: 177, column: 36, scope: !2809)
!2833 = !DILocation(line: 177, column: 44, scope: !2809)
!2834 = !DILocation(line: 177, column: 52, scope: !2809)
!2835 = !DILocation(line: 177, column: 9, scope: !2809)
!2836 = !DILocation(line: 177, column: 7, scope: !2809)
!2837 = !DILocation(line: 178, column: 13, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2809, file: !1, line: 178, column: 6)
!2839 = !DILocation(line: 178, column: 6, scope: !2838)
!2840 = !DILocation(line: 178, column: 6, scope: !2809)
!2841 = !DILocation(line: 179, column: 18, scope: !2838)
!2842 = !DILocation(line: 179, column: 10, scope: !2838)
!2843 = !DILocation(line: 179, column: 3, scope: !2838)
!2844 = !DILocation(line: 181, column: 6, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2809, file: !1, line: 181, column: 6)
!2846 = !DILocation(line: 181, column: 6, scope: !2809)
!2847 = !DILocation(line: 182, column: 28, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2845, file: !1, line: 181, column: 16)
!2849 = !DILocation(line: 182, column: 34, scope: !2848)
!2850 = !DILocation(line: 182, column: 9, scope: !2848)
!2851 = !DILocation(line: 182, column: 7, scope: !2848)
!2852 = !DILocation(line: 183, column: 7, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2848, file: !1, line: 183, column: 7)
!2854 = !DILocation(line: 183, column: 11, scope: !2853)
!2855 = !DILocation(line: 183, column: 7, scope: !2848)
!2856 = !DILocation(line: 184, column: 32, scope: !2853)
!2857 = !DILocation(line: 184, column: 41, scope: !2853)
!2858 = !DILocation(line: 184, column: 4, scope: !2853)
!2859 = !DILocation(line: 184, column: 9, scope: !2853)
!2860 = !DILocation(line: 184, column: 30, scope: !2853)
!2861 = !DILocation(line: 185, column: 2, scope: !2848)
!2862 = !DILocation(line: 188, column: 6, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2809, file: !1, line: 188, column: 6)
!2864 = !DILocation(line: 188, column: 28, scope: !2863)
!2865 = !DILocation(line: 188, column: 52, scope: !2863)
!2866 = !DILocation(line: 188, column: 32, scope: !2863)
!2867 = !DILocation(line: 188, column: 6, scope: !2809)
!2868 = !DILocation(line: 189, column: 27, scope: !2863)
!2869 = !DILocation(line: 189, column: 3, scope: !2863)
!2870 = !DILocation(line: 192, column: 6, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2809, file: !1, line: 192, column: 6)
!2872 = !DILocation(line: 192, column: 12, scope: !2871)
!2873 = !DILocation(line: 192, column: 18, scope: !2871)
!2874 = !DILocation(line: 192, column: 6, scope: !2809)
!2875 = !DILocation(line: 193, column: 27, scope: !2871)
!2876 = !DILocation(line: 193, column: 3, scope: !2871)
!2877 = !DILocation(line: 195, column: 17, scope: !2809)
!2878 = !DILocation(line: 195, column: 2, scope: !2809)
!2879 = !DILocation(line: 195, column: 7, scope: !2809)
!2880 = !DILocation(line: 195, column: 15, scope: !2809)
!2881 = !DILocation(line: 197, column: 2, scope: !2809)
!2882 = !DILocation(line: 198, column: 1, scope: !2809)
!2883 = distinct !DISubprogram(name: "IS_ERR", scope: !2884, file: !2884, line: 34, type: !2885, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !127)
!2884 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!2885 = !DISubroutineType(types: !2886)
!2886 = !{!995, !1386}
!2887 = !DILocalVariable(name: "ptr", arg: 1, scope: !2883, file: !2884, line: 34, type: !1386)
!2888 = !DILocation(line: 34, column: 60, scope: !2883)
!2889 = !DILocation(line: 36, column: 9, scope: !2883)
!2890 = !DILocation(line: 36, column: 2, scope: !2883)
!2891 = distinct !DISubprogram(name: "PTR_ERR", scope: !2884, file: !2884, line: 29, type: !2892, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !127)
!2892 = !DISubroutineType(types: !2893)
!2893 = !{!72, !1386}
!2894 = !DILocalVariable(name: "ptr", arg: 1, scope: !2891, file: !2884, line: 29, type: !1386)
!2895 = !DILocation(line: 29, column: 61, scope: !2891)
!2896 = !DILocation(line: 31, column: 16, scope: !2891)
!2897 = !DILocation(line: 31, column: 9, scope: !2891)
!2898 = !DILocation(line: 31, column: 2, scope: !2891)
!2899 = distinct !DISubprogram(name: "mmc_can_gpio_cd", scope: !1, file: !1, line: 201, type: !2900, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !127)
!2900 = !DISubroutineType(types: !2901)
!2901 = !{!995, !83}
!2902 = !DILocalVariable(name: "host", arg: 1, scope: !2899, file: !1, line: 201, type: !83)
!2903 = !DILocation(line: 201, column: 39, scope: !2899)
!2904 = !DILocalVariable(name: "ctx", scope: !2899, file: !1, line: 203, type: !2431)
!2905 = !DILocation(line: 203, column: 19, scope: !2899)
!2906 = !DILocation(line: 203, column: 25, scope: !2899)
!2907 = !DILocation(line: 203, column: 31, scope: !2899)
!2908 = !DILocation(line: 203, column: 36, scope: !2899)
!2909 = !DILocation(line: 205, column: 9, scope: !2899)
!2910 = !DILocation(line: 205, column: 14, scope: !2899)
!2911 = !DILocation(line: 205, column: 2, scope: !2899)
!2912 = distinct !DISubprogram(name: "mmc_gpiod_request_ro", scope: !1, file: !1, line: 218, type: !2913, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !127)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{!71, !83, !96, !5, !5}
!2915 = !DILocalVariable(name: "host", arg: 1, scope: !2912, file: !1, line: 218, type: !83)
!2916 = !DILocation(line: 218, column: 43, scope: !2912)
!2917 = !DILocalVariable(name: "con_id", arg: 2, scope: !2912, file: !1, line: 218, type: !96)
!2918 = !DILocation(line: 218, column: 61, scope: !2912)
!2919 = !DILocalVariable(name: "idx", arg: 3, scope: !2912, file: !1, line: 219, type: !5)
!2920 = !DILocation(line: 219, column: 18, scope: !2912)
!2921 = !DILocalVariable(name: "debounce", arg: 4, scope: !2912, file: !1, line: 219, type: !5)
!2922 = !DILocation(line: 219, column: 36, scope: !2912)
!2923 = !DILocalVariable(name: "ctx", scope: !2912, file: !1, line: 221, type: !2431)
!2924 = !DILocation(line: 221, column: 19, scope: !2912)
!2925 = !DILocation(line: 221, column: 25, scope: !2912)
!2926 = !DILocation(line: 221, column: 31, scope: !2912)
!2927 = !DILocation(line: 221, column: 36, scope: !2912)
!2928 = !DILocalVariable(name: "desc", scope: !2912, file: !1, line: 222, type: !2435)
!2929 = !DILocation(line: 222, column: 20, scope: !2912)
!2930 = !DILocalVariable(name: "ret", scope: !2912, file: !1, line: 223, type: !71)
!2931 = !DILocation(line: 223, column: 6, scope: !2912)
!2932 = !DILocation(line: 225, column: 30, scope: !2912)
!2933 = !DILocation(line: 225, column: 36, scope: !2912)
!2934 = !DILocation(line: 225, column: 44, scope: !2912)
!2935 = !DILocation(line: 225, column: 52, scope: !2912)
!2936 = !DILocation(line: 225, column: 9, scope: !2912)
!2937 = !DILocation(line: 225, column: 7, scope: !2912)
!2938 = !DILocation(line: 226, column: 13, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2912, file: !1, line: 226, column: 6)
!2940 = !DILocation(line: 226, column: 6, scope: !2939)
!2941 = !DILocation(line: 226, column: 6, scope: !2912)
!2942 = !DILocation(line: 227, column: 18, scope: !2939)
!2943 = !DILocation(line: 227, column: 10, scope: !2939)
!2944 = !DILocation(line: 227, column: 3, scope: !2939)
!2945 = !DILocation(line: 229, column: 6, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2912, file: !1, line: 229, column: 6)
!2947 = !DILocation(line: 229, column: 6, scope: !2912)
!2948 = !DILocation(line: 230, column: 28, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2946, file: !1, line: 229, column: 16)
!2950 = !DILocation(line: 230, column: 34, scope: !2949)
!2951 = !DILocation(line: 230, column: 9, scope: !2949)
!2952 = !DILocation(line: 230, column: 7, scope: !2949)
!2953 = !DILocation(line: 231, column: 7, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2949, file: !1, line: 231, column: 7)
!2955 = !DILocation(line: 231, column: 11, scope: !2954)
!2956 = !DILocation(line: 231, column: 7, scope: !2949)
!2957 = !DILocation(line: 232, column: 11, scope: !2954)
!2958 = !DILocation(line: 232, column: 4, scope: !2954)
!2959 = !DILocation(line: 233, column: 2, scope: !2949)
!2960 = !DILocation(line: 235, column: 6, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2912, file: !1, line: 235, column: 6)
!2962 = !DILocation(line: 235, column: 12, scope: !2961)
!2963 = !DILocation(line: 235, column: 18, scope: !2961)
!2964 = !DILocation(line: 235, column: 6, scope: !2912)
!2965 = !DILocation(line: 236, column: 27, scope: !2961)
!2966 = !DILocation(line: 236, column: 3, scope: !2961)
!2967 = !DILocation(line: 238, column: 17, scope: !2912)
!2968 = !DILocation(line: 238, column: 2, scope: !2912)
!2969 = !DILocation(line: 238, column: 7, scope: !2912)
!2970 = !DILocation(line: 238, column: 15, scope: !2912)
!2971 = !DILocation(line: 240, column: 2, scope: !2912)
!2972 = !DILocation(line: 241, column: 1, scope: !2912)
!2973 = distinct !DISubprogram(name: "mmc_can_gpio_ro", scope: !1, file: !1, line: 244, type: !2900, scopeLine: 245, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !127)
!2974 = !DILocalVariable(name: "host", arg: 1, scope: !2973, file: !1, line: 244, type: !83)
!2975 = !DILocation(line: 244, column: 39, scope: !2973)
!2976 = !DILocalVariable(name: "ctx", scope: !2973, file: !1, line: 246, type: !2431)
!2977 = !DILocation(line: 246, column: 19, scope: !2973)
!2978 = !DILocation(line: 246, column: 25, scope: !2973)
!2979 = !DILocation(line: 246, column: 31, scope: !2973)
!2980 = !DILocation(line: 246, column: 36, scope: !2973)
!2981 = !DILocation(line: 248, column: 9, scope: !2973)
!2982 = !DILocation(line: 248, column: 14, scope: !2973)
!2983 = !DILocation(line: 248, column: 2, scope: !2973)
!2984 = distinct !DISubprogram(name: "kobject_name", scope: !93, file: !93, line: 88, type: !2985, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !127)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!96, !2987}
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!2989 = !DILocalVariable(name: "kobj", arg: 1, scope: !2984, file: !93, line: 88, type: !2987)
!2990 = !DILocation(line: 88, column: 62, scope: !2984)
!2991 = !DILocation(line: 90, column: 9, scope: !2984)
!2992 = !DILocation(line: 90, column: 15, scope: !2984)
!2993 = !DILocation(line: 90, column: 2, scope: !2984)
!2994 = distinct !DISubprogram(name: "_msecs_to_jiffies", scope: !2662, file: !2662, line: 308, type: !2663, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !127)
!2995 = !DILocalVariable(name: "m", arg: 1, scope: !2994, file: !2662, line: 308, type: !2665)
!2996 = !DILocation(line: 308, column: 66, scope: !2994)
!2997 = !DILocation(line: 310, column: 10, scope: !2994)
!2998 = !DILocation(line: 310, column: 12, scope: !2994)
!2999 = !DILocation(line: 310, column: 34, scope: !2994)
!3000 = !DILocation(line: 310, column: 39, scope: !2994)
!3001 = !DILocation(line: 310, column: 2, scope: !2994)
