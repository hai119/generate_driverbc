; ModuleID = '../bcout/drivers/mmc/core/bus.llvm.bc'
source_filename = "drivers/mmc/core/bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
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
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.module = type opaque
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type opaque
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
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.irq_domain = type opaque
%struct.dma_map_ops = type opaque
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i64 }
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
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.kmem_cache = type opaque
%struct.mmc_driver = type { %struct.device_driver, i32 (%struct.mmc_card*)*, void (%struct.mmc_card*)*, void (%struct.mmc_card*)* }
%struct.mmc_card = type { %struct.mmc_host*, %struct.device, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i8, [4 x i32], [4 x i32], [2 x i32], [16 x i32], %struct.mmc_cid, %struct.mmc_csd, %struct.mmc_ext_csd, %struct.sd_scr, %struct.sd_ssr, %struct.sd_switch_caps, i32, %struct.atomic_t, %struct.sdio_cccr, %struct.sdio_cis, [7 x %struct.sdio_func*], %struct.sdio_func*, i8, i8, i32, i8**, %struct.sdio_func_tuple*, i32, i32, i32, %struct.dentry*, [7 x %struct.mmc_part], i32, i32, %struct.workqueue_struct* }
%struct.mmc_host = type { %struct.device*, %struct.device, i32, %struct.mmc_host_ops*, %struct.mmc_pwrseq*, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.wakeup_source*, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, %struct.mmc_card*, %struct.wait_queue_head, %struct.mmc_ctx*, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, %struct.mmc_bus_ops*, i32, i32, %struct.task_struct*, %struct.delayed_work, i8, %struct.atomic_t, i32, %struct.led_trigger*, %struct.mmc_supply, %struct.dentry*, %struct.mmc_request*, i32, i32, i32, i32, %struct.mmc_cqe_ops*, i8*, i32, i8, i8, i8, [41 x i8], [0 x i64] }
%struct.mmc_host_ops = type { void (%struct.mmc_host*, %struct.mmc_request*, i32)*, void (%struct.mmc_host*, %struct.mmc_request*)*, void (%struct.mmc_host*, %struct.mmc_request*)*, i32 (%struct.mmc_host*, %struct.mmc_request*)*, void (%struct.mmc_host*, %struct.mmc_ios*)*, i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)*, void (%struct.mmc_host*, i32)*, void (%struct.mmc_host*)*, void (%struct.mmc_host*, %struct.mmc_card*)*, i32 (%struct.mmc_host*, %struct.mmc_ios*)*, i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*, i32)*, i32 (%struct.mmc_host*, %struct.mmc_ios*)*, i32 (%struct.mmc_host*)*, void (%struct.mmc_host*)*, void (%struct.mmc_host*)*, void (%struct.mmc_host*, %struct.mmc_ios*)*, i32 (%struct.mmc_card*, i32, i32, i32, i32*)*, void (%struct.mmc_host*)*, void (%struct.mmc_host*)*, i32 (%struct.mmc_card*, i32, i32)* }
%struct.mmc_pwrseq = type opaque
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { %struct.task_struct* }
%struct.mmc_slot = type { i32, i8, i8* }
%struct.mmc_bus_ops = type { void (%struct.mmc_host*)*, void (%struct.mmc_host*)*, i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)* }
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
%struct.sdio_cccr = type { i32, i32, i8 }
%struct.sdio_cis = type { i16, i16, i16, i32 }
%struct.sdio_func = type opaque
%struct.sdio_func_tuple = type opaque
%struct.dentry = type opaque
%struct.mmc_part = type { i64, i32, [20 x i8], i8, i32 }
%struct.workqueue_struct = type opaque

@mmc_bus_type = internal global %struct.bus_type { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i8* null, %struct.device* null, %struct.attribute_group** null, %struct.attribute_group** getelementptr inbounds ([2 x %struct.attribute_group*], [2 x %struct.attribute_group*]* @mmc_dev_groups, i32 0, i32 0), %struct.attribute_group** null, i32 (%struct.device*, %struct.device_driver*)* @mmc_bus_match, i32 (%struct.device*, %struct.kobj_uevent_env*)* @mmc_bus_uevent, i32 (%struct.device*)* @mmc_bus_probe, void (%struct.device*)* null, i32 (%struct.device*)* @mmc_bus_remove, void (%struct.device*)* @mmc_bus_shutdown, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, %struct.dev_pm_ops* @mmc_bus_pm_ops, %struct.iommu_ops* null, %struct.subsys_private* null, %struct.lock_class_key zeroinitializer, i8 0 }, align 8, !dbg !0
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@mmc_add_card.uhs_speeds = internal constant [5 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0)], align 16, !dbg !2537
@.str.1 = private unnamed_addr constant [7 x i8] c"SDR12 \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"SDR25 \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"SDR50 \00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"SDR104 \00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"DDR50 \00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%s:%04x\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"MMC\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"SD\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"SDXC\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"SDHC\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"SDIO\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"SD-combo\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"SDHC-combo\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"\016%s: new %s%s%s card on SPI\0A\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"high speed \00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"DDR \00", align 1
@.str.18 = private unnamed_addr constant [45 x i8] c"\016%s: new %s%s%s%s%s%s card at address %04x\0A\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"ultra high speed \00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"HS400 \00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"HS200 \00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"Enhanced strobe \00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"\016%s: SPI card removed\0A\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"\016%s: card %04x removed\0A\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"mmc\00", align 1
@mmc_dev_groups = internal global [2 x %struct.attribute_group*] [%struct.attribute_group* @mmc_dev_group, %struct.attribute_group* null], align 16, !dbg !2544
@mmc_bus_pm_ops = internal constant %struct.dev_pm_ops { i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* @mmc_bus_suspend, i32 (%struct.device*)* @mmc_bus_resume, i32 (%struct.device*)* @mmc_bus_suspend, i32 (%struct.device*)* @mmc_bus_resume, i32 (%struct.device*)* @mmc_bus_suspend, i32 (%struct.device*)* @mmc_bus_resume, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* @mmc_runtime_suspend, i32 (%struct.device*)* @mmc_runtime_resume, i32 (%struct.device*)* null }, align 8, !dbg !2566
@mmc_dev_group = internal constant %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([2 x %struct.attribute*], [2 x %struct.attribute*]* @mmc_dev_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !2547
@mmc_dev_attrs = internal global [2 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_type, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !2549
@dev_attr_type = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @type_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2552
@.str.26 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"MMC\0A\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"SD\0A\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"SDIO\0A\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"SDcombo\0A\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"SDcombo\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"MMC_TYPE=%s\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"SDIO_ID=%04X:%04X\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"SDIO_REVISION=%u.%u\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"SDIO_INFO%u=%s\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"MMC_NAME=%s\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"MODALIAS=mmc:block\00", align 1
@.str.38 = private unnamed_addr constant [32 x i8] c"\014%s: error %d during shutdown\0A\00", align 1
@.str.39 = private unnamed_addr constant [50 x i8] c"\014%s: error %d during resume (card was removed?)\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.40 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @mmc_register_bus() #0 !dbg !2573 {
entry:
  %call = call i32 @bus_register(%struct.bus_type* @mmc_bus_type) #7, !dbg !2576
  ret i32 %call, !dbg !2577
}

; Function Attrs: noredzone
declare dso_local i32 @bus_register(%struct.bus_type*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @mmc_unregister_bus() #0 !dbg !2578 {
entry:
  call void @bus_unregister(%struct.bus_type* @mmc_bus_type) #7, !dbg !2581
  ret void, !dbg !2582
}

; Function Attrs: noredzone
declare dso_local void @bus_unregister(%struct.bus_type*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @mmc_register_driver(%struct.mmc_driver* %drv) #0 !dbg !2583 {
entry:
  %drv.addr = alloca %struct.mmc_driver*, align 8
  store %struct.mmc_driver* %drv, %struct.mmc_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_driver** %drv.addr, metadata !2586, metadata !DIExpression()), !dbg !2587
  %0 = load %struct.mmc_driver*, %struct.mmc_driver** %drv.addr, align 8, !dbg !2588
  %drv1 = getelementptr inbounds %struct.mmc_driver, %struct.mmc_driver* %0, i32 0, i32 0, !dbg !2589
  %bus = getelementptr inbounds %struct.device_driver, %struct.device_driver* %drv1, i32 0, i32 1, !dbg !2590
  store %struct.bus_type* @mmc_bus_type, %struct.bus_type** %bus, align 8, !dbg !2591
  %1 = load %struct.mmc_driver*, %struct.mmc_driver** %drv.addr, align 8, !dbg !2592
  %drv2 = getelementptr inbounds %struct.mmc_driver, %struct.mmc_driver* %1, i32 0, i32 0, !dbg !2593
  %call = call i32 @driver_register(%struct.device_driver* %drv2) #7, !dbg !2594
  ret i32 %call, !dbg !2595
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone
declare dso_local i32 @driver_register(%struct.device_driver*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @mmc_unregister_driver(%struct.mmc_driver* %drv) #0 !dbg !2596 {
entry:
  %drv.addr = alloca %struct.mmc_driver*, align 8
  store %struct.mmc_driver* %drv, %struct.mmc_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_driver** %drv.addr, metadata !2599, metadata !DIExpression()), !dbg !2600
  %0 = load %struct.mmc_driver*, %struct.mmc_driver** %drv.addr, align 8, !dbg !2601
  %drv1 = getelementptr inbounds %struct.mmc_driver, %struct.mmc_driver* %0, i32 0, i32 0, !dbg !2602
  %bus = getelementptr inbounds %struct.device_driver, %struct.device_driver* %drv1, i32 0, i32 1, !dbg !2603
  store %struct.bus_type* @mmc_bus_type, %struct.bus_type** %bus, align 8, !dbg !2604
  %1 = load %struct.mmc_driver*, %struct.mmc_driver** %drv.addr, align 8, !dbg !2605
  %drv2 = getelementptr inbounds %struct.mmc_driver, %struct.mmc_driver* %1, i32 0, i32 0, !dbg !2606
  call void @driver_unregister(%struct.device_driver* %drv2) #7, !dbg !2607
  ret void, !dbg !2608
}

; Function Attrs: noredzone
declare dso_local void @driver_unregister(%struct.device_driver*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.mmc_card* @mmc_alloc_card(%struct.mmc_host* %host, %struct.device_type* %type) #0 !dbg !2609 {
entry:
  %retval = alloca %struct.mmc_card*, align 8
  %host.addr = alloca %struct.mmc_host*, align 8
  %type.addr = alloca %struct.device_type*, align 8
  %card = alloca %struct.mmc_card*, align 8
  store %struct.mmc_host* %host, %struct.mmc_host** %host.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_host** %host.addr, metadata !2613, metadata !DIExpression()), !dbg !2614
  store %struct.device_type* %type, %struct.device_type** %type.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_type** %type.addr, metadata !2615, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %card, metadata !2617, metadata !DIExpression()), !dbg !2618
  %call = call i8* @kzalloc(i64 1584, i32 3264) #7, !dbg !2619
  %0 = bitcast i8* %call to %struct.mmc_card*, !dbg !2619
  store %struct.mmc_card* %0, %struct.mmc_card** %card, align 8, !dbg !2620
  %1 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !2621
  %tobool = icmp ne %struct.mmc_card* %1, null, !dbg !2621
  br i1 %tobool, label %if.end, label %if.then, !dbg !2623

if.then:                                          ; preds = %entry
  %call1 = call i8* @ERR_PTR(i64 -12) #7, !dbg !2624
  %2 = bitcast i8* %call1 to %struct.mmc_card*, !dbg !2624
  store %struct.mmc_card* %2, %struct.mmc_card** %retval, align 8, !dbg !2625
  br label %return, !dbg !2625

if.end:                                           ; preds = %entry
  %3 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2626
  %4 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !2627
  %host2 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %4, i32 0, i32 0, !dbg !2628
  store %struct.mmc_host* %3, %struct.mmc_host** %host2, align 8, !dbg !2629
  %5 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !2630
  %dev = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %5, i32 0, i32 1, !dbg !2631
  call void @device_initialize(%struct.device* %dev) #7, !dbg !2632
  %6 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !2633
  %class_dev = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %6, i32 0, i32 1, !dbg !2633
  %7 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !2634
  %dev3 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %7, i32 0, i32 1, !dbg !2635
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev3, i32 0, i32 1, !dbg !2636
  store %struct.device* %class_dev, %struct.device** %parent, align 8, !dbg !2637
  %8 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !2638
  %dev4 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %8, i32 0, i32 1, !dbg !2639
  %bus = getelementptr inbounds %struct.device, %struct.device* %dev4, i32 0, i32 5, !dbg !2640
  store %struct.bus_type* @mmc_bus_type, %struct.bus_type** %bus, align 8, !dbg !2641
  %9 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !2642
  %dev5 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %9, i32 0, i32 1, !dbg !2643
  %release = getelementptr inbounds %struct.device, %struct.device* %dev5, i32 0, i32 31, !dbg !2644
  store void (%struct.device*)* @mmc_release_card, void (%struct.device*)** %release, align 8, !dbg !2645
  %10 = load %struct.device_type*, %struct.device_type** %type.addr, align 8, !dbg !2646
  %11 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !2647
  %dev6 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %11, i32 0, i32 1, !dbg !2648
  %type7 = getelementptr inbounds %struct.device, %struct.device* %dev6, i32 0, i32 4, !dbg !2649
  store %struct.device_type* %10, %struct.device_type** %type7, align 8, !dbg !2650
  %12 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !2651
  store %struct.mmc_card* %12, %struct.mmc_card** %retval, align 8, !dbg !2652
  br label %return, !dbg !2652

return:                                           ; preds = %if.end, %if.then
  %13 = load %struct.mmc_card*, %struct.mmc_card** %retval, align 8, !dbg !2653
  ret %struct.mmc_card* %13, !dbg !2653
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !2654 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2657, metadata !DIExpression()), !dbg !2661
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2667, metadata !DIExpression()), !dbg !2668
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2669, metadata !DIExpression()), !dbg !2670
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2671, metadata !DIExpression()), !dbg !2672
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2673, metadata !DIExpression()), !dbg !2677
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2679, metadata !DIExpression()), !dbg !2683
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2685, metadata !DIExpression()), !dbg !2689
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !2694, metadata !DIExpression()), !dbg !2695
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !2696, metadata !DIExpression()), !dbg !2697
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2698, metadata !DIExpression()), !dbg !2699
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !2700, metadata !DIExpression()), !dbg !2701
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !2702, metadata !DIExpression()), !dbg !2703
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2704, metadata !DIExpression()), !dbg !2705
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !2706, metadata !DIExpression()), !dbg !2707
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !2708, metadata !DIExpression()), !dbg !2709
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2710, metadata !DIExpression()), !dbg !2711
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2712, metadata !DIExpression()), !dbg !2713
  %0 = load i64, i64* %size.addr, align 8, !dbg !2714
  %1 = load i32, i32* %flags.addr, align 4, !dbg !2715
  %or = or i32 %1, 256, !dbg !2716
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !2717
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #8, !dbg !2718
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !2719

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !2720
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !2721
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !2722

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !2723
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !2724
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !2725
  %call.i.i = call i32 @get_order(i64 %7) #9, !dbg !2726
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !2703
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !2727
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !2728
  %10 = load i32, i32* %order.i.i, align 4, !dbg !2729
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !2730
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !2731
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !2732
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #10, !dbg !2733
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !2733
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !2733
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !2733
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !2733
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !2734
  br label %kmalloc.exit, !dbg !2734

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !2735
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2736
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !2736
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !2738

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !2739
  br label %kmalloc_index.exit.i, !dbg !2739

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2740
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !2742
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !2743

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2744
  br label %kmalloc_index.exit.i, !dbg !2744

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2745
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !2747
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !2748

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2749
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !2750
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !2751

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !2752
  br label %kmalloc_index.exit.i, !dbg !2752

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2753
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !2755
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !2756

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2757
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !2758
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !2759

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !2760
  br label %kmalloc_index.exit.i, !dbg !2760

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2761
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !2763
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !2764

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2765
  br label %kmalloc_index.exit.i, !dbg !2765

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2766
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !2768
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !2769

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !2770
  br label %kmalloc_index.exit.i, !dbg !2770

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2771
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !2773
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !2774

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !2775
  br label %kmalloc_index.exit.i, !dbg !2775

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2776
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !2778
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !2779

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !2780
  br label %kmalloc_index.exit.i, !dbg !2780

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2781
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !2783
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !2784

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !2785
  br label %kmalloc_index.exit.i, !dbg !2785

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2786
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !2788
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !2789

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !2790
  br label %kmalloc_index.exit.i, !dbg !2790

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2791
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !2793
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !2794

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !2795
  br label %kmalloc_index.exit.i, !dbg !2795

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2796
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !2798
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !2799

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !2800
  br label %kmalloc_index.exit.i, !dbg !2800

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2801
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !2803
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !2804

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !2805
  br label %kmalloc_index.exit.i, !dbg !2805

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2806
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !2808
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !2809

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !2810
  br label %kmalloc_index.exit.i, !dbg !2810

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2811
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !2813
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !2814

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !2815
  br label %kmalloc_index.exit.i, !dbg !2815

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2816
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !2818
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !2819

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !2820
  br label %kmalloc_index.exit.i, !dbg !2820

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2821
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !2823
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !2824

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !2825
  br label %kmalloc_index.exit.i, !dbg !2825

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2826
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !2828
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !2829

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !2830
  br label %kmalloc_index.exit.i, !dbg !2830

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2831
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !2833
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !2834

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !2835
  br label %kmalloc_index.exit.i, !dbg !2835

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2836
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !2838
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !2839

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !2840
  br label %kmalloc_index.exit.i, !dbg !2840

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2841
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !2843
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !2844

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !2845
  br label %kmalloc_index.exit.i, !dbg !2845

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2846
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !2848
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !2849

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !2850
  br label %kmalloc_index.exit.i, !dbg !2850

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2851
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !2853
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !2854

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !2855
  br label %kmalloc_index.exit.i, !dbg !2855

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2856
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !2858
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !2859

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !2860
  br label %kmalloc_index.exit.i, !dbg !2860

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2861
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !2863
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !2864

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !2865
  br label %kmalloc_index.exit.i, !dbg !2865

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2866
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !2868
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !2869

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !2870
  br label %kmalloc_index.exit.i, !dbg !2870

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2871
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !2873
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !2874

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !2875
  br label %kmalloc_index.exit.i, !dbg !2875

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2876
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !2878
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !2879

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !2880
  br label %kmalloc_index.exit.i, !dbg !2880

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.40, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !2881, !srcloc !2884
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 156) #8, !dbg !2885, !srcloc !2888
  unreachable, !dbg !2889

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !2890
  store i32 %45, i32* %index.i, align 4, !dbg !2891
  %46 = load i32, i32* %index.i, align 4, !dbg !2892
  %tobool.i = icmp ne i32 %46, 0, !dbg !2892
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !2894

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !2895
  br label %kmalloc.exit, !dbg !2895

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !2896
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2897
  %and.i.i = and i32 %48, 17, !dbg !2897
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !2897
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !2897
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !2897
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !2897
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !2899

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !2900
  br label %kmalloc_type.exit.i, !dbg !2900

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2901
  %and2.i.i = and i32 %49, 1, !dbg !2902
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !2901
  %50 = zext i1 %tobool3.i.i to i64, !dbg !2901
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !2901
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !2903
  br label %kmalloc_type.exit.i, !dbg !2903

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !2904
  %idxprom.i = zext i32 %51 to i64, !dbg !2905
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !2905
  %52 = load i32, i32* %index.i, align 4, !dbg !2906
  %idxprom6.i = zext i32 %52 to i64, !dbg !2905
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !2905
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !2905
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !2907
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !2908
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2909
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2910
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #10, !dbg !2911
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !2911
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !2911
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !2911
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !2911
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !2672
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2912
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !2913
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !2914
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2915
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #10, !dbg !2916
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !2917
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !2918
  store i8* %62, i8** %retval.i, align 8, !dbg !2919
  br label %kmalloc.exit, !dbg !2919

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !2920
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !2921
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #10, !dbg !2922
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !2922
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !2922
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !2922
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !2922
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !2923
  br label %kmalloc.exit, !dbg !2923

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !2924
  ret i8* %65, !dbg !2925
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !2926 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !2930, metadata !DIExpression()), !dbg !2931
  %0 = load i64, i64* %error.addr, align 8, !dbg !2932
  %1 = inttoptr i64 %0 to i8*, !dbg !2933
  ret i8* %1, !dbg !2934
}

; Function Attrs: noredzone
declare dso_local void @device_initialize(%struct.device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mmc_release_card(%struct.device* %dev) #0 !dbg !2935 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %card = alloca %struct.mmc_card*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.mmc_card*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2936, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %card, metadata !2938, metadata !DIExpression()), !dbg !2939
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2940, metadata !DIExpression()), !dbg !2942
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2942
  %1 = bitcast %struct.device* %0 to i8*, !dbg !2942
  store i8* %1, i8** %__mptr, align 8, !dbg !2942
  br label %do.body, !dbg !2942

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2943

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2942
  %add.ptr = getelementptr i8, i8* %2, i64 -8, !dbg !2942
  %3 = bitcast i8* %add.ptr to %struct.mmc_card*, !dbg !2942
  store %struct.mmc_card* %3, %struct.mmc_card** %tmp, align 8, !dbg !2943
  %4 = load %struct.mmc_card*, %struct.mmc_card** %tmp, align 8, !dbg !2942
  store %struct.mmc_card* %4, %struct.mmc_card** %card, align 8, !dbg !2939
  %5 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !2945
  call void @sdio_free_common_cis(%struct.mmc_card* %5) #7, !dbg !2946
  %6 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !2947
  %info = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %6, i32 0, i32 34, !dbg !2948
  %7 = load i8**, i8*** %info, align 8, !dbg !2948
  %8 = bitcast i8** %7 to i8*, !dbg !2947
  call void @kfree(i8* %8) #7, !dbg !2949
  %9 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !2950
  %10 = bitcast %struct.mmc_card* %9 to i8*, !dbg !2950
  call void @kfree(i8* %10) #7, !dbg !2951
  ret void, !dbg !2952
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @mmc_add_card(%struct.mmc_card* %card) #0 !dbg !2539 {
entry:
  %retval = alloca i32, align 4
  %card.addr = alloca %struct.mmc_card*, align 8
  %ret = alloca i32, align 4
  %type = alloca i8*, align 8
  %uhs_bus_speed_mode = alloca i8*, align 8
  store %struct.mmc_card* %card, %struct.mmc_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %card.addr, metadata !2953, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2955, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.declare(metadata i8** %type, metadata !2957, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.declare(metadata i8** %uhs_bus_speed_mode, metadata !2959, metadata !DIExpression()), !dbg !2960
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %uhs_bus_speed_mode, align 8, !dbg !2960
  %0 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !2961
  %dev = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %0, i32 0, i32 1, !dbg !2962
  %1 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !2963
  %host = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %1, i32 0, i32 0, !dbg !2963
  %2 = load %struct.mmc_host*, %struct.mmc_host** %host, align 8, !dbg !2963
  %class_dev = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %2, i32 0, i32 1, !dbg !2963
  %call = call i8* @dev_name(%struct.device* %class_dev) #7, !dbg !2963
  %3 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !2964
  %rca = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %3, i32 0, i32 3, !dbg !2965
  %4 = load i32, i32* %rca, align 4, !dbg !2965
  %call1 = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* %dev, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %call, i32 %4) #7, !dbg !2966
  %5 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !2967
  %type2 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %5, i32 0, i32 4, !dbg !2968
  %6 = load i32, i32* %type2, align 8, !dbg !2968
  switch i32 %6, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb9
    i32 3, label %sw.bb10
  ], !dbg !2969

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8** %type, align 8, !dbg !2970
  br label %sw.epilog, !dbg !2972

sw.bb3:                                           ; preds = %entry
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8** %type, align 8, !dbg !2973
  %7 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !2974
  %state = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %7, i32 0, i32 5, !dbg !2974
  %8 = load i32, i32* %state, align 4, !dbg !2974
  %and = and i32 %8, 4, !dbg !2974
  %tobool = icmp ne i32 %and, 0, !dbg !2974
  br i1 %tobool, label %if.then, label %if.end8, !dbg !2976

if.then:                                          ; preds = %sw.bb3
  %9 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !2977
  %state4 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %9, i32 0, i32 5, !dbg !2977
  %10 = load i32, i32* %state4, align 4, !dbg !2977
  %and5 = and i32 %10, 8, !dbg !2977
  %tobool6 = icmp ne i32 %and5, 0, !dbg !2977
  br i1 %tobool6, label %if.then7, label %if.else, !dbg !2980

if.then7:                                         ; preds = %if.then
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8** %type, align 8, !dbg !2981
  br label %if.end, !dbg !2982

if.else:                                          ; preds = %if.then
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8** %type, align 8, !dbg !2983
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then7
  br label %if.end8, !dbg !2984

if.end8:                                          ; preds = %if.end, %sw.bb3
  br label %sw.epilog, !dbg !2985

sw.bb9:                                           ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8** %type, align 8, !dbg !2986
  br label %sw.epilog, !dbg !2987

sw.bb10:                                          ; preds = %entry
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8** %type, align 8, !dbg !2988
  %11 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !2989
  %state11 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %11, i32 0, i32 5, !dbg !2989
  %12 = load i32, i32* %state11, align 4, !dbg !2989
  %and12 = and i32 %12, 4, !dbg !2989
  %tobool13 = icmp ne i32 %and12, 0, !dbg !2989
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !2991

if.then14:                                        ; preds = %sw.bb10
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8** %type, align 8, !dbg !2992
  br label %if.end15, !dbg !2993

if.end15:                                         ; preds = %if.then14, %sw.bb10
  br label %sw.epilog, !dbg !2994

sw.default:                                       ; preds = %entry
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i8** %type, align 8, !dbg !2995
  br label %sw.epilog, !dbg !2996

sw.epilog:                                        ; preds = %sw.default, %if.end15, %sw.bb9, %if.end8, %sw.bb
  %13 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !2997
  %call16 = call i32 @mmc_card_uhs(%struct.mmc_card* %13) #7, !dbg !2999
  %tobool17 = icmp ne i32 %call16, 0, !dbg !2999
  br i1 %tobool17, label %land.lhs.true, label %if.end21, !dbg !3000

land.lhs.true:                                    ; preds = %sw.epilog
  %14 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !3001
  %sd_bus_speed = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %14, i32 0, i32 36, !dbg !3002
  %15 = load i32, i32* %sd_bus_speed, align 8, !dbg !3002
  %conv = zext i32 %15 to i64, !dbg !3001
  %cmp = icmp ult i64 %conv, 5, !dbg !3003
  br i1 %cmp, label %if.then19, label %if.end21, !dbg !3004

if.then19:                                        ; preds = %land.lhs.true
  %16 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !3005
  %sd_bus_speed20 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %16, i32 0, i32 36, !dbg !3006
  %17 = load i32, i32* %sd_bus_speed20, align 8, !dbg !3006
  %idxprom = zext i32 %17 to i64, !dbg !3007
  %arrayidx = getelementptr [5 x i8*], [5 x i8*]* @mmc_add_card.uhs_speeds, i64 0, i64 %idxprom, !dbg !3007
  %18 = load i8*, i8** %arrayidx, align 8, !dbg !3007
  store i8* %18, i8** %uhs_bus_speed_mode, align 8, !dbg !3008
  br label %if.end21, !dbg !3009

if.end21:                                         ; preds = %if.then19, %land.lhs.true, %sw.epilog
  %19 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !3010
  %host22 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %19, i32 0, i32 0, !dbg !3010
  %20 = load %struct.mmc_host*, %struct.mmc_host** %host22, align 8, !dbg !3010
  %caps = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %20, i32 0, i32 17, !dbg !3010
  %21 = load i32, i32* %caps, align 4, !dbg !3010
  %and23 = and i32 %21, 16, !dbg !3010
  %tobool24 = icmp ne i32 %and23, 0, !dbg !3010
  br i1 %tobool24, label %if.then25, label %if.else35, !dbg !3012

if.then25:                                        ; preds = %if.end21
  %22 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !3013
  %host26 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %22, i32 0, i32 0, !dbg !3013
  %23 = load %struct.mmc_host*, %struct.mmc_host** %host26, align 8, !dbg !3013
  %class_dev27 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %23, i32 0, i32 1, !dbg !3013
  %call28 = call i8* @dev_name(%struct.device* %class_dev27) #7, !dbg !3013
  %24 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !3013
  %call29 = call i32 @mmc_card_hs(%struct.mmc_card* %24) #7, !dbg !3013
  %tobool30 = icmp ne i32 %call29, 0, !dbg !3013
  %25 = zext i1 %tobool30 to i64, !dbg !3013
  %cond = select i1 %tobool30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), !dbg !3013
  %26 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !3013
  %call31 = call zeroext i1 @mmc_card_ddr52(%struct.mmc_card* %26) #7, !dbg !3013
  %27 = zext i1 %call31 to i64, !dbg !3013
  %cond33 = select i1 %call31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), !dbg !3013
  %28 = load i8*, i8** %type, align 8, !dbg !3013
  %call34 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0), i8* %call28, i8* %cond, i8* %cond33, i8* %28) #11, !dbg !3013
  br label %if.end62, !dbg !3015

if.else35:                                        ; preds = %if.end21
  %29 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !3016
  %host36 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %29, i32 0, i32 0, !dbg !3016
  %30 = load %struct.mmc_host*, %struct.mmc_host** %host36, align 8, !dbg !3016
  %class_dev37 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %30, i32 0, i32 1, !dbg !3016
  %call38 = call i8* @dev_name(%struct.device* %class_dev37) #7, !dbg !3016
  %31 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !3016
  %call39 = call i32 @mmc_card_uhs(%struct.mmc_card* %31) #7, !dbg !3016
  %tobool40 = icmp ne i32 %call39, 0, !dbg !3016
  br i1 %tobool40, label %cond.true, label %cond.false, !dbg !3016

cond.true:                                        ; preds = %if.else35
  br label %cond.end, !dbg !3016

cond.false:                                       ; preds = %if.else35
  %32 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !3016
  %call41 = call i32 @mmc_card_hs(%struct.mmc_card* %32) #7, !dbg !3016
  %tobool42 = icmp ne i32 %call41, 0, !dbg !3016
  %33 = zext i1 %tobool42 to i64, !dbg !3016
  %cond43 = select i1 %tobool42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), !dbg !3016
  br label %cond.end, !dbg !3016

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond44 = phi i8* [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0), %cond.true ], [ %cond43, %cond.false ], !dbg !3016
  %34 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !3016
  %call45 = call zeroext i1 @mmc_card_hs400(%struct.mmc_card* %34) #7, !dbg !3016
  br i1 %call45, label %cond.true47, label %cond.false48, !dbg !3016

cond.true47:                                      ; preds = %cond.end
  br label %cond.end52, !dbg !3016

cond.false48:                                     ; preds = %cond.end
  %35 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !3016
  %call49 = call zeroext i1 @mmc_card_hs200(%struct.mmc_card* %35) #7, !dbg !3016
  %36 = zext i1 %call49 to i64, !dbg !3016
  %cond51 = select i1 %call49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), !dbg !3016
  br label %cond.end52, !dbg !3016

cond.end52:                                       ; preds = %cond.false48, %cond.true47
  %cond53 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), %cond.true47 ], [ %cond51, %cond.false48 ], !dbg !3016
  %37 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !3016
  %call54 = call zeroext i1 @mmc_card_hs400es(%struct.mmc_card* %37) #7, !dbg !3016
  %38 = zext i1 %call54 to i64, !dbg !3016
  %cond56 = select i1 %call54, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), !dbg !3016
  %39 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !3016
  %call57 = call zeroext i1 @mmc_card_ddr52(%struct.mmc_card* %39) #7, !dbg !3016
  %40 = zext i1 %call57 to i64, !dbg !3016
  %cond59 = select i1 %call57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), !dbg !3016
  %41 = load i8*, i8** %uhs_bus_speed_mode, align 8, !dbg !3016
  %42 = load i8*, i8** %type, align 8, !dbg !3016
  %43 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !3016
  %rca60 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %43, i32 0, i32 3, !dbg !3016
  %44 = load i32, i32* %rca60, align 4, !dbg !3016
  %call61 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.18, i64 0, i64 0), i8* %call38, i8* %cond44, i8* %cond53, i8* %cond56, i8* %cond59, i8* %41, i8* %42, i32 %44) #11, !dbg !3016
  br label %if.end62

if.end62:                                         ; preds = %cond.end52, %if.then25
  %45 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !3018
  %host63 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %45, i32 0, i32 0, !dbg !3019
  %46 = load %struct.mmc_host*, %struct.mmc_host** %host63, align 8, !dbg !3019
  %call64 = call %struct.device_node* @mmc_of_find_child_device(%struct.mmc_host* %46, i32 0) #7, !dbg !3020
  %47 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !3021
  %dev65 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %47, i32 0, i32 1, !dbg !3022
  %of_node = getelementptr inbounds %struct.device, %struct.device* %dev65, i32 0, i32 23, !dbg !3023
  store %struct.device_node* %call64, %struct.device_node** %of_node, align 8, !dbg !3024
  %48 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !3025
  %dev66 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %48, i32 0, i32 1, !dbg !3026
  call void @device_enable_async_suspend(%struct.device* %dev66) #7, !dbg !3027
  %49 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !3028
  %dev67 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %49, i32 0, i32 1, !dbg !3029
  %call68 = call i32 @device_add(%struct.device* %dev67) #7, !dbg !3030
  store i32 %call68, i32* %ret, align 4, !dbg !3031
  %50 = load i32, i32* %ret, align 4, !dbg !3032
  %tobool69 = icmp ne i32 %50, 0, !dbg !3032
  br i1 %tobool69, label %if.then70, label %if.end71, !dbg !3034

if.then70:                                        ; preds = %if.end62
  %51 = load i32, i32* %ret, align 4, !dbg !3035
  store i32 %51, i32* %retval, align 4, !dbg !3036
  br label %return, !dbg !3036

if.end71:                                         ; preds = %if.end62
  %52 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !3037
  %state72 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %52, i32 0, i32 5, !dbg !3037
  %53 = load i32, i32* %state72, align 4, !dbg !3037
  %or = or i32 %53, 1, !dbg !3037
  store i32 %or, i32* %state72, align 4, !dbg !3037
  store i32 0, i32* %retval, align 4, !dbg !3038
  br label %return, !dbg !3038

return:                                           ; preds = %if.end71, %if.then70
  %54 = load i32, i32* %retval, align 4, !dbg !3039
  ret i32 %54, !dbg !3039
}

; Function Attrs: noredzone
declare dso_local i32 @dev_set_name(%struct.device*, i8*, ...) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_name(%struct.device* %dev) #0 !dbg !3040 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3043, metadata !DIExpression()), !dbg !3044
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3045
  %init_name = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 3, !dbg !3047
  %1 = load i8*, i8** %init_name, align 8, !dbg !3047
  %tobool = icmp ne i8* %1, null, !dbg !3045
  br i1 %tobool, label %if.then, label %if.end, !dbg !3048

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3049
  %init_name1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 3, !dbg !3050
  %3 = load i8*, i8** %init_name1, align 8, !dbg !3050
  store i8* %3, i8** %retval, align 8, !dbg !3051
  br label %return, !dbg !3051

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3052
  %kobj = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0, !dbg !3053
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #7, !dbg !3054
  store i8* %call, i8** %retval, align 8, !dbg !3055
  br label %return, !dbg !3055

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !3056
  ret i8* %5, !dbg !3056
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mmc_card_uhs(%struct.mmc_card* %card) #0 !dbg !3057 {
entry:
  %card.addr = alloca %struct.mmc_card*, align 8
  store %struct.mmc_card* %card, %struct.mmc_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %card.addr, metadata !3058, metadata !DIExpression()), !dbg !3059
  %0 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !3060
  %host = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %0, i32 0, i32 0, !dbg !3061
  %1 = load %struct.mmc_host*, %struct.mmc_host** %host, align 8, !dbg !3061
  %ios = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %1, i32 0, i32 29, !dbg !3062
  %timing = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %ios, i32 0, i32 7, !dbg !3063
  %2 = load i8, i8* %timing, align 4, !dbg !3063
  %conv = zext i8 %2 to i32, !dbg !3060
  %cmp = icmp sge i32 %conv, 3, !dbg !3064
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3065

land.rhs:                                         ; preds = %entry
  %3 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !3066
  %host2 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %3, i32 0, i32 0, !dbg !3067
  %4 = load %struct.mmc_host*, %struct.mmc_host** %host2, align 8, !dbg !3067
  %ios3 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %4, i32 0, i32 29, !dbg !3068
  %timing4 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %ios3, i32 0, i32 7, !dbg !3069
  %5 = load i8, i8* %timing4, align 4, !dbg !3069
  %conv5 = zext i8 %5 to i32, !dbg !3066
  %cmp6 = icmp sle i32 %conv5, 7, !dbg !3070
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %cmp6, %land.rhs ], !dbg !3071
  %land.ext = zext i1 %6 to i32, !dbg !3065
  ret i32 %land.ext, !dbg !3072
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mmc_card_hs(%struct.mmc_card* %card) #0 !dbg !3073 {
entry:
  %card.addr = alloca %struct.mmc_card*, align 8
  store %struct.mmc_card* %card, %struct.mmc_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %card.addr, metadata !3074, metadata !DIExpression()), !dbg !3075
  %0 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !3076
  %host = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %0, i32 0, i32 0, !dbg !3077
  %1 = load %struct.mmc_host*, %struct.mmc_host** %host, align 8, !dbg !3077
  %ios = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %1, i32 0, i32 29, !dbg !3078
  %timing = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %ios, i32 0, i32 7, !dbg !3079
  %2 = load i8, i8* %timing, align 4, !dbg !3079
  %conv = zext i8 %2 to i32, !dbg !3076
  %cmp = icmp eq i32 %conv, 2, !dbg !3080
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !3081

lor.rhs:                                          ; preds = %entry
  %3 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !3082
  %host2 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %3, i32 0, i32 0, !dbg !3083
  %4 = load %struct.mmc_host*, %struct.mmc_host** %host2, align 8, !dbg !3083
  %ios3 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %4, i32 0, i32 29, !dbg !3084
  %timing4 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %ios3, i32 0, i32 7, !dbg !3085
  %5 = load i8, i8* %timing4, align 4, !dbg !3085
  %conv5 = zext i8 %5 to i32, !dbg !3082
  %cmp6 = icmp eq i32 %conv5, 1, !dbg !3086
  br label %lor.end, !dbg !3081

lor.end:                                          ; preds = %lor.rhs, %entry
  %6 = phi i1 [ true, %entry ], [ %cmp6, %lor.rhs ]
  %lor.ext = zext i1 %6 to i32, !dbg !3081
  ret i32 %lor.ext, !dbg !3087
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @mmc_card_ddr52(%struct.mmc_card* %card) #0 !dbg !3088 {
entry:
  %card.addr = alloca %struct.mmc_card*, align 8
  store %struct.mmc_card* %card, %struct.mmc_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %card.addr, metadata !3092, metadata !DIExpression()), !dbg !3093
  %0 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !3094
  %host = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %0, i32 0, i32 0, !dbg !3095
  %1 = load %struct.mmc_host*, %struct.mmc_host** %host, align 8, !dbg !3095
  %ios = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %1, i32 0, i32 29, !dbg !3096
  %timing = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %ios, i32 0, i32 7, !dbg !3097
  %2 = load i8, i8* %timing, align 4, !dbg !3097
  %conv = zext i8 %2 to i32, !dbg !3094
  %cmp = icmp eq i32 %conv, 8, !dbg !3098
  ret i1 %cmp, !dbg !3099
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @mmc_card_hs400(%struct.mmc_card* %card) #0 !dbg !3100 {
entry:
  %card.addr = alloca %struct.mmc_card*, align 8
  store %struct.mmc_card* %card, %struct.mmc_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %card.addr, metadata !3101, metadata !DIExpression()), !dbg !3102
  %0 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !3103
  %host = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %0, i32 0, i32 0, !dbg !3104
  %1 = load %struct.mmc_host*, %struct.mmc_host** %host, align 8, !dbg !3104
  %ios = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %1, i32 0, i32 29, !dbg !3105
  %timing = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %ios, i32 0, i32 7, !dbg !3106
  %2 = load i8, i8* %timing, align 4, !dbg !3106
  %conv = zext i8 %2 to i32, !dbg !3103
  %cmp = icmp eq i32 %conv, 10, !dbg !3107
  ret i1 %cmp, !dbg !3108
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @mmc_card_hs200(%struct.mmc_card* %card) #0 !dbg !3109 {
entry:
  %card.addr = alloca %struct.mmc_card*, align 8
  store %struct.mmc_card* %card, %struct.mmc_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %card.addr, metadata !3110, metadata !DIExpression()), !dbg !3111
  %0 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !3112
  %host = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %0, i32 0, i32 0, !dbg !3113
  %1 = load %struct.mmc_host*, %struct.mmc_host** %host, align 8, !dbg !3113
  %ios = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %1, i32 0, i32 29, !dbg !3114
  %timing = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %ios, i32 0, i32 7, !dbg !3115
  %2 = load i8, i8* %timing, align 4, !dbg !3115
  %conv = zext i8 %2 to i32, !dbg !3112
  %cmp = icmp eq i32 %conv, 9, !dbg !3116
  ret i1 %cmp, !dbg !3117
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @mmc_card_hs400es(%struct.mmc_card* %card) #0 !dbg !3118 {
entry:
  %card.addr = alloca %struct.mmc_card*, align 8
  store %struct.mmc_card* %card, %struct.mmc_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %card.addr, metadata !3119, metadata !DIExpression()), !dbg !3120
  %0 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !3121
  %host = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %0, i32 0, i32 0, !dbg !3122
  %1 = load %struct.mmc_host*, %struct.mmc_host** %host, align 8, !dbg !3122
  %ios = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %1, i32 0, i32 29, !dbg !3123
  %enhanced_strobe = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %ios, i32 0, i32 10, !dbg !3124
  %2 = load i8, i8* %enhanced_strobe, align 1, !dbg !3124
  %tobool = trunc i8 %2 to i1, !dbg !3124
  ret i1 %tobool, !dbg !3125
}

; Function Attrs: noredzone
declare dso_local %struct.device_node* @mmc_of_find_child_device(%struct.mmc_host*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @device_enable_async_suspend(%struct.device* %dev) #0 !dbg !3126 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3127, metadata !DIExpression()), !dbg !3128
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3129
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !3131
  %is_prepared = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 1, !dbg !3132
  %bf.load = load i16, i16* %is_prepared, align 4, !dbg !3132
  %bf.lshr = lshr i16 %bf.load, 3, !dbg !3132
  %bf.clear = and i16 %bf.lshr, 1, !dbg !3132
  %bf.cast = trunc i16 %bf.clear to i1, !dbg !3132
  br i1 %bf.cast, label %if.end, label %if.then, !dbg !3133

if.then:                                          ; preds = %entry
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3134
  %power1 = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 11, !dbg !3135
  %async_suspend = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power1, i32 0, i32 1, !dbg !3136
  %bf.load2 = load i16, i16* %async_suspend, align 4, !dbg !3137
  %bf.clear3 = and i16 %bf.load2, -3, !dbg !3137
  %bf.set = or i16 %bf.clear3, 2, !dbg !3137
  store i16 %bf.set, i16* %async_suspend, align 4, !dbg !3137
  br label %if.end, !dbg !3134

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3138
}

; Function Attrs: noredzone
declare dso_local i32 @device_add(%struct.device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @mmc_remove_card(%struct.mmc_card* %card) #0 !dbg !3139 {
entry:
  %card.addr = alloca %struct.mmc_card*, align 8
  %host = alloca %struct.mmc_host*, align 8
  store %struct.mmc_card* %card, %struct.mmc_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %card.addr, metadata !3140, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.declare(metadata %struct.mmc_host** %host, metadata !3142, metadata !DIExpression()), !dbg !3143
  %0 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !3144
  %host1 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %0, i32 0, i32 0, !dbg !3145
  %1 = load %struct.mmc_host*, %struct.mmc_host** %host1, align 8, !dbg !3145
  store %struct.mmc_host* %1, %struct.mmc_host** %host, align 8, !dbg !3143
  %2 = load %struct.mmc_host*, %struct.mmc_host** %host, align 8, !dbg !3146
  %cqe_enabled = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %2, i32 0, i32 65, !dbg !3148
  %3 = load i8, i8* %cqe_enabled, align 4, !dbg !3148
  %tobool = trunc i8 %3 to i1, !dbg !3148
  br i1 %tobool, label %if.then, label %if.end, !dbg !3149

if.then:                                          ; preds = %entry
  %4 = load %struct.mmc_host*, %struct.mmc_host** %host, align 8, !dbg !3150
  %cqe_ops = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %4, i32 0, i32 62, !dbg !3152
  %5 = load %struct.mmc_cqe_ops*, %struct.mmc_cqe_ops** %cqe_ops, align 64, !dbg !3152
  %cqe_disable = getelementptr inbounds %struct.mmc_cqe_ops, %struct.mmc_cqe_ops* %5, i32 0, i32 1, !dbg !3153
  %6 = load void (%struct.mmc_host*)*, void (%struct.mmc_host*)** %cqe_disable, align 8, !dbg !3153
  %7 = load %struct.mmc_host*, %struct.mmc_host** %host, align 8, !dbg !3154
  call void %6(%struct.mmc_host* %7) #7, !dbg !3150
  %8 = load %struct.mmc_host*, %struct.mmc_host** %host, align 8, !dbg !3155
  %cqe_enabled2 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %8, i32 0, i32 65, !dbg !3156
  store i8 0, i8* %cqe_enabled2, align 4, !dbg !3157
  br label %if.end, !dbg !3158

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !3159
  %state = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %9, i32 0, i32 5, !dbg !3159
  %10 = load i32, i32* %state, align 4, !dbg !3159
  %and = and i32 %10, 1, !dbg !3159
  %tobool3 = icmp ne i32 %and, 0, !dbg !3159
  br i1 %tobool3, label %if.then4, label %if.end17, !dbg !3161

if.then4:                                         ; preds = %if.end
  %11 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !3162
  %host5 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %11, i32 0, i32 0, !dbg !3162
  %12 = load %struct.mmc_host*, %struct.mmc_host** %host5, align 8, !dbg !3162
  %caps = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %12, i32 0, i32 17, !dbg !3162
  %13 = load i32, i32* %caps, align 4, !dbg !3162
  %and6 = and i32 %13, 16, !dbg !3162
  %tobool7 = icmp ne i32 %and6, 0, !dbg !3162
  br i1 %tobool7, label %if.then8, label %if.else, !dbg !3165

if.then8:                                         ; preds = %if.then4
  %14 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !3166
  %host9 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %14, i32 0, i32 0, !dbg !3166
  %15 = load %struct.mmc_host*, %struct.mmc_host** %host9, align 8, !dbg !3166
  %class_dev = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %15, i32 0, i32 1, !dbg !3166
  %call = call i8* @dev_name(%struct.device* %class_dev) #7, !dbg !3166
  %call10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i64 0, i64 0), i8* %call) #11, !dbg !3166
  br label %if.end15, !dbg !3168

if.else:                                          ; preds = %if.then4
  %16 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !3169
  %host11 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %16, i32 0, i32 0, !dbg !3169
  %17 = load %struct.mmc_host*, %struct.mmc_host** %host11, align 8, !dbg !3169
  %class_dev12 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %17, i32 0, i32 1, !dbg !3169
  %call13 = call i8* @dev_name(%struct.device* %class_dev12) #7, !dbg !3169
  %18 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !3169
  %rca = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %18, i32 0, i32 3, !dbg !3169
  %19 = load i32, i32* %rca, align 4, !dbg !3169
  %call14 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0), i8* %call13, i32 %19) #11, !dbg !3169
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then8
  %20 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !3171
  %dev = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %20, i32 0, i32 1, !dbg !3172
  call void @device_del(%struct.device* %dev) #7, !dbg !3173
  %21 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !3174
  %dev16 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %21, i32 0, i32 1, !dbg !3175
  %of_node = getelementptr inbounds %struct.device, %struct.device* %dev16, i32 0, i32 23, !dbg !3176
  %22 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !3176
  call void @of_node_put(%struct.device_node* %22) #7, !dbg !3177
  br label %if.end17, !dbg !3178

if.end17:                                         ; preds = %if.end15, %if.end
  %23 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !3179
  %dev18 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %23, i32 0, i32 1, !dbg !3180
  call void @put_device(%struct.device* %dev18) #7, !dbg !3181
  ret void, !dbg !3182
}

; Function Attrs: noredzone
declare dso_local void @device_del(%struct.device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @of_node_put(%struct.device_node* %node) #0 !dbg !3183 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !3186, metadata !DIExpression()), !dbg !3187
  ret void, !dbg !3188
}

; Function Attrs: noredzone
declare dso_local void @put_device(%struct.device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mmc_bus_match(%struct.device* %dev, %struct.device_driver* %drv) #0 !dbg !3189 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %drv.addr = alloca %struct.device_driver*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3190, metadata !DIExpression()), !dbg !3191
  store %struct.device_driver* %drv, %struct.device_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_driver** %drv.addr, metadata !3192, metadata !DIExpression()), !dbg !3193
  ret i32 1, !dbg !3194
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mmc_bus_uevent(%struct.device* %dev, %struct.kobj_uevent_env* %env) #0 !dbg !3195 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %env.addr = alloca %struct.kobj_uevent_env*, align 8
  %card = alloca %struct.mmc_card*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.mmc_card*, align 8
  %type = alloca i8*, align 8
  %i = alloca i32, align 4
  %retval1 = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3196, metadata !DIExpression()), !dbg !3197
  store %struct.kobj_uevent_env* %env, %struct.kobj_uevent_env** %env.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobj_uevent_env** %env.addr, metadata !3198, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %card, metadata !3200, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3202, metadata !DIExpression()), !dbg !3204
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3204
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3204
  store i8* %1, i8** %__mptr, align 8, !dbg !3204
  br label %do.body, !dbg !3204

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3205

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3204
  %add.ptr = getelementptr i8, i8* %2, i64 -8, !dbg !3204
  %3 = bitcast i8* %add.ptr to %struct.mmc_card*, !dbg !3204
  store %struct.mmc_card* %3, %struct.mmc_card** %tmp, align 8, !dbg !3205
  %4 = load %struct.mmc_card*, %struct.mmc_card** %tmp, align 8, !dbg !3204
  store %struct.mmc_card* %4, %struct.mmc_card** %card, align 8, !dbg !3201
  call void @llvm.dbg.declare(metadata i8** %type, metadata !3207, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3209, metadata !DIExpression()), !dbg !3210
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !3211, metadata !DIExpression()), !dbg !3212
  store i32 0, i32* %retval1, align 4, !dbg !3212
  %5 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3213
  %type2 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %5, i32 0, i32 4, !dbg !3214
  %6 = load i32, i32* %type2, align 8, !dbg !3214
  switch i32 %6, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb4
    i32 3, label %sw.bb5
  ], !dbg !3215

sw.bb:                                            ; preds = %do.end
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8** %type, align 8, !dbg !3216
  br label %sw.epilog, !dbg !3218

sw.bb3:                                           ; preds = %do.end
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8** %type, align 8, !dbg !3219
  br label %sw.epilog, !dbg !3220

sw.bb4:                                           ; preds = %do.end
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8** %type, align 8, !dbg !3221
  br label %sw.epilog, !dbg !3222

sw.bb5:                                           ; preds = %do.end
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i64 0, i64 0), i8** %type, align 8, !dbg !3223
  br label %sw.epilog, !dbg !3224

sw.default:                                       ; preds = %do.end
  store i8* null, i8** %type, align 8, !dbg !3225
  br label %sw.epilog, !dbg !3226

sw.epilog:                                        ; preds = %sw.default, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb
  %7 = load i8*, i8** %type, align 8, !dbg !3227
  %tobool = icmp ne i8* %7, null, !dbg !3227
  br i1 %tobool, label %if.then, label %if.end8, !dbg !3229

if.then:                                          ; preds = %sw.epilog
  %8 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %env.addr, align 8, !dbg !3230
  %9 = load i8*, i8** %type, align 8, !dbg !3232
  %call = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0), i8* %9) #7, !dbg !3233
  store i32 %call, i32* %retval1, align 4, !dbg !3234
  %10 = load i32, i32* %retval1, align 4, !dbg !3235
  %tobool6 = icmp ne i32 %10, 0, !dbg !3235
  br i1 %tobool6, label %if.then7, label %if.end, !dbg !3237

if.then7:                                         ; preds = %if.then
  %11 = load i32, i32* %retval1, align 4, !dbg !3238
  store i32 %11, i32* %retval, align 4, !dbg !3239
  br label %return, !dbg !3239

if.end:                                           ; preds = %if.then
  br label %if.end8, !dbg !3240

if.end8:                                          ; preds = %if.end, %sw.epilog
  %12 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3241
  %type9 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %12, i32 0, i32 4, !dbg !3243
  %13 = load i32, i32* %type9, align 8, !dbg !3243
  %cmp = icmp eq i32 %13, 2, !dbg !3244
  br i1 %cmp, label %if.then12, label %lor.lhs.false, !dbg !3245

lor.lhs.false:                                    ; preds = %if.end8
  %14 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3246
  %type10 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %14, i32 0, i32 4, !dbg !3247
  %15 = load i32, i32* %type10, align 8, !dbg !3247
  %cmp11 = icmp eq i32 %15, 3, !dbg !3248
  br i1 %cmp11, label %if.then12, label %if.end31, !dbg !3249

if.then12:                                        ; preds = %lor.lhs.false, %if.end8
  %16 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %env.addr, align 8, !dbg !3250
  %17 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3252
  %cis = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %17, i32 0, i32 28, !dbg !3253
  %vendor = getelementptr inbounds %struct.sdio_cis, %struct.sdio_cis* %cis, i32 0, i32 0, !dbg !3254
  %18 = load i16, i16* %vendor, align 4, !dbg !3254
  %conv = zext i16 %18 to i32, !dbg !3252
  %19 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3255
  %cis13 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %19, i32 0, i32 28, !dbg !3256
  %device = getelementptr inbounds %struct.sdio_cis, %struct.sdio_cis* %cis13, i32 0, i32 1, !dbg !3257
  %20 = load i16, i16* %device, align 2, !dbg !3257
  %conv14 = zext i16 %20 to i32, !dbg !3255
  %call15 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i64 0, i64 0), i32 %conv, i32 %conv14) #7, !dbg !3258
  store i32 %call15, i32* %retval1, align 4, !dbg !3259
  %21 = load i32, i32* %retval1, align 4, !dbg !3260
  %tobool16 = icmp ne i32 %21, 0, !dbg !3260
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !3262

if.then17:                                        ; preds = %if.then12
  %22 = load i32, i32* %retval1, align 4, !dbg !3263
  store i32 %22, i32* %retval, align 4, !dbg !3264
  br label %return, !dbg !3264

if.end18:                                         ; preds = %if.then12
  %23 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %env.addr, align 8, !dbg !3265
  %24 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3266
  %major_rev = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %24, i32 0, i32 31, !dbg !3267
  %25 = load i8, i8* %major_rev, align 8, !dbg !3267
  %conv19 = zext i8 %25 to i32, !dbg !3266
  %26 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3268
  %minor_rev = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %26, i32 0, i32 32, !dbg !3269
  %27 = load i8, i8* %minor_rev, align 1, !dbg !3269
  %conv20 = zext i8 %27 to i32, !dbg !3268
  %call21 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.34, i64 0, i64 0), i32 %conv19, i32 %conv20) #7, !dbg !3270
  store i32 %call21, i32* %retval1, align 4, !dbg !3271
  %28 = load i32, i32* %retval1, align 4, !dbg !3272
  %tobool22 = icmp ne i32 %28, 0, !dbg !3272
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !3274

if.then23:                                        ; preds = %if.end18
  %29 = load i32, i32* %retval1, align 4, !dbg !3275
  store i32 %29, i32* %retval, align 4, !dbg !3276
  br label %return, !dbg !3276

if.end24:                                         ; preds = %if.end18
  store i32 0, i32* %i, align 4, !dbg !3277
  br label %for.cond, !dbg !3279

for.cond:                                         ; preds = %for.inc, %if.end24
  %30 = load i32, i32* %i, align 4, !dbg !3280
  %31 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3282
  %num_info = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %31, i32 0, i32 33, !dbg !3283
  %32 = load i32, i32* %num_info, align 4, !dbg !3283
  %cmp25 = icmp ult i32 %30, %32, !dbg !3284
  br i1 %cmp25, label %for.body, label %for.end, !dbg !3285

for.body:                                         ; preds = %for.cond
  %33 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %env.addr, align 8, !dbg !3286
  %34 = load i32, i32* %i, align 4, !dbg !3288
  %add = add i32 %34, 1, !dbg !3289
  %35 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3290
  %info = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %35, i32 0, i32 34, !dbg !3291
  %36 = load i8**, i8*** %info, align 8, !dbg !3291
  %37 = load i32, i32* %i, align 4, !dbg !3292
  %idxprom = zext i32 %37 to i64, !dbg !3290
  %arrayidx = getelementptr i8*, i8** %36, i64 %idxprom, !dbg !3290
  %38 = load i8*, i8** %arrayidx, align 8, !dbg !3290
  %call27 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0), i32 %add, i8* %38) #7, !dbg !3293
  store i32 %call27, i32* %retval1, align 4, !dbg !3294
  %39 = load i32, i32* %retval1, align 4, !dbg !3295
  %tobool28 = icmp ne i32 %39, 0, !dbg !3295
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !3297

if.then29:                                        ; preds = %for.body
  %40 = load i32, i32* %retval1, align 4, !dbg !3298
  store i32 %40, i32* %retval, align 4, !dbg !3299
  br label %return, !dbg !3299

if.end30:                                         ; preds = %for.body
  br label %for.inc, !dbg !3300

for.inc:                                          ; preds = %if.end30
  %41 = load i32, i32* %i, align 4, !dbg !3301
  %inc = add i32 %41, 1, !dbg !3301
  store i32 %inc, i32* %i, align 4, !dbg !3301
  br label %for.cond, !dbg !3302, !llvm.loop !3303

for.end:                                          ; preds = %for.cond
  br label %if.end31, !dbg !3305

if.end31:                                         ; preds = %for.end, %lor.lhs.false
  %42 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3306
  %type32 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %42, i32 0, i32 4, !dbg !3308
  %43 = load i32, i32* %type32, align 8, !dbg !3308
  %cmp33 = icmp eq i32 %43, 2, !dbg !3309
  br i1 %cmp33, label %if.then35, label %if.end36, !dbg !3310

if.then35:                                        ; preds = %if.end31
  store i32 0, i32* %retval, align 4, !dbg !3311
  br label %return, !dbg !3311

if.end36:                                         ; preds = %if.end31
  %44 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %env.addr, align 8, !dbg !3312
  %45 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3313
  %cid = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %45, i32 0, i32 19, !dbg !3313
  %prod_name = getelementptr inbounds %struct.mmc_cid, %struct.mmc_cid* %cid, i32 0, i32 1, !dbg !3313
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %prod_name, i64 0, i64 0, !dbg !3313
  %call37 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i8* %arraydecay) #7, !dbg !3314
  store i32 %call37, i32* %retval1, align 4, !dbg !3315
  %46 = load i32, i32* %retval1, align 4, !dbg !3316
  %tobool38 = icmp ne i32 %46, 0, !dbg !3316
  br i1 %tobool38, label %if.then39, label %if.end40, !dbg !3318

if.then39:                                        ; preds = %if.end36
  %47 = load i32, i32* %retval1, align 4, !dbg !3319
  store i32 %47, i32* %retval, align 4, !dbg !3320
  br label %return, !dbg !3320

if.end40:                                         ; preds = %if.end36
  %48 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %env.addr, align 8, !dbg !3321
  %call41 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* %48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.37, i64 0, i64 0)) #7, !dbg !3322
  store i32 %call41, i32* %retval1, align 4, !dbg !3323
  %49 = load i32, i32* %retval1, align 4, !dbg !3324
  store i32 %49, i32* %retval, align 4, !dbg !3325
  br label %return, !dbg !3325

return:                                           ; preds = %if.end40, %if.then39, %if.then35, %if.then29, %if.then23, %if.then17, %if.then7
  %50 = load i32, i32* %retval, align 4, !dbg !3326
  ret i32 %50, !dbg !3326
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mmc_bus_probe(%struct.device* %dev) #0 !dbg !3327 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %drv = alloca %struct.mmc_driver*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.mmc_driver*, align 8
  %card = alloca %struct.mmc_card*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp4 = alloca %struct.mmc_card*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3328, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.declare(metadata %struct.mmc_driver** %drv, metadata !3330, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3332, metadata !DIExpression()), !dbg !3334
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3334
  %driver = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 6, !dbg !3334
  %1 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !3334
  %2 = bitcast %struct.device_driver* %1 to i8*, !dbg !3334
  store i8* %2, i8** %__mptr, align 8, !dbg !3334
  br label %do.body, !dbg !3334

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3335

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !3334
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !3334
  %4 = bitcast i8* %add.ptr to %struct.mmc_driver*, !dbg !3334
  store %struct.mmc_driver* %4, %struct.mmc_driver** %tmp, align 8, !dbg !3335
  %5 = load %struct.mmc_driver*, %struct.mmc_driver** %tmp, align 8, !dbg !3334
  store %struct.mmc_driver* %5, %struct.mmc_driver** %drv, align 8, !dbg !3331
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %card, metadata !3337, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !3339, metadata !DIExpression()), !dbg !3341
  %6 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3341
  %7 = bitcast %struct.device* %6 to i8*, !dbg !3341
  store i8* %7, i8** %__mptr1, align 8, !dbg !3341
  br label %do.body2, !dbg !3341

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !3342

do.end3:                                          ; preds = %do.body2
  %8 = load i8*, i8** %__mptr1, align 8, !dbg !3341
  %add.ptr5 = getelementptr i8, i8* %8, i64 -8, !dbg !3341
  %9 = bitcast i8* %add.ptr5 to %struct.mmc_card*, !dbg !3341
  store %struct.mmc_card* %9, %struct.mmc_card** %tmp4, align 8, !dbg !3342
  %10 = load %struct.mmc_card*, %struct.mmc_card** %tmp4, align 8, !dbg !3341
  store %struct.mmc_card* %10, %struct.mmc_card** %card, align 8, !dbg !3338
  %11 = load %struct.mmc_driver*, %struct.mmc_driver** %drv, align 8, !dbg !3344
  %probe = getelementptr inbounds %struct.mmc_driver, %struct.mmc_driver* %11, i32 0, i32 1, !dbg !3345
  %12 = load i32 (%struct.mmc_card*)*, i32 (%struct.mmc_card*)** %probe, align 8, !dbg !3345
  %13 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3346
  %call = call i32 %12(%struct.mmc_card* %13) #7, !dbg !3344
  ret i32 %call, !dbg !3347
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mmc_bus_remove(%struct.device* %dev) #0 !dbg !3348 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %drv = alloca %struct.mmc_driver*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.mmc_driver*, align 8
  %card = alloca %struct.mmc_card*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp4 = alloca %struct.mmc_card*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3349, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.declare(metadata %struct.mmc_driver** %drv, metadata !3351, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3353, metadata !DIExpression()), !dbg !3355
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3355
  %driver = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 6, !dbg !3355
  %1 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !3355
  %2 = bitcast %struct.device_driver* %1 to i8*, !dbg !3355
  store i8* %2, i8** %__mptr, align 8, !dbg !3355
  br label %do.body, !dbg !3355

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3356

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !3355
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !3355
  %4 = bitcast i8* %add.ptr to %struct.mmc_driver*, !dbg !3355
  store %struct.mmc_driver* %4, %struct.mmc_driver** %tmp, align 8, !dbg !3356
  %5 = load %struct.mmc_driver*, %struct.mmc_driver** %tmp, align 8, !dbg !3355
  store %struct.mmc_driver* %5, %struct.mmc_driver** %drv, align 8, !dbg !3352
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %card, metadata !3358, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !3360, metadata !DIExpression()), !dbg !3362
  %6 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3362
  %7 = bitcast %struct.device* %6 to i8*, !dbg !3362
  store i8* %7, i8** %__mptr1, align 8, !dbg !3362
  br label %do.body2, !dbg !3362

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !3363

do.end3:                                          ; preds = %do.body2
  %8 = load i8*, i8** %__mptr1, align 8, !dbg !3362
  %add.ptr5 = getelementptr i8, i8* %8, i64 -8, !dbg !3362
  %9 = bitcast i8* %add.ptr5 to %struct.mmc_card*, !dbg !3362
  store %struct.mmc_card* %9, %struct.mmc_card** %tmp4, align 8, !dbg !3363
  %10 = load %struct.mmc_card*, %struct.mmc_card** %tmp4, align 8, !dbg !3362
  store %struct.mmc_card* %10, %struct.mmc_card** %card, align 8, !dbg !3359
  %11 = load %struct.mmc_driver*, %struct.mmc_driver** %drv, align 8, !dbg !3365
  %remove = getelementptr inbounds %struct.mmc_driver, %struct.mmc_driver* %11, i32 0, i32 2, !dbg !3366
  %12 = load void (%struct.mmc_card*)*, void (%struct.mmc_card*)** %remove, align 8, !dbg !3366
  %13 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3367
  call void %12(%struct.mmc_card* %13) #7, !dbg !3365
  ret i32 0, !dbg !3368
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mmc_bus_shutdown(%struct.device* %dev) #0 !dbg !3369 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %drv = alloca %struct.mmc_driver*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.mmc_driver*, align 8
  %card = alloca %struct.mmc_card*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp4 = alloca %struct.mmc_card*, align 8
  %host = alloca %struct.mmc_host*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3370, metadata !DIExpression()), !dbg !3371
  call void @llvm.dbg.declare(metadata %struct.mmc_driver** %drv, metadata !3372, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3374, metadata !DIExpression()), !dbg !3376
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3376
  %driver = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 6, !dbg !3376
  %1 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !3376
  %2 = bitcast %struct.device_driver* %1 to i8*, !dbg !3376
  store i8* %2, i8** %__mptr, align 8, !dbg !3376
  br label %do.body, !dbg !3376

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3377

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !3376
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !3376
  %4 = bitcast i8* %add.ptr to %struct.mmc_driver*, !dbg !3376
  store %struct.mmc_driver* %4, %struct.mmc_driver** %tmp, align 8, !dbg !3377
  %5 = load %struct.mmc_driver*, %struct.mmc_driver** %tmp, align 8, !dbg !3376
  store %struct.mmc_driver* %5, %struct.mmc_driver** %drv, align 8, !dbg !3373
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %card, metadata !3379, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !3381, metadata !DIExpression()), !dbg !3383
  %6 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3383
  %7 = bitcast %struct.device* %6 to i8*, !dbg !3383
  store i8* %7, i8** %__mptr1, align 8, !dbg !3383
  br label %do.body2, !dbg !3383

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !3384

do.end3:                                          ; preds = %do.body2
  %8 = load i8*, i8** %__mptr1, align 8, !dbg !3383
  %add.ptr5 = getelementptr i8, i8* %8, i64 -8, !dbg !3383
  %9 = bitcast i8* %add.ptr5 to %struct.mmc_card*, !dbg !3383
  store %struct.mmc_card* %9, %struct.mmc_card** %tmp4, align 8, !dbg !3384
  %10 = load %struct.mmc_card*, %struct.mmc_card** %tmp4, align 8, !dbg !3383
  store %struct.mmc_card* %10, %struct.mmc_card** %card, align 8, !dbg !3380
  call void @llvm.dbg.declare(metadata %struct.mmc_host** %host, metadata !3386, metadata !DIExpression()), !dbg !3387
  %11 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3388
  %host6 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %11, i32 0, i32 0, !dbg !3389
  %12 = load %struct.mmc_host*, %struct.mmc_host** %host6, align 8, !dbg !3389
  store %struct.mmc_host* %12, %struct.mmc_host** %host, align 8, !dbg !3387
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3390, metadata !DIExpression()), !dbg !3391
  %13 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3392
  %driver7 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 6, !dbg !3394
  %14 = load %struct.device_driver*, %struct.device_driver** %driver7, align 8, !dbg !3394
  %tobool = icmp ne %struct.device_driver* %14, null, !dbg !3392
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !3395

land.lhs.true:                                    ; preds = %do.end3
  %15 = load %struct.mmc_driver*, %struct.mmc_driver** %drv, align 8, !dbg !3396
  %shutdown = getelementptr inbounds %struct.mmc_driver, %struct.mmc_driver* %15, i32 0, i32 3, !dbg !3397
  %16 = load void (%struct.mmc_card*)*, void (%struct.mmc_card*)** %shutdown, align 8, !dbg !3397
  %tobool8 = icmp ne void (%struct.mmc_card*)* %16, null, !dbg !3396
  br i1 %tobool8, label %if.then, label %if.end, !dbg !3398

if.then:                                          ; preds = %land.lhs.true
  %17 = load %struct.mmc_driver*, %struct.mmc_driver** %drv, align 8, !dbg !3399
  %shutdown9 = getelementptr inbounds %struct.mmc_driver, %struct.mmc_driver* %17, i32 0, i32 3, !dbg !3400
  %18 = load void (%struct.mmc_card*)*, void (%struct.mmc_card*)** %shutdown9, align 8, !dbg !3400
  %19 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3401
  call void %18(%struct.mmc_card* %19) #7, !dbg !3399
  br label %if.end, !dbg !3399

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.end3
  %20 = load %struct.mmc_host*, %struct.mmc_host** %host, align 8, !dbg !3402
  %bus_ops = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %20, i32 0, i32 46, !dbg !3404
  %21 = load %struct.mmc_bus_ops*, %struct.mmc_bus_ops** %bus_ops, align 8, !dbg !3404
  %shutdown10 = getelementptr inbounds %struct.mmc_bus_ops, %struct.mmc_bus_ops* %21, i32 0, i32 8, !dbg !3405
  %22 = load i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)** %shutdown10, align 8, !dbg !3405
  %tobool11 = icmp ne i32 (%struct.mmc_host*)* %22, null, !dbg !3402
  br i1 %tobool11, label %if.then12, label %if.end20, !dbg !3406

if.then12:                                        ; preds = %if.end
  %23 = load %struct.mmc_host*, %struct.mmc_host** %host, align 8, !dbg !3407
  %bus_ops13 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %23, i32 0, i32 46, !dbg !3409
  %24 = load %struct.mmc_bus_ops*, %struct.mmc_bus_ops** %bus_ops13, align 8, !dbg !3409
  %shutdown14 = getelementptr inbounds %struct.mmc_bus_ops, %struct.mmc_bus_ops* %24, i32 0, i32 8, !dbg !3410
  %25 = load i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)** %shutdown14, align 8, !dbg !3410
  %26 = load %struct.mmc_host*, %struct.mmc_host** %host, align 8, !dbg !3411
  %call = call i32 %25(%struct.mmc_host* %26) #7, !dbg !3407
  store i32 %call, i32* %ret, align 4, !dbg !3412
  %27 = load i32, i32* %ret, align 4, !dbg !3413
  %tobool15 = icmp ne i32 %27, 0, !dbg !3413
  br i1 %tobool15, label %if.then16, label %if.end19, !dbg !3415

if.then16:                                        ; preds = %if.then12
  %28 = load %struct.mmc_host*, %struct.mmc_host** %host, align 8, !dbg !3416
  %class_dev = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %28, i32 0, i32 1, !dbg !3416
  %call17 = call i8* @dev_name(%struct.device* %class_dev) #7, !dbg !3416
  %29 = load i32, i32* %ret, align 4, !dbg !3416
  %call18 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.38, i64 0, i64 0), i8* %call17, i32 %29) #11, !dbg !3416
  br label %if.end19, !dbg !3416

if.end19:                                         ; preds = %if.then16, %if.then12
  br label %if.end20, !dbg !3417

if.end20:                                         ; preds = %if.end19, %if.end
  ret void, !dbg !3418
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @type_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3419 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %card = alloca %struct.mmc_card*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.mmc_card*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3420, metadata !DIExpression()), !dbg !3421
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3422, metadata !DIExpression()), !dbg !3423
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3424, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %card, metadata !3426, metadata !DIExpression()), !dbg !3427
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3428, metadata !DIExpression()), !dbg !3430
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3430
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3430
  store i8* %1, i8** %__mptr, align 8, !dbg !3430
  br label %do.body, !dbg !3430

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3431

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3430
  %add.ptr = getelementptr i8, i8* %2, i64 -8, !dbg !3430
  %3 = bitcast i8* %add.ptr to %struct.mmc_card*, !dbg !3430
  store %struct.mmc_card* %3, %struct.mmc_card** %tmp, align 8, !dbg !3431
  %4 = load %struct.mmc_card*, %struct.mmc_card** %tmp, align 8, !dbg !3430
  store %struct.mmc_card* %4, %struct.mmc_card** %card, align 8, !dbg !3427
  %5 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3433
  %type = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %5, i32 0, i32 4, !dbg !3434
  %6 = load i32, i32* %type, align 8, !dbg !3434
  switch i32 %6, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb4
    i32 3, label %sw.bb7
  ], !dbg !3435

sw.bb:                                            ; preds = %do.end
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !3436
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0)) #7, !dbg !3438
  %conv = sext i32 %call to i64, !dbg !3438
  store i64 %conv, i64* %retval, align 8, !dbg !3439
  br label %return, !dbg !3439

sw.bb1:                                           ; preds = %do.end
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !3440
  %call2 = call i32 (i8*, i8*, ...) @sprintf(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0)) #7, !dbg !3441
  %conv3 = sext i32 %call2 to i64, !dbg !3441
  store i64 %conv3, i64* %retval, align 8, !dbg !3442
  br label %return, !dbg !3442

sw.bb4:                                           ; preds = %do.end
  %9 = load i8*, i8** %buf.addr, align 8, !dbg !3443
  %call5 = call i32 (i8*, i8*, ...) @sprintf(i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0)) #7, !dbg !3444
  %conv6 = sext i32 %call5 to i64, !dbg !3444
  store i64 %conv6, i64* %retval, align 8, !dbg !3445
  br label %return, !dbg !3445

sw.bb7:                                           ; preds = %do.end
  %10 = load i8*, i8** %buf.addr, align 8, !dbg !3446
  %call8 = call i32 (i8*, i8*, ...) @sprintf(i8* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i64 0, i64 0)) #7, !dbg !3447
  %conv9 = sext i32 %call8 to i64, !dbg !3447
  store i64 %conv9, i64* %retval, align 8, !dbg !3448
  br label %return, !dbg !3448

sw.default:                                       ; preds = %do.end
  store i64 -14, i64* %retval, align 8, !dbg !3449
  br label %return, !dbg !3449

return:                                           ; preds = %sw.default, %sw.bb7, %sw.bb4, %sw.bb1, %sw.bb
  %11 = load i64, i64* %retval, align 8, !dbg !3450
  ret i64 %11, !dbg !3450
}

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: noredzone
declare dso_local i32 @add_uevent_var(%struct.kobj_uevent_env*, i8*, ...) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mmc_bus_suspend(%struct.device* %dev) #0 !dbg !3451 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %card = alloca %struct.mmc_card*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.mmc_card*, align 8
  %host = alloca %struct.mmc_host*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3452, metadata !DIExpression()), !dbg !3453
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %card, metadata !3454, metadata !DIExpression()), !dbg !3455
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3456, metadata !DIExpression()), !dbg !3458
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3458
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3458
  store i8* %1, i8** %__mptr, align 8, !dbg !3458
  br label %do.body, !dbg !3458

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3459

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3458
  %add.ptr = getelementptr i8, i8* %2, i64 -8, !dbg !3458
  %3 = bitcast i8* %add.ptr to %struct.mmc_card*, !dbg !3458
  store %struct.mmc_card* %3, %struct.mmc_card** %tmp, align 8, !dbg !3459
  %4 = load %struct.mmc_card*, %struct.mmc_card** %tmp, align 8, !dbg !3458
  store %struct.mmc_card* %4, %struct.mmc_card** %card, align 8, !dbg !3455
  call void @llvm.dbg.declare(metadata %struct.mmc_host** %host, metadata !3461, metadata !DIExpression()), !dbg !3462
  %5 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3463
  %host1 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %5, i32 0, i32 0, !dbg !3464
  %6 = load %struct.mmc_host*, %struct.mmc_host** %host1, align 8, !dbg !3464
  store %struct.mmc_host* %6, %struct.mmc_host** %host, align 8, !dbg !3462
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3465, metadata !DIExpression()), !dbg !3466
  %7 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3467
  %call = call i32 @pm_generic_suspend(%struct.device* %7) #7, !dbg !3468
  store i32 %call, i32* %ret, align 4, !dbg !3469
  %8 = load i32, i32* %ret, align 4, !dbg !3470
  %tobool = icmp ne i32 %8, 0, !dbg !3470
  br i1 %tobool, label %if.then, label %if.end, !dbg !3472

if.then:                                          ; preds = %do.end
  %9 = load i32, i32* %ret, align 4, !dbg !3473
  store i32 %9, i32* %retval, align 4, !dbg !3474
  br label %return, !dbg !3474

if.end:                                           ; preds = %do.end
  %10 = load %struct.mmc_host*, %struct.mmc_host** %host, align 8, !dbg !3475
  %bus_ops = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %10, i32 0, i32 46, !dbg !3476
  %11 = load %struct.mmc_bus_ops*, %struct.mmc_bus_ops** %bus_ops, align 8, !dbg !3476
  %suspend = getelementptr inbounds %struct.mmc_bus_ops, %struct.mmc_bus_ops* %11, i32 0, i32 3, !dbg !3477
  %12 = load i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)** %suspend, align 8, !dbg !3477
  %13 = load %struct.mmc_host*, %struct.mmc_host** %host, align 8, !dbg !3478
  %call2 = call i32 %12(%struct.mmc_host* %13) #7, !dbg !3475
  store i32 %call2, i32* %ret, align 4, !dbg !3479
  %14 = load i32, i32* %ret, align 4, !dbg !3480
  %tobool3 = icmp ne i32 %14, 0, !dbg !3480
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !3482

if.then4:                                         ; preds = %if.end
  %15 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3483
  %call5 = call i32 @pm_generic_resume(%struct.device* %15) #7, !dbg !3484
  br label %if.end6, !dbg !3484

if.end6:                                          ; preds = %if.then4, %if.end
  %16 = load i32, i32* %ret, align 4, !dbg !3485
  store i32 %16, i32* %retval, align 4, !dbg !3486
  br label %return, !dbg !3486

return:                                           ; preds = %if.end6, %if.then
  %17 = load i32, i32* %retval, align 4, !dbg !3487
  ret i32 %17, !dbg !3487
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mmc_bus_resume(%struct.device* %dev) #0 !dbg !3488 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %card = alloca %struct.mmc_card*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.mmc_card*, align 8
  %host = alloca %struct.mmc_host*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3489, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %card, metadata !3491, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3493, metadata !DIExpression()), !dbg !3495
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3495
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3495
  store i8* %1, i8** %__mptr, align 8, !dbg !3495
  br label %do.body, !dbg !3495

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3496

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3495
  %add.ptr = getelementptr i8, i8* %2, i64 -8, !dbg !3495
  %3 = bitcast i8* %add.ptr to %struct.mmc_card*, !dbg !3495
  store %struct.mmc_card* %3, %struct.mmc_card** %tmp, align 8, !dbg !3496
  %4 = load %struct.mmc_card*, %struct.mmc_card** %tmp, align 8, !dbg !3495
  store %struct.mmc_card* %4, %struct.mmc_card** %card, align 8, !dbg !3492
  call void @llvm.dbg.declare(metadata %struct.mmc_host** %host, metadata !3498, metadata !DIExpression()), !dbg !3499
  %5 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3500
  %host1 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %5, i32 0, i32 0, !dbg !3501
  %6 = load %struct.mmc_host*, %struct.mmc_host** %host1, align 8, !dbg !3501
  store %struct.mmc_host* %6, %struct.mmc_host** %host, align 8, !dbg !3499
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3502, metadata !DIExpression()), !dbg !3503
  %7 = load %struct.mmc_host*, %struct.mmc_host** %host, align 8, !dbg !3504
  %bus_ops = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %7, i32 0, i32 46, !dbg !3505
  %8 = load %struct.mmc_bus_ops*, %struct.mmc_bus_ops** %bus_ops, align 8, !dbg !3505
  %resume = getelementptr inbounds %struct.mmc_bus_ops, %struct.mmc_bus_ops* %8, i32 0, i32 4, !dbg !3506
  %9 = load i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)** %resume, align 8, !dbg !3506
  %10 = load %struct.mmc_host*, %struct.mmc_host** %host, align 8, !dbg !3507
  %call = call i32 %9(%struct.mmc_host* %10) #7, !dbg !3504
  store i32 %call, i32* %ret, align 4, !dbg !3508
  %11 = load i32, i32* %ret, align 4, !dbg !3509
  %tobool = icmp ne i32 %11, 0, !dbg !3509
  br i1 %tobool, label %if.then, label %if.end, !dbg !3511

if.then:                                          ; preds = %do.end
  %12 = load %struct.mmc_host*, %struct.mmc_host** %host, align 8, !dbg !3512
  %class_dev = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %12, i32 0, i32 1, !dbg !3512
  %call2 = call i8* @dev_name(%struct.device* %class_dev) #7, !dbg !3512
  %13 = load i32, i32* %ret, align 4, !dbg !3512
  %call3 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.39, i64 0, i64 0), i8* %call2, i32 %13) #11, !dbg !3512
  br label %if.end, !dbg !3512

if.end:                                           ; preds = %if.then, %do.end
  %14 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3513
  %call4 = call i32 @pm_generic_resume(%struct.device* %14) #7, !dbg !3514
  store i32 %call4, i32* %ret, align 4, !dbg !3515
  %15 = load i32, i32* %ret, align 4, !dbg !3516
  ret i32 %15, !dbg !3517
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mmc_runtime_suspend(%struct.device* %dev) #0 !dbg !3518 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %card = alloca %struct.mmc_card*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.mmc_card*, align 8
  %host = alloca %struct.mmc_host*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3519, metadata !DIExpression()), !dbg !3520
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %card, metadata !3521, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3523, metadata !DIExpression()), !dbg !3525
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3525
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3525
  store i8* %1, i8** %__mptr, align 8, !dbg !3525
  br label %do.body, !dbg !3525

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3526

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3525
  %add.ptr = getelementptr i8, i8* %2, i64 -8, !dbg !3525
  %3 = bitcast i8* %add.ptr to %struct.mmc_card*, !dbg !3525
  store %struct.mmc_card* %3, %struct.mmc_card** %tmp, align 8, !dbg !3526
  %4 = load %struct.mmc_card*, %struct.mmc_card** %tmp, align 8, !dbg !3525
  store %struct.mmc_card* %4, %struct.mmc_card** %card, align 8, !dbg !3522
  call void @llvm.dbg.declare(metadata %struct.mmc_host** %host, metadata !3528, metadata !DIExpression()), !dbg !3529
  %5 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3530
  %host1 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %5, i32 0, i32 0, !dbg !3531
  %6 = load %struct.mmc_host*, %struct.mmc_host** %host1, align 8, !dbg !3531
  store %struct.mmc_host* %6, %struct.mmc_host** %host, align 8, !dbg !3529
  %7 = load %struct.mmc_host*, %struct.mmc_host** %host, align 8, !dbg !3532
  %bus_ops = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %7, i32 0, i32 46, !dbg !3533
  %8 = load %struct.mmc_bus_ops*, %struct.mmc_bus_ops** %bus_ops, align 8, !dbg !3533
  %runtime_suspend = getelementptr inbounds %struct.mmc_bus_ops, %struct.mmc_bus_ops* %8, i32 0, i32 5, !dbg !3534
  %9 = load i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)** %runtime_suspend, align 8, !dbg !3534
  %10 = load %struct.mmc_host*, %struct.mmc_host** %host, align 8, !dbg !3535
  %call = call i32 %9(%struct.mmc_host* %10) #7, !dbg !3532
  ret i32 %call, !dbg !3536
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mmc_runtime_resume(%struct.device* %dev) #0 !dbg !3537 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %card = alloca %struct.mmc_card*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.mmc_card*, align 8
  %host = alloca %struct.mmc_host*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3538, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %card, metadata !3540, metadata !DIExpression()), !dbg !3541
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3542, metadata !DIExpression()), !dbg !3544
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3544
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3544
  store i8* %1, i8** %__mptr, align 8, !dbg !3544
  br label %do.body, !dbg !3544

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3545

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3544
  %add.ptr = getelementptr i8, i8* %2, i64 -8, !dbg !3544
  %3 = bitcast i8* %add.ptr to %struct.mmc_card*, !dbg !3544
  store %struct.mmc_card* %3, %struct.mmc_card** %tmp, align 8, !dbg !3545
  %4 = load %struct.mmc_card*, %struct.mmc_card** %tmp, align 8, !dbg !3544
  store %struct.mmc_card* %4, %struct.mmc_card** %card, align 8, !dbg !3541
  call void @llvm.dbg.declare(metadata %struct.mmc_host** %host, metadata !3547, metadata !DIExpression()), !dbg !3548
  %5 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3549
  %host1 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %5, i32 0, i32 0, !dbg !3550
  %6 = load %struct.mmc_host*, %struct.mmc_host** %host1, align 8, !dbg !3550
  store %struct.mmc_host* %6, %struct.mmc_host** %host, align 8, !dbg !3548
  %7 = load %struct.mmc_host*, %struct.mmc_host** %host, align 8, !dbg !3551
  %bus_ops = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %7, i32 0, i32 46, !dbg !3552
  %8 = load %struct.mmc_bus_ops*, %struct.mmc_bus_ops** %bus_ops, align 8, !dbg !3552
  %runtime_resume = getelementptr inbounds %struct.mmc_bus_ops, %struct.mmc_bus_ops* %8, i32 0, i32 6, !dbg !3553
  %9 = load i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)** %runtime_resume, align 8, !dbg !3553
  %10 = load %struct.mmc_host*, %struct.mmc_host** %host, align 8, !dbg !3554
  %call = call i32 %9(%struct.mmc_host* %10) #7, !dbg !3551
  ret i32 %call, !dbg !3555
}

; Function Attrs: noredzone
declare dso_local i32 @pm_generic_suspend(%struct.device*) #1

; Function Attrs: noredzone
declare dso_local i32 @pm_generic_resume(%struct.device*) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #1

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !3556 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3560, metadata !DIExpression()), !dbg !3565
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3567, metadata !DIExpression()), !dbg !3568
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3569, metadata !DIExpression()), !dbg !3570
  %0 = load i64, i64* %size.addr, align 8, !dbg !3571
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3573
  br i1 %1, label %if.then, label %if.end447, !dbg !3574

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !3575
  %tobool = icmp ne i64 %2, 0, !dbg !3575
  br i1 %tobool, label %if.end, label %if.then1, !dbg !3578

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !3579
  br label %return, !dbg !3579

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !3580
  %cmp = icmp ult i64 %3, 4096, !dbg !3582
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3583

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3584
  br label %return, !dbg !3584

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub = sub i64 %4, 1, !dbg !3585
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !3585
  br i1 %5, label %cond.true, label %cond.false442, !dbg !3585

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub4 = sub i64 %6, 1, !dbg !3585
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !3585
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !3585

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub6 = sub i64 %8, 1, !dbg !3585
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !3585
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !3585

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !3585

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub9 = sub i64 %9, 1, !dbg !3585
  %and = and i64 %sub9, -9223372036854775808, !dbg !3585
  %tobool10 = icmp ne i64 %and, 0, !dbg !3585
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !3585

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !3585

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub13 = sub i64 %10, 1, !dbg !3585
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !3585
  %tobool15 = icmp ne i64 %and14, 0, !dbg !3585
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !3585

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !3585

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub18 = sub i64 %11, 1, !dbg !3585
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !3585
  %tobool20 = icmp ne i64 %and19, 0, !dbg !3585
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !3585

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !3585

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub23 = sub i64 %12, 1, !dbg !3585
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !3585
  %tobool25 = icmp ne i64 %and24, 0, !dbg !3585
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !3585

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !3585

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub28 = sub i64 %13, 1, !dbg !3585
  %and29 = and i64 %sub28, 576460752303423488, !dbg !3585
  %tobool30 = icmp ne i64 %and29, 0, !dbg !3585
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !3585

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !3585

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub33 = sub i64 %14, 1, !dbg !3585
  %and34 = and i64 %sub33, 288230376151711744, !dbg !3585
  %tobool35 = icmp ne i64 %and34, 0, !dbg !3585
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !3585

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !3585

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub38 = sub i64 %15, 1, !dbg !3585
  %and39 = and i64 %sub38, 144115188075855872, !dbg !3585
  %tobool40 = icmp ne i64 %and39, 0, !dbg !3585
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !3585

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !3585

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub43 = sub i64 %16, 1, !dbg !3585
  %and44 = and i64 %sub43, 72057594037927936, !dbg !3585
  %tobool45 = icmp ne i64 %and44, 0, !dbg !3585
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !3585

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !3585

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub48 = sub i64 %17, 1, !dbg !3585
  %and49 = and i64 %sub48, 36028797018963968, !dbg !3585
  %tobool50 = icmp ne i64 %and49, 0, !dbg !3585
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !3585

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !3585

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub53 = sub i64 %18, 1, !dbg !3585
  %and54 = and i64 %sub53, 18014398509481984, !dbg !3585
  %tobool55 = icmp ne i64 %and54, 0, !dbg !3585
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !3585

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !3585

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub58 = sub i64 %19, 1, !dbg !3585
  %and59 = and i64 %sub58, 9007199254740992, !dbg !3585
  %tobool60 = icmp ne i64 %and59, 0, !dbg !3585
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !3585

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !3585

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub63 = sub i64 %20, 1, !dbg !3585
  %and64 = and i64 %sub63, 4503599627370496, !dbg !3585
  %tobool65 = icmp ne i64 %and64, 0, !dbg !3585
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !3585

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !3585

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub68 = sub i64 %21, 1, !dbg !3585
  %and69 = and i64 %sub68, 2251799813685248, !dbg !3585
  %tobool70 = icmp ne i64 %and69, 0, !dbg !3585
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !3585

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !3585

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub73 = sub i64 %22, 1, !dbg !3585
  %and74 = and i64 %sub73, 1125899906842624, !dbg !3585
  %tobool75 = icmp ne i64 %and74, 0, !dbg !3585
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !3585

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !3585

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub78 = sub i64 %23, 1, !dbg !3585
  %and79 = and i64 %sub78, 562949953421312, !dbg !3585
  %tobool80 = icmp ne i64 %and79, 0, !dbg !3585
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !3585

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !3585

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub83 = sub i64 %24, 1, !dbg !3585
  %and84 = and i64 %sub83, 281474976710656, !dbg !3585
  %tobool85 = icmp ne i64 %and84, 0, !dbg !3585
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !3585

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !3585

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub88 = sub i64 %25, 1, !dbg !3585
  %and89 = and i64 %sub88, 140737488355328, !dbg !3585
  %tobool90 = icmp ne i64 %and89, 0, !dbg !3585
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !3585

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !3585

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub93 = sub i64 %26, 1, !dbg !3585
  %and94 = and i64 %sub93, 70368744177664, !dbg !3585
  %tobool95 = icmp ne i64 %and94, 0, !dbg !3585
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !3585

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !3585

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub98 = sub i64 %27, 1, !dbg !3585
  %and99 = and i64 %sub98, 35184372088832, !dbg !3585
  %tobool100 = icmp ne i64 %and99, 0, !dbg !3585
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !3585

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !3585

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub103 = sub i64 %28, 1, !dbg !3585
  %and104 = and i64 %sub103, 17592186044416, !dbg !3585
  %tobool105 = icmp ne i64 %and104, 0, !dbg !3585
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !3585

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !3585

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub108 = sub i64 %29, 1, !dbg !3585
  %and109 = and i64 %sub108, 8796093022208, !dbg !3585
  %tobool110 = icmp ne i64 %and109, 0, !dbg !3585
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !3585

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !3585

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub113 = sub i64 %30, 1, !dbg !3585
  %and114 = and i64 %sub113, 4398046511104, !dbg !3585
  %tobool115 = icmp ne i64 %and114, 0, !dbg !3585
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !3585

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !3585

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub118 = sub i64 %31, 1, !dbg !3585
  %and119 = and i64 %sub118, 2199023255552, !dbg !3585
  %tobool120 = icmp ne i64 %and119, 0, !dbg !3585
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !3585

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !3585

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub123 = sub i64 %32, 1, !dbg !3585
  %and124 = and i64 %sub123, 1099511627776, !dbg !3585
  %tobool125 = icmp ne i64 %and124, 0, !dbg !3585
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !3585

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !3585

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub128 = sub i64 %33, 1, !dbg !3585
  %and129 = and i64 %sub128, 549755813888, !dbg !3585
  %tobool130 = icmp ne i64 %and129, 0, !dbg !3585
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !3585

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !3585

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub133 = sub i64 %34, 1, !dbg !3585
  %and134 = and i64 %sub133, 274877906944, !dbg !3585
  %tobool135 = icmp ne i64 %and134, 0, !dbg !3585
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !3585

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !3585

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub138 = sub i64 %35, 1, !dbg !3585
  %and139 = and i64 %sub138, 137438953472, !dbg !3585
  %tobool140 = icmp ne i64 %and139, 0, !dbg !3585
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !3585

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !3585

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub143 = sub i64 %36, 1, !dbg !3585
  %and144 = and i64 %sub143, 68719476736, !dbg !3585
  %tobool145 = icmp ne i64 %and144, 0, !dbg !3585
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !3585

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !3585

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub148 = sub i64 %37, 1, !dbg !3585
  %and149 = and i64 %sub148, 34359738368, !dbg !3585
  %tobool150 = icmp ne i64 %and149, 0, !dbg !3585
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !3585

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !3585

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub153 = sub i64 %38, 1, !dbg !3585
  %and154 = and i64 %sub153, 17179869184, !dbg !3585
  %tobool155 = icmp ne i64 %and154, 0, !dbg !3585
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !3585

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !3585

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub158 = sub i64 %39, 1, !dbg !3585
  %and159 = and i64 %sub158, 8589934592, !dbg !3585
  %tobool160 = icmp ne i64 %and159, 0, !dbg !3585
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !3585

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !3585

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub163 = sub i64 %40, 1, !dbg !3585
  %and164 = and i64 %sub163, 4294967296, !dbg !3585
  %tobool165 = icmp ne i64 %and164, 0, !dbg !3585
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !3585

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !3585

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub168 = sub i64 %41, 1, !dbg !3585
  %and169 = and i64 %sub168, 2147483648, !dbg !3585
  %tobool170 = icmp ne i64 %and169, 0, !dbg !3585
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !3585

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !3585

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub173 = sub i64 %42, 1, !dbg !3585
  %and174 = and i64 %sub173, 1073741824, !dbg !3585
  %tobool175 = icmp ne i64 %and174, 0, !dbg !3585
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !3585

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !3585

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub178 = sub i64 %43, 1, !dbg !3585
  %and179 = and i64 %sub178, 536870912, !dbg !3585
  %tobool180 = icmp ne i64 %and179, 0, !dbg !3585
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !3585

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !3585

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub183 = sub i64 %44, 1, !dbg !3585
  %and184 = and i64 %sub183, 268435456, !dbg !3585
  %tobool185 = icmp ne i64 %and184, 0, !dbg !3585
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !3585

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !3585

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub188 = sub i64 %45, 1, !dbg !3585
  %and189 = and i64 %sub188, 134217728, !dbg !3585
  %tobool190 = icmp ne i64 %and189, 0, !dbg !3585
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !3585

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !3585

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub193 = sub i64 %46, 1, !dbg !3585
  %and194 = and i64 %sub193, 67108864, !dbg !3585
  %tobool195 = icmp ne i64 %and194, 0, !dbg !3585
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !3585

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !3585

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub198 = sub i64 %47, 1, !dbg !3585
  %and199 = and i64 %sub198, 33554432, !dbg !3585
  %tobool200 = icmp ne i64 %and199, 0, !dbg !3585
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !3585

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !3585

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub203 = sub i64 %48, 1, !dbg !3585
  %and204 = and i64 %sub203, 16777216, !dbg !3585
  %tobool205 = icmp ne i64 %and204, 0, !dbg !3585
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !3585

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !3585

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub208 = sub i64 %49, 1, !dbg !3585
  %and209 = and i64 %sub208, 8388608, !dbg !3585
  %tobool210 = icmp ne i64 %and209, 0, !dbg !3585
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !3585

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !3585

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub213 = sub i64 %50, 1, !dbg !3585
  %and214 = and i64 %sub213, 4194304, !dbg !3585
  %tobool215 = icmp ne i64 %and214, 0, !dbg !3585
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !3585

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !3585

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub218 = sub i64 %51, 1, !dbg !3585
  %and219 = and i64 %sub218, 2097152, !dbg !3585
  %tobool220 = icmp ne i64 %and219, 0, !dbg !3585
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !3585

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !3585

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub223 = sub i64 %52, 1, !dbg !3585
  %and224 = and i64 %sub223, 1048576, !dbg !3585
  %tobool225 = icmp ne i64 %and224, 0, !dbg !3585
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !3585

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !3585

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub228 = sub i64 %53, 1, !dbg !3585
  %and229 = and i64 %sub228, 524288, !dbg !3585
  %tobool230 = icmp ne i64 %and229, 0, !dbg !3585
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !3585

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !3585

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub233 = sub i64 %54, 1, !dbg !3585
  %and234 = and i64 %sub233, 262144, !dbg !3585
  %tobool235 = icmp ne i64 %and234, 0, !dbg !3585
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !3585

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !3585

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub238 = sub i64 %55, 1, !dbg !3585
  %and239 = and i64 %sub238, 131072, !dbg !3585
  %tobool240 = icmp ne i64 %and239, 0, !dbg !3585
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !3585

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !3585

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub243 = sub i64 %56, 1, !dbg !3585
  %and244 = and i64 %sub243, 65536, !dbg !3585
  %tobool245 = icmp ne i64 %and244, 0, !dbg !3585
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !3585

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !3585

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub248 = sub i64 %57, 1, !dbg !3585
  %and249 = and i64 %sub248, 32768, !dbg !3585
  %tobool250 = icmp ne i64 %and249, 0, !dbg !3585
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !3585

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !3585

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub253 = sub i64 %58, 1, !dbg !3585
  %and254 = and i64 %sub253, 16384, !dbg !3585
  %tobool255 = icmp ne i64 %and254, 0, !dbg !3585
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !3585

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !3585

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub258 = sub i64 %59, 1, !dbg !3585
  %and259 = and i64 %sub258, 8192, !dbg !3585
  %tobool260 = icmp ne i64 %and259, 0, !dbg !3585
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !3585

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !3585

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub263 = sub i64 %60, 1, !dbg !3585
  %and264 = and i64 %sub263, 4096, !dbg !3585
  %tobool265 = icmp ne i64 %and264, 0, !dbg !3585
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !3585

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !3585

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub268 = sub i64 %61, 1, !dbg !3585
  %and269 = and i64 %sub268, 2048, !dbg !3585
  %tobool270 = icmp ne i64 %and269, 0, !dbg !3585
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !3585

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !3585

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub273 = sub i64 %62, 1, !dbg !3585
  %and274 = and i64 %sub273, 1024, !dbg !3585
  %tobool275 = icmp ne i64 %and274, 0, !dbg !3585
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !3585

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !3585

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub278 = sub i64 %63, 1, !dbg !3585
  %and279 = and i64 %sub278, 512, !dbg !3585
  %tobool280 = icmp ne i64 %and279, 0, !dbg !3585
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !3585

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !3585

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub283 = sub i64 %64, 1, !dbg !3585
  %and284 = and i64 %sub283, 256, !dbg !3585
  %tobool285 = icmp ne i64 %and284, 0, !dbg !3585
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !3585

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !3585

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub288 = sub i64 %65, 1, !dbg !3585
  %and289 = and i64 %sub288, 128, !dbg !3585
  %tobool290 = icmp ne i64 %and289, 0, !dbg !3585
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !3585

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !3585

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub293 = sub i64 %66, 1, !dbg !3585
  %and294 = and i64 %sub293, 64, !dbg !3585
  %tobool295 = icmp ne i64 %and294, 0, !dbg !3585
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !3585

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !3585

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub298 = sub i64 %67, 1, !dbg !3585
  %and299 = and i64 %sub298, 32, !dbg !3585
  %tobool300 = icmp ne i64 %and299, 0, !dbg !3585
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !3585

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !3585

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub303 = sub i64 %68, 1, !dbg !3585
  %and304 = and i64 %sub303, 16, !dbg !3585
  %tobool305 = icmp ne i64 %and304, 0, !dbg !3585
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !3585

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !3585

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub308 = sub i64 %69, 1, !dbg !3585
  %and309 = and i64 %sub308, 8, !dbg !3585
  %tobool310 = icmp ne i64 %and309, 0, !dbg !3585
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !3585

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !3585

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub313 = sub i64 %70, 1, !dbg !3585
  %and314 = and i64 %sub313, 4, !dbg !3585
  %tobool315 = icmp ne i64 %and314, 0, !dbg !3585
  %71 = zext i1 %tobool315 to i64, !dbg !3585
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !3585
  br label %cond.end, !dbg !3585

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !3585
  br label %cond.end317, !dbg !3585

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !3585
  br label %cond.end319, !dbg !3585

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !3585
  br label %cond.end321, !dbg !3585

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !3585
  br label %cond.end323, !dbg !3585

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !3585
  br label %cond.end325, !dbg !3585

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !3585
  br label %cond.end327, !dbg !3585

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !3585
  br label %cond.end329, !dbg !3585

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !3585
  br label %cond.end331, !dbg !3585

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !3585
  br label %cond.end333, !dbg !3585

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !3585
  br label %cond.end335, !dbg !3585

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !3585
  br label %cond.end337, !dbg !3585

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !3585
  br label %cond.end339, !dbg !3585

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !3585
  br label %cond.end341, !dbg !3585

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !3585
  br label %cond.end343, !dbg !3585

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !3585
  br label %cond.end345, !dbg !3585

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !3585
  br label %cond.end347, !dbg !3585

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !3585
  br label %cond.end349, !dbg !3585

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !3585
  br label %cond.end351, !dbg !3585

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !3585
  br label %cond.end353, !dbg !3585

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !3585
  br label %cond.end355, !dbg !3585

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !3585
  br label %cond.end357, !dbg !3585

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !3585
  br label %cond.end359, !dbg !3585

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !3585
  br label %cond.end361, !dbg !3585

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !3585
  br label %cond.end363, !dbg !3585

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !3585
  br label %cond.end365, !dbg !3585

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !3585
  br label %cond.end367, !dbg !3585

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !3585
  br label %cond.end369, !dbg !3585

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !3585
  br label %cond.end371, !dbg !3585

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !3585
  br label %cond.end373, !dbg !3585

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !3585
  br label %cond.end375, !dbg !3585

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !3585
  br label %cond.end377, !dbg !3585

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !3585
  br label %cond.end379, !dbg !3585

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !3585
  br label %cond.end381, !dbg !3585

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !3585
  br label %cond.end383, !dbg !3585

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !3585
  br label %cond.end385, !dbg !3585

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !3585
  br label %cond.end387, !dbg !3585

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !3585
  br label %cond.end389, !dbg !3585

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !3585
  br label %cond.end391, !dbg !3585

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !3585
  br label %cond.end393, !dbg !3585

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !3585
  br label %cond.end395, !dbg !3585

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !3585
  br label %cond.end397, !dbg !3585

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !3585
  br label %cond.end399, !dbg !3585

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !3585
  br label %cond.end401, !dbg !3585

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !3585
  br label %cond.end403, !dbg !3585

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !3585
  br label %cond.end405, !dbg !3585

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !3585
  br label %cond.end407, !dbg !3585

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !3585
  br label %cond.end409, !dbg !3585

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !3585
  br label %cond.end411, !dbg !3585

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !3585
  br label %cond.end413, !dbg !3585

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !3585
  br label %cond.end415, !dbg !3585

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !3585
  br label %cond.end417, !dbg !3585

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !3585
  br label %cond.end419, !dbg !3585

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !3585
  br label %cond.end421, !dbg !3585

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !3585
  br label %cond.end423, !dbg !3585

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !3585
  br label %cond.end425, !dbg !3585

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !3585
  br label %cond.end427, !dbg !3585

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !3585
  br label %cond.end429, !dbg !3585

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !3585
  br label %cond.end431, !dbg !3585

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !3585
  br label %cond.end433, !dbg !3585

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !3585
  br label %cond.end435, !dbg !3585

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !3585
  br label %cond.end437, !dbg !3585

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !3585
  br label %cond.end440, !dbg !3585

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !3585

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !3585
  br label %cond.end444, !dbg !3585

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !3585
  %sub443 = sub i64 %72, 1, !dbg !3585
  %call = call i32 @__ilog2_u64(i64 %sub443) #9, !dbg !3585
  br label %cond.end444, !dbg !3585

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !3585
  %sub446 = sub i32 %cond445, 12, !dbg !3586
  %add = add i32 %sub446, 1, !dbg !3587
  store i32 %add, i32* %retval, align 4, !dbg !3588
  br label %return, !dbg !3588

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !3589
  %dec = add i64 %73, -1, !dbg !3589
  store i64 %dec, i64* %size.addr, align 8, !dbg !3589
  %74 = load i64, i64* %size.addr, align 8, !dbg !3590
  %shr = lshr i64 %74, 12, !dbg !3590
  store i64 %shr, i64* %size.addr, align 8, !dbg !3590
  %75 = load i64, i64* %size.addr, align 8, !dbg !3591
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3568
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !3592
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !3593
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #12, !dbg !3592, !srcloc !3594
  store i32 %78, i32* %bitpos.i, align 4, !dbg !3592
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !3595
  %add.i = add i32 %79, 1, !dbg !3596
  store i32 %add.i, i32* %retval, align 4, !dbg !3597
  br label %return, !dbg !3597

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !3598
  ret i32 %80, !dbg !3598
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !3599 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3560, metadata !DIExpression()), !dbg !3603
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3567, metadata !DIExpression()), !dbg !3605
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3606, metadata !DIExpression()), !dbg !3607
  %0 = load i64, i64* %n.addr, align 8, !dbg !3608
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3605
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !3609
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !3610
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #12, !dbg !3609, !srcloc !3594
  store i32 %3, i32* %bitpos.i, align 4, !dbg !3609
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !3611
  %add.i = add i32 %4, 1, !dbg !3612
  %sub = sub i32 %add.i, 1, !dbg !3613
  ret i32 %sub, !dbg !3614
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !3615 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !3619, metadata !DIExpression()), !dbg !3620
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !3621, metadata !DIExpression()), !dbg !3622
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3623, metadata !DIExpression()), !dbg !3624
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3625, metadata !DIExpression()), !dbg !3626
  %0 = load i8*, i8** %object.addr, align 8, !dbg !3627
  ret i8* %0, !dbg !3628
}

; Function Attrs: noredzone
declare dso_local void @sdio_free_common_cis(%struct.mmc_card*) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #0 !dbg !3629 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !3634, metadata !DIExpression()), !dbg !3635
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !3636
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !3637
  %1 = load i8*, i8** %name, align 8, !dbg !3637
  ret i8* %1, !dbg !3638
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noredzone }
attributes #8 = { nounwind }
attributes #9 = { noredzone nounwind readnone }
attributes #10 = { noredzone nounwind }
attributes #11 = { cold noredzone }
attributes #12 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2568, !2569, !2570, !2571}
!llvm.ident = !{!2572}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "mmc_bus_type", scope: !2, file: !3, line: 228, type: !1615, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !62, globals: !2536, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/mmc/core/bus.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !30, !38, !44, !50, !55}
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
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !24, line: 343, baseType: !7, size: 32, elements: !25)
!24 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!25 = !{!26, !27, !28, !29}
!26 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!27 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!28 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!29 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !31, line: 524, baseType: !7, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!32 = !{!33, !34, !35, !36, !37}
!33 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!34 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!35 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!36 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!37 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !31, line: 502, baseType: !7, size: 32, elements: !39)
!39 = !{!40, !41, !42, !43}
!40 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!41 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!42 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!43 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !45, line: 44, baseType: !7, size: 32, elements: !46)
!45 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!46 = !{!47, !48, !49}
!47 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!48 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!49 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !51, line: 10, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!52 = !{!53, !54}
!53 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!54 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !56, line: 305, baseType: !7, size: 32, elements: !57)
!56 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!57 = !{!58, !59, !60, !61}
!58 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!59 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!60 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!61 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!62 = !{!63, !65, !66, !67, !2522}
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !64, line: 148, baseType: !7)
!64 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!65 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_card", file: !69, line: 244, size: 12672, elements: !70)
!69 = !DIFile(filename: "./include/linux/mmc/card.h", directory: "/home/lizy2001/genbc/linux")
!70 = !{!71, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2333, !2335, !2347, !2367, !2448, !2457, !2463, !2471, !2472, !2473, !2484, !2491, !2497, !2498, !2499, !2500, !2501, !2502, !2505, !2506, !2507, !2508, !2509, !2519, !2520, !2521}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !68, file: !69, line: 245, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_host", file: !74, line: 275, size: 10752, elements: !75)
!74 = !DIFile(filename: "./include/linux/mmc/host.h", directory: "/home/lizy2001/genbc/linux")
!75 = !{!76, !2033, !2034, !2035, !2162, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2228, !2229, !2230, !2239, !2240, !2246, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2273, !2280, !2283, !2284, !2285, !2286, !2287, !2288, !2309, !2310, !2311, !2312, !2313, !2314}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !73, file: !74, line: 276, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !24, line: 461, size: 5568, elements: !79)
!79 = !{!80, !1557, !1558, !1561, !1562, !1613, !1710, !1711, !1712, !1713, !1714, !1723, !1828, !1841, !1844, !1845, !1849, !1851, !1852, !1853, !1857, !1863, !1864, !1867, !1982, !1983, !1986, !1987, !1988, !1989, !2021, !2022, !2023, !2026, !2029, !2030, !2031, !2032}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !78, file: !24, line: 462, baseType: !81, size: 512)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !82, line: 64, size: 512, elements: !83)
!82 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!83 = !{!84, !88, !94, !96, !156, !1394, !1547, !1552, !1553, !1554, !1555, !1556}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !81, file: !82, line: 65, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!87 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !81, file: !82, line: 66, baseType: !89, size: 128, offset: 64)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !64, line: 178, size: 128, elements: !90)
!90 = !{!91, !93}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !89, file: !64, line: 179, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !89, file: !64, line: 179, baseType: !92, size: 64, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !81, file: !82, line: 67, baseType: !95, size: 64, offset: 192)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !81, file: !82, line: 68, baseType: !97, size: 64, offset: 256)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !82, line: 192, size: 704, elements: !99)
!99 = !{!100, !101, !117, !118}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !98, file: !82, line: 193, baseType: !89, size: 128)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !98, file: !82, line: 194, baseType: !102, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !103, line: 83, baseType: !104)
!103 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !103, line: 71, elements: !105)
!105 = !{!106}
!106 = !DIDerivedType(tag: DW_TAG_member, scope: !104, file: !103, line: 72, baseType: !107)
!107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !104, file: !103, line: 72, elements: !108)
!108 = !{!109}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !107, file: !103, line: 73, baseType: !110)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !103, line: 20, elements: !111)
!111 = !{!112}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !110, file: !103, line: 21, baseType: !113)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !114, line: 25, baseType: !115)
!114 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !114, line: 25, elements: !116)
!116 = !{}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !98, file: !82, line: 195, baseType: !81, size: 512, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !98, file: !82, line: 196, baseType: !119, size: 64, offset: 640)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !82, line: 156, size: 192, elements: !122)
!122 = !{!123, !128, !133}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !121, file: !82, line: 157, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!65, !97, !95}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !121, file: !82, line: 158, baseType: !129, size: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{!85, !97, !95}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !121, file: !82, line: 159, baseType: !134, size: 64, offset: 128)
!134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DISubroutineType(types: !137)
!137 = !{!65, !97, !95, !138}
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !82, line: 148, size: 20736, elements: !140)
!140 = !{!141, !146, !150, !151, !155}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !139, file: !82, line: 149, baseType: !142, size: 192)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 192, elements: !144)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!144 = !{!145}
!145 = !DISubrange(count: 3)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !139, file: !82, line: 150, baseType: !147, size: 4096, offset: 192)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 4096, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !139, file: !82, line: 151, baseType: !65, size: 32, offset: 4288)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !139, file: !82, line: 152, baseType: !152, size: 16384, offset: 4320)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 16384, elements: !153)
!153 = !{!154}
!154 = !DISubrange(count: 2048)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !139, file: !82, line: 153, baseType: !65, size: 32, offset: 20704)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !81, file: !82, line: 69, baseType: !157, size: 64, offset: 320)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !82, line: 138, size: 448, elements: !159)
!159 = !{!160, !164, !194, !196, !1340, !1373, !1377}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !158, file: !82, line: 139, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DISubroutineType(types: !163)
!163 = !{null, !95}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !158, file: !82, line: 140, baseType: !165, size: 64, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !168, line: 230, size: 128, elements: !169)
!168 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!169 = !{!170, !186}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !167, file: !168, line: 231, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DISubroutineType(types: !173)
!173 = !{!174, !95, !179, !143}
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !64, line: 60, baseType: !175)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !176, line: 73, baseType: !177)
!176 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !176, line: 15, baseType: !178)
!178 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !168, line: 30, size: 128, elements: !181)
!181 = !{!182, !183}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !180, file: !168, line: 31, baseType: !85, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !180, file: !168, line: 32, baseType: !184, size: 16, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !64, line: 19, baseType: !185)
!185 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !167, file: !168, line: 232, baseType: !187, size: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{!174, !95, !179, !85, !190}
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !64, line: 55, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !176, line: 72, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !176, line: 16, baseType: !193)
!193 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !158, file: !82, line: 141, baseType: !195, size: 64, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !158, file: !82, line: 142, baseType: !197, size: 64, offset: 192)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !200)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !168, line: 84, size: 320, elements: !201)
!201 = !{!202, !203, !207, !1337, !1338}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !200, file: !168, line: 85, baseType: !85, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !200, file: !168, line: 86, baseType: !204, size: 64, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!184, !95, !179, !65}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !200, file: !168, line: 88, baseType: !208, size: 64, offset: 128)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{!184, !95, !211, !65}
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !168, line: 168, size: 448, elements: !213)
!213 = !{!214, !215, !216, !217, !227, !228}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !212, file: !168, line: 169, baseType: !180, size: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !212, file: !168, line: 170, baseType: !190, size: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !212, file: !168, line: 171, baseType: !66, size: 64, offset: 192)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !212, file: !168, line: 172, baseType: !218, size: 64, offset: 256)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{!174, !221, !95, !211, !143, !224, !190}
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !223, line: 526, flags: DIFlagFwdDecl)
!223 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !64, line: 46, baseType: !225)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !176, line: 88, baseType: !226)
!226 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !212, file: !168, line: 174, baseType: !218, size: 64, offset: 320)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !212, file: !168, line: 176, baseType: !229, size: 64, offset: 384)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!65, !221, !95, !211, !232}
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !234, line: 305, size: 1472, elements: !235)
!234 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!235 = !{!236, !237, !238, !239, !240, !248, !249, !1311, !1317, !1318, !1323, !1324, !1327, !1331, !1332, !1333, !1334, !1335}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !233, file: !234, line: 308, baseType: !193, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !233, file: !234, line: 309, baseType: !193, size: 64, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !233, file: !234, line: 313, baseType: !232, size: 64, offset: 128)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !233, file: !234, line: 313, baseType: !232, size: 64, offset: 192)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !233, file: !234, line: 315, baseType: !241, size: 192, align: 64, offset: 256)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !242, line: 24, size: 192, align: 64, elements: !243)
!242 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!243 = !{!244, !245, !247}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !241, file: !242, line: 25, baseType: !193, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !241, file: !242, line: 26, baseType: !246, size: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !241, file: !242, line: 27, baseType: !246, size: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !233, file: !234, line: 323, baseType: !193, size: 64, offset: 448)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !233, file: !234, line: 327, baseType: !250, size: 64, offset: 512)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !234, line: 388, size: 7296, elements: !252)
!252 = !{!253, !1307}
!253 = !DIDerivedType(tag: DW_TAG_member, scope: !251, file: !234, line: 389, baseType: !254, size: 7296)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !251, file: !234, line: 389, size: 7296, elements: !255)
!255 = !{!256, !257, !261, !267, !271, !272, !273, !274, !275, !283, !288, !289, !290, !291, !300, !301, !302, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !337, !345, !348, !380, !381, !1277, !1278, !1281, !1285, !1286, !1289, !1290, !1291, !1294, !1306}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !254, file: !234, line: 390, baseType: !232, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !254, file: !234, line: 391, baseType: !258, size: 64, offset: 64)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !242, line: 31, size: 64, elements: !259)
!259 = !{!260}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !258, file: !242, line: 32, baseType: !246, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !254, file: !234, line: 392, baseType: !262, size: 64, offset: 128)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !263, line: 23, baseType: !264)
!263 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !265, line: 31, baseType: !266)
!265 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!266 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !254, file: !234, line: 394, baseType: !268, size: 64, offset: 192)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{!193, !221, !193, !193, !193, !193}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !254, file: !234, line: 398, baseType: !193, size: 64, offset: 256)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !254, file: !234, line: 399, baseType: !193, size: 64, offset: 320)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !254, file: !234, line: 405, baseType: !193, size: 64, offset: 384)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !254, file: !234, line: 406, baseType: !193, size: 64, offset: 448)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !254, file: !234, line: 407, baseType: !276, size: 64, offset: 512)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !223, line: 286, baseType: !278)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !223, line: 286, size: 64, elements: !279)
!279 = !{!280}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !278, file: !223, line: 286, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !282, line: 18, baseType: !193)
!282 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!283 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !254, file: !234, line: 416, baseType: !284, size: 32, offset: 576)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !64, line: 168, baseType: !285)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !64, line: 166, size: 32, elements: !286)
!286 = !{!287}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !285, file: !64, line: 167, baseType: !65, size: 32)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !254, file: !234, line: 428, baseType: !284, size: 32, offset: 608)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !254, file: !234, line: 437, baseType: !284, size: 32, offset: 640)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !254, file: !234, line: 447, baseType: !284, size: 32, offset: 672)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !254, file: !234, line: 450, baseType: !292, size: 64, offset: 704)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !293, line: 13, baseType: !294)
!293 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !64, line: 175, baseType: !295)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !64, line: 173, size: 64, elements: !296)
!296 = !{!297}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !295, file: !64, line: 174, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !263, line: 22, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !265, line: 30, baseType: !226)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !254, file: !234, line: 452, baseType: !65, size: 32, offset: 768)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !254, file: !234, line: 454, baseType: !102, offset: 800)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !254, file: !234, line: 457, baseType: !303, size: 256, offset: 832)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !304, line: 35, size: 256, elements: !305)
!304 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!305 = !{!306, !307, !308, !310}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !303, file: !304, line: 36, baseType: !292, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !303, file: !304, line: 42, baseType: !292, size: 64, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !303, file: !304, line: 46, baseType: !309, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !103, line: 29, baseType: !110)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !303, file: !304, line: 47, baseType: !89, size: 128, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !254, file: !234, line: 459, baseType: !89, size: 128, offset: 1088)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !254, file: !234, line: 466, baseType: !193, size: 64, offset: 1216)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !254, file: !234, line: 467, baseType: !193, size: 64, offset: 1280)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !254, file: !234, line: 469, baseType: !193, size: 64, offset: 1344)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !254, file: !234, line: 470, baseType: !193, size: 64, offset: 1408)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !254, file: !234, line: 471, baseType: !294, size: 64, offset: 1472)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !254, file: !234, line: 472, baseType: !193, size: 64, offset: 1536)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !254, file: !234, line: 473, baseType: !193, size: 64, offset: 1600)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !254, file: !234, line: 474, baseType: !193, size: 64, offset: 1664)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !254, file: !234, line: 475, baseType: !193, size: 64, offset: 1728)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !254, file: !234, line: 477, baseType: !102, offset: 1792)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !254, file: !234, line: 478, baseType: !193, size: 64, offset: 1792)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !254, file: !234, line: 478, baseType: !193, size: 64, offset: 1856)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !254, file: !234, line: 478, baseType: !193, size: 64, offset: 1920)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !254, file: !234, line: 478, baseType: !193, size: 64, offset: 1984)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !254, file: !234, line: 479, baseType: !193, size: 64, offset: 2048)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !254, file: !234, line: 479, baseType: !193, size: 64, offset: 2112)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !254, file: !234, line: 479, baseType: !193, size: 64, offset: 2176)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !254, file: !234, line: 480, baseType: !193, size: 64, offset: 2240)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !254, file: !234, line: 480, baseType: !193, size: 64, offset: 2304)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !254, file: !234, line: 480, baseType: !193, size: 64, offset: 2368)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !254, file: !234, line: 480, baseType: !193, size: 64, offset: 2432)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !254, file: !234, line: 482, baseType: !334, size: 2816, offset: 2496)
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 2816, elements: !335)
!335 = !{!336}
!336 = !DISubrange(count: 44)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !254, file: !234, line: 488, baseType: !338, size: 256, offset: 5312)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !339, line: 60, size: 256, elements: !340)
!339 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!340 = !{!341}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !338, file: !339, line: 61, baseType: !342, size: 256)
!342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 256, elements: !343)
!343 = !{!344}
!344 = !DISubrange(count: 4)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !254, file: !234, line: 490, baseType: !346, size: 64, offset: 5568)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !234, line: 490, flags: DIFlagFwdDecl)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !254, file: !234, line: 493, baseType: !349, size: 896, offset: 5632)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !350, line: 53, baseType: !351)
!350 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !350, line: 13, size: 896, elements: !352)
!352 = !{!353, !354, !355, !356, !359, !360, !367, !368, !372, !373, !376}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !351, file: !350, line: 18, baseType: !262, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !351, file: !350, line: 28, baseType: !294, size: 64, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !351, file: !350, line: 31, baseType: !303, size: 256, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !351, file: !350, line: 32, baseType: !357, size: 64, offset: 384)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !350, line: 32, flags: DIFlagFwdDecl)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !351, file: !350, line: 37, baseType: !185, size: 16, offset: 448)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !351, file: !350, line: 40, baseType: !361, size: 192, offset: 512)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !362, line: 53, size: 192, elements: !363)
!362 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!363 = !{!364, !365, !366}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !361, file: !362, line: 54, baseType: !292, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !361, file: !362, line: 55, baseType: !102, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !361, file: !362, line: 59, baseType: !89, size: 128, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !351, file: !350, line: 41, baseType: !66, size: 64, offset: 704)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !351, file: !350, line: 42, baseType: !369, size: 64, offset: 768)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !371)
!371 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !350, line: 42, flags: DIFlagFwdDecl)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !351, file: !350, line: 44, baseType: !284, size: 32, offset: 832)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !351, file: !350, line: 50, baseType: !374, size: 16, offset: 864)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !263, line: 19, baseType: !375)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !265, line: 24, baseType: !185)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !351, file: !350, line: 51, baseType: !377, size: 16, offset: 880)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !263, line: 18, baseType: !378)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !265, line: 23, baseType: !379)
!379 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !254, file: !234, line: 495, baseType: !193, size: 64, offset: 6528)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !254, file: !234, line: 497, baseType: !382, size: 64, offset: 6592)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !234, line: 381, size: 384, elements: !384)
!384 = !{!385, !386, !1276}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !383, file: !234, line: 382, baseType: !284, size: 32)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !383, file: !234, line: 383, baseType: !387, size: 128, offset: 64)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !234, line: 376, size: 128, elements: !388)
!388 = !{!389, !1274}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !387, file: !234, line: 377, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !392, line: 640, size: 48640, elements: !393)
!392 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!393 = !{!394, !402, !404, !405, !411, !412, !413, !414, !415, !416, !417, !418, !422, !440, !451, !546, !547, !548, !559, !560, !562, !563, !564, !565, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !644, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !700, !702, !703, !704, !716, !718, !719, !720, !721, !722, !728, !729, !730, !731, !732, !733, !734, !746, !751, !755, !756, !757, !760, !764, !767, !770, !773, !776, !779, !782, !785, !791, !792, !793, !799, !800, !801, !802, !803, !812, !813, !814, !815, !816, !821, !822, !823, !826, !827, !830, !833, !836, !839, !842, !845, !846, !926, !929, !932, !933, !936, !937, !938, !944, !945, !946, !959, !960, !961, !973, !978, !981, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !391, file: !392, line: 646, baseType: !395, size: 128)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !396, line: 56, size: 128, elements: !397)
!396 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!397 = !{!398, !399}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !395, file: !396, line: 57, baseType: !193, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !395, file: !396, line: 58, baseType: !400, size: 32, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !263, line: 21, baseType: !401)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !265, line: 27, baseType: !7)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !391, file: !392, line: 649, baseType: !403, size: 64, offset: 128)
!403 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !178)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !391, file: !392, line: 657, baseType: !66, size: 64, offset: 192)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !391, file: !392, line: 658, baseType: !406, size: 32, offset: 256)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !407, line: 113, baseType: !408)
!407 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !407, line: 111, size: 32, elements: !409)
!409 = !{!410}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !408, file: !407, line: 112, baseType: !284, size: 32)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !391, file: !392, line: 660, baseType: !7, size: 32, offset: 288)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !391, file: !392, line: 661, baseType: !7, size: 32, offset: 320)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !391, file: !392, line: 684, baseType: !65, size: 32, offset: 352)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !391, file: !392, line: 686, baseType: !65, size: 32, offset: 384)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !391, file: !392, line: 687, baseType: !65, size: 32, offset: 416)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !391, file: !392, line: 688, baseType: !65, size: 32, offset: 448)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !391, file: !392, line: 689, baseType: !7, size: 32, offset: 480)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !391, file: !392, line: 691, baseType: !419, size: 64, offset: 512)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !421)
!421 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !392, line: 691, flags: DIFlagFwdDecl)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !391, file: !392, line: 692, baseType: !423, size: 832, offset: 576)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !392, line: 451, size: 832, elements: !424)
!424 = !{!425, !430, !431, !432, !433, !434, !435, !436, !437, !438}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !423, file: !392, line: 453, baseType: !426, size: 128)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !392, line: 325, size: 128, elements: !427)
!427 = !{!428, !429}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !426, file: !392, line: 326, baseType: !193, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !426, file: !392, line: 327, baseType: !400, size: 32, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !423, file: !392, line: 454, baseType: !241, size: 192, align: 64, offset: 128)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !423, file: !392, line: 455, baseType: !89, size: 128, offset: 320)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !423, file: !392, line: 456, baseType: !7, size: 32, offset: 448)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !423, file: !392, line: 458, baseType: !262, size: 64, offset: 512)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !423, file: !392, line: 459, baseType: !262, size: 64, offset: 576)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !423, file: !392, line: 460, baseType: !262, size: 64, offset: 640)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !423, file: !392, line: 461, baseType: !262, size: 64, offset: 704)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !423, file: !392, line: 463, baseType: !262, size: 64, offset: 768)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !423, file: !392, line: 465, baseType: !439, offset: 832)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !392, line: 415, elements: !116)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !391, file: !392, line: 693, baseType: !441, size: 384, offset: 1408)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !392, line: 489, size: 384, elements: !442)
!442 = !{!443, !444, !445, !446, !447, !448, !449}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !441, file: !392, line: 490, baseType: !89, size: 128)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !441, file: !392, line: 491, baseType: !193, size: 64, offset: 128)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !441, file: !392, line: 492, baseType: !193, size: 64, offset: 192)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !441, file: !392, line: 493, baseType: !7, size: 32, offset: 256)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !441, file: !392, line: 494, baseType: !185, size: 16, offset: 288)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !441, file: !392, line: 495, baseType: !185, size: 16, offset: 304)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !441, file: !392, line: 497, baseType: !450, size: 64, offset: 320)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !391, file: !392, line: 697, baseType: !452, size: 1792, offset: 1792)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !392, line: 507, size: 1792, elements: !453)
!453 = !{!454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !543, !544}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !452, file: !392, line: 508, baseType: !241, size: 192, align: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !452, file: !392, line: 515, baseType: !262, size: 64, offset: 192)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !452, file: !392, line: 516, baseType: !262, size: 64, offset: 256)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !452, file: !392, line: 517, baseType: !262, size: 64, offset: 320)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !452, file: !392, line: 518, baseType: !262, size: 64, offset: 384)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !452, file: !392, line: 519, baseType: !262, size: 64, offset: 448)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !452, file: !392, line: 526, baseType: !298, size: 64, offset: 512)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !452, file: !392, line: 527, baseType: !262, size: 64, offset: 576)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !452, file: !392, line: 528, baseType: !7, size: 32, offset: 640)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !452, file: !392, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !452, file: !392, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !452, file: !392, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !452, file: !392, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !452, file: !392, line: 563, baseType: !468, size: 512, offset: 704)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !469)
!469 = !{!470, !478, !479, !484, !536, !540, !541, !542}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !468, file: !6, line: 119, baseType: !471, size: 256)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !472, line: 9, size: 256, elements: !473)
!472 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!473 = !{!474, !475}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !471, file: !472, line: 10, baseType: !241, size: 192, align: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !471, file: !472, line: 11, baseType: !476, size: 64, offset: 192)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !477, line: 29, baseType: !298)
!477 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!478 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !468, file: !6, line: 120, baseType: !476, size: 64, offset: 256)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !468, file: !6, line: 121, baseType: !480, size: 64, offset: 320)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!5, !483}
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !468, file: !6, line: 122, baseType: !485, size: 64, offset: 384)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !487)
!487 = !{!488, !508, !509, !512, !522, !523, !531, !535}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !486, file: !6, line: 160, baseType: !489, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !491)
!491 = !{!492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !490, file: !6, line: 215, baseType: !309)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !490, file: !6, line: 216, baseType: !7, size: 32)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !490, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !490, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !490, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !490, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !490, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !490, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !490, file: !6, line: 233, baseType: !476, size: 64, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !490, file: !6, line: 234, baseType: !483, size: 64, offset: 192)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !490, file: !6, line: 235, baseType: !476, size: 64, offset: 256)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !490, file: !6, line: 236, baseType: !483, size: 64, offset: 320)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !490, file: !6, line: 237, baseType: !505, size: 4096, offset: 512)
!505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !486, size: 4096, elements: !506)
!506 = !{!507}
!507 = !DISubrange(count: 8)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !486, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !486, file: !6, line: 162, baseType: !510, size: 32, offset: 96)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !64, line: 27, baseType: !511)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !176, line: 96, baseType: !65)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !486, file: !6, line: 163, baseType: !513, size: 32, offset: 128)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !514, line: 276, baseType: !515)
!514 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !514, line: 276, size: 32, elements: !516)
!516 = !{!517}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !515, file: !514, line: 276, baseType: !518, size: 32)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !514, line: 70, baseType: !519)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !514, line: 65, size: 32, elements: !520)
!520 = !{!521}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !519, file: !514, line: 66, baseType: !7, size: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !486, file: !6, line: 164, baseType: !483, size: 64, offset: 192)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !486, file: !6, line: 165, baseType: !524, size: 128, offset: 256)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !472, line: 14, size: 128, elements: !525)
!525 = !{!526}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !524, file: !472, line: 15, baseType: !527, size: 128)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !242, line: 125, size: 128, elements: !528)
!528 = !{!529, !530}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !527, file: !242, line: 126, baseType: !258, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !527, file: !242, line: 127, baseType: !246, size: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !486, file: !6, line: 166, baseType: !532, size: 64, offset: 384)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{!476}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !486, file: !6, line: 167, baseType: !476, size: 64, offset: 448)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !468, file: !6, line: 123, baseType: !537, size: 8, offset: 448)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !263, line: 17, baseType: !538)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !265, line: 21, baseType: !539)
!539 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !468, file: !6, line: 124, baseType: !537, size: 8, offset: 456)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !468, file: !6, line: 125, baseType: !537, size: 8, offset: 464)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !468, file: !6, line: 126, baseType: !537, size: 8, offset: 472)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !452, file: !392, line: 572, baseType: !468, size: 512, offset: 1216)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !452, file: !392, line: 580, baseType: !545, size: 64, offset: 1728)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !391, file: !392, line: 721, baseType: !7, size: 32, offset: 3584)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !391, file: !392, line: 722, baseType: !65, size: 32, offset: 3616)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !391, file: !392, line: 723, baseType: !549, size: 64, offset: 3648)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !551)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !552, line: 17, baseType: !553)
!552 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !552, line: 17, size: 64, elements: !554)
!554 = !{!555}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !553, file: !552, line: 17, baseType: !556, size: 64)
!556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 64, elements: !557)
!557 = !{!558}
!558 = !DISubrange(count: 1)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !391, file: !392, line: 724, baseType: !551, size: 64, offset: 3712)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !391, file: !392, line: 749, baseType: !561, offset: 3776)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !392, line: 290, elements: !116)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !391, file: !392, line: 751, baseType: !89, size: 128, offset: 3776)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !391, file: !392, line: 757, baseType: !250, size: 64, offset: 3904)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !391, file: !392, line: 758, baseType: !250, size: 64, offset: 3968)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !391, file: !392, line: 761, baseType: !566, size: 320, offset: 4032)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !339, line: 34, size: 320, elements: !567)
!567 = !{!568, !569}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !566, file: !339, line: 35, baseType: !262, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !566, file: !339, line: 36, baseType: !570, size: 256, offset: 64)
!570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 256, elements: !343)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !391, file: !392, line: 766, baseType: !65, size: 32, offset: 4352)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !391, file: !392, line: 767, baseType: !65, size: 32, offset: 4384)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !391, file: !392, line: 768, baseType: !65, size: 32, offset: 4416)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !391, file: !392, line: 770, baseType: !65, size: 32, offset: 4448)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !391, file: !392, line: 772, baseType: !193, size: 64, offset: 4480)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !391, file: !392, line: 775, baseType: !7, size: 32, offset: 4544)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !391, file: !392, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !391, file: !392, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !391, file: !392, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !391, file: !392, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !391, file: !392, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !391, file: !392, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !391, file: !392, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !391, file: !392, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !391, file: !392, line: 831, baseType: !193, size: 64, offset: 4672)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !391, file: !392, line: 833, baseType: !587, size: 384, offset: 4736)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !588)
!588 = !{!589, !594}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !587, file: !12, line: 26, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{!178, !593}
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, scope: !587, file: !12, line: 27, baseType: !595, size: 320, offset: 64)
!595 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !587, file: !12, line: 27, size: 320, elements: !596)
!596 = !{!597, !607, !634}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !595, file: !12, line: 36, baseType: !598, size: 320)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !595, file: !12, line: 29, size: 320, elements: !599)
!599 = !{!600, !602, !603, !604, !605, !606}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !598, file: !12, line: 30, baseType: !601, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !598, file: !12, line: 31, baseType: !400, size: 32, offset: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !598, file: !12, line: 32, baseType: !400, size: 32, offset: 96)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !598, file: !12, line: 33, baseType: !400, size: 32, offset: 128)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !598, file: !12, line: 34, baseType: !262, size: 64, offset: 192)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !598, file: !12, line: 35, baseType: !601, size: 64, offset: 256)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !595, file: !12, line: 46, baseType: !608, size: 192)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !595, file: !12, line: 38, size: 192, elements: !609)
!609 = !{!610, !611, !612, !633}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !608, file: !12, line: 39, baseType: !510, size: 32)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !608, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!612 = !DIDerivedType(tag: DW_TAG_member, scope: !608, file: !12, line: 41, baseType: !613, size: 64, offset: 64)
!613 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !608, file: !12, line: 41, size: 64, elements: !614)
!614 = !{!615, !623}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !613, file: !12, line: 42, baseType: !616, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !618, line: 7, size: 128, elements: !619)
!618 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!619 = !{!620, !622}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !617, file: !618, line: 8, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !176, line: 93, baseType: !226)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !617, file: !618, line: 9, baseType: !226, size: 64, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !613, file: !12, line: 43, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !626, line: 7, size: 64, elements: !627)
!626 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!627 = !{!628, !632}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !625, file: !626, line: 8, baseType: !629, size: 32)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !626, line: 5, baseType: !630)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !263, line: 20, baseType: !631)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !265, line: 26, baseType: !65)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !625, file: !626, line: 9, baseType: !630, size: 32, offset: 32)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !608, file: !12, line: 45, baseType: !262, size: 64, offset: 128)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !595, file: !12, line: 54, baseType: !635, size: 256)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !595, file: !12, line: 48, size: 256, elements: !636)
!636 = !{!637, !640, !641, !642, !643}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !635, file: !12, line: 49, baseType: !638, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !635, file: !12, line: 50, baseType: !65, size: 32, offset: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !635, file: !12, line: 51, baseType: !65, size: 32, offset: 96)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !635, file: !12, line: 52, baseType: !193, size: 64, offset: 128)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !635, file: !12, line: 53, baseType: !193, size: 64, offset: 192)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !391, file: !392, line: 835, baseType: !645, size: 32, offset: 5120)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !64, line: 22, baseType: !646)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !176, line: 28, baseType: !65)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !391, file: !392, line: 836, baseType: !645, size: 32, offset: 5152)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !391, file: !392, line: 840, baseType: !193, size: 64, offset: 5184)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !391, file: !392, line: 849, baseType: !390, size: 64, offset: 5248)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !391, file: !392, line: 852, baseType: !390, size: 64, offset: 5312)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !391, file: !392, line: 857, baseType: !89, size: 128, offset: 5376)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !391, file: !392, line: 858, baseType: !89, size: 128, offset: 5504)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !391, file: !392, line: 859, baseType: !390, size: 64, offset: 5632)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !391, file: !392, line: 867, baseType: !89, size: 128, offset: 5696)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !391, file: !392, line: 868, baseType: !89, size: 128, offset: 5824)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !391, file: !392, line: 871, baseType: !657, size: 64, offset: 5952)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !659, line: 59, size: 768, elements: !660)
!659 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!660 = !{!661, !662, !663, !664, !675, !676, !683, !692}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !658, file: !659, line: 61, baseType: !406, size: 32)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !658, file: !659, line: 62, baseType: !7, size: 32, offset: 32)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !658, file: !659, line: 63, baseType: !102, offset: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !658, file: !659, line: 65, baseType: !665, size: 256, offset: 64)
!665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !666, size: 256, elements: !343)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !64, line: 182, size: 64, elements: !667)
!667 = !{!668}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !666, file: !64, line: 183, baseType: !669, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !64, line: 186, size: 128, elements: !671)
!671 = !{!672, !673}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !670, file: !64, line: 187, baseType: !669, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !670, file: !64, line: 187, baseType: !674, size: 64, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !658, file: !659, line: 66, baseType: !666, size: 64, offset: 320)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !658, file: !659, line: 68, baseType: !677, size: 128, offset: 384)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !678, line: 40, baseType: !679)
!678 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !678, line: 36, size: 128, elements: !680)
!680 = !{!681, !682}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !679, file: !678, line: 37, baseType: !102)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !679, file: !678, line: 38, baseType: !89, size: 128)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !658, file: !659, line: 69, baseType: !684, size: 128, align: 64, offset: 512)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !64, line: 216, size: 128, align: 64, elements: !685)
!685 = !{!686, !688}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !684, file: !64, line: 217, baseType: !687, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !684, file: !64, line: 218, baseType: !689, size: 64, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{null, !687}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !658, file: !659, line: 70, baseType: !693, size: 128, offset: 640)
!693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !694, size: 128, elements: !557)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !659, line: 54, size: 128, elements: !695)
!695 = !{!696, !697}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !694, file: !659, line: 55, baseType: !65, size: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !694, file: !659, line: 56, baseType: !698, size: 64, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !659, line: 56, flags: DIFlagFwdDecl)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !391, file: !392, line: 872, baseType: !701, size: 512, offset: 6016)
!701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !670, size: 512, elements: !343)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !391, file: !392, line: 873, baseType: !89, size: 128, offset: 6528)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !391, file: !392, line: 874, baseType: !89, size: 128, offset: 6656)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !391, file: !392, line: 876, baseType: !705, size: 64, offset: 6784)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !707, line: 26, size: 192, elements: !708)
!707 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!708 = !{!709, !710}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !706, file: !707, line: 27, baseType: !7, size: 32)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !706, file: !707, line: 28, baseType: !711, size: 128, offset: 64)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !712, line: 43, size: 128, elements: !713)
!712 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!713 = !{!714, !715}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !711, file: !712, line: 44, baseType: !309)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !711, file: !712, line: 45, baseType: !89, size: 128)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !391, file: !392, line: 879, baseType: !717, size: 64, offset: 6848)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !391, file: !392, line: 882, baseType: !717, size: 64, offset: 6912)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !391, file: !392, line: 884, baseType: !262, size: 64, offset: 6976)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !391, file: !392, line: 885, baseType: !262, size: 64, offset: 7040)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !391, file: !392, line: 890, baseType: !262, size: 64, offset: 7104)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !391, file: !392, line: 891, baseType: !723, size: 128, offset: 7168)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !392, line: 242, size: 128, elements: !724)
!724 = !{!725, !726, !727}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !723, file: !392, line: 244, baseType: !262, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !723, file: !392, line: 245, baseType: !262, size: 64, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !723, file: !392, line: 246, baseType: !309, offset: 128)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !391, file: !392, line: 900, baseType: !193, size: 64, offset: 7296)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !391, file: !392, line: 901, baseType: !193, size: 64, offset: 7360)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !391, file: !392, line: 904, baseType: !262, size: 64, offset: 7424)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !391, file: !392, line: 907, baseType: !262, size: 64, offset: 7488)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !391, file: !392, line: 910, baseType: !193, size: 64, offset: 7552)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !391, file: !392, line: 911, baseType: !193, size: 64, offset: 7616)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !391, file: !392, line: 914, baseType: !735, size: 640, offset: 7680)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !736, line: 123, size: 640, elements: !737)
!736 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!737 = !{!738, !744, !745}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !735, file: !736, line: 124, baseType: !739, size: 576)
!739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !740, size: 576, elements: !144)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !736, line: 108, size: 192, elements: !741)
!741 = !{!742, !743}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !740, file: !736, line: 109, baseType: !262, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !740, file: !736, line: 110, baseType: !524, size: 128, offset: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !735, file: !736, line: 125, baseType: !7, size: 32, offset: 576)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !735, file: !736, line: 126, baseType: !7, size: 32, offset: 608)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !391, file: !392, line: 917, baseType: !747, size: 192, offset: 8320)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !736, line: 134, size: 192, elements: !748)
!748 = !{!749, !750}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !747, file: !736, line: 135, baseType: !684, size: 128, align: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !747, file: !736, line: 136, baseType: !7, size: 32, offset: 128)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !391, file: !392, line: 923, baseType: !752, size: 64, offset: 8512)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !754)
!754 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !392, line: 923, flags: DIFlagFwdDecl)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !391, file: !392, line: 926, baseType: !752, size: 64, offset: 8576)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !391, file: !392, line: 929, baseType: !752, size: 64, offset: 8640)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !391, file: !392, line: 933, baseType: !758, size: 64, offset: 8704)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !392, line: 933, flags: DIFlagFwdDecl)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !391, file: !392, line: 943, baseType: !761, size: 128, offset: 8768)
!761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 128, elements: !762)
!762 = !{!763}
!763 = !DISubrange(count: 16)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !391, file: !392, line: 945, baseType: !765, size: 64, offset: 8896)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !392, line: 49, flags: DIFlagFwdDecl)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !391, file: !392, line: 956, baseType: !768, size: 64, offset: 8960)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !392, line: 45, flags: DIFlagFwdDecl)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !391, file: !392, line: 959, baseType: !771, size: 64, offset: 9024)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !392, line: 959, flags: DIFlagFwdDecl)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !391, file: !392, line: 962, baseType: !774, size: 64, offset: 9088)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !392, line: 66, flags: DIFlagFwdDecl)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !391, file: !392, line: 966, baseType: !777, size: 64, offset: 9152)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !392, line: 50, flags: DIFlagFwdDecl)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !391, file: !392, line: 969, baseType: !780, size: 64, offset: 9216)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !736, line: 223, flags: DIFlagFwdDecl)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !391, file: !392, line: 970, baseType: !783, size: 64, offset: 9280)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !392, line: 62, flags: DIFlagFwdDecl)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !391, file: !392, line: 971, baseType: !786, size: 64, offset: 9344)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !787, line: 25, baseType: !788)
!787 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !787, line: 23, size: 64, elements: !789)
!789 = !{!790}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !788, file: !787, line: 24, baseType: !556, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !391, file: !392, line: 972, baseType: !786, size: 64, offset: 9408)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !391, file: !392, line: 974, baseType: !786, size: 64, offset: 9472)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !391, file: !392, line: 975, baseType: !794, size: 192, offset: 9536)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !795, line: 30, size: 192, elements: !796)
!795 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!796 = !{!797, !798}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !794, file: !795, line: 31, baseType: !89, size: 128)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !794, file: !795, line: 32, baseType: !786, size: 64, offset: 128)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !391, file: !392, line: 976, baseType: !193, size: 64, offset: 9728)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !391, file: !392, line: 977, baseType: !190, size: 64, offset: 9792)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !391, file: !392, line: 978, baseType: !7, size: 32, offset: 9856)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !391, file: !392, line: 980, baseType: !687, size: 64, offset: 9920)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !391, file: !392, line: 989, baseType: !804, size: 128, offset: 9984)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !805, line: 35, size: 128, elements: !806)
!805 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!806 = !{!807, !808, !809}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !804, file: !805, line: 36, baseType: !65, size: 32)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !804, file: !805, line: 37, baseType: !284, size: 32, offset: 32)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !804, file: !805, line: 38, baseType: !810, size: 64, offset: 64)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !805, line: 23, flags: DIFlagFwdDecl)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !391, file: !392, line: 992, baseType: !262, size: 64, offset: 10112)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !391, file: !392, line: 993, baseType: !262, size: 64, offset: 10176)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !391, file: !392, line: 996, baseType: !102, offset: 10240)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !391, file: !392, line: 999, baseType: !309, offset: 10240)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !391, file: !392, line: 1001, baseType: !817, size: 64, offset: 10240)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !392, line: 636, size: 64, elements: !818)
!818 = !{!819}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !817, file: !392, line: 637, baseType: !820, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !391, file: !392, line: 1005, baseType: !527, size: 128, offset: 10304)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !391, file: !392, line: 1007, baseType: !390, size: 64, offset: 10432)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !391, file: !392, line: 1009, baseType: !824, size: 64, offset: 10496)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !392, line: 1009, flags: DIFlagFwdDecl)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !391, file: !392, line: 1043, baseType: !66, size: 64, offset: 10560)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !391, file: !392, line: 1046, baseType: !828, size: 64, offset: 10624)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !392, line: 41, flags: DIFlagFwdDecl)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !391, file: !392, line: 1050, baseType: !831, size: 64, offset: 10688)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !392, line: 42, flags: DIFlagFwdDecl)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !391, file: !392, line: 1054, baseType: !834, size: 64, offset: 10752)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !392, line: 55, flags: DIFlagFwdDecl)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !391, file: !392, line: 1056, baseType: !837, size: 64, offset: 10816)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !392, line: 40, flags: DIFlagFwdDecl)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !391, file: !392, line: 1058, baseType: !840, size: 64, offset: 10880)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !392, line: 47, flags: DIFlagFwdDecl)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !391, file: !392, line: 1061, baseType: !843, size: 64, offset: 10944)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !392, line: 43, flags: DIFlagFwdDecl)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !391, file: !392, line: 1064, baseType: !193, size: 64, offset: 11008)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !391, file: !392, line: 1065, baseType: !847, size: 64, offset: 11072)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !795, line: 14, baseType: !849)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !795, line: 12, size: 384, elements: !850)
!850 = !{!851}
!851 = !DIDerivedType(tag: DW_TAG_member, scope: !849, file: !795, line: 13, baseType: !852, size: 384)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !849, file: !795, line: 13, size: 384, elements: !853)
!853 = !{!854, !855, !856, !857}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !852, file: !795, line: 13, baseType: !65, size: 32)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !852, file: !795, line: 13, baseType: !65, size: 32, offset: 32)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !852, file: !795, line: 13, baseType: !65, size: 32, offset: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !852, file: !795, line: 13, baseType: !858, size: 256, offset: 128)
!858 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !859, line: 32, size: 256, elements: !860)
!859 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!860 = !{!861, !867, !880, !886, !895, !915, !920}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !858, file: !859, line: 37, baseType: !862, size: 64)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !858, file: !859, line: 34, size: 64, elements: !863)
!863 = !{!864, !865}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !862, file: !859, line: 35, baseType: !646, size: 32)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !862, file: !859, line: 36, baseType: !866, size: 32, offset: 32)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !176, line: 49, baseType: !7)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !858, file: !859, line: 45, baseType: !868, size: 192)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !858, file: !859, line: 40, size: 192, elements: !869)
!869 = !{!870, !872, !873, !879}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !868, file: !859, line: 41, baseType: !871, size: 32)
!871 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !176, line: 95, baseType: !65)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !868, file: !859, line: 42, baseType: !65, size: 32, offset: 32)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !868, file: !859, line: 43, baseType: !874, size: 64, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !859, line: 11, baseType: !875)
!875 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !859, line: 8, size: 64, elements: !876)
!876 = !{!877, !878}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !875, file: !859, line: 9, baseType: !65, size: 32)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !875, file: !859, line: 10, baseType: !66, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !868, file: !859, line: 44, baseType: !65, size: 32, offset: 128)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !858, file: !859, line: 52, baseType: !881, size: 128)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !858, file: !859, line: 48, size: 128, elements: !882)
!882 = !{!883, !884, !885}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !881, file: !859, line: 49, baseType: !646, size: 32)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !881, file: !859, line: 50, baseType: !866, size: 32, offset: 32)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !881, file: !859, line: 51, baseType: !874, size: 64, offset: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !858, file: !859, line: 61, baseType: !887, size: 256)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !858, file: !859, line: 55, size: 256, elements: !888)
!888 = !{!889, !890, !891, !892, !894}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !887, file: !859, line: 56, baseType: !646, size: 32)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !887, file: !859, line: 57, baseType: !866, size: 32, offset: 32)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !887, file: !859, line: 58, baseType: !65, size: 32, offset: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !887, file: !859, line: 59, baseType: !893, size: 64, offset: 128)
!893 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !176, line: 94, baseType: !177)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !887, file: !859, line: 60, baseType: !893, size: 64, offset: 192)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !858, file: !859, line: 95, baseType: !896, size: 256)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !858, file: !859, line: 64, size: 256, elements: !897)
!897 = !{!898, !899}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !896, file: !859, line: 65, baseType: !66, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, scope: !896, file: !859, line: 77, baseType: !900, size: 192, offset: 64)
!900 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !896, file: !859, line: 77, size: 192, elements: !901)
!901 = !{!902, !903, !910}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !900, file: !859, line: 82, baseType: !379, size: 16)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !900, file: !859, line: 88, baseType: !904, size: 192)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !900, file: !859, line: 84, size: 192, elements: !905)
!905 = !{!906, !908, !909}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !904, file: !859, line: 85, baseType: !907, size: 64)
!907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 64, elements: !506)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !904, file: !859, line: 86, baseType: !66, size: 64, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !904, file: !859, line: 87, baseType: !66, size: 64, offset: 128)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !900, file: !859, line: 93, baseType: !911, size: 96)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !900, file: !859, line: 90, size: 96, elements: !912)
!912 = !{!913, !914}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !911, file: !859, line: 91, baseType: !907, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !911, file: !859, line: 92, baseType: !401, size: 32, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !858, file: !859, line: 101, baseType: !916, size: 128)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !858, file: !859, line: 98, size: 128, elements: !917)
!917 = !{!918, !919}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !916, file: !859, line: 99, baseType: !178, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !916, file: !859, line: 100, baseType: !65, size: 32, offset: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !858, file: !859, line: 108, baseType: !921, size: 128)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !858, file: !859, line: 104, size: 128, elements: !922)
!922 = !{!923, !924, !925}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !921, file: !859, line: 105, baseType: !66, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !921, file: !859, line: 106, baseType: !65, size: 32, offset: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !921, file: !859, line: 107, baseType: !7, size: 32, offset: 96)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !391, file: !392, line: 1067, baseType: !927, offset: 11136)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !928, line: 12, elements: !116)
!928 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!929 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !391, file: !392, line: 1099, baseType: !930, size: 64, offset: 11136)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !392, line: 56, flags: DIFlagFwdDecl)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !391, file: !392, line: 1103, baseType: !89, size: 128, offset: 11200)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !391, file: !392, line: 1104, baseType: !934, size: 64, offset: 11328)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !392, line: 46, flags: DIFlagFwdDecl)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !391, file: !392, line: 1105, baseType: !361, size: 192, offset: 11392)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !391, file: !392, line: 1106, baseType: !7, size: 32, offset: 11584)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !391, file: !392, line: 1109, baseType: !939, size: 128, offset: 11648)
!939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !940, size: 128, elements: !942)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !392, line: 51, flags: DIFlagFwdDecl)
!942 = !{!943}
!943 = !DISubrange(count: 2)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !391, file: !392, line: 1110, baseType: !361, size: 192, offset: 11776)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !391, file: !392, line: 1111, baseType: !89, size: 128, offset: 11968)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !391, file: !392, line: 1173, baseType: !947, size: 64, offset: 12096)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !949, line: 62, size: 256, align: 256, elements: !950)
!949 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!950 = !{!951, !952, !953, !958}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !948, file: !949, line: 75, baseType: !401, size: 32)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !948, file: !949, line: 90, baseType: !401, size: 32, offset: 32)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !948, file: !949, line: 124, baseType: !954, size: 64, offset: 64)
!954 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !948, file: !949, line: 109, size: 64, elements: !955)
!955 = !{!956, !957}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !954, file: !949, line: 110, baseType: !264, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !954, file: !949, line: 112, baseType: !264, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !948, file: !949, line: 144, baseType: !401, size: 32, offset: 128)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !391, file: !392, line: 1174, baseType: !400, size: 32, offset: 12160)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !391, file: !392, line: 1179, baseType: !193, size: 64, offset: 12224)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !391, file: !392, line: 1182, baseType: !962, size: 128, offset: 12288)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !339, line: 76, size: 128, elements: !963)
!963 = !{!964, !969, !972}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !962, file: !339, line: 85, baseType: !965, size: 64)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !966, line: 7, size: 64, elements: !967)
!966 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!967 = !{!968}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !965, file: !966, line: 12, baseType: !553, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !962, file: !339, line: 88, baseType: !970, size: 8, offset: 64)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !64, line: 30, baseType: !971)
!971 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !962, file: !339, line: 95, baseType: !970, size: 8, offset: 72)
!973 = !DIDerivedType(tag: DW_TAG_member, scope: !391, file: !392, line: 1184, baseType: !974, size: 128, offset: 12416)
!974 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !391, file: !392, line: 1184, size: 128, elements: !975)
!975 = !{!976, !977}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !974, file: !392, line: 1185, baseType: !406, size: 32)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !974, file: !392, line: 1186, baseType: !684, size: 128, align: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !391, file: !392, line: 1190, baseType: !979, size: 64, offset: 12544)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !392, line: 53, flags: DIFlagFwdDecl)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !391, file: !392, line: 1192, baseType: !982, size: 128, offset: 12608)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !339, line: 64, size: 128, elements: !983)
!983 = !{!984, !1077, !1078}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !982, file: !339, line: 65, baseType: !985, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !234, line: 68, size: 512, align: 128, elements: !987)
!987 = !{!988, !989, !1069, !1076}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !986, file: !234, line: 69, baseType: !193, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, scope: !986, file: !234, line: 77, baseType: !990, size: 320, offset: 64)
!990 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !986, file: !234, line: 77, size: 320, elements: !991)
!991 = !{!992, !1001, !1006, !1034, !1042, !1048, !1061, !1068}
!992 = !DIDerivedType(tag: DW_TAG_member, scope: !990, file: !234, line: 78, baseType: !993, size: 320)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !990, file: !234, line: 78, size: 320, elements: !994)
!994 = !{!995, !996, !999, !1000}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !993, file: !234, line: 84, baseType: !89, size: 128)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !993, file: !234, line: 86, baseType: !997, size: 64, offset: 128)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !234, line: 26, flags: DIFlagFwdDecl)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !993, file: !234, line: 87, baseType: !193, size: 64, offset: 192)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !993, file: !234, line: 94, baseType: !193, size: 64, offset: 256)
!1001 = !DIDerivedType(tag: DW_TAG_member, scope: !990, file: !234, line: 96, baseType: !1002, size: 64)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !990, file: !234, line: 96, size: 64, elements: !1003)
!1003 = !{!1004}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1002, file: !234, line: 101, baseType: !1005, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !64, line: 143, baseType: !262)
!1006 = !DIDerivedType(tag: DW_TAG_member, scope: !990, file: !234, line: 103, baseType: !1007, size: 320)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !990, file: !234, line: 103, size: 320, elements: !1008)
!1008 = !{!1009, !1019, !1022, !1023}
!1009 = !DIDerivedType(tag: DW_TAG_member, scope: !1007, file: !234, line: 104, baseType: !1010, size: 128)
!1010 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1007, file: !234, line: 104, size: 128, elements: !1011)
!1011 = !{!1012, !1013}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1010, file: !234, line: 105, baseType: !89, size: 128)
!1013 = !DIDerivedType(tag: DW_TAG_member, scope: !1010, file: !234, line: 106, baseType: !1014, size: 128)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1010, file: !234, line: 106, size: 128, elements: !1015)
!1015 = !{!1016, !1017, !1018}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1014, file: !234, line: 107, baseType: !985, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1014, file: !234, line: 109, baseType: !65, size: 32, offset: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1014, file: !234, line: 110, baseType: !65, size: 32, offset: 96)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1007, file: !234, line: 117, baseType: !1020, size: 64, offset: 128)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !234, line: 117, flags: DIFlagFwdDecl)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1007, file: !234, line: 119, baseType: !66, size: 64, offset: 192)
!1023 = !DIDerivedType(tag: DW_TAG_member, scope: !1007, file: !234, line: 120, baseType: !1024, size: 64, offset: 256)
!1024 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1007, file: !234, line: 120, size: 64, elements: !1025)
!1025 = !{!1026, !1027, !1028}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1024, file: !234, line: 121, baseType: !66, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1024, file: !234, line: 122, baseType: !193, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, scope: !1024, file: !234, line: 123, baseType: !1029, size: 32)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1024, file: !234, line: 123, size: 32, elements: !1030)
!1030 = !{!1031, !1032, !1033}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1029, file: !234, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1029, file: !234, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1029, file: !234, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1034 = !DIDerivedType(tag: DW_TAG_member, scope: !990, file: !234, line: 130, baseType: !1035, size: 192)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !990, file: !234, line: 130, size: 192, elements: !1036)
!1036 = !{!1037, !1038, !1039, !1040, !1041}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1035, file: !234, line: 131, baseType: !193, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1035, file: !234, line: 134, baseType: !539, size: 8, offset: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1035, file: !234, line: 135, baseType: !539, size: 8, offset: 72)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1035, file: !234, line: 136, baseType: !284, size: 32, offset: 96)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1035, file: !234, line: 137, baseType: !7, size: 32, offset: 128)
!1042 = !DIDerivedType(tag: DW_TAG_member, scope: !990, file: !234, line: 139, baseType: !1043, size: 256)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !990, file: !234, line: 139, size: 256, elements: !1044)
!1044 = !{!1045, !1046, !1047}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1043, file: !234, line: 140, baseType: !193, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1043, file: !234, line: 141, baseType: !284, size: 32, offset: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1043, file: !234, line: 143, baseType: !89, size: 128, offset: 128)
!1048 = !DIDerivedType(tag: DW_TAG_member, scope: !990, file: !234, line: 145, baseType: !1049, size: 256)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !990, file: !234, line: 145, size: 256, elements: !1050)
!1050 = !{!1051, !1052, !1054, !1055, !1060}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1049, file: !234, line: 146, baseType: !193, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1049, file: !234, line: 147, baseType: !1053, size: 64, offset: 64)
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !223, line: 509, baseType: !985)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1049, file: !234, line: 148, baseType: !193, size: 64, offset: 128)
!1055 = !DIDerivedType(tag: DW_TAG_member, scope: !1049, file: !234, line: 149, baseType: !1056, size: 64, offset: 192)
!1056 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1049, file: !234, line: 149, size: 64, elements: !1057)
!1057 = !{!1058, !1059}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1056, file: !234, line: 150, baseType: !250, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1056, file: !234, line: 151, baseType: !284, size: 32)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1049, file: !234, line: 156, baseType: !102, offset: 256)
!1061 = !DIDerivedType(tag: DW_TAG_member, scope: !990, file: !234, line: 159, baseType: !1062, size: 128)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !990, file: !234, line: 159, size: 128, elements: !1063)
!1063 = !{!1064, !1067}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1062, file: !234, line: 161, baseType: !1065, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !234, line: 161, flags: DIFlagFwdDecl)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1062, file: !234, line: 162, baseType: !66, size: 64, offset: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !990, file: !234, line: 176, baseType: !684, size: 128, align: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, scope: !986, file: !234, line: 179, baseType: !1070, size: 32, offset: 384)
!1070 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !986, file: !234, line: 179, size: 32, elements: !1071)
!1071 = !{!1072, !1073, !1074, !1075}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1070, file: !234, line: 184, baseType: !284, size: 32)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1070, file: !234, line: 192, baseType: !7, size: 32)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1070, file: !234, line: 194, baseType: !7, size: 32)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1070, file: !234, line: 195, baseType: !65, size: 32)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !986, file: !234, line: 199, baseType: !284, size: 32, offset: 416)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !982, file: !339, line: 67, baseType: !401, size: 32, offset: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !982, file: !339, line: 68, baseType: !401, size: 32, offset: 96)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !391, file: !392, line: 1206, baseType: !65, size: 32, offset: 12736)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !391, file: !392, line: 1207, baseType: !65, size: 32, offset: 12768)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !391, file: !392, line: 1209, baseType: !193, size: 64, offset: 12800)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !391, file: !392, line: 1219, baseType: !262, size: 64, offset: 12864)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !391, file: !392, line: 1220, baseType: !262, size: 64, offset: 12928)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !391, file: !392, line: 1317, baseType: !65, size: 32, offset: 12992)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !391, file: !392, line: 1319, baseType: !390, size: 64, offset: 13056)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !391, file: !392, line: 1322, baseType: !1087, size: 64, offset: 13120)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !392, line: 1322, flags: DIFlagFwdDecl)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !391, file: !392, line: 1326, baseType: !406, size: 32, offset: 13184)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !391, file: !392, line: 1342, baseType: !66, size: 64, offset: 13248)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !391, file: !392, line: 1343, baseType: !264, size: 64, offset: 13312)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !391, file: !392, line: 1344, baseType: !262, size: 64, offset: 13376)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !391, file: !392, line: 1345, baseType: !264, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !391, file: !392, line: 1346, baseType: !264, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !391, file: !392, line: 1347, baseType: !264, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !391, file: !392, line: 1348, baseType: !684, size: 128, align: 64, offset: 13504)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !391, file: !392, line: 1358, baseType: !1098, size: 34816, offset: 13824)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1099, line: 485, size: 34816, elements: !1100)
!1099 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1100 = !{!1101, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1130, !1131, !1132, !1133, !1134, !1135, !1138, !1139, !1140}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1098, file: !1099, line: 487, baseType: !1102, size: 192)
!1102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1103, size: 192, elements: !144)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1104, line: 16, size: 64, elements: !1105)
!1104 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1105 = !{!1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1103, file: !1104, line: 17, baseType: !374, size: 16)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1103, file: !1104, line: 18, baseType: !374, size: 16, offset: 16)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1103, file: !1104, line: 19, baseType: !374, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1103, file: !1104, line: 19, baseType: !374, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1103, file: !1104, line: 19, baseType: !374, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1103, file: !1104, line: 19, baseType: !374, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1103, file: !1104, line: 19, baseType: !374, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1103, file: !1104, line: 20, baseType: !374, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1103, file: !1104, line: 20, baseType: !374, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1103, file: !1104, line: 20, baseType: !374, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1103, file: !1104, line: 20, baseType: !374, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1103, file: !1104, line: 20, baseType: !374, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1103, file: !1104, line: 20, baseType: !374, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1098, file: !1099, line: 491, baseType: !193, size: 64, offset: 192)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1098, file: !1099, line: 495, baseType: !185, size: 16, offset: 256)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1098, file: !1099, line: 496, baseType: !185, size: 16, offset: 272)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1098, file: !1099, line: 497, baseType: !185, size: 16, offset: 288)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1098, file: !1099, line: 498, baseType: !185, size: 16, offset: 304)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1098, file: !1099, line: 502, baseType: !193, size: 64, offset: 320)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1098, file: !1099, line: 503, baseType: !193, size: 64, offset: 384)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1098, file: !1099, line: 514, baseType: !1127, size: 256, offset: 448)
!1127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1128, size: 256, elements: !343)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1099, line: 483, flags: DIFlagFwdDecl)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1098, file: !1099, line: 516, baseType: !193, size: 64, offset: 704)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1098, file: !1099, line: 518, baseType: !193, size: 64, offset: 768)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1098, file: !1099, line: 520, baseType: !193, size: 64, offset: 832)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1098, file: !1099, line: 521, baseType: !193, size: 64, offset: 896)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1098, file: !1099, line: 522, baseType: !193, size: 64, offset: 960)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1098, file: !1099, line: 528, baseType: !1136, size: 64, offset: 1024)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1099, line: 10, flags: DIFlagFwdDecl)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1098, file: !1099, line: 535, baseType: !193, size: 64, offset: 1088)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1098, file: !1099, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1098, file: !1099, line: 540, baseType: !1141, size: 33280, offset: 1536)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1142, line: 317, size: 33280, elements: !1143)
!1142 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1143 = !{!1144, !1145, !1146}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1141, file: !1142, line: 330, baseType: !7, size: 32)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1141, file: !1142, line: 337, baseType: !193, size: 64, offset: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1141, file: !1142, line: 348, baseType: !1147, size: 32768, offset: 512)
!1147 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1142, line: 304, size: 32768, elements: !1148)
!1148 = !{!1149, !1164, !1203, !1253, !1270}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1147, file: !1142, line: 305, baseType: !1150, size: 896)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1142, line: 12, size: 896, elements: !1151)
!1151 = !{!1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1163}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1150, file: !1142, line: 13, baseType: !400, size: 32)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1150, file: !1142, line: 14, baseType: !400, size: 32, offset: 32)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1150, file: !1142, line: 15, baseType: !400, size: 32, offset: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1150, file: !1142, line: 16, baseType: !400, size: 32, offset: 96)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1150, file: !1142, line: 17, baseType: !400, size: 32, offset: 128)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1150, file: !1142, line: 18, baseType: !400, size: 32, offset: 160)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1150, file: !1142, line: 19, baseType: !400, size: 32, offset: 192)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1150, file: !1142, line: 22, baseType: !1160, size: 640, offset: 224)
!1160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !400, size: 640, elements: !1161)
!1161 = !{!1162}
!1162 = !DISubrange(count: 20)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1150, file: !1142, line: 25, baseType: !400, size: 32, offset: 864)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1147, file: !1142, line: 306, baseType: !1165, size: 4096, align: 128)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1142, line: 34, size: 4096, align: 128, elements: !1166)
!1166 = !{!1167, !1168, !1169, !1170, !1171, !1186, !1187, !1188, !1192, !1194, !1198}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1165, file: !1142, line: 35, baseType: !374, size: 16)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1165, file: !1142, line: 36, baseType: !374, size: 16, offset: 16)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1165, file: !1142, line: 37, baseType: !374, size: 16, offset: 32)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1165, file: !1142, line: 38, baseType: !374, size: 16, offset: 48)
!1171 = !DIDerivedType(tag: DW_TAG_member, scope: !1165, file: !1142, line: 39, baseType: !1172, size: 128, offset: 64)
!1172 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1165, file: !1142, line: 39, size: 128, elements: !1173)
!1173 = !{!1174, !1179}
!1174 = !DIDerivedType(tag: DW_TAG_member, scope: !1172, file: !1142, line: 40, baseType: !1175, size: 128)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1172, file: !1142, line: 40, size: 128, elements: !1176)
!1176 = !{!1177, !1178}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1175, file: !1142, line: 41, baseType: !262, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1175, file: !1142, line: 42, baseType: !262, size: 64, offset: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, scope: !1172, file: !1142, line: 44, baseType: !1180, size: 128)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1172, file: !1142, line: 44, size: 128, elements: !1181)
!1181 = !{!1182, !1183, !1184, !1185}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1180, file: !1142, line: 45, baseType: !400, size: 32)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1180, file: !1142, line: 46, baseType: !400, size: 32, offset: 32)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1180, file: !1142, line: 47, baseType: !400, size: 32, offset: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1180, file: !1142, line: 48, baseType: !400, size: 32, offset: 96)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1165, file: !1142, line: 51, baseType: !400, size: 32, offset: 192)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1165, file: !1142, line: 52, baseType: !400, size: 32, offset: 224)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1165, file: !1142, line: 55, baseType: !1189, size: 1024, offset: 256)
!1189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !400, size: 1024, elements: !1190)
!1190 = !{!1191}
!1191 = !DISubrange(count: 32)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1165, file: !1142, line: 58, baseType: !1193, size: 2048, offset: 1280)
!1193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !400, size: 2048, elements: !148)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1165, file: !1142, line: 60, baseType: !1195, size: 384, offset: 3328)
!1195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !400, size: 384, elements: !1196)
!1196 = !{!1197}
!1197 = !DISubrange(count: 12)
!1198 = !DIDerivedType(tag: DW_TAG_member, scope: !1165, file: !1142, line: 62, baseType: !1199, size: 384, offset: 3712)
!1199 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1165, file: !1142, line: 62, size: 384, elements: !1200)
!1200 = !{!1201, !1202}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1199, file: !1142, line: 63, baseType: !1195, size: 384)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1199, file: !1142, line: 64, baseType: !1195, size: 384)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1147, file: !1142, line: 307, baseType: !1204, size: 1088)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1142, line: 79, size: 1088, elements: !1205)
!1205 = !{!1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1252}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1204, file: !1142, line: 80, baseType: !400, size: 32)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1204, file: !1142, line: 81, baseType: !400, size: 32, offset: 32)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1204, file: !1142, line: 82, baseType: !400, size: 32, offset: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1204, file: !1142, line: 83, baseType: !400, size: 32, offset: 96)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1204, file: !1142, line: 84, baseType: !400, size: 32, offset: 128)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1204, file: !1142, line: 85, baseType: !400, size: 32, offset: 160)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1204, file: !1142, line: 86, baseType: !400, size: 32, offset: 192)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1204, file: !1142, line: 88, baseType: !1160, size: 640, offset: 224)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1204, file: !1142, line: 89, baseType: !537, size: 8, offset: 864)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1204, file: !1142, line: 90, baseType: !537, size: 8, offset: 872)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1204, file: !1142, line: 91, baseType: !537, size: 8, offset: 880)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1204, file: !1142, line: 92, baseType: !537, size: 8, offset: 888)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1204, file: !1142, line: 93, baseType: !537, size: 8, offset: 896)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1204, file: !1142, line: 94, baseType: !537, size: 8, offset: 904)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1204, file: !1142, line: 95, baseType: !1221, size: 64, offset: 960)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1223, line: 11, size: 128, elements: !1224)
!1223 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1224 = !{!1225, !1226}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1222, file: !1223, line: 12, baseType: !178, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1222, file: !1223, line: 13, baseType: !1227, size: 64, offset: 64)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1229, line: 56, size: 1344, elements: !1230)
!1229 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1230 = !{!1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1228, file: !1229, line: 61, baseType: !193, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1228, file: !1229, line: 62, baseType: !193, size: 64, offset: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1228, file: !1229, line: 63, baseType: !193, size: 64, offset: 128)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1228, file: !1229, line: 64, baseType: !193, size: 64, offset: 192)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1228, file: !1229, line: 65, baseType: !193, size: 64, offset: 256)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1228, file: !1229, line: 66, baseType: !193, size: 64, offset: 320)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1228, file: !1229, line: 68, baseType: !193, size: 64, offset: 384)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1228, file: !1229, line: 69, baseType: !193, size: 64, offset: 448)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1228, file: !1229, line: 70, baseType: !193, size: 64, offset: 512)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1228, file: !1229, line: 71, baseType: !193, size: 64, offset: 576)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1228, file: !1229, line: 72, baseType: !193, size: 64, offset: 640)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1228, file: !1229, line: 73, baseType: !193, size: 64, offset: 704)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1228, file: !1229, line: 74, baseType: !193, size: 64, offset: 768)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1228, file: !1229, line: 75, baseType: !193, size: 64, offset: 832)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1228, file: !1229, line: 76, baseType: !193, size: 64, offset: 896)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1228, file: !1229, line: 81, baseType: !193, size: 64, offset: 960)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1228, file: !1229, line: 83, baseType: !193, size: 64, offset: 1024)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1228, file: !1229, line: 84, baseType: !193, size: 64, offset: 1088)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1228, file: !1229, line: 85, baseType: !193, size: 64, offset: 1152)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1228, file: !1229, line: 86, baseType: !193, size: 64, offset: 1216)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1228, file: !1229, line: 87, baseType: !193, size: 64, offset: 1280)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1204, file: !1142, line: 96, baseType: !400, size: 32, offset: 1024)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1147, file: !1142, line: 308, baseType: !1254, size: 4608, align: 512)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1142, line: 289, size: 4608, align: 512, elements: !1255)
!1255 = !{!1256, !1257, !1266}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1254, file: !1142, line: 290, baseType: !1165, size: 4096, align: 128)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1254, file: !1142, line: 291, baseType: !1258, size: 512, offset: 4096)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1142, line: 268, size: 512, elements: !1259)
!1259 = !{!1260, !1261, !1262}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1258, file: !1142, line: 269, baseType: !262, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1258, file: !1142, line: 270, baseType: !262, size: 64, offset: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1258, file: !1142, line: 271, baseType: !1263, size: 384, offset: 128)
!1263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 384, elements: !1264)
!1264 = !{!1265}
!1265 = !DISubrange(count: 6)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1254, file: !1142, line: 292, baseType: !1267, offset: 4608)
!1267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !537, elements: !1268)
!1268 = !{!1269}
!1269 = !DISubrange(count: 0)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1147, file: !1142, line: 309, baseType: !1271, size: 32768)
!1271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !537, size: 32768, elements: !1272)
!1272 = !{!1273}
!1273 = !DISubrange(count: 4096)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !387, file: !234, line: 378, baseType: !1275, size: 64, offset: 64)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !383, file: !234, line: 384, baseType: !706, size: 192, offset: 192)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !254, file: !234, line: 500, baseType: !102, offset: 6656)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !254, file: !234, line: 501, baseType: !1279, size: 64, offset: 6656)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !234, line: 387, flags: DIFlagFwdDecl)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !254, file: !234, line: 516, baseType: !1282, size: 64, offset: 6720)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1284, line: 18, flags: DIFlagFwdDecl)
!1284 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !254, file: !234, line: 519, baseType: !221, size: 64, offset: 6784)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !254, file: !234, line: 521, baseType: !1287, size: 64, offset: 6848)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !234, line: 521, flags: DIFlagFwdDecl)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !254, file: !234, line: 545, baseType: !284, size: 32, offset: 6912)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !254, file: !234, line: 548, baseType: !970, size: 8, offset: 6944)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !254, file: !234, line: 550, baseType: !1292, offset: 6952)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1293, line: 142, elements: !116)
!1293 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !254, file: !234, line: 554, baseType: !1295, size: 256, offset: 6976)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1296, line: 102, size: 256, elements: !1297)
!1296 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1297 = !{!1298, !1299, !1300}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1295, file: !1296, line: 103, baseType: !292, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1295, file: !1296, line: 104, baseType: !89, size: 128, offset: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1295, file: !1296, line: 105, baseType: !1301, size: 64, offset: 192)
!1301 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1296, line: 21, baseType: !1302)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{null, !1305}
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !254, file: !234, line: 557, baseType: !400, size: 32, offset: 7232)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !251, file: !234, line: 565, baseType: !1308, offset: 7296)
!1308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, elements: !1309)
!1309 = !{!1310}
!1310 = !DISubrange(count: -1)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !233, file: !234, line: 333, baseType: !1312, size: 64, offset: 576)
!1312 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !223, line: 284, baseType: !1313)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !223, line: 284, size: 64, elements: !1314)
!1314 = !{!1315}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1313, file: !223, line: 284, baseType: !1316, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !282, line: 19, baseType: !193)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !233, file: !234, line: 334, baseType: !193, size: 64, offset: 640)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !233, file: !234, line: 343, baseType: !1319, size: 256, offset: 704)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !233, file: !234, line: 340, size: 256, elements: !1320)
!1320 = !{!1321, !1322}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1319, file: !234, line: 341, baseType: !241, size: 192, align: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1319, file: !234, line: 342, baseType: !193, size: 64, offset: 192)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !233, file: !234, line: 351, baseType: !89, size: 128, offset: 960)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !233, file: !234, line: 353, baseType: !1325, size: 64, offset: 1088)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !234, line: 353, flags: DIFlagFwdDecl)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !233, file: !234, line: 356, baseType: !1328, size: 64, offset: 1152)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1330)
!1330 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !234, line: 356, flags: DIFlagFwdDecl)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !233, file: !234, line: 359, baseType: !193, size: 64, offset: 1216)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !233, file: !234, line: 361, baseType: !221, size: 64, offset: 1280)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !233, file: !234, line: 362, baseType: !66, size: 64, offset: 1344)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !233, file: !234, line: 365, baseType: !292, size: 64, offset: 1408)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !233, file: !234, line: 373, baseType: !1336, offset: 1472)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !234, line: 296, elements: !116)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !200, file: !168, line: 90, baseType: !195, size: 64, offset: 192)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !200, file: !168, line: 91, baseType: !1339, size: 64, offset: 256)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !158, file: !82, line: 143, baseType: !1341, size: 64, offset: 256)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{!1344, !95}
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1346)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1347)
!1347 = !{!1348, !1349, !1353, !1357, !1365, !1369}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1346, file: !18, line: 40, baseType: !17, size: 32)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1346, file: !18, line: 41, baseType: !1350, size: 64, offset: 64)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!970}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1346, file: !18, line: 42, baseType: !1354, size: 64, offset: 128)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{!66}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1346, file: !18, line: 43, baseType: !1358, size: 64, offset: 192)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!1361, !1363}
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1346, file: !18, line: 44, baseType: !1366, size: 64, offset: 256)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{!1361}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1346, file: !18, line: 45, baseType: !1370, size: 64, offset: 320)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{null, !66}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !158, file: !82, line: 144, baseType: !1374, size: 64, offset: 320)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!1361, !95}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !158, file: !82, line: 145, baseType: !1378, size: 64, offset: 384)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{null, !95, !1381, !1387}
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1284, line: 23, baseType: !1383)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1284, line: 21, size: 32, elements: !1384)
!1384 = !{!1385}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1383, file: !1284, line: 22, baseType: !1386, size: 32)
!1386 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !64, line: 32, baseType: !866)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1284, line: 28, baseType: !1389)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1284, line: 26, size: 32, elements: !1390)
!1390 = !{!1391}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1389, file: !1284, line: 27, baseType: !1392, size: 32)
!1392 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !64, line: 33, baseType: !1393)
!1393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !176, line: 50, baseType: !7)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !81, file: !82, line: 70, baseType: !1395, size: 64, offset: 384)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1397, line: 123, size: 1024, elements: !1398)
!1397 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1398 = !{!1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1540, !1541, !1542, !1543, !1544}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1396, file: !1397, line: 124, baseType: !284, size: 32)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1396, file: !1397, line: 125, baseType: !284, size: 32, offset: 32)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1396, file: !1397, line: 135, baseType: !1395, size: 64, offset: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1396, file: !1397, line: 136, baseType: !85, size: 64, offset: 128)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1396, file: !1397, line: 138, baseType: !241, size: 192, align: 64, offset: 192)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1396, file: !1397, line: 140, baseType: !1361, size: 64, offset: 384)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1396, file: !1397, line: 141, baseType: !7, size: 32, offset: 448)
!1406 = !DIDerivedType(tag: DW_TAG_member, scope: !1396, file: !1397, line: 142, baseType: !1407, size: 256, offset: 512)
!1407 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1396, file: !1397, line: 142, size: 256, elements: !1408)
!1408 = !{!1409, !1463, !1467}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1407, file: !1397, line: 143, baseType: !1410, size: 192)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1397, line: 91, size: 192, elements: !1411)
!1411 = !{!1412, !1413, !1414}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1410, file: !1397, line: 92, baseType: !193, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1410, file: !1397, line: 94, baseType: !258, size: 64, offset: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1410, file: !1397, line: 100, baseType: !1415, size: 64, offset: 128)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1397, line: 180, size: 704, elements: !1417)
!1417 = !{!1418, !1419, !1420, !1433, !1434, !1435, !1461, !1462}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1416, file: !1397, line: 182, baseType: !1395, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1416, file: !1397, line: 183, baseType: !7, size: 32, offset: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1416, file: !1397, line: 186, baseType: !1421, size: 192, offset: 128)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1422, line: 19, size: 192, elements: !1423)
!1422 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1423 = !{!1424, !1431, !1432}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1421, file: !1422, line: 20, baseType: !1425, size: 128)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1426, line: 292, size: 128, elements: !1427)
!1426 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1427 = !{!1428, !1429, !1430}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1425, file: !1426, line: 293, baseType: !102)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1425, file: !1426, line: 295, baseType: !63, size: 32)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1425, file: !1426, line: 296, baseType: !66, size: 64, offset: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1421, file: !1422, line: 21, baseType: !7, size: 32, offset: 128)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1421, file: !1422, line: 22, baseType: !7, size: 32, offset: 160)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1416, file: !1397, line: 187, baseType: !400, size: 32, offset: 320)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1416, file: !1397, line: 188, baseType: !400, size: 32, offset: 352)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1416, file: !1397, line: 189, baseType: !1436, size: 64, offset: 384)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1397, line: 168, size: 320, elements: !1438)
!1438 = !{!1439, !1445, !1449, !1453, !1457}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1437, file: !1397, line: 169, baseType: !1440, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{!65, !1443, !1415}
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !223, line: 539, flags: DIFlagFwdDecl)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1437, file: !1397, line: 171, baseType: !1446, size: 64, offset: 64)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{!65, !1395, !85, !184}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1437, file: !1397, line: 173, baseType: !1450, size: 64, offset: 128)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!65, !1395}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1437, file: !1397, line: 174, baseType: !1454, size: 64, offset: 192)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{!65, !1395, !1395, !85}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1437, file: !1397, line: 176, baseType: !1458, size: 64, offset: 256)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{!65, !1443, !1395, !1415}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1416, file: !1397, line: 192, baseType: !89, size: 128, offset: 448)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1416, file: !1397, line: 194, baseType: !677, size: 128, offset: 576)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1407, file: !1397, line: 144, baseType: !1464, size: 64)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1397, line: 103, size: 64, elements: !1465)
!1465 = !{!1466}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1464, file: !1397, line: 104, baseType: !1395, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1407, file: !1397, line: 145, baseType: !1468, size: 256)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1397, line: 107, size: 256, elements: !1469)
!1469 = !{!1470, !1535, !1538, !1539}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1468, file: !1397, line: 108, baseType: !1471, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1473)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1397, line: 217, size: 768, elements: !1474)
!1474 = !{!1475, !1495, !1499, !1503, !1508, !1512, !1516, !1520, !1521, !1522, !1523, !1531}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1473, file: !1397, line: 222, baseType: !1476, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{!65, !1479}
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1397, line: 197, size: 1088, elements: !1481)
!1481 = !{!1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1480, file: !1397, line: 199, baseType: !1395, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1480, file: !1397, line: 200, baseType: !221, size: 64, offset: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1480, file: !1397, line: 201, baseType: !1443, size: 64, offset: 128)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1480, file: !1397, line: 202, baseType: !66, size: 64, offset: 192)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1480, file: !1397, line: 205, baseType: !361, size: 192, offset: 256)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1480, file: !1397, line: 206, baseType: !361, size: 192, offset: 448)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1480, file: !1397, line: 207, baseType: !65, size: 32, offset: 640)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1480, file: !1397, line: 208, baseType: !89, size: 128, offset: 704)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1480, file: !1397, line: 209, baseType: !143, size: 64, offset: 832)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1480, file: !1397, line: 211, baseType: !190, size: 64, offset: 896)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1480, file: !1397, line: 212, baseType: !970, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1480, file: !1397, line: 213, baseType: !970, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1480, file: !1397, line: 214, baseType: !1328, size: 64, offset: 1024)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1473, file: !1397, line: 223, baseType: !1496, size: 64, offset: 64)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{null, !1479}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1473, file: !1397, line: 236, baseType: !1500, size: 64, offset: 128)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DISubroutineType(types: !1502)
!1502 = !{!65, !1443, !66}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1473, file: !1397, line: 238, baseType: !1504, size: 64, offset: 192)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{!66, !1443, !1507}
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1473, file: !1397, line: 239, baseType: !1509, size: 64, offset: 256)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!66, !1443, !66, !1507}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1473, file: !1397, line: 240, baseType: !1513, size: 64, offset: 320)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{null, !1443, !66}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1473, file: !1397, line: 242, baseType: !1517, size: 64, offset: 384)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{!174, !1479, !143, !190, !224}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1473, file: !1397, line: 252, baseType: !190, size: 64, offset: 448)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1473, file: !1397, line: 259, baseType: !970, size: 8, offset: 512)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1473, file: !1397, line: 260, baseType: !1517, size: 64, offset: 576)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1473, file: !1397, line: 263, baseType: !1524, size: 64, offset: 640)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{!1527, !1479, !1529}
!1527 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1528, line: 52, baseType: !7)
!1528 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1397, line: 27, flags: DIFlagFwdDecl)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1473, file: !1397, line: 266, baseType: !1532, size: 64, offset: 704)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DISubroutineType(types: !1534)
!1534 = !{!65, !1479, !232}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1468, file: !1397, line: 109, baseType: !1536, size: 64, offset: 64)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1397, line: 31, flags: DIFlagFwdDecl)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1468, file: !1397, line: 110, baseType: !224, size: 64, offset: 128)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1468, file: !1397, line: 111, baseType: !1395, size: 64, offset: 192)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1396, file: !1397, line: 148, baseType: !66, size: 64, offset: 768)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1396, file: !1397, line: 154, baseType: !262, size: 64, offset: 832)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1396, file: !1397, line: 156, baseType: !185, size: 16, offset: 896)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1396, file: !1397, line: 157, baseType: !184, size: 16, offset: 912)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1396, file: !1397, line: 158, baseType: !1545, size: 64, offset: 960)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1397, line: 32, flags: DIFlagFwdDecl)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !81, file: !82, line: 71, baseType: !1548, size: 32, offset: 448)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1549, line: 19, size: 32, elements: !1550)
!1549 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1550 = !{!1551}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1548, file: !1549, line: 20, baseType: !406, size: 32)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !81, file: !82, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !81, file: !82, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !81, file: !82, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !81, file: !82, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !81, file: !82, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !78, file: !24, line: 463, baseType: !77, size: 64, offset: 512)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !78, file: !24, line: 465, baseType: !1559, size: 64, offset: 576)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !24, line: 36, flags: DIFlagFwdDecl)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !78, file: !24, line: 467, baseType: !85, size: 64, offset: 640)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !78, file: !24, line: 468, baseType: !1563, size: 64, offset: 704)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1565)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !24, line: 87, size: 384, elements: !1566)
!1566 = !{!1567, !1568, !1569, !1573, !1578, !1582}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1565, file: !24, line: 88, baseType: !85, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1565, file: !24, line: 89, baseType: !197, size: 64, offset: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1565, file: !24, line: 90, baseType: !1570, size: 64, offset: 128)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{!65, !77, !138}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1565, file: !24, line: 91, baseType: !1574, size: 64, offset: 192)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{!143, !77, !1577, !1381, !1387}
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1565, file: !24, line: 93, baseType: !1579, size: 64, offset: 256)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{null, !77}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1565, file: !24, line: 95, baseType: !1583, size: 64, offset: 320)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1585)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !31, line: 278, size: 1472, elements: !1586)
!1586 = !{!1587, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1585, file: !31, line: 279, baseType: !1588, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{!65, !77}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1585, file: !31, line: 280, baseType: !1579, size: 64, offset: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1585, file: !31, line: 281, baseType: !1588, size: 64, offset: 128)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1585, file: !31, line: 282, baseType: !1588, size: 64, offset: 192)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1585, file: !31, line: 283, baseType: !1588, size: 64, offset: 256)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1585, file: !31, line: 284, baseType: !1588, size: 64, offset: 320)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1585, file: !31, line: 285, baseType: !1588, size: 64, offset: 384)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1585, file: !31, line: 286, baseType: !1588, size: 64, offset: 448)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1585, file: !31, line: 287, baseType: !1588, size: 64, offset: 512)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1585, file: !31, line: 288, baseType: !1588, size: 64, offset: 576)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1585, file: !31, line: 289, baseType: !1588, size: 64, offset: 640)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1585, file: !31, line: 290, baseType: !1588, size: 64, offset: 704)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1585, file: !31, line: 291, baseType: !1588, size: 64, offset: 768)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1585, file: !31, line: 292, baseType: !1588, size: 64, offset: 832)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1585, file: !31, line: 293, baseType: !1588, size: 64, offset: 896)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1585, file: !31, line: 294, baseType: !1588, size: 64, offset: 960)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1585, file: !31, line: 295, baseType: !1588, size: 64, offset: 1024)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1585, file: !31, line: 296, baseType: !1588, size: 64, offset: 1088)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1585, file: !31, line: 297, baseType: !1588, size: 64, offset: 1152)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1585, file: !31, line: 298, baseType: !1588, size: 64, offset: 1216)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1585, file: !31, line: 299, baseType: !1588, size: 64, offset: 1280)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1585, file: !31, line: 300, baseType: !1588, size: 64, offset: 1344)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1585, file: !31, line: 301, baseType: !1588, size: 64, offset: 1408)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !78, file: !24, line: 470, baseType: !1614, size: 64, offset: 768)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1616, line: 82, size: 1408, elements: !1617)
!1616 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1617 = !{!1618, !1619, !1620, !1621, !1622, !1623, !1624, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1703, !1706, !1709}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1615, file: !1616, line: 83, baseType: !85, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1615, file: !1616, line: 84, baseType: !85, size: 64, offset: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1615, file: !1616, line: 85, baseType: !77, size: 64, offset: 128)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1615, file: !1616, line: 86, baseType: !197, size: 64, offset: 192)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1615, file: !1616, line: 87, baseType: !197, size: 64, offset: 256)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1615, file: !1616, line: 88, baseType: !197, size: 64, offset: 320)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1615, file: !1616, line: 90, baseType: !1625, size: 64, offset: 384)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{!65, !77, !1628}
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !45, line: 95, size: 1152, elements: !1630)
!1630 = !{!1631, !1632, !1633, !1637, !1638, !1639, !1640, !1654, !1667, !1668, !1669, !1670, !1671, !1679, !1680, !1681, !1682, !1683, !1684}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1629, file: !45, line: 96, baseType: !85, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1629, file: !45, line: 97, baseType: !1614, size: 64, offset: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1629, file: !45, line: 99, baseType: !1634, size: 64, offset: 128)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1636, line: 76, flags: DIFlagFwdDecl)
!1636 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1629, file: !45, line: 100, baseType: !85, size: 64, offset: 192)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1629, file: !45, line: 102, baseType: !970, size: 8, offset: 256)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1629, file: !45, line: 103, baseType: !44, size: 32, offset: 288)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1629, file: !45, line: 105, baseType: !1641, size: 64, offset: 320)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1643)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1644, line: 262, size: 1600, elements: !1645)
!1644 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1645 = !{!1646, !1648, !1649, !1653}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1643, file: !1644, line: 263, baseType: !1647, size: 256)
!1647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 256, elements: !1190)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1643, file: !1644, line: 264, baseType: !1647, size: 256, offset: 256)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1643, file: !1644, line: 265, baseType: !1650, size: 1024, offset: 512)
!1650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 1024, elements: !1651)
!1651 = !{!1652}
!1652 = !DISubrange(count: 128)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1643, file: !1644, line: 266, baseType: !1361, size: 64, offset: 1536)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1629, file: !45, line: 106, baseType: !1655, size: 64, offset: 384)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1657)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1644, line: 210, size: 256, elements: !1658)
!1658 = !{!1659, !1663, !1665, !1666}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1657, file: !1644, line: 211, baseType: !1660, size: 72)
!1660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !538, size: 72, elements: !1661)
!1661 = !{!1662}
!1662 = !DISubrange(count: 9)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1657, file: !1644, line: 212, baseType: !1664, size: 64, offset: 128)
!1664 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1644, line: 14, baseType: !193)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1657, file: !1644, line: 213, baseType: !401, size: 32, offset: 192)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1657, file: !1644, line: 214, baseType: !401, size: 32, offset: 224)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1629, file: !45, line: 108, baseType: !1588, size: 64, offset: 448)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1629, file: !45, line: 109, baseType: !1579, size: 64, offset: 512)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1629, file: !45, line: 110, baseType: !1588, size: 64, offset: 576)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1629, file: !45, line: 111, baseType: !1579, size: 64, offset: 640)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1629, file: !45, line: 112, baseType: !1672, size: 64, offset: 704)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{!65, !77, !1675}
!1675 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !31, line: 52, baseType: !1676)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !31, line: 50, size: 32, elements: !1677)
!1677 = !{!1678}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1676, file: !31, line: 51, baseType: !65, size: 32)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1629, file: !45, line: 113, baseType: !1588, size: 64, offset: 768)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1629, file: !45, line: 114, baseType: !197, size: 64, offset: 832)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1629, file: !45, line: 115, baseType: !197, size: 64, offset: 896)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1629, file: !45, line: 117, baseType: !1583, size: 64, offset: 960)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1629, file: !45, line: 118, baseType: !1579, size: 64, offset: 1024)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1629, file: !45, line: 120, baseType: !1685, size: 64, offset: 1088)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !45, line: 120, flags: DIFlagFwdDecl)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1615, file: !1616, line: 91, baseType: !1570, size: 64, offset: 448)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1615, file: !1616, line: 92, baseType: !1588, size: 64, offset: 512)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1615, file: !1616, line: 93, baseType: !1579, size: 64, offset: 576)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1615, file: !1616, line: 94, baseType: !1588, size: 64, offset: 640)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1615, file: !1616, line: 95, baseType: !1579, size: 64, offset: 704)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1615, file: !1616, line: 97, baseType: !1588, size: 64, offset: 768)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1615, file: !1616, line: 98, baseType: !1588, size: 64, offset: 832)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1615, file: !1616, line: 100, baseType: !1672, size: 64, offset: 896)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1615, file: !1616, line: 101, baseType: !1588, size: 64, offset: 960)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1615, file: !1616, line: 103, baseType: !1588, size: 64, offset: 1024)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1615, file: !1616, line: 105, baseType: !1588, size: 64, offset: 1088)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1615, file: !1616, line: 107, baseType: !1583, size: 64, offset: 1152)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1615, file: !1616, line: 109, baseType: !1700, size: 64, offset: 1216)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1702)
!1702 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1616, line: 109, flags: DIFlagFwdDecl)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1615, file: !1616, line: 111, baseType: !1704, size: 64, offset: 1280)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1616, line: 111, flags: DIFlagFwdDecl)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1615, file: !1616, line: 112, baseType: !1707, offset: 1344)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1708, line: 187, elements: !116)
!1708 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1615, file: !1616, line: 114, baseType: !970, size: 8, offset: 1344)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !78, file: !24, line: 471, baseType: !1628, size: 64, offset: 832)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !78, file: !24, line: 473, baseType: !66, size: 64, offset: 896)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !78, file: !24, line: 475, baseType: !66, size: 64, offset: 960)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !78, file: !24, line: 480, baseType: !361, size: 192, offset: 1024)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !78, file: !24, line: 484, baseType: !1715, size: 576, offset: 1216)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !24, line: 361, size: 576, elements: !1716)
!1716 = !{!1717, !1718, !1719, !1720, !1721, !1722}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1715, file: !24, line: 362, baseType: !89, size: 128)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1715, file: !24, line: 363, baseType: !89, size: 128, offset: 128)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1715, file: !24, line: 364, baseType: !89, size: 128, offset: 256)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1715, file: !24, line: 365, baseType: !89, size: 128, offset: 384)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1715, file: !24, line: 366, baseType: !970, size: 8, offset: 512)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1715, file: !24, line: 367, baseType: !23, size: 32, offset: 544)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !78, file: !24, line: 485, baseType: !1724, size: 2304, offset: 1792)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !31, line: 565, size: 2304, elements: !1725)
!1725 = !{!1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1821, !1825}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1724, file: !31, line: 566, baseType: !1675, size: 32)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1724, file: !31, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1724, file: !31, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1724, file: !31, line: 569, baseType: !970, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1724, file: !31, line: 570, baseType: !970, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1724, file: !31, line: 571, baseType: !970, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1724, file: !31, line: 572, baseType: !970, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1724, file: !31, line: 573, baseType: !970, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1724, file: !31, line: 574, baseType: !970, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1724, file: !31, line: 575, baseType: !970, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1724, file: !31, line: 576, baseType: !970, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1724, file: !31, line: 577, baseType: !400, size: 32, offset: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1724, file: !31, line: 578, baseType: !102, offset: 96)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1724, file: !31, line: 580, baseType: !89, size: 128, offset: 128)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1724, file: !31, line: 581, baseType: !706, size: 192, offset: 256)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1724, file: !31, line: 582, baseType: !1742, size: 64, offset: 448)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1744, line: 43, size: 1472, elements: !1745)
!1744 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1745 = !{!1746, !1747, !1748, !1749, !1750, !1753, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1743, file: !1744, line: 44, baseType: !85, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1743, file: !1744, line: 45, baseType: !65, size: 32, offset: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1743, file: !1744, line: 46, baseType: !89, size: 128, offset: 128)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1743, file: !1744, line: 47, baseType: !102, offset: 256)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1743, file: !1744, line: 48, baseType: !1751, size: 64, offset: 256)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !31, line: 533, flags: DIFlagFwdDecl)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1743, file: !1744, line: 49, baseType: !1754, size: 320, offset: 320)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1755, line: 11, size: 320, elements: !1756)
!1755 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1756 = !{!1757, !1758, !1759, !1764}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1754, file: !1755, line: 16, baseType: !670, size: 128)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1754, file: !1755, line: 17, baseType: !193, size: 64, offset: 128)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1754, file: !1755, line: 18, baseType: !1760, size: 64, offset: 192)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DISubroutineType(types: !1762)
!1762 = !{null, !1763}
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1754, file: !1755, line: 19, baseType: !400, size: 32, offset: 256)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1743, file: !1744, line: 50, baseType: !193, size: 64, offset: 640)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1743, file: !1744, line: 51, baseType: !476, size: 64, offset: 704)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1743, file: !1744, line: 52, baseType: !476, size: 64, offset: 768)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1743, file: !1744, line: 53, baseType: !476, size: 64, offset: 832)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1743, file: !1744, line: 54, baseType: !476, size: 64, offset: 896)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1743, file: !1744, line: 55, baseType: !476, size: 64, offset: 960)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1743, file: !1744, line: 56, baseType: !193, size: 64, offset: 1024)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1743, file: !1744, line: 57, baseType: !193, size: 64, offset: 1088)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1743, file: !1744, line: 58, baseType: !193, size: 64, offset: 1152)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1743, file: !1744, line: 59, baseType: !193, size: 64, offset: 1216)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1743, file: !1744, line: 60, baseType: !193, size: 64, offset: 1280)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1743, file: !1744, line: 61, baseType: !77, size: 64, offset: 1344)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1743, file: !1744, line: 62, baseType: !970, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1743, file: !1744, line: 63, baseType: !970, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1724, file: !31, line: 583, baseType: !970, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1724, file: !31, line: 584, baseType: !970, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1724, file: !31, line: 585, baseType: !970, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1724, file: !31, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1724, file: !31, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1724, file: !31, line: 592, baseType: !468, size: 512, offset: 576)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1724, file: !31, line: 593, baseType: !262, size: 64, offset: 1088)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1724, file: !31, line: 594, baseType: !1295, size: 256, offset: 1152)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1724, file: !31, line: 595, baseType: !677, size: 128, offset: 1408)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1724, file: !31, line: 596, baseType: !1751, size: 64, offset: 1536)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1724, file: !31, line: 597, baseType: !284, size: 32, offset: 1600)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1724, file: !31, line: 598, baseType: !284, size: 32, offset: 1632)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1724, file: !31, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1724, file: !31, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1724, file: !31, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1724, file: !31, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1724, file: !31, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1724, file: !31, line: 604, baseType: !970, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1724, file: !31, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1724, file: !31, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1724, file: !31, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1724, file: !31, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1724, file: !31, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1724, file: !31, line: 610, baseType: !7, size: 32, offset: 1696)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1724, file: !31, line: 611, baseType: !30, size: 32, offset: 1728)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1724, file: !31, line: 612, baseType: !38, size: 32, offset: 1760)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1724, file: !31, line: 613, baseType: !65, size: 32, offset: 1792)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1724, file: !31, line: 614, baseType: !65, size: 32, offset: 1824)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1724, file: !31, line: 615, baseType: !262, size: 64, offset: 1856)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1724, file: !31, line: 616, baseType: !262, size: 64, offset: 1920)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1724, file: !31, line: 617, baseType: !262, size: 64, offset: 1984)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1724, file: !31, line: 618, baseType: !262, size: 64, offset: 2048)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1724, file: !31, line: 620, baseType: !1812, size: 64, offset: 2112)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !31, line: 536, size: 256, elements: !1814)
!1814 = !{!1815, !1816, !1817, !1818}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1813, file: !31, line: 537, baseType: !102)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1813, file: !31, line: 538, baseType: !7, size: 32)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1813, file: !31, line: 540, baseType: !89, size: 128, offset: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1813, file: !31, line: 543, baseType: !1819, size: 64, offset: 192)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !31, line: 534, flags: DIFlagFwdDecl)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1724, file: !31, line: 621, baseType: !1822, size: 64, offset: 2176)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{null, !77, !630}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1724, file: !31, line: 622, baseType: !1826, size: 64, offset: 2240)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !31, line: 622, flags: DIFlagFwdDecl)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !78, file: !24, line: 486, baseType: !1829, size: 64, offset: 4096)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !31, line: 642, size: 1792, elements: !1831)
!1831 = !{!1832, !1833, !1834, !1838, !1839, !1840}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1830, file: !31, line: 643, baseType: !1585, size: 1472)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1830, file: !31, line: 644, baseType: !1588, size: 64, offset: 1472)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1830, file: !31, line: 645, baseType: !1835, size: 64, offset: 1536)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DISubroutineType(types: !1837)
!1837 = !{null, !77, !970}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1830, file: !31, line: 646, baseType: !1588, size: 64, offset: 1600)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1830, file: !31, line: 647, baseType: !1579, size: 64, offset: 1664)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1830, file: !31, line: 648, baseType: !1579, size: 64, offset: 1728)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !78, file: !24, line: 493, baseType: !1842, size: 64, offset: 4160)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !24, line: 493, flags: DIFlagFwdDecl)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !78, file: !24, line: 499, baseType: !89, size: 128, offset: 4224)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !78, file: !24, line: 502, baseType: !1846, size: 64, offset: 4352)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1848)
!1848 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !24, line: 502, flags: DIFlagFwdDecl)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !78, file: !24, line: 504, baseType: !1850, size: 64, offset: 4416)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !78, file: !24, line: 505, baseType: !262, size: 64, offset: 4480)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !78, file: !24, line: 510, baseType: !262, size: 64, offset: 4544)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !78, file: !24, line: 511, baseType: !1854, size: 64, offset: 4608)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1856)
!1856 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !24, line: 511, flags: DIFlagFwdDecl)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !78, file: !24, line: 513, baseType: !1858, size: 64, offset: 4672)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !24, line: 288, size: 128, elements: !1860)
!1860 = !{!1861, !1862}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1859, file: !24, line: 293, baseType: !7, size: 32)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1859, file: !24, line: 294, baseType: !193, size: 64, offset: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !78, file: !24, line: 515, baseType: !89, size: 128, offset: 4736)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !78, file: !24, line: 526, baseType: !1865, offset: 4864)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1866, line: 5, elements: !116)
!1866 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !78, file: !24, line: 528, baseType: !1868, size: 64, offset: 4864)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1870, line: 51, size: 1344, elements: !1871)
!1870 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!1871 = !{!1872, !1873, !1875, !1876, !1966, !1975, !1976, !1977, !1978, !1979, !1980, !1981}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1869, file: !1870, line: 52, baseType: !85, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1869, file: !1870, line: 53, baseType: !1874, size: 32, offset: 64)
!1874 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1870, line: 28, baseType: !400)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1869, file: !1870, line: 54, baseType: !85, size: 64, offset: 128)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1869, file: !1870, line: 55, baseType: !1877, size: 192, offset: 192)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1878, line: 17, size: 192, elements: !1879)
!1878 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!1879 = !{!1880, !1882, !1965}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1877, file: !1878, line: 18, baseType: !1881, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1877, file: !1878, line: 19, baseType: !1883, size: 64, offset: 64)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1885)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1878, line: 110, size: 1152, elements: !1886)
!1886 = !{!1887, !1891, !1895, !1901, !1907, !1911, !1915, !1920, !1924, !1925, !1929, !1933, !1937, !1948, !1949, !1950, !1951, !1961}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1885, file: !1878, line: 111, baseType: !1888, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{!1881, !1881}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1885, file: !1878, line: 112, baseType: !1892, size: 64, offset: 64)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{null, !1881}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1885, file: !1878, line: 113, baseType: !1896, size: 64, offset: 128)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DISubroutineType(types: !1898)
!1898 = !{!970, !1899}
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1877)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1885, file: !1878, line: 114, baseType: !1902, size: 64, offset: 192)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = !DISubroutineType(types: !1904)
!1904 = !{!1361, !1899, !1905}
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1885, file: !1878, line: 116, baseType: !1908, size: 64, offset: 256)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!970, !1899, !85}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1885, file: !1878, line: 118, baseType: !1912, size: 64, offset: 320)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{!65, !1899, !85, !7, !66, !190}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1885, file: !1878, line: 123, baseType: !1916, size: 64, offset: 384)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{!65, !1899, !85, !1919, !190}
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1885, file: !1878, line: 126, baseType: !1921, size: 64, offset: 448)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!85, !1899}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1885, file: !1878, line: 127, baseType: !1921, size: 64, offset: 512)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1885, file: !1878, line: 128, baseType: !1926, size: 64, offset: 576)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!1881, !1899}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1885, file: !1878, line: 130, baseType: !1930, size: 64, offset: 640)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{!1881, !1899, !1881}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1885, file: !1878, line: 133, baseType: !1934, size: 64, offset: 704)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{!1881, !1899, !85}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1885, file: !1878, line: 135, baseType: !1938, size: 64, offset: 768)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{!65, !1899, !85, !85, !7, !7, !1941}
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1878, line: 43, size: 640, elements: !1943)
!1943 = !{!1944, !1945, !1946}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1942, file: !1878, line: 44, baseType: !1881, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1942, file: !1878, line: 45, baseType: !7, size: 32, offset: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1942, file: !1878, line: 46, baseType: !1947, size: 512, offset: 128)
!1947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 512, elements: !506)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1885, file: !1878, line: 140, baseType: !1930, size: 64, offset: 832)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1885, file: !1878, line: 143, baseType: !1926, size: 64, offset: 896)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1885, file: !1878, line: 145, baseType: !1888, size: 64, offset: 960)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1885, file: !1878, line: 146, baseType: !1952, size: 64, offset: 1024)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!65, !1899, !1955}
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1878, line: 29, size: 128, elements: !1957)
!1957 = !{!1958, !1959, !1960}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1956, file: !1878, line: 30, baseType: !7, size: 32)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1956, file: !1878, line: 31, baseType: !7, size: 32, offset: 32)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1956, file: !1878, line: 32, baseType: !1899, size: 64, offset: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1885, file: !1878, line: 148, baseType: !1962, size: 64, offset: 1088)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DISubroutineType(types: !1964)
!1964 = !{!65, !1899, !77}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1877, file: !1878, line: 20, baseType: !77, size: 64, offset: 128)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1869, file: !1870, line: 57, baseType: !1967, size: 64, offset: 384)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1870, line: 31, size: 704, elements: !1969)
!1969 = !{!1970, !1971, !1972, !1973, !1974}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1968, file: !1870, line: 32, baseType: !143, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1968, file: !1870, line: 33, baseType: !65, size: 32, offset: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1968, file: !1870, line: 34, baseType: !66, size: 64, offset: 128)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1968, file: !1870, line: 35, baseType: !1967, size: 64, offset: 192)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1968, file: !1870, line: 43, baseType: !212, size: 448, offset: 256)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1869, file: !1870, line: 58, baseType: !1967, size: 64, offset: 448)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1869, file: !1870, line: 59, baseType: !1868, size: 64, offset: 512)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1869, file: !1870, line: 60, baseType: !1868, size: 64, offset: 576)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1869, file: !1870, line: 61, baseType: !1868, size: 64, offset: 640)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1869, file: !1870, line: 63, baseType: !81, size: 512, offset: 704)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1869, file: !1870, line: 65, baseType: !193, size: 64, offset: 1216)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1869, file: !1870, line: 66, baseType: !66, size: 64, offset: 1280)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !78, file: !24, line: 529, baseType: !1881, size: 64, offset: 4928)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !78, file: !24, line: 534, baseType: !1984, size: 32, offset: 4992)
!1984 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !64, line: 16, baseType: !1985)
!1985 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !64, line: 13, baseType: !400)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !78, file: !24, line: 535, baseType: !400, size: 32, offset: 5024)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !78, file: !24, line: 537, baseType: !102, offset: 5056)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !78, file: !24, line: 538, baseType: !89, size: 128, offset: 5056)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !78, file: !24, line: 540, baseType: !1990, size: 64, offset: 5184)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1992, line: 54, size: 960, elements: !1993)
!1992 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!1993 = !{!1994, !1995, !1996, !1997, !1998, !1999, !2000, !2004, !2008, !2009, !2010, !2011, !2015, !2019, !2020}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1991, file: !1992, line: 55, baseType: !85, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1991, file: !1992, line: 56, baseType: !1634, size: 64, offset: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1991, file: !1992, line: 58, baseType: !197, size: 64, offset: 128)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1991, file: !1992, line: 59, baseType: !197, size: 64, offset: 192)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !1991, file: !1992, line: 60, baseType: !95, size: 64, offset: 256)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1991, file: !1992, line: 62, baseType: !1570, size: 64, offset: 320)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1991, file: !1992, line: 63, baseType: !2001, size: 64, offset: 384)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!143, !77, !1577}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1991, file: !1992, line: 65, baseType: !2005, size: 64, offset: 448)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{null, !1990}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1991, file: !1992, line: 66, baseType: !1579, size: 64, offset: 512)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1991, file: !1992, line: 68, baseType: !1588, size: 64, offset: 576)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1991, file: !1992, line: 70, baseType: !1344, size: 64, offset: 640)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1991, file: !1992, line: 71, baseType: !2012, size: 64, offset: 704)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{!1361, !77}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1991, file: !1992, line: 73, baseType: !2016, size: 64, offset: 768)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{null, !77, !1381, !1387}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1991, file: !1992, line: 75, baseType: !1583, size: 64, offset: 832)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1991, file: !1992, line: 77, baseType: !1704, size: 64, offset: 896)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !78, file: !24, line: 541, baseType: !197, size: 64, offset: 5248)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !78, file: !24, line: 543, baseType: !1579, size: 64, offset: 5312)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !78, file: !24, line: 544, baseType: !2024, size: 64, offset: 5376)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !24, line: 45, flags: DIFlagFwdDecl)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !78, file: !24, line: 545, baseType: !2027, size: 64, offset: 5440)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !24, line: 47, flags: DIFlagFwdDecl)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !78, file: !24, line: 547, baseType: !970, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !78, file: !24, line: 548, baseType: !970, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !78, file: !24, line: 549, baseType: !970, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !78, file: !24, line: 550, baseType: !970, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !73, file: !74, line: 277, baseType: !78, size: 5568, offset: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !73, file: !74, line: 278, baseType: !65, size: 32, offset: 5632)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !73, file: !74, line: 279, baseType: !2036, size: 64, offset: 5696)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2038)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_host_ops", file: !74, line: 82, size: 1408, elements: !2039)
!2039 = !{!2040, !2094, !2098, !2099, !2103, !2121, !2125, !2126, !2130, !2134, !2138, !2142, !2143, !2147, !2148, !2149, !2150, !2151, !2152, !2156, !2157, !2158}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "post_req", scope: !2038, file: !74, line: 91, baseType: !2041, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{null, !72, !2044, !65}
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_request", file: !2046, line: 144, size: 896, elements: !2047)
!2046 = !DIFile(filename: "./include/linux/mmc/core.h", directory: "/home/lizy2001/genbc/linux")
!2047 = !{!2048, !2081, !2082, !2083, !2084, !2085, !2086, !2090, !2091, !2092, !2093}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "sbc", scope: !2045, file: !2046, line: 145, baseType: !2049, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_command", file: !2046, line: 26, size: 448, elements: !2051)
!2051 = !{!2052, !2053, !2054, !2056, !2057, !2058, !2059, !2060, !2080}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !2050, file: !2046, line: 27, baseType: !400, size: 32)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2050, file: !2046, line: 28, baseType: !400, size: 32, offset: 32)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "resp", scope: !2050, file: !2046, line: 32, baseType: !2055, size: 128, offset: 64)
!2055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !400, size: 128, elements: !343)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2050, file: !2046, line: 33, baseType: !7, size: 32, offset: 192)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !2050, file: !2046, line: 92, baseType: !7, size: 32, offset: 224)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !2050, file: !2046, line: 93, baseType: !65, size: 32, offset: 256)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "busy_timeout", scope: !2050, file: !2046, line: 109, baseType: !7, size: 32, offset: 288)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2050, file: !2046, line: 110, baseType: !2061, size: 64, offset: 320)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_data", file: !2046, line: 114, size: 576, elements: !2063)
!2063 = !{!2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2079}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_ns", scope: !2062, file: !2046, line: 115, baseType: !7, size: 32)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_clks", scope: !2062, file: !2046, line: 116, baseType: !7, size: 32, offset: 32)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "blksz", scope: !2062, file: !2046, line: 117, baseType: !7, size: 32, offset: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2062, file: !2046, line: 118, baseType: !7, size: 32, offset: 96)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "blk_addr", scope: !2062, file: !2046, line: 119, baseType: !7, size: 32, offset: 128)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !2062, file: !2046, line: 120, baseType: !65, size: 32, offset: 160)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2062, file: !2046, line: 121, baseType: !7, size: 32, offset: 192)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_xfered", scope: !2062, file: !2046, line: 132, baseType: !7, size: 32, offset: 224)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2062, file: !2046, line: 134, baseType: !2049, size: 64, offset: 256)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "mrq", scope: !2062, file: !2046, line: 135, baseType: !2044, size: 64, offset: 320)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "sg_len", scope: !2062, file: !2046, line: 137, baseType: !7, size: 32, offset: 384)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "sg_count", scope: !2062, file: !2046, line: 138, baseType: !65, size: 32, offset: 416)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !2062, file: !2046, line: 139, baseType: !2077, size: 64, offset: 448)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !2046, line: 139, flags: DIFlagFwdDecl)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "host_cookie", scope: !2062, file: !2046, line: 140, baseType: !630, size: 32, offset: 512)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "mrq", scope: !2050, file: !2046, line: 111, baseType: !2044, size: 64, offset: 384)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !2045, file: !2046, line: 146, baseType: !2049, size: 64, offset: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2045, file: !2046, line: 147, baseType: !2061, size: 64, offset: 128)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2045, file: !2046, line: 148, baseType: !2049, size: 64, offset: 192)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2045, file: !2046, line: 150, baseType: !706, size: 192, offset: 256)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_completion", scope: !2045, file: !2046, line: 151, baseType: !706, size: 192, offset: 448)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2045, file: !2046, line: 152, baseType: !2087, size: 64, offset: 640)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{null, !2044}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_notifier", scope: !2045, file: !2046, line: 158, baseType: !2087, size: 64, offset: 704)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !2045, file: !2046, line: 159, baseType: !72, size: 64, offset: 768)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "cap_cmd_during_tfr", scope: !2045, file: !2046, line: 162, baseType: !970, size: 8, offset: 832)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !2045, file: !2046, line: 164, baseType: !65, size: 32, offset: 864)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "pre_req", scope: !2038, file: !74, line: 93, baseType: !2095, size: 64, offset: 64)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DISubroutineType(types: !2097)
!2097 = !{null, !72, !2044}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2038, file: !74, line: 94, baseType: !2095, size: 64, offset: 128)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "request_atomic", scope: !2038, file: !74, line: 96, baseType: !2100, size: 64, offset: 192)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = !DISubroutineType(types: !2102)
!2102 = !{!65, !72, !2044}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "set_ios", scope: !2038, file: !74, line: 113, baseType: !2104, size: 64, offset: 256)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DISubroutineType(types: !2106)
!2106 = !{null, !72, !2107}
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_ios", file: !74, line: 19, size: 160, elements: !2109)
!2109 = !{!2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2119, !2120}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !2108, file: !74, line: 20, baseType: !7, size: 32)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "vdd", scope: !2108, file: !74, line: 21, baseType: !185, size: 16, offset: 32)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "power_delay_ms", scope: !2108, file: !74, line: 22, baseType: !7, size: 32, offset: 64)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "bus_mode", scope: !2108, file: !74, line: 26, baseType: !539, size: 8, offset: 96)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "chip_select", scope: !2108, file: !74, line: 31, baseType: !539, size: 8, offset: 104)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "power_mode", scope: !2108, file: !74, line: 37, baseType: !539, size: 8, offset: 112)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "bus_width", scope: !2108, file: !74, line: 44, baseType: !539, size: 8, offset: 120)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "timing", scope: !2108, file: !74, line: 50, baseType: !539, size: 8, offset: 128)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "signal_voltage", scope: !2108, file: !74, line: 64, baseType: !539, size: 8, offset: 136)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "drv_type", scope: !2108, file: !74, line: 70, baseType: !539, size: 8, offset: 144)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "enhanced_strobe", scope: !2108, file: !74, line: 77, baseType: !970, size: 8, offset: 152)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "get_ro", scope: !2038, file: !74, line: 122, baseType: !2122, size: 64, offset: 320)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!65, !72}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "get_cd", scope: !2038, file: !74, line: 131, baseType: !2122, size: 64, offset: 384)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "enable_sdio_irq", scope: !2038, file: !74, line: 133, baseType: !2127, size: 64, offset: 448)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{null, !72, !65}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "ack_sdio_irq", scope: !2038, file: !74, line: 135, baseType: !2131, size: 64, offset: 512)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{null, !72}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "init_card", scope: !2038, file: !74, line: 138, baseType: !2135, size: 64, offset: 576)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{null, !72, !67}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "start_signal_voltage_switch", scope: !2038, file: !74, line: 140, baseType: !2139, size: 64, offset: 640)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{!65, !72, !2107}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "card_busy", scope: !2038, file: !74, line: 143, baseType: !2122, size: 64, offset: 704)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "execute_tuning", scope: !2038, file: !74, line: 146, baseType: !2144, size: 64, offset: 768)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!65, !72, !400}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_hs400_tuning", scope: !2038, file: !74, line: 149, baseType: !2139, size: 64, offset: 832)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "hs400_prepare_ddr", scope: !2038, file: !74, line: 152, baseType: !2122, size: 64, offset: 896)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "hs400_downgrade", scope: !2038, file: !74, line: 155, baseType: !2131, size: 64, offset: 960)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "hs400_complete", scope: !2038, file: !74, line: 158, baseType: !2131, size: 64, offset: 1024)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "hs400_enhanced_strobe", scope: !2038, file: !74, line: 161, baseType: !2104, size: 64, offset: 1088)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "select_drive_strength", scope: !2038, file: !74, line: 163, baseType: !2153, size: 64, offset: 1152)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!65, !67, !7, !65, !65, !717}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "hw_reset", scope: !2038, file: !74, line: 167, baseType: !2131, size: 64, offset: 1216)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "card_event", scope: !2038, file: !74, line: 168, baseType: !2131, size: 64, offset: 1280)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "multi_io_quirk", scope: !2038, file: !74, line: 174, baseType: !2159, size: 64, offset: 1344)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!65, !67, !7, !65}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "pwrseq", scope: !73, file: !74, line: 280, baseType: !2163, size: 64, offset: 5760)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_pwrseq", file: !74, line: 264, flags: DIFlagFwdDecl)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "f_min", scope: !73, file: !74, line: 281, baseType: !7, size: 32, offset: 5824)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "f_max", scope: !73, file: !74, line: 282, baseType: !7, size: 32, offset: 5856)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "f_init", scope: !73, file: !74, line: 283, baseType: !7, size: 32, offset: 5888)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "ocr_avail", scope: !73, file: !74, line: 284, baseType: !400, size: 32, offset: 5920)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "ocr_avail_sdio", scope: !73, file: !74, line: 285, baseType: !400, size: 32, offset: 5952)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "ocr_avail_sd", scope: !73, file: !74, line: 286, baseType: !400, size: 32, offset: 5984)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "ocr_avail_mmc", scope: !73, file: !74, line: 287, baseType: !400, size: 32, offset: 6016)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "pm_notify", scope: !73, file: !74, line: 289, baseType: !2173, size: 192, offset: 6080)
!2173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !2174, line: 54, size: 192, elements: !2175)
!2174 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!2175 = !{!2176, !2182, !2183}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !2173, file: !2174, line: 55, baseType: !2177, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !2174, line: 51, baseType: !2178)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{!65, !2181, !193, !66}
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2173, file: !2174, line: 56, baseType: !2181, size: 64, offset: 64)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !2173, file: !2174, line: 57, baseType: !65, size: 32, offset: 128)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !73, file: !74, line: 291, baseType: !1742, size: 64, offset: 6272)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "max_current_330", scope: !73, file: !74, line: 292, baseType: !400, size: 32, offset: 6336)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "max_current_300", scope: !73, file: !74, line: 293, baseType: !400, size: 32, offset: 6368)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "max_current_180", scope: !73, file: !74, line: 294, baseType: !400, size: 32, offset: 6400)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "caps", scope: !73, file: !74, line: 314, baseType: !400, size: 32, offset: 6432)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "caps2", scope: !73, file: !74, line: 352, baseType: !400, size: 32, offset: 6464)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_drv_type", scope: !73, file: !74, line: 381, baseType: !65, size: 32, offset: 6496)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "pm_caps", scope: !73, file: !74, line: 383, baseType: !2192, size: 32, offset: 6528)
!2192 = !DIDerivedType(tag: DW_TAG_typedef, name: "mmc_pm_flag_t", file: !2193, line: 22, baseType: !7)
!2193 = !DIFile(filename: "./include/linux/mmc/pm.h", directory: "/home/lizy2001/genbc/linux")
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "max_seg_size", scope: !73, file: !74, line: 386, baseType: !7, size: 32, offset: 6560)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "max_segs", scope: !73, file: !74, line: 387, baseType: !185, size: 16, offset: 6592)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !73, file: !74, line: 388, baseType: !185, size: 16, offset: 6608)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "max_req_size", scope: !73, file: !74, line: 389, baseType: !7, size: 32, offset: 6624)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "max_blk_size", scope: !73, file: !74, line: 390, baseType: !7, size: 32, offset: 6656)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "max_blk_count", scope: !73, file: !74, line: 391, baseType: !7, size: 32, offset: 6688)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "max_busy_timeout", scope: !73, file: !74, line: 392, baseType: !7, size: 32, offset: 6720)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !73, file: !74, line: 395, baseType: !102, offset: 6752)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "ios", scope: !73, file: !74, line: 397, baseType: !2108, size: 160, offset: 6752)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "use_spi_crc", scope: !73, file: !74, line: 400, baseType: !7, size: 1, offset: 6912, flags: DIFlagBitField, extraData: i64 6912)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "claimed", scope: !73, file: !74, line: 401, baseType: !7, size: 1, offset: 6913, flags: DIFlagBitField, extraData: i64 6912)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dead", scope: !73, file: !74, line: 402, baseType: !7, size: 1, offset: 6914, flags: DIFlagBitField, extraData: i64 6912)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "doing_init_tune", scope: !73, file: !74, line: 403, baseType: !7, size: 1, offset: 6915, flags: DIFlagBitField, extraData: i64 6912)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "can_retune", scope: !73, file: !74, line: 404, baseType: !7, size: 1, offset: 6916, flags: DIFlagBitField, extraData: i64 6912)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "doing_retune", scope: !73, file: !74, line: 405, baseType: !7, size: 1, offset: 6917, flags: DIFlagBitField, extraData: i64 6912)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "retune_now", scope: !73, file: !74, line: 406, baseType: !7, size: 1, offset: 6918, flags: DIFlagBitField, extraData: i64 6912)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "retune_paused", scope: !73, file: !74, line: 407, baseType: !7, size: 1, offset: 6919, flags: DIFlagBitField, extraData: i64 6912)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "use_blk_mq", scope: !73, file: !74, line: 408, baseType: !7, size: 1, offset: 6920, flags: DIFlagBitField, extraData: i64 6912)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "retune_crc_disable", scope: !73, file: !74, line: 409, baseType: !7, size: 1, offset: 6921, flags: DIFlagBitField, extraData: i64 6912)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "can_dma_map_merge", scope: !73, file: !74, line: 410, baseType: !7, size: 1, offset: 6922, flags: DIFlagBitField, extraData: i64 6912)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "rescan_disable", scope: !73, file: !74, line: 412, baseType: !65, size: 32, offset: 6944)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "rescan_entered", scope: !73, file: !74, line: 413, baseType: !65, size: 32, offset: 6976)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "need_retune", scope: !73, file: !74, line: 415, baseType: !65, size: 32, offset: 7008)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "hold_retune", scope: !73, file: !74, line: 416, baseType: !65, size: 32, offset: 7040)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "retune_period", scope: !73, file: !74, line: 417, baseType: !7, size: 32, offset: 7072)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "retune_timer", scope: !73, file: !74, line: 418, baseType: !1754, size: 320, offset: 7104)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "trigger_card_event", scope: !73, file: !74, line: 420, baseType: !970, size: 8, offset: 7424)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !73, file: !74, line: 422, baseType: !67, size: 64, offset: 7488)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !73, file: !74, line: 424, baseType: !677, size: 128, offset: 7552)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "claimer", scope: !73, file: !74, line: 425, baseType: !2224, size: 64, offset: 7680)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_ctx", file: !74, line: 271, size: 64, elements: !2226)
!2226 = !{!2227}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2225, file: !74, line: 272, baseType: !390, size: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "claim_cnt", scope: !73, file: !74, line: 426, baseType: !65, size: 32, offset: 7744)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "default_ctx", scope: !73, file: !74, line: 427, baseType: !2225, size: 64, offset: 7808)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !73, file: !74, line: 429, baseType: !2231, size: 704, offset: 7872)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1296, line: 115, size: 704, elements: !2232)
!2232 = !{!2233, !2234, !2235, !2238}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2231, file: !1296, line: 116, baseType: !1295, size: 256)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2231, file: !1296, line: 117, baseType: !1754, size: 320, offset: 256)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2231, file: !1296, line: 120, baseType: !2236, size: 64, offset: 576)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1296, line: 18, flags: DIFlagFwdDecl)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2231, file: !1296, line: 121, baseType: !65, size: 32, offset: 640)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "detect_change", scope: !73, file: !74, line: 430, baseType: !65, size: 32, offset: 8576)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !73, file: !74, line: 431, baseType: !2241, size: 128, offset: 8640)
!2241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_slot", file: !74, line: 243, size: 128, elements: !2242)
!2242 = !{!2243, !2244, !2245}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "cd_irq", scope: !2241, file: !74, line: 244, baseType: !65, size: 32)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "cd_wake_enabled", scope: !2241, file: !74, line: 245, baseType: !970, size: 8, offset: 32)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "handler_priv", scope: !2241, file: !74, line: 246, baseType: !66, size: 64, offset: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "bus_ops", scope: !73, file: !74, line: 433, baseType: !2247, size: 64, offset: 8768)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2249)
!2249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_bus_ops", file: !2250, line: 20, size: 704, elements: !2251)
!2250 = !DIFile(filename: "drivers/mmc/core/core.h", directory: "/home/lizy2001/genbc/linux")
!2251 = !{!2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2249, file: !2250, line: 21, baseType: !2131, size: 64)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !2249, file: !2250, line: 22, baseType: !2131, size: 64, offset: 64)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "pre_suspend", scope: !2249, file: !2250, line: 23, baseType: !2122, size: 64, offset: 128)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2249, file: !2250, line: 24, baseType: !2122, size: 64, offset: 192)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2249, file: !2250, line: 25, baseType: !2122, size: 64, offset: 256)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2249, file: !2250, line: 26, baseType: !2122, size: 64, offset: 320)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2249, file: !2250, line: 27, baseType: !2122, size: 64, offset: 384)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "alive", scope: !2249, file: !2250, line: 28, baseType: !2122, size: 64, offset: 448)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2249, file: !2250, line: 29, baseType: !2122, size: 64, offset: 512)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "hw_reset", scope: !2249, file: !2250, line: 30, baseType: !2122, size: 64, offset: 576)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reset", scope: !2249, file: !2250, line: 31, baseType: !2122, size: 64, offset: 640)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "bus_refs", scope: !73, file: !74, line: 434, baseType: !7, size: 32, offset: 8832)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_irqs", scope: !73, file: !74, line: 436, baseType: !7, size: 32, offset: 8864)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_irq_thread", scope: !73, file: !74, line: 437, baseType: !390, size: 64, offset: 8896)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_irq_work", scope: !73, file: !74, line: 438, baseType: !2231, size: 704, offset: 8960)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_irq_pending", scope: !73, file: !74, line: 439, baseType: !970, size: 8, offset: 9664)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_irq_thread_abort", scope: !73, file: !74, line: 440, baseType: !284, size: 32, offset: 9696)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "pm_flags", scope: !73, file: !74, line: 442, baseType: !2192, size: 32, offset: 9728)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !73, file: !74, line: 444, baseType: !2271, size: 64, offset: 9792)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DICompositeType(tag: DW_TAG_structure_type, name: "led_trigger", file: !74, line: 444, flags: DIFlagFwdDecl)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "supply", scope: !73, file: !74, line: 449, baseType: !2274, size: 128, offset: 9856)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_supply", file: !74, line: 266, size: 128, elements: !2275)
!2275 = !{!2276, !2279}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "vmmc", scope: !2274, file: !74, line: 267, baseType: !2277, size: 64)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = !DICompositeType(tag: DW_TAG_structure_type, name: "regulator", file: !74, line: 263, flags: DIFlagFwdDecl)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "vqmmc", scope: !2274, file: !74, line: 268, baseType: !2277, size: 64, offset: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_root", scope: !73, file: !74, line: 451, baseType: !2281, size: 64, offset: 9984)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1397, line: 21, flags: DIFlagFwdDecl)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "ongoing_mrq", scope: !73, file: !74, line: 454, baseType: !2044, size: 64, offset: 10048)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "actual_clock", scope: !73, file: !74, line: 460, baseType: !7, size: 32, offset: 10112)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "slotno", scope: !73, file: !74, line: 462, baseType: !7, size: 32, offset: 10144)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "dsr_req", scope: !73, file: !74, line: 464, baseType: !65, size: 32, offset: 10176)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "dsr", scope: !73, file: !74, line: 465, baseType: !400, size: 32, offset: 10208)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_ops", scope: !73, file: !74, line: 468, baseType: !2289, size: 64, offset: 10240)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2291)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_cqe_ops", file: !74, line: 178, size: 576, elements: !2292)
!2292 = !{!2293, !2297, !2298, !2299, !2300, !2301, !2302, !2307, !2308}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_enable", scope: !2291, file: !74, line: 180, baseType: !2294, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DISubroutineType(types: !2296)
!2296 = !{!65, !72, !67}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_disable", scope: !2291, file: !74, line: 182, baseType: !2131, size: 64, offset: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_request", scope: !2291, file: !74, line: 187, baseType: !2100, size: 64, offset: 128)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_post_req", scope: !2291, file: !74, line: 189, baseType: !2095, size: 64, offset: 192)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_off", scope: !2291, file: !74, line: 195, baseType: !2131, size: 64, offset: 256)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_wait_for_idle", scope: !2291, file: !74, line: 200, baseType: !2122, size: 64, offset: 320)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_timeout", scope: !2291, file: !74, line: 206, baseType: !2303, size: 64, offset: 384)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DISubroutineType(types: !2305)
!2305 = !{!970, !72, !2044, !2306}
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_recovery_start", scope: !2291, file: !74, line: 212, baseType: !2131, size: 64, offset: 448)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_recovery_finish", scope: !2291, file: !74, line: 219, baseType: !2131, size: 64, offset: 512)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_private", scope: !73, file: !74, line: 469, baseType: !66, size: 64, offset: 10304)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_qdepth", scope: !73, file: !74, line: 470, baseType: !65, size: 32, offset: 10368)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_enabled", scope: !73, file: !74, line: 471, baseType: !970, size: 8, offset: 10400)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_on", scope: !73, file: !74, line: 472, baseType: !970, size: 8, offset: 10408)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "hsq_enabled", scope: !73, file: !74, line: 475, baseType: !970, size: 8, offset: 10416)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !73, file: !74, line: 477, baseType: !1308, align: 512, offset: 10752)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !68, file: !69, line: 246, baseType: !78, size: 5568, offset: 64)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "ocr", scope: !68, file: !69, line: 247, baseType: !400, size: 32, offset: 5632)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "rca", scope: !68, file: !69, line: 248, baseType: !7, size: 32, offset: 5664)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !68, file: !69, line: 249, baseType: !7, size: 32, offset: 5696)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !68, file: !69, line: 254, baseType: !7, size: 32, offset: 5728)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !68, file: !69, line: 255, baseType: !7, size: 32, offset: 5760)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_max_rate", scope: !68, file: !69, line: 256, baseType: !7, size: 32, offset: 5792)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "reenable_cmdq", scope: !68, file: !69, line: 274, baseType: !970, size: 8, offset: 5824)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "erase_size", scope: !68, file: !69, line: 276, baseType: !7, size: 32, offset: 5856)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "erase_shift", scope: !68, file: !69, line: 277, baseType: !7, size: 32, offset: 5888)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "pref_erase", scope: !68, file: !69, line: 278, baseType: !7, size: 32, offset: 5920)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "eg_boundary", scope: !68, file: !69, line: 279, baseType: !7, size: 32, offset: 5952)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "erase_arg", scope: !68, file: !69, line: 280, baseType: !7, size: 32, offset: 5984)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "erased_byte", scope: !68, file: !69, line: 281, baseType: !537, size: 8, offset: 6016)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "raw_cid", scope: !68, file: !69, line: 283, baseType: !2055, size: 128, offset: 6048)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "raw_csd", scope: !68, file: !69, line: 284, baseType: !2055, size: 128, offset: 6176)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "raw_scr", scope: !68, file: !69, line: 285, baseType: !2332, size: 64, offset: 6304)
!2332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !400, size: 64, elements: !942)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "raw_ssr", scope: !68, file: !69, line: 286, baseType: !2334, size: 512, offset: 6368)
!2334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !400, size: 512, elements: !762)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !68, file: !69, line: 287, baseType: !2336, size: 224, offset: 6880)
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_cid", file: !69, line: 13, size: 224, elements: !2337)
!2337 = !{!2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "manfid", scope: !2336, file: !69, line: 14, baseType: !7, size: 32)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "prod_name", scope: !2336, file: !69, line: 15, baseType: !907, size: 64, offset: 32)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !2336, file: !69, line: 16, baseType: !539, size: 8, offset: 96)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !2336, file: !69, line: 17, baseType: !7, size: 32, offset: 128)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "oemid", scope: !2336, file: !69, line: 18, baseType: !185, size: 16, offset: 160)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "year", scope: !2336, file: !69, line: 19, baseType: !185, size: 16, offset: 176)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "hwrev", scope: !2336, file: !69, line: 20, baseType: !539, size: 8, offset: 192)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "fwrev", scope: !2336, file: !69, line: 21, baseType: !539, size: 8, offset: 200)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "month", scope: !2336, file: !69, line: 22, baseType: !539, size: 8, offset: 208)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "csd", scope: !68, file: !69, line: 288, baseType: !2348, size: 352, offset: 7104)
!2348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_csd", file: !69, line: 25, size: 352, elements: !2349)
!2349 = !{!2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !2348, file: !69, line: 26, baseType: !539, size: 8)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "mmca_vsn", scope: !2348, file: !69, line: 27, baseType: !539, size: 8, offset: 8)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "cmdclass", scope: !2348, file: !69, line: 28, baseType: !185, size: 16, offset: 16)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "taac_clks", scope: !2348, file: !69, line: 29, baseType: !185, size: 16, offset: 32)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "taac_ns", scope: !2348, file: !69, line: 30, baseType: !7, size: 32, offset: 64)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "c_size", scope: !2348, file: !69, line: 31, baseType: !7, size: 32, offset: 96)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "r2w_factor", scope: !2348, file: !69, line: 32, baseType: !7, size: 32, offset: 128)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "max_dtr", scope: !2348, file: !69, line: 33, baseType: !7, size: 32, offset: 160)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "erase_size", scope: !2348, file: !69, line: 34, baseType: !7, size: 32, offset: 192)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "read_blkbits", scope: !2348, file: !69, line: 35, baseType: !7, size: 32, offset: 224)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "write_blkbits", scope: !2348, file: !69, line: 36, baseType: !7, size: 32, offset: 256)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !2348, file: !69, line: 37, baseType: !7, size: 32, offset: 288)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "read_partial", scope: !2348, file: !69, line: 38, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "read_misalign", scope: !2348, file: !69, line: 39, baseType: !7, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "write_partial", scope: !2348, file: !69, line: 40, baseType: !7, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "write_misalign", scope: !2348, file: !69, line: 41, baseType: !7, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "dsr_imp", scope: !2348, file: !69, line: 42, baseType: !7, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "ext_csd", scope: !68, file: !69, line: 289, baseType: !2368, size: 1344, offset: 7488)
!2368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_ext_csd", file: !69, line: 45, size: 1344, elements: !2369)
!2369 = !{!2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2444, !2445, !2446, !2447}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2368, file: !69, line: 46, baseType: !537, size: 8)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "erase_group_def", scope: !2368, file: !69, line: 47, baseType: !537, size: 8, offset: 8)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "sec_feature_support", scope: !2368, file: !69, line: 48, baseType: !537, size: 8, offset: 16)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "rel_sectors", scope: !2368, file: !69, line: 49, baseType: !537, size: 8, offset: 24)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "rel_param", scope: !2368, file: !69, line: 50, baseType: !537, size: 8, offset: 32)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "enhanced_rpmb_supported", scope: !2368, file: !69, line: 51, baseType: !970, size: 8, offset: 40)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "part_config", scope: !2368, file: !69, line: 52, baseType: !537, size: 8, offset: 48)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "cache_ctrl", scope: !2368, file: !69, line: 53, baseType: !537, size: 8, offset: 56)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "rst_n_function", scope: !2368, file: !69, line: 54, baseType: !537, size: 8, offset: 64)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "max_packed_writes", scope: !2368, file: !69, line: 55, baseType: !537, size: 8, offset: 72)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "max_packed_reads", scope: !2368, file: !69, line: 56, baseType: !537, size: 8, offset: 80)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "packed_event_en", scope: !2368, file: !69, line: 57, baseType: !537, size: 8, offset: 88)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "part_time", scope: !2368, file: !69, line: 58, baseType: !7, size: 32, offset: 96)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "sa_timeout", scope: !2368, file: !69, line: 59, baseType: !7, size: 32, offset: 128)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "generic_cmd6_time", scope: !2368, file: !69, line: 60, baseType: !7, size: 32, offset: 160)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "power_off_longtime", scope: !2368, file: !69, line: 61, baseType: !7, size: 32, offset: 192)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "power_off_notification", scope: !2368, file: !69, line: 62, baseType: !537, size: 8, offset: 224)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "hs_max_dtr", scope: !2368, file: !69, line: 63, baseType: !7, size: 32, offset: 256)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "hs200_max_dtr", scope: !2368, file: !69, line: 64, baseType: !7, size: 32, offset: 288)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "sectors", scope: !2368, file: !69, line: 69, baseType: !7, size: 32, offset: 320)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "hc_erase_size", scope: !2368, file: !69, line: 70, baseType: !7, size: 32, offset: 352)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "hc_erase_timeout", scope: !2368, file: !69, line: 71, baseType: !7, size: 32, offset: 384)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "sec_trim_mult", scope: !2368, file: !69, line: 72, baseType: !7, size: 32, offset: 416)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "sec_erase_mult", scope: !2368, file: !69, line: 73, baseType: !7, size: 32, offset: 448)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "trim_timeout", scope: !2368, file: !69, line: 74, baseType: !7, size: 32, offset: 480)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "partition_setting_completed", scope: !2368, file: !69, line: 75, baseType: !970, size: 8, offset: 512)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "enhanced_area_offset", scope: !2368, file: !69, line: 76, baseType: !266, size: 64, offset: 576)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "enhanced_area_size", scope: !2368, file: !69, line: 77, baseType: !7, size: 32, offset: 640)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "cache_size", scope: !2368, file: !69, line: 78, baseType: !7, size: 32, offset: 672)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "hpi_en", scope: !2368, file: !69, line: 79, baseType: !970, size: 8, offset: 704)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "hpi", scope: !2368, file: !69, line: 80, baseType: !970, size: 8, offset: 712)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "hpi_cmd", scope: !2368, file: !69, line: 81, baseType: !7, size: 32, offset: 736)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "bkops", scope: !2368, file: !69, line: 82, baseType: !970, size: 8, offset: 768)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "man_bkops_en", scope: !2368, file: !69, line: 83, baseType: !970, size: 8, offset: 776)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "auto_bkops_en", scope: !2368, file: !69, line: 84, baseType: !970, size: 8, offset: 784)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "data_sector_size", scope: !2368, file: !69, line: 85, baseType: !7, size: 32, offset: 800)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "data_tag_unit_size", scope: !2368, file: !69, line: 86, baseType: !7, size: 32, offset: 832)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "boot_ro_lock", scope: !2368, file: !69, line: 87, baseType: !7, size: 32, offset: 864)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "boot_ro_lockable", scope: !2368, file: !69, line: 88, baseType: !970, size: 8, offset: 896)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "ffu_capable", scope: !2368, file: !69, line: 89, baseType: !970, size: 8, offset: 904)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "cmdq_en", scope: !2368, file: !69, line: 90, baseType: !970, size: 8, offset: 912)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "cmdq_support", scope: !2368, file: !69, line: 91, baseType: !970, size: 8, offset: 920)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "cmdq_depth", scope: !2368, file: !69, line: 92, baseType: !7, size: 32, offset: 928)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "fwrev", scope: !2368, file: !69, line: 94, baseType: !2414, size: 64, offset: 960)
!2414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !537, size: 64, elements: !506)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "raw_exception_status", scope: !2368, file: !69, line: 95, baseType: !537, size: 8, offset: 1024)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "raw_partition_support", scope: !2368, file: !69, line: 96, baseType: !537, size: 8, offset: 1032)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "raw_rpmb_size_mult", scope: !2368, file: !69, line: 97, baseType: !537, size: 8, offset: 1040)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "raw_erased_mem_count", scope: !2368, file: !69, line: 98, baseType: !537, size: 8, offset: 1048)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "strobe_support", scope: !2368, file: !69, line: 99, baseType: !537, size: 8, offset: 1056)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "raw_ext_csd_structure", scope: !2368, file: !69, line: 100, baseType: !537, size: 8, offset: 1064)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "raw_card_type", scope: !2368, file: !69, line: 101, baseType: !537, size: 8, offset: 1072)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "raw_driver_strength", scope: !2368, file: !69, line: 102, baseType: !537, size: 8, offset: 1080)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "out_of_int_time", scope: !2368, file: !69, line: 103, baseType: !537, size: 8, offset: 1088)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "raw_pwr_cl_52_195", scope: !2368, file: !69, line: 104, baseType: !537, size: 8, offset: 1096)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "raw_pwr_cl_26_195", scope: !2368, file: !69, line: 105, baseType: !537, size: 8, offset: 1104)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "raw_pwr_cl_52_360", scope: !2368, file: !69, line: 106, baseType: !537, size: 8, offset: 1112)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "raw_pwr_cl_26_360", scope: !2368, file: !69, line: 107, baseType: !537, size: 8, offset: 1120)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "raw_s_a_timeout", scope: !2368, file: !69, line: 108, baseType: !537, size: 8, offset: 1128)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "raw_hc_erase_gap_size", scope: !2368, file: !69, line: 109, baseType: !537, size: 8, offset: 1136)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "raw_erase_timeout_mult", scope: !2368, file: !69, line: 110, baseType: !537, size: 8, offset: 1144)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "raw_hc_erase_grp_size", scope: !2368, file: !69, line: 111, baseType: !537, size: 8, offset: 1152)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "raw_sec_trim_mult", scope: !2368, file: !69, line: 112, baseType: !537, size: 8, offset: 1160)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "raw_sec_erase_mult", scope: !2368, file: !69, line: 113, baseType: !537, size: 8, offset: 1168)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "raw_sec_feature_support", scope: !2368, file: !69, line: 114, baseType: !537, size: 8, offset: 1176)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "raw_trim_mult", scope: !2368, file: !69, line: 115, baseType: !537, size: 8, offset: 1184)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "raw_pwr_cl_200_195", scope: !2368, file: !69, line: 116, baseType: !537, size: 8, offset: 1192)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "raw_pwr_cl_200_360", scope: !2368, file: !69, line: 117, baseType: !537, size: 8, offset: 1200)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "raw_pwr_cl_ddr_52_195", scope: !2368, file: !69, line: 118, baseType: !537, size: 8, offset: 1208)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "raw_pwr_cl_ddr_52_360", scope: !2368, file: !69, line: 119, baseType: !537, size: 8, offset: 1216)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "raw_pwr_cl_ddr_200_360", scope: !2368, file: !69, line: 120, baseType: !537, size: 8, offset: 1224)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "raw_bkops_status", scope: !2368, file: !69, line: 121, baseType: !537, size: 8, offset: 1232)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "raw_sectors", scope: !2368, file: !69, line: 122, baseType: !2443, size: 32, offset: 1240)
!2443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !537, size: 32, elements: !343)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "pre_eol_info", scope: !2368, file: !69, line: 123, baseType: !537, size: 8, offset: 1272)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "device_life_time_est_typ_a", scope: !2368, file: !69, line: 124, baseType: !537, size: 8, offset: 1280)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "device_life_time_est_typ_b", scope: !2368, file: !69, line: 125, baseType: !537, size: 8, offset: 1288)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "feature_support", scope: !2368, file: !69, line: 127, baseType: !7, size: 32, offset: 1312)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "scr", scope: !68, file: !69, line: 290, baseType: !2449, size: 48, offset: 8832)
!2449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sd_scr", file: !69, line: 131, size: 48, elements: !2450)
!2450 = !{!2451, !2452, !2453, !2454, !2455, !2456}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "sda_vsn", scope: !2449, file: !69, line: 132, baseType: !539, size: 8)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "sda_spec3", scope: !2449, file: !69, line: 133, baseType: !539, size: 8, offset: 8)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "sda_spec4", scope: !2449, file: !69, line: 134, baseType: !539, size: 8, offset: 16)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "sda_specx", scope: !2449, file: !69, line: 135, baseType: !539, size: 8, offset: 24)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "bus_widths", scope: !2449, file: !69, line: 136, baseType: !539, size: 8, offset: 32)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "cmds", scope: !2449, file: !69, line: 139, baseType: !539, size: 8, offset: 40)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "ssr", scope: !68, file: !69, line: 291, baseType: !2458, size: 96, offset: 8896)
!2458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sd_ssr", file: !69, line: 144, size: 96, elements: !2459)
!2459 = !{!2460, !2461, !2462}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "au", scope: !2458, file: !69, line: 145, baseType: !7, size: 32)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "erase_timeout", scope: !2458, file: !69, line: 146, baseType: !7, size: 32, offset: 32)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "erase_offset", scope: !2458, file: !69, line: 147, baseType: !7, size: 32, offset: 64)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "sw_caps", scope: !68, file: !69, line: 292, baseType: !2464, size: 160, offset: 8992)
!2464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sd_switch_caps", file: !69, line: 150, size: 160, elements: !2465)
!2465 = !{!2466, !2467, !2468, !2469, !2470}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "hs_max_dtr", scope: !2464, file: !69, line: 151, baseType: !7, size: 32)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "uhs_max_dtr", scope: !2464, file: !69, line: 152, baseType: !7, size: 32, offset: 32)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "sd3_bus_mode", scope: !2464, file: !69, line: 160, baseType: !7, size: 32, offset: 64)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "sd3_drv_type", scope: !2464, file: !69, line: 174, baseType: !7, size: 32, offset: 96)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "sd3_curr_limit", scope: !2464, file: !69, line: 179, baseType: !7, size: 32, offset: 128)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_funcs", scope: !68, file: !69, line: 294, baseType: !7, size: 32, offset: 9152)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_funcs_probed", scope: !68, file: !69, line: 295, baseType: !284, size: 32, offset: 9184)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "cccr", scope: !68, file: !69, line: 296, baseType: !2474, size: 96, offset: 9216)
!2474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdio_cccr", file: !69, line: 192, size: 96, elements: !2475)
!2475 = !{!2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_vsn", scope: !2474, file: !69, line: 193, baseType: !7, size: 32)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "sd_vsn", scope: !2474, file: !69, line: 194, baseType: !7, size: 32, offset: 32)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "multi_block", scope: !2474, file: !69, line: 195, baseType: !7, size: 1, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "low_speed", scope: !2474, file: !69, line: 196, baseType: !7, size: 1, offset: 65, flags: DIFlagBitField, extraData: i64 64)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "wide_bus", scope: !2474, file: !69, line: 197, baseType: !7, size: 1, offset: 66, flags: DIFlagBitField, extraData: i64 64)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "high_power", scope: !2474, file: !69, line: 198, baseType: !7, size: 1, offset: 67, flags: DIFlagBitField, extraData: i64 64)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "high_speed", scope: !2474, file: !69, line: 199, baseType: !7, size: 1, offset: 68, flags: DIFlagBitField, extraData: i64 64)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "disable_cd", scope: !2474, file: !69, line: 200, baseType: !7, size: 1, offset: 69, flags: DIFlagBitField, extraData: i64 64)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "cis", scope: !68, file: !69, line: 297, baseType: !2485, size: 96, offset: 9312)
!2485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdio_cis", file: !69, line: 203, size: 96, elements: !2486)
!2486 = !{!2487, !2488, !2489, !2490}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !2485, file: !69, line: 204, baseType: !185, size: 16)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !2485, file: !69, line: 205, baseType: !185, size: 16, offset: 16)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !2485, file: !69, line: 206, baseType: !185, size: 16, offset: 32)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "max_dtr", scope: !2485, file: !69, line: 207, baseType: !7, size: 32, offset: 64)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_func", scope: !68, file: !69, line: 298, baseType: !2492, size: 448, offset: 9408)
!2492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2493, size: 448, elements: !2495)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DICompositeType(tag: DW_TAG_structure_type, name: "sdio_func", file: !69, line: 211, flags: DIFlagFwdDecl)
!2495 = !{!2496}
!2496 = !DISubrange(count: 7)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_single_irq", scope: !68, file: !69, line: 299, baseType: !2493, size: 64, offset: 9856)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "major_rev", scope: !68, file: !69, line: 300, baseType: !537, size: 8, offset: 9920)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "minor_rev", scope: !68, file: !69, line: 301, baseType: !537, size: 8, offset: 9928)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "num_info", scope: !68, file: !69, line: 302, baseType: !7, size: 32, offset: 9952)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !68, file: !69, line: 303, baseType: !1919, size: 64, offset: 9984)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "tuples", scope: !68, file: !69, line: 304, baseType: !2503, size: 64, offset: 10048)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DICompositeType(tag: DW_TAG_structure_type, name: "sdio_func_tuple", file: !69, line: 212, flags: DIFlagFwdDecl)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "sd_bus_speed", scope: !68, file: !69, line: 306, baseType: !7, size: 32, offset: 10112)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_avail_type", scope: !68, file: !69, line: 307, baseType: !7, size: 32, offset: 10144)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "drive_strength", scope: !68, file: !69, line: 308, baseType: !7, size: 32, offset: 10176)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_root", scope: !68, file: !69, line: 310, baseType: !2281, size: 64, offset: 10240)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !68, file: !69, line: 311, baseType: !2510, size: 2240, offset: 10304)
!2510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2511, size: 2240, elements: !2495)
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_part", file: !69, line: 229, size: 320, elements: !2512)
!2512 = !{!2513, !2514, !2515, !2517, !2518}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2511, file: !69, line: 230, baseType: !262, size: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "part_cfg", scope: !2511, file: !69, line: 231, baseType: !7, size: 32, offset: 64)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2511, file: !69, line: 232, baseType: !2516, size: 160, offset: 96)
!2516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 160, elements: !1161)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "force_ro", scope: !2511, file: !69, line: 233, baseType: !970, size: 8, offset: 256)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "area_type", scope: !2511, file: !69, line: 234, baseType: !7, size: 32, offset: 288)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "nr_parts", scope: !68, file: !69, line: 312, baseType: !7, size: 32, offset: 12544)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "bouncesz", scope: !68, file: !69, line: 314, baseType: !7, size: 32, offset: 12576)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "complete_wq", scope: !68, file: !69, line: 315, baseType: !2236, size: 64, offset: 12608)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_driver", file: !2524, line: 32, size: 1344, elements: !2525)
!2524 = !DIFile(filename: "drivers/mmc/core/bus.h", directory: "/home/lizy2001/genbc/linux")
!2525 = !{!2526, !2527, !2531, !2535}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !2523, file: !2524, line: 33, baseType: !1629, size: 1152)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2523, file: !2524, line: 34, baseType: !2528, size: 64, offset: 1152)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{!65, !67}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2523, file: !2524, line: 35, baseType: !2532, size: 64, offset: 1216)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DISubroutineType(types: !2534)
!2534 = !{null, !67}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2523, file: !2524, line: 36, baseType: !2532, size: 64, offset: 1280)
!2536 = !{!2537, !0, !2544, !2547, !2549, !2552, !2566}
!2537 = !DIGlobalVariableExpression(var: !2538, expr: !DIExpression())
!2538 = distinct !DIGlobalVariable(name: "uhs_speeds", scope: !2539, file: !3, line: 315, type: !2540, isLocal: true, isDefinition: true)
!2539 = distinct !DISubprogram(name: "mmc_add_card", scope: !3, file: !3, line: 310, type: !2529, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !116)
!2540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2541, size: 320, elements: !2542)
!2541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!2542 = !{!2543}
!2543 = !DISubrange(count: 5)
!2544 = !DIGlobalVariableExpression(var: !2545, expr: !DIExpression())
!2545 = distinct !DIGlobalVariable(name: "mmc_dev_groups", scope: !2, file: !3, line: 54, type: !2546, isLocal: true, isDefinition: true)
!2546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 128, elements: !942)
!2547 = !DIGlobalVariableExpression(var: !2548, expr: !DIExpression())
!2548 = distinct !DIGlobalVariable(name: "mmc_dev_group", scope: !2, file: !3, line: 54, type: !199, isLocal: true, isDefinition: true)
!2549 = !DIGlobalVariableExpression(var: !2550, expr: !DIExpression())
!2550 = distinct !DIGlobalVariable(name: "mmc_dev_attrs", scope: !2, file: !3, line: 50, type: !2551, isLocal: true, isDefinition: true)
!2551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 128, elements: !942)
!2552 = !DIGlobalVariableExpression(var: !2553, expr: !DIExpression())
!2553 = distinct !DIGlobalVariable(name: "dev_attr_type", scope: !2, file: !3, line: 48, type: !2554, isLocal: true, isDefinition: true)
!2554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !24, line: 99, size: 256, elements: !2555)
!2555 = !{!2556, !2557, !2562}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2554, file: !24, line: 100, baseType: !180, size: 128)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2554, file: !24, line: 101, baseType: !2558, size: 64, offset: 128)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!174, !77, !2561, !143}
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2554, file: !24, line: 103, baseType: !2563, size: 64, offset: 192)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = !DISubroutineType(types: !2565)
!2565 = !{!174, !77, !2561, !85, !190}
!2566 = !DIGlobalVariableExpression(var: !2567, expr: !DIExpression())
!2567 = distinct !DIGlobalVariable(name: "mmc_bus_pm_ops", scope: !2, file: !3, line: 223, type: !1584, isLocal: true, isDefinition: true)
!2568 = !{i32 7, !"Dwarf Version", i32 4}
!2569 = !{i32 2, !"Debug Info Version", i32 3}
!2570 = !{i32 1, !"wchar_size", i32 2}
!2571 = !{i32 1, !"Code Model", i32 2}
!2572 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2573 = distinct !DISubprogram(name: "mmc_register_bus", scope: !3, file: !3, line: 239, type: !2574, scopeLine: 240, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !116)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{!65}
!2576 = !DILocation(line: 241, column: 9, scope: !2573)
!2577 = !DILocation(line: 241, column: 2, scope: !2573)
!2578 = distinct !DISubprogram(name: "mmc_unregister_bus", scope: !3, file: !3, line: 244, type: !2579, scopeLine: 245, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !116)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{null}
!2581 = !DILocation(line: 246, column: 2, scope: !2578)
!2582 = !DILocation(line: 247, column: 1, scope: !2578)
!2583 = distinct !DISubprogram(name: "mmc_register_driver", scope: !3, file: !3, line: 253, type: !2584, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !116)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{!65, !2522}
!2586 = !DILocalVariable(name: "drv", arg: 1, scope: !2583, file: !3, line: 253, type: !2522)
!2587 = !DILocation(line: 253, column: 44, scope: !2583)
!2588 = !DILocation(line: 255, column: 2, scope: !2583)
!2589 = !DILocation(line: 255, column: 7, scope: !2583)
!2590 = !DILocation(line: 255, column: 11, scope: !2583)
!2591 = !DILocation(line: 255, column: 15, scope: !2583)
!2592 = !DILocation(line: 256, column: 26, scope: !2583)
!2593 = !DILocation(line: 256, column: 31, scope: !2583)
!2594 = !DILocation(line: 256, column: 9, scope: !2583)
!2595 = !DILocation(line: 256, column: 2, scope: !2583)
!2596 = distinct !DISubprogram(name: "mmc_unregister_driver", scope: !3, file: !3, line: 265, type: !2597, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !116)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{null, !2522}
!2599 = !DILocalVariable(name: "drv", arg: 1, scope: !2596, file: !3, line: 265, type: !2522)
!2600 = !DILocation(line: 265, column: 47, scope: !2596)
!2601 = !DILocation(line: 267, column: 2, scope: !2596)
!2602 = !DILocation(line: 267, column: 7, scope: !2596)
!2603 = !DILocation(line: 267, column: 11, scope: !2596)
!2604 = !DILocation(line: 267, column: 15, scope: !2596)
!2605 = !DILocation(line: 268, column: 21, scope: !2596)
!2606 = !DILocation(line: 268, column: 26, scope: !2596)
!2607 = !DILocation(line: 268, column: 2, scope: !2596)
!2608 = !DILocation(line: 269, column: 1, scope: !2596)
!2609 = distinct !DISubprogram(name: "mmc_alloc_card", scope: !3, file: !3, line: 287, type: !2610, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !116)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{!67, !72, !2612}
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!2613 = !DILocalVariable(name: "host", arg: 1, scope: !2609, file: !3, line: 287, type: !72)
!2614 = !DILocation(line: 287, column: 50, scope: !2609)
!2615 = !DILocalVariable(name: "type", arg: 2, scope: !2609, file: !3, line: 287, type: !2612)
!2616 = !DILocation(line: 287, column: 76, scope: !2609)
!2617 = !DILocalVariable(name: "card", scope: !2609, file: !3, line: 289, type: !67)
!2618 = !DILocation(line: 289, column: 19, scope: !2609)
!2619 = !DILocation(line: 291, column: 9, scope: !2609)
!2620 = !DILocation(line: 291, column: 7, scope: !2609)
!2621 = !DILocation(line: 292, column: 7, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2609, file: !3, line: 292, column: 6)
!2623 = !DILocation(line: 292, column: 6, scope: !2609)
!2624 = !DILocation(line: 293, column: 10, scope: !2622)
!2625 = !DILocation(line: 293, column: 3, scope: !2622)
!2626 = !DILocation(line: 295, column: 15, scope: !2609)
!2627 = !DILocation(line: 295, column: 2, scope: !2609)
!2628 = !DILocation(line: 295, column: 8, scope: !2609)
!2629 = !DILocation(line: 295, column: 13, scope: !2609)
!2630 = !DILocation(line: 297, column: 21, scope: !2609)
!2631 = !DILocation(line: 297, column: 27, scope: !2609)
!2632 = !DILocation(line: 297, column: 2, scope: !2609)
!2633 = !DILocation(line: 299, column: 21, scope: !2609)
!2634 = !DILocation(line: 299, column: 2, scope: !2609)
!2635 = !DILocation(line: 299, column: 8, scope: !2609)
!2636 = !DILocation(line: 299, column: 12, scope: !2609)
!2637 = !DILocation(line: 299, column: 19, scope: !2609)
!2638 = !DILocation(line: 300, column: 2, scope: !2609)
!2639 = !DILocation(line: 300, column: 8, scope: !2609)
!2640 = !DILocation(line: 300, column: 12, scope: !2609)
!2641 = !DILocation(line: 300, column: 16, scope: !2609)
!2642 = !DILocation(line: 301, column: 2, scope: !2609)
!2643 = !DILocation(line: 301, column: 8, scope: !2609)
!2644 = !DILocation(line: 301, column: 12, scope: !2609)
!2645 = !DILocation(line: 301, column: 20, scope: !2609)
!2646 = !DILocation(line: 302, column: 19, scope: !2609)
!2647 = !DILocation(line: 302, column: 2, scope: !2609)
!2648 = !DILocation(line: 302, column: 8, scope: !2609)
!2649 = !DILocation(line: 302, column: 12, scope: !2609)
!2650 = !DILocation(line: 302, column: 17, scope: !2609)
!2651 = !DILocation(line: 304, column: 9, scope: !2609)
!2652 = !DILocation(line: 304, column: 2, scope: !2609)
!2653 = !DILocation(line: 305, column: 1, scope: !2609)
!2654 = distinct !DISubprogram(name: "kzalloc", scope: !56, file: !56, line: 662, type: !2655, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!2655 = !DISubroutineType(types: !2656)
!2656 = !{!66, !190, !63}
!2657 = !DILocalVariable(name: "s", arg: 1, scope: !2658, file: !56, line: 445, type: !1020)
!2658 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !56, file: !56, line: 445, type: !2659, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!2659 = !DISubroutineType(types: !2660)
!2660 = !{!66, !1020, !63, !190}
!2661 = !DILocation(line: 445, column: 72, scope: !2658, inlinedAt: !2662)
!2662 = distinct !DILocation(line: 552, column: 10, scope: !2663, inlinedAt: !2666)
!2663 = distinct !DILexicalBlock(scope: !2664, file: !56, line: 540, column: 34)
!2664 = distinct !DILexicalBlock(scope: !2665, file: !56, line: 540, column: 6)
!2665 = distinct !DISubprogram(name: "kmalloc", scope: !56, file: !56, line: 538, type: !2655, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!2666 = distinct !DILocation(line: 664, column: 9, scope: !2654)
!2667 = !DILocalVariable(name: "flags", arg: 2, scope: !2658, file: !56, line: 446, type: !63)
!2668 = !DILocation(line: 446, column: 9, scope: !2658, inlinedAt: !2662)
!2669 = !DILocalVariable(name: "size", arg: 3, scope: !2658, file: !56, line: 446, type: !190)
!2670 = !DILocation(line: 446, column: 23, scope: !2658, inlinedAt: !2662)
!2671 = !DILocalVariable(name: "ret", scope: !2658, file: !56, line: 448, type: !66)
!2672 = !DILocation(line: 448, column: 8, scope: !2658, inlinedAt: !2662)
!2673 = !DILocalVariable(name: "flags", arg: 1, scope: !2674, file: !56, line: 318, type: !63)
!2674 = distinct !DISubprogram(name: "kmalloc_type", scope: !56, file: !56, line: 318, type: !2675, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!2675 = !DISubroutineType(types: !2676)
!2676 = !{!55, !63}
!2677 = !DILocation(line: 318, column: 67, scope: !2674, inlinedAt: !2678)
!2678 = distinct !DILocation(line: 553, column: 20, scope: !2663, inlinedAt: !2666)
!2679 = !DILocalVariable(name: "size", arg: 1, scope: !2680, file: !56, line: 346, type: !190)
!2680 = distinct !DISubprogram(name: "kmalloc_index", scope: !56, file: !56, line: 346, type: !2681, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!2681 = !DISubroutineType(types: !2682)
!2682 = !{!7, !190}
!2683 = !DILocation(line: 346, column: 58, scope: !2680, inlinedAt: !2684)
!2684 = distinct !DILocation(line: 547, column: 11, scope: !2663, inlinedAt: !2666)
!2685 = !DILocalVariable(name: "size", arg: 1, scope: !2686, file: !56, line: 472, type: !190)
!2686 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !56, file: !56, line: 472, type: !2687, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!2687 = !DISubroutineType(types: !2688)
!2688 = !{!66, !190, !63, !7}
!2689 = !DILocation(line: 472, column: 28, scope: !2686, inlinedAt: !2690)
!2690 = distinct !DILocation(line: 481, column: 9, scope: !2691, inlinedAt: !2692)
!2691 = distinct !DISubprogram(name: "kmalloc_large", scope: !56, file: !56, line: 478, type: !2655, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!2692 = distinct !DILocation(line: 545, column: 11, scope: !2693, inlinedAt: !2666)
!2693 = distinct !DILexicalBlock(scope: !2663, file: !56, line: 544, column: 7)
!2694 = !DILocalVariable(name: "flags", arg: 2, scope: !2686, file: !56, line: 472, type: !63)
!2695 = !DILocation(line: 472, column: 40, scope: !2686, inlinedAt: !2690)
!2696 = !DILocalVariable(name: "order", arg: 3, scope: !2686, file: !56, line: 472, type: !7)
!2697 = !DILocation(line: 472, column: 60, scope: !2686, inlinedAt: !2690)
!2698 = !DILocalVariable(name: "size", arg: 1, scope: !2691, file: !56, line: 478, type: !190)
!2699 = !DILocation(line: 478, column: 51, scope: !2691, inlinedAt: !2692)
!2700 = !DILocalVariable(name: "flags", arg: 2, scope: !2691, file: !56, line: 478, type: !63)
!2701 = !DILocation(line: 478, column: 63, scope: !2691, inlinedAt: !2692)
!2702 = !DILocalVariable(name: "order", scope: !2691, file: !56, line: 480, type: !7)
!2703 = !DILocation(line: 480, column: 15, scope: !2691, inlinedAt: !2692)
!2704 = !DILocalVariable(name: "size", arg: 1, scope: !2665, file: !56, line: 538, type: !190)
!2705 = !DILocation(line: 538, column: 45, scope: !2665, inlinedAt: !2666)
!2706 = !DILocalVariable(name: "flags", arg: 2, scope: !2665, file: !56, line: 538, type: !63)
!2707 = !DILocation(line: 538, column: 57, scope: !2665, inlinedAt: !2666)
!2708 = !DILocalVariable(name: "index", scope: !2663, file: !56, line: 542, type: !7)
!2709 = !DILocation(line: 542, column: 16, scope: !2663, inlinedAt: !2666)
!2710 = !DILocalVariable(name: "size", arg: 1, scope: !2654, file: !56, line: 662, type: !190)
!2711 = !DILocation(line: 662, column: 36, scope: !2654)
!2712 = !DILocalVariable(name: "flags", arg: 2, scope: !2654, file: !56, line: 662, type: !63)
!2713 = !DILocation(line: 662, column: 48, scope: !2654)
!2714 = !DILocation(line: 664, column: 17, scope: !2654)
!2715 = !DILocation(line: 664, column: 23, scope: !2654)
!2716 = !DILocation(line: 664, column: 29, scope: !2654)
!2717 = !DILocation(line: 540, column: 27, scope: !2664, inlinedAt: !2666)
!2718 = !DILocation(line: 540, column: 6, scope: !2664, inlinedAt: !2666)
!2719 = !DILocation(line: 540, column: 6, scope: !2665, inlinedAt: !2666)
!2720 = !DILocation(line: 544, column: 7, scope: !2693, inlinedAt: !2666)
!2721 = !DILocation(line: 544, column: 12, scope: !2693, inlinedAt: !2666)
!2722 = !DILocation(line: 544, column: 7, scope: !2663, inlinedAt: !2666)
!2723 = !DILocation(line: 545, column: 25, scope: !2693, inlinedAt: !2666)
!2724 = !DILocation(line: 545, column: 31, scope: !2693, inlinedAt: !2666)
!2725 = !DILocation(line: 480, column: 33, scope: !2691, inlinedAt: !2692)
!2726 = !DILocation(line: 480, column: 23, scope: !2691, inlinedAt: !2692)
!2727 = !DILocation(line: 481, column: 29, scope: !2691, inlinedAt: !2692)
!2728 = !DILocation(line: 481, column: 35, scope: !2691, inlinedAt: !2692)
!2729 = !DILocation(line: 481, column: 42, scope: !2691, inlinedAt: !2692)
!2730 = !DILocation(line: 474, column: 23, scope: !2686, inlinedAt: !2690)
!2731 = !DILocation(line: 474, column: 29, scope: !2686, inlinedAt: !2690)
!2732 = !DILocation(line: 474, column: 36, scope: !2686, inlinedAt: !2690)
!2733 = !DILocation(line: 474, column: 9, scope: !2686, inlinedAt: !2690)
!2734 = !DILocation(line: 545, column: 4, scope: !2693, inlinedAt: !2666)
!2735 = !DILocation(line: 547, column: 25, scope: !2663, inlinedAt: !2666)
!2736 = !DILocation(line: 348, column: 7, scope: !2737, inlinedAt: !2684)
!2737 = distinct !DILexicalBlock(scope: !2680, file: !56, line: 348, column: 6)
!2738 = !DILocation(line: 348, column: 6, scope: !2680, inlinedAt: !2684)
!2739 = !DILocation(line: 349, column: 3, scope: !2737, inlinedAt: !2684)
!2740 = !DILocation(line: 351, column: 6, scope: !2741, inlinedAt: !2684)
!2741 = distinct !DILexicalBlock(scope: !2680, file: !56, line: 351, column: 6)
!2742 = !DILocation(line: 351, column: 11, scope: !2741, inlinedAt: !2684)
!2743 = !DILocation(line: 351, column: 6, scope: !2680, inlinedAt: !2684)
!2744 = !DILocation(line: 352, column: 3, scope: !2741, inlinedAt: !2684)
!2745 = !DILocation(line: 354, column: 32, scope: !2746, inlinedAt: !2684)
!2746 = distinct !DILexicalBlock(scope: !2680, file: !56, line: 354, column: 6)
!2747 = !DILocation(line: 354, column: 37, scope: !2746, inlinedAt: !2684)
!2748 = !DILocation(line: 354, column: 42, scope: !2746, inlinedAt: !2684)
!2749 = !DILocation(line: 354, column: 45, scope: !2746, inlinedAt: !2684)
!2750 = !DILocation(line: 354, column: 50, scope: !2746, inlinedAt: !2684)
!2751 = !DILocation(line: 354, column: 6, scope: !2680, inlinedAt: !2684)
!2752 = !DILocation(line: 355, column: 3, scope: !2746, inlinedAt: !2684)
!2753 = !DILocation(line: 356, column: 32, scope: !2754, inlinedAt: !2684)
!2754 = distinct !DILexicalBlock(scope: !2680, file: !56, line: 356, column: 6)
!2755 = !DILocation(line: 356, column: 37, scope: !2754, inlinedAt: !2684)
!2756 = !DILocation(line: 356, column: 43, scope: !2754, inlinedAt: !2684)
!2757 = !DILocation(line: 356, column: 46, scope: !2754, inlinedAt: !2684)
!2758 = !DILocation(line: 356, column: 51, scope: !2754, inlinedAt: !2684)
!2759 = !DILocation(line: 356, column: 6, scope: !2680, inlinedAt: !2684)
!2760 = !DILocation(line: 357, column: 3, scope: !2754, inlinedAt: !2684)
!2761 = !DILocation(line: 358, column: 6, scope: !2762, inlinedAt: !2684)
!2762 = distinct !DILexicalBlock(scope: !2680, file: !56, line: 358, column: 6)
!2763 = !DILocation(line: 358, column: 11, scope: !2762, inlinedAt: !2684)
!2764 = !DILocation(line: 358, column: 6, scope: !2680, inlinedAt: !2684)
!2765 = !DILocation(line: 358, column: 26, scope: !2762, inlinedAt: !2684)
!2766 = !DILocation(line: 359, column: 6, scope: !2767, inlinedAt: !2684)
!2767 = distinct !DILexicalBlock(scope: !2680, file: !56, line: 359, column: 6)
!2768 = !DILocation(line: 359, column: 11, scope: !2767, inlinedAt: !2684)
!2769 = !DILocation(line: 359, column: 6, scope: !2680, inlinedAt: !2684)
!2770 = !DILocation(line: 359, column: 26, scope: !2767, inlinedAt: !2684)
!2771 = !DILocation(line: 360, column: 6, scope: !2772, inlinedAt: !2684)
!2772 = distinct !DILexicalBlock(scope: !2680, file: !56, line: 360, column: 6)
!2773 = !DILocation(line: 360, column: 11, scope: !2772, inlinedAt: !2684)
!2774 = !DILocation(line: 360, column: 6, scope: !2680, inlinedAt: !2684)
!2775 = !DILocation(line: 360, column: 26, scope: !2772, inlinedAt: !2684)
!2776 = !DILocation(line: 361, column: 6, scope: !2777, inlinedAt: !2684)
!2777 = distinct !DILexicalBlock(scope: !2680, file: !56, line: 361, column: 6)
!2778 = !DILocation(line: 361, column: 11, scope: !2777, inlinedAt: !2684)
!2779 = !DILocation(line: 361, column: 6, scope: !2680, inlinedAt: !2684)
!2780 = !DILocation(line: 361, column: 26, scope: !2777, inlinedAt: !2684)
!2781 = !DILocation(line: 362, column: 6, scope: !2782, inlinedAt: !2684)
!2782 = distinct !DILexicalBlock(scope: !2680, file: !56, line: 362, column: 6)
!2783 = !DILocation(line: 362, column: 11, scope: !2782, inlinedAt: !2684)
!2784 = !DILocation(line: 362, column: 6, scope: !2680, inlinedAt: !2684)
!2785 = !DILocation(line: 362, column: 26, scope: !2782, inlinedAt: !2684)
!2786 = !DILocation(line: 363, column: 6, scope: !2787, inlinedAt: !2684)
!2787 = distinct !DILexicalBlock(scope: !2680, file: !56, line: 363, column: 6)
!2788 = !DILocation(line: 363, column: 11, scope: !2787, inlinedAt: !2684)
!2789 = !DILocation(line: 363, column: 6, scope: !2680, inlinedAt: !2684)
!2790 = !DILocation(line: 363, column: 26, scope: !2787, inlinedAt: !2684)
!2791 = !DILocation(line: 364, column: 6, scope: !2792, inlinedAt: !2684)
!2792 = distinct !DILexicalBlock(scope: !2680, file: !56, line: 364, column: 6)
!2793 = !DILocation(line: 364, column: 11, scope: !2792, inlinedAt: !2684)
!2794 = !DILocation(line: 364, column: 6, scope: !2680, inlinedAt: !2684)
!2795 = !DILocation(line: 364, column: 26, scope: !2792, inlinedAt: !2684)
!2796 = !DILocation(line: 365, column: 6, scope: !2797, inlinedAt: !2684)
!2797 = distinct !DILexicalBlock(scope: !2680, file: !56, line: 365, column: 6)
!2798 = !DILocation(line: 365, column: 11, scope: !2797, inlinedAt: !2684)
!2799 = !DILocation(line: 365, column: 6, scope: !2680, inlinedAt: !2684)
!2800 = !DILocation(line: 365, column: 26, scope: !2797, inlinedAt: !2684)
!2801 = !DILocation(line: 366, column: 6, scope: !2802, inlinedAt: !2684)
!2802 = distinct !DILexicalBlock(scope: !2680, file: !56, line: 366, column: 6)
!2803 = !DILocation(line: 366, column: 11, scope: !2802, inlinedAt: !2684)
!2804 = !DILocation(line: 366, column: 6, scope: !2680, inlinedAt: !2684)
!2805 = !DILocation(line: 366, column: 26, scope: !2802, inlinedAt: !2684)
!2806 = !DILocation(line: 367, column: 6, scope: !2807, inlinedAt: !2684)
!2807 = distinct !DILexicalBlock(scope: !2680, file: !56, line: 367, column: 6)
!2808 = !DILocation(line: 367, column: 11, scope: !2807, inlinedAt: !2684)
!2809 = !DILocation(line: 367, column: 6, scope: !2680, inlinedAt: !2684)
!2810 = !DILocation(line: 367, column: 26, scope: !2807, inlinedAt: !2684)
!2811 = !DILocation(line: 368, column: 6, scope: !2812, inlinedAt: !2684)
!2812 = distinct !DILexicalBlock(scope: !2680, file: !56, line: 368, column: 6)
!2813 = !DILocation(line: 368, column: 11, scope: !2812, inlinedAt: !2684)
!2814 = !DILocation(line: 368, column: 6, scope: !2680, inlinedAt: !2684)
!2815 = !DILocation(line: 368, column: 26, scope: !2812, inlinedAt: !2684)
!2816 = !DILocation(line: 369, column: 6, scope: !2817, inlinedAt: !2684)
!2817 = distinct !DILexicalBlock(scope: !2680, file: !56, line: 369, column: 6)
!2818 = !DILocation(line: 369, column: 11, scope: !2817, inlinedAt: !2684)
!2819 = !DILocation(line: 369, column: 6, scope: !2680, inlinedAt: !2684)
!2820 = !DILocation(line: 369, column: 26, scope: !2817, inlinedAt: !2684)
!2821 = !DILocation(line: 370, column: 6, scope: !2822, inlinedAt: !2684)
!2822 = distinct !DILexicalBlock(scope: !2680, file: !56, line: 370, column: 6)
!2823 = !DILocation(line: 370, column: 11, scope: !2822, inlinedAt: !2684)
!2824 = !DILocation(line: 370, column: 6, scope: !2680, inlinedAt: !2684)
!2825 = !DILocation(line: 370, column: 26, scope: !2822, inlinedAt: !2684)
!2826 = !DILocation(line: 371, column: 6, scope: !2827, inlinedAt: !2684)
!2827 = distinct !DILexicalBlock(scope: !2680, file: !56, line: 371, column: 6)
!2828 = !DILocation(line: 371, column: 11, scope: !2827, inlinedAt: !2684)
!2829 = !DILocation(line: 371, column: 6, scope: !2680, inlinedAt: !2684)
!2830 = !DILocation(line: 371, column: 26, scope: !2827, inlinedAt: !2684)
!2831 = !DILocation(line: 372, column: 6, scope: !2832, inlinedAt: !2684)
!2832 = distinct !DILexicalBlock(scope: !2680, file: !56, line: 372, column: 6)
!2833 = !DILocation(line: 372, column: 11, scope: !2832, inlinedAt: !2684)
!2834 = !DILocation(line: 372, column: 6, scope: !2680, inlinedAt: !2684)
!2835 = !DILocation(line: 372, column: 26, scope: !2832, inlinedAt: !2684)
!2836 = !DILocation(line: 373, column: 6, scope: !2837, inlinedAt: !2684)
!2837 = distinct !DILexicalBlock(scope: !2680, file: !56, line: 373, column: 6)
!2838 = !DILocation(line: 373, column: 11, scope: !2837, inlinedAt: !2684)
!2839 = !DILocation(line: 373, column: 6, scope: !2680, inlinedAt: !2684)
!2840 = !DILocation(line: 373, column: 26, scope: !2837, inlinedAt: !2684)
!2841 = !DILocation(line: 374, column: 6, scope: !2842, inlinedAt: !2684)
!2842 = distinct !DILexicalBlock(scope: !2680, file: !56, line: 374, column: 6)
!2843 = !DILocation(line: 374, column: 11, scope: !2842, inlinedAt: !2684)
!2844 = !DILocation(line: 374, column: 6, scope: !2680, inlinedAt: !2684)
!2845 = !DILocation(line: 374, column: 26, scope: !2842, inlinedAt: !2684)
!2846 = !DILocation(line: 375, column: 6, scope: !2847, inlinedAt: !2684)
!2847 = distinct !DILexicalBlock(scope: !2680, file: !56, line: 375, column: 6)
!2848 = !DILocation(line: 375, column: 11, scope: !2847, inlinedAt: !2684)
!2849 = !DILocation(line: 375, column: 6, scope: !2680, inlinedAt: !2684)
!2850 = !DILocation(line: 375, column: 27, scope: !2847, inlinedAt: !2684)
!2851 = !DILocation(line: 376, column: 6, scope: !2852, inlinedAt: !2684)
!2852 = distinct !DILexicalBlock(scope: !2680, file: !56, line: 376, column: 6)
!2853 = !DILocation(line: 376, column: 11, scope: !2852, inlinedAt: !2684)
!2854 = !DILocation(line: 376, column: 6, scope: !2680, inlinedAt: !2684)
!2855 = !DILocation(line: 376, column: 32, scope: !2852, inlinedAt: !2684)
!2856 = !DILocation(line: 377, column: 6, scope: !2857, inlinedAt: !2684)
!2857 = distinct !DILexicalBlock(scope: !2680, file: !56, line: 377, column: 6)
!2858 = !DILocation(line: 377, column: 11, scope: !2857, inlinedAt: !2684)
!2859 = !DILocation(line: 377, column: 6, scope: !2680, inlinedAt: !2684)
!2860 = !DILocation(line: 377, column: 32, scope: !2857, inlinedAt: !2684)
!2861 = !DILocation(line: 378, column: 6, scope: !2862, inlinedAt: !2684)
!2862 = distinct !DILexicalBlock(scope: !2680, file: !56, line: 378, column: 6)
!2863 = !DILocation(line: 378, column: 11, scope: !2862, inlinedAt: !2684)
!2864 = !DILocation(line: 378, column: 6, scope: !2680, inlinedAt: !2684)
!2865 = !DILocation(line: 378, column: 32, scope: !2862, inlinedAt: !2684)
!2866 = !DILocation(line: 379, column: 6, scope: !2867, inlinedAt: !2684)
!2867 = distinct !DILexicalBlock(scope: !2680, file: !56, line: 379, column: 6)
!2868 = !DILocation(line: 379, column: 11, scope: !2867, inlinedAt: !2684)
!2869 = !DILocation(line: 379, column: 6, scope: !2680, inlinedAt: !2684)
!2870 = !DILocation(line: 379, column: 33, scope: !2867, inlinedAt: !2684)
!2871 = !DILocation(line: 380, column: 6, scope: !2872, inlinedAt: !2684)
!2872 = distinct !DILexicalBlock(scope: !2680, file: !56, line: 380, column: 6)
!2873 = !DILocation(line: 380, column: 11, scope: !2872, inlinedAt: !2684)
!2874 = !DILocation(line: 380, column: 6, scope: !2680, inlinedAt: !2684)
!2875 = !DILocation(line: 380, column: 33, scope: !2872, inlinedAt: !2684)
!2876 = !DILocation(line: 381, column: 6, scope: !2877, inlinedAt: !2684)
!2877 = distinct !DILexicalBlock(scope: !2680, file: !56, line: 381, column: 6)
!2878 = !DILocation(line: 381, column: 11, scope: !2877, inlinedAt: !2684)
!2879 = !DILocation(line: 381, column: 6, scope: !2680, inlinedAt: !2684)
!2880 = !DILocation(line: 381, column: 33, scope: !2877, inlinedAt: !2684)
!2881 = !DILocation(line: 382, column: 2, scope: !2882, inlinedAt: !2684)
!2882 = distinct !DILexicalBlock(scope: !2883, file: !56, line: 382, column: 2)
!2883 = distinct !DILexicalBlock(scope: !2680, file: !56, line: 382, column: 2)
!2884 = !{i32 -2143729645, i32 -2143729616, i32 -2143729570, i32 -2143729512, i32 -2143729458, i32 -2143729404, i32 -2143729349, i32 -2143729318}
!2885 = !DILocation(line: 382, column: 2, scope: !2886, inlinedAt: !2684)
!2886 = distinct !DILexicalBlock(scope: !2887, file: !56, line: 382, column: 2)
!2887 = distinct !DILexicalBlock(scope: !2883, file: !56, line: 382, column: 2)
!2888 = !{i32 -2143728875, i32 -2143728868, i32 -2143728814, i32 -2143728783, i32 -2143728753}
!2889 = !DILocation(line: 382, column: 2, scope: !2887, inlinedAt: !2684)
!2890 = !DILocation(line: 386, column: 1, scope: !2680, inlinedAt: !2684)
!2891 = !DILocation(line: 547, column: 9, scope: !2663, inlinedAt: !2666)
!2892 = !DILocation(line: 549, column: 8, scope: !2893, inlinedAt: !2666)
!2893 = distinct !DILexicalBlock(scope: !2663, file: !56, line: 549, column: 7)
!2894 = !DILocation(line: 549, column: 7, scope: !2663, inlinedAt: !2666)
!2895 = !DILocation(line: 550, column: 4, scope: !2893, inlinedAt: !2666)
!2896 = !DILocation(line: 553, column: 33, scope: !2663, inlinedAt: !2666)
!2897 = !DILocation(line: 325, column: 6, scope: !2898, inlinedAt: !2678)
!2898 = distinct !DILexicalBlock(scope: !2674, file: !56, line: 325, column: 6)
!2899 = !DILocation(line: 325, column: 6, scope: !2674, inlinedAt: !2678)
!2900 = !DILocation(line: 326, column: 3, scope: !2898, inlinedAt: !2678)
!2901 = !DILocation(line: 332, column: 9, scope: !2674, inlinedAt: !2678)
!2902 = !DILocation(line: 332, column: 15, scope: !2674, inlinedAt: !2678)
!2903 = !DILocation(line: 332, column: 2, scope: !2674, inlinedAt: !2678)
!2904 = !DILocation(line: 336, column: 1, scope: !2674, inlinedAt: !2678)
!2905 = !DILocation(line: 553, column: 5, scope: !2663, inlinedAt: !2666)
!2906 = !DILocation(line: 553, column: 41, scope: !2663, inlinedAt: !2666)
!2907 = !DILocation(line: 554, column: 5, scope: !2663, inlinedAt: !2666)
!2908 = !DILocation(line: 554, column: 12, scope: !2663, inlinedAt: !2666)
!2909 = !DILocation(line: 448, column: 31, scope: !2658, inlinedAt: !2662)
!2910 = !DILocation(line: 448, column: 34, scope: !2658, inlinedAt: !2662)
!2911 = !DILocation(line: 448, column: 14, scope: !2658, inlinedAt: !2662)
!2912 = !DILocation(line: 450, column: 22, scope: !2658, inlinedAt: !2662)
!2913 = !DILocation(line: 450, column: 25, scope: !2658, inlinedAt: !2662)
!2914 = !DILocation(line: 450, column: 30, scope: !2658, inlinedAt: !2662)
!2915 = !DILocation(line: 450, column: 36, scope: !2658, inlinedAt: !2662)
!2916 = !DILocation(line: 450, column: 8, scope: !2658, inlinedAt: !2662)
!2917 = !DILocation(line: 450, column: 6, scope: !2658, inlinedAt: !2662)
!2918 = !DILocation(line: 451, column: 9, scope: !2658, inlinedAt: !2662)
!2919 = !DILocation(line: 552, column: 3, scope: !2663, inlinedAt: !2666)
!2920 = !DILocation(line: 557, column: 19, scope: !2665, inlinedAt: !2666)
!2921 = !DILocation(line: 557, column: 25, scope: !2665, inlinedAt: !2666)
!2922 = !DILocation(line: 557, column: 9, scope: !2665, inlinedAt: !2666)
!2923 = !DILocation(line: 557, column: 2, scope: !2665, inlinedAt: !2666)
!2924 = !DILocation(line: 558, column: 1, scope: !2665, inlinedAt: !2666)
!2925 = !DILocation(line: 664, column: 2, scope: !2654)
!2926 = distinct !DISubprogram(name: "ERR_PTR", scope: !2927, file: !2927, line: 24, type: !2928, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!2927 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!2928 = !DISubroutineType(types: !2929)
!2929 = !{!66, !178}
!2930 = !DILocalVariable(name: "error", arg: 1, scope: !2926, file: !2927, line: 24, type: !178)
!2931 = !DILocation(line: 24, column: 48, scope: !2926)
!2932 = !DILocation(line: 26, column: 18, scope: !2926)
!2933 = !DILocation(line: 26, column: 9, scope: !2926)
!2934 = !DILocation(line: 26, column: 2, scope: !2926)
!2935 = distinct !DISubprogram(name: "mmc_release_card", scope: !3, file: !3, line: 273, type: !1580, scopeLine: 274, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!2936 = !DILocalVariable(name: "dev", arg: 1, scope: !2935, file: !3, line: 273, type: !77)
!2937 = !DILocation(line: 273, column: 45, scope: !2935)
!2938 = !DILocalVariable(name: "card", scope: !2935, file: !3, line: 275, type: !67)
!2939 = !DILocation(line: 275, column: 19, scope: !2935)
!2940 = !DILocalVariable(name: "__mptr", scope: !2941, file: !3, line: 275, type: !66)
!2941 = distinct !DILexicalBlock(scope: !2935, file: !3, line: 275, column: 26)
!2942 = !DILocation(line: 275, column: 26, scope: !2941)
!2943 = !DILocation(line: 275, column: 26, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2941, file: !3, line: 275, column: 26)
!2945 = !DILocation(line: 277, column: 23, scope: !2935)
!2946 = !DILocation(line: 277, column: 2, scope: !2935)
!2947 = !DILocation(line: 279, column: 8, scope: !2935)
!2948 = !DILocation(line: 279, column: 14, scope: !2935)
!2949 = !DILocation(line: 279, column: 2, scope: !2935)
!2950 = !DILocation(line: 281, column: 8, scope: !2935)
!2951 = !DILocation(line: 281, column: 2, scope: !2935)
!2952 = !DILocation(line: 282, column: 1, scope: !2935)
!2953 = !DILocalVariable(name: "card", arg: 1, scope: !2539, file: !3, line: 310, type: !67)
!2954 = !DILocation(line: 310, column: 35, scope: !2539)
!2955 = !DILocalVariable(name: "ret", scope: !2539, file: !3, line: 312, type: !65)
!2956 = !DILocation(line: 312, column: 6, scope: !2539)
!2957 = !DILocalVariable(name: "type", scope: !2539, file: !3, line: 313, type: !85)
!2958 = !DILocation(line: 313, column: 14, scope: !2539)
!2959 = !DILocalVariable(name: "uhs_bus_speed_mode", scope: !2539, file: !3, line: 314, type: !85)
!2960 = !DILocation(line: 314, column: 14, scope: !2539)
!2961 = !DILocation(line: 324, column: 16, scope: !2539)
!2962 = !DILocation(line: 324, column: 22, scope: !2539)
!2963 = !DILocation(line: 324, column: 38, scope: !2539)
!2964 = !DILocation(line: 324, column: 64, scope: !2539)
!2965 = !DILocation(line: 324, column: 70, scope: !2539)
!2966 = !DILocation(line: 324, column: 2, scope: !2539)
!2967 = !DILocation(line: 326, column: 10, scope: !2539)
!2968 = !DILocation(line: 326, column: 16, scope: !2539)
!2969 = !DILocation(line: 326, column: 2, scope: !2539)
!2970 = !DILocation(line: 328, column: 8, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2539, file: !3, line: 326, column: 22)
!2972 = !DILocation(line: 329, column: 3, scope: !2971)
!2973 = !DILocation(line: 331, column: 8, scope: !2971)
!2974 = !DILocation(line: 332, column: 7, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2971, file: !3, line: 332, column: 7)
!2976 = !DILocation(line: 332, column: 7, scope: !2971)
!2977 = !DILocation(line: 333, column: 8, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2979, file: !3, line: 333, column: 8)
!2979 = distinct !DILexicalBlock(scope: !2975, file: !3, line: 332, column: 33)
!2980 = !DILocation(line: 333, column: 8, scope: !2979)
!2981 = !DILocation(line: 334, column: 10, scope: !2978)
!2982 = !DILocation(line: 334, column: 5, scope: !2978)
!2983 = !DILocation(line: 336, column: 10, scope: !2978)
!2984 = !DILocation(line: 337, column: 3, scope: !2979)
!2985 = !DILocation(line: 338, column: 3, scope: !2971)
!2986 = !DILocation(line: 340, column: 8, scope: !2971)
!2987 = !DILocation(line: 341, column: 3, scope: !2971)
!2988 = !DILocation(line: 343, column: 8, scope: !2971)
!2989 = !DILocation(line: 344, column: 7, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2971, file: !3, line: 344, column: 7)
!2991 = !DILocation(line: 344, column: 7, scope: !2971)
!2992 = !DILocation(line: 345, column: 9, scope: !2990)
!2993 = !DILocation(line: 345, column: 4, scope: !2990)
!2994 = !DILocation(line: 346, column: 3, scope: !2971)
!2995 = !DILocation(line: 348, column: 8, scope: !2971)
!2996 = !DILocation(line: 349, column: 3, scope: !2971)
!2997 = !DILocation(line: 352, column: 19, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2539, file: !3, line: 352, column: 6)
!2999 = !DILocation(line: 352, column: 6, scope: !2998)
!3000 = !DILocation(line: 352, column: 25, scope: !2998)
!3001 = !DILocation(line: 353, column: 4, scope: !2998)
!3002 = !DILocation(line: 353, column: 10, scope: !2998)
!3003 = !DILocation(line: 353, column: 23, scope: !2998)
!3004 = !DILocation(line: 352, column: 6, scope: !2539)
!3005 = !DILocation(line: 354, column: 35, scope: !2998)
!3006 = !DILocation(line: 354, column: 41, scope: !2998)
!3007 = !DILocation(line: 354, column: 24, scope: !2998)
!3008 = !DILocation(line: 354, column: 22, scope: !2998)
!3009 = !DILocation(line: 354, column: 3, scope: !2998)
!3010 = !DILocation(line: 356, column: 6, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !2539, file: !3, line: 356, column: 6)
!3012 = !DILocation(line: 356, column: 6, scope: !2539)
!3013 = !DILocation(line: 357, column: 3, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !3011, file: !3, line: 356, column: 35)
!3015 = !DILocation(line: 362, column: 2, scope: !3014)
!3016 = !DILocation(line: 363, column: 3, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !3011, file: !3, line: 362, column: 9)
!3018 = !DILocation(line: 377, column: 47, scope: !2539)
!3019 = !DILocation(line: 377, column: 53, scope: !2539)
!3020 = !DILocation(line: 377, column: 22, scope: !2539)
!3021 = !DILocation(line: 377, column: 2, scope: !2539)
!3022 = !DILocation(line: 377, column: 8, scope: !2539)
!3023 = !DILocation(line: 377, column: 12, scope: !2539)
!3024 = !DILocation(line: 377, column: 20, scope: !2539)
!3025 = !DILocation(line: 379, column: 31, scope: !2539)
!3026 = !DILocation(line: 379, column: 37, scope: !2539)
!3027 = !DILocation(line: 379, column: 2, scope: !2539)
!3028 = !DILocation(line: 381, column: 20, scope: !2539)
!3029 = !DILocation(line: 381, column: 26, scope: !2539)
!3030 = !DILocation(line: 381, column: 8, scope: !2539)
!3031 = !DILocation(line: 381, column: 6, scope: !2539)
!3032 = !DILocation(line: 382, column: 6, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !2539, file: !3, line: 382, column: 6)
!3034 = !DILocation(line: 382, column: 6, scope: !2539)
!3035 = !DILocation(line: 383, column: 10, scope: !3033)
!3036 = !DILocation(line: 383, column: 3, scope: !3033)
!3037 = !DILocation(line: 385, column: 2, scope: !2539)
!3038 = !DILocation(line: 387, column: 2, scope: !2539)
!3039 = !DILocation(line: 388, column: 1, scope: !2539)
!3040 = distinct !DISubprogram(name: "dev_name", scope: !24, file: !24, line: 609, type: !3041, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{!85, !1905}
!3043 = !DILocalVariable(name: "dev", arg: 1, scope: !3040, file: !24, line: 609, type: !1905)
!3044 = !DILocation(line: 609, column: 57, scope: !3040)
!3045 = !DILocation(line: 612, column: 6, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3040, file: !24, line: 612, column: 6)
!3047 = !DILocation(line: 612, column: 11, scope: !3046)
!3048 = !DILocation(line: 612, column: 6, scope: !3040)
!3049 = !DILocation(line: 613, column: 10, scope: !3046)
!3050 = !DILocation(line: 613, column: 15, scope: !3046)
!3051 = !DILocation(line: 613, column: 3, scope: !3046)
!3052 = !DILocation(line: 615, column: 23, scope: !3040)
!3053 = !DILocation(line: 615, column: 28, scope: !3040)
!3054 = !DILocation(line: 615, column: 9, scope: !3040)
!3055 = !DILocation(line: 615, column: 2, scope: !3040)
!3056 = !DILocation(line: 616, column: 1, scope: !3040)
!3057 = distinct !DISubprogram(name: "mmc_card_uhs", scope: !74, file: !74, line: 575, type: !2529, scopeLine: 576, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!3058 = !DILocalVariable(name: "card", arg: 1, scope: !3057, file: !74, line: 575, type: !67)
!3059 = !DILocation(line: 575, column: 49, scope: !3057)
!3060 = !DILocation(line: 577, column: 9, scope: !3057)
!3061 = !DILocation(line: 577, column: 15, scope: !3057)
!3062 = !DILocation(line: 577, column: 21, scope: !3057)
!3063 = !DILocation(line: 577, column: 25, scope: !3057)
!3064 = !DILocation(line: 577, column: 32, scope: !3057)
!3065 = !DILocation(line: 577, column: 56, scope: !3057)
!3066 = !DILocation(line: 578, column: 3, scope: !3057)
!3067 = !DILocation(line: 578, column: 9, scope: !3057)
!3068 = !DILocation(line: 578, column: 15, scope: !3057)
!3069 = !DILocation(line: 578, column: 19, scope: !3057)
!3070 = !DILocation(line: 578, column: 26, scope: !3057)
!3071 = !DILocation(line: 0, scope: !3057)
!3072 = !DILocation(line: 577, column: 2, scope: !3057)
!3073 = distinct !DISubprogram(name: "mmc_card_hs", scope: !74, file: !74, line: 568, type: !2529, scopeLine: 569, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!3074 = !DILocalVariable(name: "card", arg: 1, scope: !3073, file: !74, line: 568, type: !67)
!3075 = !DILocation(line: 568, column: 48, scope: !3073)
!3076 = !DILocation(line: 570, column: 9, scope: !3073)
!3077 = !DILocation(line: 570, column: 15, scope: !3073)
!3078 = !DILocation(line: 570, column: 21, scope: !3073)
!3079 = !DILocation(line: 570, column: 25, scope: !3073)
!3080 = !DILocation(line: 570, column: 32, scope: !3073)
!3081 = !DILocation(line: 570, column: 52, scope: !3073)
!3082 = !DILocation(line: 571, column: 3, scope: !3073)
!3083 = !DILocation(line: 571, column: 9, scope: !3073)
!3084 = !DILocation(line: 571, column: 15, scope: !3073)
!3085 = !DILocation(line: 571, column: 19, scope: !3073)
!3086 = !DILocation(line: 571, column: 26, scope: !3073)
!3087 = !DILocation(line: 570, column: 2, scope: !3073)
!3088 = distinct !DISubprogram(name: "mmc_card_ddr52", scope: !3089, file: !3089, line: 65, type: !3090, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!3089 = !DIFile(filename: "drivers/mmc/core/host.h", directory: "/home/lizy2001/genbc/linux")
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!970, !67}
!3092 = !DILocalVariable(name: "card", arg: 1, scope: !3088, file: !3089, line: 65, type: !67)
!3093 = !DILocation(line: 65, column: 52, scope: !3088)
!3094 = !DILocation(line: 67, column: 9, scope: !3088)
!3095 = !DILocation(line: 67, column: 15, scope: !3088)
!3096 = !DILocation(line: 67, column: 21, scope: !3088)
!3097 = !DILocation(line: 67, column: 25, scope: !3088)
!3098 = !DILocation(line: 67, column: 32, scope: !3088)
!3099 = !DILocation(line: 67, column: 2, scope: !3088)
!3100 = distinct !DISubprogram(name: "mmc_card_hs400", scope: !3089, file: !3089, line: 70, type: !3090, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!3101 = !DILocalVariable(name: "card", arg: 1, scope: !3100, file: !3089, line: 70, type: !67)
!3102 = !DILocation(line: 70, column: 52, scope: !3100)
!3103 = !DILocation(line: 72, column: 9, scope: !3100)
!3104 = !DILocation(line: 72, column: 15, scope: !3100)
!3105 = !DILocation(line: 72, column: 21, scope: !3100)
!3106 = !DILocation(line: 72, column: 25, scope: !3100)
!3107 = !DILocation(line: 72, column: 32, scope: !3100)
!3108 = !DILocation(line: 72, column: 2, scope: !3100)
!3109 = distinct !DISubprogram(name: "mmc_card_hs200", scope: !3089, file: !3089, line: 60, type: !3090, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!3110 = !DILocalVariable(name: "card", arg: 1, scope: !3109, file: !3089, line: 60, type: !67)
!3111 = !DILocation(line: 60, column: 52, scope: !3109)
!3112 = !DILocation(line: 62, column: 9, scope: !3109)
!3113 = !DILocation(line: 62, column: 15, scope: !3109)
!3114 = !DILocation(line: 62, column: 21, scope: !3109)
!3115 = !DILocation(line: 62, column: 25, scope: !3109)
!3116 = !DILocation(line: 62, column: 32, scope: !3109)
!3117 = !DILocation(line: 62, column: 2, scope: !3109)
!3118 = distinct !DISubprogram(name: "mmc_card_hs400es", scope: !3089, file: !3089, line: 75, type: !3090, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!3119 = !DILocalVariable(name: "card", arg: 1, scope: !3118, file: !3089, line: 75, type: !67)
!3120 = !DILocation(line: 75, column: 54, scope: !3118)
!3121 = !DILocation(line: 77, column: 9, scope: !3118)
!3122 = !DILocation(line: 77, column: 15, scope: !3118)
!3123 = !DILocation(line: 77, column: 21, scope: !3118)
!3124 = !DILocation(line: 77, column: 25, scope: !3118)
!3125 = !DILocation(line: 77, column: 2, scope: !3118)
!3126 = distinct !DISubprogram(name: "device_enable_async_suspend", scope: !24, file: !24, line: 685, type: !1580, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!3127 = !DILocalVariable(name: "dev", arg: 1, scope: !3126, file: !24, line: 685, type: !77)
!3128 = !DILocation(line: 685, column: 63, scope: !3126)
!3129 = !DILocation(line: 687, column: 7, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !3126, file: !24, line: 687, column: 6)
!3131 = !DILocation(line: 687, column: 12, scope: !3130)
!3132 = !DILocation(line: 687, column: 18, scope: !3130)
!3133 = !DILocation(line: 687, column: 6, scope: !3126)
!3134 = !DILocation(line: 688, column: 3, scope: !3130)
!3135 = !DILocation(line: 688, column: 8, scope: !3130)
!3136 = !DILocation(line: 688, column: 14, scope: !3130)
!3137 = !DILocation(line: 688, column: 28, scope: !3130)
!3138 = !DILocation(line: 689, column: 1, scope: !3126)
!3139 = distinct !DISubprogram(name: "mmc_remove_card", scope: !3, file: !3, line: 394, type: !2533, scopeLine: 395, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !116)
!3140 = !DILocalVariable(name: "card", arg: 1, scope: !3139, file: !3, line: 394, type: !67)
!3141 = !DILocation(line: 394, column: 39, scope: !3139)
!3142 = !DILocalVariable(name: "host", scope: !3139, file: !3, line: 396, type: !72)
!3143 = !DILocation(line: 396, column: 19, scope: !3139)
!3144 = !DILocation(line: 396, column: 26, scope: !3139)
!3145 = !DILocation(line: 396, column: 32, scope: !3139)
!3146 = !DILocation(line: 402, column: 6, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3139, file: !3, line: 402, column: 6)
!3148 = !DILocation(line: 402, column: 12, scope: !3147)
!3149 = !DILocation(line: 402, column: 6, scope: !3139)
!3150 = !DILocation(line: 403, column: 3, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3147, file: !3, line: 402, column: 25)
!3152 = !DILocation(line: 403, column: 9, scope: !3151)
!3153 = !DILocation(line: 403, column: 18, scope: !3151)
!3154 = !DILocation(line: 403, column: 30, scope: !3151)
!3155 = !DILocation(line: 404, column: 3, scope: !3151)
!3156 = !DILocation(line: 404, column: 9, scope: !3151)
!3157 = !DILocation(line: 404, column: 21, scope: !3151)
!3158 = !DILocation(line: 405, column: 2, scope: !3151)
!3159 = !DILocation(line: 407, column: 6, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3139, file: !3, line: 407, column: 6)
!3161 = !DILocation(line: 407, column: 6, scope: !3139)
!3162 = !DILocation(line: 408, column: 7, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3164, file: !3, line: 408, column: 7)
!3164 = distinct !DILexicalBlock(scope: !3160, file: !3, line: 407, column: 30)
!3165 = !DILocation(line: 408, column: 7, scope: !3164)
!3166 = !DILocation(line: 409, column: 4, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !3163, file: !3, line: 408, column: 36)
!3168 = !DILocation(line: 411, column: 3, scope: !3167)
!3169 = !DILocation(line: 412, column: 4, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3163, file: !3, line: 411, column: 10)
!3171 = !DILocation(line: 415, column: 15, scope: !3164)
!3172 = !DILocation(line: 415, column: 21, scope: !3164)
!3173 = !DILocation(line: 415, column: 3, scope: !3164)
!3174 = !DILocation(line: 416, column: 15, scope: !3164)
!3175 = !DILocation(line: 416, column: 21, scope: !3164)
!3176 = !DILocation(line: 416, column: 25, scope: !3164)
!3177 = !DILocation(line: 416, column: 3, scope: !3164)
!3178 = !DILocation(line: 417, column: 2, scope: !3164)
!3179 = !DILocation(line: 419, column: 14, scope: !3139)
!3180 = !DILocation(line: 419, column: 20, scope: !3139)
!3181 = !DILocation(line: 419, column: 2, scope: !3139)
!3182 = !DILocation(line: 420, column: 1, scope: !3139)
!3183 = distinct !DISubprogram(name: "of_node_put", scope: !1870, file: !1870, line: 129, type: !3184, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{null, !1868}
!3186 = !DILocalVariable(name: "node", arg: 1, scope: !3183, file: !1870, line: 129, type: !1868)
!3187 = !DILocation(line: 129, column: 52, scope: !3183)
!3188 = !DILocation(line: 129, column: 60, scope: !3183)
!3189 = distinct !DISubprogram(name: "mmc_bus_match", scope: !3, file: !3, line: 61, type: !1626, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!3190 = !DILocalVariable(name: "dev", arg: 1, scope: !3189, file: !3, line: 61, type: !77)
!3191 = !DILocation(line: 61, column: 41, scope: !3189)
!3192 = !DILocalVariable(name: "drv", arg: 2, scope: !3189, file: !3, line: 61, type: !1628)
!3193 = !DILocation(line: 61, column: 68, scope: !3189)
!3194 = !DILocation(line: 63, column: 2, scope: !3189)
!3195 = distinct !DISubprogram(name: "mmc_bus_uevent", scope: !3, file: !3, line: 67, type: !1571, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!3196 = !DILocalVariable(name: "dev", arg: 1, scope: !3195, file: !3, line: 67, type: !77)
!3197 = !DILocation(line: 67, column: 31, scope: !3195)
!3198 = !DILocalVariable(name: "env", arg: 2, scope: !3195, file: !3, line: 67, type: !138)
!3199 = !DILocation(line: 67, column: 60, scope: !3195)
!3200 = !DILocalVariable(name: "card", scope: !3195, file: !3, line: 69, type: !67)
!3201 = !DILocation(line: 69, column: 19, scope: !3195)
!3202 = !DILocalVariable(name: "__mptr", scope: !3203, file: !3, line: 69, type: !66)
!3203 = distinct !DILexicalBlock(scope: !3195, file: !3, line: 69, column: 26)
!3204 = !DILocation(line: 69, column: 26, scope: !3203)
!3205 = !DILocation(line: 69, column: 26, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3203, file: !3, line: 69, column: 26)
!3207 = !DILocalVariable(name: "type", scope: !3195, file: !3, line: 70, type: !85)
!3208 = !DILocation(line: 70, column: 14, scope: !3195)
!3209 = !DILocalVariable(name: "i", scope: !3195, file: !3, line: 71, type: !7)
!3210 = !DILocation(line: 71, column: 15, scope: !3195)
!3211 = !DILocalVariable(name: "retval", scope: !3195, file: !3, line: 72, type: !65)
!3212 = !DILocation(line: 72, column: 6, scope: !3195)
!3213 = !DILocation(line: 74, column: 10, scope: !3195)
!3214 = !DILocation(line: 74, column: 16, scope: !3195)
!3215 = !DILocation(line: 74, column: 2, scope: !3195)
!3216 = !DILocation(line: 76, column: 8, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3195, file: !3, line: 74, column: 22)
!3218 = !DILocation(line: 77, column: 3, scope: !3217)
!3219 = !DILocation(line: 79, column: 8, scope: !3217)
!3220 = !DILocation(line: 80, column: 3, scope: !3217)
!3221 = !DILocation(line: 82, column: 8, scope: !3217)
!3222 = !DILocation(line: 83, column: 3, scope: !3217)
!3223 = !DILocation(line: 85, column: 8, scope: !3217)
!3224 = !DILocation(line: 86, column: 3, scope: !3217)
!3225 = !DILocation(line: 88, column: 8, scope: !3217)
!3226 = !DILocation(line: 89, column: 2, scope: !3217)
!3227 = !DILocation(line: 91, column: 6, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !3195, file: !3, line: 91, column: 6)
!3229 = !DILocation(line: 91, column: 6, scope: !3195)
!3230 = !DILocation(line: 92, column: 27, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3228, file: !3, line: 91, column: 12)
!3232 = !DILocation(line: 92, column: 47, scope: !3231)
!3233 = !DILocation(line: 92, column: 12, scope: !3231)
!3234 = !DILocation(line: 92, column: 10, scope: !3231)
!3235 = !DILocation(line: 93, column: 7, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3231, file: !3, line: 93, column: 7)
!3237 = !DILocation(line: 93, column: 7, scope: !3231)
!3238 = !DILocation(line: 94, column: 11, scope: !3236)
!3239 = !DILocation(line: 94, column: 4, scope: !3236)
!3240 = !DILocation(line: 95, column: 2, scope: !3231)
!3241 = !DILocation(line: 97, column: 6, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !3195, file: !3, line: 97, column: 6)
!3243 = !DILocation(line: 97, column: 12, scope: !3242)
!3244 = !DILocation(line: 97, column: 17, scope: !3242)
!3245 = !DILocation(line: 97, column: 34, scope: !3242)
!3246 = !DILocation(line: 97, column: 37, scope: !3242)
!3247 = !DILocation(line: 97, column: 43, scope: !3242)
!3248 = !DILocation(line: 97, column: 48, scope: !3242)
!3249 = !DILocation(line: 97, column: 6, scope: !3195)
!3250 = !DILocation(line: 98, column: 27, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !3242, file: !3, line: 97, column: 70)
!3252 = !DILocation(line: 99, column: 6, scope: !3251)
!3253 = !DILocation(line: 99, column: 12, scope: !3251)
!3254 = !DILocation(line: 99, column: 16, scope: !3251)
!3255 = !DILocation(line: 99, column: 24, scope: !3251)
!3256 = !DILocation(line: 99, column: 30, scope: !3251)
!3257 = !DILocation(line: 99, column: 34, scope: !3251)
!3258 = !DILocation(line: 98, column: 12, scope: !3251)
!3259 = !DILocation(line: 98, column: 10, scope: !3251)
!3260 = !DILocation(line: 100, column: 7, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3251, file: !3, line: 100, column: 7)
!3262 = !DILocation(line: 100, column: 7, scope: !3251)
!3263 = !DILocation(line: 101, column: 11, scope: !3261)
!3264 = !DILocation(line: 101, column: 4, scope: !3261)
!3265 = !DILocation(line: 103, column: 27, scope: !3251)
!3266 = !DILocation(line: 104, column: 6, scope: !3251)
!3267 = !DILocation(line: 104, column: 12, scope: !3251)
!3268 = !DILocation(line: 104, column: 23, scope: !3251)
!3269 = !DILocation(line: 104, column: 29, scope: !3251)
!3270 = !DILocation(line: 103, column: 12, scope: !3251)
!3271 = !DILocation(line: 103, column: 10, scope: !3251)
!3272 = !DILocation(line: 105, column: 7, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !3251, file: !3, line: 105, column: 7)
!3274 = !DILocation(line: 105, column: 7, scope: !3251)
!3275 = !DILocation(line: 106, column: 11, scope: !3273)
!3276 = !DILocation(line: 106, column: 4, scope: !3273)
!3277 = !DILocation(line: 108, column: 10, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !3251, file: !3, line: 108, column: 3)
!3279 = !DILocation(line: 108, column: 8, scope: !3278)
!3280 = !DILocation(line: 108, column: 15, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3278, file: !3, line: 108, column: 3)
!3282 = !DILocation(line: 108, column: 19, scope: !3281)
!3283 = !DILocation(line: 108, column: 25, scope: !3281)
!3284 = !DILocation(line: 108, column: 17, scope: !3281)
!3285 = !DILocation(line: 108, column: 3, scope: !3278)
!3286 = !DILocation(line: 109, column: 28, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3281, file: !3, line: 108, column: 40)
!3288 = !DILocation(line: 109, column: 51, scope: !3287)
!3289 = !DILocation(line: 109, column: 52, scope: !3287)
!3290 = !DILocation(line: 109, column: 56, scope: !3287)
!3291 = !DILocation(line: 109, column: 62, scope: !3287)
!3292 = !DILocation(line: 109, column: 67, scope: !3287)
!3293 = !DILocation(line: 109, column: 13, scope: !3287)
!3294 = !DILocation(line: 109, column: 11, scope: !3287)
!3295 = !DILocation(line: 110, column: 8, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3287, file: !3, line: 110, column: 8)
!3297 = !DILocation(line: 110, column: 8, scope: !3287)
!3298 = !DILocation(line: 111, column: 12, scope: !3296)
!3299 = !DILocation(line: 111, column: 5, scope: !3296)
!3300 = !DILocation(line: 112, column: 3, scope: !3287)
!3301 = !DILocation(line: 108, column: 36, scope: !3281)
!3302 = !DILocation(line: 108, column: 3, scope: !3281)
!3303 = distinct !{!3303, !3285, !3304}
!3304 = !DILocation(line: 112, column: 3, scope: !3278)
!3305 = !DILocation(line: 113, column: 2, scope: !3251)
!3306 = !DILocation(line: 119, column: 6, scope: !3307)
!3307 = distinct !DILexicalBlock(scope: !3195, file: !3, line: 119, column: 6)
!3308 = !DILocation(line: 119, column: 12, scope: !3307)
!3309 = !DILocation(line: 119, column: 17, scope: !3307)
!3310 = !DILocation(line: 119, column: 6, scope: !3195)
!3311 = !DILocation(line: 120, column: 3, scope: !3307)
!3312 = !DILocation(line: 122, column: 26, scope: !3195)
!3313 = !DILocation(line: 122, column: 46, scope: !3195)
!3314 = !DILocation(line: 122, column: 11, scope: !3195)
!3315 = !DILocation(line: 122, column: 9, scope: !3195)
!3316 = !DILocation(line: 123, column: 6, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3195, file: !3, line: 123, column: 6)
!3318 = !DILocation(line: 123, column: 6, scope: !3195)
!3319 = !DILocation(line: 124, column: 10, scope: !3317)
!3320 = !DILocation(line: 124, column: 3, scope: !3317)
!3321 = !DILocation(line: 130, column: 26, scope: !3195)
!3322 = !DILocation(line: 130, column: 11, scope: !3195)
!3323 = !DILocation(line: 130, column: 9, scope: !3195)
!3324 = !DILocation(line: 132, column: 9, scope: !3195)
!3325 = !DILocation(line: 132, column: 2, scope: !3195)
!3326 = !DILocation(line: 133, column: 1, scope: !3195)
!3327 = distinct !DISubprogram(name: "mmc_bus_probe", scope: !3, file: !3, line: 135, type: !1589, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!3328 = !DILocalVariable(name: "dev", arg: 1, scope: !3327, file: !3, line: 135, type: !77)
!3329 = !DILocation(line: 135, column: 41, scope: !3327)
!3330 = !DILocalVariable(name: "drv", scope: !3327, file: !3, line: 137, type: !2522)
!3331 = !DILocation(line: 137, column: 21, scope: !3327)
!3332 = !DILocalVariable(name: "__mptr", scope: !3333, file: !3, line: 137, type: !66)
!3333 = distinct !DILexicalBlock(scope: !3327, file: !3, line: 137, column: 27)
!3334 = !DILocation(line: 137, column: 27, scope: !3333)
!3335 = !DILocation(line: 137, column: 27, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3333, file: !3, line: 137, column: 27)
!3337 = !DILocalVariable(name: "card", scope: !3327, file: !3, line: 138, type: !67)
!3338 = !DILocation(line: 138, column: 19, scope: !3327)
!3339 = !DILocalVariable(name: "__mptr", scope: !3340, file: !3, line: 138, type: !66)
!3340 = distinct !DILexicalBlock(scope: !3327, file: !3, line: 138, column: 26)
!3341 = !DILocation(line: 138, column: 26, scope: !3340)
!3342 = !DILocation(line: 138, column: 26, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !3340, file: !3, line: 138, column: 26)
!3344 = !DILocation(line: 140, column: 9, scope: !3327)
!3345 = !DILocation(line: 140, column: 14, scope: !3327)
!3346 = !DILocation(line: 140, column: 20, scope: !3327)
!3347 = !DILocation(line: 140, column: 2, scope: !3327)
!3348 = distinct !DISubprogram(name: "mmc_bus_remove", scope: !3, file: !3, line: 143, type: !1589, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!3349 = !DILocalVariable(name: "dev", arg: 1, scope: !3348, file: !3, line: 143, type: !77)
!3350 = !DILocation(line: 143, column: 42, scope: !3348)
!3351 = !DILocalVariable(name: "drv", scope: !3348, file: !3, line: 145, type: !2522)
!3352 = !DILocation(line: 145, column: 21, scope: !3348)
!3353 = !DILocalVariable(name: "__mptr", scope: !3354, file: !3, line: 145, type: !66)
!3354 = distinct !DILexicalBlock(scope: !3348, file: !3, line: 145, column: 27)
!3355 = !DILocation(line: 145, column: 27, scope: !3354)
!3356 = !DILocation(line: 145, column: 27, scope: !3357)
!3357 = distinct !DILexicalBlock(scope: !3354, file: !3, line: 145, column: 27)
!3358 = !DILocalVariable(name: "card", scope: !3348, file: !3, line: 146, type: !67)
!3359 = !DILocation(line: 146, column: 19, scope: !3348)
!3360 = !DILocalVariable(name: "__mptr", scope: !3361, file: !3, line: 146, type: !66)
!3361 = distinct !DILexicalBlock(scope: !3348, file: !3, line: 146, column: 26)
!3362 = !DILocation(line: 146, column: 26, scope: !3361)
!3363 = !DILocation(line: 146, column: 26, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3361, file: !3, line: 146, column: 26)
!3365 = !DILocation(line: 148, column: 2, scope: !3348)
!3366 = !DILocation(line: 148, column: 7, scope: !3348)
!3367 = !DILocation(line: 148, column: 14, scope: !3348)
!3368 = !DILocation(line: 150, column: 2, scope: !3348)
!3369 = distinct !DISubprogram(name: "mmc_bus_shutdown", scope: !3, file: !3, line: 153, type: !1580, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!3370 = !DILocalVariable(name: "dev", arg: 1, scope: !3369, file: !3, line: 153, type: !77)
!3371 = !DILocation(line: 153, column: 45, scope: !3369)
!3372 = !DILocalVariable(name: "drv", scope: !3369, file: !3, line: 155, type: !2522)
!3373 = !DILocation(line: 155, column: 21, scope: !3369)
!3374 = !DILocalVariable(name: "__mptr", scope: !3375, file: !3, line: 155, type: !66)
!3375 = distinct !DILexicalBlock(scope: !3369, file: !3, line: 155, column: 27)
!3376 = !DILocation(line: 155, column: 27, scope: !3375)
!3377 = !DILocation(line: 155, column: 27, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3375, file: !3, line: 155, column: 27)
!3379 = !DILocalVariable(name: "card", scope: !3369, file: !3, line: 156, type: !67)
!3380 = !DILocation(line: 156, column: 19, scope: !3369)
!3381 = !DILocalVariable(name: "__mptr", scope: !3382, file: !3, line: 156, type: !66)
!3382 = distinct !DILexicalBlock(scope: !3369, file: !3, line: 156, column: 26)
!3383 = !DILocation(line: 156, column: 26, scope: !3382)
!3384 = !DILocation(line: 156, column: 26, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !3382, file: !3, line: 156, column: 26)
!3386 = !DILocalVariable(name: "host", scope: !3369, file: !3, line: 157, type: !72)
!3387 = !DILocation(line: 157, column: 19, scope: !3369)
!3388 = !DILocation(line: 157, column: 26, scope: !3369)
!3389 = !DILocation(line: 157, column: 32, scope: !3369)
!3390 = !DILocalVariable(name: "ret", scope: !3369, file: !3, line: 158, type: !65)
!3391 = !DILocation(line: 158, column: 6, scope: !3369)
!3392 = !DILocation(line: 160, column: 6, scope: !3393)
!3393 = distinct !DILexicalBlock(scope: !3369, file: !3, line: 160, column: 6)
!3394 = !DILocation(line: 160, column: 11, scope: !3393)
!3395 = !DILocation(line: 160, column: 18, scope: !3393)
!3396 = !DILocation(line: 160, column: 21, scope: !3393)
!3397 = !DILocation(line: 160, column: 26, scope: !3393)
!3398 = !DILocation(line: 160, column: 6, scope: !3369)
!3399 = !DILocation(line: 161, column: 3, scope: !3393)
!3400 = !DILocation(line: 161, column: 8, scope: !3393)
!3401 = !DILocation(line: 161, column: 17, scope: !3393)
!3402 = !DILocation(line: 163, column: 6, scope: !3403)
!3403 = distinct !DILexicalBlock(scope: !3369, file: !3, line: 163, column: 6)
!3404 = !DILocation(line: 163, column: 12, scope: !3403)
!3405 = !DILocation(line: 163, column: 21, scope: !3403)
!3406 = !DILocation(line: 163, column: 6, scope: !3369)
!3407 = !DILocation(line: 164, column: 9, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !3403, file: !3, line: 163, column: 31)
!3409 = !DILocation(line: 164, column: 15, scope: !3408)
!3410 = !DILocation(line: 164, column: 24, scope: !3408)
!3411 = !DILocation(line: 164, column: 33, scope: !3408)
!3412 = !DILocation(line: 164, column: 7, scope: !3408)
!3413 = !DILocation(line: 165, column: 7, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3408, file: !3, line: 165, column: 7)
!3415 = !DILocation(line: 165, column: 7, scope: !3408)
!3416 = !DILocation(line: 166, column: 4, scope: !3414)
!3417 = !DILocation(line: 168, column: 2, scope: !3408)
!3418 = !DILocation(line: 169, column: 1, scope: !3369)
!3419 = distinct !DISubprogram(name: "type_show", scope: !3, file: !3, line: 30, type: !2559, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!3420 = !DILocalVariable(name: "dev", arg: 1, scope: !3419, file: !3, line: 30, type: !77)
!3421 = !DILocation(line: 30, column: 41, scope: !3419)
!3422 = !DILocalVariable(name: "attr", arg: 2, scope: !3419, file: !3, line: 31, type: !2561)
!3423 = !DILocation(line: 31, column: 27, scope: !3419)
!3424 = !DILocalVariable(name: "buf", arg: 3, scope: !3419, file: !3, line: 31, type: !143)
!3425 = !DILocation(line: 31, column: 39, scope: !3419)
!3426 = !DILocalVariable(name: "card", scope: !3419, file: !3, line: 33, type: !67)
!3427 = !DILocation(line: 33, column: 19, scope: !3419)
!3428 = !DILocalVariable(name: "__mptr", scope: !3429, file: !3, line: 33, type: !66)
!3429 = distinct !DILexicalBlock(scope: !3419, file: !3, line: 33, column: 26)
!3430 = !DILocation(line: 33, column: 26, scope: !3429)
!3431 = !DILocation(line: 33, column: 26, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3429, file: !3, line: 33, column: 26)
!3433 = !DILocation(line: 35, column: 10, scope: !3419)
!3434 = !DILocation(line: 35, column: 16, scope: !3419)
!3435 = !DILocation(line: 35, column: 2, scope: !3419)
!3436 = !DILocation(line: 37, column: 18, scope: !3437)
!3437 = distinct !DILexicalBlock(scope: !3419, file: !3, line: 35, column: 22)
!3438 = !DILocation(line: 37, column: 10, scope: !3437)
!3439 = !DILocation(line: 37, column: 3, scope: !3437)
!3440 = !DILocation(line: 39, column: 18, scope: !3437)
!3441 = !DILocation(line: 39, column: 10, scope: !3437)
!3442 = !DILocation(line: 39, column: 3, scope: !3437)
!3443 = !DILocation(line: 41, column: 18, scope: !3437)
!3444 = !DILocation(line: 41, column: 10, scope: !3437)
!3445 = !DILocation(line: 41, column: 3, scope: !3437)
!3446 = !DILocation(line: 43, column: 18, scope: !3437)
!3447 = !DILocation(line: 43, column: 10, scope: !3437)
!3448 = !DILocation(line: 43, column: 3, scope: !3437)
!3449 = !DILocation(line: 45, column: 3, scope: !3437)
!3450 = !DILocation(line: 47, column: 1, scope: !3419)
!3451 = distinct !DISubprogram(name: "mmc_bus_suspend", scope: !3, file: !3, line: 172, type: !1589, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!3452 = !DILocalVariable(name: "dev", arg: 1, scope: !3451, file: !3, line: 172, type: !77)
!3453 = !DILocation(line: 172, column: 43, scope: !3451)
!3454 = !DILocalVariable(name: "card", scope: !3451, file: !3, line: 174, type: !67)
!3455 = !DILocation(line: 174, column: 19, scope: !3451)
!3456 = !DILocalVariable(name: "__mptr", scope: !3457, file: !3, line: 174, type: !66)
!3457 = distinct !DILexicalBlock(scope: !3451, file: !3, line: 174, column: 26)
!3458 = !DILocation(line: 174, column: 26, scope: !3457)
!3459 = !DILocation(line: 174, column: 26, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3457, file: !3, line: 174, column: 26)
!3461 = !DILocalVariable(name: "host", scope: !3451, file: !3, line: 175, type: !72)
!3462 = !DILocation(line: 175, column: 19, scope: !3451)
!3463 = !DILocation(line: 175, column: 26, scope: !3451)
!3464 = !DILocation(line: 175, column: 32, scope: !3451)
!3465 = !DILocalVariable(name: "ret", scope: !3451, file: !3, line: 176, type: !65)
!3466 = !DILocation(line: 176, column: 6, scope: !3451)
!3467 = !DILocation(line: 178, column: 27, scope: !3451)
!3468 = !DILocation(line: 178, column: 8, scope: !3451)
!3469 = !DILocation(line: 178, column: 6, scope: !3451)
!3470 = !DILocation(line: 179, column: 6, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !3451, file: !3, line: 179, column: 6)
!3472 = !DILocation(line: 179, column: 6, scope: !3451)
!3473 = !DILocation(line: 180, column: 10, scope: !3471)
!3474 = !DILocation(line: 180, column: 3, scope: !3471)
!3475 = !DILocation(line: 182, column: 8, scope: !3451)
!3476 = !DILocation(line: 182, column: 14, scope: !3451)
!3477 = !DILocation(line: 182, column: 23, scope: !3451)
!3478 = !DILocation(line: 182, column: 31, scope: !3451)
!3479 = !DILocation(line: 182, column: 6, scope: !3451)
!3480 = !DILocation(line: 183, column: 6, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3451, file: !3, line: 183, column: 6)
!3482 = !DILocation(line: 183, column: 6, scope: !3451)
!3483 = !DILocation(line: 184, column: 21, scope: !3481)
!3484 = !DILocation(line: 184, column: 3, scope: !3481)
!3485 = !DILocation(line: 186, column: 9, scope: !3451)
!3486 = !DILocation(line: 186, column: 2, scope: !3451)
!3487 = !DILocation(line: 187, column: 1, scope: !3451)
!3488 = distinct !DISubprogram(name: "mmc_bus_resume", scope: !3, file: !3, line: 189, type: !1589, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!3489 = !DILocalVariable(name: "dev", arg: 1, scope: !3488, file: !3, line: 189, type: !77)
!3490 = !DILocation(line: 189, column: 42, scope: !3488)
!3491 = !DILocalVariable(name: "card", scope: !3488, file: !3, line: 191, type: !67)
!3492 = !DILocation(line: 191, column: 19, scope: !3488)
!3493 = !DILocalVariable(name: "__mptr", scope: !3494, file: !3, line: 191, type: !66)
!3494 = distinct !DILexicalBlock(scope: !3488, file: !3, line: 191, column: 26)
!3495 = !DILocation(line: 191, column: 26, scope: !3494)
!3496 = !DILocation(line: 191, column: 26, scope: !3497)
!3497 = distinct !DILexicalBlock(scope: !3494, file: !3, line: 191, column: 26)
!3498 = !DILocalVariable(name: "host", scope: !3488, file: !3, line: 192, type: !72)
!3499 = !DILocation(line: 192, column: 19, scope: !3488)
!3500 = !DILocation(line: 192, column: 26, scope: !3488)
!3501 = !DILocation(line: 192, column: 32, scope: !3488)
!3502 = !DILocalVariable(name: "ret", scope: !3488, file: !3, line: 193, type: !65)
!3503 = !DILocation(line: 193, column: 6, scope: !3488)
!3504 = !DILocation(line: 195, column: 8, scope: !3488)
!3505 = !DILocation(line: 195, column: 14, scope: !3488)
!3506 = !DILocation(line: 195, column: 23, scope: !3488)
!3507 = !DILocation(line: 195, column: 30, scope: !3488)
!3508 = !DILocation(line: 195, column: 6, scope: !3488)
!3509 = !DILocation(line: 196, column: 6, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3488, file: !3, line: 196, column: 6)
!3511 = !DILocation(line: 196, column: 6, scope: !3488)
!3512 = !DILocation(line: 197, column: 3, scope: !3510)
!3513 = !DILocation(line: 200, column: 26, scope: !3488)
!3514 = !DILocation(line: 200, column: 8, scope: !3488)
!3515 = !DILocation(line: 200, column: 6, scope: !3488)
!3516 = !DILocation(line: 201, column: 9, scope: !3488)
!3517 = !DILocation(line: 201, column: 2, scope: !3488)
!3518 = distinct !DISubprogram(name: "mmc_runtime_suspend", scope: !3, file: !3, line: 206, type: !1589, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!3519 = !DILocalVariable(name: "dev", arg: 1, scope: !3518, file: !3, line: 206, type: !77)
!3520 = !DILocation(line: 206, column: 47, scope: !3518)
!3521 = !DILocalVariable(name: "card", scope: !3518, file: !3, line: 208, type: !67)
!3522 = !DILocation(line: 208, column: 19, scope: !3518)
!3523 = !DILocalVariable(name: "__mptr", scope: !3524, file: !3, line: 208, type: !66)
!3524 = distinct !DILexicalBlock(scope: !3518, file: !3, line: 208, column: 26)
!3525 = !DILocation(line: 208, column: 26, scope: !3524)
!3526 = !DILocation(line: 208, column: 26, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !3524, file: !3, line: 208, column: 26)
!3528 = !DILocalVariable(name: "host", scope: !3518, file: !3, line: 209, type: !72)
!3529 = !DILocation(line: 209, column: 19, scope: !3518)
!3530 = !DILocation(line: 209, column: 26, scope: !3518)
!3531 = !DILocation(line: 209, column: 32, scope: !3518)
!3532 = !DILocation(line: 211, column: 9, scope: !3518)
!3533 = !DILocation(line: 211, column: 15, scope: !3518)
!3534 = !DILocation(line: 211, column: 24, scope: !3518)
!3535 = !DILocation(line: 211, column: 40, scope: !3518)
!3536 = !DILocation(line: 211, column: 2, scope: !3518)
!3537 = distinct !DISubprogram(name: "mmc_runtime_resume", scope: !3, file: !3, line: 214, type: !1589, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!3538 = !DILocalVariable(name: "dev", arg: 1, scope: !3537, file: !3, line: 214, type: !77)
!3539 = !DILocation(line: 214, column: 46, scope: !3537)
!3540 = !DILocalVariable(name: "card", scope: !3537, file: !3, line: 216, type: !67)
!3541 = !DILocation(line: 216, column: 19, scope: !3537)
!3542 = !DILocalVariable(name: "__mptr", scope: !3543, file: !3, line: 216, type: !66)
!3543 = distinct !DILexicalBlock(scope: !3537, file: !3, line: 216, column: 26)
!3544 = !DILocation(line: 216, column: 26, scope: !3543)
!3545 = !DILocation(line: 216, column: 26, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3543, file: !3, line: 216, column: 26)
!3547 = !DILocalVariable(name: "host", scope: !3537, file: !3, line: 217, type: !72)
!3548 = !DILocation(line: 217, column: 19, scope: !3537)
!3549 = !DILocation(line: 217, column: 26, scope: !3537)
!3550 = !DILocation(line: 217, column: 32, scope: !3537)
!3551 = !DILocation(line: 219, column: 9, scope: !3537)
!3552 = !DILocation(line: 219, column: 15, scope: !3537)
!3553 = !DILocation(line: 219, column: 24, scope: !3537)
!3554 = !DILocation(line: 219, column: 39, scope: !3537)
!3555 = !DILocation(line: 219, column: 2, scope: !3537)
!3556 = distinct !DISubprogram(name: "get_order", scope: !3557, file: !3557, line: 29, type: !3558, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!3557 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!3558 = !DISubroutineType(types: !3559)
!3559 = !{!65, !193}
!3560 = !DILocalVariable(name: "x", arg: 1, scope: !3561, file: !3562, line: 366, type: !264)
!3561 = distinct !DISubprogram(name: "fls64", scope: !3562, file: !3562, line: 366, type: !3563, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!3562 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!3563 = !DISubroutineType(types: !3564)
!3564 = !{!65, !264}
!3565 = !DILocation(line: 366, column: 40, scope: !3561, inlinedAt: !3566)
!3566 = distinct !DILocation(line: 46, column: 9, scope: !3556)
!3567 = !DILocalVariable(name: "bitpos", scope: !3561, file: !3562, line: 368, type: !65)
!3568 = !DILocation(line: 368, column: 6, scope: !3561, inlinedAt: !3566)
!3569 = !DILocalVariable(name: "size", arg: 1, scope: !3556, file: !3557, line: 29, type: !193)
!3570 = !DILocation(line: 29, column: 63, scope: !3556)
!3571 = !DILocation(line: 31, column: 27, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !3556, file: !3557, line: 31, column: 6)
!3573 = !DILocation(line: 31, column: 6, scope: !3572)
!3574 = !DILocation(line: 31, column: 6, scope: !3556)
!3575 = !DILocation(line: 32, column: 8, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3577, file: !3557, line: 32, column: 7)
!3577 = distinct !DILexicalBlock(scope: !3572, file: !3557, line: 31, column: 34)
!3578 = !DILocation(line: 32, column: 7, scope: !3577)
!3579 = !DILocation(line: 33, column: 4, scope: !3576)
!3580 = !DILocation(line: 35, column: 7, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3577, file: !3557, line: 35, column: 7)
!3582 = !DILocation(line: 35, column: 12, scope: !3581)
!3583 = !DILocation(line: 35, column: 7, scope: !3577)
!3584 = !DILocation(line: 36, column: 4, scope: !3581)
!3585 = !DILocation(line: 38, column: 10, scope: !3577)
!3586 = !DILocation(line: 38, column: 28, scope: !3577)
!3587 = !DILocation(line: 38, column: 41, scope: !3577)
!3588 = !DILocation(line: 38, column: 3, scope: !3577)
!3589 = !DILocation(line: 41, column: 6, scope: !3556)
!3590 = !DILocation(line: 42, column: 7, scope: !3556)
!3591 = !DILocation(line: 46, column: 15, scope: !3556)
!3592 = !DILocation(line: 374, column: 2, scope: !3561, inlinedAt: !3566)
!3593 = !DILocation(line: 376, column: 14, scope: !3561, inlinedAt: !3566)
!3594 = !{i32 384254}
!3595 = !DILocation(line: 377, column: 9, scope: !3561, inlinedAt: !3566)
!3596 = !DILocation(line: 377, column: 16, scope: !3561, inlinedAt: !3566)
!3597 = !DILocation(line: 46, column: 2, scope: !3556)
!3598 = !DILocation(line: 48, column: 1, scope: !3556)
!3599 = distinct !DISubprogram(name: "__ilog2_u64", scope: !3600, file: !3600, line: 30, type: !3601, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!3600 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!3601 = !DISubroutineType(types: !3602)
!3602 = !{!65, !262}
!3603 = !DILocation(line: 366, column: 40, scope: !3561, inlinedAt: !3604)
!3604 = distinct !DILocation(line: 32, column: 9, scope: !3599)
!3605 = !DILocation(line: 368, column: 6, scope: !3561, inlinedAt: !3604)
!3606 = !DILocalVariable(name: "n", arg: 1, scope: !3599, file: !3600, line: 30, type: !262)
!3607 = !DILocation(line: 30, column: 21, scope: !3599)
!3608 = !DILocation(line: 32, column: 15, scope: !3599)
!3609 = !DILocation(line: 374, column: 2, scope: !3561, inlinedAt: !3604)
!3610 = !DILocation(line: 376, column: 14, scope: !3561, inlinedAt: !3604)
!3611 = !DILocation(line: 377, column: 9, scope: !3561, inlinedAt: !3604)
!3612 = !DILocation(line: 377, column: 16, scope: !3561, inlinedAt: !3604)
!3613 = !DILocation(line: 32, column: 18, scope: !3599)
!3614 = !DILocation(line: 32, column: 2, scope: !3599)
!3615 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !3616, file: !3616, line: 137, type: !3617, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!3616 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!3617 = !DISubroutineType(types: !3618)
!3618 = !{!66, !1020, !1361, !190, !63}
!3619 = !DILocalVariable(name: "s", arg: 1, scope: !3615, file: !3616, line: 137, type: !1020)
!3620 = !DILocation(line: 137, column: 54, scope: !3615)
!3621 = !DILocalVariable(name: "object", arg: 2, scope: !3615, file: !3616, line: 137, type: !1361)
!3622 = !DILocation(line: 137, column: 69, scope: !3615)
!3623 = !DILocalVariable(name: "size", arg: 3, scope: !3615, file: !3616, line: 138, type: !190)
!3624 = !DILocation(line: 138, column: 12, scope: !3615)
!3625 = !DILocalVariable(name: "flags", arg: 4, scope: !3615, file: !3616, line: 138, type: !63)
!3626 = !DILocation(line: 138, column: 24, scope: !3615)
!3627 = !DILocation(line: 140, column: 17, scope: !3615)
!3628 = !DILocation(line: 140, column: 2, scope: !3615)
!3629 = distinct !DISubprogram(name: "kobject_name", scope: !82, file: !82, line: 88, type: !3630, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!3630 = !DISubroutineType(types: !3631)
!3631 = !{!85, !3632}
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!3634 = !DILocalVariable(name: "kobj", arg: 1, scope: !3629, file: !82, line: 88, type: !3632)
!3635 = !DILocation(line: 88, column: 62, scope: !3629)
!3636 = !DILocation(line: 90, column: 9, scope: !3629)
!3637 = !DILocation(line: 90, column: 15, scope: !3629)
!3638 = !DILocation(line: 90, column: 2, scope: !3629)
