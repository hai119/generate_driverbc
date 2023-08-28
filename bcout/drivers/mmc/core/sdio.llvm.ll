; ModuleID = '../bcout/drivers/mmc/core/sdio.llvm.bc'
source_filename = "drivers/mmc/core/sdio.c"
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
%struct.vdso_image = type opaque
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
%struct.sdio_func = type { %struct.mmc_card*, %struct.device, void (%struct.sdio_func*)*, i32, i8, i16, i16, i32, i32, i32, i32, i8*, i8, i8, i32, i8**, %struct.sdio_func_tuple* }
%struct.sdio_func_tuple = type { %struct.sdio_func_tuple*, i8, i8, [0 x i8] }
%struct.mmc_part = type { i64, i32, [20 x i8], i8, i32 }
%struct.workqueue_struct = type opaque
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mmc_ctx = type { %struct.task_struct* }
%struct.mmc_slot = type { i32, i8, i8* }
%struct.mmc_bus_ops = type { void (%struct.mmc_host*)*, void (%struct.mmc_host*)*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}* }
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
%struct.mmc_fixup = type { i8*, i64, i64, i32, i16, i16, i16, i32, void (%struct.mmc_card*, i32)*, i32 }
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }

@.str = private unnamed_addr constant [24 x i8] c"drivers/mmc/core/sdio.c\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"\013%s: error %d whilst initialising SDIO card\0A\00", align 1
@mmc_sdio_ops = internal constant { void (%struct.mmc_host*)*, void (%struct.mmc_host*)*, i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)* } { void (%struct.mmc_host*)* @mmc_sdio_remove, void (%struct.mmc_host*)* @mmc_sdio_detect, i32 (%struct.mmc_host*)* @mmc_sdio_pre_suspend, i32 (%struct.mmc_host*)* @mmc_sdio_suspend, i32 (%struct.mmc_host*)* @mmc_sdio_resume, i32 (%struct.mmc_host*)* @mmc_sdio_runtime_suspend, i32 (%struct.mmc_host*)* @mmc_sdio_runtime_resume, i32 (%struct.mmc_host*)* @mmc_sdio_alive, i32 (%struct.mmc_host*)* null, i32 (%struct.mmc_host*)* @mmc_sdio_hw_reset, i32 (%struct.mmc_host*)* @mmc_sdio_sw_reset }, align 8, !dbg !0
@system_wq = external dso_local global %struct.workqueue_struct*, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"\014%s: SDIO_CCCR_IF is invalid: 0x%02x\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"\014%s: Skipping voltage switch\0A\00", align 1
@use_spi_crc = external dso_local global i8, align 1
@sdio_type = internal global %struct.device_type { i8* null, %struct.attribute_group** getelementptr inbounds ([2 x %struct.attribute_group*], [2 x %struct.attribute_group*]* @sdio_std_groups, i32 0, i32 0), i32 (%struct.device*, %struct.kobj_uevent_env*)* null, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)* null, void (%struct.device*)* null, %struct.dev_pm_ops* null }, align 8, !dbg !2474
@sdio_fixup_methods = internal constant [8 x %struct.mmc_fixup] [%struct.mmc_fixup { i8* null, i64 0, i64 -1, i32 -1, i16 -1, i16 4172, i16 -28570, i32 -1, void (%struct.mmc_card*, i32)* @add_quirk, i32 16 }, %struct.mmc_fixup { i8* null, i64 0, i64 -1, i32 -1, i16 -1, i16 4172, i16 -28570, i32 -1, void (%struct.mmc_card*, i32)* @add_quirk, i32 32 }, %struct.mmc_fixup { i8* null, i64 0, i64 -1, i32 -1, i16 -1, i16 151, i16 16502, i32 -1, void (%struct.mmc_card*, i32)* @add_quirk, i32 16 }, %struct.mmc_fixup { i8* null, i64 0, i64 -1, i32 -1, i16 -1, i16 151, i16 16502, i32 -1, void (%struct.mmc_card*, i32)* @add_quirk, i32 32 }, %struct.mmc_fixup { i8* null, i64 0, i64 -1, i32 -1, i16 -1, i16 32, i16 8832, i32 -1, void (%struct.mmc_card*, i32)* @add_quirk, i32 256 }, %struct.mmc_fixup { i8* null, i64 0, i64 -1, i32 -1, i16 -1, i16 735, i16 -28376, i32 -1, void (%struct.mmc_card*, i32)* @add_quirk, i32 2048 }, %struct.mmc_fixup { i8* null, i64 0, i64 -1, i32 -1, i16 -1, i16 735, i16 -28364, i32 -1, void (%struct.mmc_card*, i32)* @add_limit_rate_quirk, i32 150000000 }, %struct.mmc_fixup zeroinitializer], align 16, !dbg !2516
@sd_type = external dso_local global %struct.device_type, align 8
@.str.5 = private unnamed_addr constant [47 x i8] c"\013%s: Host failed to negotiate down from 3.3V\0A\00", align 1
@sdio_std_groups = internal global [2 x %struct.attribute_group*] [%struct.attribute_group* @sdio_std_group, %struct.attribute_group* null], align 16, !dbg !2476
@sdio_std_group = internal constant %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([10 x %struct.attribute*], [10 x %struct.attribute*]* @sdio_std_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !2479
@sdio_std_attrs = internal global [10 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_vendor, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_device, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_revision, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_info1, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_info2, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_info3, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_info4, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_ocr, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_rca, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !2481
@dev_attr_vendor = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @mmc_vendor_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2486
@dev_attr_device = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @mmc_device_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2500
@dev_attr_revision = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @mmc_revision_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2502
@dev_attr_info1 = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @info1_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2504
@dev_attr_info2 = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @info2_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2506
@dev_attr_info3 = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @info3_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2508
@dev_attr_info4 = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @info4_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2510
@dev_attr_ocr = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @mmc_ocr_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2512
@dev_attr_rca = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @mmc_rca_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2514
@.str.6 = private unnamed_addr constant [7 x i8] c"vendor\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"0x%04x\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"revision\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"%u.%u\0A\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"info1\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"info2\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"info3\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"info4\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"ocr\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"0x%08x\0A\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"rca\00", align 1
@.str.19 = private unnamed_addr constant [46 x i8] c"\013%s: unrecognised CCCR structure version %d\0A\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @mmc_attach_sdio(%struct.mmc_host* %host) #0 !dbg !2542 {
entry:
  %retval = alloca i32, align 4
  %host.addr = alloca %struct.mmc_host*, align 8
  %err = alloca i32, align 4
  %i = alloca i32, align 4
  %funcs = alloca i32, align 4
  %ocr = alloca i32, align 4
  %rocr = alloca i32, align 4
  %card = alloca %struct.mmc_card*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.mmc_host* %host, %struct.mmc_host** %host.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_host** %host.addr, metadata !2543, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.declare(metadata i32* %err, metadata !2545, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2547, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.declare(metadata i32* %funcs, metadata !2549, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.declare(metadata i32* %ocr, metadata !2551, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.declare(metadata i32* %rocr, metadata !2553, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %card, metadata !2555, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !2557, metadata !DIExpression()), !dbg !2559
  %0 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2559
  %claimed = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %0, i32 0, i32 30, !dbg !2559
  %bf.load = load i16, i16* %claimed, align 32, !dbg !2559
  %bf.lshr = lshr i16 %bf.load, 1, !dbg !2559
  %bf.clear = and i16 %bf.lshr, 1, !dbg !2559
  %bf.cast = zext i16 %bf.clear to i32, !dbg !2559
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !2559
  %lnot = xor i1 %tobool, true, !dbg !2559
  %lnot1 = xor i1 %lnot, true, !dbg !2559
  %lnot2 = xor i1 %lnot1, true, !dbg !2559
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2559
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !2559
  %1 = load i32, i32* %__ret_warn_on, align 4, !dbg !2560
  %tobool3 = icmp ne i32 %1, 0, !dbg !2560
  %lnot4 = xor i1 %tobool3, true, !dbg !2560
  %lnot6 = xor i1 %lnot4, true, !dbg !2560
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !2560
  %conv = sext i32 %lnot.ext7 to i64, !dbg !2560
  %tobool8 = icmp ne i64 %conv, 0, !dbg !2560
  br i1 %tobool8, label %if.then, label %if.end, !dbg !2559

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2560

do.body:                                          ; preds = %if.then
  br label %do.body9, !dbg !2562

do.body9:                                         ; preds = %do.body
  br label %do.end, !dbg !2564

do.end:                                           ; preds = %do.body9
  br label %do.body10, !dbg !2562

do.body10:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 1174, i32 2305, i64 12) #4, !dbg !2566, !srcloc !2568
  br label %do.end11, !dbg !2566

do.end11:                                         ; preds = %do.body10
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 173) #4, !dbg !2569, !srcloc !2571
  br label %do.body12, !dbg !2562

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !2572

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !2562

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !2562

if.end:                                           ; preds = %do.end14, %entry
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !2559
  %tobool15 = icmp ne i32 %2, 0, !dbg !2559
  %lnot16 = xor i1 %tobool15, true, !dbg !2559
  %lnot18 = xor i1 %lnot16, true, !dbg !2559
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !2559
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !2559
  store i64 %conv20, i64* %tmp, align 8, !dbg !2560
  %3 = load i64, i64* %tmp, align 8, !dbg !2559
  %4 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2574
  %call = call i32 @mmc_send_io_op_cond(%struct.mmc_host* %4, i32 0, i32* %ocr) #5, !dbg !2575
  store i32 %call, i32* %err, align 4, !dbg !2576
  %5 = load i32, i32* %err, align 4, !dbg !2577
  %tobool21 = icmp ne i32 %5, 0, !dbg !2577
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !2579

if.then22:                                        ; preds = %if.end
  %6 = load i32, i32* %err, align 4, !dbg !2580
  store i32 %6, i32* %retval, align 4, !dbg !2581
  br label %return, !dbg !2581

if.end23:                                         ; preds = %if.end
  %7 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2582
  call void @mmc_attach_bus(%struct.mmc_host* %7, %struct.mmc_bus_ops* bitcast ({ void (%struct.mmc_host*)*, void (%struct.mmc_host*)*, i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)* }* @mmc_sdio_ops to %struct.mmc_bus_ops*)) #5, !dbg !2583
  %8 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2584
  %ocr_avail_sdio = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %8, i32 0, i32 9, !dbg !2586
  %9 = load i32, i32* %ocr_avail_sdio, align 8, !dbg !2586
  %tobool24 = icmp ne i32 %9, 0, !dbg !2584
  br i1 %tobool24, label %if.then25, label %if.end27, !dbg !2587

if.then25:                                        ; preds = %if.end23
  %10 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2588
  %ocr_avail_sdio26 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %10, i32 0, i32 9, !dbg !2589
  %11 = load i32, i32* %ocr_avail_sdio26, align 8, !dbg !2589
  %12 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2590
  %ocr_avail = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %12, i32 0, i32 8, !dbg !2591
  store i32 %11, i32* %ocr_avail, align 4, !dbg !2592
  br label %if.end27, !dbg !2590

if.end27:                                         ; preds = %if.then25, %if.end23
  %13 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2593
  %14 = load i32, i32* %ocr, align 4, !dbg !2594
  %call28 = call i32 @mmc_select_voltage(%struct.mmc_host* %13, i32 %14) #5, !dbg !2595
  store i32 %call28, i32* %rocr, align 4, !dbg !2596
  %15 = load i32, i32* %rocr, align 4, !dbg !2597
  %tobool29 = icmp ne i32 %15, 0, !dbg !2597
  br i1 %tobool29, label %if.end31, label %if.then30, !dbg !2599

if.then30:                                        ; preds = %if.end27
  store i32 -22, i32* %err, align 4, !dbg !2600
  br label %err88, !dbg !2602

if.end31:                                         ; preds = %if.end27
  %16 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2603
  %17 = load i32, i32* %rocr, align 4, !dbg !2604
  %call32 = call i32 @mmc_sdio_init_card(%struct.mmc_host* %16, i32 %17, %struct.mmc_card* null) #5, !dbg !2605
  store i32 %call32, i32* %err, align 4, !dbg !2606
  %18 = load i32, i32* %err, align 4, !dbg !2607
  %tobool33 = icmp ne i32 %18, 0, !dbg !2607
  br i1 %tobool33, label %if.then34, label %if.end35, !dbg !2609

if.then34:                                        ; preds = %if.end31
  br label %err88, !dbg !2610

if.end35:                                         ; preds = %if.end31
  %19 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2611
  %card36 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %19, i32 0, i32 38, !dbg !2612
  %20 = load %struct.mmc_card*, %struct.mmc_card** %card36, align 8, !dbg !2612
  store %struct.mmc_card* %20, %struct.mmc_card** %card, align 8, !dbg !2613
  %21 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2614
  %caps = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %21, i32 0, i32 17, !dbg !2616
  %22 = load i32, i32* %caps, align 4, !dbg !2616
  %and = and i32 %22, 16384, !dbg !2617
  %tobool37 = icmp ne i32 %and, 0, !dbg !2617
  br i1 %tobool37, label %if.then38, label %if.end45, !dbg !2618

if.then38:                                        ; preds = %if.end35
  %23 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !2619
  %dev = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %23, i32 0, i32 1, !dbg !2621
  call void @pm_runtime_get_noresume(%struct.device* %dev) #5, !dbg !2622
  %24 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !2623
  %dev39 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %24, i32 0, i32 1, !dbg !2624
  %call40 = call i32 @pm_runtime_set_active(%struct.device* %dev39) #5, !dbg !2625
  store i32 %call40, i32* %err, align 4, !dbg !2626
  %25 = load i32, i32* %err, align 4, !dbg !2627
  %tobool41 = icmp ne i32 %25, 0, !dbg !2627
  br i1 %tobool41, label %if.then42, label %if.end43, !dbg !2629

if.then42:                                        ; preds = %if.then38
  br label %remove, !dbg !2630

if.end43:                                         ; preds = %if.then38
  %26 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !2631
  %dev44 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %26, i32 0, i32 1, !dbg !2632
  call void @pm_runtime_enable(%struct.device* %dev44) #5, !dbg !2633
  br label %if.end45, !dbg !2634

if.end45:                                         ; preds = %if.end43, %if.end35
  %27 = load i32, i32* %ocr, align 4, !dbg !2635
  %and46 = and i32 %27, 1879048192, !dbg !2636
  %shr = lshr i32 %and46, 28, !dbg !2637
  store i32 %shr, i32* %funcs, align 4, !dbg !2638
  %28 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !2639
  %sdio_funcs = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %28, i32 0, i32 25, !dbg !2640
  store i32 0, i32* %sdio_funcs, align 8, !dbg !2641
  store i32 0, i32* %i, align 4, !dbg !2642
  br label %for.cond, !dbg !2644

for.cond:                                         ; preds = %for.inc, %if.end45
  %29 = load i32, i32* %i, align 4, !dbg !2645
  %30 = load i32, i32* %funcs, align 4, !dbg !2647
  %cmp = icmp slt i32 %29, %30, !dbg !2648
  br i1 %cmp, label %for.body, label %for.end, !dbg !2649

for.body:                                         ; preds = %for.cond
  %31 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2650
  %card48 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %31, i32 0, i32 38, !dbg !2652
  %32 = load %struct.mmc_card*, %struct.mmc_card** %card48, align 8, !dbg !2652
  %33 = load i32, i32* %i, align 4, !dbg !2653
  %add = add i32 %33, 1, !dbg !2654
  %call49 = call i32 @sdio_init_func(%struct.mmc_card* %32, i32 %add) #5, !dbg !2655
  store i32 %call49, i32* %err, align 4, !dbg !2656
  %34 = load i32, i32* %err, align 4, !dbg !2657
  %tobool50 = icmp ne i32 %34, 0, !dbg !2657
  br i1 %tobool50, label %if.then51, label %if.end52, !dbg !2659

if.then51:                                        ; preds = %for.body
  br label %remove, !dbg !2660

if.end52:                                         ; preds = %for.body
  %35 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2661
  %caps53 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %35, i32 0, i32 17, !dbg !2663
  %36 = load i32, i32* %caps53, align 4, !dbg !2663
  %and54 = and i32 %36, 16384, !dbg !2664
  %tobool55 = icmp ne i32 %and54, 0, !dbg !2664
  br i1 %tobool55, label %if.then56, label %if.end58, !dbg !2665

if.then56:                                        ; preds = %if.end52
  %37 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !2666
  %sdio_func = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %37, i32 0, i32 29, !dbg !2667
  %38 = load i32, i32* %i, align 4, !dbg !2668
  %idxprom = sext i32 %38 to i64, !dbg !2666
  %arrayidx = getelementptr [7 x %struct.sdio_func*], [7 x %struct.sdio_func*]* %sdio_func, i64 0, i64 %idxprom, !dbg !2666
  %39 = load %struct.sdio_func*, %struct.sdio_func** %arrayidx, align 8, !dbg !2666
  %dev57 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %39, i32 0, i32 1, !dbg !2669
  call void @pm_runtime_enable(%struct.device* %dev57) #5, !dbg !2670
  br label %if.end58, !dbg !2670

if.end58:                                         ; preds = %if.then56, %if.end52
  br label %for.inc, !dbg !2671

for.inc:                                          ; preds = %if.end58
  %40 = load i32, i32* %i, align 4, !dbg !2672
  %inc = add i32 %40, 1, !dbg !2672
  store i32 %inc, i32* %i, align 4, !dbg !2672
  %41 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !2673
  %sdio_funcs59 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %41, i32 0, i32 25, !dbg !2674
  %42 = load i32, i32* %sdio_funcs59, align 8, !dbg !2675
  %inc60 = add i32 %42, 1, !dbg !2675
  store i32 %inc60, i32* %sdio_funcs59, align 8, !dbg !2675
  br label %for.cond, !dbg !2676, !llvm.loop !2677

for.end:                                          ; preds = %for.cond
  %43 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2679
  call void @mmc_release_host(%struct.mmc_host* %43) #5, !dbg !2680
  %44 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2681
  %card61 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %44, i32 0, i32 38, !dbg !2682
  %45 = load %struct.mmc_card*, %struct.mmc_card** %card61, align 8, !dbg !2682
  %call62 = call i32 @mmc_add_card(%struct.mmc_card* %45) #5, !dbg !2683
  store i32 %call62, i32* %err, align 4, !dbg !2684
  %46 = load i32, i32* %err, align 4, !dbg !2685
  %tobool63 = icmp ne i32 %46, 0, !dbg !2685
  br i1 %tobool63, label %if.then64, label %if.end65, !dbg !2687

if.then64:                                        ; preds = %for.end
  br label %remove_added, !dbg !2688

if.end65:                                         ; preds = %for.end
  store i32 0, i32* %i, align 4, !dbg !2689
  br label %for.cond66, !dbg !2691

for.cond66:                                       ; preds = %for.inc78, %if.end65
  %47 = load i32, i32* %i, align 4, !dbg !2692
  %48 = load i32, i32* %funcs, align 4, !dbg !2694
  %cmp67 = icmp slt i32 %47, %48, !dbg !2695
  br i1 %cmp67, label %for.body69, label %for.end80, !dbg !2696

for.body69:                                       ; preds = %for.cond66
  %49 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2697
  %card70 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %49, i32 0, i32 38, !dbg !2699
  %50 = load %struct.mmc_card*, %struct.mmc_card** %card70, align 8, !dbg !2699
  %sdio_func71 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %50, i32 0, i32 29, !dbg !2700
  %51 = load i32, i32* %i, align 4, !dbg !2701
  %idxprom72 = sext i32 %51 to i64, !dbg !2697
  %arrayidx73 = getelementptr [7 x %struct.sdio_func*], [7 x %struct.sdio_func*]* %sdio_func71, i64 0, i64 %idxprom72, !dbg !2697
  %52 = load %struct.sdio_func*, %struct.sdio_func** %arrayidx73, align 8, !dbg !2697
  %call74 = call i32 @sdio_add_func(%struct.sdio_func* %52) #5, !dbg !2702
  store i32 %call74, i32* %err, align 4, !dbg !2703
  %53 = load i32, i32* %err, align 4, !dbg !2704
  %tobool75 = icmp ne i32 %53, 0, !dbg !2704
  br i1 %tobool75, label %if.then76, label %if.end77, !dbg !2706

if.then76:                                        ; preds = %for.body69
  br label %remove_added, !dbg !2707

if.end77:                                         ; preds = %for.body69
  br label %for.inc78, !dbg !2708

for.inc78:                                        ; preds = %if.end77
  %54 = load i32, i32* %i, align 4, !dbg !2709
  %inc79 = add i32 %54, 1, !dbg !2709
  store i32 %inc79, i32* %i, align 4, !dbg !2709
  br label %for.cond66, !dbg !2710, !llvm.loop !2711

for.end80:                                        ; preds = %for.cond66
  %55 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2713
  %caps81 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %55, i32 0, i32 17, !dbg !2715
  %56 = load i32, i32* %caps81, align 4, !dbg !2715
  %and82 = and i32 %56, 16384, !dbg !2716
  %tobool83 = icmp ne i32 %and82, 0, !dbg !2716
  br i1 %tobool83, label %if.then84, label %if.end87, !dbg !2717

if.then84:                                        ; preds = %for.end80
  %57 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !2718
  %dev85 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %57, i32 0, i32 1, !dbg !2719
  %call86 = call i32 @pm_runtime_put(%struct.device* %dev85) #5, !dbg !2720
  br label %if.end87, !dbg !2720

if.end87:                                         ; preds = %if.then84, %for.end80
  %58 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2721
  call void @mmc_claim_host(%struct.mmc_host* %58) #5, !dbg !2722
  store i32 0, i32* %retval, align 4, !dbg !2723
  br label %return, !dbg !2723

remove:                                           ; preds = %if.then51, %if.then42
  call void @llvm.dbg.label(metadata !2724), !dbg !2725
  %59 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2726
  call void @mmc_release_host(%struct.mmc_host* %59) #5, !dbg !2727
  br label %remove_added, !dbg !2727

remove_added:                                     ; preds = %remove, %if.then76, %if.then64
  call void @llvm.dbg.label(metadata !2728), !dbg !2729
  %60 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2730
  call void @mmc_sdio_remove(%struct.mmc_host* %60) #5, !dbg !2731
  %61 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2732
  call void @mmc_claim_host(%struct.mmc_host* %61) #5, !dbg !2733
  br label %err88, !dbg !2733

err88:                                            ; preds = %remove_added, %if.then34, %if.then30
  call void @llvm.dbg.label(metadata !2734), !dbg !2735
  %62 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2736
  call void @mmc_detach_bus(%struct.mmc_host* %62) #5, !dbg !2737
  %63 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2738
  %class_dev = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %63, i32 0, i32 1, !dbg !2738
  %call89 = call i8* @dev_name(%struct.device* %class_dev) #5, !dbg !2738
  %64 = load i32, i32* %err, align 4, !dbg !2738
  %call90 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8* %call89, i32 %64) #6, !dbg !2738
  %65 = load i32, i32* %err, align 4, !dbg !2739
  store i32 %65, i32* %retval, align 4, !dbg !2740
  br label %return, !dbg !2740

return:                                           ; preds = %err88, %if.end87, %if.then22
  %66 = load i32, i32* %retval, align 4, !dbg !2741
  ret i32 %66, !dbg !2741
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @mmc_send_io_op_cond(%struct.mmc_host*, i32, i32*) #2

; Function Attrs: noredzone
declare dso_local void @mmc_attach_bus(%struct.mmc_host*, %struct.mmc_bus_ops*) #2

; Function Attrs: noredzone
declare dso_local i32 @mmc_select_voltage(%struct.mmc_host*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mmc_sdio_init_card(%struct.mmc_host* %host, i32 %ocr, %struct.mmc_card* %oldcard) #0 !dbg !2742 {
entry:
  %retval = alloca i32, align 4
  %host.addr = alloca %struct.mmc_host*, align 8
  %ocr.addr = alloca i32, align 4
  %oldcard.addr = alloca %struct.mmc_card*, align 8
  %card = alloca %struct.mmc_card*, align 8
  %err = alloca i32, align 4
  %retries = alloca i32, align 4
  %rocr = alloca i32, align 4
  %ocr_card = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %tmp250 = alloca i32, align 4
  store %struct.mmc_host* %host, %struct.mmc_host** %host.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_host** %host.addr, metadata !2745, metadata !DIExpression()), !dbg !2746
  store i32 %ocr, i32* %ocr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ocr.addr, metadata !2747, metadata !DIExpression()), !dbg !2748
  store %struct.mmc_card* %oldcard, %struct.mmc_card** %oldcard.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %oldcard.addr, metadata !2749, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %card, metadata !2751, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.declare(metadata i32* %err, metadata !2753, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.declare(metadata i32* %retries, metadata !2755, metadata !DIExpression()), !dbg !2756
  store i32 10, i32* %retries, align 4, !dbg !2756
  call void @llvm.dbg.declare(metadata i32* %rocr, metadata !2757, metadata !DIExpression()), !dbg !2758
  store i32 0, i32* %rocr, align 4, !dbg !2758
  call void @llvm.dbg.declare(metadata i32* %ocr_card, metadata !2759, metadata !DIExpression()), !dbg !2760
  %0 = load i32, i32* %ocr.addr, align 4, !dbg !2761
  store i32 %0, i32* %ocr_card, align 4, !dbg !2760
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !2762, metadata !DIExpression()), !dbg !2764
  %1 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2764
  %claimed = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %1, i32 0, i32 30, !dbg !2764
  %bf.load = load i16, i16* %claimed, align 32, !dbg !2764
  %bf.lshr = lshr i16 %bf.load, 1, !dbg !2764
  %bf.clear = and i16 %bf.lshr, 1, !dbg !2764
  %bf.cast = zext i16 %bf.clear to i32, !dbg !2764
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !2764
  %lnot = xor i1 %tobool, true, !dbg !2764
  %lnot1 = xor i1 %lnot, true, !dbg !2764
  %lnot2 = xor i1 %lnot1, true, !dbg !2764
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2764
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !2764
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !2765
  %tobool3 = icmp ne i32 %2, 0, !dbg !2765
  %lnot4 = xor i1 %tobool3, true, !dbg !2765
  %lnot6 = xor i1 %lnot4, true, !dbg !2765
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !2765
  %conv = sext i32 %lnot.ext7 to i64, !dbg !2765
  %tobool8 = icmp ne i64 %conv, 0, !dbg !2765
  br i1 %tobool8, label %if.then, label %if.end, !dbg !2764

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2765

do.body:                                          ; preds = %if.then
  br label %do.body9, !dbg !2767

do.body9:                                         ; preds = %do.body
  br label %do.end, !dbg !2769

do.end:                                           ; preds = %do.body9
  br label %do.body10, !dbg !2767

do.body10:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 652, i32 2305, i64 12) #4, !dbg !2771, !srcloc !2773
  br label %do.end11, !dbg !2771

do.end11:                                         ; preds = %do.body10
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !dbg !2774, !srcloc !2776
  br label %do.body12, !dbg !2767

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !2777

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !2767

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !2767

if.end:                                           ; preds = %do.end14, %entry
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !2764
  %tobool15 = icmp ne i32 %3, 0, !dbg !2764
  %lnot16 = xor i1 %tobool15, true, !dbg !2764
  %lnot18 = xor i1 %lnot16, true, !dbg !2764
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !2764
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !2764
  store i64 %conv20, i64* %tmp, align 8, !dbg !2765
  %4 = load i64, i64* %tmp, align 8, !dbg !2764
  %5 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2779
  %call = call i32 @mmc_host_uhs(%struct.mmc_host* %5) #5, !dbg !2781
  %tobool21 = icmp ne i32 %call, 0, !dbg !2781
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !2782

if.then22:                                        ; preds = %if.end
  %6 = load i32, i32* %ocr.addr, align 4, !dbg !2783
  %or = or i32 %6, 16777216, !dbg !2783
  store i32 %or, i32* %ocr.addr, align 4, !dbg !2783
  br label %if.end23, !dbg !2784

if.end23:                                         ; preds = %if.then22, %if.end
  br label %try_again, !dbg !2785

try_again:                                        ; preds = %if.then156, %if.then90, %if.end23
  call void @llvm.dbg.label(metadata !2786), !dbg !2787
  %7 = load i32, i32* %retries, align 4, !dbg !2788
  %tobool24 = icmp ne i32 %7, 0, !dbg !2788
  br i1 %tobool24, label %if.end28, label %if.then25, !dbg !2790

if.then25:                                        ; preds = %try_again
  %8 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2791
  %class_dev = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %8, i32 0, i32 1, !dbg !2791
  %call26 = call i8* @dev_name(%struct.device* %class_dev) #5, !dbg !2791
  %call27 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %call26) #6, !dbg !2791
  %9 = load i32, i32* %ocr.addr, align 4, !dbg !2793
  %and = and i32 %9, -16777217, !dbg !2793
  store i32 %and, i32* %ocr.addr, align 4, !dbg !2793
  br label %if.end28, !dbg !2794

if.end28:                                         ; preds = %if.then25, %try_again
  %10 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2795
  %11 = load i32, i32* %ocr.addr, align 4, !dbg !2796
  %call29 = call i32 @mmc_send_io_op_cond(%struct.mmc_host* %10, i32 %11, i32* %rocr) #5, !dbg !2797
  store i32 %call29, i32* %err, align 4, !dbg !2798
  %12 = load i32, i32* %err, align 4, !dbg !2799
  %tobool30 = icmp ne i32 %12, 0, !dbg !2799
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !2801

if.then31:                                        ; preds = %if.end28
  %13 = load i32, i32* %err, align 4, !dbg !2802
  store i32 %13, i32* %retval, align 4, !dbg !2803
  br label %return, !dbg !2803

if.end32:                                         ; preds = %if.end28
  %14 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2804
  %caps = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %14, i32 0, i32 17, !dbg !2804
  %15 = load i32, i32* %caps, align 4, !dbg !2804
  %and33 = and i32 %15, 16, !dbg !2804
  %tobool34 = icmp ne i32 %and33, 0, !dbg !2804
  br i1 %tobool34, label %if.then35, label %if.end42, !dbg !2806

if.then35:                                        ; preds = %if.end32
  %16 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2807
  %17 = load i8, i8* @use_spi_crc, align 1, !dbg !2809
  %tobool36 = trunc i8 %17 to i1, !dbg !2809
  %conv37 = zext i1 %tobool36 to i32, !dbg !2809
  %call38 = call i32 @mmc_spi_set_crc(%struct.mmc_host* %16, i32 %conv37) #5, !dbg !2810
  store i32 %call38, i32* %err, align 4, !dbg !2811
  %18 = load i32, i32* %err, align 4, !dbg !2812
  %tobool39 = icmp ne i32 %18, 0, !dbg !2812
  br i1 %tobool39, label %if.then40, label %if.end41, !dbg !2814

if.then40:                                        ; preds = %if.then35
  %19 = load i32, i32* %err, align 4, !dbg !2815
  store i32 %19, i32* %retval, align 4, !dbg !2816
  br label %return, !dbg !2816

if.end41:                                         ; preds = %if.then35
  br label %if.end42, !dbg !2817

if.end42:                                         ; preds = %if.end41, %if.end32
  %20 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2818
  %call43 = call %struct.mmc_card* @mmc_alloc_card(%struct.mmc_host* %20, %struct.device_type* @sdio_type) #5, !dbg !2819
  store %struct.mmc_card* %call43, %struct.mmc_card** %card, align 8, !dbg !2820
  %21 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !2821
  %22 = bitcast %struct.mmc_card* %21 to i8*, !dbg !2821
  %call44 = call zeroext i1 @IS_ERR(i8* %22) #5, !dbg !2823
  br i1 %call44, label %if.then45, label %if.end48, !dbg !2824

if.then45:                                        ; preds = %if.end42
  %23 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !2825
  %24 = bitcast %struct.mmc_card* %23 to i8*, !dbg !2825
  %call46 = call i64 @PTR_ERR(i8* %24) #5, !dbg !2826
  %conv47 = trunc i64 %call46 to i32, !dbg !2826
  store i32 %conv47, i32* %retval, align 4, !dbg !2827
  br label %return, !dbg !2827

if.end48:                                         ; preds = %if.end42
  %25 = load i32, i32* %rocr, align 4, !dbg !2828
  %and49 = and i32 %25, 134217728, !dbg !2830
  %tobool50 = icmp ne i32 %and49, 0, !dbg !2830
  br i1 %tobool50, label %land.lhs.true, label %if.else, !dbg !2831

land.lhs.true:                                    ; preds = %if.end48
  %26 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2832
  %27 = load i32, i32* %ocr.addr, align 4, !dbg !2833
  %28 = load i32, i32* %rocr, align 4, !dbg !2834
  %and51 = and i32 %27, %28, !dbg !2835
  %29 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !2836
  %raw_cid = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %29, i32 0, i32 15, !dbg !2837
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %raw_cid, i64 0, i64 0, !dbg !2836
  %call52 = call i32 @mmc_sd_get_cid(%struct.mmc_host* %26, i32 %and51, i32* %arraydecay, i32* null) #5, !dbg !2838
  %cmp = icmp eq i32 %call52, 0, !dbg !2839
  br i1 %cmp, label %if.then54, label %if.else, !dbg !2840

if.then54:                                        ; preds = %land.lhs.true
  %30 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !2841
  %type = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %30, i32 0, i32 4, !dbg !2843
  store i32 3, i32* %type, align 8, !dbg !2844
  %31 = load %struct.mmc_card*, %struct.mmc_card** %oldcard.addr, align 8, !dbg !2845
  %tobool55 = icmp ne %struct.mmc_card* %31, null, !dbg !2845
  br i1 %tobool55, label %land.lhs.true56, label %if.end68, !dbg !2847

land.lhs.true56:                                  ; preds = %if.then54
  %32 = load %struct.mmc_card*, %struct.mmc_card** %oldcard.addr, align 8, !dbg !2848
  %type57 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %32, i32 0, i32 4, !dbg !2849
  %33 = load i32, i32* %type57, align 8, !dbg !2849
  %cmp58 = icmp ne i32 %33, 3, !dbg !2850
  br i1 %cmp58, label %if.then67, label %lor.lhs.false, !dbg !2851

lor.lhs.false:                                    ; preds = %land.lhs.true56
  %34 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !2852
  %raw_cid60 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %34, i32 0, i32 15, !dbg !2853
  %arraydecay61 = getelementptr inbounds [4 x i32], [4 x i32]* %raw_cid60, i64 0, i64 0, !dbg !2852
  %35 = bitcast i32* %arraydecay61 to i8*, !dbg !2852
  %36 = load %struct.mmc_card*, %struct.mmc_card** %oldcard.addr, align 8, !dbg !2854
  %raw_cid62 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %36, i32 0, i32 15, !dbg !2855
  %arraydecay63 = getelementptr inbounds [4 x i32], [4 x i32]* %raw_cid62, i64 0, i64 0, !dbg !2854
  %37 = bitcast i32* %arraydecay63 to i8*, !dbg !2854
  %call64 = call i32 @memcmp(i8* %35, i8* %37, i64 16) #5, !dbg !2856
  %cmp65 = icmp ne i32 %call64, 0, !dbg !2857
  br i1 %cmp65, label %if.then67, label %if.end68, !dbg !2858

if.then67:                                        ; preds = %lor.lhs.false, %land.lhs.true56
  store i32 -2, i32* %err, align 4, !dbg !2859
  br label %mismatch, !dbg !2861

if.end68:                                         ; preds = %lor.lhs.false, %if.then54
  br label %if.end77, !dbg !2862

if.else:                                          ; preds = %land.lhs.true, %if.end48
  %38 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !2863
  %type69 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %38, i32 0, i32 4, !dbg !2865
  store i32 2, i32* %type69, align 8, !dbg !2866
  %39 = load %struct.mmc_card*, %struct.mmc_card** %oldcard.addr, align 8, !dbg !2867
  %tobool70 = icmp ne %struct.mmc_card* %39, null, !dbg !2867
  br i1 %tobool70, label %land.lhs.true71, label %if.end76, !dbg !2869

land.lhs.true71:                                  ; preds = %if.else
  %40 = load %struct.mmc_card*, %struct.mmc_card** %oldcard.addr, align 8, !dbg !2870
  %type72 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %40, i32 0, i32 4, !dbg !2871
  %41 = load i32, i32* %type72, align 8, !dbg !2871
  %cmp73 = icmp ne i32 %41, 2, !dbg !2872
  br i1 %cmp73, label %if.then75, label %if.end76, !dbg !2873

if.then75:                                        ; preds = %land.lhs.true71
  store i32 -2, i32* %err, align 4, !dbg !2874
  br label %mismatch, !dbg !2876

if.end76:                                         ; preds = %land.lhs.true71, %if.else
  br label %if.end77

if.end77:                                         ; preds = %if.end76, %if.end68
  %42 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2877
  %ops = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %42, i32 0, i32 3, !dbg !2879
  %43 = load %struct.mmc_host_ops*, %struct.mmc_host_ops** %ops, align 8, !dbg !2879
  %init_card = getelementptr inbounds %struct.mmc_host_ops, %struct.mmc_host_ops* %43, i32 0, i32 9, !dbg !2880
  %44 = load void (%struct.mmc_host*, %struct.mmc_card*)*, void (%struct.mmc_host*, %struct.mmc_card*)** %init_card, align 8, !dbg !2880
  %tobool78 = icmp ne void (%struct.mmc_host*, %struct.mmc_card*)* %44, null, !dbg !2877
  br i1 %tobool78, label %if.then79, label %if.end82, !dbg !2881

if.then79:                                        ; preds = %if.end77
  %45 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2882
  %ops80 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %45, i32 0, i32 3, !dbg !2883
  %46 = load %struct.mmc_host_ops*, %struct.mmc_host_ops** %ops80, align 8, !dbg !2883
  %init_card81 = getelementptr inbounds %struct.mmc_host_ops, %struct.mmc_host_ops* %46, i32 0, i32 9, !dbg !2884
  %47 = load void (%struct.mmc_host*, %struct.mmc_card*)*, void (%struct.mmc_host*, %struct.mmc_card*)** %init_card81, align 8, !dbg !2884
  %48 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2885
  %49 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !2886
  call void %47(%struct.mmc_host* %48, %struct.mmc_card* %49) #5, !dbg !2882
  br label %if.end82, !dbg !2882

if.end82:                                         ; preds = %if.then79, %if.end77
  %50 = load i32, i32* %rocr, align 4, !dbg !2887
  %51 = load i32, i32* %ocr.addr, align 4, !dbg !2889
  %and83 = and i32 %50, %51, !dbg !2890
  %and84 = and i32 %and83, 16777216, !dbg !2891
  %tobool85 = icmp ne i32 %and84, 0, !dbg !2891
  br i1 %tobool85, label %if.then86, label %if.end98, !dbg !2892

if.then86:                                        ; preds = %if.end82
  %52 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2893
  %53 = load i32, i32* %ocr_card, align 4, !dbg !2895
  %call87 = call i32 @mmc_set_uhs_voltage(%struct.mmc_host* %52, i32 %53) #5, !dbg !2896
  store i32 %call87, i32* %err, align 4, !dbg !2897
  %54 = load i32, i32* %err, align 4, !dbg !2898
  %cmp88 = icmp eq i32 %54, -11, !dbg !2900
  br i1 %cmp88, label %if.then90, label %if.else92, !dbg !2901

if.then90:                                        ; preds = %if.then86
  %55 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2902
  %56 = load i32, i32* %ocr_card, align 4, !dbg !2904
  %57 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !2905
  %call91 = call i32 @mmc_sdio_pre_init(%struct.mmc_host* %55, i32 %56, %struct.mmc_card* %57) #5, !dbg !2906
  %58 = load i32, i32* %retries, align 4, !dbg !2907
  %dec = add i32 %58, -1, !dbg !2907
  store i32 %dec, i32* %retries, align 4, !dbg !2907
  br label %try_again, !dbg !2908

if.else92:                                        ; preds = %if.then86
  %59 = load i32, i32* %err, align 4, !dbg !2909
  %tobool93 = icmp ne i32 %59, 0, !dbg !2909
  br i1 %tobool93, label %if.then94, label %if.end96, !dbg !2911

if.then94:                                        ; preds = %if.else92
  %60 = load i32, i32* %ocr.addr, align 4, !dbg !2912
  %and95 = and i32 %60, -16777217, !dbg !2912
  store i32 %and95, i32* %ocr.addr, align 4, !dbg !2912
  br label %if.end96, !dbg !2914

if.end96:                                         ; preds = %if.then94, %if.else92
  br label %if.end97

if.end97:                                         ; preds = %if.end96
  br label %if.end98, !dbg !2915

if.end98:                                         ; preds = %if.end97, %if.end82
  %61 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2916
  %caps99 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %61, i32 0, i32 17, !dbg !2916
  %62 = load i32, i32* %caps99, align 4, !dbg !2916
  %and100 = and i32 %62, 16, !dbg !2916
  %tobool101 = icmp ne i32 %and100, 0, !dbg !2916
  br i1 %tobool101, label %if.end112, label %if.then102, !dbg !2918

if.then102:                                       ; preds = %if.end98
  %63 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2919
  %64 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !2921
  %rca = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %64, i32 0, i32 3, !dbg !2922
  %call103 = call i32 @mmc_send_relative_addr(%struct.mmc_host* %63, i32* %rca) #5, !dbg !2923
  store i32 %call103, i32* %err, align 4, !dbg !2924
  %65 = load i32, i32* %err, align 4, !dbg !2925
  %tobool104 = icmp ne i32 %65, 0, !dbg !2925
  br i1 %tobool104, label %if.then105, label %if.end106, !dbg !2927

if.then105:                                       ; preds = %if.then102
  br label %remove, !dbg !2928

if.end106:                                        ; preds = %if.then102
  %66 = load %struct.mmc_card*, %struct.mmc_card** %oldcard.addr, align 8, !dbg !2929
  %tobool107 = icmp ne %struct.mmc_card* %66, null, !dbg !2929
  br i1 %tobool107, label %if.then108, label %if.end111, !dbg !2931

if.then108:                                       ; preds = %if.end106
  %67 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !2932
  %rca109 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %67, i32 0, i32 3, !dbg !2933
  %68 = load i32, i32* %rca109, align 4, !dbg !2933
  %69 = load %struct.mmc_card*, %struct.mmc_card** %oldcard.addr, align 8, !dbg !2934
  %rca110 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %69, i32 0, i32 3, !dbg !2935
  store i32 %68, i32* %rca110, align 4, !dbg !2936
  br label %if.end111, !dbg !2934

if.end111:                                        ; preds = %if.then108, %if.end106
  br label %if.end112, !dbg !2937

if.end112:                                        ; preds = %if.end111, %if.end98
  %70 = load %struct.mmc_card*, %struct.mmc_card** %oldcard.addr, align 8, !dbg !2938
  %tobool113 = icmp ne %struct.mmc_card* %70, null, !dbg !2938
  br i1 %tobool113, label %if.end123, label %land.lhs.true114, !dbg !2940

land.lhs.true114:                                 ; preds = %if.end112
  %71 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !2941
  %type115 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %71, i32 0, i32 4, !dbg !2942
  %72 = load i32, i32* %type115, align 8, !dbg !2942
  %cmp116 = icmp eq i32 %72, 3, !dbg !2943
  br i1 %cmp116, label %if.then118, label %if.end123, !dbg !2944

if.then118:                                       ; preds = %land.lhs.true114
  %73 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2945
  %74 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !2947
  %call119 = call i32 @mmc_sd_get_csd(%struct.mmc_host* %73, %struct.mmc_card* %74) #5, !dbg !2948
  store i32 %call119, i32* %err, align 4, !dbg !2949
  %75 = load i32, i32* %err, align 4, !dbg !2950
  %tobool120 = icmp ne i32 %75, 0, !dbg !2950
  br i1 %tobool120, label %if.then121, label %if.end122, !dbg !2952

if.then121:                                       ; preds = %if.then118
  br label %remove, !dbg !2953

if.end122:                                        ; preds = %if.then118
  %76 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !2954
  call void @mmc_decode_cid(%struct.mmc_card* %76) #5, !dbg !2955
  br label %if.end123, !dbg !2956

if.end123:                                        ; preds = %if.end122, %land.lhs.true114, %if.end112
  %77 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2957
  %caps124 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %77, i32 0, i32 17, !dbg !2957
  %78 = load i32, i32* %caps124, align 4, !dbg !2957
  %and125 = and i32 %78, 16, !dbg !2957
  %tobool126 = icmp ne i32 %and125, 0, !dbg !2957
  br i1 %tobool126, label %if.end132, label %if.then127, !dbg !2959

if.then127:                                       ; preds = %if.end123
  %79 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !2960
  %call128 = call i32 @mmc_select_card(%struct.mmc_card* %79) #5, !dbg !2962
  store i32 %call128, i32* %err, align 4, !dbg !2963
  %80 = load i32, i32* %err, align 4, !dbg !2964
  %tobool129 = icmp ne i32 %80, 0, !dbg !2964
  br i1 %tobool129, label %if.then130, label %if.end131, !dbg !2966

if.then130:                                       ; preds = %if.then127
  br label %remove, !dbg !2967

if.end131:                                        ; preds = %if.then127
  br label %if.end132, !dbg !2968

if.end132:                                        ; preds = %if.end131, %if.end123
  %81 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !2969
  %quirks = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %81, i32 0, i32 6, !dbg !2971
  %82 = load i32, i32* %quirks, align 8, !dbg !2971
  %and133 = and i32 %82, 4, !dbg !2972
  %tobool134 = icmp ne i32 %and133, 0, !dbg !2972
  br i1 %tobool134, label %if.then135, label %if.end149, !dbg !2973

if.then135:                                       ; preds = %if.end132
  %83 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2974
  %84 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !2976
  %cis = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %84, i32 0, i32 28, !dbg !2977
  %max_dtr = getelementptr inbounds %struct.sdio_cis, %struct.sdio_cis* %cis, i32 0, i32 3, !dbg !2978
  %85 = load i32, i32* %max_dtr, align 4, !dbg !2978
  call void @mmc_set_clock(%struct.mmc_host* %83, i32 %85) #5, !dbg !2979
  %86 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !2980
  %cccr = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %86, i32 0, i32 27, !dbg !2982
  %high_speed = getelementptr inbounds %struct.sdio_cccr, %struct.sdio_cccr* %cccr, i32 0, i32 2, !dbg !2983
  %bf.load136 = load i8, i8* %high_speed, align 8, !dbg !2983
  %bf.lshr137 = lshr i8 %bf.load136, 4, !dbg !2983
  %bf.clear138 = and i8 %bf.lshr137, 1, !dbg !2983
  %bf.cast139 = zext i8 %bf.clear138 to i32, !dbg !2983
  %tobool140 = icmp ne i32 %bf.cast139, 0, !dbg !2980
  br i1 %tobool140, label %if.then141, label %if.end143, !dbg !2984

if.then141:                                       ; preds = %if.then135
  %87 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !2985
  %host142 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %87, i32 0, i32 0, !dbg !2987
  %88 = load %struct.mmc_host*, %struct.mmc_host** %host142, align 8, !dbg !2987
  call void @mmc_set_timing(%struct.mmc_host* %88, i32 2) #5, !dbg !2988
  br label %if.end143, !dbg !2989

if.end143:                                        ; preds = %if.then141, %if.then135
  %89 = load %struct.mmc_card*, %struct.mmc_card** %oldcard.addr, align 8, !dbg !2990
  %tobool144 = icmp ne %struct.mmc_card* %89, null, !dbg !2990
  br i1 %tobool144, label %if.then145, label %if.else146, !dbg !2992

if.then145:                                       ; preds = %if.end143
  %90 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !2993
  call void @mmc_remove_card(%struct.mmc_card* %90) #5, !dbg !2994
  br label %if.end148, !dbg !2994

if.else146:                                       ; preds = %if.end143
  %91 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !2995
  %92 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2996
  %card147 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %92, i32 0, i32 38, !dbg !2997
  store %struct.mmc_card* %91, %struct.mmc_card** %card147, align 8, !dbg !2998
  br label %if.end148

if.end148:                                        ; preds = %if.else146, %if.then145
  store i32 0, i32* %retval, align 4, !dbg !2999
  br label %return, !dbg !2999

if.end149:                                        ; preds = %if.end132
  %93 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3000
  %94 = load i32, i32* %ocr.addr, align 4, !dbg !3001
  %call150 = call i32 @sdio_read_cccr(%struct.mmc_card* %93, i32 %94) #5, !dbg !3002
  store i32 %call150, i32* %err, align 4, !dbg !3003
  %95 = load i32, i32* %err, align 4, !dbg !3004
  %tobool151 = icmp ne i32 %95, 0, !dbg !3004
  br i1 %tobool151, label %if.then152, label %if.end158, !dbg !3006

if.then152:                                       ; preds = %if.end149
  %96 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3007
  %97 = load i32, i32* %ocr_card, align 4, !dbg !3009
  %98 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3010
  %call153 = call i32 @mmc_sdio_pre_init(%struct.mmc_host* %96, i32 %97, %struct.mmc_card* %98) #5, !dbg !3011
  %99 = load i32, i32* %ocr.addr, align 4, !dbg !3012
  %and154 = and i32 %99, 16777216, !dbg !3014
  %tobool155 = icmp ne i32 %and154, 0, !dbg !3014
  br i1 %tobool155, label %if.then156, label %if.end157, !dbg !3015

if.then156:                                       ; preds = %if.then152
  store i32 0, i32* %retries, align 4, !dbg !3016
  br label %try_again, !dbg !3018

if.end157:                                        ; preds = %if.then152
  %100 = load i32, i32* %err, align 4, !dbg !3019
  store i32 %100, i32* %retval, align 4, !dbg !3020
  br label %return, !dbg !3020

if.end158:                                        ; preds = %if.end149
  %101 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3021
  %call159 = call i32 @sdio_read_common_cis(%struct.mmc_card* %101) #5, !dbg !3022
  store i32 %call159, i32* %err, align 4, !dbg !3023
  %102 = load i32, i32* %err, align 4, !dbg !3024
  %tobool160 = icmp ne i32 %102, 0, !dbg !3024
  br i1 %tobool160, label %if.then161, label %if.end162, !dbg !3026

if.then161:                                       ; preds = %if.end158
  br label %remove, !dbg !3027

if.end162:                                        ; preds = %if.end158
  %103 = load %struct.mmc_card*, %struct.mmc_card** %oldcard.addr, align 8, !dbg !3028
  %tobool163 = icmp ne %struct.mmc_card* %103, null, !dbg !3028
  br i1 %tobool163, label %if.then164, label %if.end183, !dbg !3030

if.then164:                                       ; preds = %if.end162
  %104 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3031
  %cis165 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %104, i32 0, i32 28, !dbg !3034
  %vendor = getelementptr inbounds %struct.sdio_cis, %struct.sdio_cis* %cis165, i32 0, i32 0, !dbg !3035
  %105 = load i16, i16* %vendor, align 4, !dbg !3035
  %conv166 = zext i16 %105 to i32, !dbg !3031
  %106 = load %struct.mmc_card*, %struct.mmc_card** %oldcard.addr, align 8, !dbg !3036
  %cis167 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %106, i32 0, i32 28, !dbg !3037
  %vendor168 = getelementptr inbounds %struct.sdio_cis, %struct.sdio_cis* %cis167, i32 0, i32 0, !dbg !3038
  %107 = load i16, i16* %vendor168, align 4, !dbg !3038
  %conv169 = zext i16 %107 to i32, !dbg !3036
  %cmp170 = icmp eq i32 %conv166, %conv169, !dbg !3039
  br i1 %cmp170, label %land.lhs.true172, label %if.else181, !dbg !3040

land.lhs.true172:                                 ; preds = %if.then164
  %108 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3041
  %cis173 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %108, i32 0, i32 28, !dbg !3042
  %device = getelementptr inbounds %struct.sdio_cis, %struct.sdio_cis* %cis173, i32 0, i32 1, !dbg !3043
  %109 = load i16, i16* %device, align 2, !dbg !3043
  %conv174 = zext i16 %109 to i32, !dbg !3041
  %110 = load %struct.mmc_card*, %struct.mmc_card** %oldcard.addr, align 8, !dbg !3044
  %cis175 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %110, i32 0, i32 28, !dbg !3045
  %device176 = getelementptr inbounds %struct.sdio_cis, %struct.sdio_cis* %cis175, i32 0, i32 1, !dbg !3046
  %111 = load i16, i16* %device176, align 2, !dbg !3046
  %conv177 = zext i16 %111 to i32, !dbg !3044
  %cmp178 = icmp eq i32 %conv174, %conv177, !dbg !3047
  br i1 %cmp178, label %if.then180, label %if.else181, !dbg !3048

if.then180:                                       ; preds = %land.lhs.true172
  %112 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3049
  call void @mmc_remove_card(%struct.mmc_card* %112) #5, !dbg !3051
  %113 = load %struct.mmc_card*, %struct.mmc_card** %oldcard.addr, align 8, !dbg !3052
  store %struct.mmc_card* %113, %struct.mmc_card** %card, align 8, !dbg !3053
  br label %if.end182, !dbg !3054

if.else181:                                       ; preds = %land.lhs.true172, %if.then164
  store i32 -2, i32* %err, align 4, !dbg !3055
  br label %mismatch, !dbg !3057

if.end182:                                        ; preds = %if.then180
  br label %if.end183, !dbg !3058

if.end183:                                        ; preds = %if.end182, %if.end162
  %114 = load i32, i32* %ocr_card, align 4, !dbg !3059
  %115 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3060
  %ocr184 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %115, i32 0, i32 2, !dbg !3061
  store i32 %114, i32* %ocr184, align 8, !dbg !3062
  %116 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3063
  call void @mmc_fixup_device(%struct.mmc_card* %116, %struct.mmc_fixup* getelementptr inbounds ([8 x %struct.mmc_fixup], [8 x %struct.mmc_fixup]* @sdio_fixup_methods, i64 0, i64 0)) #5, !dbg !3064
  %117 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3065
  %type185 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %117, i32 0, i32 4, !dbg !3067
  %118 = load i32, i32* %type185, align 8, !dbg !3067
  %cmp186 = icmp eq i32 %118, 3, !dbg !3068
  br i1 %cmp186, label %if.then188, label %if.end207, !dbg !3069

if.then188:                                       ; preds = %if.end183
  %119 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3070
  %120 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3072
  %121 = load %struct.mmc_card*, %struct.mmc_card** %oldcard.addr, align 8, !dbg !3073
  %cmp189 = icmp ne %struct.mmc_card* %121, null, !dbg !3074
  %call191 = call i32 @mmc_sd_setup_card(%struct.mmc_host* %119, %struct.mmc_card* %120, i1 zeroext %cmp189) #5, !dbg !3075
  store i32 %call191, i32* %err, align 4, !dbg !3076
  %122 = load i32, i32* %err, align 4, !dbg !3077
  %tobool192 = icmp ne i32 %122, 0, !dbg !3077
  br i1 %tobool192, label %if.then193, label %if.else204, !dbg !3079

if.then193:                                       ; preds = %if.then188
  %123 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3080
  %call194 = call i32 @mmc_go_idle(%struct.mmc_host* %123) #5, !dbg !3082
  %124 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3083
  %caps195 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %124, i32 0, i32 17, !dbg !3083
  %125 = load i32, i32* %caps195, align 4, !dbg !3083
  %and196 = and i32 %125, 16, !dbg !3083
  %tobool197 = icmp ne i32 %and196, 0, !dbg !3083
  br i1 %tobool197, label %if.then198, label %if.end202, !dbg !3085

if.then198:                                       ; preds = %if.then193
  %126 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3086
  %127 = load i8, i8* @use_spi_crc, align 1, !dbg !3087
  %tobool199 = trunc i8 %127 to i1, !dbg !3087
  %conv200 = zext i1 %tobool199 to i32, !dbg !3087
  %call201 = call i32 @mmc_spi_set_crc(%struct.mmc_host* %126, i32 %conv200) #5, !dbg !3088
  br label %if.end202, !dbg !3088

if.end202:                                        ; preds = %if.then198, %if.then193
  %128 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3089
  %type203 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %128, i32 0, i32 4, !dbg !3090
  store i32 2, i32* %type203, align 8, !dbg !3091
  br label %if.end206, !dbg !3092

if.else204:                                       ; preds = %if.then188
  %129 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3093
  %dev = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %129, i32 0, i32 1, !dbg !3094
  %type205 = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 4, !dbg !3095
  store %struct.device_type* @sd_type, %struct.device_type** %type205, align 8, !dbg !3096
  br label %if.end206

if.end206:                                        ; preds = %if.else204, %if.end202
  br label %if.end207, !dbg !3097

if.end207:                                        ; preds = %if.end206, %if.end183
  %130 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3098
  %call208 = call i32 @sdio_disable_cd(%struct.mmc_card* %130) #5, !dbg !3099
  store i32 %call208, i32* %err, align 4, !dbg !3100
  %131 = load i32, i32* %err, align 4, !dbg !3101
  %tobool209 = icmp ne i32 %131, 0, !dbg !3101
  br i1 %tobool209, label %if.then210, label %if.end211, !dbg !3103

if.then210:                                       ; preds = %if.end207
  br label %remove, !dbg !3104

if.end211:                                        ; preds = %if.end207
  %132 = load i32, i32* %ocr.addr, align 4, !dbg !3105
  %and212 = and i32 %132, 16777216, !dbg !3107
  %tobool213 = icmp ne i32 %and212, 0, !dbg !3107
  br i1 %tobool213, label %land.lhs.true214, label %if.else221, !dbg !3108

land.lhs.true214:                                 ; preds = %if.end211
  %133 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3109
  %sw_caps = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %133, i32 0, i32 24, !dbg !3110
  %sd3_bus_mode = getelementptr inbounds %struct.sd_switch_caps, %struct.sd_switch_caps* %sw_caps, i32 0, i32 2, !dbg !3111
  %134 = load i32, i32* %sd3_bus_mode, align 4, !dbg !3111
  %tobool215 = icmp ne i32 %134, 0, !dbg !3109
  br i1 %tobool215, label %if.then216, label %if.else221, !dbg !3112

if.then216:                                       ; preds = %land.lhs.true214
  %135 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3113
  %call217 = call i32 @mmc_sdio_init_uhs_card(%struct.mmc_card* %135) #5, !dbg !3115
  store i32 %call217, i32* %err, align 4, !dbg !3116
  %136 = load i32, i32* %err, align 4, !dbg !3117
  %tobool218 = icmp ne i32 %136, 0, !dbg !3117
  br i1 %tobool218, label %if.then219, label %if.end220, !dbg !3119

if.then219:                                       ; preds = %if.then216
  br label %remove, !dbg !3120

if.end220:                                        ; preds = %if.then216
  br label %if.end237, !dbg !3121

if.else221:                                       ; preds = %land.lhs.true214, %if.end211
  %137 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3122
  %call222 = call i32 @sdio_enable_hs(%struct.mmc_card* %137) #5, !dbg !3124
  store i32 %call222, i32* %err, align 4, !dbg !3125
  %138 = load i32, i32* %err, align 4, !dbg !3126
  %cmp223 = icmp sgt i32 %138, 0, !dbg !3128
  br i1 %cmp223, label %if.then225, label %if.else227, !dbg !3129

if.then225:                                       ; preds = %if.else221
  %139 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3130
  %host226 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %139, i32 0, i32 0, !dbg !3131
  %140 = load %struct.mmc_host*, %struct.mmc_host** %host226, align 8, !dbg !3131
  call void @mmc_set_timing(%struct.mmc_host* %140, i32 2) #5, !dbg !3132
  br label %if.end231, !dbg !3132

if.else227:                                       ; preds = %if.else221
  %141 = load i32, i32* %err, align 4, !dbg !3133
  %tobool228 = icmp ne i32 %141, 0, !dbg !3133
  br i1 %tobool228, label %if.then229, label %if.end230, !dbg !3135

if.then229:                                       ; preds = %if.else227
  br label %remove, !dbg !3136

if.end230:                                        ; preds = %if.else227
  br label %if.end231

if.end231:                                        ; preds = %if.end230, %if.then225
  %142 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3137
  %143 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3138
  %call232 = call i32 @mmc_sdio_get_max_clock(%struct.mmc_card* %143) #5, !dbg !3139
  call void @mmc_set_clock(%struct.mmc_host* %142, i32 %call232) #5, !dbg !3140
  %144 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3141
  %call233 = call i32 @sdio_enable_4bit_bus(%struct.mmc_card* %144) #5, !dbg !3142
  store i32 %call233, i32* %err, align 4, !dbg !3143
  %145 = load i32, i32* %err, align 4, !dbg !3144
  %tobool234 = icmp ne i32 %145, 0, !dbg !3144
  br i1 %tobool234, label %if.then235, label %if.end236, !dbg !3146

if.then235:                                       ; preds = %if.end231
  br label %remove, !dbg !3147

if.end236:                                        ; preds = %if.end231
  br label %if.end237

if.end237:                                        ; preds = %if.end236, %if.end220
  %146 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3148
  %caps2 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %146, i32 0, i32 18, !dbg !3150
  %147 = load i32, i32* %caps2, align 8, !dbg !3150
  %and238 = and i32 %147, 33554432, !dbg !3151
  %tobool239 = icmp ne i32 %and238, 0, !dbg !3151
  br i1 %tobool239, label %land.lhs.true240, label %if.end248, !dbg !3152

land.lhs.true240:                                 ; preds = %if.end237
  %148 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3153
  %ios = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %148, i32 0, i32 29, !dbg !3154
  %signal_voltage = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %ios, i32 0, i32 8, !dbg !3155
  %149 = load i8, i8* %signal_voltage, align 1, !dbg !3155
  %conv241 = zext i8 %149 to i32, !dbg !3153
  %cmp242 = icmp eq i32 %conv241, 0, !dbg !3156
  br i1 %cmp242, label %if.then244, label %if.end248, !dbg !3157

if.then244:                                       ; preds = %land.lhs.true240
  %150 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3158
  %class_dev245 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %150, i32 0, i32 1, !dbg !3158
  %call246 = call i8* @dev_name(%struct.device* %class_dev245) #5, !dbg !3158
  %call247 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i8* %call246) #6, !dbg !3158
  store i32 -22, i32* %err, align 4, !dbg !3160
  br label %remove, !dbg !3161

if.end248:                                        ; preds = %land.lhs.true240, %if.end237
  %151 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3162
  %152 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3163
  %card249 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %152, i32 0, i32 38, !dbg !3164
  store %struct.mmc_card* %151, %struct.mmc_card** %card249, align 8, !dbg !3165
  store i32 0, i32* %retval, align 4, !dbg !3166
  br label %return, !dbg !3166

mismatch:                                         ; preds = %if.else181, %if.then75, %if.then67
  call void @llvm.dbg.label(metadata !3167), !dbg !3168
  store i32 0, i32* %tmp250, align 4, !dbg !3169
  %153 = load i32, i32* %tmp250, align 4, !dbg !3172
  br label %remove, !dbg !3173

remove:                                           ; preds = %mismatch, %if.then244, %if.then235, %if.then229, %if.then219, %if.then210, %if.then161, %if.then130, %if.then121, %if.then105
  call void @llvm.dbg.label(metadata !3174), !dbg !3175
  %154 = load %struct.mmc_card*, %struct.mmc_card** %oldcard.addr, align 8, !dbg !3176
  %155 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3178
  %cmp251 = icmp ne %struct.mmc_card* %154, %155, !dbg !3179
  br i1 %cmp251, label %if.then253, label %if.end254, !dbg !3180

if.then253:                                       ; preds = %remove
  %156 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3181
  call void @mmc_remove_card(%struct.mmc_card* %156) #5, !dbg !3182
  br label %if.end254, !dbg !3182

if.end254:                                        ; preds = %if.then253, %remove
  %157 = load i32, i32* %err, align 4, !dbg !3183
  store i32 %157, i32* %retval, align 4, !dbg !3184
  br label %return, !dbg !3184

return:                                           ; preds = %if.end254, %if.end248, %if.end157, %if.end148, %if.then45, %if.then40, %if.then31
  %158 = load i32, i32* %retval, align 4, !dbg !3185
  ret i32 %158, !dbg !3185
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pm_runtime_get_noresume(%struct.device* %dev) #0 !dbg !3186 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !3188, metadata !DIExpression()), !dbg !3194
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !3199, metadata !DIExpression()), !dbg !3207
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3209, metadata !DIExpression()), !dbg !3210
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !3211, metadata !DIExpression()), !dbg !3212
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3213, metadata !DIExpression()), !dbg !3214
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3215
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !3216
  %usage_count = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 13, !dbg !3217
  store %struct.atomic_t* %usage_count, %struct.atomic_t** %v.addr.i, align 8
  %1 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !3218
  %2 = bitcast %struct.atomic_t* %1 to i8*, !dbg !3218
  store i8* %2, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %3 = load i8*, i8** %v.addr.i.i, align 8, !dbg !3219
  %4 = load i64, i64* %size.addr.i.i, align 8, !dbg !3220
  %conv.i.i = trunc i64 %4 to i32, !dbg !3220
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i.i) #7, !dbg !3221
  %5 = load i8*, i8** %v.addr.i.i, align 8, !dbg !3222
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !3222
  call void @kcsan_check_access(i8* %5, i64 %6, i32 7) #7, !dbg !3222
  %7 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !3223
  store %struct.atomic_t* %7, %struct.atomic_t** %v.addr.i1.i, align 8
  %8 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !3224
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %8, i32 0, i32 0, !dbg !3225
  call void asm sideeffect "incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32* %counter.i.i) #4, !dbg !3226, !srcloc !3227
  ret void, !dbg !3228
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_runtime_set_active(%struct.device* %dev) #0 !dbg !3229 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3230, metadata !DIExpression()), !dbg !3231
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3232
  %call = call i32 @__pm_runtime_set_status(%struct.device* %0, i32 0) #5, !dbg !3233
  ret i32 %call, !dbg !3234
}

; Function Attrs: noredzone
declare dso_local void @pm_runtime_enable(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sdio_init_func(%struct.mmc_card* %card, i32 %fn) #0 !dbg !3235 {
entry:
  %retval = alloca i32, align 4
  %card.addr = alloca %struct.mmc_card*, align 8
  %fn.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %func = alloca %struct.sdio_func*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.mmc_card* %card, %struct.mmc_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %card.addr, metadata !3238, metadata !DIExpression()), !dbg !3239
  store i32 %fn, i32* %fn.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fn.addr, metadata !3240, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3242, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.declare(metadata %struct.sdio_func** %func, metadata !3244, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !3246, metadata !DIExpression()), !dbg !3249
  %0 = load i32, i32* %fn.addr, align 4, !dbg !3249
  %cmp = icmp ugt i32 %0, 7, !dbg !3249
  %lnot = xor i1 %cmp, true, !dbg !3249
  %lnot1 = xor i1 %lnot, true, !dbg !3249
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3249
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !3249
  %1 = load i32, i32* %__ret_warn_on, align 4, !dbg !3250
  %tobool = icmp ne i32 %1, 0, !dbg !3250
  %lnot2 = xor i1 %tobool, true, !dbg !3250
  %lnot4 = xor i1 %lnot2, true, !dbg !3250
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !3250
  %conv = sext i32 %lnot.ext5 to i64, !dbg !3250
  %tobool6 = icmp ne i64 %conv, 0, !dbg !3250
  br i1 %tobool6, label %if.then, label %if.end, !dbg !3249

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !3250

do.body:                                          ; preds = %if.then
  br label %do.body7, !dbg !3252

do.body7:                                         ; preds = %do.body
  br label %do.end, !dbg !3254

do.end:                                           ; preds = %do.body7
  br label %do.body8, !dbg !3252

do.body8:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 107, i32 2305, i64 12) #4, !dbg !3256, !srcloc !3258
  br label %do.end9, !dbg !3256

do.end9:                                          ; preds = %do.body8
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 166) #4, !dbg !3259, !srcloc !3261
  br label %do.body10, !dbg !3252

do.body10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !3262

do.end11:                                         ; preds = %do.body10
  br label %do.end12, !dbg !3252

do.end12:                                         ; preds = %do.end11
  br label %if.end, !dbg !3252

if.end:                                           ; preds = %do.end12, %entry
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !3249
  %tobool13 = icmp ne i32 %2, 0, !dbg !3249
  %lnot14 = xor i1 %tobool13, true, !dbg !3249
  %lnot16 = xor i1 %lnot14, true, !dbg !3249
  %lnot.ext17 = zext i1 %lnot16 to i32, !dbg !3249
  %conv18 = sext i32 %lnot.ext17 to i64, !dbg !3249
  store i64 %conv18, i64* %tmp, align 8, !dbg !3250
  %3 = load i64, i64* %tmp, align 8, !dbg !3249
  %tobool19 = icmp ne i64 %3, 0, !dbg !3264
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !3265

if.then20:                                        ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !3266
  br label %return, !dbg !3266

if.end21:                                         ; preds = %if.end
  %4 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !3267
  %call = call %struct.sdio_func* @sdio_alloc_func(%struct.mmc_card* %4) #5, !dbg !3268
  store %struct.sdio_func* %call, %struct.sdio_func** %func, align 8, !dbg !3269
  %5 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !3270
  %6 = bitcast %struct.sdio_func* %5 to i8*, !dbg !3270
  %call22 = call zeroext i1 @IS_ERR(i8* %6) #5, !dbg !3272
  br i1 %call22, label %if.then23, label %if.end26, !dbg !3273

if.then23:                                        ; preds = %if.end21
  %7 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !3274
  %8 = bitcast %struct.sdio_func* %7 to i8*, !dbg !3274
  %call24 = call i64 @PTR_ERR(i8* %8) #5, !dbg !3275
  %conv25 = trunc i64 %call24 to i32, !dbg !3275
  store i32 %conv25, i32* %retval, align 4, !dbg !3276
  br label %return, !dbg !3276

if.end26:                                         ; preds = %if.end21
  %9 = load i32, i32* %fn.addr, align 4, !dbg !3277
  %10 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !3278
  %num = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %10, i32 0, i32 3, !dbg !3279
  store i32 %9, i32* %num, align 8, !dbg !3280
  %11 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !3281
  %quirks = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %11, i32 0, i32 6, !dbg !3283
  %12 = load i32, i32* %quirks, align 8, !dbg !3283
  %and = and i32 %12, 4, !dbg !3284
  %tobool27 = icmp ne i32 %and, 0, !dbg !3284
  br i1 %tobool27, label %if.else, label %if.then28, !dbg !3285

if.then28:                                        ; preds = %if.end26
  %13 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !3286
  %call29 = call i32 @sdio_read_fbr(%struct.sdio_func* %13) #5, !dbg !3288
  store i32 %call29, i32* %ret, align 4, !dbg !3289
  %14 = load i32, i32* %ret, align 4, !dbg !3290
  %tobool30 = icmp ne i32 %14, 0, !dbg !3290
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !3292

if.then31:                                        ; preds = %if.then28
  br label %fail, !dbg !3293

if.end32:                                         ; preds = %if.then28
  %15 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !3294
  %call33 = call i32 @sdio_read_func_cis(%struct.sdio_func* %15) #5, !dbg !3295
  store i32 %call33, i32* %ret, align 4, !dbg !3296
  %16 = load i32, i32* %ret, align 4, !dbg !3297
  %tobool34 = icmp ne i32 %16, 0, !dbg !3297
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !3299

if.then35:                                        ; preds = %if.end32
  br label %fail, !dbg !3300

if.end36:                                         ; preds = %if.end32
  br label %if.end45, !dbg !3301

if.else:                                          ; preds = %if.end26
  %17 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !3302
  %card37 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %17, i32 0, i32 0, !dbg !3304
  %18 = load %struct.mmc_card*, %struct.mmc_card** %card37, align 8, !dbg !3304
  %cis = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %18, i32 0, i32 28, !dbg !3305
  %vendor = getelementptr inbounds %struct.sdio_cis, %struct.sdio_cis* %cis, i32 0, i32 0, !dbg !3306
  %19 = load i16, i16* %vendor, align 4, !dbg !3306
  %20 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !3307
  %vendor38 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %20, i32 0, i32 5, !dbg !3308
  store i16 %19, i16* %vendor38, align 2, !dbg !3309
  %21 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !3310
  %card39 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %21, i32 0, i32 0, !dbg !3311
  %22 = load %struct.mmc_card*, %struct.mmc_card** %card39, align 8, !dbg !3311
  %cis40 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %22, i32 0, i32 28, !dbg !3312
  %device = getelementptr inbounds %struct.sdio_cis, %struct.sdio_cis* %cis40, i32 0, i32 1, !dbg !3313
  %23 = load i16, i16* %device, align 2, !dbg !3313
  %24 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !3314
  %device41 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %24, i32 0, i32 6, !dbg !3315
  store i16 %23, i16* %device41, align 8, !dbg !3316
  %25 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !3317
  %card42 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %25, i32 0, i32 0, !dbg !3318
  %26 = load %struct.mmc_card*, %struct.mmc_card** %card42, align 8, !dbg !3318
  %cis43 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %26, i32 0, i32 28, !dbg !3319
  %blksize = getelementptr inbounds %struct.sdio_cis, %struct.sdio_cis* %cis43, i32 0, i32 2, !dbg !3320
  %27 = load i16, i16* %blksize, align 4, !dbg !3320
  %conv44 = zext i16 %27 to i32, !dbg !3317
  %28 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !3321
  %max_blksize = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %28, i32 0, i32 7, !dbg !3322
  store i32 %conv44, i32* %max_blksize, align 4, !dbg !3323
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.end36
  %29 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !3324
  %30 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !3325
  %sdio_func = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %30, i32 0, i32 29, !dbg !3326
  %31 = load i32, i32* %fn.addr, align 4, !dbg !3327
  %sub = sub i32 %31, 1, !dbg !3328
  %idxprom = zext i32 %sub to i64, !dbg !3325
  %arrayidx = getelementptr [7 x %struct.sdio_func*], [7 x %struct.sdio_func*]* %sdio_func, i64 0, i64 %idxprom, !dbg !3325
  store %struct.sdio_func* %29, %struct.sdio_func** %arrayidx, align 8, !dbg !3329
  store i32 0, i32* %retval, align 4, !dbg !3330
  br label %return, !dbg !3330

fail:                                             ; preds = %if.then35, %if.then31
  call void @llvm.dbg.label(metadata !3331), !dbg !3332
  %32 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !3333
  call void @sdio_remove_func(%struct.sdio_func* %32) #5, !dbg !3334
  %33 = load i32, i32* %ret, align 4, !dbg !3335
  store i32 %33, i32* %retval, align 4, !dbg !3336
  br label %return, !dbg !3336

return:                                           ; preds = %fail, %if.end45, %if.then23, %if.then20
  %34 = load i32, i32* %retval, align 4, !dbg !3337
  ret i32 %34, !dbg !3337
}

; Function Attrs: noredzone
declare dso_local void @mmc_release_host(%struct.mmc_host*) #2

; Function Attrs: noredzone
declare dso_local i32 @mmc_add_card(%struct.mmc_card*) #2

; Function Attrs: noredzone
declare dso_local i32 @sdio_add_func(%struct.sdio_func*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_runtime_put(%struct.device* %dev) #0 !dbg !3338 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3339, metadata !DIExpression()), !dbg !3340
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3341
  %call = call i32 @__pm_runtime_idle(%struct.device* %0, i32 5) #5, !dbg !3342
  ret i32 %call, !dbg !3343
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mmc_claim_host(%struct.mmc_host* %host) #0 !dbg !3344 {
entry:
  %host.addr = alloca %struct.mmc_host*, align 8
  store %struct.mmc_host* %host, %struct.mmc_host** %host.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_host** %host.addr, metadata !3345, metadata !DIExpression()), !dbg !3346
  %0 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3347
  %call = call i32 @__mmc_claim_host(%struct.mmc_host* %0, %struct.mmc_ctx* null, %struct.atomic_t* null) #5, !dbg !3348
  ret void, !dbg !3349
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mmc_sdio_remove(%struct.mmc_host* %host) #0 !dbg !3350 {
entry:
  %host.addr = alloca %struct.mmc_host*, align 8
  %i = alloca i32, align 4
  store %struct.mmc_host* %host, %struct.mmc_host** %host.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_host** %host.addr, metadata !3351, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3353, metadata !DIExpression()), !dbg !3354
  store i32 0, i32* %i, align 4, !dbg !3355
  br label %for.cond, !dbg !3357

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !3358
  %1 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3360
  %card = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %1, i32 0, i32 38, !dbg !3361
  %2 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3361
  %sdio_funcs = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %2, i32 0, i32 25, !dbg !3362
  %3 = load i32, i32* %sdio_funcs, align 8, !dbg !3362
  %cmp = icmp ult i32 %0, %3, !dbg !3363
  br i1 %cmp, label %for.body, label %for.end, !dbg !3364

for.body:                                         ; preds = %for.cond
  %4 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3365
  %card1 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %4, i32 0, i32 38, !dbg !3368
  %5 = load %struct.mmc_card*, %struct.mmc_card** %card1, align 8, !dbg !3368
  %sdio_func = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %5, i32 0, i32 29, !dbg !3369
  %6 = load i32, i32* %i, align 4, !dbg !3370
  %idxprom = sext i32 %6 to i64, !dbg !3365
  %arrayidx = getelementptr [7 x %struct.sdio_func*], [7 x %struct.sdio_func*]* %sdio_func, i64 0, i64 %idxprom, !dbg !3365
  %7 = load %struct.sdio_func*, %struct.sdio_func** %arrayidx, align 8, !dbg !3365
  %tobool = icmp ne %struct.sdio_func* %7, null, !dbg !3365
  br i1 %tobool, label %if.then, label %if.end, !dbg !3371

if.then:                                          ; preds = %for.body
  %8 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3372
  %card2 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %8, i32 0, i32 38, !dbg !3374
  %9 = load %struct.mmc_card*, %struct.mmc_card** %card2, align 8, !dbg !3374
  %sdio_func3 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %9, i32 0, i32 29, !dbg !3375
  %10 = load i32, i32* %i, align 4, !dbg !3376
  %idxprom4 = sext i32 %10 to i64, !dbg !3372
  %arrayidx5 = getelementptr [7 x %struct.sdio_func*], [7 x %struct.sdio_func*]* %sdio_func3, i64 0, i64 %idxprom4, !dbg !3372
  %11 = load %struct.sdio_func*, %struct.sdio_func** %arrayidx5, align 8, !dbg !3372
  call void @sdio_remove_func(%struct.sdio_func* %11) #5, !dbg !3377
  %12 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3378
  %card6 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %12, i32 0, i32 38, !dbg !3379
  %13 = load %struct.mmc_card*, %struct.mmc_card** %card6, align 8, !dbg !3379
  %sdio_func7 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %13, i32 0, i32 29, !dbg !3380
  %14 = load i32, i32* %i, align 4, !dbg !3381
  %idxprom8 = sext i32 %14 to i64, !dbg !3378
  %arrayidx9 = getelementptr [7 x %struct.sdio_func*], [7 x %struct.sdio_func*]* %sdio_func7, i64 0, i64 %idxprom8, !dbg !3378
  store %struct.sdio_func* null, %struct.sdio_func** %arrayidx9, align 8, !dbg !3382
  br label %if.end, !dbg !3383

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !3384

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %i, align 4, !dbg !3385
  %inc = add i32 %15, 1, !dbg !3385
  store i32 %inc, i32* %i, align 4, !dbg !3385
  br label %for.cond, !dbg !3386, !llvm.loop !3387

for.end:                                          ; preds = %for.cond
  %16 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3389
  %card10 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %16, i32 0, i32 38, !dbg !3390
  %17 = load %struct.mmc_card*, %struct.mmc_card** %card10, align 8, !dbg !3390
  call void @mmc_remove_card(%struct.mmc_card* %17) #5, !dbg !3391
  %18 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3392
  %card11 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %18, i32 0, i32 38, !dbg !3393
  store %struct.mmc_card* null, %struct.mmc_card** %card11, align 8, !dbg !3394
  ret void, !dbg !3395
}

; Function Attrs: noredzone
declare dso_local void @mmc_detach_bus(%struct.mmc_host*) #2

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_name(%struct.device* %dev) #0 !dbg !3396 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3401, metadata !DIExpression()), !dbg !3402
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3403
  %init_name = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 3, !dbg !3405
  %1 = load i8*, i8** %init_name, align 8, !dbg !3405
  %tobool = icmp ne i8* %1, null, !dbg !3403
  br i1 %tobool, label %if.then, label %if.end, !dbg !3406

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3407
  %init_name1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 3, !dbg !3408
  %3 = load i8*, i8** %init_name1, align 8, !dbg !3408
  store i8* %3, i8** %retval, align 8, !dbg !3409
  br label %return, !dbg !3409

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3410
  %kobj = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0, !dbg !3411
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #5, !dbg !3412
  store i8* %call, i8** %retval, align 8, !dbg !3413
  br label %return, !dbg !3413

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !3414
  ret i8* %5, !dbg !3414
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mmc_sdio_detect(%struct.mmc_host* %host) #0 !dbg !3415 {
entry:
  %host.addr = alloca %struct.mmc_host*, align 8
  %err = alloca i32, align 4
  store %struct.mmc_host* %host, %struct.mmc_host** %host.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_host** %host.addr, metadata !3416, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.declare(metadata i32* %err, metadata !3418, metadata !DIExpression()), !dbg !3419
  %0 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3420
  %caps = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %0, i32 0, i32 17, !dbg !3422
  %1 = load i32, i32* %caps, align 4, !dbg !3422
  %and = and i32 %1, 16384, !dbg !3423
  %tobool = icmp ne i32 %and, 0, !dbg !3423
  br i1 %tobool, label %if.then, label %if.end4, !dbg !3424

if.then:                                          ; preds = %entry
  %2 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3425
  %card = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %2, i32 0, i32 38, !dbg !3427
  %3 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3427
  %dev = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %3, i32 0, i32 1, !dbg !3428
  %call = call i32 @pm_runtime_get_sync(%struct.device* %dev) #5, !dbg !3429
  store i32 %call, i32* %err, align 4, !dbg !3430
  %4 = load i32, i32* %err, align 4, !dbg !3431
  %cmp = icmp slt i32 %4, 0, !dbg !3433
  br i1 %cmp, label %if.then1, label %if.end, !dbg !3434

if.then1:                                         ; preds = %if.then
  %5 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3435
  %card2 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %5, i32 0, i32 38, !dbg !3437
  %6 = load %struct.mmc_card*, %struct.mmc_card** %card2, align 8, !dbg !3437
  %dev3 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %6, i32 0, i32 1, !dbg !3438
  call void @pm_runtime_put_noidle(%struct.device* %dev3) #5, !dbg !3439
  br label %out, !dbg !3440

if.end:                                           ; preds = %if.then
  br label %if.end4, !dbg !3441

if.end4:                                          ; preds = %if.end, %entry
  %7 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3442
  call void @mmc_claim_host(%struct.mmc_host* %7) #5, !dbg !3443
  %8 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3444
  %call5 = call i32 @_mmc_detect_card_removed(%struct.mmc_host* %8) #5, !dbg !3445
  store i32 %call5, i32* %err, align 4, !dbg !3446
  %9 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3447
  call void @mmc_release_host(%struct.mmc_host* %9) #5, !dbg !3448
  %10 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3449
  %caps6 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %10, i32 0, i32 17, !dbg !3451
  %11 = load i32, i32* %caps6, align 4, !dbg !3451
  %and7 = and i32 %11, 16384, !dbg !3452
  %tobool8 = icmp ne i32 %and7, 0, !dbg !3452
  br i1 %tobool8, label %if.then9, label %if.end13, !dbg !3453

if.then9:                                         ; preds = %if.end4
  %12 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3454
  %card10 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %12, i32 0, i32 38, !dbg !3455
  %13 = load %struct.mmc_card*, %struct.mmc_card** %card10, align 8, !dbg !3455
  %dev11 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %13, i32 0, i32 1, !dbg !3456
  %call12 = call i32 @pm_runtime_put_sync(%struct.device* %dev11) #5, !dbg !3457
  br label %if.end13, !dbg !3457

if.end13:                                         ; preds = %if.then9, %if.end4
  br label %out, !dbg !3458

out:                                              ; preds = %if.end13, %if.then1
  call void @llvm.dbg.label(metadata !3459), !dbg !3460
  %14 = load i32, i32* %err, align 4, !dbg !3461
  %tobool14 = icmp ne i32 %14, 0, !dbg !3461
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !3463

if.then15:                                        ; preds = %out
  %15 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3464
  call void @mmc_sdio_remove(%struct.mmc_host* %15) #5, !dbg !3466
  %16 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3467
  call void @mmc_claim_host(%struct.mmc_host* %16) #5, !dbg !3468
  %17 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3469
  call void @mmc_detach_bus(%struct.mmc_host* %17) #5, !dbg !3470
  %18 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3471
  call void @mmc_power_off(%struct.mmc_host* %18) #5, !dbg !3472
  %19 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3473
  call void @mmc_release_host(%struct.mmc_host* %19) #5, !dbg !3474
  br label %if.end16, !dbg !3475

if.end16:                                         ; preds = %if.then15, %out
  ret void, !dbg !3476
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mmc_sdio_pre_suspend(%struct.mmc_host* %host) #0 !dbg !3477 {
entry:
  %host.addr = alloca %struct.mmc_host*, align 8
  %i = alloca i32, align 4
  %err = alloca i32, align 4
  %func = alloca %struct.sdio_func*, align 8
  %pmops = alloca %struct.dev_pm_ops*, align 8
  store %struct.mmc_host* %host, %struct.mmc_host** %host.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_host** %host.addr, metadata !3478, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3480, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.declare(metadata i32* %err, metadata !3482, metadata !DIExpression()), !dbg !3483
  store i32 0, i32* %err, align 4, !dbg !3483
  store i32 0, i32* %i, align 4, !dbg !3484
  br label %for.cond, !dbg !3486

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !3487
  %1 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3489
  %card = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %1, i32 0, i32 38, !dbg !3490
  %2 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3490
  %sdio_funcs = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %2, i32 0, i32 25, !dbg !3491
  %3 = load i32, i32* %sdio_funcs, align 8, !dbg !3491
  %cmp = icmp ult i32 %0, %3, !dbg !3492
  br i1 %cmp, label %for.body, label %for.end, !dbg !3493

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.sdio_func** %func, metadata !3494, metadata !DIExpression()), !dbg !3496
  %4 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3497
  %card1 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %4, i32 0, i32 38, !dbg !3498
  %5 = load %struct.mmc_card*, %struct.mmc_card** %card1, align 8, !dbg !3498
  %sdio_func = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %5, i32 0, i32 29, !dbg !3499
  %6 = load i32, i32* %i, align 4, !dbg !3500
  %idxprom = sext i32 %6 to i64, !dbg !3497
  %arrayidx = getelementptr [7 x %struct.sdio_func*], [7 x %struct.sdio_func*]* %sdio_func, i64 0, i64 %idxprom, !dbg !3497
  %7 = load %struct.sdio_func*, %struct.sdio_func** %arrayidx, align 8, !dbg !3497
  store %struct.sdio_func* %7, %struct.sdio_func** %func, align 8, !dbg !3496
  %8 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !3501
  %tobool = icmp ne %struct.sdio_func* %8, null, !dbg !3501
  br i1 %tobool, label %land.lhs.true, label %if.end12, !dbg !3503

land.lhs.true:                                    ; preds = %for.body
  %9 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !3504
  %state = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %9, i32 0, i32 10, !dbg !3504
  %10 = load i32, i32* %state, align 8, !dbg !3504
  %and = and i32 %10, 1, !dbg !3504
  %tobool2 = icmp ne i32 %and, 0, !dbg !3504
  br i1 %tobool2, label %land.lhs.true3, label %if.end12, !dbg !3505

land.lhs.true3:                                   ; preds = %land.lhs.true
  %11 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !3506
  %dev = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %11, i32 0, i32 1, !dbg !3507
  %driver = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 6, !dbg !3508
  %12 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !3508
  %tobool4 = icmp ne %struct.device_driver* %12, null, !dbg !3506
  br i1 %tobool4, label %if.then, label %if.end12, !dbg !3509

if.then:                                          ; preds = %land.lhs.true3
  call void @llvm.dbg.declare(metadata %struct.dev_pm_ops** %pmops, metadata !3510, metadata !DIExpression()), !dbg !3512
  %13 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !3513
  %dev5 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %13, i32 0, i32 1, !dbg !3514
  %driver6 = getelementptr inbounds %struct.device, %struct.device* %dev5, i32 0, i32 6, !dbg !3515
  %14 = load %struct.device_driver*, %struct.device_driver** %driver6, align 8, !dbg !3515
  %pm = getelementptr inbounds %struct.device_driver, %struct.device_driver* %14, i32 0, i32 16, !dbg !3516
  %15 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !3516
  store %struct.dev_pm_ops* %15, %struct.dev_pm_ops** %pmops, align 8, !dbg !3512
  %16 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pmops, align 8, !dbg !3517
  %tobool7 = icmp ne %struct.dev_pm_ops* %16, null, !dbg !3517
  br i1 %tobool7, label %lor.lhs.false, label %if.then11, !dbg !3519

lor.lhs.false:                                    ; preds = %if.then
  %17 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pmops, align 8, !dbg !3520
  %suspend = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %17, i32 0, i32 2, !dbg !3521
  %18 = load i32 (%struct.device*)*, i32 (%struct.device*)** %suspend, align 8, !dbg !3521
  %tobool8 = icmp ne i32 (%struct.device*)* %18, null, !dbg !3520
  br i1 %tobool8, label %lor.lhs.false9, label %if.then11, !dbg !3522

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %19 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pmops, align 8, !dbg !3523
  %resume = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %19, i32 0, i32 3, !dbg !3524
  %20 = load i32 (%struct.device*)*, i32 (%struct.device*)** %resume, align 8, !dbg !3524
  %tobool10 = icmp ne i32 (%struct.device*)* %20, null, !dbg !3523
  br i1 %tobool10, label %if.end, label %if.then11, !dbg !3525

if.then11:                                        ; preds = %lor.lhs.false9, %lor.lhs.false, %if.then
  store i32 -38, i32* %err, align 4, !dbg !3526
  br label %for.end, !dbg !3528

if.end:                                           ; preds = %lor.lhs.false9
  br label %if.end12, !dbg !3529

if.end12:                                         ; preds = %if.end, %land.lhs.true3, %land.lhs.true, %for.body
  br label %for.inc, !dbg !3530

for.inc:                                          ; preds = %if.end12
  %21 = load i32, i32* %i, align 4, !dbg !3531
  %inc = add i32 %21, 1, !dbg !3531
  store i32 %inc, i32* %i, align 4, !dbg !3531
  br label %for.cond, !dbg !3532, !llvm.loop !3533

for.end:                                          ; preds = %if.then11, %for.cond
  %22 = load i32, i32* %err, align 4, !dbg !3535
  ret i32 %22, !dbg !3536
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mmc_sdio_suspend(%struct.mmc_host* %host) #0 !dbg !3537 {
entry:
  %host.addr = alloca %struct.mmc_host*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.mmc_host* %host, %struct.mmc_host** %host.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_host** %host.addr, metadata !3538, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !3540, metadata !DIExpression()), !dbg !3542
  %0 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3542
  %sdio_irqs = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %0, i32 0, i32 48, !dbg !3542
  %1 = load i32, i32* %sdio_irqs, align 4, !dbg !3542
  %tobool = icmp ne i32 %1, 0, !dbg !3542
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !3542

land.rhs:                                         ; preds = %entry
  %2 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3542
  %call = call i32 @mmc_card_keep_power(%struct.mmc_host* %2) #5, !dbg !3542
  %tobool1 = icmp ne i32 %call, 0, !dbg !3542
  %lnot = xor i1 %tobool1, true, !dbg !3542
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ], !dbg !3543
  %lnot2 = xor i1 %3, true, !dbg !3542
  %lnot3 = xor i1 %lnot2, true, !dbg !3542
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !3542
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !3542
  %4 = load i32, i32* %__ret_warn_on, align 4, !dbg !3544
  %tobool4 = icmp ne i32 %4, 0, !dbg !3544
  %lnot5 = xor i1 %tobool4, true, !dbg !3544
  %lnot7 = xor i1 %lnot5, true, !dbg !3544
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !3544
  %conv = sext i32 %lnot.ext8 to i64, !dbg !3544
  %tobool9 = icmp ne i64 %conv, 0, !dbg !3544
  br i1 %tobool9, label %if.then, label %if.end, !dbg !3542

if.then:                                          ; preds = %land.end
  br label %do.body, !dbg !3544

do.body:                                          ; preds = %if.then
  br label %do.body10, !dbg !3546

do.body10:                                        ; preds = %do.body
  br label %do.end, !dbg !3548

do.end:                                           ; preds = %do.body10
  br label %do.body11, !dbg !3546

do.body11:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 1010, i32 2305, i64 12) #4, !dbg !3550, !srcloc !3552
  br label %do.end12, !dbg !3550

do.end12:                                         ; preds = %do.body11
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 172) #4, !dbg !3553, !srcloc !3555
  br label %do.body13, !dbg !3546

do.body13:                                        ; preds = %do.end12
  br label %do.end14, !dbg !3556

do.end14:                                         ; preds = %do.body13
  br label %do.end15, !dbg !3546

do.end15:                                         ; preds = %do.end14
  br label %if.end, !dbg !3546

if.end:                                           ; preds = %do.end15, %land.end
  %5 = load i32, i32* %__ret_warn_on, align 4, !dbg !3542
  %tobool16 = icmp ne i32 %5, 0, !dbg !3542
  %lnot17 = xor i1 %tobool16, true, !dbg !3542
  %lnot19 = xor i1 %lnot17, true, !dbg !3542
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !3542
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !3542
  store i64 %conv21, i64* %tmp, align 8, !dbg !3544
  %6 = load i64, i64* %tmp, align 8, !dbg !3542
  %7 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3558
  %card = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %7, i32 0, i32 38, !dbg !3558
  %8 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3558
  %state = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %8, i32 0, i32 5, !dbg !3558
  %9 = load i32, i32* %state, align 4, !dbg !3558
  %or = or i32 %9, 32, !dbg !3558
  store i32 %or, i32* %state, align 4, !dbg !3558
  %10 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3559
  %sdio_irq_work = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %10, i32 0, i32 50, !dbg !3560
  %call22 = call zeroext i1 @cancel_delayed_work_sync(%struct.delayed_work* %sdio_irq_work) #5, !dbg !3561
  %11 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3562
  call void @mmc_claim_host(%struct.mmc_host* %11) #5, !dbg !3563
  %12 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3564
  %call23 = call i32 @mmc_card_keep_power(%struct.mmc_host* %12) #5, !dbg !3566
  %tobool24 = icmp ne i32 %call23, 0, !dbg !3566
  br i1 %tobool24, label %land.lhs.true, label %if.end30, !dbg !3567

land.lhs.true:                                    ; preds = %if.end
  %13 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3568
  %call25 = call i32 @mmc_card_wake_sdio_irq(%struct.mmc_host* %13) #5, !dbg !3569
  %tobool26 = icmp ne i32 %call25, 0, !dbg !3569
  br i1 %tobool26, label %if.then27, label %if.end30, !dbg !3570

if.then27:                                        ; preds = %land.lhs.true
  %14 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3571
  %card28 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %14, i32 0, i32 38, !dbg !3572
  %15 = load %struct.mmc_card*, %struct.mmc_card** %card28, align 8, !dbg !3572
  %call29 = call i32 @sdio_disable_4bit_bus(%struct.mmc_card* %15) #5, !dbg !3573
  br label %if.end30, !dbg !3573

if.end30:                                         ; preds = %if.then27, %land.lhs.true, %if.end
  %16 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3574
  %call31 = call i32 @mmc_card_keep_power(%struct.mmc_host* %16) #5, !dbg !3576
  %tobool32 = icmp ne i32 %call31, 0, !dbg !3576
  br i1 %tobool32, label %if.else, label %if.then33, !dbg !3577

if.then33:                                        ; preds = %if.end30
  %17 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3578
  call void @mmc_power_off(%struct.mmc_host* %17) #5, !dbg !3580
  br label %if.end37, !dbg !3581

if.else:                                          ; preds = %if.end30
  %18 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3582
  %retune_period = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %18, i32 0, i32 35, !dbg !3584
  %19 = load i32, i32* %retune_period, align 4, !dbg !3584
  %tobool34 = icmp ne i32 %19, 0, !dbg !3582
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !3585

if.then35:                                        ; preds = %if.else
  %20 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3586
  call void @mmc_retune_timer_stop(%struct.mmc_host* %20) #5, !dbg !3588
  %21 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3589
  call void @mmc_retune_needed(%struct.mmc_host* %21) #5, !dbg !3590
  br label %if.end36, !dbg !3591

if.end36:                                         ; preds = %if.then35, %if.else
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then33
  %22 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3592
  call void @mmc_release_host(%struct.mmc_host* %22) #5, !dbg !3593
  ret i32 0, !dbg !3594
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mmc_sdio_resume(%struct.mmc_host* %host) #0 !dbg !3595 {
entry:
  %host.addr = alloca %struct.mmc_host*, align 8
  %err = alloca i32, align 4
  store %struct.mmc_host* %host, %struct.mmc_host** %host.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_host** %host.addr, metadata !3596, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.declare(metadata i32* %err, metadata !3598, metadata !DIExpression()), !dbg !3599
  store i32 0, i32* %err, align 4, !dbg !3599
  %0 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3600
  call void @mmc_claim_host(%struct.mmc_host* %0) #5, !dbg !3601
  %1 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3602
  %call = call i32 @mmc_card_keep_power(%struct.mmc_host* %1) #5, !dbg !3604
  %tobool = icmp ne i32 %call, 0, !dbg !3604
  br i1 %tobool, label %if.else, label %if.then, !dbg !3605

if.then:                                          ; preds = %entry
  %2 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3606
  %3 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3608
  %card = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %3, i32 0, i32 38, !dbg !3609
  %4 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3609
  %ocr = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %4, i32 0, i32 2, !dbg !3610
  %5 = load i32, i32* %ocr, align 8, !dbg !3610
  call void @mmc_power_up(%struct.mmc_host* %2, i32 %5) #5, !dbg !3611
  %6 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3612
  %caps = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %6, i32 0, i32 17, !dbg !3614
  %7 = load i32, i32* %caps, align 4, !dbg !3614
  %and = and i32 %7, 16384, !dbg !3615
  %tobool1 = icmp ne i32 %and, 0, !dbg !3615
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !3616

if.then2:                                         ; preds = %if.then
  %8 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3617
  %card3 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %8, i32 0, i32 38, !dbg !3619
  %9 = load %struct.mmc_card*, %struct.mmc_card** %card3, align 8, !dbg !3619
  %dev = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %9, i32 0, i32 1, !dbg !3620
  call void @pm_runtime_disable(%struct.device* %dev) #5, !dbg !3621
  %10 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3622
  %card4 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %10, i32 0, i32 38, !dbg !3623
  %11 = load %struct.mmc_card*, %struct.mmc_card** %card4, align 8, !dbg !3623
  %dev5 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %11, i32 0, i32 1, !dbg !3624
  %call6 = call i32 @pm_runtime_set_active(%struct.device* %dev5) #5, !dbg !3625
  %12 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3626
  %card7 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %12, i32 0, i32 38, !dbg !3627
  %13 = load %struct.mmc_card*, %struct.mmc_card** %card7, align 8, !dbg !3627
  %dev8 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %13, i32 0, i32 1, !dbg !3628
  call void @pm_runtime_enable(%struct.device* %dev8) #5, !dbg !3629
  br label %if.end, !dbg !3630

if.end:                                           ; preds = %if.then2, %if.then
  %14 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3631
  %call9 = call i32 @mmc_sdio_reinit_card(%struct.mmc_host* %14) #5, !dbg !3632
  store i32 %call9, i32* %err, align 4, !dbg !3633
  br label %if.end16, !dbg !3634

if.else:                                          ; preds = %entry
  %15 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3635
  %call10 = call i32 @mmc_card_wake_sdio_irq(%struct.mmc_host* %15) #5, !dbg !3637
  %tobool11 = icmp ne i32 %call10, 0, !dbg !3637
  br i1 %tobool11, label %if.then12, label %if.end15, !dbg !3638

if.then12:                                        ; preds = %if.else
  %16 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3639
  %card13 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %16, i32 0, i32 38, !dbg !3641
  %17 = load %struct.mmc_card*, %struct.mmc_card** %card13, align 8, !dbg !3641
  %call14 = call i32 @sdio_enable_4bit_bus(%struct.mmc_card* %17) #5, !dbg !3642
  store i32 %call14, i32* %err, align 4, !dbg !3643
  br label %if.end15, !dbg !3644

if.end15:                                         ; preds = %if.then12, %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end
  %18 = load i32, i32* %err, align 4, !dbg !3645
  %tobool17 = icmp ne i32 %18, 0, !dbg !3645
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !3647

if.then18:                                        ; preds = %if.end16
  br label %out, !dbg !3648

if.end19:                                         ; preds = %if.end16
  %19 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3649
  %card20 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %19, i32 0, i32 38, !dbg !3649
  %20 = load %struct.mmc_card*, %struct.mmc_card** %card20, align 8, !dbg !3649
  %state = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %20, i32 0, i32 5, !dbg !3649
  %21 = load i32, i32* %state, align 4, !dbg !3649
  %and21 = and i32 %21, -33, !dbg !3649
  store i32 %and21, i32* %state, align 4, !dbg !3649
  %22 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3650
  %sdio_irqs = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %22, i32 0, i32 48, !dbg !3652
  %23 = load i32, i32* %sdio_irqs, align 4, !dbg !3652
  %tobool22 = icmp ne i32 %23, 0, !dbg !3650
  br i1 %tobool22, label %if.then23, label %if.end36, !dbg !3653

if.then23:                                        ; preds = %if.end19
  %24 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3654
  %caps2 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %24, i32 0, i32 18, !dbg !3657
  %25 = load i32, i32* %caps2, align 8, !dbg !3657
  %and24 = and i32 %25, 131072, !dbg !3658
  %tobool25 = icmp ne i32 %and24, 0, !dbg !3658
  br i1 %tobool25, label %if.else28, label %if.then26, !dbg !3659

if.then26:                                        ; preds = %if.then23
  %26 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3660
  %sdio_irq_thread = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %26, i32 0, i32 49, !dbg !3661
  %27 = load %struct.task_struct*, %struct.task_struct** %sdio_irq_thread, align 8, !dbg !3661
  %call27 = call i32 @wake_up_process(%struct.task_struct* %27) #5, !dbg !3662
  br label %if.end35, !dbg !3662

if.else28:                                        ; preds = %if.then23
  %28 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3663
  %caps29 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %28, i32 0, i32 17, !dbg !3665
  %29 = load i32, i32* %caps29, align 4, !dbg !3665
  %and30 = and i32 %29, 8, !dbg !3666
  %tobool31 = icmp ne i32 %and30, 0, !dbg !3666
  br i1 %tobool31, label %if.then32, label %if.end34, !dbg !3667

if.then32:                                        ; preds = %if.else28
  %30 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8, !dbg !3668
  %31 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3669
  %sdio_irq_work = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %31, i32 0, i32 50, !dbg !3670
  %call33 = call zeroext i1 @queue_delayed_work(%struct.workqueue_struct* %30, %struct.delayed_work* %sdio_irq_work, i64 0) #5, !dbg !3671
  br label %if.end34, !dbg !3671

if.end34:                                         ; preds = %if.then32, %if.else28
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then26
  br label %if.end36, !dbg !3672

if.end36:                                         ; preds = %if.end35, %if.end19
  br label %out, !dbg !3652

out:                                              ; preds = %if.end36, %if.then18
  call void @llvm.dbg.label(metadata !3673), !dbg !3674
  %32 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3675
  call void @mmc_release_host(%struct.mmc_host* %32) #5, !dbg !3676
  %33 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3677
  %pm_flags = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %33, i32 0, i32 53, !dbg !3678
  %34 = load i32, i32* %pm_flags, align 64, !dbg !3679
  %and37 = and i32 %34, -2, !dbg !3679
  store i32 %and37, i32* %pm_flags, align 64, !dbg !3679
  %35 = load i32, i32* %err, align 4, !dbg !3680
  ret i32 %35, !dbg !3681
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mmc_sdio_runtime_suspend(%struct.mmc_host* %host) #0 !dbg !3682 {
entry:
  %host.addr = alloca %struct.mmc_host*, align 8
  store %struct.mmc_host* %host, %struct.mmc_host** %host.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_host** %host.addr, metadata !3683, metadata !DIExpression()), !dbg !3684
  %0 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3685
  call void @mmc_claim_host(%struct.mmc_host* %0) #5, !dbg !3686
  %1 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3687
  call void @mmc_power_off(%struct.mmc_host* %1) #5, !dbg !3688
  %2 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3689
  call void @mmc_release_host(%struct.mmc_host* %2) #5, !dbg !3690
  ret i32 0, !dbg !3691
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mmc_sdio_runtime_resume(%struct.mmc_host* %host) #0 !dbg !3692 {
entry:
  %host.addr = alloca %struct.mmc_host*, align 8
  %ret = alloca i32, align 4
  store %struct.mmc_host* %host, %struct.mmc_host** %host.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_host** %host.addr, metadata !3693, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3695, metadata !DIExpression()), !dbg !3696
  %0 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3697
  call void @mmc_claim_host(%struct.mmc_host* %0) #5, !dbg !3698
  %1 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3699
  %2 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3700
  %card = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %2, i32 0, i32 38, !dbg !3701
  %3 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3701
  %ocr = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %3, i32 0, i32 2, !dbg !3702
  %4 = load i32, i32* %ocr, align 8, !dbg !3702
  call void @mmc_power_up(%struct.mmc_host* %1, i32 %4) #5, !dbg !3703
  %5 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3704
  %call = call i32 @mmc_sdio_reinit_card(%struct.mmc_host* %5) #5, !dbg !3705
  store i32 %call, i32* %ret, align 4, !dbg !3706
  %6 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3707
  call void @mmc_release_host(%struct.mmc_host* %6) #5, !dbg !3708
  %7 = load i32, i32* %ret, align 4, !dbg !3709
  ret i32 %7, !dbg !3710
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mmc_sdio_alive(%struct.mmc_host* %host) #0 !dbg !3711 {
entry:
  %host.addr = alloca %struct.mmc_host*, align 8
  store %struct.mmc_host* %host, %struct.mmc_host** %host.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_host** %host.addr, metadata !3712, metadata !DIExpression()), !dbg !3713
  %0 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3714
  %card = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %0, i32 0, i32 38, !dbg !3715
  %1 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3715
  %call = call i32 @mmc_select_card(%struct.mmc_card* %1) #5, !dbg !3716
  ret i32 %call, !dbg !3717
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mmc_sdio_hw_reset(%struct.mmc_host* %host) #0 !dbg !3718 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !3719, metadata !DIExpression()), !dbg !3725
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !3730, metadata !DIExpression()), !dbg !3732
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3734, metadata !DIExpression()), !dbg !3735
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !3736, metadata !DIExpression()), !dbg !3737
  %retval = alloca i32, align 4
  %host.addr = alloca %struct.mmc_host*, align 8
  %card = alloca %struct.mmc_card*, align 8
  store %struct.mmc_host* %host, %struct.mmc_host** %host.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_host** %host.addr, metadata !3738, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %card, metadata !3740, metadata !DIExpression()), !dbg !3741
  %0 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3742
  %card1 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %0, i32 0, i32 38, !dbg !3743
  %1 = load %struct.mmc_card*, %struct.mmc_card** %card1, align 8, !dbg !3743
  store %struct.mmc_card* %1, %struct.mmc_card** %card, align 8, !dbg !3741
  %2 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3744
  %sdio_funcs_probed = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %2, i32 0, i32 26, !dbg !3745
  store %struct.atomic_t* %sdio_funcs_probed, %struct.atomic_t** %v.addr.i, align 8
  %3 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !3746
  %4 = bitcast %struct.atomic_t* %3 to i8*, !dbg !3746
  store i8* %4, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %5 = load i8*, i8** %v.addr.i.i, align 8, !dbg !3747
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !3748
  %conv.i.i = trunc i64 %6 to i32, !dbg !3748
  %call.i.i = call zeroext i1 @kasan_check_read(i8* %5, i32 %conv.i.i) #7, !dbg !3749
  %7 = load i8*, i8** %v.addr.i.i, align 8, !dbg !3750
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !3750
  call void @kcsan_check_access(i8* %7, i64 %8, i32 4) #7, !dbg !3750
  %9 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !3751
  store %struct.atomic_t* %9, %struct.atomic_t** %v.addr.i1.i, align 8
  %10 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !3752
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %10, i32 0, i32 0, !dbg !3752
  %11 = load volatile i32, i32* %counter.i.i, align 4, !dbg !3752
  %cmp = icmp sgt i32 %11, 1, !dbg !3753
  br i1 %cmp, label %if.then, label %if.end5, !dbg !3754

if.then:                                          ; preds = %entry
  %12 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3755
  %tobool = icmp ne %struct.mmc_card* %12, null, !dbg !3755
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !3755

land.lhs.true:                                    ; preds = %if.then
  %13 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3755
  %state = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %13, i32 0, i32 5, !dbg !3755
  %14 = load i32, i32* %state, align 4, !dbg !3755
  %and = and i32 %14, 16, !dbg !3755
  %tobool2 = icmp ne i32 %and, 0, !dbg !3755
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !3758

if.then3:                                         ; preds = %land.lhs.true
  store i32 1, i32* %retval, align 4, !dbg !3759
  br label %return, !dbg !3759

if.end:                                           ; preds = %land.lhs.true, %if.then
  %15 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3760
  %rescan_entered = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %15, i32 0, i32 32, !dbg !3761
  store i32 0, i32* %rescan_entered, align 8, !dbg !3762
  %16 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3763
  %state4 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %16, i32 0, i32 5, !dbg !3763
  %17 = load i32, i32* %state4, align 4, !dbg !3763
  %or = or i32 %17, 16, !dbg !3763
  store i32 %or, i32* %state4, align 4, !dbg !3763
  %18 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3764
  call void @_mmc_detect_change(%struct.mmc_host* %18, i64 0, i1 zeroext false) #5, !dbg !3765
  store i32 1, i32* %retval, align 4, !dbg !3766
  br label %return, !dbg !3766

if.end5:                                          ; preds = %entry
  %19 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3767
  %20 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3768
  %ocr = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %20, i32 0, i32 2, !dbg !3769
  %21 = load i32, i32* %ocr, align 8, !dbg !3769
  call void @mmc_power_cycle(%struct.mmc_host* %19, i32 %21) #5, !dbg !3770
  %22 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3771
  %call6 = call i32 @mmc_sdio_reinit_card(%struct.mmc_host* %22) #5, !dbg !3772
  store i32 %call6, i32* %retval, align 4, !dbg !3773
  br label %return, !dbg !3773

return:                                           ; preds = %if.end5, %if.end, %if.then3
  %23 = load i32, i32* %retval, align 4, !dbg !3774
  ret i32 %23, !dbg !3774
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mmc_sdio_sw_reset(%struct.mmc_host* %host) #0 !dbg !3775 {
entry:
  %host.addr = alloca %struct.mmc_host*, align 8
  store %struct.mmc_host* %host, %struct.mmc_host** %host.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_host** %host.addr, metadata !3776, metadata !DIExpression()), !dbg !3777
  %0 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3778
  %1 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3779
  %f_init = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %1, i32 0, i32 7, !dbg !3780
  %2 = load i32, i32* %f_init, align 32, !dbg !3780
  call void @mmc_set_clock(%struct.mmc_host* %0, i32 %2) #5, !dbg !3781
  %3 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3782
  %call = call i32 @sdio_reset(%struct.mmc_host* %3) #5, !dbg !3783
  %4 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3784
  %call1 = call i32 @mmc_go_idle(%struct.mmc_host* %4) #5, !dbg !3785
  %5 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3786
  call void @mmc_set_initial_state(%struct.mmc_host* %5) #5, !dbg !3787
  %6 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3788
  call void @mmc_set_initial_signal_voltage(%struct.mmc_host* %6) #5, !dbg !3789
  %7 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3790
  %call2 = call i32 @mmc_sdio_reinit_card(%struct.mmc_host* %7) #5, !dbg !3791
  ret i32 %call2, !dbg !3792
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_runtime_get_sync(%struct.device* %dev) #0 !dbg !3793 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3794, metadata !DIExpression()), !dbg !3795
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3796
  %call = call i32 @__pm_runtime_resume(%struct.device* %0, i32 4) #5, !dbg !3797
  ret i32 %call, !dbg !3798
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pm_runtime_put_noidle(%struct.device* %dev) #0 !dbg !3799 {
entry:
  %v.addr.i5.i.i.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i5.i.i.i, metadata !3800, metadata !DIExpression()), !dbg !3804
  %old.addr.i.i.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %old.addr.i.i.i.i, metadata !3817, metadata !DIExpression()), !dbg !3818
  %new.addr.i.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %new.addr.i.i.i.i, metadata !3819, metadata !DIExpression()), !dbg !3820
  %success.i.i.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %success.i.i.i.i, metadata !3821, metadata !DIExpression()), !dbg !3823
  %_old.i.i.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %_old.i.i.i.i, metadata !3824, metadata !DIExpression()), !dbg !3823
  %__old.i.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__old.i.i.i.i, metadata !3825, metadata !DIExpression()), !dbg !3823
  %__new.i.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__new.i.i.i.i, metadata !3826, metadata !DIExpression()), !dbg !3823
  %__ptr.i.i.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %__ptr.i.i.i.i, metadata !3827, metadata !DIExpression()), !dbg !3823
  %tmp.i.i.i.i = alloca i64, align 8
  %v.addr.i.i.i.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i.i.i.i, metadata !3719, metadata !DIExpression()), !dbg !3828
  %v.addr.i.i.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i.i.i, metadata !3830, metadata !DIExpression()), !dbg !3831
  %a.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %a.addr.i.i.i, metadata !3832, metadata !DIExpression()), !dbg !3833
  %u.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %u.addr.i.i.i, metadata !3834, metadata !DIExpression()), !dbg !3835
  %c.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %c.i.i.i, metadata !3836, metadata !DIExpression()), !dbg !3837
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !3838, metadata !DIExpression()), !dbg !3839
  %a.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %a.addr.i.i, metadata !3840, metadata !DIExpression()), !dbg !3841
  %u.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %u.addr.i.i, metadata !3842, metadata !DIExpression()), !dbg !3843
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !3199, metadata !DIExpression()), !dbg !3844
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3209, metadata !DIExpression()), !dbg !3846
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !3847, metadata !DIExpression()), !dbg !3848
  %a.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %a.addr.i, metadata !3849, metadata !DIExpression()), !dbg !3850
  %u.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %u.addr.i, metadata !3851, metadata !DIExpression()), !dbg !3852
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3853, metadata !DIExpression()), !dbg !3854
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3855
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !3856
  %usage_count = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 13, !dbg !3857
  store %struct.atomic_t* %usage_count, %struct.atomic_t** %v.addr.i, align 8
  store i32 -1, i32* %a.addr.i, align 4
  store i32 0, i32* %u.addr.i, align 4
  %1 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !3858
  %2 = bitcast %struct.atomic_t* %1 to i8*, !dbg !3858
  store i8* %2, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %3 = load i8*, i8** %v.addr.i.i, align 8, !dbg !3859
  %4 = load i64, i64* %size.addr.i.i, align 8, !dbg !3860
  %conv.i.i = trunc i64 %4 to i32, !dbg !3860
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i.i) #7, !dbg !3861
  %5 = load i8*, i8** %v.addr.i.i, align 8, !dbg !3862
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !3862
  call void @kcsan_check_access(i8* %5, i64 %6, i32 7) #7, !dbg !3862
  %7 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !3863
  %8 = load i32, i32* %a.addr.i, align 4, !dbg !3864
  %9 = load i32, i32* %u.addr.i, align 4, !dbg !3865
  store %struct.atomic_t* %7, %struct.atomic_t** %v.addr.i1.i, align 8
  store i32 %8, i32* %a.addr.i.i, align 4
  store i32 %9, i32* %u.addr.i.i, align 4
  %10 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !3866
  %11 = load i32, i32* %a.addr.i.i, align 4, !dbg !3867
  %12 = load i32, i32* %u.addr.i.i, align 4, !dbg !3868
  store %struct.atomic_t* %10, %struct.atomic_t** %v.addr.i.i.i, align 8
  store i32 %11, i32* %a.addr.i.i.i, align 4
  store i32 %12, i32* %u.addr.i.i.i, align 4
  %13 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i.i.i, align 8, !dbg !3869
  store %struct.atomic_t* %13, %struct.atomic_t** %v.addr.i.i.i.i, align 8
  %14 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i.i.i.i, align 8, !dbg !3870
  %counter.i.i.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %14, i32 0, i32 0, !dbg !3870
  %15 = load volatile i32, i32* %counter.i.i.i.i, align 4, !dbg !3870
  store i32 %15, i32* %c.i.i.i, align 4, !dbg !3837
  br label %do.body.i.i.i, !dbg !3871

do.body.i.i.i:                                    ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i, %entry
  %16 = load i32, i32* %c.i.i.i, align 4, !dbg !3872
  %17 = load i32, i32* %u.addr.i.i.i, align 4, !dbg !3872
  %cmp.i.i.i = icmp eq i32 %16, %17, !dbg !3872
  %lnot.i.i.i = xor i1 %cmp.i.i.i, true, !dbg !3872
  %lnot.ext.i.i.i = zext i1 %cmp.i.i.i to i32, !dbg !3872
  %conv.i.i.i = sext i32 %lnot.ext.i.i.i to i64, !dbg !3872
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end.i.i.i, !dbg !3875

if.then.i.i.i:                                    ; preds = %do.body.i.i.i
  br label %atomic_add_unless.exit, !dbg !3876

if.end.i.i.i:                                     ; preds = %do.body.i.i.i
  %18 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i.i.i, align 8, !dbg !3877
  %19 = load i32, i32* %c.i.i.i, align 4, !dbg !3878
  %20 = load i32, i32* %a.addr.i.i.i, align 4, !dbg !3879
  %add.i.i.i = add i32 %19, %20, !dbg !3880
  store %struct.atomic_t* %18, %struct.atomic_t** %v.addr.i5.i.i.i, align 8
  store i32* %c.i.i.i, i32** %old.addr.i.i.i.i, align 8
  store i32 %add.i.i.i, i32* %new.addr.i.i.i.i, align 4
  %21 = load i32*, i32** %old.addr.i.i.i.i, align 8, !dbg !3823
  store i32* %21, i32** %_old.i.i.i.i, align 8, !dbg !3823
  %22 = load i32*, i32** %_old.i.i.i.i, align 8, !dbg !3823
  %23 = load i32, i32* %22, align 4, !dbg !3823
  store i32 %23, i32* %__old.i.i.i.i, align 4, !dbg !3823
  %24 = load i32, i32* %new.addr.i.i.i.i, align 4, !dbg !3823
  store i32 %24, i32* %__new.i.i.i.i, align 4, !dbg !3823
  %25 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i5.i.i.i, align 8, !dbg !3823
  %counter.i6.i.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %25, i32 0, i32 0, !dbg !3823
  store i32* %counter.i6.i.i.i, i32** %__ptr.i.i.i.i, align 8, !dbg !3823
  %26 = load i32*, i32** %__ptr.i.i.i.i, align 8, !dbg !3823
  %27 = load i32, i32* %__old.i.i.i.i, align 4, !dbg !3823
  %28 = load i32, i32* %__new.i.i.i.i, align 4, !dbg !3823
  %29 = call { i8, i32 } asm sideeffect "cmpxchgl $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %26, i32 %28, i32* %26, i32 %27) #4, !dbg !3823, !srcloc !3881
  %asmresult.i.i.i.i = extractvalue { i8, i32 } %29, 0, !dbg !3823
  %asmresult1.i.i.i.i = extractvalue { i8, i32 } %29, 1, !dbg !3823
  store i8 %asmresult.i.i.i.i, i8* %success.i.i.i.i, align 1, !dbg !3823
  store i32 %asmresult1.i.i.i.i, i32* %__old.i.i.i.i, align 4, !dbg !3823
  %30 = load i8, i8* %success.i.i.i.i, align 1, !dbg !3882
  %tobool.i.i.i.i = trunc i8 %30 to i1, !dbg !3882
  %lnot.i.i.i.i = xor i1 %tobool.i.i.i.i, true, !dbg !3882
  %lnot3.i.i.i.i = xor i1 %tobool.i.i.i.i, true, !dbg !3882
  %lnot.ext.i.i.i.i = zext i1 %lnot3.i.i.i.i to i32, !dbg !3882
  %conv.i.i.i.i = sext i32 %lnot.ext.i.i.i.i to i64, !dbg !3882
  br i1 %lnot3.i.i.i.i, label %if.then.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.i.i.i, !dbg !3823

if.then.i.i.i.i:                                  ; preds = %if.end.i.i.i
  %31 = load i32, i32* %__old.i.i.i.i, align 4, !dbg !3882
  %32 = load i32*, i32** %_old.i.i.i.i, align 8, !dbg !3882
  store i32 %31, i32* %32, align 4, !dbg !3882
  br label %arch_atomic_try_cmpxchg.exit.i.i.i, !dbg !3882

arch_atomic_try_cmpxchg.exit.i.i.i:               ; preds = %if.then.i.i.i.i, %if.end.i.i.i
  %33 = load i8, i8* %success.i.i.i.i, align 1, !dbg !3823
  %tobool5.i.i.i.i = trunc i8 %33 to i1, !dbg !3823
  %lnot6.i.i.i.i = xor i1 %tobool5.i.i.i.i, true, !dbg !3823
  %lnot.ext9.i.i.i.i = zext i1 %tobool5.i.i.i.i to i32, !dbg !3823
  %conv10.i.i.i.i = sext i32 %lnot.ext9.i.i.i.i to i64, !dbg !3823
  store i64 %conv10.i.i.i.i, i64* %tmp.i.i.i.i, align 8, !dbg !3882
  %34 = load i64, i64* %tmp.i.i.i.i, align 8, !dbg !3823
  %tobool11.i.i.i.i = icmp ne i64 %34, 0, !dbg !3884
  %lnot3.i.i.i = xor i1 %tobool11.i.i.i.i, true, !dbg !3885
  br i1 %lnot3.i.i.i, label %do.body.i.i.i, label %atomic_add_unless.exit, !dbg !3886, !llvm.loop !3887

atomic_add_unless.exit:                           ; preds = %if.then.i.i.i, %arch_atomic_try_cmpxchg.exit.i.i.i
  %35 = load i32, i32* %c.i.i.i, align 4, !dbg !3889
  %36 = load i32, i32* %u.addr.i.i, align 4, !dbg !3890
  %cmp.i.i = icmp ne i32 %35, %36, !dbg !3891
  ret void, !dbg !3892
}

; Function Attrs: noredzone
declare dso_local i32 @_mmc_detect_card_removed(%struct.mmc_host*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_runtime_put_sync(%struct.device* %dev) #0 !dbg !3893 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3894, metadata !DIExpression()), !dbg !3895
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3896
  %call = call i32 @__pm_runtime_idle(%struct.device* %0, i32 4) #5, !dbg !3897
  ret i32 %call, !dbg !3898
}

; Function Attrs: noredzone
declare dso_local void @mmc_power_off(%struct.mmc_host*) #2

; Function Attrs: noredzone
declare dso_local i32 @__pm_runtime_resume(%struct.device*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !3899 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !3903, metadata !DIExpression()), !dbg !3904
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !3905, metadata !DIExpression()), !dbg !3906
  ret i1 true, !dbg !3907
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !3908 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3912, metadata !DIExpression()), !dbg !3913
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3914, metadata !DIExpression()), !dbg !3915
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !3916, metadata !DIExpression()), !dbg !3917
  ret void, !dbg !3918
}

; Function Attrs: noredzone
declare dso_local i32 @__pm_runtime_idle(%struct.device*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mmc_card_keep_power(%struct.mmc_host* %host) #0 !dbg !3919 {
entry:
  %host.addr = alloca %struct.mmc_host*, align 8
  store %struct.mmc_host* %host, %struct.mmc_host** %host.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_host** %host.addr, metadata !3920, metadata !DIExpression()), !dbg !3921
  %0 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3922
  %pm_flags = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %0, i32 0, i32 53, !dbg !3923
  %1 = load i32, i32* %pm_flags, align 64, !dbg !3923
  %and = and i32 %1, 1, !dbg !3924
  ret i32 %and, !dbg !3925
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @cancel_delayed_work_sync(%struct.delayed_work*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mmc_card_wake_sdio_irq(%struct.mmc_host* %host) #0 !dbg !3926 {
entry:
  %host.addr = alloca %struct.mmc_host*, align 8
  store %struct.mmc_host* %host, %struct.mmc_host** %host.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_host** %host.addr, metadata !3927, metadata !DIExpression()), !dbg !3928
  %0 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3929
  %pm_flags = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %0, i32 0, i32 53, !dbg !3930
  %1 = load i32, i32* %pm_flags, align 64, !dbg !3930
  %and = and i32 %1, 2, !dbg !3931
  ret i32 %and, !dbg !3932
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sdio_disable_4bit_bus(%struct.mmc_card* %card) #0 !dbg !3933 {
entry:
  %retval = alloca i32, align 4
  %card.addr = alloca %struct.mmc_card*, align 8
  %err = alloca i32, align 4
  store %struct.mmc_card* %card, %struct.mmc_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %card.addr, metadata !3936, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.declare(metadata i32* %err, metadata !3938, metadata !DIExpression()), !dbg !3939
  %0 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !3940
  %type = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %0, i32 0, i32 4, !dbg !3942
  %1 = load i32, i32* %type, align 8, !dbg !3942
  %cmp = icmp eq i32 %1, 2, !dbg !3943
  br i1 %cmp, label %if.then, label %if.end, !dbg !3944

if.then:                                          ; preds = %entry
  br label %out, !dbg !3945

if.end:                                           ; preds = %entry
  %2 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !3946
  %host = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %2, i32 0, i32 0, !dbg !3948
  %3 = load %struct.mmc_host*, %struct.mmc_host** %host, align 8, !dbg !3948
  %caps = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %3, i32 0, i32 17, !dbg !3949
  %4 = load i32, i32* %caps, align 4, !dbg !3949
  %and = and i32 %4, 1, !dbg !3950
  %tobool = icmp ne i32 %and, 0, !dbg !3950
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !3951

if.then1:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3952
  br label %return, !dbg !3952

if.end2:                                          ; preds = %if.end
  %5 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !3953
  %scr = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %5, i32 0, i32 22, !dbg !3955
  %bus_widths = getelementptr inbounds %struct.sd_scr, %struct.sd_scr* %scr, i32 0, i32 4, !dbg !3956
  %6 = load i8, i8* %bus_widths, align 4, !dbg !3956
  %conv = zext i8 %6 to i32, !dbg !3953
  %and3 = and i32 %conv, 4, !dbg !3957
  %tobool4 = icmp ne i32 %and3, 0, !dbg !3957
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !3958

if.then5:                                         ; preds = %if.end2
  store i32 0, i32* %retval, align 4, !dbg !3959
  br label %return, !dbg !3959

if.end6:                                          ; preds = %if.end2
  %7 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !3960
  %call = call i32 @mmc_app_set_bus_width(%struct.mmc_card* %7, i32 0) #5, !dbg !3961
  store i32 %call, i32* %err, align 4, !dbg !3962
  %8 = load i32, i32* %err, align 4, !dbg !3963
  %tobool7 = icmp ne i32 %8, 0, !dbg !3963
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !3965

if.then8:                                         ; preds = %if.end6
  %9 = load i32, i32* %err, align 4, !dbg !3966
  store i32 %9, i32* %retval, align 4, !dbg !3967
  br label %return, !dbg !3967

if.end9:                                          ; preds = %if.end6
  br label %out, !dbg !3963

out:                                              ; preds = %if.end9, %if.then
  call void @llvm.dbg.label(metadata !3968), !dbg !3969
  %10 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !3970
  %call10 = call i32 @sdio_disable_wide(%struct.mmc_card* %10) #5, !dbg !3971
  store i32 %call10, i32* %retval, align 4, !dbg !3972
  br label %return, !dbg !3972

return:                                           ; preds = %out, %if.then8, %if.then5, %if.then1
  %11 = load i32, i32* %retval, align 4, !dbg !3973
  ret i32 %11, !dbg !3973
}

; Function Attrs: noredzone
declare dso_local void @mmc_retune_timer_stop(%struct.mmc_host*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mmc_retune_needed(%struct.mmc_host* %host) #0 !dbg !3974 {
entry:
  %host.addr = alloca %struct.mmc_host*, align 8
  store %struct.mmc_host* %host, %struct.mmc_host** %host.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_host** %host.addr, metadata !3975, metadata !DIExpression()), !dbg !3976
  %0 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3977
  %can_retune = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %0, i32 0, i32 30, !dbg !3979
  %bf.load = load i16, i16* %can_retune, align 32, !dbg !3979
  %bf.lshr = lshr i16 %bf.load, 4, !dbg !3979
  %bf.clear = and i16 %bf.lshr, 1, !dbg !3979
  %bf.cast = zext i16 %bf.clear to i32, !dbg !3979
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !3977
  br i1 %tobool, label %if.then, label %if.end, !dbg !3980

if.then:                                          ; preds = %entry
  %1 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !3981
  %need_retune = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %1, i32 0, i32 33, !dbg !3982
  store i32 1, i32* %need_retune, align 4, !dbg !3983
  br label %if.end, !dbg !3981

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3984
}

; Function Attrs: noredzone
declare dso_local i32 @mmc_app_set_bus_width(%struct.mmc_card*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sdio_disable_wide(%struct.mmc_card* %card) #0 !dbg !3985 {
entry:
  %retval = alloca i32, align 4
  %card.addr = alloca %struct.mmc_card*, align 8
  %ret = alloca i32, align 4
  %ctrl = alloca i8, align 1
  store %struct.mmc_card* %card, %struct.mmc_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %card.addr, metadata !3986, metadata !DIExpression()), !dbg !3987
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3988, metadata !DIExpression()), !dbg !3989
  call void @llvm.dbg.declare(metadata i8* %ctrl, metadata !3990, metadata !DIExpression()), !dbg !3991
  %0 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !3992
  %host = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %0, i32 0, i32 0, !dbg !3994
  %1 = load %struct.mmc_host*, %struct.mmc_host** %host, align 8, !dbg !3994
  %caps = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %1, i32 0, i32 17, !dbg !3995
  %2 = load i32, i32* %caps, align 4, !dbg !3995
  %and = and i32 %2, 1, !dbg !3996
  %tobool = icmp ne i32 %and, 0, !dbg !3996
  br i1 %tobool, label %if.end, label %if.then, !dbg !3997

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3998
  br label %return, !dbg !3998

if.end:                                           ; preds = %entry
  %3 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !3999
  %cccr = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %3, i32 0, i32 27, !dbg !4001
  %low_speed = getelementptr inbounds %struct.sdio_cccr, %struct.sdio_cccr* %cccr, i32 0, i32 2, !dbg !4002
  %bf.load = load i8, i8* %low_speed, align 8, !dbg !4002
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !4002
  %bf.clear = and i8 %bf.lshr, 1, !dbg !4002
  %bf.cast = zext i8 %bf.clear to i32, !dbg !4002
  %tobool1 = icmp ne i32 %bf.cast, 0, !dbg !3999
  br i1 %tobool1, label %land.lhs.true, label %if.end9, !dbg !4003

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4004
  %cccr2 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %4, i32 0, i32 27, !dbg !4005
  %wide_bus = getelementptr inbounds %struct.sdio_cccr, %struct.sdio_cccr* %cccr2, i32 0, i32 2, !dbg !4006
  %bf.load3 = load i8, i8* %wide_bus, align 8, !dbg !4006
  %bf.lshr4 = lshr i8 %bf.load3, 2, !dbg !4006
  %bf.clear5 = and i8 %bf.lshr4, 1, !dbg !4006
  %bf.cast6 = zext i8 %bf.clear5 to i32, !dbg !4006
  %tobool7 = icmp ne i32 %bf.cast6, 0, !dbg !4004
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !4007

if.then8:                                         ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4, !dbg !4008
  br label %return, !dbg !4008

if.end9:                                          ; preds = %land.lhs.true, %if.end
  %5 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4009
  %call = call i32 @mmc_io_rw_direct(%struct.mmc_card* %5, i32 0, i32 0, i32 7, i8 zeroext 0, i8* %ctrl) #5, !dbg !4010
  store i32 %call, i32* %ret, align 4, !dbg !4011
  %6 = load i32, i32* %ret, align 4, !dbg !4012
  %tobool10 = icmp ne i32 %6, 0, !dbg !4012
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !4014

if.then11:                                        ; preds = %if.end9
  %7 = load i32, i32* %ret, align 4, !dbg !4015
  store i32 %7, i32* %retval, align 4, !dbg !4016
  br label %return, !dbg !4016

if.end12:                                         ; preds = %if.end9
  %8 = load i8, i8* %ctrl, align 1, !dbg !4017
  %conv = zext i8 %8 to i32, !dbg !4017
  %and13 = and i32 %conv, 2, !dbg !4019
  %tobool14 = icmp ne i32 %and13, 0, !dbg !4019
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !4020

if.then15:                                        ; preds = %if.end12
  store i32 0, i32* %retval, align 4, !dbg !4021
  br label %return, !dbg !4021

if.end16:                                         ; preds = %if.end12
  %9 = load i8, i8* %ctrl, align 1, !dbg !4022
  %conv17 = zext i8 %9 to i32, !dbg !4022
  %and18 = and i32 %conv17, -3, !dbg !4022
  %conv19 = trunc i32 %and18 to i8, !dbg !4022
  store i8 %conv19, i8* %ctrl, align 1, !dbg !4022
  %10 = load i8, i8* %ctrl, align 1, !dbg !4023
  %conv20 = zext i8 %10 to i32, !dbg !4023
  %or = or i32 %conv20, 32, !dbg !4023
  %conv21 = trunc i32 %or to i8, !dbg !4023
  store i8 %conv21, i8* %ctrl, align 1, !dbg !4023
  %11 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4024
  %12 = load i8, i8* %ctrl, align 1, !dbg !4025
  %call22 = call i32 @mmc_io_rw_direct(%struct.mmc_card* %11, i32 1, i32 0, i32 7, i8 zeroext %12, i8* null) #5, !dbg !4026
  store i32 %call22, i32* %ret, align 4, !dbg !4027
  %13 = load i32, i32* %ret, align 4, !dbg !4028
  %tobool23 = icmp ne i32 %13, 0, !dbg !4028
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !4030

if.then24:                                        ; preds = %if.end16
  %14 = load i32, i32* %ret, align 4, !dbg !4031
  store i32 %14, i32* %retval, align 4, !dbg !4032
  br label %return, !dbg !4032

if.end25:                                         ; preds = %if.end16
  %15 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4033
  %host26 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %15, i32 0, i32 0, !dbg !4034
  %16 = load %struct.mmc_host*, %struct.mmc_host** %host26, align 8, !dbg !4034
  call void @mmc_set_bus_width(%struct.mmc_host* %16, i32 0) #5, !dbg !4035
  store i32 0, i32* %retval, align 4, !dbg !4036
  br label %return, !dbg !4036

return:                                           ; preds = %if.end25, %if.then24, %if.then15, %if.then11, %if.then8, %if.then
  %17 = load i32, i32* %retval, align 4, !dbg !4037
  ret i32 %17, !dbg !4037
}

; Function Attrs: noredzone
declare dso_local i32 @mmc_io_rw_direct(%struct.mmc_card*, i32, i32, i32, i8 zeroext, i8*) #2

; Function Attrs: noredzone
declare dso_local void @mmc_set_bus_width(%struct.mmc_host*, i32) #2

; Function Attrs: noredzone
declare dso_local void @mmc_power_up(%struct.mmc_host*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pm_runtime_disable(%struct.device* %dev) #0 !dbg !4038 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4039, metadata !DIExpression()), !dbg !4040
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4041
  call void @__pm_runtime_disable(%struct.device* %0, i1 zeroext true) #5, !dbg !4042
  ret void, !dbg !4043
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mmc_sdio_reinit_card(%struct.mmc_host* %host) #0 !dbg !4044 {
entry:
  %retval = alloca i32, align 4
  %host.addr = alloca %struct.mmc_host*, align 8
  %ret = alloca i32, align 4
  store %struct.mmc_host* %host, %struct.mmc_host** %host.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_host** %host.addr, metadata !4045, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4047, metadata !DIExpression()), !dbg !4048
  %0 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !4049
  %1 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !4050
  %card = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %1, i32 0, i32 38, !dbg !4051
  %2 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !4051
  %ocr = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %2, i32 0, i32 2, !dbg !4052
  %3 = load i32, i32* %ocr, align 8, !dbg !4052
  %call = call i32 @mmc_sdio_pre_init(%struct.mmc_host* %0, i32 %3, %struct.mmc_card* null) #5, !dbg !4053
  store i32 %call, i32* %ret, align 4, !dbg !4054
  %4 = load i32, i32* %ret, align 4, !dbg !4055
  %tobool = icmp ne i32 %4, 0, !dbg !4055
  br i1 %tobool, label %if.then, label %if.end, !dbg !4057

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4, !dbg !4058
  store i32 %5, i32* %retval, align 4, !dbg !4059
  br label %return, !dbg !4059

if.end:                                           ; preds = %entry
  %6 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !4060
  %7 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !4061
  %card1 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %7, i32 0, i32 38, !dbg !4062
  %8 = load %struct.mmc_card*, %struct.mmc_card** %card1, align 8, !dbg !4062
  %ocr2 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %8, i32 0, i32 2, !dbg !4063
  %9 = load i32, i32* %ocr2, align 8, !dbg !4063
  %10 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !4064
  %card3 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %10, i32 0, i32 38, !dbg !4065
  %11 = load %struct.mmc_card*, %struct.mmc_card** %card3, align 8, !dbg !4065
  %call4 = call i32 @mmc_sdio_init_card(%struct.mmc_host* %6, i32 %9, %struct.mmc_card* %11) #5, !dbg !4066
  store i32 %call4, i32* %retval, align 4, !dbg !4067
  br label %return, !dbg !4067

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !4068
  ret i32 %12, !dbg !4068
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sdio_enable_4bit_bus(%struct.mmc_card* %card) #0 !dbg !4069 {
entry:
  %retval = alloca i32, align 4
  %card.addr = alloca %struct.mmc_card*, align 8
  %err = alloca i32, align 4
  store %struct.mmc_card* %card, %struct.mmc_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %card.addr, metadata !4070, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4072, metadata !DIExpression()), !dbg !4073
  %0 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4074
  %call = call i32 @sdio_enable_wide(%struct.mmc_card* %0) #5, !dbg !4075
  store i32 %call, i32* %err, align 4, !dbg !4076
  %1 = load i32, i32* %err, align 4, !dbg !4077
  %cmp = icmp sle i32 %1, 0, !dbg !4079
  br i1 %cmp, label %if.then, label %if.end, !dbg !4080

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %err, align 4, !dbg !4081
  store i32 %2, i32* %retval, align 4, !dbg !4082
  br label %return, !dbg !4082

if.end:                                           ; preds = %entry
  %3 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4083
  %type = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %3, i32 0, i32 4, !dbg !4085
  %4 = load i32, i32* %type, align 8, !dbg !4085
  %cmp1 = icmp eq i32 %4, 2, !dbg !4086
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !4087

if.then2:                                         ; preds = %if.end
  br label %out, !dbg !4088

if.end3:                                          ; preds = %if.end
  %5 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4089
  %scr = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %5, i32 0, i32 22, !dbg !4091
  %bus_widths = getelementptr inbounds %struct.sd_scr, %struct.sd_scr* %scr, i32 0, i32 4, !dbg !4092
  %6 = load i8, i8* %bus_widths, align 4, !dbg !4092
  %conv = zext i8 %6 to i32, !dbg !4089
  %and = and i32 %conv, 4, !dbg !4093
  %tobool = icmp ne i32 %and, 0, !dbg !4093
  br i1 %tobool, label %if.then4, label %if.end10, !dbg !4094

if.then4:                                         ; preds = %if.end3
  %7 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4095
  %call5 = call i32 @mmc_app_set_bus_width(%struct.mmc_card* %7, i32 2) #5, !dbg !4097
  store i32 %call5, i32* %err, align 4, !dbg !4098
  %8 = load i32, i32* %err, align 4, !dbg !4099
  %tobool6 = icmp ne i32 %8, 0, !dbg !4099
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !4101

if.then7:                                         ; preds = %if.then4
  %9 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4102
  %call8 = call i32 @sdio_disable_wide(%struct.mmc_card* %9) #5, !dbg !4104
  %10 = load i32, i32* %err, align 4, !dbg !4105
  store i32 %10, i32* %retval, align 4, !dbg !4106
  br label %return, !dbg !4106

if.end9:                                          ; preds = %if.then4
  br label %if.end10, !dbg !4107

if.end10:                                         ; preds = %if.end9, %if.end3
  br label %out, !dbg !4108

out:                                              ; preds = %if.end10, %if.then2
  call void @llvm.dbg.label(metadata !4109), !dbg !4110
  %11 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4111
  %host = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %11, i32 0, i32 0, !dbg !4112
  %12 = load %struct.mmc_host*, %struct.mmc_host** %host, align 8, !dbg !4112
  call void @mmc_set_bus_width(%struct.mmc_host* %12, i32 2) #5, !dbg !4113
  store i32 0, i32* %retval, align 4, !dbg !4114
  br label %return, !dbg !4114

return:                                           ; preds = %out, %if.then7, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !4115
  ret i32 %13, !dbg !4115
}

; Function Attrs: noredzone
declare dso_local i32 @wake_up_process(%struct.task_struct*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @queue_delayed_work(%struct.workqueue_struct* %wq, %struct.delayed_work* %dwork, i64 %delay) #0 !dbg !4116 {
entry:
  %wq.addr = alloca %struct.workqueue_struct*, align 8
  %dwork.addr = alloca %struct.delayed_work*, align 8
  %delay.addr = alloca i64, align 8
  store %struct.workqueue_struct* %wq, %struct.workqueue_struct** %wq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.workqueue_struct** %wq.addr, metadata !4120, metadata !DIExpression()), !dbg !4121
  store %struct.delayed_work* %dwork, %struct.delayed_work** %dwork.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.delayed_work** %dwork.addr, metadata !4122, metadata !DIExpression()), !dbg !4123
  store i64 %delay, i64* %delay.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %delay.addr, metadata !4124, metadata !DIExpression()), !dbg !4125
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** %wq.addr, align 8, !dbg !4126
  %1 = load %struct.delayed_work*, %struct.delayed_work** %dwork.addr, align 8, !dbg !4127
  %2 = load i64, i64* %delay.addr, align 8, !dbg !4128
  %call = call zeroext i1 @queue_delayed_work_on(i32 1, %struct.workqueue_struct* %0, %struct.delayed_work* %1, i64 %2) #5, !dbg !4129
  ret i1 %call, !dbg !4130
}

; Function Attrs: noredzone
declare dso_local void @__pm_runtime_disable(%struct.device*, i1 zeroext) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mmc_sdio_pre_init(%struct.mmc_host* %host, i32 %ocr, %struct.mmc_card* %card) #0 !dbg !4131 {
entry:
  %host.addr = alloca %struct.mmc_host*, align 8
  %ocr.addr = alloca i32, align 4
  %card.addr = alloca %struct.mmc_card*, align 8
  store %struct.mmc_host* %host, %struct.mmc_host** %host.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_host** %host.addr, metadata !4132, metadata !DIExpression()), !dbg !4133
  store i32 %ocr, i32* %ocr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ocr.addr, metadata !4134, metadata !DIExpression()), !dbg !4135
  store %struct.mmc_card* %card, %struct.mmc_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %card.addr, metadata !4136, metadata !DIExpression()), !dbg !4137
  %0 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4138
  %tobool = icmp ne %struct.mmc_card* %0, null, !dbg !4138
  br i1 %tobool, label %if.then, label %if.end, !dbg !4140

if.then:                                          ; preds = %entry
  %1 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4141
  call void @mmc_remove_card(%struct.mmc_card* %1) #5, !dbg !4142
  br label %if.end, !dbg !4142

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !4143
  %call = call i32 @sdio_reset(%struct.mmc_host* %2) #5, !dbg !4144
  %3 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !4145
  %call1 = call i32 @mmc_go_idle(%struct.mmc_host* %3) #5, !dbg !4146
  %4 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !4147
  %5 = load i32, i32* %ocr.addr, align 4, !dbg !4148
  %call2 = call i32 @mmc_send_if_cond(%struct.mmc_host* %4, i32 %5) #5, !dbg !4149
  %6 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !4150
  %call3 = call i32 @mmc_send_io_op_cond(%struct.mmc_host* %6, i32 0, i32* null) #5, !dbg !4151
  ret i32 %call3, !dbg !4152
}

; Function Attrs: noredzone
declare dso_local void @mmc_remove_card(%struct.mmc_card*) #2

; Function Attrs: noredzone
declare dso_local i32 @sdio_reset(%struct.mmc_host*) #2

; Function Attrs: noredzone
declare dso_local i32 @mmc_go_idle(%struct.mmc_host*) #2

; Function Attrs: noredzone
declare dso_local i32 @mmc_send_if_cond(%struct.mmc_host*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sdio_enable_wide(%struct.mmc_card* %card) #0 !dbg !4153 {
entry:
  %retval = alloca i32, align 4
  %card.addr = alloca %struct.mmc_card*, align 8
  %ret = alloca i32, align 4
  %ctrl = alloca i8, align 1
  store %struct.mmc_card* %card, %struct.mmc_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %card.addr, metadata !4154, metadata !DIExpression()), !dbg !4155
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4156, metadata !DIExpression()), !dbg !4157
  call void @llvm.dbg.declare(metadata i8* %ctrl, metadata !4158, metadata !DIExpression()), !dbg !4159
  %0 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4160
  %host = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %0, i32 0, i32 0, !dbg !4162
  %1 = load %struct.mmc_host*, %struct.mmc_host** %host, align 8, !dbg !4162
  %caps = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %1, i32 0, i32 17, !dbg !4163
  %2 = load i32, i32* %caps, align 4, !dbg !4163
  %and = and i32 %2, 1, !dbg !4164
  %tobool = icmp ne i32 %and, 0, !dbg !4164
  br i1 %tobool, label %if.end, label %if.then, !dbg !4165

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4166
  br label %return, !dbg !4166

if.end:                                           ; preds = %entry
  %3 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4167
  %cccr = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %3, i32 0, i32 27, !dbg !4169
  %low_speed = getelementptr inbounds %struct.sdio_cccr, %struct.sdio_cccr* %cccr, i32 0, i32 2, !dbg !4170
  %bf.load = load i8, i8* %low_speed, align 8, !dbg !4170
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !4170
  %bf.clear = and i8 %bf.lshr, 1, !dbg !4170
  %bf.cast = zext i8 %bf.clear to i32, !dbg !4170
  %tobool1 = icmp ne i32 %bf.cast, 0, !dbg !4167
  br i1 %tobool1, label %land.lhs.true, label %if.end9, !dbg !4171

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4172
  %cccr2 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %4, i32 0, i32 27, !dbg !4173
  %wide_bus = getelementptr inbounds %struct.sdio_cccr, %struct.sdio_cccr* %cccr2, i32 0, i32 2, !dbg !4174
  %bf.load3 = load i8, i8* %wide_bus, align 8, !dbg !4174
  %bf.lshr4 = lshr i8 %bf.load3, 2, !dbg !4174
  %bf.clear5 = and i8 %bf.lshr4, 1, !dbg !4174
  %bf.cast6 = zext i8 %bf.clear5 to i32, !dbg !4174
  %tobool7 = icmp ne i32 %bf.cast6, 0, !dbg !4172
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !4175

if.then8:                                         ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4, !dbg !4176
  br label %return, !dbg !4176

if.end9:                                          ; preds = %land.lhs.true, %if.end
  %5 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4177
  %call = call i32 @mmc_io_rw_direct(%struct.mmc_card* %5, i32 0, i32 0, i32 7, i8 zeroext 0, i8* %ctrl) #5, !dbg !4178
  store i32 %call, i32* %ret, align 4, !dbg !4179
  %6 = load i32, i32* %ret, align 4, !dbg !4180
  %tobool10 = icmp ne i32 %6, 0, !dbg !4180
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !4182

if.then11:                                        ; preds = %if.end9
  %7 = load i32, i32* %ret, align 4, !dbg !4183
  store i32 %7, i32* %retval, align 4, !dbg !4184
  br label %return, !dbg !4184

if.end12:                                         ; preds = %if.end9
  %8 = load i8, i8* %ctrl, align 1, !dbg !4185
  %conv = zext i8 %8 to i32, !dbg !4185
  %and13 = and i32 %conv, 3, !dbg !4187
  %cmp = icmp eq i32 %and13, 1, !dbg !4188
  br i1 %cmp, label %if.then15, label %if.end20, !dbg !4189

if.then15:                                        ; preds = %if.end12
  %9 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4190
  %host16 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %9, i32 0, i32 0, !dbg !4190
  %10 = load %struct.mmc_host*, %struct.mmc_host** %host16, align 8, !dbg !4190
  %class_dev = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %10, i32 0, i32 1, !dbg !4190
  %call17 = call i8* @dev_name(%struct.device* %class_dev) #5, !dbg !4190
  %11 = load i8, i8* %ctrl, align 1, !dbg !4190
  %conv18 = zext i8 %11 to i32, !dbg !4190
  %call19 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %call17, i32 %conv18) #6, !dbg !4190
  br label %if.end20, !dbg !4190

if.end20:                                         ; preds = %if.then15, %if.end12
  %12 = load i8, i8* %ctrl, align 1, !dbg !4191
  %conv21 = zext i8 %12 to i32, !dbg !4191
  %and22 = and i32 %conv21, -4, !dbg !4191
  %conv23 = trunc i32 %and22 to i8, !dbg !4191
  store i8 %conv23, i8* %ctrl, align 1, !dbg !4191
  %13 = load i8, i8* %ctrl, align 1, !dbg !4192
  %conv24 = zext i8 %13 to i32, !dbg !4192
  %or = or i32 %conv24, 2, !dbg !4192
  %conv25 = trunc i32 %or to i8, !dbg !4192
  store i8 %conv25, i8* %ctrl, align 1, !dbg !4192
  %14 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4193
  %15 = load i8, i8* %ctrl, align 1, !dbg !4194
  %call26 = call i32 @mmc_io_rw_direct(%struct.mmc_card* %14, i32 1, i32 0, i32 7, i8 zeroext %15, i8* null) #5, !dbg !4195
  store i32 %call26, i32* %ret, align 4, !dbg !4196
  %16 = load i32, i32* %ret, align 4, !dbg !4197
  %tobool27 = icmp ne i32 %16, 0, !dbg !4197
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !4199

if.then28:                                        ; preds = %if.end20
  %17 = load i32, i32* %ret, align 4, !dbg !4200
  store i32 %17, i32* %retval, align 4, !dbg !4201
  br label %return, !dbg !4201

if.end29:                                         ; preds = %if.end20
  store i32 1, i32* %retval, align 4, !dbg !4202
  br label %return, !dbg !4202

return:                                           ; preds = %if.end29, %if.then28, %if.then11, %if.then8, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !4203
  ret i32 %18, !dbg !4203
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @queue_delayed_work_on(i32, %struct.workqueue_struct*, %struct.delayed_work*, i64) #2

; Function Attrs: noredzone
declare dso_local i32 @mmc_select_card(%struct.mmc_card*) #2

; Function Attrs: noredzone
declare dso_local void @_mmc_detect_change(%struct.mmc_host*, i64, i1 zeroext) #2

; Function Attrs: noredzone
declare dso_local void @mmc_power_cycle(%struct.mmc_host*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !4204 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !4205, metadata !DIExpression()), !dbg !4206
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !4207, metadata !DIExpression()), !dbg !4208
  ret i1 true, !dbg !4209
}

; Function Attrs: noredzone
declare dso_local void @mmc_set_clock(%struct.mmc_host*, i32) #2

; Function Attrs: noredzone
declare dso_local void @mmc_set_initial_state(%struct.mmc_host*) #2

; Function Attrs: noredzone
declare dso_local void @mmc_set_initial_signal_voltage(%struct.mmc_host*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mmc_host_uhs(%struct.mmc_host* %host) #0 !dbg !4210 {
entry:
  %host.addr = alloca %struct.mmc_host*, align 8
  store %struct.mmc_host* %host, %struct.mmc_host** %host.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_host** %host.addr, metadata !4212, metadata !DIExpression()), !dbg !4213
  %0 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !4214
  %caps = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %0, i32 0, i32 17, !dbg !4215
  %1 = load i32, i32* %caps, align 4, !dbg !4215
  %and = and i32 %1, 2031616, !dbg !4216
  %tobool = icmp ne i32 %and, 0, !dbg !4216
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !4217

land.rhs:                                         ; preds = %entry
  %2 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !4218
  %caps1 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %2, i32 0, i32 17, !dbg !4219
  %3 = load i32, i32* %caps1, align 4, !dbg !4219
  %and2 = and i32 %3, 1, !dbg !4220
  %tobool3 = icmp ne i32 %and2, 0, !dbg !4217
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %tobool3, %land.rhs ], !dbg !4221
  %land.ext = zext i1 %4 to i32, !dbg !4217
  ret i32 %land.ext, !dbg !4222
}

; Function Attrs: noredzone
declare dso_local i32 @mmc_spi_set_crc(%struct.mmc_host*, i32) #2

; Function Attrs: noredzone
declare dso_local %struct.mmc_card* @mmc_alloc_card(%struct.mmc_host*, %struct.device_type*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !4223 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4227, metadata !DIExpression()), !dbg !4228
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4229
  %1 = ptrtoint i8* %0 to i64, !dbg !4229
  %2 = inttoptr i64 %1 to i8*, !dbg !4229
  %3 = ptrtoint i8* %2 to i64, !dbg !4229
  %cmp = icmp uge i64 %3, -4095, !dbg !4229
  %lnot = xor i1 %cmp, true, !dbg !4229
  %lnot1 = xor i1 %lnot, true, !dbg !4229
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4229
  %conv = sext i32 %lnot.ext to i64, !dbg !4229
  %tobool = icmp ne i64 %conv, 0, !dbg !4229
  ret i1 %tobool, !dbg !4230
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !4231 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4234, metadata !DIExpression()), !dbg !4235
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4236
  %1 = ptrtoint i8* %0 to i64, !dbg !4237
  ret i64 %1, !dbg !4238
}

; Function Attrs: noredzone
declare dso_local i32 @mmc_sd_get_cid(%struct.mmc_host*, i32, i32*, i32*) #2

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) #2

; Function Attrs: noredzone
declare dso_local i32 @mmc_set_uhs_voltage(%struct.mmc_host*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @mmc_send_relative_addr(%struct.mmc_host*, i32*) #2

; Function Attrs: noredzone
declare dso_local i32 @mmc_sd_get_csd(%struct.mmc_host*, %struct.mmc_card*) #2

; Function Attrs: noredzone
declare dso_local void @mmc_decode_cid(%struct.mmc_card*) #2

; Function Attrs: noredzone
declare dso_local void @mmc_set_timing(%struct.mmc_host*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sdio_read_cccr(%struct.mmc_card* %card, i32 %ocr) #0 !dbg !4239 {
entry:
  %retval = alloca i32, align 4
  %card.addr = alloca %struct.mmc_card*, align 8
  %ocr.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %cccr_vsn = alloca i32, align 4
  %uhs = alloca i32, align 4
  %data = alloca i8, align 1
  %speed = alloca i8, align 1
  store %struct.mmc_card* %card, %struct.mmc_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %card.addr, metadata !4242, metadata !DIExpression()), !dbg !4243
  store i32 %ocr, i32* %ocr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ocr.addr, metadata !4244, metadata !DIExpression()), !dbg !4245
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4246, metadata !DIExpression()), !dbg !4247
  call void @llvm.dbg.declare(metadata i32* %cccr_vsn, metadata !4248, metadata !DIExpression()), !dbg !4249
  call void @llvm.dbg.declare(metadata i32* %uhs, metadata !4250, metadata !DIExpression()), !dbg !4251
  %0 = load i32, i32* %ocr.addr, align 4, !dbg !4252
  %and = and i32 %0, 16777216, !dbg !4253
  store i32 %and, i32* %uhs, align 4, !dbg !4251
  call void @llvm.dbg.declare(metadata i8* %data, metadata !4254, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.declare(metadata i8* %speed, metadata !4256, metadata !DIExpression()), !dbg !4257
  %1 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4258
  %call = call i32 @mmc_io_rw_direct(%struct.mmc_card* %1, i32 0, i32 0, i32 0, i8 zeroext 0, i8* %data) #5, !dbg !4259
  store i32 %call, i32* %ret, align 4, !dbg !4260
  %2 = load i32, i32* %ret, align 4, !dbg !4261
  %tobool = icmp ne i32 %2, 0, !dbg !4261
  br i1 %tobool, label %if.then, label %if.end, !dbg !4263

if.then:                                          ; preds = %entry
  br label %out, !dbg !4264

if.end:                                           ; preds = %entry
  %3 = load i8, i8* %data, align 1, !dbg !4265
  %conv = zext i8 %3 to i32, !dbg !4265
  %and1 = and i32 %conv, 15, !dbg !4266
  store i32 %and1, i32* %cccr_vsn, align 4, !dbg !4267
  %4 = load i32, i32* %cccr_vsn, align 4, !dbg !4268
  %cmp = icmp sgt i32 %4, 3, !dbg !4270
  br i1 %cmp, label %if.then3, label %if.end6, !dbg !4271

if.then3:                                         ; preds = %if.end
  %5 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4272
  %host = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %5, i32 0, i32 0, !dbg !4272
  %6 = load %struct.mmc_host*, %struct.mmc_host** %host, align 8, !dbg !4272
  %class_dev = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %6, i32 0, i32 1, !dbg !4272
  %call4 = call i8* @dev_name(%struct.device* %class_dev) #5, !dbg !4272
  %7 = load i32, i32* %cccr_vsn, align 4, !dbg !4272
  %call5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.19, i64 0, i64 0), i8* %call4, i32 %7) #6, !dbg !4272
  store i32 -22, i32* %retval, align 4, !dbg !4274
  br label %return, !dbg !4274

if.end6:                                          ; preds = %if.end
  %8 = load i8, i8* %data, align 1, !dbg !4275
  %conv7 = zext i8 %8 to i32, !dbg !4275
  %and8 = and i32 %conv7, 240, !dbg !4276
  %shr = ashr i32 %and8, 4, !dbg !4277
  %9 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4278
  %cccr = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %9, i32 0, i32 27, !dbg !4279
  %sdio_vsn = getelementptr inbounds %struct.sdio_cccr, %struct.sdio_cccr* %cccr, i32 0, i32 0, !dbg !4280
  store i32 %shr, i32* %sdio_vsn, align 8, !dbg !4281
  %10 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4282
  %call9 = call i32 @mmc_io_rw_direct(%struct.mmc_card* %10, i32 0, i32 0, i32 8, i8 zeroext 0, i8* %data) #5, !dbg !4283
  store i32 %call9, i32* %ret, align 4, !dbg !4284
  %11 = load i32, i32* %ret, align 4, !dbg !4285
  %tobool10 = icmp ne i32 %11, 0, !dbg !4285
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !4287

if.then11:                                        ; preds = %if.end6
  br label %out, !dbg !4288

if.end12:                                         ; preds = %if.end6
  %12 = load i8, i8* %data, align 1, !dbg !4289
  %conv13 = zext i8 %12 to i32, !dbg !4289
  %and14 = and i32 %conv13, 2, !dbg !4291
  %tobool15 = icmp ne i32 %and14, 0, !dbg !4291
  br i1 %tobool15, label %if.then16, label %if.end18, !dbg !4292

if.then16:                                        ; preds = %if.end12
  %13 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4293
  %cccr17 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %13, i32 0, i32 27, !dbg !4294
  %multi_block = getelementptr inbounds %struct.sdio_cccr, %struct.sdio_cccr* %cccr17, i32 0, i32 2, !dbg !4295
  %bf.load = load i8, i8* %multi_block, align 8, !dbg !4296
  %bf.clear = and i8 %bf.load, -2, !dbg !4296
  %bf.set = or i8 %bf.clear, 1, !dbg !4296
  store i8 %bf.set, i8* %multi_block, align 8, !dbg !4296
  br label %if.end18, !dbg !4293

if.end18:                                         ; preds = %if.then16, %if.end12
  %14 = load i8, i8* %data, align 1, !dbg !4297
  %conv19 = zext i8 %14 to i32, !dbg !4297
  %and20 = and i32 %conv19, 64, !dbg !4299
  %tobool21 = icmp ne i32 %and20, 0, !dbg !4299
  br i1 %tobool21, label %if.then22, label %if.end27, !dbg !4300

if.then22:                                        ; preds = %if.end18
  %15 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4301
  %cccr23 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %15, i32 0, i32 27, !dbg !4302
  %low_speed = getelementptr inbounds %struct.sdio_cccr, %struct.sdio_cccr* %cccr23, i32 0, i32 2, !dbg !4303
  %bf.load24 = load i8, i8* %low_speed, align 8, !dbg !4304
  %bf.clear25 = and i8 %bf.load24, -3, !dbg !4304
  %bf.set26 = or i8 %bf.clear25, 2, !dbg !4304
  store i8 %bf.set26, i8* %low_speed, align 8, !dbg !4304
  br label %if.end27, !dbg !4301

if.end27:                                         ; preds = %if.then22, %if.end18
  %16 = load i8, i8* %data, align 1, !dbg !4305
  %conv28 = zext i8 %16 to i32, !dbg !4305
  %and29 = and i32 %conv28, 128, !dbg !4307
  %tobool30 = icmp ne i32 %and29, 0, !dbg !4307
  br i1 %tobool30, label %if.then31, label %if.end36, !dbg !4308

if.then31:                                        ; preds = %if.end27
  %17 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4309
  %cccr32 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %17, i32 0, i32 27, !dbg !4310
  %wide_bus = getelementptr inbounds %struct.sdio_cccr, %struct.sdio_cccr* %cccr32, i32 0, i32 2, !dbg !4311
  %bf.load33 = load i8, i8* %wide_bus, align 8, !dbg !4312
  %bf.clear34 = and i8 %bf.load33, -5, !dbg !4312
  %bf.set35 = or i8 %bf.clear34, 4, !dbg !4312
  store i8 %bf.set35, i8* %wide_bus, align 8, !dbg !4312
  br label %if.end36, !dbg !4309

if.end36:                                         ; preds = %if.then31, %if.end27
  %18 = load i32, i32* %cccr_vsn, align 4, !dbg !4313
  %cmp37 = icmp sge i32 %18, 1, !dbg !4315
  br i1 %cmp37, label %if.then39, label %if.end53, !dbg !4316

if.then39:                                        ; preds = %if.end36
  %19 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4317
  %call40 = call i32 @mmc_io_rw_direct(%struct.mmc_card* %19, i32 0, i32 0, i32 18, i8 zeroext 0, i8* %data) #5, !dbg !4319
  store i32 %call40, i32* %ret, align 4, !dbg !4320
  %20 = load i32, i32* %ret, align 4, !dbg !4321
  %tobool41 = icmp ne i32 %20, 0, !dbg !4321
  br i1 %tobool41, label %if.then42, label %if.end43, !dbg !4323

if.then42:                                        ; preds = %if.then39
  br label %out, !dbg !4324

if.end43:                                         ; preds = %if.then39
  %21 = load i8, i8* %data, align 1, !dbg !4325
  %conv44 = zext i8 %21 to i32, !dbg !4325
  %and45 = and i32 %conv44, 1, !dbg !4327
  %tobool46 = icmp ne i32 %and45, 0, !dbg !4327
  br i1 %tobool46, label %if.then47, label %if.end52, !dbg !4328

if.then47:                                        ; preds = %if.end43
  %22 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4329
  %cccr48 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %22, i32 0, i32 27, !dbg !4330
  %high_power = getelementptr inbounds %struct.sdio_cccr, %struct.sdio_cccr* %cccr48, i32 0, i32 2, !dbg !4331
  %bf.load49 = load i8, i8* %high_power, align 8, !dbg !4332
  %bf.clear50 = and i8 %bf.load49, -9, !dbg !4332
  %bf.set51 = or i8 %bf.clear50, 8, !dbg !4332
  store i8 %bf.set51, i8* %high_power, align 8, !dbg !4332
  br label %if.end52, !dbg !4329

if.end52:                                         ; preds = %if.then47, %if.end43
  br label %if.end53, !dbg !4333

if.end53:                                         ; preds = %if.end52, %if.end36
  %23 = load i32, i32* %cccr_vsn, align 4, !dbg !4334
  %cmp54 = icmp sge i32 %23, 2, !dbg !4336
  br i1 %cmp54, label %if.then56, label %if.end150, !dbg !4337

if.then56:                                        ; preds = %if.end53
  %24 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4338
  %call57 = call i32 @mmc_io_rw_direct(%struct.mmc_card* %24, i32 0, i32 0, i32 19, i8 zeroext 0, i8* %speed) #5, !dbg !4340
  store i32 %call57, i32* %ret, align 4, !dbg !4341
  %25 = load i32, i32* %ret, align 4, !dbg !4342
  %tobool58 = icmp ne i32 %25, 0, !dbg !4342
  br i1 %tobool58, label %if.then59, label %if.end60, !dbg !4344

if.then59:                                        ; preds = %if.then56
  br label %out, !dbg !4345

if.end60:                                         ; preds = %if.then56
  %26 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4346
  %scr = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %26, i32 0, i32 22, !dbg !4347
  %sda_spec3 = getelementptr inbounds %struct.sd_scr, %struct.sd_scr* %scr, i32 0, i32 1, !dbg !4348
  store i8 0, i8* %sda_spec3, align 1, !dbg !4349
  %27 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4350
  %sw_caps = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %27, i32 0, i32 24, !dbg !4351
  %sd3_bus_mode = getelementptr inbounds %struct.sd_switch_caps, %struct.sd_switch_caps* %sw_caps, i32 0, i32 2, !dbg !4352
  store i32 0, i32* %sd3_bus_mode, align 4, !dbg !4353
  %28 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4354
  %sw_caps61 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %28, i32 0, i32 24, !dbg !4355
  %sd3_drv_type = getelementptr inbounds %struct.sd_switch_caps, %struct.sd_switch_caps* %sw_caps61, i32 0, i32 3, !dbg !4356
  store i32 0, i32* %sd3_drv_type, align 4, !dbg !4357
  %29 = load i32, i32* %cccr_vsn, align 4, !dbg !4358
  %cmp62 = icmp sge i32 %29, 3, !dbg !4360
  br i1 %cmp62, label %land.lhs.true, label %if.end128, !dbg !4361

land.lhs.true:                                    ; preds = %if.end60
  %30 = load i32, i32* %uhs, align 4, !dbg !4362
  %tobool64 = icmp ne i32 %30, 0, !dbg !4362
  br i1 %tobool64, label %if.then65, label %if.end128, !dbg !4363

if.then65:                                        ; preds = %land.lhs.true
  %31 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4364
  %scr66 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %31, i32 0, i32 22, !dbg !4366
  %sda_spec367 = getelementptr inbounds %struct.sd_scr, %struct.sd_scr* %scr66, i32 0, i32 1, !dbg !4367
  store i8 1, i8* %sda_spec367, align 1, !dbg !4368
  %32 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4369
  %call68 = call i32 @mmc_io_rw_direct(%struct.mmc_card* %32, i32 0, i32 0, i32 20, i8 zeroext 0, i8* %data) #5, !dbg !4370
  store i32 %call68, i32* %ret, align 4, !dbg !4371
  %33 = load i32, i32* %ret, align 4, !dbg !4372
  %tobool69 = icmp ne i32 %33, 0, !dbg !4372
  br i1 %tobool69, label %if.then70, label %if.end71, !dbg !4374

if.then70:                                        ; preds = %if.then65
  br label %out, !dbg !4375

if.end71:                                         ; preds = %if.then65
  %34 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4376
  %host72 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %34, i32 0, i32 0, !dbg !4378
  %35 = load %struct.mmc_host*, %struct.mmc_host** %host72, align 8, !dbg !4378
  %call73 = call i32 @mmc_host_uhs(%struct.mmc_host* %35) #5, !dbg !4379
  %tobool74 = icmp ne i32 %call73, 0, !dbg !4379
  br i1 %tobool74, label %if.then75, label %if.end99, !dbg !4380

if.then75:                                        ; preds = %if.end71
  %36 = load i8, i8* %data, align 1, !dbg !4381
  %conv76 = zext i8 %36 to i32, !dbg !4381
  %and77 = and i32 %conv76, 4, !dbg !4384
  %tobool78 = icmp ne i32 %and77, 0, !dbg !4384
  br i1 %tobool78, label %if.then79, label %if.end82, !dbg !4385

if.then79:                                        ; preds = %if.then75
  %37 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4386
  %sw_caps80 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %37, i32 0, i32 24, !dbg !4387
  %sd3_bus_mode81 = getelementptr inbounds %struct.sd_switch_caps, %struct.sd_switch_caps* %sw_caps80, i32 0, i32 2, !dbg !4388
  %38 = load i32, i32* %sd3_bus_mode81, align 4, !dbg !4389
  %or = or i32 %38, 23, !dbg !4389
  store i32 %or, i32* %sd3_bus_mode81, align 4, !dbg !4389
  br label %if.end82, !dbg !4386

if.end82:                                         ; preds = %if.then79, %if.then75
  %39 = load i8, i8* %data, align 1, !dbg !4390
  %conv83 = zext i8 %39 to i32, !dbg !4390
  %and84 = and i32 %conv83, 1, !dbg !4392
  %tobool85 = icmp ne i32 %and84, 0, !dbg !4392
  br i1 %tobool85, label %if.then86, label %if.end90, !dbg !4393

if.then86:                                        ; preds = %if.end82
  %40 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4394
  %sw_caps87 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %40, i32 0, i32 24, !dbg !4395
  %sd3_bus_mode88 = getelementptr inbounds %struct.sd_switch_caps, %struct.sd_switch_caps* %sw_caps87, i32 0, i32 2, !dbg !4396
  %41 = load i32, i32* %sd3_bus_mode88, align 4, !dbg !4397
  %or89 = or i32 %41, 7, !dbg !4397
  store i32 %or89, i32* %sd3_bus_mode88, align 4, !dbg !4397
  br label %if.end90, !dbg !4394

if.end90:                                         ; preds = %if.then86, %if.end82
  %42 = load i8, i8* %data, align 1, !dbg !4398
  %conv91 = zext i8 %42 to i32, !dbg !4398
  %and92 = and i32 %conv91, 2, !dbg !4400
  %tobool93 = icmp ne i32 %and92, 0, !dbg !4400
  br i1 %tobool93, label %if.then94, label %if.end98, !dbg !4401

if.then94:                                        ; preds = %if.end90
  %43 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4402
  %sw_caps95 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %43, i32 0, i32 24, !dbg !4403
  %sd3_bus_mode96 = getelementptr inbounds %struct.sd_switch_caps, %struct.sd_switch_caps* %sw_caps95, i32 0, i32 2, !dbg !4404
  %44 = load i32, i32* %sd3_bus_mode96, align 4, !dbg !4405
  %or97 = or i32 %44, 15, !dbg !4405
  store i32 %or97, i32* %sd3_bus_mode96, align 4, !dbg !4405
  br label %if.end98, !dbg !4402

if.end98:                                         ; preds = %if.then94, %if.end90
  br label %if.end99, !dbg !4406

if.end99:                                         ; preds = %if.end98, %if.end71
  %45 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4407
  %call100 = call i32 @mmc_io_rw_direct(%struct.mmc_card* %45, i32 0, i32 0, i32 21, i8 zeroext 0, i8* %data) #5, !dbg !4408
  store i32 %call100, i32* %ret, align 4, !dbg !4409
  %46 = load i32, i32* %ret, align 4, !dbg !4410
  %tobool101 = icmp ne i32 %46, 0, !dbg !4410
  br i1 %tobool101, label %if.then102, label %if.end103, !dbg !4412

if.then102:                                       ; preds = %if.end99
  br label %out, !dbg !4413

if.end103:                                        ; preds = %if.end99
  %47 = load i8, i8* %data, align 1, !dbg !4414
  %conv104 = zext i8 %47 to i32, !dbg !4414
  %and105 = and i32 %conv104, 1, !dbg !4416
  %tobool106 = icmp ne i32 %and105, 0, !dbg !4416
  br i1 %tobool106, label %if.then107, label %if.end111, !dbg !4417

if.then107:                                       ; preds = %if.end103
  %48 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4418
  %sw_caps108 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %48, i32 0, i32 24, !dbg !4419
  %sd3_drv_type109 = getelementptr inbounds %struct.sd_switch_caps, %struct.sd_switch_caps* %sw_caps108, i32 0, i32 3, !dbg !4420
  %49 = load i32, i32* %sd3_drv_type109, align 4, !dbg !4421
  %or110 = or i32 %49, 2, !dbg !4421
  store i32 %or110, i32* %sd3_drv_type109, align 4, !dbg !4421
  br label %if.end111, !dbg !4418

if.end111:                                        ; preds = %if.then107, %if.end103
  %50 = load i8, i8* %data, align 1, !dbg !4422
  %conv112 = zext i8 %50 to i32, !dbg !4422
  %and113 = and i32 %conv112, 2, !dbg !4424
  %tobool114 = icmp ne i32 %and113, 0, !dbg !4424
  br i1 %tobool114, label %if.then115, label %if.end119, !dbg !4425

if.then115:                                       ; preds = %if.end111
  %51 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4426
  %sw_caps116 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %51, i32 0, i32 24, !dbg !4427
  %sd3_drv_type117 = getelementptr inbounds %struct.sd_switch_caps, %struct.sd_switch_caps* %sw_caps116, i32 0, i32 3, !dbg !4428
  %52 = load i32, i32* %sd3_drv_type117, align 4, !dbg !4429
  %or118 = or i32 %52, 4, !dbg !4429
  store i32 %or118, i32* %sd3_drv_type117, align 4, !dbg !4429
  br label %if.end119, !dbg !4426

if.end119:                                        ; preds = %if.then115, %if.end111
  %53 = load i8, i8* %data, align 1, !dbg !4430
  %conv120 = zext i8 %53 to i32, !dbg !4430
  %and121 = and i32 %conv120, 4, !dbg !4432
  %tobool122 = icmp ne i32 %and121, 0, !dbg !4432
  br i1 %tobool122, label %if.then123, label %if.end127, !dbg !4433

if.then123:                                       ; preds = %if.end119
  %54 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4434
  %sw_caps124 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %54, i32 0, i32 24, !dbg !4435
  %sd3_drv_type125 = getelementptr inbounds %struct.sd_switch_caps, %struct.sd_switch_caps* %sw_caps124, i32 0, i32 3, !dbg !4436
  %55 = load i32, i32* %sd3_drv_type125, align 4, !dbg !4437
  %or126 = or i32 %55, 8, !dbg !4437
  store i32 %or126, i32* %sd3_drv_type125, align 4, !dbg !4437
  br label %if.end127, !dbg !4434

if.end127:                                        ; preds = %if.then123, %if.end119
  br label %if.end128, !dbg !4438

if.end128:                                        ; preds = %if.end127, %land.lhs.true, %if.end60
  %56 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4439
  %sw_caps129 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %56, i32 0, i32 24, !dbg !4441
  %sd3_bus_mode130 = getelementptr inbounds %struct.sd_switch_caps, %struct.sd_switch_caps* %sw_caps129, i32 0, i32 2, !dbg !4442
  %57 = load i32, i32* %sd3_bus_mode130, align 4, !dbg !4442
  %tobool131 = icmp ne i32 %57, 0, !dbg !4439
  br i1 %tobool131, label %if.end149, label %if.then132, !dbg !4443

if.then132:                                       ; preds = %if.end128
  %58 = load i8, i8* %speed, align 1, !dbg !4444
  %conv133 = zext i8 %58 to i32, !dbg !4444
  %and134 = and i32 %conv133, 1, !dbg !4447
  %tobool135 = icmp ne i32 %and134, 0, !dbg !4447
  br i1 %tobool135, label %if.then136, label %if.else, !dbg !4448

if.then136:                                       ; preds = %if.then132
  %59 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4449
  %cccr137 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %59, i32 0, i32 27, !dbg !4451
  %high_speed = getelementptr inbounds %struct.sdio_cccr, %struct.sdio_cccr* %cccr137, i32 0, i32 2, !dbg !4452
  %bf.load138 = load i8, i8* %high_speed, align 8, !dbg !4453
  %bf.clear139 = and i8 %bf.load138, -17, !dbg !4453
  %bf.set140 = or i8 %bf.clear139, 16, !dbg !4453
  store i8 %bf.set140, i8* %high_speed, align 8, !dbg !4453
  %60 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4454
  %sw_caps141 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %60, i32 0, i32 24, !dbg !4455
  %hs_max_dtr = getelementptr inbounds %struct.sd_switch_caps, %struct.sd_switch_caps* %sw_caps141, i32 0, i32 0, !dbg !4456
  store i32 50000000, i32* %hs_max_dtr, align 4, !dbg !4457
  br label %if.end148, !dbg !4458

if.else:                                          ; preds = %if.then132
  %61 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4459
  %cccr142 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %61, i32 0, i32 27, !dbg !4461
  %high_speed143 = getelementptr inbounds %struct.sdio_cccr, %struct.sdio_cccr* %cccr142, i32 0, i32 2, !dbg !4462
  %bf.load144 = load i8, i8* %high_speed143, align 8, !dbg !4463
  %bf.clear145 = and i8 %bf.load144, -17, !dbg !4463
  store i8 %bf.clear145, i8* %high_speed143, align 8, !dbg !4463
  %62 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4464
  %sw_caps146 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %62, i32 0, i32 24, !dbg !4465
  %hs_max_dtr147 = getelementptr inbounds %struct.sd_switch_caps, %struct.sd_switch_caps* %sw_caps146, i32 0, i32 0, !dbg !4466
  store i32 25000000, i32* %hs_max_dtr147, align 4, !dbg !4467
  br label %if.end148

if.end148:                                        ; preds = %if.else, %if.then136
  br label %if.end149, !dbg !4468

if.end149:                                        ; preds = %if.end148, %if.end128
  br label %if.end150, !dbg !4469

if.end150:                                        ; preds = %if.end149, %if.end53
  br label %out, !dbg !4470

out:                                              ; preds = %if.end150, %if.then102, %if.then70, %if.then59, %if.then42, %if.then11, %if.then
  call void @llvm.dbg.label(metadata !4471), !dbg !4472
  %63 = load i32, i32* %ret, align 4, !dbg !4473
  store i32 %63, i32* %retval, align 4, !dbg !4474
  br label %return, !dbg !4474

return:                                           ; preds = %out, %if.then3
  %64 = load i32, i32* %retval, align 4, !dbg !4475
  ret i32 %64, !dbg !4475
}

; Function Attrs: noredzone
declare dso_local i32 @sdio_read_common_cis(%struct.mmc_card*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mmc_fixup_device(%struct.mmc_card* %card, %struct.mmc_fixup* %table) #0 !dbg !4476 {
entry:
  %card.addr = alloca %struct.mmc_card*, align 8
  %table.addr = alloca %struct.mmc_fixup*, align 8
  %f = alloca %struct.mmc_fixup*, align 8
  %rev = alloca i64, align 8
  store %struct.mmc_card* %card, %struct.mmc_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %card.addr, metadata !4480, metadata !DIExpression()), !dbg !4481
  store %struct.mmc_fixup* %table, %struct.mmc_fixup** %table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_fixup** %table.addr, metadata !4482, metadata !DIExpression()), !dbg !4483
  call void @llvm.dbg.declare(metadata %struct.mmc_fixup** %f, metadata !4484, metadata !DIExpression()), !dbg !4485
  call void @llvm.dbg.declare(metadata i64* %rev, metadata !4486, metadata !DIExpression()), !dbg !4487
  %0 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4488
  %cid = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %0, i32 0, i32 19, !dbg !4488
  %hwrev = getelementptr inbounds %struct.mmc_cid, %struct.mmc_cid* %cid, i32 0, i32 6, !dbg !4488
  %1 = load i8, i8* %hwrev, align 4, !dbg !4488
  %conv = zext i8 %1 to i64, !dbg !4488
  %shl = shl i64 %conv, 40, !dbg !4488
  %2 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4488
  %cid1 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %2, i32 0, i32 19, !dbg !4488
  %fwrev = getelementptr inbounds %struct.mmc_cid, %struct.mmc_cid* %cid1, i32 0, i32 7, !dbg !4488
  %3 = load i8, i8* %fwrev, align 1, !dbg !4488
  %conv2 = zext i8 %3 to i64, !dbg !4488
  %shl3 = shl i64 %conv2, 32, !dbg !4488
  %or = or i64 %shl, %shl3, !dbg !4488
  %4 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4488
  %cid4 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %4, i32 0, i32 19, !dbg !4488
  %year = getelementptr inbounds %struct.mmc_cid, %struct.mmc_cid* %cid4, i32 0, i32 5, !dbg !4488
  %5 = load i16, i16* %year, align 2, !dbg !4488
  %conv5 = zext i16 %5 to i64, !dbg !4488
  %shl6 = shl i64 %conv5, 16, !dbg !4488
  %or7 = or i64 %or, %shl6, !dbg !4488
  %6 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4488
  %cid8 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %6, i32 0, i32 19, !dbg !4488
  %month = getelementptr inbounds %struct.mmc_cid, %struct.mmc_cid* %cid8, i32 0, i32 8, !dbg !4488
  %7 = load i8, i8* %month, align 2, !dbg !4488
  %conv9 = zext i8 %7 to i64, !dbg !4488
  %or10 = or i64 %or7, %conv9, !dbg !4488
  store i64 %or10, i64* %rev, align 8, !dbg !4487
  %8 = load %struct.mmc_fixup*, %struct.mmc_fixup** %table.addr, align 8, !dbg !4489
  store %struct.mmc_fixup* %8, %struct.mmc_fixup** %f, align 8, !dbg !4491
  br label %for.cond, !dbg !4492

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load %struct.mmc_fixup*, %struct.mmc_fixup** %f, align 8, !dbg !4493
  %vendor_fixup = getelementptr inbounds %struct.mmc_fixup, %struct.mmc_fixup* %9, i32 0, i32 8, !dbg !4495
  %10 = load void (%struct.mmc_card*, i32)*, void (%struct.mmc_card*, i32)** %vendor_fixup, align 8, !dbg !4495
  %tobool = icmp ne void (%struct.mmc_card*, i32)* %10, null, !dbg !4496
  br i1 %tobool, label %for.body, label %for.end, !dbg !4496

for.body:                                         ; preds = %for.cond
  %11 = load %struct.mmc_fixup*, %struct.mmc_fixup** %f, align 8, !dbg !4497
  %manfid = getelementptr inbounds %struct.mmc_fixup, %struct.mmc_fixup* %11, i32 0, i32 3, !dbg !4500
  %12 = load i32, i32* %manfid, align 8, !dbg !4500
  %cmp = icmp eq i32 %12, -1, !dbg !4501
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !4502

lor.lhs.false:                                    ; preds = %for.body
  %13 = load %struct.mmc_fixup*, %struct.mmc_fixup** %f, align 8, !dbg !4503
  %manfid12 = getelementptr inbounds %struct.mmc_fixup, %struct.mmc_fixup* %13, i32 0, i32 3, !dbg !4504
  %14 = load i32, i32* %manfid12, align 8, !dbg !4504
  %15 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4505
  %cid13 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %15, i32 0, i32 19, !dbg !4506
  %manfid14 = getelementptr inbounds %struct.mmc_cid, %struct.mmc_cid* %cid13, i32 0, i32 0, !dbg !4507
  %16 = load i32, i32* %manfid14, align 4, !dbg !4507
  %cmp15 = icmp eq i32 %14, %16, !dbg !4508
  br i1 %cmp15, label %land.lhs.true, label %if.end, !dbg !4509

land.lhs.true:                                    ; preds = %lor.lhs.false, %for.body
  %17 = load %struct.mmc_fixup*, %struct.mmc_fixup** %f, align 8, !dbg !4510
  %oemid = getelementptr inbounds %struct.mmc_fixup, %struct.mmc_fixup* %17, i32 0, i32 4, !dbg !4511
  %18 = load i16, i16* %oemid, align 4, !dbg !4511
  %conv17 = zext i16 %18 to i32, !dbg !4510
  %cmp18 = icmp eq i32 %conv17, 65535, !dbg !4512
  br i1 %cmp18, label %land.lhs.true28, label %lor.lhs.false20, !dbg !4513

lor.lhs.false20:                                  ; preds = %land.lhs.true
  %19 = load %struct.mmc_fixup*, %struct.mmc_fixup** %f, align 8, !dbg !4514
  %oemid21 = getelementptr inbounds %struct.mmc_fixup, %struct.mmc_fixup* %19, i32 0, i32 4, !dbg !4515
  %20 = load i16, i16* %oemid21, align 4, !dbg !4515
  %conv22 = zext i16 %20 to i32, !dbg !4514
  %21 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4516
  %cid23 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %21, i32 0, i32 19, !dbg !4517
  %oemid24 = getelementptr inbounds %struct.mmc_cid, %struct.mmc_cid* %cid23, i32 0, i32 4, !dbg !4518
  %22 = load i16, i16* %oemid24, align 4, !dbg !4518
  %conv25 = zext i16 %22 to i32, !dbg !4516
  %cmp26 = icmp eq i32 %conv22, %conv25, !dbg !4519
  br i1 %cmp26, label %land.lhs.true28, label %if.end, !dbg !4520

land.lhs.true28:                                  ; preds = %lor.lhs.false20, %land.lhs.true
  %23 = load %struct.mmc_fixup*, %struct.mmc_fixup** %f, align 8, !dbg !4521
  %name = getelementptr inbounds %struct.mmc_fixup, %struct.mmc_fixup* %23, i32 0, i32 0, !dbg !4522
  %24 = load i8*, i8** %name, align 8, !dbg !4522
  %cmp29 = icmp eq i8* %24, null, !dbg !4523
  br i1 %cmp29, label %land.lhs.true35, label %lor.lhs.false31, !dbg !4524

lor.lhs.false31:                                  ; preds = %land.lhs.true28
  %25 = load %struct.mmc_fixup*, %struct.mmc_fixup** %f, align 8, !dbg !4525
  %name32 = getelementptr inbounds %struct.mmc_fixup, %struct.mmc_fixup* %25, i32 0, i32 0, !dbg !4526
  %26 = load i8*, i8** %name32, align 8, !dbg !4526
  %27 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4527
  %cid33 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %27, i32 0, i32 19, !dbg !4528
  %prod_name = getelementptr inbounds %struct.mmc_cid, %struct.mmc_cid* %cid33, i32 0, i32 1, !dbg !4529
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %prod_name, i64 0, i64 0, !dbg !4527
  %call = call i32 @strncmp(i8* %26, i8* %arraydecay, i64 8) #5, !dbg !4530
  %tobool34 = icmp ne i32 %call, 0, !dbg !4530
  br i1 %tobool34, label %if.end, label %land.lhs.true35, !dbg !4531

land.lhs.true35:                                  ; preds = %lor.lhs.false31, %land.lhs.true28
  %28 = load %struct.mmc_fixup*, %struct.mmc_fixup** %f, align 8, !dbg !4532
  %cis_vendor = getelementptr inbounds %struct.mmc_fixup, %struct.mmc_fixup* %28, i32 0, i32 5, !dbg !4533
  %29 = load i16, i16* %cis_vendor, align 2, !dbg !4533
  %conv36 = zext i16 %29 to i32, !dbg !4532
  %30 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4534
  %cis = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %30, i32 0, i32 28, !dbg !4535
  %vendor = getelementptr inbounds %struct.sdio_cis, %struct.sdio_cis* %cis, i32 0, i32 0, !dbg !4536
  %31 = load i16, i16* %vendor, align 4, !dbg !4536
  %conv37 = zext i16 %31 to i32, !dbg !4534
  %cmp38 = icmp eq i32 %conv36, %conv37, !dbg !4537
  br i1 %cmp38, label %land.lhs.true45, label %lor.lhs.false40, !dbg !4538

lor.lhs.false40:                                  ; preds = %land.lhs.true35
  %32 = load %struct.mmc_fixup*, %struct.mmc_fixup** %f, align 8, !dbg !4539
  %cis_vendor41 = getelementptr inbounds %struct.mmc_fixup, %struct.mmc_fixup* %32, i32 0, i32 5, !dbg !4540
  %33 = load i16, i16* %cis_vendor41, align 2, !dbg !4540
  %conv42 = zext i16 %33 to i32, !dbg !4539
  %cmp43 = icmp eq i32 %conv42, 65535, !dbg !4541
  br i1 %cmp43, label %land.lhs.true45, label %if.end, !dbg !4542

land.lhs.true45:                                  ; preds = %lor.lhs.false40, %land.lhs.true35
  %34 = load %struct.mmc_fixup*, %struct.mmc_fixup** %f, align 8, !dbg !4543
  %cis_device = getelementptr inbounds %struct.mmc_fixup, %struct.mmc_fixup* %34, i32 0, i32 6, !dbg !4544
  %35 = load i16, i16* %cis_device, align 8, !dbg !4544
  %conv46 = zext i16 %35 to i32, !dbg !4543
  %36 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4545
  %cis47 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %36, i32 0, i32 28, !dbg !4546
  %device = getelementptr inbounds %struct.sdio_cis, %struct.sdio_cis* %cis47, i32 0, i32 1, !dbg !4547
  %37 = load i16, i16* %device, align 2, !dbg !4547
  %conv48 = zext i16 %37 to i32, !dbg !4545
  %cmp49 = icmp eq i32 %conv46, %conv48, !dbg !4548
  br i1 %cmp49, label %land.lhs.true56, label %lor.lhs.false51, !dbg !4549

lor.lhs.false51:                                  ; preds = %land.lhs.true45
  %38 = load %struct.mmc_fixup*, %struct.mmc_fixup** %f, align 8, !dbg !4550
  %cis_device52 = getelementptr inbounds %struct.mmc_fixup, %struct.mmc_fixup* %38, i32 0, i32 6, !dbg !4551
  %39 = load i16, i16* %cis_device52, align 8, !dbg !4551
  %conv53 = zext i16 %39 to i32, !dbg !4550
  %cmp54 = icmp eq i32 %conv53, 65535, !dbg !4552
  br i1 %cmp54, label %land.lhs.true56, label %if.end, !dbg !4553

land.lhs.true56:                                  ; preds = %lor.lhs.false51, %land.lhs.true45
  %40 = load %struct.mmc_fixup*, %struct.mmc_fixup** %f, align 8, !dbg !4554
  %ext_csd_rev = getelementptr inbounds %struct.mmc_fixup, %struct.mmc_fixup* %40, i32 0, i32 7, !dbg !4555
  %41 = load i32, i32* %ext_csd_rev, align 4, !dbg !4555
  %cmp57 = icmp eq i32 %41, -1, !dbg !4556
  br i1 %cmp57, label %land.lhs.true65, label %lor.lhs.false59, !dbg !4557

lor.lhs.false59:                                  ; preds = %land.lhs.true56
  %42 = load %struct.mmc_fixup*, %struct.mmc_fixup** %f, align 8, !dbg !4558
  %ext_csd_rev60 = getelementptr inbounds %struct.mmc_fixup, %struct.mmc_fixup* %42, i32 0, i32 7, !dbg !4559
  %43 = load i32, i32* %ext_csd_rev60, align 4, !dbg !4559
  %44 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4560
  %ext_csd = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %44, i32 0, i32 21, !dbg !4561
  %rev61 = getelementptr inbounds %struct.mmc_ext_csd, %struct.mmc_ext_csd* %ext_csd, i32 0, i32 0, !dbg !4562
  %45 = load i8, i8* %rev61, align 8, !dbg !4562
  %conv62 = zext i8 %45 to i32, !dbg !4560
  %cmp63 = icmp eq i32 %43, %conv62, !dbg !4563
  br i1 %cmp63, label %land.lhs.true65, label %if.end, !dbg !4564

land.lhs.true65:                                  ; preds = %lor.lhs.false59, %land.lhs.true56
  %46 = load i64, i64* %rev, align 8, !dbg !4565
  %47 = load %struct.mmc_fixup*, %struct.mmc_fixup** %f, align 8, !dbg !4566
  %rev_start = getelementptr inbounds %struct.mmc_fixup, %struct.mmc_fixup* %47, i32 0, i32 1, !dbg !4567
  %48 = load i64, i64* %rev_start, align 8, !dbg !4567
  %cmp66 = icmp uge i64 %46, %48, !dbg !4568
  br i1 %cmp66, label %land.lhs.true68, label %if.end, !dbg !4569

land.lhs.true68:                                  ; preds = %land.lhs.true65
  %49 = load i64, i64* %rev, align 8, !dbg !4570
  %50 = load %struct.mmc_fixup*, %struct.mmc_fixup** %f, align 8, !dbg !4571
  %rev_end = getelementptr inbounds %struct.mmc_fixup, %struct.mmc_fixup* %50, i32 0, i32 2, !dbg !4572
  %51 = load i64, i64* %rev_end, align 8, !dbg !4572
  %cmp69 = icmp ule i64 %49, %51, !dbg !4573
  br i1 %cmp69, label %if.then, label %if.end, !dbg !4574

if.then:                                          ; preds = %land.lhs.true68
  %52 = load %struct.mmc_fixup*, %struct.mmc_fixup** %f, align 8, !dbg !4575
  %vendor_fixup71 = getelementptr inbounds %struct.mmc_fixup, %struct.mmc_fixup* %52, i32 0, i32 8, !dbg !4577
  %53 = load void (%struct.mmc_card*, i32)*, void (%struct.mmc_card*, i32)** %vendor_fixup71, align 8, !dbg !4577
  %54 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4578
  %55 = load %struct.mmc_fixup*, %struct.mmc_fixup** %f, align 8, !dbg !4579
  %data = getelementptr inbounds %struct.mmc_fixup, %struct.mmc_fixup* %55, i32 0, i32 9, !dbg !4580
  %56 = load i32, i32* %data, align 8, !dbg !4580
  call void %53(%struct.mmc_card* %54, i32 %56) #5, !dbg !4575
  br label %if.end, !dbg !4581

if.end:                                           ; preds = %if.then, %land.lhs.true68, %land.lhs.true65, %lor.lhs.false59, %lor.lhs.false51, %lor.lhs.false40, %lor.lhs.false31, %lor.lhs.false20, %lor.lhs.false
  br label %for.inc, !dbg !4582

for.inc:                                          ; preds = %if.end
  %57 = load %struct.mmc_fixup*, %struct.mmc_fixup** %f, align 8, !dbg !4583
  %incdec.ptr = getelementptr %struct.mmc_fixup, %struct.mmc_fixup* %57, i32 1, !dbg !4583
  store %struct.mmc_fixup* %incdec.ptr, %struct.mmc_fixup** %f, align 8, !dbg !4583
  br label %for.cond, !dbg !4584, !llvm.loop !4585

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4587
}

; Function Attrs: noredzone
declare dso_local i32 @mmc_sd_setup_card(%struct.mmc_host*, %struct.mmc_card*, i1 zeroext) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sdio_disable_cd(%struct.mmc_card* %card) #0 !dbg !4588 {
entry:
  %retval = alloca i32, align 4
  %card.addr = alloca %struct.mmc_card*, align 8
  %ret = alloca i32, align 4
  %ctrl = alloca i8, align 1
  store %struct.mmc_card* %card, %struct.mmc_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %card.addr, metadata !4589, metadata !DIExpression()), !dbg !4590
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4591, metadata !DIExpression()), !dbg !4592
  call void @llvm.dbg.declare(metadata i8* %ctrl, metadata !4593, metadata !DIExpression()), !dbg !4594
  %0 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4595
  %call = call i32 @mmc_card_disable_cd(%struct.mmc_card* %0) #5, !dbg !4597
  %tobool = icmp ne i32 %call, 0, !dbg !4597
  br i1 %tobool, label %if.end, label %if.then, !dbg !4598

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4599
  br label %return, !dbg !4599

if.end:                                           ; preds = %entry
  %1 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4600
  %call1 = call i32 @mmc_io_rw_direct(%struct.mmc_card* %1, i32 0, i32 0, i32 7, i8 zeroext 0, i8* %ctrl) #5, !dbg !4601
  store i32 %call1, i32* %ret, align 4, !dbg !4602
  %2 = load i32, i32* %ret, align 4, !dbg !4603
  %tobool2 = icmp ne i32 %2, 0, !dbg !4603
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !4605

if.then3:                                         ; preds = %if.end
  %3 = load i32, i32* %ret, align 4, !dbg !4606
  store i32 %3, i32* %retval, align 4, !dbg !4607
  br label %return, !dbg !4607

if.end4:                                          ; preds = %if.end
  %4 = load i8, i8* %ctrl, align 1, !dbg !4608
  %conv = zext i8 %4 to i32, !dbg !4608
  %or = or i32 %conv, 128, !dbg !4608
  %conv5 = trunc i32 %or to i8, !dbg !4608
  store i8 %conv5, i8* %ctrl, align 1, !dbg !4608
  %5 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4609
  %6 = load i8, i8* %ctrl, align 1, !dbg !4610
  %call6 = call i32 @mmc_io_rw_direct(%struct.mmc_card* %5, i32 1, i32 0, i32 7, i8 zeroext %6, i8* null) #5, !dbg !4611
  store i32 %call6, i32* %retval, align 4, !dbg !4612
  br label %return, !dbg !4612

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !4613
  ret i32 %7, !dbg !4613
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mmc_sdio_init_uhs_card(%struct.mmc_card* %card) #0 !dbg !4614 {
entry:
  %retval = alloca i32, align 4
  %card.addr = alloca %struct.mmc_card*, align 8
  %err = alloca i32, align 4
  store %struct.mmc_card* %card, %struct.mmc_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %card.addr, metadata !4615, metadata !DIExpression()), !dbg !4616
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4617, metadata !DIExpression()), !dbg !4618
  %0 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4619
  %scr = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %0, i32 0, i32 22, !dbg !4621
  %sda_spec3 = getelementptr inbounds %struct.sd_scr, %struct.sd_scr* %scr, i32 0, i32 1, !dbg !4622
  %1 = load i8, i8* %sda_spec3, align 1, !dbg !4622
  %tobool = icmp ne i8 %1, 0, !dbg !4619
  br i1 %tobool, label %if.end, label %if.then, !dbg !4623

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4624
  br label %return, !dbg !4624

if.end:                                           ; preds = %entry
  %2 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4625
  %call = call i32 @sdio_enable_4bit_bus(%struct.mmc_card* %2) #5, !dbg !4626
  store i32 %call, i32* %err, align 4, !dbg !4627
  %3 = load i32, i32* %err, align 4, !dbg !4628
  %tobool1 = icmp ne i32 %3, 0, !dbg !4628
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !4630

if.then2:                                         ; preds = %if.end
  br label %out, !dbg !4631

if.end3:                                          ; preds = %if.end
  %4 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4632
  call void @sdio_select_driver_type(%struct.mmc_card* %4) #5, !dbg !4633
  %5 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4634
  %call4 = call i32 @sdio_set_bus_speed_mode(%struct.mmc_card* %5) #5, !dbg !4635
  store i32 %call4, i32* %err, align 4, !dbg !4636
  %6 = load i32, i32* %err, align 4, !dbg !4637
  %tobool5 = icmp ne i32 %6, 0, !dbg !4637
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !4639

if.then6:                                         ; preds = %if.end3
  br label %out, !dbg !4640

if.end7:                                          ; preds = %if.end3
  %7 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4641
  %host = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %7, i32 0, i32 0, !dbg !4641
  %8 = load %struct.mmc_host*, %struct.mmc_host** %host, align 8, !dbg !4641
  %caps = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %8, i32 0, i32 17, !dbg !4641
  %9 = load i32, i32* %caps, align 4, !dbg !4641
  %and = and i32 %9, 16, !dbg !4641
  %tobool8 = icmp ne i32 %and, 0, !dbg !4641
  br i1 %tobool8, label %if.end19, label %land.lhs.true, !dbg !4643

land.lhs.true:                                    ; preds = %if.end7
  %10 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4644
  %host9 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %10, i32 0, i32 0, !dbg !4645
  %11 = load %struct.mmc_host*, %struct.mmc_host** %host9, align 8, !dbg !4645
  %ios = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %11, i32 0, i32 29, !dbg !4646
  %timing = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %ios, i32 0, i32 7, !dbg !4647
  %12 = load i8, i8* %timing, align 4, !dbg !4647
  %conv = zext i8 %12 to i32, !dbg !4644
  %cmp = icmp eq i32 %conv, 5, !dbg !4648
  br i1 %cmp, label %if.then17, label %lor.lhs.false, !dbg !4649

lor.lhs.false:                                    ; preds = %land.lhs.true
  %13 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4650
  %host11 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %13, i32 0, i32 0, !dbg !4651
  %14 = load %struct.mmc_host*, %struct.mmc_host** %host11, align 8, !dbg !4651
  %ios12 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %14, i32 0, i32 29, !dbg !4652
  %timing13 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %ios12, i32 0, i32 7, !dbg !4653
  %15 = load i8, i8* %timing13, align 4, !dbg !4653
  %conv14 = zext i8 %15 to i32, !dbg !4650
  %cmp15 = icmp eq i32 %conv14, 6, !dbg !4654
  br i1 %cmp15, label %if.then17, label %if.end19, !dbg !4655

if.then17:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %16 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4656
  %call18 = call i32 @mmc_execute_tuning(%struct.mmc_card* %16) #5, !dbg !4657
  store i32 %call18, i32* %err, align 4, !dbg !4658
  br label %if.end19, !dbg !4659

if.end19:                                         ; preds = %if.then17, %lor.lhs.false, %if.end7
  br label %out, !dbg !4660

out:                                              ; preds = %if.end19, %if.then6, %if.then2
  call void @llvm.dbg.label(metadata !4661), !dbg !4662
  %17 = load i32, i32* %err, align 4, !dbg !4663
  store i32 %17, i32* %retval, align 4, !dbg !4664
  br label %return, !dbg !4664

return:                                           ; preds = %out, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !4665
  ret i32 %18, !dbg !4665
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sdio_enable_hs(%struct.mmc_card* %card) #0 !dbg !4666 {
entry:
  %retval = alloca i32, align 4
  %card.addr = alloca %struct.mmc_card*, align 8
  %ret = alloca i32, align 4
  store %struct.mmc_card* %card, %struct.mmc_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %card.addr, metadata !4667, metadata !DIExpression()), !dbg !4668
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4669, metadata !DIExpression()), !dbg !4670
  %0 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4671
  %call = call i32 @mmc_sdio_switch_hs(%struct.mmc_card* %0, i32 1) #5, !dbg !4672
  store i32 %call, i32* %ret, align 4, !dbg !4673
  %1 = load i32, i32* %ret, align 4, !dbg !4674
  %cmp = icmp sle i32 %1, 0, !dbg !4676
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4677

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4678
  %type = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %2, i32 0, i32 4, !dbg !4679
  %3 = load i32, i32* %type, align 8, !dbg !4679
  %cmp1 = icmp eq i32 %3, 2, !dbg !4680
  br i1 %cmp1, label %if.then, label %if.end, !dbg !4681

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load i32, i32* %ret, align 4, !dbg !4682
  store i32 %4, i32* %retval, align 4, !dbg !4683
  br label %return, !dbg !4683

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4684
  %call2 = call i32 @mmc_sd_switch_hs(%struct.mmc_card* %5) #5, !dbg !4685
  store i32 %call2, i32* %ret, align 4, !dbg !4686
  %6 = load i32, i32* %ret, align 4, !dbg !4687
  %cmp3 = icmp sle i32 %6, 0, !dbg !4689
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !4690

if.then4:                                         ; preds = %if.end
  %7 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4691
  %call5 = call i32 @mmc_sdio_switch_hs(%struct.mmc_card* %7, i32 0) #5, !dbg !4692
  br label %if.end6, !dbg !4692

if.end6:                                          ; preds = %if.then4, %if.end
  %8 = load i32, i32* %ret, align 4, !dbg !4693
  store i32 %8, i32* %retval, align 4, !dbg !4694
  br label %return, !dbg !4694

return:                                           ; preds = %if.end6, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !4695
  ret i32 %9, !dbg !4695
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mmc_sdio_get_max_clock(%struct.mmc_card* %card) #0 !dbg !4696 {
entry:
  %card.addr = alloca %struct.mmc_card*, align 8
  %max_dtr = alloca i32, align 4
  %__UNIQUE_ID___x167 = alloca i32, align 4
  %__UNIQUE_ID___y168 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.mmc_card* %card, %struct.mmc_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %card.addr, metadata !4699, metadata !DIExpression()), !dbg !4700
  call void @llvm.dbg.declare(metadata i32* %max_dtr, metadata !4701, metadata !DIExpression()), !dbg !4702
  %0 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4703
  %call = call i32 @mmc_card_hs(%struct.mmc_card* %0) #5, !dbg !4705
  %tobool = icmp ne i32 %call, 0, !dbg !4705
  br i1 %tobool, label %if.then, label %if.else, !dbg !4706

if.then:                                          ; preds = %entry
  store i32 50000000, i32* %max_dtr, align 4, !dbg !4707
  br label %if.end, !dbg !4709

if.else:                                          ; preds = %entry
  %1 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4710
  %cis = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %1, i32 0, i32 28, !dbg !4712
  %max_dtr1 = getelementptr inbounds %struct.sdio_cis, %struct.sdio_cis* %cis, i32 0, i32 3, !dbg !4713
  %2 = load i32, i32* %max_dtr1, align 4, !dbg !4713
  store i32 %2, i32* %max_dtr, align 4, !dbg !4714
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4715
  %type = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %3, i32 0, i32 4, !dbg !4717
  %4 = load i32, i32* %type, align 8, !dbg !4717
  %cmp = icmp eq i32 %4, 3, !dbg !4718
  br i1 %cmp, label %if.then2, label %if.end5, !dbg !4719

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x167, metadata !4720, metadata !DIExpression()), !dbg !4722
  %5 = load i32, i32* %max_dtr, align 4, !dbg !4722
  store i32 %5, i32* %__UNIQUE_ID___x167, align 4, !dbg !4722
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y168, metadata !4723, metadata !DIExpression()), !dbg !4722
  %6 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4722
  %call3 = call i32 @mmc_sd_get_max_clock(%struct.mmc_card* %6) #5, !dbg !4722
  store i32 %call3, i32* %__UNIQUE_ID___y168, align 4, !dbg !4722
  %7 = load i32, i32* %__UNIQUE_ID___x167, align 4, !dbg !4722
  %8 = load i32, i32* %__UNIQUE_ID___y168, align 4, !dbg !4722
  %cmp4 = icmp ult i32 %7, %8, !dbg !4722
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !4722

cond.true:                                        ; preds = %if.then2
  %9 = load i32, i32* %__UNIQUE_ID___x167, align 4, !dbg !4722
  br label %cond.end, !dbg !4722

cond.false:                                       ; preds = %if.then2
  %10 = load i32, i32* %__UNIQUE_ID___y168, align 4, !dbg !4722
  br label %cond.end, !dbg !4722

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %9, %cond.true ], [ %10, %cond.false ], !dbg !4722
  store i32 %cond, i32* %tmp, align 4, !dbg !4722
  %11 = load i32, i32* %tmp, align 4, !dbg !4722
  store i32 %11, i32* %max_dtr, align 4, !dbg !4724
  br label %if.end5, !dbg !4725

if.end5:                                          ; preds = %cond.end, %if.end
  %12 = load i32, i32* %max_dtr, align 4, !dbg !4726
  ret i32 %12, !dbg !4727
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @mmc_vendor_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !4728 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %card = alloca %struct.mmc_card*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.mmc_card*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4729, metadata !DIExpression()), !dbg !4730
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4731, metadata !DIExpression()), !dbg !4730
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4732, metadata !DIExpression()), !dbg !4730
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %card, metadata !4733, metadata !DIExpression()), !dbg !4730
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4734, metadata !DIExpression()), !dbg !4736
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4736
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4736
  store i8* %1, i8** %__mptr, align 8, !dbg !4736
  br label %do.body, !dbg !4736

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4737

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4736
  %add.ptr = getelementptr i8, i8* %2, i64 -8, !dbg !4736
  %3 = bitcast i8* %add.ptr to %struct.mmc_card*, !dbg !4736
  store %struct.mmc_card* %3, %struct.mmc_card** %tmp, align 8, !dbg !4737
  %4 = load %struct.mmc_card*, %struct.mmc_card** %tmp, align 8, !dbg !4736
  store %struct.mmc_card* %4, %struct.mmc_card** %card, align 8, !dbg !4730
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !4730
  %6 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !4730
  %cis = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %6, i32 0, i32 28, !dbg !4730
  %vendor = getelementptr inbounds %struct.sdio_cis, %struct.sdio_cis* %cis, i32 0, i32 0, !dbg !4730
  %7 = load i16, i16* %vendor, align 4, !dbg !4730
  %conv = zext i16 %7 to i32, !dbg !4730
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %conv) #5, !dbg !4730
  %conv1 = sext i32 %call to i64, !dbg !4730
  ret i64 %conv1, !dbg !4730
}

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @mmc_device_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !4739 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %card = alloca %struct.mmc_card*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.mmc_card*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4740, metadata !DIExpression()), !dbg !4741
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4742, metadata !DIExpression()), !dbg !4741
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4743, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %card, metadata !4744, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4745, metadata !DIExpression()), !dbg !4747
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4747
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4747
  store i8* %1, i8** %__mptr, align 8, !dbg !4747
  br label %do.body, !dbg !4747

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4748

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4747
  %add.ptr = getelementptr i8, i8* %2, i64 -8, !dbg !4747
  %3 = bitcast i8* %add.ptr to %struct.mmc_card*, !dbg !4747
  store %struct.mmc_card* %3, %struct.mmc_card** %tmp, align 8, !dbg !4748
  %4 = load %struct.mmc_card*, %struct.mmc_card** %tmp, align 8, !dbg !4747
  store %struct.mmc_card* %4, %struct.mmc_card** %card, align 8, !dbg !4741
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !4741
  %6 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !4741
  %cis = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %6, i32 0, i32 28, !dbg !4741
  %device = getelementptr inbounds %struct.sdio_cis, %struct.sdio_cis* %cis, i32 0, i32 1, !dbg !4741
  %7 = load i16, i16* %device, align 2, !dbg !4741
  %conv = zext i16 %7 to i32, !dbg !4741
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %conv) #5, !dbg !4741
  %conv1 = sext i32 %call to i64, !dbg !4741
  ret i64 %conv1, !dbg !4741
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @mmc_revision_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !4750 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %card = alloca %struct.mmc_card*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.mmc_card*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4751, metadata !DIExpression()), !dbg !4752
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4753, metadata !DIExpression()), !dbg !4752
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4754, metadata !DIExpression()), !dbg !4752
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %card, metadata !4755, metadata !DIExpression()), !dbg !4752
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4756, metadata !DIExpression()), !dbg !4758
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4758
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4758
  store i8* %1, i8** %__mptr, align 8, !dbg !4758
  br label %do.body, !dbg !4758

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4759

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4758
  %add.ptr = getelementptr i8, i8* %2, i64 -8, !dbg !4758
  %3 = bitcast i8* %add.ptr to %struct.mmc_card*, !dbg !4758
  store %struct.mmc_card* %3, %struct.mmc_card** %tmp, align 8, !dbg !4759
  %4 = load %struct.mmc_card*, %struct.mmc_card** %tmp, align 8, !dbg !4758
  store %struct.mmc_card* %4, %struct.mmc_card** %card, align 8, !dbg !4752
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !4752
  %6 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !4752
  %major_rev = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %6, i32 0, i32 31, !dbg !4752
  %7 = load i8, i8* %major_rev, align 8, !dbg !4752
  %conv = zext i8 %7 to i32, !dbg !4752
  %8 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !4752
  %minor_rev = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %8, i32 0, i32 32, !dbg !4752
  %9 = load i8, i8* %minor_rev, align 1, !dbg !4752
  %conv1 = zext i8 %9 to i32, !dbg !4752
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %conv, i32 %conv1) #5, !dbg !4752
  %conv2 = sext i32 %call to i64, !dbg !4752
  ret i64 %conv2, !dbg !4752
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @info1_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !4761 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %card = alloca %struct.mmc_card*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.mmc_card*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4762, metadata !DIExpression()), !dbg !4763
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4764, metadata !DIExpression()), !dbg !4763
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4765, metadata !DIExpression()), !dbg !4763
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %card, metadata !4766, metadata !DIExpression()), !dbg !4763
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4767, metadata !DIExpression()), !dbg !4769
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4769
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4769
  store i8* %1, i8** %__mptr, align 8, !dbg !4769
  br label %do.body, !dbg !4769

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4770

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4769
  %add.ptr = getelementptr i8, i8* %2, i64 -8, !dbg !4769
  %3 = bitcast i8* %add.ptr to %struct.mmc_card*, !dbg !4769
  store %struct.mmc_card* %3, %struct.mmc_card** %tmp, align 8, !dbg !4770
  %4 = load %struct.mmc_card*, %struct.mmc_card** %tmp, align 8, !dbg !4769
  store %struct.mmc_card* %4, %struct.mmc_card** %card, align 8, !dbg !4763
  %5 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !4772
  %num_info = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %5, i32 0, i32 33, !dbg !4772
  %6 = load i32, i32* %num_info, align 4, !dbg !4772
  %cmp = icmp ugt i32 1, %6, !dbg !4772
  br i1 %cmp, label %if.then, label %if.end, !dbg !4763

if.then:                                          ; preds = %do.end
  store i64 -61, i64* %retval, align 8, !dbg !4772
  br label %return, !dbg !4772

if.end:                                           ; preds = %do.end
  %7 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !4774
  %info = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %7, i32 0, i32 34, !dbg !4774
  %8 = load i8**, i8*** %info, align 8, !dbg !4774
  %arrayidx = getelementptr i8*, i8** %8, i64 0, !dbg !4774
  %9 = load i8*, i8** %arrayidx, align 8, !dbg !4774
  %arrayidx1 = getelementptr i8, i8* %9, i64 0, !dbg !4774
  %10 = load i8, i8* %arrayidx1, align 1, !dbg !4774
  %tobool = icmp ne i8 %10, 0, !dbg !4774
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !4763

if.then2:                                         ; preds = %if.end
  store i64 0, i64* %retval, align 8, !dbg !4774
  br label %return, !dbg !4774

if.end3:                                          ; preds = %if.end
  %11 = load i8*, i8** %buf.addr, align 8, !dbg !4763
  %12 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !4763
  %info4 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %12, i32 0, i32 34, !dbg !4763
  %13 = load i8**, i8*** %info4, align 8, !dbg !4763
  %arrayidx5 = getelementptr i8*, i8** %13, i64 0, !dbg !4763
  %14 = load i8*, i8** %arrayidx5, align 8, !dbg !4763
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* %14) #5, !dbg !4763
  %conv = sext i32 %call to i64, !dbg !4763
  store i64 %conv, i64* %retval, align 8, !dbg !4763
  br label %return, !dbg !4763

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %15 = load i64, i64* %retval, align 8, !dbg !4763
  ret i64 %15, !dbg !4763
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @info2_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !4776 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %card = alloca %struct.mmc_card*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.mmc_card*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4777, metadata !DIExpression()), !dbg !4778
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4779, metadata !DIExpression()), !dbg !4778
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4780, metadata !DIExpression()), !dbg !4778
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %card, metadata !4781, metadata !DIExpression()), !dbg !4778
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4782, metadata !DIExpression()), !dbg !4784
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4784
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4784
  store i8* %1, i8** %__mptr, align 8, !dbg !4784
  br label %do.body, !dbg !4784

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4785

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4784
  %add.ptr = getelementptr i8, i8* %2, i64 -8, !dbg !4784
  %3 = bitcast i8* %add.ptr to %struct.mmc_card*, !dbg !4784
  store %struct.mmc_card* %3, %struct.mmc_card** %tmp, align 8, !dbg !4785
  %4 = load %struct.mmc_card*, %struct.mmc_card** %tmp, align 8, !dbg !4784
  store %struct.mmc_card* %4, %struct.mmc_card** %card, align 8, !dbg !4778
  %5 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !4787
  %num_info = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %5, i32 0, i32 33, !dbg !4787
  %6 = load i32, i32* %num_info, align 4, !dbg !4787
  %cmp = icmp ugt i32 2, %6, !dbg !4787
  br i1 %cmp, label %if.then, label %if.end, !dbg !4778

if.then:                                          ; preds = %do.end
  store i64 -61, i64* %retval, align 8, !dbg !4787
  br label %return, !dbg !4787

if.end:                                           ; preds = %do.end
  %7 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !4789
  %info = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %7, i32 0, i32 34, !dbg !4789
  %8 = load i8**, i8*** %info, align 8, !dbg !4789
  %arrayidx = getelementptr i8*, i8** %8, i64 1, !dbg !4789
  %9 = load i8*, i8** %arrayidx, align 8, !dbg !4789
  %arrayidx1 = getelementptr i8, i8* %9, i64 0, !dbg !4789
  %10 = load i8, i8* %arrayidx1, align 1, !dbg !4789
  %tobool = icmp ne i8 %10, 0, !dbg !4789
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !4778

if.then2:                                         ; preds = %if.end
  store i64 0, i64* %retval, align 8, !dbg !4789
  br label %return, !dbg !4789

if.end3:                                          ; preds = %if.end
  %11 = load i8*, i8** %buf.addr, align 8, !dbg !4778
  %12 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !4778
  %info4 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %12, i32 0, i32 34, !dbg !4778
  %13 = load i8**, i8*** %info4, align 8, !dbg !4778
  %arrayidx5 = getelementptr i8*, i8** %13, i64 1, !dbg !4778
  %14 = load i8*, i8** %arrayidx5, align 8, !dbg !4778
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* %14) #5, !dbg !4778
  %conv = sext i32 %call to i64, !dbg !4778
  store i64 %conv, i64* %retval, align 8, !dbg !4778
  br label %return, !dbg !4778

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %15 = load i64, i64* %retval, align 8, !dbg !4778
  ret i64 %15, !dbg !4778
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @info3_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !4791 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %card = alloca %struct.mmc_card*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.mmc_card*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4792, metadata !DIExpression()), !dbg !4793
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4794, metadata !DIExpression()), !dbg !4793
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4795, metadata !DIExpression()), !dbg !4793
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %card, metadata !4796, metadata !DIExpression()), !dbg !4793
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4797, metadata !DIExpression()), !dbg !4799
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4799
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4799
  store i8* %1, i8** %__mptr, align 8, !dbg !4799
  br label %do.body, !dbg !4799

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4800

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4799
  %add.ptr = getelementptr i8, i8* %2, i64 -8, !dbg !4799
  %3 = bitcast i8* %add.ptr to %struct.mmc_card*, !dbg !4799
  store %struct.mmc_card* %3, %struct.mmc_card** %tmp, align 8, !dbg !4800
  %4 = load %struct.mmc_card*, %struct.mmc_card** %tmp, align 8, !dbg !4799
  store %struct.mmc_card* %4, %struct.mmc_card** %card, align 8, !dbg !4793
  %5 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !4802
  %num_info = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %5, i32 0, i32 33, !dbg !4802
  %6 = load i32, i32* %num_info, align 4, !dbg !4802
  %cmp = icmp ugt i32 3, %6, !dbg !4802
  br i1 %cmp, label %if.then, label %if.end, !dbg !4793

if.then:                                          ; preds = %do.end
  store i64 -61, i64* %retval, align 8, !dbg !4802
  br label %return, !dbg !4802

if.end:                                           ; preds = %do.end
  %7 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !4804
  %info = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %7, i32 0, i32 34, !dbg !4804
  %8 = load i8**, i8*** %info, align 8, !dbg !4804
  %arrayidx = getelementptr i8*, i8** %8, i64 2, !dbg !4804
  %9 = load i8*, i8** %arrayidx, align 8, !dbg !4804
  %arrayidx1 = getelementptr i8, i8* %9, i64 0, !dbg !4804
  %10 = load i8, i8* %arrayidx1, align 1, !dbg !4804
  %tobool = icmp ne i8 %10, 0, !dbg !4804
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !4793

if.then2:                                         ; preds = %if.end
  store i64 0, i64* %retval, align 8, !dbg !4804
  br label %return, !dbg !4804

if.end3:                                          ; preds = %if.end
  %11 = load i8*, i8** %buf.addr, align 8, !dbg !4793
  %12 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !4793
  %info4 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %12, i32 0, i32 34, !dbg !4793
  %13 = load i8**, i8*** %info4, align 8, !dbg !4793
  %arrayidx5 = getelementptr i8*, i8** %13, i64 2, !dbg !4793
  %14 = load i8*, i8** %arrayidx5, align 8, !dbg !4793
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* %14) #5, !dbg !4793
  %conv = sext i32 %call to i64, !dbg !4793
  store i64 %conv, i64* %retval, align 8, !dbg !4793
  br label %return, !dbg !4793

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %15 = load i64, i64* %retval, align 8, !dbg !4793
  ret i64 %15, !dbg !4793
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @info4_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !4806 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %card = alloca %struct.mmc_card*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.mmc_card*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4807, metadata !DIExpression()), !dbg !4808
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4809, metadata !DIExpression()), !dbg !4808
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4810, metadata !DIExpression()), !dbg !4808
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %card, metadata !4811, metadata !DIExpression()), !dbg !4808
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4812, metadata !DIExpression()), !dbg !4814
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4814
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4814
  store i8* %1, i8** %__mptr, align 8, !dbg !4814
  br label %do.body, !dbg !4814

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4815

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4814
  %add.ptr = getelementptr i8, i8* %2, i64 -8, !dbg !4814
  %3 = bitcast i8* %add.ptr to %struct.mmc_card*, !dbg !4814
  store %struct.mmc_card* %3, %struct.mmc_card** %tmp, align 8, !dbg !4815
  %4 = load %struct.mmc_card*, %struct.mmc_card** %tmp, align 8, !dbg !4814
  store %struct.mmc_card* %4, %struct.mmc_card** %card, align 8, !dbg !4808
  %5 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !4817
  %num_info = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %5, i32 0, i32 33, !dbg !4817
  %6 = load i32, i32* %num_info, align 4, !dbg !4817
  %cmp = icmp ugt i32 4, %6, !dbg !4817
  br i1 %cmp, label %if.then, label %if.end, !dbg !4808

if.then:                                          ; preds = %do.end
  store i64 -61, i64* %retval, align 8, !dbg !4817
  br label %return, !dbg !4817

if.end:                                           ; preds = %do.end
  %7 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !4819
  %info = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %7, i32 0, i32 34, !dbg !4819
  %8 = load i8**, i8*** %info, align 8, !dbg !4819
  %arrayidx = getelementptr i8*, i8** %8, i64 3, !dbg !4819
  %9 = load i8*, i8** %arrayidx, align 8, !dbg !4819
  %arrayidx1 = getelementptr i8, i8* %9, i64 0, !dbg !4819
  %10 = load i8, i8* %arrayidx1, align 1, !dbg !4819
  %tobool = icmp ne i8 %10, 0, !dbg !4819
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !4808

if.then2:                                         ; preds = %if.end
  store i64 0, i64* %retval, align 8, !dbg !4819
  br label %return, !dbg !4819

if.end3:                                          ; preds = %if.end
  %11 = load i8*, i8** %buf.addr, align 8, !dbg !4808
  %12 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !4808
  %info4 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %12, i32 0, i32 34, !dbg !4808
  %13 = load i8**, i8*** %info4, align 8, !dbg !4808
  %arrayidx5 = getelementptr i8*, i8** %13, i64 3, !dbg !4808
  %14 = load i8*, i8** %arrayidx5, align 8, !dbg !4808
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* %14) #5, !dbg !4808
  %conv = sext i32 %call to i64, !dbg !4808
  store i64 %conv, i64* %retval, align 8, !dbg !4808
  br label %return, !dbg !4808

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %15 = load i64, i64* %retval, align 8, !dbg !4808
  ret i64 %15, !dbg !4808
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @mmc_ocr_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !4821 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %card = alloca %struct.mmc_card*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.mmc_card*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4822, metadata !DIExpression()), !dbg !4823
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4824, metadata !DIExpression()), !dbg !4823
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4825, metadata !DIExpression()), !dbg !4823
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %card, metadata !4826, metadata !DIExpression()), !dbg !4823
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4827, metadata !DIExpression()), !dbg !4829
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4829
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4829
  store i8* %1, i8** %__mptr, align 8, !dbg !4829
  br label %do.body, !dbg !4829

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4830

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4829
  %add.ptr = getelementptr i8, i8* %2, i64 -8, !dbg !4829
  %3 = bitcast i8* %add.ptr to %struct.mmc_card*, !dbg !4829
  store %struct.mmc_card* %3, %struct.mmc_card** %tmp, align 8, !dbg !4830
  %4 = load %struct.mmc_card*, %struct.mmc_card** %tmp, align 8, !dbg !4829
  store %struct.mmc_card* %4, %struct.mmc_card** %card, align 8, !dbg !4823
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !4823
  %6 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !4823
  %ocr = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %6, i32 0, i32 2, !dbg !4823
  %7 = load i32, i32* %ocr, align 8, !dbg !4823
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i32 %7) #5, !dbg !4823
  %conv = sext i32 %call to i64, !dbg !4823
  ret i64 %conv, !dbg !4823
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @mmc_rca_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !4832 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %card = alloca %struct.mmc_card*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.mmc_card*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4833, metadata !DIExpression()), !dbg !4834
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4835, metadata !DIExpression()), !dbg !4834
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4836, metadata !DIExpression()), !dbg !4834
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %card, metadata !4837, metadata !DIExpression()), !dbg !4834
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4838, metadata !DIExpression()), !dbg !4840
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4840
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4840
  store i8* %1, i8** %__mptr, align 8, !dbg !4840
  br label %do.body, !dbg !4840

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4841

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4840
  %add.ptr = getelementptr i8, i8* %2, i64 -8, !dbg !4840
  %3 = bitcast i8* %add.ptr to %struct.mmc_card*, !dbg !4840
  store %struct.mmc_card* %3, %struct.mmc_card** %tmp, align 8, !dbg !4841
  %4 = load %struct.mmc_card*, %struct.mmc_card** %tmp, align 8, !dbg !4840
  store %struct.mmc_card* %4, %struct.mmc_card** %card, align 8, !dbg !4834
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !4834
  %6 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !4834
  %rca = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %6, i32 0, i32 3, !dbg !4834
  %7 = load i32, i32* %rca, align 4, !dbg !4834
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %7) #5, !dbg !4834
  %conv = sext i32 %call to i64, !dbg !4834
  ret i64 %conv, !dbg !4834
}

; Function Attrs: noredzone
declare dso_local i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @add_quirk(%struct.mmc_card* %card, i32 %data) #0 !dbg !4843 {
entry:
  %card.addr = alloca %struct.mmc_card*, align 8
  %data.addr = alloca i32, align 4
  store %struct.mmc_card* %card, %struct.mmc_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %card.addr, metadata !4844, metadata !DIExpression()), !dbg !4845
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !4846, metadata !DIExpression()), !dbg !4847
  %0 = load i32, i32* %data.addr, align 4, !dbg !4848
  %1 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4849
  %quirks = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %1, i32 0, i32 6, !dbg !4850
  %2 = load i32, i32* %quirks, align 8, !dbg !4851
  %or = or i32 %2, %0, !dbg !4851
  store i32 %or, i32* %quirks, align 8, !dbg !4851
  ret void, !dbg !4852
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @add_limit_rate_quirk(%struct.mmc_card* %card, i32 %data) #0 !dbg !4853 {
entry:
  %card.addr = alloca %struct.mmc_card*, align 8
  %data.addr = alloca i32, align 4
  store %struct.mmc_card* %card, %struct.mmc_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %card.addr, metadata !4854, metadata !DIExpression()), !dbg !4855
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !4856, metadata !DIExpression()), !dbg !4857
  %0 = load i32, i32* %data.addr, align 4, !dbg !4858
  %1 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4859
  %quirk_max_rate = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %1, i32 0, i32 7, !dbg !4860
  store i32 %0, i32* %quirk_max_rate, align 4, !dbg !4861
  ret void, !dbg !4862
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mmc_card_disable_cd(%struct.mmc_card* %c) #0 !dbg !4863 {
entry:
  %c.addr = alloca %struct.mmc_card*, align 8
  store %struct.mmc_card* %c, %struct.mmc_card** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %c.addr, metadata !4868, metadata !DIExpression()), !dbg !4869
  %0 = load %struct.mmc_card*, %struct.mmc_card** %c.addr, align 8, !dbg !4870
  %quirks = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %0, i32 0, i32 6, !dbg !4871
  %1 = load i32, i32* %quirks, align 8, !dbg !4871
  %and = and i32 %1, 32, !dbg !4872
  ret i32 %and, !dbg !4873
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @sdio_select_driver_type(%struct.mmc_card* %card) #0 !dbg !4874 {
entry:
  %card.addr = alloca %struct.mmc_card*, align 8
  %card_drv_type = alloca i32, align 4
  %drive_strength = alloca i32, align 4
  %drv_type = alloca i32, align 4
  %card_strength = alloca i8, align 1
  %err = alloca i32, align 4
  store %struct.mmc_card* %card, %struct.mmc_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %card.addr, metadata !4877, metadata !DIExpression()), !dbg !4878
  call void @llvm.dbg.declare(metadata i32* %card_drv_type, metadata !4879, metadata !DIExpression()), !dbg !4880
  call void @llvm.dbg.declare(metadata i32* %drive_strength, metadata !4881, metadata !DIExpression()), !dbg !4882
  call void @llvm.dbg.declare(metadata i32* %drv_type, metadata !4883, metadata !DIExpression()), !dbg !4884
  call void @llvm.dbg.declare(metadata i8* %card_strength, metadata !4885, metadata !DIExpression()), !dbg !4886
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4887, metadata !DIExpression()), !dbg !4888
  %0 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4889
  %drive_strength1 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %0, i32 0, i32 38, !dbg !4890
  store i32 0, i32* %drive_strength1, align 8, !dbg !4891
  %1 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4892
  %sw_caps = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %1, i32 0, i32 24, !dbg !4893
  %sd3_drv_type = getelementptr inbounds %struct.sd_switch_caps, %struct.sd_switch_caps* %sw_caps, i32 0, i32 3, !dbg !4894
  %2 = load i32, i32* %sd3_drv_type, align 4, !dbg !4894
  %or = or i32 %2, 1, !dbg !4895
  store i32 %or, i32* %card_drv_type, align 4, !dbg !4896
  %3 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4897
  %4 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4898
  %sw_caps2 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %4, i32 0, i32 24, !dbg !4899
  %uhs_max_dtr = getelementptr inbounds %struct.sd_switch_caps, %struct.sd_switch_caps* %sw_caps2, i32 0, i32 1, !dbg !4900
  %5 = load i32, i32* %uhs_max_dtr, align 4, !dbg !4900
  %6 = load i32, i32* %card_drv_type, align 4, !dbg !4901
  %call = call i32 @mmc_select_drive_strength(%struct.mmc_card* %3, i32 %5, i32 %6, i32* %drv_type) #5, !dbg !4902
  store i32 %call, i32* %drive_strength, align 4, !dbg !4903
  %7 = load i32, i32* %drive_strength, align 4, !dbg !4904
  %tobool = icmp ne i32 %7, 0, !dbg !4904
  br i1 %tobool, label %if.then, label %if.end17, !dbg !4906

if.then:                                          ; preds = %entry
  %8 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4907
  %call3 = call i32 @mmc_io_rw_direct(%struct.mmc_card* %8, i32 0, i32 0, i32 21, i8 zeroext 0, i8* %card_strength) #5, !dbg !4909
  store i32 %call3, i32* %err, align 4, !dbg !4910
  %9 = load i32, i32* %err, align 4, !dbg !4911
  %tobool4 = icmp ne i32 %9, 0, !dbg !4911
  br i1 %tobool4, label %if.then5, label %if.end, !dbg !4913

if.then5:                                         ; preds = %if.then
  br label %if.end20, !dbg !4914

if.end:                                           ; preds = %if.then
  %10 = load i8, i8* %card_strength, align 1, !dbg !4915
  %conv = zext i8 %10 to i32, !dbg !4915
  %and = and i32 %conv, -49, !dbg !4915
  %conv6 = trunc i32 %and to i8, !dbg !4915
  store i8 %conv6, i8* %card_strength, align 1, !dbg !4915
  %11 = load i32, i32* %drive_strength, align 4, !dbg !4916
  %call7 = call zeroext i8 @host_drive_to_sdio_drive(i32 %11) #5, !dbg !4917
  %conv8 = zext i8 %call7 to i32, !dbg !4917
  %12 = load i8, i8* %card_strength, align 1, !dbg !4918
  %conv9 = zext i8 %12 to i32, !dbg !4918
  %or10 = or i32 %conv9, %conv8, !dbg !4918
  %conv11 = trunc i32 %or10 to i8, !dbg !4918
  store i8 %conv11, i8* %card_strength, align 1, !dbg !4918
  %13 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4919
  %14 = load i8, i8* %card_strength, align 1, !dbg !4920
  %call12 = call i32 @mmc_io_rw_direct(%struct.mmc_card* %13, i32 1, i32 0, i32 21, i8 zeroext %14, i8* null) #5, !dbg !4921
  store i32 %call12, i32* %err, align 4, !dbg !4922
  %15 = load i32, i32* %err, align 4, !dbg !4923
  %tobool13 = icmp ne i32 %15, 0, !dbg !4923
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !4925

if.then14:                                        ; preds = %if.end
  br label %if.end20, !dbg !4926

if.end15:                                         ; preds = %if.end
  %16 = load i32, i32* %drive_strength, align 4, !dbg !4927
  %17 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4928
  %drive_strength16 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %17, i32 0, i32 38, !dbg !4929
  store i32 %16, i32* %drive_strength16, align 8, !dbg !4930
  br label %if.end17, !dbg !4931

if.end17:                                         ; preds = %if.end15, %entry
  %18 = load i32, i32* %drv_type, align 4, !dbg !4932
  %tobool18 = icmp ne i32 %18, 0, !dbg !4932
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !4934

if.then19:                                        ; preds = %if.end17
  %19 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4935
  %host = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %19, i32 0, i32 0, !dbg !4936
  %20 = load %struct.mmc_host*, %struct.mmc_host** %host, align 8, !dbg !4936
  %21 = load i32, i32* %drv_type, align 4, !dbg !4937
  call void @mmc_set_driver_type(%struct.mmc_host* %20, i32 %21) #5, !dbg !4938
  br label %if.end20, !dbg !4938

if.end20:                                         ; preds = %if.then5, %if.then14, %if.then19, %if.end17
  ret void, !dbg !4939
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sdio_set_bus_speed_mode(%struct.mmc_card* %card) #0 !dbg !4940 {
entry:
  %retval = alloca i32, align 4
  %card.addr = alloca %struct.mmc_card*, align 8
  %bus_speed = alloca i32, align 4
  %timing = alloca i32, align 4
  %err = alloca i32, align 4
  %speed = alloca i8, align 1
  %max_rate = alloca i32, align 4
  %__x = alloca i32, align 4
  %__y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__UNIQUE_ID___x169 = alloca i32, align 4
  %__UNIQUE_ID___y170 = alloca i32, align 4
  %tmp86 = alloca i32, align 4
  store %struct.mmc_card* %card, %struct.mmc_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %card.addr, metadata !4941, metadata !DIExpression()), !dbg !4942
  call void @llvm.dbg.declare(metadata i32* %bus_speed, metadata !4943, metadata !DIExpression()), !dbg !4944
  call void @llvm.dbg.declare(metadata i32* %timing, metadata !4945, metadata !DIExpression()), !dbg !4946
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4947, metadata !DIExpression()), !dbg !4948
  call void @llvm.dbg.declare(metadata i8* %speed, metadata !4949, metadata !DIExpression()), !dbg !4950
  call void @llvm.dbg.declare(metadata i32* %max_rate, metadata !4951, metadata !DIExpression()), !dbg !4952
  %0 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4953
  %host = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %0, i32 0, i32 0, !dbg !4955
  %1 = load %struct.mmc_host*, %struct.mmc_host** %host, align 8, !dbg !4955
  %call = call i32 @mmc_host_uhs(%struct.mmc_host* %1) #5, !dbg !4956
  %tobool = icmp ne i32 %call, 0, !dbg !4956
  br i1 %tobool, label %if.end, label %if.then, !dbg !4957

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4958
  br label %return, !dbg !4958

if.end:                                           ; preds = %entry
  store i32 0, i32* %bus_speed, align 4, !dbg !4959
  store i32 3, i32* %timing, align 4, !dbg !4960
  %2 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4961
  %host1 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %2, i32 0, i32 0, !dbg !4963
  %3 = load %struct.mmc_host*, %struct.mmc_host** %host1, align 8, !dbg !4963
  %caps = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %3, i32 0, i32 17, !dbg !4964
  %4 = load i32, i32* %caps, align 4, !dbg !4964
  %and = and i32 %4, 524288, !dbg !4965
  %tobool2 = icmp ne i32 %and, 0, !dbg !4965
  br i1 %tobool2, label %land.lhs.true, label %if.else, !dbg !4966

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4967
  %sw_caps = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %5, i32 0, i32 24, !dbg !4968
  %sd3_bus_mode = getelementptr inbounds %struct.sd_switch_caps, %struct.sd_switch_caps* %sw_caps, i32 0, i32 2, !dbg !4969
  %6 = load i32, i32* %sd3_bus_mode, align 4, !dbg !4969
  %and3 = and i32 %6, 8, !dbg !4970
  %tobool4 = icmp ne i32 %and3, 0, !dbg !4970
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !4971

if.then5:                                         ; preds = %land.lhs.true
  store i32 6, i32* %bus_speed, align 4, !dbg !4972
  store i32 6, i32* %timing, align 4, !dbg !4974
  %7 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4975
  %sw_caps6 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %7, i32 0, i32 24, !dbg !4976
  %uhs_max_dtr = getelementptr inbounds %struct.sd_switch_caps, %struct.sd_switch_caps* %sw_caps6, i32 0, i32 1, !dbg !4977
  store i32 208000000, i32* %uhs_max_dtr, align 4, !dbg !4978
  %8 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4979
  %sd_bus_speed = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %8, i32 0, i32 36, !dbg !4980
  store i32 3, i32* %sd_bus_speed, align 8, !dbg !4981
  br label %if.end66, !dbg !4982

if.else:                                          ; preds = %land.lhs.true, %if.end
  %9 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4983
  %host7 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %9, i32 0, i32 0, !dbg !4985
  %10 = load %struct.mmc_host*, %struct.mmc_host** %host7, align 8, !dbg !4985
  %caps8 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %10, i32 0, i32 17, !dbg !4986
  %11 = load i32, i32* %caps8, align 4, !dbg !4986
  %and9 = and i32 %11, 1048576, !dbg !4987
  %tobool10 = icmp ne i32 %and9, 0, !dbg !4987
  br i1 %tobool10, label %land.lhs.true11, label %if.else20, !dbg !4988

land.lhs.true11:                                  ; preds = %if.else
  %12 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4989
  %sw_caps12 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %12, i32 0, i32 24, !dbg !4990
  %sd3_bus_mode13 = getelementptr inbounds %struct.sd_switch_caps, %struct.sd_switch_caps* %sw_caps12, i32 0, i32 2, !dbg !4991
  %13 = load i32, i32* %sd3_bus_mode13, align 4, !dbg !4991
  %and14 = and i32 %13, 16, !dbg !4992
  %tobool15 = icmp ne i32 %and14, 0, !dbg !4992
  br i1 %tobool15, label %if.then16, label %if.else20, !dbg !4993

if.then16:                                        ; preds = %land.lhs.true11
  store i32 8, i32* %bus_speed, align 4, !dbg !4994
  store i32 7, i32* %timing, align 4, !dbg !4996
  %14 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !4997
  %sw_caps17 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %14, i32 0, i32 24, !dbg !4998
  %uhs_max_dtr18 = getelementptr inbounds %struct.sd_switch_caps, %struct.sd_switch_caps* %sw_caps17, i32 0, i32 1, !dbg !4999
  store i32 50000000, i32* %uhs_max_dtr18, align 4, !dbg !5000
  %15 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !5001
  %sd_bus_speed19 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %15, i32 0, i32 36, !dbg !5002
  store i32 4, i32* %sd_bus_speed19, align 8, !dbg !5003
  br label %if.end65, !dbg !5004

if.else20:                                        ; preds = %land.lhs.true11, %if.else
  %16 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !5005
  %host21 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %16, i32 0, i32 0, !dbg !5007
  %17 = load %struct.mmc_host*, %struct.mmc_host** %host21, align 8, !dbg !5007
  %caps22 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %17, i32 0, i32 17, !dbg !5008
  %18 = load i32, i32* %caps22, align 4, !dbg !5008
  %and23 = and i32 %18, 786432, !dbg !5009
  %tobool24 = icmp ne i32 %and23, 0, !dbg !5009
  br i1 %tobool24, label %land.lhs.true25, label %if.else34, !dbg !5010

land.lhs.true25:                                  ; preds = %if.else20
  %19 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !5011
  %sw_caps26 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %19, i32 0, i32 24, !dbg !5012
  %sd3_bus_mode27 = getelementptr inbounds %struct.sd_switch_caps, %struct.sd_switch_caps* %sw_caps26, i32 0, i32 2, !dbg !5013
  %20 = load i32, i32* %sd3_bus_mode27, align 4, !dbg !5013
  %and28 = and i32 %20, 4, !dbg !5014
  %tobool29 = icmp ne i32 %and28, 0, !dbg !5014
  br i1 %tobool29, label %if.then30, label %if.else34, !dbg !5015

if.then30:                                        ; preds = %land.lhs.true25
  store i32 4, i32* %bus_speed, align 4, !dbg !5016
  store i32 5, i32* %timing, align 4, !dbg !5018
  %21 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !5019
  %sw_caps31 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %21, i32 0, i32 24, !dbg !5020
  %uhs_max_dtr32 = getelementptr inbounds %struct.sd_switch_caps, %struct.sd_switch_caps* %sw_caps31, i32 0, i32 1, !dbg !5021
  store i32 100000000, i32* %uhs_max_dtr32, align 4, !dbg !5022
  %22 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !5023
  %sd_bus_speed33 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %22, i32 0, i32 36, !dbg !5024
  store i32 2, i32* %sd_bus_speed33, align 8, !dbg !5025
  br label %if.end64, !dbg !5026

if.else34:                                        ; preds = %land.lhs.true25, %if.else20
  %23 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !5027
  %host35 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %23, i32 0, i32 0, !dbg !5029
  %24 = load %struct.mmc_host*, %struct.mmc_host** %host35, align 8, !dbg !5029
  %caps36 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %24, i32 0, i32 17, !dbg !5030
  %25 = load i32, i32* %caps36, align 4, !dbg !5030
  %and37 = and i32 %25, 917504, !dbg !5031
  %tobool38 = icmp ne i32 %and37, 0, !dbg !5031
  br i1 %tobool38, label %land.lhs.true39, label %if.else48, !dbg !5032

land.lhs.true39:                                  ; preds = %if.else34
  %26 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !5033
  %sw_caps40 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %26, i32 0, i32 24, !dbg !5034
  %sd3_bus_mode41 = getelementptr inbounds %struct.sd_switch_caps, %struct.sd_switch_caps* %sw_caps40, i32 0, i32 2, !dbg !5035
  %27 = load i32, i32* %sd3_bus_mode41, align 4, !dbg !5035
  %and42 = and i32 %27, 2, !dbg !5036
  %tobool43 = icmp ne i32 %and42, 0, !dbg !5036
  br i1 %tobool43, label %if.then44, label %if.else48, !dbg !5037

if.then44:                                        ; preds = %land.lhs.true39
  store i32 2, i32* %bus_speed, align 4, !dbg !5038
  store i32 4, i32* %timing, align 4, !dbg !5040
  %28 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !5041
  %sw_caps45 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %28, i32 0, i32 24, !dbg !5042
  %uhs_max_dtr46 = getelementptr inbounds %struct.sd_switch_caps, %struct.sd_switch_caps* %sw_caps45, i32 0, i32 1, !dbg !5043
  store i32 50000000, i32* %uhs_max_dtr46, align 4, !dbg !5044
  %29 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !5045
  %sd_bus_speed47 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %29, i32 0, i32 36, !dbg !5046
  store i32 1, i32* %sd_bus_speed47, align 8, !dbg !5047
  br label %if.end63, !dbg !5048

if.else48:                                        ; preds = %land.lhs.true39, %if.else34
  %30 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !5049
  %host49 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %30, i32 0, i32 0, !dbg !5051
  %31 = load %struct.mmc_host*, %struct.mmc_host** %host49, align 8, !dbg !5051
  %caps50 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %31, i32 0, i32 17, !dbg !5052
  %32 = load i32, i32* %caps50, align 4, !dbg !5052
  %and51 = and i32 %32, 983040, !dbg !5053
  %tobool52 = icmp ne i32 %and51, 0, !dbg !5053
  br i1 %tobool52, label %land.lhs.true53, label %if.end62, !dbg !5054

land.lhs.true53:                                  ; preds = %if.else48
  %33 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !5055
  %sw_caps54 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %33, i32 0, i32 24, !dbg !5056
  %sd3_bus_mode55 = getelementptr inbounds %struct.sd_switch_caps, %struct.sd_switch_caps* %sw_caps54, i32 0, i32 2, !dbg !5057
  %34 = load i32, i32* %sd3_bus_mode55, align 4, !dbg !5057
  %and56 = and i32 %34, 1, !dbg !5058
  %tobool57 = icmp ne i32 %and56, 0, !dbg !5058
  br i1 %tobool57, label %if.then58, label %if.end62, !dbg !5059

if.then58:                                        ; preds = %land.lhs.true53
  store i32 0, i32* %bus_speed, align 4, !dbg !5060
  store i32 3, i32* %timing, align 4, !dbg !5062
  %35 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !5063
  %sw_caps59 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %35, i32 0, i32 24, !dbg !5064
  %uhs_max_dtr60 = getelementptr inbounds %struct.sd_switch_caps, %struct.sd_switch_caps* %sw_caps59, i32 0, i32 1, !dbg !5065
  store i32 25000000, i32* %uhs_max_dtr60, align 4, !dbg !5066
  %36 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !5067
  %sd_bus_speed61 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %36, i32 0, i32 36, !dbg !5068
  store i32 0, i32* %sd_bus_speed61, align 8, !dbg !5069
  br label %if.end62, !dbg !5070

if.end62:                                         ; preds = %if.then58, %land.lhs.true53, %if.else48
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.then44
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.then30
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.then16
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.then5
  %37 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !5071
  %call67 = call i32 @mmc_io_rw_direct(%struct.mmc_card* %37, i32 0, i32 0, i32 19, i8 zeroext 0, i8* %speed) #5, !dbg !5072
  store i32 %call67, i32* %err, align 4, !dbg !5073
  %38 = load i32, i32* %err, align 4, !dbg !5074
  %tobool68 = icmp ne i32 %38, 0, !dbg !5074
  br i1 %tobool68, label %if.then69, label %if.end70, !dbg !5076

if.then69:                                        ; preds = %if.end66
  %39 = load i32, i32* %err, align 4, !dbg !5077
  store i32 %39, i32* %retval, align 4, !dbg !5078
  br label %return, !dbg !5078

if.end70:                                         ; preds = %if.end66
  %40 = load i8, i8* %speed, align 1, !dbg !5079
  %conv = zext i8 %40 to i32, !dbg !5079
  %and71 = and i32 %conv, -15, !dbg !5079
  %conv72 = trunc i32 %and71 to i8, !dbg !5079
  store i8 %conv72, i8* %speed, align 1, !dbg !5079
  %41 = load i32, i32* %bus_speed, align 4, !dbg !5080
  %42 = load i8, i8* %speed, align 1, !dbg !5081
  %conv73 = zext i8 %42 to i32, !dbg !5081
  %or = or i32 %conv73, %41, !dbg !5081
  %conv74 = trunc i32 %or to i8, !dbg !5081
  store i8 %conv74, i8* %speed, align 1, !dbg !5081
  %43 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !5082
  %44 = load i8, i8* %speed, align 1, !dbg !5083
  %call75 = call i32 @mmc_io_rw_direct(%struct.mmc_card* %43, i32 1, i32 0, i32 19, i8 zeroext %44, i8* null) #5, !dbg !5084
  store i32 %call75, i32* %err, align 4, !dbg !5085
  %45 = load i32, i32* %err, align 4, !dbg !5086
  %tobool76 = icmp ne i32 %45, 0, !dbg !5086
  br i1 %tobool76, label %if.then77, label %if.end78, !dbg !5088

if.then77:                                        ; preds = %if.end70
  %46 = load i32, i32* %err, align 4, !dbg !5089
  store i32 %46, i32* %retval, align 4, !dbg !5090
  br label %return, !dbg !5090

if.end78:                                         ; preds = %if.end70
  call void @llvm.dbg.declare(metadata i32* %__x, metadata !5091, metadata !DIExpression()), !dbg !5093
  %47 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !5093
  %quirk_max_rate = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %47, i32 0, i32 7, !dbg !5093
  %48 = load i32, i32* %quirk_max_rate, align 4, !dbg !5093
  store i32 %48, i32* %__x, align 4, !dbg !5093
  call void @llvm.dbg.declare(metadata i32* %__y, metadata !5094, metadata !DIExpression()), !dbg !5093
  %49 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !5093
  %sw_caps79 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %49, i32 0, i32 24, !dbg !5093
  %uhs_max_dtr80 = getelementptr inbounds %struct.sd_switch_caps, %struct.sd_switch_caps* %sw_caps79, i32 0, i32 1, !dbg !5093
  %50 = load i32, i32* %uhs_max_dtr80, align 4, !dbg !5093
  store i32 %50, i32* %__y, align 4, !dbg !5093
  %51 = load i32, i32* %__x, align 4, !dbg !5093
  %cmp = icmp eq i32 %51, 0, !dbg !5093
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5093

cond.true:                                        ; preds = %if.end78
  %52 = load i32, i32* %__y, align 4, !dbg !5093
  br label %cond.end93, !dbg !5093

cond.false:                                       ; preds = %if.end78
  %53 = load i32, i32* %__y, align 4, !dbg !5093
  %cmp82 = icmp eq i32 %53, 0, !dbg !5093
  br i1 %cmp82, label %cond.true84, label %cond.false85, !dbg !5093

cond.true84:                                      ; preds = %cond.false
  %54 = load i32, i32* %__x, align 4, !dbg !5093
  br label %cond.end91, !dbg !5093

cond.false85:                                     ; preds = %cond.false
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x169, metadata !5095, metadata !DIExpression()), !dbg !5097
  %55 = load i32, i32* %__x, align 4, !dbg !5097
  store i32 %55, i32* %__UNIQUE_ID___x169, align 4, !dbg !5097
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y170, metadata !5098, metadata !DIExpression()), !dbg !5097
  %56 = load i32, i32* %__y, align 4, !dbg !5097
  store i32 %56, i32* %__UNIQUE_ID___y170, align 4, !dbg !5097
  %57 = load i32, i32* %__UNIQUE_ID___x169, align 4, !dbg !5097
  %58 = load i32, i32* %__UNIQUE_ID___y170, align 4, !dbg !5097
  %cmp87 = icmp ult i32 %57, %58, !dbg !5097
  br i1 %cmp87, label %cond.true89, label %cond.false90, !dbg !5097

cond.true89:                                      ; preds = %cond.false85
  %59 = load i32, i32* %__UNIQUE_ID___x169, align 4, !dbg !5097
  br label %cond.end, !dbg !5097

cond.false90:                                     ; preds = %cond.false85
  %60 = load i32, i32* %__UNIQUE_ID___y170, align 4, !dbg !5097
  br label %cond.end, !dbg !5097

cond.end:                                         ; preds = %cond.false90, %cond.true89
  %cond = phi i32 [ %59, %cond.true89 ], [ %60, %cond.false90 ], !dbg !5097
  store i32 %cond, i32* %tmp86, align 4, !dbg !5097
  %61 = load i32, i32* %tmp86, align 4, !dbg !5097
  br label %cond.end91, !dbg !5093

cond.end91:                                       ; preds = %cond.end, %cond.true84
  %cond92 = phi i32 [ %54, %cond.true84 ], [ %61, %cond.end ], !dbg !5093
  br label %cond.end93, !dbg !5093

cond.end93:                                       ; preds = %cond.end91, %cond.true
  %cond94 = phi i32 [ %52, %cond.true ], [ %cond92, %cond.end91 ], !dbg !5093
  store i32 %cond94, i32* %tmp, align 4, !dbg !5093
  %62 = load i32, i32* %tmp, align 4, !dbg !5093
  store i32 %62, i32* %max_rate, align 4, !dbg !5099
  %63 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !5100
  %host95 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %63, i32 0, i32 0, !dbg !5101
  %64 = load %struct.mmc_host*, %struct.mmc_host** %host95, align 8, !dbg !5101
  %65 = load i32, i32* %timing, align 4, !dbg !5102
  call void @mmc_set_timing(%struct.mmc_host* %64, i32 %65) #5, !dbg !5103
  %66 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !5104
  %host96 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %66, i32 0, i32 0, !dbg !5105
  %67 = load %struct.mmc_host*, %struct.mmc_host** %host96, align 8, !dbg !5105
  %68 = load i32, i32* %max_rate, align 4, !dbg !5106
  call void @mmc_set_clock(%struct.mmc_host* %67, i32 %68) #5, !dbg !5107
  store i32 0, i32* %retval, align 4, !dbg !5108
  br label %return, !dbg !5108

return:                                           ; preds = %cond.end93, %if.then77, %if.then69, %if.then
  %69 = load i32, i32* %retval, align 4, !dbg !5109
  ret i32 %69, !dbg !5109
}

; Function Attrs: noredzone
declare dso_local i32 @mmc_execute_tuning(%struct.mmc_card*) #2

; Function Attrs: noredzone
declare dso_local i32 @mmc_select_drive_strength(%struct.mmc_card*, i32, i32, i32*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @host_drive_to_sdio_drive(i32 %host_strength) #0 !dbg !5110 {
entry:
  %retval = alloca i8, align 1
  %host_strength.addr = alloca i32, align 4
  store i32 %host_strength, i32* %host_strength.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %host_strength.addr, metadata !5113, metadata !DIExpression()), !dbg !5114
  %0 = load i32, i32* %host_strength.addr, align 4, !dbg !5115
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
  ], !dbg !5116

sw.bb:                                            ; preds = %entry
  store i8 16, i8* %retval, align 1, !dbg !5117
  br label %return, !dbg !5117

sw.bb1:                                           ; preds = %entry
  store i8 0, i8* %retval, align 1, !dbg !5119
  br label %return, !dbg !5119

sw.bb2:                                           ; preds = %entry
  store i8 32, i8* %retval, align 1, !dbg !5120
  br label %return, !dbg !5120

sw.bb3:                                           ; preds = %entry
  store i8 48, i8* %retval, align 1, !dbg !5121
  br label %return, !dbg !5121

sw.default:                                       ; preds = %entry
  store i8 0, i8* %retval, align 1, !dbg !5122
  br label %return, !dbg !5122

return:                                           ; preds = %sw.default, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i8, i8* %retval, align 1, !dbg !5123
  ret i8 %1, !dbg !5123
}

; Function Attrs: noredzone
declare dso_local void @mmc_set_driver_type(%struct.mmc_host*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mmc_sdio_switch_hs(%struct.mmc_card* %card, i32 %enable) #0 !dbg !5124 {
entry:
  %retval = alloca i32, align 4
  %card.addr = alloca %struct.mmc_card*, align 8
  %enable.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %speed = alloca i8, align 1
  store %struct.mmc_card* %card, %struct.mmc_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %card.addr, metadata !5127, metadata !DIExpression()), !dbg !5128
  store i32 %enable, i32* %enable.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %enable.addr, metadata !5129, metadata !DIExpression()), !dbg !5130
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5131, metadata !DIExpression()), !dbg !5132
  call void @llvm.dbg.declare(metadata i8* %speed, metadata !5133, metadata !DIExpression()), !dbg !5134
  %0 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !5135
  %host = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %0, i32 0, i32 0, !dbg !5137
  %1 = load %struct.mmc_host*, %struct.mmc_host** %host, align 8, !dbg !5137
  %caps = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %1, i32 0, i32 17, !dbg !5138
  %2 = load i32, i32* %caps, align 4, !dbg !5138
  %and = and i32 %2, 4, !dbg !5139
  %tobool = icmp ne i32 %and, 0, !dbg !5139
  br i1 %tobool, label %if.end, label %if.then, !dbg !5140

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5141
  br label %return, !dbg !5141

if.end:                                           ; preds = %entry
  %3 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !5142
  %cccr = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %3, i32 0, i32 27, !dbg !5144
  %high_speed = getelementptr inbounds %struct.sdio_cccr, %struct.sdio_cccr* %cccr, i32 0, i32 2, !dbg !5145
  %bf.load = load i8, i8* %high_speed, align 8, !dbg !5145
  %bf.lshr = lshr i8 %bf.load, 4, !dbg !5145
  %bf.clear = and i8 %bf.lshr, 1, !dbg !5145
  %bf.cast = zext i8 %bf.clear to i32, !dbg !5145
  %tobool1 = icmp ne i32 %bf.cast, 0, !dbg !5142
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !5146

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5147
  br label %return, !dbg !5147

if.end3:                                          ; preds = %if.end
  %4 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !5148
  %call = call i32 @mmc_io_rw_direct(%struct.mmc_card* %4, i32 0, i32 0, i32 19, i8 zeroext 0, i8* %speed) #5, !dbg !5149
  store i32 %call, i32* %ret, align 4, !dbg !5150
  %5 = load i32, i32* %ret, align 4, !dbg !5151
  %tobool4 = icmp ne i32 %5, 0, !dbg !5151
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !5153

if.then5:                                         ; preds = %if.end3
  %6 = load i32, i32* %ret, align 4, !dbg !5154
  store i32 %6, i32* %retval, align 4, !dbg !5155
  br label %return, !dbg !5155

if.end6:                                          ; preds = %if.end3
  %7 = load i32, i32* %enable.addr, align 4, !dbg !5156
  %tobool7 = icmp ne i32 %7, 0, !dbg !5156
  br i1 %tobool7, label %if.then8, label %if.else, !dbg !5158

if.then8:                                         ; preds = %if.end6
  %8 = load i8, i8* %speed, align 1, !dbg !5159
  %conv = zext i8 %8 to i32, !dbg !5159
  %or = or i32 %conv, 2, !dbg !5159
  %conv9 = trunc i32 %or to i8, !dbg !5159
  store i8 %conv9, i8* %speed, align 1, !dbg !5159
  br label %if.end13, !dbg !5160

if.else:                                          ; preds = %if.end6
  %9 = load i8, i8* %speed, align 1, !dbg !5161
  %conv10 = zext i8 %9 to i32, !dbg !5161
  %and11 = and i32 %conv10, -3, !dbg !5161
  %conv12 = trunc i32 %and11 to i8, !dbg !5161
  store i8 %conv12, i8* %speed, align 1, !dbg !5161
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then8
  %10 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !5162
  %11 = load i8, i8* %speed, align 1, !dbg !5163
  %call14 = call i32 @mmc_io_rw_direct(%struct.mmc_card* %10, i32 1, i32 0, i32 19, i8 zeroext %11, i8* null) #5, !dbg !5164
  store i32 %call14, i32* %ret, align 4, !dbg !5165
  %12 = load i32, i32* %ret, align 4, !dbg !5166
  %tobool15 = icmp ne i32 %12, 0, !dbg !5166
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !5168

if.then16:                                        ; preds = %if.end13
  %13 = load i32, i32* %ret, align 4, !dbg !5169
  store i32 %13, i32* %retval, align 4, !dbg !5170
  br label %return, !dbg !5170

if.end17:                                         ; preds = %if.end13
  store i32 1, i32* %retval, align 4, !dbg !5171
  br label %return, !dbg !5171

return:                                           ; preds = %if.end17, %if.then16, %if.then5, %if.then2, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !5172
  ret i32 %14, !dbg !5172
}

; Function Attrs: noredzone
declare dso_local i32 @mmc_sd_switch_hs(%struct.mmc_card*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mmc_card_hs(%struct.mmc_card* %card) #0 !dbg !5173 {
entry:
  %card.addr = alloca %struct.mmc_card*, align 8
  store %struct.mmc_card* %card, %struct.mmc_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %card.addr, metadata !5174, metadata !DIExpression()), !dbg !5175
  %0 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !5176
  %host = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %0, i32 0, i32 0, !dbg !5177
  %1 = load %struct.mmc_host*, %struct.mmc_host** %host, align 8, !dbg !5177
  %ios = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %1, i32 0, i32 29, !dbg !5178
  %timing = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %ios, i32 0, i32 7, !dbg !5179
  %2 = load i8, i8* %timing, align 4, !dbg !5179
  %conv = zext i8 %2 to i32, !dbg !5176
  %cmp = icmp eq i32 %conv, 2, !dbg !5180
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !5181

lor.rhs:                                          ; preds = %entry
  %3 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !5182
  %host2 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %3, i32 0, i32 0, !dbg !5183
  %4 = load %struct.mmc_host*, %struct.mmc_host** %host2, align 8, !dbg !5183
  %ios3 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %4, i32 0, i32 29, !dbg !5184
  %timing4 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %ios3, i32 0, i32 7, !dbg !5185
  %5 = load i8, i8* %timing4, align 4, !dbg !5185
  %conv5 = zext i8 %5 to i32, !dbg !5182
  %cmp6 = icmp eq i32 %conv5, 1, !dbg !5186
  br label %lor.end, !dbg !5181

lor.end:                                          ; preds = %lor.rhs, %entry
  %6 = phi i1 [ true, %entry ], [ %cmp6, %lor.rhs ]
  %lor.ext = zext i1 %6 to i32, !dbg !5181
  ret i32 %lor.ext, !dbg !5187
}

; Function Attrs: noredzone
declare dso_local i32 @mmc_sd_get_max_clock(%struct.mmc_card*) #2

; Function Attrs: noredzone
declare dso_local i32 @__pm_runtime_set_status(%struct.device*, i32) #2

; Function Attrs: noredzone
declare dso_local %struct.sdio_func* @sdio_alloc_func(%struct.mmc_card*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sdio_read_fbr(%struct.sdio_func* %func) #0 !dbg !5188 {
entry:
  %retval = alloca i32, align 4
  %func.addr = alloca %struct.sdio_func*, align 8
  %ret = alloca i32, align 4
  %data = alloca i8, align 1
  store %struct.sdio_func* %func, %struct.sdio_func** %func.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sdio_func** %func.addr, metadata !5191, metadata !DIExpression()), !dbg !5192
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5193, metadata !DIExpression()), !dbg !5194
  call void @llvm.dbg.declare(metadata i8* %data, metadata !5195, metadata !DIExpression()), !dbg !5196
  %0 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !5197
  %card = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %0, i32 0, i32 0, !dbg !5199
  %1 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !5199
  %call = call i32 @mmc_card_nonstd_func_interface(%struct.mmc_card* %1) #5, !dbg !5200
  %tobool = icmp ne i32 %call, 0, !dbg !5200
  br i1 %tobool, label %if.then, label %if.end, !dbg !5201

if.then:                                          ; preds = %entry
  %2 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !5202
  %class = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %2, i32 0, i32 4, !dbg !5204
  store i8 0, i8* %class, align 4, !dbg !5205
  store i32 0, i32* %retval, align 4, !dbg !5206
  br label %return, !dbg !5206

if.end:                                           ; preds = %entry
  %3 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !5207
  %card1 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %3, i32 0, i32 0, !dbg !5208
  %4 = load %struct.mmc_card*, %struct.mmc_card** %card1, align 8, !dbg !5208
  %5 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !5209
  %num = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %5, i32 0, i32 3, !dbg !5209
  %6 = load i32, i32* %num, align 8, !dbg !5209
  %mul = mul i32 %6, 256, !dbg !5209
  %add = add i32 %mul, 0, !dbg !5210
  %call2 = call i32 @mmc_io_rw_direct(%struct.mmc_card* %4, i32 0, i32 0, i32 %add, i8 zeroext 0, i8* %data) #5, !dbg !5211
  store i32 %call2, i32* %ret, align 4, !dbg !5212
  %7 = load i32, i32* %ret, align 4, !dbg !5213
  %tobool3 = icmp ne i32 %7, 0, !dbg !5213
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5215

if.then4:                                         ; preds = %if.end
  br label %out, !dbg !5216

if.end5:                                          ; preds = %if.end
  %8 = load i8, i8* %data, align 1, !dbg !5217
  %conv = zext i8 %8 to i32, !dbg !5217
  %and = and i32 %conv, 15, !dbg !5217
  %conv6 = trunc i32 %and to i8, !dbg !5217
  store i8 %conv6, i8* %data, align 1, !dbg !5217
  %9 = load i8, i8* %data, align 1, !dbg !5218
  %conv7 = zext i8 %9 to i32, !dbg !5218
  %cmp = icmp eq i32 %conv7, 15, !dbg !5220
  br i1 %cmp, label %if.then9, label %if.end18, !dbg !5221

if.then9:                                         ; preds = %if.end5
  %10 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !5222
  %card10 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %10, i32 0, i32 0, !dbg !5224
  %11 = load %struct.mmc_card*, %struct.mmc_card** %card10, align 8, !dbg !5224
  %12 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !5225
  %num11 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %12, i32 0, i32 3, !dbg !5225
  %13 = load i32, i32* %num11, align 8, !dbg !5225
  %mul12 = mul i32 %13, 256, !dbg !5225
  %add13 = add i32 %mul12, 1, !dbg !5226
  %call14 = call i32 @mmc_io_rw_direct(%struct.mmc_card* %11, i32 0, i32 0, i32 %add13, i8 zeroext 0, i8* %data) #5, !dbg !5227
  store i32 %call14, i32* %ret, align 4, !dbg !5228
  %14 = load i32, i32* %ret, align 4, !dbg !5229
  %tobool15 = icmp ne i32 %14, 0, !dbg !5229
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !5231

if.then16:                                        ; preds = %if.then9
  br label %out, !dbg !5232

if.end17:                                         ; preds = %if.then9
  br label %if.end18, !dbg !5233

if.end18:                                         ; preds = %if.end17, %if.end5
  %15 = load i8, i8* %data, align 1, !dbg !5234
  %16 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !5235
  %class19 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %16, i32 0, i32 4, !dbg !5236
  store i8 %15, i8* %class19, align 4, !dbg !5237
  br label %out, !dbg !5235

out:                                              ; preds = %if.end18, %if.then16, %if.then4
  call void @llvm.dbg.label(metadata !5238), !dbg !5239
  %17 = load i32, i32* %ret, align 4, !dbg !5240
  store i32 %17, i32* %retval, align 4, !dbg !5241
  br label %return, !dbg !5241

return:                                           ; preds = %out, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !5242
  ret i32 %18, !dbg !5242
}

; Function Attrs: noredzone
declare dso_local i32 @sdio_read_func_cis(%struct.sdio_func*) #2

; Function Attrs: noredzone
declare dso_local void @sdio_remove_func(%struct.sdio_func*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mmc_card_nonstd_func_interface(%struct.mmc_card* %c) #0 !dbg !5243 {
entry:
  %c.addr = alloca %struct.mmc_card*, align 8
  store %struct.mmc_card* %c, %struct.mmc_card** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %c.addr, metadata !5244, metadata !DIExpression()), !dbg !5245
  %0 = load %struct.mmc_card*, %struct.mmc_card** %c.addr, align 8, !dbg !5246
  %quirks = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %0, i32 0, i32 6, !dbg !5247
  %1 = load i32, i32* %quirks, align 8, !dbg !5247
  %and = and i32 %1, 16, !dbg !5248
  ret i32 %and, !dbg !5249
}

; Function Attrs: noredzone
declare dso_local i32 @__mmc_claim_host(%struct.mmc_host*, %struct.mmc_ctx*, %struct.atomic_t*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #0 !dbg !5250 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !5255, metadata !DIExpression()), !dbg !5256
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !5257
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !5258
  %1 = load i8*, i8** %name, align 8, !dbg !5258
  ret i8* %1, !dbg !5259
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }
attributes #6 = { cold noredzone }
attributes #7 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2537, !2538, !2539, !2540}
!llvm.ident = !{!2541}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "mmc_sdio_ops", scope: !2, file: !3, line: 1151, type: !2168, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !88, globals: !2473, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/mmc/core/sdio.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !55}
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
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !51, line: 10, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!52 = !{!53, !54}
!53 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!54 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !56, line: 30, baseType: !57, size: 64, elements: !58)
!56 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!57 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!58 = !{!59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87}
!59 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!60 = !DIEnumerator(name: "WORK_STRUCT_DELAYED_BIT", value: 1)
!61 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!62 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!63 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!64 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!65 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!66 = !DIEnumerator(name: "WORK_STRUCT_DELAYED", value: 2)
!67 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!68 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!69 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!70 = !DIEnumerator(name: "WORK_NR_COLORS", value: 15)
!71 = !DIEnumerator(name: "WORK_NO_COLOR", value: 15)
!72 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 1)
!73 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!74 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!75 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!76 = !DIEnumerator(name: "WORK_OFFQ_CANCELING", value: 16)
!77 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!78 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!79 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!80 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!81 = !DIEnumerator(name: "WORK_OFFQ_POOL_NONE", value: 2147483647)
!82 = !DIEnumerator(name: "WORK_STRUCT_FLAG_MASK", value: 255)
!83 = !DIEnumerator(name: "WORK_STRUCT_WQ_DATA_MASK", value: -256)
!84 = !DIEnumerator(name: "WORK_STRUCT_NO_POOL", value: 68719476704)
!85 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!86 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!87 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 24)
!88 = !{!89, !93, !94, !100, !101, !227, !57, !296, !219, !406}
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !92)
!92 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !97, line: 21, baseType: !98)
!97 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !99, line: 27, baseType: !7)
!99 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_card", file: !103, line: 244, size: 12672, elements: !104)
!103 = !DIFile(filename: "./include/linux/mmc/card.h", directory: "/home/lizy2001/genbc/linux")
!104 = !{!105, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2253, !2255, !2267, !2287, !2368, !2377, !2383, !2391, !2392, !2393, !2404, !2411, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2470, !2471, !2472}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !102, file: !103, line: 245, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_host", file: !108, line: 275, size: 10752, elements: !109)
!108 = !DIFile(filename: "./include/linux/mmc/host.h", directory: "/home/lizy2001/genbc/linux")
!109 = !{!110, !1953, !1954, !1955, !2082, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2148, !2149, !2150, !2159, !2160, !2166, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2193, !2200, !2203, !2204, !2205, !2206, !2207, !2208, !2229, !2230, !2231, !2232, !2233, !2234}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !107, file: !108, line: 276, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !113)
!113 = !{!114, !1586, !1587, !1590, !1591, !1642, !1739, !1740, !1741, !1742, !1743, !1752, !1857, !1870, !1873, !1874, !1878, !1880, !1881, !1882, !1886, !1892, !1893, !1896, !1900, !1903, !1906, !1907, !1908, !1909, !1941, !1942, !1943, !1946, !1949, !1950, !1951, !1952}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !112, file: !30, line: 462, baseType: !115, size: 512)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !116, line: 64, size: 512, elements: !117)
!116 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!117 = !{!118, !122, !129, !131, !191, !1422, !1576, !1581, !1582, !1583, !1584, !1585}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !115, file: !116, line: 65, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!121 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !115, file: !116, line: 66, baseType: !123, size: 128, offset: 64)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !124, line: 178, size: 128, elements: !125)
!124 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!125 = !{!126, !128}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !123, file: !124, line: 179, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !123, file: !124, line: 179, baseType: !127, size: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !115, file: !116, line: 67, baseType: !130, size: 64, offset: 192)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !115, file: !116, line: 68, baseType: !132, size: 64, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !116, line: 192, size: 704, elements: !134)
!134 = !{!135, !136, !152, !153}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !133, file: !116, line: 193, baseType: !123, size: 128)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !133, file: !116, line: 194, baseType: !137, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !138, line: 83, baseType: !139)
!138 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !138, line: 71, elements: !140)
!140 = !{!141}
!141 = !DIDerivedType(tag: DW_TAG_member, scope: !139, file: !138, line: 72, baseType: !142)
!142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !139, file: !138, line: 72, elements: !143)
!143 = !{!144}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !142, file: !138, line: 73, baseType: !145)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !138, line: 20, elements: !146)
!146 = !{!147}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !145, file: !138, line: 21, baseType: !148)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !149, line: 25, baseType: !150)
!149 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !149, line: 25, elements: !151)
!151 = !{}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !133, file: !116, line: 195, baseType: !115, size: 512, offset: 128)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !133, file: !116, line: 196, baseType: !154, size: 64, offset: 640)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !116, line: 156, size: 192, elements: !157)
!157 = !{!158, !163, !168}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !156, file: !116, line: 157, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !160)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DISubroutineType(types: !162)
!162 = !{!92, !132, !130}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !156, file: !116, line: 158, baseType: !164, size: 64, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DISubroutineType(types: !167)
!167 = !{!119, !132, !130}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !156, file: !116, line: 159, baseType: !169, size: 64, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !170)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DISubroutineType(types: !172)
!172 = !{!92, !132, !130, !173}
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !116, line: 148, size: 20736, elements: !175)
!175 = !{!176, !181, !185, !186, !190}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !174, file: !116, line: 149, baseType: !177, size: 192)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 192, elements: !179)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!179 = !{!180}
!180 = !DISubrange(count: 3)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !174, file: !116, line: 150, baseType: !182, size: 4096, offset: 192)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 4096, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !174, file: !116, line: 151, baseType: !92, size: 32, offset: 4288)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !174, file: !116, line: 152, baseType: !187, size: 16384, offset: 4320)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 16384, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 2048)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !174, file: !116, line: 153, baseType: !92, size: 32, offset: 20704)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !115, file: !116, line: 69, baseType: !192, size: 64, offset: 320)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !116, line: 138, size: 448, elements: !194)
!194 = !{!195, !199, !228, !230, !1368, !1401, !1405}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !193, file: !116, line: 139, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{null, !130}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !193, file: !116, line: 140, baseType: !200, size: 64, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !203, line: 230, size: 128, elements: !204)
!203 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!204 = !{!205, !220}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !202, file: !203, line: 231, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{!209, !130, !213, !178}
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !124, line: 60, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !211, line: 73, baseType: !212)
!211 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !211, line: 15, baseType: !57)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !203, line: 30, size: 128, elements: !215)
!215 = !{!216, !217}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !214, file: !203, line: 31, baseType: !119, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !214, file: !203, line: 32, baseType: !218, size: 16, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !124, line: 19, baseType: !219)
!219 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !202, file: !203, line: 232, baseType: !221, size: 64, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!209, !130, !213, !119, !224}
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !124, line: 55, baseType: !225)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !211, line: 72, baseType: !226)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !211, line: 16, baseType: !227)
!227 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !193, file: !116, line: 141, baseType: !229, size: 64, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !193, file: !116, line: 142, baseType: !231, size: 64, offset: 192)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !203, line: 84, size: 320, elements: !235)
!235 = !{!236, !237, !241, !1365, !1366}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !234, file: !203, line: 85, baseType: !119, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !234, file: !203, line: 86, baseType: !238, size: 64, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!218, !130, !213, !92}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !234, file: !203, line: 88, baseType: !242, size: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{!218, !130, !245, !92}
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !203, line: 168, size: 448, elements: !247)
!247 = !{!248, !249, !250, !251, !261, !262}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !246, file: !203, line: 169, baseType: !214, size: 128)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !246, file: !203, line: 170, baseType: !224, size: 64, offset: 128)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !246, file: !203, line: 171, baseType: !100, size: 64, offset: 192)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !246, file: !203, line: 172, baseType: !252, size: 64, offset: 256)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{!209, !255, !130, !245, !178, !258, !224}
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !257, line: 526, flags: DIFlagFwdDecl)
!257 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !124, line: 46, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !211, line: 88, baseType: !260)
!260 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !246, file: !203, line: 174, baseType: !252, size: 64, offset: 320)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !246, file: !203, line: 176, baseType: !263, size: 64, offset: 384)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{!92, !255, !130, !245, !266}
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !268, line: 305, size: 1472, elements: !269)
!268 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!269 = !{!270, !271, !272, !273, !274, !282, !283, !1339, !1345, !1346, !1351, !1352, !1355, !1359, !1360, !1361, !1362, !1363}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !267, file: !268, line: 308, baseType: !227, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !267, file: !268, line: 309, baseType: !227, size: 64, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !267, file: !268, line: 313, baseType: !266, size: 64, offset: 128)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !267, file: !268, line: 313, baseType: !266, size: 64, offset: 192)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !267, file: !268, line: 315, baseType: !275, size: 192, align: 64, offset: 256)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !276, line: 24, size: 192, align: 64, elements: !277)
!276 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!277 = !{!278, !279, !281}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !275, file: !276, line: 25, baseType: !227, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !275, file: !276, line: 26, baseType: !280, size: 64, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !275, file: !276, line: 27, baseType: !280, size: 64, offset: 128)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !267, file: !268, line: 323, baseType: !227, size: 64, offset: 448)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !267, file: !268, line: 327, baseType: !284, size: 64, offset: 512)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !268, line: 388, size: 7296, elements: !286)
!286 = !{!287, !1335}
!287 = !DIDerivedType(tag: DW_TAG_member, scope: !285, file: !268, line: 389, baseType: !288, size: 7296)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !285, file: !268, line: 389, size: 7296, elements: !289)
!289 = !{!290, !291, !295, !299, !303, !304, !305, !306, !307, !315, !320, !321, !322, !323, !332, !333, !334, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !369, !377, !380, !412, !413, !1306, !1307, !1310, !1314, !1315, !1318, !1319, !1320, !1323, !1334}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !288, file: !268, line: 390, baseType: !266, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !288, file: !268, line: 391, baseType: !292, size: 64, offset: 64)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !276, line: 31, size: 64, elements: !293)
!293 = !{!294}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !292, file: !276, line: 32, baseType: !280, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !288, file: !268, line: 392, baseType: !296, size: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !97, line: 23, baseType: !297)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !99, line: 31, baseType: !298)
!298 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !288, file: !268, line: 394, baseType: !300, size: 64, offset: 192)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{!227, !255, !227, !227, !227, !227}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !288, file: !268, line: 398, baseType: !227, size: 64, offset: 256)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !288, file: !268, line: 399, baseType: !227, size: 64, offset: 320)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !288, file: !268, line: 405, baseType: !227, size: 64, offset: 384)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !288, file: !268, line: 406, baseType: !227, size: 64, offset: 448)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !288, file: !268, line: 407, baseType: !308, size: 64, offset: 512)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !257, line: 286, baseType: !310)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !257, line: 286, size: 64, elements: !311)
!311 = !{!312}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !310, file: !257, line: 286, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !314, line: 18, baseType: !227)
!314 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!315 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !288, file: !268, line: 416, baseType: !316, size: 32, offset: 576)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !124, line: 168, baseType: !317)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !124, line: 166, size: 32, elements: !318)
!318 = !{!319}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !317, file: !124, line: 167, baseType: !92, size: 32)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !288, file: !268, line: 428, baseType: !316, size: 32, offset: 608)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !288, file: !268, line: 437, baseType: !316, size: 32, offset: 640)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !288, file: !268, line: 447, baseType: !316, size: 32, offset: 672)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !288, file: !268, line: 450, baseType: !324, size: 64, offset: 704)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !325, line: 13, baseType: !326)
!325 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !124, line: 175, baseType: !327)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !124, line: 173, size: 64, elements: !328)
!328 = !{!329}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !327, file: !124, line: 174, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !97, line: 22, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !99, line: 30, baseType: !260)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !288, file: !268, line: 452, baseType: !92, size: 32, offset: 768)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !288, file: !268, line: 454, baseType: !137, offset: 800)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !288, file: !268, line: 457, baseType: !335, size: 256, offset: 832)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !336, line: 35, size: 256, elements: !337)
!336 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!337 = !{!338, !339, !340, !342}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !335, file: !336, line: 36, baseType: !324, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !335, file: !336, line: 42, baseType: !324, size: 64, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !335, file: !336, line: 46, baseType: !341, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !138, line: 29, baseType: !145)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !335, file: !336, line: 47, baseType: !123, size: 128, offset: 128)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !288, file: !268, line: 459, baseType: !123, size: 128, offset: 1088)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !288, file: !268, line: 466, baseType: !227, size: 64, offset: 1216)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !288, file: !268, line: 467, baseType: !227, size: 64, offset: 1280)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !288, file: !268, line: 469, baseType: !227, size: 64, offset: 1344)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !288, file: !268, line: 470, baseType: !227, size: 64, offset: 1408)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !288, file: !268, line: 471, baseType: !326, size: 64, offset: 1472)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !288, file: !268, line: 472, baseType: !227, size: 64, offset: 1536)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !288, file: !268, line: 473, baseType: !227, size: 64, offset: 1600)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !288, file: !268, line: 474, baseType: !227, size: 64, offset: 1664)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !288, file: !268, line: 475, baseType: !227, size: 64, offset: 1728)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !288, file: !268, line: 477, baseType: !137, offset: 1792)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !288, file: !268, line: 478, baseType: !227, size: 64, offset: 1792)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !288, file: !268, line: 478, baseType: !227, size: 64, offset: 1856)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !288, file: !268, line: 478, baseType: !227, size: 64, offset: 1920)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !288, file: !268, line: 478, baseType: !227, size: 64, offset: 1984)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !288, file: !268, line: 479, baseType: !227, size: 64, offset: 2048)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !288, file: !268, line: 479, baseType: !227, size: 64, offset: 2112)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !288, file: !268, line: 479, baseType: !227, size: 64, offset: 2176)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !288, file: !268, line: 480, baseType: !227, size: 64, offset: 2240)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !288, file: !268, line: 480, baseType: !227, size: 64, offset: 2304)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !288, file: !268, line: 480, baseType: !227, size: 64, offset: 2368)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !288, file: !268, line: 480, baseType: !227, size: 64, offset: 2432)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !288, file: !268, line: 482, baseType: !366, size: 2816, offset: 2496)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 2816, elements: !367)
!367 = !{!368}
!368 = !DISubrange(count: 44)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !288, file: !268, line: 488, baseType: !370, size: 256, offset: 5312)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !371, line: 60, size: 256, elements: !372)
!371 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!372 = !{!373}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !370, file: !371, line: 61, baseType: !374, size: 256)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 256, elements: !375)
!375 = !{!376}
!376 = !DISubrange(count: 4)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !288, file: !268, line: 490, baseType: !378, size: 64, offset: 5568)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !268, line: 490, flags: DIFlagFwdDecl)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !288, file: !268, line: 493, baseType: !381, size: 896, offset: 5632)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !382, line: 53, baseType: !383)
!382 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !382, line: 13, size: 896, elements: !384)
!384 = !{!385, !386, !387, !388, !391, !392, !399, !400, !404, !405, !408}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !383, file: !382, line: 18, baseType: !296, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !383, file: !382, line: 28, baseType: !326, size: 64, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !383, file: !382, line: 31, baseType: !335, size: 256, offset: 128)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !383, file: !382, line: 32, baseType: !389, size: 64, offset: 384)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !382, line: 32, flags: DIFlagFwdDecl)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !383, file: !382, line: 37, baseType: !219, size: 16, offset: 448)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !383, file: !382, line: 40, baseType: !393, size: 192, offset: 512)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !394, line: 53, size: 192, elements: !395)
!394 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!395 = !{!396, !397, !398}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !393, file: !394, line: 54, baseType: !324, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !393, file: !394, line: 55, baseType: !137, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !393, file: !394, line: 59, baseType: !123, size: 128, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !383, file: !382, line: 41, baseType: !100, size: 64, offset: 704)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !383, file: !382, line: 42, baseType: !401, size: 64, offset: 768)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !403)
!403 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !382, line: 42, flags: DIFlagFwdDecl)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !383, file: !382, line: 44, baseType: !316, size: 32, offset: 832)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !383, file: !382, line: 50, baseType: !406, size: 16, offset: 864)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !97, line: 19, baseType: !407)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !99, line: 24, baseType: !219)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !383, file: !382, line: 51, baseType: !409, size: 16, offset: 880)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !97, line: 18, baseType: !410)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !99, line: 23, baseType: !411)
!411 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !288, file: !268, line: 495, baseType: !227, size: 64, offset: 6528)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !288, file: !268, line: 497, baseType: !414, size: 64, offset: 6592)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !268, line: 381, size: 384, elements: !416)
!416 = !{!417, !418, !1305}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !415, file: !268, line: 382, baseType: !316, size: 32)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !415, file: !268, line: 383, baseType: !419, size: 128, offset: 64)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !268, line: 376, size: 128, elements: !420)
!420 = !{!421, !1303}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !419, file: !268, line: 377, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !424, line: 640, size: 48640, elements: !425)
!424 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!425 = !{!426, !432, !434, !435, !441, !442, !443, !444, !445, !446, !447, !448, !452, !470, !481, !576, !577, !578, !589, !590, !592, !593, !594, !595, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !674, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !730, !732, !733, !734, !746, !747, !748, !749, !750, !751, !757, !758, !759, !760, !761, !762, !763, !775, !780, !784, !785, !786, !789, !793, !796, !799, !802, !805, !808, !811, !814, !820, !821, !822, !828, !829, !830, !831, !832, !841, !842, !843, !844, !845, !850, !851, !852, !855, !856, !859, !862, !865, !868, !871, !874, !875, !955, !958, !961, !962, !965, !966, !967, !973, !974, !975, !988, !989, !990, !1002, !1007, !1010, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !423, file: !424, line: 646, baseType: !427, size: 128)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !428, line: 56, size: 128, elements: !429)
!428 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!429 = !{!430, !431}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !427, file: !428, line: 57, baseType: !227, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !427, file: !428, line: 58, baseType: !96, size: 32, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !423, file: !424, line: 649, baseType: !433, size: 64, offset: 128)
!433 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !57)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !423, file: !424, line: 657, baseType: !100, size: 64, offset: 192)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !423, file: !424, line: 658, baseType: !436, size: 32, offset: 256)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !437, line: 113, baseType: !438)
!437 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !437, line: 111, size: 32, elements: !439)
!439 = !{!440}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !438, file: !437, line: 112, baseType: !316, size: 32)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !423, file: !424, line: 660, baseType: !7, size: 32, offset: 288)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !423, file: !424, line: 661, baseType: !7, size: 32, offset: 320)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !423, file: !424, line: 684, baseType: !92, size: 32, offset: 352)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !423, file: !424, line: 686, baseType: !92, size: 32, offset: 384)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !423, file: !424, line: 687, baseType: !92, size: 32, offset: 416)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !423, file: !424, line: 688, baseType: !92, size: 32, offset: 448)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !423, file: !424, line: 689, baseType: !7, size: 32, offset: 480)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !423, file: !424, line: 691, baseType: !449, size: 64, offset: 512)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !451)
!451 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !424, line: 691, flags: DIFlagFwdDecl)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !423, file: !424, line: 692, baseType: !453, size: 832, offset: 576)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !424, line: 451, size: 832, elements: !454)
!454 = !{!455, !460, !461, !462, !463, !464, !465, !466, !467, !468}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !453, file: !424, line: 453, baseType: !456, size: 128)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !424, line: 325, size: 128, elements: !457)
!457 = !{!458, !459}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !456, file: !424, line: 326, baseType: !227, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !456, file: !424, line: 327, baseType: !96, size: 32, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !453, file: !424, line: 454, baseType: !275, size: 192, align: 64, offset: 128)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !453, file: !424, line: 455, baseType: !123, size: 128, offset: 320)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !453, file: !424, line: 456, baseType: !7, size: 32, offset: 448)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !453, file: !424, line: 458, baseType: !296, size: 64, offset: 512)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !453, file: !424, line: 459, baseType: !296, size: 64, offset: 576)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !453, file: !424, line: 460, baseType: !296, size: 64, offset: 640)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !453, file: !424, line: 461, baseType: !296, size: 64, offset: 704)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !453, file: !424, line: 463, baseType: !296, size: 64, offset: 768)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !453, file: !424, line: 465, baseType: !469, offset: 832)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !424, line: 415, elements: !151)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !423, file: !424, line: 693, baseType: !471, size: 384, offset: 1408)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !424, line: 489, size: 384, elements: !472)
!472 = !{!473, !474, !475, !476, !477, !478, !479}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !471, file: !424, line: 490, baseType: !123, size: 128)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !471, file: !424, line: 491, baseType: !227, size: 64, offset: 128)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !471, file: !424, line: 492, baseType: !227, size: 64, offset: 192)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !471, file: !424, line: 493, baseType: !7, size: 32, offset: 256)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !471, file: !424, line: 494, baseType: !219, size: 16, offset: 288)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !471, file: !424, line: 495, baseType: !219, size: 16, offset: 304)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !471, file: !424, line: 497, baseType: !480, size: 64, offset: 320)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !423, file: !424, line: 697, baseType: !482, size: 1792, offset: 1792)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !424, line: 507, size: 1792, elements: !483)
!483 = !{!484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !573, !574}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !482, file: !424, line: 508, baseType: !275, size: 192, align: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !482, file: !424, line: 515, baseType: !296, size: 64, offset: 192)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !482, file: !424, line: 516, baseType: !296, size: 64, offset: 256)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !482, file: !424, line: 517, baseType: !296, size: 64, offset: 320)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !482, file: !424, line: 518, baseType: !296, size: 64, offset: 384)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !482, file: !424, line: 519, baseType: !296, size: 64, offset: 448)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !482, file: !424, line: 526, baseType: !330, size: 64, offset: 512)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !482, file: !424, line: 527, baseType: !296, size: 64, offset: 576)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !482, file: !424, line: 528, baseType: !7, size: 32, offset: 640)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !482, file: !424, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !482, file: !424, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !482, file: !424, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !482, file: !424, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !482, file: !424, line: 563, baseType: !498, size: 512, offset: 704)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !499)
!499 = !{!500, !508, !509, !514, !566, !570, !571, !572}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !498, file: !6, line: 119, baseType: !501, size: 256)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !502, line: 9, size: 256, elements: !503)
!502 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!503 = !{!504, !505}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !501, file: !502, line: 10, baseType: !275, size: 192, align: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !501, file: !502, line: 11, baseType: !506, size: 64, offset: 192)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !507, line: 29, baseType: !330)
!507 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!508 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !498, file: !6, line: 120, baseType: !506, size: 64, offset: 256)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !498, file: !6, line: 121, baseType: !510, size: 64, offset: 320)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!5, !513}
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !498, file: !6, line: 122, baseType: !515, size: 64, offset: 384)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !517)
!517 = !{!518, !538, !539, !542, !552, !553, !561, !565}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !516, file: !6, line: 160, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !521)
!521 = !{!522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !520, file: !6, line: 215, baseType: !341)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !520, file: !6, line: 216, baseType: !7, size: 32)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !520, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !520, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !520, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !520, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !520, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !520, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !520, file: !6, line: 233, baseType: !506, size: 64, offset: 128)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !520, file: !6, line: 234, baseType: !513, size: 64, offset: 192)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !520, file: !6, line: 235, baseType: !506, size: 64, offset: 256)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !520, file: !6, line: 236, baseType: !513, size: 64, offset: 320)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !520, file: !6, line: 237, baseType: !535, size: 4096, offset: 512)
!535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !516, size: 4096, elements: !536)
!536 = !{!537}
!537 = !DISubrange(count: 8)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !516, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !516, file: !6, line: 162, baseType: !540, size: 32, offset: 96)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !124, line: 27, baseType: !541)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !211, line: 96, baseType: !92)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !516, file: !6, line: 163, baseType: !543, size: 32, offset: 128)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !544, line: 276, baseType: !545)
!544 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !544, line: 276, size: 32, elements: !546)
!546 = !{!547}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !545, file: !544, line: 276, baseType: !548, size: 32)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !544, line: 70, baseType: !549)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !544, line: 65, size: 32, elements: !550)
!550 = !{!551}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !549, file: !544, line: 66, baseType: !7, size: 32)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !516, file: !6, line: 164, baseType: !513, size: 64, offset: 192)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !516, file: !6, line: 165, baseType: !554, size: 128, offset: 256)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !502, line: 14, size: 128, elements: !555)
!555 = !{!556}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !554, file: !502, line: 15, baseType: !557, size: 128)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !276, line: 125, size: 128, elements: !558)
!558 = !{!559, !560}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !557, file: !276, line: 126, baseType: !292, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !557, file: !276, line: 127, baseType: !280, size: 64, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !516, file: !6, line: 166, baseType: !562, size: 64, offset: 384)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{!506}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !516, file: !6, line: 167, baseType: !506, size: 64, offset: 448)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !498, file: !6, line: 123, baseType: !567, size: 8, offset: 448)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !97, line: 17, baseType: !568)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !99, line: 21, baseType: !569)
!569 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !498, file: !6, line: 124, baseType: !567, size: 8, offset: 456)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !498, file: !6, line: 125, baseType: !567, size: 8, offset: 464)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !498, file: !6, line: 126, baseType: !567, size: 8, offset: 472)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !482, file: !424, line: 572, baseType: !498, size: 512, offset: 1216)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !482, file: !424, line: 580, baseType: !575, size: 64, offset: 1728)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !423, file: !424, line: 721, baseType: !7, size: 32, offset: 3584)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !423, file: !424, line: 722, baseType: !92, size: 32, offset: 3616)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !423, file: !424, line: 723, baseType: !579, size: 64, offset: 3648)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !581)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !582, line: 17, baseType: !583)
!582 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !582, line: 17, size: 64, elements: !584)
!584 = !{!585}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !583, file: !582, line: 17, baseType: !586, size: 64)
!586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 64, elements: !587)
!587 = !{!588}
!588 = !DISubrange(count: 1)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !423, file: !424, line: 724, baseType: !581, size: 64, offset: 3712)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !423, file: !424, line: 749, baseType: !591, offset: 3776)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !424, line: 290, elements: !151)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !423, file: !424, line: 751, baseType: !123, size: 128, offset: 3776)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !423, file: !424, line: 757, baseType: !284, size: 64, offset: 3904)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !423, file: !424, line: 758, baseType: !284, size: 64, offset: 3968)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !423, file: !424, line: 761, baseType: !596, size: 320, offset: 4032)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !371, line: 34, size: 320, elements: !597)
!597 = !{!598, !599}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !596, file: !371, line: 35, baseType: !296, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !596, file: !371, line: 36, baseType: !600, size: 256, offset: 64)
!600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 256, elements: !375)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !423, file: !424, line: 766, baseType: !92, size: 32, offset: 4352)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !423, file: !424, line: 767, baseType: !92, size: 32, offset: 4384)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !423, file: !424, line: 768, baseType: !92, size: 32, offset: 4416)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !423, file: !424, line: 770, baseType: !92, size: 32, offset: 4448)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !423, file: !424, line: 772, baseType: !227, size: 64, offset: 4480)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !423, file: !424, line: 775, baseType: !7, size: 32, offset: 4544)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !423, file: !424, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !423, file: !424, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !423, file: !424, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !423, file: !424, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !423, file: !424, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !423, file: !424, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !423, file: !424, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !423, file: !424, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !423, file: !424, line: 831, baseType: !227, size: 64, offset: 4672)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !423, file: !424, line: 833, baseType: !617, size: 384, offset: 4736)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !618)
!618 = !{!619, !624}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !617, file: !12, line: 26, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{!57, !623}
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, scope: !617, file: !12, line: 27, baseType: !625, size: 320, offset: 64)
!625 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !617, file: !12, line: 27, size: 320, elements: !626)
!626 = !{!627, !637, !664}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !625, file: !12, line: 36, baseType: !628, size: 320)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !625, file: !12, line: 29, size: 320, elements: !629)
!629 = !{!630, !632, !633, !634, !635, !636}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !628, file: !12, line: 30, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !628, file: !12, line: 31, baseType: !96, size: 32, offset: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !628, file: !12, line: 32, baseType: !96, size: 32, offset: 96)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !628, file: !12, line: 33, baseType: !96, size: 32, offset: 128)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !628, file: !12, line: 34, baseType: !296, size: 64, offset: 192)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !628, file: !12, line: 35, baseType: !631, size: 64, offset: 256)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !625, file: !12, line: 46, baseType: !638, size: 192)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !625, file: !12, line: 38, size: 192, elements: !639)
!639 = !{!640, !641, !642, !663}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !638, file: !12, line: 39, baseType: !540, size: 32)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !638, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!642 = !DIDerivedType(tag: DW_TAG_member, scope: !638, file: !12, line: 41, baseType: !643, size: 64, offset: 64)
!643 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !638, file: !12, line: 41, size: 64, elements: !644)
!644 = !{!645, !653}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !643, file: !12, line: 42, baseType: !646, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !648, line: 7, size: 128, elements: !649)
!648 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!649 = !{!650, !652}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !647, file: !648, line: 8, baseType: !651, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !211, line: 93, baseType: !260)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !647, file: !648, line: 9, baseType: !260, size: 64, offset: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !643, file: !12, line: 43, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !656, line: 7, size: 64, elements: !657)
!656 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!657 = !{!658, !662}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !655, file: !656, line: 8, baseType: !659, size: 32)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !656, line: 5, baseType: !660)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !97, line: 20, baseType: !661)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !99, line: 26, baseType: !92)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !655, file: !656, line: 9, baseType: !660, size: 32, offset: 32)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !638, file: !12, line: 45, baseType: !296, size: 64, offset: 128)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !625, file: !12, line: 54, baseType: !665, size: 256)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !625, file: !12, line: 48, size: 256, elements: !666)
!666 = !{!667, !670, !671, !672, !673}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !665, file: !12, line: 49, baseType: !668, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !665, file: !12, line: 50, baseType: !92, size: 32, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !665, file: !12, line: 51, baseType: !92, size: 32, offset: 96)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !665, file: !12, line: 52, baseType: !227, size: 64, offset: 128)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !665, file: !12, line: 53, baseType: !227, size: 64, offset: 192)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !423, file: !424, line: 835, baseType: !675, size: 32, offset: 5120)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !124, line: 22, baseType: !676)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !211, line: 28, baseType: !92)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !423, file: !424, line: 836, baseType: !675, size: 32, offset: 5152)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !423, file: !424, line: 840, baseType: !227, size: 64, offset: 5184)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !423, file: !424, line: 849, baseType: !422, size: 64, offset: 5248)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !423, file: !424, line: 852, baseType: !422, size: 64, offset: 5312)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !423, file: !424, line: 857, baseType: !123, size: 128, offset: 5376)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !423, file: !424, line: 858, baseType: !123, size: 128, offset: 5504)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !423, file: !424, line: 859, baseType: !422, size: 64, offset: 5632)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !423, file: !424, line: 867, baseType: !123, size: 128, offset: 5696)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !423, file: !424, line: 868, baseType: !123, size: 128, offset: 5824)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !423, file: !424, line: 871, baseType: !687, size: 64, offset: 5952)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !689, line: 59, size: 768, elements: !690)
!689 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!690 = !{!691, !692, !693, !694, !705, !706, !713, !722}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !688, file: !689, line: 61, baseType: !436, size: 32)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !688, file: !689, line: 62, baseType: !7, size: 32, offset: 32)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !688, file: !689, line: 63, baseType: !137, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !688, file: !689, line: 65, baseType: !695, size: 256, offset: 64)
!695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !696, size: 256, elements: !375)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !124, line: 182, size: 64, elements: !697)
!697 = !{!698}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !696, file: !124, line: 183, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !124, line: 186, size: 128, elements: !701)
!701 = !{!702, !703}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !700, file: !124, line: 187, baseType: !699, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !700, file: !124, line: 187, baseType: !704, size: 64, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !688, file: !689, line: 66, baseType: !696, size: 64, offset: 320)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !688, file: !689, line: 68, baseType: !707, size: 128, offset: 384)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !708, line: 40, baseType: !709)
!708 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !708, line: 36, size: 128, elements: !710)
!710 = !{!711, !712}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !709, file: !708, line: 37, baseType: !137)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !709, file: !708, line: 38, baseType: !123, size: 128)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !688, file: !689, line: 69, baseType: !714, size: 128, align: 64, offset: 512)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !124, line: 216, size: 128, align: 64, elements: !715)
!715 = !{!716, !718}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !714, file: !124, line: 217, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !714, file: !124, line: 218, baseType: !719, size: 64, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{null, !717}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !688, file: !689, line: 70, baseType: !723, size: 128, offset: 640)
!723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !724, size: 128, elements: !587)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !689, line: 54, size: 128, elements: !725)
!725 = !{!726, !727}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !724, file: !689, line: 55, baseType: !92, size: 32)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !724, file: !689, line: 56, baseType: !728, size: 64, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !689, line: 56, flags: DIFlagFwdDecl)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !423, file: !424, line: 872, baseType: !731, size: 512, offset: 6016)
!731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !700, size: 512, elements: !375)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !423, file: !424, line: 873, baseType: !123, size: 128, offset: 6528)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !423, file: !424, line: 874, baseType: !123, size: 128, offset: 6656)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !423, file: !424, line: 876, baseType: !735, size: 64, offset: 6784)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !737, line: 26, size: 192, elements: !738)
!737 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!738 = !{!739, !740}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !736, file: !737, line: 27, baseType: !7, size: 32)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !736, file: !737, line: 28, baseType: !741, size: 128, offset: 64)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !742, line: 43, size: 128, elements: !743)
!742 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!743 = !{!744, !745}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !741, file: !742, line: 44, baseType: !341)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !741, file: !742, line: 45, baseType: !123, size: 128)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !423, file: !424, line: 879, baseType: !93, size: 64, offset: 6848)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !423, file: !424, line: 882, baseType: !93, size: 64, offset: 6912)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !423, file: !424, line: 884, baseType: !296, size: 64, offset: 6976)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !423, file: !424, line: 885, baseType: !296, size: 64, offset: 7040)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !423, file: !424, line: 890, baseType: !296, size: 64, offset: 7104)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !423, file: !424, line: 891, baseType: !752, size: 128, offset: 7168)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !424, line: 242, size: 128, elements: !753)
!753 = !{!754, !755, !756}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !752, file: !424, line: 244, baseType: !296, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !752, file: !424, line: 245, baseType: !296, size: 64, offset: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !752, file: !424, line: 246, baseType: !341, offset: 128)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !423, file: !424, line: 900, baseType: !227, size: 64, offset: 7296)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !423, file: !424, line: 901, baseType: !227, size: 64, offset: 7360)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !423, file: !424, line: 904, baseType: !296, size: 64, offset: 7424)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !423, file: !424, line: 907, baseType: !296, size: 64, offset: 7488)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !423, file: !424, line: 910, baseType: !227, size: 64, offset: 7552)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !423, file: !424, line: 911, baseType: !227, size: 64, offset: 7616)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !423, file: !424, line: 914, baseType: !764, size: 640, offset: 7680)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !765, line: 123, size: 640, elements: !766)
!765 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!766 = !{!767, !773, !774}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !764, file: !765, line: 124, baseType: !768, size: 576)
!768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !769, size: 576, elements: !179)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !765, line: 108, size: 192, elements: !770)
!770 = !{!771, !772}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !769, file: !765, line: 109, baseType: !296, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !769, file: !765, line: 110, baseType: !554, size: 128, offset: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !764, file: !765, line: 125, baseType: !7, size: 32, offset: 576)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !764, file: !765, line: 126, baseType: !7, size: 32, offset: 608)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !423, file: !424, line: 917, baseType: !776, size: 192, offset: 8320)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !765, line: 134, size: 192, elements: !777)
!777 = !{!778, !779}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !776, file: !765, line: 135, baseType: !714, size: 128, align: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !776, file: !765, line: 136, baseType: !7, size: 32, offset: 128)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !423, file: !424, line: 923, baseType: !781, size: 64, offset: 8512)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !783)
!783 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !424, line: 923, flags: DIFlagFwdDecl)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !423, file: !424, line: 926, baseType: !781, size: 64, offset: 8576)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !423, file: !424, line: 929, baseType: !781, size: 64, offset: 8640)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !423, file: !424, line: 933, baseType: !787, size: 64, offset: 8704)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !424, line: 933, flags: DIFlagFwdDecl)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !423, file: !424, line: 943, baseType: !790, size: 128, offset: 8768)
!790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 128, elements: !791)
!791 = !{!792}
!792 = !DISubrange(count: 16)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !423, file: !424, line: 945, baseType: !794, size: 64, offset: 8896)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !424, line: 49, flags: DIFlagFwdDecl)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !423, file: !424, line: 956, baseType: !797, size: 64, offset: 8960)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !424, line: 45, flags: DIFlagFwdDecl)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !423, file: !424, line: 959, baseType: !800, size: 64, offset: 9024)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !424, line: 959, flags: DIFlagFwdDecl)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !423, file: !424, line: 962, baseType: !803, size: 64, offset: 9088)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !424, line: 66, flags: DIFlagFwdDecl)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !423, file: !424, line: 966, baseType: !806, size: 64, offset: 9152)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !424, line: 50, flags: DIFlagFwdDecl)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !423, file: !424, line: 969, baseType: !809, size: 64, offset: 9216)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !765, line: 223, flags: DIFlagFwdDecl)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !423, file: !424, line: 970, baseType: !812, size: 64, offset: 9280)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !424, line: 62, flags: DIFlagFwdDecl)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !423, file: !424, line: 971, baseType: !815, size: 64, offset: 9344)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !816, line: 25, baseType: !817)
!816 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !816, line: 23, size: 64, elements: !818)
!818 = !{!819}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !817, file: !816, line: 24, baseType: !586, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !423, file: !424, line: 972, baseType: !815, size: 64, offset: 9408)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !423, file: !424, line: 974, baseType: !815, size: 64, offset: 9472)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !423, file: !424, line: 975, baseType: !823, size: 192, offset: 9536)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !824, line: 30, size: 192, elements: !825)
!824 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!825 = !{!826, !827}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !823, file: !824, line: 31, baseType: !123, size: 128)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !823, file: !824, line: 32, baseType: !815, size: 64, offset: 128)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !423, file: !424, line: 976, baseType: !227, size: 64, offset: 9728)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !423, file: !424, line: 977, baseType: !224, size: 64, offset: 9792)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !423, file: !424, line: 978, baseType: !7, size: 32, offset: 9856)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !423, file: !424, line: 980, baseType: !717, size: 64, offset: 9920)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !423, file: !424, line: 989, baseType: !833, size: 128, offset: 9984)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !834, line: 35, size: 128, elements: !835)
!834 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!835 = !{!836, !837, !838}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !833, file: !834, line: 36, baseType: !92, size: 32)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !833, file: !834, line: 37, baseType: !316, size: 32, offset: 32)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !833, file: !834, line: 38, baseType: !839, size: 64, offset: 64)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !834, line: 23, flags: DIFlagFwdDecl)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !423, file: !424, line: 992, baseType: !296, size: 64, offset: 10112)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !423, file: !424, line: 993, baseType: !296, size: 64, offset: 10176)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !423, file: !424, line: 996, baseType: !137, offset: 10240)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !423, file: !424, line: 999, baseType: !341, offset: 10240)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !423, file: !424, line: 1001, baseType: !846, size: 64, offset: 10240)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !424, line: 636, size: 64, elements: !847)
!847 = !{!848}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !846, file: !424, line: 637, baseType: !849, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !423, file: !424, line: 1005, baseType: !557, size: 128, offset: 10304)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !423, file: !424, line: 1007, baseType: !422, size: 64, offset: 10432)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !423, file: !424, line: 1009, baseType: !853, size: 64, offset: 10496)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !424, line: 1009, flags: DIFlagFwdDecl)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !423, file: !424, line: 1043, baseType: !100, size: 64, offset: 10560)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !423, file: !424, line: 1046, baseType: !857, size: 64, offset: 10624)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !424, line: 41, flags: DIFlagFwdDecl)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !423, file: !424, line: 1050, baseType: !860, size: 64, offset: 10688)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !424, line: 42, flags: DIFlagFwdDecl)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !423, file: !424, line: 1054, baseType: !863, size: 64, offset: 10752)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !424, line: 55, flags: DIFlagFwdDecl)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !423, file: !424, line: 1056, baseType: !866, size: 64, offset: 10816)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !424, line: 40, flags: DIFlagFwdDecl)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !423, file: !424, line: 1058, baseType: !869, size: 64, offset: 10880)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !424, line: 47, flags: DIFlagFwdDecl)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !423, file: !424, line: 1061, baseType: !872, size: 64, offset: 10944)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !424, line: 43, flags: DIFlagFwdDecl)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !423, file: !424, line: 1064, baseType: !227, size: 64, offset: 11008)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !423, file: !424, line: 1065, baseType: !876, size: 64, offset: 11072)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !824, line: 14, baseType: !878)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !824, line: 12, size: 384, elements: !879)
!879 = !{!880}
!880 = !DIDerivedType(tag: DW_TAG_member, scope: !878, file: !824, line: 13, baseType: !881, size: 384)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !878, file: !824, line: 13, size: 384, elements: !882)
!882 = !{!883, !884, !885, !886}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !881, file: !824, line: 13, baseType: !92, size: 32)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !881, file: !824, line: 13, baseType: !92, size: 32, offset: 32)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !881, file: !824, line: 13, baseType: !92, size: 32, offset: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !881, file: !824, line: 13, baseType: !887, size: 256, offset: 128)
!887 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !888, line: 32, size: 256, elements: !889)
!888 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!889 = !{!890, !896, !909, !915, !924, !944, !949}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !887, file: !888, line: 37, baseType: !891, size: 64)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !887, file: !888, line: 34, size: 64, elements: !892)
!892 = !{!893, !894}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !891, file: !888, line: 35, baseType: !676, size: 32)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !891, file: !888, line: 36, baseType: !895, size: 32, offset: 32)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !211, line: 49, baseType: !7)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !887, file: !888, line: 45, baseType: !897, size: 192)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !887, file: !888, line: 40, size: 192, elements: !898)
!898 = !{!899, !901, !902, !908}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !897, file: !888, line: 41, baseType: !900, size: 32)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !211, line: 95, baseType: !92)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !897, file: !888, line: 42, baseType: !92, size: 32, offset: 32)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !897, file: !888, line: 43, baseType: !903, size: 64, offset: 64)
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !888, line: 11, baseType: !904)
!904 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !888, line: 8, size: 64, elements: !905)
!905 = !{!906, !907}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !904, file: !888, line: 9, baseType: !92, size: 32)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !904, file: !888, line: 10, baseType: !100, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !897, file: !888, line: 44, baseType: !92, size: 32, offset: 128)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !887, file: !888, line: 52, baseType: !910, size: 128)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !887, file: !888, line: 48, size: 128, elements: !911)
!911 = !{!912, !913, !914}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !910, file: !888, line: 49, baseType: !676, size: 32)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !910, file: !888, line: 50, baseType: !895, size: 32, offset: 32)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !910, file: !888, line: 51, baseType: !903, size: 64, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !887, file: !888, line: 61, baseType: !916, size: 256)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !887, file: !888, line: 55, size: 256, elements: !917)
!917 = !{!918, !919, !920, !921, !923}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !916, file: !888, line: 56, baseType: !676, size: 32)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !916, file: !888, line: 57, baseType: !895, size: 32, offset: 32)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !916, file: !888, line: 58, baseType: !92, size: 32, offset: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !916, file: !888, line: 59, baseType: !922, size: 64, offset: 128)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !211, line: 94, baseType: !212)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !916, file: !888, line: 60, baseType: !922, size: 64, offset: 192)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !887, file: !888, line: 95, baseType: !925, size: 256)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !887, file: !888, line: 64, size: 256, elements: !926)
!926 = !{!927, !928}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !925, file: !888, line: 65, baseType: !100, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, scope: !925, file: !888, line: 77, baseType: !929, size: 192, offset: 64)
!929 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !925, file: !888, line: 77, size: 192, elements: !930)
!930 = !{!931, !932, !939}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !929, file: !888, line: 82, baseType: !411, size: 16)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !929, file: !888, line: 88, baseType: !933, size: 192)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !929, file: !888, line: 84, size: 192, elements: !934)
!934 = !{!935, !937, !938}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !933, file: !888, line: 85, baseType: !936, size: 64)
!936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 64, elements: !536)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !933, file: !888, line: 86, baseType: !100, size: 64, offset: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !933, file: !888, line: 87, baseType: !100, size: 64, offset: 128)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !929, file: !888, line: 93, baseType: !940, size: 96)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !929, file: !888, line: 90, size: 96, elements: !941)
!941 = !{!942, !943}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !940, file: !888, line: 91, baseType: !936, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !940, file: !888, line: 92, baseType: !98, size: 32, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !887, file: !888, line: 101, baseType: !945, size: 128)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !887, file: !888, line: 98, size: 128, elements: !946)
!946 = !{!947, !948}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !945, file: !888, line: 99, baseType: !57, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !945, file: !888, line: 100, baseType: !92, size: 32, offset: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !887, file: !888, line: 108, baseType: !950, size: 128)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !887, file: !888, line: 104, size: 128, elements: !951)
!951 = !{!952, !953, !954}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !950, file: !888, line: 105, baseType: !100, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !950, file: !888, line: 106, baseType: !92, size: 32, offset: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !950, file: !888, line: 107, baseType: !7, size: 32, offset: 96)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !423, file: !424, line: 1067, baseType: !956, offset: 11136)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !957, line: 12, elements: !151)
!957 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!958 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !423, file: !424, line: 1099, baseType: !959, size: 64, offset: 11136)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !424, line: 56, flags: DIFlagFwdDecl)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !423, file: !424, line: 1103, baseType: !123, size: 128, offset: 11200)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !423, file: !424, line: 1104, baseType: !963, size: 64, offset: 11328)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !424, line: 46, flags: DIFlagFwdDecl)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !423, file: !424, line: 1105, baseType: !393, size: 192, offset: 11392)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !423, file: !424, line: 1106, baseType: !7, size: 32, offset: 11584)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !423, file: !424, line: 1109, baseType: !968, size: 128, offset: 11648)
!968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !969, size: 128, elements: !971)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !424, line: 51, flags: DIFlagFwdDecl)
!971 = !{!972}
!972 = !DISubrange(count: 2)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !423, file: !424, line: 1110, baseType: !393, size: 192, offset: 11776)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !423, file: !424, line: 1111, baseType: !123, size: 128, offset: 11968)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !423, file: !424, line: 1173, baseType: !976, size: 64, offset: 12096)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !978, line: 62, size: 256, align: 256, elements: !979)
!978 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!979 = !{!980, !981, !982, !987}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !977, file: !978, line: 75, baseType: !98, size: 32)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !977, file: !978, line: 90, baseType: !98, size: 32, offset: 32)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !977, file: !978, line: 124, baseType: !983, size: 64, offset: 64)
!983 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !977, file: !978, line: 109, size: 64, elements: !984)
!984 = !{!985, !986}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !983, file: !978, line: 110, baseType: !297, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !983, file: !978, line: 112, baseType: !297, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !977, file: !978, line: 144, baseType: !98, size: 32, offset: 128)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !423, file: !424, line: 1174, baseType: !96, size: 32, offset: 12160)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !423, file: !424, line: 1179, baseType: !227, size: 64, offset: 12224)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !423, file: !424, line: 1182, baseType: !991, size: 128, offset: 12288)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !371, line: 76, size: 128, elements: !992)
!992 = !{!993, !998, !1001}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !991, file: !371, line: 85, baseType: !994, size: 64)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !995, line: 7, size: 64, elements: !996)
!995 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!996 = !{!997}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !994, file: !995, line: 12, baseType: !583, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !991, file: !371, line: 88, baseType: !999, size: 8, offset: 64)
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !124, line: 30, baseType: !1000)
!1000 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !991, file: !371, line: 95, baseType: !999, size: 8, offset: 72)
!1002 = !DIDerivedType(tag: DW_TAG_member, scope: !423, file: !424, line: 1184, baseType: !1003, size: 128, offset: 12416)
!1003 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !423, file: !424, line: 1184, size: 128, elements: !1004)
!1004 = !{!1005, !1006}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1003, file: !424, line: 1185, baseType: !436, size: 32)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1003, file: !424, line: 1186, baseType: !714, size: 128, align: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !423, file: !424, line: 1190, baseType: !1008, size: 64, offset: 12544)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !424, line: 53, flags: DIFlagFwdDecl)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !423, file: !424, line: 1192, baseType: !1011, size: 128, offset: 12608)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !371, line: 64, size: 128, elements: !1012)
!1012 = !{!1013, !1106, !1107}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1011, file: !371, line: 65, baseType: !1014, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !268, line: 68, size: 512, align: 128, elements: !1016)
!1016 = !{!1017, !1018, !1098, !1105}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1015, file: !268, line: 69, baseType: !227, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, scope: !1015, file: !268, line: 77, baseType: !1019, size: 320, offset: 64)
!1019 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1015, file: !268, line: 77, size: 320, elements: !1020)
!1020 = !{!1021, !1030, !1035, !1063, !1071, !1077, !1090, !1097}
!1021 = !DIDerivedType(tag: DW_TAG_member, scope: !1019, file: !268, line: 78, baseType: !1022, size: 320)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1019, file: !268, line: 78, size: 320, elements: !1023)
!1023 = !{!1024, !1025, !1028, !1029}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1022, file: !268, line: 84, baseType: !123, size: 128)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1022, file: !268, line: 86, baseType: !1026, size: 64, offset: 128)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !268, line: 26, flags: DIFlagFwdDecl)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1022, file: !268, line: 87, baseType: !227, size: 64, offset: 192)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1022, file: !268, line: 94, baseType: !227, size: 64, offset: 256)
!1030 = !DIDerivedType(tag: DW_TAG_member, scope: !1019, file: !268, line: 96, baseType: !1031, size: 64)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1019, file: !268, line: 96, size: 64, elements: !1032)
!1032 = !{!1033}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1031, file: !268, line: 101, baseType: !1034, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !124, line: 143, baseType: !296)
!1035 = !DIDerivedType(tag: DW_TAG_member, scope: !1019, file: !268, line: 103, baseType: !1036, size: 320)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1019, file: !268, line: 103, size: 320, elements: !1037)
!1037 = !{!1038, !1048, !1051, !1052}
!1038 = !DIDerivedType(tag: DW_TAG_member, scope: !1036, file: !268, line: 104, baseType: !1039, size: 128)
!1039 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1036, file: !268, line: 104, size: 128, elements: !1040)
!1040 = !{!1041, !1042}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1039, file: !268, line: 105, baseType: !123, size: 128)
!1042 = !DIDerivedType(tag: DW_TAG_member, scope: !1039, file: !268, line: 106, baseType: !1043, size: 128)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1039, file: !268, line: 106, size: 128, elements: !1044)
!1044 = !{!1045, !1046, !1047}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1043, file: !268, line: 107, baseType: !1014, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1043, file: !268, line: 109, baseType: !92, size: 32, offset: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1043, file: !268, line: 110, baseType: !92, size: 32, offset: 96)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1036, file: !268, line: 117, baseType: !1049, size: 64, offset: 128)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !268, line: 117, flags: DIFlagFwdDecl)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1036, file: !268, line: 119, baseType: !100, size: 64, offset: 192)
!1052 = !DIDerivedType(tag: DW_TAG_member, scope: !1036, file: !268, line: 120, baseType: !1053, size: 64, offset: 256)
!1053 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1036, file: !268, line: 120, size: 64, elements: !1054)
!1054 = !{!1055, !1056, !1057}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1053, file: !268, line: 121, baseType: !100, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1053, file: !268, line: 122, baseType: !227, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, scope: !1053, file: !268, line: 123, baseType: !1058, size: 32)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1053, file: !268, line: 123, size: 32, elements: !1059)
!1059 = !{!1060, !1061, !1062}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1058, file: !268, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1058, file: !268, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1058, file: !268, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1063 = !DIDerivedType(tag: DW_TAG_member, scope: !1019, file: !268, line: 130, baseType: !1064, size: 192)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1019, file: !268, line: 130, size: 192, elements: !1065)
!1065 = !{!1066, !1067, !1068, !1069, !1070}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1064, file: !268, line: 131, baseType: !227, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1064, file: !268, line: 134, baseType: !569, size: 8, offset: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1064, file: !268, line: 135, baseType: !569, size: 8, offset: 72)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1064, file: !268, line: 136, baseType: !316, size: 32, offset: 96)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1064, file: !268, line: 137, baseType: !7, size: 32, offset: 128)
!1071 = !DIDerivedType(tag: DW_TAG_member, scope: !1019, file: !268, line: 139, baseType: !1072, size: 256)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1019, file: !268, line: 139, size: 256, elements: !1073)
!1073 = !{!1074, !1075, !1076}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1072, file: !268, line: 140, baseType: !227, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1072, file: !268, line: 141, baseType: !316, size: 32, offset: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1072, file: !268, line: 143, baseType: !123, size: 128, offset: 128)
!1077 = !DIDerivedType(tag: DW_TAG_member, scope: !1019, file: !268, line: 145, baseType: !1078, size: 256)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1019, file: !268, line: 145, size: 256, elements: !1079)
!1079 = !{!1080, !1081, !1083, !1084, !1089}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1078, file: !268, line: 146, baseType: !227, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1078, file: !268, line: 147, baseType: !1082, size: 64, offset: 64)
!1082 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !257, line: 509, baseType: !1014)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1078, file: !268, line: 148, baseType: !227, size: 64, offset: 128)
!1084 = !DIDerivedType(tag: DW_TAG_member, scope: !1078, file: !268, line: 149, baseType: !1085, size: 64, offset: 192)
!1085 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1078, file: !268, line: 149, size: 64, elements: !1086)
!1086 = !{!1087, !1088}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1085, file: !268, line: 150, baseType: !284, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1085, file: !268, line: 151, baseType: !316, size: 32)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1078, file: !268, line: 156, baseType: !137, offset: 256)
!1090 = !DIDerivedType(tag: DW_TAG_member, scope: !1019, file: !268, line: 159, baseType: !1091, size: 128)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1019, file: !268, line: 159, size: 128, elements: !1092)
!1092 = !{!1093, !1096}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1091, file: !268, line: 161, baseType: !1094, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !268, line: 161, flags: DIFlagFwdDecl)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1091, file: !268, line: 162, baseType: !100, size: 64, offset: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1019, file: !268, line: 176, baseType: !714, size: 128, align: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, scope: !1015, file: !268, line: 179, baseType: !1099, size: 32, offset: 384)
!1099 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1015, file: !268, line: 179, size: 32, elements: !1100)
!1100 = !{!1101, !1102, !1103, !1104}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1099, file: !268, line: 184, baseType: !316, size: 32)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1099, file: !268, line: 192, baseType: !7, size: 32)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1099, file: !268, line: 194, baseType: !7, size: 32)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1099, file: !268, line: 195, baseType: !92, size: 32)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1015, file: !268, line: 199, baseType: !316, size: 32, offset: 416)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1011, file: !371, line: 67, baseType: !98, size: 32, offset: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1011, file: !371, line: 68, baseType: !98, size: 32, offset: 96)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !423, file: !424, line: 1206, baseType: !92, size: 32, offset: 12736)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !423, file: !424, line: 1207, baseType: !92, size: 32, offset: 12768)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !423, file: !424, line: 1209, baseType: !227, size: 64, offset: 12800)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !423, file: !424, line: 1219, baseType: !296, size: 64, offset: 12864)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !423, file: !424, line: 1220, baseType: !296, size: 64, offset: 12928)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !423, file: !424, line: 1317, baseType: !92, size: 32, offset: 12992)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !423, file: !424, line: 1319, baseType: !422, size: 64, offset: 13056)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !423, file: !424, line: 1322, baseType: !1116, size: 64, offset: 13120)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !424, line: 1322, flags: DIFlagFwdDecl)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !423, file: !424, line: 1326, baseType: !436, size: 32, offset: 13184)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !423, file: !424, line: 1342, baseType: !100, size: 64, offset: 13248)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !423, file: !424, line: 1343, baseType: !297, size: 64, offset: 13312)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !423, file: !424, line: 1344, baseType: !296, size: 64, offset: 13376)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !423, file: !424, line: 1345, baseType: !297, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !423, file: !424, line: 1346, baseType: !297, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !423, file: !424, line: 1347, baseType: !297, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !423, file: !424, line: 1348, baseType: !714, size: 128, align: 64, offset: 13504)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !423, file: !424, line: 1358, baseType: !1127, size: 34816, offset: 13824)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1128, line: 485, size: 34816, elements: !1129)
!1128 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1129 = !{!1130, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1159, !1160, !1161, !1162, !1163, !1164, !1167, !1168, !1169}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1127, file: !1128, line: 487, baseType: !1131, size: 192)
!1131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1132, size: 192, elements: !179)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1133, line: 16, size: 64, elements: !1134)
!1133 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1134 = !{!1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1132, file: !1133, line: 17, baseType: !406, size: 16)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1132, file: !1133, line: 18, baseType: !406, size: 16, offset: 16)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1132, file: !1133, line: 19, baseType: !406, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1132, file: !1133, line: 19, baseType: !406, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1132, file: !1133, line: 19, baseType: !406, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1132, file: !1133, line: 19, baseType: !406, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1132, file: !1133, line: 19, baseType: !406, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1132, file: !1133, line: 20, baseType: !406, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1132, file: !1133, line: 20, baseType: !406, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1132, file: !1133, line: 20, baseType: !406, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1132, file: !1133, line: 20, baseType: !406, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1132, file: !1133, line: 20, baseType: !406, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1132, file: !1133, line: 20, baseType: !406, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1127, file: !1128, line: 491, baseType: !227, size: 64, offset: 192)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1127, file: !1128, line: 495, baseType: !219, size: 16, offset: 256)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1127, file: !1128, line: 496, baseType: !219, size: 16, offset: 272)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1127, file: !1128, line: 497, baseType: !219, size: 16, offset: 288)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1127, file: !1128, line: 498, baseType: !219, size: 16, offset: 304)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1127, file: !1128, line: 502, baseType: !227, size: 64, offset: 320)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1127, file: !1128, line: 503, baseType: !227, size: 64, offset: 384)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1127, file: !1128, line: 514, baseType: !1156, size: 256, offset: 448)
!1156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1157, size: 256, elements: !375)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1128, line: 483, flags: DIFlagFwdDecl)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1127, file: !1128, line: 516, baseType: !227, size: 64, offset: 704)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1127, file: !1128, line: 518, baseType: !227, size: 64, offset: 768)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1127, file: !1128, line: 520, baseType: !227, size: 64, offset: 832)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1127, file: !1128, line: 521, baseType: !227, size: 64, offset: 896)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1127, file: !1128, line: 522, baseType: !227, size: 64, offset: 960)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1127, file: !1128, line: 528, baseType: !1165, size: 64, offset: 1024)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1128, line: 10, flags: DIFlagFwdDecl)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1127, file: !1128, line: 535, baseType: !227, size: 64, offset: 1088)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1127, file: !1128, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1127, file: !1128, line: 540, baseType: !1170, size: 33280, offset: 1536)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1171, line: 317, size: 33280, elements: !1172)
!1171 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1172 = !{!1173, !1174, !1175}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1170, file: !1171, line: 330, baseType: !7, size: 32)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1170, file: !1171, line: 337, baseType: !227, size: 64, offset: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1170, file: !1171, line: 348, baseType: !1176, size: 32768, offset: 512)
!1176 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1171, line: 304, size: 32768, elements: !1177)
!1177 = !{!1178, !1193, !1232, !1282, !1299}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1176, file: !1171, line: 305, baseType: !1179, size: 896)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1171, line: 12, size: 896, elements: !1180)
!1180 = !{!1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1192}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1179, file: !1171, line: 13, baseType: !96, size: 32)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1179, file: !1171, line: 14, baseType: !96, size: 32, offset: 32)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1179, file: !1171, line: 15, baseType: !96, size: 32, offset: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1179, file: !1171, line: 16, baseType: !96, size: 32, offset: 96)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1179, file: !1171, line: 17, baseType: !96, size: 32, offset: 128)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1179, file: !1171, line: 18, baseType: !96, size: 32, offset: 160)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1179, file: !1171, line: 19, baseType: !96, size: 32, offset: 192)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1179, file: !1171, line: 22, baseType: !1189, size: 640, offset: 224)
!1189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 640, elements: !1190)
!1190 = !{!1191}
!1191 = !DISubrange(count: 20)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1179, file: !1171, line: 25, baseType: !96, size: 32, offset: 864)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1176, file: !1171, line: 306, baseType: !1194, size: 4096, align: 128)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1171, line: 34, size: 4096, align: 128, elements: !1195)
!1195 = !{!1196, !1197, !1198, !1199, !1200, !1215, !1216, !1217, !1221, !1223, !1227}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1194, file: !1171, line: 35, baseType: !406, size: 16)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1194, file: !1171, line: 36, baseType: !406, size: 16, offset: 16)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1194, file: !1171, line: 37, baseType: !406, size: 16, offset: 32)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1194, file: !1171, line: 38, baseType: !406, size: 16, offset: 48)
!1200 = !DIDerivedType(tag: DW_TAG_member, scope: !1194, file: !1171, line: 39, baseType: !1201, size: 128, offset: 64)
!1201 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1194, file: !1171, line: 39, size: 128, elements: !1202)
!1202 = !{!1203, !1208}
!1203 = !DIDerivedType(tag: DW_TAG_member, scope: !1201, file: !1171, line: 40, baseType: !1204, size: 128)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1201, file: !1171, line: 40, size: 128, elements: !1205)
!1205 = !{!1206, !1207}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1204, file: !1171, line: 41, baseType: !296, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1204, file: !1171, line: 42, baseType: !296, size: 64, offset: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, scope: !1201, file: !1171, line: 44, baseType: !1209, size: 128)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1201, file: !1171, line: 44, size: 128, elements: !1210)
!1210 = !{!1211, !1212, !1213, !1214}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1209, file: !1171, line: 45, baseType: !96, size: 32)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1209, file: !1171, line: 46, baseType: !96, size: 32, offset: 32)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1209, file: !1171, line: 47, baseType: !96, size: 32, offset: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1209, file: !1171, line: 48, baseType: !96, size: 32, offset: 96)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1194, file: !1171, line: 51, baseType: !96, size: 32, offset: 192)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1194, file: !1171, line: 52, baseType: !96, size: 32, offset: 224)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1194, file: !1171, line: 55, baseType: !1218, size: 1024, offset: 256)
!1218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 1024, elements: !1219)
!1219 = !{!1220}
!1220 = !DISubrange(count: 32)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1194, file: !1171, line: 58, baseType: !1222, size: 2048, offset: 1280)
!1222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 2048, elements: !183)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1194, file: !1171, line: 60, baseType: !1224, size: 384, offset: 3328)
!1224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 384, elements: !1225)
!1225 = !{!1226}
!1226 = !DISubrange(count: 12)
!1227 = !DIDerivedType(tag: DW_TAG_member, scope: !1194, file: !1171, line: 62, baseType: !1228, size: 384, offset: 3712)
!1228 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1194, file: !1171, line: 62, size: 384, elements: !1229)
!1229 = !{!1230, !1231}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1228, file: !1171, line: 63, baseType: !1224, size: 384)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1228, file: !1171, line: 64, baseType: !1224, size: 384)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1176, file: !1171, line: 307, baseType: !1233, size: 1088)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1171, line: 79, size: 1088, elements: !1234)
!1234 = !{!1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1281}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1233, file: !1171, line: 80, baseType: !96, size: 32)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1233, file: !1171, line: 81, baseType: !96, size: 32, offset: 32)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1233, file: !1171, line: 82, baseType: !96, size: 32, offset: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1233, file: !1171, line: 83, baseType: !96, size: 32, offset: 96)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1233, file: !1171, line: 84, baseType: !96, size: 32, offset: 128)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1233, file: !1171, line: 85, baseType: !96, size: 32, offset: 160)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1233, file: !1171, line: 86, baseType: !96, size: 32, offset: 192)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1233, file: !1171, line: 88, baseType: !1189, size: 640, offset: 224)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1233, file: !1171, line: 89, baseType: !567, size: 8, offset: 864)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1233, file: !1171, line: 90, baseType: !567, size: 8, offset: 872)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1233, file: !1171, line: 91, baseType: !567, size: 8, offset: 880)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1233, file: !1171, line: 92, baseType: !567, size: 8, offset: 888)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1233, file: !1171, line: 93, baseType: !567, size: 8, offset: 896)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1233, file: !1171, line: 94, baseType: !567, size: 8, offset: 904)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1233, file: !1171, line: 95, baseType: !1250, size: 64, offset: 960)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1252, line: 11, size: 128, elements: !1253)
!1252 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1253 = !{!1254, !1255}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1251, file: !1252, line: 12, baseType: !57, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1251, file: !1252, line: 13, baseType: !1256, size: 64, offset: 64)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1258, line: 56, size: 1344, elements: !1259)
!1258 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1259 = !{!1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1257, file: !1258, line: 61, baseType: !227, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1257, file: !1258, line: 62, baseType: !227, size: 64, offset: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1257, file: !1258, line: 63, baseType: !227, size: 64, offset: 128)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1257, file: !1258, line: 64, baseType: !227, size: 64, offset: 192)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1257, file: !1258, line: 65, baseType: !227, size: 64, offset: 256)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1257, file: !1258, line: 66, baseType: !227, size: 64, offset: 320)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1257, file: !1258, line: 68, baseType: !227, size: 64, offset: 384)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1257, file: !1258, line: 69, baseType: !227, size: 64, offset: 448)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1257, file: !1258, line: 70, baseType: !227, size: 64, offset: 512)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1257, file: !1258, line: 71, baseType: !227, size: 64, offset: 576)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1257, file: !1258, line: 72, baseType: !227, size: 64, offset: 640)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1257, file: !1258, line: 73, baseType: !227, size: 64, offset: 704)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1257, file: !1258, line: 74, baseType: !227, size: 64, offset: 768)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1257, file: !1258, line: 75, baseType: !227, size: 64, offset: 832)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1257, file: !1258, line: 76, baseType: !227, size: 64, offset: 896)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1257, file: !1258, line: 81, baseType: !227, size: 64, offset: 960)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1257, file: !1258, line: 83, baseType: !227, size: 64, offset: 1024)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1257, file: !1258, line: 84, baseType: !227, size: 64, offset: 1088)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1257, file: !1258, line: 85, baseType: !227, size: 64, offset: 1152)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1257, file: !1258, line: 86, baseType: !227, size: 64, offset: 1216)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1257, file: !1258, line: 87, baseType: !227, size: 64, offset: 1280)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1233, file: !1171, line: 96, baseType: !96, size: 32, offset: 1024)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1176, file: !1171, line: 308, baseType: !1283, size: 4608, align: 512)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1171, line: 289, size: 4608, align: 512, elements: !1284)
!1284 = !{!1285, !1286, !1295}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1283, file: !1171, line: 290, baseType: !1194, size: 4096, align: 128)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1283, file: !1171, line: 291, baseType: !1287, size: 512, offset: 4096)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1171, line: 268, size: 512, elements: !1288)
!1288 = !{!1289, !1290, !1291}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1287, file: !1171, line: 269, baseType: !296, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1287, file: !1171, line: 270, baseType: !296, size: 64, offset: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1287, file: !1171, line: 271, baseType: !1292, size: 384, offset: 128)
!1292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 384, elements: !1293)
!1293 = !{!1294}
!1294 = !DISubrange(count: 6)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1283, file: !1171, line: 292, baseType: !1296, offset: 4608)
!1296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !567, elements: !1297)
!1297 = !{!1298}
!1298 = !DISubrange(count: 0)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1176, file: !1171, line: 309, baseType: !1300, size: 32768)
!1300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !567, size: 32768, elements: !1301)
!1301 = !{!1302}
!1302 = !DISubrange(count: 4096)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !419, file: !268, line: 378, baseType: !1304, size: 64, offset: 64)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !415, file: !268, line: 384, baseType: !736, size: 192, offset: 192)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !288, file: !268, line: 500, baseType: !137, offset: 6656)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !288, file: !268, line: 501, baseType: !1308, size: 64, offset: 6656)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !268, line: 387, flags: DIFlagFwdDecl)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !288, file: !268, line: 516, baseType: !1311, size: 64, offset: 6720)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1313, line: 18, flags: DIFlagFwdDecl)
!1313 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !288, file: !268, line: 519, baseType: !255, size: 64, offset: 6784)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !288, file: !268, line: 521, baseType: !1316, size: 64, offset: 6848)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !268, line: 521, flags: DIFlagFwdDecl)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !288, file: !268, line: 545, baseType: !316, size: 32, offset: 6912)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !288, file: !268, line: 548, baseType: !999, size: 8, offset: 6944)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !288, file: !268, line: 550, baseType: !1321, offset: 6952)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1322, line: 142, elements: !151)
!1322 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !288, file: !268, line: 554, baseType: !1324, size: 256, offset: 6976)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !56, line: 102, size: 256, elements: !1325)
!1325 = !{!1326, !1327, !1328}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1324, file: !56, line: 103, baseType: !324, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1324, file: !56, line: 104, baseType: !123, size: 128, offset: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1324, file: !56, line: 105, baseType: !1329, size: 64, offset: 192)
!1329 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !56, line: 21, baseType: !1330)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{null, !1333}
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !288, file: !268, line: 557, baseType: !96, size: 32, offset: 7232)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !285, file: !268, line: 565, baseType: !1336, offset: 7296)
!1336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, elements: !1337)
!1337 = !{!1338}
!1338 = !DISubrange(count: -1)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !267, file: !268, line: 333, baseType: !1340, size: 64, offset: 576)
!1340 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !257, line: 284, baseType: !1341)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !257, line: 284, size: 64, elements: !1342)
!1342 = !{!1343}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1341, file: !257, line: 284, baseType: !1344, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !314, line: 19, baseType: !227)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !267, file: !268, line: 334, baseType: !227, size: 64, offset: 640)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !267, file: !268, line: 343, baseType: !1347, size: 256, offset: 704)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !267, file: !268, line: 340, size: 256, elements: !1348)
!1348 = !{!1349, !1350}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1347, file: !268, line: 341, baseType: !275, size: 192, align: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1347, file: !268, line: 342, baseType: !227, size: 64, offset: 192)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !267, file: !268, line: 351, baseType: !123, size: 128, offset: 960)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !267, file: !268, line: 353, baseType: !1353, size: 64, offset: 1088)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !268, line: 353, flags: DIFlagFwdDecl)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !267, file: !268, line: 356, baseType: !1356, size: 64, offset: 1152)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1358)
!1358 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !268, line: 356, flags: DIFlagFwdDecl)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !267, file: !268, line: 359, baseType: !227, size: 64, offset: 1216)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !267, file: !268, line: 361, baseType: !255, size: 64, offset: 1280)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !267, file: !268, line: 362, baseType: !100, size: 64, offset: 1344)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !267, file: !268, line: 365, baseType: !324, size: 64, offset: 1408)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !267, file: !268, line: 373, baseType: !1364, offset: 1472)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !268, line: 296, elements: !151)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !234, file: !203, line: 90, baseType: !229, size: 64, offset: 192)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !234, file: !203, line: 91, baseType: !1367, size: 64, offset: 256)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !193, file: !116, line: 143, baseType: !1369, size: 64, offset: 256)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!1372, !130}
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1374)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1375)
!1375 = !{!1376, !1377, !1381, !1385, !1393, !1397}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1374, file: !18, line: 40, baseType: !17, size: 32)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1374, file: !18, line: 41, baseType: !1378, size: 64, offset: 64)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{!999}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1374, file: !18, line: 42, baseType: !1382, size: 64, offset: 128)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{!100}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1374, file: !18, line: 43, baseType: !1386, size: 64, offset: 192)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DISubroutineType(types: !1388)
!1388 = !{!1389, !1391}
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1374, file: !18, line: 44, baseType: !1394, size: 64, offset: 256)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!1389}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1374, file: !18, line: 45, baseType: !1398, size: 64, offset: 320)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{null, !100}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !193, file: !116, line: 144, baseType: !1402, size: 64, offset: 320)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!1389, !130}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !193, file: !116, line: 145, baseType: !1406, size: 64, offset: 384)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{null, !130, !1409, !1415}
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1313, line: 23, baseType: !1411)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1313, line: 21, size: 32, elements: !1412)
!1412 = !{!1413}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1411, file: !1313, line: 22, baseType: !1414, size: 32)
!1414 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !124, line: 32, baseType: !895)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1313, line: 28, baseType: !1417)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1313, line: 26, size: 32, elements: !1418)
!1418 = !{!1419}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1417, file: !1313, line: 27, baseType: !1420, size: 32)
!1420 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !124, line: 33, baseType: !1421)
!1421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !211, line: 50, baseType: !7)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !115, file: !116, line: 70, baseType: !1423, size: 64, offset: 384)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1425, line: 123, size: 1024, elements: !1426)
!1425 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1426 = !{!1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1569, !1570, !1571, !1572, !1573}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1424, file: !1425, line: 124, baseType: !316, size: 32)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1424, file: !1425, line: 125, baseType: !316, size: 32, offset: 32)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1424, file: !1425, line: 135, baseType: !1423, size: 64, offset: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1424, file: !1425, line: 136, baseType: !119, size: 64, offset: 128)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1424, file: !1425, line: 138, baseType: !275, size: 192, align: 64, offset: 192)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1424, file: !1425, line: 140, baseType: !1389, size: 64, offset: 384)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1424, file: !1425, line: 141, baseType: !7, size: 32, offset: 448)
!1434 = !DIDerivedType(tag: DW_TAG_member, scope: !1424, file: !1425, line: 142, baseType: !1435, size: 256, offset: 512)
!1435 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1424, file: !1425, line: 142, size: 256, elements: !1436)
!1436 = !{!1437, !1492, !1496}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1435, file: !1425, line: 143, baseType: !1438, size: 192)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1425, line: 91, size: 192, elements: !1439)
!1439 = !{!1440, !1441, !1442}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1438, file: !1425, line: 92, baseType: !227, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1438, file: !1425, line: 94, baseType: !292, size: 64, offset: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1438, file: !1425, line: 100, baseType: !1443, size: 64, offset: 128)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1425, line: 180, size: 704, elements: !1445)
!1445 = !{!1446, !1447, !1448, !1462, !1463, !1464, !1490, !1491}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1444, file: !1425, line: 182, baseType: !1423, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1444, file: !1425, line: 183, baseType: !7, size: 32, offset: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1444, file: !1425, line: 186, baseType: !1449, size: 192, offset: 128)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1450, line: 19, size: 192, elements: !1451)
!1450 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1451 = !{!1452, !1460, !1461}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1449, file: !1450, line: 20, baseType: !1453, size: 128)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1454, line: 292, size: 128, elements: !1455)
!1454 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1455 = !{!1456, !1457, !1459}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1453, file: !1454, line: 293, baseType: !137)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1453, file: !1454, line: 295, baseType: !1458, size: 32)
!1458 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !124, line: 148, baseType: !7)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1453, file: !1454, line: 296, baseType: !100, size: 64, offset: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1449, file: !1450, line: 21, baseType: !7, size: 32, offset: 128)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1449, file: !1450, line: 22, baseType: !7, size: 32, offset: 160)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1444, file: !1425, line: 187, baseType: !96, size: 32, offset: 320)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1444, file: !1425, line: 188, baseType: !96, size: 32, offset: 352)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1444, file: !1425, line: 189, baseType: !1465, size: 64, offset: 384)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1425, line: 168, size: 320, elements: !1467)
!1467 = !{!1468, !1474, !1478, !1482, !1486}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1466, file: !1425, line: 169, baseType: !1469, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!92, !1472, !1443}
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !257, line: 539, flags: DIFlagFwdDecl)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1466, file: !1425, line: 171, baseType: !1475, size: 64, offset: 64)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!92, !1423, !119, !218}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1466, file: !1425, line: 173, baseType: !1479, size: 64, offset: 128)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{!92, !1423}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1466, file: !1425, line: 174, baseType: !1483, size: 64, offset: 192)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!92, !1423, !1423, !119}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1466, file: !1425, line: 176, baseType: !1487, size: 64, offset: 256)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!92, !1472, !1423, !1443}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1444, file: !1425, line: 192, baseType: !123, size: 128, offset: 448)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1444, file: !1425, line: 194, baseType: !707, size: 128, offset: 576)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1435, file: !1425, line: 144, baseType: !1493, size: 64)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1425, line: 103, size: 64, elements: !1494)
!1494 = !{!1495}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1493, file: !1425, line: 104, baseType: !1423, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1435, file: !1425, line: 145, baseType: !1497, size: 256)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1425, line: 107, size: 256, elements: !1498)
!1498 = !{!1499, !1564, !1567, !1568}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1497, file: !1425, line: 108, baseType: !1500, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1502)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1425, line: 217, size: 768, elements: !1503)
!1503 = !{!1504, !1524, !1528, !1532, !1537, !1541, !1545, !1549, !1550, !1551, !1552, !1560}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1502, file: !1425, line: 222, baseType: !1505, size: 64)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!92, !1508}
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1425, line: 197, size: 1088, elements: !1510)
!1510 = !{!1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1509, file: !1425, line: 199, baseType: !1423, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1509, file: !1425, line: 200, baseType: !255, size: 64, offset: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1509, file: !1425, line: 201, baseType: !1472, size: 64, offset: 128)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1509, file: !1425, line: 202, baseType: !100, size: 64, offset: 192)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1509, file: !1425, line: 205, baseType: !393, size: 192, offset: 256)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1509, file: !1425, line: 206, baseType: !393, size: 192, offset: 448)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1509, file: !1425, line: 207, baseType: !92, size: 32, offset: 640)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1509, file: !1425, line: 208, baseType: !123, size: 128, offset: 704)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1509, file: !1425, line: 209, baseType: !178, size: 64, offset: 832)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1509, file: !1425, line: 211, baseType: !224, size: 64, offset: 896)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1509, file: !1425, line: 212, baseType: !999, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1509, file: !1425, line: 213, baseType: !999, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1509, file: !1425, line: 214, baseType: !1356, size: 64, offset: 1024)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1502, file: !1425, line: 223, baseType: !1525, size: 64, offset: 64)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{null, !1508}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1502, file: !1425, line: 236, baseType: !1529, size: 64, offset: 128)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!92, !1472, !100}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1502, file: !1425, line: 238, baseType: !1533, size: 64, offset: 192)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!100, !1472, !1536}
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1502, file: !1425, line: 239, baseType: !1538, size: 64, offset: 256)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{!100, !1472, !100, !1536}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1502, file: !1425, line: 240, baseType: !1542, size: 64, offset: 320)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{null, !1472, !100}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1502, file: !1425, line: 242, baseType: !1546, size: 64, offset: 384)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{!209, !1508, !178, !224, !258}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1502, file: !1425, line: 252, baseType: !224, size: 64, offset: 448)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1502, file: !1425, line: 259, baseType: !999, size: 8, offset: 512)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1502, file: !1425, line: 260, baseType: !1546, size: 64, offset: 576)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1502, file: !1425, line: 263, baseType: !1553, size: 64, offset: 640)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{!1556, !1508, !1558}
!1556 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1557, line: 52, baseType: !7)
!1557 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1425, line: 27, flags: DIFlagFwdDecl)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1502, file: !1425, line: 266, baseType: !1561, size: 64, offset: 704)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{!92, !1508, !266}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1497, file: !1425, line: 109, baseType: !1565, size: 64, offset: 64)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1425, line: 31, flags: DIFlagFwdDecl)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1497, file: !1425, line: 110, baseType: !258, size: 64, offset: 128)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1497, file: !1425, line: 111, baseType: !1423, size: 64, offset: 192)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1424, file: !1425, line: 148, baseType: !100, size: 64, offset: 768)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1424, file: !1425, line: 154, baseType: !296, size: 64, offset: 832)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1424, file: !1425, line: 156, baseType: !219, size: 16, offset: 896)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1424, file: !1425, line: 157, baseType: !218, size: 16, offset: 912)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1424, file: !1425, line: 158, baseType: !1574, size: 64, offset: 960)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1425, line: 32, flags: DIFlagFwdDecl)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !115, file: !116, line: 71, baseType: !1577, size: 32, offset: 448)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1578, line: 19, size: 32, elements: !1579)
!1578 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1579 = !{!1580}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1577, file: !1578, line: 20, baseType: !436, size: 32)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !115, file: !116, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !115, file: !116, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !115, file: !116, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !115, file: !116, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !115, file: !116, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !112, file: !30, line: 463, baseType: !111, size: 64, offset: 512)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !112, file: !30, line: 465, baseType: !1588, size: 64, offset: 576)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !112, file: !30, line: 467, baseType: !119, size: 64, offset: 640)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !112, file: !30, line: 468, baseType: !1592, size: 64, offset: 704)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1594)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1595)
!1595 = !{!1596, !1597, !1598, !1602, !1607, !1611}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1594, file: !30, line: 88, baseType: !119, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1594, file: !30, line: 89, baseType: !231, size: 64, offset: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1594, file: !30, line: 90, baseType: !1599, size: 64, offset: 128)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{!92, !111, !173}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1594, file: !30, line: 91, baseType: !1603, size: 64, offset: 192)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{!178, !111, !1606, !1409, !1415}
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1594, file: !30, line: 93, baseType: !1608, size: 64, offset: 256)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{null, !111}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1594, file: !30, line: 95, baseType: !1612, size: 64, offset: 320)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1614)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1615)
!1615 = !{!1616, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1614, file: !37, line: 279, baseType: !1617, size: 64)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{!92, !111}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1614, file: !37, line: 280, baseType: !1608, size: 64, offset: 64)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1614, file: !37, line: 281, baseType: !1617, size: 64, offset: 128)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1614, file: !37, line: 282, baseType: !1617, size: 64, offset: 192)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1614, file: !37, line: 283, baseType: !1617, size: 64, offset: 256)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1614, file: !37, line: 284, baseType: !1617, size: 64, offset: 320)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1614, file: !37, line: 285, baseType: !1617, size: 64, offset: 384)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1614, file: !37, line: 286, baseType: !1617, size: 64, offset: 448)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1614, file: !37, line: 287, baseType: !1617, size: 64, offset: 512)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1614, file: !37, line: 288, baseType: !1617, size: 64, offset: 576)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1614, file: !37, line: 289, baseType: !1617, size: 64, offset: 640)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1614, file: !37, line: 290, baseType: !1617, size: 64, offset: 704)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1614, file: !37, line: 291, baseType: !1617, size: 64, offset: 768)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1614, file: !37, line: 292, baseType: !1617, size: 64, offset: 832)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1614, file: !37, line: 293, baseType: !1617, size: 64, offset: 896)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1614, file: !37, line: 294, baseType: !1617, size: 64, offset: 960)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1614, file: !37, line: 295, baseType: !1617, size: 64, offset: 1024)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1614, file: !37, line: 296, baseType: !1617, size: 64, offset: 1088)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1614, file: !37, line: 297, baseType: !1617, size: 64, offset: 1152)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1614, file: !37, line: 298, baseType: !1617, size: 64, offset: 1216)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1614, file: !37, line: 299, baseType: !1617, size: 64, offset: 1280)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1614, file: !37, line: 300, baseType: !1617, size: 64, offset: 1344)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1614, file: !37, line: 301, baseType: !1617, size: 64, offset: 1408)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !112, file: !30, line: 470, baseType: !1643, size: 64, offset: 768)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1645, line: 82, size: 1408, elements: !1646)
!1645 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1646 = !{!1647, !1648, !1649, !1650, !1651, !1652, !1653, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1732, !1735, !1738}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1644, file: !1645, line: 83, baseType: !119, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1644, file: !1645, line: 84, baseType: !119, size: 64, offset: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1644, file: !1645, line: 85, baseType: !111, size: 64, offset: 128)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1644, file: !1645, line: 86, baseType: !231, size: 64, offset: 192)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1644, file: !1645, line: 87, baseType: !231, size: 64, offset: 256)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1644, file: !1645, line: 88, baseType: !231, size: 64, offset: 320)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1644, file: !1645, line: 90, baseType: !1654, size: 64, offset: 384)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!92, !111, !1657}
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1659)
!1659 = !{!1660, !1661, !1662, !1666, !1667, !1668, !1669, !1683, !1696, !1697, !1698, !1699, !1700, !1708, !1709, !1710, !1711, !1712, !1713}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1658, file: !24, line: 96, baseType: !119, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1658, file: !24, line: 97, baseType: !1643, size: 64, offset: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1658, file: !24, line: 99, baseType: !1663, size: 64, offset: 128)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1665, line: 76, flags: DIFlagFwdDecl)
!1665 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1658, file: !24, line: 100, baseType: !119, size: 64, offset: 192)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1658, file: !24, line: 102, baseType: !999, size: 8, offset: 256)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1658, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1658, file: !24, line: 105, baseType: !1670, size: 64, offset: 320)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1672)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1673, line: 262, size: 1600, elements: !1674)
!1673 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1674 = !{!1675, !1677, !1678, !1682}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1672, file: !1673, line: 263, baseType: !1676, size: 256)
!1676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 256, elements: !1219)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1672, file: !1673, line: 264, baseType: !1676, size: 256, offset: 256)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1672, file: !1673, line: 265, baseType: !1679, size: 1024, offset: 512)
!1679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 1024, elements: !1680)
!1680 = !{!1681}
!1681 = !DISubrange(count: 128)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1672, file: !1673, line: 266, baseType: !1389, size: 64, offset: 1536)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1658, file: !24, line: 106, baseType: !1684, size: 64, offset: 384)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1686)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1673, line: 210, size: 256, elements: !1687)
!1687 = !{!1688, !1692, !1694, !1695}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1686, file: !1673, line: 211, baseType: !1689, size: 72)
!1689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !568, size: 72, elements: !1690)
!1690 = !{!1691}
!1691 = !DISubrange(count: 9)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1686, file: !1673, line: 212, baseType: !1693, size: 64, offset: 128)
!1693 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1673, line: 14, baseType: !227)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1686, file: !1673, line: 213, baseType: !98, size: 32, offset: 192)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1686, file: !1673, line: 214, baseType: !98, size: 32, offset: 224)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1658, file: !24, line: 108, baseType: !1617, size: 64, offset: 448)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1658, file: !24, line: 109, baseType: !1608, size: 64, offset: 512)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1658, file: !24, line: 110, baseType: !1617, size: 64, offset: 576)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1658, file: !24, line: 111, baseType: !1608, size: 64, offset: 640)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1658, file: !24, line: 112, baseType: !1701, size: 64, offset: 704)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!92, !111, !1704}
!1704 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1705)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1706)
!1706 = !{!1707}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1705, file: !37, line: 51, baseType: !92, size: 32)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1658, file: !24, line: 113, baseType: !1617, size: 64, offset: 768)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1658, file: !24, line: 114, baseType: !231, size: 64, offset: 832)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1658, file: !24, line: 115, baseType: !231, size: 64, offset: 896)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1658, file: !24, line: 117, baseType: !1612, size: 64, offset: 960)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1658, file: !24, line: 118, baseType: !1608, size: 64, offset: 1024)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1658, file: !24, line: 120, baseType: !1714, size: 64, offset: 1088)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1644, file: !1645, line: 91, baseType: !1599, size: 64, offset: 448)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1644, file: !1645, line: 92, baseType: !1617, size: 64, offset: 512)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1644, file: !1645, line: 93, baseType: !1608, size: 64, offset: 576)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1644, file: !1645, line: 94, baseType: !1617, size: 64, offset: 640)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1644, file: !1645, line: 95, baseType: !1608, size: 64, offset: 704)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1644, file: !1645, line: 97, baseType: !1617, size: 64, offset: 768)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1644, file: !1645, line: 98, baseType: !1617, size: 64, offset: 832)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1644, file: !1645, line: 100, baseType: !1701, size: 64, offset: 896)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1644, file: !1645, line: 101, baseType: !1617, size: 64, offset: 960)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1644, file: !1645, line: 103, baseType: !1617, size: 64, offset: 1024)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1644, file: !1645, line: 105, baseType: !1617, size: 64, offset: 1088)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1644, file: !1645, line: 107, baseType: !1612, size: 64, offset: 1152)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1644, file: !1645, line: 109, baseType: !1729, size: 64, offset: 1216)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1731)
!1731 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1645, line: 109, flags: DIFlagFwdDecl)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1644, file: !1645, line: 111, baseType: !1733, size: 64, offset: 1280)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1645, line: 111, flags: DIFlagFwdDecl)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1644, file: !1645, line: 112, baseType: !1736, offset: 1344)
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1737, line: 187, elements: !151)
!1737 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1644, file: !1645, line: 114, baseType: !999, size: 8, offset: 1344)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !112, file: !30, line: 471, baseType: !1657, size: 64, offset: 832)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !112, file: !30, line: 473, baseType: !100, size: 64, offset: 896)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !112, file: !30, line: 475, baseType: !100, size: 64, offset: 960)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !112, file: !30, line: 480, baseType: !393, size: 192, offset: 1024)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !112, file: !30, line: 484, baseType: !1744, size: 576, offset: 1216)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1745)
!1745 = !{!1746, !1747, !1748, !1749, !1750, !1751}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1744, file: !30, line: 362, baseType: !123, size: 128)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1744, file: !30, line: 363, baseType: !123, size: 128, offset: 128)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1744, file: !30, line: 364, baseType: !123, size: 128, offset: 256)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1744, file: !30, line: 365, baseType: !123, size: 128, offset: 384)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1744, file: !30, line: 366, baseType: !999, size: 8, offset: 512)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1744, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !112, file: !30, line: 485, baseType: !1753, size: 2304, offset: 1792)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1754)
!1754 = !{!1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1850, !1854}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1753, file: !37, line: 566, baseType: !1704, size: 32)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1753, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1753, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1753, file: !37, line: 569, baseType: !999, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1753, file: !37, line: 570, baseType: !999, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1753, file: !37, line: 571, baseType: !999, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1753, file: !37, line: 572, baseType: !999, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1753, file: !37, line: 573, baseType: !999, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1753, file: !37, line: 574, baseType: !999, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1753, file: !37, line: 575, baseType: !999, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1753, file: !37, line: 576, baseType: !999, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1753, file: !37, line: 577, baseType: !96, size: 32, offset: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1753, file: !37, line: 578, baseType: !137, offset: 96)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1753, file: !37, line: 580, baseType: !123, size: 128, offset: 128)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1753, file: !37, line: 581, baseType: !736, size: 192, offset: 256)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1753, file: !37, line: 582, baseType: !1771, size: 64, offset: 448)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1773, line: 43, size: 1472, elements: !1774)
!1773 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1774 = !{!1775, !1776, !1777, !1778, !1779, !1782, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1772, file: !1773, line: 44, baseType: !119, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1772, file: !1773, line: 45, baseType: !92, size: 32, offset: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1772, file: !1773, line: 46, baseType: !123, size: 128, offset: 128)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1772, file: !1773, line: 47, baseType: !137, offset: 256)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1772, file: !1773, line: 48, baseType: !1780, size: 64, offset: 256)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1772, file: !1773, line: 49, baseType: !1783, size: 320, offset: 320)
!1783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1784, line: 11, size: 320, elements: !1785)
!1784 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1785 = !{!1786, !1787, !1788, !1793}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1783, file: !1784, line: 16, baseType: !700, size: 128)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1783, file: !1784, line: 17, baseType: !227, size: 64, offset: 128)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1783, file: !1784, line: 18, baseType: !1789, size: 64, offset: 192)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DISubroutineType(types: !1791)
!1791 = !{null, !1792}
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1783, file: !1784, line: 19, baseType: !96, size: 32, offset: 256)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1772, file: !1773, line: 50, baseType: !227, size: 64, offset: 640)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1772, file: !1773, line: 51, baseType: !506, size: 64, offset: 704)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1772, file: !1773, line: 52, baseType: !506, size: 64, offset: 768)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1772, file: !1773, line: 53, baseType: !506, size: 64, offset: 832)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1772, file: !1773, line: 54, baseType: !506, size: 64, offset: 896)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1772, file: !1773, line: 55, baseType: !506, size: 64, offset: 960)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1772, file: !1773, line: 56, baseType: !227, size: 64, offset: 1024)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1772, file: !1773, line: 57, baseType: !227, size: 64, offset: 1088)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1772, file: !1773, line: 58, baseType: !227, size: 64, offset: 1152)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1772, file: !1773, line: 59, baseType: !227, size: 64, offset: 1216)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1772, file: !1773, line: 60, baseType: !227, size: 64, offset: 1280)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1772, file: !1773, line: 61, baseType: !111, size: 64, offset: 1344)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1772, file: !1773, line: 62, baseType: !999, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1772, file: !1773, line: 63, baseType: !999, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1753, file: !37, line: 583, baseType: !999, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1753, file: !37, line: 584, baseType: !999, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1753, file: !37, line: 585, baseType: !999, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1753, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1753, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1753, file: !37, line: 592, baseType: !498, size: 512, offset: 576)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1753, file: !37, line: 593, baseType: !296, size: 64, offset: 1088)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1753, file: !37, line: 594, baseType: !1324, size: 256, offset: 1152)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1753, file: !37, line: 595, baseType: !707, size: 128, offset: 1408)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1753, file: !37, line: 596, baseType: !1780, size: 64, offset: 1536)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1753, file: !37, line: 597, baseType: !316, size: 32, offset: 1600)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1753, file: !37, line: 598, baseType: !316, size: 32, offset: 1632)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1753, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1753, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1753, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1753, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1753, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1753, file: !37, line: 604, baseType: !999, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1753, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1753, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1753, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1753, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1753, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1753, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1753, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1753, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1753, file: !37, line: 613, baseType: !92, size: 32, offset: 1792)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1753, file: !37, line: 614, baseType: !92, size: 32, offset: 1824)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1753, file: !37, line: 615, baseType: !296, size: 64, offset: 1856)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1753, file: !37, line: 616, baseType: !296, size: 64, offset: 1920)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1753, file: !37, line: 617, baseType: !296, size: 64, offset: 1984)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1753, file: !37, line: 618, baseType: !296, size: 64, offset: 2048)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1753, file: !37, line: 620, baseType: !1841, size: 64, offset: 2112)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1843)
!1843 = !{!1844, !1845, !1846, !1847}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1842, file: !37, line: 537, baseType: !137)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1842, file: !37, line: 538, baseType: !7, size: 32)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1842, file: !37, line: 540, baseType: !123, size: 128, offset: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1842, file: !37, line: 543, baseType: !1848, size: 64, offset: 192)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1753, file: !37, line: 621, baseType: !1851, size: 64, offset: 2176)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{null, !111, !660}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1753, file: !37, line: 622, baseType: !1855, size: 64, offset: 2240)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !112, file: !30, line: 486, baseType: !1858, size: 64, offset: 4096)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1860)
!1860 = !{!1861, !1862, !1863, !1867, !1868, !1869}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1859, file: !37, line: 643, baseType: !1614, size: 1472)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1859, file: !37, line: 644, baseType: !1617, size: 64, offset: 1472)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1859, file: !37, line: 645, baseType: !1864, size: 64, offset: 1536)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{null, !111, !999}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1859, file: !37, line: 646, baseType: !1617, size: 64, offset: 1600)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1859, file: !37, line: 647, baseType: !1608, size: 64, offset: 1664)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1859, file: !37, line: 648, baseType: !1608, size: 64, offset: 1728)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !112, file: !30, line: 493, baseType: !1871, size: 64, offset: 4160)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !112, file: !30, line: 499, baseType: !123, size: 128, offset: 4224)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !112, file: !30, line: 502, baseType: !1875, size: 64, offset: 4352)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1877)
!1877 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !112, file: !30, line: 504, baseType: !1879, size: 64, offset: 4416)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !112, file: !30, line: 505, baseType: !296, size: 64, offset: 4480)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !112, file: !30, line: 510, baseType: !296, size: 64, offset: 4544)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !112, file: !30, line: 511, baseType: !1883, size: 64, offset: 4608)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1885)
!1885 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !112, file: !30, line: 513, baseType: !1887, size: 64, offset: 4672)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !1889)
!1889 = !{!1890, !1891}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1888, file: !30, line: 293, baseType: !7, size: 32)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1888, file: !30, line: 294, baseType: !227, size: 64, offset: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !112, file: !30, line: 515, baseType: !123, size: 128, offset: 4736)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !112, file: !30, line: 526, baseType: !1894, offset: 4864)
!1894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1895, line: 5, elements: !151)
!1895 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !112, file: !30, line: 528, baseType: !1897, size: 64, offset: 4864)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1899, line: 14, flags: DIFlagFwdDecl)
!1899 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !112, file: !30, line: 529, baseType: !1901, size: 64, offset: 4928)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1645, line: 22, flags: DIFlagFwdDecl)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !112, file: !30, line: 534, baseType: !1904, size: 32, offset: 4992)
!1904 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !124, line: 16, baseType: !1905)
!1905 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !124, line: 13, baseType: !96)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !112, file: !30, line: 535, baseType: !96, size: 32, offset: 5024)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !112, file: !30, line: 537, baseType: !137, offset: 5056)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !112, file: !30, line: 538, baseType: !123, size: 128, offset: 5056)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !112, file: !30, line: 540, baseType: !1910, size: 64, offset: 5184)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1912, line: 54, size: 960, elements: !1913)
!1912 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!1913 = !{!1914, !1915, !1916, !1917, !1918, !1919, !1920, !1924, !1928, !1929, !1930, !1931, !1935, !1939, !1940}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1911, file: !1912, line: 55, baseType: !119, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1911, file: !1912, line: 56, baseType: !1663, size: 64, offset: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1911, file: !1912, line: 58, baseType: !231, size: 64, offset: 128)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1911, file: !1912, line: 59, baseType: !231, size: 64, offset: 192)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !1911, file: !1912, line: 60, baseType: !130, size: 64, offset: 256)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1911, file: !1912, line: 62, baseType: !1599, size: 64, offset: 320)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1911, file: !1912, line: 63, baseType: !1921, size: 64, offset: 384)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!178, !111, !1606}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1911, file: !1912, line: 65, baseType: !1925, size: 64, offset: 448)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{null, !1910}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1911, file: !1912, line: 66, baseType: !1608, size: 64, offset: 512)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1911, file: !1912, line: 68, baseType: !1617, size: 64, offset: 576)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1911, file: !1912, line: 70, baseType: !1372, size: 64, offset: 640)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1911, file: !1912, line: 71, baseType: !1932, size: 64, offset: 704)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{!1389, !111}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1911, file: !1912, line: 73, baseType: !1936, size: 64, offset: 768)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{null, !111, !1409, !1415}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1911, file: !1912, line: 75, baseType: !1612, size: 64, offset: 832)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1911, file: !1912, line: 77, baseType: !1733, size: 64, offset: 896)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !112, file: !30, line: 541, baseType: !231, size: 64, offset: 5248)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !112, file: !30, line: 543, baseType: !1608, size: 64, offset: 5312)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !112, file: !30, line: 544, baseType: !1944, size: 64, offset: 5376)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !112, file: !30, line: 545, baseType: !1947, size: 64, offset: 5440)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !112, file: !30, line: 547, baseType: !999, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !112, file: !30, line: 548, baseType: !999, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !112, file: !30, line: 549, baseType: !999, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !112, file: !30, line: 550, baseType: !999, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !107, file: !108, line: 277, baseType: !112, size: 5568, offset: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !107, file: !108, line: 278, baseType: !92, size: 32, offset: 5632)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !107, file: !108, line: 279, baseType: !1956, size: 64, offset: 5696)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1958)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_host_ops", file: !108, line: 82, size: 1408, elements: !1959)
!1959 = !{!1960, !2014, !2018, !2019, !2023, !2041, !2045, !2046, !2050, !2054, !2058, !2062, !2063, !2067, !2068, !2069, !2070, !2071, !2072, !2076, !2077, !2078}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "post_req", scope: !1958, file: !108, line: 91, baseType: !1961, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{null, !106, !1964, !92}
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_request", file: !1966, line: 144, size: 896, elements: !1967)
!1966 = !DIFile(filename: "./include/linux/mmc/core.h", directory: "/home/lizy2001/genbc/linux")
!1967 = !{!1968, !2001, !2002, !2003, !2004, !2005, !2006, !2010, !2011, !2012, !2013}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "sbc", scope: !1965, file: !1966, line: 145, baseType: !1969, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_command", file: !1966, line: 26, size: 448, elements: !1971)
!1971 = !{!1972, !1973, !1974, !1976, !1977, !1978, !1979, !1980, !2000}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !1970, file: !1966, line: 27, baseType: !96, size: 32)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1970, file: !1966, line: 28, baseType: !96, size: 32, offset: 32)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "resp", scope: !1970, file: !1966, line: 32, baseType: !1975, size: 128, offset: 64)
!1975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 128, elements: !375)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1970, file: !1966, line: 33, baseType: !7, size: 32, offset: 192)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !1970, file: !1966, line: 92, baseType: !7, size: 32, offset: 224)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !1970, file: !1966, line: 93, baseType: !92, size: 32, offset: 256)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "busy_timeout", scope: !1970, file: !1966, line: 109, baseType: !7, size: 32, offset: 288)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1970, file: !1966, line: 110, baseType: !1981, size: 64, offset: 320)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_data", file: !1966, line: 114, size: 576, elements: !1983)
!1983 = !{!1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1999}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_ns", scope: !1982, file: !1966, line: 115, baseType: !7, size: 32)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_clks", scope: !1982, file: !1966, line: 116, baseType: !7, size: 32, offset: 32)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "blksz", scope: !1982, file: !1966, line: 117, baseType: !7, size: 32, offset: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1982, file: !1966, line: 118, baseType: !7, size: 32, offset: 96)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "blk_addr", scope: !1982, file: !1966, line: 119, baseType: !7, size: 32, offset: 128)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !1982, file: !1966, line: 120, baseType: !92, size: 32, offset: 160)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1982, file: !1966, line: 121, baseType: !7, size: 32, offset: 192)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_xfered", scope: !1982, file: !1966, line: 132, baseType: !7, size: 32, offset: 224)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1982, file: !1966, line: 134, baseType: !1969, size: 64, offset: 256)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "mrq", scope: !1982, file: !1966, line: 135, baseType: !1964, size: 64, offset: 320)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "sg_len", scope: !1982, file: !1966, line: 137, baseType: !7, size: 32, offset: 384)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "sg_count", scope: !1982, file: !1966, line: 138, baseType: !92, size: 32, offset: 416)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !1982, file: !1966, line: 139, baseType: !1997, size: 64, offset: 448)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !1966, line: 139, flags: DIFlagFwdDecl)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "host_cookie", scope: !1982, file: !1966, line: 140, baseType: !660, size: 32, offset: 512)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "mrq", scope: !1970, file: !1966, line: 111, baseType: !1964, size: 64, offset: 384)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !1965, file: !1966, line: 146, baseType: !1969, size: 64, offset: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1965, file: !1966, line: 147, baseType: !1981, size: 64, offset: 128)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1965, file: !1966, line: 148, baseType: !1969, size: 64, offset: 192)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1965, file: !1966, line: 150, baseType: !736, size: 192, offset: 256)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_completion", scope: !1965, file: !1966, line: 151, baseType: !736, size: 192, offset: 448)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1965, file: !1966, line: 152, baseType: !2007, size: 64, offset: 640)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{null, !1964}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_notifier", scope: !1965, file: !1966, line: 158, baseType: !2007, size: 64, offset: 704)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1965, file: !1966, line: 159, baseType: !106, size: 64, offset: 768)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "cap_cmd_during_tfr", scope: !1965, file: !1966, line: 162, baseType: !999, size: 8, offset: 832)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !1965, file: !1966, line: 164, baseType: !92, size: 32, offset: 864)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "pre_req", scope: !1958, file: !108, line: 93, baseType: !2015, size: 64, offset: 64)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{null, !106, !1964}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1958, file: !108, line: 94, baseType: !2015, size: 64, offset: 128)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "request_atomic", scope: !1958, file: !108, line: 96, baseType: !2020, size: 64, offset: 192)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{!92, !106, !1964}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "set_ios", scope: !1958, file: !108, line: 113, baseType: !2024, size: 64, offset: 256)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{null, !106, !2027}
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_ios", file: !108, line: 19, size: 160, elements: !2029)
!2029 = !{!2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !2028, file: !108, line: 20, baseType: !7, size: 32)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "vdd", scope: !2028, file: !108, line: 21, baseType: !219, size: 16, offset: 32)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "power_delay_ms", scope: !2028, file: !108, line: 22, baseType: !7, size: 32, offset: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "bus_mode", scope: !2028, file: !108, line: 26, baseType: !569, size: 8, offset: 96)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "chip_select", scope: !2028, file: !108, line: 31, baseType: !569, size: 8, offset: 104)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "power_mode", scope: !2028, file: !108, line: 37, baseType: !569, size: 8, offset: 112)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "bus_width", scope: !2028, file: !108, line: 44, baseType: !569, size: 8, offset: 120)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "timing", scope: !2028, file: !108, line: 50, baseType: !569, size: 8, offset: 128)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "signal_voltage", scope: !2028, file: !108, line: 64, baseType: !569, size: 8, offset: 136)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "drv_type", scope: !2028, file: !108, line: 70, baseType: !569, size: 8, offset: 144)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "enhanced_strobe", scope: !2028, file: !108, line: 77, baseType: !999, size: 8, offset: 152)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "get_ro", scope: !1958, file: !108, line: 122, baseType: !2042, size: 64, offset: 320)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{!92, !106}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "get_cd", scope: !1958, file: !108, line: 131, baseType: !2042, size: 64, offset: 384)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "enable_sdio_irq", scope: !1958, file: !108, line: 133, baseType: !2047, size: 64, offset: 448)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{null, !106, !92}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "ack_sdio_irq", scope: !1958, file: !108, line: 135, baseType: !2051, size: 64, offset: 512)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{null, !106}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "init_card", scope: !1958, file: !108, line: 138, baseType: !2055, size: 64, offset: 576)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{null, !106, !101}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "start_signal_voltage_switch", scope: !1958, file: !108, line: 140, baseType: !2059, size: 64, offset: 640)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!92, !106, !2027}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "card_busy", scope: !1958, file: !108, line: 143, baseType: !2042, size: 64, offset: 704)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "execute_tuning", scope: !1958, file: !108, line: 146, baseType: !2064, size: 64, offset: 768)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{!92, !106, !96}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_hs400_tuning", scope: !1958, file: !108, line: 149, baseType: !2059, size: 64, offset: 832)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "hs400_prepare_ddr", scope: !1958, file: !108, line: 152, baseType: !2042, size: 64, offset: 896)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "hs400_downgrade", scope: !1958, file: !108, line: 155, baseType: !2051, size: 64, offset: 960)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "hs400_complete", scope: !1958, file: !108, line: 158, baseType: !2051, size: 64, offset: 1024)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "hs400_enhanced_strobe", scope: !1958, file: !108, line: 161, baseType: !2024, size: 64, offset: 1088)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "select_drive_strength", scope: !1958, file: !108, line: 163, baseType: !2073, size: 64, offset: 1152)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{!92, !101, !7, !92, !92, !93}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "hw_reset", scope: !1958, file: !108, line: 167, baseType: !2051, size: 64, offset: 1216)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "card_event", scope: !1958, file: !108, line: 168, baseType: !2051, size: 64, offset: 1280)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "multi_io_quirk", scope: !1958, file: !108, line: 174, baseType: !2079, size: 64, offset: 1344)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{!92, !101, !7, !92}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "pwrseq", scope: !107, file: !108, line: 280, baseType: !2083, size: 64, offset: 5760)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_pwrseq", file: !108, line: 264, flags: DIFlagFwdDecl)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "f_min", scope: !107, file: !108, line: 281, baseType: !7, size: 32, offset: 5824)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "f_max", scope: !107, file: !108, line: 282, baseType: !7, size: 32, offset: 5856)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "f_init", scope: !107, file: !108, line: 283, baseType: !7, size: 32, offset: 5888)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "ocr_avail", scope: !107, file: !108, line: 284, baseType: !96, size: 32, offset: 5920)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "ocr_avail_sdio", scope: !107, file: !108, line: 285, baseType: !96, size: 32, offset: 5952)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "ocr_avail_sd", scope: !107, file: !108, line: 286, baseType: !96, size: 32, offset: 5984)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "ocr_avail_mmc", scope: !107, file: !108, line: 287, baseType: !96, size: 32, offset: 6016)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "pm_notify", scope: !107, file: !108, line: 289, baseType: !2093, size: 192, offset: 6080)
!2093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !2094, line: 54, size: 192, elements: !2095)
!2094 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!2095 = !{!2096, !2102, !2103}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !2093, file: !2094, line: 55, baseType: !2097, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !2094, line: 51, baseType: !2098)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{!92, !2101, !227, !100}
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2093, file: !2094, line: 56, baseType: !2101, size: 64, offset: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !2093, file: !2094, line: 57, baseType: !92, size: 32, offset: 128)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !107, file: !108, line: 291, baseType: !1771, size: 64, offset: 6272)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "max_current_330", scope: !107, file: !108, line: 292, baseType: !96, size: 32, offset: 6336)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "max_current_300", scope: !107, file: !108, line: 293, baseType: !96, size: 32, offset: 6368)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "max_current_180", scope: !107, file: !108, line: 294, baseType: !96, size: 32, offset: 6400)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "caps", scope: !107, file: !108, line: 314, baseType: !96, size: 32, offset: 6432)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "caps2", scope: !107, file: !108, line: 352, baseType: !96, size: 32, offset: 6464)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_drv_type", scope: !107, file: !108, line: 381, baseType: !92, size: 32, offset: 6496)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "pm_caps", scope: !107, file: !108, line: 383, baseType: !2112, size: 32, offset: 6528)
!2112 = !DIDerivedType(tag: DW_TAG_typedef, name: "mmc_pm_flag_t", file: !2113, line: 22, baseType: !7)
!2113 = !DIFile(filename: "./include/linux/mmc/pm.h", directory: "/home/lizy2001/genbc/linux")
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "max_seg_size", scope: !107, file: !108, line: 386, baseType: !7, size: 32, offset: 6560)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "max_segs", scope: !107, file: !108, line: 387, baseType: !219, size: 16, offset: 6592)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !107, file: !108, line: 388, baseType: !219, size: 16, offset: 6608)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "max_req_size", scope: !107, file: !108, line: 389, baseType: !7, size: 32, offset: 6624)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "max_blk_size", scope: !107, file: !108, line: 390, baseType: !7, size: 32, offset: 6656)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "max_blk_count", scope: !107, file: !108, line: 391, baseType: !7, size: 32, offset: 6688)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "max_busy_timeout", scope: !107, file: !108, line: 392, baseType: !7, size: 32, offset: 6720)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !107, file: !108, line: 395, baseType: !137, offset: 6752)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "ios", scope: !107, file: !108, line: 397, baseType: !2028, size: 160, offset: 6752)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "use_spi_crc", scope: !107, file: !108, line: 400, baseType: !7, size: 1, offset: 6912, flags: DIFlagBitField, extraData: i64 6912)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "claimed", scope: !107, file: !108, line: 401, baseType: !7, size: 1, offset: 6913, flags: DIFlagBitField, extraData: i64 6912)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dead", scope: !107, file: !108, line: 402, baseType: !7, size: 1, offset: 6914, flags: DIFlagBitField, extraData: i64 6912)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "doing_init_tune", scope: !107, file: !108, line: 403, baseType: !7, size: 1, offset: 6915, flags: DIFlagBitField, extraData: i64 6912)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "can_retune", scope: !107, file: !108, line: 404, baseType: !7, size: 1, offset: 6916, flags: DIFlagBitField, extraData: i64 6912)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "doing_retune", scope: !107, file: !108, line: 405, baseType: !7, size: 1, offset: 6917, flags: DIFlagBitField, extraData: i64 6912)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "retune_now", scope: !107, file: !108, line: 406, baseType: !7, size: 1, offset: 6918, flags: DIFlagBitField, extraData: i64 6912)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "retune_paused", scope: !107, file: !108, line: 407, baseType: !7, size: 1, offset: 6919, flags: DIFlagBitField, extraData: i64 6912)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "use_blk_mq", scope: !107, file: !108, line: 408, baseType: !7, size: 1, offset: 6920, flags: DIFlagBitField, extraData: i64 6912)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "retune_crc_disable", scope: !107, file: !108, line: 409, baseType: !7, size: 1, offset: 6921, flags: DIFlagBitField, extraData: i64 6912)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "can_dma_map_merge", scope: !107, file: !108, line: 410, baseType: !7, size: 1, offset: 6922, flags: DIFlagBitField, extraData: i64 6912)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "rescan_disable", scope: !107, file: !108, line: 412, baseType: !92, size: 32, offset: 6944)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "rescan_entered", scope: !107, file: !108, line: 413, baseType: !92, size: 32, offset: 6976)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "need_retune", scope: !107, file: !108, line: 415, baseType: !92, size: 32, offset: 7008)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "hold_retune", scope: !107, file: !108, line: 416, baseType: !92, size: 32, offset: 7040)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "retune_period", scope: !107, file: !108, line: 417, baseType: !7, size: 32, offset: 7072)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "retune_timer", scope: !107, file: !108, line: 418, baseType: !1783, size: 320, offset: 7104)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "trigger_card_event", scope: !107, file: !108, line: 420, baseType: !999, size: 8, offset: 7424)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !107, file: !108, line: 422, baseType: !101, size: 64, offset: 7488)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !107, file: !108, line: 424, baseType: !707, size: 128, offset: 7552)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "claimer", scope: !107, file: !108, line: 425, baseType: !2144, size: 64, offset: 7680)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_ctx", file: !108, line: 271, size: 64, elements: !2146)
!2146 = !{!2147}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2145, file: !108, line: 272, baseType: !422, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "claim_cnt", scope: !107, file: !108, line: 426, baseType: !92, size: 32, offset: 7744)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "default_ctx", scope: !107, file: !108, line: 427, baseType: !2145, size: 64, offset: 7808)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !107, file: !108, line: 429, baseType: !2151, size: 704, offset: 7872)
!2151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !56, line: 115, size: 704, elements: !2152)
!2152 = !{!2153, !2154, !2155, !2158}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2151, file: !56, line: 116, baseType: !1324, size: 256)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2151, file: !56, line: 117, baseType: !1783, size: 320, offset: 256)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2151, file: !56, line: 120, baseType: !2156, size: 64, offset: 576)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !56, line: 18, flags: DIFlagFwdDecl)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2151, file: !56, line: 121, baseType: !92, size: 32, offset: 640)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "detect_change", scope: !107, file: !108, line: 430, baseType: !92, size: 32, offset: 8576)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !107, file: !108, line: 431, baseType: !2161, size: 128, offset: 8640)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_slot", file: !108, line: 243, size: 128, elements: !2162)
!2162 = !{!2163, !2164, !2165}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "cd_irq", scope: !2161, file: !108, line: 244, baseType: !92, size: 32)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "cd_wake_enabled", scope: !2161, file: !108, line: 245, baseType: !999, size: 8, offset: 32)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "handler_priv", scope: !2161, file: !108, line: 246, baseType: !100, size: 64, offset: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "bus_ops", scope: !107, file: !108, line: 433, baseType: !2167, size: 64, offset: 8768)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2169)
!2169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_bus_ops", file: !2170, line: 20, size: 704, elements: !2171)
!2170 = !DIFile(filename: "drivers/mmc/core/core.h", directory: "/home/lizy2001/genbc/linux")
!2171 = !{!2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2169, file: !2170, line: 21, baseType: !2051, size: 64)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !2169, file: !2170, line: 22, baseType: !2051, size: 64, offset: 64)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "pre_suspend", scope: !2169, file: !2170, line: 23, baseType: !2042, size: 64, offset: 128)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2169, file: !2170, line: 24, baseType: !2042, size: 64, offset: 192)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2169, file: !2170, line: 25, baseType: !2042, size: 64, offset: 256)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2169, file: !2170, line: 26, baseType: !2042, size: 64, offset: 320)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2169, file: !2170, line: 27, baseType: !2042, size: 64, offset: 384)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "alive", scope: !2169, file: !2170, line: 28, baseType: !2042, size: 64, offset: 448)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2169, file: !2170, line: 29, baseType: !2042, size: 64, offset: 512)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "hw_reset", scope: !2169, file: !2170, line: 30, baseType: !2042, size: 64, offset: 576)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reset", scope: !2169, file: !2170, line: 31, baseType: !2042, size: 64, offset: 640)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "bus_refs", scope: !107, file: !108, line: 434, baseType: !7, size: 32, offset: 8832)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_irqs", scope: !107, file: !108, line: 436, baseType: !7, size: 32, offset: 8864)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_irq_thread", scope: !107, file: !108, line: 437, baseType: !422, size: 64, offset: 8896)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_irq_work", scope: !107, file: !108, line: 438, baseType: !2151, size: 704, offset: 8960)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_irq_pending", scope: !107, file: !108, line: 439, baseType: !999, size: 8, offset: 9664)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_irq_thread_abort", scope: !107, file: !108, line: 440, baseType: !316, size: 32, offset: 9696)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "pm_flags", scope: !107, file: !108, line: 442, baseType: !2112, size: 32, offset: 9728)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !107, file: !108, line: 444, baseType: !2191, size: 64, offset: 9792)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DICompositeType(tag: DW_TAG_structure_type, name: "led_trigger", file: !108, line: 444, flags: DIFlagFwdDecl)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "supply", scope: !107, file: !108, line: 449, baseType: !2194, size: 128, offset: 9856)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_supply", file: !108, line: 266, size: 128, elements: !2195)
!2195 = !{!2196, !2199}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "vmmc", scope: !2194, file: !108, line: 267, baseType: !2197, size: 64)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DICompositeType(tag: DW_TAG_structure_type, name: "regulator", file: !108, line: 263, flags: DIFlagFwdDecl)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "vqmmc", scope: !2194, file: !108, line: 268, baseType: !2197, size: 64, offset: 64)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_root", scope: !107, file: !108, line: 451, baseType: !2201, size: 64, offset: 9984)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1425, line: 21, flags: DIFlagFwdDecl)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "ongoing_mrq", scope: !107, file: !108, line: 454, baseType: !1964, size: 64, offset: 10048)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "actual_clock", scope: !107, file: !108, line: 460, baseType: !7, size: 32, offset: 10112)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "slotno", scope: !107, file: !108, line: 462, baseType: !7, size: 32, offset: 10144)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "dsr_req", scope: !107, file: !108, line: 464, baseType: !92, size: 32, offset: 10176)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "dsr", scope: !107, file: !108, line: 465, baseType: !96, size: 32, offset: 10208)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_ops", scope: !107, file: !108, line: 468, baseType: !2209, size: 64, offset: 10240)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2211)
!2211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_cqe_ops", file: !108, line: 178, size: 576, elements: !2212)
!2212 = !{!2213, !2217, !2218, !2219, !2220, !2221, !2222, !2227, !2228}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_enable", scope: !2211, file: !108, line: 180, baseType: !2214, size: 64)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = !DISubroutineType(types: !2216)
!2216 = !{!92, !106, !101}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_disable", scope: !2211, file: !108, line: 182, baseType: !2051, size: 64, offset: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_request", scope: !2211, file: !108, line: 187, baseType: !2020, size: 64, offset: 128)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_post_req", scope: !2211, file: !108, line: 189, baseType: !2015, size: 64, offset: 192)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_off", scope: !2211, file: !108, line: 195, baseType: !2051, size: 64, offset: 256)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_wait_for_idle", scope: !2211, file: !108, line: 200, baseType: !2042, size: 64, offset: 320)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_timeout", scope: !2211, file: !108, line: 206, baseType: !2223, size: 64, offset: 384)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = !DISubroutineType(types: !2225)
!2225 = !{!999, !106, !1964, !2226}
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_recovery_start", scope: !2211, file: !108, line: 212, baseType: !2051, size: 64, offset: 448)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_recovery_finish", scope: !2211, file: !108, line: 219, baseType: !2051, size: 64, offset: 512)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_private", scope: !107, file: !108, line: 469, baseType: !100, size: 64, offset: 10304)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_qdepth", scope: !107, file: !108, line: 470, baseType: !92, size: 32, offset: 10368)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_enabled", scope: !107, file: !108, line: 471, baseType: !999, size: 8, offset: 10400)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_on", scope: !107, file: !108, line: 472, baseType: !999, size: 8, offset: 10408)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "hsq_enabled", scope: !107, file: !108, line: 475, baseType: !999, size: 8, offset: 10416)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !107, file: !108, line: 477, baseType: !1336, align: 512, offset: 10752)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !102, file: !103, line: 246, baseType: !112, size: 5568, offset: 64)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "ocr", scope: !102, file: !103, line: 247, baseType: !96, size: 32, offset: 5632)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "rca", scope: !102, file: !103, line: 248, baseType: !7, size: 32, offset: 5664)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !102, file: !103, line: 249, baseType: !7, size: 32, offset: 5696)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !102, file: !103, line: 254, baseType: !7, size: 32, offset: 5728)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !102, file: !103, line: 255, baseType: !7, size: 32, offset: 5760)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_max_rate", scope: !102, file: !103, line: 256, baseType: !7, size: 32, offset: 5792)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "reenable_cmdq", scope: !102, file: !103, line: 274, baseType: !999, size: 8, offset: 5824)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "erase_size", scope: !102, file: !103, line: 276, baseType: !7, size: 32, offset: 5856)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "erase_shift", scope: !102, file: !103, line: 277, baseType: !7, size: 32, offset: 5888)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "pref_erase", scope: !102, file: !103, line: 278, baseType: !7, size: 32, offset: 5920)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "eg_boundary", scope: !102, file: !103, line: 279, baseType: !7, size: 32, offset: 5952)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "erase_arg", scope: !102, file: !103, line: 280, baseType: !7, size: 32, offset: 5984)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "erased_byte", scope: !102, file: !103, line: 281, baseType: !567, size: 8, offset: 6016)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "raw_cid", scope: !102, file: !103, line: 283, baseType: !1975, size: 128, offset: 6048)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "raw_csd", scope: !102, file: !103, line: 284, baseType: !1975, size: 128, offset: 6176)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "raw_scr", scope: !102, file: !103, line: 285, baseType: !2252, size: 64, offset: 6304)
!2252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 64, elements: !971)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "raw_ssr", scope: !102, file: !103, line: 286, baseType: !2254, size: 512, offset: 6368)
!2254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 512, elements: !791)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !102, file: !103, line: 287, baseType: !2256, size: 224, offset: 6880)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_cid", file: !103, line: 13, size: 224, elements: !2257)
!2257 = !{!2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "manfid", scope: !2256, file: !103, line: 14, baseType: !7, size: 32)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "prod_name", scope: !2256, file: !103, line: 15, baseType: !936, size: 64, offset: 32)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !2256, file: !103, line: 16, baseType: !569, size: 8, offset: 96)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !2256, file: !103, line: 17, baseType: !7, size: 32, offset: 128)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "oemid", scope: !2256, file: !103, line: 18, baseType: !219, size: 16, offset: 160)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "year", scope: !2256, file: !103, line: 19, baseType: !219, size: 16, offset: 176)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "hwrev", scope: !2256, file: !103, line: 20, baseType: !569, size: 8, offset: 192)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "fwrev", scope: !2256, file: !103, line: 21, baseType: !569, size: 8, offset: 200)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "month", scope: !2256, file: !103, line: 22, baseType: !569, size: 8, offset: 208)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "csd", scope: !102, file: !103, line: 288, baseType: !2268, size: 352, offset: 7104)
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_csd", file: !103, line: 25, size: 352, elements: !2269)
!2269 = !{!2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !2268, file: !103, line: 26, baseType: !569, size: 8)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "mmca_vsn", scope: !2268, file: !103, line: 27, baseType: !569, size: 8, offset: 8)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "cmdclass", scope: !2268, file: !103, line: 28, baseType: !219, size: 16, offset: 16)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "taac_clks", scope: !2268, file: !103, line: 29, baseType: !219, size: 16, offset: 32)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "taac_ns", scope: !2268, file: !103, line: 30, baseType: !7, size: 32, offset: 64)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "c_size", scope: !2268, file: !103, line: 31, baseType: !7, size: 32, offset: 96)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "r2w_factor", scope: !2268, file: !103, line: 32, baseType: !7, size: 32, offset: 128)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "max_dtr", scope: !2268, file: !103, line: 33, baseType: !7, size: 32, offset: 160)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "erase_size", scope: !2268, file: !103, line: 34, baseType: !7, size: 32, offset: 192)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "read_blkbits", scope: !2268, file: !103, line: 35, baseType: !7, size: 32, offset: 224)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "write_blkbits", scope: !2268, file: !103, line: 36, baseType: !7, size: 32, offset: 256)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !2268, file: !103, line: 37, baseType: !7, size: 32, offset: 288)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "read_partial", scope: !2268, file: !103, line: 38, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "read_misalign", scope: !2268, file: !103, line: 39, baseType: !7, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "write_partial", scope: !2268, file: !103, line: 40, baseType: !7, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "write_misalign", scope: !2268, file: !103, line: 41, baseType: !7, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "dsr_imp", scope: !2268, file: !103, line: 42, baseType: !7, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "ext_csd", scope: !102, file: !103, line: 289, baseType: !2288, size: 1344, offset: 7488)
!2288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_ext_csd", file: !103, line: 45, size: 1344, elements: !2289)
!2289 = !{!2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2364, !2365, !2366, !2367}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2288, file: !103, line: 46, baseType: !567, size: 8)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "erase_group_def", scope: !2288, file: !103, line: 47, baseType: !567, size: 8, offset: 8)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "sec_feature_support", scope: !2288, file: !103, line: 48, baseType: !567, size: 8, offset: 16)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "rel_sectors", scope: !2288, file: !103, line: 49, baseType: !567, size: 8, offset: 24)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "rel_param", scope: !2288, file: !103, line: 50, baseType: !567, size: 8, offset: 32)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "enhanced_rpmb_supported", scope: !2288, file: !103, line: 51, baseType: !999, size: 8, offset: 40)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "part_config", scope: !2288, file: !103, line: 52, baseType: !567, size: 8, offset: 48)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "cache_ctrl", scope: !2288, file: !103, line: 53, baseType: !567, size: 8, offset: 56)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "rst_n_function", scope: !2288, file: !103, line: 54, baseType: !567, size: 8, offset: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "max_packed_writes", scope: !2288, file: !103, line: 55, baseType: !567, size: 8, offset: 72)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "max_packed_reads", scope: !2288, file: !103, line: 56, baseType: !567, size: 8, offset: 80)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "packed_event_en", scope: !2288, file: !103, line: 57, baseType: !567, size: 8, offset: 88)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "part_time", scope: !2288, file: !103, line: 58, baseType: !7, size: 32, offset: 96)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "sa_timeout", scope: !2288, file: !103, line: 59, baseType: !7, size: 32, offset: 128)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "generic_cmd6_time", scope: !2288, file: !103, line: 60, baseType: !7, size: 32, offset: 160)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "power_off_longtime", scope: !2288, file: !103, line: 61, baseType: !7, size: 32, offset: 192)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "power_off_notification", scope: !2288, file: !103, line: 62, baseType: !567, size: 8, offset: 224)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "hs_max_dtr", scope: !2288, file: !103, line: 63, baseType: !7, size: 32, offset: 256)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "hs200_max_dtr", scope: !2288, file: !103, line: 64, baseType: !7, size: 32, offset: 288)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "sectors", scope: !2288, file: !103, line: 69, baseType: !7, size: 32, offset: 320)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "hc_erase_size", scope: !2288, file: !103, line: 70, baseType: !7, size: 32, offset: 352)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "hc_erase_timeout", scope: !2288, file: !103, line: 71, baseType: !7, size: 32, offset: 384)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "sec_trim_mult", scope: !2288, file: !103, line: 72, baseType: !7, size: 32, offset: 416)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "sec_erase_mult", scope: !2288, file: !103, line: 73, baseType: !7, size: 32, offset: 448)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "trim_timeout", scope: !2288, file: !103, line: 74, baseType: !7, size: 32, offset: 480)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "partition_setting_completed", scope: !2288, file: !103, line: 75, baseType: !999, size: 8, offset: 512)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "enhanced_area_offset", scope: !2288, file: !103, line: 76, baseType: !298, size: 64, offset: 576)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "enhanced_area_size", scope: !2288, file: !103, line: 77, baseType: !7, size: 32, offset: 640)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "cache_size", scope: !2288, file: !103, line: 78, baseType: !7, size: 32, offset: 672)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "hpi_en", scope: !2288, file: !103, line: 79, baseType: !999, size: 8, offset: 704)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "hpi", scope: !2288, file: !103, line: 80, baseType: !999, size: 8, offset: 712)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "hpi_cmd", scope: !2288, file: !103, line: 81, baseType: !7, size: 32, offset: 736)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "bkops", scope: !2288, file: !103, line: 82, baseType: !999, size: 8, offset: 768)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "man_bkops_en", scope: !2288, file: !103, line: 83, baseType: !999, size: 8, offset: 776)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "auto_bkops_en", scope: !2288, file: !103, line: 84, baseType: !999, size: 8, offset: 784)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "data_sector_size", scope: !2288, file: !103, line: 85, baseType: !7, size: 32, offset: 800)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "data_tag_unit_size", scope: !2288, file: !103, line: 86, baseType: !7, size: 32, offset: 832)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "boot_ro_lock", scope: !2288, file: !103, line: 87, baseType: !7, size: 32, offset: 864)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "boot_ro_lockable", scope: !2288, file: !103, line: 88, baseType: !999, size: 8, offset: 896)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "ffu_capable", scope: !2288, file: !103, line: 89, baseType: !999, size: 8, offset: 904)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "cmdq_en", scope: !2288, file: !103, line: 90, baseType: !999, size: 8, offset: 912)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "cmdq_support", scope: !2288, file: !103, line: 91, baseType: !999, size: 8, offset: 920)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "cmdq_depth", scope: !2288, file: !103, line: 92, baseType: !7, size: 32, offset: 928)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "fwrev", scope: !2288, file: !103, line: 94, baseType: !2334, size: 64, offset: 960)
!2334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !567, size: 64, elements: !536)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "raw_exception_status", scope: !2288, file: !103, line: 95, baseType: !567, size: 8, offset: 1024)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "raw_partition_support", scope: !2288, file: !103, line: 96, baseType: !567, size: 8, offset: 1032)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "raw_rpmb_size_mult", scope: !2288, file: !103, line: 97, baseType: !567, size: 8, offset: 1040)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "raw_erased_mem_count", scope: !2288, file: !103, line: 98, baseType: !567, size: 8, offset: 1048)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "strobe_support", scope: !2288, file: !103, line: 99, baseType: !567, size: 8, offset: 1056)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "raw_ext_csd_structure", scope: !2288, file: !103, line: 100, baseType: !567, size: 8, offset: 1064)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "raw_card_type", scope: !2288, file: !103, line: 101, baseType: !567, size: 8, offset: 1072)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "raw_driver_strength", scope: !2288, file: !103, line: 102, baseType: !567, size: 8, offset: 1080)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "out_of_int_time", scope: !2288, file: !103, line: 103, baseType: !567, size: 8, offset: 1088)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "raw_pwr_cl_52_195", scope: !2288, file: !103, line: 104, baseType: !567, size: 8, offset: 1096)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "raw_pwr_cl_26_195", scope: !2288, file: !103, line: 105, baseType: !567, size: 8, offset: 1104)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "raw_pwr_cl_52_360", scope: !2288, file: !103, line: 106, baseType: !567, size: 8, offset: 1112)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "raw_pwr_cl_26_360", scope: !2288, file: !103, line: 107, baseType: !567, size: 8, offset: 1120)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "raw_s_a_timeout", scope: !2288, file: !103, line: 108, baseType: !567, size: 8, offset: 1128)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "raw_hc_erase_gap_size", scope: !2288, file: !103, line: 109, baseType: !567, size: 8, offset: 1136)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "raw_erase_timeout_mult", scope: !2288, file: !103, line: 110, baseType: !567, size: 8, offset: 1144)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "raw_hc_erase_grp_size", scope: !2288, file: !103, line: 111, baseType: !567, size: 8, offset: 1152)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "raw_sec_trim_mult", scope: !2288, file: !103, line: 112, baseType: !567, size: 8, offset: 1160)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "raw_sec_erase_mult", scope: !2288, file: !103, line: 113, baseType: !567, size: 8, offset: 1168)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "raw_sec_feature_support", scope: !2288, file: !103, line: 114, baseType: !567, size: 8, offset: 1176)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "raw_trim_mult", scope: !2288, file: !103, line: 115, baseType: !567, size: 8, offset: 1184)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "raw_pwr_cl_200_195", scope: !2288, file: !103, line: 116, baseType: !567, size: 8, offset: 1192)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "raw_pwr_cl_200_360", scope: !2288, file: !103, line: 117, baseType: !567, size: 8, offset: 1200)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "raw_pwr_cl_ddr_52_195", scope: !2288, file: !103, line: 118, baseType: !567, size: 8, offset: 1208)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "raw_pwr_cl_ddr_52_360", scope: !2288, file: !103, line: 119, baseType: !567, size: 8, offset: 1216)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "raw_pwr_cl_ddr_200_360", scope: !2288, file: !103, line: 120, baseType: !567, size: 8, offset: 1224)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "raw_bkops_status", scope: !2288, file: !103, line: 121, baseType: !567, size: 8, offset: 1232)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "raw_sectors", scope: !2288, file: !103, line: 122, baseType: !2363, size: 32, offset: 1240)
!2363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !567, size: 32, elements: !375)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "pre_eol_info", scope: !2288, file: !103, line: 123, baseType: !567, size: 8, offset: 1272)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "device_life_time_est_typ_a", scope: !2288, file: !103, line: 124, baseType: !567, size: 8, offset: 1280)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "device_life_time_est_typ_b", scope: !2288, file: !103, line: 125, baseType: !567, size: 8, offset: 1288)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "feature_support", scope: !2288, file: !103, line: 127, baseType: !7, size: 32, offset: 1312)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "scr", scope: !102, file: !103, line: 290, baseType: !2369, size: 48, offset: 8832)
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sd_scr", file: !103, line: 131, size: 48, elements: !2370)
!2370 = !{!2371, !2372, !2373, !2374, !2375, !2376}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "sda_vsn", scope: !2369, file: !103, line: 132, baseType: !569, size: 8)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "sda_spec3", scope: !2369, file: !103, line: 133, baseType: !569, size: 8, offset: 8)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "sda_spec4", scope: !2369, file: !103, line: 134, baseType: !569, size: 8, offset: 16)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "sda_specx", scope: !2369, file: !103, line: 135, baseType: !569, size: 8, offset: 24)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "bus_widths", scope: !2369, file: !103, line: 136, baseType: !569, size: 8, offset: 32)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "cmds", scope: !2369, file: !103, line: 139, baseType: !569, size: 8, offset: 40)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "ssr", scope: !102, file: !103, line: 291, baseType: !2378, size: 96, offset: 8896)
!2378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sd_ssr", file: !103, line: 144, size: 96, elements: !2379)
!2379 = !{!2380, !2381, !2382}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "au", scope: !2378, file: !103, line: 145, baseType: !7, size: 32)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "erase_timeout", scope: !2378, file: !103, line: 146, baseType: !7, size: 32, offset: 32)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "erase_offset", scope: !2378, file: !103, line: 147, baseType: !7, size: 32, offset: 64)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "sw_caps", scope: !102, file: !103, line: 292, baseType: !2384, size: 160, offset: 8992)
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sd_switch_caps", file: !103, line: 150, size: 160, elements: !2385)
!2385 = !{!2386, !2387, !2388, !2389, !2390}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "hs_max_dtr", scope: !2384, file: !103, line: 151, baseType: !7, size: 32)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "uhs_max_dtr", scope: !2384, file: !103, line: 152, baseType: !7, size: 32, offset: 32)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "sd3_bus_mode", scope: !2384, file: !103, line: 160, baseType: !7, size: 32, offset: 64)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "sd3_drv_type", scope: !2384, file: !103, line: 174, baseType: !7, size: 32, offset: 96)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "sd3_curr_limit", scope: !2384, file: !103, line: 179, baseType: !7, size: 32, offset: 128)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_funcs", scope: !102, file: !103, line: 294, baseType: !7, size: 32, offset: 9152)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_funcs_probed", scope: !102, file: !103, line: 295, baseType: !316, size: 32, offset: 9184)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "cccr", scope: !102, file: !103, line: 296, baseType: !2394, size: 96, offset: 9216)
!2394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdio_cccr", file: !103, line: 192, size: 96, elements: !2395)
!2395 = !{!2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_vsn", scope: !2394, file: !103, line: 193, baseType: !7, size: 32)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "sd_vsn", scope: !2394, file: !103, line: 194, baseType: !7, size: 32, offset: 32)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "multi_block", scope: !2394, file: !103, line: 195, baseType: !7, size: 1, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "low_speed", scope: !2394, file: !103, line: 196, baseType: !7, size: 1, offset: 65, flags: DIFlagBitField, extraData: i64 64)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "wide_bus", scope: !2394, file: !103, line: 197, baseType: !7, size: 1, offset: 66, flags: DIFlagBitField, extraData: i64 64)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "high_power", scope: !2394, file: !103, line: 198, baseType: !7, size: 1, offset: 67, flags: DIFlagBitField, extraData: i64 64)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "high_speed", scope: !2394, file: !103, line: 199, baseType: !7, size: 1, offset: 68, flags: DIFlagBitField, extraData: i64 64)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "disable_cd", scope: !2394, file: !103, line: 200, baseType: !7, size: 1, offset: 69, flags: DIFlagBitField, extraData: i64 64)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "cis", scope: !102, file: !103, line: 297, baseType: !2405, size: 96, offset: 9312)
!2405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdio_cis", file: !103, line: 203, size: 96, elements: !2406)
!2406 = !{!2407, !2408, !2409, !2410}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !2405, file: !103, line: 204, baseType: !219, size: 16)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !2405, file: !103, line: 205, baseType: !219, size: 16, offset: 16)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !2405, file: !103, line: 206, baseType: !219, size: 16, offset: 32)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "max_dtr", scope: !2405, file: !103, line: 207, baseType: !7, size: 32, offset: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_func", scope: !102, file: !103, line: 298, baseType: !2412, size: 448, offset: 9408)
!2412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2413, size: 448, elements: !2448)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdio_func", file: !2415, line: 34, size: 6208, elements: !2416)
!2415 = !DIFile(filename: "./include/linux/mmc/sdio_func.h", directory: "/home/lizy2001/genbc/linux")
!2416 = !{!2417, !2418, !2419, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2434, !2435, !2436, !2437, !2439}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !2414, file: !2415, line: 35, baseType: !101, size: 64)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2414, file: !2415, line: 36, baseType: !112, size: 5568, offset: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "irq_handler", scope: !2414, file: !2415, line: 37, baseType: !2420, size: 64, offset: 5632)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DIDerivedType(tag: DW_TAG_typedef, name: "sdio_irq_handler_t", file: !2415, line: 19, baseType: !2422)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{null, !2413}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2414, file: !2415, line: 38, baseType: !7, size: 32, offset: 5696)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2414, file: !2415, line: 40, baseType: !569, size: 8, offset: 5728)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !2414, file: !2415, line: 41, baseType: !219, size: 16, offset: 5744)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !2414, file: !2415, line: 42, baseType: !219, size: 16, offset: 5760)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "max_blksize", scope: !2414, file: !2415, line: 44, baseType: !7, size: 32, offset: 5792)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "cur_blksize", scope: !2414, file: !2415, line: 45, baseType: !7, size: 32, offset: 5824)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "enable_timeout", scope: !2414, file: !2415, line: 47, baseType: !7, size: 32, offset: 5856)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2414, file: !2415, line: 49, baseType: !7, size: 32, offset: 5888)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "tmpbuf", scope: !2414, file: !2415, line: 52, baseType: !2433, size: 64, offset: 5952)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "major_rev", scope: !2414, file: !2415, line: 54, baseType: !567, size: 8, offset: 6016)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "minor_rev", scope: !2414, file: !2415, line: 55, baseType: !567, size: 8, offset: 6024)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "num_info", scope: !2414, file: !2415, line: 56, baseType: !7, size: 32, offset: 6048)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2414, file: !2415, line: 57, baseType: !2438, size: 64, offset: 6080)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "tuples", scope: !2414, file: !2415, line: 59, baseType: !2440, size: 64, offset: 6144)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdio_func_tuple", file: !2415, line: 24, size: 128, elements: !2442)
!2442 = !{!2443, !2444, !2445, !2446}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2441, file: !2415, line: 25, baseType: !2440, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2441, file: !2415, line: 26, baseType: !569, size: 8, offset: 64)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2441, file: !2415, line: 27, baseType: !569, size: 8, offset: 72)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2441, file: !2415, line: 28, baseType: !2447, offset: 80)
!2447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !569, elements: !1337)
!2448 = !{!2449}
!2449 = !DISubrange(count: 7)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_single_irq", scope: !102, file: !103, line: 299, baseType: !2413, size: 64, offset: 9856)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "major_rev", scope: !102, file: !103, line: 300, baseType: !567, size: 8, offset: 9920)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "minor_rev", scope: !102, file: !103, line: 301, baseType: !567, size: 8, offset: 9928)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "num_info", scope: !102, file: !103, line: 302, baseType: !7, size: 32, offset: 9952)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !102, file: !103, line: 303, baseType: !2438, size: 64, offset: 9984)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "tuples", scope: !102, file: !103, line: 304, baseType: !2440, size: 64, offset: 10048)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "sd_bus_speed", scope: !102, file: !103, line: 306, baseType: !7, size: 32, offset: 10112)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_avail_type", scope: !102, file: !103, line: 307, baseType: !7, size: 32, offset: 10144)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "drive_strength", scope: !102, file: !103, line: 308, baseType: !7, size: 32, offset: 10176)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_root", scope: !102, file: !103, line: 310, baseType: !2201, size: 64, offset: 10240)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !102, file: !103, line: 311, baseType: !2461, size: 2240, offset: 10304)
!2461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2462, size: 2240, elements: !2448)
!2462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_part", file: !103, line: 229, size: 320, elements: !2463)
!2463 = !{!2464, !2465, !2466, !2468, !2469}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2462, file: !103, line: 230, baseType: !296, size: 64)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "part_cfg", scope: !2462, file: !103, line: 231, baseType: !7, size: 32, offset: 64)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2462, file: !103, line: 232, baseType: !2467, size: 160, offset: 96)
!2467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 160, elements: !1190)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "force_ro", scope: !2462, file: !103, line: 233, baseType: !999, size: 8, offset: 256)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "area_type", scope: !2462, file: !103, line: 234, baseType: !7, size: 32, offset: 288)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "nr_parts", scope: !102, file: !103, line: 312, baseType: !7, size: 32, offset: 12544)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "bouncesz", scope: !102, file: !103, line: 314, baseType: !7, size: 32, offset: 12576)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "complete_wq", scope: !102, file: !103, line: 315, baseType: !2156, size: 64, offset: 12608)
!2473 = !{!0, !2474, !2476, !2479, !2481, !2486, !2500, !2502, !2504, !2506, !2508, !2510, !2512, !2514, !2516}
!2474 = !DIGlobalVariableExpression(var: !2475, expr: !DIExpression())
!2475 = distinct !DIGlobalVariable(name: "sdio_type", scope: !2, file: !3, line: 68, type: !1594, isLocal: true, isDefinition: true)
!2476 = !DIGlobalVariableExpression(var: !2477, expr: !DIExpression())
!2477 = distinct !DIGlobalVariable(name: "sdio_std_groups", scope: !2, file: !3, line: 66, type: !2478, isLocal: true, isDefinition: true)
!2478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 128, elements: !971)
!2479 = !DIGlobalVariableExpression(var: !2480, expr: !DIExpression())
!2480 = distinct !DIGlobalVariable(name: "sdio_std_group", scope: !2, file: !3, line: 66, type: !233, isLocal: true, isDefinition: true)
!2481 = !DIGlobalVariableExpression(var: !2482, expr: !DIExpression())
!2482 = distinct !DIGlobalVariable(name: "sdio_std_attrs", scope: !2, file: !3, line: 54, type: !2483, isLocal: true, isDefinition: true)
!2483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, size: 640, elements: !2484)
!2484 = !{!2485}
!2485 = !DISubrange(count: 10)
!2486 = !DIGlobalVariableExpression(var: !2487, expr: !DIExpression())
!2487 = distinct !DIGlobalVariable(name: "dev_attr_vendor", scope: !2, file: !3, line: 30, type: !2488, isLocal: true, isDefinition: true)
!2488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !30, line: 99, size: 256, elements: !2489)
!2489 = !{!2490, !2491, !2496}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2488, file: !30, line: 100, baseType: !214, size: 128)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2488, file: !30, line: 101, baseType: !2492, size: 64, offset: 128)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{!209, !111, !2495, !178}
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2488, file: !30, line: 103, baseType: !2497, size: 64, offset: 192)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{!209, !111, !2495, !119, !224}
!2500 = !DIGlobalVariableExpression(var: !2501, expr: !DIExpression())
!2501 = distinct !DIGlobalVariable(name: "dev_attr_device", scope: !2, file: !3, line: 31, type: !2488, isLocal: true, isDefinition: true)
!2502 = !DIGlobalVariableExpression(var: !2503, expr: !DIExpression())
!2503 = distinct !DIGlobalVariable(name: "dev_attr_revision", scope: !2, file: !3, line: 32, type: !2488, isLocal: true, isDefinition: true)
!2504 = !DIGlobalVariableExpression(var: !2505, expr: !DIExpression())
!2505 = distinct !DIGlobalVariable(name: "dev_attr_info1", scope: !2, file: !3, line: 49, type: !2488, isLocal: true, isDefinition: true)
!2506 = !DIGlobalVariableExpression(var: !2507, expr: !DIExpression())
!2507 = distinct !DIGlobalVariable(name: "dev_attr_info2", scope: !2, file: !3, line: 50, type: !2488, isLocal: true, isDefinition: true)
!2508 = !DIGlobalVariableExpression(var: !2509, expr: !DIExpression())
!2509 = distinct !DIGlobalVariable(name: "dev_attr_info3", scope: !2, file: !3, line: 51, type: !2488, isLocal: true, isDefinition: true)
!2510 = !DIGlobalVariableExpression(var: !2511, expr: !DIExpression())
!2511 = distinct !DIGlobalVariable(name: "dev_attr_info4", scope: !2, file: !3, line: 52, type: !2488, isLocal: true, isDefinition: true)
!2512 = !DIGlobalVariableExpression(var: !2513, expr: !DIExpression())
!2513 = distinct !DIGlobalVariable(name: "dev_attr_ocr", scope: !2, file: !3, line: 33, type: !2488, isLocal: true, isDefinition: true)
!2514 = !DIGlobalVariableExpression(var: !2515, expr: !DIExpression())
!2515 = distinct !DIGlobalVariable(name: "dev_attr_rca", scope: !2, file: !3, line: 34, type: !2488, isLocal: true, isDefinition: true)
!2516 = !DIGlobalVariableExpression(var: !2517, expr: !DIExpression())
!2517 = distinct !DIGlobalVariable(name: "sdio_fixup_methods", scope: !2, file: !2518, line: 123, type: !2519, isLocal: true, isDefinition: true)
!2518 = !DIFile(filename: "drivers/mmc/core/quirks.h", directory: "/home/lizy2001/genbc/linux")
!2519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2520, size: 3584, elements: !536)
!2520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2521)
!2521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_fixup", file: !2522, line: 46, size: 448, elements: !2523)
!2522 = !DIFile(filename: "drivers/mmc/core/card.h", directory: "/home/lizy2001/genbc/linux")
!2523 = !{!2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2536}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2521, file: !2522, line: 48, baseType: !119, size: 64)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "rev_start", scope: !2521, file: !2522, line: 51, baseType: !296, size: 64, offset: 64)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "rev_end", scope: !2521, file: !2522, line: 51, baseType: !296, size: 64, offset: 128)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "manfid", scope: !2521, file: !2522, line: 53, baseType: !7, size: 32, offset: 192)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "oemid", scope: !2521, file: !2522, line: 54, baseType: !219, size: 16, offset: 224)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "cis_vendor", scope: !2521, file: !2522, line: 57, baseType: !406, size: 16, offset: 240)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "cis_device", scope: !2521, file: !2522, line: 57, baseType: !406, size: 16, offset: 256)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "ext_csd_rev", scope: !2521, file: !2522, line: 60, baseType: !7, size: 32, offset: 288)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_fixup", scope: !2521, file: !2522, line: 62, baseType: !2533, size: 64, offset: 320)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{null, !101, !92}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2521, file: !2522, line: 63, baseType: !92, size: 32, offset: 384)
!2537 = !{i32 7, !"Dwarf Version", i32 4}
!2538 = !{i32 2, !"Debug Info Version", i32 3}
!2539 = !{i32 1, !"wchar_size", i32 2}
!2540 = !{i32 1, !"Code Model", i32 2}
!2541 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2542 = distinct !DISubprogram(name: "mmc_attach_sdio", scope: !3, file: !3, line: 1168, type: !2043, scopeLine: 1169, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !151)
!2543 = !DILocalVariable(name: "host", arg: 1, scope: !2542, file: !3, line: 1168, type: !106)
!2544 = !DILocation(line: 1168, column: 38, scope: !2542)
!2545 = !DILocalVariable(name: "err", scope: !2542, file: !3, line: 1170, type: !92)
!2546 = !DILocation(line: 1170, column: 6, scope: !2542)
!2547 = !DILocalVariable(name: "i", scope: !2542, file: !3, line: 1170, type: !92)
!2548 = !DILocation(line: 1170, column: 11, scope: !2542)
!2549 = !DILocalVariable(name: "funcs", scope: !2542, file: !3, line: 1170, type: !92)
!2550 = !DILocation(line: 1170, column: 14, scope: !2542)
!2551 = !DILocalVariable(name: "ocr", scope: !2542, file: !3, line: 1171, type: !96)
!2552 = !DILocation(line: 1171, column: 6, scope: !2542)
!2553 = !DILocalVariable(name: "rocr", scope: !2542, file: !3, line: 1171, type: !96)
!2554 = !DILocation(line: 1171, column: 11, scope: !2542)
!2555 = !DILocalVariable(name: "card", scope: !2542, file: !3, line: 1172, type: !101)
!2556 = !DILocation(line: 1172, column: 19, scope: !2542)
!2557 = !DILocalVariable(name: "__ret_warn_on", scope: !2558, file: !3, line: 1174, type: !92)
!2558 = distinct !DILexicalBlock(scope: !2542, file: !3, line: 1174, column: 2)
!2559 = !DILocation(line: 1174, column: 2, scope: !2558)
!2560 = !DILocation(line: 1174, column: 2, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2558, file: !3, line: 1174, column: 2)
!2562 = !DILocation(line: 1174, column: 2, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2561, file: !3, line: 1174, column: 2)
!2564 = !DILocation(line: 1174, column: 2, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2563, file: !3, line: 1174, column: 2)
!2566 = !DILocation(line: 1174, column: 2, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2563, file: !3, line: 1174, column: 2)
!2568 = !{i32 -2143556719, i32 -2143556690, i32 -2143556644, i32 -2143556586, i32 -2143556532, i32 -2143556478, i32 -2143556423, i32 -2143556392}
!2569 = !DILocation(line: 1174, column: 2, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2563, file: !3, line: 1174, column: 2)
!2571 = !{i32 -2143555986, i32 -2143555979, i32 -2143555927, i32 -2143555896, i32 -2143555866}
!2572 = !DILocation(line: 1174, column: 2, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2563, file: !3, line: 1174, column: 2)
!2574 = !DILocation(line: 1176, column: 28, scope: !2542)
!2575 = !DILocation(line: 1176, column: 8, scope: !2542)
!2576 = !DILocation(line: 1176, column: 6, scope: !2542)
!2577 = !DILocation(line: 1177, column: 6, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2542, file: !3, line: 1177, column: 6)
!2579 = !DILocation(line: 1177, column: 6, scope: !2542)
!2580 = !DILocation(line: 1178, column: 10, scope: !2578)
!2581 = !DILocation(line: 1178, column: 3, scope: !2578)
!2582 = !DILocation(line: 1180, column: 17, scope: !2542)
!2583 = !DILocation(line: 1180, column: 2, scope: !2542)
!2584 = !DILocation(line: 1181, column: 6, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2542, file: !3, line: 1181, column: 6)
!2586 = !DILocation(line: 1181, column: 12, scope: !2585)
!2587 = !DILocation(line: 1181, column: 6, scope: !2542)
!2588 = !DILocation(line: 1182, column: 21, scope: !2585)
!2589 = !DILocation(line: 1182, column: 27, scope: !2585)
!2590 = !DILocation(line: 1182, column: 3, scope: !2585)
!2591 = !DILocation(line: 1182, column: 9, scope: !2585)
!2592 = !DILocation(line: 1182, column: 19, scope: !2585)
!2593 = !DILocation(line: 1185, column: 28, scope: !2542)
!2594 = !DILocation(line: 1185, column: 34, scope: !2542)
!2595 = !DILocation(line: 1185, column: 9, scope: !2542)
!2596 = !DILocation(line: 1185, column: 7, scope: !2542)
!2597 = !DILocation(line: 1190, column: 7, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2542, file: !3, line: 1190, column: 6)
!2599 = !DILocation(line: 1190, column: 6, scope: !2542)
!2600 = !DILocation(line: 1191, column: 7, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2598, file: !3, line: 1190, column: 13)
!2602 = !DILocation(line: 1192, column: 3, scope: !2601)
!2603 = !DILocation(line: 1198, column: 27, scope: !2542)
!2604 = !DILocation(line: 1198, column: 33, scope: !2542)
!2605 = !DILocation(line: 1198, column: 8, scope: !2542)
!2606 = !DILocation(line: 1198, column: 6, scope: !2542)
!2607 = !DILocation(line: 1199, column: 6, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2542, file: !3, line: 1199, column: 6)
!2609 = !DILocation(line: 1199, column: 6, scope: !2542)
!2610 = !DILocation(line: 1200, column: 3, scope: !2608)
!2611 = !DILocation(line: 1202, column: 9, scope: !2542)
!2612 = !DILocation(line: 1202, column: 15, scope: !2542)
!2613 = !DILocation(line: 1202, column: 7, scope: !2542)
!2614 = !DILocation(line: 1207, column: 6, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2542, file: !3, line: 1207, column: 6)
!2616 = !DILocation(line: 1207, column: 12, scope: !2615)
!2617 = !DILocation(line: 1207, column: 17, scope: !2615)
!2618 = !DILocation(line: 1207, column: 6, scope: !2542)
!2619 = !DILocation(line: 1212, column: 28, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2615, file: !3, line: 1207, column: 43)
!2621 = !DILocation(line: 1212, column: 34, scope: !2620)
!2622 = !DILocation(line: 1212, column: 3, scope: !2620)
!2623 = !DILocation(line: 1217, column: 32, scope: !2620)
!2624 = !DILocation(line: 1217, column: 38, scope: !2620)
!2625 = !DILocation(line: 1217, column: 9, scope: !2620)
!2626 = !DILocation(line: 1217, column: 7, scope: !2620)
!2627 = !DILocation(line: 1218, column: 7, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2620, file: !3, line: 1218, column: 7)
!2629 = !DILocation(line: 1218, column: 7, scope: !2620)
!2630 = !DILocation(line: 1219, column: 4, scope: !2628)
!2631 = !DILocation(line: 1224, column: 22, scope: !2620)
!2632 = !DILocation(line: 1224, column: 28, scope: !2620)
!2633 = !DILocation(line: 1224, column: 3, scope: !2620)
!2634 = !DILocation(line: 1225, column: 2, scope: !2620)
!2635 = !DILocation(line: 1231, column: 11, scope: !2542)
!2636 = !DILocation(line: 1231, column: 15, scope: !2542)
!2637 = !DILocation(line: 1231, column: 29, scope: !2542)
!2638 = !DILocation(line: 1231, column: 8, scope: !2542)
!2639 = !DILocation(line: 1232, column: 2, scope: !2542)
!2640 = !DILocation(line: 1232, column: 8, scope: !2542)
!2641 = !DILocation(line: 1232, column: 19, scope: !2542)
!2642 = !DILocation(line: 1237, column: 9, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2542, file: !3, line: 1237, column: 2)
!2644 = !DILocation(line: 1237, column: 7, scope: !2643)
!2645 = !DILocation(line: 1237, column: 14, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2643, file: !3, line: 1237, column: 2)
!2647 = !DILocation(line: 1237, column: 18, scope: !2646)
!2648 = !DILocation(line: 1237, column: 16, scope: !2646)
!2649 = !DILocation(line: 1237, column: 2, scope: !2643)
!2650 = !DILocation(line: 1238, column: 24, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2646, file: !3, line: 1237, column: 50)
!2652 = !DILocation(line: 1238, column: 30, scope: !2651)
!2653 = !DILocation(line: 1238, column: 36, scope: !2651)
!2654 = !DILocation(line: 1238, column: 38, scope: !2651)
!2655 = !DILocation(line: 1238, column: 9, scope: !2651)
!2656 = !DILocation(line: 1238, column: 7, scope: !2651)
!2657 = !DILocation(line: 1239, column: 7, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2651, file: !3, line: 1239, column: 7)
!2659 = !DILocation(line: 1239, column: 7, scope: !2651)
!2660 = !DILocation(line: 1240, column: 4, scope: !2658)
!2661 = !DILocation(line: 1245, column: 7, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2651, file: !3, line: 1245, column: 7)
!2663 = !DILocation(line: 1245, column: 13, scope: !2662)
!2664 = !DILocation(line: 1245, column: 18, scope: !2662)
!2665 = !DILocation(line: 1245, column: 7, scope: !2651)
!2666 = !DILocation(line: 1246, column: 23, scope: !2662)
!2667 = !DILocation(line: 1246, column: 29, scope: !2662)
!2668 = !DILocation(line: 1246, column: 39, scope: !2662)
!2669 = !DILocation(line: 1246, column: 43, scope: !2662)
!2670 = !DILocation(line: 1246, column: 4, scope: !2662)
!2671 = !DILocation(line: 1247, column: 2, scope: !2651)
!2672 = !DILocation(line: 1237, column: 26, scope: !2646)
!2673 = !DILocation(line: 1237, column: 30, scope: !2646)
!2674 = !DILocation(line: 1237, column: 36, scope: !2646)
!2675 = !DILocation(line: 1237, column: 46, scope: !2646)
!2676 = !DILocation(line: 1237, column: 2, scope: !2646)
!2677 = distinct !{!2677, !2649, !2678}
!2678 = !DILocation(line: 1247, column: 2, scope: !2643)
!2679 = !DILocation(line: 1252, column: 19, scope: !2542)
!2680 = !DILocation(line: 1252, column: 2, scope: !2542)
!2681 = !DILocation(line: 1253, column: 21, scope: !2542)
!2682 = !DILocation(line: 1253, column: 27, scope: !2542)
!2683 = !DILocation(line: 1253, column: 8, scope: !2542)
!2684 = !DILocation(line: 1253, column: 6, scope: !2542)
!2685 = !DILocation(line: 1254, column: 6, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2542, file: !3, line: 1254, column: 6)
!2687 = !DILocation(line: 1254, column: 6, scope: !2542)
!2688 = !DILocation(line: 1255, column: 3, scope: !2686)
!2689 = !DILocation(line: 1260, column: 9, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2542, file: !3, line: 1260, column: 2)
!2691 = !DILocation(line: 1260, column: 7, scope: !2690)
!2692 = !DILocation(line: 1260, column: 13, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2690, file: !3, line: 1260, column: 2)
!2694 = !DILocation(line: 1260, column: 17, scope: !2693)
!2695 = !DILocation(line: 1260, column: 15, scope: !2693)
!2696 = !DILocation(line: 1260, column: 2, scope: !2690)
!2697 = !DILocation(line: 1261, column: 23, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2693, file: !3, line: 1260, column: 28)
!2699 = !DILocation(line: 1261, column: 29, scope: !2698)
!2700 = !DILocation(line: 1261, column: 35, scope: !2698)
!2701 = !DILocation(line: 1261, column: 45, scope: !2698)
!2702 = !DILocation(line: 1261, column: 9, scope: !2698)
!2703 = !DILocation(line: 1261, column: 7, scope: !2698)
!2704 = !DILocation(line: 1262, column: 7, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2698, file: !3, line: 1262, column: 7)
!2706 = !DILocation(line: 1262, column: 7, scope: !2698)
!2707 = !DILocation(line: 1263, column: 4, scope: !2705)
!2708 = !DILocation(line: 1264, column: 2, scope: !2698)
!2709 = !DILocation(line: 1260, column: 24, scope: !2693)
!2710 = !DILocation(line: 1260, column: 2, scope: !2693)
!2711 = distinct !{!2711, !2696, !2712}
!2712 = !DILocation(line: 1264, column: 2, scope: !2690)
!2713 = !DILocation(line: 1266, column: 6, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2542, file: !3, line: 1266, column: 6)
!2715 = !DILocation(line: 1266, column: 12, scope: !2714)
!2716 = !DILocation(line: 1266, column: 17, scope: !2714)
!2717 = !DILocation(line: 1266, column: 6, scope: !2542)
!2718 = !DILocation(line: 1267, column: 19, scope: !2714)
!2719 = !DILocation(line: 1267, column: 25, scope: !2714)
!2720 = !DILocation(line: 1267, column: 3, scope: !2714)
!2721 = !DILocation(line: 1269, column: 17, scope: !2542)
!2722 = !DILocation(line: 1269, column: 2, scope: !2542)
!2723 = !DILocation(line: 1270, column: 2, scope: !2542)
!2724 = !DILabel(scope: !2542, name: "remove", file: !3, line: 1273)
!2725 = !DILocation(line: 1273, column: 1, scope: !2542)
!2726 = !DILocation(line: 1274, column: 19, scope: !2542)
!2727 = !DILocation(line: 1274, column: 2, scope: !2542)
!2728 = !DILabel(scope: !2542, name: "remove_added", file: !3, line: 1275)
!2729 = !DILocation(line: 1275, column: 1, scope: !2542)
!2730 = !DILocation(line: 1282, column: 18, scope: !2542)
!2731 = !DILocation(line: 1282, column: 2, scope: !2542)
!2732 = !DILocation(line: 1283, column: 17, scope: !2542)
!2733 = !DILocation(line: 1283, column: 2, scope: !2542)
!2734 = !DILabel(scope: !2542, name: "err", file: !3, line: 1284)
!2735 = !DILocation(line: 1284, column: 1, scope: !2542)
!2736 = !DILocation(line: 1285, column: 17, scope: !2542)
!2737 = !DILocation(line: 1285, column: 2, scope: !2542)
!2738 = !DILocation(line: 1287, column: 2, scope: !2542)
!2739 = !DILocation(line: 1290, column: 9, scope: !2542)
!2740 = !DILocation(line: 1290, column: 2, scope: !2542)
!2741 = !DILocation(line: 1291, column: 1, scope: !2542)
!2742 = distinct !DISubprogram(name: "mmc_sdio_init_card", scope: !3, file: !3, line: 643, type: !2743, scopeLine: 645, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!2743 = !DISubroutineType(types: !2744)
!2744 = !{!92, !106, !96, !101}
!2745 = !DILocalVariable(name: "host", arg: 1, scope: !2742, file: !3, line: 643, type: !106)
!2746 = !DILocation(line: 643, column: 48, scope: !2742)
!2747 = !DILocalVariable(name: "ocr", arg: 2, scope: !2742, file: !3, line: 643, type: !96)
!2748 = !DILocation(line: 643, column: 58, scope: !2742)
!2749 = !DILocalVariable(name: "oldcard", arg: 3, scope: !2742, file: !3, line: 644, type: !101)
!2750 = !DILocation(line: 644, column: 27, scope: !2742)
!2751 = !DILocalVariable(name: "card", scope: !2742, file: !3, line: 646, type: !101)
!2752 = !DILocation(line: 646, column: 19, scope: !2742)
!2753 = !DILocalVariable(name: "err", scope: !2742, file: !3, line: 647, type: !92)
!2754 = !DILocation(line: 647, column: 6, scope: !2742)
!2755 = !DILocalVariable(name: "retries", scope: !2742, file: !3, line: 648, type: !92)
!2756 = !DILocation(line: 648, column: 6, scope: !2742)
!2757 = !DILocalVariable(name: "rocr", scope: !2742, file: !3, line: 649, type: !96)
!2758 = !DILocation(line: 649, column: 6, scope: !2742)
!2759 = !DILocalVariable(name: "ocr_card", scope: !2742, file: !3, line: 650, type: !96)
!2760 = !DILocation(line: 650, column: 6, scope: !2742)
!2761 = !DILocation(line: 650, column: 17, scope: !2742)
!2762 = !DILocalVariable(name: "__ret_warn_on", scope: !2763, file: !3, line: 652, type: !92)
!2763 = distinct !DILexicalBlock(scope: !2742, file: !3, line: 652, column: 2)
!2764 = !DILocation(line: 652, column: 2, scope: !2763)
!2765 = !DILocation(line: 652, column: 2, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2763, file: !3, line: 652, column: 2)
!2767 = !DILocation(line: 652, column: 2, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2766, file: !3, line: 652, column: 2)
!2769 = !DILocation(line: 652, column: 2, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2768, file: !3, line: 652, column: 2)
!2771 = !DILocation(line: 652, column: 2, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2768, file: !3, line: 652, column: 2)
!2773 = !{i32 -2143561045, i32 -2143561016, i32 -2143560970, i32 -2143560912, i32 -2143560858, i32 -2143560804, i32 -2143560749, i32 -2143560718}
!2774 = !DILocation(line: 652, column: 2, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2768, file: !3, line: 652, column: 2)
!2776 = !{i32 -2143560313, i32 -2143560306, i32 -2143560254, i32 -2143560223, i32 -2143560193}
!2777 = !DILocation(line: 652, column: 2, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2768, file: !3, line: 652, column: 2)
!2779 = !DILocation(line: 655, column: 19, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2742, file: !3, line: 655, column: 6)
!2781 = !DILocation(line: 655, column: 6, scope: !2780)
!2782 = !DILocation(line: 655, column: 6, scope: !2742)
!2783 = !DILocation(line: 656, column: 7, scope: !2780)
!2784 = !DILocation(line: 656, column: 3, scope: !2780)
!2785 = !DILocation(line: 655, column: 23, scope: !2780)
!2786 = !DILabel(scope: !2742, name: "try_again", file: !3, line: 658)
!2787 = !DILocation(line: 658, column: 1, scope: !2742)
!2788 = !DILocation(line: 659, column: 7, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2742, file: !3, line: 659, column: 6)
!2790 = !DILocation(line: 659, column: 6, scope: !2742)
!2791 = !DILocation(line: 660, column: 3, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2789, file: !3, line: 659, column: 16)
!2793 = !DILocation(line: 661, column: 7, scope: !2792)
!2794 = !DILocation(line: 662, column: 2, scope: !2792)
!2795 = !DILocation(line: 667, column: 28, scope: !2742)
!2796 = !DILocation(line: 667, column: 34, scope: !2742)
!2797 = !DILocation(line: 667, column: 8, scope: !2742)
!2798 = !DILocation(line: 667, column: 6, scope: !2742)
!2799 = !DILocation(line: 668, column: 6, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2742, file: !3, line: 668, column: 6)
!2801 = !DILocation(line: 668, column: 6, scope: !2742)
!2802 = !DILocation(line: 669, column: 10, scope: !2800)
!2803 = !DILocation(line: 669, column: 3, scope: !2800)
!2804 = !DILocation(line: 674, column: 6, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2742, file: !3, line: 674, column: 6)
!2806 = !DILocation(line: 674, column: 6, scope: !2742)
!2807 = !DILocation(line: 675, column: 25, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2805, file: !3, line: 674, column: 29)
!2809 = !DILocation(line: 675, column: 31, scope: !2808)
!2810 = !DILocation(line: 675, column: 9, scope: !2808)
!2811 = !DILocation(line: 675, column: 7, scope: !2808)
!2812 = !DILocation(line: 676, column: 7, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2808, file: !3, line: 676, column: 7)
!2814 = !DILocation(line: 676, column: 7, scope: !2808)
!2815 = !DILocation(line: 677, column: 11, scope: !2813)
!2816 = !DILocation(line: 677, column: 4, scope: !2813)
!2817 = !DILocation(line: 678, column: 2, scope: !2808)
!2818 = !DILocation(line: 683, column: 24, scope: !2742)
!2819 = !DILocation(line: 683, column: 9, scope: !2742)
!2820 = !DILocation(line: 683, column: 7, scope: !2742)
!2821 = !DILocation(line: 684, column: 13, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2742, file: !3, line: 684, column: 6)
!2823 = !DILocation(line: 684, column: 6, scope: !2822)
!2824 = !DILocation(line: 684, column: 6, scope: !2742)
!2825 = !DILocation(line: 685, column: 18, scope: !2822)
!2826 = !DILocation(line: 685, column: 10, scope: !2822)
!2827 = !DILocation(line: 685, column: 3, scope: !2822)
!2828 = !DILocation(line: 687, column: 7, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2742, file: !3, line: 687, column: 6)
!2830 = !DILocation(line: 687, column: 12, scope: !2829)
!2831 = !DILocation(line: 687, column: 33, scope: !2829)
!2832 = !DILocation(line: 688, column: 21, scope: !2829)
!2833 = !DILocation(line: 688, column: 27, scope: !2829)
!2834 = !DILocation(line: 688, column: 33, scope: !2829)
!2835 = !DILocation(line: 688, column: 31, scope: !2829)
!2836 = !DILocation(line: 688, column: 39, scope: !2829)
!2837 = !DILocation(line: 688, column: 45, scope: !2829)
!2838 = !DILocation(line: 688, column: 6, scope: !2829)
!2839 = !DILocation(line: 688, column: 60, scope: !2829)
!2840 = !DILocation(line: 687, column: 6, scope: !2742)
!2841 = !DILocation(line: 689, column: 3, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2829, file: !3, line: 688, column: 66)
!2843 = !DILocation(line: 689, column: 9, scope: !2842)
!2844 = !DILocation(line: 689, column: 14, scope: !2842)
!2845 = !DILocation(line: 691, column: 7, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2842, file: !3, line: 691, column: 7)
!2847 = !DILocation(line: 691, column: 15, scope: !2846)
!2848 = !DILocation(line: 691, column: 19, scope: !2846)
!2849 = !DILocation(line: 691, column: 28, scope: !2846)
!2850 = !DILocation(line: 691, column: 33, scope: !2846)
!2851 = !DILocation(line: 691, column: 54, scope: !2846)
!2852 = !DILocation(line: 692, column: 14, scope: !2846)
!2853 = !DILocation(line: 692, column: 20, scope: !2846)
!2854 = !DILocation(line: 692, column: 29, scope: !2846)
!2855 = !DILocation(line: 692, column: 38, scope: !2846)
!2856 = !DILocation(line: 692, column: 7, scope: !2846)
!2857 = !DILocation(line: 692, column: 70, scope: !2846)
!2858 = !DILocation(line: 691, column: 7, scope: !2842)
!2859 = !DILocation(line: 693, column: 8, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2846, file: !3, line: 692, column: 77)
!2861 = !DILocation(line: 694, column: 4, scope: !2860)
!2862 = !DILocation(line: 696, column: 2, scope: !2842)
!2863 = !DILocation(line: 697, column: 3, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2829, file: !3, line: 696, column: 9)
!2865 = !DILocation(line: 697, column: 9, scope: !2864)
!2866 = !DILocation(line: 697, column: 14, scope: !2864)
!2867 = !DILocation(line: 699, column: 7, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2864, file: !3, line: 699, column: 7)
!2869 = !DILocation(line: 699, column: 15, scope: !2868)
!2870 = !DILocation(line: 699, column: 18, scope: !2868)
!2871 = !DILocation(line: 699, column: 27, scope: !2868)
!2872 = !DILocation(line: 699, column: 32, scope: !2868)
!2873 = !DILocation(line: 699, column: 7, scope: !2864)
!2874 = !DILocation(line: 700, column: 8, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2868, file: !3, line: 699, column: 50)
!2876 = !DILocation(line: 701, column: 4, scope: !2875)
!2877 = !DILocation(line: 708, column: 6, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2742, file: !3, line: 708, column: 6)
!2879 = !DILocation(line: 708, column: 12, scope: !2878)
!2880 = !DILocation(line: 708, column: 17, scope: !2878)
!2881 = !DILocation(line: 708, column: 6, scope: !2742)
!2882 = !DILocation(line: 709, column: 3, scope: !2878)
!2883 = !DILocation(line: 709, column: 9, scope: !2878)
!2884 = !DILocation(line: 709, column: 14, scope: !2878)
!2885 = !DILocation(line: 709, column: 24, scope: !2878)
!2886 = !DILocation(line: 709, column: 30, scope: !2878)
!2887 = !DILocation(line: 722, column: 6, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2742, file: !3, line: 722, column: 6)
!2889 = !DILocation(line: 722, column: 13, scope: !2888)
!2890 = !DILocation(line: 722, column: 11, scope: !2888)
!2891 = !DILocation(line: 722, column: 17, scope: !2888)
!2892 = !DILocation(line: 722, column: 6, scope: !2742)
!2893 = !DILocation(line: 723, column: 29, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2888, file: !3, line: 722, column: 35)
!2895 = !DILocation(line: 723, column: 35, scope: !2894)
!2896 = !DILocation(line: 723, column: 9, scope: !2894)
!2897 = !DILocation(line: 723, column: 7, scope: !2894)
!2898 = !DILocation(line: 724, column: 7, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2894, file: !3, line: 724, column: 7)
!2900 = !DILocation(line: 724, column: 11, scope: !2899)
!2901 = !DILocation(line: 724, column: 7, scope: !2894)
!2902 = !DILocation(line: 725, column: 22, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2899, file: !3, line: 724, column: 23)
!2904 = !DILocation(line: 725, column: 28, scope: !2903)
!2905 = !DILocation(line: 725, column: 38, scope: !2903)
!2906 = !DILocation(line: 725, column: 4, scope: !2903)
!2907 = !DILocation(line: 726, column: 11, scope: !2903)
!2908 = !DILocation(line: 727, column: 4, scope: !2903)
!2909 = !DILocation(line: 728, column: 14, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2899, file: !3, line: 728, column: 14)
!2911 = !DILocation(line: 728, column: 14, scope: !2899)
!2912 = !DILocation(line: 729, column: 8, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2910, file: !3, line: 728, column: 19)
!2914 = !DILocation(line: 730, column: 3, scope: !2913)
!2915 = !DILocation(line: 731, column: 2, scope: !2894)
!2916 = !DILocation(line: 736, column: 7, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2742, file: !3, line: 736, column: 6)
!2918 = !DILocation(line: 736, column: 6, scope: !2742)
!2919 = !DILocation(line: 737, column: 32, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2917, file: !3, line: 736, column: 30)
!2921 = !DILocation(line: 737, column: 39, scope: !2920)
!2922 = !DILocation(line: 737, column: 45, scope: !2920)
!2923 = !DILocation(line: 737, column: 9, scope: !2920)
!2924 = !DILocation(line: 737, column: 7, scope: !2920)
!2925 = !DILocation(line: 738, column: 7, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2920, file: !3, line: 738, column: 7)
!2927 = !DILocation(line: 738, column: 7, scope: !2920)
!2928 = !DILocation(line: 739, column: 4, scope: !2926)
!2929 = !DILocation(line: 746, column: 7, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2920, file: !3, line: 746, column: 7)
!2931 = !DILocation(line: 746, column: 7, scope: !2920)
!2932 = !DILocation(line: 747, column: 19, scope: !2930)
!2933 = !DILocation(line: 747, column: 25, scope: !2930)
!2934 = !DILocation(line: 747, column: 4, scope: !2930)
!2935 = !DILocation(line: 747, column: 13, scope: !2930)
!2936 = !DILocation(line: 747, column: 17, scope: !2930)
!2937 = !DILocation(line: 748, column: 2, scope: !2920)
!2938 = !DILocation(line: 753, column: 7, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2742, file: !3, line: 753, column: 6)
!2940 = !DILocation(line: 753, column: 15, scope: !2939)
!2941 = !DILocation(line: 753, column: 18, scope: !2939)
!2942 = !DILocation(line: 753, column: 24, scope: !2939)
!2943 = !DILocation(line: 753, column: 29, scope: !2939)
!2944 = !DILocation(line: 753, column: 6, scope: !2742)
!2945 = !DILocation(line: 754, column: 24, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2939, file: !3, line: 753, column: 51)
!2947 = !DILocation(line: 754, column: 30, scope: !2946)
!2948 = !DILocation(line: 754, column: 9, scope: !2946)
!2949 = !DILocation(line: 754, column: 7, scope: !2946)
!2950 = !DILocation(line: 755, column: 7, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2946, file: !3, line: 755, column: 7)
!2952 = !DILocation(line: 755, column: 7, scope: !2946)
!2953 = !DILocation(line: 756, column: 4, scope: !2951)
!2954 = !DILocation(line: 758, column: 18, scope: !2946)
!2955 = !DILocation(line: 758, column: 3, scope: !2946)
!2956 = !DILocation(line: 759, column: 2, scope: !2946)
!2957 = !DILocation(line: 764, column: 7, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2742, file: !3, line: 764, column: 6)
!2959 = !DILocation(line: 764, column: 6, scope: !2742)
!2960 = !DILocation(line: 765, column: 25, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2958, file: !3, line: 764, column: 30)
!2962 = !DILocation(line: 765, column: 9, scope: !2961)
!2963 = !DILocation(line: 765, column: 7, scope: !2961)
!2964 = !DILocation(line: 766, column: 7, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2961, file: !3, line: 766, column: 7)
!2966 = !DILocation(line: 766, column: 7, scope: !2961)
!2967 = !DILocation(line: 767, column: 4, scope: !2965)
!2968 = !DILocation(line: 768, column: 2, scope: !2961)
!2969 = !DILocation(line: 770, column: 6, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2742, file: !3, line: 770, column: 6)
!2971 = !DILocation(line: 770, column: 12, scope: !2970)
!2972 = !DILocation(line: 770, column: 19, scope: !2970)
!2973 = !DILocation(line: 770, column: 6, scope: !2742)
!2974 = !DILocation(line: 777, column: 17, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2970, file: !3, line: 770, column: 44)
!2976 = !DILocation(line: 777, column: 23, scope: !2975)
!2977 = !DILocation(line: 777, column: 29, scope: !2975)
!2978 = !DILocation(line: 777, column: 33, scope: !2975)
!2979 = !DILocation(line: 777, column: 3, scope: !2975)
!2980 = !DILocation(line: 779, column: 7, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2975, file: !3, line: 779, column: 7)
!2982 = !DILocation(line: 779, column: 13, scope: !2981)
!2983 = !DILocation(line: 779, column: 18, scope: !2981)
!2984 = !DILocation(line: 779, column: 7, scope: !2975)
!2985 = !DILocation(line: 780, column: 19, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2981, file: !3, line: 779, column: 30)
!2987 = !DILocation(line: 780, column: 25, scope: !2986)
!2988 = !DILocation(line: 780, column: 4, scope: !2986)
!2989 = !DILocation(line: 781, column: 3, scope: !2986)
!2990 = !DILocation(line: 783, column: 7, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2975, file: !3, line: 783, column: 7)
!2992 = !DILocation(line: 783, column: 7, scope: !2975)
!2993 = !DILocation(line: 784, column: 20, scope: !2991)
!2994 = !DILocation(line: 784, column: 4, scope: !2991)
!2995 = !DILocation(line: 786, column: 17, scope: !2991)
!2996 = !DILocation(line: 786, column: 4, scope: !2991)
!2997 = !DILocation(line: 786, column: 10, scope: !2991)
!2998 = !DILocation(line: 786, column: 15, scope: !2991)
!2999 = !DILocation(line: 788, column: 3, scope: !2975)
!3000 = !DILocation(line: 795, column: 23, scope: !2742)
!3001 = !DILocation(line: 795, column: 29, scope: !2742)
!3002 = !DILocation(line: 795, column: 8, scope: !2742)
!3003 = !DILocation(line: 795, column: 6, scope: !2742)
!3004 = !DILocation(line: 796, column: 6, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !2742, file: !3, line: 796, column: 6)
!3006 = !DILocation(line: 796, column: 6, scope: !2742)
!3007 = !DILocation(line: 797, column: 21, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !3005, file: !3, line: 796, column: 11)
!3009 = !DILocation(line: 797, column: 27, scope: !3008)
!3010 = !DILocation(line: 797, column: 37, scope: !3008)
!3011 = !DILocation(line: 797, column: 3, scope: !3008)
!3012 = !DILocation(line: 798, column: 7, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !3008, file: !3, line: 798, column: 7)
!3014 = !DILocation(line: 798, column: 11, scope: !3013)
!3015 = !DILocation(line: 798, column: 7, scope: !3008)
!3016 = !DILocation(line: 800, column: 12, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !3013, file: !3, line: 798, column: 29)
!3018 = !DILocation(line: 801, column: 4, scope: !3017)
!3019 = !DILocation(line: 803, column: 10, scope: !3008)
!3020 = !DILocation(line: 803, column: 3, scope: !3008)
!3021 = !DILocation(line: 809, column: 29, scope: !2742)
!3022 = !DILocation(line: 809, column: 8, scope: !2742)
!3023 = !DILocation(line: 809, column: 6, scope: !2742)
!3024 = !DILocation(line: 810, column: 6, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !2742, file: !3, line: 810, column: 6)
!3026 = !DILocation(line: 810, column: 6, scope: !2742)
!3027 = !DILocation(line: 811, column: 3, scope: !3025)
!3028 = !DILocation(line: 813, column: 6, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !2742, file: !3, line: 813, column: 6)
!3030 = !DILocation(line: 813, column: 6, scope: !2742)
!3031 = !DILocation(line: 814, column: 7, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !3033, file: !3, line: 814, column: 7)
!3033 = distinct !DILexicalBlock(scope: !3029, file: !3, line: 813, column: 15)
!3034 = !DILocation(line: 814, column: 13, scope: !3032)
!3035 = !DILocation(line: 814, column: 17, scope: !3032)
!3036 = !DILocation(line: 814, column: 27, scope: !3032)
!3037 = !DILocation(line: 814, column: 36, scope: !3032)
!3038 = !DILocation(line: 814, column: 40, scope: !3032)
!3039 = !DILocation(line: 814, column: 24, scope: !3032)
!3040 = !DILocation(line: 814, column: 47, scope: !3032)
!3041 = !DILocation(line: 815, column: 7, scope: !3032)
!3042 = !DILocation(line: 815, column: 13, scope: !3032)
!3043 = !DILocation(line: 815, column: 17, scope: !3032)
!3044 = !DILocation(line: 815, column: 27, scope: !3032)
!3045 = !DILocation(line: 815, column: 36, scope: !3032)
!3046 = !DILocation(line: 815, column: 40, scope: !3032)
!3047 = !DILocation(line: 815, column: 24, scope: !3032)
!3048 = !DILocation(line: 814, column: 7, scope: !3033)
!3049 = !DILocation(line: 816, column: 20, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3032, file: !3, line: 815, column: 48)
!3051 = !DILocation(line: 816, column: 4, scope: !3050)
!3052 = !DILocation(line: 817, column: 11, scope: !3050)
!3053 = !DILocation(line: 817, column: 9, scope: !3050)
!3054 = !DILocation(line: 818, column: 3, scope: !3050)
!3055 = !DILocation(line: 819, column: 8, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3032, file: !3, line: 818, column: 10)
!3057 = !DILocation(line: 820, column: 4, scope: !3056)
!3058 = !DILocation(line: 822, column: 2, scope: !3033)
!3059 = !DILocation(line: 823, column: 14, scope: !2742)
!3060 = !DILocation(line: 823, column: 2, scope: !2742)
!3061 = !DILocation(line: 823, column: 8, scope: !2742)
!3062 = !DILocation(line: 823, column: 12, scope: !2742)
!3063 = !DILocation(line: 824, column: 19, scope: !2742)
!3064 = !DILocation(line: 824, column: 2, scope: !2742)
!3065 = !DILocation(line: 826, column: 6, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !2742, file: !3, line: 826, column: 6)
!3067 = !DILocation(line: 826, column: 12, scope: !3066)
!3068 = !DILocation(line: 826, column: 17, scope: !3066)
!3069 = !DILocation(line: 826, column: 6, scope: !2742)
!3070 = !DILocation(line: 827, column: 27, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3066, file: !3, line: 826, column: 39)
!3072 = !DILocation(line: 827, column: 33, scope: !3071)
!3073 = !DILocation(line: 827, column: 39, scope: !3071)
!3074 = !DILocation(line: 827, column: 47, scope: !3071)
!3075 = !DILocation(line: 827, column: 9, scope: !3071)
!3076 = !DILocation(line: 827, column: 7, scope: !3071)
!3077 = !DILocation(line: 829, column: 7, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3071, file: !3, line: 829, column: 7)
!3079 = !DILocation(line: 829, column: 7, scope: !3071)
!3080 = !DILocation(line: 830, column: 16, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3078, file: !3, line: 829, column: 12)
!3082 = !DILocation(line: 830, column: 4, scope: !3081)
!3083 = !DILocation(line: 831, column: 8, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3081, file: !3, line: 831, column: 8)
!3085 = !DILocation(line: 831, column: 8, scope: !3081)
!3086 = !DILocation(line: 833, column: 21, scope: !3084)
!3087 = !DILocation(line: 833, column: 27, scope: !3084)
!3088 = !DILocation(line: 833, column: 5, scope: !3084)
!3089 = !DILocation(line: 834, column: 4, scope: !3081)
!3090 = !DILocation(line: 834, column: 10, scope: !3081)
!3091 = !DILocation(line: 834, column: 15, scope: !3081)
!3092 = !DILocation(line: 835, column: 3, scope: !3081)
!3093 = !DILocation(line: 836, column: 4, scope: !3078)
!3094 = !DILocation(line: 836, column: 10, scope: !3078)
!3095 = !DILocation(line: 836, column: 14, scope: !3078)
!3096 = !DILocation(line: 836, column: 19, scope: !3078)
!3097 = !DILocation(line: 837, column: 2, scope: !3071)
!3098 = !DILocation(line: 842, column: 24, scope: !2742)
!3099 = !DILocation(line: 842, column: 8, scope: !2742)
!3100 = !DILocation(line: 842, column: 6, scope: !2742)
!3101 = !DILocation(line: 843, column: 6, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !2742, file: !3, line: 843, column: 6)
!3103 = !DILocation(line: 843, column: 6, scope: !2742)
!3104 = !DILocation(line: 844, column: 3, scope: !3102)
!3105 = !DILocation(line: 848, column: 7, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !2742, file: !3, line: 848, column: 6)
!3107 = !DILocation(line: 848, column: 11, scope: !3106)
!3108 = !DILocation(line: 848, column: 29, scope: !3106)
!3109 = !DILocation(line: 848, column: 32, scope: !3106)
!3110 = !DILocation(line: 848, column: 38, scope: !3106)
!3111 = !DILocation(line: 848, column: 46, scope: !3106)
!3112 = !DILocation(line: 848, column: 6, scope: !2742)
!3113 = !DILocation(line: 849, column: 32, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3106, file: !3, line: 848, column: 60)
!3115 = !DILocation(line: 849, column: 9, scope: !3114)
!3116 = !DILocation(line: 849, column: 7, scope: !3114)
!3117 = !DILocation(line: 850, column: 7, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3114, file: !3, line: 850, column: 7)
!3119 = !DILocation(line: 850, column: 7, scope: !3114)
!3120 = !DILocation(line: 851, column: 4, scope: !3118)
!3121 = !DILocation(line: 852, column: 2, scope: !3114)
!3122 = !DILocation(line: 856, column: 24, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3106, file: !3, line: 852, column: 9)
!3124 = !DILocation(line: 856, column: 9, scope: !3123)
!3125 = !DILocation(line: 856, column: 7, scope: !3123)
!3126 = !DILocation(line: 857, column: 7, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !3123, file: !3, line: 857, column: 7)
!3128 = !DILocation(line: 857, column: 11, scope: !3127)
!3129 = !DILocation(line: 857, column: 7, scope: !3123)
!3130 = !DILocation(line: 858, column: 19, scope: !3127)
!3131 = !DILocation(line: 858, column: 25, scope: !3127)
!3132 = !DILocation(line: 858, column: 4, scope: !3127)
!3133 = !DILocation(line: 859, column: 12, scope: !3134)
!3134 = distinct !DILexicalBlock(scope: !3127, file: !3, line: 859, column: 12)
!3135 = !DILocation(line: 859, column: 12, scope: !3127)
!3136 = !DILocation(line: 860, column: 4, scope: !3134)
!3137 = !DILocation(line: 865, column: 17, scope: !3123)
!3138 = !DILocation(line: 865, column: 46, scope: !3123)
!3139 = !DILocation(line: 865, column: 23, scope: !3123)
!3140 = !DILocation(line: 865, column: 3, scope: !3123)
!3141 = !DILocation(line: 870, column: 30, scope: !3123)
!3142 = !DILocation(line: 870, column: 9, scope: !3123)
!3143 = !DILocation(line: 870, column: 7, scope: !3123)
!3144 = !DILocation(line: 871, column: 7, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !3123, file: !3, line: 871, column: 7)
!3146 = !DILocation(line: 871, column: 7, scope: !3123)
!3147 = !DILocation(line: 872, column: 4, scope: !3145)
!3148 = !DILocation(line: 875, column: 6, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !2742, file: !3, line: 875, column: 6)
!3150 = !DILocation(line: 875, column: 12, scope: !3149)
!3151 = !DILocation(line: 875, column: 18, scope: !3149)
!3152 = !DILocation(line: 875, column: 40, scope: !3149)
!3153 = !DILocation(line: 876, column: 6, scope: !3149)
!3154 = !DILocation(line: 876, column: 12, scope: !3149)
!3155 = !DILocation(line: 876, column: 16, scope: !3149)
!3156 = !DILocation(line: 876, column: 31, scope: !3149)
!3157 = !DILocation(line: 875, column: 6, scope: !2742)
!3158 = !DILocation(line: 877, column: 3, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3149, file: !3, line: 876, column: 58)
!3160 = !DILocation(line: 879, column: 7, scope: !3159)
!3161 = !DILocation(line: 880, column: 3, scope: !3159)
!3162 = !DILocation(line: 883, column: 15, scope: !2742)
!3163 = !DILocation(line: 883, column: 2, scope: !2742)
!3164 = !DILocation(line: 883, column: 8, scope: !2742)
!3165 = !DILocation(line: 883, column: 13, scope: !2742)
!3166 = !DILocation(line: 884, column: 2, scope: !2742)
!3167 = !DILabel(scope: !2742, name: "mismatch", file: !3, line: 886)
!3168 = !DILocation(line: 886, column: 1, scope: !2742)
!3169 = !DILocation(line: 887, column: 2, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3171, file: !3, line: 887, column: 2)
!3171 = distinct !DILexicalBlock(scope: !2742, file: !3, line: 887, column: 2)
!3172 = !DILocation(line: 887, column: 2, scope: !3171)
!3173 = !DILocation(line: 887, column: 2, scope: !2742)
!3174 = !DILabel(scope: !2742, name: "remove", file: !3, line: 888)
!3175 = !DILocation(line: 888, column: 1, scope: !2742)
!3176 = !DILocation(line: 889, column: 6, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !2742, file: !3, line: 889, column: 6)
!3178 = !DILocation(line: 889, column: 17, scope: !3177)
!3179 = !DILocation(line: 889, column: 14, scope: !3177)
!3180 = !DILocation(line: 889, column: 6, scope: !2742)
!3181 = !DILocation(line: 890, column: 19, scope: !3177)
!3182 = !DILocation(line: 890, column: 3, scope: !3177)
!3183 = !DILocation(line: 891, column: 9, scope: !2742)
!3184 = !DILocation(line: 891, column: 2, scope: !2742)
!3185 = !DILocation(line: 892, column: 1, scope: !2742)
!3186 = distinct !DISubprogram(name: "pm_runtime_get_noresume", scope: !3187, file: !3187, line: 92, type: !1609, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!3187 = !DIFile(filename: "./include/linux/pm_runtime.h", directory: "/home/lizy2001/genbc/linux")
!3188 = !DILocalVariable(name: "v", arg: 1, scope: !3189, file: !3190, line: 93, type: !3193)
!3189 = distinct !DISubprogram(name: "arch_atomic_inc", scope: !3190, file: !3190, line: 93, type: !3191, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!3190 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/lizy2001/genbc/linux")
!3191 = !DISubroutineType(types: !3192)
!3192 = !{null, !3193}
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!3194 = !DILocation(line: 93, column: 55, scope: !3189, inlinedAt: !3195)
!3195 = distinct !DILocation(line: 241, column: 2, scope: !3196, inlinedAt: !3198)
!3196 = distinct !DISubprogram(name: "atomic_inc", scope: !3197, file: !3197, line: 238, type: !3191, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!3197 = !DIFile(filename: "./include/asm-generic/atomic-instrumented.h", directory: "/home/lizy2001/genbc/linux")
!3198 = distinct !DILocation(line: 94, column: 2, scope: !3186)
!3199 = !DILocalVariable(name: "v", arg: 1, scope: !3200, file: !3201, line: 99, type: !3204)
!3200 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !3201, file: !3201, line: 99, type: !3202, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!3201 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!3202 = !DISubroutineType(types: !3203)
!3203 = !{null, !3204, !224}
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3206)
!3206 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!3207 = !DILocation(line: 99, column: 79, scope: !3200, inlinedAt: !3208)
!3208 = distinct !DILocation(line: 240, column: 2, scope: !3196, inlinedAt: !3198)
!3209 = !DILocalVariable(name: "size", arg: 2, scope: !3200, file: !3201, line: 99, type: !224)
!3210 = !DILocation(line: 99, column: 89, scope: !3200, inlinedAt: !3208)
!3211 = !DILocalVariable(name: "v", arg: 1, scope: !3196, file: !3197, line: 238, type: !3193)
!3212 = !DILocation(line: 238, column: 22, scope: !3196, inlinedAt: !3198)
!3213 = !DILocalVariable(name: "dev", arg: 1, scope: !3186, file: !3187, line: 92, type: !111)
!3214 = !DILocation(line: 92, column: 59, scope: !3186)
!3215 = !DILocation(line: 94, column: 14, scope: !3186)
!3216 = !DILocation(line: 94, column: 19, scope: !3186)
!3217 = !DILocation(line: 94, column: 25, scope: !3186)
!3218 = !DILocation(line: 240, column: 31, scope: !3196, inlinedAt: !3198)
!3219 = !DILocation(line: 101, column: 20, scope: !3200, inlinedAt: !3208)
!3220 = !DILocation(line: 101, column: 23, scope: !3200, inlinedAt: !3208)
!3221 = !DILocation(line: 101, column: 2, scope: !3200, inlinedAt: !3208)
!3222 = !DILocation(line: 102, column: 2, scope: !3200, inlinedAt: !3208)
!3223 = !DILocation(line: 241, column: 18, scope: !3196, inlinedAt: !3198)
!3224 = !DILocation(line: 96, column: 16, scope: !3189, inlinedAt: !3195)
!3225 = !DILocation(line: 96, column: 19, scope: !3189, inlinedAt: !3195)
!3226 = !DILocation(line: 95, column: 2, scope: !3189, inlinedAt: !3195)
!3227 = !{i32 -2146601768}
!3228 = !DILocation(line: 95, column: 1, scope: !3186)
!3229 = distinct !DISubprogram(name: "pm_runtime_set_active", scope: !3187, file: !3187, line: 495, type: !1618, scopeLine: 496, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!3230 = !DILocalVariable(name: "dev", arg: 1, scope: !3229, file: !3187, line: 495, type: !111)
!3231 = !DILocation(line: 495, column: 56, scope: !3229)
!3232 = !DILocation(line: 497, column: 33, scope: !3229)
!3233 = !DILocation(line: 497, column: 9, scope: !3229)
!3234 = !DILocation(line: 497, column: 2, scope: !3229)
!3235 = distinct !DISubprogram(name: "sdio_init_func", scope: !3, file: !3, line: 102, type: !3236, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!3236 = !DISubroutineType(types: !3237)
!3237 = !{!92, !101, !7}
!3238 = !DILocalVariable(name: "card", arg: 1, scope: !3235, file: !3, line: 102, type: !101)
!3239 = !DILocation(line: 102, column: 44, scope: !3235)
!3240 = !DILocalVariable(name: "fn", arg: 2, scope: !3235, file: !3, line: 102, type: !7)
!3241 = !DILocation(line: 102, column: 63, scope: !3235)
!3242 = !DILocalVariable(name: "ret", scope: !3235, file: !3, line: 104, type: !92)
!3243 = !DILocation(line: 104, column: 6, scope: !3235)
!3244 = !DILocalVariable(name: "func", scope: !3235, file: !3, line: 105, type: !2413)
!3245 = !DILocation(line: 105, column: 20, scope: !3235)
!3246 = !DILocalVariable(name: "__ret_warn_on", scope: !3247, file: !3, line: 107, type: !92)
!3247 = distinct !DILexicalBlock(scope: !3248, file: !3, line: 107, column: 6)
!3248 = distinct !DILexicalBlock(scope: !3235, file: !3, line: 107, column: 6)
!3249 = !DILocation(line: 107, column: 6, scope: !3247)
!3250 = !DILocation(line: 107, column: 6, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !3247, file: !3, line: 107, column: 6)
!3252 = !DILocation(line: 107, column: 6, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3251, file: !3, line: 107, column: 6)
!3254 = !DILocation(line: 107, column: 6, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3253, file: !3, line: 107, column: 6)
!3256 = !DILocation(line: 107, column: 6, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3253, file: !3, line: 107, column: 6)
!3258 = !{i32 -2143567572, i32 -2143567543, i32 -2143567497, i32 -2143567439, i32 -2143567385, i32 -2143567331, i32 -2143567276, i32 -2143567245}
!3259 = !DILocation(line: 107, column: 6, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !3253, file: !3, line: 107, column: 6)
!3261 = !{i32 -2143566840, i32 -2143566833, i32 -2143566781, i32 -2143566750, i32 -2143566720}
!3262 = !DILocation(line: 107, column: 6, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3253, file: !3, line: 107, column: 6)
!3264 = !DILocation(line: 107, column: 6, scope: !3248)
!3265 = !DILocation(line: 107, column: 6, scope: !3235)
!3266 = !DILocation(line: 108, column: 3, scope: !3248)
!3267 = !DILocation(line: 110, column: 25, scope: !3235)
!3268 = !DILocation(line: 110, column: 9, scope: !3235)
!3269 = !DILocation(line: 110, column: 7, scope: !3235)
!3270 = !DILocation(line: 111, column: 13, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3235, file: !3, line: 111, column: 6)
!3272 = !DILocation(line: 111, column: 6, scope: !3271)
!3273 = !DILocation(line: 111, column: 6, scope: !3235)
!3274 = !DILocation(line: 112, column: 18, scope: !3271)
!3275 = !DILocation(line: 112, column: 10, scope: !3271)
!3276 = !DILocation(line: 112, column: 3, scope: !3271)
!3277 = !DILocation(line: 114, column: 14, scope: !3235)
!3278 = !DILocation(line: 114, column: 2, scope: !3235)
!3279 = !DILocation(line: 114, column: 8, scope: !3235)
!3280 = !DILocation(line: 114, column: 12, scope: !3235)
!3281 = !DILocation(line: 116, column: 8, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3235, file: !3, line: 116, column: 6)
!3283 = !DILocation(line: 116, column: 14, scope: !3282)
!3284 = !DILocation(line: 116, column: 21, scope: !3282)
!3285 = !DILocation(line: 116, column: 6, scope: !3235)
!3286 = !DILocation(line: 117, column: 23, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3282, file: !3, line: 116, column: 47)
!3288 = !DILocation(line: 117, column: 9, scope: !3287)
!3289 = !DILocation(line: 117, column: 7, scope: !3287)
!3290 = !DILocation(line: 118, column: 7, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3287, file: !3, line: 118, column: 7)
!3292 = !DILocation(line: 118, column: 7, scope: !3287)
!3293 = !DILocation(line: 119, column: 4, scope: !3291)
!3294 = !DILocation(line: 121, column: 28, scope: !3287)
!3295 = !DILocation(line: 121, column: 9, scope: !3287)
!3296 = !DILocation(line: 121, column: 7, scope: !3287)
!3297 = !DILocation(line: 122, column: 7, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3287, file: !3, line: 122, column: 7)
!3299 = !DILocation(line: 122, column: 7, scope: !3287)
!3300 = !DILocation(line: 123, column: 4, scope: !3298)
!3301 = !DILocation(line: 124, column: 2, scope: !3287)
!3302 = !DILocation(line: 125, column: 18, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3282, file: !3, line: 124, column: 9)
!3304 = !DILocation(line: 125, column: 24, scope: !3303)
!3305 = !DILocation(line: 125, column: 30, scope: !3303)
!3306 = !DILocation(line: 125, column: 34, scope: !3303)
!3307 = !DILocation(line: 125, column: 3, scope: !3303)
!3308 = !DILocation(line: 125, column: 9, scope: !3303)
!3309 = !DILocation(line: 125, column: 16, scope: !3303)
!3310 = !DILocation(line: 126, column: 18, scope: !3303)
!3311 = !DILocation(line: 126, column: 24, scope: !3303)
!3312 = !DILocation(line: 126, column: 30, scope: !3303)
!3313 = !DILocation(line: 126, column: 34, scope: !3303)
!3314 = !DILocation(line: 126, column: 3, scope: !3303)
!3315 = !DILocation(line: 126, column: 9, scope: !3303)
!3316 = !DILocation(line: 126, column: 16, scope: !3303)
!3317 = !DILocation(line: 127, column: 23, scope: !3303)
!3318 = !DILocation(line: 127, column: 29, scope: !3303)
!3319 = !DILocation(line: 127, column: 35, scope: !3303)
!3320 = !DILocation(line: 127, column: 39, scope: !3303)
!3321 = !DILocation(line: 127, column: 3, scope: !3303)
!3322 = !DILocation(line: 127, column: 9, scope: !3303)
!3323 = !DILocation(line: 127, column: 21, scope: !3303)
!3324 = !DILocation(line: 130, column: 28, scope: !3235)
!3325 = !DILocation(line: 130, column: 2, scope: !3235)
!3326 = !DILocation(line: 130, column: 8, scope: !3235)
!3327 = !DILocation(line: 130, column: 18, scope: !3235)
!3328 = !DILocation(line: 130, column: 21, scope: !3235)
!3329 = !DILocation(line: 130, column: 26, scope: !3235)
!3330 = !DILocation(line: 132, column: 2, scope: !3235)
!3331 = !DILabel(scope: !3235, name: "fail", file: !3, line: 134)
!3332 = !DILocation(line: 134, column: 1, scope: !3235)
!3333 = !DILocation(line: 139, column: 19, scope: !3235)
!3334 = !DILocation(line: 139, column: 2, scope: !3235)
!3335 = !DILocation(line: 140, column: 9, scope: !3235)
!3336 = !DILocation(line: 140, column: 2, scope: !3235)
!3337 = !DILocation(line: 141, column: 1, scope: !3235)
!3338 = distinct !DISubprogram(name: "pm_runtime_put", scope: !3187, file: !3187, line: 417, type: !1618, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!3339 = !DILocalVariable(name: "dev", arg: 1, scope: !3338, file: !3187, line: 417, type: !111)
!3340 = !DILocation(line: 417, column: 49, scope: !3338)
!3341 = !DILocation(line: 419, column: 27, scope: !3338)
!3342 = !DILocation(line: 419, column: 9, scope: !3338)
!3343 = !DILocation(line: 419, column: 2, scope: !3338)
!3344 = distinct !DISubprogram(name: "mmc_claim_host", scope: !2170, file: !2170, line: 134, type: !2052, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!3345 = !DILocalVariable(name: "host", arg: 1, scope: !3344, file: !2170, line: 134, type: !106)
!3346 = !DILocation(line: 134, column: 52, scope: !3344)
!3347 = !DILocation(line: 136, column: 19, scope: !3344)
!3348 = !DILocation(line: 136, column: 2, scope: !3344)
!3349 = !DILocation(line: 137, column: 1, scope: !3344)
!3350 = distinct !DISubprogram(name: "mmc_sdio_remove", scope: !3, file: !3, line: 908, type: !2052, scopeLine: 909, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!3351 = !DILocalVariable(name: "host", arg: 1, scope: !3350, file: !3, line: 908, type: !106)
!3352 = !DILocation(line: 908, column: 46, scope: !3350)
!3353 = !DILocalVariable(name: "i", scope: !3350, file: !3, line: 910, type: !92)
!3354 = !DILocation(line: 910, column: 6, scope: !3350)
!3355 = !DILocation(line: 912, column: 9, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3350, file: !3, line: 912, column: 2)
!3357 = !DILocation(line: 912, column: 7, scope: !3356)
!3358 = !DILocation(line: 912, column: 13, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3356, file: !3, line: 912, column: 2)
!3360 = !DILocation(line: 912, column: 17, scope: !3359)
!3361 = !DILocation(line: 912, column: 23, scope: !3359)
!3362 = !DILocation(line: 912, column: 29, scope: !3359)
!3363 = !DILocation(line: 912, column: 15, scope: !3359)
!3364 = !DILocation(line: 912, column: 2, scope: !3356)
!3365 = !DILocation(line: 913, column: 7, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !3367, file: !3, line: 913, column: 7)
!3367 = distinct !DILexicalBlock(scope: !3359, file: !3, line: 912, column: 45)
!3368 = !DILocation(line: 913, column: 13, scope: !3366)
!3369 = !DILocation(line: 913, column: 19, scope: !3366)
!3370 = !DILocation(line: 913, column: 29, scope: !3366)
!3371 = !DILocation(line: 913, column: 7, scope: !3367)
!3372 = !DILocation(line: 914, column: 21, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3366, file: !3, line: 913, column: 33)
!3374 = !DILocation(line: 914, column: 27, scope: !3373)
!3375 = !DILocation(line: 914, column: 33, scope: !3373)
!3376 = !DILocation(line: 914, column: 43, scope: !3373)
!3377 = !DILocation(line: 914, column: 4, scope: !3373)
!3378 = !DILocation(line: 915, column: 4, scope: !3373)
!3379 = !DILocation(line: 915, column: 10, scope: !3373)
!3380 = !DILocation(line: 915, column: 16, scope: !3373)
!3381 = !DILocation(line: 915, column: 26, scope: !3373)
!3382 = !DILocation(line: 915, column: 29, scope: !3373)
!3383 = !DILocation(line: 916, column: 3, scope: !3373)
!3384 = !DILocation(line: 917, column: 2, scope: !3367)
!3385 = !DILocation(line: 912, column: 41, scope: !3359)
!3386 = !DILocation(line: 912, column: 2, scope: !3359)
!3387 = distinct !{!3387, !3364, !3388}
!3388 = !DILocation(line: 917, column: 2, scope: !3356)
!3389 = !DILocation(line: 919, column: 18, scope: !3350)
!3390 = !DILocation(line: 919, column: 24, scope: !3350)
!3391 = !DILocation(line: 919, column: 2, scope: !3350)
!3392 = !DILocation(line: 920, column: 2, scope: !3350)
!3393 = !DILocation(line: 920, column: 8, scope: !3350)
!3394 = !DILocation(line: 920, column: 13, scope: !3350)
!3395 = !DILocation(line: 921, column: 1, scope: !3350)
!3396 = distinct !DISubprogram(name: "dev_name", scope: !30, file: !30, line: 609, type: !3397, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!3397 = !DISubroutineType(types: !3398)
!3398 = !{!119, !3399}
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!3401 = !DILocalVariable(name: "dev", arg: 1, scope: !3396, file: !30, line: 609, type: !3399)
!3402 = !DILocation(line: 609, column: 57, scope: !3396)
!3403 = !DILocation(line: 612, column: 6, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3396, file: !30, line: 612, column: 6)
!3405 = !DILocation(line: 612, column: 11, scope: !3404)
!3406 = !DILocation(line: 612, column: 6, scope: !3396)
!3407 = !DILocation(line: 613, column: 10, scope: !3404)
!3408 = !DILocation(line: 613, column: 15, scope: !3404)
!3409 = !DILocation(line: 613, column: 3, scope: !3404)
!3410 = !DILocation(line: 615, column: 23, scope: !3396)
!3411 = !DILocation(line: 615, column: 28, scope: !3396)
!3412 = !DILocation(line: 615, column: 9, scope: !3396)
!3413 = !DILocation(line: 615, column: 2, scope: !3396)
!3414 = !DILocation(line: 616, column: 1, scope: !3396)
!3415 = distinct !DISubprogram(name: "mmc_sdio_detect", scope: !3, file: !3, line: 934, type: !2052, scopeLine: 935, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!3416 = !DILocalVariable(name: "host", arg: 1, scope: !3415, file: !3, line: 934, type: !106)
!3417 = !DILocation(line: 934, column: 46, scope: !3415)
!3418 = !DILocalVariable(name: "err", scope: !3415, file: !3, line: 936, type: !92)
!3419 = !DILocation(line: 936, column: 6, scope: !3415)
!3420 = !DILocation(line: 939, column: 6, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3415, file: !3, line: 939, column: 6)
!3422 = !DILocation(line: 939, column: 12, scope: !3421)
!3423 = !DILocation(line: 939, column: 17, scope: !3421)
!3424 = !DILocation(line: 939, column: 6, scope: !3415)
!3425 = !DILocation(line: 940, column: 30, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3421, file: !3, line: 939, column: 43)
!3427 = !DILocation(line: 940, column: 36, scope: !3426)
!3428 = !DILocation(line: 940, column: 42, scope: !3426)
!3429 = !DILocation(line: 940, column: 9, scope: !3426)
!3430 = !DILocation(line: 940, column: 7, scope: !3426)
!3431 = !DILocation(line: 941, column: 7, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3426, file: !3, line: 941, column: 7)
!3433 = !DILocation(line: 941, column: 11, scope: !3432)
!3434 = !DILocation(line: 941, column: 7, scope: !3426)
!3435 = !DILocation(line: 942, column: 27, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3432, file: !3, line: 941, column: 16)
!3437 = !DILocation(line: 942, column: 33, scope: !3436)
!3438 = !DILocation(line: 942, column: 39, scope: !3436)
!3439 = !DILocation(line: 942, column: 4, scope: !3436)
!3440 = !DILocation(line: 943, column: 4, scope: !3436)
!3441 = !DILocation(line: 945, column: 2, scope: !3426)
!3442 = !DILocation(line: 947, column: 17, scope: !3415)
!3443 = !DILocation(line: 947, column: 2, scope: !3415)
!3444 = !DILocation(line: 952, column: 33, scope: !3415)
!3445 = !DILocation(line: 952, column: 8, scope: !3415)
!3446 = !DILocation(line: 952, column: 6, scope: !3415)
!3447 = !DILocation(line: 954, column: 19, scope: !3415)
!3448 = !DILocation(line: 954, column: 2, scope: !3415)
!3449 = !DILocation(line: 967, column: 6, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !3415, file: !3, line: 967, column: 6)
!3451 = !DILocation(line: 967, column: 12, scope: !3450)
!3452 = !DILocation(line: 967, column: 17, scope: !3450)
!3453 = !DILocation(line: 967, column: 6, scope: !3415)
!3454 = !DILocation(line: 968, column: 24, scope: !3450)
!3455 = !DILocation(line: 968, column: 30, scope: !3450)
!3456 = !DILocation(line: 968, column: 36, scope: !3450)
!3457 = !DILocation(line: 968, column: 3, scope: !3450)
!3458 = !DILocation(line: 967, column: 19, scope: !3450)
!3459 = !DILabel(scope: !3415, name: "out", file: !3, line: 970)
!3460 = !DILocation(line: 970, column: 1, scope: !3415)
!3461 = !DILocation(line: 971, column: 6, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !3415, file: !3, line: 971, column: 6)
!3463 = !DILocation(line: 971, column: 6, scope: !3415)
!3464 = !DILocation(line: 972, column: 19, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3462, file: !3, line: 971, column: 11)
!3466 = !DILocation(line: 972, column: 3, scope: !3465)
!3467 = !DILocation(line: 974, column: 18, scope: !3465)
!3468 = !DILocation(line: 974, column: 3, scope: !3465)
!3469 = !DILocation(line: 975, column: 18, scope: !3465)
!3470 = !DILocation(line: 975, column: 3, scope: !3465)
!3471 = !DILocation(line: 976, column: 17, scope: !3465)
!3472 = !DILocation(line: 976, column: 3, scope: !3465)
!3473 = !DILocation(line: 977, column: 20, scope: !3465)
!3474 = !DILocation(line: 977, column: 3, scope: !3465)
!3475 = !DILocation(line: 978, column: 2, scope: !3465)
!3476 = !DILocation(line: 979, column: 1, scope: !3415)
!3477 = distinct !DISubprogram(name: "mmc_sdio_pre_suspend", scope: !3, file: !3, line: 986, type: !2043, scopeLine: 987, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!3478 = !DILocalVariable(name: "host", arg: 1, scope: !3477, file: !3, line: 986, type: !106)
!3479 = !DILocation(line: 986, column: 50, scope: !3477)
!3480 = !DILocalVariable(name: "i", scope: !3477, file: !3, line: 988, type: !92)
!3481 = !DILocation(line: 988, column: 6, scope: !3477)
!3482 = !DILocalVariable(name: "err", scope: !3477, file: !3, line: 988, type: !92)
!3483 = !DILocation(line: 988, column: 9, scope: !3477)
!3484 = !DILocation(line: 990, column: 9, scope: !3485)
!3485 = distinct !DILexicalBlock(scope: !3477, file: !3, line: 990, column: 2)
!3486 = !DILocation(line: 990, column: 7, scope: !3485)
!3487 = !DILocation(line: 990, column: 14, scope: !3488)
!3488 = distinct !DILexicalBlock(scope: !3485, file: !3, line: 990, column: 2)
!3489 = !DILocation(line: 990, column: 18, scope: !3488)
!3490 = !DILocation(line: 990, column: 24, scope: !3488)
!3491 = !DILocation(line: 990, column: 30, scope: !3488)
!3492 = !DILocation(line: 990, column: 16, scope: !3488)
!3493 = !DILocation(line: 990, column: 2, scope: !3485)
!3494 = !DILocalVariable(name: "func", scope: !3495, file: !3, line: 991, type: !2413)
!3495 = distinct !DILexicalBlock(scope: !3488, file: !3, line: 990, column: 47)
!3496 = !DILocation(line: 991, column: 21, scope: !3495)
!3497 = !DILocation(line: 991, column: 28, scope: !3495)
!3498 = !DILocation(line: 991, column: 34, scope: !3495)
!3499 = !DILocation(line: 991, column: 40, scope: !3495)
!3500 = !DILocation(line: 991, column: 50, scope: !3495)
!3501 = !DILocation(line: 992, column: 7, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3495, file: !3, line: 992, column: 7)
!3503 = !DILocation(line: 992, column: 12, scope: !3502)
!3504 = !DILocation(line: 992, column: 15, scope: !3502)
!3505 = !DILocation(line: 992, column: 39, scope: !3502)
!3506 = !DILocation(line: 992, column: 42, scope: !3502)
!3507 = !DILocation(line: 992, column: 48, scope: !3502)
!3508 = !DILocation(line: 992, column: 52, scope: !3502)
!3509 = !DILocation(line: 992, column: 7, scope: !3495)
!3510 = !DILocalVariable(name: "pmops", scope: !3511, file: !3, line: 993, type: !1612)
!3511 = distinct !DILexicalBlock(scope: !3502, file: !3, line: 992, column: 60)
!3512 = !DILocation(line: 993, column: 29, scope: !3511)
!3513 = !DILocation(line: 993, column: 37, scope: !3511)
!3514 = !DILocation(line: 993, column: 43, scope: !3511)
!3515 = !DILocation(line: 993, column: 47, scope: !3511)
!3516 = !DILocation(line: 993, column: 55, scope: !3511)
!3517 = !DILocation(line: 994, column: 9, scope: !3518)
!3518 = distinct !DILexicalBlock(scope: !3511, file: !3, line: 994, column: 8)
!3519 = !DILocation(line: 994, column: 15, scope: !3518)
!3520 = !DILocation(line: 994, column: 19, scope: !3518)
!3521 = !DILocation(line: 994, column: 26, scope: !3518)
!3522 = !DILocation(line: 994, column: 34, scope: !3518)
!3523 = !DILocation(line: 994, column: 38, scope: !3518)
!3524 = !DILocation(line: 994, column: 45, scope: !3518)
!3525 = !DILocation(line: 994, column: 8, scope: !3511)
!3526 = !DILocation(line: 996, column: 9, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !3518, file: !3, line: 994, column: 53)
!3528 = !DILocation(line: 997, column: 5, scope: !3527)
!3529 = !DILocation(line: 999, column: 3, scope: !3511)
!3530 = !DILocation(line: 1000, column: 2, scope: !3495)
!3531 = !DILocation(line: 990, column: 43, scope: !3488)
!3532 = !DILocation(line: 990, column: 2, scope: !3488)
!3533 = distinct !{!3533, !3493, !3534}
!3534 = !DILocation(line: 1000, column: 2, scope: !3485)
!3535 = !DILocation(line: 1002, column: 9, scope: !3477)
!3536 = !DILocation(line: 1002, column: 2, scope: !3477)
!3537 = distinct !DISubprogram(name: "mmc_sdio_suspend", scope: !3, file: !3, line: 1008, type: !2043, scopeLine: 1009, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!3538 = !DILocalVariable(name: "host", arg: 1, scope: !3537, file: !3, line: 1008, type: !106)
!3539 = !DILocation(line: 1008, column: 46, scope: !3537)
!3540 = !DILocalVariable(name: "__ret_warn_on", scope: !3541, file: !3, line: 1010, type: !92)
!3541 = distinct !DILexicalBlock(scope: !3537, file: !3, line: 1010, column: 2)
!3542 = !DILocation(line: 1010, column: 2, scope: !3541)
!3543 = !DILocation(line: 0, scope: !3541)
!3544 = !DILocation(line: 1010, column: 2, scope: !3545)
!3545 = distinct !DILexicalBlock(scope: !3541, file: !3, line: 1010, column: 2)
!3546 = !DILocation(line: 1010, column: 2, scope: !3547)
!3547 = distinct !DILexicalBlock(scope: !3545, file: !3, line: 1010, column: 2)
!3548 = !DILocation(line: 1010, column: 2, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3547, file: !3, line: 1010, column: 2)
!3550 = !DILocation(line: 1010, column: 2, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3547, file: !3, line: 1010, column: 2)
!3552 = !{i32 -2143558420, i32 -2143558391, i32 -2143558345, i32 -2143558287, i32 -2143558233, i32 -2143558179, i32 -2143558124, i32 -2143558093}
!3553 = !DILocation(line: 1010, column: 2, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3547, file: !3, line: 1010, column: 2)
!3555 = !{i32 -2143557687, i32 -2143557680, i32 -2143557628, i32 -2143557597, i32 -2143557567}
!3556 = !DILocation(line: 1010, column: 2, scope: !3557)
!3557 = distinct !DILexicalBlock(scope: !3547, file: !3, line: 1010, column: 2)
!3558 = !DILocation(line: 1013, column: 2, scope: !3537)
!3559 = !DILocation(line: 1014, column: 28, scope: !3537)
!3560 = !DILocation(line: 1014, column: 34, scope: !3537)
!3561 = !DILocation(line: 1014, column: 2, scope: !3537)
!3562 = !DILocation(line: 1016, column: 17, scope: !3537)
!3563 = !DILocation(line: 1016, column: 2, scope: !3537)
!3564 = !DILocation(line: 1018, column: 26, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3537, file: !3, line: 1018, column: 6)
!3566 = !DILocation(line: 1018, column: 6, scope: !3565)
!3567 = !DILocation(line: 1018, column: 32, scope: !3565)
!3568 = !DILocation(line: 1018, column: 58, scope: !3565)
!3569 = !DILocation(line: 1018, column: 35, scope: !3565)
!3570 = !DILocation(line: 1018, column: 6, scope: !3537)
!3571 = !DILocation(line: 1019, column: 25, scope: !3565)
!3572 = !DILocation(line: 1019, column: 31, scope: !3565)
!3573 = !DILocation(line: 1019, column: 3, scope: !3565)
!3574 = !DILocation(line: 1021, column: 27, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3537, file: !3, line: 1021, column: 6)
!3576 = !DILocation(line: 1021, column: 7, scope: !3575)
!3577 = !DILocation(line: 1021, column: 6, scope: !3537)
!3578 = !DILocation(line: 1022, column: 17, scope: !3579)
!3579 = distinct !DILexicalBlock(scope: !3575, file: !3, line: 1021, column: 34)
!3580 = !DILocation(line: 1022, column: 3, scope: !3579)
!3581 = !DILocation(line: 1023, column: 2, scope: !3579)
!3582 = !DILocation(line: 1023, column: 13, scope: !3583)
!3583 = distinct !DILexicalBlock(scope: !3575, file: !3, line: 1023, column: 13)
!3584 = !DILocation(line: 1023, column: 19, scope: !3583)
!3585 = !DILocation(line: 1023, column: 13, scope: !3575)
!3586 = !DILocation(line: 1024, column: 25, scope: !3587)
!3587 = distinct !DILexicalBlock(scope: !3583, file: !3, line: 1023, column: 34)
!3588 = !DILocation(line: 1024, column: 3, scope: !3587)
!3589 = !DILocation(line: 1025, column: 21, scope: !3587)
!3590 = !DILocation(line: 1025, column: 3, scope: !3587)
!3591 = !DILocation(line: 1026, column: 2, scope: !3587)
!3592 = !DILocation(line: 1028, column: 19, scope: !3537)
!3593 = !DILocation(line: 1028, column: 2, scope: !3537)
!3594 = !DILocation(line: 1030, column: 2, scope: !3537)
!3595 = distinct !DISubprogram(name: "mmc_sdio_resume", scope: !3, file: !3, line: 1033, type: !2043, scopeLine: 1034, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!3596 = !DILocalVariable(name: "host", arg: 1, scope: !3595, file: !3, line: 1033, type: !106)
!3597 = !DILocation(line: 1033, column: 45, scope: !3595)
!3598 = !DILocalVariable(name: "err", scope: !3595, file: !3, line: 1035, type: !92)
!3599 = !DILocation(line: 1035, column: 6, scope: !3595)
!3600 = !DILocation(line: 1038, column: 17, scope: !3595)
!3601 = !DILocation(line: 1038, column: 2, scope: !3595)
!3602 = !DILocation(line: 1045, column: 27, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3595, file: !3, line: 1045, column: 6)
!3604 = !DILocation(line: 1045, column: 7, scope: !3603)
!3605 = !DILocation(line: 1045, column: 6, scope: !3595)
!3606 = !DILocation(line: 1046, column: 16, scope: !3607)
!3607 = distinct !DILexicalBlock(scope: !3603, file: !3, line: 1045, column: 34)
!3608 = !DILocation(line: 1046, column: 22, scope: !3607)
!3609 = !DILocation(line: 1046, column: 28, scope: !3607)
!3610 = !DILocation(line: 1046, column: 34, scope: !3607)
!3611 = !DILocation(line: 1046, column: 3, scope: !3607)
!3612 = !DILocation(line: 1053, column: 7, scope: !3613)
!3613 = distinct !DILexicalBlock(scope: !3607, file: !3, line: 1053, column: 7)
!3614 = !DILocation(line: 1053, column: 13, scope: !3613)
!3615 = !DILocation(line: 1053, column: 18, scope: !3613)
!3616 = !DILocation(line: 1053, column: 7, scope: !3607)
!3617 = !DILocation(line: 1054, column: 24, scope: !3618)
!3618 = distinct !DILexicalBlock(scope: !3613, file: !3, line: 1053, column: 44)
!3619 = !DILocation(line: 1054, column: 30, scope: !3618)
!3620 = !DILocation(line: 1054, column: 36, scope: !3618)
!3621 = !DILocation(line: 1054, column: 4, scope: !3618)
!3622 = !DILocation(line: 1055, column: 27, scope: !3618)
!3623 = !DILocation(line: 1055, column: 33, scope: !3618)
!3624 = !DILocation(line: 1055, column: 39, scope: !3618)
!3625 = !DILocation(line: 1055, column: 4, scope: !3618)
!3626 = !DILocation(line: 1056, column: 23, scope: !3618)
!3627 = !DILocation(line: 1056, column: 29, scope: !3618)
!3628 = !DILocation(line: 1056, column: 35, scope: !3618)
!3629 = !DILocation(line: 1056, column: 4, scope: !3618)
!3630 = !DILocation(line: 1057, column: 3, scope: !3618)
!3631 = !DILocation(line: 1058, column: 30, scope: !3607)
!3632 = !DILocation(line: 1058, column: 9, scope: !3607)
!3633 = !DILocation(line: 1058, column: 7, scope: !3607)
!3634 = !DILocation(line: 1059, column: 2, scope: !3607)
!3635 = !DILocation(line: 1059, column: 36, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !3603, file: !3, line: 1059, column: 13)
!3637 = !DILocation(line: 1059, column: 13, scope: !3636)
!3638 = !DILocation(line: 1059, column: 13, scope: !3603)
!3639 = !DILocation(line: 1061, column: 30, scope: !3640)
!3640 = distinct !DILexicalBlock(scope: !3636, file: !3, line: 1059, column: 43)
!3641 = !DILocation(line: 1061, column: 36, scope: !3640)
!3642 = !DILocation(line: 1061, column: 9, scope: !3640)
!3643 = !DILocation(line: 1061, column: 7, scope: !3640)
!3644 = !DILocation(line: 1062, column: 2, scope: !3640)
!3645 = !DILocation(line: 1064, column: 6, scope: !3646)
!3646 = distinct !DILexicalBlock(scope: !3595, file: !3, line: 1064, column: 6)
!3647 = !DILocation(line: 1064, column: 6, scope: !3595)
!3648 = !DILocation(line: 1065, column: 3, scope: !3646)
!3649 = !DILocation(line: 1068, column: 2, scope: !3595)
!3650 = !DILocation(line: 1070, column: 6, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3595, file: !3, line: 1070, column: 6)
!3652 = !DILocation(line: 1070, column: 12, scope: !3651)
!3653 = !DILocation(line: 1070, column: 6, scope: !3595)
!3654 = !DILocation(line: 1071, column: 9, scope: !3655)
!3655 = distinct !DILexicalBlock(scope: !3656, file: !3, line: 1071, column: 7)
!3656 = distinct !DILexicalBlock(scope: !3651, file: !3, line: 1070, column: 23)
!3657 = !DILocation(line: 1071, column: 15, scope: !3655)
!3658 = !DILocation(line: 1071, column: 21, scope: !3655)
!3659 = !DILocation(line: 1071, column: 7, scope: !3656)
!3660 = !DILocation(line: 1072, column: 20, scope: !3655)
!3661 = !DILocation(line: 1072, column: 26, scope: !3655)
!3662 = !DILocation(line: 1072, column: 4, scope: !3655)
!3663 = !DILocation(line: 1073, column: 12, scope: !3664)
!3664 = distinct !DILexicalBlock(scope: !3655, file: !3, line: 1073, column: 12)
!3665 = !DILocation(line: 1073, column: 18, scope: !3664)
!3666 = !DILocation(line: 1073, column: 23, scope: !3664)
!3667 = !DILocation(line: 1073, column: 12, scope: !3655)
!3668 = !DILocation(line: 1074, column: 23, scope: !3664)
!3669 = !DILocation(line: 1074, column: 35, scope: !3664)
!3670 = !DILocation(line: 1074, column: 41, scope: !3664)
!3671 = !DILocation(line: 1074, column: 4, scope: !3664)
!3672 = !DILocation(line: 1075, column: 2, scope: !3656)
!3673 = !DILabel(scope: !3595, name: "out", file: !3, line: 1077)
!3674 = !DILocation(line: 1077, column: 1, scope: !3595)
!3675 = !DILocation(line: 1078, column: 19, scope: !3595)
!3676 = !DILocation(line: 1078, column: 2, scope: !3595)
!3677 = !DILocation(line: 1080, column: 2, scope: !3595)
!3678 = !DILocation(line: 1080, column: 8, scope: !3595)
!3679 = !DILocation(line: 1080, column: 17, scope: !3595)
!3680 = !DILocation(line: 1081, column: 9, scope: !3595)
!3681 = !DILocation(line: 1081, column: 2, scope: !3595)
!3682 = distinct !DISubprogram(name: "mmc_sdio_runtime_suspend", scope: !3, file: !3, line: 1084, type: !2043, scopeLine: 1085, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!3683 = !DILocalVariable(name: "host", arg: 1, scope: !3682, file: !3, line: 1084, type: !106)
!3684 = !DILocation(line: 1084, column: 54, scope: !3682)
!3685 = !DILocation(line: 1087, column: 17, scope: !3682)
!3686 = !DILocation(line: 1087, column: 2, scope: !3682)
!3687 = !DILocation(line: 1088, column: 16, scope: !3682)
!3688 = !DILocation(line: 1088, column: 2, scope: !3682)
!3689 = !DILocation(line: 1089, column: 19, scope: !3682)
!3690 = !DILocation(line: 1089, column: 2, scope: !3682)
!3691 = !DILocation(line: 1091, column: 2, scope: !3682)
!3692 = distinct !DISubprogram(name: "mmc_sdio_runtime_resume", scope: !3, file: !3, line: 1094, type: !2043, scopeLine: 1095, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!3693 = !DILocalVariable(name: "host", arg: 1, scope: !3692, file: !3, line: 1094, type: !106)
!3694 = !DILocation(line: 1094, column: 53, scope: !3692)
!3695 = !DILocalVariable(name: "ret", scope: !3692, file: !3, line: 1096, type: !92)
!3696 = !DILocation(line: 1096, column: 6, scope: !3692)
!3697 = !DILocation(line: 1099, column: 17, scope: !3692)
!3698 = !DILocation(line: 1099, column: 2, scope: !3692)
!3699 = !DILocation(line: 1100, column: 15, scope: !3692)
!3700 = !DILocation(line: 1100, column: 21, scope: !3692)
!3701 = !DILocation(line: 1100, column: 27, scope: !3692)
!3702 = !DILocation(line: 1100, column: 33, scope: !3692)
!3703 = !DILocation(line: 1100, column: 2, scope: !3692)
!3704 = !DILocation(line: 1101, column: 29, scope: !3692)
!3705 = !DILocation(line: 1101, column: 8, scope: !3692)
!3706 = !DILocation(line: 1101, column: 6, scope: !3692)
!3707 = !DILocation(line: 1102, column: 19, scope: !3692)
!3708 = !DILocation(line: 1102, column: 2, scope: !3692)
!3709 = !DILocation(line: 1104, column: 9, scope: !3692)
!3710 = !DILocation(line: 1104, column: 2, scope: !3692)
!3711 = distinct !DISubprogram(name: "mmc_sdio_alive", scope: !3, file: !3, line: 926, type: !2043, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!3712 = !DILocalVariable(name: "host", arg: 1, scope: !3711, file: !3, line: 926, type: !106)
!3713 = !DILocation(line: 926, column: 44, scope: !3711)
!3714 = !DILocation(line: 928, column: 25, scope: !3711)
!3715 = !DILocation(line: 928, column: 31, scope: !3711)
!3716 = !DILocation(line: 928, column: 9, scope: !3711)
!3717 = !DILocation(line: 928, column: 2, scope: !3711)
!3718 = distinct !DISubprogram(name: "mmc_sdio_hw_reset", scope: !3, file: !3, line: 1113, type: !2043, scopeLine: 1114, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!3719 = !DILocalVariable(name: "v", arg: 1, scope: !3720, file: !3190, line: 23, type: !3723)
!3720 = distinct !DISubprogram(name: "arch_atomic_read", scope: !3190, file: !3190, line: 23, type: !3721, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!92, !3723}
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !316)
!3725 = !DILocation(line: 23, column: 61, scope: !3720, inlinedAt: !3726)
!3726 = distinct !DILocation(line: 28, column: 9, scope: !3727, inlinedAt: !3728)
!3727 = distinct !DISubprogram(name: "atomic_read", scope: !3197, file: !3197, line: 25, type: !3721, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!3728 = distinct !DILocation(line: 1122, column: 6, scope: !3729)
!3729 = distinct !DILexicalBlock(scope: !3718, file: !3, line: 1122, column: 6)
!3730 = !DILocalVariable(name: "v", arg: 1, scope: !3731, file: !3201, line: 69, type: !3204)
!3731 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !3201, file: !3201, line: 69, type: !3202, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!3732 = !DILocation(line: 69, column: 73, scope: !3731, inlinedAt: !3733)
!3733 = distinct !DILocation(line: 27, column: 2, scope: !3727, inlinedAt: !3728)
!3734 = !DILocalVariable(name: "size", arg: 2, scope: !3731, file: !3201, line: 69, type: !224)
!3735 = !DILocation(line: 69, column: 83, scope: !3731, inlinedAt: !3733)
!3736 = !DILocalVariable(name: "v", arg: 1, scope: !3727, file: !3197, line: 25, type: !3723)
!3737 = !DILocation(line: 25, column: 29, scope: !3727, inlinedAt: !3728)
!3738 = !DILocalVariable(name: "host", arg: 1, scope: !3718, file: !3, line: 1113, type: !106)
!3739 = !DILocation(line: 1113, column: 47, scope: !3718)
!3740 = !DILocalVariable(name: "card", scope: !3718, file: !3, line: 1115, type: !101)
!3741 = !DILocation(line: 1115, column: 19, scope: !3718)
!3742 = !DILocation(line: 1115, column: 26, scope: !3718)
!3743 = !DILocation(line: 1115, column: 32, scope: !3718)
!3744 = !DILocation(line: 1122, column: 19, scope: !3729)
!3745 = !DILocation(line: 1122, column: 25, scope: !3729)
!3746 = !DILocation(line: 27, column: 25, scope: !3727, inlinedAt: !3728)
!3747 = !DILocation(line: 71, column: 19, scope: !3731, inlinedAt: !3733)
!3748 = !DILocation(line: 71, column: 22, scope: !3731, inlinedAt: !3733)
!3749 = !DILocation(line: 71, column: 2, scope: !3731, inlinedAt: !3733)
!3750 = !DILocation(line: 72, column: 2, scope: !3731, inlinedAt: !3733)
!3751 = !DILocation(line: 28, column: 26, scope: !3727, inlinedAt: !3728)
!3752 = !DILocation(line: 29, column: 9, scope: !3720, inlinedAt: !3726)
!3753 = !DILocation(line: 1122, column: 44, scope: !3729)
!3754 = !DILocation(line: 1122, column: 6, scope: !3718)
!3755 = !DILocation(line: 1123, column: 7, scope: !3756)
!3756 = distinct !DILexicalBlock(scope: !3757, file: !3, line: 1123, column: 7)
!3757 = distinct !DILexicalBlock(scope: !3729, file: !3, line: 1122, column: 49)
!3758 = !DILocation(line: 1123, column: 7, scope: !3757)
!3759 = !DILocation(line: 1124, column: 4, scope: !3756)
!3760 = !DILocation(line: 1125, column: 3, scope: !3757)
!3761 = !DILocation(line: 1125, column: 9, scope: !3757)
!3762 = !DILocation(line: 1125, column: 24, scope: !3757)
!3763 = !DILocation(line: 1126, column: 3, scope: !3757)
!3764 = !DILocation(line: 1127, column: 22, scope: !3757)
!3765 = !DILocation(line: 1127, column: 3, scope: !3757)
!3766 = !DILocation(line: 1128, column: 3, scope: !3757)
!3767 = !DILocation(line: 1135, column: 18, scope: !3718)
!3768 = !DILocation(line: 1135, column: 24, scope: !3718)
!3769 = !DILocation(line: 1135, column: 30, scope: !3718)
!3770 = !DILocation(line: 1135, column: 2, scope: !3718)
!3771 = !DILocation(line: 1136, column: 30, scope: !3718)
!3772 = !DILocation(line: 1136, column: 9, scope: !3718)
!3773 = !DILocation(line: 1136, column: 2, scope: !3718)
!3774 = !DILocation(line: 1137, column: 1, scope: !3718)
!3775 = distinct !DISubprogram(name: "mmc_sdio_sw_reset", scope: !3, file: !3, line: 1139, type: !2043, scopeLine: 1140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!3776 = !DILocalVariable(name: "host", arg: 1, scope: !3775, file: !3, line: 1139, type: !106)
!3777 = !DILocation(line: 1139, column: 47, scope: !3775)
!3778 = !DILocation(line: 1141, column: 16, scope: !3775)
!3779 = !DILocation(line: 1141, column: 22, scope: !3775)
!3780 = !DILocation(line: 1141, column: 28, scope: !3775)
!3781 = !DILocation(line: 1141, column: 2, scope: !3775)
!3782 = !DILocation(line: 1142, column: 13, scope: !3775)
!3783 = !DILocation(line: 1142, column: 2, scope: !3775)
!3784 = !DILocation(line: 1143, column: 14, scope: !3775)
!3785 = !DILocation(line: 1143, column: 2, scope: !3775)
!3786 = !DILocation(line: 1145, column: 24, scope: !3775)
!3787 = !DILocation(line: 1145, column: 2, scope: !3775)
!3788 = !DILocation(line: 1146, column: 33, scope: !3775)
!3789 = !DILocation(line: 1146, column: 2, scope: !3775)
!3790 = !DILocation(line: 1148, column: 30, scope: !3775)
!3791 = !DILocation(line: 1148, column: 9, scope: !3775)
!3792 = !DILocation(line: 1148, column: 2, scope: !3775)
!3793 = distinct !DISubprogram(name: "pm_runtime_get_sync", scope: !3187, file: !3187, line: 384, type: !1618, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!3794 = !DILocalVariable(name: "dev", arg: 1, scope: !3793, file: !3187, line: 384, type: !111)
!3795 = !DILocation(line: 384, column: 54, scope: !3793)
!3796 = !DILocation(line: 386, column: 29, scope: !3793)
!3797 = !DILocation(line: 386, column: 9, scope: !3793)
!3798 = !DILocation(line: 386, column: 2, scope: !3793)
!3799 = distinct !DISubprogram(name: "pm_runtime_put_noidle", scope: !3187, file: !3187, line: 103, type: !1609, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!3800 = !DILocalVariable(name: "v", arg: 1, scope: !3801, file: !3190, line: 200, type: !3193)
!3801 = distinct !DISubprogram(name: "arch_atomic_try_cmpxchg", scope: !3190, file: !3190, line: 200, type: !3802, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{!999, !3193, !93, !92}
!3804 = !DILocation(line: 200, column: 63, scope: !3801, inlinedAt: !3805)
!3805 = distinct !DILocation(line: 1093, column: 12, scope: !3806, inlinedAt: !3810)
!3806 = distinct !DISubprogram(name: "arch_atomic_fetch_add_unless", scope: !3807, file: !3807, line: 1086, type: !3808, scopeLine: 1087, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!3807 = !DIFile(filename: "./include/linux/atomic-arch-fallback.h", directory: "/home/lizy2001/genbc/linux")
!3808 = !DISubroutineType(types: !3809)
!3809 = !{!92, !3193, !92, !92}
!3810 = distinct !DILocation(line: 1113, column: 9, scope: !3811, inlinedAt: !3814)
!3811 = distinct !DISubprogram(name: "arch_atomic_add_unless", scope: !3807, file: !3807, line: 1111, type: !3812, scopeLine: 1112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!3812 = !DISubroutineType(types: !3813)
!3813 = !{!999, !3193, !92, !92}
!3814 = distinct !DILocation(line: 789, column: 9, scope: !3815, inlinedAt: !3816)
!3815 = distinct !DISubprogram(name: "atomic_add_unless", scope: !3197, file: !3197, line: 786, type: !3812, scopeLine: 787, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!3816 = distinct !DILocation(line: 105, column: 2, scope: !3799)
!3817 = !DILocalVariable(name: "old", arg: 2, scope: !3801, file: !3190, line: 200, type: !93)
!3818 = !DILocation(line: 200, column: 71, scope: !3801, inlinedAt: !3805)
!3819 = !DILocalVariable(name: "new", arg: 3, scope: !3801, file: !3190, line: 200, type: !92)
!3820 = !DILocation(line: 200, column: 80, scope: !3801, inlinedAt: !3805)
!3821 = !DILocalVariable(name: "success", scope: !3822, file: !3190, line: 202, type: !999)
!3822 = distinct !DILexicalBlock(scope: !3801, file: !3190, line: 202, column: 9)
!3823 = !DILocation(line: 202, column: 9, scope: !3822, inlinedAt: !3805)
!3824 = !DILocalVariable(name: "_old", scope: !3822, file: !3190, line: 202, type: !93)
!3825 = !DILocalVariable(name: "__old", scope: !3822, file: !3190, line: 202, type: !92)
!3826 = !DILocalVariable(name: "__new", scope: !3822, file: !3190, line: 202, type: !92)
!3827 = !DILocalVariable(name: "__ptr", scope: !3822, file: !3190, line: 202, type: !94)
!3828 = !DILocation(line: 23, column: 61, scope: !3720, inlinedAt: !3829)
!3829 = distinct !DILocation(line: 1088, column: 10, scope: !3806, inlinedAt: !3810)
!3830 = !DILocalVariable(name: "v", arg: 1, scope: !3806, file: !3807, line: 1086, type: !3193)
!3831 = !DILocation(line: 1086, column: 40, scope: !3806, inlinedAt: !3810)
!3832 = !DILocalVariable(name: "a", arg: 2, scope: !3806, file: !3807, line: 1086, type: !92)
!3833 = !DILocation(line: 1086, column: 47, scope: !3806, inlinedAt: !3810)
!3834 = !DILocalVariable(name: "u", arg: 3, scope: !3806, file: !3807, line: 1086, type: !92)
!3835 = !DILocation(line: 1086, column: 54, scope: !3806, inlinedAt: !3810)
!3836 = !DILocalVariable(name: "c", scope: !3806, file: !3807, line: 1088, type: !92)
!3837 = !DILocation(line: 1088, column: 6, scope: !3806, inlinedAt: !3810)
!3838 = !DILocalVariable(name: "v", arg: 1, scope: !3811, file: !3807, line: 1111, type: !3193)
!3839 = !DILocation(line: 1111, column: 34, scope: !3811, inlinedAt: !3814)
!3840 = !DILocalVariable(name: "a", arg: 2, scope: !3811, file: !3807, line: 1111, type: !92)
!3841 = !DILocation(line: 1111, column: 41, scope: !3811, inlinedAt: !3814)
!3842 = !DILocalVariable(name: "u", arg: 3, scope: !3811, file: !3807, line: 1111, type: !92)
!3843 = !DILocation(line: 1111, column: 48, scope: !3811, inlinedAt: !3814)
!3844 = !DILocation(line: 99, column: 79, scope: !3200, inlinedAt: !3845)
!3845 = distinct !DILocation(line: 788, column: 2, scope: !3815, inlinedAt: !3816)
!3846 = !DILocation(line: 99, column: 89, scope: !3200, inlinedAt: !3845)
!3847 = !DILocalVariable(name: "v", arg: 1, scope: !3815, file: !3197, line: 786, type: !3193)
!3848 = !DILocation(line: 786, column: 29, scope: !3815, inlinedAt: !3816)
!3849 = !DILocalVariable(name: "a", arg: 2, scope: !3815, file: !3197, line: 786, type: !92)
!3850 = !DILocation(line: 786, column: 36, scope: !3815, inlinedAt: !3816)
!3851 = !DILocalVariable(name: "u", arg: 3, scope: !3815, file: !3197, line: 786, type: !92)
!3852 = !DILocation(line: 786, column: 43, scope: !3815, inlinedAt: !3816)
!3853 = !DILocalVariable(name: "dev", arg: 1, scope: !3799, file: !3187, line: 103, type: !111)
!3854 = !DILocation(line: 103, column: 57, scope: !3799)
!3855 = !DILocation(line: 105, column: 21, scope: !3799)
!3856 = !DILocation(line: 105, column: 26, scope: !3799)
!3857 = !DILocation(line: 105, column: 32, scope: !3799)
!3858 = !DILocation(line: 788, column: 31, scope: !3815, inlinedAt: !3816)
!3859 = !DILocation(line: 101, column: 20, scope: !3200, inlinedAt: !3845)
!3860 = !DILocation(line: 101, column: 23, scope: !3200, inlinedAt: !3845)
!3861 = !DILocation(line: 101, column: 2, scope: !3200, inlinedAt: !3845)
!3862 = !DILocation(line: 102, column: 2, scope: !3200, inlinedAt: !3845)
!3863 = !DILocation(line: 789, column: 32, scope: !3815, inlinedAt: !3816)
!3864 = !DILocation(line: 789, column: 35, scope: !3815, inlinedAt: !3816)
!3865 = !DILocation(line: 789, column: 38, scope: !3815, inlinedAt: !3816)
!3866 = !DILocation(line: 1113, column: 38, scope: !3811, inlinedAt: !3814)
!3867 = !DILocation(line: 1113, column: 41, scope: !3811, inlinedAt: !3814)
!3868 = !DILocation(line: 1113, column: 44, scope: !3811, inlinedAt: !3814)
!3869 = !DILocation(line: 1088, column: 27, scope: !3806, inlinedAt: !3810)
!3870 = !DILocation(line: 29, column: 9, scope: !3720, inlinedAt: !3829)
!3871 = !DILocation(line: 1090, column: 2, scope: !3806, inlinedAt: !3810)
!3872 = !DILocation(line: 1091, column: 7, scope: !3873, inlinedAt: !3810)
!3873 = distinct !DILexicalBlock(scope: !3874, file: !3807, line: 1091, column: 7)
!3874 = distinct !DILexicalBlock(scope: !3806, file: !3807, line: 1090, column: 5)
!3875 = !DILocation(line: 1091, column: 7, scope: !3874, inlinedAt: !3810)
!3876 = !DILocation(line: 1092, column: 4, scope: !3873, inlinedAt: !3810)
!3877 = !DILocation(line: 1093, column: 36, scope: !3806, inlinedAt: !3810)
!3878 = !DILocation(line: 1093, column: 43, scope: !3806, inlinedAt: !3810)
!3879 = !DILocation(line: 1093, column: 47, scope: !3806, inlinedAt: !3810)
!3880 = !DILocation(line: 1093, column: 45, scope: !3806, inlinedAt: !3810)
!3881 = !{i32 -2146590171, i32 -2146590016}
!3882 = !DILocation(line: 202, column: 9, scope: !3883, inlinedAt: !3805)
!3883 = distinct !DILexicalBlock(scope: !3822, file: !3190, line: 202, column: 9)
!3884 = !DILocation(line: 202, column: 9, scope: !3801, inlinedAt: !3805)
!3885 = !DILocation(line: 1093, column: 11, scope: !3806, inlinedAt: !3810)
!3886 = !DILocation(line: 1093, column: 2, scope: !3874, inlinedAt: !3810)
!3887 = distinct !{!3887, !3871, !3888}
!3888 = !DILocation(line: 1093, column: 49, scope: !3806, inlinedAt: !3810)
!3889 = !DILocation(line: 1095, column: 9, scope: !3806, inlinedAt: !3810)
!3890 = !DILocation(line: 1113, column: 50, scope: !3811, inlinedAt: !3814)
!3891 = !DILocation(line: 1113, column: 47, scope: !3811, inlinedAt: !3814)
!3892 = !DILocation(line: 106, column: 1, scope: !3799)
!3893 = distinct !DISubprogram(name: "pm_runtime_put_sync", scope: !3187, file: !3187, line: 448, type: !1618, scopeLine: 449, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!3894 = !DILocalVariable(name: "dev", arg: 1, scope: !3893, file: !3187, line: 448, type: !111)
!3895 = !DILocation(line: 448, column: 54, scope: !3893)
!3896 = !DILocation(line: 450, column: 27, scope: !3893)
!3897 = !DILocation(line: 450, column: 9, scope: !3893)
!3898 = !DILocation(line: 450, column: 2, scope: !3893)
!3899 = distinct !DISubprogram(name: "kasan_check_write", scope: !3900, file: !3900, line: 38, type: !3901, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!3900 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!3901 = !DISubroutineType(types: !3902)
!3902 = !{!999, !3204, !7}
!3903 = !DILocalVariable(name: "p", arg: 1, scope: !3899, file: !3900, line: 38, type: !3204)
!3904 = !DILocation(line: 38, column: 59, scope: !3899)
!3905 = !DILocalVariable(name: "size", arg: 2, scope: !3899, file: !3900, line: 38, type: !7)
!3906 = !DILocation(line: 38, column: 75, scope: !3899)
!3907 = !DILocation(line: 40, column: 2, scope: !3899)
!3908 = distinct !DISubprogram(name: "kcsan_check_access", scope: !3909, file: !3909, line: 178, type: !3910, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!3909 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!3910 = !DISubroutineType(types: !3911)
!3911 = !{null, !3204, !224, !92}
!3912 = !DILocalVariable(name: "ptr", arg: 1, scope: !3908, file: !3909, line: 178, type: !3204)
!3913 = !DILocation(line: 178, column: 60, scope: !3908)
!3914 = !DILocalVariable(name: "size", arg: 2, scope: !3908, file: !3909, line: 178, type: !224)
!3915 = !DILocation(line: 178, column: 72, scope: !3908)
!3916 = !DILocalVariable(name: "type", arg: 3, scope: !3908, file: !3909, line: 179, type: !92)
!3917 = !DILocation(line: 179, column: 15, scope: !3908)
!3918 = !DILocation(line: 179, column: 23, scope: !3908)
!3919 = distinct !DISubprogram(name: "mmc_card_keep_power", scope: !108, file: !108, line: 557, type: !2043, scopeLine: 558, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!3920 = !DILocalVariable(name: "host", arg: 1, scope: !3919, file: !108, line: 557, type: !106)
!3921 = !DILocation(line: 557, column: 56, scope: !3919)
!3922 = !DILocation(line: 559, column: 9, scope: !3919)
!3923 = !DILocation(line: 559, column: 15, scope: !3919)
!3924 = !DILocation(line: 559, column: 24, scope: !3919)
!3925 = !DILocation(line: 559, column: 2, scope: !3919)
!3926 = distinct !DISubprogram(name: "mmc_card_wake_sdio_irq", scope: !108, file: !108, line: 562, type: !2043, scopeLine: 563, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!3927 = !DILocalVariable(name: "host", arg: 1, scope: !3926, file: !108, line: 562, type: !106)
!3928 = !DILocation(line: 562, column: 59, scope: !3926)
!3929 = !DILocation(line: 564, column: 9, scope: !3926)
!3930 = !DILocation(line: 564, column: 15, scope: !3926)
!3931 = !DILocation(line: 564, column: 24, scope: !3926)
!3932 = !DILocation(line: 564, column: 2, scope: !3926)
!3933 = distinct !DISubprogram(name: "sdio_disable_4bit_bus", scope: !3, file: !3, line: 333, type: !3934, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!3934 = !DISubroutineType(types: !3935)
!3935 = !{!92, !101}
!3936 = !DILocalVariable(name: "card", arg: 1, scope: !3933, file: !3, line: 333, type: !101)
!3937 = !DILocation(line: 333, column: 51, scope: !3933)
!3938 = !DILocalVariable(name: "err", scope: !3933, file: !3, line: 335, type: !92)
!3939 = !DILocation(line: 335, column: 6, scope: !3933)
!3940 = !DILocation(line: 337, column: 6, scope: !3941)
!3941 = distinct !DILexicalBlock(scope: !3933, file: !3, line: 337, column: 6)
!3942 = !DILocation(line: 337, column: 12, scope: !3941)
!3943 = !DILocation(line: 337, column: 17, scope: !3941)
!3944 = !DILocation(line: 337, column: 6, scope: !3933)
!3945 = !DILocation(line: 338, column: 3, scope: !3941)
!3946 = !DILocation(line: 340, column: 8, scope: !3947)
!3947 = distinct !DILexicalBlock(scope: !3933, file: !3, line: 340, column: 6)
!3948 = !DILocation(line: 340, column: 14, scope: !3947)
!3949 = !DILocation(line: 340, column: 20, scope: !3947)
!3950 = !DILocation(line: 340, column: 25, scope: !3947)
!3951 = !DILocation(line: 340, column: 6, scope: !3933)
!3952 = !DILocation(line: 341, column: 3, scope: !3947)
!3953 = !DILocation(line: 343, column: 8, scope: !3954)
!3954 = distinct !DILexicalBlock(scope: !3933, file: !3, line: 343, column: 6)
!3955 = !DILocation(line: 343, column: 14, scope: !3954)
!3956 = !DILocation(line: 343, column: 18, scope: !3954)
!3957 = !DILocation(line: 343, column: 29, scope: !3954)
!3958 = !DILocation(line: 343, column: 6, scope: !3933)
!3959 = !DILocation(line: 344, column: 3, scope: !3954)
!3960 = !DILocation(line: 346, column: 30, scope: !3933)
!3961 = !DILocation(line: 346, column: 8, scope: !3933)
!3962 = !DILocation(line: 346, column: 6, scope: !3933)
!3963 = !DILocation(line: 347, column: 6, scope: !3964)
!3964 = distinct !DILexicalBlock(scope: !3933, file: !3, line: 347, column: 6)
!3965 = !DILocation(line: 347, column: 6, scope: !3933)
!3966 = !DILocation(line: 348, column: 10, scope: !3964)
!3967 = !DILocation(line: 348, column: 3, scope: !3964)
!3968 = !DILabel(scope: !3933, name: "out", file: !3, line: 350)
!3969 = !DILocation(line: 350, column: 1, scope: !3933)
!3970 = !DILocation(line: 351, column: 27, scope: !3933)
!3971 = !DILocation(line: 351, column: 9, scope: !3933)
!3972 = !DILocation(line: 351, column: 2, scope: !3933)
!3973 = !DILocation(line: 352, column: 1, scope: !3933)
!3974 = distinct !DISubprogram(name: "mmc_retune_needed", scope: !108, file: !108, line: 583, type: !2052, scopeLine: 584, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!3975 = !DILocalVariable(name: "host", arg: 1, scope: !3974, file: !108, line: 583, type: !106)
!3976 = !DILocation(line: 583, column: 55, scope: !3974)
!3977 = !DILocation(line: 585, column: 6, scope: !3978)
!3978 = distinct !DILexicalBlock(scope: !3974, file: !108, line: 585, column: 6)
!3979 = !DILocation(line: 585, column: 12, scope: !3978)
!3980 = !DILocation(line: 585, column: 6, scope: !3974)
!3981 = !DILocation(line: 586, column: 3, scope: !3978)
!3982 = !DILocation(line: 586, column: 9, scope: !3978)
!3983 = !DILocation(line: 586, column: 21, scope: !3978)
!3984 = !DILocation(line: 587, column: 1, scope: !3974)
!3985 = distinct !DISubprogram(name: "sdio_disable_wide", scope: !3, file: !3, line: 303, type: !3934, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!3986 = !DILocalVariable(name: "card", arg: 1, scope: !3985, file: !3, line: 303, type: !101)
!3987 = !DILocation(line: 303, column: 47, scope: !3985)
!3988 = !DILocalVariable(name: "ret", scope: !3985, file: !3, line: 305, type: !92)
!3989 = !DILocation(line: 305, column: 6, scope: !3985)
!3990 = !DILocalVariable(name: "ctrl", scope: !3985, file: !3, line: 306, type: !567)
!3991 = !DILocation(line: 306, column: 5, scope: !3985)
!3992 = !DILocation(line: 308, column: 8, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !3985, file: !3, line: 308, column: 6)
!3994 = !DILocation(line: 308, column: 14, scope: !3993)
!3995 = !DILocation(line: 308, column: 20, scope: !3993)
!3996 = !DILocation(line: 308, column: 25, scope: !3993)
!3997 = !DILocation(line: 308, column: 6, scope: !3985)
!3998 = !DILocation(line: 309, column: 3, scope: !3993)
!3999 = !DILocation(line: 311, column: 6, scope: !4000)
!4000 = distinct !DILexicalBlock(scope: !3985, file: !3, line: 311, column: 6)
!4001 = !DILocation(line: 311, column: 12, scope: !4000)
!4002 = !DILocation(line: 311, column: 17, scope: !4000)
!4003 = !DILocation(line: 311, column: 27, scope: !4000)
!4004 = !DILocation(line: 311, column: 31, scope: !4000)
!4005 = !DILocation(line: 311, column: 37, scope: !4000)
!4006 = !DILocation(line: 311, column: 42, scope: !4000)
!4007 = !DILocation(line: 311, column: 6, scope: !3985)
!4008 = !DILocation(line: 312, column: 3, scope: !4000)
!4009 = !DILocation(line: 314, column: 25, scope: !3985)
!4010 = !DILocation(line: 314, column: 8, scope: !3985)
!4011 = !DILocation(line: 314, column: 6, scope: !3985)
!4012 = !DILocation(line: 315, column: 6, scope: !4013)
!4013 = distinct !DILexicalBlock(scope: !3985, file: !3, line: 315, column: 6)
!4014 = !DILocation(line: 315, column: 6, scope: !3985)
!4015 = !DILocation(line: 316, column: 10, scope: !4013)
!4016 = !DILocation(line: 316, column: 3, scope: !4013)
!4017 = !DILocation(line: 318, column: 8, scope: !4018)
!4018 = distinct !DILexicalBlock(scope: !3985, file: !3, line: 318, column: 6)
!4019 = !DILocation(line: 318, column: 13, scope: !4018)
!4020 = !DILocation(line: 318, column: 6, scope: !3985)
!4021 = !DILocation(line: 319, column: 3, scope: !4018)
!4022 = !DILocation(line: 321, column: 7, scope: !3985)
!4023 = !DILocation(line: 322, column: 7, scope: !3985)
!4024 = !DILocation(line: 324, column: 25, scope: !3985)
!4025 = !DILocation(line: 324, column: 51, scope: !3985)
!4026 = !DILocation(line: 324, column: 8, scope: !3985)
!4027 = !DILocation(line: 324, column: 6, scope: !3985)
!4028 = !DILocation(line: 325, column: 6, scope: !4029)
!4029 = distinct !DILexicalBlock(scope: !3985, file: !3, line: 325, column: 6)
!4030 = !DILocation(line: 325, column: 6, scope: !3985)
!4031 = !DILocation(line: 326, column: 10, scope: !4029)
!4032 = !DILocation(line: 326, column: 3, scope: !4029)
!4033 = !DILocation(line: 328, column: 20, scope: !3985)
!4034 = !DILocation(line: 328, column: 26, scope: !3985)
!4035 = !DILocation(line: 328, column: 2, scope: !3985)
!4036 = !DILocation(line: 330, column: 2, scope: !3985)
!4037 = !DILocation(line: 331, column: 1, scope: !3985)
!4038 = distinct !DISubprogram(name: "pm_runtime_disable", scope: !3187, file: !3187, line: 524, type: !1609, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!4039 = !DILocalVariable(name: "dev", arg: 1, scope: !4038, file: !3187, line: 524, type: !111)
!4040 = !DILocation(line: 524, column: 54, scope: !4038)
!4041 = !DILocation(line: 526, column: 23, scope: !4038)
!4042 = !DILocation(line: 526, column: 2, scope: !4038)
!4043 = !DILocation(line: 527, column: 1, scope: !4038)
!4044 = distinct !DISubprogram(name: "mmc_sdio_reinit_card", scope: !3, file: !3, line: 894, type: !2043, scopeLine: 895, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!4045 = !DILocalVariable(name: "host", arg: 1, scope: !4044, file: !3, line: 894, type: !106)
!4046 = !DILocation(line: 894, column: 50, scope: !4044)
!4047 = !DILocalVariable(name: "ret", scope: !4044, file: !3, line: 896, type: !92)
!4048 = !DILocation(line: 896, column: 6, scope: !4044)
!4049 = !DILocation(line: 898, column: 26, scope: !4044)
!4050 = !DILocation(line: 898, column: 32, scope: !4044)
!4051 = !DILocation(line: 898, column: 38, scope: !4044)
!4052 = !DILocation(line: 898, column: 44, scope: !4044)
!4053 = !DILocation(line: 898, column: 8, scope: !4044)
!4054 = !DILocation(line: 898, column: 6, scope: !4044)
!4055 = !DILocation(line: 899, column: 6, scope: !4056)
!4056 = distinct !DILexicalBlock(scope: !4044, file: !3, line: 899, column: 6)
!4057 = !DILocation(line: 899, column: 6, scope: !4044)
!4058 = !DILocation(line: 900, column: 10, scope: !4056)
!4059 = !DILocation(line: 900, column: 3, scope: !4056)
!4060 = !DILocation(line: 902, column: 28, scope: !4044)
!4061 = !DILocation(line: 902, column: 34, scope: !4044)
!4062 = !DILocation(line: 902, column: 40, scope: !4044)
!4063 = !DILocation(line: 902, column: 46, scope: !4044)
!4064 = !DILocation(line: 902, column: 51, scope: !4044)
!4065 = !DILocation(line: 902, column: 57, scope: !4044)
!4066 = !DILocation(line: 902, column: 9, scope: !4044)
!4067 = !DILocation(line: 902, column: 2, scope: !4044)
!4068 = !DILocation(line: 903, column: 1, scope: !4044)
!4069 = distinct !DISubprogram(name: "sdio_enable_4bit_bus", scope: !3, file: !3, line: 355, type: !3934, scopeLine: 356, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!4070 = !DILocalVariable(name: "card", arg: 1, scope: !4069, file: !3, line: 355, type: !101)
!4071 = !DILocation(line: 355, column: 50, scope: !4069)
!4072 = !DILocalVariable(name: "err", scope: !4069, file: !3, line: 357, type: !92)
!4073 = !DILocation(line: 357, column: 6, scope: !4069)
!4074 = !DILocation(line: 359, column: 25, scope: !4069)
!4075 = !DILocation(line: 359, column: 8, scope: !4069)
!4076 = !DILocation(line: 359, column: 6, scope: !4069)
!4077 = !DILocation(line: 360, column: 6, scope: !4078)
!4078 = distinct !DILexicalBlock(scope: !4069, file: !3, line: 360, column: 6)
!4079 = !DILocation(line: 360, column: 10, scope: !4078)
!4080 = !DILocation(line: 360, column: 6, scope: !4069)
!4081 = !DILocation(line: 361, column: 10, scope: !4078)
!4082 = !DILocation(line: 361, column: 3, scope: !4078)
!4083 = !DILocation(line: 362, column: 6, scope: !4084)
!4084 = distinct !DILexicalBlock(scope: !4069, file: !3, line: 362, column: 6)
!4085 = !DILocation(line: 362, column: 12, scope: !4084)
!4086 = !DILocation(line: 362, column: 17, scope: !4084)
!4087 = !DILocation(line: 362, column: 6, scope: !4069)
!4088 = !DILocation(line: 363, column: 3, scope: !4084)
!4089 = !DILocation(line: 365, column: 6, scope: !4090)
!4090 = distinct !DILexicalBlock(scope: !4069, file: !3, line: 365, column: 6)
!4091 = !DILocation(line: 365, column: 12, scope: !4090)
!4092 = !DILocation(line: 365, column: 16, scope: !4090)
!4093 = !DILocation(line: 365, column: 27, scope: !4090)
!4094 = !DILocation(line: 365, column: 6, scope: !4069)
!4095 = !DILocation(line: 366, column: 31, scope: !4096)
!4096 = distinct !DILexicalBlock(scope: !4090, file: !3, line: 365, column: 49)
!4097 = !DILocation(line: 366, column: 9, scope: !4096)
!4098 = !DILocation(line: 366, column: 7, scope: !4096)
!4099 = !DILocation(line: 367, column: 7, scope: !4100)
!4100 = distinct !DILexicalBlock(scope: !4096, file: !3, line: 367, column: 7)
!4101 = !DILocation(line: 367, column: 7, scope: !4096)
!4102 = !DILocation(line: 368, column: 22, scope: !4103)
!4103 = distinct !DILexicalBlock(scope: !4100, file: !3, line: 367, column: 12)
!4104 = !DILocation(line: 368, column: 4, scope: !4103)
!4105 = !DILocation(line: 369, column: 11, scope: !4103)
!4106 = !DILocation(line: 369, column: 4, scope: !4103)
!4107 = !DILocation(line: 371, column: 2, scope: !4096)
!4108 = !DILocation(line: 365, column: 29, scope: !4090)
!4109 = !DILabel(scope: !4069, name: "out", file: !3, line: 372)
!4110 = !DILocation(line: 372, column: 1, scope: !4069)
!4111 = !DILocation(line: 373, column: 20, scope: !4069)
!4112 = !DILocation(line: 373, column: 26, scope: !4069)
!4113 = !DILocation(line: 373, column: 2, scope: !4069)
!4114 = !DILocation(line: 375, column: 2, scope: !4069)
!4115 = !DILocation(line: 376, column: 1, scope: !4069)
!4116 = distinct !DISubprogram(name: "queue_delayed_work", scope: !56, file: !56, line: 518, type: !4117, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!4117 = !DISubroutineType(types: !4118)
!4118 = !{!999, !2156, !4119, !227}
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!4120 = !DILocalVariable(name: "wq", arg: 1, scope: !4116, file: !56, line: 518, type: !2156)
!4121 = !DILocation(line: 518, column: 64, scope: !4116)
!4122 = !DILocalVariable(name: "dwork", arg: 2, scope: !4116, file: !56, line: 519, type: !4119)
!4123 = !DILocation(line: 519, column: 32, scope: !4116)
!4124 = !DILocalVariable(name: "delay", arg: 3, scope: !4116, file: !56, line: 520, type: !227)
!4125 = !DILocation(line: 520, column: 25, scope: !4116)
!4126 = !DILocation(line: 522, column: 49, scope: !4116)
!4127 = !DILocation(line: 522, column: 53, scope: !4116)
!4128 = !DILocation(line: 522, column: 60, scope: !4116)
!4129 = !DILocation(line: 522, column: 9, scope: !4116)
!4130 = !DILocation(line: 522, column: 2, scope: !4116)
!4131 = distinct !DISubprogram(name: "mmc_sdio_pre_init", scope: !3, file: !3, line: 608, type: !2743, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!4132 = !DILocalVariable(name: "host", arg: 1, scope: !4131, file: !3, line: 608, type: !106)
!4133 = !DILocation(line: 608, column: 47, scope: !4131)
!4134 = !DILocalVariable(name: "ocr", arg: 2, scope: !4131, file: !3, line: 608, type: !96)
!4135 = !DILocation(line: 608, column: 57, scope: !4131)
!4136 = !DILocalVariable(name: "card", arg: 3, scope: !4131, file: !3, line: 609, type: !101)
!4137 = !DILocation(line: 609, column: 26, scope: !4131)
!4138 = !DILocation(line: 611, column: 6, scope: !4139)
!4139 = distinct !DILexicalBlock(scope: !4131, file: !3, line: 611, column: 6)
!4140 = !DILocation(line: 611, column: 6, scope: !4131)
!4141 = !DILocation(line: 612, column: 19, scope: !4139)
!4142 = !DILocation(line: 612, column: 3, scope: !4139)
!4143 = !DILocation(line: 631, column: 13, scope: !4131)
!4144 = !DILocation(line: 631, column: 2, scope: !4131)
!4145 = !DILocation(line: 632, column: 14, scope: !4131)
!4146 = !DILocation(line: 632, column: 2, scope: !4131)
!4147 = !DILocation(line: 633, column: 19, scope: !4131)
!4148 = !DILocation(line: 633, column: 25, scope: !4131)
!4149 = !DILocation(line: 633, column: 2, scope: !4131)
!4150 = !DILocation(line: 634, column: 29, scope: !4131)
!4151 = !DILocation(line: 634, column: 9, scope: !4131)
!4152 = !DILocation(line: 634, column: 2, scope: !4131)
!4153 = distinct !DISubprogram(name: "sdio_enable_wide", scope: !3, file: !3, line: 246, type: !3934, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!4154 = !DILocalVariable(name: "card", arg: 1, scope: !4153, file: !3, line: 246, type: !101)
!4155 = !DILocation(line: 246, column: 46, scope: !4153)
!4156 = !DILocalVariable(name: "ret", scope: !4153, file: !3, line: 248, type: !92)
!4157 = !DILocation(line: 248, column: 6, scope: !4153)
!4158 = !DILocalVariable(name: "ctrl", scope: !4153, file: !3, line: 249, type: !567)
!4159 = !DILocation(line: 249, column: 5, scope: !4153)
!4160 = !DILocation(line: 251, column: 8, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4153, file: !3, line: 251, column: 6)
!4162 = !DILocation(line: 251, column: 14, scope: !4161)
!4163 = !DILocation(line: 251, column: 20, scope: !4161)
!4164 = !DILocation(line: 251, column: 25, scope: !4161)
!4165 = !DILocation(line: 251, column: 6, scope: !4153)
!4166 = !DILocation(line: 252, column: 3, scope: !4161)
!4167 = !DILocation(line: 254, column: 6, scope: !4168)
!4168 = distinct !DILexicalBlock(scope: !4153, file: !3, line: 254, column: 6)
!4169 = !DILocation(line: 254, column: 12, scope: !4168)
!4170 = !DILocation(line: 254, column: 17, scope: !4168)
!4171 = !DILocation(line: 254, column: 27, scope: !4168)
!4172 = !DILocation(line: 254, column: 31, scope: !4168)
!4173 = !DILocation(line: 254, column: 37, scope: !4168)
!4174 = !DILocation(line: 254, column: 42, scope: !4168)
!4175 = !DILocation(line: 254, column: 6, scope: !4153)
!4176 = !DILocation(line: 255, column: 3, scope: !4168)
!4177 = !DILocation(line: 257, column: 25, scope: !4153)
!4178 = !DILocation(line: 257, column: 8, scope: !4153)
!4179 = !DILocation(line: 257, column: 6, scope: !4153)
!4180 = !DILocation(line: 258, column: 6, scope: !4181)
!4181 = distinct !DILexicalBlock(scope: !4153, file: !3, line: 258, column: 6)
!4182 = !DILocation(line: 258, column: 6, scope: !4153)
!4183 = !DILocation(line: 259, column: 10, scope: !4181)
!4184 = !DILocation(line: 259, column: 3, scope: !4181)
!4185 = !DILocation(line: 261, column: 7, scope: !4186)
!4186 = distinct !DILexicalBlock(scope: !4153, file: !3, line: 261, column: 6)
!4187 = !DILocation(line: 261, column: 12, scope: !4186)
!4188 = !DILocation(line: 261, column: 35, scope: !4186)
!4189 = !DILocation(line: 261, column: 6, scope: !4153)
!4190 = !DILocation(line: 262, column: 3, scope: !4186)
!4191 = !DILocation(line: 266, column: 7, scope: !4153)
!4192 = !DILocation(line: 267, column: 7, scope: !4153)
!4193 = !DILocation(line: 269, column: 25, scope: !4153)
!4194 = !DILocation(line: 269, column: 51, scope: !4153)
!4195 = !DILocation(line: 269, column: 8, scope: !4153)
!4196 = !DILocation(line: 269, column: 6, scope: !4153)
!4197 = !DILocation(line: 270, column: 6, scope: !4198)
!4198 = distinct !DILexicalBlock(scope: !4153, file: !3, line: 270, column: 6)
!4199 = !DILocation(line: 270, column: 6, scope: !4153)
!4200 = !DILocation(line: 271, column: 10, scope: !4198)
!4201 = !DILocation(line: 271, column: 3, scope: !4198)
!4202 = !DILocation(line: 273, column: 2, scope: !4153)
!4203 = !DILocation(line: 274, column: 1, scope: !4153)
!4204 = distinct !DISubprogram(name: "kasan_check_read", scope: !3900, file: !3900, line: 34, type: !3901, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!4205 = !DILocalVariable(name: "p", arg: 1, scope: !4204, file: !3900, line: 34, type: !3204)
!4206 = !DILocation(line: 34, column: 58, scope: !4204)
!4207 = !DILocalVariable(name: "size", arg: 2, scope: !4204, file: !3900, line: 34, type: !7)
!4208 = !DILocation(line: 34, column: 74, scope: !4204)
!4209 = !DILocation(line: 36, column: 2, scope: !4204)
!4210 = distinct !DISubprogram(name: "mmc_host_uhs", scope: !4211, file: !4211, line: 51, type: !2043, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!4211 = !DIFile(filename: "drivers/mmc/core/host.h", directory: "/home/lizy2001/genbc/linux")
!4212 = !DILocalVariable(name: "host", arg: 1, scope: !4210, file: !4211, line: 51, type: !106)
!4213 = !DILocation(line: 51, column: 49, scope: !4210)
!4214 = !DILocation(line: 53, column: 9, scope: !4210)
!4215 = !DILocation(line: 53, column: 15, scope: !4210)
!4216 = !DILocation(line: 53, column: 20, scope: !4210)
!4217 = !DILocation(line: 56, column: 23, scope: !4210)
!4218 = !DILocation(line: 57, column: 9, scope: !4210)
!4219 = !DILocation(line: 57, column: 15, scope: !4210)
!4220 = !DILocation(line: 57, column: 20, scope: !4210)
!4221 = !DILocation(line: 0, scope: !4210)
!4222 = !DILocation(line: 53, column: 2, scope: !4210)
!4223 = distinct !DISubprogram(name: "IS_ERR", scope: !4224, file: !4224, line: 34, type: !4225, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!4224 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!4225 = !DISubroutineType(types: !4226)
!4226 = !{!999, !1389}
!4227 = !DILocalVariable(name: "ptr", arg: 1, scope: !4223, file: !4224, line: 34, type: !1389)
!4228 = !DILocation(line: 34, column: 60, scope: !4223)
!4229 = !DILocation(line: 36, column: 9, scope: !4223)
!4230 = !DILocation(line: 36, column: 2, scope: !4223)
!4231 = distinct !DISubprogram(name: "PTR_ERR", scope: !4224, file: !4224, line: 29, type: !4232, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!4232 = !DISubroutineType(types: !4233)
!4233 = !{!57, !1389}
!4234 = !DILocalVariable(name: "ptr", arg: 1, scope: !4231, file: !4224, line: 29, type: !1389)
!4235 = !DILocation(line: 29, column: 61, scope: !4231)
!4236 = !DILocation(line: 31, column: 16, scope: !4231)
!4237 = !DILocation(line: 31, column: 9, scope: !4231)
!4238 = !DILocation(line: 31, column: 2, scope: !4231)
!4239 = distinct !DISubprogram(name: "sdio_read_cccr", scope: !3, file: !3, line: 143, type: !4240, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!4240 = !DISubroutineType(types: !4241)
!4241 = !{!92, !101, !96}
!4242 = !DILocalVariable(name: "card", arg: 1, scope: !4239, file: !3, line: 143, type: !101)
!4243 = !DILocation(line: 143, column: 44, scope: !4239)
!4244 = !DILocalVariable(name: "ocr", arg: 2, scope: !4239, file: !3, line: 143, type: !96)
!4245 = !DILocation(line: 143, column: 54, scope: !4239)
!4246 = !DILocalVariable(name: "ret", scope: !4239, file: !3, line: 145, type: !92)
!4247 = !DILocation(line: 145, column: 6, scope: !4239)
!4248 = !DILocalVariable(name: "cccr_vsn", scope: !4239, file: !3, line: 146, type: !92)
!4249 = !DILocation(line: 146, column: 6, scope: !4239)
!4250 = !DILocalVariable(name: "uhs", scope: !4239, file: !3, line: 147, type: !92)
!4251 = !DILocation(line: 147, column: 6, scope: !4239)
!4252 = !DILocation(line: 147, column: 12, scope: !4239)
!4253 = !DILocation(line: 147, column: 16, scope: !4239)
!4254 = !DILocalVariable(name: "data", scope: !4239, file: !3, line: 148, type: !569)
!4255 = !DILocation(line: 148, column: 16, scope: !4239)
!4256 = !DILocalVariable(name: "speed", scope: !4239, file: !3, line: 149, type: !569)
!4257 = !DILocation(line: 149, column: 16, scope: !4239)
!4258 = !DILocation(line: 151, column: 25, scope: !4239)
!4259 = !DILocation(line: 151, column: 8, scope: !4239)
!4260 = !DILocation(line: 151, column: 6, scope: !4239)
!4261 = !DILocation(line: 152, column: 6, scope: !4262)
!4262 = distinct !DILexicalBlock(scope: !4239, file: !3, line: 152, column: 6)
!4263 = !DILocation(line: 152, column: 6, scope: !4239)
!4264 = !DILocation(line: 153, column: 3, scope: !4262)
!4265 = !DILocation(line: 155, column: 13, scope: !4239)
!4266 = !DILocation(line: 155, column: 18, scope: !4239)
!4267 = !DILocation(line: 155, column: 11, scope: !4239)
!4268 = !DILocation(line: 157, column: 6, scope: !4269)
!4269 = distinct !DILexicalBlock(scope: !4239, file: !3, line: 157, column: 6)
!4270 = !DILocation(line: 157, column: 15, scope: !4269)
!4271 = !DILocation(line: 157, column: 6, scope: !4239)
!4272 = !DILocation(line: 158, column: 3, scope: !4273)
!4273 = distinct !DILexicalBlock(scope: !4269, file: !3, line: 157, column: 37)
!4274 = !DILocation(line: 160, column: 3, scope: !4273)
!4275 = !DILocation(line: 163, column: 25, scope: !4239)
!4276 = !DILocation(line: 163, column: 30, scope: !4239)
!4277 = !DILocation(line: 163, column: 38, scope: !4239)
!4278 = !DILocation(line: 163, column: 2, scope: !4239)
!4279 = !DILocation(line: 163, column: 8, scope: !4239)
!4280 = !DILocation(line: 163, column: 13, scope: !4239)
!4281 = !DILocation(line: 163, column: 22, scope: !4239)
!4282 = !DILocation(line: 165, column: 25, scope: !4239)
!4283 = !DILocation(line: 165, column: 8, scope: !4239)
!4284 = !DILocation(line: 165, column: 6, scope: !4239)
!4285 = !DILocation(line: 166, column: 6, scope: !4286)
!4286 = distinct !DILexicalBlock(scope: !4239, file: !3, line: 166, column: 6)
!4287 = !DILocation(line: 166, column: 6, scope: !4239)
!4288 = !DILocation(line: 167, column: 3, scope: !4286)
!4289 = !DILocation(line: 169, column: 6, scope: !4290)
!4290 = distinct !DILexicalBlock(scope: !4239, file: !3, line: 169, column: 6)
!4291 = !DILocation(line: 169, column: 11, scope: !4290)
!4292 = !DILocation(line: 169, column: 6, scope: !4239)
!4293 = !DILocation(line: 170, column: 3, scope: !4290)
!4294 = !DILocation(line: 170, column: 9, scope: !4290)
!4295 = !DILocation(line: 170, column: 14, scope: !4290)
!4296 = !DILocation(line: 170, column: 26, scope: !4290)
!4297 = !DILocation(line: 171, column: 6, scope: !4298)
!4298 = distinct !DILexicalBlock(scope: !4239, file: !3, line: 171, column: 6)
!4299 = !DILocation(line: 171, column: 11, scope: !4298)
!4300 = !DILocation(line: 171, column: 6, scope: !4239)
!4301 = !DILocation(line: 172, column: 3, scope: !4298)
!4302 = !DILocation(line: 172, column: 9, scope: !4298)
!4303 = !DILocation(line: 172, column: 14, scope: !4298)
!4304 = !DILocation(line: 172, column: 24, scope: !4298)
!4305 = !DILocation(line: 173, column: 6, scope: !4306)
!4306 = distinct !DILexicalBlock(scope: !4239, file: !3, line: 173, column: 6)
!4307 = !DILocation(line: 173, column: 11, scope: !4306)
!4308 = !DILocation(line: 173, column: 6, scope: !4239)
!4309 = !DILocation(line: 174, column: 3, scope: !4306)
!4310 = !DILocation(line: 174, column: 9, scope: !4306)
!4311 = !DILocation(line: 174, column: 14, scope: !4306)
!4312 = !DILocation(line: 174, column: 23, scope: !4306)
!4313 = !DILocation(line: 176, column: 6, scope: !4314)
!4314 = distinct !DILexicalBlock(scope: !4239, file: !3, line: 176, column: 6)
!4315 = !DILocation(line: 176, column: 15, scope: !4314)
!4316 = !DILocation(line: 176, column: 6, scope: !4239)
!4317 = !DILocation(line: 177, column: 26, scope: !4318)
!4318 = distinct !DILexicalBlock(scope: !4314, file: !3, line: 176, column: 38)
!4319 = !DILocation(line: 177, column: 9, scope: !4318)
!4320 = !DILocation(line: 177, column: 7, scope: !4318)
!4321 = !DILocation(line: 178, column: 7, scope: !4322)
!4322 = distinct !DILexicalBlock(scope: !4318, file: !3, line: 178, column: 7)
!4323 = !DILocation(line: 178, column: 7, scope: !4318)
!4324 = !DILocation(line: 179, column: 4, scope: !4322)
!4325 = !DILocation(line: 181, column: 7, scope: !4326)
!4326 = distinct !DILexicalBlock(scope: !4318, file: !3, line: 181, column: 7)
!4327 = !DILocation(line: 181, column: 12, scope: !4326)
!4328 = !DILocation(line: 181, column: 7, scope: !4318)
!4329 = !DILocation(line: 182, column: 4, scope: !4326)
!4330 = !DILocation(line: 182, column: 10, scope: !4326)
!4331 = !DILocation(line: 182, column: 15, scope: !4326)
!4332 = !DILocation(line: 182, column: 26, scope: !4326)
!4333 = !DILocation(line: 183, column: 2, scope: !4318)
!4334 = !DILocation(line: 185, column: 6, scope: !4335)
!4335 = distinct !DILexicalBlock(scope: !4239, file: !3, line: 185, column: 6)
!4336 = !DILocation(line: 185, column: 15, scope: !4335)
!4337 = !DILocation(line: 185, column: 6, scope: !4239)
!4338 = !DILocation(line: 186, column: 26, scope: !4339)
!4339 = distinct !DILexicalBlock(scope: !4335, file: !3, line: 185, column: 38)
!4340 = !DILocation(line: 186, column: 9, scope: !4339)
!4341 = !DILocation(line: 186, column: 7, scope: !4339)
!4342 = !DILocation(line: 187, column: 7, scope: !4343)
!4343 = distinct !DILexicalBlock(scope: !4339, file: !3, line: 187, column: 7)
!4344 = !DILocation(line: 187, column: 7, scope: !4339)
!4345 = !DILocation(line: 188, column: 4, scope: !4343)
!4346 = !DILocation(line: 190, column: 3, scope: !4339)
!4347 = !DILocation(line: 190, column: 9, scope: !4339)
!4348 = !DILocation(line: 190, column: 13, scope: !4339)
!4349 = !DILocation(line: 190, column: 23, scope: !4339)
!4350 = !DILocation(line: 191, column: 3, scope: !4339)
!4351 = !DILocation(line: 191, column: 9, scope: !4339)
!4352 = !DILocation(line: 191, column: 17, scope: !4339)
!4353 = !DILocation(line: 191, column: 30, scope: !4339)
!4354 = !DILocation(line: 192, column: 3, scope: !4339)
!4355 = !DILocation(line: 192, column: 9, scope: !4339)
!4356 = !DILocation(line: 192, column: 17, scope: !4339)
!4357 = !DILocation(line: 192, column: 30, scope: !4339)
!4358 = !DILocation(line: 193, column: 7, scope: !4359)
!4359 = distinct !DILexicalBlock(scope: !4339, file: !3, line: 193, column: 7)
!4360 = !DILocation(line: 193, column: 16, scope: !4359)
!4361 = !DILocation(line: 193, column: 38, scope: !4359)
!4362 = !DILocation(line: 193, column: 41, scope: !4359)
!4363 = !DILocation(line: 193, column: 7, scope: !4339)
!4364 = !DILocation(line: 194, column: 4, scope: !4365)
!4365 = distinct !DILexicalBlock(scope: !4359, file: !3, line: 193, column: 46)
!4366 = !DILocation(line: 194, column: 10, scope: !4365)
!4367 = !DILocation(line: 194, column: 14, scope: !4365)
!4368 = !DILocation(line: 194, column: 24, scope: !4365)
!4369 = !DILocation(line: 195, column: 27, scope: !4365)
!4370 = !DILocation(line: 195, column: 10, scope: !4365)
!4371 = !DILocation(line: 195, column: 8, scope: !4365)
!4372 = !DILocation(line: 197, column: 8, scope: !4373)
!4373 = distinct !DILexicalBlock(scope: !4365, file: !3, line: 197, column: 8)
!4374 = !DILocation(line: 197, column: 8, scope: !4365)
!4375 = !DILocation(line: 198, column: 5, scope: !4373)
!4376 = !DILocation(line: 200, column: 21, scope: !4377)
!4377 = distinct !DILexicalBlock(scope: !4365, file: !3, line: 200, column: 8)
!4378 = !DILocation(line: 200, column: 27, scope: !4377)
!4379 = !DILocation(line: 200, column: 8, scope: !4377)
!4380 = !DILocation(line: 200, column: 8, scope: !4365)
!4381 = !DILocation(line: 201, column: 9, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4383, file: !3, line: 201, column: 9)
!4383 = distinct !DILexicalBlock(scope: !4377, file: !3, line: 200, column: 34)
!4384 = !DILocation(line: 201, column: 14, scope: !4382)
!4385 = !DILocation(line: 201, column: 9, scope: !4383)
!4386 = !DILocation(line: 202, column: 6, scope: !4382)
!4387 = !DILocation(line: 202, column: 12, scope: !4382)
!4388 = !DILocation(line: 202, column: 20, scope: !4382)
!4389 = !DILocation(line: 203, column: 7, scope: !4382)
!4390 = !DILocation(line: 206, column: 9, scope: !4391)
!4391 = distinct !DILexicalBlock(scope: !4383, file: !3, line: 206, column: 9)
!4392 = !DILocation(line: 206, column: 14, scope: !4391)
!4393 = !DILocation(line: 206, column: 9, scope: !4383)
!4394 = !DILocation(line: 207, column: 6, scope: !4391)
!4395 = !DILocation(line: 207, column: 12, scope: !4391)
!4396 = !DILocation(line: 207, column: 20, scope: !4391)
!4397 = !DILocation(line: 208, column: 7, scope: !4391)
!4398 = !DILocation(line: 211, column: 9, scope: !4399)
!4399 = distinct !DILexicalBlock(scope: !4383, file: !3, line: 211, column: 9)
!4400 = !DILocation(line: 211, column: 14, scope: !4399)
!4401 = !DILocation(line: 211, column: 9, scope: !4383)
!4402 = !DILocation(line: 212, column: 6, scope: !4399)
!4403 = !DILocation(line: 212, column: 12, scope: !4399)
!4404 = !DILocation(line: 212, column: 20, scope: !4399)
!4405 = !DILocation(line: 213, column: 7, scope: !4399)
!4406 = !DILocation(line: 215, column: 4, scope: !4383)
!4407 = !DILocation(line: 217, column: 27, scope: !4365)
!4408 = !DILocation(line: 217, column: 10, scope: !4365)
!4409 = !DILocation(line: 217, column: 8, scope: !4365)
!4410 = !DILocation(line: 219, column: 8, scope: !4411)
!4411 = distinct !DILexicalBlock(scope: !4365, file: !3, line: 219, column: 8)
!4412 = !DILocation(line: 219, column: 8, scope: !4365)
!4413 = !DILocation(line: 220, column: 5, scope: !4411)
!4414 = !DILocation(line: 222, column: 8, scope: !4415)
!4415 = distinct !DILexicalBlock(scope: !4365, file: !3, line: 222, column: 8)
!4416 = !DILocation(line: 222, column: 13, scope: !4415)
!4417 = !DILocation(line: 222, column: 8, scope: !4365)
!4418 = !DILocation(line: 223, column: 5, scope: !4415)
!4419 = !DILocation(line: 223, column: 11, scope: !4415)
!4420 = !DILocation(line: 223, column: 19, scope: !4415)
!4421 = !DILocation(line: 223, column: 32, scope: !4415)
!4422 = !DILocation(line: 224, column: 8, scope: !4423)
!4423 = distinct !DILexicalBlock(scope: !4365, file: !3, line: 224, column: 8)
!4424 = !DILocation(line: 224, column: 13, scope: !4423)
!4425 = !DILocation(line: 224, column: 8, scope: !4365)
!4426 = !DILocation(line: 225, column: 5, scope: !4423)
!4427 = !DILocation(line: 225, column: 11, scope: !4423)
!4428 = !DILocation(line: 225, column: 19, scope: !4423)
!4429 = !DILocation(line: 225, column: 32, scope: !4423)
!4430 = !DILocation(line: 226, column: 8, scope: !4431)
!4431 = distinct !DILexicalBlock(scope: !4365, file: !3, line: 226, column: 8)
!4432 = !DILocation(line: 226, column: 13, scope: !4431)
!4433 = !DILocation(line: 226, column: 8, scope: !4365)
!4434 = !DILocation(line: 227, column: 5, scope: !4431)
!4435 = !DILocation(line: 227, column: 11, scope: !4431)
!4436 = !DILocation(line: 227, column: 19, scope: !4431)
!4437 = !DILocation(line: 227, column: 32, scope: !4431)
!4438 = !DILocation(line: 228, column: 3, scope: !4365)
!4439 = !DILocation(line: 231, column: 8, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4339, file: !3, line: 231, column: 7)
!4441 = !DILocation(line: 231, column: 14, scope: !4440)
!4442 = !DILocation(line: 231, column: 22, scope: !4440)
!4443 = !DILocation(line: 231, column: 7, scope: !4339)
!4444 = !DILocation(line: 232, column: 8, scope: !4445)
!4445 = distinct !DILexicalBlock(scope: !4446, file: !3, line: 232, column: 8)
!4446 = distinct !DILexicalBlock(scope: !4440, file: !3, line: 231, column: 36)
!4447 = !DILocation(line: 232, column: 14, scope: !4445)
!4448 = !DILocation(line: 232, column: 8, scope: !4446)
!4449 = !DILocation(line: 233, column: 5, scope: !4450)
!4450 = distinct !DILexicalBlock(scope: !4445, file: !3, line: 232, column: 32)
!4451 = !DILocation(line: 233, column: 11, scope: !4450)
!4452 = !DILocation(line: 233, column: 16, scope: !4450)
!4453 = !DILocation(line: 233, column: 27, scope: !4450)
!4454 = !DILocation(line: 234, column: 5, scope: !4450)
!4455 = !DILocation(line: 234, column: 11, scope: !4450)
!4456 = !DILocation(line: 234, column: 19, scope: !4450)
!4457 = !DILocation(line: 234, column: 30, scope: !4450)
!4458 = !DILocation(line: 235, column: 4, scope: !4450)
!4459 = !DILocation(line: 236, column: 5, scope: !4460)
!4460 = distinct !DILexicalBlock(scope: !4445, file: !3, line: 235, column: 11)
!4461 = !DILocation(line: 236, column: 11, scope: !4460)
!4462 = !DILocation(line: 236, column: 16, scope: !4460)
!4463 = !DILocation(line: 236, column: 27, scope: !4460)
!4464 = !DILocation(line: 237, column: 5, scope: !4460)
!4465 = !DILocation(line: 237, column: 11, scope: !4460)
!4466 = !DILocation(line: 237, column: 19, scope: !4460)
!4467 = !DILocation(line: 237, column: 30, scope: !4460)
!4468 = !DILocation(line: 239, column: 3, scope: !4446)
!4469 = !DILocation(line: 240, column: 2, scope: !4339)
!4470 = !DILocation(line: 185, column: 18, scope: !4335)
!4471 = !DILabel(scope: !4239, name: "out", file: !3, line: 242)
!4472 = !DILocation(line: 242, column: 1, scope: !4239)
!4473 = !DILocation(line: 243, column: 9, scope: !4239)
!4474 = !DILocation(line: 243, column: 2, scope: !4239)
!4475 = !DILocation(line: 244, column: 1, scope: !4239)
!4476 = distinct !DISubprogram(name: "mmc_fixup_device", scope: !2518, file: !2518, line: 148, type: !4477, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!4477 = !DISubroutineType(types: !4478)
!4478 = !{null, !101, !4479}
!4479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!4480 = !DILocalVariable(name: "card", arg: 1, scope: !4476, file: !2518, line: 148, type: !101)
!4481 = !DILocation(line: 148, column: 54, scope: !4476)
!4482 = !DILocalVariable(name: "table", arg: 2, scope: !4476, file: !2518, line: 149, type: !4479)
!4483 = !DILocation(line: 149, column: 33, scope: !4476)
!4484 = !DILocalVariable(name: "f", scope: !4476, file: !2518, line: 151, type: !4479)
!4485 = !DILocation(line: 151, column: 26, scope: !4476)
!4486 = !DILocalVariable(name: "rev", scope: !4476, file: !2518, line: 152, type: !296)
!4487 = !DILocation(line: 152, column: 6, scope: !4476)
!4488 = !DILocation(line: 152, column: 12, scope: !4476)
!4489 = !DILocation(line: 154, column: 11, scope: !4490)
!4490 = distinct !DILexicalBlock(scope: !4476, file: !2518, line: 154, column: 2)
!4491 = !DILocation(line: 154, column: 9, scope: !4490)
!4492 = !DILocation(line: 154, column: 7, scope: !4490)
!4493 = !DILocation(line: 154, column: 18, scope: !4494)
!4494 = distinct !DILexicalBlock(scope: !4490, file: !2518, line: 154, column: 2)
!4495 = !DILocation(line: 154, column: 21, scope: !4494)
!4496 = !DILocation(line: 154, column: 2, scope: !4490)
!4497 = !DILocation(line: 155, column: 8, scope: !4498)
!4498 = distinct !DILexicalBlock(scope: !4499, file: !2518, line: 155, column: 7)
!4499 = distinct !DILexicalBlock(scope: !4494, file: !2518, line: 154, column: 40)
!4500 = !DILocation(line: 155, column: 11, scope: !4498)
!4501 = !DILocation(line: 155, column: 18, scope: !4498)
!4502 = !DILocation(line: 155, column: 36, scope: !4498)
!4503 = !DILocation(line: 156, column: 8, scope: !4498)
!4504 = !DILocation(line: 156, column: 11, scope: !4498)
!4505 = !DILocation(line: 156, column: 21, scope: !4498)
!4506 = !DILocation(line: 156, column: 27, scope: !4498)
!4507 = !DILocation(line: 156, column: 31, scope: !4498)
!4508 = !DILocation(line: 156, column: 18, scope: !4498)
!4509 = !DILocation(line: 156, column: 39, scope: !4498)
!4510 = !DILocation(line: 157, column: 8, scope: !4498)
!4511 = !DILocation(line: 157, column: 11, scope: !4498)
!4512 = !DILocation(line: 157, column: 17, scope: !4498)
!4513 = !DILocation(line: 157, column: 34, scope: !4498)
!4514 = !DILocation(line: 158, column: 8, scope: !4498)
!4515 = !DILocation(line: 158, column: 11, scope: !4498)
!4516 = !DILocation(line: 158, column: 20, scope: !4498)
!4517 = !DILocation(line: 158, column: 26, scope: !4498)
!4518 = !DILocation(line: 158, column: 30, scope: !4498)
!4519 = !DILocation(line: 158, column: 17, scope: !4498)
!4520 = !DILocation(line: 158, column: 37, scope: !4498)
!4521 = !DILocation(line: 159, column: 8, scope: !4498)
!4522 = !DILocation(line: 159, column: 11, scope: !4498)
!4523 = !DILocation(line: 159, column: 16, scope: !4498)
!4524 = !DILocation(line: 159, column: 32, scope: !4498)
!4525 = !DILocation(line: 160, column: 17, scope: !4498)
!4526 = !DILocation(line: 160, column: 20, scope: !4498)
!4527 = !DILocation(line: 160, column: 26, scope: !4498)
!4528 = !DILocation(line: 160, column: 32, scope: !4498)
!4529 = !DILocation(line: 160, column: 36, scope: !4498)
!4530 = !DILocation(line: 160, column: 9, scope: !4498)
!4531 = !DILocation(line: 161, column: 40, scope: !4498)
!4532 = !DILocation(line: 162, column: 8, scope: !4498)
!4533 = !DILocation(line: 162, column: 11, scope: !4498)
!4534 = !DILocation(line: 162, column: 25, scope: !4498)
!4535 = !DILocation(line: 162, column: 31, scope: !4498)
!4536 = !DILocation(line: 162, column: 35, scope: !4498)
!4537 = !DILocation(line: 162, column: 22, scope: !4498)
!4538 = !DILocation(line: 162, column: 42, scope: !4498)
!4539 = !DILocation(line: 163, column: 8, scope: !4498)
!4540 = !DILocation(line: 163, column: 11, scope: !4498)
!4541 = !DILocation(line: 163, column: 22, scope: !4498)
!4542 = !DILocation(line: 163, column: 44, scope: !4498)
!4543 = !DILocation(line: 164, column: 8, scope: !4498)
!4544 = !DILocation(line: 164, column: 11, scope: !4498)
!4545 = !DILocation(line: 164, column: 25, scope: !4498)
!4546 = !DILocation(line: 164, column: 31, scope: !4498)
!4547 = !DILocation(line: 164, column: 35, scope: !4498)
!4548 = !DILocation(line: 164, column: 22, scope: !4498)
!4549 = !DILocation(line: 164, column: 42, scope: !4498)
!4550 = !DILocation(line: 165, column: 8, scope: !4498)
!4551 = !DILocation(line: 165, column: 11, scope: !4498)
!4552 = !DILocation(line: 165, column: 22, scope: !4498)
!4553 = !DILocation(line: 165, column: 44, scope: !4498)
!4554 = !DILocation(line: 166, column: 8, scope: !4498)
!4555 = !DILocation(line: 166, column: 11, scope: !4498)
!4556 = !DILocation(line: 166, column: 23, scope: !4498)
!4557 = !DILocation(line: 166, column: 42, scope: !4498)
!4558 = !DILocation(line: 167, column: 8, scope: !4498)
!4559 = !DILocation(line: 167, column: 11, scope: !4498)
!4560 = !DILocation(line: 167, column: 26, scope: !4498)
!4561 = !DILocation(line: 167, column: 32, scope: !4498)
!4562 = !DILocation(line: 167, column: 40, scope: !4498)
!4563 = !DILocation(line: 167, column: 23, scope: !4498)
!4564 = !DILocation(line: 167, column: 45, scope: !4498)
!4565 = !DILocation(line: 168, column: 7, scope: !4498)
!4566 = !DILocation(line: 168, column: 14, scope: !4498)
!4567 = !DILocation(line: 168, column: 17, scope: !4498)
!4568 = !DILocation(line: 168, column: 11, scope: !4498)
!4569 = !DILocation(line: 168, column: 27, scope: !4498)
!4570 = !DILocation(line: 168, column: 30, scope: !4498)
!4571 = !DILocation(line: 168, column: 37, scope: !4498)
!4572 = !DILocation(line: 168, column: 40, scope: !4498)
!4573 = !DILocation(line: 168, column: 34, scope: !4498)
!4574 = !DILocation(line: 155, column: 7, scope: !4499)
!4575 = !DILocation(line: 170, column: 4, scope: !4576)
!4576 = distinct !DILexicalBlock(scope: !4498, file: !2518, line: 168, column: 49)
!4577 = !DILocation(line: 170, column: 7, scope: !4576)
!4578 = !DILocation(line: 170, column: 20, scope: !4576)
!4579 = !DILocation(line: 170, column: 26, scope: !4576)
!4580 = !DILocation(line: 170, column: 29, scope: !4576)
!4581 = !DILocation(line: 171, column: 3, scope: !4576)
!4582 = !DILocation(line: 172, column: 2, scope: !4499)
!4583 = !DILocation(line: 154, column: 36, scope: !4494)
!4584 = !DILocation(line: 154, column: 2, scope: !4494)
!4585 = distinct !{!4585, !4496, !4586}
!4586 = !DILocation(line: 172, column: 2, scope: !4490)
!4587 = !DILocation(line: 173, column: 1, scope: !4476)
!4588 = distinct !DISubprogram(name: "sdio_disable_cd", scope: !3, file: !3, line: 282, type: !3934, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!4589 = !DILocalVariable(name: "card", arg: 1, scope: !4588, file: !3, line: 282, type: !101)
!4590 = !DILocation(line: 282, column: 45, scope: !4588)
!4591 = !DILocalVariable(name: "ret", scope: !4588, file: !3, line: 284, type: !92)
!4592 = !DILocation(line: 284, column: 6, scope: !4588)
!4593 = !DILocalVariable(name: "ctrl", scope: !4588, file: !3, line: 285, type: !567)
!4594 = !DILocation(line: 285, column: 5, scope: !4588)
!4595 = !DILocation(line: 287, column: 27, scope: !4596)
!4596 = distinct !DILexicalBlock(scope: !4588, file: !3, line: 287, column: 6)
!4597 = !DILocation(line: 287, column: 7, scope: !4596)
!4598 = !DILocation(line: 287, column: 6, scope: !4588)
!4599 = !DILocation(line: 288, column: 3, scope: !4596)
!4600 = !DILocation(line: 290, column: 25, scope: !4588)
!4601 = !DILocation(line: 290, column: 8, scope: !4588)
!4602 = !DILocation(line: 290, column: 6, scope: !4588)
!4603 = !DILocation(line: 291, column: 6, scope: !4604)
!4604 = distinct !DILexicalBlock(scope: !4588, file: !3, line: 291, column: 6)
!4605 = !DILocation(line: 291, column: 6, scope: !4588)
!4606 = !DILocation(line: 292, column: 10, scope: !4604)
!4607 = !DILocation(line: 292, column: 3, scope: !4604)
!4608 = !DILocation(line: 294, column: 7, scope: !4588)
!4609 = !DILocation(line: 296, column: 26, scope: !4588)
!4610 = !DILocation(line: 296, column: 52, scope: !4588)
!4611 = !DILocation(line: 296, column: 9, scope: !4588)
!4612 = !DILocation(line: 296, column: 2, scope: !4588)
!4613 = !DILocation(line: 297, column: 1, scope: !4588)
!4614 = distinct !DISubprogram(name: "mmc_sdio_init_uhs_card", scope: !3, file: !3, line: 576, type: !3934, scopeLine: 577, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!4615 = !DILocalVariable(name: "card", arg: 1, scope: !4614, file: !3, line: 576, type: !101)
!4616 = !DILocation(line: 576, column: 52, scope: !4614)
!4617 = !DILocalVariable(name: "err", scope: !4614, file: !3, line: 578, type: !92)
!4618 = !DILocation(line: 578, column: 6, scope: !4614)
!4619 = !DILocation(line: 580, column: 7, scope: !4620)
!4620 = distinct !DILexicalBlock(scope: !4614, file: !3, line: 580, column: 6)
!4621 = !DILocation(line: 580, column: 13, scope: !4620)
!4622 = !DILocation(line: 580, column: 17, scope: !4620)
!4623 = !DILocation(line: 580, column: 6, scope: !4614)
!4624 = !DILocation(line: 581, column: 3, scope: !4620)
!4625 = !DILocation(line: 584, column: 29, scope: !4614)
!4626 = !DILocation(line: 584, column: 8, scope: !4614)
!4627 = !DILocation(line: 584, column: 6, scope: !4614)
!4628 = !DILocation(line: 585, column: 6, scope: !4629)
!4629 = distinct !DILexicalBlock(scope: !4614, file: !3, line: 585, column: 6)
!4630 = !DILocation(line: 585, column: 6, scope: !4614)
!4631 = !DILocation(line: 586, column: 3, scope: !4629)
!4632 = !DILocation(line: 589, column: 26, scope: !4614)
!4633 = !DILocation(line: 589, column: 2, scope: !4614)
!4634 = !DILocation(line: 592, column: 32, scope: !4614)
!4635 = !DILocation(line: 592, column: 8, scope: !4614)
!4636 = !DILocation(line: 592, column: 6, scope: !4614)
!4637 = !DILocation(line: 593, column: 6, scope: !4638)
!4638 = distinct !DILexicalBlock(scope: !4614, file: !3, line: 593, column: 6)
!4639 = !DILocation(line: 593, column: 6, scope: !4614)
!4640 = !DILocation(line: 594, column: 3, scope: !4638)
!4641 = !DILocation(line: 600, column: 7, scope: !4642)
!4642 = distinct !DILexicalBlock(scope: !4614, file: !3, line: 600, column: 6)
!4643 = !DILocation(line: 600, column: 35, scope: !4642)
!4644 = !DILocation(line: 601, column: 8, scope: !4642)
!4645 = !DILocation(line: 601, column: 14, scope: !4642)
!4646 = !DILocation(line: 601, column: 20, scope: !4642)
!4647 = !DILocation(line: 601, column: 24, scope: !4642)
!4648 = !DILocation(line: 601, column: 31, scope: !4642)
!4649 = !DILocation(line: 601, column: 56, scope: !4642)
!4650 = !DILocation(line: 602, column: 9, scope: !4642)
!4651 = !DILocation(line: 602, column: 15, scope: !4642)
!4652 = !DILocation(line: 602, column: 21, scope: !4642)
!4653 = !DILocation(line: 602, column: 25, scope: !4642)
!4654 = !DILocation(line: 602, column: 32, scope: !4642)
!4655 = !DILocation(line: 600, column: 6, scope: !4614)
!4656 = !DILocation(line: 603, column: 28, scope: !4642)
!4657 = !DILocation(line: 603, column: 9, scope: !4642)
!4658 = !DILocation(line: 603, column: 7, scope: !4642)
!4659 = !DILocation(line: 603, column: 3, scope: !4642)
!4660 = !DILocation(line: 602, column: 57, scope: !4642)
!4661 = !DILabel(scope: !4614, name: "out", file: !3, line: 604)
!4662 = !DILocation(line: 604, column: 1, scope: !4614)
!4663 = !DILocation(line: 605, column: 9, scope: !4614)
!4664 = !DILocation(line: 605, column: 2, scope: !4614)
!4665 = !DILocation(line: 606, column: 1, scope: !4614)
!4666 = distinct !DISubprogram(name: "sdio_enable_hs", scope: !3, file: !3, line: 412, type: !3934, scopeLine: 413, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!4667 = !DILocalVariable(name: "card", arg: 1, scope: !4666, file: !3, line: 412, type: !101)
!4668 = !DILocation(line: 412, column: 44, scope: !4666)
!4669 = !DILocalVariable(name: "ret", scope: !4666, file: !3, line: 414, type: !92)
!4670 = !DILocation(line: 414, column: 6, scope: !4666)
!4671 = !DILocation(line: 416, column: 27, scope: !4666)
!4672 = !DILocation(line: 416, column: 8, scope: !4666)
!4673 = !DILocation(line: 416, column: 6, scope: !4666)
!4674 = !DILocation(line: 417, column: 6, scope: !4675)
!4675 = distinct !DILexicalBlock(scope: !4666, file: !3, line: 417, column: 6)
!4676 = !DILocation(line: 417, column: 10, scope: !4675)
!4677 = !DILocation(line: 417, column: 15, scope: !4675)
!4678 = !DILocation(line: 417, column: 18, scope: !4675)
!4679 = !DILocation(line: 417, column: 24, scope: !4675)
!4680 = !DILocation(line: 417, column: 29, scope: !4675)
!4681 = !DILocation(line: 417, column: 6, scope: !4666)
!4682 = !DILocation(line: 418, column: 10, scope: !4675)
!4683 = !DILocation(line: 418, column: 3, scope: !4675)
!4684 = !DILocation(line: 420, column: 25, scope: !4666)
!4685 = !DILocation(line: 420, column: 8, scope: !4666)
!4686 = !DILocation(line: 420, column: 6, scope: !4666)
!4687 = !DILocation(line: 421, column: 6, scope: !4688)
!4688 = distinct !DILexicalBlock(scope: !4666, file: !3, line: 421, column: 6)
!4689 = !DILocation(line: 421, column: 10, scope: !4688)
!4690 = !DILocation(line: 421, column: 6, scope: !4666)
!4691 = !DILocation(line: 422, column: 22, scope: !4688)
!4692 = !DILocation(line: 422, column: 3, scope: !4688)
!4693 = !DILocation(line: 424, column: 9, scope: !4666)
!4694 = !DILocation(line: 424, column: 2, scope: !4666)
!4695 = !DILocation(line: 425, column: 1, scope: !4666)
!4696 = distinct !DISubprogram(name: "mmc_sdio_get_max_clock", scope: !3, file: !3, line: 427, type: !4697, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!4697 = !DISubroutineType(types: !4698)
!4698 = !{!7, !101}
!4699 = !DILocalVariable(name: "card", arg: 1, scope: !4696, file: !3, line: 427, type: !101)
!4700 = !DILocation(line: 427, column: 57, scope: !4696)
!4701 = !DILocalVariable(name: "max_dtr", scope: !4696, file: !3, line: 429, type: !7)
!4702 = !DILocation(line: 429, column: 11, scope: !4696)
!4703 = !DILocation(line: 431, column: 18, scope: !4704)
!4704 = distinct !DILexicalBlock(scope: !4696, file: !3, line: 431, column: 6)
!4705 = !DILocation(line: 431, column: 6, scope: !4704)
!4706 = !DILocation(line: 431, column: 6, scope: !4696)
!4707 = !DILocation(line: 438, column: 11, scope: !4708)
!4708 = distinct !DILexicalBlock(scope: !4704, file: !3, line: 431, column: 25)
!4709 = !DILocation(line: 439, column: 2, scope: !4708)
!4710 = !DILocation(line: 440, column: 13, scope: !4711)
!4711 = distinct !DILexicalBlock(scope: !4704, file: !3, line: 439, column: 9)
!4712 = !DILocation(line: 440, column: 19, scope: !4711)
!4713 = !DILocation(line: 440, column: 23, scope: !4711)
!4714 = !DILocation(line: 440, column: 11, scope: !4711)
!4715 = !DILocation(line: 443, column: 6, scope: !4716)
!4716 = distinct !DILexicalBlock(scope: !4696, file: !3, line: 443, column: 6)
!4717 = !DILocation(line: 443, column: 12, scope: !4716)
!4718 = !DILocation(line: 443, column: 17, scope: !4716)
!4719 = !DILocation(line: 443, column: 6, scope: !4696)
!4720 = !DILocalVariable(name: "__UNIQUE_ID___x167", scope: !4721, file: !3, line: 444, type: !7)
!4721 = distinct !DILexicalBlock(scope: !4716, file: !3, line: 444, column: 13)
!4722 = !DILocation(line: 444, column: 13, scope: !4721)
!4723 = !DILocalVariable(name: "__UNIQUE_ID___y168", scope: !4721, file: !3, line: 444, type: !7)
!4724 = !DILocation(line: 444, column: 11, scope: !4716)
!4725 = !DILocation(line: 444, column: 3, scope: !4716)
!4726 = !DILocation(line: 446, column: 9, scope: !4696)
!4727 = !DILocation(line: 446, column: 2, scope: !4696)
!4728 = distinct !DISubprogram(name: "mmc_vendor_show", scope: !3, file: !3, line: 30, type: !2493, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!4729 = !DILocalVariable(name: "dev", arg: 1, scope: !4728, file: !3, line: 30, type: !111)
!4730 = !DILocation(line: 30, column: 1, scope: !4728)
!4731 = !DILocalVariable(name: "attr", arg: 2, scope: !4728, file: !3, line: 30, type: !2495)
!4732 = !DILocalVariable(name: "buf", arg: 3, scope: !4728, file: !3, line: 30, type: !178)
!4733 = !DILocalVariable(name: "card", scope: !4728, file: !3, line: 30, type: !101)
!4734 = !DILocalVariable(name: "__mptr", scope: !4735, file: !3, line: 30, type: !100)
!4735 = distinct !DILexicalBlock(scope: !4728, file: !3, line: 30, column: 1)
!4736 = !DILocation(line: 30, column: 1, scope: !4735)
!4737 = !DILocation(line: 30, column: 1, scope: !4738)
!4738 = distinct !DILexicalBlock(scope: !4735, file: !3, line: 30, column: 1)
!4739 = distinct !DISubprogram(name: "mmc_device_show", scope: !3, file: !3, line: 31, type: !2493, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!4740 = !DILocalVariable(name: "dev", arg: 1, scope: !4739, file: !3, line: 31, type: !111)
!4741 = !DILocation(line: 31, column: 1, scope: !4739)
!4742 = !DILocalVariable(name: "attr", arg: 2, scope: !4739, file: !3, line: 31, type: !2495)
!4743 = !DILocalVariable(name: "buf", arg: 3, scope: !4739, file: !3, line: 31, type: !178)
!4744 = !DILocalVariable(name: "card", scope: !4739, file: !3, line: 31, type: !101)
!4745 = !DILocalVariable(name: "__mptr", scope: !4746, file: !3, line: 31, type: !100)
!4746 = distinct !DILexicalBlock(scope: !4739, file: !3, line: 31, column: 1)
!4747 = !DILocation(line: 31, column: 1, scope: !4746)
!4748 = !DILocation(line: 31, column: 1, scope: !4749)
!4749 = distinct !DILexicalBlock(scope: !4746, file: !3, line: 31, column: 1)
!4750 = distinct !DISubprogram(name: "mmc_revision_show", scope: !3, file: !3, line: 32, type: !2493, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!4751 = !DILocalVariable(name: "dev", arg: 1, scope: !4750, file: !3, line: 32, type: !111)
!4752 = !DILocation(line: 32, column: 1, scope: !4750)
!4753 = !DILocalVariable(name: "attr", arg: 2, scope: !4750, file: !3, line: 32, type: !2495)
!4754 = !DILocalVariable(name: "buf", arg: 3, scope: !4750, file: !3, line: 32, type: !178)
!4755 = !DILocalVariable(name: "card", scope: !4750, file: !3, line: 32, type: !101)
!4756 = !DILocalVariable(name: "__mptr", scope: !4757, file: !3, line: 32, type: !100)
!4757 = distinct !DILexicalBlock(scope: !4750, file: !3, line: 32, column: 1)
!4758 = !DILocation(line: 32, column: 1, scope: !4757)
!4759 = !DILocation(line: 32, column: 1, scope: !4760)
!4760 = distinct !DILexicalBlock(scope: !4757, file: !3, line: 32, column: 1)
!4761 = distinct !DISubprogram(name: "info1_show", scope: !3, file: !3, line: 49, type: !2493, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!4762 = !DILocalVariable(name: "dev", arg: 1, scope: !4761, file: !3, line: 49, type: !111)
!4763 = !DILocation(line: 49, column: 1, scope: !4761)
!4764 = !DILocalVariable(name: "attr", arg: 2, scope: !4761, file: !3, line: 49, type: !2495)
!4765 = !DILocalVariable(name: "buf", arg: 3, scope: !4761, file: !3, line: 49, type: !178)
!4766 = !DILocalVariable(name: "card", scope: !4761, file: !3, line: 49, type: !101)
!4767 = !DILocalVariable(name: "__mptr", scope: !4768, file: !3, line: 49, type: !100)
!4768 = distinct !DILexicalBlock(scope: !4761, file: !3, line: 49, column: 1)
!4769 = !DILocation(line: 49, column: 1, scope: !4768)
!4770 = !DILocation(line: 49, column: 1, scope: !4771)
!4771 = distinct !DILexicalBlock(scope: !4768, file: !3, line: 49, column: 1)
!4772 = !DILocation(line: 49, column: 1, scope: !4773)
!4773 = distinct !DILexicalBlock(scope: !4761, file: !3, line: 49, column: 1)
!4774 = !DILocation(line: 49, column: 1, scope: !4775)
!4775 = distinct !DILexicalBlock(scope: !4761, file: !3, line: 49, column: 1)
!4776 = distinct !DISubprogram(name: "info2_show", scope: !3, file: !3, line: 50, type: !2493, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!4777 = !DILocalVariable(name: "dev", arg: 1, scope: !4776, file: !3, line: 50, type: !111)
!4778 = !DILocation(line: 50, column: 1, scope: !4776)
!4779 = !DILocalVariable(name: "attr", arg: 2, scope: !4776, file: !3, line: 50, type: !2495)
!4780 = !DILocalVariable(name: "buf", arg: 3, scope: !4776, file: !3, line: 50, type: !178)
!4781 = !DILocalVariable(name: "card", scope: !4776, file: !3, line: 50, type: !101)
!4782 = !DILocalVariable(name: "__mptr", scope: !4783, file: !3, line: 50, type: !100)
!4783 = distinct !DILexicalBlock(scope: !4776, file: !3, line: 50, column: 1)
!4784 = !DILocation(line: 50, column: 1, scope: !4783)
!4785 = !DILocation(line: 50, column: 1, scope: !4786)
!4786 = distinct !DILexicalBlock(scope: !4783, file: !3, line: 50, column: 1)
!4787 = !DILocation(line: 50, column: 1, scope: !4788)
!4788 = distinct !DILexicalBlock(scope: !4776, file: !3, line: 50, column: 1)
!4789 = !DILocation(line: 50, column: 1, scope: !4790)
!4790 = distinct !DILexicalBlock(scope: !4776, file: !3, line: 50, column: 1)
!4791 = distinct !DISubprogram(name: "info3_show", scope: !3, file: !3, line: 51, type: !2493, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!4792 = !DILocalVariable(name: "dev", arg: 1, scope: !4791, file: !3, line: 51, type: !111)
!4793 = !DILocation(line: 51, column: 1, scope: !4791)
!4794 = !DILocalVariable(name: "attr", arg: 2, scope: !4791, file: !3, line: 51, type: !2495)
!4795 = !DILocalVariable(name: "buf", arg: 3, scope: !4791, file: !3, line: 51, type: !178)
!4796 = !DILocalVariable(name: "card", scope: !4791, file: !3, line: 51, type: !101)
!4797 = !DILocalVariable(name: "__mptr", scope: !4798, file: !3, line: 51, type: !100)
!4798 = distinct !DILexicalBlock(scope: !4791, file: !3, line: 51, column: 1)
!4799 = !DILocation(line: 51, column: 1, scope: !4798)
!4800 = !DILocation(line: 51, column: 1, scope: !4801)
!4801 = distinct !DILexicalBlock(scope: !4798, file: !3, line: 51, column: 1)
!4802 = !DILocation(line: 51, column: 1, scope: !4803)
!4803 = distinct !DILexicalBlock(scope: !4791, file: !3, line: 51, column: 1)
!4804 = !DILocation(line: 51, column: 1, scope: !4805)
!4805 = distinct !DILexicalBlock(scope: !4791, file: !3, line: 51, column: 1)
!4806 = distinct !DISubprogram(name: "info4_show", scope: !3, file: !3, line: 52, type: !2493, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!4807 = !DILocalVariable(name: "dev", arg: 1, scope: !4806, file: !3, line: 52, type: !111)
!4808 = !DILocation(line: 52, column: 1, scope: !4806)
!4809 = !DILocalVariable(name: "attr", arg: 2, scope: !4806, file: !3, line: 52, type: !2495)
!4810 = !DILocalVariable(name: "buf", arg: 3, scope: !4806, file: !3, line: 52, type: !178)
!4811 = !DILocalVariable(name: "card", scope: !4806, file: !3, line: 52, type: !101)
!4812 = !DILocalVariable(name: "__mptr", scope: !4813, file: !3, line: 52, type: !100)
!4813 = distinct !DILexicalBlock(scope: !4806, file: !3, line: 52, column: 1)
!4814 = !DILocation(line: 52, column: 1, scope: !4813)
!4815 = !DILocation(line: 52, column: 1, scope: !4816)
!4816 = distinct !DILexicalBlock(scope: !4813, file: !3, line: 52, column: 1)
!4817 = !DILocation(line: 52, column: 1, scope: !4818)
!4818 = distinct !DILexicalBlock(scope: !4806, file: !3, line: 52, column: 1)
!4819 = !DILocation(line: 52, column: 1, scope: !4820)
!4820 = distinct !DILexicalBlock(scope: !4806, file: !3, line: 52, column: 1)
!4821 = distinct !DISubprogram(name: "mmc_ocr_show", scope: !3, file: !3, line: 33, type: !2493, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!4822 = !DILocalVariable(name: "dev", arg: 1, scope: !4821, file: !3, line: 33, type: !111)
!4823 = !DILocation(line: 33, column: 1, scope: !4821)
!4824 = !DILocalVariable(name: "attr", arg: 2, scope: !4821, file: !3, line: 33, type: !2495)
!4825 = !DILocalVariable(name: "buf", arg: 3, scope: !4821, file: !3, line: 33, type: !178)
!4826 = !DILocalVariable(name: "card", scope: !4821, file: !3, line: 33, type: !101)
!4827 = !DILocalVariable(name: "__mptr", scope: !4828, file: !3, line: 33, type: !100)
!4828 = distinct !DILexicalBlock(scope: !4821, file: !3, line: 33, column: 1)
!4829 = !DILocation(line: 33, column: 1, scope: !4828)
!4830 = !DILocation(line: 33, column: 1, scope: !4831)
!4831 = distinct !DILexicalBlock(scope: !4828, file: !3, line: 33, column: 1)
!4832 = distinct !DISubprogram(name: "mmc_rca_show", scope: !3, file: !3, line: 34, type: !2493, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!4833 = !DILocalVariable(name: "dev", arg: 1, scope: !4832, file: !3, line: 34, type: !111)
!4834 = !DILocation(line: 34, column: 1, scope: !4832)
!4835 = !DILocalVariable(name: "attr", arg: 2, scope: !4832, file: !3, line: 34, type: !2495)
!4836 = !DILocalVariable(name: "buf", arg: 3, scope: !4832, file: !3, line: 34, type: !178)
!4837 = !DILocalVariable(name: "card", scope: !4832, file: !3, line: 34, type: !101)
!4838 = !DILocalVariable(name: "__mptr", scope: !4839, file: !3, line: 34, type: !100)
!4839 = distinct !DILexicalBlock(scope: !4832, file: !3, line: 34, column: 1)
!4840 = !DILocation(line: 34, column: 1, scope: !4839)
!4841 = !DILocation(line: 34, column: 1, scope: !4842)
!4842 = distinct !DILexicalBlock(scope: !4839, file: !3, line: 34, column: 1)
!4843 = distinct !DISubprogram(name: "add_quirk", scope: !2522, file: !2522, line: 137, type: !2534, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!4844 = !DILocalVariable(name: "card", arg: 1, scope: !4843, file: !2522, line: 137, type: !101)
!4845 = !DILocation(line: 137, column: 62, scope: !4843)
!4846 = !DILocalVariable(name: "data", arg: 2, scope: !4843, file: !2522, line: 137, type: !92)
!4847 = !DILocation(line: 137, column: 72, scope: !4843)
!4848 = !DILocation(line: 139, column: 18, scope: !4843)
!4849 = !DILocation(line: 139, column: 2, scope: !4843)
!4850 = !DILocation(line: 139, column: 8, scope: !4843)
!4851 = !DILocation(line: 139, column: 15, scope: !4843)
!4852 = !DILocation(line: 140, column: 1, scope: !4843)
!4853 = distinct !DISubprogram(name: "add_limit_rate_quirk", scope: !2522, file: !2522, line: 147, type: !2534, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!4854 = !DILocalVariable(name: "card", arg: 1, scope: !4853, file: !2522, line: 147, type: !101)
!4855 = !DILocation(line: 147, column: 73, scope: !4853)
!4856 = !DILocalVariable(name: "data", arg: 2, scope: !4853, file: !2522, line: 148, type: !92)
!4857 = !DILocation(line: 148, column: 18, scope: !4853)
!4858 = !DILocation(line: 150, column: 25, scope: !4853)
!4859 = !DILocation(line: 150, column: 2, scope: !4853)
!4860 = !DILocation(line: 150, column: 8, scope: !4853)
!4861 = !DILocation(line: 150, column: 23, scope: !4853)
!4862 = !DILocation(line: 151, column: 1, scope: !4853)
!4863 = distinct !DISubprogram(name: "mmc_card_disable_cd", scope: !2522, file: !2522, line: 195, type: !4864, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!4864 = !DISubroutineType(types: !4865)
!4865 = !{!92, !4866}
!4866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4867, size: 64)
!4867 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!4868 = !DILocalVariable(name: "c", arg: 1, scope: !4863, file: !2522, line: 195, type: !4866)
!4869 = !DILocation(line: 195, column: 62, scope: !4863)
!4870 = !DILocation(line: 197, column: 9, scope: !4863)
!4871 = !DILocation(line: 197, column: 12, scope: !4863)
!4872 = !DILocation(line: 197, column: 19, scope: !4863)
!4873 = !DILocation(line: 197, column: 2, scope: !4863)
!4874 = distinct !DISubprogram(name: "sdio_select_driver_type", scope: !3, file: !3, line: 465, type: !4875, scopeLine: 466, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!4875 = !DISubroutineType(types: !4876)
!4876 = !{null, !101}
!4877 = !DILocalVariable(name: "card", arg: 1, scope: !4874, file: !3, line: 465, type: !101)
!4878 = !DILocation(line: 465, column: 54, scope: !4874)
!4879 = !DILocalVariable(name: "card_drv_type", scope: !4874, file: !3, line: 467, type: !92)
!4880 = !DILocation(line: 467, column: 6, scope: !4874)
!4881 = !DILocalVariable(name: "drive_strength", scope: !4874, file: !3, line: 467, type: !92)
!4882 = !DILocation(line: 467, column: 21, scope: !4874)
!4883 = !DILocalVariable(name: "drv_type", scope: !4874, file: !3, line: 467, type: !92)
!4884 = !DILocation(line: 467, column: 37, scope: !4874)
!4885 = !DILocalVariable(name: "card_strength", scope: !4874, file: !3, line: 468, type: !569)
!4886 = !DILocation(line: 468, column: 16, scope: !4874)
!4887 = !DILocalVariable(name: "err", scope: !4874, file: !3, line: 469, type: !92)
!4888 = !DILocation(line: 469, column: 6, scope: !4874)
!4889 = !DILocation(line: 471, column: 2, scope: !4874)
!4890 = !DILocation(line: 471, column: 8, scope: !4874)
!4891 = !DILocation(line: 471, column: 23, scope: !4874)
!4892 = !DILocation(line: 473, column: 18, scope: !4874)
!4893 = !DILocation(line: 473, column: 24, scope: !4874)
!4894 = !DILocation(line: 473, column: 32, scope: !4874)
!4895 = !DILocation(line: 473, column: 45, scope: !4874)
!4896 = !DILocation(line: 473, column: 16, scope: !4874)
!4897 = !DILocation(line: 475, column: 45, scope: !4874)
!4898 = !DILocation(line: 476, column: 10, scope: !4874)
!4899 = !DILocation(line: 476, column: 16, scope: !4874)
!4900 = !DILocation(line: 476, column: 24, scope: !4874)
!4901 = !DILocation(line: 477, column: 10, scope: !4874)
!4902 = !DILocation(line: 475, column: 19, scope: !4874)
!4903 = !DILocation(line: 475, column: 17, scope: !4874)
!4904 = !DILocation(line: 479, column: 6, scope: !4905)
!4905 = distinct !DILexicalBlock(scope: !4874, file: !3, line: 479, column: 6)
!4906 = !DILocation(line: 479, column: 6, scope: !4874)
!4907 = !DILocation(line: 481, column: 26, scope: !4908)
!4908 = distinct !DILexicalBlock(scope: !4905, file: !3, line: 479, column: 22)
!4909 = !DILocation(line: 481, column: 9, scope: !4908)
!4910 = !DILocation(line: 481, column: 7, scope: !4908)
!4911 = !DILocation(line: 483, column: 7, scope: !4912)
!4912 = distinct !DILexicalBlock(scope: !4908, file: !3, line: 483, column: 7)
!4913 = !DILocation(line: 483, column: 7, scope: !4908)
!4914 = !DILocation(line: 484, column: 4, scope: !4912)
!4915 = !DILocation(line: 486, column: 17, scope: !4908)
!4916 = !DILocation(line: 487, column: 45, scope: !4908)
!4917 = !DILocation(line: 487, column: 20, scope: !4908)
!4918 = !DILocation(line: 487, column: 17, scope: !4908)
!4919 = !DILocation(line: 490, column: 26, scope: !4908)
!4920 = !DILocation(line: 491, column: 12, scope: !4908)
!4921 = !DILocation(line: 490, column: 9, scope: !4908)
!4922 = !DILocation(line: 490, column: 7, scope: !4908)
!4923 = !DILocation(line: 492, column: 7, scope: !4924)
!4924 = distinct !DILexicalBlock(scope: !4908, file: !3, line: 492, column: 7)
!4925 = !DILocation(line: 492, column: 7, scope: !4908)
!4926 = !DILocation(line: 493, column: 4, scope: !4924)
!4927 = !DILocation(line: 494, column: 26, scope: !4908)
!4928 = !DILocation(line: 494, column: 3, scope: !4908)
!4929 = !DILocation(line: 494, column: 9, scope: !4908)
!4930 = !DILocation(line: 494, column: 24, scope: !4908)
!4931 = !DILocation(line: 495, column: 2, scope: !4908)
!4932 = !DILocation(line: 497, column: 6, scope: !4933)
!4933 = distinct !DILexicalBlock(scope: !4874, file: !3, line: 497, column: 6)
!4934 = !DILocation(line: 497, column: 6, scope: !4874)
!4935 = !DILocation(line: 498, column: 23, scope: !4933)
!4936 = !DILocation(line: 498, column: 29, scope: !4933)
!4937 = !DILocation(line: 498, column: 35, scope: !4933)
!4938 = !DILocation(line: 498, column: 3, scope: !4933)
!4939 = !DILocation(line: 499, column: 1, scope: !4874)
!4940 = distinct !DISubprogram(name: "sdio_set_bus_speed_mode", scope: !3, file: !3, line: 502, type: !3934, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!4941 = !DILocalVariable(name: "card", arg: 1, scope: !4940, file: !3, line: 502, type: !101)
!4942 = !DILocation(line: 502, column: 53, scope: !4940)
!4943 = !DILocalVariable(name: "bus_speed", scope: !4940, file: !3, line: 504, type: !7)
!4944 = !DILocation(line: 504, column: 15, scope: !4940)
!4945 = !DILocalVariable(name: "timing", scope: !4940, file: !3, line: 504, type: !7)
!4946 = !DILocation(line: 504, column: 26, scope: !4940)
!4947 = !DILocalVariable(name: "err", scope: !4940, file: !3, line: 505, type: !92)
!4948 = !DILocation(line: 505, column: 6, scope: !4940)
!4949 = !DILocalVariable(name: "speed", scope: !4940, file: !3, line: 506, type: !569)
!4950 = !DILocation(line: 506, column: 16, scope: !4940)
!4951 = !DILocalVariable(name: "max_rate", scope: !4940, file: !3, line: 507, type: !7)
!4952 = !DILocation(line: 507, column: 15, scope: !4940)
!4953 = !DILocation(line: 513, column: 20, scope: !4954)
!4954 = distinct !DILexicalBlock(scope: !4940, file: !3, line: 513, column: 6)
!4955 = !DILocation(line: 513, column: 26, scope: !4954)
!4956 = !DILocation(line: 513, column: 7, scope: !4954)
!4957 = !DILocation(line: 513, column: 6, scope: !4940)
!4958 = !DILocation(line: 514, column: 3, scope: !4954)
!4959 = !DILocation(line: 516, column: 12, scope: !4940)
!4960 = !DILocation(line: 517, column: 9, scope: !4940)
!4961 = !DILocation(line: 518, column: 7, scope: !4962)
!4962 = distinct !DILexicalBlock(scope: !4940, file: !3, line: 518, column: 6)
!4963 = !DILocation(line: 518, column: 13, scope: !4962)
!4964 = !DILocation(line: 518, column: 19, scope: !4962)
!4965 = !DILocation(line: 518, column: 24, scope: !4962)
!4966 = !DILocation(line: 518, column: 46, scope: !4962)
!4967 = !DILocation(line: 519, column: 7, scope: !4962)
!4968 = !DILocation(line: 519, column: 13, scope: !4962)
!4969 = !DILocation(line: 519, column: 21, scope: !4962)
!4970 = !DILocation(line: 519, column: 34, scope: !4962)
!4971 = !DILocation(line: 518, column: 6, scope: !4940)
!4972 = !DILocation(line: 520, column: 14, scope: !4973)
!4973 = distinct !DILexicalBlock(scope: !4962, file: !3, line: 519, column: 57)
!4974 = !DILocation(line: 521, column: 11, scope: !4973)
!4975 = !DILocation(line: 522, column: 4, scope: !4973)
!4976 = !DILocation(line: 522, column: 10, scope: !4973)
!4977 = !DILocation(line: 522, column: 18, scope: !4973)
!4978 = !DILocation(line: 522, column: 30, scope: !4973)
!4979 = !DILocation(line: 523, column: 4, scope: !4973)
!4980 = !DILocation(line: 523, column: 10, scope: !4973)
!4981 = !DILocation(line: 523, column: 23, scope: !4973)
!4982 = !DILocation(line: 524, column: 2, scope: !4973)
!4983 = !DILocation(line: 524, column: 14, scope: !4984)
!4984 = distinct !DILexicalBlock(scope: !4962, file: !3, line: 524, column: 13)
!4985 = !DILocation(line: 524, column: 20, scope: !4984)
!4986 = !DILocation(line: 524, column: 26, scope: !4984)
!4987 = !DILocation(line: 524, column: 31, scope: !4984)
!4988 = !DILocation(line: 524, column: 52, scope: !4984)
!4989 = !DILocation(line: 525, column: 7, scope: !4984)
!4990 = !DILocation(line: 525, column: 13, scope: !4984)
!4991 = !DILocation(line: 525, column: 21, scope: !4984)
!4992 = !DILocation(line: 525, column: 34, scope: !4984)
!4993 = !DILocation(line: 524, column: 13, scope: !4962)
!4994 = !DILocation(line: 526, column: 14, scope: !4995)
!4995 = distinct !DILexicalBlock(scope: !4984, file: !3, line: 525, column: 56)
!4996 = !DILocation(line: 527, column: 11, scope: !4995)
!4997 = !DILocation(line: 528, column: 4, scope: !4995)
!4998 = !DILocation(line: 528, column: 10, scope: !4995)
!4999 = !DILocation(line: 528, column: 18, scope: !4995)
!5000 = !DILocation(line: 528, column: 30, scope: !4995)
!5001 = !DILocation(line: 529, column: 4, scope: !4995)
!5002 = !DILocation(line: 529, column: 10, scope: !4995)
!5003 = !DILocation(line: 529, column: 23, scope: !4995)
!5004 = !DILocation(line: 530, column: 2, scope: !4995)
!5005 = !DILocation(line: 530, column: 14, scope: !5006)
!5006 = distinct !DILexicalBlock(scope: !4984, file: !3, line: 530, column: 13)
!5007 = !DILocation(line: 530, column: 20, scope: !5006)
!5008 = !DILocation(line: 530, column: 26, scope: !5006)
!5009 = !DILocation(line: 530, column: 31, scope: !5006)
!5010 = !DILocation(line: 531, column: 27, scope: !5006)
!5011 = !DILocation(line: 531, column: 31, scope: !5006)
!5012 = !DILocation(line: 531, column: 37, scope: !5006)
!5013 = !DILocation(line: 531, column: 45, scope: !5006)
!5014 = !DILocation(line: 531, column: 58, scope: !5006)
!5015 = !DILocation(line: 530, column: 13, scope: !4984)
!5016 = !DILocation(line: 533, column: 14, scope: !5017)
!5017 = distinct !DILexicalBlock(scope: !5006, file: !3, line: 532, column: 27)
!5018 = !DILocation(line: 534, column: 11, scope: !5017)
!5019 = !DILocation(line: 535, column: 4, scope: !5017)
!5020 = !DILocation(line: 535, column: 10, scope: !5017)
!5021 = !DILocation(line: 535, column: 18, scope: !5017)
!5022 = !DILocation(line: 535, column: 30, scope: !5017)
!5023 = !DILocation(line: 536, column: 4, scope: !5017)
!5024 = !DILocation(line: 536, column: 10, scope: !5017)
!5025 = !DILocation(line: 536, column: 23, scope: !5017)
!5026 = !DILocation(line: 537, column: 2, scope: !5017)
!5027 = !DILocation(line: 537, column: 14, scope: !5028)
!5028 = distinct !DILexicalBlock(scope: !5006, file: !3, line: 537, column: 13)
!5029 = !DILocation(line: 537, column: 20, scope: !5028)
!5030 = !DILocation(line: 537, column: 26, scope: !5028)
!5031 = !DILocation(line: 537, column: 31, scope: !5028)
!5032 = !DILocation(line: 538, column: 47, scope: !5028)
!5033 = !DILocation(line: 539, column: 7, scope: !5028)
!5034 = !DILocation(line: 539, column: 13, scope: !5028)
!5035 = !DILocation(line: 539, column: 21, scope: !5028)
!5036 = !DILocation(line: 539, column: 34, scope: !5028)
!5037 = !DILocation(line: 537, column: 13, scope: !5006)
!5038 = !DILocation(line: 540, column: 14, scope: !5039)
!5039 = distinct !DILexicalBlock(scope: !5028, file: !3, line: 539, column: 56)
!5040 = !DILocation(line: 541, column: 11, scope: !5039)
!5041 = !DILocation(line: 542, column: 4, scope: !5039)
!5042 = !DILocation(line: 542, column: 10, scope: !5039)
!5043 = !DILocation(line: 542, column: 18, scope: !5039)
!5044 = !DILocation(line: 542, column: 30, scope: !5039)
!5045 = !DILocation(line: 543, column: 4, scope: !5039)
!5046 = !DILocation(line: 543, column: 10, scope: !5039)
!5047 = !DILocation(line: 543, column: 23, scope: !5039)
!5048 = !DILocation(line: 544, column: 2, scope: !5039)
!5049 = !DILocation(line: 544, column: 14, scope: !5050)
!5050 = distinct !DILexicalBlock(scope: !5028, file: !3, line: 544, column: 13)
!5051 = !DILocation(line: 544, column: 20, scope: !5050)
!5052 = !DILocation(line: 544, column: 26, scope: !5050)
!5053 = !DILocation(line: 544, column: 31, scope: !5050)
!5054 = !DILocation(line: 546, column: 27, scope: !5050)
!5055 = !DILocation(line: 546, column: 31, scope: !5050)
!5056 = !DILocation(line: 546, column: 37, scope: !5050)
!5057 = !DILocation(line: 546, column: 45, scope: !5050)
!5058 = !DILocation(line: 546, column: 58, scope: !5050)
!5059 = !DILocation(line: 544, column: 13, scope: !5028)
!5060 = !DILocation(line: 548, column: 14, scope: !5061)
!5061 = distinct !DILexicalBlock(scope: !5050, file: !3, line: 547, column: 27)
!5062 = !DILocation(line: 549, column: 11, scope: !5061)
!5063 = !DILocation(line: 550, column: 4, scope: !5061)
!5064 = !DILocation(line: 550, column: 10, scope: !5061)
!5065 = !DILocation(line: 550, column: 18, scope: !5061)
!5066 = !DILocation(line: 550, column: 30, scope: !5061)
!5067 = !DILocation(line: 551, column: 4, scope: !5061)
!5068 = !DILocation(line: 551, column: 10, scope: !5061)
!5069 = !DILocation(line: 551, column: 23, scope: !5061)
!5070 = !DILocation(line: 552, column: 2, scope: !5061)
!5071 = !DILocation(line: 554, column: 25, scope: !4940)
!5072 = !DILocation(line: 554, column: 8, scope: !4940)
!5073 = !DILocation(line: 554, column: 6, scope: !4940)
!5074 = !DILocation(line: 555, column: 6, scope: !5075)
!5075 = distinct !DILexicalBlock(scope: !4940, file: !3, line: 555, column: 6)
!5076 = !DILocation(line: 555, column: 6, scope: !4940)
!5077 = !DILocation(line: 556, column: 10, scope: !5075)
!5078 = !DILocation(line: 556, column: 3, scope: !5075)
!5079 = !DILocation(line: 558, column: 8, scope: !4940)
!5080 = !DILocation(line: 559, column: 11, scope: !4940)
!5081 = !DILocation(line: 559, column: 8, scope: !4940)
!5082 = !DILocation(line: 560, column: 25, scope: !4940)
!5083 = !DILocation(line: 560, column: 54, scope: !4940)
!5084 = !DILocation(line: 560, column: 8, scope: !4940)
!5085 = !DILocation(line: 560, column: 6, scope: !4940)
!5086 = !DILocation(line: 561, column: 6, scope: !5087)
!5087 = distinct !DILexicalBlock(scope: !4940, file: !3, line: 561, column: 6)
!5088 = !DILocation(line: 561, column: 6, scope: !4940)
!5089 = !DILocation(line: 562, column: 10, scope: !5087)
!5090 = !DILocation(line: 562, column: 3, scope: !5087)
!5091 = !DILocalVariable(name: "__x", scope: !5092, file: !3, line: 564, type: !7)
!5092 = distinct !DILexicalBlock(scope: !4940, file: !3, line: 564, column: 13)
!5093 = !DILocation(line: 564, column: 13, scope: !5092)
!5094 = !DILocalVariable(name: "__y", scope: !5092, file: !3, line: 564, type: !7)
!5095 = !DILocalVariable(name: "__UNIQUE_ID___x169", scope: !5096, file: !3, line: 564, type: !7)
!5096 = distinct !DILexicalBlock(scope: !5092, file: !3, line: 564, column: 13)
!5097 = !DILocation(line: 564, column: 13, scope: !5096)
!5098 = !DILocalVariable(name: "__UNIQUE_ID___y170", scope: !5096, file: !3, line: 564, type: !7)
!5099 = !DILocation(line: 564, column: 11, scope: !4940)
!5100 = !DILocation(line: 567, column: 17, scope: !4940)
!5101 = !DILocation(line: 567, column: 23, scope: !4940)
!5102 = !DILocation(line: 567, column: 29, scope: !4940)
!5103 = !DILocation(line: 567, column: 2, scope: !4940)
!5104 = !DILocation(line: 568, column: 16, scope: !4940)
!5105 = !DILocation(line: 568, column: 22, scope: !4940)
!5106 = !DILocation(line: 568, column: 28, scope: !4940)
!5107 = !DILocation(line: 568, column: 2, scope: !4940)
!5108 = !DILocation(line: 570, column: 2, scope: !4940)
!5109 = !DILocation(line: 571, column: 1, scope: !4940)
!5110 = distinct !DISubprogram(name: "host_drive_to_sdio_drive", scope: !3, file: !3, line: 449, type: !5111, scopeLine: 450, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!5111 = !DISubroutineType(types: !5112)
!5112 = !{!569, !92}
!5113 = !DILocalVariable(name: "host_strength", arg: 1, scope: !5110, file: !3, line: 449, type: !92)
!5114 = !DILocation(line: 449, column: 51, scope: !5110)
!5115 = !DILocation(line: 451, column: 10, scope: !5110)
!5116 = !DILocation(line: 451, column: 2, scope: !5110)
!5117 = !DILocation(line: 453, column: 3, scope: !5118)
!5118 = distinct !DILexicalBlock(scope: !5110, file: !3, line: 451, column: 25)
!5119 = !DILocation(line: 455, column: 3, scope: !5118)
!5120 = !DILocation(line: 457, column: 3, scope: !5118)
!5121 = !DILocation(line: 459, column: 3, scope: !5118)
!5122 = !DILocation(line: 461, column: 3, scope: !5118)
!5123 = !DILocation(line: 463, column: 1, scope: !5110)
!5124 = distinct !DISubprogram(name: "mmc_sdio_switch_hs", scope: !3, file: !3, line: 382, type: !5125, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!5125 = !DISubroutineType(types: !5126)
!5126 = !{!92, !101, !92}
!5127 = !DILocalVariable(name: "card", arg: 1, scope: !5124, file: !3, line: 382, type: !101)
!5128 = !DILocation(line: 382, column: 48, scope: !5124)
!5129 = !DILocalVariable(name: "enable", arg: 2, scope: !5124, file: !3, line: 382, type: !92)
!5130 = !DILocation(line: 382, column: 58, scope: !5124)
!5131 = !DILocalVariable(name: "ret", scope: !5124, file: !3, line: 384, type: !92)
!5132 = !DILocation(line: 384, column: 6, scope: !5124)
!5133 = !DILocalVariable(name: "speed", scope: !5124, file: !3, line: 385, type: !567)
!5134 = !DILocation(line: 385, column: 5, scope: !5124)
!5135 = !DILocation(line: 387, column: 8, scope: !5136)
!5136 = distinct !DILexicalBlock(scope: !5124, file: !3, line: 387, column: 6)
!5137 = !DILocation(line: 387, column: 14, scope: !5136)
!5138 = !DILocation(line: 387, column: 20, scope: !5136)
!5139 = !DILocation(line: 387, column: 25, scope: !5136)
!5140 = !DILocation(line: 387, column: 6, scope: !5124)
!5141 = !DILocation(line: 388, column: 3, scope: !5136)
!5142 = !DILocation(line: 390, column: 7, scope: !5143)
!5143 = distinct !DILexicalBlock(scope: !5124, file: !3, line: 390, column: 6)
!5144 = !DILocation(line: 390, column: 13, scope: !5143)
!5145 = !DILocation(line: 390, column: 18, scope: !5143)
!5146 = !DILocation(line: 390, column: 6, scope: !5124)
!5147 = !DILocation(line: 391, column: 3, scope: !5143)
!5148 = !DILocation(line: 393, column: 25, scope: !5124)
!5149 = !DILocation(line: 393, column: 8, scope: !5124)
!5150 = !DILocation(line: 393, column: 6, scope: !5124)
!5151 = !DILocation(line: 394, column: 6, scope: !5152)
!5152 = distinct !DILexicalBlock(scope: !5124, file: !3, line: 394, column: 6)
!5153 = !DILocation(line: 394, column: 6, scope: !5124)
!5154 = !DILocation(line: 395, column: 10, scope: !5152)
!5155 = !DILocation(line: 395, column: 3, scope: !5152)
!5156 = !DILocation(line: 397, column: 6, scope: !5157)
!5157 = distinct !DILexicalBlock(scope: !5124, file: !3, line: 397, column: 6)
!5158 = !DILocation(line: 397, column: 6, scope: !5124)
!5159 = !DILocation(line: 398, column: 9, scope: !5157)
!5160 = !DILocation(line: 398, column: 3, scope: !5157)
!5161 = !DILocation(line: 400, column: 9, scope: !5157)
!5162 = !DILocation(line: 402, column: 25, scope: !5124)
!5163 = !DILocation(line: 402, column: 54, scope: !5124)
!5164 = !DILocation(line: 402, column: 8, scope: !5124)
!5165 = !DILocation(line: 402, column: 6, scope: !5124)
!5166 = !DILocation(line: 403, column: 6, scope: !5167)
!5167 = distinct !DILexicalBlock(scope: !5124, file: !3, line: 403, column: 6)
!5168 = !DILocation(line: 403, column: 6, scope: !5124)
!5169 = !DILocation(line: 404, column: 10, scope: !5167)
!5170 = !DILocation(line: 404, column: 3, scope: !5167)
!5171 = !DILocation(line: 406, column: 2, scope: !5124)
!5172 = !DILocation(line: 407, column: 1, scope: !5124)
!5173 = distinct !DISubprogram(name: "mmc_card_hs", scope: !108, file: !108, line: 568, type: !3934, scopeLine: 569, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!5174 = !DILocalVariable(name: "card", arg: 1, scope: !5173, file: !108, line: 568, type: !101)
!5175 = !DILocation(line: 568, column: 48, scope: !5173)
!5176 = !DILocation(line: 570, column: 9, scope: !5173)
!5177 = !DILocation(line: 570, column: 15, scope: !5173)
!5178 = !DILocation(line: 570, column: 21, scope: !5173)
!5179 = !DILocation(line: 570, column: 25, scope: !5173)
!5180 = !DILocation(line: 570, column: 32, scope: !5173)
!5181 = !DILocation(line: 570, column: 52, scope: !5173)
!5182 = !DILocation(line: 571, column: 3, scope: !5173)
!5183 = !DILocation(line: 571, column: 9, scope: !5173)
!5184 = !DILocation(line: 571, column: 15, scope: !5173)
!5185 = !DILocation(line: 571, column: 19, scope: !5173)
!5186 = !DILocation(line: 571, column: 26, scope: !5173)
!5187 = !DILocation(line: 570, column: 2, scope: !5173)
!5188 = distinct !DISubprogram(name: "sdio_read_fbr", scope: !3, file: !3, line: 72, type: !5189, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!5189 = !DISubroutineType(types: !5190)
!5190 = !{!92, !2413}
!5191 = !DILocalVariable(name: "func", arg: 1, scope: !5188, file: !3, line: 72, type: !2413)
!5192 = !DILocation(line: 72, column: 44, scope: !5188)
!5193 = !DILocalVariable(name: "ret", scope: !5188, file: !3, line: 74, type: !92)
!5194 = !DILocation(line: 74, column: 6, scope: !5188)
!5195 = !DILocalVariable(name: "data", scope: !5188, file: !3, line: 75, type: !569)
!5196 = !DILocation(line: 75, column: 16, scope: !5188)
!5197 = !DILocation(line: 77, column: 37, scope: !5198)
!5198 = distinct !DILexicalBlock(scope: !5188, file: !3, line: 77, column: 6)
!5199 = !DILocation(line: 77, column: 43, scope: !5198)
!5200 = !DILocation(line: 77, column: 6, scope: !5198)
!5201 = !DILocation(line: 77, column: 6, scope: !5188)
!5202 = !DILocation(line: 78, column: 3, scope: !5203)
!5203 = distinct !DILexicalBlock(scope: !5198, file: !3, line: 77, column: 50)
!5204 = !DILocation(line: 78, column: 9, scope: !5203)
!5205 = !DILocation(line: 78, column: 15, scope: !5203)
!5206 = !DILocation(line: 79, column: 3, scope: !5203)
!5207 = !DILocation(line: 82, column: 25, scope: !5188)
!5208 = !DILocation(line: 82, column: 31, scope: !5188)
!5209 = !DILocation(line: 83, column: 3, scope: !5188)
!5210 = !DILocation(line: 83, column: 28, scope: !5188)
!5211 = !DILocation(line: 82, column: 8, scope: !5188)
!5212 = !DILocation(line: 82, column: 6, scope: !5188)
!5213 = !DILocation(line: 84, column: 6, scope: !5214)
!5214 = distinct !DILexicalBlock(scope: !5188, file: !3, line: 84, column: 6)
!5215 = !DILocation(line: 84, column: 6, scope: !5188)
!5216 = !DILocation(line: 85, column: 3, scope: !5214)
!5217 = !DILocation(line: 87, column: 7, scope: !5188)
!5218 = !DILocation(line: 89, column: 6, scope: !5219)
!5219 = distinct !DILexicalBlock(scope: !5188, file: !3, line: 89, column: 6)
!5220 = !DILocation(line: 89, column: 11, scope: !5219)
!5221 = !DILocation(line: 89, column: 6, scope: !5188)
!5222 = !DILocation(line: 90, column: 26, scope: !5223)
!5223 = distinct !DILexicalBlock(scope: !5219, file: !3, line: 89, column: 20)
!5224 = !DILocation(line: 90, column: 32, scope: !5223)
!5225 = !DILocation(line: 91, column: 4, scope: !5223)
!5226 = !DILocation(line: 91, column: 29, scope: !5223)
!5227 = !DILocation(line: 90, column: 9, scope: !5223)
!5228 = !DILocation(line: 90, column: 7, scope: !5223)
!5229 = !DILocation(line: 92, column: 7, scope: !5230)
!5230 = distinct !DILexicalBlock(scope: !5223, file: !3, line: 92, column: 7)
!5231 = !DILocation(line: 92, column: 7, scope: !5223)
!5232 = !DILocation(line: 93, column: 4, scope: !5230)
!5233 = !DILocation(line: 94, column: 2, scope: !5223)
!5234 = !DILocation(line: 96, column: 16, scope: !5188)
!5235 = !DILocation(line: 96, column: 2, scope: !5188)
!5236 = !DILocation(line: 96, column: 8, scope: !5188)
!5237 = !DILocation(line: 96, column: 14, scope: !5188)
!5238 = !DILabel(scope: !5188, name: "out", file: !3, line: 98)
!5239 = !DILocation(line: 98, column: 1, scope: !5188)
!5240 = !DILocation(line: 99, column: 9, scope: !5188)
!5241 = !DILocation(line: 99, column: 2, scope: !5188)
!5242 = !DILocation(line: 100, column: 1, scope: !5188)
!5243 = distinct !DISubprogram(name: "mmc_card_nonstd_func_interface", scope: !2522, file: !2522, line: 200, type: !4864, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!5244 = !DILocalVariable(name: "c", arg: 1, scope: !5243, file: !2522, line: 200, type: !4866)
!5245 = !DILocation(line: 200, column: 73, scope: !5243)
!5246 = !DILocation(line: 202, column: 9, scope: !5243)
!5247 = !DILocation(line: 202, column: 12, scope: !5243)
!5248 = !DILocation(line: 202, column: 19, scope: !5243)
!5249 = !DILocation(line: 202, column: 2, scope: !5243)
!5250 = distinct !DISubprogram(name: "kobject_name", scope: !116, file: !116, line: 88, type: !5251, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!5251 = !DISubroutineType(types: !5252)
!5252 = !{!119, !5253}
!5253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5254, size: 64)
!5254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!5255 = !DILocalVariable(name: "kobj", arg: 1, scope: !5250, file: !116, line: 88, type: !5253)
!5256 = !DILocation(line: 88, column: 62, scope: !5250)
!5257 = !DILocation(line: 90, column: 9, scope: !5250)
!5258 = !DILocation(line: 90, column: 15, scope: !5250)
!5259 = !DILocation(line: 90, column: 2, scope: !5250)
