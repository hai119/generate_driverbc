; ModuleID = '../bcout/drivers/thermal/thermal_hwmon.llvm.bc'
source_filename = "drivers/thermal/thermal_hwmon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.kmem_cache = type opaque
%struct.thermal_zone_device = type { i32, [20 x i8], %struct.device, %struct.attribute_group, %struct.thermal_attr*, %struct.thermal_attr*, %struct.thermal_attr*, i32, i8*, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.thermal_zone_device_ops*, %struct.thermal_zone_params*, %struct.thermal_governor*, i8*, %struct.list_head, %struct.ida, %struct.mutex, %struct.list_head, %struct.delayed_work, i32 }
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
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.module = type opaque
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type opaque
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
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.thermal_attr = type opaque
%struct.atomic_t = type { i32 }
%struct.thermal_zone_device_ops = type { i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)*, i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)*, i32 (%struct.thermal_zone_device*, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32)*, i32 (%struct.thermal_zone_device*, i32)*, i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32)*, i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32)*, i32 (%struct.thermal_zone_device*, i32*)*, i32 (%struct.thermal_zone_device*, i32)*, i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32)* }
%struct.thermal_cooling_device = type { i32, [20 x i8], %struct.device, %struct.device_node*, i8*, i8*, %struct.thermal_cooling_device_ops*, i8, %struct.mutex, %struct.list_head, %struct.list_head }
%struct.thermal_cooling_device_ops = type { i32 (%struct.thermal_cooling_device*, i64*)*, i32 (%struct.thermal_cooling_device*, i64*)*, i32 (%struct.thermal_cooling_device*, i64)*, i32 (%struct.thermal_cooling_device*, i32*)*, i32 (%struct.thermal_cooling_device*, i64, i32*)*, i32 (%struct.thermal_cooling_device*, i32, i64*)* }
%struct.thermal_zone_params = type { [20 x i8], i8, i32, %struct.thermal_bind_params*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thermal_bind_params = type { %struct.thermal_cooling_device*, i32, i32, i64*, i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)* }
%struct.thermal_governor = type { [20 x i8], {}*, void (%struct.thermal_zone_device*)*, i32 (%struct.thermal_zone_device*, i32)*, %struct.list_head }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.workqueue_struct = type opaque
%struct.thermal_hwmon_device = type { [20 x i8], %struct.device*, i32, %struct.list_head, %struct.list_head }
%struct.thermal_hwmon_temp = type { %struct.list_head, %struct.thermal_zone_device*, %struct.thermal_hwmon_attr, %struct.thermal_hwmon_attr }
%struct.thermal_hwmon_attr = type { %struct.device_attribute, [16 x i8] }
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.hwmon_chip_info = type { %struct.hwmon_ops*, %struct.hwmon_channel_info** }
%struct.hwmon_ops = type { i16 (i8*, i32, i32, i32)*, i32 (%struct.device*, i32, i32, i32, i64*)*, i32 (%struct.device*, i32, i32, i32, i8**)*, i32 (%struct.device*, i32, i32, i32, i64)* }
%struct.hwmon_channel_info = type { i32, i32* }

@.str = private unnamed_addr constant [13 x i8] c"temp%d_input\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"temp%d_crit\00", align 1
@thermal_hwmon_list_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @thermal_hwmon_list_lock to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @thermal_hwmon_list_lock to i8*), i64 8) to %struct.list_head*) } }, align 8, !dbg !0
@thermal_hwmon_list = internal global %struct.list_head { %struct.list_head* @thermal_hwmon_list, %struct.list_head* @thermal_hwmon_list }, align 8, !dbg !2263
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @thermal_add_hwmon_sysfs(%struct.thermal_zone_device* %tz) #0 !dbg !2270 {
entry:
  %retval = alloca i32, align 4
  %tz.addr = alloca %struct.thermal_zone_device*, align 8
  %hwmon = alloca %struct.thermal_hwmon_device*, align 8
  %temp = alloca %struct.thermal_hwmon_temp*, align 8
  %new_hwmon_device = alloca i32, align 4
  %result = alloca i32, align 4
  store %struct.thermal_zone_device* %tz, %struct.thermal_zone_device** %tz.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tz.addr, metadata !2271, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.declare(metadata %struct.thermal_hwmon_device** %hwmon, metadata !2273, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.declare(metadata %struct.thermal_hwmon_temp** %temp, metadata !2275, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.declare(metadata i32* %new_hwmon_device, metadata !2277, metadata !DIExpression()), !dbg !2278
  store i32 1, i32* %new_hwmon_device, align 4, !dbg !2278
  call void @llvm.dbg.declare(metadata i32* %result, metadata !2279, metadata !DIExpression()), !dbg !2280
  %0 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2281
  %call = call %struct.thermal_hwmon_device* @thermal_hwmon_lookup_by_type(%struct.thermal_zone_device* %0) #6, !dbg !2282
  store %struct.thermal_hwmon_device* %call, %struct.thermal_hwmon_device** %hwmon, align 8, !dbg !2283
  %1 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %hwmon, align 8, !dbg !2284
  %tobool = icmp ne %struct.thermal_hwmon_device* %1, null, !dbg !2284
  br i1 %tobool, label %if.then, label %if.end, !dbg !2286

if.then:                                          ; preds = %entry
  store i32 0, i32* %new_hwmon_device, align 4, !dbg !2287
  br label %register_sys_interface, !dbg !2289

if.end:                                           ; preds = %entry
  %call1 = call i8* @kzalloc(i64 72, i32 3264) #6, !dbg !2290
  %2 = bitcast i8* %call1 to %struct.thermal_hwmon_device*, !dbg !2290
  store %struct.thermal_hwmon_device* %2, %struct.thermal_hwmon_device** %hwmon, align 8, !dbg !2291
  %3 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %hwmon, align 8, !dbg !2292
  %tobool2 = icmp ne %struct.thermal_hwmon_device* %3, null, !dbg !2292
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !2294

if.then3:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !2295
  br label %return, !dbg !2295

if.end4:                                          ; preds = %if.end
  %4 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %hwmon, align 8, !dbg !2296
  %tz_list = getelementptr inbounds %struct.thermal_hwmon_device, %struct.thermal_hwmon_device* %4, i32 0, i32 3, !dbg !2297
  call void @INIT_LIST_HEAD(%struct.list_head* %tz_list) #6, !dbg !2298
  %5 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %hwmon, align 8, !dbg !2299
  %type = getelementptr inbounds %struct.thermal_hwmon_device, %struct.thermal_hwmon_device* %5, i32 0, i32 0, !dbg !2300
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %type, i64 0, i64 0, !dbg !2299
  %6 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2301
  %type5 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %6, i32 0, i32 1, !dbg !2302
  %arraydecay6 = getelementptr inbounds [20 x i8], [20 x i8]* %type5, i64 0, i64 0, !dbg !2301
  %call7 = call i64 @strlcpy(i8* %arraydecay, i8* %arraydecay6, i64 20) #6, !dbg !2303
  %7 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %hwmon, align 8, !dbg !2304
  %type8 = getelementptr inbounds %struct.thermal_hwmon_device, %struct.thermal_hwmon_device* %7, i32 0, i32 0, !dbg !2305
  %arraydecay9 = getelementptr inbounds [20 x i8], [20 x i8]* %type8, i64 0, i64 0, !dbg !2304
  %call10 = call i8* @strreplace(i8* %arraydecay9, i8 signext 45, i8 signext 95) #6, !dbg !2306
  %8 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2307
  %device = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %8, i32 0, i32 2, !dbg !2308
  %9 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %hwmon, align 8, !dbg !2309
  %type11 = getelementptr inbounds %struct.thermal_hwmon_device, %struct.thermal_hwmon_device* %9, i32 0, i32 0, !dbg !2310
  %arraydecay12 = getelementptr inbounds [20 x i8], [20 x i8]* %type11, i64 0, i64 0, !dbg !2309
  %10 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %hwmon, align 8, !dbg !2311
  %11 = bitcast %struct.thermal_hwmon_device* %10 to i8*, !dbg !2311
  %call13 = call %struct.device* @hwmon_device_register_with_info(%struct.device* %device, i8* %arraydecay12, i8* %11, %struct.hwmon_chip_info* null, %struct.attribute_group** null) #6, !dbg !2312
  %12 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %hwmon, align 8, !dbg !2313
  %device14 = getelementptr inbounds %struct.thermal_hwmon_device, %struct.thermal_hwmon_device* %12, i32 0, i32 1, !dbg !2314
  store %struct.device* %call13, %struct.device** %device14, align 8, !dbg !2315
  %13 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %hwmon, align 8, !dbg !2316
  %device15 = getelementptr inbounds %struct.thermal_hwmon_device, %struct.thermal_hwmon_device* %13, i32 0, i32 1, !dbg !2318
  %14 = load %struct.device*, %struct.device** %device15, align 8, !dbg !2318
  %15 = bitcast %struct.device* %14 to i8*, !dbg !2316
  %call16 = call zeroext i1 @IS_ERR(i8* %15) #6, !dbg !2319
  br i1 %call16, label %if.then17, label %if.end20, !dbg !2320

if.then17:                                        ; preds = %if.end4
  %16 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %hwmon, align 8, !dbg !2321
  %device18 = getelementptr inbounds %struct.thermal_hwmon_device, %struct.thermal_hwmon_device* %16, i32 0, i32 1, !dbg !2323
  %17 = load %struct.device*, %struct.device** %device18, align 8, !dbg !2323
  %18 = bitcast %struct.device* %17 to i8*, !dbg !2321
  %call19 = call i64 @PTR_ERR(i8* %18) #6, !dbg !2324
  %conv = trunc i64 %call19 to i32, !dbg !2324
  store i32 %conv, i32* %result, align 4, !dbg !2325
  br label %free_mem, !dbg !2326

if.end20:                                         ; preds = %if.end4
  br label %register_sys_interface, !dbg !2327

register_sys_interface:                           ; preds = %if.end20, %if.then
  call void @llvm.dbg.label(metadata !2328), !dbg !2329
  %call21 = call i8* @kzalloc(i64 120, i32 3264) #6, !dbg !2330
  %19 = bitcast i8* %call21 to %struct.thermal_hwmon_temp*, !dbg !2330
  store %struct.thermal_hwmon_temp* %19, %struct.thermal_hwmon_temp** %temp, align 8, !dbg !2331
  %20 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %temp, align 8, !dbg !2332
  %tobool22 = icmp ne %struct.thermal_hwmon_temp* %20, null, !dbg !2332
  br i1 %tobool22, label %if.end24, label %if.then23, !dbg !2334

if.then23:                                        ; preds = %register_sys_interface
  store i32 -12, i32* %result, align 4, !dbg !2335
  br label %unregister_name, !dbg !2337

if.end24:                                         ; preds = %register_sys_interface
  %21 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2338
  %22 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %temp, align 8, !dbg !2339
  %tz25 = getelementptr inbounds %struct.thermal_hwmon_temp, %struct.thermal_hwmon_temp* %22, i32 0, i32 1, !dbg !2340
  store %struct.thermal_zone_device* %21, %struct.thermal_zone_device** %tz25, align 8, !dbg !2341
  %23 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %hwmon, align 8, !dbg !2342
  %count = getelementptr inbounds %struct.thermal_hwmon_device, %struct.thermal_hwmon_device* %23, i32 0, i32 2, !dbg !2343
  %24 = load i32, i32* %count, align 8, !dbg !2344
  %inc = add i32 %24, 1, !dbg !2344
  store i32 %inc, i32* %count, align 8, !dbg !2344
  %25 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %temp, align 8, !dbg !2345
  %temp_input = getelementptr inbounds %struct.thermal_hwmon_temp, %struct.thermal_hwmon_temp* %25, i32 0, i32 2, !dbg !2346
  %name = getelementptr inbounds %struct.thermal_hwmon_attr, %struct.thermal_hwmon_attr* %temp_input, i32 0, i32 1, !dbg !2347
  %arraydecay26 = getelementptr inbounds [16 x i8], [16 x i8]* %name, i64 0, i64 0, !dbg !2345
  %26 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %hwmon, align 8, !dbg !2348
  %count27 = getelementptr inbounds %struct.thermal_hwmon_device, %struct.thermal_hwmon_device* %26, i32 0, i32 2, !dbg !2349
  %27 = load i32, i32* %count27, align 8, !dbg !2349
  %call28 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay26, i64 16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %27) #6, !dbg !2350
  %28 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %temp, align 8, !dbg !2351
  %temp_input29 = getelementptr inbounds %struct.thermal_hwmon_temp, %struct.thermal_hwmon_temp* %28, i32 0, i32 2, !dbg !2352
  %name30 = getelementptr inbounds %struct.thermal_hwmon_attr, %struct.thermal_hwmon_attr* %temp_input29, i32 0, i32 1, !dbg !2353
  %arraydecay31 = getelementptr inbounds [16 x i8], [16 x i8]* %name30, i64 0, i64 0, !dbg !2351
  %29 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %temp, align 8, !dbg !2354
  %temp_input32 = getelementptr inbounds %struct.thermal_hwmon_temp, %struct.thermal_hwmon_temp* %29, i32 0, i32 2, !dbg !2355
  %attr = getelementptr inbounds %struct.thermal_hwmon_attr, %struct.thermal_hwmon_attr* %temp_input32, i32 0, i32 0, !dbg !2356
  %attr33 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %attr, i32 0, i32 0, !dbg !2357
  %name34 = getelementptr inbounds %struct.attribute, %struct.attribute* %attr33, i32 0, i32 0, !dbg !2358
  store i8* %arraydecay31, i8** %name34, align 8, !dbg !2359
  %30 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %temp, align 8, !dbg !2360
  %temp_input35 = getelementptr inbounds %struct.thermal_hwmon_temp, %struct.thermal_hwmon_temp* %30, i32 0, i32 2, !dbg !2361
  %attr36 = getelementptr inbounds %struct.thermal_hwmon_attr, %struct.thermal_hwmon_attr* %temp_input35, i32 0, i32 0, !dbg !2362
  %attr37 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %attr36, i32 0, i32 0, !dbg !2363
  %mode = getelementptr inbounds %struct.attribute, %struct.attribute* %attr37, i32 0, i32 1, !dbg !2364
  store i16 292, i16* %mode, align 8, !dbg !2365
  %31 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %temp, align 8, !dbg !2366
  %temp_input38 = getelementptr inbounds %struct.thermal_hwmon_temp, %struct.thermal_hwmon_temp* %31, i32 0, i32 2, !dbg !2367
  %attr39 = getelementptr inbounds %struct.thermal_hwmon_attr, %struct.thermal_hwmon_attr* %temp_input38, i32 0, i32 0, !dbg !2368
  %show = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %attr39, i32 0, i32 1, !dbg !2369
  store i64 (%struct.device*, %struct.device_attribute*, i8*)* @temp_input_show, i64 (%struct.device*, %struct.device_attribute*, i8*)** %show, align 8, !dbg !2370
  br label %do.body, !dbg !2371

do.body:                                          ; preds = %if.end24
  br label %do.end, !dbg !2372

do.end:                                           ; preds = %do.body
  %32 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %hwmon, align 8, !dbg !2374
  %device40 = getelementptr inbounds %struct.thermal_hwmon_device, %struct.thermal_hwmon_device* %32, i32 0, i32 1, !dbg !2375
  %33 = load %struct.device*, %struct.device** %device40, align 8, !dbg !2375
  %34 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %temp, align 8, !dbg !2376
  %temp_input41 = getelementptr inbounds %struct.thermal_hwmon_temp, %struct.thermal_hwmon_temp* %34, i32 0, i32 2, !dbg !2377
  %attr42 = getelementptr inbounds %struct.thermal_hwmon_attr, %struct.thermal_hwmon_attr* %temp_input41, i32 0, i32 0, !dbg !2378
  %call43 = call i32 @device_create_file(%struct.device* %33, %struct.device_attribute* %attr42) #6, !dbg !2379
  store i32 %call43, i32* %result, align 4, !dbg !2380
  %35 = load i32, i32* %result, align 4, !dbg !2381
  %tobool44 = icmp ne i32 %35, 0, !dbg !2381
  br i1 %tobool44, label %if.then45, label %if.end46, !dbg !2383

if.then45:                                        ; preds = %do.end
  br label %free_temp_mem, !dbg !2384

if.end46:                                         ; preds = %do.end
  %36 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2385
  %call47 = call zeroext i1 @thermal_zone_crit_temp_valid(%struct.thermal_zone_device* %36) #6, !dbg !2387
  br i1 %call47, label %if.then48, label %if.end76, !dbg !2388

if.then48:                                        ; preds = %if.end46
  %37 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %temp, align 8, !dbg !2389
  %temp_crit = getelementptr inbounds %struct.thermal_hwmon_temp, %struct.thermal_hwmon_temp* %37, i32 0, i32 3, !dbg !2391
  %name49 = getelementptr inbounds %struct.thermal_hwmon_attr, %struct.thermal_hwmon_attr* %temp_crit, i32 0, i32 1, !dbg !2392
  %arraydecay50 = getelementptr inbounds [16 x i8], [16 x i8]* %name49, i64 0, i64 0, !dbg !2389
  %38 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %hwmon, align 8, !dbg !2393
  %count51 = getelementptr inbounds %struct.thermal_hwmon_device, %struct.thermal_hwmon_device* %38, i32 0, i32 2, !dbg !2394
  %39 = load i32, i32* %count51, align 8, !dbg !2394
  %call52 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay50, i64 16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %39) #6, !dbg !2395
  %40 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %temp, align 8, !dbg !2396
  %temp_crit53 = getelementptr inbounds %struct.thermal_hwmon_temp, %struct.thermal_hwmon_temp* %40, i32 0, i32 3, !dbg !2397
  %name54 = getelementptr inbounds %struct.thermal_hwmon_attr, %struct.thermal_hwmon_attr* %temp_crit53, i32 0, i32 1, !dbg !2398
  %arraydecay55 = getelementptr inbounds [16 x i8], [16 x i8]* %name54, i64 0, i64 0, !dbg !2396
  %41 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %temp, align 8, !dbg !2399
  %temp_crit56 = getelementptr inbounds %struct.thermal_hwmon_temp, %struct.thermal_hwmon_temp* %41, i32 0, i32 3, !dbg !2400
  %attr57 = getelementptr inbounds %struct.thermal_hwmon_attr, %struct.thermal_hwmon_attr* %temp_crit56, i32 0, i32 0, !dbg !2401
  %attr58 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %attr57, i32 0, i32 0, !dbg !2402
  %name59 = getelementptr inbounds %struct.attribute, %struct.attribute* %attr58, i32 0, i32 0, !dbg !2403
  store i8* %arraydecay55, i8** %name59, align 8, !dbg !2404
  %42 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %temp, align 8, !dbg !2405
  %temp_crit60 = getelementptr inbounds %struct.thermal_hwmon_temp, %struct.thermal_hwmon_temp* %42, i32 0, i32 3, !dbg !2406
  %attr61 = getelementptr inbounds %struct.thermal_hwmon_attr, %struct.thermal_hwmon_attr* %temp_crit60, i32 0, i32 0, !dbg !2407
  %attr62 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %attr61, i32 0, i32 0, !dbg !2408
  %mode63 = getelementptr inbounds %struct.attribute, %struct.attribute* %attr62, i32 0, i32 1, !dbg !2409
  store i16 292, i16* %mode63, align 8, !dbg !2410
  %43 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %temp, align 8, !dbg !2411
  %temp_crit64 = getelementptr inbounds %struct.thermal_hwmon_temp, %struct.thermal_hwmon_temp* %43, i32 0, i32 3, !dbg !2412
  %attr65 = getelementptr inbounds %struct.thermal_hwmon_attr, %struct.thermal_hwmon_attr* %temp_crit64, i32 0, i32 0, !dbg !2413
  %show66 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %attr65, i32 0, i32 1, !dbg !2414
  store i64 (%struct.device*, %struct.device_attribute*, i8*)* @temp_crit_show, i64 (%struct.device*, %struct.device_attribute*, i8*)** %show66, align 8, !dbg !2415
  br label %do.body67, !dbg !2416

do.body67:                                        ; preds = %if.then48
  br label %do.end68, !dbg !2417

do.end68:                                         ; preds = %do.body67
  %44 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %hwmon, align 8, !dbg !2419
  %device69 = getelementptr inbounds %struct.thermal_hwmon_device, %struct.thermal_hwmon_device* %44, i32 0, i32 1, !dbg !2420
  %45 = load %struct.device*, %struct.device** %device69, align 8, !dbg !2420
  %46 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %temp, align 8, !dbg !2421
  %temp_crit70 = getelementptr inbounds %struct.thermal_hwmon_temp, %struct.thermal_hwmon_temp* %46, i32 0, i32 3, !dbg !2422
  %attr71 = getelementptr inbounds %struct.thermal_hwmon_attr, %struct.thermal_hwmon_attr* %temp_crit70, i32 0, i32 0, !dbg !2423
  %call72 = call i32 @device_create_file(%struct.device* %45, %struct.device_attribute* %attr71) #6, !dbg !2424
  store i32 %call72, i32* %result, align 4, !dbg !2425
  %47 = load i32, i32* %result, align 4, !dbg !2426
  %tobool73 = icmp ne i32 %47, 0, !dbg !2426
  br i1 %tobool73, label %if.then74, label %if.end75, !dbg !2428

if.then74:                                        ; preds = %do.end68
  br label %unregister_input, !dbg !2429

if.end75:                                         ; preds = %do.end68
  br label %if.end76, !dbg !2430

if.end76:                                         ; preds = %if.end75, %if.end46
  call void @mutex_lock(%struct.mutex* @thermal_hwmon_list_lock) #6, !dbg !2431
  %48 = load i32, i32* %new_hwmon_device, align 4, !dbg !2432
  %tobool77 = icmp ne i32 %48, 0, !dbg !2432
  br i1 %tobool77, label %if.then78, label %if.end79, !dbg !2434

if.then78:                                        ; preds = %if.end76
  %49 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %hwmon, align 8, !dbg !2435
  %node = getelementptr inbounds %struct.thermal_hwmon_device, %struct.thermal_hwmon_device* %49, i32 0, i32 4, !dbg !2436
  call void @list_add_tail(%struct.list_head* %node, %struct.list_head* @thermal_hwmon_list) #6, !dbg !2437
  br label %if.end79, !dbg !2437

if.end79:                                         ; preds = %if.then78, %if.end76
  %50 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %temp, align 8, !dbg !2438
  %hwmon_node = getelementptr inbounds %struct.thermal_hwmon_temp, %struct.thermal_hwmon_temp* %50, i32 0, i32 0, !dbg !2439
  %51 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %hwmon, align 8, !dbg !2440
  %tz_list80 = getelementptr inbounds %struct.thermal_hwmon_device, %struct.thermal_hwmon_device* %51, i32 0, i32 3, !dbg !2441
  call void @list_add_tail(%struct.list_head* %hwmon_node, %struct.list_head* %tz_list80) #6, !dbg !2442
  call void @mutex_unlock(%struct.mutex* @thermal_hwmon_list_lock) #6, !dbg !2443
  store i32 0, i32* %retval, align 4, !dbg !2444
  br label %return, !dbg !2444

unregister_input:                                 ; preds = %if.then74
  call void @llvm.dbg.label(metadata !2445), !dbg !2446
  %52 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %hwmon, align 8, !dbg !2447
  %device81 = getelementptr inbounds %struct.thermal_hwmon_device, %struct.thermal_hwmon_device* %52, i32 0, i32 1, !dbg !2448
  %53 = load %struct.device*, %struct.device** %device81, align 8, !dbg !2448
  %54 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %temp, align 8, !dbg !2449
  %temp_input82 = getelementptr inbounds %struct.thermal_hwmon_temp, %struct.thermal_hwmon_temp* %54, i32 0, i32 2, !dbg !2450
  %attr83 = getelementptr inbounds %struct.thermal_hwmon_attr, %struct.thermal_hwmon_attr* %temp_input82, i32 0, i32 0, !dbg !2451
  call void @device_remove_file(%struct.device* %53, %struct.device_attribute* %attr83) #6, !dbg !2452
  br label %free_temp_mem, !dbg !2452

free_temp_mem:                                    ; preds = %unregister_input, %if.then45
  call void @llvm.dbg.label(metadata !2453), !dbg !2454
  %55 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %temp, align 8, !dbg !2455
  %56 = bitcast %struct.thermal_hwmon_temp* %55 to i8*, !dbg !2455
  call void @kfree(i8* %56) #6, !dbg !2456
  br label %unregister_name, !dbg !2456

unregister_name:                                  ; preds = %free_temp_mem, %if.then23
  call void @llvm.dbg.label(metadata !2457), !dbg !2458
  %57 = load i32, i32* %new_hwmon_device, align 4, !dbg !2459
  %tobool84 = icmp ne i32 %57, 0, !dbg !2459
  br i1 %tobool84, label %if.then85, label %if.end87, !dbg !2461

if.then85:                                        ; preds = %unregister_name
  %58 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %hwmon, align 8, !dbg !2462
  %device86 = getelementptr inbounds %struct.thermal_hwmon_device, %struct.thermal_hwmon_device* %58, i32 0, i32 1, !dbg !2463
  %59 = load %struct.device*, %struct.device** %device86, align 8, !dbg !2463
  call void @hwmon_device_unregister(%struct.device* %59) #6, !dbg !2464
  br label %if.end87, !dbg !2464

if.end87:                                         ; preds = %if.then85, %unregister_name
  br label %free_mem, !dbg !2459

free_mem:                                         ; preds = %if.end87, %if.then17
  call void @llvm.dbg.label(metadata !2465), !dbg !2466
  %60 = load i32, i32* %new_hwmon_device, align 4, !dbg !2467
  %tobool88 = icmp ne i32 %60, 0, !dbg !2467
  br i1 %tobool88, label %if.then89, label %if.end90, !dbg !2469

if.then89:                                        ; preds = %free_mem
  %61 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %hwmon, align 8, !dbg !2470
  %62 = bitcast %struct.thermal_hwmon_device* %61 to i8*, !dbg !2470
  call void @kfree(i8* %62) #6, !dbg !2471
  br label %if.end90, !dbg !2471

if.end90:                                         ; preds = %if.then89, %free_mem
  %63 = load i32, i32* %result, align 4, !dbg !2472
  store i32 %63, i32* %retval, align 4, !dbg !2473
  br label %return, !dbg !2473

return:                                           ; preds = %if.end90, %if.end79, %if.then3
  %64 = load i32, i32* %retval, align 4, !dbg !2474
  ret i32 %64, !dbg !2474
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.thermal_hwmon_device* @thermal_hwmon_lookup_by_type(%struct.thermal_zone_device* %tz) #0 !dbg !2475 {
entry:
  %retval = alloca %struct.thermal_hwmon_device*, align 8
  %tz.addr = alloca %struct.thermal_zone_device*, align 8
  %hwmon = alloca %struct.thermal_hwmon_device*, align 8
  %type = alloca [20 x i8], align 16
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.thermal_hwmon_device*, align 8
  %__mptr9 = alloca i8*, align 8
  %tmp13 = alloca %struct.thermal_hwmon_device*, align 8
  store %struct.thermal_zone_device* %tz, %struct.thermal_zone_device** %tz.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tz.addr, metadata !2480, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.declare(metadata %struct.thermal_hwmon_device** %hwmon, metadata !2482, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.declare(metadata [20 x i8]* %type, metadata !2484, metadata !DIExpression()), !dbg !2485
  call void @mutex_lock(%struct.mutex* @thermal_hwmon_list_lock) #6, !dbg !2486
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2487, metadata !DIExpression()), !dbg !2490
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @thermal_hwmon_list, i32 0, i32 0), align 8, !dbg !2490
  %1 = bitcast %struct.list_head* %0 to i8*, !dbg !2490
  store i8* %1, i8** %__mptr, align 8, !dbg !2490
  br label %do.body, !dbg !2490

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2491

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2490
  %add.ptr = getelementptr i8, i8* %2, i64 -56, !dbg !2490
  %3 = bitcast i8* %add.ptr to %struct.thermal_hwmon_device*, !dbg !2490
  store %struct.thermal_hwmon_device* %3, %struct.thermal_hwmon_device** %tmp, align 8, !dbg !2491
  %4 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %tmp, align 8, !dbg !2490
  store %struct.thermal_hwmon_device* %4, %struct.thermal_hwmon_device** %hwmon, align 8, !dbg !2493
  br label %for.cond, !dbg !2493

for.cond:                                         ; preds = %do.end12, %do.end
  %5 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %hwmon, align 8, !dbg !2494
  %node = getelementptr inbounds %struct.thermal_hwmon_device, %struct.thermal_hwmon_device* %5, i32 0, i32 4, !dbg !2494
  %cmp = icmp eq %struct.list_head* %node, @thermal_hwmon_list, !dbg !2494
  %lnot = xor i1 %cmp, true, !dbg !2494
  br i1 %lnot, label %for.body, label %for.end, !dbg !2493

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %type, i64 0, i64 0, !dbg !2496
  %6 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2498
  %type1 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %6, i32 0, i32 1, !dbg !2499
  %arraydecay2 = getelementptr inbounds [20 x i8], [20 x i8]* %type1, i64 0, i64 0, !dbg !2498
  %call = call i8* @strcpy(i8* %arraydecay, i8* %arraydecay2) #6, !dbg !2500
  %arraydecay3 = getelementptr inbounds [20 x i8], [20 x i8]* %type, i64 0, i64 0, !dbg !2501
  %call4 = call i8* @strreplace(i8* %arraydecay3, i8 signext 45, i8 signext 95) #6, !dbg !2502
  %7 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %hwmon, align 8, !dbg !2503
  %type5 = getelementptr inbounds %struct.thermal_hwmon_device, %struct.thermal_hwmon_device* %7, i32 0, i32 0, !dbg !2505
  %arraydecay6 = getelementptr inbounds [20 x i8], [20 x i8]* %type5, i64 0, i64 0, !dbg !2503
  %arraydecay7 = getelementptr inbounds [20 x i8], [20 x i8]* %type, i64 0, i64 0, !dbg !2506
  %call8 = call i32 @strcmp(i8* %arraydecay6, i8* %arraydecay7) #6, !dbg !2507
  %tobool = icmp ne i32 %call8, 0, !dbg !2507
  br i1 %tobool, label %if.end, label %if.then, !dbg !2508

if.then:                                          ; preds = %for.body
  call void @mutex_unlock(%struct.mutex* @thermal_hwmon_list_lock) #6, !dbg !2509
  %8 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %hwmon, align 8, !dbg !2511
  store %struct.thermal_hwmon_device* %8, %struct.thermal_hwmon_device** %retval, align 8, !dbg !2512
  br label %return, !dbg !2512

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !2513

for.inc:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr9, metadata !2514, metadata !DIExpression()), !dbg !2516
  %9 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %hwmon, align 8, !dbg !2516
  %node10 = getelementptr inbounds %struct.thermal_hwmon_device, %struct.thermal_hwmon_device* %9, i32 0, i32 4, !dbg !2516
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %node10, i32 0, i32 0, !dbg !2516
  %10 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2516
  %11 = bitcast %struct.list_head* %10 to i8*, !dbg !2516
  store i8* %11, i8** %__mptr9, align 8, !dbg !2516
  br label %do.body11, !dbg !2516

do.body11:                                        ; preds = %for.inc
  br label %do.end12, !dbg !2517

do.end12:                                         ; preds = %do.body11
  %12 = load i8*, i8** %__mptr9, align 8, !dbg !2516
  %add.ptr14 = getelementptr i8, i8* %12, i64 -56, !dbg !2516
  %13 = bitcast i8* %add.ptr14 to %struct.thermal_hwmon_device*, !dbg !2516
  store %struct.thermal_hwmon_device* %13, %struct.thermal_hwmon_device** %tmp13, align 8, !dbg !2517
  %14 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %tmp13, align 8, !dbg !2516
  store %struct.thermal_hwmon_device* %14, %struct.thermal_hwmon_device** %hwmon, align 8, !dbg !2494
  br label %for.cond, !dbg !2494, !llvm.loop !2519

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(%struct.mutex* @thermal_hwmon_list_lock) #6, !dbg !2521
  store %struct.thermal_hwmon_device* null, %struct.thermal_hwmon_device** %retval, align 8, !dbg !2522
  br label %return, !dbg !2522

return:                                           ; preds = %for.end, %if.then
  %15 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %retval, align 8, !dbg !2523
  ret %struct.thermal_hwmon_device* %15, !dbg !2523
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !2524 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2527, metadata !DIExpression()), !dbg !2531
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2537, metadata !DIExpression()), !dbg !2538
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2539, metadata !DIExpression()), !dbg !2540
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2541, metadata !DIExpression()), !dbg !2542
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2543, metadata !DIExpression()), !dbg !2547
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2549, metadata !DIExpression()), !dbg !2553
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2555, metadata !DIExpression()), !dbg !2559
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !2564, metadata !DIExpression()), !dbg !2565
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !2566, metadata !DIExpression()), !dbg !2567
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2568, metadata !DIExpression()), !dbg !2569
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !2570, metadata !DIExpression()), !dbg !2571
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !2572, metadata !DIExpression()), !dbg !2573
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2574, metadata !DIExpression()), !dbg !2575
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !2576, metadata !DIExpression()), !dbg !2577
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !2578, metadata !DIExpression()), !dbg !2579
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2580, metadata !DIExpression()), !dbg !2581
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2582, metadata !DIExpression()), !dbg !2583
  %0 = load i64, i64* %size.addr, align 8, !dbg !2584
  %1 = load i32, i32* %flags.addr, align 4, !dbg !2585
  %or = or i32 %1, 256, !dbg !2586
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !2587
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #7, !dbg !2588
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !2589

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !2590
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !2591
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !2592

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !2593
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !2594
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !2595
  %call.i.i = call i32 @get_order(i64 %7) #8, !dbg !2596
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !2573
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !2597
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !2598
  %10 = load i32, i32* %order.i.i, align 4, !dbg !2599
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !2600
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !2601
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !2602
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #9, !dbg !2603
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !2603
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !2603
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !2603
  call void @llvm.assume(i1 %maskcond.i.i.i) #7, !dbg !2603
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !2604
  br label %kmalloc.exit, !dbg !2604

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !2605
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2606
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !2606
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !2608

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !2609
  br label %kmalloc_index.exit.i, !dbg !2609

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2610
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !2612
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !2613

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2614
  br label %kmalloc_index.exit.i, !dbg !2614

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2615
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !2617
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !2618

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2619
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !2620
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !2621

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !2622
  br label %kmalloc_index.exit.i, !dbg !2622

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2623
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !2625
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !2626

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2627
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !2628
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !2629

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !2630
  br label %kmalloc_index.exit.i, !dbg !2630

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2631
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !2633
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !2634

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2635
  br label %kmalloc_index.exit.i, !dbg !2635

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2636
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !2638
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !2639

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !2640
  br label %kmalloc_index.exit.i, !dbg !2640

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2641
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !2643
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !2644

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !2645
  br label %kmalloc_index.exit.i, !dbg !2645

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2646
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !2648
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !2649

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !2650
  br label %kmalloc_index.exit.i, !dbg !2650

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2651
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !2653
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !2654

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !2655
  br label %kmalloc_index.exit.i, !dbg !2655

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2656
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !2658
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !2659

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !2660
  br label %kmalloc_index.exit.i, !dbg !2660

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2661
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !2663
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !2664

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !2665
  br label %kmalloc_index.exit.i, !dbg !2665

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2666
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !2668
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !2669

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !2670
  br label %kmalloc_index.exit.i, !dbg !2670

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2671
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !2673
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !2674

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !2675
  br label %kmalloc_index.exit.i, !dbg !2675

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2676
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !2678
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !2679

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !2680
  br label %kmalloc_index.exit.i, !dbg !2680

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2681
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !2683
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !2684

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !2685
  br label %kmalloc_index.exit.i, !dbg !2685

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2686
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !2688
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !2689

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !2690
  br label %kmalloc_index.exit.i, !dbg !2690

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2691
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !2693
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !2694

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !2695
  br label %kmalloc_index.exit.i, !dbg !2695

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2696
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !2698
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !2699

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !2700
  br label %kmalloc_index.exit.i, !dbg !2700

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2701
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !2703
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !2704

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !2705
  br label %kmalloc_index.exit.i, !dbg !2705

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2706
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !2708
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !2709

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !2710
  br label %kmalloc_index.exit.i, !dbg !2710

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2711
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !2713
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !2714

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !2715
  br label %kmalloc_index.exit.i, !dbg !2715

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2716
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !2718
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !2719

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !2720
  br label %kmalloc_index.exit.i, !dbg !2720

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2721
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !2723
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !2724

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !2725
  br label %kmalloc_index.exit.i, !dbg !2725

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2726
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !2728
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !2729

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !2730
  br label %kmalloc_index.exit.i, !dbg !2730

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2731
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !2733
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !2734

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !2735
  br label %kmalloc_index.exit.i, !dbg !2735

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2736
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !2738
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !2739

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !2740
  br label %kmalloc_index.exit.i, !dbg !2740

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2741
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !2743
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !2744

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !2745
  br label %kmalloc_index.exit.i, !dbg !2745

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2746
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !2748
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !2749

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !2750
  br label %kmalloc_index.exit.i, !dbg !2750

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 382, i32 0, i64 12) #7, !dbg !2751, !srcloc !2754
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #7, !dbg !2755, !srcloc !2758
  unreachable, !dbg !2759

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !2760
  store i32 %45, i32* %index.i, align 4, !dbg !2761
  %46 = load i32, i32* %index.i, align 4, !dbg !2762
  %tobool.i = icmp ne i32 %46, 0, !dbg !2762
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !2764

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !2765
  br label %kmalloc.exit, !dbg !2765

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !2766
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2767
  %and.i.i = and i32 %48, 17, !dbg !2767
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !2767
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !2767
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !2767
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !2767
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !2769

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !2770
  br label %kmalloc_type.exit.i, !dbg !2770

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2771
  %and2.i.i = and i32 %49, 1, !dbg !2772
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !2771
  %50 = zext i1 %tobool3.i.i to i64, !dbg !2771
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !2771
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !2773
  br label %kmalloc_type.exit.i, !dbg !2773

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !2774
  %idxprom.i = zext i32 %51 to i64, !dbg !2775
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !2775
  %52 = load i32, i32* %index.i, align 4, !dbg !2776
  %idxprom6.i = zext i32 %52 to i64, !dbg !2775
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !2775
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !2775
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !2777
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !2778
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2779
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2780
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #9, !dbg !2781
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !2781
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !2781
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !2781
  call void @llvm.assume(i1 %maskcond.i.i) #7, !dbg !2781
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !2542
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2782
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !2783
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !2784
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2785
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #9, !dbg !2786
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !2787
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !2788
  store i8* %62, i8** %retval.i, align 8, !dbg !2789
  br label %kmalloc.exit, !dbg !2789

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !2790
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !2791
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #9, !dbg !2792
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !2792
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !2792
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !2792
  call void @llvm.assume(i1 %maskcond.i) #7, !dbg !2792
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !2793
  br label %kmalloc.exit, !dbg !2793

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !2794
  ret i8* %65, !dbg !2795
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !2796 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !2800, metadata !DIExpression()), !dbg !2801
  br label %do.body, !dbg !2802

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !2803

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !2805

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !2803

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !2807
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !2807
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !2807
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !2807
  br label %do.end3, !dbg !2807

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !2803

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !2809
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !2810
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !2811
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !2812
  ret void, !dbg !2813
}

; Function Attrs: noredzone
declare dso_local i64 @strlcpy(i8*, i8*, i64) #2

; Function Attrs: noredzone
declare dso_local i8* @strreplace(i8*, i8 signext, i8 signext) #2

; Function Attrs: noredzone
declare dso_local %struct.device* @hwmon_device_register_with_info(%struct.device*, i8*, i8*, %struct.hwmon_chip_info*, %struct.attribute_group**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !2814 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2818, metadata !DIExpression()), !dbg !2819
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2820
  %1 = ptrtoint i8* %0 to i64, !dbg !2820
  %2 = inttoptr i64 %1 to i8*, !dbg !2820
  %3 = ptrtoint i8* %2 to i64, !dbg !2820
  %cmp = icmp uge i64 %3, -4095, !dbg !2820
  %lnot = xor i1 %cmp, true, !dbg !2820
  %lnot1 = xor i1 %lnot, true, !dbg !2820
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2820
  %conv = sext i32 %lnot.ext to i64, !dbg !2820
  %tobool = icmp ne i64 %conv, 0, !dbg !2820
  ret i1 %tobool, !dbg !2821
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !2822 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2825, metadata !DIExpression()), !dbg !2826
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2827
  %1 = ptrtoint i8* %0 to i64, !dbg !2828
  ret i64 %1, !dbg !2829
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @temp_input_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !2830 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %temperature = alloca i32, align 4
  %ret = alloca i32, align 4
  %hwmon_attr = alloca %struct.thermal_hwmon_attr*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.thermal_hwmon_attr*, align 8
  %temp = alloca %struct.thermal_hwmon_temp*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp4 = alloca %struct.thermal_hwmon_temp*, align 8
  %tz = alloca %struct.thermal_zone_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2831, metadata !DIExpression()), !dbg !2832
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !2833, metadata !DIExpression()), !dbg !2834
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2835, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.declare(metadata i32* %temperature, metadata !2837, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2839, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.declare(metadata %struct.thermal_hwmon_attr** %hwmon_attr, metadata !2841, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2843, metadata !DIExpression()), !dbg !2845
  %0 = load %struct.device_attribute*, %struct.device_attribute** %attr.addr, align 8, !dbg !2845
  %1 = bitcast %struct.device_attribute* %0 to i8*, !dbg !2845
  store i8* %1, i8** %__mptr, align 8, !dbg !2845
  br label %do.body, !dbg !2845

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2846

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2845
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !2845
  %3 = bitcast i8* %add.ptr to %struct.thermal_hwmon_attr*, !dbg !2845
  store %struct.thermal_hwmon_attr* %3, %struct.thermal_hwmon_attr** %tmp, align 8, !dbg !2846
  %4 = load %struct.thermal_hwmon_attr*, %struct.thermal_hwmon_attr** %tmp, align 8, !dbg !2845
  store %struct.thermal_hwmon_attr* %4, %struct.thermal_hwmon_attr** %hwmon_attr, align 8, !dbg !2842
  call void @llvm.dbg.declare(metadata %struct.thermal_hwmon_temp** %temp, metadata !2848, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !2850, metadata !DIExpression()), !dbg !2852
  %5 = load %struct.thermal_hwmon_attr*, %struct.thermal_hwmon_attr** %hwmon_attr, align 8, !dbg !2852
  %6 = bitcast %struct.thermal_hwmon_attr* %5 to i8*, !dbg !2852
  store i8* %6, i8** %__mptr1, align 8, !dbg !2852
  br label %do.body2, !dbg !2852

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !2853

do.end3:                                          ; preds = %do.body2
  %7 = load i8*, i8** %__mptr1, align 8, !dbg !2852
  %add.ptr5 = getelementptr i8, i8* %7, i64 -24, !dbg !2852
  %8 = bitcast i8* %add.ptr5 to %struct.thermal_hwmon_temp*, !dbg !2852
  store %struct.thermal_hwmon_temp* %8, %struct.thermal_hwmon_temp** %tmp4, align 8, !dbg !2853
  %9 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %tmp4, align 8, !dbg !2852
  store %struct.thermal_hwmon_temp* %9, %struct.thermal_hwmon_temp** %temp, align 8, !dbg !2849
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tz, metadata !2855, metadata !DIExpression()), !dbg !2856
  %10 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %temp, align 8, !dbg !2857
  %tz6 = getelementptr inbounds %struct.thermal_hwmon_temp, %struct.thermal_hwmon_temp* %10, i32 0, i32 1, !dbg !2858
  %11 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz6, align 8, !dbg !2858
  store %struct.thermal_zone_device* %11, %struct.thermal_zone_device** %tz, align 8, !dbg !2856
  %12 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !2859
  %call = call i32 @thermal_zone_get_temp(%struct.thermal_zone_device* %12, i32* %temperature) #6, !dbg !2860
  store i32 %call, i32* %ret, align 4, !dbg !2861
  %13 = load i32, i32* %ret, align 4, !dbg !2862
  %tobool = icmp ne i32 %13, 0, !dbg !2862
  br i1 %tobool, label %if.then, label %if.end, !dbg !2864

if.then:                                          ; preds = %do.end3
  %14 = load i32, i32* %ret, align 4, !dbg !2865
  %conv = sext i32 %14 to i64, !dbg !2865
  store i64 %conv, i64* %retval, align 8, !dbg !2866
  br label %return, !dbg !2866

if.end:                                           ; preds = %do.end3
  %15 = load i8*, i8** %buf.addr, align 8, !dbg !2867
  %16 = load i32, i32* %temperature, align 4, !dbg !2868
  %call7 = call i32 (i8*, i8*, ...) @sprintf(i8* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %16) #6, !dbg !2869
  %conv8 = sext i32 %call7 to i64, !dbg !2869
  store i64 %conv8, i64* %retval, align 8, !dbg !2870
  br label %return, !dbg !2870

return:                                           ; preds = %if.end, %if.then
  %17 = load i64, i64* %retval, align 8, !dbg !2871
  ret i64 %17, !dbg !2871
}

; Function Attrs: noredzone
declare dso_local i32 @device_create_file(%struct.device*, %struct.device_attribute*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @thermal_zone_crit_temp_valid(%struct.thermal_zone_device* %tz) #0 !dbg !2872 {
entry:
  %tz.addr = alloca %struct.thermal_zone_device*, align 8
  %temp = alloca i32, align 4
  store %struct.thermal_zone_device* %tz, %struct.thermal_zone_device** %tz.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tz.addr, metadata !2875, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.declare(metadata i32* %temp, metadata !2877, metadata !DIExpression()), !dbg !2878
  %0 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2879
  %ops = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %0, i32 0, i32 21, !dbg !2880
  %1 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %ops, align 8, !dbg !2880
  %get_crit_temp = getelementptr inbounds %struct.thermal_zone_device_ops, %struct.thermal_zone_device_ops* %1, i32 0, i32 10, !dbg !2881
  %2 = load i32 (%struct.thermal_zone_device*, i32*)*, i32 (%struct.thermal_zone_device*, i32*)** %get_crit_temp, align 8, !dbg !2881
  %tobool = icmp ne i32 (%struct.thermal_zone_device*, i32*)* %2, null, !dbg !2879
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !2882

land.rhs:                                         ; preds = %entry
  %3 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2883
  %ops1 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %3, i32 0, i32 21, !dbg !2884
  %4 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %ops1, align 8, !dbg !2884
  %get_crit_temp2 = getelementptr inbounds %struct.thermal_zone_device_ops, %struct.thermal_zone_device_ops* %4, i32 0, i32 10, !dbg !2885
  %5 = load i32 (%struct.thermal_zone_device*, i32*)*, i32 (%struct.thermal_zone_device*, i32*)** %get_crit_temp2, align 8, !dbg !2885
  %6 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2886
  %call = call i32 %5(%struct.thermal_zone_device* %6, i32* %temp) #6, !dbg !2883
  %tobool3 = icmp ne i32 %call, 0, !dbg !2887
  %lnot = xor i1 %tobool3, true, !dbg !2887
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %7 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ], !dbg !2888
  ret i1 %7, !dbg !2889
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @temp_crit_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !2890 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %hwmon_attr = alloca %struct.thermal_hwmon_attr*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.thermal_hwmon_attr*, align 8
  %temp = alloca %struct.thermal_hwmon_temp*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp4 = alloca %struct.thermal_hwmon_temp*, align 8
  %tz = alloca %struct.thermal_zone_device*, align 8
  %temperature = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2891, metadata !DIExpression()), !dbg !2892
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !2893, metadata !DIExpression()), !dbg !2894
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2895, metadata !DIExpression()), !dbg !2896
  call void @llvm.dbg.declare(metadata %struct.thermal_hwmon_attr** %hwmon_attr, metadata !2897, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2899, metadata !DIExpression()), !dbg !2901
  %0 = load %struct.device_attribute*, %struct.device_attribute** %attr.addr, align 8, !dbg !2901
  %1 = bitcast %struct.device_attribute* %0 to i8*, !dbg !2901
  store i8* %1, i8** %__mptr, align 8, !dbg !2901
  br label %do.body, !dbg !2901

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2902

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2901
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !2901
  %3 = bitcast i8* %add.ptr to %struct.thermal_hwmon_attr*, !dbg !2901
  store %struct.thermal_hwmon_attr* %3, %struct.thermal_hwmon_attr** %tmp, align 8, !dbg !2902
  %4 = load %struct.thermal_hwmon_attr*, %struct.thermal_hwmon_attr** %tmp, align 8, !dbg !2901
  store %struct.thermal_hwmon_attr* %4, %struct.thermal_hwmon_attr** %hwmon_attr, align 8, !dbg !2898
  call void @llvm.dbg.declare(metadata %struct.thermal_hwmon_temp** %temp, metadata !2904, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !2906, metadata !DIExpression()), !dbg !2908
  %5 = load %struct.thermal_hwmon_attr*, %struct.thermal_hwmon_attr** %hwmon_attr, align 8, !dbg !2908
  %6 = bitcast %struct.thermal_hwmon_attr* %5 to i8*, !dbg !2908
  store i8* %6, i8** %__mptr1, align 8, !dbg !2908
  br label %do.body2, !dbg !2908

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !2909

do.end3:                                          ; preds = %do.body2
  %7 = load i8*, i8** %__mptr1, align 8, !dbg !2908
  %add.ptr5 = getelementptr i8, i8* %7, i64 -72, !dbg !2908
  %8 = bitcast i8* %add.ptr5 to %struct.thermal_hwmon_temp*, !dbg !2908
  store %struct.thermal_hwmon_temp* %8, %struct.thermal_hwmon_temp** %tmp4, align 8, !dbg !2909
  %9 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %tmp4, align 8, !dbg !2908
  store %struct.thermal_hwmon_temp* %9, %struct.thermal_hwmon_temp** %temp, align 8, !dbg !2905
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tz, metadata !2911, metadata !DIExpression()), !dbg !2912
  %10 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %temp, align 8, !dbg !2913
  %tz6 = getelementptr inbounds %struct.thermal_hwmon_temp, %struct.thermal_hwmon_temp* %10, i32 0, i32 1, !dbg !2914
  %11 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz6, align 8, !dbg !2914
  store %struct.thermal_zone_device* %11, %struct.thermal_zone_device** %tz, align 8, !dbg !2912
  call void @llvm.dbg.declare(metadata i32* %temperature, metadata !2915, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2917, metadata !DIExpression()), !dbg !2918
  %12 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !2919
  %ops = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %12, i32 0, i32 21, !dbg !2920
  %13 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %ops, align 8, !dbg !2920
  %get_crit_temp = getelementptr inbounds %struct.thermal_zone_device_ops, %struct.thermal_zone_device_ops* %13, i32 0, i32 10, !dbg !2921
  %14 = load i32 (%struct.thermal_zone_device*, i32*)*, i32 (%struct.thermal_zone_device*, i32*)** %get_crit_temp, align 8, !dbg !2921
  %15 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !2922
  %call = call i32 %14(%struct.thermal_zone_device* %15, i32* %temperature) #6, !dbg !2919
  store i32 %call, i32* %ret, align 4, !dbg !2923
  %16 = load i32, i32* %ret, align 4, !dbg !2924
  %tobool = icmp ne i32 %16, 0, !dbg !2924
  br i1 %tobool, label %if.then, label %if.end, !dbg !2926

if.then:                                          ; preds = %do.end3
  %17 = load i32, i32* %ret, align 4, !dbg !2927
  %conv = sext i32 %17 to i64, !dbg !2927
  store i64 %conv, i64* %retval, align 8, !dbg !2928
  br label %return, !dbg !2928

if.end:                                           ; preds = %do.end3
  %18 = load i8*, i8** %buf.addr, align 8, !dbg !2929
  %19 = load i32, i32* %temperature, align 4, !dbg !2930
  %call7 = call i32 (i8*, i8*, ...) @sprintf(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %19) #6, !dbg !2931
  %conv8 = sext i32 %call7 to i64, !dbg !2931
  store i64 %conv8, i64* %retval, align 8, !dbg !2932
  br label %return, !dbg !2932

return:                                           ; preds = %if.end, %if.then
  %20 = load i64, i64* %retval, align 8, !dbg !2933
  ret i64 %20, !dbg !2933
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !2934 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !2937, metadata !DIExpression()), !dbg !2938
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !2939, metadata !DIExpression()), !dbg !2940
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !2941
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !2942
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !2943
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !2943
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !2944
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #6, !dbg !2945
  ret void, !dbg !2946
}

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noredzone
declare dso_local void @device_remove_file(%struct.device*, %struct.device_attribute*) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noredzone
declare dso_local void @hwmon_device_unregister(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @thermal_remove_hwmon_sysfs(%struct.thermal_zone_device* %tz) #0 !dbg !2947 {
entry:
  %tz.addr = alloca %struct.thermal_zone_device*, align 8
  %hwmon = alloca %struct.thermal_hwmon_device*, align 8
  %temp = alloca %struct.thermal_hwmon_temp*, align 8
  store %struct.thermal_zone_device* %tz, %struct.thermal_zone_device** %tz.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tz.addr, metadata !2948, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.declare(metadata %struct.thermal_hwmon_device** %hwmon, metadata !2950, metadata !DIExpression()), !dbg !2951
  call void @llvm.dbg.declare(metadata %struct.thermal_hwmon_temp** %temp, metadata !2952, metadata !DIExpression()), !dbg !2953
  %0 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2954
  %call = call %struct.thermal_hwmon_device* @thermal_hwmon_lookup_by_type(%struct.thermal_zone_device* %0) #6, !dbg !2955
  store %struct.thermal_hwmon_device* %call, %struct.thermal_hwmon_device** %hwmon, align 8, !dbg !2956
  %1 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %hwmon, align 8, !dbg !2957
  %tobool = icmp ne %struct.thermal_hwmon_device* %1, null, !dbg !2957
  %lnot = xor i1 %tobool, true, !dbg !2957
  %lnot1 = xor i1 %lnot, true, !dbg !2957
  %lnot2 = xor i1 %lnot1, true, !dbg !2957
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2957
  %conv = sext i32 %lnot.ext to i64, !dbg !2957
  %tobool3 = icmp ne i64 %conv, 0, !dbg !2957
  br i1 %tobool3, label %if.then, label %if.end, !dbg !2959

if.then:                                          ; preds = %entry
  br label %return, !dbg !2960

if.end:                                           ; preds = %entry
  %2 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %hwmon, align 8, !dbg !2962
  %3 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2963
  %call4 = call %struct.thermal_hwmon_temp* @thermal_hwmon_lookup_temp(%struct.thermal_hwmon_device* %2, %struct.thermal_zone_device* %3) #6, !dbg !2964
  store %struct.thermal_hwmon_temp* %call4, %struct.thermal_hwmon_temp** %temp, align 8, !dbg !2965
  %4 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %temp, align 8, !dbg !2966
  %tobool5 = icmp ne %struct.thermal_hwmon_temp* %4, null, !dbg !2966
  %lnot6 = xor i1 %tobool5, true, !dbg !2966
  %lnot8 = xor i1 %lnot6, true, !dbg !2966
  %lnot10 = xor i1 %lnot8, true, !dbg !2966
  %lnot.ext11 = zext i1 %lnot10 to i32, !dbg !2966
  %conv12 = sext i32 %lnot.ext11 to i64, !dbg !2966
  %tobool13 = icmp ne i64 %conv12, 0, !dbg !2966
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !2968

if.then14:                                        ; preds = %if.end
  br label %return, !dbg !2969

if.end15:                                         ; preds = %if.end
  %5 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %hwmon, align 8, !dbg !2971
  %device = getelementptr inbounds %struct.thermal_hwmon_device, %struct.thermal_hwmon_device* %5, i32 0, i32 1, !dbg !2972
  %6 = load %struct.device*, %struct.device** %device, align 8, !dbg !2972
  %7 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %temp, align 8, !dbg !2973
  %temp_input = getelementptr inbounds %struct.thermal_hwmon_temp, %struct.thermal_hwmon_temp* %7, i32 0, i32 2, !dbg !2974
  %attr = getelementptr inbounds %struct.thermal_hwmon_attr, %struct.thermal_hwmon_attr* %temp_input, i32 0, i32 0, !dbg !2975
  call void @device_remove_file(%struct.device* %6, %struct.device_attribute* %attr) #6, !dbg !2976
  %8 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2977
  %call16 = call zeroext i1 @thermal_zone_crit_temp_valid(%struct.thermal_zone_device* %8) #6, !dbg !2979
  br i1 %call16, label %if.then17, label %if.end20, !dbg !2980

if.then17:                                        ; preds = %if.end15
  %9 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %hwmon, align 8, !dbg !2981
  %device18 = getelementptr inbounds %struct.thermal_hwmon_device, %struct.thermal_hwmon_device* %9, i32 0, i32 1, !dbg !2982
  %10 = load %struct.device*, %struct.device** %device18, align 8, !dbg !2982
  %11 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %temp, align 8, !dbg !2983
  %temp_crit = getelementptr inbounds %struct.thermal_hwmon_temp, %struct.thermal_hwmon_temp* %11, i32 0, i32 3, !dbg !2984
  %attr19 = getelementptr inbounds %struct.thermal_hwmon_attr, %struct.thermal_hwmon_attr* %temp_crit, i32 0, i32 0, !dbg !2985
  call void @device_remove_file(%struct.device* %10, %struct.device_attribute* %attr19) #6, !dbg !2986
  br label %if.end20, !dbg !2986

if.end20:                                         ; preds = %if.then17, %if.end15
  call void @mutex_lock(%struct.mutex* @thermal_hwmon_list_lock) #6, !dbg !2987
  %12 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %temp, align 8, !dbg !2988
  %hwmon_node = getelementptr inbounds %struct.thermal_hwmon_temp, %struct.thermal_hwmon_temp* %12, i32 0, i32 0, !dbg !2989
  call void @list_del(%struct.list_head* %hwmon_node) #6, !dbg !2990
  %13 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %temp, align 8, !dbg !2991
  %14 = bitcast %struct.thermal_hwmon_temp* %13 to i8*, !dbg !2991
  call void @kfree(i8* %14) #6, !dbg !2992
  %15 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %hwmon, align 8, !dbg !2993
  %tz_list = getelementptr inbounds %struct.thermal_hwmon_device, %struct.thermal_hwmon_device* %15, i32 0, i32 3, !dbg !2995
  %call21 = call i32 @list_empty(%struct.list_head* %tz_list) #6, !dbg !2996
  %tobool22 = icmp ne i32 %call21, 0, !dbg !2996
  br i1 %tobool22, label %if.end24, label %if.then23, !dbg !2997

if.then23:                                        ; preds = %if.end20
  call void @mutex_unlock(%struct.mutex* @thermal_hwmon_list_lock) #6, !dbg !2998
  br label %return, !dbg !3000

if.end24:                                         ; preds = %if.end20
  %16 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %hwmon, align 8, !dbg !3001
  %node = getelementptr inbounds %struct.thermal_hwmon_device, %struct.thermal_hwmon_device* %16, i32 0, i32 4, !dbg !3002
  call void @list_del(%struct.list_head* %node) #6, !dbg !3003
  call void @mutex_unlock(%struct.mutex* @thermal_hwmon_list_lock) #6, !dbg !3004
  %17 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %hwmon, align 8, !dbg !3005
  %device25 = getelementptr inbounds %struct.thermal_hwmon_device, %struct.thermal_hwmon_device* %17, i32 0, i32 1, !dbg !3006
  %18 = load %struct.device*, %struct.device** %device25, align 8, !dbg !3006
  call void @hwmon_device_unregister(%struct.device* %18) #6, !dbg !3007
  %19 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %hwmon, align 8, !dbg !3008
  %20 = bitcast %struct.thermal_hwmon_device* %19 to i8*, !dbg !3008
  call void @kfree(i8* %20) #6, !dbg !3009
  br label %return, !dbg !3010

return:                                           ; preds = %if.end24, %if.then23, %if.then14, %if.then
  ret void, !dbg !3010
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.thermal_hwmon_temp* @thermal_hwmon_lookup_temp(%struct.thermal_hwmon_device* %hwmon, %struct.thermal_zone_device* %tz) #0 !dbg !3011 {
entry:
  %retval = alloca %struct.thermal_hwmon_temp*, align 8
  %hwmon.addr = alloca %struct.thermal_hwmon_device*, align 8
  %tz.addr = alloca %struct.thermal_zone_device*, align 8
  %temp = alloca %struct.thermal_hwmon_temp*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.thermal_hwmon_temp*, align 8
  %__mptr4 = alloca i8*, align 8
  %tmp9 = alloca %struct.thermal_hwmon_temp*, align 8
  store %struct.thermal_hwmon_device* %hwmon, %struct.thermal_hwmon_device** %hwmon.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_hwmon_device** %hwmon.addr, metadata !3016, metadata !DIExpression()), !dbg !3017
  store %struct.thermal_zone_device* %tz, %struct.thermal_zone_device** %tz.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tz.addr, metadata !3018, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.declare(metadata %struct.thermal_hwmon_temp** %temp, metadata !3020, metadata !DIExpression()), !dbg !3021
  call void @mutex_lock(%struct.mutex* @thermal_hwmon_list_lock) #6, !dbg !3022
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3023, metadata !DIExpression()), !dbg !3026
  %0 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %hwmon.addr, align 8, !dbg !3026
  %tz_list = getelementptr inbounds %struct.thermal_hwmon_device, %struct.thermal_hwmon_device* %0, i32 0, i32 3, !dbg !3026
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %tz_list, i32 0, i32 0, !dbg !3026
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3026
  %2 = bitcast %struct.list_head* %1 to i8*, !dbg !3026
  store i8* %2, i8** %__mptr, align 8, !dbg !3026
  br label %do.body, !dbg !3026

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3027

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !3026
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !3026
  %4 = bitcast i8* %add.ptr to %struct.thermal_hwmon_temp*, !dbg !3026
  store %struct.thermal_hwmon_temp* %4, %struct.thermal_hwmon_temp** %tmp, align 8, !dbg !3027
  %5 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %tmp, align 8, !dbg !3026
  store %struct.thermal_hwmon_temp* %5, %struct.thermal_hwmon_temp** %temp, align 8, !dbg !3029
  br label %for.cond, !dbg !3029

for.cond:                                         ; preds = %do.end8, %do.end
  %6 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %temp, align 8, !dbg !3030
  %hwmon_node = getelementptr inbounds %struct.thermal_hwmon_temp, %struct.thermal_hwmon_temp* %6, i32 0, i32 0, !dbg !3030
  %7 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %hwmon.addr, align 8, !dbg !3030
  %tz_list1 = getelementptr inbounds %struct.thermal_hwmon_device, %struct.thermal_hwmon_device* %7, i32 0, i32 3, !dbg !3030
  %cmp = icmp eq %struct.list_head* %hwmon_node, %tz_list1, !dbg !3030
  %lnot = xor i1 %cmp, true, !dbg !3030
  br i1 %lnot, label %for.body, label %for.end, !dbg !3029

for.body:                                         ; preds = %for.cond
  %8 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %temp, align 8, !dbg !3032
  %tz2 = getelementptr inbounds %struct.thermal_hwmon_temp, %struct.thermal_hwmon_temp* %8, i32 0, i32 1, !dbg !3034
  %9 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz2, align 8, !dbg !3034
  %10 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !3035
  %cmp3 = icmp eq %struct.thermal_zone_device* %9, %10, !dbg !3036
  br i1 %cmp3, label %if.then, label %if.end, !dbg !3037

if.then:                                          ; preds = %for.body
  call void @mutex_unlock(%struct.mutex* @thermal_hwmon_list_lock) #6, !dbg !3038
  %11 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %temp, align 8, !dbg !3040
  store %struct.thermal_hwmon_temp* %11, %struct.thermal_hwmon_temp** %retval, align 8, !dbg !3041
  br label %return, !dbg !3041

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !3035

for.inc:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr4, metadata !3042, metadata !DIExpression()), !dbg !3044
  %12 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %temp, align 8, !dbg !3044
  %hwmon_node5 = getelementptr inbounds %struct.thermal_hwmon_temp, %struct.thermal_hwmon_temp* %12, i32 0, i32 0, !dbg !3044
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %hwmon_node5, i32 0, i32 0, !dbg !3044
  %13 = load %struct.list_head*, %struct.list_head** %next6, align 8, !dbg !3044
  %14 = bitcast %struct.list_head* %13 to i8*, !dbg !3044
  store i8* %14, i8** %__mptr4, align 8, !dbg !3044
  br label %do.body7, !dbg !3044

do.body7:                                         ; preds = %for.inc
  br label %do.end8, !dbg !3045

do.end8:                                          ; preds = %do.body7
  %15 = load i8*, i8** %__mptr4, align 8, !dbg !3044
  %add.ptr10 = getelementptr i8, i8* %15, i64 0, !dbg !3044
  %16 = bitcast i8* %add.ptr10 to %struct.thermal_hwmon_temp*, !dbg !3044
  store %struct.thermal_hwmon_temp* %16, %struct.thermal_hwmon_temp** %tmp9, align 8, !dbg !3045
  %17 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %tmp9, align 8, !dbg !3044
  store %struct.thermal_hwmon_temp* %17, %struct.thermal_hwmon_temp** %temp, align 8, !dbg !3030
  br label %for.cond, !dbg !3030, !llvm.loop !3047

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(%struct.mutex* @thermal_hwmon_list_lock) #6, !dbg !3049
  store %struct.thermal_hwmon_temp* null, %struct.thermal_hwmon_temp** %retval, align 8, !dbg !3050
  br label %return, !dbg !3050

return:                                           ; preds = %for.end, %if.then
  %18 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %retval, align 8, !dbg !3051
  ret %struct.thermal_hwmon_temp* %18, !dbg !3051
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !3052 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !3053, metadata !DIExpression()), !dbg !3054
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3055
  call void @__list_del_entry(%struct.list_head* %0) #6, !dbg !3056
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3057
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !3058
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !3059
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3060
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !3061
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !3062
  ret void, !dbg !3063
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @list_empty(%struct.list_head* %head) #0 !dbg !3064 {
entry:
  %head.addr = alloca %struct.list_head*, align 8
  %tmp = alloca %struct.list_head*, align 8
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !3069, metadata !DIExpression()), !dbg !3070
  br label %do.body, !dbg !3071

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3073

do.end:                                           ; preds = %do.body
  %0 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !3071
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !3071
  %1 = load volatile %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3071
  store %struct.list_head* %1, %struct.list_head** %tmp, align 8, !dbg !3073
  %2 = load %struct.list_head*, %struct.list_head** %tmp, align 8, !dbg !3071
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !3075
  %cmp = icmp eq %struct.list_head* %2, %3, !dbg !3076
  %conv = zext i1 %cmp to i32, !dbg !3076
  ret i32 %conv, !dbg !3077
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @devm_thermal_add_hwmon_sysfs(%struct.thermal_zone_device* %tz) #0 !dbg !3078 {
entry:
  %retval = alloca i32, align 4
  %tz.addr = alloca %struct.thermal_zone_device*, align 8
  %ptr = alloca %struct.thermal_zone_device**, align 8
  %ret = alloca i32, align 4
  store %struct.thermal_zone_device* %tz, %struct.thermal_zone_device** %tz.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tz.addr, metadata !3079, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device*** %ptr, metadata !3081, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3083, metadata !DIExpression()), !dbg !3084
  %call = call i8* @devres_alloc(void (%struct.device*, i8*)* @devm_thermal_hwmon_release, i64 8, i32 3264) #6, !dbg !3085
  %0 = bitcast i8* %call to %struct.thermal_zone_device**, !dbg !3085
  store %struct.thermal_zone_device** %0, %struct.thermal_zone_device*** %ptr, align 8, !dbg !3086
  %1 = load %struct.thermal_zone_device**, %struct.thermal_zone_device*** %ptr, align 8, !dbg !3087
  %tobool = icmp ne %struct.thermal_zone_device** %1, null, !dbg !3087
  br i1 %tobool, label %if.end, label %if.then, !dbg !3089

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !3090
  br label %return, !dbg !3090

if.end:                                           ; preds = %entry
  %2 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !3091
  %call1 = call i32 @thermal_add_hwmon_sysfs(%struct.thermal_zone_device* %2) #6, !dbg !3092
  store i32 %call1, i32* %ret, align 4, !dbg !3093
  %3 = load i32, i32* %ret, align 4, !dbg !3094
  %tobool2 = icmp ne i32 %3, 0, !dbg !3094
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !3096

if.then3:                                         ; preds = %if.end
  %4 = load %struct.thermal_zone_device**, %struct.thermal_zone_device*** %ptr, align 8, !dbg !3097
  %5 = bitcast %struct.thermal_zone_device** %4 to i8*, !dbg !3097
  call void @devres_free(i8* %5) #6, !dbg !3099
  %6 = load i32, i32* %ret, align 4, !dbg !3100
  store i32 %6, i32* %retval, align 4, !dbg !3101
  br label %return, !dbg !3101

if.end4:                                          ; preds = %if.end
  %7 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !3102
  %8 = load %struct.thermal_zone_device**, %struct.thermal_zone_device*** %ptr, align 8, !dbg !3103
  store %struct.thermal_zone_device* %7, %struct.thermal_zone_device** %8, align 8, !dbg !3104
  %9 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !3105
  %device = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %9, i32 0, i32 2, !dbg !3106
  %10 = load %struct.thermal_zone_device**, %struct.thermal_zone_device*** %ptr, align 8, !dbg !3107
  %11 = bitcast %struct.thermal_zone_device** %10 to i8*, !dbg !3107
  call void @devres_add(%struct.device* %device, i8* %11) #6, !dbg !3108
  %12 = load i32, i32* %ret, align 4, !dbg !3109
  store i32 %12, i32* %retval, align 4, !dbg !3110
  br label %return, !dbg !3110

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !3111
  ret i32 %13, !dbg !3111
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devres_alloc(void (%struct.device*, i8*)* %release, i64 %size, i32 %gfp) #0 !dbg !3112 {
entry:
  %release.addr = alloca void (%struct.device*, i8*)*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store void (%struct.device*, i8*)* %release, void (%struct.device*, i8*)** %release.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.device*, i8*)** %release.addr, metadata !3119, metadata !DIExpression()), !dbg !3120
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3121, metadata !DIExpression()), !dbg !3122
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !3123, metadata !DIExpression()), !dbg !3124
  %0 = load void (%struct.device*, i8*)*, void (%struct.device*, i8*)** %release.addr, align 8, !dbg !3125
  %1 = load i64, i64* %size.addr, align 8, !dbg !3126
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !3127
  %call = call noalias i8* @devres_alloc_node(void (%struct.device*, i8*)* %0, i64 %1, i32 %2, i32 -1) #6, !dbg !3128
  ret i8* %call, !dbg !3129
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @devm_thermal_hwmon_release(%struct.device* %dev, i8* %res) #0 !dbg !3130 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %res.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3131, metadata !DIExpression()), !dbg !3132
  store i8* %res, i8** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %res.addr, metadata !3133, metadata !DIExpression()), !dbg !3134
  %0 = load i8*, i8** %res.addr, align 8, !dbg !3135
  %1 = bitcast i8* %0 to %struct.thermal_zone_device**, !dbg !3136
  %2 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %1, align 8, !dbg !3137
  call void @thermal_remove_hwmon_sysfs(%struct.thermal_zone_device* %2) #6, !dbg !3138
  ret void, !dbg !3139
}

; Function Attrs: noredzone
declare dso_local void @devres_free(i8*) #2

; Function Attrs: noredzone
declare dso_local void @devres_add(%struct.device*, i8*) #2

; Function Attrs: noredzone
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #4

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #5 !dbg !3140 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3144, metadata !DIExpression()), !dbg !3149
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3151, metadata !DIExpression()), !dbg !3152
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3153, metadata !DIExpression()), !dbg !3154
  %0 = load i64, i64* %size.addr, align 8, !dbg !3155
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3157
  br i1 %1, label %if.then, label %if.end447, !dbg !3158

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !3159
  %tobool = icmp ne i64 %2, 0, !dbg !3159
  br i1 %tobool, label %if.end, label %if.then1, !dbg !3162

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !3163
  br label %return, !dbg !3163

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !3164
  %cmp = icmp ult i64 %3, 4096, !dbg !3166
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3167

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3168
  br label %return, !dbg !3168

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub = sub i64 %4, 1, !dbg !3169
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !3169
  br i1 %5, label %cond.true, label %cond.false442, !dbg !3169

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub4 = sub i64 %6, 1, !dbg !3169
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !3169
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !3169

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub6 = sub i64 %8, 1, !dbg !3169
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !3169
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !3169

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !3169

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub9 = sub i64 %9, 1, !dbg !3169
  %and = and i64 %sub9, -9223372036854775808, !dbg !3169
  %tobool10 = icmp ne i64 %and, 0, !dbg !3169
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !3169

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !3169

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub13 = sub i64 %10, 1, !dbg !3169
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !3169
  %tobool15 = icmp ne i64 %and14, 0, !dbg !3169
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !3169

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !3169

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub18 = sub i64 %11, 1, !dbg !3169
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !3169
  %tobool20 = icmp ne i64 %and19, 0, !dbg !3169
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !3169

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !3169

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub23 = sub i64 %12, 1, !dbg !3169
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !3169
  %tobool25 = icmp ne i64 %and24, 0, !dbg !3169
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !3169

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !3169

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub28 = sub i64 %13, 1, !dbg !3169
  %and29 = and i64 %sub28, 576460752303423488, !dbg !3169
  %tobool30 = icmp ne i64 %and29, 0, !dbg !3169
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !3169

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !3169

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub33 = sub i64 %14, 1, !dbg !3169
  %and34 = and i64 %sub33, 288230376151711744, !dbg !3169
  %tobool35 = icmp ne i64 %and34, 0, !dbg !3169
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !3169

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !3169

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub38 = sub i64 %15, 1, !dbg !3169
  %and39 = and i64 %sub38, 144115188075855872, !dbg !3169
  %tobool40 = icmp ne i64 %and39, 0, !dbg !3169
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !3169

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !3169

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub43 = sub i64 %16, 1, !dbg !3169
  %and44 = and i64 %sub43, 72057594037927936, !dbg !3169
  %tobool45 = icmp ne i64 %and44, 0, !dbg !3169
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !3169

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !3169

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub48 = sub i64 %17, 1, !dbg !3169
  %and49 = and i64 %sub48, 36028797018963968, !dbg !3169
  %tobool50 = icmp ne i64 %and49, 0, !dbg !3169
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !3169

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !3169

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub53 = sub i64 %18, 1, !dbg !3169
  %and54 = and i64 %sub53, 18014398509481984, !dbg !3169
  %tobool55 = icmp ne i64 %and54, 0, !dbg !3169
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !3169

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !3169

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub58 = sub i64 %19, 1, !dbg !3169
  %and59 = and i64 %sub58, 9007199254740992, !dbg !3169
  %tobool60 = icmp ne i64 %and59, 0, !dbg !3169
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !3169

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !3169

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub63 = sub i64 %20, 1, !dbg !3169
  %and64 = and i64 %sub63, 4503599627370496, !dbg !3169
  %tobool65 = icmp ne i64 %and64, 0, !dbg !3169
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !3169

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !3169

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub68 = sub i64 %21, 1, !dbg !3169
  %and69 = and i64 %sub68, 2251799813685248, !dbg !3169
  %tobool70 = icmp ne i64 %and69, 0, !dbg !3169
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !3169

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !3169

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub73 = sub i64 %22, 1, !dbg !3169
  %and74 = and i64 %sub73, 1125899906842624, !dbg !3169
  %tobool75 = icmp ne i64 %and74, 0, !dbg !3169
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !3169

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !3169

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub78 = sub i64 %23, 1, !dbg !3169
  %and79 = and i64 %sub78, 562949953421312, !dbg !3169
  %tobool80 = icmp ne i64 %and79, 0, !dbg !3169
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !3169

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !3169

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub83 = sub i64 %24, 1, !dbg !3169
  %and84 = and i64 %sub83, 281474976710656, !dbg !3169
  %tobool85 = icmp ne i64 %and84, 0, !dbg !3169
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !3169

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !3169

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub88 = sub i64 %25, 1, !dbg !3169
  %and89 = and i64 %sub88, 140737488355328, !dbg !3169
  %tobool90 = icmp ne i64 %and89, 0, !dbg !3169
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !3169

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !3169

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub93 = sub i64 %26, 1, !dbg !3169
  %and94 = and i64 %sub93, 70368744177664, !dbg !3169
  %tobool95 = icmp ne i64 %and94, 0, !dbg !3169
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !3169

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !3169

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub98 = sub i64 %27, 1, !dbg !3169
  %and99 = and i64 %sub98, 35184372088832, !dbg !3169
  %tobool100 = icmp ne i64 %and99, 0, !dbg !3169
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !3169

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !3169

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub103 = sub i64 %28, 1, !dbg !3169
  %and104 = and i64 %sub103, 17592186044416, !dbg !3169
  %tobool105 = icmp ne i64 %and104, 0, !dbg !3169
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !3169

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !3169

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub108 = sub i64 %29, 1, !dbg !3169
  %and109 = and i64 %sub108, 8796093022208, !dbg !3169
  %tobool110 = icmp ne i64 %and109, 0, !dbg !3169
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !3169

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !3169

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub113 = sub i64 %30, 1, !dbg !3169
  %and114 = and i64 %sub113, 4398046511104, !dbg !3169
  %tobool115 = icmp ne i64 %and114, 0, !dbg !3169
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !3169

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !3169

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub118 = sub i64 %31, 1, !dbg !3169
  %and119 = and i64 %sub118, 2199023255552, !dbg !3169
  %tobool120 = icmp ne i64 %and119, 0, !dbg !3169
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !3169

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !3169

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub123 = sub i64 %32, 1, !dbg !3169
  %and124 = and i64 %sub123, 1099511627776, !dbg !3169
  %tobool125 = icmp ne i64 %and124, 0, !dbg !3169
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !3169

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !3169

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub128 = sub i64 %33, 1, !dbg !3169
  %and129 = and i64 %sub128, 549755813888, !dbg !3169
  %tobool130 = icmp ne i64 %and129, 0, !dbg !3169
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !3169

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !3169

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub133 = sub i64 %34, 1, !dbg !3169
  %and134 = and i64 %sub133, 274877906944, !dbg !3169
  %tobool135 = icmp ne i64 %and134, 0, !dbg !3169
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !3169

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !3169

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub138 = sub i64 %35, 1, !dbg !3169
  %and139 = and i64 %sub138, 137438953472, !dbg !3169
  %tobool140 = icmp ne i64 %and139, 0, !dbg !3169
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !3169

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !3169

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub143 = sub i64 %36, 1, !dbg !3169
  %and144 = and i64 %sub143, 68719476736, !dbg !3169
  %tobool145 = icmp ne i64 %and144, 0, !dbg !3169
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !3169

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !3169

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub148 = sub i64 %37, 1, !dbg !3169
  %and149 = and i64 %sub148, 34359738368, !dbg !3169
  %tobool150 = icmp ne i64 %and149, 0, !dbg !3169
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !3169

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !3169

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub153 = sub i64 %38, 1, !dbg !3169
  %and154 = and i64 %sub153, 17179869184, !dbg !3169
  %tobool155 = icmp ne i64 %and154, 0, !dbg !3169
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !3169

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !3169

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub158 = sub i64 %39, 1, !dbg !3169
  %and159 = and i64 %sub158, 8589934592, !dbg !3169
  %tobool160 = icmp ne i64 %and159, 0, !dbg !3169
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !3169

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !3169

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub163 = sub i64 %40, 1, !dbg !3169
  %and164 = and i64 %sub163, 4294967296, !dbg !3169
  %tobool165 = icmp ne i64 %and164, 0, !dbg !3169
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !3169

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !3169

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub168 = sub i64 %41, 1, !dbg !3169
  %and169 = and i64 %sub168, 2147483648, !dbg !3169
  %tobool170 = icmp ne i64 %and169, 0, !dbg !3169
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !3169

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !3169

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub173 = sub i64 %42, 1, !dbg !3169
  %and174 = and i64 %sub173, 1073741824, !dbg !3169
  %tobool175 = icmp ne i64 %and174, 0, !dbg !3169
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !3169

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !3169

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub178 = sub i64 %43, 1, !dbg !3169
  %and179 = and i64 %sub178, 536870912, !dbg !3169
  %tobool180 = icmp ne i64 %and179, 0, !dbg !3169
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !3169

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !3169

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub183 = sub i64 %44, 1, !dbg !3169
  %and184 = and i64 %sub183, 268435456, !dbg !3169
  %tobool185 = icmp ne i64 %and184, 0, !dbg !3169
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !3169

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !3169

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub188 = sub i64 %45, 1, !dbg !3169
  %and189 = and i64 %sub188, 134217728, !dbg !3169
  %tobool190 = icmp ne i64 %and189, 0, !dbg !3169
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !3169

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !3169

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub193 = sub i64 %46, 1, !dbg !3169
  %and194 = and i64 %sub193, 67108864, !dbg !3169
  %tobool195 = icmp ne i64 %and194, 0, !dbg !3169
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !3169

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !3169

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub198 = sub i64 %47, 1, !dbg !3169
  %and199 = and i64 %sub198, 33554432, !dbg !3169
  %tobool200 = icmp ne i64 %and199, 0, !dbg !3169
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !3169

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !3169

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub203 = sub i64 %48, 1, !dbg !3169
  %and204 = and i64 %sub203, 16777216, !dbg !3169
  %tobool205 = icmp ne i64 %and204, 0, !dbg !3169
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !3169

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !3169

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub208 = sub i64 %49, 1, !dbg !3169
  %and209 = and i64 %sub208, 8388608, !dbg !3169
  %tobool210 = icmp ne i64 %and209, 0, !dbg !3169
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !3169

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !3169

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub213 = sub i64 %50, 1, !dbg !3169
  %and214 = and i64 %sub213, 4194304, !dbg !3169
  %tobool215 = icmp ne i64 %and214, 0, !dbg !3169
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !3169

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !3169

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub218 = sub i64 %51, 1, !dbg !3169
  %and219 = and i64 %sub218, 2097152, !dbg !3169
  %tobool220 = icmp ne i64 %and219, 0, !dbg !3169
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !3169

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !3169

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub223 = sub i64 %52, 1, !dbg !3169
  %and224 = and i64 %sub223, 1048576, !dbg !3169
  %tobool225 = icmp ne i64 %and224, 0, !dbg !3169
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !3169

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !3169

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub228 = sub i64 %53, 1, !dbg !3169
  %and229 = and i64 %sub228, 524288, !dbg !3169
  %tobool230 = icmp ne i64 %and229, 0, !dbg !3169
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !3169

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !3169

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub233 = sub i64 %54, 1, !dbg !3169
  %and234 = and i64 %sub233, 262144, !dbg !3169
  %tobool235 = icmp ne i64 %and234, 0, !dbg !3169
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !3169

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !3169

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub238 = sub i64 %55, 1, !dbg !3169
  %and239 = and i64 %sub238, 131072, !dbg !3169
  %tobool240 = icmp ne i64 %and239, 0, !dbg !3169
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !3169

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !3169

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub243 = sub i64 %56, 1, !dbg !3169
  %and244 = and i64 %sub243, 65536, !dbg !3169
  %tobool245 = icmp ne i64 %and244, 0, !dbg !3169
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !3169

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !3169

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub248 = sub i64 %57, 1, !dbg !3169
  %and249 = and i64 %sub248, 32768, !dbg !3169
  %tobool250 = icmp ne i64 %and249, 0, !dbg !3169
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !3169

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !3169

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub253 = sub i64 %58, 1, !dbg !3169
  %and254 = and i64 %sub253, 16384, !dbg !3169
  %tobool255 = icmp ne i64 %and254, 0, !dbg !3169
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !3169

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !3169

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub258 = sub i64 %59, 1, !dbg !3169
  %and259 = and i64 %sub258, 8192, !dbg !3169
  %tobool260 = icmp ne i64 %and259, 0, !dbg !3169
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !3169

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !3169

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub263 = sub i64 %60, 1, !dbg !3169
  %and264 = and i64 %sub263, 4096, !dbg !3169
  %tobool265 = icmp ne i64 %and264, 0, !dbg !3169
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !3169

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !3169

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub268 = sub i64 %61, 1, !dbg !3169
  %and269 = and i64 %sub268, 2048, !dbg !3169
  %tobool270 = icmp ne i64 %and269, 0, !dbg !3169
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !3169

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !3169

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub273 = sub i64 %62, 1, !dbg !3169
  %and274 = and i64 %sub273, 1024, !dbg !3169
  %tobool275 = icmp ne i64 %and274, 0, !dbg !3169
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !3169

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !3169

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub278 = sub i64 %63, 1, !dbg !3169
  %and279 = and i64 %sub278, 512, !dbg !3169
  %tobool280 = icmp ne i64 %and279, 0, !dbg !3169
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !3169

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !3169

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub283 = sub i64 %64, 1, !dbg !3169
  %and284 = and i64 %sub283, 256, !dbg !3169
  %tobool285 = icmp ne i64 %and284, 0, !dbg !3169
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !3169

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !3169

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub288 = sub i64 %65, 1, !dbg !3169
  %and289 = and i64 %sub288, 128, !dbg !3169
  %tobool290 = icmp ne i64 %and289, 0, !dbg !3169
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !3169

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !3169

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub293 = sub i64 %66, 1, !dbg !3169
  %and294 = and i64 %sub293, 64, !dbg !3169
  %tobool295 = icmp ne i64 %and294, 0, !dbg !3169
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !3169

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !3169

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub298 = sub i64 %67, 1, !dbg !3169
  %and299 = and i64 %sub298, 32, !dbg !3169
  %tobool300 = icmp ne i64 %and299, 0, !dbg !3169
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !3169

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !3169

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub303 = sub i64 %68, 1, !dbg !3169
  %and304 = and i64 %sub303, 16, !dbg !3169
  %tobool305 = icmp ne i64 %and304, 0, !dbg !3169
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !3169

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !3169

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub308 = sub i64 %69, 1, !dbg !3169
  %and309 = and i64 %sub308, 8, !dbg !3169
  %tobool310 = icmp ne i64 %and309, 0, !dbg !3169
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !3169

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !3169

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub313 = sub i64 %70, 1, !dbg !3169
  %and314 = and i64 %sub313, 4, !dbg !3169
  %tobool315 = icmp ne i64 %and314, 0, !dbg !3169
  %71 = zext i1 %tobool315 to i64, !dbg !3169
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !3169
  br label %cond.end, !dbg !3169

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !3169
  br label %cond.end317, !dbg !3169

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !3169
  br label %cond.end319, !dbg !3169

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !3169
  br label %cond.end321, !dbg !3169

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !3169
  br label %cond.end323, !dbg !3169

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !3169
  br label %cond.end325, !dbg !3169

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !3169
  br label %cond.end327, !dbg !3169

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !3169
  br label %cond.end329, !dbg !3169

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !3169
  br label %cond.end331, !dbg !3169

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !3169
  br label %cond.end333, !dbg !3169

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !3169
  br label %cond.end335, !dbg !3169

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !3169
  br label %cond.end337, !dbg !3169

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !3169
  br label %cond.end339, !dbg !3169

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !3169
  br label %cond.end341, !dbg !3169

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !3169
  br label %cond.end343, !dbg !3169

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !3169
  br label %cond.end345, !dbg !3169

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !3169
  br label %cond.end347, !dbg !3169

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !3169
  br label %cond.end349, !dbg !3169

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !3169
  br label %cond.end351, !dbg !3169

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !3169
  br label %cond.end353, !dbg !3169

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !3169
  br label %cond.end355, !dbg !3169

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !3169
  br label %cond.end357, !dbg !3169

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !3169
  br label %cond.end359, !dbg !3169

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !3169
  br label %cond.end361, !dbg !3169

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !3169
  br label %cond.end363, !dbg !3169

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !3169
  br label %cond.end365, !dbg !3169

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !3169
  br label %cond.end367, !dbg !3169

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !3169
  br label %cond.end369, !dbg !3169

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !3169
  br label %cond.end371, !dbg !3169

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !3169
  br label %cond.end373, !dbg !3169

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !3169
  br label %cond.end375, !dbg !3169

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !3169
  br label %cond.end377, !dbg !3169

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !3169
  br label %cond.end379, !dbg !3169

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !3169
  br label %cond.end381, !dbg !3169

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !3169
  br label %cond.end383, !dbg !3169

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !3169
  br label %cond.end385, !dbg !3169

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !3169
  br label %cond.end387, !dbg !3169

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !3169
  br label %cond.end389, !dbg !3169

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !3169
  br label %cond.end391, !dbg !3169

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !3169
  br label %cond.end393, !dbg !3169

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !3169
  br label %cond.end395, !dbg !3169

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !3169
  br label %cond.end397, !dbg !3169

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !3169
  br label %cond.end399, !dbg !3169

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !3169
  br label %cond.end401, !dbg !3169

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !3169
  br label %cond.end403, !dbg !3169

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !3169
  br label %cond.end405, !dbg !3169

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !3169
  br label %cond.end407, !dbg !3169

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !3169
  br label %cond.end409, !dbg !3169

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !3169
  br label %cond.end411, !dbg !3169

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !3169
  br label %cond.end413, !dbg !3169

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !3169
  br label %cond.end415, !dbg !3169

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !3169
  br label %cond.end417, !dbg !3169

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !3169
  br label %cond.end419, !dbg !3169

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !3169
  br label %cond.end421, !dbg !3169

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !3169
  br label %cond.end423, !dbg !3169

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !3169
  br label %cond.end425, !dbg !3169

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !3169
  br label %cond.end427, !dbg !3169

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !3169
  br label %cond.end429, !dbg !3169

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !3169
  br label %cond.end431, !dbg !3169

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !3169
  br label %cond.end433, !dbg !3169

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !3169
  br label %cond.end435, !dbg !3169

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !3169
  br label %cond.end437, !dbg !3169

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !3169
  br label %cond.end440, !dbg !3169

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !3169

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !3169
  br label %cond.end444, !dbg !3169

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !3169
  %sub443 = sub i64 %72, 1, !dbg !3169
  %call = call i32 @__ilog2_u64(i64 %sub443) #8, !dbg !3169
  br label %cond.end444, !dbg !3169

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !3169
  %sub446 = sub i32 %cond445, 12, !dbg !3170
  %add = add i32 %sub446, 1, !dbg !3171
  store i32 %add, i32* %retval, align 4, !dbg !3172
  br label %return, !dbg !3172

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !3173
  %dec = add i64 %73, -1, !dbg !3173
  store i64 %dec, i64* %size.addr, align 8, !dbg !3173
  %74 = load i64, i64* %size.addr, align 8, !dbg !3174
  %shr = lshr i64 %74, 12, !dbg !3174
  store i64 %shr, i64* %size.addr, align 8, !dbg !3174
  %75 = load i64, i64* %size.addr, align 8, !dbg !3175
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3152
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !3176
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !3177
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #10, !dbg !3176, !srcloc !3178
  store i32 %78, i32* %bitpos.i, align 4, !dbg !3176
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !3179
  %add.i = add i32 %79, 1, !dbg !3180
  store i32 %add.i, i32* %retval, align 4, !dbg !3181
  br label %return, !dbg !3181

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !3182
  ret i32 %80, !dbg !3182
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #5 !dbg !3183 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3144, metadata !DIExpression()), !dbg !3187
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3151, metadata !DIExpression()), !dbg !3189
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3190, metadata !DIExpression()), !dbg !3191
  %0 = load i64, i64* %n.addr, align 8, !dbg !3192
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3189
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !3193
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !3194
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #10, !dbg !3193, !srcloc !3178
  store i32 %3, i32* %bitpos.i, align 4, !dbg !3193
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !3195
  %add.i = add i32 %4, 1, !dbg !3196
  %sub = sub i32 %add.i, 1, !dbg !3197
  ret i32 %sub, !dbg !3198
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !3199 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !3202, metadata !DIExpression()), !dbg !3203
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !3204, metadata !DIExpression()), !dbg !3205
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3206, metadata !DIExpression()), !dbg !3207
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3208, metadata !DIExpression()), !dbg !3209
  %0 = load i8*, i8** %object.addr, align 8, !dbg !3210
  ret i8* %0, !dbg !3211
}

; Function Attrs: noredzone
declare dso_local i32 @thermal_zone_get_temp(%struct.thermal_zone_device*, i32*) #2

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !3212 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !3215, metadata !DIExpression()), !dbg !3216
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !3217, metadata !DIExpression()), !dbg !3218
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !3219, metadata !DIExpression()), !dbg !3220
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3221
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3223
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3224
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #6, !dbg !3225
  br i1 %call, label %if.end, label %if.then, !dbg !3226

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !3227

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3228
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3229
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !3230
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !3231
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3232
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3233
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !3234
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !3235
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3236
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3237
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !3238
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !3239
  br label %do.body, !dbg !3240

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !3241

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !3243

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !3241

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3245
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3245
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !3245
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !3245
  br label %do.end7, !dbg !3245

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !3241

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !3247
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !3248 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !3251, metadata !DIExpression()), !dbg !3252
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !3253, metadata !DIExpression()), !dbg !3254
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !3255, metadata !DIExpression()), !dbg !3256
  ret i1 true, !dbg !3257
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !3258 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !3259, metadata !DIExpression()), !dbg !3260
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3261
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #6, !dbg !3263
  br i1 %call, label %if.end, label %if.then, !dbg !3264

if.then:                                          ; preds = %entry
  br label %return, !dbg !3265

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3266
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !3267
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !3267
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3268
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !3269
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3269
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #6, !dbg !3270
  br label %return, !dbg !3271

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !3271
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !3272 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !3275, metadata !DIExpression()), !dbg !3276
  ret i1 true, !dbg !3277
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !3278 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !3279, metadata !DIExpression()), !dbg !3280
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !3281, metadata !DIExpression()), !dbg !3282
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3283
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3284
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !3285
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !3286
  br label %do.body, !dbg !3287

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !3288

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !3290

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !3288

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3292
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3292
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !3292
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !3292
  br label %do.end5, !dbg !3292

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !3288

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !3294
}

; Function Attrs: noredzone
declare dso_local noalias i8* @devres_alloc_node(void (%struct.device*, i8*)*, i64, i32, i32) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone willreturn }
attributes #4 = { nounwind willreturn }
attributes #5 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noredzone }
attributes #7 = { nounwind }
attributes #8 = { noredzone nounwind readnone }
attributes #9 = { noredzone nounwind }
attributes #10 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2265, !2266, !2267, !2268}
!llvm.ident = !{!2269}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "thermal_hwmon_list_lock", scope: !2, file: !3, line: 46, type: !389, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !92, globals: !2262, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/thermal/thermal_hwmon.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !55, !61, !69, !80, !87}
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
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_device_mode", file: !51, line: 7, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/uapi/linux/thermal.h", directory: "/home/lizy2001/genbc/linux")
!52 = !{!53, !54}
!53 = !DIEnumerator(name: "THERMAL_DEVICE_DISABLED", value: 0, isUnsigned: true)
!54 = !DIEnumerator(name: "THERMAL_DEVICE_ENABLED", value: 1, isUnsigned: true)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_trip_type", file: !51, line: 12, baseType: !7, size: 32, elements: !56)
!56 = !{!57, !58, !59, !60}
!57 = !DIEnumerator(name: "THERMAL_TRIP_ACTIVE", value: 0, isUnsigned: true)
!58 = !DIEnumerator(name: "THERMAL_TRIP_PASSIVE", value: 1, isUnsigned: true)
!59 = !DIEnumerator(name: "THERMAL_TRIP_HOT", value: 2, isUnsigned: true)
!60 = !DIEnumerator(name: "THERMAL_TRIP_CRITICAL", value: 3, isUnsigned: true)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_trend", file: !62, line: 40, baseType: !7, size: 32, elements: !63)
!62 = !DIFile(filename: "./include/linux/thermal.h", directory: "/home/lizy2001/genbc/linux")
!63 = !{!64, !65, !66, !67, !68}
!64 = !DIEnumerator(name: "THERMAL_TREND_STABLE", value: 0, isUnsigned: true)
!65 = !DIEnumerator(name: "THERMAL_TREND_RAISING", value: 1, isUnsigned: true)
!66 = !DIEnumerator(name: "THERMAL_TREND_DROPPING", value: 2, isUnsigned: true)
!67 = !DIEnumerator(name: "THERMAL_TREND_RAISE_FULL", value: 3, isUnsigned: true)
!68 = !DIEnumerator(name: "THERMAL_TREND_DROP_FULL", value: 4, isUnsigned: true)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_notify_event", file: !62, line: 49, baseType: !7, size: 32, elements: !70)
!70 = !{!71, !72, !73, !74, !75, !76, !77, !78, !79}
!71 = !DIEnumerator(name: "THERMAL_EVENT_UNSPECIFIED", value: 0, isUnsigned: true)
!72 = !DIEnumerator(name: "THERMAL_EVENT_TEMP_SAMPLE", value: 1, isUnsigned: true)
!73 = !DIEnumerator(name: "THERMAL_TRIP_VIOLATED", value: 2, isUnsigned: true)
!74 = !DIEnumerator(name: "THERMAL_TRIP_CHANGED", value: 3, isUnsigned: true)
!75 = !DIEnumerator(name: "THERMAL_DEVICE_DOWN", value: 4, isUnsigned: true)
!76 = !DIEnumerator(name: "THERMAL_DEVICE_UP", value: 5, isUnsigned: true)
!77 = !DIEnumerator(name: "THERMAL_DEVICE_POWER_CAPABILITY_CHANGED", value: 6, isUnsigned: true)
!78 = !DIEnumerator(name: "THERMAL_TABLE_CHANGED", value: 7, isUnsigned: true)
!79 = !DIEnumerator(name: "THERMAL_EVENT_KEEP_ALIVE", value: 8, isUnsigned: true)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !81, line: 305, baseType: !7, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!82 = !{!83, !84, !85, !86}
!83 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!84 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!85 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!86 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !88, line: 10, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!89 = !{!90, !91}
!90 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!91 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!92 = !{!93, !95, !96, !2063, !221, !206, !2065, !2082, !2259, !2261}
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !94, line: 148, baseType: !7)
!94 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_hwmon_device", file: !3, line: 23, size: 576, elements: !98)
!98 = !{!99, !104, !2060, !2061, !2062}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !97, file: !3, line: 24, baseType: !100, size: 160)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 160, elements: !102)
!101 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!102 = !{!103}
!103 = !DISubrange(count: 20)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !97, file: !3, line: 25, baseType: !105, size: 64, offset: 192)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !107)
!107 = !{!108, !1584, !1585, !1588, !1589, !1640, !1737, !1738, !1739, !1740, !1741, !1750, !1855, !1868, !1871, !1872, !1876, !1878, !1879, !1880, !1884, !1890, !1891, !1894, !2009, !2010, !2013, !2014, !2015, !2016, !2048, !2049, !2050, !2053, !2056, !2057, !2058, !2059}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !106, file: !30, line: 462, baseType: !109, size: 512)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !110, line: 64, size: 512, elements: !111)
!110 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!111 = !{!112, !115, !121, !123, !184, !1421, !1574, !1579, !1580, !1581, !1582, !1583}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !109, file: !110, line: 65, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !109, file: !110, line: 66, baseType: !116, size: 128, offset: 64)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !94, line: 178, size: 128, elements: !117)
!117 = !{!118, !120}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !116, file: !94, line: 179, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !116, file: !94, line: 179, baseType: !119, size: 64, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !109, file: !110, line: 67, baseType: !122, size: 64, offset: 192)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !109, file: !110, line: 68, baseType: !124, size: 64, offset: 256)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !110, line: 192, size: 704, elements: !126)
!126 = !{!127, !128, !144, !145}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !125, file: !110, line: 193, baseType: !116, size: 128)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !125, file: !110, line: 194, baseType: !129, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !130, line: 83, baseType: !131)
!130 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !130, line: 71, elements: !132)
!132 = !{!133}
!133 = !DIDerivedType(tag: DW_TAG_member, scope: !131, file: !130, line: 72, baseType: !134)
!134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !131, file: !130, line: 72, elements: !135)
!135 = !{!136}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !134, file: !130, line: 73, baseType: !137)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !130, line: 20, elements: !138)
!138 = !{!139}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !137, file: !130, line: 21, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !141, line: 25, baseType: !142)
!141 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !141, line: 25, elements: !143)
!143 = !{}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !125, file: !110, line: 195, baseType: !109, size: 512, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !125, file: !110, line: 196, baseType: !146, size: 64, offset: 640)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !110, line: 156, size: 192, elements: !149)
!149 = !{!150, !156, !161}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !148, file: !110, line: 157, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DISubroutineType(types: !154)
!154 = !{!155, !124, !122}
!155 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !148, file: !110, line: 158, baseType: !157, size: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !158)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DISubroutineType(types: !160)
!160 = !{!113, !124, !122}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !148, file: !110, line: 159, baseType: !162, size: 64, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DISubroutineType(types: !165)
!165 = !{!155, !124, !122, !166}
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !110, line: 148, size: 20736, elements: !168)
!168 = !{!169, !174, !178, !179, !183}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !167, file: !110, line: 149, baseType: !170, size: 192)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 192, elements: !172)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!172 = !{!173}
!173 = !DISubrange(count: 3)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !167, file: !110, line: 150, baseType: !175, size: 4096, offset: 192)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 4096, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !167, file: !110, line: 151, baseType: !155, size: 32, offset: 4288)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !167, file: !110, line: 152, baseType: !180, size: 16384, offset: 4320)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 16384, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 2048)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !167, file: !110, line: 153, baseType: !155, size: 32, offset: 20704)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !109, file: !110, line: 69, baseType: !185, size: 64, offset: 320)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !110, line: 138, size: 448, elements: !187)
!187 = !{!188, !192, !222, !224, !1366, !1399, !1403}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !186, file: !110, line: 139, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{null, !122}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !186, file: !110, line: 140, baseType: !193, size: 64, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !195)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !196, line: 230, size: 128, elements: !197)
!196 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!197 = !{!198, !214}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !195, file: !196, line: 231, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DISubroutineType(types: !201)
!201 = !{!202, !122, !207, !171}
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !94, line: 60, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !204, line: 73, baseType: !205)
!204 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !204, line: 15, baseType: !206)
!206 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !196, line: 30, size: 128, elements: !209)
!209 = !{!210, !211}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !208, file: !196, line: 31, baseType: !113, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !208, file: !196, line: 32, baseType: !212, size: 16, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !94, line: 19, baseType: !213)
!213 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !195, file: !196, line: 232, baseType: !215, size: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!202, !122, !207, !113, !218}
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !94, line: 55, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !204, line: 72, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !204, line: 16, baseType: !221)
!221 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !186, file: !110, line: 141, baseType: !223, size: 64, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !186, file: !110, line: 142, baseType: !225, size: 64, offset: 192)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !228)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !196, line: 84, size: 320, elements: !229)
!229 = !{!230, !231, !235, !1363, !1364}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !228, file: !196, line: 85, baseType: !113, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !228, file: !196, line: 86, baseType: !232, size: 64, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!212, !122, !207, !155}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !228, file: !196, line: 88, baseType: !236, size: 64, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{!212, !122, !239, !155}
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !196, line: 168, size: 448, elements: !241)
!241 = !{!242, !243, !244, !245, !255, !256}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !240, file: !196, line: 169, baseType: !208, size: 128)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !240, file: !196, line: 170, baseType: !218, size: 64, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !240, file: !196, line: 171, baseType: !95, size: 64, offset: 192)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !240, file: !196, line: 172, baseType: !246, size: 64, offset: 256)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{!202, !249, !122, !239, !171, !252, !218}
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !251, line: 526, flags: DIFlagFwdDecl)
!251 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !94, line: 46, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !204, line: 88, baseType: !254)
!254 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !240, file: !196, line: 174, baseType: !246, size: 64, offset: 320)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !240, file: !196, line: 176, baseType: !257, size: 64, offset: 384)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{!155, !249, !122, !239, !260}
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !262, line: 305, size: 1472, elements: !263)
!262 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!263 = !{!264, !265, !266, !267, !268, !276, !277, !1337, !1343, !1344, !1349, !1350, !1353, !1357, !1358, !1359, !1360, !1361}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !261, file: !262, line: 308, baseType: !221, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !261, file: !262, line: 309, baseType: !221, size: 64, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !261, file: !262, line: 313, baseType: !260, size: 64, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !261, file: !262, line: 313, baseType: !260, size: 64, offset: 192)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !261, file: !262, line: 315, baseType: !269, size: 192, align: 64, offset: 256)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !270, line: 24, size: 192, align: 64, elements: !271)
!270 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!271 = !{!272, !273, !275}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !269, file: !270, line: 25, baseType: !221, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !269, file: !270, line: 26, baseType: !274, size: 64, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !269, file: !270, line: 27, baseType: !274, size: 64, offset: 128)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !261, file: !262, line: 323, baseType: !221, size: 64, offset: 448)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !261, file: !262, line: 327, baseType: !278, size: 64, offset: 512)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !262, line: 388, size: 7296, elements: !280)
!280 = !{!281, !1333}
!281 = !DIDerivedType(tag: DW_TAG_member, scope: !279, file: !262, line: 389, baseType: !282, size: 7296)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !279, file: !262, line: 389, size: 7296, elements: !283)
!283 = !{!284, !285, !289, !295, !299, !300, !301, !302, !303, !311, !316, !317, !318, !319, !328, !329, !330, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !365, !373, !376, !408, !409, !1304, !1305, !1308, !1311, !1312, !1315, !1316, !1317, !1320, !1332}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !282, file: !262, line: 390, baseType: !260, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !282, file: !262, line: 391, baseType: !286, size: 64, offset: 64)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !270, line: 31, size: 64, elements: !287)
!287 = !{!288}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !286, file: !270, line: 32, baseType: !274, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !282, file: !262, line: 392, baseType: !290, size: 64, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !291, line: 23, baseType: !292)
!291 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !293, line: 31, baseType: !294)
!293 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!294 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !282, file: !262, line: 394, baseType: !296, size: 64, offset: 192)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{!221, !249, !221, !221, !221, !221}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !282, file: !262, line: 398, baseType: !221, size: 64, offset: 256)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !282, file: !262, line: 399, baseType: !221, size: 64, offset: 320)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !282, file: !262, line: 405, baseType: !221, size: 64, offset: 384)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !282, file: !262, line: 406, baseType: !221, size: 64, offset: 448)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !282, file: !262, line: 407, baseType: !304, size: 64, offset: 512)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !251, line: 286, baseType: !306)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !251, line: 286, size: 64, elements: !307)
!307 = !{!308}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !306, file: !251, line: 286, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !310, line: 18, baseType: !221)
!310 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!311 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !282, file: !262, line: 416, baseType: !312, size: 32, offset: 576)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !94, line: 168, baseType: !313)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !94, line: 166, size: 32, elements: !314)
!314 = !{!315}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !313, file: !94, line: 167, baseType: !155, size: 32)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !282, file: !262, line: 428, baseType: !312, size: 32, offset: 608)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !282, file: !262, line: 437, baseType: !312, size: 32, offset: 640)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !282, file: !262, line: 447, baseType: !312, size: 32, offset: 672)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !282, file: !262, line: 450, baseType: !320, size: 64, offset: 704)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !321, line: 13, baseType: !322)
!321 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !94, line: 175, baseType: !323)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !94, line: 173, size: 64, elements: !324)
!324 = !{!325}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !323, file: !94, line: 174, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !291, line: 22, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !293, line: 30, baseType: !254)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !282, file: !262, line: 452, baseType: !155, size: 32, offset: 768)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !282, file: !262, line: 454, baseType: !129, offset: 800)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !282, file: !262, line: 457, baseType: !331, size: 256, offset: 832)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !332, line: 35, size: 256, elements: !333)
!332 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!333 = !{!334, !335, !336, !338}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !331, file: !332, line: 36, baseType: !320, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !331, file: !332, line: 42, baseType: !320, size: 64, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !331, file: !332, line: 46, baseType: !337, offset: 128)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !130, line: 29, baseType: !137)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !331, file: !332, line: 47, baseType: !116, size: 128, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !282, file: !262, line: 459, baseType: !116, size: 128, offset: 1088)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !282, file: !262, line: 466, baseType: !221, size: 64, offset: 1216)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !282, file: !262, line: 467, baseType: !221, size: 64, offset: 1280)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !282, file: !262, line: 469, baseType: !221, size: 64, offset: 1344)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !282, file: !262, line: 470, baseType: !221, size: 64, offset: 1408)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !282, file: !262, line: 471, baseType: !322, size: 64, offset: 1472)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !282, file: !262, line: 472, baseType: !221, size: 64, offset: 1536)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !282, file: !262, line: 473, baseType: !221, size: 64, offset: 1600)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !282, file: !262, line: 474, baseType: !221, size: 64, offset: 1664)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !282, file: !262, line: 475, baseType: !221, size: 64, offset: 1728)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !282, file: !262, line: 477, baseType: !129, offset: 1792)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !282, file: !262, line: 478, baseType: !221, size: 64, offset: 1792)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !282, file: !262, line: 478, baseType: !221, size: 64, offset: 1856)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !282, file: !262, line: 478, baseType: !221, size: 64, offset: 1920)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !282, file: !262, line: 478, baseType: !221, size: 64, offset: 1984)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !282, file: !262, line: 479, baseType: !221, size: 64, offset: 2048)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !282, file: !262, line: 479, baseType: !221, size: 64, offset: 2112)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !282, file: !262, line: 479, baseType: !221, size: 64, offset: 2176)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !282, file: !262, line: 480, baseType: !221, size: 64, offset: 2240)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !282, file: !262, line: 480, baseType: !221, size: 64, offset: 2304)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !282, file: !262, line: 480, baseType: !221, size: 64, offset: 2368)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !282, file: !262, line: 480, baseType: !221, size: 64, offset: 2432)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !282, file: !262, line: 482, baseType: !362, size: 2816, offset: 2496)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 2816, elements: !363)
!363 = !{!364}
!364 = !DISubrange(count: 44)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !282, file: !262, line: 488, baseType: !366, size: 256, offset: 5312)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !367, line: 60, size: 256, elements: !368)
!367 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!368 = !{!369}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !366, file: !367, line: 61, baseType: !370, size: 256)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, size: 256, elements: !371)
!371 = !{!372}
!372 = !DISubrange(count: 4)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !282, file: !262, line: 490, baseType: !374, size: 64, offset: 5568)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !262, line: 490, flags: DIFlagFwdDecl)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !282, file: !262, line: 493, baseType: !377, size: 896, offset: 5632)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !378, line: 53, baseType: !379)
!378 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !378, line: 13, size: 896, elements: !380)
!380 = !{!381, !382, !383, !384, !387, !388, !395, !396, !400, !401, !404}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !379, file: !378, line: 18, baseType: !290, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !379, file: !378, line: 28, baseType: !322, size: 64, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !379, file: !378, line: 31, baseType: !331, size: 256, offset: 128)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !379, file: !378, line: 32, baseType: !385, size: 64, offset: 384)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !378, line: 32, flags: DIFlagFwdDecl)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !379, file: !378, line: 37, baseType: !213, size: 16, offset: 448)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !379, file: !378, line: 40, baseType: !389, size: 192, offset: 512)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !390, line: 53, size: 192, elements: !391)
!390 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!391 = !{!392, !393, !394}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !389, file: !390, line: 54, baseType: !320, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !389, file: !390, line: 55, baseType: !129, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !389, file: !390, line: 59, baseType: !116, size: 128, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !379, file: !378, line: 41, baseType: !95, size: 64, offset: 704)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !379, file: !378, line: 42, baseType: !397, size: 64, offset: 768)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !399)
!399 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !378, line: 42, flags: DIFlagFwdDecl)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !379, file: !378, line: 44, baseType: !312, size: 32, offset: 832)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !379, file: !378, line: 50, baseType: !402, size: 16, offset: 864)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !291, line: 19, baseType: !403)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !293, line: 24, baseType: !213)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !379, file: !378, line: 51, baseType: !405, size: 16, offset: 880)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !291, line: 18, baseType: !406)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !293, line: 23, baseType: !407)
!407 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !282, file: !262, line: 495, baseType: !221, size: 64, offset: 6528)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !282, file: !262, line: 497, baseType: !410, size: 64, offset: 6592)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !262, line: 381, size: 384, elements: !412)
!412 = !{!413, !414, !1303}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !411, file: !262, line: 382, baseType: !312, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !411, file: !262, line: 383, baseType: !415, size: 128, offset: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !262, line: 376, size: 128, elements: !416)
!416 = !{!417, !1301}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !415, file: !262, line: 377, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !420, line: 640, size: 48640, elements: !421)
!420 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!421 = !{!422, !430, !432, !433, !439, !440, !441, !442, !443, !444, !445, !446, !450, !468, !479, !574, !575, !576, !587, !588, !590, !591, !592, !593, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !672, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !728, !730, !731, !732, !744, !746, !747, !748, !749, !750, !756, !757, !758, !759, !760, !761, !762, !774, !779, !783, !784, !785, !788, !792, !795, !798, !801, !804, !807, !810, !813, !819, !820, !821, !827, !828, !829, !830, !831, !840, !841, !842, !843, !844, !849, !850, !851, !854, !855, !858, !861, !864, !867, !870, !873, !874, !954, !957, !960, !961, !964, !965, !966, !972, !973, !974, !987, !988, !989, !1001, !1006, !1009, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !419, file: !420, line: 646, baseType: !423, size: 128)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !424, line: 56, size: 128, elements: !425)
!424 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!425 = !{!426, !427}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !423, file: !424, line: 57, baseType: !221, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !423, file: !424, line: 58, baseType: !428, size: 32, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !291, line: 21, baseType: !429)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !293, line: 27, baseType: !7)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !419, file: !420, line: 649, baseType: !431, size: 64, offset: 128)
!431 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !206)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !419, file: !420, line: 657, baseType: !95, size: 64, offset: 192)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !419, file: !420, line: 658, baseType: !434, size: 32, offset: 256)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !435, line: 113, baseType: !436)
!435 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !435, line: 111, size: 32, elements: !437)
!437 = !{!438}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !436, file: !435, line: 112, baseType: !312, size: 32)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !419, file: !420, line: 660, baseType: !7, size: 32, offset: 288)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !419, file: !420, line: 661, baseType: !7, size: 32, offset: 320)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !419, file: !420, line: 684, baseType: !155, size: 32, offset: 352)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !419, file: !420, line: 686, baseType: !155, size: 32, offset: 384)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !419, file: !420, line: 687, baseType: !155, size: 32, offset: 416)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !419, file: !420, line: 688, baseType: !155, size: 32, offset: 448)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !419, file: !420, line: 689, baseType: !7, size: 32, offset: 480)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !419, file: !420, line: 691, baseType: !447, size: 64, offset: 512)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !449)
!449 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !420, line: 691, flags: DIFlagFwdDecl)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !419, file: !420, line: 692, baseType: !451, size: 832, offset: 576)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !420, line: 451, size: 832, elements: !452)
!452 = !{!453, !458, !459, !460, !461, !462, !463, !464, !465, !466}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !451, file: !420, line: 453, baseType: !454, size: 128)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !420, line: 325, size: 128, elements: !455)
!455 = !{!456, !457}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !454, file: !420, line: 326, baseType: !221, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !454, file: !420, line: 327, baseType: !428, size: 32, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !451, file: !420, line: 454, baseType: !269, size: 192, align: 64, offset: 128)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !451, file: !420, line: 455, baseType: !116, size: 128, offset: 320)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !451, file: !420, line: 456, baseType: !7, size: 32, offset: 448)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !451, file: !420, line: 458, baseType: !290, size: 64, offset: 512)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !451, file: !420, line: 459, baseType: !290, size: 64, offset: 576)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !451, file: !420, line: 460, baseType: !290, size: 64, offset: 640)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !451, file: !420, line: 461, baseType: !290, size: 64, offset: 704)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !451, file: !420, line: 463, baseType: !290, size: 64, offset: 768)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !451, file: !420, line: 465, baseType: !467, offset: 832)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !420, line: 415, elements: !143)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !419, file: !420, line: 693, baseType: !469, size: 384, offset: 1408)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !420, line: 489, size: 384, elements: !470)
!470 = !{!471, !472, !473, !474, !475, !476, !477}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !469, file: !420, line: 490, baseType: !116, size: 128)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !469, file: !420, line: 491, baseType: !221, size: 64, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !469, file: !420, line: 492, baseType: !221, size: 64, offset: 192)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !469, file: !420, line: 493, baseType: !7, size: 32, offset: 256)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !469, file: !420, line: 494, baseType: !213, size: 16, offset: 288)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !469, file: !420, line: 495, baseType: !213, size: 16, offset: 304)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !469, file: !420, line: 497, baseType: !478, size: 64, offset: 320)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !419, file: !420, line: 697, baseType: !480, size: 1792, offset: 1792)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !420, line: 507, size: 1792, elements: !481)
!481 = !{!482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !571, !572}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !480, file: !420, line: 508, baseType: !269, size: 192, align: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !480, file: !420, line: 515, baseType: !290, size: 64, offset: 192)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !480, file: !420, line: 516, baseType: !290, size: 64, offset: 256)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !480, file: !420, line: 517, baseType: !290, size: 64, offset: 320)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !480, file: !420, line: 518, baseType: !290, size: 64, offset: 384)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !480, file: !420, line: 519, baseType: !290, size: 64, offset: 448)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !480, file: !420, line: 526, baseType: !326, size: 64, offset: 512)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !480, file: !420, line: 527, baseType: !290, size: 64, offset: 576)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !480, file: !420, line: 528, baseType: !7, size: 32, offset: 640)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !480, file: !420, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !480, file: !420, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !480, file: !420, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !480, file: !420, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !480, file: !420, line: 563, baseType: !496, size: 512, offset: 704)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !497)
!497 = !{!498, !506, !507, !512, !564, !568, !569, !570}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !496, file: !6, line: 119, baseType: !499, size: 256)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !500, line: 9, size: 256, elements: !501)
!500 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!501 = !{!502, !503}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !499, file: !500, line: 10, baseType: !269, size: 192, align: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !499, file: !500, line: 11, baseType: !504, size: 64, offset: 192)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !505, line: 29, baseType: !326)
!505 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!506 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !496, file: !6, line: 120, baseType: !504, size: 64, offset: 256)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !496, file: !6, line: 121, baseType: !508, size: 64, offset: 320)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!5, !511}
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !496, file: !6, line: 122, baseType: !513, size: 64, offset: 384)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !515)
!515 = !{!516, !536, !537, !540, !550, !551, !559, !563}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !514, file: !6, line: 160, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !519)
!519 = !{!520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !518, file: !6, line: 215, baseType: !337)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !518, file: !6, line: 216, baseType: !7, size: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !518, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !518, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !518, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !518, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !518, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !518, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !518, file: !6, line: 233, baseType: !504, size: 64, offset: 128)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !518, file: !6, line: 234, baseType: !511, size: 64, offset: 192)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !518, file: !6, line: 235, baseType: !504, size: 64, offset: 256)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !518, file: !6, line: 236, baseType: !511, size: 64, offset: 320)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !518, file: !6, line: 237, baseType: !533, size: 4096, offset: 512)
!533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !514, size: 4096, elements: !534)
!534 = !{!535}
!535 = !DISubrange(count: 8)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !514, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !514, file: !6, line: 162, baseType: !538, size: 32, offset: 96)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !94, line: 27, baseType: !539)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !204, line: 96, baseType: !155)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !514, file: !6, line: 163, baseType: !541, size: 32, offset: 128)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !542, line: 276, baseType: !543)
!542 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !542, line: 276, size: 32, elements: !544)
!544 = !{!545}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !543, file: !542, line: 276, baseType: !546, size: 32)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !542, line: 70, baseType: !547)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !542, line: 65, size: 32, elements: !548)
!548 = !{!549}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !547, file: !542, line: 66, baseType: !7, size: 32)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !514, file: !6, line: 164, baseType: !511, size: 64, offset: 192)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !514, file: !6, line: 165, baseType: !552, size: 128, offset: 256)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !500, line: 14, size: 128, elements: !553)
!553 = !{!554}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !552, file: !500, line: 15, baseType: !555, size: 128)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !270, line: 125, size: 128, elements: !556)
!556 = !{!557, !558}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !555, file: !270, line: 126, baseType: !286, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !555, file: !270, line: 127, baseType: !274, size: 64, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !514, file: !6, line: 166, baseType: !560, size: 64, offset: 384)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{!504}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !514, file: !6, line: 167, baseType: !504, size: 64, offset: 448)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !496, file: !6, line: 123, baseType: !565, size: 8, offset: 448)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !291, line: 17, baseType: !566)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !293, line: 21, baseType: !567)
!567 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !496, file: !6, line: 124, baseType: !565, size: 8, offset: 456)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !496, file: !6, line: 125, baseType: !565, size: 8, offset: 464)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !496, file: !6, line: 126, baseType: !565, size: 8, offset: 472)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !480, file: !420, line: 572, baseType: !496, size: 512, offset: 1216)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !480, file: !420, line: 580, baseType: !573, size: 64, offset: 1728)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !419, file: !420, line: 721, baseType: !7, size: 32, offset: 3584)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !419, file: !420, line: 722, baseType: !155, size: 32, offset: 3616)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !419, file: !420, line: 723, baseType: !577, size: 64, offset: 3648)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !579)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !580, line: 17, baseType: !581)
!580 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !580, line: 17, size: 64, elements: !582)
!582 = !{!583}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !581, file: !580, line: 17, baseType: !584, size: 64)
!584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 64, elements: !585)
!585 = !{!586}
!586 = !DISubrange(count: 1)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !419, file: !420, line: 724, baseType: !579, size: 64, offset: 3712)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !419, file: !420, line: 749, baseType: !589, offset: 3776)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !420, line: 290, elements: !143)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !419, file: !420, line: 751, baseType: !116, size: 128, offset: 3776)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !419, file: !420, line: 757, baseType: !278, size: 64, offset: 3904)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !419, file: !420, line: 758, baseType: !278, size: 64, offset: 3968)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !419, file: !420, line: 761, baseType: !594, size: 320, offset: 4032)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !367, line: 34, size: 320, elements: !595)
!595 = !{!596, !597}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !594, file: !367, line: 35, baseType: !290, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !594, file: !367, line: 36, baseType: !598, size: 256, offset: 64)
!598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 256, elements: !371)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !419, file: !420, line: 766, baseType: !155, size: 32, offset: 4352)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !419, file: !420, line: 767, baseType: !155, size: 32, offset: 4384)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !419, file: !420, line: 768, baseType: !155, size: 32, offset: 4416)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !419, file: !420, line: 770, baseType: !155, size: 32, offset: 4448)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !419, file: !420, line: 772, baseType: !221, size: 64, offset: 4480)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !419, file: !420, line: 775, baseType: !7, size: 32, offset: 4544)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !419, file: !420, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !419, file: !420, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !419, file: !420, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !419, file: !420, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !419, file: !420, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !419, file: !420, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !419, file: !420, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !419, file: !420, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !419, file: !420, line: 831, baseType: !221, size: 64, offset: 4672)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !419, file: !420, line: 833, baseType: !615, size: 384, offset: 4736)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !616)
!616 = !{!617, !622}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !615, file: !12, line: 26, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{!206, !621}
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, scope: !615, file: !12, line: 27, baseType: !623, size: 320, offset: 64)
!623 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !615, file: !12, line: 27, size: 320, elements: !624)
!624 = !{!625, !635, !662}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !623, file: !12, line: 36, baseType: !626, size: 320)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !623, file: !12, line: 29, size: 320, elements: !627)
!627 = !{!628, !630, !631, !632, !633, !634}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !626, file: !12, line: 30, baseType: !629, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !626, file: !12, line: 31, baseType: !428, size: 32, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !626, file: !12, line: 32, baseType: !428, size: 32, offset: 96)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !626, file: !12, line: 33, baseType: !428, size: 32, offset: 128)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !626, file: !12, line: 34, baseType: !290, size: 64, offset: 192)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !626, file: !12, line: 35, baseType: !629, size: 64, offset: 256)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !623, file: !12, line: 46, baseType: !636, size: 192)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !623, file: !12, line: 38, size: 192, elements: !637)
!637 = !{!638, !639, !640, !661}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !636, file: !12, line: 39, baseType: !538, size: 32)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !636, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!640 = !DIDerivedType(tag: DW_TAG_member, scope: !636, file: !12, line: 41, baseType: !641, size: 64, offset: 64)
!641 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !636, file: !12, line: 41, size: 64, elements: !642)
!642 = !{!643, !651}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !641, file: !12, line: 42, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !646, line: 7, size: 128, elements: !647)
!646 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!647 = !{!648, !650}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !645, file: !646, line: 8, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !204, line: 93, baseType: !254)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !645, file: !646, line: 9, baseType: !254, size: 64, offset: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !641, file: !12, line: 43, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !654, line: 7, size: 64, elements: !655)
!654 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!655 = !{!656, !660}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !653, file: !654, line: 8, baseType: !657, size: 32)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !654, line: 5, baseType: !658)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !291, line: 20, baseType: !659)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !293, line: 26, baseType: !155)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !653, file: !654, line: 9, baseType: !658, size: 32, offset: 32)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !636, file: !12, line: 45, baseType: !290, size: 64, offset: 128)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !623, file: !12, line: 54, baseType: !663, size: 256)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !623, file: !12, line: 48, size: 256, elements: !664)
!664 = !{!665, !668, !669, !670, !671}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !663, file: !12, line: 49, baseType: !666, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !663, file: !12, line: 50, baseType: !155, size: 32, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !663, file: !12, line: 51, baseType: !155, size: 32, offset: 96)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !663, file: !12, line: 52, baseType: !221, size: 64, offset: 128)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !663, file: !12, line: 53, baseType: !221, size: 64, offset: 192)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !419, file: !420, line: 835, baseType: !673, size: 32, offset: 5120)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !94, line: 22, baseType: !674)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !204, line: 28, baseType: !155)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !419, file: !420, line: 836, baseType: !673, size: 32, offset: 5152)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !419, file: !420, line: 840, baseType: !221, size: 64, offset: 5184)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !419, file: !420, line: 849, baseType: !418, size: 64, offset: 5248)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !419, file: !420, line: 852, baseType: !418, size: 64, offset: 5312)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !419, file: !420, line: 857, baseType: !116, size: 128, offset: 5376)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !419, file: !420, line: 858, baseType: !116, size: 128, offset: 5504)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !419, file: !420, line: 859, baseType: !418, size: 64, offset: 5632)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !419, file: !420, line: 867, baseType: !116, size: 128, offset: 5696)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !419, file: !420, line: 868, baseType: !116, size: 128, offset: 5824)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !419, file: !420, line: 871, baseType: !685, size: 64, offset: 5952)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !687, line: 59, size: 768, elements: !688)
!687 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!688 = !{!689, !690, !691, !692, !703, !704, !711, !720}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !686, file: !687, line: 61, baseType: !434, size: 32)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !686, file: !687, line: 62, baseType: !7, size: 32, offset: 32)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !686, file: !687, line: 63, baseType: !129, offset: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !686, file: !687, line: 65, baseType: !693, size: 256, offset: 64)
!693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !694, size: 256, elements: !371)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !94, line: 182, size: 64, elements: !695)
!695 = !{!696}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !694, file: !94, line: 183, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !94, line: 186, size: 128, elements: !699)
!699 = !{!700, !701}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !698, file: !94, line: 187, baseType: !697, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !698, file: !94, line: 187, baseType: !702, size: 64, offset: 64)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !686, file: !687, line: 66, baseType: !694, size: 64, offset: 320)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !686, file: !687, line: 68, baseType: !705, size: 128, offset: 384)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !706, line: 40, baseType: !707)
!706 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !706, line: 36, size: 128, elements: !708)
!708 = !{!709, !710}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !707, file: !706, line: 37, baseType: !129)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !707, file: !706, line: 38, baseType: !116, size: 128)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !686, file: !687, line: 69, baseType: !712, size: 128, align: 64, offset: 512)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !94, line: 216, size: 128, align: 64, elements: !713)
!713 = !{!714, !716}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !712, file: !94, line: 217, baseType: !715, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !712, file: !94, line: 218, baseType: !717, size: 64, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DISubroutineType(types: !719)
!719 = !{null, !715}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !686, file: !687, line: 70, baseType: !721, size: 128, offset: 640)
!721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !722, size: 128, elements: !585)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !687, line: 54, size: 128, elements: !723)
!723 = !{!724, !725}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !722, file: !687, line: 55, baseType: !155, size: 32)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !722, file: !687, line: 56, baseType: !726, size: 64, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !687, line: 56, flags: DIFlagFwdDecl)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !419, file: !420, line: 872, baseType: !729, size: 512, offset: 6016)
!729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !698, size: 512, elements: !371)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !419, file: !420, line: 873, baseType: !116, size: 128, offset: 6528)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !419, file: !420, line: 874, baseType: !116, size: 128, offset: 6656)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !419, file: !420, line: 876, baseType: !733, size: 64, offset: 6784)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !735, line: 26, size: 192, elements: !736)
!735 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!736 = !{!737, !738}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !734, file: !735, line: 27, baseType: !7, size: 32)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !734, file: !735, line: 28, baseType: !739, size: 128, offset: 64)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !740, line: 43, size: 128, elements: !741)
!740 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!741 = !{!742, !743}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !739, file: !740, line: 44, baseType: !337)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !739, file: !740, line: 45, baseType: !116, size: 128)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !419, file: !420, line: 879, baseType: !745, size: 64, offset: 6848)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !419, file: !420, line: 882, baseType: !745, size: 64, offset: 6912)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !419, file: !420, line: 884, baseType: !290, size: 64, offset: 6976)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !419, file: !420, line: 885, baseType: !290, size: 64, offset: 7040)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !419, file: !420, line: 890, baseType: !290, size: 64, offset: 7104)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !419, file: !420, line: 891, baseType: !751, size: 128, offset: 7168)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !420, line: 242, size: 128, elements: !752)
!752 = !{!753, !754, !755}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !751, file: !420, line: 244, baseType: !290, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !751, file: !420, line: 245, baseType: !290, size: 64, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !751, file: !420, line: 246, baseType: !337, offset: 128)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !419, file: !420, line: 900, baseType: !221, size: 64, offset: 7296)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !419, file: !420, line: 901, baseType: !221, size: 64, offset: 7360)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !419, file: !420, line: 904, baseType: !290, size: 64, offset: 7424)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !419, file: !420, line: 907, baseType: !290, size: 64, offset: 7488)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !419, file: !420, line: 910, baseType: !221, size: 64, offset: 7552)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !419, file: !420, line: 911, baseType: !221, size: 64, offset: 7616)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !419, file: !420, line: 914, baseType: !763, size: 640, offset: 7680)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !764, line: 123, size: 640, elements: !765)
!764 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!765 = !{!766, !772, !773}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !763, file: !764, line: 124, baseType: !767, size: 576)
!767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !768, size: 576, elements: !172)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !764, line: 108, size: 192, elements: !769)
!769 = !{!770, !771}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !768, file: !764, line: 109, baseType: !290, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !768, file: !764, line: 110, baseType: !552, size: 128, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !763, file: !764, line: 125, baseType: !7, size: 32, offset: 576)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !763, file: !764, line: 126, baseType: !7, size: 32, offset: 608)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !419, file: !420, line: 917, baseType: !775, size: 192, offset: 8320)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !764, line: 134, size: 192, elements: !776)
!776 = !{!777, !778}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !775, file: !764, line: 135, baseType: !712, size: 128, align: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !775, file: !764, line: 136, baseType: !7, size: 32, offset: 128)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !419, file: !420, line: 923, baseType: !780, size: 64, offset: 8512)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !782)
!782 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !420, line: 923, flags: DIFlagFwdDecl)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !419, file: !420, line: 926, baseType: !780, size: 64, offset: 8576)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !419, file: !420, line: 929, baseType: !780, size: 64, offset: 8640)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !419, file: !420, line: 933, baseType: !786, size: 64, offset: 8704)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !420, line: 933, flags: DIFlagFwdDecl)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !419, file: !420, line: 943, baseType: !789, size: 128, offset: 8768)
!789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 128, elements: !790)
!790 = !{!791}
!791 = !DISubrange(count: 16)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !419, file: !420, line: 945, baseType: !793, size: 64, offset: 8896)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !420, line: 49, flags: DIFlagFwdDecl)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !419, file: !420, line: 956, baseType: !796, size: 64, offset: 8960)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !420, line: 45, flags: DIFlagFwdDecl)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !419, file: !420, line: 959, baseType: !799, size: 64, offset: 9024)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !420, line: 959, flags: DIFlagFwdDecl)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !419, file: !420, line: 962, baseType: !802, size: 64, offset: 9088)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !420, line: 66, flags: DIFlagFwdDecl)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !419, file: !420, line: 966, baseType: !805, size: 64, offset: 9152)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !420, line: 50, flags: DIFlagFwdDecl)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !419, file: !420, line: 969, baseType: !808, size: 64, offset: 9216)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !764, line: 223, flags: DIFlagFwdDecl)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !419, file: !420, line: 970, baseType: !811, size: 64, offset: 9280)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !420, line: 62, flags: DIFlagFwdDecl)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !419, file: !420, line: 971, baseType: !814, size: 64, offset: 9344)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !815, line: 25, baseType: !816)
!815 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !815, line: 23, size: 64, elements: !817)
!817 = !{!818}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !816, file: !815, line: 24, baseType: !584, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !419, file: !420, line: 972, baseType: !814, size: 64, offset: 9408)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !419, file: !420, line: 974, baseType: !814, size: 64, offset: 9472)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !419, file: !420, line: 975, baseType: !822, size: 192, offset: 9536)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !823, line: 30, size: 192, elements: !824)
!823 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!824 = !{!825, !826}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !822, file: !823, line: 31, baseType: !116, size: 128)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !822, file: !823, line: 32, baseType: !814, size: 64, offset: 128)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !419, file: !420, line: 976, baseType: !221, size: 64, offset: 9728)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !419, file: !420, line: 977, baseType: !218, size: 64, offset: 9792)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !419, file: !420, line: 978, baseType: !7, size: 32, offset: 9856)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !419, file: !420, line: 980, baseType: !715, size: 64, offset: 9920)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !419, file: !420, line: 989, baseType: !832, size: 128, offset: 9984)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !833, line: 35, size: 128, elements: !834)
!833 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!834 = !{!835, !836, !837}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !832, file: !833, line: 36, baseType: !155, size: 32)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !832, file: !833, line: 37, baseType: !312, size: 32, offset: 32)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !832, file: !833, line: 38, baseType: !838, size: 64, offset: 64)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !833, line: 23, flags: DIFlagFwdDecl)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !419, file: !420, line: 992, baseType: !290, size: 64, offset: 10112)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !419, file: !420, line: 993, baseType: !290, size: 64, offset: 10176)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !419, file: !420, line: 996, baseType: !129, offset: 10240)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !419, file: !420, line: 999, baseType: !337, offset: 10240)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !419, file: !420, line: 1001, baseType: !845, size: 64, offset: 10240)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !420, line: 636, size: 64, elements: !846)
!846 = !{!847}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !845, file: !420, line: 637, baseType: !848, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !419, file: !420, line: 1005, baseType: !555, size: 128, offset: 10304)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !419, file: !420, line: 1007, baseType: !418, size: 64, offset: 10432)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !419, file: !420, line: 1009, baseType: !852, size: 64, offset: 10496)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !420, line: 1009, flags: DIFlagFwdDecl)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !419, file: !420, line: 1043, baseType: !95, size: 64, offset: 10560)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !419, file: !420, line: 1046, baseType: !856, size: 64, offset: 10624)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !420, line: 41, flags: DIFlagFwdDecl)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !419, file: !420, line: 1050, baseType: !859, size: 64, offset: 10688)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !420, line: 42, flags: DIFlagFwdDecl)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !419, file: !420, line: 1054, baseType: !862, size: 64, offset: 10752)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !420, line: 55, flags: DIFlagFwdDecl)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !419, file: !420, line: 1056, baseType: !865, size: 64, offset: 10816)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !420, line: 40, flags: DIFlagFwdDecl)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !419, file: !420, line: 1058, baseType: !868, size: 64, offset: 10880)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !420, line: 47, flags: DIFlagFwdDecl)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !419, file: !420, line: 1061, baseType: !871, size: 64, offset: 10944)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !420, line: 43, flags: DIFlagFwdDecl)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !419, file: !420, line: 1064, baseType: !221, size: 64, offset: 11008)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !419, file: !420, line: 1065, baseType: !875, size: 64, offset: 11072)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !823, line: 14, baseType: !877)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !823, line: 12, size: 384, elements: !878)
!878 = !{!879}
!879 = !DIDerivedType(tag: DW_TAG_member, scope: !877, file: !823, line: 13, baseType: !880, size: 384)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !877, file: !823, line: 13, size: 384, elements: !881)
!881 = !{!882, !883, !884, !885}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !880, file: !823, line: 13, baseType: !155, size: 32)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !880, file: !823, line: 13, baseType: !155, size: 32, offset: 32)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !880, file: !823, line: 13, baseType: !155, size: 32, offset: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !880, file: !823, line: 13, baseType: !886, size: 256, offset: 128)
!886 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !887, line: 32, size: 256, elements: !888)
!887 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!888 = !{!889, !895, !908, !914, !923, !943, !948}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !886, file: !887, line: 37, baseType: !890, size: 64)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !886, file: !887, line: 34, size: 64, elements: !891)
!891 = !{!892, !893}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !890, file: !887, line: 35, baseType: !674, size: 32)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !890, file: !887, line: 36, baseType: !894, size: 32, offset: 32)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !204, line: 49, baseType: !7)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !886, file: !887, line: 45, baseType: !896, size: 192)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !886, file: !887, line: 40, size: 192, elements: !897)
!897 = !{!898, !900, !901, !907}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !896, file: !887, line: 41, baseType: !899, size: 32)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !204, line: 95, baseType: !155)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !896, file: !887, line: 42, baseType: !155, size: 32, offset: 32)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !896, file: !887, line: 43, baseType: !902, size: 64, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !887, line: 11, baseType: !903)
!903 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !887, line: 8, size: 64, elements: !904)
!904 = !{!905, !906}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !903, file: !887, line: 9, baseType: !155, size: 32)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !903, file: !887, line: 10, baseType: !95, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !896, file: !887, line: 44, baseType: !155, size: 32, offset: 128)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !886, file: !887, line: 52, baseType: !909, size: 128)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !886, file: !887, line: 48, size: 128, elements: !910)
!910 = !{!911, !912, !913}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !909, file: !887, line: 49, baseType: !674, size: 32)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !909, file: !887, line: 50, baseType: !894, size: 32, offset: 32)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !909, file: !887, line: 51, baseType: !902, size: 64, offset: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !886, file: !887, line: 61, baseType: !915, size: 256)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !886, file: !887, line: 55, size: 256, elements: !916)
!916 = !{!917, !918, !919, !920, !922}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !915, file: !887, line: 56, baseType: !674, size: 32)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !915, file: !887, line: 57, baseType: !894, size: 32, offset: 32)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !915, file: !887, line: 58, baseType: !155, size: 32, offset: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !915, file: !887, line: 59, baseType: !921, size: 64, offset: 128)
!921 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !204, line: 94, baseType: !205)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !915, file: !887, line: 60, baseType: !921, size: 64, offset: 192)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !886, file: !887, line: 95, baseType: !924, size: 256)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !886, file: !887, line: 64, size: 256, elements: !925)
!925 = !{!926, !927}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !924, file: !887, line: 65, baseType: !95, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, scope: !924, file: !887, line: 77, baseType: !928, size: 192, offset: 64)
!928 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !924, file: !887, line: 77, size: 192, elements: !929)
!929 = !{!930, !931, !938}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !928, file: !887, line: 82, baseType: !407, size: 16)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !928, file: !887, line: 88, baseType: !932, size: 192)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !928, file: !887, line: 84, size: 192, elements: !933)
!933 = !{!934, !936, !937}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !932, file: !887, line: 85, baseType: !935, size: 64)
!935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 64, elements: !534)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !932, file: !887, line: 86, baseType: !95, size: 64, offset: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !932, file: !887, line: 87, baseType: !95, size: 64, offset: 128)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !928, file: !887, line: 93, baseType: !939, size: 96)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !928, file: !887, line: 90, size: 96, elements: !940)
!940 = !{!941, !942}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !939, file: !887, line: 91, baseType: !935, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !939, file: !887, line: 92, baseType: !429, size: 32, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !886, file: !887, line: 101, baseType: !944, size: 128)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !886, file: !887, line: 98, size: 128, elements: !945)
!945 = !{!946, !947}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !944, file: !887, line: 99, baseType: !206, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !944, file: !887, line: 100, baseType: !155, size: 32, offset: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !886, file: !887, line: 108, baseType: !949, size: 128)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !886, file: !887, line: 104, size: 128, elements: !950)
!950 = !{!951, !952, !953}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !949, file: !887, line: 105, baseType: !95, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !949, file: !887, line: 106, baseType: !155, size: 32, offset: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !949, file: !887, line: 107, baseType: !7, size: 32, offset: 96)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !419, file: !420, line: 1067, baseType: !955, offset: 11136)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !956, line: 12, elements: !143)
!956 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!957 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !419, file: !420, line: 1099, baseType: !958, size: 64, offset: 11136)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !420, line: 56, flags: DIFlagFwdDecl)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !419, file: !420, line: 1103, baseType: !116, size: 128, offset: 11200)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !419, file: !420, line: 1104, baseType: !962, size: 64, offset: 11328)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !420, line: 46, flags: DIFlagFwdDecl)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !419, file: !420, line: 1105, baseType: !389, size: 192, offset: 11392)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !419, file: !420, line: 1106, baseType: !7, size: 32, offset: 11584)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !419, file: !420, line: 1109, baseType: !967, size: 128, offset: 11648)
!967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !968, size: 128, elements: !970)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !420, line: 51, flags: DIFlagFwdDecl)
!970 = !{!971}
!971 = !DISubrange(count: 2)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !419, file: !420, line: 1110, baseType: !389, size: 192, offset: 11776)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !419, file: !420, line: 1111, baseType: !116, size: 128, offset: 11968)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !419, file: !420, line: 1173, baseType: !975, size: 64, offset: 12096)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !977, line: 62, size: 256, align: 256, elements: !978)
!977 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!978 = !{!979, !980, !981, !986}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !976, file: !977, line: 75, baseType: !429, size: 32)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !976, file: !977, line: 90, baseType: !429, size: 32, offset: 32)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !976, file: !977, line: 124, baseType: !982, size: 64, offset: 64)
!982 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !976, file: !977, line: 109, size: 64, elements: !983)
!983 = !{!984, !985}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !982, file: !977, line: 110, baseType: !292, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !982, file: !977, line: 112, baseType: !292, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !976, file: !977, line: 144, baseType: !429, size: 32, offset: 128)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !419, file: !420, line: 1174, baseType: !428, size: 32, offset: 12160)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !419, file: !420, line: 1179, baseType: !221, size: 64, offset: 12224)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !419, file: !420, line: 1182, baseType: !990, size: 128, offset: 12288)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !367, line: 76, size: 128, elements: !991)
!991 = !{!992, !997, !1000}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !990, file: !367, line: 85, baseType: !993, size: 64)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !994, line: 7, size: 64, elements: !995)
!994 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!995 = !{!996}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !993, file: !994, line: 12, baseType: !581, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !990, file: !367, line: 88, baseType: !998, size: 8, offset: 64)
!998 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !94, line: 30, baseType: !999)
!999 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !990, file: !367, line: 95, baseType: !998, size: 8, offset: 72)
!1001 = !DIDerivedType(tag: DW_TAG_member, scope: !419, file: !420, line: 1184, baseType: !1002, size: 128, offset: 12416)
!1002 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !419, file: !420, line: 1184, size: 128, elements: !1003)
!1003 = !{!1004, !1005}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1002, file: !420, line: 1185, baseType: !434, size: 32)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1002, file: !420, line: 1186, baseType: !712, size: 128, align: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !419, file: !420, line: 1190, baseType: !1007, size: 64, offset: 12544)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !420, line: 53, flags: DIFlagFwdDecl)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !419, file: !420, line: 1192, baseType: !1010, size: 128, offset: 12608)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !367, line: 64, size: 128, elements: !1011)
!1011 = !{!1012, !1105, !1106}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1010, file: !367, line: 65, baseType: !1013, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !262, line: 68, size: 512, align: 128, elements: !1015)
!1015 = !{!1016, !1017, !1097, !1104}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1014, file: !262, line: 69, baseType: !221, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, scope: !1014, file: !262, line: 77, baseType: !1018, size: 320, offset: 64)
!1018 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1014, file: !262, line: 77, size: 320, elements: !1019)
!1019 = !{!1020, !1029, !1034, !1062, !1070, !1076, !1089, !1096}
!1020 = !DIDerivedType(tag: DW_TAG_member, scope: !1018, file: !262, line: 78, baseType: !1021, size: 320)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1018, file: !262, line: 78, size: 320, elements: !1022)
!1022 = !{!1023, !1024, !1027, !1028}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1021, file: !262, line: 84, baseType: !116, size: 128)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1021, file: !262, line: 86, baseType: !1025, size: 64, offset: 128)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !262, line: 26, flags: DIFlagFwdDecl)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1021, file: !262, line: 87, baseType: !221, size: 64, offset: 192)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1021, file: !262, line: 94, baseType: !221, size: 64, offset: 256)
!1029 = !DIDerivedType(tag: DW_TAG_member, scope: !1018, file: !262, line: 96, baseType: !1030, size: 64)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1018, file: !262, line: 96, size: 64, elements: !1031)
!1031 = !{!1032}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1030, file: !262, line: 101, baseType: !1033, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !94, line: 143, baseType: !290)
!1034 = !DIDerivedType(tag: DW_TAG_member, scope: !1018, file: !262, line: 103, baseType: !1035, size: 320)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1018, file: !262, line: 103, size: 320, elements: !1036)
!1036 = !{!1037, !1047, !1050, !1051}
!1037 = !DIDerivedType(tag: DW_TAG_member, scope: !1035, file: !262, line: 104, baseType: !1038, size: 128)
!1038 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1035, file: !262, line: 104, size: 128, elements: !1039)
!1039 = !{!1040, !1041}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1038, file: !262, line: 105, baseType: !116, size: 128)
!1041 = !DIDerivedType(tag: DW_TAG_member, scope: !1038, file: !262, line: 106, baseType: !1042, size: 128)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1038, file: !262, line: 106, size: 128, elements: !1043)
!1043 = !{!1044, !1045, !1046}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1042, file: !262, line: 107, baseType: !1013, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1042, file: !262, line: 109, baseType: !155, size: 32, offset: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1042, file: !262, line: 110, baseType: !155, size: 32, offset: 96)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1035, file: !262, line: 117, baseType: !1048, size: 64, offset: 128)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !262, line: 117, flags: DIFlagFwdDecl)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1035, file: !262, line: 119, baseType: !95, size: 64, offset: 192)
!1051 = !DIDerivedType(tag: DW_TAG_member, scope: !1035, file: !262, line: 120, baseType: !1052, size: 64, offset: 256)
!1052 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1035, file: !262, line: 120, size: 64, elements: !1053)
!1053 = !{!1054, !1055, !1056}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1052, file: !262, line: 121, baseType: !95, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1052, file: !262, line: 122, baseType: !221, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, scope: !1052, file: !262, line: 123, baseType: !1057, size: 32)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1052, file: !262, line: 123, size: 32, elements: !1058)
!1058 = !{!1059, !1060, !1061}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1057, file: !262, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1057, file: !262, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1057, file: !262, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1062 = !DIDerivedType(tag: DW_TAG_member, scope: !1018, file: !262, line: 130, baseType: !1063, size: 192)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1018, file: !262, line: 130, size: 192, elements: !1064)
!1064 = !{!1065, !1066, !1067, !1068, !1069}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1063, file: !262, line: 131, baseType: !221, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1063, file: !262, line: 134, baseType: !567, size: 8, offset: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1063, file: !262, line: 135, baseType: !567, size: 8, offset: 72)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1063, file: !262, line: 136, baseType: !312, size: 32, offset: 96)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1063, file: !262, line: 137, baseType: !7, size: 32, offset: 128)
!1070 = !DIDerivedType(tag: DW_TAG_member, scope: !1018, file: !262, line: 139, baseType: !1071, size: 256)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1018, file: !262, line: 139, size: 256, elements: !1072)
!1072 = !{!1073, !1074, !1075}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1071, file: !262, line: 140, baseType: !221, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1071, file: !262, line: 141, baseType: !312, size: 32, offset: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1071, file: !262, line: 143, baseType: !116, size: 128, offset: 128)
!1076 = !DIDerivedType(tag: DW_TAG_member, scope: !1018, file: !262, line: 145, baseType: !1077, size: 256)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1018, file: !262, line: 145, size: 256, elements: !1078)
!1078 = !{!1079, !1080, !1082, !1083, !1088}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1077, file: !262, line: 146, baseType: !221, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1077, file: !262, line: 147, baseType: !1081, size: 64, offset: 64)
!1081 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !251, line: 509, baseType: !1013)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1077, file: !262, line: 148, baseType: !221, size: 64, offset: 128)
!1083 = !DIDerivedType(tag: DW_TAG_member, scope: !1077, file: !262, line: 149, baseType: !1084, size: 64, offset: 192)
!1084 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1077, file: !262, line: 149, size: 64, elements: !1085)
!1085 = !{!1086, !1087}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1084, file: !262, line: 150, baseType: !278, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1084, file: !262, line: 151, baseType: !312, size: 32)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1077, file: !262, line: 156, baseType: !129, offset: 256)
!1089 = !DIDerivedType(tag: DW_TAG_member, scope: !1018, file: !262, line: 159, baseType: !1090, size: 128)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1018, file: !262, line: 159, size: 128, elements: !1091)
!1091 = !{!1092, !1095}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1090, file: !262, line: 161, baseType: !1093, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !262, line: 161, flags: DIFlagFwdDecl)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1090, file: !262, line: 162, baseType: !95, size: 64, offset: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1018, file: !262, line: 176, baseType: !712, size: 128, align: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, scope: !1014, file: !262, line: 179, baseType: !1098, size: 32, offset: 384)
!1098 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1014, file: !262, line: 179, size: 32, elements: !1099)
!1099 = !{!1100, !1101, !1102, !1103}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1098, file: !262, line: 184, baseType: !312, size: 32)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1098, file: !262, line: 192, baseType: !7, size: 32)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1098, file: !262, line: 194, baseType: !7, size: 32)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1098, file: !262, line: 195, baseType: !155, size: 32)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1014, file: !262, line: 199, baseType: !312, size: 32, offset: 416)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1010, file: !367, line: 67, baseType: !429, size: 32, offset: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1010, file: !367, line: 68, baseType: !429, size: 32, offset: 96)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !419, file: !420, line: 1206, baseType: !155, size: 32, offset: 12736)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !419, file: !420, line: 1207, baseType: !155, size: 32, offset: 12768)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !419, file: !420, line: 1209, baseType: !221, size: 64, offset: 12800)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !419, file: !420, line: 1219, baseType: !290, size: 64, offset: 12864)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !419, file: !420, line: 1220, baseType: !290, size: 64, offset: 12928)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !419, file: !420, line: 1317, baseType: !155, size: 32, offset: 12992)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !419, file: !420, line: 1319, baseType: !418, size: 64, offset: 13056)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !419, file: !420, line: 1322, baseType: !1115, size: 64, offset: 13120)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1117, line: 9, flags: DIFlagFwdDecl)
!1117 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !419, file: !420, line: 1326, baseType: !434, size: 32, offset: 13184)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !419, file: !420, line: 1342, baseType: !95, size: 64, offset: 13248)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !419, file: !420, line: 1343, baseType: !292, size: 64, offset: 13312)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !419, file: !420, line: 1344, baseType: !290, size: 64, offset: 13376)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !419, file: !420, line: 1345, baseType: !292, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !419, file: !420, line: 1346, baseType: !292, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !419, file: !420, line: 1347, baseType: !292, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !419, file: !420, line: 1348, baseType: !712, size: 128, align: 64, offset: 13504)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !419, file: !420, line: 1358, baseType: !1127, size: 34816, offset: 13824)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1128, line: 485, size: 34816, elements: !1129)
!1128 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1129 = !{!1130, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1159, !1160, !1161, !1162, !1163, !1164, !1167, !1168, !1169}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1127, file: !1128, line: 487, baseType: !1131, size: 192)
!1131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1132, size: 192, elements: !172)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1133, line: 16, size: 64, elements: !1134)
!1133 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1134 = !{!1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1132, file: !1133, line: 17, baseType: !402, size: 16)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1132, file: !1133, line: 18, baseType: !402, size: 16, offset: 16)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1132, file: !1133, line: 19, baseType: !402, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1132, file: !1133, line: 19, baseType: !402, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1132, file: !1133, line: 19, baseType: !402, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1132, file: !1133, line: 19, baseType: !402, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1132, file: !1133, line: 19, baseType: !402, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1132, file: !1133, line: 20, baseType: !402, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1132, file: !1133, line: 20, baseType: !402, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1132, file: !1133, line: 20, baseType: !402, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1132, file: !1133, line: 20, baseType: !402, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1132, file: !1133, line: 20, baseType: !402, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1132, file: !1133, line: 20, baseType: !402, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1127, file: !1128, line: 491, baseType: !221, size: 64, offset: 192)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1127, file: !1128, line: 495, baseType: !213, size: 16, offset: 256)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1127, file: !1128, line: 496, baseType: !213, size: 16, offset: 272)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1127, file: !1128, line: 497, baseType: !213, size: 16, offset: 288)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1127, file: !1128, line: 498, baseType: !213, size: 16, offset: 304)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1127, file: !1128, line: 502, baseType: !221, size: 64, offset: 320)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1127, file: !1128, line: 503, baseType: !221, size: 64, offset: 384)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1127, file: !1128, line: 514, baseType: !1156, size: 256, offset: 448)
!1156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1157, size: 256, elements: !371)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1128, line: 483, flags: DIFlagFwdDecl)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1127, file: !1128, line: 516, baseType: !221, size: 64, offset: 704)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1127, file: !1128, line: 518, baseType: !221, size: 64, offset: 768)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1127, file: !1128, line: 520, baseType: !221, size: 64, offset: 832)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1127, file: !1128, line: 521, baseType: !221, size: 64, offset: 896)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1127, file: !1128, line: 522, baseType: !221, size: 64, offset: 960)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1127, file: !1128, line: 528, baseType: !1165, size: 64, offset: 1024)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1128, line: 10, flags: DIFlagFwdDecl)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1127, file: !1128, line: 535, baseType: !221, size: 64, offset: 1088)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1127, file: !1128, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1127, file: !1128, line: 540, baseType: !1170, size: 33280, offset: 1536)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1171, line: 317, size: 33280, elements: !1172)
!1171 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1172 = !{!1173, !1174, !1175}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1170, file: !1171, line: 330, baseType: !7, size: 32)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1170, file: !1171, line: 337, baseType: !221, size: 64, offset: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1170, file: !1171, line: 348, baseType: !1176, size: 32768, offset: 512)
!1176 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1171, line: 304, size: 32768, elements: !1177)
!1177 = !{!1178, !1191, !1230, !1280, !1297}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1176, file: !1171, line: 305, baseType: !1179, size: 896)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1171, line: 12, size: 896, elements: !1180)
!1180 = !{!1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1190}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1179, file: !1171, line: 13, baseType: !428, size: 32)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1179, file: !1171, line: 14, baseType: !428, size: 32, offset: 32)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1179, file: !1171, line: 15, baseType: !428, size: 32, offset: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1179, file: !1171, line: 16, baseType: !428, size: 32, offset: 96)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1179, file: !1171, line: 17, baseType: !428, size: 32, offset: 128)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1179, file: !1171, line: 18, baseType: !428, size: 32, offset: 160)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1179, file: !1171, line: 19, baseType: !428, size: 32, offset: 192)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1179, file: !1171, line: 22, baseType: !1189, size: 640, offset: 224)
!1189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !428, size: 640, elements: !102)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1179, file: !1171, line: 25, baseType: !428, size: 32, offset: 864)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1176, file: !1171, line: 306, baseType: !1192, size: 4096, align: 128)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1171, line: 34, size: 4096, align: 128, elements: !1193)
!1193 = !{!1194, !1195, !1196, !1197, !1198, !1213, !1214, !1215, !1219, !1221, !1225}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1192, file: !1171, line: 35, baseType: !402, size: 16)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1192, file: !1171, line: 36, baseType: !402, size: 16, offset: 16)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1192, file: !1171, line: 37, baseType: !402, size: 16, offset: 32)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1192, file: !1171, line: 38, baseType: !402, size: 16, offset: 48)
!1198 = !DIDerivedType(tag: DW_TAG_member, scope: !1192, file: !1171, line: 39, baseType: !1199, size: 128, offset: 64)
!1199 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1192, file: !1171, line: 39, size: 128, elements: !1200)
!1200 = !{!1201, !1206}
!1201 = !DIDerivedType(tag: DW_TAG_member, scope: !1199, file: !1171, line: 40, baseType: !1202, size: 128)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1199, file: !1171, line: 40, size: 128, elements: !1203)
!1203 = !{!1204, !1205}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1202, file: !1171, line: 41, baseType: !290, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1202, file: !1171, line: 42, baseType: !290, size: 64, offset: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, scope: !1199, file: !1171, line: 44, baseType: !1207, size: 128)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1199, file: !1171, line: 44, size: 128, elements: !1208)
!1208 = !{!1209, !1210, !1211, !1212}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1207, file: !1171, line: 45, baseType: !428, size: 32)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1207, file: !1171, line: 46, baseType: !428, size: 32, offset: 32)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1207, file: !1171, line: 47, baseType: !428, size: 32, offset: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1207, file: !1171, line: 48, baseType: !428, size: 32, offset: 96)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1192, file: !1171, line: 51, baseType: !428, size: 32, offset: 192)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1192, file: !1171, line: 52, baseType: !428, size: 32, offset: 224)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1192, file: !1171, line: 55, baseType: !1216, size: 1024, offset: 256)
!1216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !428, size: 1024, elements: !1217)
!1217 = !{!1218}
!1218 = !DISubrange(count: 32)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1192, file: !1171, line: 58, baseType: !1220, size: 2048, offset: 1280)
!1220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !428, size: 2048, elements: !176)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1192, file: !1171, line: 60, baseType: !1222, size: 384, offset: 3328)
!1222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !428, size: 384, elements: !1223)
!1223 = !{!1224}
!1224 = !DISubrange(count: 12)
!1225 = !DIDerivedType(tag: DW_TAG_member, scope: !1192, file: !1171, line: 62, baseType: !1226, size: 384, offset: 3712)
!1226 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1192, file: !1171, line: 62, size: 384, elements: !1227)
!1227 = !{!1228, !1229}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1226, file: !1171, line: 63, baseType: !1222, size: 384)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1226, file: !1171, line: 64, baseType: !1222, size: 384)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1176, file: !1171, line: 307, baseType: !1231, size: 1088)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1171, line: 79, size: 1088, elements: !1232)
!1232 = !{!1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1279}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1231, file: !1171, line: 80, baseType: !428, size: 32)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1231, file: !1171, line: 81, baseType: !428, size: 32, offset: 32)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1231, file: !1171, line: 82, baseType: !428, size: 32, offset: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1231, file: !1171, line: 83, baseType: !428, size: 32, offset: 96)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1231, file: !1171, line: 84, baseType: !428, size: 32, offset: 128)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1231, file: !1171, line: 85, baseType: !428, size: 32, offset: 160)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1231, file: !1171, line: 86, baseType: !428, size: 32, offset: 192)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1231, file: !1171, line: 88, baseType: !1189, size: 640, offset: 224)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1231, file: !1171, line: 89, baseType: !565, size: 8, offset: 864)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1231, file: !1171, line: 90, baseType: !565, size: 8, offset: 872)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1231, file: !1171, line: 91, baseType: !565, size: 8, offset: 880)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1231, file: !1171, line: 92, baseType: !565, size: 8, offset: 888)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1231, file: !1171, line: 93, baseType: !565, size: 8, offset: 896)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1231, file: !1171, line: 94, baseType: !565, size: 8, offset: 904)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1231, file: !1171, line: 95, baseType: !1248, size: 64, offset: 960)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1250, line: 11, size: 128, elements: !1251)
!1250 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1251 = !{!1252, !1253}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1249, file: !1250, line: 12, baseType: !206, size: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1249, file: !1250, line: 13, baseType: !1254, size: 64, offset: 64)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1256, line: 56, size: 1344, elements: !1257)
!1256 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1257 = !{!1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1255, file: !1256, line: 61, baseType: !221, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1255, file: !1256, line: 62, baseType: !221, size: 64, offset: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1255, file: !1256, line: 63, baseType: !221, size: 64, offset: 128)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1255, file: !1256, line: 64, baseType: !221, size: 64, offset: 192)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1255, file: !1256, line: 65, baseType: !221, size: 64, offset: 256)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1255, file: !1256, line: 66, baseType: !221, size: 64, offset: 320)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1255, file: !1256, line: 68, baseType: !221, size: 64, offset: 384)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1255, file: !1256, line: 69, baseType: !221, size: 64, offset: 448)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1255, file: !1256, line: 70, baseType: !221, size: 64, offset: 512)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1255, file: !1256, line: 71, baseType: !221, size: 64, offset: 576)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1255, file: !1256, line: 72, baseType: !221, size: 64, offset: 640)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1255, file: !1256, line: 73, baseType: !221, size: 64, offset: 704)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1255, file: !1256, line: 74, baseType: !221, size: 64, offset: 768)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1255, file: !1256, line: 75, baseType: !221, size: 64, offset: 832)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1255, file: !1256, line: 76, baseType: !221, size: 64, offset: 896)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1255, file: !1256, line: 81, baseType: !221, size: 64, offset: 960)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1255, file: !1256, line: 83, baseType: !221, size: 64, offset: 1024)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1255, file: !1256, line: 84, baseType: !221, size: 64, offset: 1088)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1255, file: !1256, line: 85, baseType: !221, size: 64, offset: 1152)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1255, file: !1256, line: 86, baseType: !221, size: 64, offset: 1216)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1255, file: !1256, line: 87, baseType: !221, size: 64, offset: 1280)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1231, file: !1171, line: 96, baseType: !428, size: 32, offset: 1024)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1176, file: !1171, line: 308, baseType: !1281, size: 4608, align: 512)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1171, line: 289, size: 4608, align: 512, elements: !1282)
!1282 = !{!1283, !1284, !1293}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1281, file: !1171, line: 290, baseType: !1192, size: 4096, align: 128)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1281, file: !1171, line: 291, baseType: !1285, size: 512, offset: 4096)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1171, line: 268, size: 512, elements: !1286)
!1286 = !{!1287, !1288, !1289}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1285, file: !1171, line: 269, baseType: !290, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1285, file: !1171, line: 270, baseType: !290, size: 64, offset: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1285, file: !1171, line: 271, baseType: !1290, size: 384, offset: 128)
!1290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 384, elements: !1291)
!1291 = !{!1292}
!1292 = !DISubrange(count: 6)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1281, file: !1171, line: 292, baseType: !1294, offset: 4608)
!1294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, elements: !1295)
!1295 = !{!1296}
!1296 = !DISubrange(count: 0)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1176, file: !1171, line: 309, baseType: !1298, size: 32768)
!1298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 32768, elements: !1299)
!1299 = !{!1300}
!1300 = !DISubrange(count: 4096)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !415, file: !262, line: 378, baseType: !1302, size: 64, offset: 64)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !411, file: !262, line: 384, baseType: !734, size: 192, offset: 192)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !282, file: !262, line: 500, baseType: !129, offset: 6656)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !282, file: !262, line: 501, baseType: !1306, size: 64, offset: 6656)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !262, line: 387, flags: DIFlagFwdDecl)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !282, file: !262, line: 516, baseType: !1309, size: 64, offset: 6720)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !262, line: 516, flags: DIFlagFwdDecl)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !282, file: !262, line: 519, baseType: !249, size: 64, offset: 6784)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !282, file: !262, line: 521, baseType: !1313, size: 64, offset: 6848)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !262, line: 521, flags: DIFlagFwdDecl)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !282, file: !262, line: 545, baseType: !312, size: 32, offset: 6912)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !282, file: !262, line: 548, baseType: !998, size: 8, offset: 6944)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !282, file: !262, line: 550, baseType: !1318, offset: 6952)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1319, line: 142, elements: !143)
!1319 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !282, file: !262, line: 554, baseType: !1321, size: 256, offset: 6976)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1322, line: 102, size: 256, elements: !1323)
!1322 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1323 = !{!1324, !1325, !1326}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1321, file: !1322, line: 103, baseType: !320, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1321, file: !1322, line: 104, baseType: !116, size: 128, offset: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1321, file: !1322, line: 105, baseType: !1327, size: 64, offset: 192)
!1327 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1322, line: 21, baseType: !1328)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{null, !1331}
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !282, file: !262, line: 557, baseType: !428, size: 32, offset: 7232)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !279, file: !262, line: 565, baseType: !1334, offset: 7296)
!1334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, elements: !1335)
!1335 = !{!1336}
!1336 = !DISubrange(count: -1)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !261, file: !262, line: 333, baseType: !1338, size: 64, offset: 576)
!1338 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !251, line: 284, baseType: !1339)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !251, line: 284, size: 64, elements: !1340)
!1340 = !{!1341}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1339, file: !251, line: 284, baseType: !1342, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !310, line: 19, baseType: !221)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !261, file: !262, line: 334, baseType: !221, size: 64, offset: 640)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !261, file: !262, line: 343, baseType: !1345, size: 256, offset: 704)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !261, file: !262, line: 340, size: 256, elements: !1346)
!1346 = !{!1347, !1348}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1345, file: !262, line: 341, baseType: !269, size: 192, align: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1345, file: !262, line: 342, baseType: !221, size: 64, offset: 192)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !261, file: !262, line: 351, baseType: !116, size: 128, offset: 960)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !261, file: !262, line: 353, baseType: !1351, size: 64, offset: 1088)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !262, line: 353, flags: DIFlagFwdDecl)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !261, file: !262, line: 356, baseType: !1354, size: 64, offset: 1152)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1356)
!1356 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !262, line: 356, flags: DIFlagFwdDecl)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !261, file: !262, line: 359, baseType: !221, size: 64, offset: 1216)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !261, file: !262, line: 361, baseType: !249, size: 64, offset: 1280)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !261, file: !262, line: 362, baseType: !95, size: 64, offset: 1344)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !261, file: !262, line: 365, baseType: !320, size: 64, offset: 1408)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !261, file: !262, line: 373, baseType: !1362, offset: 1472)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !262, line: 296, elements: !143)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !228, file: !196, line: 90, baseType: !223, size: 64, offset: 192)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !228, file: !196, line: 91, baseType: !1365, size: 64, offset: 256)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !186, file: !110, line: 143, baseType: !1367, size: 64, offset: 256)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!1370, !122}
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1372)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1373)
!1373 = !{!1374, !1375, !1379, !1383, !1391, !1395}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1372, file: !18, line: 40, baseType: !17, size: 32)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1372, file: !18, line: 41, baseType: !1376, size: 64, offset: 64)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!998}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1372, file: !18, line: 42, baseType: !1380, size: 64, offset: 128)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{!95}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1372, file: !18, line: 43, baseType: !1384, size: 64, offset: 192)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!1387, !1389}
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1372, file: !18, line: 44, baseType: !1392, size: 64, offset: 256)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!1387}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1372, file: !18, line: 45, baseType: !1396, size: 64, offset: 320)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{null, !95}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !186, file: !110, line: 144, baseType: !1400, size: 64, offset: 320)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{!1387, !122}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !186, file: !110, line: 145, baseType: !1404, size: 64, offset: 384)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{null, !122, !1407, !1414}
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1409, line: 23, baseType: !1410)
!1409 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1409, line: 21, size: 32, elements: !1411)
!1411 = !{!1412}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1410, file: !1409, line: 22, baseType: !1413, size: 32)
!1413 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !94, line: 32, baseType: !894)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1409, line: 28, baseType: !1416)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1409, line: 26, size: 32, elements: !1417)
!1417 = !{!1418}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1416, file: !1409, line: 27, baseType: !1419, size: 32)
!1419 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !94, line: 33, baseType: !1420)
!1420 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !204, line: 50, baseType: !7)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !109, file: !110, line: 70, baseType: !1422, size: 64, offset: 384)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1424, line: 123, size: 1024, elements: !1425)
!1424 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1425 = !{!1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1567, !1568, !1569, !1570, !1571}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1423, file: !1424, line: 124, baseType: !312, size: 32)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1423, file: !1424, line: 125, baseType: !312, size: 32, offset: 32)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1423, file: !1424, line: 135, baseType: !1422, size: 64, offset: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1423, file: !1424, line: 136, baseType: !113, size: 64, offset: 128)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1423, file: !1424, line: 138, baseType: !269, size: 192, align: 64, offset: 192)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1423, file: !1424, line: 140, baseType: !1387, size: 64, offset: 384)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1423, file: !1424, line: 141, baseType: !7, size: 32, offset: 448)
!1433 = !DIDerivedType(tag: DW_TAG_member, scope: !1423, file: !1424, line: 142, baseType: !1434, size: 256, offset: 512)
!1434 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1423, file: !1424, line: 142, size: 256, elements: !1435)
!1435 = !{!1436, !1490, !1494}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1434, file: !1424, line: 143, baseType: !1437, size: 192)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1424, line: 91, size: 192, elements: !1438)
!1438 = !{!1439, !1440, !1441}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1437, file: !1424, line: 92, baseType: !221, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1437, file: !1424, line: 94, baseType: !286, size: 64, offset: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1437, file: !1424, line: 100, baseType: !1442, size: 64, offset: 128)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1424, line: 180, size: 704, elements: !1444)
!1444 = !{!1445, !1446, !1447, !1460, !1461, !1462, !1488, !1489}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1443, file: !1424, line: 182, baseType: !1422, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1443, file: !1424, line: 183, baseType: !7, size: 32, offset: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1443, file: !1424, line: 186, baseType: !1448, size: 192, offset: 128)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1449, line: 19, size: 192, elements: !1450)
!1449 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1450 = !{!1451, !1458, !1459}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1448, file: !1449, line: 20, baseType: !1452, size: 128)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1453, line: 292, size: 128, elements: !1454)
!1453 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1454 = !{!1455, !1456, !1457}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1452, file: !1453, line: 293, baseType: !129)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1452, file: !1453, line: 295, baseType: !93, size: 32)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1452, file: !1453, line: 296, baseType: !95, size: 64, offset: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1448, file: !1449, line: 21, baseType: !7, size: 32, offset: 128)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1448, file: !1449, line: 22, baseType: !7, size: 32, offset: 160)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1443, file: !1424, line: 187, baseType: !428, size: 32, offset: 320)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1443, file: !1424, line: 188, baseType: !428, size: 32, offset: 352)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1443, file: !1424, line: 189, baseType: !1463, size: 64, offset: 384)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1424, line: 168, size: 320, elements: !1465)
!1465 = !{!1466, !1472, !1476, !1480, !1484}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1464, file: !1424, line: 169, baseType: !1467, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{!155, !1470, !1442}
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !251, line: 539, flags: DIFlagFwdDecl)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1464, file: !1424, line: 171, baseType: !1473, size: 64, offset: 64)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{!155, !1422, !113, !212}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1464, file: !1424, line: 173, baseType: !1477, size: 64, offset: 128)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!155, !1422}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1464, file: !1424, line: 174, baseType: !1481, size: 64, offset: 192)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DISubroutineType(types: !1483)
!1483 = !{!155, !1422, !1422, !113}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1464, file: !1424, line: 176, baseType: !1485, size: 64, offset: 256)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!155, !1470, !1422, !1442}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1443, file: !1424, line: 192, baseType: !116, size: 128, offset: 448)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1443, file: !1424, line: 194, baseType: !705, size: 128, offset: 576)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1434, file: !1424, line: 144, baseType: !1491, size: 64)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1424, line: 103, size: 64, elements: !1492)
!1492 = !{!1493}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1491, file: !1424, line: 104, baseType: !1422, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1434, file: !1424, line: 145, baseType: !1495, size: 256)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1424, line: 107, size: 256, elements: !1496)
!1496 = !{!1497, !1562, !1565, !1566}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1495, file: !1424, line: 108, baseType: !1498, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1500)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1424, line: 217, size: 768, elements: !1501)
!1501 = !{!1502, !1522, !1526, !1530, !1535, !1539, !1543, !1547, !1548, !1549, !1550, !1558}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1500, file: !1424, line: 222, baseType: !1503, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{!155, !1506}
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1424, line: 197, size: 1088, elements: !1508)
!1508 = !{!1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1507, file: !1424, line: 199, baseType: !1422, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1507, file: !1424, line: 200, baseType: !249, size: 64, offset: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1507, file: !1424, line: 201, baseType: !1470, size: 64, offset: 128)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1507, file: !1424, line: 202, baseType: !95, size: 64, offset: 192)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1507, file: !1424, line: 205, baseType: !389, size: 192, offset: 256)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1507, file: !1424, line: 206, baseType: !389, size: 192, offset: 448)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1507, file: !1424, line: 207, baseType: !155, size: 32, offset: 640)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1507, file: !1424, line: 208, baseType: !116, size: 128, offset: 704)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1507, file: !1424, line: 209, baseType: !171, size: 64, offset: 832)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1507, file: !1424, line: 211, baseType: !218, size: 64, offset: 896)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1507, file: !1424, line: 212, baseType: !998, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1507, file: !1424, line: 213, baseType: !998, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1507, file: !1424, line: 214, baseType: !1354, size: 64, offset: 1024)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1500, file: !1424, line: 223, baseType: !1523, size: 64, offset: 64)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{null, !1506}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1500, file: !1424, line: 236, baseType: !1527, size: 64, offset: 128)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!155, !1470, !95}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1500, file: !1424, line: 238, baseType: !1531, size: 64, offset: 192)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!95, !1470, !1534}
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1500, file: !1424, line: 239, baseType: !1536, size: 64, offset: 256)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DISubroutineType(types: !1538)
!1538 = !{!95, !1470, !95, !1534}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1500, file: !1424, line: 240, baseType: !1540, size: 64, offset: 320)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{null, !1470, !95}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1500, file: !1424, line: 242, baseType: !1544, size: 64, offset: 384)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!202, !1506, !171, !218, !252}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1500, file: !1424, line: 252, baseType: !218, size: 64, offset: 448)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1500, file: !1424, line: 259, baseType: !998, size: 8, offset: 512)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1500, file: !1424, line: 260, baseType: !1544, size: 64, offset: 576)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1500, file: !1424, line: 263, baseType: !1551, size: 64, offset: 640)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{!1554, !1506, !1556}
!1554 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1555, line: 52, baseType: !7)
!1555 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1424, line: 27, flags: DIFlagFwdDecl)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1500, file: !1424, line: 266, baseType: !1559, size: 64, offset: 704)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!155, !1506, !260}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1495, file: !1424, line: 109, baseType: !1563, size: 64, offset: 64)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1424, line: 31, flags: DIFlagFwdDecl)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1495, file: !1424, line: 110, baseType: !252, size: 64, offset: 128)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1495, file: !1424, line: 111, baseType: !1422, size: 64, offset: 192)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1423, file: !1424, line: 148, baseType: !95, size: 64, offset: 768)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1423, file: !1424, line: 154, baseType: !290, size: 64, offset: 832)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1423, file: !1424, line: 156, baseType: !213, size: 16, offset: 896)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1423, file: !1424, line: 157, baseType: !212, size: 16, offset: 912)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1423, file: !1424, line: 158, baseType: !1572, size: 64, offset: 960)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1424, line: 32, flags: DIFlagFwdDecl)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !109, file: !110, line: 71, baseType: !1575, size: 32, offset: 448)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1576, line: 19, size: 32, elements: !1577)
!1576 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1577 = !{!1578}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1575, file: !1576, line: 20, baseType: !434, size: 32)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !109, file: !110, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !109, file: !110, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !109, file: !110, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !109, file: !110, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !109, file: !110, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !106, file: !30, line: 463, baseType: !105, size: 64, offset: 512)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !106, file: !30, line: 465, baseType: !1586, size: 64, offset: 576)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !106, file: !30, line: 467, baseType: !113, size: 64, offset: 640)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !106, file: !30, line: 468, baseType: !1590, size: 64, offset: 704)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1592)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1593)
!1593 = !{!1594, !1595, !1596, !1600, !1605, !1609}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1592, file: !30, line: 88, baseType: !113, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1592, file: !30, line: 89, baseType: !225, size: 64, offset: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1592, file: !30, line: 90, baseType: !1597, size: 64, offset: 128)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!155, !105, !166}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1592, file: !30, line: 91, baseType: !1601, size: 64, offset: 192)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!171, !105, !1604, !1407, !1414}
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1592, file: !30, line: 93, baseType: !1606, size: 64, offset: 256)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{null, !105}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1592, file: !30, line: 95, baseType: !1610, size: 64, offset: 320)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1612)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1613)
!1613 = !{!1614, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1612, file: !37, line: 279, baseType: !1615, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!155, !105}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1612, file: !37, line: 280, baseType: !1606, size: 64, offset: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1612, file: !37, line: 281, baseType: !1615, size: 64, offset: 128)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1612, file: !37, line: 282, baseType: !1615, size: 64, offset: 192)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1612, file: !37, line: 283, baseType: !1615, size: 64, offset: 256)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1612, file: !37, line: 284, baseType: !1615, size: 64, offset: 320)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1612, file: !37, line: 285, baseType: !1615, size: 64, offset: 384)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1612, file: !37, line: 286, baseType: !1615, size: 64, offset: 448)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1612, file: !37, line: 287, baseType: !1615, size: 64, offset: 512)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1612, file: !37, line: 288, baseType: !1615, size: 64, offset: 576)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1612, file: !37, line: 289, baseType: !1615, size: 64, offset: 640)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1612, file: !37, line: 290, baseType: !1615, size: 64, offset: 704)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1612, file: !37, line: 291, baseType: !1615, size: 64, offset: 768)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1612, file: !37, line: 292, baseType: !1615, size: 64, offset: 832)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1612, file: !37, line: 293, baseType: !1615, size: 64, offset: 896)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1612, file: !37, line: 294, baseType: !1615, size: 64, offset: 960)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1612, file: !37, line: 295, baseType: !1615, size: 64, offset: 1024)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1612, file: !37, line: 296, baseType: !1615, size: 64, offset: 1088)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1612, file: !37, line: 297, baseType: !1615, size: 64, offset: 1152)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1612, file: !37, line: 298, baseType: !1615, size: 64, offset: 1216)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1612, file: !37, line: 299, baseType: !1615, size: 64, offset: 1280)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1612, file: !37, line: 300, baseType: !1615, size: 64, offset: 1344)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1612, file: !37, line: 301, baseType: !1615, size: 64, offset: 1408)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !106, file: !30, line: 470, baseType: !1641, size: 64, offset: 768)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1643, line: 82, size: 1408, elements: !1644)
!1643 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1644 = !{!1645, !1646, !1647, !1648, !1649, !1650, !1651, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1730, !1733, !1736}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1642, file: !1643, line: 83, baseType: !113, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1642, file: !1643, line: 84, baseType: !113, size: 64, offset: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1642, file: !1643, line: 85, baseType: !105, size: 64, offset: 128)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1642, file: !1643, line: 86, baseType: !225, size: 64, offset: 192)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1642, file: !1643, line: 87, baseType: !225, size: 64, offset: 256)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1642, file: !1643, line: 88, baseType: !225, size: 64, offset: 320)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1642, file: !1643, line: 90, baseType: !1652, size: 64, offset: 384)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{!155, !105, !1655}
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1657)
!1657 = !{!1658, !1659, !1660, !1664, !1665, !1666, !1667, !1681, !1694, !1695, !1696, !1697, !1698, !1706, !1707, !1708, !1709, !1710, !1711}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1656, file: !24, line: 96, baseType: !113, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1656, file: !24, line: 97, baseType: !1641, size: 64, offset: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1656, file: !24, line: 99, baseType: !1661, size: 64, offset: 128)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1663, line: 76, flags: DIFlagFwdDecl)
!1663 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1656, file: !24, line: 100, baseType: !113, size: 64, offset: 192)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1656, file: !24, line: 102, baseType: !998, size: 8, offset: 256)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1656, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1656, file: !24, line: 105, baseType: !1668, size: 64, offset: 320)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1670)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1671, line: 262, size: 1600, elements: !1672)
!1671 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1672 = !{!1673, !1675, !1676, !1680}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1670, file: !1671, line: 263, baseType: !1674, size: 256)
!1674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 256, elements: !1217)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1670, file: !1671, line: 264, baseType: !1674, size: 256, offset: 256)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1670, file: !1671, line: 265, baseType: !1677, size: 1024, offset: 512)
!1677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 1024, elements: !1678)
!1678 = !{!1679}
!1679 = !DISubrange(count: 128)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1670, file: !1671, line: 266, baseType: !1387, size: 64, offset: 1536)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1656, file: !24, line: 106, baseType: !1682, size: 64, offset: 384)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1684)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1671, line: 210, size: 256, elements: !1685)
!1685 = !{!1686, !1690, !1692, !1693}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1684, file: !1671, line: 211, baseType: !1687, size: 72)
!1687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !566, size: 72, elements: !1688)
!1688 = !{!1689}
!1689 = !DISubrange(count: 9)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1684, file: !1671, line: 212, baseType: !1691, size: 64, offset: 128)
!1691 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1671, line: 14, baseType: !221)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1684, file: !1671, line: 213, baseType: !429, size: 32, offset: 192)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1684, file: !1671, line: 214, baseType: !429, size: 32, offset: 224)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1656, file: !24, line: 108, baseType: !1615, size: 64, offset: 448)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1656, file: !24, line: 109, baseType: !1606, size: 64, offset: 512)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1656, file: !24, line: 110, baseType: !1615, size: 64, offset: 576)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1656, file: !24, line: 111, baseType: !1606, size: 64, offset: 640)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1656, file: !24, line: 112, baseType: !1699, size: 64, offset: 704)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{!155, !105, !1702}
!1702 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1703)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1704)
!1704 = !{!1705}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1703, file: !37, line: 51, baseType: !155, size: 32)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1656, file: !24, line: 113, baseType: !1615, size: 64, offset: 768)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1656, file: !24, line: 114, baseType: !225, size: 64, offset: 832)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1656, file: !24, line: 115, baseType: !225, size: 64, offset: 896)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1656, file: !24, line: 117, baseType: !1610, size: 64, offset: 960)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1656, file: !24, line: 118, baseType: !1606, size: 64, offset: 1024)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1656, file: !24, line: 120, baseType: !1712, size: 64, offset: 1088)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1642, file: !1643, line: 91, baseType: !1597, size: 64, offset: 448)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1642, file: !1643, line: 92, baseType: !1615, size: 64, offset: 512)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1642, file: !1643, line: 93, baseType: !1606, size: 64, offset: 576)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1642, file: !1643, line: 94, baseType: !1615, size: 64, offset: 640)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1642, file: !1643, line: 95, baseType: !1606, size: 64, offset: 704)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1642, file: !1643, line: 97, baseType: !1615, size: 64, offset: 768)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1642, file: !1643, line: 98, baseType: !1615, size: 64, offset: 832)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1642, file: !1643, line: 100, baseType: !1699, size: 64, offset: 896)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1642, file: !1643, line: 101, baseType: !1615, size: 64, offset: 960)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1642, file: !1643, line: 103, baseType: !1615, size: 64, offset: 1024)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1642, file: !1643, line: 105, baseType: !1615, size: 64, offset: 1088)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1642, file: !1643, line: 107, baseType: !1610, size: 64, offset: 1152)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1642, file: !1643, line: 109, baseType: !1727, size: 64, offset: 1216)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1729)
!1729 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1643, line: 109, flags: DIFlagFwdDecl)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1642, file: !1643, line: 111, baseType: !1731, size: 64, offset: 1280)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1643, line: 111, flags: DIFlagFwdDecl)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1642, file: !1643, line: 112, baseType: !1734, offset: 1344)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1735, line: 187, elements: !143)
!1735 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1642, file: !1643, line: 114, baseType: !998, size: 8, offset: 1344)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !106, file: !30, line: 471, baseType: !1655, size: 64, offset: 832)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !106, file: !30, line: 473, baseType: !95, size: 64, offset: 896)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !106, file: !30, line: 475, baseType: !95, size: 64, offset: 960)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !106, file: !30, line: 480, baseType: !389, size: 192, offset: 1024)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !106, file: !30, line: 484, baseType: !1742, size: 576, offset: 1216)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1743)
!1743 = !{!1744, !1745, !1746, !1747, !1748, !1749}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1742, file: !30, line: 362, baseType: !116, size: 128)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1742, file: !30, line: 363, baseType: !116, size: 128, offset: 128)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1742, file: !30, line: 364, baseType: !116, size: 128, offset: 256)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1742, file: !30, line: 365, baseType: !116, size: 128, offset: 384)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1742, file: !30, line: 366, baseType: !998, size: 8, offset: 512)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1742, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !106, file: !30, line: 485, baseType: !1751, size: 2304, offset: 1792)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1752)
!1752 = !{!1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1848, !1852}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1751, file: !37, line: 566, baseType: !1702, size: 32)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1751, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1751, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1751, file: !37, line: 569, baseType: !998, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1751, file: !37, line: 570, baseType: !998, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1751, file: !37, line: 571, baseType: !998, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1751, file: !37, line: 572, baseType: !998, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1751, file: !37, line: 573, baseType: !998, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1751, file: !37, line: 574, baseType: !998, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1751, file: !37, line: 575, baseType: !998, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1751, file: !37, line: 576, baseType: !998, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1751, file: !37, line: 577, baseType: !428, size: 32, offset: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1751, file: !37, line: 578, baseType: !129, offset: 96)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1751, file: !37, line: 580, baseType: !116, size: 128, offset: 128)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1751, file: !37, line: 581, baseType: !734, size: 192, offset: 256)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1751, file: !37, line: 582, baseType: !1769, size: 64, offset: 448)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1771, line: 43, size: 1472, elements: !1772)
!1771 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1772 = !{!1773, !1774, !1775, !1776, !1777, !1780, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1770, file: !1771, line: 44, baseType: !113, size: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1770, file: !1771, line: 45, baseType: !155, size: 32, offset: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1770, file: !1771, line: 46, baseType: !116, size: 128, offset: 128)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1770, file: !1771, line: 47, baseType: !129, offset: 256)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1770, file: !1771, line: 48, baseType: !1778, size: 64, offset: 256)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1770, file: !1771, line: 49, baseType: !1781, size: 320, offset: 320)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1782, line: 11, size: 320, elements: !1783)
!1782 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1783 = !{!1784, !1785, !1786, !1791}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1781, file: !1782, line: 16, baseType: !698, size: 128)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1781, file: !1782, line: 17, baseType: !221, size: 64, offset: 128)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1781, file: !1782, line: 18, baseType: !1787, size: 64, offset: 192)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{null, !1790}
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1781, file: !1782, line: 19, baseType: !428, size: 32, offset: 256)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1770, file: !1771, line: 50, baseType: !221, size: 64, offset: 640)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1770, file: !1771, line: 51, baseType: !504, size: 64, offset: 704)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1770, file: !1771, line: 52, baseType: !504, size: 64, offset: 768)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1770, file: !1771, line: 53, baseType: !504, size: 64, offset: 832)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1770, file: !1771, line: 54, baseType: !504, size: 64, offset: 896)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1770, file: !1771, line: 55, baseType: !504, size: 64, offset: 960)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1770, file: !1771, line: 56, baseType: !221, size: 64, offset: 1024)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1770, file: !1771, line: 57, baseType: !221, size: 64, offset: 1088)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1770, file: !1771, line: 58, baseType: !221, size: 64, offset: 1152)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1770, file: !1771, line: 59, baseType: !221, size: 64, offset: 1216)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1770, file: !1771, line: 60, baseType: !221, size: 64, offset: 1280)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1770, file: !1771, line: 61, baseType: !105, size: 64, offset: 1344)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1770, file: !1771, line: 62, baseType: !998, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1770, file: !1771, line: 63, baseType: !998, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1751, file: !37, line: 583, baseType: !998, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1751, file: !37, line: 584, baseType: !998, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1751, file: !37, line: 585, baseType: !998, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1751, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1751, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1751, file: !37, line: 592, baseType: !496, size: 512, offset: 576)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1751, file: !37, line: 593, baseType: !290, size: 64, offset: 1088)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1751, file: !37, line: 594, baseType: !1321, size: 256, offset: 1152)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1751, file: !37, line: 595, baseType: !705, size: 128, offset: 1408)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1751, file: !37, line: 596, baseType: !1778, size: 64, offset: 1536)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1751, file: !37, line: 597, baseType: !312, size: 32, offset: 1600)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1751, file: !37, line: 598, baseType: !312, size: 32, offset: 1632)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1751, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1751, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1751, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1751, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1751, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1751, file: !37, line: 604, baseType: !998, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1751, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1751, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1751, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1751, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1751, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1751, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1751, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1751, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1751, file: !37, line: 613, baseType: !155, size: 32, offset: 1792)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1751, file: !37, line: 614, baseType: !155, size: 32, offset: 1824)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1751, file: !37, line: 615, baseType: !290, size: 64, offset: 1856)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1751, file: !37, line: 616, baseType: !290, size: 64, offset: 1920)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1751, file: !37, line: 617, baseType: !290, size: 64, offset: 1984)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1751, file: !37, line: 618, baseType: !290, size: 64, offset: 2048)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1751, file: !37, line: 620, baseType: !1839, size: 64, offset: 2112)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1841)
!1841 = !{!1842, !1843, !1844, !1845}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1840, file: !37, line: 537, baseType: !129)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1840, file: !37, line: 538, baseType: !7, size: 32)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1840, file: !37, line: 540, baseType: !116, size: 128, offset: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1840, file: !37, line: 543, baseType: !1846, size: 64, offset: 192)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1751, file: !37, line: 621, baseType: !1849, size: 64, offset: 2176)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DISubroutineType(types: !1851)
!1851 = !{null, !105, !658}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1751, file: !37, line: 622, baseType: !1853, size: 64, offset: 2240)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !106, file: !30, line: 486, baseType: !1856, size: 64, offset: 4096)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1858)
!1858 = !{!1859, !1860, !1861, !1865, !1866, !1867}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1857, file: !37, line: 643, baseType: !1612, size: 1472)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1857, file: !37, line: 644, baseType: !1615, size: 64, offset: 1472)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1857, file: !37, line: 645, baseType: !1862, size: 64, offset: 1536)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DISubroutineType(types: !1864)
!1864 = !{null, !105, !998}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1857, file: !37, line: 646, baseType: !1615, size: 64, offset: 1600)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1857, file: !37, line: 647, baseType: !1606, size: 64, offset: 1664)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1857, file: !37, line: 648, baseType: !1606, size: 64, offset: 1728)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !106, file: !30, line: 493, baseType: !1869, size: 64, offset: 4160)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !106, file: !30, line: 499, baseType: !116, size: 128, offset: 4224)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !106, file: !30, line: 502, baseType: !1873, size: 64, offset: 4352)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1875)
!1875 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !106, file: !30, line: 504, baseType: !1877, size: 64, offset: 4416)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !106, file: !30, line: 505, baseType: !290, size: 64, offset: 4480)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !106, file: !30, line: 510, baseType: !290, size: 64, offset: 4544)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !106, file: !30, line: 511, baseType: !1881, size: 64, offset: 4608)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1883)
!1883 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !106, file: !30, line: 513, baseType: !1885, size: 64, offset: 4672)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !1887)
!1887 = !{!1888, !1889}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1886, file: !30, line: 293, baseType: !7, size: 32)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1886, file: !30, line: 294, baseType: !221, size: 64, offset: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !106, file: !30, line: 515, baseType: !116, size: 128, offset: 4736)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !106, file: !30, line: 526, baseType: !1892, offset: 4864)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1893, line: 5, elements: !143)
!1893 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !106, file: !30, line: 528, baseType: !1895, size: 64, offset: 4864)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1897, line: 51, size: 1344, elements: !1898)
!1897 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!1898 = !{!1899, !1900, !1902, !1903, !1993, !2002, !2003, !2004, !2005, !2006, !2007, !2008}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1896, file: !1897, line: 52, baseType: !113, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1896, file: !1897, line: 53, baseType: !1901, size: 32, offset: 64)
!1901 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1897, line: 28, baseType: !428)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1896, file: !1897, line: 54, baseType: !113, size: 64, offset: 128)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1896, file: !1897, line: 55, baseType: !1904, size: 192, offset: 192)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1905, line: 17, size: 192, elements: !1906)
!1905 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!1906 = !{!1907, !1909, !1992}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1904, file: !1905, line: 18, baseType: !1908, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1904, file: !1905, line: 19, baseType: !1910, size: 64, offset: 64)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1912)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1905, line: 110, size: 1152, elements: !1913)
!1913 = !{!1914, !1918, !1922, !1928, !1934, !1938, !1942, !1947, !1951, !1952, !1956, !1960, !1964, !1975, !1976, !1977, !1978, !1988}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1912, file: !1905, line: 111, baseType: !1915, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{!1908, !1908}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1912, file: !1905, line: 112, baseType: !1919, size: 64, offset: 64)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{null, !1908}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1912, file: !1905, line: 113, baseType: !1923, size: 64, offset: 128)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{!998, !1926}
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1904)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1912, file: !1905, line: 114, baseType: !1929, size: 64, offset: 192)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!1387, !1926, !1932}
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !106)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1912, file: !1905, line: 116, baseType: !1935, size: 64, offset: 256)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{!998, !1926, !113}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1912, file: !1905, line: 118, baseType: !1939, size: 64, offset: 320)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!155, !1926, !113, !7, !95, !218}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1912, file: !1905, line: 123, baseType: !1943, size: 64, offset: 384)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!155, !1926, !113, !1946, !218}
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1912, file: !1905, line: 126, baseType: !1948, size: 64, offset: 448)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{!113, !1926}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1912, file: !1905, line: 127, baseType: !1948, size: 64, offset: 512)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1912, file: !1905, line: 128, baseType: !1953, size: 64, offset: 576)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!1908, !1926}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1912, file: !1905, line: 130, baseType: !1957, size: 64, offset: 640)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!1908, !1926, !1908}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1912, file: !1905, line: 133, baseType: !1961, size: 64, offset: 704)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!1908, !1926, !113}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1912, file: !1905, line: 135, baseType: !1965, size: 64, offset: 768)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!155, !1926, !113, !113, !7, !7, !1968}
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1905, line: 43, size: 640, elements: !1970)
!1970 = !{!1971, !1972, !1973}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1969, file: !1905, line: 44, baseType: !1908, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1969, file: !1905, line: 45, baseType: !7, size: 32, offset: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1969, file: !1905, line: 46, baseType: !1974, size: 512, offset: 128)
!1974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 512, elements: !534)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1912, file: !1905, line: 140, baseType: !1957, size: 64, offset: 832)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1912, file: !1905, line: 143, baseType: !1953, size: 64, offset: 896)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1912, file: !1905, line: 145, baseType: !1915, size: 64, offset: 960)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1912, file: !1905, line: 146, baseType: !1979, size: 64, offset: 1024)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!155, !1926, !1982}
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1905, line: 29, size: 128, elements: !1984)
!1984 = !{!1985, !1986, !1987}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1983, file: !1905, line: 30, baseType: !7, size: 32)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1983, file: !1905, line: 31, baseType: !7, size: 32, offset: 32)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1983, file: !1905, line: 32, baseType: !1926, size: 64, offset: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1912, file: !1905, line: 148, baseType: !1989, size: 64, offset: 1088)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{!155, !1926, !105}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1904, file: !1905, line: 20, baseType: !105, size: 64, offset: 128)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1896, file: !1897, line: 57, baseType: !1994, size: 64, offset: 384)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1897, line: 31, size: 704, elements: !1996)
!1996 = !{!1997, !1998, !1999, !2000, !2001}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1995, file: !1897, line: 32, baseType: !171, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1995, file: !1897, line: 33, baseType: !155, size: 32, offset: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1995, file: !1897, line: 34, baseType: !95, size: 64, offset: 128)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1995, file: !1897, line: 35, baseType: !1994, size: 64, offset: 192)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1995, file: !1897, line: 43, baseType: !240, size: 448, offset: 256)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1896, file: !1897, line: 58, baseType: !1994, size: 64, offset: 448)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1896, file: !1897, line: 59, baseType: !1895, size: 64, offset: 512)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1896, file: !1897, line: 60, baseType: !1895, size: 64, offset: 576)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1896, file: !1897, line: 61, baseType: !1895, size: 64, offset: 640)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1896, file: !1897, line: 63, baseType: !109, size: 512, offset: 704)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1896, file: !1897, line: 65, baseType: !221, size: 64, offset: 1216)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1896, file: !1897, line: 66, baseType: !95, size: 64, offset: 1280)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !106, file: !30, line: 529, baseType: !1908, size: 64, offset: 4928)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !106, file: !30, line: 534, baseType: !2011, size: 32, offset: 4992)
!2011 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !94, line: 16, baseType: !2012)
!2012 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !94, line: 13, baseType: !428)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !106, file: !30, line: 535, baseType: !428, size: 32, offset: 5024)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !106, file: !30, line: 537, baseType: !129, offset: 5056)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !106, file: !30, line: 538, baseType: !116, size: 128, offset: 5056)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !106, file: !30, line: 540, baseType: !2017, size: 64, offset: 5184)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2019, line: 54, size: 960, elements: !2020)
!2019 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2020 = !{!2021, !2022, !2023, !2024, !2025, !2026, !2027, !2031, !2035, !2036, !2037, !2038, !2042, !2046, !2047}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2018, file: !2019, line: 55, baseType: !113, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2018, file: !2019, line: 56, baseType: !1661, size: 64, offset: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2018, file: !2019, line: 58, baseType: !225, size: 64, offset: 128)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2018, file: !2019, line: 59, baseType: !225, size: 64, offset: 192)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2018, file: !2019, line: 60, baseType: !122, size: 64, offset: 256)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2018, file: !2019, line: 62, baseType: !1597, size: 64, offset: 320)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2018, file: !2019, line: 63, baseType: !2028, size: 64, offset: 384)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{!171, !105, !1604}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2018, file: !2019, line: 65, baseType: !2032, size: 64, offset: 448)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{null, !2017}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2018, file: !2019, line: 66, baseType: !1606, size: 64, offset: 512)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2018, file: !2019, line: 68, baseType: !1615, size: 64, offset: 576)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2018, file: !2019, line: 70, baseType: !1370, size: 64, offset: 640)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2018, file: !2019, line: 71, baseType: !2039, size: 64, offset: 704)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!1387, !105}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2018, file: !2019, line: 73, baseType: !2043, size: 64, offset: 768)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DISubroutineType(types: !2045)
!2045 = !{null, !105, !1407, !1414}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2018, file: !2019, line: 75, baseType: !1610, size: 64, offset: 832)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2018, file: !2019, line: 77, baseType: !1731, size: 64, offset: 896)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !106, file: !30, line: 541, baseType: !225, size: 64, offset: 5248)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !106, file: !30, line: 543, baseType: !1606, size: 64, offset: 5312)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !106, file: !30, line: 544, baseType: !2051, size: 64, offset: 5376)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !106, file: !30, line: 545, baseType: !2054, size: 64, offset: 5440)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !106, file: !30, line: 547, baseType: !998, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !106, file: !30, line: 548, baseType: !998, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !106, file: !30, line: 549, baseType: !998, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !106, file: !30, line: 550, baseType: !998, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !97, file: !3, line: 26, baseType: !155, size: 32, offset: 256)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "tz_list", scope: !97, file: !3, line: 27, baseType: !116, size: 128, offset: 320)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !97, file: !3, line: 28, baseType: !116, size: 128, offset: 448)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !119)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_hwmon_attr", file: !3, line: 31, size: 384, elements: !2067)
!2067 = !{!2068, !2081}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2066, file: !3, line: 32, baseType: !2069, size: 256)
!2069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !30, line: 99, size: 256, elements: !2070)
!2070 = !{!2071, !2072, !2077}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2069, file: !30, line: 100, baseType: !208, size: 128)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2069, file: !30, line: 101, baseType: !2073, size: 64, offset: 128)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{!202, !105, !2076, !171}
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2069, file: !30, line: 103, baseType: !2078, size: 64, offset: 192)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{!202, !105, !2076, !113, !218}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2066, file: !3, line: 33, baseType: !789, size: 128, offset: 256)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_hwmon_temp", file: !3, line: 37, size: 960, elements: !2084)
!2084 = !{!2085, !2086, !2257, !2258}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "hwmon_node", scope: !2083, file: !3, line: 38, baseType: !116, size: 128)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "tz", scope: !2083, file: !3, line: 39, baseType: !2087, size: 64, offset: 128)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_device", file: !62, line: 150, size: 8448, elements: !2089)
!2089 = !{!2090, !2091, !2092, !2093, !2094, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2200, !2224, !2239, !2240, !2241, !2245, !2246, !2247, !2256}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2088, file: !62, line: 151, baseType: !155, size: 32)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2088, file: !62, line: 152, baseType: !100, size: 160, offset: 32)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !2088, file: !62, line: 153, baseType: !106, size: 5568, offset: 192)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "trips_attribute_group", scope: !2088, file: !62, line: 154, baseType: !228, size: 320, offset: 5760)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "trip_temp_attrs", scope: !2088, file: !62, line: 155, baseType: !2095, size: 64, offset: 6080)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_attr", file: !62, line: 38, flags: DIFlagFwdDecl)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "trip_type_attrs", scope: !2088, file: !62, line: 156, baseType: !2095, size: 64, offset: 6144)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "trip_hyst_attrs", scope: !2088, file: !62, line: 157, baseType: !2095, size: 64, offset: 6208)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2088, file: !62, line: 158, baseType: !50, size: 32, offset: 6272)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "devdata", scope: !2088, file: !62, line: 159, baseType: !95, size: 64, offset: 6336)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "trips", scope: !2088, file: !62, line: 160, baseType: !155, size: 32, offset: 6400)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "trips_disabled", scope: !2088, file: !62, line: 161, baseType: !221, size: 64, offset: 6464)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "passive_delay", scope: !2088, file: !62, line: 162, baseType: !155, size: 32, offset: 6528)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "polling_delay", scope: !2088, file: !62, line: 163, baseType: !155, size: 32, offset: 6560)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "temperature", scope: !2088, file: !62, line: 164, baseType: !155, size: 32, offset: 6592)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "last_temperature", scope: !2088, file: !62, line: 165, baseType: !155, size: 32, offset: 6624)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "emul_temperature", scope: !2088, file: !62, line: 166, baseType: !155, size: 32, offset: 6656)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "passive", scope: !2088, file: !62, line: 167, baseType: !155, size: 32, offset: 6688)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "prev_low_trip", scope: !2088, file: !62, line: 168, baseType: !155, size: 32, offset: 6720)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "prev_high_trip", scope: !2088, file: !62, line: 169, baseType: !155, size: 32, offset: 6752)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "forced_passive", scope: !2088, file: !62, line: 170, baseType: !7, size: 32, offset: 6784)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "need_update", scope: !2088, file: !62, line: 171, baseType: !312, size: 32, offset: 6816)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2088, file: !62, line: 172, baseType: !2114, size: 64, offset: 6848)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_device_ops", file: !62, line: 61, size: 896, elements: !2116)
!2116 = !{!2117, !2161, !2162, !2166, !2170, !2174, !2179, !2183, !2184, !2185, !2186, !2187, !2191, !2196}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !2115, file: !62, line: 62, baseType: !2118, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{!155, !2087, !2121}
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device", file: !62, line: 93, size: 6528, elements: !2123)
!2123 = !{!2124, !2125, !2126, !2127, !2128, !2129, !2130, !2157, !2158, !2159, !2160}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2122, file: !62, line: 94, baseType: !155, size: 32)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2122, file: !62, line: 95, baseType: !100, size: 160, offset: 32)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !2122, file: !62, line: 96, baseType: !106, size: 5568, offset: 192)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !2122, file: !62, line: 97, baseType: !1895, size: 64, offset: 5760)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "devdata", scope: !2122, file: !62, line: 98, baseType: !95, size: 64, offset: 5824)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2122, file: !62, line: 99, baseType: !95, size: 64, offset: 5888)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2122, file: !62, line: 100, baseType: !2131, size: 64, offset: 5952)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2133)
!2133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device_ops", file: !62, line: 84, size: 384, elements: !2134)
!2134 = !{!2135, !2140, !2141, !2145, !2149, !2153}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "get_max_state", scope: !2133, file: !62, line: 85, baseType: !2136, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!155, !2121, !2139}
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "get_cur_state", scope: !2133, file: !62, line: 86, baseType: !2136, size: 64, offset: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "set_cur_state", scope: !2133, file: !62, line: 87, baseType: !2142, size: 64, offset: 128)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!155, !2121, !221}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "get_requested_power", scope: !2133, file: !62, line: 88, baseType: !2146, size: 64, offset: 192)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{!155, !2121, !629}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "state2power", scope: !2133, file: !62, line: 89, baseType: !2150, size: 64, offset: 256)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!155, !2121, !221, !629}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "power2state", scope: !2133, file: !62, line: 90, baseType: !2154, size: 64, offset: 320)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!155, !2121, !428, !2139}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "updated", scope: !2122, file: !62, line: 101, baseType: !998, size: 8, offset: 6016)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2122, file: !62, line: 102, baseType: !389, size: 192, offset: 6080)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_instances", scope: !2122, file: !62, line: 103, baseType: !116, size: 128, offset: 6272)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2122, file: !62, line: 104, baseType: !116, size: 128, offset: 6400)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !2115, file: !62, line: 64, baseType: !2118, size: 64, offset: 64)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "get_temp", scope: !2115, file: !62, line: 66, baseType: !2163, size: 64, offset: 128)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{!155, !2087, !745}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "set_trips", scope: !2115, file: !62, line: 67, baseType: !2167, size: 64, offset: 192)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = !DISubroutineType(types: !2169)
!2169 = !{!155, !2087, !155, !155}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "change_mode", scope: !2115, file: !62, line: 68, baseType: !2171, size: 64, offset: 256)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{!155, !2087, !50}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "get_trip_type", scope: !2115, file: !62, line: 70, baseType: !2175, size: 64, offset: 320)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!155, !2087, !155, !2178}
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "get_trip_temp", scope: !2115, file: !62, line: 72, baseType: !2180, size: 64, offset: 384)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DISubroutineType(types: !2182)
!2182 = !{!155, !2087, !155, !745}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "set_trip_temp", scope: !2115, file: !62, line: 73, baseType: !2167, size: 64, offset: 448)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "get_trip_hyst", scope: !2115, file: !62, line: 74, baseType: !2180, size: 64, offset: 512)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "set_trip_hyst", scope: !2115, file: !62, line: 75, baseType: !2167, size: 64, offset: 576)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "get_crit_temp", scope: !2115, file: !62, line: 76, baseType: !2163, size: 64, offset: 640)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "set_emul_temp", scope: !2115, file: !62, line: 77, baseType: !2188, size: 64, offset: 704)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DISubroutineType(types: !2190)
!2190 = !{!155, !2087, !155}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "get_trend", scope: !2115, file: !62, line: 78, baseType: !2192, size: 64, offset: 768)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DISubroutineType(types: !2194)
!2194 = !{!155, !2087, !155, !2195}
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2115, file: !62, line: 80, baseType: !2197, size: 64, offset: 832)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{!155, !2087, !155, !55}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "tzp", scope: !2088, file: !62, line: 173, baseType: !2201, size: 64, offset: 6912)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_params", file: !62, line: 240, size: 576, elements: !2203)
!2203 = !{!2204, !2205, !2206, !2207, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "governor_name", scope: !2202, file: !62, line: 241, baseType: !100, size: 160)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "no_hwmon", scope: !2202, file: !62, line: 248, baseType: !998, size: 8, offset: 160)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "num_tbps", scope: !2202, file: !62, line: 250, baseType: !155, size: 32, offset: 192)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "tbp", scope: !2202, file: !62, line: 251, baseType: !2208, size: 64, offset: 256)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_bind_params", file: !62, line: 205, size: 256, elements: !2210)
!2210 = !{!2211, !2212, !2213, !2214, !2215}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !2209, file: !62, line: 206, baseType: !2121, size: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2209, file: !62, line: 217, baseType: !155, size: 32, offset: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "trip_mask", scope: !2209, file: !62, line: 224, baseType: !155, size: 32, offset: 96)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "binding_limits", scope: !2209, file: !62, line: 234, baseType: !2139, size: 64, offset: 128)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2209, file: !62, line: 235, baseType: !2118, size: 64, offset: 192)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "sustainable_power", scope: !2202, file: !62, line: 257, baseType: !428, size: 32, offset: 320)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "k_po", scope: !2202, file: !62, line: 263, baseType: !658, size: 32, offset: 352)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "k_pu", scope: !2202, file: !62, line: 269, baseType: !658, size: 32, offset: 384)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "k_i", scope: !2202, file: !62, line: 272, baseType: !658, size: 32, offset: 416)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "k_d", scope: !2202, file: !62, line: 275, baseType: !658, size: 32, offset: 448)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "integral_cutoff", scope: !2202, file: !62, line: 278, baseType: !658, size: 32, offset: 480)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "slope", scope: !2202, file: !62, line: 284, baseType: !155, size: 32, offset: 512)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2202, file: !62, line: 289, baseType: !155, size: 32, offset: 544)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "governor", scope: !2088, file: !62, line: 174, baseType: !2225, size: 64, offset: 6976)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_governor", file: !62, line: 196, size: 512, elements: !2227)
!2227 = !{!2228, !2229, !2233, !2237, !2238}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2226, file: !62, line: 197, baseType: !100, size: 160)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "bind_to_tz", scope: !2226, file: !62, line: 198, baseType: !2230, size: 64, offset: 192)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DISubroutineType(types: !2232)
!2232 = !{!155, !2087}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "unbind_from_tz", scope: !2226, file: !62, line: 199, baseType: !2234, size: 64, offset: 256)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = !DISubroutineType(types: !2236)
!2236 = !{null, !2087}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !2226, file: !62, line: 200, baseType: !2188, size: 64, offset: 320)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "governor_list", scope: !2226, file: !62, line: 201, baseType: !116, size: 128, offset: 384)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "governor_data", scope: !2088, file: !62, line: 175, baseType: !95, size: 64, offset: 7040)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_instances", scope: !2088, file: !62, line: 176, baseType: !116, size: 128, offset: 7104)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "ida", scope: !2088, file: !62, line: 177, baseType: !2242, size: 128, offset: 7232)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !1449, line: 244, size: 128, elements: !2243)
!2243 = !{!2244}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !2242, file: !1449, line: 245, baseType: !1452, size: 128)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2088, file: !62, line: 178, baseType: !389, size: 192, offset: 7360)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2088, file: !62, line: 179, baseType: !116, size: 128, offset: 7552)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "poll_queue", scope: !2088, file: !62, line: 180, baseType: !2248, size: 704, offset: 7680)
!2248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1322, line: 115, size: 704, elements: !2249)
!2249 = !{!2250, !2251, !2252, !2255}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2248, file: !1322, line: 116, baseType: !1321, size: 256)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2248, file: !1322, line: 117, baseType: !1781, size: 320, offset: 256)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2248, file: !1322, line: 120, baseType: !2253, size: 64, offset: 576)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1322, line: 18, flags: DIFlagFwdDecl)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2248, file: !1322, line: 121, baseType: !155, size: 32, offset: 640)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "notify_event", scope: !2088, file: !62, line: 181, baseType: !69, size: 32, offset: 8384)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "temp_input", scope: !2083, file: !3, line: 40, baseType: !2066, size: 384, offset: 192)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "temp_crit", scope: !2083, file: !3, line: 41, baseType: !2066, size: 384, offset: 576)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2064)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2262 = !{!0, !2263}
!2263 = !DIGlobalVariableExpression(var: !2264, expr: !DIExpression())
!2264 = distinct !DIGlobalVariable(name: "thermal_hwmon_list", scope: !2, file: !3, line: 44, type: !116, isLocal: true, isDefinition: true)
!2265 = !{i32 7, !"Dwarf Version", i32 4}
!2266 = !{i32 2, !"Debug Info Version", i32 3}
!2267 = !{i32 1, !"wchar_size", i32 2}
!2268 = !{i32 1, !"Code Model", i32 2}
!2269 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2270 = distinct !DISubprogram(name: "thermal_add_hwmon_sysfs", scope: !3, file: !3, line: 132, type: !2231, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !143)
!2271 = !DILocalVariable(name: "tz", arg: 1, scope: !2270, file: !3, line: 132, type: !2087)
!2272 = !DILocation(line: 132, column: 57, scope: !2270)
!2273 = !DILocalVariable(name: "hwmon", scope: !2270, file: !3, line: 134, type: !96)
!2274 = !DILocation(line: 134, column: 31, scope: !2270)
!2275 = !DILocalVariable(name: "temp", scope: !2270, file: !3, line: 135, type: !2082)
!2276 = !DILocation(line: 135, column: 29, scope: !2270)
!2277 = !DILocalVariable(name: "new_hwmon_device", scope: !2270, file: !3, line: 136, type: !155)
!2278 = !DILocation(line: 136, column: 6, scope: !2270)
!2279 = !DILocalVariable(name: "result", scope: !2270, file: !3, line: 137, type: !155)
!2280 = !DILocation(line: 137, column: 6, scope: !2270)
!2281 = !DILocation(line: 139, column: 39, scope: !2270)
!2282 = !DILocation(line: 139, column: 10, scope: !2270)
!2283 = !DILocation(line: 139, column: 8, scope: !2270)
!2284 = !DILocation(line: 140, column: 6, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2270, file: !3, line: 140, column: 6)
!2286 = !DILocation(line: 140, column: 6, scope: !2270)
!2287 = !DILocation(line: 141, column: 20, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2285, file: !3, line: 140, column: 13)
!2289 = !DILocation(line: 142, column: 3, scope: !2288)
!2290 = !DILocation(line: 145, column: 10, scope: !2270)
!2291 = !DILocation(line: 145, column: 8, scope: !2270)
!2292 = !DILocation(line: 146, column: 7, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2270, file: !3, line: 146, column: 6)
!2294 = !DILocation(line: 146, column: 6, scope: !2270)
!2295 = !DILocation(line: 147, column: 3, scope: !2293)
!2296 = !DILocation(line: 149, column: 18, scope: !2270)
!2297 = !DILocation(line: 149, column: 25, scope: !2270)
!2298 = !DILocation(line: 149, column: 2, scope: !2270)
!2299 = !DILocation(line: 150, column: 10, scope: !2270)
!2300 = !DILocation(line: 150, column: 17, scope: !2270)
!2301 = !DILocation(line: 150, column: 23, scope: !2270)
!2302 = !DILocation(line: 150, column: 27, scope: !2270)
!2303 = !DILocation(line: 150, column: 2, scope: !2270)
!2304 = !DILocation(line: 151, column: 13, scope: !2270)
!2305 = !DILocation(line: 151, column: 20, scope: !2270)
!2306 = !DILocation(line: 151, column: 2, scope: !2270)
!2307 = !DILocation(line: 152, column: 51, scope: !2270)
!2308 = !DILocation(line: 152, column: 55, scope: !2270)
!2309 = !DILocation(line: 152, column: 63, scope: !2270)
!2310 = !DILocation(line: 152, column: 70, scope: !2270)
!2311 = !DILocation(line: 153, column: 8, scope: !2270)
!2312 = !DILocation(line: 152, column: 18, scope: !2270)
!2313 = !DILocation(line: 152, column: 2, scope: !2270)
!2314 = !DILocation(line: 152, column: 9, scope: !2270)
!2315 = !DILocation(line: 152, column: 16, scope: !2270)
!2316 = !DILocation(line: 154, column: 13, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2270, file: !3, line: 154, column: 6)
!2318 = !DILocation(line: 154, column: 20, scope: !2317)
!2319 = !DILocation(line: 154, column: 6, scope: !2317)
!2320 = !DILocation(line: 154, column: 6, scope: !2270)
!2321 = !DILocation(line: 155, column: 20, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2317, file: !3, line: 154, column: 29)
!2323 = !DILocation(line: 155, column: 27, scope: !2322)
!2324 = !DILocation(line: 155, column: 12, scope: !2322)
!2325 = !DILocation(line: 155, column: 10, scope: !2322)
!2326 = !DILocation(line: 156, column: 3, scope: !2322)
!2327 = !DILocation(line: 154, column: 26, scope: !2317)
!2328 = !DILabel(scope: !2270, name: "register_sys_interface", file: !3, line: 159)
!2329 = !DILocation(line: 159, column: 2, scope: !2270)
!2330 = !DILocation(line: 160, column: 9, scope: !2270)
!2331 = !DILocation(line: 160, column: 7, scope: !2270)
!2332 = !DILocation(line: 161, column: 7, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2270, file: !3, line: 161, column: 6)
!2334 = !DILocation(line: 161, column: 6, scope: !2270)
!2335 = !DILocation(line: 162, column: 10, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2333, file: !3, line: 161, column: 13)
!2337 = !DILocation(line: 163, column: 3, scope: !2336)
!2338 = !DILocation(line: 166, column: 13, scope: !2270)
!2339 = !DILocation(line: 166, column: 2, scope: !2270)
!2340 = !DILocation(line: 166, column: 8, scope: !2270)
!2341 = !DILocation(line: 166, column: 11, scope: !2270)
!2342 = !DILocation(line: 167, column: 2, scope: !2270)
!2343 = !DILocation(line: 167, column: 9, scope: !2270)
!2344 = !DILocation(line: 167, column: 14, scope: !2270)
!2345 = !DILocation(line: 169, column: 11, scope: !2270)
!2346 = !DILocation(line: 169, column: 17, scope: !2270)
!2347 = !DILocation(line: 169, column: 28, scope: !2270)
!2348 = !DILocation(line: 170, column: 20, scope: !2270)
!2349 = !DILocation(line: 170, column: 27, scope: !2270)
!2350 = !DILocation(line: 169, column: 2, scope: !2270)
!2351 = !DILocation(line: 171, column: 36, scope: !2270)
!2352 = !DILocation(line: 171, column: 42, scope: !2270)
!2353 = !DILocation(line: 171, column: 53, scope: !2270)
!2354 = !DILocation(line: 171, column: 2, scope: !2270)
!2355 = !DILocation(line: 171, column: 8, scope: !2270)
!2356 = !DILocation(line: 171, column: 19, scope: !2270)
!2357 = !DILocation(line: 171, column: 24, scope: !2270)
!2358 = !DILocation(line: 171, column: 29, scope: !2270)
!2359 = !DILocation(line: 171, column: 34, scope: !2270)
!2360 = !DILocation(line: 172, column: 2, scope: !2270)
!2361 = !DILocation(line: 172, column: 8, scope: !2270)
!2362 = !DILocation(line: 172, column: 19, scope: !2270)
!2363 = !DILocation(line: 172, column: 24, scope: !2270)
!2364 = !DILocation(line: 172, column: 29, scope: !2270)
!2365 = !DILocation(line: 172, column: 34, scope: !2270)
!2366 = !DILocation(line: 173, column: 2, scope: !2270)
!2367 = !DILocation(line: 173, column: 8, scope: !2270)
!2368 = !DILocation(line: 173, column: 19, scope: !2270)
!2369 = !DILocation(line: 173, column: 24, scope: !2270)
!2370 = !DILocation(line: 173, column: 29, scope: !2270)
!2371 = !DILocation(line: 174, column: 2, scope: !2270)
!2372 = !DILocation(line: 174, column: 2, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2270, file: !3, line: 174, column: 2)
!2374 = !DILocation(line: 175, column: 30, scope: !2270)
!2375 = !DILocation(line: 175, column: 37, scope: !2270)
!2376 = !DILocation(line: 175, column: 46, scope: !2270)
!2377 = !DILocation(line: 175, column: 52, scope: !2270)
!2378 = !DILocation(line: 175, column: 63, scope: !2270)
!2379 = !DILocation(line: 175, column: 11, scope: !2270)
!2380 = !DILocation(line: 175, column: 9, scope: !2270)
!2381 = !DILocation(line: 176, column: 6, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2270, file: !3, line: 176, column: 6)
!2383 = !DILocation(line: 176, column: 6, scope: !2270)
!2384 = !DILocation(line: 177, column: 3, scope: !2382)
!2385 = !DILocation(line: 179, column: 35, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2270, file: !3, line: 179, column: 6)
!2387 = !DILocation(line: 179, column: 6, scope: !2386)
!2388 = !DILocation(line: 179, column: 6, scope: !2270)
!2389 = !DILocation(line: 180, column: 12, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2386, file: !3, line: 179, column: 40)
!2391 = !DILocation(line: 180, column: 18, scope: !2390)
!2392 = !DILocation(line: 180, column: 28, scope: !2390)
!2393 = !DILocation(line: 182, column: 20, scope: !2390)
!2394 = !DILocation(line: 182, column: 27, scope: !2390)
!2395 = !DILocation(line: 180, column: 3, scope: !2390)
!2396 = !DILocation(line: 183, column: 36, scope: !2390)
!2397 = !DILocation(line: 183, column: 42, scope: !2390)
!2398 = !DILocation(line: 183, column: 52, scope: !2390)
!2399 = !DILocation(line: 183, column: 3, scope: !2390)
!2400 = !DILocation(line: 183, column: 9, scope: !2390)
!2401 = !DILocation(line: 183, column: 19, scope: !2390)
!2402 = !DILocation(line: 183, column: 24, scope: !2390)
!2403 = !DILocation(line: 183, column: 29, scope: !2390)
!2404 = !DILocation(line: 183, column: 34, scope: !2390)
!2405 = !DILocation(line: 184, column: 3, scope: !2390)
!2406 = !DILocation(line: 184, column: 9, scope: !2390)
!2407 = !DILocation(line: 184, column: 19, scope: !2390)
!2408 = !DILocation(line: 184, column: 24, scope: !2390)
!2409 = !DILocation(line: 184, column: 29, scope: !2390)
!2410 = !DILocation(line: 184, column: 34, scope: !2390)
!2411 = !DILocation(line: 185, column: 3, scope: !2390)
!2412 = !DILocation(line: 185, column: 9, scope: !2390)
!2413 = !DILocation(line: 185, column: 19, scope: !2390)
!2414 = !DILocation(line: 185, column: 24, scope: !2390)
!2415 = !DILocation(line: 185, column: 29, scope: !2390)
!2416 = !DILocation(line: 186, column: 3, scope: !2390)
!2417 = !DILocation(line: 186, column: 3, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2390, file: !3, line: 186, column: 3)
!2419 = !DILocation(line: 187, column: 31, scope: !2390)
!2420 = !DILocation(line: 187, column: 38, scope: !2390)
!2421 = !DILocation(line: 188, column: 11, scope: !2390)
!2422 = !DILocation(line: 188, column: 17, scope: !2390)
!2423 = !DILocation(line: 188, column: 27, scope: !2390)
!2424 = !DILocation(line: 187, column: 12, scope: !2390)
!2425 = !DILocation(line: 187, column: 10, scope: !2390)
!2426 = !DILocation(line: 189, column: 7, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2390, file: !3, line: 189, column: 7)
!2428 = !DILocation(line: 189, column: 7, scope: !2390)
!2429 = !DILocation(line: 190, column: 4, scope: !2427)
!2430 = !DILocation(line: 191, column: 2, scope: !2390)
!2431 = !DILocation(line: 193, column: 2, scope: !2270)
!2432 = !DILocation(line: 194, column: 6, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2270, file: !3, line: 194, column: 6)
!2434 = !DILocation(line: 194, column: 6, scope: !2270)
!2435 = !DILocation(line: 195, column: 18, scope: !2433)
!2436 = !DILocation(line: 195, column: 25, scope: !2433)
!2437 = !DILocation(line: 195, column: 3, scope: !2433)
!2438 = !DILocation(line: 196, column: 17, scope: !2270)
!2439 = !DILocation(line: 196, column: 23, scope: !2270)
!2440 = !DILocation(line: 196, column: 36, scope: !2270)
!2441 = !DILocation(line: 196, column: 43, scope: !2270)
!2442 = !DILocation(line: 196, column: 2, scope: !2270)
!2443 = !DILocation(line: 197, column: 2, scope: !2270)
!2444 = !DILocation(line: 199, column: 2, scope: !2270)
!2445 = !DILabel(scope: !2270, name: "unregister_input", file: !3, line: 201)
!2446 = !DILocation(line: 201, column: 2, scope: !2270)
!2447 = !DILocation(line: 202, column: 21, scope: !2270)
!2448 = !DILocation(line: 202, column: 28, scope: !2270)
!2449 = !DILocation(line: 202, column: 37, scope: !2270)
!2450 = !DILocation(line: 202, column: 43, scope: !2270)
!2451 = !DILocation(line: 202, column: 54, scope: !2270)
!2452 = !DILocation(line: 202, column: 2, scope: !2270)
!2453 = !DILabel(scope: !2270, name: "free_temp_mem", file: !3, line: 203)
!2454 = !DILocation(line: 203, column: 2, scope: !2270)
!2455 = !DILocation(line: 204, column: 8, scope: !2270)
!2456 = !DILocation(line: 204, column: 2, scope: !2270)
!2457 = !DILabel(scope: !2270, name: "unregister_name", file: !3, line: 205)
!2458 = !DILocation(line: 205, column: 2, scope: !2270)
!2459 = !DILocation(line: 206, column: 6, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2270, file: !3, line: 206, column: 6)
!2461 = !DILocation(line: 206, column: 6, scope: !2270)
!2462 = !DILocation(line: 207, column: 27, scope: !2460)
!2463 = !DILocation(line: 207, column: 34, scope: !2460)
!2464 = !DILocation(line: 207, column: 3, scope: !2460)
!2465 = !DILabel(scope: !2270, name: "free_mem", file: !3, line: 208)
!2466 = !DILocation(line: 208, column: 2, scope: !2270)
!2467 = !DILocation(line: 209, column: 6, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2270, file: !3, line: 209, column: 6)
!2469 = !DILocation(line: 209, column: 6, scope: !2270)
!2470 = !DILocation(line: 210, column: 9, scope: !2468)
!2471 = !DILocation(line: 210, column: 3, scope: !2468)
!2472 = !DILocation(line: 212, column: 9, scope: !2270)
!2473 = !DILocation(line: 212, column: 2, scope: !2270)
!2474 = !DILocation(line: 213, column: 1, scope: !2270)
!2475 = distinct !DISubprogram(name: "thermal_hwmon_lookup_by_type", scope: !3, file: !3, line: 89, type: !2476, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !143)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!96, !2478}
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2088)
!2480 = !DILocalVariable(name: "tz", arg: 1, scope: !2475, file: !3, line: 89, type: !2478)
!2481 = !DILocation(line: 89, column: 64, scope: !2475)
!2482 = !DILocalVariable(name: "hwmon", scope: !2475, file: !3, line: 91, type: !96)
!2483 = !DILocation(line: 91, column: 31, scope: !2475)
!2484 = !DILocalVariable(name: "type", scope: !2475, file: !3, line: 92, type: !100)
!2485 = !DILocation(line: 92, column: 7, scope: !2475)
!2486 = !DILocation(line: 94, column: 2, scope: !2475)
!2487 = !DILocalVariable(name: "__mptr", scope: !2488, file: !3, line: 95, type: !95)
!2488 = distinct !DILexicalBlock(scope: !2489, file: !3, line: 95, column: 2)
!2489 = distinct !DILexicalBlock(scope: !2475, file: !3, line: 95, column: 2)
!2490 = !DILocation(line: 95, column: 2, scope: !2488)
!2491 = !DILocation(line: 95, column: 2, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2488, file: !3, line: 95, column: 2)
!2493 = !DILocation(line: 95, column: 2, scope: !2489)
!2494 = !DILocation(line: 95, column: 2, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2489, file: !3, line: 95, column: 2)
!2496 = !DILocation(line: 96, column: 10, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2495, file: !3, line: 95, column: 56)
!2498 = !DILocation(line: 96, column: 16, scope: !2497)
!2499 = !DILocation(line: 96, column: 20, scope: !2497)
!2500 = !DILocation(line: 96, column: 3, scope: !2497)
!2501 = !DILocation(line: 97, column: 14, scope: !2497)
!2502 = !DILocation(line: 97, column: 3, scope: !2497)
!2503 = !DILocation(line: 98, column: 15, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2497, file: !3, line: 98, column: 7)
!2505 = !DILocation(line: 98, column: 22, scope: !2504)
!2506 = !DILocation(line: 98, column: 28, scope: !2504)
!2507 = !DILocation(line: 98, column: 8, scope: !2504)
!2508 = !DILocation(line: 98, column: 7, scope: !2497)
!2509 = !DILocation(line: 99, column: 4, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2504, file: !3, line: 98, column: 35)
!2511 = !DILocation(line: 100, column: 11, scope: !2510)
!2512 = !DILocation(line: 100, column: 4, scope: !2510)
!2513 = !DILocation(line: 102, column: 2, scope: !2497)
!2514 = !DILocalVariable(name: "__mptr", scope: !2515, file: !3, line: 95, type: !95)
!2515 = distinct !DILexicalBlock(scope: !2495, file: !3, line: 95, column: 2)
!2516 = !DILocation(line: 95, column: 2, scope: !2515)
!2517 = !DILocation(line: 95, column: 2, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 95, column: 2)
!2519 = distinct !{!2519, !2493, !2520}
!2520 = !DILocation(line: 102, column: 2, scope: !2489)
!2521 = !DILocation(line: 103, column: 2, scope: !2475)
!2522 = !DILocation(line: 105, column: 2, scope: !2475)
!2523 = !DILocation(line: 106, column: 1, scope: !2475)
!2524 = distinct !DISubprogram(name: "kzalloc", scope: !81, file: !81, line: 662, type: !2525, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !143)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!95, !218, !93}
!2527 = !DILocalVariable(name: "s", arg: 1, scope: !2528, file: !81, line: 445, type: !1048)
!2528 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !81, file: !81, line: 445, type: !2529, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !143)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{!95, !1048, !93, !218}
!2531 = !DILocation(line: 445, column: 72, scope: !2528, inlinedAt: !2532)
!2532 = distinct !DILocation(line: 552, column: 10, scope: !2533, inlinedAt: !2536)
!2533 = distinct !DILexicalBlock(scope: !2534, file: !81, line: 540, column: 34)
!2534 = distinct !DILexicalBlock(scope: !2535, file: !81, line: 540, column: 6)
!2535 = distinct !DISubprogram(name: "kmalloc", scope: !81, file: !81, line: 538, type: !2525, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !143)
!2536 = distinct !DILocation(line: 664, column: 9, scope: !2524)
!2537 = !DILocalVariable(name: "flags", arg: 2, scope: !2528, file: !81, line: 446, type: !93)
!2538 = !DILocation(line: 446, column: 9, scope: !2528, inlinedAt: !2532)
!2539 = !DILocalVariable(name: "size", arg: 3, scope: !2528, file: !81, line: 446, type: !218)
!2540 = !DILocation(line: 446, column: 23, scope: !2528, inlinedAt: !2532)
!2541 = !DILocalVariable(name: "ret", scope: !2528, file: !81, line: 448, type: !95)
!2542 = !DILocation(line: 448, column: 8, scope: !2528, inlinedAt: !2532)
!2543 = !DILocalVariable(name: "flags", arg: 1, scope: !2544, file: !81, line: 318, type: !93)
!2544 = distinct !DISubprogram(name: "kmalloc_type", scope: !81, file: !81, line: 318, type: !2545, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !143)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!80, !93}
!2547 = !DILocation(line: 318, column: 67, scope: !2544, inlinedAt: !2548)
!2548 = distinct !DILocation(line: 553, column: 20, scope: !2533, inlinedAt: !2536)
!2549 = !DILocalVariable(name: "size", arg: 1, scope: !2550, file: !81, line: 346, type: !218)
!2550 = distinct !DISubprogram(name: "kmalloc_index", scope: !81, file: !81, line: 346, type: !2551, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !143)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!7, !218}
!2553 = !DILocation(line: 346, column: 58, scope: !2550, inlinedAt: !2554)
!2554 = distinct !DILocation(line: 547, column: 11, scope: !2533, inlinedAt: !2536)
!2555 = !DILocalVariable(name: "size", arg: 1, scope: !2556, file: !81, line: 472, type: !218)
!2556 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !81, file: !81, line: 472, type: !2557, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !143)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{!95, !218, !93, !7}
!2559 = !DILocation(line: 472, column: 28, scope: !2556, inlinedAt: !2560)
!2560 = distinct !DILocation(line: 481, column: 9, scope: !2561, inlinedAt: !2562)
!2561 = distinct !DISubprogram(name: "kmalloc_large", scope: !81, file: !81, line: 478, type: !2525, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !143)
!2562 = distinct !DILocation(line: 545, column: 11, scope: !2563, inlinedAt: !2536)
!2563 = distinct !DILexicalBlock(scope: !2533, file: !81, line: 544, column: 7)
!2564 = !DILocalVariable(name: "flags", arg: 2, scope: !2556, file: !81, line: 472, type: !93)
!2565 = !DILocation(line: 472, column: 40, scope: !2556, inlinedAt: !2560)
!2566 = !DILocalVariable(name: "order", arg: 3, scope: !2556, file: !81, line: 472, type: !7)
!2567 = !DILocation(line: 472, column: 60, scope: !2556, inlinedAt: !2560)
!2568 = !DILocalVariable(name: "size", arg: 1, scope: !2561, file: !81, line: 478, type: !218)
!2569 = !DILocation(line: 478, column: 51, scope: !2561, inlinedAt: !2562)
!2570 = !DILocalVariable(name: "flags", arg: 2, scope: !2561, file: !81, line: 478, type: !93)
!2571 = !DILocation(line: 478, column: 63, scope: !2561, inlinedAt: !2562)
!2572 = !DILocalVariable(name: "order", scope: !2561, file: !81, line: 480, type: !7)
!2573 = !DILocation(line: 480, column: 15, scope: !2561, inlinedAt: !2562)
!2574 = !DILocalVariable(name: "size", arg: 1, scope: !2535, file: !81, line: 538, type: !218)
!2575 = !DILocation(line: 538, column: 45, scope: !2535, inlinedAt: !2536)
!2576 = !DILocalVariable(name: "flags", arg: 2, scope: !2535, file: !81, line: 538, type: !93)
!2577 = !DILocation(line: 538, column: 57, scope: !2535, inlinedAt: !2536)
!2578 = !DILocalVariable(name: "index", scope: !2533, file: !81, line: 542, type: !7)
!2579 = !DILocation(line: 542, column: 16, scope: !2533, inlinedAt: !2536)
!2580 = !DILocalVariable(name: "size", arg: 1, scope: !2524, file: !81, line: 662, type: !218)
!2581 = !DILocation(line: 662, column: 36, scope: !2524)
!2582 = !DILocalVariable(name: "flags", arg: 2, scope: !2524, file: !81, line: 662, type: !93)
!2583 = !DILocation(line: 662, column: 48, scope: !2524)
!2584 = !DILocation(line: 664, column: 17, scope: !2524)
!2585 = !DILocation(line: 664, column: 23, scope: !2524)
!2586 = !DILocation(line: 664, column: 29, scope: !2524)
!2587 = !DILocation(line: 540, column: 27, scope: !2534, inlinedAt: !2536)
!2588 = !DILocation(line: 540, column: 6, scope: !2534, inlinedAt: !2536)
!2589 = !DILocation(line: 540, column: 6, scope: !2535, inlinedAt: !2536)
!2590 = !DILocation(line: 544, column: 7, scope: !2563, inlinedAt: !2536)
!2591 = !DILocation(line: 544, column: 12, scope: !2563, inlinedAt: !2536)
!2592 = !DILocation(line: 544, column: 7, scope: !2533, inlinedAt: !2536)
!2593 = !DILocation(line: 545, column: 25, scope: !2563, inlinedAt: !2536)
!2594 = !DILocation(line: 545, column: 31, scope: !2563, inlinedAt: !2536)
!2595 = !DILocation(line: 480, column: 33, scope: !2561, inlinedAt: !2562)
!2596 = !DILocation(line: 480, column: 23, scope: !2561, inlinedAt: !2562)
!2597 = !DILocation(line: 481, column: 29, scope: !2561, inlinedAt: !2562)
!2598 = !DILocation(line: 481, column: 35, scope: !2561, inlinedAt: !2562)
!2599 = !DILocation(line: 481, column: 42, scope: !2561, inlinedAt: !2562)
!2600 = !DILocation(line: 474, column: 23, scope: !2556, inlinedAt: !2560)
!2601 = !DILocation(line: 474, column: 29, scope: !2556, inlinedAt: !2560)
!2602 = !DILocation(line: 474, column: 36, scope: !2556, inlinedAt: !2560)
!2603 = !DILocation(line: 474, column: 9, scope: !2556, inlinedAt: !2560)
!2604 = !DILocation(line: 545, column: 4, scope: !2563, inlinedAt: !2536)
!2605 = !DILocation(line: 547, column: 25, scope: !2533, inlinedAt: !2536)
!2606 = !DILocation(line: 348, column: 7, scope: !2607, inlinedAt: !2554)
!2607 = distinct !DILexicalBlock(scope: !2550, file: !81, line: 348, column: 6)
!2608 = !DILocation(line: 348, column: 6, scope: !2550, inlinedAt: !2554)
!2609 = !DILocation(line: 349, column: 3, scope: !2607, inlinedAt: !2554)
!2610 = !DILocation(line: 351, column: 6, scope: !2611, inlinedAt: !2554)
!2611 = distinct !DILexicalBlock(scope: !2550, file: !81, line: 351, column: 6)
!2612 = !DILocation(line: 351, column: 11, scope: !2611, inlinedAt: !2554)
!2613 = !DILocation(line: 351, column: 6, scope: !2550, inlinedAt: !2554)
!2614 = !DILocation(line: 352, column: 3, scope: !2611, inlinedAt: !2554)
!2615 = !DILocation(line: 354, column: 32, scope: !2616, inlinedAt: !2554)
!2616 = distinct !DILexicalBlock(scope: !2550, file: !81, line: 354, column: 6)
!2617 = !DILocation(line: 354, column: 37, scope: !2616, inlinedAt: !2554)
!2618 = !DILocation(line: 354, column: 42, scope: !2616, inlinedAt: !2554)
!2619 = !DILocation(line: 354, column: 45, scope: !2616, inlinedAt: !2554)
!2620 = !DILocation(line: 354, column: 50, scope: !2616, inlinedAt: !2554)
!2621 = !DILocation(line: 354, column: 6, scope: !2550, inlinedAt: !2554)
!2622 = !DILocation(line: 355, column: 3, scope: !2616, inlinedAt: !2554)
!2623 = !DILocation(line: 356, column: 32, scope: !2624, inlinedAt: !2554)
!2624 = distinct !DILexicalBlock(scope: !2550, file: !81, line: 356, column: 6)
!2625 = !DILocation(line: 356, column: 37, scope: !2624, inlinedAt: !2554)
!2626 = !DILocation(line: 356, column: 43, scope: !2624, inlinedAt: !2554)
!2627 = !DILocation(line: 356, column: 46, scope: !2624, inlinedAt: !2554)
!2628 = !DILocation(line: 356, column: 51, scope: !2624, inlinedAt: !2554)
!2629 = !DILocation(line: 356, column: 6, scope: !2550, inlinedAt: !2554)
!2630 = !DILocation(line: 357, column: 3, scope: !2624, inlinedAt: !2554)
!2631 = !DILocation(line: 358, column: 6, scope: !2632, inlinedAt: !2554)
!2632 = distinct !DILexicalBlock(scope: !2550, file: !81, line: 358, column: 6)
!2633 = !DILocation(line: 358, column: 11, scope: !2632, inlinedAt: !2554)
!2634 = !DILocation(line: 358, column: 6, scope: !2550, inlinedAt: !2554)
!2635 = !DILocation(line: 358, column: 26, scope: !2632, inlinedAt: !2554)
!2636 = !DILocation(line: 359, column: 6, scope: !2637, inlinedAt: !2554)
!2637 = distinct !DILexicalBlock(scope: !2550, file: !81, line: 359, column: 6)
!2638 = !DILocation(line: 359, column: 11, scope: !2637, inlinedAt: !2554)
!2639 = !DILocation(line: 359, column: 6, scope: !2550, inlinedAt: !2554)
!2640 = !DILocation(line: 359, column: 26, scope: !2637, inlinedAt: !2554)
!2641 = !DILocation(line: 360, column: 6, scope: !2642, inlinedAt: !2554)
!2642 = distinct !DILexicalBlock(scope: !2550, file: !81, line: 360, column: 6)
!2643 = !DILocation(line: 360, column: 11, scope: !2642, inlinedAt: !2554)
!2644 = !DILocation(line: 360, column: 6, scope: !2550, inlinedAt: !2554)
!2645 = !DILocation(line: 360, column: 26, scope: !2642, inlinedAt: !2554)
!2646 = !DILocation(line: 361, column: 6, scope: !2647, inlinedAt: !2554)
!2647 = distinct !DILexicalBlock(scope: !2550, file: !81, line: 361, column: 6)
!2648 = !DILocation(line: 361, column: 11, scope: !2647, inlinedAt: !2554)
!2649 = !DILocation(line: 361, column: 6, scope: !2550, inlinedAt: !2554)
!2650 = !DILocation(line: 361, column: 26, scope: !2647, inlinedAt: !2554)
!2651 = !DILocation(line: 362, column: 6, scope: !2652, inlinedAt: !2554)
!2652 = distinct !DILexicalBlock(scope: !2550, file: !81, line: 362, column: 6)
!2653 = !DILocation(line: 362, column: 11, scope: !2652, inlinedAt: !2554)
!2654 = !DILocation(line: 362, column: 6, scope: !2550, inlinedAt: !2554)
!2655 = !DILocation(line: 362, column: 26, scope: !2652, inlinedAt: !2554)
!2656 = !DILocation(line: 363, column: 6, scope: !2657, inlinedAt: !2554)
!2657 = distinct !DILexicalBlock(scope: !2550, file: !81, line: 363, column: 6)
!2658 = !DILocation(line: 363, column: 11, scope: !2657, inlinedAt: !2554)
!2659 = !DILocation(line: 363, column: 6, scope: !2550, inlinedAt: !2554)
!2660 = !DILocation(line: 363, column: 26, scope: !2657, inlinedAt: !2554)
!2661 = !DILocation(line: 364, column: 6, scope: !2662, inlinedAt: !2554)
!2662 = distinct !DILexicalBlock(scope: !2550, file: !81, line: 364, column: 6)
!2663 = !DILocation(line: 364, column: 11, scope: !2662, inlinedAt: !2554)
!2664 = !DILocation(line: 364, column: 6, scope: !2550, inlinedAt: !2554)
!2665 = !DILocation(line: 364, column: 26, scope: !2662, inlinedAt: !2554)
!2666 = !DILocation(line: 365, column: 6, scope: !2667, inlinedAt: !2554)
!2667 = distinct !DILexicalBlock(scope: !2550, file: !81, line: 365, column: 6)
!2668 = !DILocation(line: 365, column: 11, scope: !2667, inlinedAt: !2554)
!2669 = !DILocation(line: 365, column: 6, scope: !2550, inlinedAt: !2554)
!2670 = !DILocation(line: 365, column: 26, scope: !2667, inlinedAt: !2554)
!2671 = !DILocation(line: 366, column: 6, scope: !2672, inlinedAt: !2554)
!2672 = distinct !DILexicalBlock(scope: !2550, file: !81, line: 366, column: 6)
!2673 = !DILocation(line: 366, column: 11, scope: !2672, inlinedAt: !2554)
!2674 = !DILocation(line: 366, column: 6, scope: !2550, inlinedAt: !2554)
!2675 = !DILocation(line: 366, column: 26, scope: !2672, inlinedAt: !2554)
!2676 = !DILocation(line: 367, column: 6, scope: !2677, inlinedAt: !2554)
!2677 = distinct !DILexicalBlock(scope: !2550, file: !81, line: 367, column: 6)
!2678 = !DILocation(line: 367, column: 11, scope: !2677, inlinedAt: !2554)
!2679 = !DILocation(line: 367, column: 6, scope: !2550, inlinedAt: !2554)
!2680 = !DILocation(line: 367, column: 26, scope: !2677, inlinedAt: !2554)
!2681 = !DILocation(line: 368, column: 6, scope: !2682, inlinedAt: !2554)
!2682 = distinct !DILexicalBlock(scope: !2550, file: !81, line: 368, column: 6)
!2683 = !DILocation(line: 368, column: 11, scope: !2682, inlinedAt: !2554)
!2684 = !DILocation(line: 368, column: 6, scope: !2550, inlinedAt: !2554)
!2685 = !DILocation(line: 368, column: 26, scope: !2682, inlinedAt: !2554)
!2686 = !DILocation(line: 369, column: 6, scope: !2687, inlinedAt: !2554)
!2687 = distinct !DILexicalBlock(scope: !2550, file: !81, line: 369, column: 6)
!2688 = !DILocation(line: 369, column: 11, scope: !2687, inlinedAt: !2554)
!2689 = !DILocation(line: 369, column: 6, scope: !2550, inlinedAt: !2554)
!2690 = !DILocation(line: 369, column: 26, scope: !2687, inlinedAt: !2554)
!2691 = !DILocation(line: 370, column: 6, scope: !2692, inlinedAt: !2554)
!2692 = distinct !DILexicalBlock(scope: !2550, file: !81, line: 370, column: 6)
!2693 = !DILocation(line: 370, column: 11, scope: !2692, inlinedAt: !2554)
!2694 = !DILocation(line: 370, column: 6, scope: !2550, inlinedAt: !2554)
!2695 = !DILocation(line: 370, column: 26, scope: !2692, inlinedAt: !2554)
!2696 = !DILocation(line: 371, column: 6, scope: !2697, inlinedAt: !2554)
!2697 = distinct !DILexicalBlock(scope: !2550, file: !81, line: 371, column: 6)
!2698 = !DILocation(line: 371, column: 11, scope: !2697, inlinedAt: !2554)
!2699 = !DILocation(line: 371, column: 6, scope: !2550, inlinedAt: !2554)
!2700 = !DILocation(line: 371, column: 26, scope: !2697, inlinedAt: !2554)
!2701 = !DILocation(line: 372, column: 6, scope: !2702, inlinedAt: !2554)
!2702 = distinct !DILexicalBlock(scope: !2550, file: !81, line: 372, column: 6)
!2703 = !DILocation(line: 372, column: 11, scope: !2702, inlinedAt: !2554)
!2704 = !DILocation(line: 372, column: 6, scope: !2550, inlinedAt: !2554)
!2705 = !DILocation(line: 372, column: 26, scope: !2702, inlinedAt: !2554)
!2706 = !DILocation(line: 373, column: 6, scope: !2707, inlinedAt: !2554)
!2707 = distinct !DILexicalBlock(scope: !2550, file: !81, line: 373, column: 6)
!2708 = !DILocation(line: 373, column: 11, scope: !2707, inlinedAt: !2554)
!2709 = !DILocation(line: 373, column: 6, scope: !2550, inlinedAt: !2554)
!2710 = !DILocation(line: 373, column: 26, scope: !2707, inlinedAt: !2554)
!2711 = !DILocation(line: 374, column: 6, scope: !2712, inlinedAt: !2554)
!2712 = distinct !DILexicalBlock(scope: !2550, file: !81, line: 374, column: 6)
!2713 = !DILocation(line: 374, column: 11, scope: !2712, inlinedAt: !2554)
!2714 = !DILocation(line: 374, column: 6, scope: !2550, inlinedAt: !2554)
!2715 = !DILocation(line: 374, column: 26, scope: !2712, inlinedAt: !2554)
!2716 = !DILocation(line: 375, column: 6, scope: !2717, inlinedAt: !2554)
!2717 = distinct !DILexicalBlock(scope: !2550, file: !81, line: 375, column: 6)
!2718 = !DILocation(line: 375, column: 11, scope: !2717, inlinedAt: !2554)
!2719 = !DILocation(line: 375, column: 6, scope: !2550, inlinedAt: !2554)
!2720 = !DILocation(line: 375, column: 27, scope: !2717, inlinedAt: !2554)
!2721 = !DILocation(line: 376, column: 6, scope: !2722, inlinedAt: !2554)
!2722 = distinct !DILexicalBlock(scope: !2550, file: !81, line: 376, column: 6)
!2723 = !DILocation(line: 376, column: 11, scope: !2722, inlinedAt: !2554)
!2724 = !DILocation(line: 376, column: 6, scope: !2550, inlinedAt: !2554)
!2725 = !DILocation(line: 376, column: 32, scope: !2722, inlinedAt: !2554)
!2726 = !DILocation(line: 377, column: 6, scope: !2727, inlinedAt: !2554)
!2727 = distinct !DILexicalBlock(scope: !2550, file: !81, line: 377, column: 6)
!2728 = !DILocation(line: 377, column: 11, scope: !2727, inlinedAt: !2554)
!2729 = !DILocation(line: 377, column: 6, scope: !2550, inlinedAt: !2554)
!2730 = !DILocation(line: 377, column: 32, scope: !2727, inlinedAt: !2554)
!2731 = !DILocation(line: 378, column: 6, scope: !2732, inlinedAt: !2554)
!2732 = distinct !DILexicalBlock(scope: !2550, file: !81, line: 378, column: 6)
!2733 = !DILocation(line: 378, column: 11, scope: !2732, inlinedAt: !2554)
!2734 = !DILocation(line: 378, column: 6, scope: !2550, inlinedAt: !2554)
!2735 = !DILocation(line: 378, column: 32, scope: !2732, inlinedAt: !2554)
!2736 = !DILocation(line: 379, column: 6, scope: !2737, inlinedAt: !2554)
!2737 = distinct !DILexicalBlock(scope: !2550, file: !81, line: 379, column: 6)
!2738 = !DILocation(line: 379, column: 11, scope: !2737, inlinedAt: !2554)
!2739 = !DILocation(line: 379, column: 6, scope: !2550, inlinedAt: !2554)
!2740 = !DILocation(line: 379, column: 33, scope: !2737, inlinedAt: !2554)
!2741 = !DILocation(line: 380, column: 6, scope: !2742, inlinedAt: !2554)
!2742 = distinct !DILexicalBlock(scope: !2550, file: !81, line: 380, column: 6)
!2743 = !DILocation(line: 380, column: 11, scope: !2742, inlinedAt: !2554)
!2744 = !DILocation(line: 380, column: 6, scope: !2550, inlinedAt: !2554)
!2745 = !DILocation(line: 380, column: 33, scope: !2742, inlinedAt: !2554)
!2746 = !DILocation(line: 381, column: 6, scope: !2747, inlinedAt: !2554)
!2747 = distinct !DILexicalBlock(scope: !2550, file: !81, line: 381, column: 6)
!2748 = !DILocation(line: 381, column: 11, scope: !2747, inlinedAt: !2554)
!2749 = !DILocation(line: 381, column: 6, scope: !2550, inlinedAt: !2554)
!2750 = !DILocation(line: 381, column: 33, scope: !2747, inlinedAt: !2554)
!2751 = !DILocation(line: 382, column: 2, scope: !2752, inlinedAt: !2554)
!2752 = distinct !DILexicalBlock(scope: !2753, file: !81, line: 382, column: 2)
!2753 = distinct !DILexicalBlock(scope: !2550, file: !81, line: 382, column: 2)
!2754 = !{i32 -2144632219, i32 -2144632190, i32 -2144632144, i32 -2144632086, i32 -2144632032, i32 -2144631978, i32 -2144631923, i32 -2144631892}
!2755 = !DILocation(line: 382, column: 2, scope: !2756, inlinedAt: !2554)
!2756 = distinct !DILexicalBlock(scope: !2757, file: !81, line: 382, column: 2)
!2757 = distinct !DILexicalBlock(scope: !2753, file: !81, line: 382, column: 2)
!2758 = !{i32 -2144631449, i32 -2144631442, i32 -2144631388, i32 -2144631357, i32 -2144631327}
!2759 = !DILocation(line: 382, column: 2, scope: !2757, inlinedAt: !2554)
!2760 = !DILocation(line: 386, column: 1, scope: !2550, inlinedAt: !2554)
!2761 = !DILocation(line: 547, column: 9, scope: !2533, inlinedAt: !2536)
!2762 = !DILocation(line: 549, column: 8, scope: !2763, inlinedAt: !2536)
!2763 = distinct !DILexicalBlock(scope: !2533, file: !81, line: 549, column: 7)
!2764 = !DILocation(line: 549, column: 7, scope: !2533, inlinedAt: !2536)
!2765 = !DILocation(line: 550, column: 4, scope: !2763, inlinedAt: !2536)
!2766 = !DILocation(line: 553, column: 33, scope: !2533, inlinedAt: !2536)
!2767 = !DILocation(line: 325, column: 6, scope: !2768, inlinedAt: !2548)
!2768 = distinct !DILexicalBlock(scope: !2544, file: !81, line: 325, column: 6)
!2769 = !DILocation(line: 325, column: 6, scope: !2544, inlinedAt: !2548)
!2770 = !DILocation(line: 326, column: 3, scope: !2768, inlinedAt: !2548)
!2771 = !DILocation(line: 332, column: 9, scope: !2544, inlinedAt: !2548)
!2772 = !DILocation(line: 332, column: 15, scope: !2544, inlinedAt: !2548)
!2773 = !DILocation(line: 332, column: 2, scope: !2544, inlinedAt: !2548)
!2774 = !DILocation(line: 336, column: 1, scope: !2544, inlinedAt: !2548)
!2775 = !DILocation(line: 553, column: 5, scope: !2533, inlinedAt: !2536)
!2776 = !DILocation(line: 553, column: 41, scope: !2533, inlinedAt: !2536)
!2777 = !DILocation(line: 554, column: 5, scope: !2533, inlinedAt: !2536)
!2778 = !DILocation(line: 554, column: 12, scope: !2533, inlinedAt: !2536)
!2779 = !DILocation(line: 448, column: 31, scope: !2528, inlinedAt: !2532)
!2780 = !DILocation(line: 448, column: 34, scope: !2528, inlinedAt: !2532)
!2781 = !DILocation(line: 448, column: 14, scope: !2528, inlinedAt: !2532)
!2782 = !DILocation(line: 450, column: 22, scope: !2528, inlinedAt: !2532)
!2783 = !DILocation(line: 450, column: 25, scope: !2528, inlinedAt: !2532)
!2784 = !DILocation(line: 450, column: 30, scope: !2528, inlinedAt: !2532)
!2785 = !DILocation(line: 450, column: 36, scope: !2528, inlinedAt: !2532)
!2786 = !DILocation(line: 450, column: 8, scope: !2528, inlinedAt: !2532)
!2787 = !DILocation(line: 450, column: 6, scope: !2528, inlinedAt: !2532)
!2788 = !DILocation(line: 451, column: 9, scope: !2528, inlinedAt: !2532)
!2789 = !DILocation(line: 552, column: 3, scope: !2533, inlinedAt: !2536)
!2790 = !DILocation(line: 557, column: 19, scope: !2535, inlinedAt: !2536)
!2791 = !DILocation(line: 557, column: 25, scope: !2535, inlinedAt: !2536)
!2792 = !DILocation(line: 557, column: 9, scope: !2535, inlinedAt: !2536)
!2793 = !DILocation(line: 557, column: 2, scope: !2535, inlinedAt: !2536)
!2794 = !DILocation(line: 558, column: 1, scope: !2535, inlinedAt: !2536)
!2795 = !DILocation(line: 664, column: 2, scope: !2524)
!2796 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !2797, file: !2797, line: 33, type: !2798, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !143)
!2797 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!2798 = !DISubroutineType(types: !2799)
!2799 = !{null, !119}
!2800 = !DILocalVariable(name: "list", arg: 1, scope: !2796, file: !2797, line: 33, type: !119)
!2801 = !DILocation(line: 33, column: 53, scope: !2796)
!2802 = !DILocation(line: 35, column: 2, scope: !2796)
!2803 = !DILocation(line: 35, column: 2, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2796, file: !2797, line: 35, column: 2)
!2805 = !DILocation(line: 35, column: 2, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2804, file: !2797, line: 35, column: 2)
!2807 = !DILocation(line: 35, column: 2, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2804, file: !2797, line: 35, column: 2)
!2809 = !DILocation(line: 36, column: 15, scope: !2796)
!2810 = !DILocation(line: 36, column: 2, scope: !2796)
!2811 = !DILocation(line: 36, column: 8, scope: !2796)
!2812 = !DILocation(line: 36, column: 13, scope: !2796)
!2813 = !DILocation(line: 37, column: 1, scope: !2796)
!2814 = distinct !DISubprogram(name: "IS_ERR", scope: !2815, file: !2815, line: 34, type: !2816, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !143)
!2815 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!2816 = !DISubroutineType(types: !2817)
!2817 = !{!998, !1387}
!2818 = !DILocalVariable(name: "ptr", arg: 1, scope: !2814, file: !2815, line: 34, type: !1387)
!2819 = !DILocation(line: 34, column: 60, scope: !2814)
!2820 = !DILocation(line: 36, column: 9, scope: !2814)
!2821 = !DILocation(line: 36, column: 2, scope: !2814)
!2822 = distinct !DISubprogram(name: "PTR_ERR", scope: !2815, file: !2815, line: 29, type: !2823, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !143)
!2823 = !DISubroutineType(types: !2824)
!2824 = !{!206, !1387}
!2825 = !DILocalVariable(name: "ptr", arg: 1, scope: !2822, file: !2815, line: 29, type: !1387)
!2826 = !DILocation(line: 29, column: 61, scope: !2822)
!2827 = !DILocation(line: 31, column: 16, scope: !2822)
!2828 = !DILocation(line: 31, column: 9, scope: !2822)
!2829 = !DILocation(line: 31, column: 2, scope: !2822)
!2830 = distinct !DISubprogram(name: "temp_input_show", scope: !3, file: !3, line: 49, type: !2074, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !143)
!2831 = !DILocalVariable(name: "dev", arg: 1, scope: !2830, file: !3, line: 49, type: !105)
!2832 = !DILocation(line: 49, column: 32, scope: !2830)
!2833 = !DILocalVariable(name: "attr", arg: 2, scope: !2830, file: !3, line: 49, type: !2076)
!2834 = !DILocation(line: 49, column: 62, scope: !2830)
!2835 = !DILocalVariable(name: "buf", arg: 3, scope: !2830, file: !3, line: 49, type: !171)
!2836 = !DILocation(line: 49, column: 74, scope: !2830)
!2837 = !DILocalVariable(name: "temperature", scope: !2830, file: !3, line: 51, type: !155)
!2838 = !DILocation(line: 51, column: 6, scope: !2830)
!2839 = !DILocalVariable(name: "ret", scope: !2830, file: !3, line: 52, type: !155)
!2840 = !DILocation(line: 52, column: 6, scope: !2830)
!2841 = !DILocalVariable(name: "hwmon_attr", scope: !2830, file: !3, line: 53, type: !2065)
!2842 = !DILocation(line: 53, column: 29, scope: !2830)
!2843 = !DILocalVariable(name: "__mptr", scope: !2844, file: !3, line: 54, type: !95)
!2844 = distinct !DILexicalBlock(scope: !2830, file: !3, line: 54, column: 6)
!2845 = !DILocation(line: 54, column: 6, scope: !2844)
!2846 = !DILocation(line: 54, column: 6, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2844, file: !3, line: 54, column: 6)
!2848 = !DILocalVariable(name: "temp", scope: !2830, file: !3, line: 55, type: !2082)
!2849 = !DILocation(line: 55, column: 29, scope: !2830)
!2850 = !DILocalVariable(name: "__mptr", scope: !2851, file: !3, line: 56, type: !95)
!2851 = distinct !DILexicalBlock(scope: !2830, file: !3, line: 56, column: 6)
!2852 = !DILocation(line: 56, column: 6, scope: !2851)
!2853 = !DILocation(line: 56, column: 6, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2851, file: !3, line: 56, column: 6)
!2855 = !DILocalVariable(name: "tz", scope: !2830, file: !3, line: 58, type: !2087)
!2856 = !DILocation(line: 58, column: 30, scope: !2830)
!2857 = !DILocation(line: 58, column: 35, scope: !2830)
!2858 = !DILocation(line: 58, column: 41, scope: !2830)
!2859 = !DILocation(line: 60, column: 30, scope: !2830)
!2860 = !DILocation(line: 60, column: 8, scope: !2830)
!2861 = !DILocation(line: 60, column: 6, scope: !2830)
!2862 = !DILocation(line: 62, column: 6, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2830, file: !3, line: 62, column: 6)
!2864 = !DILocation(line: 62, column: 6, scope: !2830)
!2865 = !DILocation(line: 63, column: 10, scope: !2863)
!2866 = !DILocation(line: 63, column: 3, scope: !2863)
!2867 = !DILocation(line: 65, column: 17, scope: !2830)
!2868 = !DILocation(line: 65, column: 30, scope: !2830)
!2869 = !DILocation(line: 65, column: 9, scope: !2830)
!2870 = !DILocation(line: 65, column: 2, scope: !2830)
!2871 = !DILocation(line: 66, column: 1, scope: !2830)
!2872 = distinct !DISubprogram(name: "thermal_zone_crit_temp_valid", scope: !3, file: !3, line: 126, type: !2873, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !143)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{!998, !2087}
!2875 = !DILocalVariable(name: "tz", arg: 1, scope: !2872, file: !3, line: 126, type: !2087)
!2876 = !DILocation(line: 126, column: 70, scope: !2872)
!2877 = !DILocalVariable(name: "temp", scope: !2872, file: !3, line: 128, type: !155)
!2878 = !DILocation(line: 128, column: 6, scope: !2872)
!2879 = !DILocation(line: 129, column: 9, scope: !2872)
!2880 = !DILocation(line: 129, column: 13, scope: !2872)
!2881 = !DILocation(line: 129, column: 18, scope: !2872)
!2882 = !DILocation(line: 129, column: 32, scope: !2872)
!2883 = !DILocation(line: 129, column: 36, scope: !2872)
!2884 = !DILocation(line: 129, column: 40, scope: !2872)
!2885 = !DILocation(line: 129, column: 45, scope: !2872)
!2886 = !DILocation(line: 129, column: 59, scope: !2872)
!2887 = !DILocation(line: 129, column: 35, scope: !2872)
!2888 = !DILocation(line: 0, scope: !2872)
!2889 = !DILocation(line: 129, column: 2, scope: !2872)
!2890 = distinct !DISubprogram(name: "temp_crit_show", scope: !3, file: !3, line: 69, type: !2074, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !143)
!2891 = !DILocalVariable(name: "dev", arg: 1, scope: !2890, file: !3, line: 69, type: !105)
!2892 = !DILocation(line: 69, column: 31, scope: !2890)
!2893 = !DILocalVariable(name: "attr", arg: 2, scope: !2890, file: !3, line: 69, type: !2076)
!2894 = !DILocation(line: 69, column: 61, scope: !2890)
!2895 = !DILocalVariable(name: "buf", arg: 3, scope: !2890, file: !3, line: 69, type: !171)
!2896 = !DILocation(line: 69, column: 73, scope: !2890)
!2897 = !DILocalVariable(name: "hwmon_attr", scope: !2890, file: !3, line: 71, type: !2065)
!2898 = !DILocation(line: 71, column: 29, scope: !2890)
!2899 = !DILocalVariable(name: "__mptr", scope: !2900, file: !3, line: 72, type: !95)
!2900 = distinct !DILexicalBlock(scope: !2890, file: !3, line: 72, column: 6)
!2901 = !DILocation(line: 72, column: 6, scope: !2900)
!2902 = !DILocation(line: 72, column: 6, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2900, file: !3, line: 72, column: 6)
!2904 = !DILocalVariable(name: "temp", scope: !2890, file: !3, line: 73, type: !2082)
!2905 = !DILocation(line: 73, column: 29, scope: !2890)
!2906 = !DILocalVariable(name: "__mptr", scope: !2907, file: !3, line: 74, type: !95)
!2907 = distinct !DILexicalBlock(scope: !2890, file: !3, line: 74, column: 6)
!2908 = !DILocation(line: 74, column: 6, scope: !2907)
!2909 = !DILocation(line: 74, column: 6, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2907, file: !3, line: 74, column: 6)
!2911 = !DILocalVariable(name: "tz", scope: !2890, file: !3, line: 76, type: !2087)
!2912 = !DILocation(line: 76, column: 30, scope: !2890)
!2913 = !DILocation(line: 76, column: 35, scope: !2890)
!2914 = !DILocation(line: 76, column: 41, scope: !2890)
!2915 = !DILocalVariable(name: "temperature", scope: !2890, file: !3, line: 77, type: !155)
!2916 = !DILocation(line: 77, column: 6, scope: !2890)
!2917 = !DILocalVariable(name: "ret", scope: !2890, file: !3, line: 78, type: !155)
!2918 = !DILocation(line: 78, column: 6, scope: !2890)
!2919 = !DILocation(line: 80, column: 8, scope: !2890)
!2920 = !DILocation(line: 80, column: 12, scope: !2890)
!2921 = !DILocation(line: 80, column: 17, scope: !2890)
!2922 = !DILocation(line: 80, column: 31, scope: !2890)
!2923 = !DILocation(line: 80, column: 6, scope: !2890)
!2924 = !DILocation(line: 81, column: 6, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2890, file: !3, line: 81, column: 6)
!2926 = !DILocation(line: 81, column: 6, scope: !2890)
!2927 = !DILocation(line: 82, column: 10, scope: !2925)
!2928 = !DILocation(line: 82, column: 3, scope: !2925)
!2929 = !DILocation(line: 84, column: 17, scope: !2890)
!2930 = !DILocation(line: 84, column: 30, scope: !2890)
!2931 = !DILocation(line: 84, column: 9, scope: !2890)
!2932 = !DILocation(line: 84, column: 2, scope: !2890)
!2933 = !DILocation(line: 85, column: 1, scope: !2890)
!2934 = distinct !DISubprogram(name: "list_add_tail", scope: !2797, file: !2797, line: 98, type: !2935, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !143)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{null, !119, !119}
!2937 = !DILocalVariable(name: "new", arg: 1, scope: !2934, file: !2797, line: 98, type: !119)
!2938 = !DILocation(line: 98, column: 52, scope: !2934)
!2939 = !DILocalVariable(name: "head", arg: 2, scope: !2934, file: !2797, line: 98, type: !119)
!2940 = !DILocation(line: 98, column: 75, scope: !2934)
!2941 = !DILocation(line: 100, column: 13, scope: !2934)
!2942 = !DILocation(line: 100, column: 18, scope: !2934)
!2943 = !DILocation(line: 100, column: 24, scope: !2934)
!2944 = !DILocation(line: 100, column: 30, scope: !2934)
!2945 = !DILocation(line: 100, column: 2, scope: !2934)
!2946 = !DILocation(line: 101, column: 1, scope: !2934)
!2947 = distinct !DISubprogram(name: "thermal_remove_hwmon_sysfs", scope: !3, file: !3, line: 216, type: !2235, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !143)
!2948 = !DILocalVariable(name: "tz", arg: 1, scope: !2947, file: !3, line: 216, type: !2087)
!2949 = !DILocation(line: 216, column: 61, scope: !2947)
!2950 = !DILocalVariable(name: "hwmon", scope: !2947, file: !3, line: 218, type: !96)
!2951 = !DILocation(line: 218, column: 31, scope: !2947)
!2952 = !DILocalVariable(name: "temp", scope: !2947, file: !3, line: 219, type: !2082)
!2953 = !DILocation(line: 219, column: 29, scope: !2947)
!2954 = !DILocation(line: 221, column: 39, scope: !2947)
!2955 = !DILocation(line: 221, column: 10, scope: !2947)
!2956 = !DILocation(line: 221, column: 8, scope: !2947)
!2957 = !DILocation(line: 222, column: 6, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2947, file: !3, line: 222, column: 6)
!2959 = !DILocation(line: 222, column: 6, scope: !2947)
!2960 = !DILocation(line: 225, column: 3, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2958, file: !3, line: 222, column: 24)
!2962 = !DILocation(line: 228, column: 35, scope: !2947)
!2963 = !DILocation(line: 228, column: 42, scope: !2947)
!2964 = !DILocation(line: 228, column: 9, scope: !2947)
!2965 = !DILocation(line: 228, column: 7, scope: !2947)
!2966 = !DILocation(line: 229, column: 6, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2947, file: !3, line: 229, column: 6)
!2968 = !DILocation(line: 229, column: 6, scope: !2947)
!2969 = !DILocation(line: 232, column: 3, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2967, file: !3, line: 229, column: 23)
!2971 = !DILocation(line: 235, column: 21, scope: !2947)
!2972 = !DILocation(line: 235, column: 28, scope: !2947)
!2973 = !DILocation(line: 235, column: 37, scope: !2947)
!2974 = !DILocation(line: 235, column: 43, scope: !2947)
!2975 = !DILocation(line: 235, column: 54, scope: !2947)
!2976 = !DILocation(line: 235, column: 2, scope: !2947)
!2977 = !DILocation(line: 236, column: 35, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2947, file: !3, line: 236, column: 6)
!2979 = !DILocation(line: 236, column: 6, scope: !2978)
!2980 = !DILocation(line: 236, column: 6, scope: !2947)
!2981 = !DILocation(line: 237, column: 22, scope: !2978)
!2982 = !DILocation(line: 237, column: 29, scope: !2978)
!2983 = !DILocation(line: 237, column: 38, scope: !2978)
!2984 = !DILocation(line: 237, column: 44, scope: !2978)
!2985 = !DILocation(line: 237, column: 54, scope: !2978)
!2986 = !DILocation(line: 237, column: 3, scope: !2978)
!2987 = !DILocation(line: 239, column: 2, scope: !2947)
!2988 = !DILocation(line: 240, column: 12, scope: !2947)
!2989 = !DILocation(line: 240, column: 18, scope: !2947)
!2990 = !DILocation(line: 240, column: 2, scope: !2947)
!2991 = !DILocation(line: 241, column: 8, scope: !2947)
!2992 = !DILocation(line: 241, column: 2, scope: !2947)
!2993 = !DILocation(line: 242, column: 19, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2947, file: !3, line: 242, column: 6)
!2995 = !DILocation(line: 242, column: 26, scope: !2994)
!2996 = !DILocation(line: 242, column: 7, scope: !2994)
!2997 = !DILocation(line: 242, column: 6, scope: !2947)
!2998 = !DILocation(line: 243, column: 3, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2994, file: !3, line: 242, column: 36)
!3000 = !DILocation(line: 244, column: 3, scope: !2999)
!3001 = !DILocation(line: 246, column: 12, scope: !2947)
!3002 = !DILocation(line: 246, column: 19, scope: !2947)
!3003 = !DILocation(line: 246, column: 2, scope: !2947)
!3004 = !DILocation(line: 247, column: 2, scope: !2947)
!3005 = !DILocation(line: 249, column: 26, scope: !2947)
!3006 = !DILocation(line: 249, column: 33, scope: !2947)
!3007 = !DILocation(line: 249, column: 2, scope: !2947)
!3008 = !DILocation(line: 250, column: 8, scope: !2947)
!3009 = !DILocation(line: 250, column: 2, scope: !2947)
!3010 = !DILocation(line: 251, column: 1, scope: !2947)
!3011 = distinct !DISubprogram(name: "thermal_hwmon_lookup_temp", scope: !3, file: !3, line: 110, type: !3012, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !143)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!2082, !3014, !2478}
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!3016 = !DILocalVariable(name: "hwmon", arg: 1, scope: !3011, file: !3, line: 110, type: !3014)
!3017 = !DILocation(line: 110, column: 62, scope: !3011)
!3018 = !DILocalVariable(name: "tz", arg: 2, scope: !3011, file: !3, line: 111, type: !2478)
!3019 = !DILocation(line: 111, column: 40, scope: !3011)
!3020 = !DILocalVariable(name: "temp", scope: !3011, file: !3, line: 113, type: !2082)
!3021 = !DILocation(line: 113, column: 29, scope: !3011)
!3022 = !DILocation(line: 115, column: 2, scope: !3011)
!3023 = !DILocalVariable(name: "__mptr", scope: !3024, file: !3, line: 116, type: !95)
!3024 = distinct !DILexicalBlock(scope: !3025, file: !3, line: 116, column: 2)
!3025 = distinct !DILexicalBlock(scope: !3011, file: !3, line: 116, column: 2)
!3026 = !DILocation(line: 116, column: 2, scope: !3024)
!3027 = !DILocation(line: 116, column: 2, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !3024, file: !3, line: 116, column: 2)
!3029 = !DILocation(line: 116, column: 2, scope: !3025)
!3030 = !DILocation(line: 116, column: 2, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !3025, file: !3, line: 116, column: 2)
!3032 = !DILocation(line: 117, column: 7, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !3031, file: !3, line: 117, column: 7)
!3034 = !DILocation(line: 117, column: 13, scope: !3033)
!3035 = !DILocation(line: 117, column: 19, scope: !3033)
!3036 = !DILocation(line: 117, column: 16, scope: !3033)
!3037 = !DILocation(line: 117, column: 7, scope: !3031)
!3038 = !DILocation(line: 118, column: 4, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !3033, file: !3, line: 117, column: 23)
!3040 = !DILocation(line: 119, column: 11, scope: !3039)
!3041 = !DILocation(line: 119, column: 4, scope: !3039)
!3042 = !DILocalVariable(name: "__mptr", scope: !3043, file: !3, line: 116, type: !95)
!3043 = distinct !DILexicalBlock(scope: !3031, file: !3, line: 116, column: 2)
!3044 = !DILocation(line: 116, column: 2, scope: !3043)
!3045 = !DILocation(line: 116, column: 2, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3043, file: !3, line: 116, column: 2)
!3047 = distinct !{!3047, !3029, !3048}
!3048 = !DILocation(line: 120, column: 3, scope: !3025)
!3049 = !DILocation(line: 121, column: 2, scope: !3011)
!3050 = !DILocation(line: 123, column: 2, scope: !3011)
!3051 = !DILocation(line: 124, column: 1, scope: !3011)
!3052 = distinct !DISubprogram(name: "list_del", scope: !2797, file: !2797, line: 144, type: !2798, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !143)
!3053 = !DILocalVariable(name: "entry", arg: 1, scope: !3052, file: !2797, line: 144, type: !119)
!3054 = !DILocation(line: 144, column: 47, scope: !3052)
!3055 = !DILocation(line: 146, column: 19, scope: !3052)
!3056 = !DILocation(line: 146, column: 2, scope: !3052)
!3057 = !DILocation(line: 147, column: 2, scope: !3052)
!3058 = !DILocation(line: 147, column: 9, scope: !3052)
!3059 = !DILocation(line: 147, column: 14, scope: !3052)
!3060 = !DILocation(line: 148, column: 2, scope: !3052)
!3061 = !DILocation(line: 148, column: 9, scope: !3052)
!3062 = !DILocation(line: 148, column: 14, scope: !3052)
!3063 = !DILocation(line: 149, column: 1, scope: !3052)
!3064 = distinct !DISubprogram(name: "list_empty", scope: !2797, file: !2797, line: 280, type: !3065, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !143)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!155, !3067}
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!3069 = !DILocalVariable(name: "head", arg: 1, scope: !3064, file: !2797, line: 280, type: !3067)
!3070 = !DILocation(line: 280, column: 54, scope: !3064)
!3071 = !DILocation(line: 282, column: 9, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3064, file: !2797, line: 282, column: 9)
!3073 = !DILocation(line: 282, column: 9, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3072, file: !2797, line: 282, column: 9)
!3075 = !DILocation(line: 282, column: 34, scope: !3064)
!3076 = !DILocation(line: 282, column: 31, scope: !3064)
!3077 = !DILocation(line: 282, column: 2, scope: !3064)
!3078 = distinct !DISubprogram(name: "devm_thermal_add_hwmon_sysfs", scope: !3, file: !3, line: 259, type: !2231, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !143)
!3079 = !DILocalVariable(name: "tz", arg: 1, scope: !3078, file: !3, line: 259, type: !2087)
!3080 = !DILocation(line: 259, column: 62, scope: !3078)
!3081 = !DILocalVariable(name: "ptr", scope: !3078, file: !3, line: 261, type: !2261)
!3082 = !DILocation(line: 261, column: 31, scope: !3078)
!3083 = !DILocalVariable(name: "ret", scope: !3078, file: !3, line: 262, type: !155)
!3084 = !DILocation(line: 262, column: 6, scope: !3078)
!3085 = !DILocation(line: 264, column: 8, scope: !3078)
!3086 = !DILocation(line: 264, column: 6, scope: !3078)
!3087 = !DILocation(line: 266, column: 7, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3078, file: !3, line: 266, column: 6)
!3089 = !DILocation(line: 266, column: 6, scope: !3078)
!3090 = !DILocation(line: 267, column: 3, scope: !3088)
!3091 = !DILocation(line: 269, column: 32, scope: !3078)
!3092 = !DILocation(line: 269, column: 8, scope: !3078)
!3093 = !DILocation(line: 269, column: 6, scope: !3078)
!3094 = !DILocation(line: 270, column: 6, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3078, file: !3, line: 270, column: 6)
!3096 = !DILocation(line: 270, column: 6, scope: !3078)
!3097 = !DILocation(line: 271, column: 15, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3095, file: !3, line: 270, column: 11)
!3099 = !DILocation(line: 271, column: 3, scope: !3098)
!3100 = !DILocation(line: 272, column: 10, scope: !3098)
!3101 = !DILocation(line: 272, column: 3, scope: !3098)
!3102 = !DILocation(line: 275, column: 9, scope: !3078)
!3103 = !DILocation(line: 275, column: 3, scope: !3078)
!3104 = !DILocation(line: 275, column: 7, scope: !3078)
!3105 = !DILocation(line: 276, column: 14, scope: !3078)
!3106 = !DILocation(line: 276, column: 18, scope: !3078)
!3107 = !DILocation(line: 276, column: 26, scope: !3078)
!3108 = !DILocation(line: 276, column: 2, scope: !3078)
!3109 = !DILocation(line: 278, column: 9, scope: !3078)
!3110 = !DILocation(line: 278, column: 2, scope: !3078)
!3111 = !DILocation(line: 279, column: 1, scope: !3078)
!3112 = distinct !DISubprogram(name: "devres_alloc", scope: !30, file: !30, line: 178, type: !3113, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !143)
!3113 = !DISubroutineType(types: !3114)
!3114 = !{!95, !3115, !218, !93}
!3115 = !DIDerivedType(tag: DW_TAG_typedef, name: "dr_release_t", file: !30, line: 165, baseType: !3116)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{null, !105, !95}
!3119 = !DILocalVariable(name: "release", arg: 1, scope: !3112, file: !30, line: 178, type: !3115)
!3120 = !DILocation(line: 178, column: 47, scope: !3112)
!3121 = !DILocalVariable(name: "size", arg: 2, scope: !3112, file: !30, line: 178, type: !218)
!3122 = !DILocation(line: 178, column: 63, scope: !3112)
!3123 = !DILocalVariable(name: "gfp", arg: 3, scope: !3112, file: !30, line: 178, type: !93)
!3124 = !DILocation(line: 178, column: 75, scope: !3112)
!3125 = !DILocation(line: 180, column: 27, scope: !3112)
!3126 = !DILocation(line: 180, column: 36, scope: !3112)
!3127 = !DILocation(line: 180, column: 42, scope: !3112)
!3128 = !DILocation(line: 180, column: 9, scope: !3112)
!3129 = !DILocation(line: 180, column: 2, scope: !3112)
!3130 = distinct !DISubprogram(name: "devm_thermal_hwmon_release", scope: !3, file: !3, line: 254, type: !3117, scopeLine: 255, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !143)
!3131 = !DILocalVariable(name: "dev", arg: 1, scope: !3130, file: !3, line: 254, type: !105)
!3132 = !DILocation(line: 254, column: 55, scope: !3130)
!3133 = !DILocalVariable(name: "res", arg: 2, scope: !3130, file: !3, line: 254, type: !95)
!3134 = !DILocation(line: 254, column: 66, scope: !3130)
!3135 = !DILocation(line: 256, column: 61, scope: !3130)
!3136 = !DILocation(line: 256, column: 30, scope: !3130)
!3137 = !DILocation(line: 256, column: 29, scope: !3130)
!3138 = !DILocation(line: 256, column: 2, scope: !3130)
!3139 = !DILocation(line: 257, column: 1, scope: !3130)
!3140 = distinct !DISubprogram(name: "get_order", scope: !3141, file: !3141, line: 29, type: !3142, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !143)
!3141 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!3142 = !DISubroutineType(types: !3143)
!3143 = !{!155, !221}
!3144 = !DILocalVariable(name: "x", arg: 1, scope: !3145, file: !3146, line: 366, type: !292)
!3145 = distinct !DISubprogram(name: "fls64", scope: !3146, file: !3146, line: 366, type: !3147, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !143)
!3146 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!3147 = !DISubroutineType(types: !3148)
!3148 = !{!155, !292}
!3149 = !DILocation(line: 366, column: 40, scope: !3145, inlinedAt: !3150)
!3150 = distinct !DILocation(line: 46, column: 9, scope: !3140)
!3151 = !DILocalVariable(name: "bitpos", scope: !3145, file: !3146, line: 368, type: !155)
!3152 = !DILocation(line: 368, column: 6, scope: !3145, inlinedAt: !3150)
!3153 = !DILocalVariable(name: "size", arg: 1, scope: !3140, file: !3141, line: 29, type: !221)
!3154 = !DILocation(line: 29, column: 63, scope: !3140)
!3155 = !DILocation(line: 31, column: 27, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3140, file: !3141, line: 31, column: 6)
!3157 = !DILocation(line: 31, column: 6, scope: !3156)
!3158 = !DILocation(line: 31, column: 6, scope: !3140)
!3159 = !DILocation(line: 32, column: 8, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3161, file: !3141, line: 32, column: 7)
!3161 = distinct !DILexicalBlock(scope: !3156, file: !3141, line: 31, column: 34)
!3162 = !DILocation(line: 32, column: 7, scope: !3161)
!3163 = !DILocation(line: 33, column: 4, scope: !3160)
!3164 = !DILocation(line: 35, column: 7, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !3161, file: !3141, line: 35, column: 7)
!3166 = !DILocation(line: 35, column: 12, scope: !3165)
!3167 = !DILocation(line: 35, column: 7, scope: !3161)
!3168 = !DILocation(line: 36, column: 4, scope: !3165)
!3169 = !DILocation(line: 38, column: 10, scope: !3161)
!3170 = !DILocation(line: 38, column: 28, scope: !3161)
!3171 = !DILocation(line: 38, column: 41, scope: !3161)
!3172 = !DILocation(line: 38, column: 3, scope: !3161)
!3173 = !DILocation(line: 41, column: 6, scope: !3140)
!3174 = !DILocation(line: 42, column: 7, scope: !3140)
!3175 = !DILocation(line: 46, column: 15, scope: !3140)
!3176 = !DILocation(line: 374, column: 2, scope: !3145, inlinedAt: !3150)
!3177 = !DILocation(line: 376, column: 14, scope: !3145, inlinedAt: !3150)
!3178 = !{i32 224044}
!3179 = !DILocation(line: 377, column: 9, scope: !3145, inlinedAt: !3150)
!3180 = !DILocation(line: 377, column: 16, scope: !3145, inlinedAt: !3150)
!3181 = !DILocation(line: 46, column: 2, scope: !3140)
!3182 = !DILocation(line: 48, column: 1, scope: !3140)
!3183 = distinct !DISubprogram(name: "__ilog2_u64", scope: !3184, file: !3184, line: 30, type: !3185, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !143)
!3184 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!3185 = !DISubroutineType(types: !3186)
!3186 = !{!155, !290}
!3187 = !DILocation(line: 366, column: 40, scope: !3145, inlinedAt: !3188)
!3188 = distinct !DILocation(line: 32, column: 9, scope: !3183)
!3189 = !DILocation(line: 368, column: 6, scope: !3145, inlinedAt: !3188)
!3190 = !DILocalVariable(name: "n", arg: 1, scope: !3183, file: !3184, line: 30, type: !290)
!3191 = !DILocation(line: 30, column: 21, scope: !3183)
!3192 = !DILocation(line: 32, column: 15, scope: !3183)
!3193 = !DILocation(line: 374, column: 2, scope: !3145, inlinedAt: !3188)
!3194 = !DILocation(line: 376, column: 14, scope: !3145, inlinedAt: !3188)
!3195 = !DILocation(line: 377, column: 9, scope: !3145, inlinedAt: !3188)
!3196 = !DILocation(line: 377, column: 16, scope: !3145, inlinedAt: !3188)
!3197 = !DILocation(line: 32, column: 18, scope: !3183)
!3198 = !DILocation(line: 32, column: 2, scope: !3183)
!3199 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1117, file: !1117, line: 137, type: !3200, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !143)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{!95, !1048, !1387, !218, !93}
!3202 = !DILocalVariable(name: "s", arg: 1, scope: !3199, file: !1117, line: 137, type: !1048)
!3203 = !DILocation(line: 137, column: 54, scope: !3199)
!3204 = !DILocalVariable(name: "object", arg: 2, scope: !3199, file: !1117, line: 137, type: !1387)
!3205 = !DILocation(line: 137, column: 69, scope: !3199)
!3206 = !DILocalVariable(name: "size", arg: 3, scope: !3199, file: !1117, line: 138, type: !218)
!3207 = !DILocation(line: 138, column: 12, scope: !3199)
!3208 = !DILocalVariable(name: "flags", arg: 4, scope: !3199, file: !1117, line: 138, type: !93)
!3209 = !DILocation(line: 138, column: 24, scope: !3199)
!3210 = !DILocation(line: 140, column: 17, scope: !3199)
!3211 = !DILocation(line: 140, column: 2, scope: !3199)
!3212 = distinct !DISubprogram(name: "__list_add", scope: !2797, file: !2797, line: 63, type: !3213, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !143)
!3213 = !DISubroutineType(types: !3214)
!3214 = !{null, !119, !119, !119}
!3215 = !DILocalVariable(name: "new", arg: 1, scope: !3212, file: !2797, line: 63, type: !119)
!3216 = !DILocation(line: 63, column: 49, scope: !3212)
!3217 = !DILocalVariable(name: "prev", arg: 2, scope: !3212, file: !2797, line: 64, type: !119)
!3218 = !DILocation(line: 64, column: 28, scope: !3212)
!3219 = !DILocalVariable(name: "next", arg: 3, scope: !3212, file: !2797, line: 65, type: !119)
!3220 = !DILocation(line: 65, column: 28, scope: !3212)
!3221 = !DILocation(line: 67, column: 24, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !3212, file: !2797, line: 67, column: 6)
!3223 = !DILocation(line: 67, column: 29, scope: !3222)
!3224 = !DILocation(line: 67, column: 35, scope: !3222)
!3225 = !DILocation(line: 67, column: 7, scope: !3222)
!3226 = !DILocation(line: 67, column: 6, scope: !3212)
!3227 = !DILocation(line: 68, column: 3, scope: !3222)
!3228 = !DILocation(line: 70, column: 15, scope: !3212)
!3229 = !DILocation(line: 70, column: 2, scope: !3212)
!3230 = !DILocation(line: 70, column: 8, scope: !3212)
!3231 = !DILocation(line: 70, column: 13, scope: !3212)
!3232 = !DILocation(line: 71, column: 14, scope: !3212)
!3233 = !DILocation(line: 71, column: 2, scope: !3212)
!3234 = !DILocation(line: 71, column: 7, scope: !3212)
!3235 = !DILocation(line: 71, column: 12, scope: !3212)
!3236 = !DILocation(line: 72, column: 14, scope: !3212)
!3237 = !DILocation(line: 72, column: 2, scope: !3212)
!3238 = !DILocation(line: 72, column: 7, scope: !3212)
!3239 = !DILocation(line: 72, column: 12, scope: !3212)
!3240 = !DILocation(line: 73, column: 2, scope: !3212)
!3241 = !DILocation(line: 73, column: 2, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !3212, file: !2797, line: 73, column: 2)
!3243 = !DILocation(line: 73, column: 2, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3242, file: !2797, line: 73, column: 2)
!3245 = !DILocation(line: 73, column: 2, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3242, file: !2797, line: 73, column: 2)
!3247 = !DILocation(line: 74, column: 1, scope: !3212)
!3248 = distinct !DISubprogram(name: "__list_add_valid", scope: !2797, file: !2797, line: 45, type: !3249, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !143)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{!998, !119, !119, !119}
!3251 = !DILocalVariable(name: "new", arg: 1, scope: !3248, file: !2797, line: 45, type: !119)
!3252 = !DILocation(line: 45, column: 55, scope: !3248)
!3253 = !DILocalVariable(name: "prev", arg: 2, scope: !3248, file: !2797, line: 46, type: !119)
!3254 = !DILocation(line: 46, column: 23, scope: !3248)
!3255 = !DILocalVariable(name: "next", arg: 3, scope: !3248, file: !2797, line: 47, type: !119)
!3256 = !DILocation(line: 47, column: 23, scope: !3248)
!3257 = !DILocation(line: 49, column: 2, scope: !3248)
!3258 = distinct !DISubprogram(name: "__list_del_entry", scope: !2797, file: !2797, line: 130, type: !2798, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !143)
!3259 = !DILocalVariable(name: "entry", arg: 1, scope: !3258, file: !2797, line: 130, type: !119)
!3260 = !DILocation(line: 130, column: 55, scope: !3258)
!3261 = !DILocation(line: 132, column: 30, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !3258, file: !2797, line: 132, column: 6)
!3263 = !DILocation(line: 132, column: 7, scope: !3262)
!3264 = !DILocation(line: 132, column: 6, scope: !3258)
!3265 = !DILocation(line: 133, column: 3, scope: !3262)
!3266 = !DILocation(line: 135, column: 13, scope: !3258)
!3267 = !DILocation(line: 135, column: 20, scope: !3258)
!3268 = !DILocation(line: 135, column: 26, scope: !3258)
!3269 = !DILocation(line: 135, column: 33, scope: !3258)
!3270 = !DILocation(line: 135, column: 2, scope: !3258)
!3271 = !DILocation(line: 136, column: 1, scope: !3258)
!3272 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !2797, file: !2797, line: 51, type: !3273, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !143)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{!998, !119}
!3275 = !DILocalVariable(name: "entry", arg: 1, scope: !3272, file: !2797, line: 51, type: !119)
!3276 = !DILocation(line: 51, column: 61, scope: !3272)
!3277 = !DILocation(line: 53, column: 2, scope: !3272)
!3278 = distinct !DISubprogram(name: "__list_del", scope: !2797, file: !2797, line: 110, type: !2935, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !143)
!3279 = !DILocalVariable(name: "prev", arg: 1, scope: !3278, file: !2797, line: 110, type: !119)
!3280 = !DILocation(line: 110, column: 50, scope: !3278)
!3281 = !DILocalVariable(name: "next", arg: 2, scope: !3278, file: !2797, line: 110, type: !119)
!3282 = !DILocation(line: 110, column: 75, scope: !3278)
!3283 = !DILocation(line: 112, column: 15, scope: !3278)
!3284 = !DILocation(line: 112, column: 2, scope: !3278)
!3285 = !DILocation(line: 112, column: 8, scope: !3278)
!3286 = !DILocation(line: 112, column: 13, scope: !3278)
!3287 = !DILocation(line: 113, column: 2, scope: !3278)
!3288 = !DILocation(line: 113, column: 2, scope: !3289)
!3289 = distinct !DILexicalBlock(scope: !3278, file: !2797, line: 113, column: 2)
!3290 = !DILocation(line: 113, column: 2, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3289, file: !2797, line: 113, column: 2)
!3292 = !DILocation(line: 113, column: 2, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3289, file: !2797, line: 113, column: 2)
!3294 = !DILocation(line: 114, column: 1, scope: !3278)
