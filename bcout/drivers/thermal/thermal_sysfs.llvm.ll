; ModuleID = '../bcout/drivers/thermal/thermal_sysfs.llvm.bc'
source_filename = "drivers/thermal/thermal_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
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
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
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
%struct.attribute = type { i8*, i16 }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.kmem_cache = type opaque
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
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
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.thermal_zone_device = type { i32, [20 x i8], %struct.device, %struct.attribute_group, %struct.thermal_attr*, %struct.thermal_attr*, %struct.thermal_attr*, i32, i8*, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.thermal_zone_device_ops*, %struct.thermal_zone_params*, %struct.thermal_governor*, i8*, %struct.list_head, %struct.ida, %struct.mutex, %struct.list_head, %struct.delayed_work, i32 }
%struct.thermal_attr = type { %struct.device_attribute, [20 x i8] }
%struct.thermal_zone_device_ops = type { i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)*, i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)*, i32 (%struct.thermal_zone_device*, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32)*, i32 (%struct.thermal_zone_device*, i32)*, i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32)*, i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32)*, i32 (%struct.thermal_zone_device*, i32*)*, {}*, i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32)* }
%struct.thermal_cooling_device = type { i32, [20 x i8], %struct.device, %struct.device_node*, i8*, i8*, %struct.thermal_cooling_device_ops*, i8, %struct.mutex, %struct.list_head, %struct.list_head }
%struct.thermal_cooling_device_ops = type { i32 (%struct.thermal_cooling_device*, i64*)*, i32 (%struct.thermal_cooling_device*, i64*)*, i32 (%struct.thermal_cooling_device*, i64)*, i32 (%struct.thermal_cooling_device*, i32*)*, i32 (%struct.thermal_cooling_device*, i64, i32*)*, i32 (%struct.thermal_cooling_device*, i32, i64*)* }
%struct.thermal_zone_params = type { [20 x i8], i8, i32, %struct.thermal_bind_params*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thermal_bind_params = type { %struct.thermal_cooling_device*, i32, i32, i64*, i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)* }
%struct.thermal_governor = type { [20 x i8], i32 (%struct.thermal_zone_device*)*, void (%struct.thermal_zone_device*)*, {}*, %struct.list_head }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.workqueue_struct = type opaque
%struct.thermal_instance = type { i32, [20 x i8], %struct.thermal_zone_device*, %struct.thermal_cooling_device*, i32, i8, i64, i64, i64, [20 x i8], %struct.device_attribute, [20 x i8], %struct.device_attribute, %struct.list_head, %struct.list_head, i32 }

@thermal_zone_attribute_groups = internal global [3 x %struct.attribute_group*] [%struct.attribute_group* @thermal_zone_attribute_group, %struct.attribute_group* @thermal_zone_mode_attribute_group, %struct.attribute_group* @thermal_zone_passive_attribute_group], align 16, !dbg !0
@cooling_device_attr_groups = internal global [3 x %struct.attribute_group*] [%struct.attribute_group* @cooling_device_attr_group, %struct.attribute_group* null, %struct.attribute_group* null], align 16, !dbg !2299
@.str = private unnamed_addr constant [4 x i8] c"-1\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@thermal_zone_attribute_group = internal global %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([13 x %struct.attribute*], [13 x %struct.attribute*]* @thermal_zone_dev_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !2255
@thermal_zone_mode_attribute_group = internal global %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([2 x %struct.attribute*], [2 x %struct.attribute*]* @thermal_zone_mode_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !2286
@thermal_zone_passive_attribute_group = internal global %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* @thermal_zone_passive_is_visible, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([2 x %struct.attribute*], [2 x %struct.attribute*]* @thermal_zone_passive_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !2293
@thermal_zone_dev_attrs = internal global [13 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_type, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_temp, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_policy, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_available_policies, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_sustainable_power, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_k_po, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_k_pu, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_k_i, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_k_d, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_integral_cutoff, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_slope, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_offset, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !2257
@dev_attr_type = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @type_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2262
@dev_attr_temp = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @temp_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2264
@dev_attr_policy = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @policy_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @policy_store }, align 8, !dbg !2266
@dev_attr_available_policies = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @available_policies_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2268
@dev_attr_sustainable_power = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @sustainable_power_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @sustainable_power_store }, align 8, !dbg !2270
@dev_attr_k_po = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @k_po_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @k_po_store }, align 8, !dbg !2272
@dev_attr_k_pu = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @k_pu_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @k_pu_store }, align 8, !dbg !2274
@dev_attr_k_i = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @k_i_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @k_i_store }, align 8, !dbg !2276
@dev_attr_k_d = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @k_d_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @k_d_store }, align 8, !dbg !2278
@dev_attr_integral_cutoff = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @integral_cutoff_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @integral_cutoff_store }, align 8, !dbg !2280
@dev_attr_slope = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @slope_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @slope_store }, align 8, !dbg !2282
@dev_attr_offset = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @offset_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @offset_store }, align 8, !dbg !2284
@.str.3 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"policy\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"available_policies\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"sustainable_power\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"k_po\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"k_pu\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"k_i\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"k_d\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"integral_cutoff\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"slope\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@thermal_zone_mode_attrs = internal global [2 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_mode, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !2288
@dev_attr_mode = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @mode_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @mode_store }, align 8, !dbg !2291
@.str.18 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@thermal_zone_passive_attrs = internal global [2 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_passive, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !2295
@dev_attr_passive = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @passive_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @passive_store }, align 8, !dbg !2297
@.str.21 = private unnamed_addr constant [8 x i8] c"passive\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"Processor\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"trip_point_%d_type\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"trip_point_%d_temp\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"trip_point_%d_hyst\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"critical\0A\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"hot\0A\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"passive\0A\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"active\0A\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"unknown\0A\00", align 1
@cooling_device_attr_group = internal constant %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([4 x %struct.attribute*], [4 x %struct.attribute*]* @cooling_device_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !2302
@cooling_device_attrs = internal global [4 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_cdev_type, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_max_state, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_cur_state, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !2304
@dev_attr_cdev_type = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @cdev_type_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2307
@dev_attr_max_state = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @max_state_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2309
@dev_attr_cur_state = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @cur_state_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @cur_state_store }, align 8, !dbg !2311
@.str.31 = private unnamed_addr constant [10 x i8] c"max_state\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"cur_state\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @thermal_zone_create_device_groups(%struct.thermal_zone_device* %tz, i32 %mask) #0 !dbg !2318 {
entry:
  %retval = alloca i32, align 4
  %tz.addr = alloca %struct.thermal_zone_device*, align 8
  %mask.addr = alloca i32, align 4
  %groups = alloca %struct.attribute_group**, align 8
  %i = alloca i32, align 4
  %size = alloca i32, align 4
  %result = alloca i32, align 4
  store %struct.thermal_zone_device* %tz, %struct.thermal_zone_device** %tz.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tz.addr, metadata !2319, metadata !DIExpression()), !dbg !2320
  store i32 %mask, i32* %mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mask.addr, metadata !2321, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.declare(metadata %struct.attribute_group*** %groups, metadata !2323, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2325, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.declare(metadata i32* %size, metadata !2327, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.declare(metadata i32* %result, metadata !2329, metadata !DIExpression()), !dbg !2330
  store i32 5, i32* %size, align 4, !dbg !2331
  %0 = load i32, i32* %size, align 4, !dbg !2332
  %conv = sext i32 %0 to i64, !dbg !2332
  %call = call i8* @kcalloc(i64 %conv, i64 8, i32 3264) #6, !dbg !2333
  %1 = bitcast i8* %call to %struct.attribute_group**, !dbg !2333
  store %struct.attribute_group** %1, %struct.attribute_group*** %groups, align 8, !dbg !2334
  %2 = load %struct.attribute_group**, %struct.attribute_group*** %groups, align 8, !dbg !2335
  %tobool = icmp ne %struct.attribute_group** %2, null, !dbg !2335
  br i1 %tobool, label %if.end, label %if.then, !dbg !2337

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !2338
  br label %return, !dbg !2338

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !2339
  br label %for.cond, !dbg !2341

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4, !dbg !2342
  %4 = load i32, i32* %size, align 4, !dbg !2344
  %sub = sub i32 %4, 2, !dbg !2345
  %cmp = icmp slt i32 %3, %sub, !dbg !2346
  br i1 %cmp, label %for.body, label %for.end, !dbg !2347

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !2348
  %idxprom = sext i32 %5 to i64, !dbg !2349
  %arrayidx = getelementptr [3 x %struct.attribute_group*], [3 x %struct.attribute_group*]* @thermal_zone_attribute_groups, i64 0, i64 %idxprom, !dbg !2349
  %6 = load %struct.attribute_group*, %struct.attribute_group** %arrayidx, align 8, !dbg !2349
  %7 = load %struct.attribute_group**, %struct.attribute_group*** %groups, align 8, !dbg !2350
  %8 = load i32, i32* %i, align 4, !dbg !2351
  %idxprom2 = sext i32 %8 to i64, !dbg !2350
  %arrayidx3 = getelementptr %struct.attribute_group*, %struct.attribute_group** %7, i64 %idxprom2, !dbg !2350
  store %struct.attribute_group* %6, %struct.attribute_group** %arrayidx3, align 8, !dbg !2352
  br label %for.inc, !dbg !2350

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !2353
  %inc = add i32 %9, 1, !dbg !2353
  store i32 %inc, i32* %i, align 4, !dbg !2353
  br label %for.cond, !dbg !2354, !llvm.loop !2355

for.end:                                          ; preds = %for.cond
  %10 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2357
  %trips = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %10, i32 0, i32 9, !dbg !2359
  %11 = load i32, i32* %trips, align 8, !dbg !2359
  %tobool4 = icmp ne i32 %11, 0, !dbg !2357
  br i1 %tobool4, label %if.then5, label %if.end13, !dbg !2360

if.then5:                                         ; preds = %for.end
  %12 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2361
  %13 = load i32, i32* %mask.addr, align 4, !dbg !2363
  %call6 = call i32 @create_trip_attrs(%struct.thermal_zone_device* %12, i32 %13) #6, !dbg !2364
  store i32 %call6, i32* %result, align 4, !dbg !2365
  %14 = load i32, i32* %result, align 4, !dbg !2366
  %tobool7 = icmp ne i32 %14, 0, !dbg !2366
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !2368

if.then8:                                         ; preds = %if.then5
  %15 = load %struct.attribute_group**, %struct.attribute_group*** %groups, align 8, !dbg !2369
  %16 = bitcast %struct.attribute_group** %15 to i8*, !dbg !2369
  call void @kfree(i8* %16) #6, !dbg !2371
  %17 = load i32, i32* %result, align 4, !dbg !2372
  store i32 %17, i32* %retval, align 4, !dbg !2373
  br label %return, !dbg !2373

if.end9:                                          ; preds = %if.then5
  %18 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2374
  %trips_attribute_group = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %18, i32 0, i32 3, !dbg !2375
  %19 = load %struct.attribute_group**, %struct.attribute_group*** %groups, align 8, !dbg !2376
  %20 = load i32, i32* %size, align 4, !dbg !2377
  %sub10 = sub i32 %20, 2, !dbg !2378
  %idxprom11 = sext i32 %sub10 to i64, !dbg !2376
  %arrayidx12 = getelementptr %struct.attribute_group*, %struct.attribute_group** %19, i64 %idxprom11, !dbg !2376
  store %struct.attribute_group* %trips_attribute_group, %struct.attribute_group** %arrayidx12, align 8, !dbg !2379
  br label %if.end13, !dbg !2380

if.end13:                                         ; preds = %if.end9, %for.end
  %21 = load %struct.attribute_group**, %struct.attribute_group*** %groups, align 8, !dbg !2381
  %22 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2382
  %device = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %22, i32 0, i32 2, !dbg !2383
  %groups14 = getelementptr inbounds %struct.device, %struct.device* %device, i32 0, i32 30, !dbg !2384
  store %struct.attribute_group** %21, %struct.attribute_group*** %groups14, align 8, !dbg !2385
  store i32 0, i32* %retval, align 4, !dbg !2386
  br label %return, !dbg !2386

return:                                           ; preds = %if.end13, %if.then8, %if.then
  %23 = load i32, i32* %retval, align 4, !dbg !2387
  ret i32 %23, !dbg !2387
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kcalloc(i64 %n, i64 %size, i32 %flags) #0 !dbg !2388 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2391, metadata !DIExpression()), !dbg !2392
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2393, metadata !DIExpression()), !dbg !2394
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2395, metadata !DIExpression()), !dbg !2396
  %0 = load i64, i64* %n.addr, align 8, !dbg !2397
  %1 = load i64, i64* %size.addr, align 8, !dbg !2398
  %2 = load i32, i32* %flags.addr, align 4, !dbg !2399
  %or = or i32 %2, 256, !dbg !2400
  %call = call i8* @kmalloc_array(i64 %0, i64 %1, i32 %or) #6, !dbg !2401
  ret i8* %call, !dbg !2402
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @create_trip_attrs(%struct.thermal_zone_device* %tz, i32 %mask) #0 !dbg !2403 {
entry:
  %retval = alloca i32, align 4
  %tz.addr = alloca %struct.thermal_zone_device*, align 8
  %mask.addr = alloca i32, align 4
  %attrs = alloca %struct.attribute**, align 8
  %indx = alloca i32, align 4
  store %struct.thermal_zone_device* %tz, %struct.thermal_zone_device** %tz.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tz.addr, metadata !2404, metadata !DIExpression()), !dbg !2405
  store i32 %mask, i32* %mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mask.addr, metadata !2406, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.declare(metadata %struct.attribute*** %attrs, metadata !2408, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.declare(metadata i32* %indx, metadata !2410, metadata !DIExpression()), !dbg !2411
  %0 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2412
  %trips = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %0, i32 0, i32 9, !dbg !2414
  %1 = load i32, i32* %trips, align 8, !dbg !2414
  %cmp = icmp sle i32 %1, 0, !dbg !2415
  br i1 %cmp, label %if.then, label %if.end, !dbg !2416

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !2417
  br label %return, !dbg !2417

if.end:                                           ; preds = %entry
  %2 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2418
  %trips1 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %2, i32 0, i32 9, !dbg !2419
  %3 = load i32, i32* %trips1, align 8, !dbg !2419
  %conv = sext i32 %3 to i64, !dbg !2418
  %call = call i8* @kcalloc(i64 %conv, i64 56, i32 3264) #6, !dbg !2420
  %4 = bitcast i8* %call to %struct.thermal_attr*, !dbg !2420
  %5 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2421
  %trip_type_attrs = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %5, i32 0, i32 5, !dbg !2422
  store %struct.thermal_attr* %4, %struct.thermal_attr** %trip_type_attrs, align 8, !dbg !2423
  %6 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2424
  %trip_type_attrs2 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %6, i32 0, i32 5, !dbg !2426
  %7 = load %struct.thermal_attr*, %struct.thermal_attr** %trip_type_attrs2, align 8, !dbg !2426
  %tobool = icmp ne %struct.thermal_attr* %7, null, !dbg !2424
  br i1 %tobool, label %if.end4, label %if.then3, !dbg !2427

if.then3:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !2428
  br label %return, !dbg !2428

if.end4:                                          ; preds = %if.end
  %8 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2429
  %trips5 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %8, i32 0, i32 9, !dbg !2430
  %9 = load i32, i32* %trips5, align 8, !dbg !2430
  %conv6 = sext i32 %9 to i64, !dbg !2429
  %call7 = call i8* @kcalloc(i64 %conv6, i64 56, i32 3264) #6, !dbg !2431
  %10 = bitcast i8* %call7 to %struct.thermal_attr*, !dbg !2431
  %11 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2432
  %trip_temp_attrs = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %11, i32 0, i32 4, !dbg !2433
  store %struct.thermal_attr* %10, %struct.thermal_attr** %trip_temp_attrs, align 8, !dbg !2434
  %12 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2435
  %trip_temp_attrs8 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %12, i32 0, i32 4, !dbg !2437
  %13 = load %struct.thermal_attr*, %struct.thermal_attr** %trip_temp_attrs8, align 8, !dbg !2437
  %tobool9 = icmp ne %struct.thermal_attr* %13, null, !dbg !2435
  br i1 %tobool9, label %if.end12, label %if.then10, !dbg !2438

if.then10:                                        ; preds = %if.end4
  %14 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2439
  %trip_type_attrs11 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %14, i32 0, i32 5, !dbg !2441
  %15 = load %struct.thermal_attr*, %struct.thermal_attr** %trip_type_attrs11, align 8, !dbg !2441
  %16 = bitcast %struct.thermal_attr* %15 to i8*, !dbg !2439
  call void @kfree(i8* %16) #6, !dbg !2442
  store i32 -12, i32* %retval, align 4, !dbg !2443
  br label %return, !dbg !2443

if.end12:                                         ; preds = %if.end4
  %17 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2444
  %ops = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %17, i32 0, i32 21, !dbg !2446
  %18 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %ops, align 8, !dbg !2446
  %get_trip_hyst = getelementptr inbounds %struct.thermal_zone_device_ops, %struct.thermal_zone_device_ops* %18, i32 0, i32 8, !dbg !2447
  %19 = load i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)** %get_trip_hyst, align 8, !dbg !2447
  %tobool13 = icmp ne i32 (%struct.thermal_zone_device*, i32, i32*)* %19, null, !dbg !2444
  br i1 %tobool13, label %if.then14, label %if.end24, !dbg !2448

if.then14:                                        ; preds = %if.end12
  %20 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2449
  %trips15 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %20, i32 0, i32 9, !dbg !2451
  %21 = load i32, i32* %trips15, align 8, !dbg !2451
  %conv16 = sext i32 %21 to i64, !dbg !2449
  %call17 = call i8* @kcalloc(i64 %conv16, i64 56, i32 3264) #6, !dbg !2452
  %22 = bitcast i8* %call17 to %struct.thermal_attr*, !dbg !2452
  %23 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2453
  %trip_hyst_attrs = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %23, i32 0, i32 6, !dbg !2454
  store %struct.thermal_attr* %22, %struct.thermal_attr** %trip_hyst_attrs, align 8, !dbg !2455
  %24 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2456
  %trip_hyst_attrs18 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %24, i32 0, i32 6, !dbg !2458
  %25 = load %struct.thermal_attr*, %struct.thermal_attr** %trip_hyst_attrs18, align 8, !dbg !2458
  %tobool19 = icmp ne %struct.thermal_attr* %25, null, !dbg !2456
  br i1 %tobool19, label %if.end23, label %if.then20, !dbg !2459

if.then20:                                        ; preds = %if.then14
  %26 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2460
  %trip_type_attrs21 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %26, i32 0, i32 5, !dbg !2462
  %27 = load %struct.thermal_attr*, %struct.thermal_attr** %trip_type_attrs21, align 8, !dbg !2462
  %28 = bitcast %struct.thermal_attr* %27 to i8*, !dbg !2460
  call void @kfree(i8* %28) #6, !dbg !2463
  %29 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2464
  %trip_temp_attrs22 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %29, i32 0, i32 4, !dbg !2465
  %30 = load %struct.thermal_attr*, %struct.thermal_attr** %trip_temp_attrs22, align 8, !dbg !2465
  %31 = bitcast %struct.thermal_attr* %30 to i8*, !dbg !2464
  call void @kfree(i8* %31) #6, !dbg !2466
  store i32 -12, i32* %retval, align 4, !dbg !2467
  br label %return, !dbg !2467

if.end23:                                         ; preds = %if.then14
  br label %if.end24, !dbg !2468

if.end24:                                         ; preds = %if.end23, %if.end12
  %32 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2469
  %trips25 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %32, i32 0, i32 9, !dbg !2470
  %33 = load i32, i32* %trips25, align 8, !dbg !2470
  %mul = mul i32 %33, 3, !dbg !2471
  %add = add i32 %mul, 1, !dbg !2472
  %conv26 = sext i32 %add to i64, !dbg !2469
  %call27 = call i8* @kcalloc(i64 %conv26, i64 8, i32 3264) #6, !dbg !2473
  %34 = bitcast i8* %call27 to %struct.attribute**, !dbg !2473
  store %struct.attribute** %34, %struct.attribute*** %attrs, align 8, !dbg !2474
  %35 = load %struct.attribute**, %struct.attribute*** %attrs, align 8, !dbg !2475
  %tobool28 = icmp ne %struct.attribute** %35, null, !dbg !2475
  br i1 %tobool28, label %if.end38, label %if.then29, !dbg !2477

if.then29:                                        ; preds = %if.end24
  %36 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2478
  %trip_type_attrs30 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %36, i32 0, i32 5, !dbg !2480
  %37 = load %struct.thermal_attr*, %struct.thermal_attr** %trip_type_attrs30, align 8, !dbg !2480
  %38 = bitcast %struct.thermal_attr* %37 to i8*, !dbg !2478
  call void @kfree(i8* %38) #6, !dbg !2481
  %39 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2482
  %trip_temp_attrs31 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %39, i32 0, i32 4, !dbg !2483
  %40 = load %struct.thermal_attr*, %struct.thermal_attr** %trip_temp_attrs31, align 8, !dbg !2483
  %41 = bitcast %struct.thermal_attr* %40 to i8*, !dbg !2482
  call void @kfree(i8* %41) #6, !dbg !2484
  %42 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2485
  %ops32 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %42, i32 0, i32 21, !dbg !2487
  %43 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %ops32, align 8, !dbg !2487
  %get_trip_hyst33 = getelementptr inbounds %struct.thermal_zone_device_ops, %struct.thermal_zone_device_ops* %43, i32 0, i32 8, !dbg !2488
  %44 = load i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)** %get_trip_hyst33, align 8, !dbg !2488
  %tobool34 = icmp ne i32 (%struct.thermal_zone_device*, i32, i32*)* %44, null, !dbg !2485
  br i1 %tobool34, label %if.then35, label %if.end37, !dbg !2489

if.then35:                                        ; preds = %if.then29
  %45 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2490
  %trip_hyst_attrs36 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %45, i32 0, i32 6, !dbg !2491
  %46 = load %struct.thermal_attr*, %struct.thermal_attr** %trip_hyst_attrs36, align 8, !dbg !2491
  %47 = bitcast %struct.thermal_attr* %46 to i8*, !dbg !2490
  call void @kfree(i8* %47) #6, !dbg !2492
  br label %if.end37, !dbg !2492

if.end37:                                         ; preds = %if.then35, %if.then29
  store i32 -12, i32* %retval, align 4, !dbg !2493
  br label %return, !dbg !2493

if.end38:                                         ; preds = %if.end24
  store i32 0, i32* %indx, align 4, !dbg !2494
  br label %for.cond, !dbg !2496

for.cond:                                         ; preds = %for.inc, %if.end38
  %48 = load i32, i32* %indx, align 4, !dbg !2497
  %49 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2499
  %trips39 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %49, i32 0, i32 9, !dbg !2500
  %50 = load i32, i32* %trips39, align 8, !dbg !2500
  %cmp40 = icmp slt i32 %48, %50, !dbg !2501
  br i1 %cmp40, label %for.body, label %for.end, !dbg !2502

for.body:                                         ; preds = %for.cond
  %51 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2503
  %trip_type_attrs42 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %51, i32 0, i32 5, !dbg !2505
  %52 = load %struct.thermal_attr*, %struct.thermal_attr** %trip_type_attrs42, align 8, !dbg !2505
  %53 = load i32, i32* %indx, align 4, !dbg !2506
  %idxprom = sext i32 %53 to i64, !dbg !2503
  %arrayidx = getelementptr %struct.thermal_attr, %struct.thermal_attr* %52, i64 %idxprom, !dbg !2503
  %name = getelementptr inbounds %struct.thermal_attr, %struct.thermal_attr* %arrayidx, i32 0, i32 1, !dbg !2507
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %name, i64 0, i64 0, !dbg !2503
  %54 = load i32, i32* %indx, align 4, !dbg !2508
  %call43 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0), i32 %54) #6, !dbg !2509
  br label %do.body, !dbg !2510

do.body:                                          ; preds = %for.body
  br label %do.end, !dbg !2511

do.end:                                           ; preds = %do.body
  %55 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2513
  %trip_type_attrs44 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %55, i32 0, i32 5, !dbg !2514
  %56 = load %struct.thermal_attr*, %struct.thermal_attr** %trip_type_attrs44, align 8, !dbg !2514
  %57 = load i32, i32* %indx, align 4, !dbg !2515
  %idxprom45 = sext i32 %57 to i64, !dbg !2513
  %arrayidx46 = getelementptr %struct.thermal_attr, %struct.thermal_attr* %56, i64 %idxprom45, !dbg !2513
  %name47 = getelementptr inbounds %struct.thermal_attr, %struct.thermal_attr* %arrayidx46, i32 0, i32 1, !dbg !2516
  %arraydecay48 = getelementptr inbounds [20 x i8], [20 x i8]* %name47, i64 0, i64 0, !dbg !2513
  %58 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2517
  %trip_type_attrs49 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %58, i32 0, i32 5, !dbg !2518
  %59 = load %struct.thermal_attr*, %struct.thermal_attr** %trip_type_attrs49, align 8, !dbg !2518
  %60 = load i32, i32* %indx, align 4, !dbg !2519
  %idxprom50 = sext i32 %60 to i64, !dbg !2517
  %arrayidx51 = getelementptr %struct.thermal_attr, %struct.thermal_attr* %59, i64 %idxprom50, !dbg !2517
  %attr = getelementptr inbounds %struct.thermal_attr, %struct.thermal_attr* %arrayidx51, i32 0, i32 0, !dbg !2520
  %attr52 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %attr, i32 0, i32 0, !dbg !2521
  %name53 = getelementptr inbounds %struct.attribute, %struct.attribute* %attr52, i32 0, i32 0, !dbg !2522
  store i8* %arraydecay48, i8** %name53, align 8, !dbg !2523
  %61 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2524
  %trip_type_attrs54 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %61, i32 0, i32 5, !dbg !2525
  %62 = load %struct.thermal_attr*, %struct.thermal_attr** %trip_type_attrs54, align 8, !dbg !2525
  %63 = load i32, i32* %indx, align 4, !dbg !2526
  %idxprom55 = sext i32 %63 to i64, !dbg !2524
  %arrayidx56 = getelementptr %struct.thermal_attr, %struct.thermal_attr* %62, i64 %idxprom55, !dbg !2524
  %attr57 = getelementptr inbounds %struct.thermal_attr, %struct.thermal_attr* %arrayidx56, i32 0, i32 0, !dbg !2527
  %attr58 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %attr57, i32 0, i32 0, !dbg !2528
  %mode = getelementptr inbounds %struct.attribute, %struct.attribute* %attr58, i32 0, i32 1, !dbg !2529
  store i16 292, i16* %mode, align 8, !dbg !2530
  %64 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2531
  %trip_type_attrs59 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %64, i32 0, i32 5, !dbg !2532
  %65 = load %struct.thermal_attr*, %struct.thermal_attr** %trip_type_attrs59, align 8, !dbg !2532
  %66 = load i32, i32* %indx, align 4, !dbg !2533
  %idxprom60 = sext i32 %66 to i64, !dbg !2531
  %arrayidx61 = getelementptr %struct.thermal_attr, %struct.thermal_attr* %65, i64 %idxprom60, !dbg !2531
  %attr62 = getelementptr inbounds %struct.thermal_attr, %struct.thermal_attr* %arrayidx61, i32 0, i32 0, !dbg !2534
  %show = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %attr62, i32 0, i32 1, !dbg !2535
  store i64 (%struct.device*, %struct.device_attribute*, i8*)* @trip_point_type_show, i64 (%struct.device*, %struct.device_attribute*, i8*)** %show, align 8, !dbg !2536
  %67 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2537
  %trip_type_attrs63 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %67, i32 0, i32 5, !dbg !2538
  %68 = load %struct.thermal_attr*, %struct.thermal_attr** %trip_type_attrs63, align 8, !dbg !2538
  %69 = load i32, i32* %indx, align 4, !dbg !2539
  %idxprom64 = sext i32 %69 to i64, !dbg !2537
  %arrayidx65 = getelementptr %struct.thermal_attr, %struct.thermal_attr* %68, i64 %idxprom64, !dbg !2537
  %attr66 = getelementptr inbounds %struct.thermal_attr, %struct.thermal_attr* %arrayidx65, i32 0, i32 0, !dbg !2540
  %attr67 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %attr66, i32 0, i32 0, !dbg !2541
  %70 = load %struct.attribute**, %struct.attribute*** %attrs, align 8, !dbg !2542
  %71 = load i32, i32* %indx, align 4, !dbg !2543
  %idxprom68 = sext i32 %71 to i64, !dbg !2542
  %arrayidx69 = getelementptr %struct.attribute*, %struct.attribute** %70, i64 %idxprom68, !dbg !2542
  store %struct.attribute* %attr67, %struct.attribute** %arrayidx69, align 8, !dbg !2544
  %72 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2545
  %trip_temp_attrs70 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %72, i32 0, i32 4, !dbg !2546
  %73 = load %struct.thermal_attr*, %struct.thermal_attr** %trip_temp_attrs70, align 8, !dbg !2546
  %74 = load i32, i32* %indx, align 4, !dbg !2547
  %idxprom71 = sext i32 %74 to i64, !dbg !2545
  %arrayidx72 = getelementptr %struct.thermal_attr, %struct.thermal_attr* %73, i64 %idxprom71, !dbg !2545
  %name73 = getelementptr inbounds %struct.thermal_attr, %struct.thermal_attr* %arrayidx72, i32 0, i32 1, !dbg !2548
  %arraydecay74 = getelementptr inbounds [20 x i8], [20 x i8]* %name73, i64 0, i64 0, !dbg !2545
  %75 = load i32, i32* %indx, align 4, !dbg !2549
  %call75 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay74, i64 20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0), i32 %75) #6, !dbg !2550
  br label %do.body76, !dbg !2551

do.body76:                                        ; preds = %do.end
  br label %do.end77, !dbg !2552

do.end77:                                         ; preds = %do.body76
  %76 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2554
  %trip_temp_attrs78 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %76, i32 0, i32 4, !dbg !2555
  %77 = load %struct.thermal_attr*, %struct.thermal_attr** %trip_temp_attrs78, align 8, !dbg !2555
  %78 = load i32, i32* %indx, align 4, !dbg !2556
  %idxprom79 = sext i32 %78 to i64, !dbg !2554
  %arrayidx80 = getelementptr %struct.thermal_attr, %struct.thermal_attr* %77, i64 %idxprom79, !dbg !2554
  %name81 = getelementptr inbounds %struct.thermal_attr, %struct.thermal_attr* %arrayidx80, i32 0, i32 1, !dbg !2557
  %arraydecay82 = getelementptr inbounds [20 x i8], [20 x i8]* %name81, i64 0, i64 0, !dbg !2554
  %79 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2558
  %trip_temp_attrs83 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %79, i32 0, i32 4, !dbg !2559
  %80 = load %struct.thermal_attr*, %struct.thermal_attr** %trip_temp_attrs83, align 8, !dbg !2559
  %81 = load i32, i32* %indx, align 4, !dbg !2560
  %idxprom84 = sext i32 %81 to i64, !dbg !2558
  %arrayidx85 = getelementptr %struct.thermal_attr, %struct.thermal_attr* %80, i64 %idxprom84, !dbg !2558
  %attr86 = getelementptr inbounds %struct.thermal_attr, %struct.thermal_attr* %arrayidx85, i32 0, i32 0, !dbg !2561
  %attr87 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %attr86, i32 0, i32 0, !dbg !2562
  %name88 = getelementptr inbounds %struct.attribute, %struct.attribute* %attr87, i32 0, i32 0, !dbg !2563
  store i8* %arraydecay82, i8** %name88, align 8, !dbg !2564
  %82 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2565
  %trip_temp_attrs89 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %82, i32 0, i32 4, !dbg !2566
  %83 = load %struct.thermal_attr*, %struct.thermal_attr** %trip_temp_attrs89, align 8, !dbg !2566
  %84 = load i32, i32* %indx, align 4, !dbg !2567
  %idxprom90 = sext i32 %84 to i64, !dbg !2565
  %arrayidx91 = getelementptr %struct.thermal_attr, %struct.thermal_attr* %83, i64 %idxprom90, !dbg !2565
  %attr92 = getelementptr inbounds %struct.thermal_attr, %struct.thermal_attr* %arrayidx91, i32 0, i32 0, !dbg !2568
  %attr93 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %attr92, i32 0, i32 0, !dbg !2569
  %mode94 = getelementptr inbounds %struct.attribute, %struct.attribute* %attr93, i32 0, i32 1, !dbg !2570
  store i16 292, i16* %mode94, align 8, !dbg !2571
  %85 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2572
  %trip_temp_attrs95 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %85, i32 0, i32 4, !dbg !2573
  %86 = load %struct.thermal_attr*, %struct.thermal_attr** %trip_temp_attrs95, align 8, !dbg !2573
  %87 = load i32, i32* %indx, align 4, !dbg !2574
  %idxprom96 = sext i32 %87 to i64, !dbg !2572
  %arrayidx97 = getelementptr %struct.thermal_attr, %struct.thermal_attr* %86, i64 %idxprom96, !dbg !2572
  %attr98 = getelementptr inbounds %struct.thermal_attr, %struct.thermal_attr* %arrayidx97, i32 0, i32 0, !dbg !2575
  %show99 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %attr98, i32 0, i32 1, !dbg !2576
  store i64 (%struct.device*, %struct.device_attribute*, i8*)* @trip_point_temp_show, i64 (%struct.device*, %struct.device_attribute*, i8*)** %show99, align 8, !dbg !2577
  %88 = load i32, i32* %mask.addr, align 4, !dbg !2578
  %89 = load i32, i32* %indx, align 4, !dbg !2580
  %shl = shl i32 1, %89, !dbg !2581
  %and = and i32 %88, %shl, !dbg !2582
  %tobool100 = icmp ne i32 %and, 0, !dbg !2582
  br i1 %tobool100, label %if.then101, label %if.end114, !dbg !2583

if.then101:                                       ; preds = %do.end77
  %90 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2584
  %trip_temp_attrs102 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %90, i32 0, i32 4, !dbg !2586
  %91 = load %struct.thermal_attr*, %struct.thermal_attr** %trip_temp_attrs102, align 8, !dbg !2586
  %92 = load i32, i32* %indx, align 4, !dbg !2587
  %idxprom103 = sext i32 %92 to i64, !dbg !2584
  %arrayidx104 = getelementptr %struct.thermal_attr, %struct.thermal_attr* %91, i64 %idxprom103, !dbg !2584
  %attr105 = getelementptr inbounds %struct.thermal_attr, %struct.thermal_attr* %arrayidx104, i32 0, i32 0, !dbg !2588
  %attr106 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %attr105, i32 0, i32 0, !dbg !2589
  %mode107 = getelementptr inbounds %struct.attribute, %struct.attribute* %attr106, i32 0, i32 1, !dbg !2590
  %93 = load i16, i16* %mode107, align 8, !dbg !2591
  %conv108 = zext i16 %93 to i32, !dbg !2591
  %or = or i32 %conv108, 128, !dbg !2591
  %conv109 = trunc i32 %or to i16, !dbg !2591
  store i16 %conv109, i16* %mode107, align 8, !dbg !2591
  %94 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2592
  %trip_temp_attrs110 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %94, i32 0, i32 4, !dbg !2593
  %95 = load %struct.thermal_attr*, %struct.thermal_attr** %trip_temp_attrs110, align 8, !dbg !2593
  %96 = load i32, i32* %indx, align 4, !dbg !2594
  %idxprom111 = sext i32 %96 to i64, !dbg !2592
  %arrayidx112 = getelementptr %struct.thermal_attr, %struct.thermal_attr* %95, i64 %idxprom111, !dbg !2592
  %attr113 = getelementptr inbounds %struct.thermal_attr, %struct.thermal_attr* %arrayidx112, i32 0, i32 0, !dbg !2595
  %store = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %attr113, i32 0, i32 2, !dbg !2596
  store i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @trip_point_temp_store, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)** %store, align 8, !dbg !2597
  br label %if.end114, !dbg !2598

if.end114:                                        ; preds = %if.then101, %do.end77
  %97 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2599
  %trip_temp_attrs115 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %97, i32 0, i32 4, !dbg !2600
  %98 = load %struct.thermal_attr*, %struct.thermal_attr** %trip_temp_attrs115, align 8, !dbg !2600
  %99 = load i32, i32* %indx, align 4, !dbg !2601
  %idxprom116 = sext i32 %99 to i64, !dbg !2599
  %arrayidx117 = getelementptr %struct.thermal_attr, %struct.thermal_attr* %98, i64 %idxprom116, !dbg !2599
  %attr118 = getelementptr inbounds %struct.thermal_attr, %struct.thermal_attr* %arrayidx117, i32 0, i32 0, !dbg !2602
  %attr119 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %attr118, i32 0, i32 0, !dbg !2603
  %100 = load %struct.attribute**, %struct.attribute*** %attrs, align 8, !dbg !2604
  %101 = load i32, i32* %indx, align 4, !dbg !2605
  %102 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2606
  %trips120 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %102, i32 0, i32 9, !dbg !2607
  %103 = load i32, i32* %trips120, align 8, !dbg !2607
  %add121 = add i32 %101, %103, !dbg !2608
  %idxprom122 = sext i32 %add121 to i64, !dbg !2604
  %arrayidx123 = getelementptr %struct.attribute*, %struct.attribute** %100, i64 %idxprom122, !dbg !2604
  store %struct.attribute* %attr119, %struct.attribute** %arrayidx123, align 8, !dbg !2609
  %104 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2610
  %ops124 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %104, i32 0, i32 21, !dbg !2612
  %105 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %ops124, align 8, !dbg !2612
  %get_trip_hyst125 = getelementptr inbounds %struct.thermal_zone_device_ops, %struct.thermal_zone_device_ops* %105, i32 0, i32 8, !dbg !2613
  %106 = load i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)** %get_trip_hyst125, align 8, !dbg !2613
  %tobool126 = icmp ne i32 (%struct.thermal_zone_device*, i32, i32*)* %106, null, !dbg !2610
  br i1 %tobool126, label %if.end128, label %if.then127, !dbg !2614

if.then127:                                       ; preds = %if.end114
  br label %for.inc, !dbg !2615

if.end128:                                        ; preds = %if.end114
  %107 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2616
  %trip_hyst_attrs129 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %107, i32 0, i32 6, !dbg !2617
  %108 = load %struct.thermal_attr*, %struct.thermal_attr** %trip_hyst_attrs129, align 8, !dbg !2617
  %109 = load i32, i32* %indx, align 4, !dbg !2618
  %idxprom130 = sext i32 %109 to i64, !dbg !2616
  %arrayidx131 = getelementptr %struct.thermal_attr, %struct.thermal_attr* %108, i64 %idxprom130, !dbg !2616
  %name132 = getelementptr inbounds %struct.thermal_attr, %struct.thermal_attr* %arrayidx131, i32 0, i32 1, !dbg !2619
  %arraydecay133 = getelementptr inbounds [20 x i8], [20 x i8]* %name132, i64 0, i64 0, !dbg !2616
  %110 = load i32, i32* %indx, align 4, !dbg !2620
  %call134 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay133, i64 20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0), i32 %110) #6, !dbg !2621
  br label %do.body135, !dbg !2622

do.body135:                                       ; preds = %if.end128
  br label %do.end136, !dbg !2623

do.end136:                                        ; preds = %do.body135
  %111 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2625
  %trip_hyst_attrs137 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %111, i32 0, i32 6, !dbg !2626
  %112 = load %struct.thermal_attr*, %struct.thermal_attr** %trip_hyst_attrs137, align 8, !dbg !2626
  %113 = load i32, i32* %indx, align 4, !dbg !2627
  %idxprom138 = sext i32 %113 to i64, !dbg !2625
  %arrayidx139 = getelementptr %struct.thermal_attr, %struct.thermal_attr* %112, i64 %idxprom138, !dbg !2625
  %name140 = getelementptr inbounds %struct.thermal_attr, %struct.thermal_attr* %arrayidx139, i32 0, i32 1, !dbg !2628
  %arraydecay141 = getelementptr inbounds [20 x i8], [20 x i8]* %name140, i64 0, i64 0, !dbg !2625
  %114 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2629
  %trip_hyst_attrs142 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %114, i32 0, i32 6, !dbg !2630
  %115 = load %struct.thermal_attr*, %struct.thermal_attr** %trip_hyst_attrs142, align 8, !dbg !2630
  %116 = load i32, i32* %indx, align 4, !dbg !2631
  %idxprom143 = sext i32 %116 to i64, !dbg !2629
  %arrayidx144 = getelementptr %struct.thermal_attr, %struct.thermal_attr* %115, i64 %idxprom143, !dbg !2629
  %attr145 = getelementptr inbounds %struct.thermal_attr, %struct.thermal_attr* %arrayidx144, i32 0, i32 0, !dbg !2632
  %attr146 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %attr145, i32 0, i32 0, !dbg !2633
  %name147 = getelementptr inbounds %struct.attribute, %struct.attribute* %attr146, i32 0, i32 0, !dbg !2634
  store i8* %arraydecay141, i8** %name147, align 8, !dbg !2635
  %117 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2636
  %trip_hyst_attrs148 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %117, i32 0, i32 6, !dbg !2637
  %118 = load %struct.thermal_attr*, %struct.thermal_attr** %trip_hyst_attrs148, align 8, !dbg !2637
  %119 = load i32, i32* %indx, align 4, !dbg !2638
  %idxprom149 = sext i32 %119 to i64, !dbg !2636
  %arrayidx150 = getelementptr %struct.thermal_attr, %struct.thermal_attr* %118, i64 %idxprom149, !dbg !2636
  %attr151 = getelementptr inbounds %struct.thermal_attr, %struct.thermal_attr* %arrayidx150, i32 0, i32 0, !dbg !2639
  %attr152 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %attr151, i32 0, i32 0, !dbg !2640
  %mode153 = getelementptr inbounds %struct.attribute, %struct.attribute* %attr152, i32 0, i32 1, !dbg !2641
  store i16 292, i16* %mode153, align 8, !dbg !2642
  %120 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2643
  %trip_hyst_attrs154 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %120, i32 0, i32 6, !dbg !2644
  %121 = load %struct.thermal_attr*, %struct.thermal_attr** %trip_hyst_attrs154, align 8, !dbg !2644
  %122 = load i32, i32* %indx, align 4, !dbg !2645
  %idxprom155 = sext i32 %122 to i64, !dbg !2643
  %arrayidx156 = getelementptr %struct.thermal_attr, %struct.thermal_attr* %121, i64 %idxprom155, !dbg !2643
  %attr157 = getelementptr inbounds %struct.thermal_attr, %struct.thermal_attr* %arrayidx156, i32 0, i32 0, !dbg !2646
  %show158 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %attr157, i32 0, i32 1, !dbg !2647
  store i64 (%struct.device*, %struct.device_attribute*, i8*)* @trip_point_hyst_show, i64 (%struct.device*, %struct.device_attribute*, i8*)** %show158, align 8, !dbg !2648
  %123 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2649
  %ops159 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %123, i32 0, i32 21, !dbg !2651
  %124 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %ops159, align 8, !dbg !2651
  %set_trip_hyst = getelementptr inbounds %struct.thermal_zone_device_ops, %struct.thermal_zone_device_ops* %124, i32 0, i32 9, !dbg !2652
  %125 = load i32 (%struct.thermal_zone_device*, i32, i32)*, i32 (%struct.thermal_zone_device*, i32, i32)** %set_trip_hyst, align 8, !dbg !2652
  %tobool160 = icmp ne i32 (%struct.thermal_zone_device*, i32, i32)* %125, null, !dbg !2649
  br i1 %tobool160, label %if.then161, label %if.end176, !dbg !2653

if.then161:                                       ; preds = %do.end136
  %126 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2654
  %trip_hyst_attrs162 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %126, i32 0, i32 6, !dbg !2656
  %127 = load %struct.thermal_attr*, %struct.thermal_attr** %trip_hyst_attrs162, align 8, !dbg !2656
  %128 = load i32, i32* %indx, align 4, !dbg !2657
  %idxprom163 = sext i32 %128 to i64, !dbg !2654
  %arrayidx164 = getelementptr %struct.thermal_attr, %struct.thermal_attr* %127, i64 %idxprom163, !dbg !2654
  %attr165 = getelementptr inbounds %struct.thermal_attr, %struct.thermal_attr* %arrayidx164, i32 0, i32 0, !dbg !2658
  %attr166 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %attr165, i32 0, i32 0, !dbg !2659
  %mode167 = getelementptr inbounds %struct.attribute, %struct.attribute* %attr166, i32 0, i32 1, !dbg !2660
  %129 = load i16, i16* %mode167, align 8, !dbg !2661
  %conv168 = zext i16 %129 to i32, !dbg !2661
  %or169 = or i32 %conv168, 128, !dbg !2661
  %conv170 = trunc i32 %or169 to i16, !dbg !2661
  store i16 %conv170, i16* %mode167, align 8, !dbg !2661
  %130 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2662
  %trip_hyst_attrs171 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %130, i32 0, i32 6, !dbg !2663
  %131 = load %struct.thermal_attr*, %struct.thermal_attr** %trip_hyst_attrs171, align 8, !dbg !2663
  %132 = load i32, i32* %indx, align 4, !dbg !2664
  %idxprom172 = sext i32 %132 to i64, !dbg !2662
  %arrayidx173 = getelementptr %struct.thermal_attr, %struct.thermal_attr* %131, i64 %idxprom172, !dbg !2662
  %attr174 = getelementptr inbounds %struct.thermal_attr, %struct.thermal_attr* %arrayidx173, i32 0, i32 0, !dbg !2665
  %store175 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %attr174, i32 0, i32 2, !dbg !2666
  store i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @trip_point_hyst_store, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)** %store175, align 8, !dbg !2667
  br label %if.end176, !dbg !2668

if.end176:                                        ; preds = %if.then161, %do.end136
  %133 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2669
  %trip_hyst_attrs177 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %133, i32 0, i32 6, !dbg !2670
  %134 = load %struct.thermal_attr*, %struct.thermal_attr** %trip_hyst_attrs177, align 8, !dbg !2670
  %135 = load i32, i32* %indx, align 4, !dbg !2671
  %idxprom178 = sext i32 %135 to i64, !dbg !2669
  %arrayidx179 = getelementptr %struct.thermal_attr, %struct.thermal_attr* %134, i64 %idxprom178, !dbg !2669
  %attr180 = getelementptr inbounds %struct.thermal_attr, %struct.thermal_attr* %arrayidx179, i32 0, i32 0, !dbg !2672
  %attr181 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %attr180, i32 0, i32 0, !dbg !2673
  %136 = load %struct.attribute**, %struct.attribute*** %attrs, align 8, !dbg !2674
  %137 = load i32, i32* %indx, align 4, !dbg !2675
  %138 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2676
  %trips182 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %138, i32 0, i32 9, !dbg !2677
  %139 = load i32, i32* %trips182, align 8, !dbg !2677
  %mul183 = mul i32 %139, 2, !dbg !2678
  %add184 = add i32 %137, %mul183, !dbg !2679
  %idxprom185 = sext i32 %add184 to i64, !dbg !2674
  %arrayidx186 = getelementptr %struct.attribute*, %struct.attribute** %136, i64 %idxprom185, !dbg !2674
  store %struct.attribute* %attr181, %struct.attribute** %arrayidx186, align 8, !dbg !2680
  br label %for.inc, !dbg !2681

for.inc:                                          ; preds = %if.end176, %if.then127
  %140 = load i32, i32* %indx, align 4, !dbg !2682
  %inc = add i32 %140, 1, !dbg !2682
  store i32 %inc, i32* %indx, align 4, !dbg !2682
  br label %for.cond, !dbg !2683, !llvm.loop !2684

for.end:                                          ; preds = %for.cond
  %141 = load %struct.attribute**, %struct.attribute*** %attrs, align 8, !dbg !2686
  %142 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2687
  %trips187 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %142, i32 0, i32 9, !dbg !2688
  %143 = load i32, i32* %trips187, align 8, !dbg !2688
  %mul188 = mul i32 %143, 3, !dbg !2689
  %idxprom189 = sext i32 %mul188 to i64, !dbg !2686
  %arrayidx190 = getelementptr %struct.attribute*, %struct.attribute** %141, i64 %idxprom189, !dbg !2686
  store %struct.attribute* null, %struct.attribute** %arrayidx190, align 8, !dbg !2690
  %144 = load %struct.attribute**, %struct.attribute*** %attrs, align 8, !dbg !2691
  %145 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2692
  %trips_attribute_group = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %145, i32 0, i32 3, !dbg !2693
  %attrs191 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %trips_attribute_group, i32 0, i32 3, !dbg !2694
  store %struct.attribute** %144, %struct.attribute*** %attrs191, align 8, !dbg !2695
  store i32 0, i32* %retval, align 4, !dbg !2696
  br label %return, !dbg !2696

return:                                           ; preds = %for.end, %if.end37, %if.then20, %if.then10, %if.then3, %if.then
  %146 = load i32, i32* %retval, align 4, !dbg !2697
  ret i32 %146, !dbg !2697
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @thermal_zone_destroy_device_groups(%struct.thermal_zone_device* %tz) #0 !dbg !2698 {
entry:
  %tz.addr = alloca %struct.thermal_zone_device*, align 8
  store %struct.thermal_zone_device* %tz, %struct.thermal_zone_device** %tz.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tz.addr, metadata !2699, metadata !DIExpression()), !dbg !2700
  %0 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2701
  %tobool = icmp ne %struct.thermal_zone_device* %0, null, !dbg !2701
  br i1 %tobool, label %if.end, label %if.then, !dbg !2703

if.then:                                          ; preds = %entry
  br label %return, !dbg !2704

if.end:                                           ; preds = %entry
  %1 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2705
  %trips = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %1, i32 0, i32 9, !dbg !2707
  %2 = load i32, i32* %trips, align 8, !dbg !2707
  %tobool1 = icmp ne i32 %2, 0, !dbg !2705
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !2708

if.then2:                                         ; preds = %if.end
  %3 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2709
  call void @destroy_trip_attrs(%struct.thermal_zone_device* %3) #6, !dbg !2710
  br label %if.end3, !dbg !2710

if.end3:                                          ; preds = %if.then2, %if.end
  %4 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2711
  %device = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %4, i32 0, i32 2, !dbg !2712
  %groups = getelementptr inbounds %struct.device, %struct.device* %device, i32 0, i32 30, !dbg !2713
  %5 = load %struct.attribute_group**, %struct.attribute_group*** %groups, align 8, !dbg !2713
  %6 = bitcast %struct.attribute_group** %5 to i8*, !dbg !2711
  call void @kfree(i8* %6) #6, !dbg !2714
  br label %return, !dbg !2715

return:                                           ; preds = %if.end3, %if.then
  ret void, !dbg !2715
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @destroy_trip_attrs(%struct.thermal_zone_device* %tz) #0 !dbg !2716 {
entry:
  %tz.addr = alloca %struct.thermal_zone_device*, align 8
  store %struct.thermal_zone_device* %tz, %struct.thermal_zone_device** %tz.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tz.addr, metadata !2717, metadata !DIExpression()), !dbg !2718
  %0 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2719
  %tobool = icmp ne %struct.thermal_zone_device* %0, null, !dbg !2719
  br i1 %tobool, label %if.end, label %if.then, !dbg !2721

if.then:                                          ; preds = %entry
  br label %return, !dbg !2722

if.end:                                           ; preds = %entry
  %1 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2723
  %trip_type_attrs = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %1, i32 0, i32 5, !dbg !2724
  %2 = load %struct.thermal_attr*, %struct.thermal_attr** %trip_type_attrs, align 8, !dbg !2724
  %3 = bitcast %struct.thermal_attr* %2 to i8*, !dbg !2723
  call void @kfree(i8* %3) #6, !dbg !2725
  %4 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2726
  %trip_temp_attrs = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %4, i32 0, i32 4, !dbg !2727
  %5 = load %struct.thermal_attr*, %struct.thermal_attr** %trip_temp_attrs, align 8, !dbg !2727
  %6 = bitcast %struct.thermal_attr* %5 to i8*, !dbg !2726
  call void @kfree(i8* %6) #6, !dbg !2728
  %7 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2729
  %ops = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %7, i32 0, i32 21, !dbg !2731
  %8 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %ops, align 8, !dbg !2731
  %get_trip_hyst = getelementptr inbounds %struct.thermal_zone_device_ops, %struct.thermal_zone_device_ops* %8, i32 0, i32 8, !dbg !2732
  %9 = load i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)** %get_trip_hyst, align 8, !dbg !2732
  %tobool1 = icmp ne i32 (%struct.thermal_zone_device*, i32, i32*)* %9, null, !dbg !2729
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !2733

if.then2:                                         ; preds = %if.end
  %10 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2734
  %trip_hyst_attrs = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %10, i32 0, i32 6, !dbg !2735
  %11 = load %struct.thermal_attr*, %struct.thermal_attr** %trip_hyst_attrs, align 8, !dbg !2735
  %12 = bitcast %struct.thermal_attr* %11 to i8*, !dbg !2734
  call void @kfree(i8* %12) #6, !dbg !2736
  br label %if.end3, !dbg !2736

if.end3:                                          ; preds = %if.then2, %if.end
  %13 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2737
  %trips_attribute_group = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %13, i32 0, i32 3, !dbg !2738
  %attrs = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %trips_attribute_group, i32 0, i32 3, !dbg !2739
  %14 = load %struct.attribute**, %struct.attribute*** %attrs, align 8, !dbg !2739
  %15 = bitcast %struct.attribute** %14 to i8*, !dbg !2737
  call void @kfree(i8* %15) #6, !dbg !2740
  br label %return, !dbg !2741

return:                                           ; preds = %if.end3, %if.then
  ret void, !dbg !2741
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @thermal_cooling_device_setup_sysfs(%struct.thermal_cooling_device* %cdev) #0 !dbg !2742 {
entry:
  %cdev.addr = alloca %struct.thermal_cooling_device*, align 8
  store %struct.thermal_cooling_device* %cdev, %struct.thermal_cooling_device** %cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_cooling_device** %cdev.addr, metadata !2745, metadata !DIExpression()), !dbg !2746
  %0 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %cdev.addr, align 8, !dbg !2747
  call void @cooling_device_stats_setup(%struct.thermal_cooling_device* %0) #6, !dbg !2748
  %1 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %cdev.addr, align 8, !dbg !2749
  %device = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %1, i32 0, i32 2, !dbg !2750
  %groups = getelementptr inbounds %struct.device, %struct.device* %device, i32 0, i32 30, !dbg !2751
  store %struct.attribute_group** getelementptr inbounds ([3 x %struct.attribute_group*], [3 x %struct.attribute_group*]* @cooling_device_attr_groups, i64 0, i64 0), %struct.attribute_group*** %groups, align 8, !dbg !2752
  ret void, !dbg !2753
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cooling_device_stats_setup(%struct.thermal_cooling_device* %cdev) #0 !dbg !2754 {
entry:
  %cdev.addr = alloca %struct.thermal_cooling_device*, align 8
  store %struct.thermal_cooling_device* %cdev, %struct.thermal_cooling_device** %cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_cooling_device** %cdev.addr, metadata !2755, metadata !DIExpression()), !dbg !2756
  ret void, !dbg !2757
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @thermal_cooling_device_destroy_sysfs(%struct.thermal_cooling_device* %cdev) #0 !dbg !2758 {
entry:
  %cdev.addr = alloca %struct.thermal_cooling_device*, align 8
  store %struct.thermal_cooling_device* %cdev, %struct.thermal_cooling_device** %cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_cooling_device** %cdev.addr, metadata !2759, metadata !DIExpression()), !dbg !2760
  %0 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %cdev.addr, align 8, !dbg !2761
  call void @cooling_device_stats_destroy(%struct.thermal_cooling_device* %0) #6, !dbg !2762
  ret void, !dbg !2763
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cooling_device_stats_destroy(%struct.thermal_cooling_device* %cdev) #0 !dbg !2764 {
entry:
  %cdev.addr = alloca %struct.thermal_cooling_device*, align 8
  store %struct.thermal_cooling_device* %cdev, %struct.thermal_cooling_device** %cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_cooling_device** %cdev.addr, metadata !2765, metadata !DIExpression()), !dbg !2766
  ret void, !dbg !2767
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @trip_point_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !2768 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %instance = alloca %struct.thermal_instance*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.thermal_instance*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2769, metadata !DIExpression()), !dbg !2770
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !2771, metadata !DIExpression()), !dbg !2772
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2773, metadata !DIExpression()), !dbg !2774
  call void @llvm.dbg.declare(metadata %struct.thermal_instance** %instance, metadata !2775, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2777, metadata !DIExpression()), !dbg !2779
  %0 = load %struct.device_attribute*, %struct.device_attribute** %attr.addr, align 8, !dbg !2779
  %1 = bitcast %struct.device_attribute* %0 to i8*, !dbg !2779
  store i8* %1, i8** %__mptr, align 8, !dbg !2779
  br label %do.body, !dbg !2779

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2780

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2779
  %add.ptr = getelementptr i8, i8* %2, i64 -96, !dbg !2779
  %3 = bitcast i8* %add.ptr to %struct.thermal_instance*, !dbg !2779
  store %struct.thermal_instance* %3, %struct.thermal_instance** %tmp, align 8, !dbg !2780
  %4 = load %struct.thermal_instance*, %struct.thermal_instance** %tmp, align 8, !dbg !2779
  store %struct.thermal_instance* %4, %struct.thermal_instance** %instance, align 8, !dbg !2782
  %5 = load %struct.thermal_instance*, %struct.thermal_instance** %instance, align 8, !dbg !2783
  %trip = getelementptr inbounds %struct.thermal_instance, %struct.thermal_instance* %5, i32 0, i32 4, !dbg !2785
  %6 = load i32, i32* %trip, align 8, !dbg !2785
  %cmp = icmp eq i32 %6, -1, !dbg !2786
  br i1 %cmp, label %if.then, label %if.else, !dbg !2787

if.then:                                          ; preds = %do.end
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !2788
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #6, !dbg !2789
  %conv = sext i32 %call to i64, !dbg !2789
  store i64 %conv, i64* %retval, align 8, !dbg !2790
  br label %return, !dbg !2790

if.else:                                          ; preds = %do.end
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !2791
  %9 = load %struct.thermal_instance*, %struct.thermal_instance** %instance, align 8, !dbg !2792
  %trip1 = getelementptr inbounds %struct.thermal_instance, %struct.thermal_instance* %9, i32 0, i32 4, !dbg !2793
  %10 = load i32, i32* %trip1, align 8, !dbg !2793
  %call2 = call i32 (i8*, i8*, ...) @sprintf(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %10) #6, !dbg !2794
  %conv3 = sext i32 %call2 to i64, !dbg !2794
  store i64 %conv3, i64* %retval, align 8, !dbg !2795
  br label %return, !dbg !2795

return:                                           ; preds = %if.else, %if.then
  %11 = load i64, i64* %retval, align 8, !dbg !2796
  ret i64 %11, !dbg !2796
}

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @weight_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !2797 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %instance = alloca %struct.thermal_instance*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.thermal_instance*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2798, metadata !DIExpression()), !dbg !2799
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !2800, metadata !DIExpression()), !dbg !2801
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2802, metadata !DIExpression()), !dbg !2803
  call void @llvm.dbg.declare(metadata %struct.thermal_instance** %instance, metadata !2804, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2806, metadata !DIExpression()), !dbg !2808
  %0 = load %struct.device_attribute*, %struct.device_attribute** %attr.addr, align 8, !dbg !2808
  %1 = bitcast %struct.device_attribute* %0 to i8*, !dbg !2808
  store i8* %1, i8** %__mptr, align 8, !dbg !2808
  br label %do.body, !dbg !2808

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2809

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2808
  %add.ptr = getelementptr i8, i8* %2, i64 -152, !dbg !2808
  %3 = bitcast i8* %add.ptr to %struct.thermal_instance*, !dbg !2808
  store %struct.thermal_instance* %3, %struct.thermal_instance** %tmp, align 8, !dbg !2809
  %4 = load %struct.thermal_instance*, %struct.thermal_instance** %tmp, align 8, !dbg !2808
  store %struct.thermal_instance* %4, %struct.thermal_instance** %instance, align 8, !dbg !2811
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !2812
  %6 = load %struct.thermal_instance*, %struct.thermal_instance** %instance, align 8, !dbg !2813
  %weight = getelementptr inbounds %struct.thermal_instance, %struct.thermal_instance* %6, i32 0, i32 15, !dbg !2814
  %7 = load i32, i32* %weight, align 8, !dbg !2814
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %7) #6, !dbg !2815
  %conv = sext i32 %call to i64, !dbg !2815
  ret i64 %conv, !dbg !2816
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @weight_store(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %count) #0 !dbg !2817 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %instance = alloca %struct.thermal_instance*, align 8
  %ret = alloca i32, align 4
  %weight = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.thermal_instance*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2818, metadata !DIExpression()), !dbg !2819
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !2820, metadata !DIExpression()), !dbg !2821
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2822, metadata !DIExpression()), !dbg !2823
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !2824, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.declare(metadata %struct.thermal_instance** %instance, metadata !2826, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2828, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.declare(metadata i32* %weight, metadata !2830, metadata !DIExpression()), !dbg !2831
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !2832
  %call = call i32 @kstrtoint(i8* %0, i32 0, i32* %weight) #6, !dbg !2833
  store i32 %call, i32* %ret, align 4, !dbg !2834
  %1 = load i32, i32* %ret, align 4, !dbg !2835
  %tobool = icmp ne i32 %1, 0, !dbg !2835
  br i1 %tobool, label %if.then, label %if.end, !dbg !2837

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4, !dbg !2838
  %conv = sext i32 %2 to i64, !dbg !2838
  store i64 %conv, i64* %retval, align 8, !dbg !2839
  br label %return, !dbg !2839

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2840, metadata !DIExpression()), !dbg !2842
  %3 = load %struct.device_attribute*, %struct.device_attribute** %attr.addr, align 8, !dbg !2842
  %4 = bitcast %struct.device_attribute* %3 to i8*, !dbg !2842
  store i8* %4, i8** %__mptr, align 8, !dbg !2842
  br label %do.body, !dbg !2842

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !2843

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !2842
  %add.ptr = getelementptr i8, i8* %5, i64 -152, !dbg !2842
  %6 = bitcast i8* %add.ptr to %struct.thermal_instance*, !dbg !2842
  store %struct.thermal_instance* %6, %struct.thermal_instance** %tmp, align 8, !dbg !2843
  %7 = load %struct.thermal_instance*, %struct.thermal_instance** %tmp, align 8, !dbg !2842
  store %struct.thermal_instance* %7, %struct.thermal_instance** %instance, align 8, !dbg !2845
  %8 = load i32, i32* %weight, align 4, !dbg !2846
  %9 = load %struct.thermal_instance*, %struct.thermal_instance** %instance, align 8, !dbg !2847
  %weight1 = getelementptr inbounds %struct.thermal_instance, %struct.thermal_instance* %9, i32 0, i32 15, !dbg !2848
  store i32 %8, i32* %weight1, align 8, !dbg !2849
  %10 = load i64, i64* %count.addr, align 8, !dbg !2850
  store i64 %10, i64* %retval, align 8, !dbg !2851
  br label %return, !dbg !2851

return:                                           ; preds = %do.end, %if.then
  %11 = load i64, i64* %retval, align 8, !dbg !2852
  ret i64 %11, !dbg !2852
}

; Function Attrs: noredzone
declare dso_local i32 @kstrtoint(i8*, i32, i32*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kmalloc_array(i64 %n, i64 %size, i32 %flags) #0 !dbg !2853 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2854, metadata !DIExpression()), !dbg !2858
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2867, metadata !DIExpression()), !dbg !2868
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2869, metadata !DIExpression()), !dbg !2870
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2871, metadata !DIExpression()), !dbg !2872
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2873, metadata !DIExpression()), !dbg !2877
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2879, metadata !DIExpression()), !dbg !2883
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2885, metadata !DIExpression()), !dbg !2889
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !2894, metadata !DIExpression()), !dbg !2895
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !2896, metadata !DIExpression()), !dbg !2897
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2898, metadata !DIExpression()), !dbg !2899
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !2900, metadata !DIExpression()), !dbg !2901
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !2902, metadata !DIExpression()), !dbg !2903
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2904, metadata !DIExpression()), !dbg !2905
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !2906, metadata !DIExpression()), !dbg !2907
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !2908, metadata !DIExpression()), !dbg !2909
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
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2910, metadata !DIExpression()), !dbg !2911
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2912, metadata !DIExpression()), !dbg !2913
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2914, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !2916, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !2918, metadata !DIExpression()), !dbg !2921
  %0 = load i64, i64* %n.addr, align 8, !dbg !2921
  store i64 %0, i64* %__a, align 8, !dbg !2921
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !2922, metadata !DIExpression()), !dbg !2921
  %1 = load i64, i64* %size.addr, align 8, !dbg !2921
  store i64 %1, i64* %__b, align 8, !dbg !2921
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !2923, metadata !DIExpression()), !dbg !2921
  store i64* %bytes, i64** %__d, align 8, !dbg !2921
  %cmp = icmp eq i64* %__a, %__b, !dbg !2921
  %conv = zext i1 %cmp to i32, !dbg !2921
  %2 = load i64*, i64** %__d, align 8, !dbg !2921
  %cmp1 = icmp eq i64* %__a, %2, !dbg !2921
  %conv2 = zext i1 %cmp1 to i32, !dbg !2921
  %3 = load i64, i64* %__a, align 8, !dbg !2921
  %4 = load i64, i64* %__b, align 8, !dbg !2921
  %5 = load i64*, i64** %__d, align 8, !dbg !2921
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !2921
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !2921
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !2921
  store i64 %8, i64* %5, align 8, !dbg !2921
  %frombool = zext i1 %7 to i8, !dbg !2921
  store i8 %frombool, i8* %tmp, align 1, !dbg !2921
  %9 = load i8, i8* %tmp, align 1, !dbg !2921
  %tobool = trunc i8 %9 to i1, !dbg !2921
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #6, !dbg !2925
  %lnot = xor i1 %call, true, !dbg !2925
  %lnot3 = xor i1 %lnot, true, !dbg !2925
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !2925
  %conv4 = sext i32 %lnot.ext to i64, !dbg !2925
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !2925
  br i1 %tobool5, label %if.then, label %if.end, !dbg !2926

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !2927
  br label %return, !dbg !2927

if.end:                                           ; preds = %entry
  %10 = load i64, i64* %n.addr, align 8, !dbg !2928
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !2929
  br i1 %11, label %land.lhs.true, label %if.end8, !dbg !2930

land.lhs.true:                                    ; preds = %if.end
  %12 = load i64, i64* %size.addr, align 8, !dbg !2931
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !2932
  br i1 %13, label %if.then6, label %if.end8, !dbg !2933

if.then6:                                         ; preds = %land.lhs.true
  %14 = load i64, i64* %bytes, align 8, !dbg !2934
  %15 = load i32, i32* %flags.addr, align 4, !dbg !2935
  store i64 %14, i64* %size.addr.i, align 8
  store i32 %15, i32* %flags.addr.i, align 4
  %16 = load i64, i64* %size.addr.i, align 8, !dbg !2936
  %17 = call i1 @llvm.is.constant.i64(i64 %16) #7, !dbg !2937
  br i1 %17, label %if.then.i, label %if.end9.i, !dbg !2938

if.then.i:                                        ; preds = %if.then6
  %18 = load i64, i64* %size.addr.i, align 8, !dbg !2939
  %cmp.i = icmp ugt i64 %18, 8192, !dbg !2940
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !2941

if.then1.i:                                       ; preds = %if.then.i
  %19 = load i64, i64* %size.addr.i, align 8, !dbg !2942
  %20 = load i32, i32* %flags.addr.i, align 4, !dbg !2943
  store i64 %19, i64* %size.addr.i.i, align 8
  store i32 %20, i32* %flags.addr.i.i, align 4
  %21 = load i64, i64* %size.addr.i.i, align 8, !dbg !2944
  %call.i.i = call i32 @get_order(i64 %21) #8, !dbg !2945
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !2903
  %22 = load i64, i64* %size.addr.i.i, align 8, !dbg !2946
  %23 = load i32, i32* %flags.addr.i.i, align 4, !dbg !2947
  %24 = load i32, i32* %order.i.i, align 4, !dbg !2948
  store i64 %22, i64* %size.addr.i.i.i, align 8
  store i32 %23, i32* %flags.addr.i.i.i, align 4
  store i32 %24, i32* %order.addr.i.i.i, align 4
  %25 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !2949
  %26 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !2950
  %27 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !2951
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %25, i32 %26, i32 %27) #9, !dbg !2952
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !2952
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !2952
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !2952
  call void @llvm.assume(i1 %maskcond.i.i.i) #7, !dbg !2952
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !2953
  br label %kmalloc.exit, !dbg !2953

if.end.i:                                         ; preds = %if.then.i
  %28 = load i64, i64* %size.addr.i, align 8, !dbg !2954
  store i64 %28, i64* %size.addr.i11.i, align 8
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2955
  %tobool.i.i = icmp ne i64 %29, 0, !dbg !2955
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !2957

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !2958
  br label %kmalloc_index.exit.i, !dbg !2958

if.end.i.i:                                       ; preds = %if.end.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2959
  %cmp.i.i = icmp ule i64 %30, 8, !dbg !2961
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !2962

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2963
  br label %kmalloc_index.exit.i, !dbg !2963

if.end2.i.i:                                      ; preds = %if.end.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2964
  %cmp3.i.i = icmp ugt i64 %31, 64, !dbg !2966
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !2967

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2968
  %cmp4.i.i = icmp ule i64 %32, 96, !dbg !2969
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !2970

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !2971
  br label %kmalloc_index.exit.i, !dbg !2971

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2972
  %cmp7.i.i = icmp ugt i64 %33, 128, !dbg !2974
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !2975

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2976
  %cmp9.i.i = icmp ule i64 %34, 192, !dbg !2977
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !2978

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !2979
  br label %kmalloc_index.exit.i, !dbg !2979

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2980
  %cmp12.i.i = icmp ule i64 %35, 8, !dbg !2982
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !2983

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2984
  br label %kmalloc_index.exit.i, !dbg !2984

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2985
  %cmp15.i.i = icmp ule i64 %36, 16, !dbg !2987
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !2988

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !2989
  br label %kmalloc_index.exit.i, !dbg !2989

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2990
  %cmp18.i.i = icmp ule i64 %37, 32, !dbg !2992
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !2993

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !2994
  br label %kmalloc_index.exit.i, !dbg !2994

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2995
  %cmp21.i.i = icmp ule i64 %38, 64, !dbg !2997
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !2998

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !2999
  br label %kmalloc_index.exit.i, !dbg !2999

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3000
  %cmp24.i.i = icmp ule i64 %39, 128, !dbg !3002
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !3003

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !3004
  br label %kmalloc_index.exit.i, !dbg !3004

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3005
  %cmp27.i.i = icmp ule i64 %40, 256, !dbg !3007
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !3008

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !3009
  br label %kmalloc_index.exit.i, !dbg !3009

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3010
  %cmp30.i.i = icmp ule i64 %41, 512, !dbg !3012
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !3013

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !3014
  br label %kmalloc_index.exit.i, !dbg !3014

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3015
  %cmp33.i.i = icmp ule i64 %42, 1024, !dbg !3017
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !3018

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !3019
  br label %kmalloc_index.exit.i, !dbg !3019

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3020
  %cmp36.i.i = icmp ule i64 %43, 2048, !dbg !3022
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !3023

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !3024
  br label %kmalloc_index.exit.i, !dbg !3024

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3025
  %cmp39.i.i = icmp ule i64 %44, 4096, !dbg !3027
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !3028

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !3029
  br label %kmalloc_index.exit.i, !dbg !3029

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3030
  %cmp42.i.i = icmp ule i64 %45, 8192, !dbg !3032
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !3033

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !3034
  br label %kmalloc_index.exit.i, !dbg !3034

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3035
  %cmp45.i.i = icmp ule i64 %46, 16384, !dbg !3037
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !3038

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !3039
  br label %kmalloc_index.exit.i, !dbg !3039

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3040
  %cmp48.i.i = icmp ule i64 %47, 32768, !dbg !3042
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !3043

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !3044
  br label %kmalloc_index.exit.i, !dbg !3044

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3045
  %cmp51.i.i = icmp ule i64 %48, 65536, !dbg !3047
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !3048

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !3049
  br label %kmalloc_index.exit.i, !dbg !3049

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3050
  %cmp54.i.i = icmp ule i64 %49, 131072, !dbg !3052
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !3053

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !3054
  br label %kmalloc_index.exit.i, !dbg !3054

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3055
  %cmp57.i.i = icmp ule i64 %50, 262144, !dbg !3057
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !3058

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !3059
  br label %kmalloc_index.exit.i, !dbg !3059

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3060
  %cmp60.i.i = icmp ule i64 %51, 524288, !dbg !3062
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !3063

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !3064
  br label %kmalloc_index.exit.i, !dbg !3064

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3065
  %cmp63.i.i = icmp ule i64 %52, 1048576, !dbg !3067
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !3068

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !3069
  br label %kmalloc_index.exit.i, !dbg !3069

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3070
  %cmp66.i.i = icmp ule i64 %53, 2097152, !dbg !3072
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !3073

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !3074
  br label %kmalloc_index.exit.i, !dbg !3074

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3075
  %cmp69.i.i = icmp ule i64 %54, 4194304, !dbg !3077
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !3078

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !3079
  br label %kmalloc_index.exit.i, !dbg !3079

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3080
  %cmp72.i.i = icmp ule i64 %55, 8388608, !dbg !3082
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !3083

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !3084
  br label %kmalloc_index.exit.i, !dbg !3084

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3085
  %cmp75.i.i = icmp ule i64 %56, 16777216, !dbg !3087
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !3088

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !3089
  br label %kmalloc_index.exit.i, !dbg !3089

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3090
  %cmp78.i.i = icmp ule i64 %57, 33554432, !dbg !3092
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !3093

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !3094
  br label %kmalloc_index.exit.i, !dbg !3094

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3095
  %cmp81.i.i = icmp ule i64 %58, 67108864, !dbg !3097
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !3098

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !3099
  br label %kmalloc_index.exit.i, !dbg !3099

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 382, i32 0, i64 12) #7, !dbg !3100, !srcloc !3103
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 156) #7, !dbg !3104, !srcloc !3107
  unreachable, !dbg !3108

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %59 = load i32, i32* %retval.i.i, align 4, !dbg !3109
  store i32 %59, i32* %index.i, align 4, !dbg !3110
  %60 = load i32, i32* %index.i, align 4, !dbg !3111
  %tobool.i = icmp ne i32 %60, 0, !dbg !3111
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !3113

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !3114
  br label %kmalloc.exit, !dbg !3114

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %61 = load i32, i32* %flags.addr.i, align 4, !dbg !3115
  store i32 %61, i32* %flags.addr.i13.i, align 4
  %62 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3116
  %and.i.i = and i32 %62, 17, !dbg !3116
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !3116
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !3116
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !3116
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !3116
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !3118

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !3119
  br label %kmalloc_type.exit.i, !dbg !3119

if.end.i16.i:                                     ; preds = %if.end4.i
  %63 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3120
  %and2.i.i = and i32 %63, 1, !dbg !3121
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !3120
  %64 = zext i1 %tobool3.i.i to i64, !dbg !3120
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !3120
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !3122
  br label %kmalloc_type.exit.i, !dbg !3122

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %65 = load i32, i32* %retval.i12.i, align 4, !dbg !3123
  %idxprom.i = zext i32 %65 to i64, !dbg !3124
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !3124
  %66 = load i32, i32* %index.i, align 4, !dbg !3125
  %idxprom6.i = zext i32 %66 to i64, !dbg !3124
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !3124
  %67 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !3124
  %68 = load i32, i32* %flags.addr.i, align 4, !dbg !3126
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !3127
  store %struct.kmem_cache* %67, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %68, i32* %flags.addr.i17.i, align 4
  store i64 %69, i64* %size.addr.i18.i, align 8
  %70 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3128
  %71 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3129
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %70, i32 %71) #9, !dbg !3130
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !3130
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !3130
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !3130
  call void @llvm.assume(i1 %maskcond.i.i) #7, !dbg !3130
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !2872
  %72 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3131
  %73 = load i8*, i8** %ret.i.i, align 8, !dbg !3132
  %74 = load i64, i64* %size.addr.i18.i, align 8, !dbg !3133
  %75 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3134
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %72, i8* %73, i64 %74, i32 %75) #9, !dbg !3135
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !3136
  %76 = load i8*, i8** %ret.i.i, align 8, !dbg !3137
  store i8* %76, i8** %retval.i, align 8, !dbg !3138
  br label %kmalloc.exit, !dbg !3138

if.end9.i:                                        ; preds = %if.then6
  %77 = load i64, i64* %size.addr.i, align 8, !dbg !3139
  %78 = load i32, i32* %flags.addr.i, align 4, !dbg !3140
  %call10.i = call noalias i8* @__kmalloc(i64 %77, i32 %78) #9, !dbg !3141
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !3141
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !3141
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !3141
  call void @llvm.assume(i1 %maskcond.i) #7, !dbg !3141
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !3142
  br label %kmalloc.exit, !dbg !3142

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %79 = load i8*, i8** %retval.i, align 8, !dbg !3143
  store i8* %79, i8** %retval, align 8, !dbg !3144
  br label %return, !dbg !3144

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %80 = load i64, i64* %bytes, align 8, !dbg !3145
  %81 = load i32, i32* %flags.addr, align 4, !dbg !3146
  %call9 = call noalias i8* @__kmalloc(i64 %80, i32 %81) #6, !dbg !3147
  %ptrint = ptrtoint i8* %call9 to i64, !dbg !3147
  %maskedptr = and i64 %ptrint, 7, !dbg !3147
  %maskcond = icmp eq i64 %maskedptr, 0, !dbg !3147
  call void @llvm.assume(i1 %maskcond), !dbg !3147
  store i8* %call9, i8** %retval, align 8, !dbg !3148
  br label %return, !dbg !3148

return:                                           ; preds = %if.end8, %kmalloc.exit, %if.then
  %82 = load i8*, i8** %retval, align 8, !dbg !3149
  ret i8* %82, !dbg !3149
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #0 !dbg !3150 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !3154, metadata !DIExpression()), !dbg !3155
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !3156
  %tobool = trunc i8 %0 to i1, !dbg !3156
  %lnot = xor i1 %tobool, true, !dbg !3156
  %lnot1 = xor i1 %lnot, true, !dbg !3156
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3156
  %conv = sext i32 %lnot.ext to i64, !dbg !3156
  %tobool2 = icmp ne i64 %conv, 0, !dbg !3156
  ret i1 %tobool2, !dbg !3157
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #4

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #5 !dbg !3158 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3162, metadata !DIExpression()), !dbg !3167
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3169, metadata !DIExpression()), !dbg !3170
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3171, metadata !DIExpression()), !dbg !3172
  %0 = load i64, i64* %size.addr, align 8, !dbg !3173
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3175
  br i1 %1, label %if.then, label %if.end447, !dbg !3176

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !3177
  %tobool = icmp ne i64 %2, 0, !dbg !3177
  br i1 %tobool, label %if.end, label %if.then1, !dbg !3180

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !3181
  br label %return, !dbg !3181

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !3182
  %cmp = icmp ult i64 %3, 4096, !dbg !3184
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3185

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3186
  br label %return, !dbg !3186

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub = sub i64 %4, 1, !dbg !3187
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !3187
  br i1 %5, label %cond.true, label %cond.false442, !dbg !3187

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub4 = sub i64 %6, 1, !dbg !3187
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !3187
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !3187

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub6 = sub i64 %8, 1, !dbg !3187
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !3187
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !3187

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !3187

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub9 = sub i64 %9, 1, !dbg !3187
  %and = and i64 %sub9, -9223372036854775808, !dbg !3187
  %tobool10 = icmp ne i64 %and, 0, !dbg !3187
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !3187

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !3187

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub13 = sub i64 %10, 1, !dbg !3187
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !3187
  %tobool15 = icmp ne i64 %and14, 0, !dbg !3187
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !3187

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !3187

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub18 = sub i64 %11, 1, !dbg !3187
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !3187
  %tobool20 = icmp ne i64 %and19, 0, !dbg !3187
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !3187

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !3187

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub23 = sub i64 %12, 1, !dbg !3187
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !3187
  %tobool25 = icmp ne i64 %and24, 0, !dbg !3187
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !3187

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !3187

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub28 = sub i64 %13, 1, !dbg !3187
  %and29 = and i64 %sub28, 576460752303423488, !dbg !3187
  %tobool30 = icmp ne i64 %and29, 0, !dbg !3187
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !3187

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !3187

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub33 = sub i64 %14, 1, !dbg !3187
  %and34 = and i64 %sub33, 288230376151711744, !dbg !3187
  %tobool35 = icmp ne i64 %and34, 0, !dbg !3187
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !3187

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !3187

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub38 = sub i64 %15, 1, !dbg !3187
  %and39 = and i64 %sub38, 144115188075855872, !dbg !3187
  %tobool40 = icmp ne i64 %and39, 0, !dbg !3187
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !3187

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !3187

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub43 = sub i64 %16, 1, !dbg !3187
  %and44 = and i64 %sub43, 72057594037927936, !dbg !3187
  %tobool45 = icmp ne i64 %and44, 0, !dbg !3187
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !3187

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !3187

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub48 = sub i64 %17, 1, !dbg !3187
  %and49 = and i64 %sub48, 36028797018963968, !dbg !3187
  %tobool50 = icmp ne i64 %and49, 0, !dbg !3187
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !3187

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !3187

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub53 = sub i64 %18, 1, !dbg !3187
  %and54 = and i64 %sub53, 18014398509481984, !dbg !3187
  %tobool55 = icmp ne i64 %and54, 0, !dbg !3187
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !3187

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !3187

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub58 = sub i64 %19, 1, !dbg !3187
  %and59 = and i64 %sub58, 9007199254740992, !dbg !3187
  %tobool60 = icmp ne i64 %and59, 0, !dbg !3187
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !3187

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !3187

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub63 = sub i64 %20, 1, !dbg !3187
  %and64 = and i64 %sub63, 4503599627370496, !dbg !3187
  %tobool65 = icmp ne i64 %and64, 0, !dbg !3187
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !3187

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !3187

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub68 = sub i64 %21, 1, !dbg !3187
  %and69 = and i64 %sub68, 2251799813685248, !dbg !3187
  %tobool70 = icmp ne i64 %and69, 0, !dbg !3187
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !3187

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !3187

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub73 = sub i64 %22, 1, !dbg !3187
  %and74 = and i64 %sub73, 1125899906842624, !dbg !3187
  %tobool75 = icmp ne i64 %and74, 0, !dbg !3187
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !3187

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !3187

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub78 = sub i64 %23, 1, !dbg !3187
  %and79 = and i64 %sub78, 562949953421312, !dbg !3187
  %tobool80 = icmp ne i64 %and79, 0, !dbg !3187
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !3187

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !3187

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub83 = sub i64 %24, 1, !dbg !3187
  %and84 = and i64 %sub83, 281474976710656, !dbg !3187
  %tobool85 = icmp ne i64 %and84, 0, !dbg !3187
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !3187

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !3187

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub88 = sub i64 %25, 1, !dbg !3187
  %and89 = and i64 %sub88, 140737488355328, !dbg !3187
  %tobool90 = icmp ne i64 %and89, 0, !dbg !3187
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !3187

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !3187

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub93 = sub i64 %26, 1, !dbg !3187
  %and94 = and i64 %sub93, 70368744177664, !dbg !3187
  %tobool95 = icmp ne i64 %and94, 0, !dbg !3187
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !3187

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !3187

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub98 = sub i64 %27, 1, !dbg !3187
  %and99 = and i64 %sub98, 35184372088832, !dbg !3187
  %tobool100 = icmp ne i64 %and99, 0, !dbg !3187
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !3187

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !3187

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub103 = sub i64 %28, 1, !dbg !3187
  %and104 = and i64 %sub103, 17592186044416, !dbg !3187
  %tobool105 = icmp ne i64 %and104, 0, !dbg !3187
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !3187

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !3187

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub108 = sub i64 %29, 1, !dbg !3187
  %and109 = and i64 %sub108, 8796093022208, !dbg !3187
  %tobool110 = icmp ne i64 %and109, 0, !dbg !3187
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !3187

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !3187

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub113 = sub i64 %30, 1, !dbg !3187
  %and114 = and i64 %sub113, 4398046511104, !dbg !3187
  %tobool115 = icmp ne i64 %and114, 0, !dbg !3187
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !3187

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !3187

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub118 = sub i64 %31, 1, !dbg !3187
  %and119 = and i64 %sub118, 2199023255552, !dbg !3187
  %tobool120 = icmp ne i64 %and119, 0, !dbg !3187
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !3187

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !3187

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub123 = sub i64 %32, 1, !dbg !3187
  %and124 = and i64 %sub123, 1099511627776, !dbg !3187
  %tobool125 = icmp ne i64 %and124, 0, !dbg !3187
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !3187

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !3187

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub128 = sub i64 %33, 1, !dbg !3187
  %and129 = and i64 %sub128, 549755813888, !dbg !3187
  %tobool130 = icmp ne i64 %and129, 0, !dbg !3187
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !3187

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !3187

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub133 = sub i64 %34, 1, !dbg !3187
  %and134 = and i64 %sub133, 274877906944, !dbg !3187
  %tobool135 = icmp ne i64 %and134, 0, !dbg !3187
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !3187

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !3187

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub138 = sub i64 %35, 1, !dbg !3187
  %and139 = and i64 %sub138, 137438953472, !dbg !3187
  %tobool140 = icmp ne i64 %and139, 0, !dbg !3187
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !3187

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !3187

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub143 = sub i64 %36, 1, !dbg !3187
  %and144 = and i64 %sub143, 68719476736, !dbg !3187
  %tobool145 = icmp ne i64 %and144, 0, !dbg !3187
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !3187

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !3187

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub148 = sub i64 %37, 1, !dbg !3187
  %and149 = and i64 %sub148, 34359738368, !dbg !3187
  %tobool150 = icmp ne i64 %and149, 0, !dbg !3187
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !3187

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !3187

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub153 = sub i64 %38, 1, !dbg !3187
  %and154 = and i64 %sub153, 17179869184, !dbg !3187
  %tobool155 = icmp ne i64 %and154, 0, !dbg !3187
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !3187

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !3187

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub158 = sub i64 %39, 1, !dbg !3187
  %and159 = and i64 %sub158, 8589934592, !dbg !3187
  %tobool160 = icmp ne i64 %and159, 0, !dbg !3187
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !3187

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !3187

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub163 = sub i64 %40, 1, !dbg !3187
  %and164 = and i64 %sub163, 4294967296, !dbg !3187
  %tobool165 = icmp ne i64 %and164, 0, !dbg !3187
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !3187

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !3187

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub168 = sub i64 %41, 1, !dbg !3187
  %and169 = and i64 %sub168, 2147483648, !dbg !3187
  %tobool170 = icmp ne i64 %and169, 0, !dbg !3187
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !3187

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !3187

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub173 = sub i64 %42, 1, !dbg !3187
  %and174 = and i64 %sub173, 1073741824, !dbg !3187
  %tobool175 = icmp ne i64 %and174, 0, !dbg !3187
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !3187

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !3187

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub178 = sub i64 %43, 1, !dbg !3187
  %and179 = and i64 %sub178, 536870912, !dbg !3187
  %tobool180 = icmp ne i64 %and179, 0, !dbg !3187
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !3187

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !3187

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub183 = sub i64 %44, 1, !dbg !3187
  %and184 = and i64 %sub183, 268435456, !dbg !3187
  %tobool185 = icmp ne i64 %and184, 0, !dbg !3187
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !3187

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !3187

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub188 = sub i64 %45, 1, !dbg !3187
  %and189 = and i64 %sub188, 134217728, !dbg !3187
  %tobool190 = icmp ne i64 %and189, 0, !dbg !3187
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !3187

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !3187

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub193 = sub i64 %46, 1, !dbg !3187
  %and194 = and i64 %sub193, 67108864, !dbg !3187
  %tobool195 = icmp ne i64 %and194, 0, !dbg !3187
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !3187

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !3187

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub198 = sub i64 %47, 1, !dbg !3187
  %and199 = and i64 %sub198, 33554432, !dbg !3187
  %tobool200 = icmp ne i64 %and199, 0, !dbg !3187
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !3187

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !3187

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub203 = sub i64 %48, 1, !dbg !3187
  %and204 = and i64 %sub203, 16777216, !dbg !3187
  %tobool205 = icmp ne i64 %and204, 0, !dbg !3187
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !3187

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !3187

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub208 = sub i64 %49, 1, !dbg !3187
  %and209 = and i64 %sub208, 8388608, !dbg !3187
  %tobool210 = icmp ne i64 %and209, 0, !dbg !3187
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !3187

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !3187

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub213 = sub i64 %50, 1, !dbg !3187
  %and214 = and i64 %sub213, 4194304, !dbg !3187
  %tobool215 = icmp ne i64 %and214, 0, !dbg !3187
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !3187

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !3187

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub218 = sub i64 %51, 1, !dbg !3187
  %and219 = and i64 %sub218, 2097152, !dbg !3187
  %tobool220 = icmp ne i64 %and219, 0, !dbg !3187
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !3187

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !3187

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub223 = sub i64 %52, 1, !dbg !3187
  %and224 = and i64 %sub223, 1048576, !dbg !3187
  %tobool225 = icmp ne i64 %and224, 0, !dbg !3187
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !3187

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !3187

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub228 = sub i64 %53, 1, !dbg !3187
  %and229 = and i64 %sub228, 524288, !dbg !3187
  %tobool230 = icmp ne i64 %and229, 0, !dbg !3187
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !3187

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !3187

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub233 = sub i64 %54, 1, !dbg !3187
  %and234 = and i64 %sub233, 262144, !dbg !3187
  %tobool235 = icmp ne i64 %and234, 0, !dbg !3187
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !3187

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !3187

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub238 = sub i64 %55, 1, !dbg !3187
  %and239 = and i64 %sub238, 131072, !dbg !3187
  %tobool240 = icmp ne i64 %and239, 0, !dbg !3187
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !3187

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !3187

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub243 = sub i64 %56, 1, !dbg !3187
  %and244 = and i64 %sub243, 65536, !dbg !3187
  %tobool245 = icmp ne i64 %and244, 0, !dbg !3187
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !3187

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !3187

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub248 = sub i64 %57, 1, !dbg !3187
  %and249 = and i64 %sub248, 32768, !dbg !3187
  %tobool250 = icmp ne i64 %and249, 0, !dbg !3187
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !3187

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !3187

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub253 = sub i64 %58, 1, !dbg !3187
  %and254 = and i64 %sub253, 16384, !dbg !3187
  %tobool255 = icmp ne i64 %and254, 0, !dbg !3187
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !3187

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !3187

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub258 = sub i64 %59, 1, !dbg !3187
  %and259 = and i64 %sub258, 8192, !dbg !3187
  %tobool260 = icmp ne i64 %and259, 0, !dbg !3187
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !3187

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !3187

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub263 = sub i64 %60, 1, !dbg !3187
  %and264 = and i64 %sub263, 4096, !dbg !3187
  %tobool265 = icmp ne i64 %and264, 0, !dbg !3187
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !3187

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !3187

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub268 = sub i64 %61, 1, !dbg !3187
  %and269 = and i64 %sub268, 2048, !dbg !3187
  %tobool270 = icmp ne i64 %and269, 0, !dbg !3187
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !3187

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !3187

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub273 = sub i64 %62, 1, !dbg !3187
  %and274 = and i64 %sub273, 1024, !dbg !3187
  %tobool275 = icmp ne i64 %and274, 0, !dbg !3187
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !3187

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !3187

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub278 = sub i64 %63, 1, !dbg !3187
  %and279 = and i64 %sub278, 512, !dbg !3187
  %tobool280 = icmp ne i64 %and279, 0, !dbg !3187
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !3187

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !3187

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub283 = sub i64 %64, 1, !dbg !3187
  %and284 = and i64 %sub283, 256, !dbg !3187
  %tobool285 = icmp ne i64 %and284, 0, !dbg !3187
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !3187

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !3187

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub288 = sub i64 %65, 1, !dbg !3187
  %and289 = and i64 %sub288, 128, !dbg !3187
  %tobool290 = icmp ne i64 %and289, 0, !dbg !3187
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !3187

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !3187

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub293 = sub i64 %66, 1, !dbg !3187
  %and294 = and i64 %sub293, 64, !dbg !3187
  %tobool295 = icmp ne i64 %and294, 0, !dbg !3187
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !3187

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !3187

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub298 = sub i64 %67, 1, !dbg !3187
  %and299 = and i64 %sub298, 32, !dbg !3187
  %tobool300 = icmp ne i64 %and299, 0, !dbg !3187
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !3187

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !3187

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub303 = sub i64 %68, 1, !dbg !3187
  %and304 = and i64 %sub303, 16, !dbg !3187
  %tobool305 = icmp ne i64 %and304, 0, !dbg !3187
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !3187

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !3187

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub308 = sub i64 %69, 1, !dbg !3187
  %and309 = and i64 %sub308, 8, !dbg !3187
  %tobool310 = icmp ne i64 %and309, 0, !dbg !3187
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !3187

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !3187

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub313 = sub i64 %70, 1, !dbg !3187
  %and314 = and i64 %sub313, 4, !dbg !3187
  %tobool315 = icmp ne i64 %and314, 0, !dbg !3187
  %71 = zext i1 %tobool315 to i64, !dbg !3187
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !3187
  br label %cond.end, !dbg !3187

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !3187
  br label %cond.end317, !dbg !3187

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !3187
  br label %cond.end319, !dbg !3187

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !3187
  br label %cond.end321, !dbg !3187

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !3187
  br label %cond.end323, !dbg !3187

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !3187
  br label %cond.end325, !dbg !3187

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !3187
  br label %cond.end327, !dbg !3187

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !3187
  br label %cond.end329, !dbg !3187

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !3187
  br label %cond.end331, !dbg !3187

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !3187
  br label %cond.end333, !dbg !3187

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !3187
  br label %cond.end335, !dbg !3187

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !3187
  br label %cond.end337, !dbg !3187

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !3187
  br label %cond.end339, !dbg !3187

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !3187
  br label %cond.end341, !dbg !3187

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !3187
  br label %cond.end343, !dbg !3187

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !3187
  br label %cond.end345, !dbg !3187

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !3187
  br label %cond.end347, !dbg !3187

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !3187
  br label %cond.end349, !dbg !3187

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !3187
  br label %cond.end351, !dbg !3187

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !3187
  br label %cond.end353, !dbg !3187

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !3187
  br label %cond.end355, !dbg !3187

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !3187
  br label %cond.end357, !dbg !3187

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !3187
  br label %cond.end359, !dbg !3187

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !3187
  br label %cond.end361, !dbg !3187

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !3187
  br label %cond.end363, !dbg !3187

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !3187
  br label %cond.end365, !dbg !3187

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !3187
  br label %cond.end367, !dbg !3187

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !3187
  br label %cond.end369, !dbg !3187

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !3187
  br label %cond.end371, !dbg !3187

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !3187
  br label %cond.end373, !dbg !3187

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !3187
  br label %cond.end375, !dbg !3187

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !3187
  br label %cond.end377, !dbg !3187

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !3187
  br label %cond.end379, !dbg !3187

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !3187
  br label %cond.end381, !dbg !3187

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !3187
  br label %cond.end383, !dbg !3187

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !3187
  br label %cond.end385, !dbg !3187

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !3187
  br label %cond.end387, !dbg !3187

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !3187
  br label %cond.end389, !dbg !3187

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !3187
  br label %cond.end391, !dbg !3187

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !3187
  br label %cond.end393, !dbg !3187

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !3187
  br label %cond.end395, !dbg !3187

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !3187
  br label %cond.end397, !dbg !3187

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !3187
  br label %cond.end399, !dbg !3187

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !3187
  br label %cond.end401, !dbg !3187

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !3187
  br label %cond.end403, !dbg !3187

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !3187
  br label %cond.end405, !dbg !3187

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !3187
  br label %cond.end407, !dbg !3187

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !3187
  br label %cond.end409, !dbg !3187

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !3187
  br label %cond.end411, !dbg !3187

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !3187
  br label %cond.end413, !dbg !3187

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !3187
  br label %cond.end415, !dbg !3187

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !3187
  br label %cond.end417, !dbg !3187

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !3187
  br label %cond.end419, !dbg !3187

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !3187
  br label %cond.end421, !dbg !3187

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !3187
  br label %cond.end423, !dbg !3187

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !3187
  br label %cond.end425, !dbg !3187

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !3187
  br label %cond.end427, !dbg !3187

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !3187
  br label %cond.end429, !dbg !3187

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !3187
  br label %cond.end431, !dbg !3187

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !3187
  br label %cond.end433, !dbg !3187

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !3187
  br label %cond.end435, !dbg !3187

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !3187
  br label %cond.end437, !dbg !3187

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !3187
  br label %cond.end440, !dbg !3187

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !3187

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !3187
  br label %cond.end444, !dbg !3187

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !3187
  %sub443 = sub i64 %72, 1, !dbg !3187
  %call = call i32 @__ilog2_u64(i64 %sub443) #8, !dbg !3187
  br label %cond.end444, !dbg !3187

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !3187
  %sub446 = sub i32 %cond445, 12, !dbg !3188
  %add = add i32 %sub446, 1, !dbg !3189
  store i32 %add, i32* %retval, align 4, !dbg !3190
  br label %return, !dbg !3190

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !3191
  %dec = add i64 %73, -1, !dbg !3191
  store i64 %dec, i64* %size.addr, align 8, !dbg !3191
  %74 = load i64, i64* %size.addr, align 8, !dbg !3192
  %shr = lshr i64 %74, 12, !dbg !3192
  store i64 %shr, i64* %size.addr, align 8, !dbg !3192
  %75 = load i64, i64* %size.addr, align 8, !dbg !3193
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3170
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !3194
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !3195
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #10, !dbg !3194, !srcloc !3196
  store i32 %78, i32* %bitpos.i, align 4, !dbg !3194
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !3197
  %add.i = add i32 %79, 1, !dbg !3198
  store i32 %add.i, i32* %retval, align 4, !dbg !3199
  br label %return, !dbg !3199

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !3200
  ret i32 %80, !dbg !3200
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #5 !dbg !3201 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3162, metadata !DIExpression()), !dbg !3205
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3169, metadata !DIExpression()), !dbg !3207
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3208, metadata !DIExpression()), !dbg !3209
  %0 = load i64, i64* %n.addr, align 8, !dbg !3210
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3207
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !3211
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !3212
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #10, !dbg !3211, !srcloc !3196
  store i32 %3, i32* %bitpos.i, align 4, !dbg !3211
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !3213
  %add.i = add i32 %4, 1, !dbg !3214
  %sub = sub i32 %add.i, 1, !dbg !3215
  ret i32 %sub, !dbg !3216
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !3217 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !3221, metadata !DIExpression()), !dbg !3222
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !3223, metadata !DIExpression()), !dbg !3224
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3225, metadata !DIExpression()), !dbg !3226
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3227, metadata !DIExpression()), !dbg !3228
  %0 = load i8*, i8** %object.addr, align 8, !dbg !3229
  ret i8* %0, !dbg !3230
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @type_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3231 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %tz = alloca %struct.thermal_zone_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.thermal_zone_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3232, metadata !DIExpression()), !dbg !3233
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3234, metadata !DIExpression()), !dbg !3235
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3236, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tz, metadata !3238, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3240, metadata !DIExpression()), !dbg !3242
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3242
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3242
  store i8* %1, i8** %__mptr, align 8, !dbg !3242
  br label %do.body, !dbg !3242

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3243

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3242
  %add.ptr = getelementptr i8, i8* %2, i64 -24, !dbg !3242
  %3 = bitcast i8* %add.ptr to %struct.thermal_zone_device*, !dbg !3242
  store %struct.thermal_zone_device* %3, %struct.thermal_zone_device** %tmp, align 8, !dbg !3243
  %4 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tmp, align 8, !dbg !3242
  store %struct.thermal_zone_device* %4, %struct.thermal_zone_device** %tz, align 8, !dbg !3239
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !3245
  %6 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3246
  %type = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %6, i32 0, i32 1, !dbg !3247
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %type, i64 0, i64 0, !dbg !3246
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %arraydecay) #6, !dbg !3248
  %conv = sext i32 %call to i64, !dbg !3248
  ret i64 %conv, !dbg !3249
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @temp_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3250 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %tz = alloca %struct.thermal_zone_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.thermal_zone_device*, align 8
  %temperature = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3251, metadata !DIExpression()), !dbg !3252
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3253, metadata !DIExpression()), !dbg !3254
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3255, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tz, metadata !3257, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3259, metadata !DIExpression()), !dbg !3261
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3261
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3261
  store i8* %1, i8** %__mptr, align 8, !dbg !3261
  br label %do.body, !dbg !3261

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3262

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3261
  %add.ptr = getelementptr i8, i8* %2, i64 -24, !dbg !3261
  %3 = bitcast i8* %add.ptr to %struct.thermal_zone_device*, !dbg !3261
  store %struct.thermal_zone_device* %3, %struct.thermal_zone_device** %tmp, align 8, !dbg !3262
  %4 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tmp, align 8, !dbg !3261
  store %struct.thermal_zone_device* %4, %struct.thermal_zone_device** %tz, align 8, !dbg !3258
  call void @llvm.dbg.declare(metadata i32* %temperature, metadata !3264, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3266, metadata !DIExpression()), !dbg !3267
  %5 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3268
  %call = call i32 @thermal_zone_get_temp(%struct.thermal_zone_device* %5, i32* %temperature) #6, !dbg !3269
  store i32 %call, i32* %ret, align 4, !dbg !3270
  %6 = load i32, i32* %ret, align 4, !dbg !3271
  %tobool = icmp ne i32 %6, 0, !dbg !3271
  br i1 %tobool, label %if.then, label %if.end, !dbg !3273

if.then:                                          ; preds = %do.end
  %7 = load i32, i32* %ret, align 4, !dbg !3274
  %conv = sext i32 %7 to i64, !dbg !3274
  store i64 %conv, i64* %retval, align 8, !dbg !3275
  br label %return, !dbg !3275

if.end:                                           ; preds = %do.end
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !3276
  %9 = load i32, i32* %temperature, align 4, !dbg !3277
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %9) #6, !dbg !3278
  %conv2 = sext i32 %call1 to i64, !dbg !3278
  store i64 %conv2, i64* %retval, align 8, !dbg !3279
  br label %return, !dbg !3279

return:                                           ; preds = %if.end, %if.then
  %10 = load i64, i64* %retval, align 8, !dbg !3280
  ret i64 %10, !dbg !3280
}

; Function Attrs: noredzone
declare dso_local i32 @thermal_zone_get_temp(%struct.thermal_zone_device*, i32*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @policy_show(%struct.device* %dev, %struct.device_attribute* %devattr, i8* %buf) #0 !dbg !3281 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %devattr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %tz = alloca %struct.thermal_zone_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.thermal_zone_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3282, metadata !DIExpression()), !dbg !3283
  store %struct.device_attribute* %devattr, %struct.device_attribute** %devattr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %devattr.addr, metadata !3284, metadata !DIExpression()), !dbg !3285
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3286, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tz, metadata !3288, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3290, metadata !DIExpression()), !dbg !3292
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3292
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3292
  store i8* %1, i8** %__mptr, align 8, !dbg !3292
  br label %do.body, !dbg !3292

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3293

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3292
  %add.ptr = getelementptr i8, i8* %2, i64 -24, !dbg !3292
  %3 = bitcast i8* %add.ptr to %struct.thermal_zone_device*, !dbg !3292
  store %struct.thermal_zone_device* %3, %struct.thermal_zone_device** %tmp, align 8, !dbg !3293
  %4 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tmp, align 8, !dbg !3292
  store %struct.thermal_zone_device* %4, %struct.thermal_zone_device** %tz, align 8, !dbg !3289
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !3295
  %6 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3296
  %governor = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %6, i32 0, i32 23, !dbg !3297
  %7 = load %struct.thermal_governor*, %struct.thermal_governor** %governor, align 8, !dbg !3297
  %name = getelementptr inbounds %struct.thermal_governor, %struct.thermal_governor* %7, i32 0, i32 0, !dbg !3298
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %name, i64 0, i64 0, !dbg !3296
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %arraydecay) #6, !dbg !3299
  %conv = sext i32 %call to i64, !dbg !3299
  ret i64 %conv, !dbg !3300
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @policy_store(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %count) #0 !dbg !3301 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %tz = alloca %struct.thermal_zone_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.thermal_zone_device*, align 8
  %name = alloca [20 x i8], align 16
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3302, metadata !DIExpression()), !dbg !3303
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3304, metadata !DIExpression()), !dbg !3305
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3306, metadata !DIExpression()), !dbg !3307
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !3308, metadata !DIExpression()), !dbg !3309
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tz, metadata !3310, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3312, metadata !DIExpression()), !dbg !3314
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3314
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3314
  store i8* %1, i8** %__mptr, align 8, !dbg !3314
  br label %do.body, !dbg !3314

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3315

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3314
  %add.ptr = getelementptr i8, i8* %2, i64 -24, !dbg !3314
  %3 = bitcast i8* %add.ptr to %struct.thermal_zone_device*, !dbg !3314
  store %struct.thermal_zone_device* %3, %struct.thermal_zone_device** %tmp, align 8, !dbg !3315
  %4 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tmp, align 8, !dbg !3314
  store %struct.thermal_zone_device* %4, %struct.thermal_zone_device** %tz, align 8, !dbg !3311
  call void @llvm.dbg.declare(metadata [20 x i8]* %name, metadata !3317, metadata !DIExpression()), !dbg !3318
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3319, metadata !DIExpression()), !dbg !3320
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %name, i64 0, i64 0, !dbg !3321
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !3322
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %5) #6, !dbg !3323
  %6 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3324
  %arraydecay1 = getelementptr inbounds [20 x i8], [20 x i8]* %name, i64 0, i64 0, !dbg !3325
  %call2 = call i32 @thermal_zone_device_set_policy(%struct.thermal_zone_device* %6, i8* %arraydecay1) #6, !dbg !3326
  store i32 %call2, i32* %ret, align 4, !dbg !3327
  %7 = load i32, i32* %ret, align 4, !dbg !3328
  %tobool = icmp ne i32 %7, 0, !dbg !3328
  br i1 %tobool, label %if.end, label %if.then, !dbg !3330

if.then:                                          ; preds = %do.end
  %8 = load i64, i64* %count.addr, align 8, !dbg !3331
  %conv = trunc i64 %8 to i32, !dbg !3331
  store i32 %conv, i32* %ret, align 4, !dbg !3332
  br label %if.end, !dbg !3333

if.end:                                           ; preds = %if.then, %do.end
  %9 = load i32, i32* %ret, align 4, !dbg !3334
  %conv3 = sext i32 %9 to i64, !dbg !3334
  ret i64 %conv3, !dbg !3335
}

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @thermal_zone_device_set_policy(%struct.thermal_zone_device*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @available_policies_show(%struct.device* %dev, %struct.device_attribute* %devattr, i8* %buf) #0 !dbg !3336 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %devattr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3337, metadata !DIExpression()), !dbg !3338
  store %struct.device_attribute* %devattr, %struct.device_attribute** %devattr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %devattr.addr, metadata !3339, metadata !DIExpression()), !dbg !3340
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3341, metadata !DIExpression()), !dbg !3342
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !3343
  %call = call i32 @thermal_build_list_of_policies(i8* %0) #6, !dbg !3344
  %conv = sext i32 %call to i64, !dbg !3344
  ret i64 %conv, !dbg !3345
}

; Function Attrs: noredzone
declare dso_local i32 @thermal_build_list_of_policies(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @sustainable_power_show(%struct.device* %dev, %struct.device_attribute* %devattr, i8* %buf) #0 !dbg !3346 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %devattr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %tz = alloca %struct.thermal_zone_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.thermal_zone_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3347, metadata !DIExpression()), !dbg !3348
  store %struct.device_attribute* %devattr, %struct.device_attribute** %devattr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %devattr.addr, metadata !3349, metadata !DIExpression()), !dbg !3350
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3351, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tz, metadata !3353, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3355, metadata !DIExpression()), !dbg !3357
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3357
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3357
  store i8* %1, i8** %__mptr, align 8, !dbg !3357
  br label %do.body, !dbg !3357

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3358

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3357
  %add.ptr = getelementptr i8, i8* %2, i64 -24, !dbg !3357
  %3 = bitcast i8* %add.ptr to %struct.thermal_zone_device*, !dbg !3357
  store %struct.thermal_zone_device* %3, %struct.thermal_zone_device** %tmp, align 8, !dbg !3358
  %4 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tmp, align 8, !dbg !3357
  store %struct.thermal_zone_device* %4, %struct.thermal_zone_device** %tz, align 8, !dbg !3354
  %5 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3360
  %tzp = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %5, i32 0, i32 22, !dbg !3362
  %6 = load %struct.thermal_zone_params*, %struct.thermal_zone_params** %tzp, align 8, !dbg !3362
  %tobool = icmp ne %struct.thermal_zone_params* %6, null, !dbg !3360
  br i1 %tobool, label %if.then, label %if.else, !dbg !3363

if.then:                                          ; preds = %do.end
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !3364
  %8 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3365
  %tzp1 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %8, i32 0, i32 22, !dbg !3366
  %9 = load %struct.thermal_zone_params*, %struct.thermal_zone_params** %tzp1, align 8, !dbg !3366
  %sustainable_power = getelementptr inbounds %struct.thermal_zone_params, %struct.thermal_zone_params* %9, i32 0, i32 4, !dbg !3367
  %10 = load i32, i32* %sustainable_power, align 8, !dbg !3367
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %10) #6, !dbg !3368
  %conv = sext i32 %call to i64, !dbg !3368
  store i64 %conv, i64* %retval, align 8, !dbg !3369
  br label %return, !dbg !3369

if.else:                                          ; preds = %do.end
  store i64 -5, i64* %retval, align 8, !dbg !3370
  br label %return, !dbg !3370

return:                                           ; preds = %if.else, %if.then
  %11 = load i64, i64* %retval, align 8, !dbg !3371
  ret i64 %11, !dbg !3371
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @sustainable_power_store(%struct.device* %dev, %struct.device_attribute* %devattr, i8* %buf, i64 %count) #0 !dbg !3372 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %devattr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %tz = alloca %struct.thermal_zone_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.thermal_zone_device*, align 8
  %sustainable_power = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3373, metadata !DIExpression()), !dbg !3374
  store %struct.device_attribute* %devattr, %struct.device_attribute** %devattr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %devattr.addr, metadata !3375, metadata !DIExpression()), !dbg !3376
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3377, metadata !DIExpression()), !dbg !3378
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !3379, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tz, metadata !3381, metadata !DIExpression()), !dbg !3382
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3383, metadata !DIExpression()), !dbg !3385
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3385
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3385
  store i8* %1, i8** %__mptr, align 8, !dbg !3385
  br label %do.body, !dbg !3385

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3386

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3385
  %add.ptr = getelementptr i8, i8* %2, i64 -24, !dbg !3385
  %3 = bitcast i8* %add.ptr to %struct.thermal_zone_device*, !dbg !3385
  store %struct.thermal_zone_device* %3, %struct.thermal_zone_device** %tmp, align 8, !dbg !3386
  %4 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tmp, align 8, !dbg !3385
  store %struct.thermal_zone_device* %4, %struct.thermal_zone_device** %tz, align 8, !dbg !3382
  call void @llvm.dbg.declare(metadata i32* %sustainable_power, metadata !3388, metadata !DIExpression()), !dbg !3389
  %5 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3390
  %tzp = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %5, i32 0, i32 22, !dbg !3392
  %6 = load %struct.thermal_zone_params*, %struct.thermal_zone_params** %tzp, align 8, !dbg !3392
  %tobool = icmp ne %struct.thermal_zone_params* %6, null, !dbg !3390
  br i1 %tobool, label %if.end, label %if.then, !dbg !3393

if.then:                                          ; preds = %do.end
  store i64 -5, i64* %retval, align 8, !dbg !3394
  br label %return, !dbg !3394

if.end:                                           ; preds = %do.end
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !3395
  %call = call i32 @kstrtou32(i8* %7, i32 10, i32* %sustainable_power) #6, !dbg !3397
  %tobool1 = icmp ne i32 %call, 0, !dbg !3397
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !3398

if.then2:                                         ; preds = %if.end
  store i64 -22, i64* %retval, align 8, !dbg !3399
  br label %return, !dbg !3399

if.end3:                                          ; preds = %if.end
  %8 = load i32, i32* %sustainable_power, align 4, !dbg !3400
  %9 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3401
  %tzp4 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %9, i32 0, i32 22, !dbg !3402
  %10 = load %struct.thermal_zone_params*, %struct.thermal_zone_params** %tzp4, align 8, !dbg !3402
  %sustainable_power5 = getelementptr inbounds %struct.thermal_zone_params, %struct.thermal_zone_params* %10, i32 0, i32 4, !dbg !3403
  store i32 %8, i32* %sustainable_power5, align 8, !dbg !3404
  %11 = load i64, i64* %count.addr, align 8, !dbg !3405
  store i64 %11, i64* %retval, align 8, !dbg !3406
  br label %return, !dbg !3406

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %12 = load i64, i64* %retval, align 8, !dbg !3407
  ret i64 %12, !dbg !3407
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @kstrtou32(i8* %s, i32 %base, i32* %res) #0 !dbg !3408 {
entry:
  %s.addr = alloca i8*, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca i32*, align 8
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !3412, metadata !DIExpression()), !dbg !3413
  store i32 %base, i32* %base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %base.addr, metadata !3414, metadata !DIExpression()), !dbg !3415
  store i32* %res, i32** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %res.addr, metadata !3416, metadata !DIExpression()), !dbg !3417
  %0 = load i8*, i8** %s.addr, align 8, !dbg !3418
  %1 = load i32, i32* %base.addr, align 4, !dbg !3419
  %2 = load i32*, i32** %res.addr, align 8, !dbg !3420
  %call = call i32 @kstrtouint(i8* %0, i32 %1, i32* %2) #6, !dbg !3421
  ret i32 %call, !dbg !3422
}

; Function Attrs: noredzone
declare dso_local i32 @kstrtouint(i8*, i32, i32*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @k_po_show(%struct.device* %dev, %struct.device_attribute* %devattr, i8* %buf) #0 !dbg !3423 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %devattr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %tz = alloca %struct.thermal_zone_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.thermal_zone_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3424, metadata !DIExpression()), !dbg !3425
  store %struct.device_attribute* %devattr, %struct.device_attribute** %devattr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %devattr.addr, metadata !3426, metadata !DIExpression()), !dbg !3425
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3427, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tz, metadata !3428, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3429, metadata !DIExpression()), !dbg !3431
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3431
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3431
  store i8* %1, i8** %__mptr, align 8, !dbg !3431
  br label %do.body, !dbg !3431

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3432

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3431
  %add.ptr = getelementptr i8, i8* %2, i64 -24, !dbg !3431
  %3 = bitcast i8* %add.ptr to %struct.thermal_zone_device*, !dbg !3431
  store %struct.thermal_zone_device* %3, %struct.thermal_zone_device** %tmp, align 8, !dbg !3432
  %4 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tmp, align 8, !dbg !3431
  store %struct.thermal_zone_device* %4, %struct.thermal_zone_device** %tz, align 8, !dbg !3425
  %5 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3434
  %tzp = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %5, i32 0, i32 22, !dbg !3434
  %6 = load %struct.thermal_zone_params*, %struct.thermal_zone_params** %tzp, align 8, !dbg !3434
  %tobool = icmp ne %struct.thermal_zone_params* %6, null, !dbg !3434
  br i1 %tobool, label %if.then, label %if.else, !dbg !3425

if.then:                                          ; preds = %do.end
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !3434
  %8 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3434
  %tzp1 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %8, i32 0, i32 22, !dbg !3434
  %9 = load %struct.thermal_zone_params*, %struct.thermal_zone_params** %tzp1, align 8, !dbg !3434
  %k_po = getelementptr inbounds %struct.thermal_zone_params, %struct.thermal_zone_params* %9, i32 0, i32 5, !dbg !3434
  %10 = load i32, i32* %k_po, align 4, !dbg !3434
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %10) #6, !dbg !3434
  %conv = sext i32 %call to i64, !dbg !3434
  store i64 %conv, i64* %retval, align 8, !dbg !3434
  br label %return, !dbg !3434

if.else:                                          ; preds = %do.end
  store i64 -5, i64* %retval, align 8, !dbg !3434
  br label %return, !dbg !3434

return:                                           ; preds = %if.else, %if.then
  %11 = load i64, i64* %retval, align 8, !dbg !3425
  ret i64 %11, !dbg !3425
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @k_po_store(%struct.device* %dev, %struct.device_attribute* %devattr, i8* %buf, i64 %count) #0 !dbg !3436 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %devattr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %tz = alloca %struct.thermal_zone_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.thermal_zone_device*, align 8
  %value = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3437, metadata !DIExpression()), !dbg !3438
  store %struct.device_attribute* %devattr, %struct.device_attribute** %devattr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %devattr.addr, metadata !3439, metadata !DIExpression()), !dbg !3438
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3440, metadata !DIExpression()), !dbg !3438
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !3441, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tz, metadata !3442, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3443, metadata !DIExpression()), !dbg !3445
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3445
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3445
  store i8* %1, i8** %__mptr, align 8, !dbg !3445
  br label %do.body, !dbg !3445

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3446

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3445
  %add.ptr = getelementptr i8, i8* %2, i64 -24, !dbg !3445
  %3 = bitcast i8* %add.ptr to %struct.thermal_zone_device*, !dbg !3445
  store %struct.thermal_zone_device* %3, %struct.thermal_zone_device** %tmp, align 8, !dbg !3446
  %4 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tmp, align 8, !dbg !3445
  store %struct.thermal_zone_device* %4, %struct.thermal_zone_device** %tz, align 8, !dbg !3438
  call void @llvm.dbg.declare(metadata i32* %value, metadata !3448, metadata !DIExpression()), !dbg !3438
  %5 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3449
  %tzp = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %5, i32 0, i32 22, !dbg !3449
  %6 = load %struct.thermal_zone_params*, %struct.thermal_zone_params** %tzp, align 8, !dbg !3449
  %tobool = icmp ne %struct.thermal_zone_params* %6, null, !dbg !3449
  br i1 %tobool, label %if.end, label %if.then, !dbg !3438

if.then:                                          ; preds = %do.end
  store i64 -5, i64* %retval, align 8, !dbg !3449
  br label %return, !dbg !3449

if.end:                                           ; preds = %do.end
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !3451
  %call = call i32 @kstrtos32(i8* %7, i32 10, i32* %value) #6, !dbg !3451
  %tobool1 = icmp ne i32 %call, 0, !dbg !3451
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !3438

if.then2:                                         ; preds = %if.end
  store i64 -22, i64* %retval, align 8, !dbg !3451
  br label %return, !dbg !3451

if.end3:                                          ; preds = %if.end
  %8 = load i32, i32* %value, align 4, !dbg !3438
  %9 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3438
  %tzp4 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %9, i32 0, i32 22, !dbg !3438
  %10 = load %struct.thermal_zone_params*, %struct.thermal_zone_params** %tzp4, align 8, !dbg !3438
  %k_po = getelementptr inbounds %struct.thermal_zone_params, %struct.thermal_zone_params* %10, i32 0, i32 5, !dbg !3438
  store i32 %8, i32* %k_po, align 4, !dbg !3438
  %11 = load i64, i64* %count.addr, align 8, !dbg !3438
  store i64 %11, i64* %retval, align 8, !dbg !3438
  br label %return, !dbg !3438

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %12 = load i64, i64* %retval, align 8, !dbg !3438
  ret i64 %12, !dbg !3438
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @kstrtos32(i8* %s, i32 %base, i32* %res) #0 !dbg !3453 {
entry:
  %s.addr = alloca i8*, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca i32*, align 8
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !3457, metadata !DIExpression()), !dbg !3458
  store i32 %base, i32* %base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %base.addr, metadata !3459, metadata !DIExpression()), !dbg !3460
  store i32* %res, i32** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %res.addr, metadata !3461, metadata !DIExpression()), !dbg !3462
  %0 = load i8*, i8** %s.addr, align 8, !dbg !3463
  %1 = load i32, i32* %base.addr, align 4, !dbg !3464
  %2 = load i32*, i32** %res.addr, align 8, !dbg !3465
  %call = call i32 @kstrtoint(i8* %0, i32 %1, i32* %2) #6, !dbg !3466
  ret i32 %call, !dbg !3467
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @k_pu_show(%struct.device* %dev, %struct.device_attribute* %devattr, i8* %buf) #0 !dbg !3468 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %devattr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %tz = alloca %struct.thermal_zone_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.thermal_zone_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3469, metadata !DIExpression()), !dbg !3470
  store %struct.device_attribute* %devattr, %struct.device_attribute** %devattr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %devattr.addr, metadata !3471, metadata !DIExpression()), !dbg !3470
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3472, metadata !DIExpression()), !dbg !3470
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tz, metadata !3473, metadata !DIExpression()), !dbg !3470
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3474, metadata !DIExpression()), !dbg !3476
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3476
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3476
  store i8* %1, i8** %__mptr, align 8, !dbg !3476
  br label %do.body, !dbg !3476

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3477

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3476
  %add.ptr = getelementptr i8, i8* %2, i64 -24, !dbg !3476
  %3 = bitcast i8* %add.ptr to %struct.thermal_zone_device*, !dbg !3476
  store %struct.thermal_zone_device* %3, %struct.thermal_zone_device** %tmp, align 8, !dbg !3477
  %4 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tmp, align 8, !dbg !3476
  store %struct.thermal_zone_device* %4, %struct.thermal_zone_device** %tz, align 8, !dbg !3470
  %5 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3479
  %tzp = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %5, i32 0, i32 22, !dbg !3479
  %6 = load %struct.thermal_zone_params*, %struct.thermal_zone_params** %tzp, align 8, !dbg !3479
  %tobool = icmp ne %struct.thermal_zone_params* %6, null, !dbg !3479
  br i1 %tobool, label %if.then, label %if.else, !dbg !3470

if.then:                                          ; preds = %do.end
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !3479
  %8 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3479
  %tzp1 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %8, i32 0, i32 22, !dbg !3479
  %9 = load %struct.thermal_zone_params*, %struct.thermal_zone_params** %tzp1, align 8, !dbg !3479
  %k_pu = getelementptr inbounds %struct.thermal_zone_params, %struct.thermal_zone_params* %9, i32 0, i32 6, !dbg !3479
  %10 = load i32, i32* %k_pu, align 8, !dbg !3479
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %10) #6, !dbg !3479
  %conv = sext i32 %call to i64, !dbg !3479
  store i64 %conv, i64* %retval, align 8, !dbg !3479
  br label %return, !dbg !3479

if.else:                                          ; preds = %do.end
  store i64 -5, i64* %retval, align 8, !dbg !3479
  br label %return, !dbg !3479

return:                                           ; preds = %if.else, %if.then
  %11 = load i64, i64* %retval, align 8, !dbg !3470
  ret i64 %11, !dbg !3470
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @k_pu_store(%struct.device* %dev, %struct.device_attribute* %devattr, i8* %buf, i64 %count) #0 !dbg !3481 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %devattr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %tz = alloca %struct.thermal_zone_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.thermal_zone_device*, align 8
  %value = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3482, metadata !DIExpression()), !dbg !3483
  store %struct.device_attribute* %devattr, %struct.device_attribute** %devattr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %devattr.addr, metadata !3484, metadata !DIExpression()), !dbg !3483
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3485, metadata !DIExpression()), !dbg !3483
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !3486, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tz, metadata !3487, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3488, metadata !DIExpression()), !dbg !3490
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3490
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3490
  store i8* %1, i8** %__mptr, align 8, !dbg !3490
  br label %do.body, !dbg !3490

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3491

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3490
  %add.ptr = getelementptr i8, i8* %2, i64 -24, !dbg !3490
  %3 = bitcast i8* %add.ptr to %struct.thermal_zone_device*, !dbg !3490
  store %struct.thermal_zone_device* %3, %struct.thermal_zone_device** %tmp, align 8, !dbg !3491
  %4 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tmp, align 8, !dbg !3490
  store %struct.thermal_zone_device* %4, %struct.thermal_zone_device** %tz, align 8, !dbg !3483
  call void @llvm.dbg.declare(metadata i32* %value, metadata !3493, metadata !DIExpression()), !dbg !3483
  %5 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3494
  %tzp = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %5, i32 0, i32 22, !dbg !3494
  %6 = load %struct.thermal_zone_params*, %struct.thermal_zone_params** %tzp, align 8, !dbg !3494
  %tobool = icmp ne %struct.thermal_zone_params* %6, null, !dbg !3494
  br i1 %tobool, label %if.end, label %if.then, !dbg !3483

if.then:                                          ; preds = %do.end
  store i64 -5, i64* %retval, align 8, !dbg !3494
  br label %return, !dbg !3494

if.end:                                           ; preds = %do.end
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !3496
  %call = call i32 @kstrtos32(i8* %7, i32 10, i32* %value) #6, !dbg !3496
  %tobool1 = icmp ne i32 %call, 0, !dbg !3496
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !3483

if.then2:                                         ; preds = %if.end
  store i64 -22, i64* %retval, align 8, !dbg !3496
  br label %return, !dbg !3496

if.end3:                                          ; preds = %if.end
  %8 = load i32, i32* %value, align 4, !dbg !3483
  %9 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3483
  %tzp4 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %9, i32 0, i32 22, !dbg !3483
  %10 = load %struct.thermal_zone_params*, %struct.thermal_zone_params** %tzp4, align 8, !dbg !3483
  %k_pu = getelementptr inbounds %struct.thermal_zone_params, %struct.thermal_zone_params* %10, i32 0, i32 6, !dbg !3483
  store i32 %8, i32* %k_pu, align 8, !dbg !3483
  %11 = load i64, i64* %count.addr, align 8, !dbg !3483
  store i64 %11, i64* %retval, align 8, !dbg !3483
  br label %return, !dbg !3483

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %12 = load i64, i64* %retval, align 8, !dbg !3483
  ret i64 %12, !dbg !3483
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @k_i_show(%struct.device* %dev, %struct.device_attribute* %devattr, i8* %buf) #0 !dbg !3498 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %devattr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %tz = alloca %struct.thermal_zone_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.thermal_zone_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3499, metadata !DIExpression()), !dbg !3500
  store %struct.device_attribute* %devattr, %struct.device_attribute** %devattr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %devattr.addr, metadata !3501, metadata !DIExpression()), !dbg !3500
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3502, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tz, metadata !3503, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3504, metadata !DIExpression()), !dbg !3506
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3506
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3506
  store i8* %1, i8** %__mptr, align 8, !dbg !3506
  br label %do.body, !dbg !3506

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3507

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3506
  %add.ptr = getelementptr i8, i8* %2, i64 -24, !dbg !3506
  %3 = bitcast i8* %add.ptr to %struct.thermal_zone_device*, !dbg !3506
  store %struct.thermal_zone_device* %3, %struct.thermal_zone_device** %tmp, align 8, !dbg !3507
  %4 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tmp, align 8, !dbg !3506
  store %struct.thermal_zone_device* %4, %struct.thermal_zone_device** %tz, align 8, !dbg !3500
  %5 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3509
  %tzp = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %5, i32 0, i32 22, !dbg !3509
  %6 = load %struct.thermal_zone_params*, %struct.thermal_zone_params** %tzp, align 8, !dbg !3509
  %tobool = icmp ne %struct.thermal_zone_params* %6, null, !dbg !3509
  br i1 %tobool, label %if.then, label %if.else, !dbg !3500

if.then:                                          ; preds = %do.end
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !3509
  %8 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3509
  %tzp1 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %8, i32 0, i32 22, !dbg !3509
  %9 = load %struct.thermal_zone_params*, %struct.thermal_zone_params** %tzp1, align 8, !dbg !3509
  %k_i = getelementptr inbounds %struct.thermal_zone_params, %struct.thermal_zone_params* %9, i32 0, i32 7, !dbg !3509
  %10 = load i32, i32* %k_i, align 4, !dbg !3509
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %10) #6, !dbg !3509
  %conv = sext i32 %call to i64, !dbg !3509
  store i64 %conv, i64* %retval, align 8, !dbg !3509
  br label %return, !dbg !3509

if.else:                                          ; preds = %do.end
  store i64 -5, i64* %retval, align 8, !dbg !3509
  br label %return, !dbg !3509

return:                                           ; preds = %if.else, %if.then
  %11 = load i64, i64* %retval, align 8, !dbg !3500
  ret i64 %11, !dbg !3500
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @k_i_store(%struct.device* %dev, %struct.device_attribute* %devattr, i8* %buf, i64 %count) #0 !dbg !3511 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %devattr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %tz = alloca %struct.thermal_zone_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.thermal_zone_device*, align 8
  %value = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3512, metadata !DIExpression()), !dbg !3513
  store %struct.device_attribute* %devattr, %struct.device_attribute** %devattr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %devattr.addr, metadata !3514, metadata !DIExpression()), !dbg !3513
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3515, metadata !DIExpression()), !dbg !3513
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !3516, metadata !DIExpression()), !dbg !3513
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tz, metadata !3517, metadata !DIExpression()), !dbg !3513
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3518, metadata !DIExpression()), !dbg !3520
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3520
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3520
  store i8* %1, i8** %__mptr, align 8, !dbg !3520
  br label %do.body, !dbg !3520

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3521

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3520
  %add.ptr = getelementptr i8, i8* %2, i64 -24, !dbg !3520
  %3 = bitcast i8* %add.ptr to %struct.thermal_zone_device*, !dbg !3520
  store %struct.thermal_zone_device* %3, %struct.thermal_zone_device** %tmp, align 8, !dbg !3521
  %4 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tmp, align 8, !dbg !3520
  store %struct.thermal_zone_device* %4, %struct.thermal_zone_device** %tz, align 8, !dbg !3513
  call void @llvm.dbg.declare(metadata i32* %value, metadata !3523, metadata !DIExpression()), !dbg !3513
  %5 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3524
  %tzp = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %5, i32 0, i32 22, !dbg !3524
  %6 = load %struct.thermal_zone_params*, %struct.thermal_zone_params** %tzp, align 8, !dbg !3524
  %tobool = icmp ne %struct.thermal_zone_params* %6, null, !dbg !3524
  br i1 %tobool, label %if.end, label %if.then, !dbg !3513

if.then:                                          ; preds = %do.end
  store i64 -5, i64* %retval, align 8, !dbg !3524
  br label %return, !dbg !3524

if.end:                                           ; preds = %do.end
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !3526
  %call = call i32 @kstrtos32(i8* %7, i32 10, i32* %value) #6, !dbg !3526
  %tobool1 = icmp ne i32 %call, 0, !dbg !3526
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !3513

if.then2:                                         ; preds = %if.end
  store i64 -22, i64* %retval, align 8, !dbg !3526
  br label %return, !dbg !3526

if.end3:                                          ; preds = %if.end
  %8 = load i32, i32* %value, align 4, !dbg !3513
  %9 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3513
  %tzp4 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %9, i32 0, i32 22, !dbg !3513
  %10 = load %struct.thermal_zone_params*, %struct.thermal_zone_params** %tzp4, align 8, !dbg !3513
  %k_i = getelementptr inbounds %struct.thermal_zone_params, %struct.thermal_zone_params* %10, i32 0, i32 7, !dbg !3513
  store i32 %8, i32* %k_i, align 4, !dbg !3513
  %11 = load i64, i64* %count.addr, align 8, !dbg !3513
  store i64 %11, i64* %retval, align 8, !dbg !3513
  br label %return, !dbg !3513

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %12 = load i64, i64* %retval, align 8, !dbg !3513
  ret i64 %12, !dbg !3513
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @k_d_show(%struct.device* %dev, %struct.device_attribute* %devattr, i8* %buf) #0 !dbg !3528 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %devattr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %tz = alloca %struct.thermal_zone_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.thermal_zone_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3529, metadata !DIExpression()), !dbg !3530
  store %struct.device_attribute* %devattr, %struct.device_attribute** %devattr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %devattr.addr, metadata !3531, metadata !DIExpression()), !dbg !3530
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3532, metadata !DIExpression()), !dbg !3530
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tz, metadata !3533, metadata !DIExpression()), !dbg !3530
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3534, metadata !DIExpression()), !dbg !3536
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3536
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3536
  store i8* %1, i8** %__mptr, align 8, !dbg !3536
  br label %do.body, !dbg !3536

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3537

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3536
  %add.ptr = getelementptr i8, i8* %2, i64 -24, !dbg !3536
  %3 = bitcast i8* %add.ptr to %struct.thermal_zone_device*, !dbg !3536
  store %struct.thermal_zone_device* %3, %struct.thermal_zone_device** %tmp, align 8, !dbg !3537
  %4 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tmp, align 8, !dbg !3536
  store %struct.thermal_zone_device* %4, %struct.thermal_zone_device** %tz, align 8, !dbg !3530
  %5 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3539
  %tzp = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %5, i32 0, i32 22, !dbg !3539
  %6 = load %struct.thermal_zone_params*, %struct.thermal_zone_params** %tzp, align 8, !dbg !3539
  %tobool = icmp ne %struct.thermal_zone_params* %6, null, !dbg !3539
  br i1 %tobool, label %if.then, label %if.else, !dbg !3530

if.then:                                          ; preds = %do.end
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !3539
  %8 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3539
  %tzp1 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %8, i32 0, i32 22, !dbg !3539
  %9 = load %struct.thermal_zone_params*, %struct.thermal_zone_params** %tzp1, align 8, !dbg !3539
  %k_d = getelementptr inbounds %struct.thermal_zone_params, %struct.thermal_zone_params* %9, i32 0, i32 8, !dbg !3539
  %10 = load i32, i32* %k_d, align 8, !dbg !3539
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %10) #6, !dbg !3539
  %conv = sext i32 %call to i64, !dbg !3539
  store i64 %conv, i64* %retval, align 8, !dbg !3539
  br label %return, !dbg !3539

if.else:                                          ; preds = %do.end
  store i64 -5, i64* %retval, align 8, !dbg !3539
  br label %return, !dbg !3539

return:                                           ; preds = %if.else, %if.then
  %11 = load i64, i64* %retval, align 8, !dbg !3530
  ret i64 %11, !dbg !3530
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @k_d_store(%struct.device* %dev, %struct.device_attribute* %devattr, i8* %buf, i64 %count) #0 !dbg !3541 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %devattr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %tz = alloca %struct.thermal_zone_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.thermal_zone_device*, align 8
  %value = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3542, metadata !DIExpression()), !dbg !3543
  store %struct.device_attribute* %devattr, %struct.device_attribute** %devattr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %devattr.addr, metadata !3544, metadata !DIExpression()), !dbg !3543
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3545, metadata !DIExpression()), !dbg !3543
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !3546, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tz, metadata !3547, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3548, metadata !DIExpression()), !dbg !3550
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3550
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3550
  store i8* %1, i8** %__mptr, align 8, !dbg !3550
  br label %do.body, !dbg !3550

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3551

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3550
  %add.ptr = getelementptr i8, i8* %2, i64 -24, !dbg !3550
  %3 = bitcast i8* %add.ptr to %struct.thermal_zone_device*, !dbg !3550
  store %struct.thermal_zone_device* %3, %struct.thermal_zone_device** %tmp, align 8, !dbg !3551
  %4 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tmp, align 8, !dbg !3550
  store %struct.thermal_zone_device* %4, %struct.thermal_zone_device** %tz, align 8, !dbg !3543
  call void @llvm.dbg.declare(metadata i32* %value, metadata !3553, metadata !DIExpression()), !dbg !3543
  %5 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3554
  %tzp = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %5, i32 0, i32 22, !dbg !3554
  %6 = load %struct.thermal_zone_params*, %struct.thermal_zone_params** %tzp, align 8, !dbg !3554
  %tobool = icmp ne %struct.thermal_zone_params* %6, null, !dbg !3554
  br i1 %tobool, label %if.end, label %if.then, !dbg !3543

if.then:                                          ; preds = %do.end
  store i64 -5, i64* %retval, align 8, !dbg !3554
  br label %return, !dbg !3554

if.end:                                           ; preds = %do.end
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !3556
  %call = call i32 @kstrtos32(i8* %7, i32 10, i32* %value) #6, !dbg !3556
  %tobool1 = icmp ne i32 %call, 0, !dbg !3556
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !3543

if.then2:                                         ; preds = %if.end
  store i64 -22, i64* %retval, align 8, !dbg !3556
  br label %return, !dbg !3556

if.end3:                                          ; preds = %if.end
  %8 = load i32, i32* %value, align 4, !dbg !3543
  %9 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3543
  %tzp4 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %9, i32 0, i32 22, !dbg !3543
  %10 = load %struct.thermal_zone_params*, %struct.thermal_zone_params** %tzp4, align 8, !dbg !3543
  %k_d = getelementptr inbounds %struct.thermal_zone_params, %struct.thermal_zone_params* %10, i32 0, i32 8, !dbg !3543
  store i32 %8, i32* %k_d, align 8, !dbg !3543
  %11 = load i64, i64* %count.addr, align 8, !dbg !3543
  store i64 %11, i64* %retval, align 8, !dbg !3543
  br label %return, !dbg !3543

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %12 = load i64, i64* %retval, align 8, !dbg !3543
  ret i64 %12, !dbg !3543
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @integral_cutoff_show(%struct.device* %dev, %struct.device_attribute* %devattr, i8* %buf) #0 !dbg !3558 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %devattr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %tz = alloca %struct.thermal_zone_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.thermal_zone_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3559, metadata !DIExpression()), !dbg !3560
  store %struct.device_attribute* %devattr, %struct.device_attribute** %devattr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %devattr.addr, metadata !3561, metadata !DIExpression()), !dbg !3560
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3562, metadata !DIExpression()), !dbg !3560
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tz, metadata !3563, metadata !DIExpression()), !dbg !3560
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3564, metadata !DIExpression()), !dbg !3566
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3566
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3566
  store i8* %1, i8** %__mptr, align 8, !dbg !3566
  br label %do.body, !dbg !3566

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3567

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3566
  %add.ptr = getelementptr i8, i8* %2, i64 -24, !dbg !3566
  %3 = bitcast i8* %add.ptr to %struct.thermal_zone_device*, !dbg !3566
  store %struct.thermal_zone_device* %3, %struct.thermal_zone_device** %tmp, align 8, !dbg !3567
  %4 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tmp, align 8, !dbg !3566
  store %struct.thermal_zone_device* %4, %struct.thermal_zone_device** %tz, align 8, !dbg !3560
  %5 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3569
  %tzp = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %5, i32 0, i32 22, !dbg !3569
  %6 = load %struct.thermal_zone_params*, %struct.thermal_zone_params** %tzp, align 8, !dbg !3569
  %tobool = icmp ne %struct.thermal_zone_params* %6, null, !dbg !3569
  br i1 %tobool, label %if.then, label %if.else, !dbg !3560

if.then:                                          ; preds = %do.end
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !3569
  %8 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3569
  %tzp1 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %8, i32 0, i32 22, !dbg !3569
  %9 = load %struct.thermal_zone_params*, %struct.thermal_zone_params** %tzp1, align 8, !dbg !3569
  %integral_cutoff = getelementptr inbounds %struct.thermal_zone_params, %struct.thermal_zone_params* %9, i32 0, i32 9, !dbg !3569
  %10 = load i32, i32* %integral_cutoff, align 4, !dbg !3569
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %10) #6, !dbg !3569
  %conv = sext i32 %call to i64, !dbg !3569
  store i64 %conv, i64* %retval, align 8, !dbg !3569
  br label %return, !dbg !3569

if.else:                                          ; preds = %do.end
  store i64 -5, i64* %retval, align 8, !dbg !3569
  br label %return, !dbg !3569

return:                                           ; preds = %if.else, %if.then
  %11 = load i64, i64* %retval, align 8, !dbg !3560
  ret i64 %11, !dbg !3560
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @integral_cutoff_store(%struct.device* %dev, %struct.device_attribute* %devattr, i8* %buf, i64 %count) #0 !dbg !3571 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %devattr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %tz = alloca %struct.thermal_zone_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.thermal_zone_device*, align 8
  %value = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3572, metadata !DIExpression()), !dbg !3573
  store %struct.device_attribute* %devattr, %struct.device_attribute** %devattr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %devattr.addr, metadata !3574, metadata !DIExpression()), !dbg !3573
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3575, metadata !DIExpression()), !dbg !3573
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !3576, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tz, metadata !3577, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3578, metadata !DIExpression()), !dbg !3580
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3580
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3580
  store i8* %1, i8** %__mptr, align 8, !dbg !3580
  br label %do.body, !dbg !3580

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3581

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3580
  %add.ptr = getelementptr i8, i8* %2, i64 -24, !dbg !3580
  %3 = bitcast i8* %add.ptr to %struct.thermal_zone_device*, !dbg !3580
  store %struct.thermal_zone_device* %3, %struct.thermal_zone_device** %tmp, align 8, !dbg !3581
  %4 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tmp, align 8, !dbg !3580
  store %struct.thermal_zone_device* %4, %struct.thermal_zone_device** %tz, align 8, !dbg !3573
  call void @llvm.dbg.declare(metadata i32* %value, metadata !3583, metadata !DIExpression()), !dbg !3573
  %5 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3584
  %tzp = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %5, i32 0, i32 22, !dbg !3584
  %6 = load %struct.thermal_zone_params*, %struct.thermal_zone_params** %tzp, align 8, !dbg !3584
  %tobool = icmp ne %struct.thermal_zone_params* %6, null, !dbg !3584
  br i1 %tobool, label %if.end, label %if.then, !dbg !3573

if.then:                                          ; preds = %do.end
  store i64 -5, i64* %retval, align 8, !dbg !3584
  br label %return, !dbg !3584

if.end:                                           ; preds = %do.end
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !3586
  %call = call i32 @kstrtos32(i8* %7, i32 10, i32* %value) #6, !dbg !3586
  %tobool1 = icmp ne i32 %call, 0, !dbg !3586
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !3573

if.then2:                                         ; preds = %if.end
  store i64 -22, i64* %retval, align 8, !dbg !3586
  br label %return, !dbg !3586

if.end3:                                          ; preds = %if.end
  %8 = load i32, i32* %value, align 4, !dbg !3573
  %9 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3573
  %tzp4 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %9, i32 0, i32 22, !dbg !3573
  %10 = load %struct.thermal_zone_params*, %struct.thermal_zone_params** %tzp4, align 8, !dbg !3573
  %integral_cutoff = getelementptr inbounds %struct.thermal_zone_params, %struct.thermal_zone_params* %10, i32 0, i32 9, !dbg !3573
  store i32 %8, i32* %integral_cutoff, align 4, !dbg !3573
  %11 = load i64, i64* %count.addr, align 8, !dbg !3573
  store i64 %11, i64* %retval, align 8, !dbg !3573
  br label %return, !dbg !3573

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %12 = load i64, i64* %retval, align 8, !dbg !3573
  ret i64 %12, !dbg !3573
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @slope_show(%struct.device* %dev, %struct.device_attribute* %devattr, i8* %buf) #0 !dbg !3588 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %devattr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %tz = alloca %struct.thermal_zone_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.thermal_zone_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3589, metadata !DIExpression()), !dbg !3590
  store %struct.device_attribute* %devattr, %struct.device_attribute** %devattr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %devattr.addr, metadata !3591, metadata !DIExpression()), !dbg !3590
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3592, metadata !DIExpression()), !dbg !3590
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tz, metadata !3593, metadata !DIExpression()), !dbg !3590
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3594, metadata !DIExpression()), !dbg !3596
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3596
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3596
  store i8* %1, i8** %__mptr, align 8, !dbg !3596
  br label %do.body, !dbg !3596

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3597

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3596
  %add.ptr = getelementptr i8, i8* %2, i64 -24, !dbg !3596
  %3 = bitcast i8* %add.ptr to %struct.thermal_zone_device*, !dbg !3596
  store %struct.thermal_zone_device* %3, %struct.thermal_zone_device** %tmp, align 8, !dbg !3597
  %4 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tmp, align 8, !dbg !3596
  store %struct.thermal_zone_device* %4, %struct.thermal_zone_device** %tz, align 8, !dbg !3590
  %5 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3599
  %tzp = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %5, i32 0, i32 22, !dbg !3599
  %6 = load %struct.thermal_zone_params*, %struct.thermal_zone_params** %tzp, align 8, !dbg !3599
  %tobool = icmp ne %struct.thermal_zone_params* %6, null, !dbg !3599
  br i1 %tobool, label %if.then, label %if.else, !dbg !3590

if.then:                                          ; preds = %do.end
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !3599
  %8 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3599
  %tzp1 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %8, i32 0, i32 22, !dbg !3599
  %9 = load %struct.thermal_zone_params*, %struct.thermal_zone_params** %tzp1, align 8, !dbg !3599
  %slope = getelementptr inbounds %struct.thermal_zone_params, %struct.thermal_zone_params* %9, i32 0, i32 10, !dbg !3599
  %10 = load i32, i32* %slope, align 8, !dbg !3599
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %10) #6, !dbg !3599
  %conv = sext i32 %call to i64, !dbg !3599
  store i64 %conv, i64* %retval, align 8, !dbg !3599
  br label %return, !dbg !3599

if.else:                                          ; preds = %do.end
  store i64 -5, i64* %retval, align 8, !dbg !3599
  br label %return, !dbg !3599

return:                                           ; preds = %if.else, %if.then
  %11 = load i64, i64* %retval, align 8, !dbg !3590
  ret i64 %11, !dbg !3590
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @slope_store(%struct.device* %dev, %struct.device_attribute* %devattr, i8* %buf, i64 %count) #0 !dbg !3601 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %devattr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %tz = alloca %struct.thermal_zone_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.thermal_zone_device*, align 8
  %value = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3602, metadata !DIExpression()), !dbg !3603
  store %struct.device_attribute* %devattr, %struct.device_attribute** %devattr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %devattr.addr, metadata !3604, metadata !DIExpression()), !dbg !3603
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3605, metadata !DIExpression()), !dbg !3603
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !3606, metadata !DIExpression()), !dbg !3603
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tz, metadata !3607, metadata !DIExpression()), !dbg !3603
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3608, metadata !DIExpression()), !dbg !3610
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3610
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3610
  store i8* %1, i8** %__mptr, align 8, !dbg !3610
  br label %do.body, !dbg !3610

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3611

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3610
  %add.ptr = getelementptr i8, i8* %2, i64 -24, !dbg !3610
  %3 = bitcast i8* %add.ptr to %struct.thermal_zone_device*, !dbg !3610
  store %struct.thermal_zone_device* %3, %struct.thermal_zone_device** %tmp, align 8, !dbg !3611
  %4 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tmp, align 8, !dbg !3610
  store %struct.thermal_zone_device* %4, %struct.thermal_zone_device** %tz, align 8, !dbg !3603
  call void @llvm.dbg.declare(metadata i32* %value, metadata !3613, metadata !DIExpression()), !dbg !3603
  %5 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3614
  %tzp = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %5, i32 0, i32 22, !dbg !3614
  %6 = load %struct.thermal_zone_params*, %struct.thermal_zone_params** %tzp, align 8, !dbg !3614
  %tobool = icmp ne %struct.thermal_zone_params* %6, null, !dbg !3614
  br i1 %tobool, label %if.end, label %if.then, !dbg !3603

if.then:                                          ; preds = %do.end
  store i64 -5, i64* %retval, align 8, !dbg !3614
  br label %return, !dbg !3614

if.end:                                           ; preds = %do.end
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !3616
  %call = call i32 @kstrtos32(i8* %7, i32 10, i32* %value) #6, !dbg !3616
  %tobool1 = icmp ne i32 %call, 0, !dbg !3616
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !3603

if.then2:                                         ; preds = %if.end
  store i64 -22, i64* %retval, align 8, !dbg !3616
  br label %return, !dbg !3616

if.end3:                                          ; preds = %if.end
  %8 = load i32, i32* %value, align 4, !dbg !3603
  %9 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3603
  %tzp4 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %9, i32 0, i32 22, !dbg !3603
  %10 = load %struct.thermal_zone_params*, %struct.thermal_zone_params** %tzp4, align 8, !dbg !3603
  %slope = getelementptr inbounds %struct.thermal_zone_params, %struct.thermal_zone_params* %10, i32 0, i32 10, !dbg !3603
  store i32 %8, i32* %slope, align 8, !dbg !3603
  %11 = load i64, i64* %count.addr, align 8, !dbg !3603
  store i64 %11, i64* %retval, align 8, !dbg !3603
  br label %return, !dbg !3603

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %12 = load i64, i64* %retval, align 8, !dbg !3603
  ret i64 %12, !dbg !3603
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @offset_show(%struct.device* %dev, %struct.device_attribute* %devattr, i8* %buf) #0 !dbg !3618 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %devattr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %tz = alloca %struct.thermal_zone_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.thermal_zone_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3619, metadata !DIExpression()), !dbg !3620
  store %struct.device_attribute* %devattr, %struct.device_attribute** %devattr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %devattr.addr, metadata !3621, metadata !DIExpression()), !dbg !3620
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3622, metadata !DIExpression()), !dbg !3620
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tz, metadata !3623, metadata !DIExpression()), !dbg !3620
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3624, metadata !DIExpression()), !dbg !3626
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3626
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3626
  store i8* %1, i8** %__mptr, align 8, !dbg !3626
  br label %do.body, !dbg !3626

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3627

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3626
  %add.ptr = getelementptr i8, i8* %2, i64 -24, !dbg !3626
  %3 = bitcast i8* %add.ptr to %struct.thermal_zone_device*, !dbg !3626
  store %struct.thermal_zone_device* %3, %struct.thermal_zone_device** %tmp, align 8, !dbg !3627
  %4 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tmp, align 8, !dbg !3626
  store %struct.thermal_zone_device* %4, %struct.thermal_zone_device** %tz, align 8, !dbg !3620
  %5 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3629
  %tzp = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %5, i32 0, i32 22, !dbg !3629
  %6 = load %struct.thermal_zone_params*, %struct.thermal_zone_params** %tzp, align 8, !dbg !3629
  %tobool = icmp ne %struct.thermal_zone_params* %6, null, !dbg !3629
  br i1 %tobool, label %if.then, label %if.else, !dbg !3620

if.then:                                          ; preds = %do.end
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !3629
  %8 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3629
  %tzp1 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %8, i32 0, i32 22, !dbg !3629
  %9 = load %struct.thermal_zone_params*, %struct.thermal_zone_params** %tzp1, align 8, !dbg !3629
  %offset = getelementptr inbounds %struct.thermal_zone_params, %struct.thermal_zone_params* %9, i32 0, i32 11, !dbg !3629
  %10 = load i32, i32* %offset, align 4, !dbg !3629
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %10) #6, !dbg !3629
  %conv = sext i32 %call to i64, !dbg !3629
  store i64 %conv, i64* %retval, align 8, !dbg !3629
  br label %return, !dbg !3629

if.else:                                          ; preds = %do.end
  store i64 -5, i64* %retval, align 8, !dbg !3629
  br label %return, !dbg !3629

return:                                           ; preds = %if.else, %if.then
  %11 = load i64, i64* %retval, align 8, !dbg !3620
  ret i64 %11, !dbg !3620
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @offset_store(%struct.device* %dev, %struct.device_attribute* %devattr, i8* %buf, i64 %count) #0 !dbg !3631 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %devattr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %tz = alloca %struct.thermal_zone_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.thermal_zone_device*, align 8
  %value = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3632, metadata !DIExpression()), !dbg !3633
  store %struct.device_attribute* %devattr, %struct.device_attribute** %devattr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %devattr.addr, metadata !3634, metadata !DIExpression()), !dbg !3633
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3635, metadata !DIExpression()), !dbg !3633
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !3636, metadata !DIExpression()), !dbg !3633
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tz, metadata !3637, metadata !DIExpression()), !dbg !3633
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3638, metadata !DIExpression()), !dbg !3640
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3640
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3640
  store i8* %1, i8** %__mptr, align 8, !dbg !3640
  br label %do.body, !dbg !3640

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3641

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3640
  %add.ptr = getelementptr i8, i8* %2, i64 -24, !dbg !3640
  %3 = bitcast i8* %add.ptr to %struct.thermal_zone_device*, !dbg !3640
  store %struct.thermal_zone_device* %3, %struct.thermal_zone_device** %tmp, align 8, !dbg !3641
  %4 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tmp, align 8, !dbg !3640
  store %struct.thermal_zone_device* %4, %struct.thermal_zone_device** %tz, align 8, !dbg !3633
  call void @llvm.dbg.declare(metadata i32* %value, metadata !3643, metadata !DIExpression()), !dbg !3633
  %5 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3644
  %tzp = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %5, i32 0, i32 22, !dbg !3644
  %6 = load %struct.thermal_zone_params*, %struct.thermal_zone_params** %tzp, align 8, !dbg !3644
  %tobool = icmp ne %struct.thermal_zone_params* %6, null, !dbg !3644
  br i1 %tobool, label %if.end, label %if.then, !dbg !3633

if.then:                                          ; preds = %do.end
  store i64 -5, i64* %retval, align 8, !dbg !3644
  br label %return, !dbg !3644

if.end:                                           ; preds = %do.end
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !3646
  %call = call i32 @kstrtos32(i8* %7, i32 10, i32* %value) #6, !dbg !3646
  %tobool1 = icmp ne i32 %call, 0, !dbg !3646
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !3633

if.then2:                                         ; preds = %if.end
  store i64 -22, i64* %retval, align 8, !dbg !3646
  br label %return, !dbg !3646

if.end3:                                          ; preds = %if.end
  %8 = load i32, i32* %value, align 4, !dbg !3633
  %9 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3633
  %tzp4 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %9, i32 0, i32 22, !dbg !3633
  %10 = load %struct.thermal_zone_params*, %struct.thermal_zone_params** %tzp4, align 8, !dbg !3633
  %offset = getelementptr inbounds %struct.thermal_zone_params, %struct.thermal_zone_params* %10, i32 0, i32 11, !dbg !3633
  store i32 %8, i32* %offset, align 4, !dbg !3633
  %11 = load i64, i64* %count.addr, align 8, !dbg !3633
  store i64 %11, i64* %retval, align 8, !dbg !3633
  br label %return, !dbg !3633

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %12 = load i64, i64* %retval, align 8, !dbg !3633
  ret i64 %12, !dbg !3633
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @mode_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3648 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %tz = alloca %struct.thermal_zone_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.thermal_zone_device*, align 8
  %enabled = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3649, metadata !DIExpression()), !dbg !3650
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3651, metadata !DIExpression()), !dbg !3652
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3653, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tz, metadata !3655, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3657, metadata !DIExpression()), !dbg !3659
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3659
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3659
  store i8* %1, i8** %__mptr, align 8, !dbg !3659
  br label %do.body, !dbg !3659

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3660

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3659
  %add.ptr = getelementptr i8, i8* %2, i64 -24, !dbg !3659
  %3 = bitcast i8* %add.ptr to %struct.thermal_zone_device*, !dbg !3659
  store %struct.thermal_zone_device* %3, %struct.thermal_zone_device** %tmp, align 8, !dbg !3660
  %4 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tmp, align 8, !dbg !3659
  store %struct.thermal_zone_device* %4, %struct.thermal_zone_device** %tz, align 8, !dbg !3656
  call void @llvm.dbg.declare(metadata i32* %enabled, metadata !3662, metadata !DIExpression()), !dbg !3663
  %5 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3664
  %call = call i32 @thermal_zone_device_is_enabled(%struct.thermal_zone_device* %5) #6, !dbg !3665
  store i32 %call, i32* %enabled, align 4, !dbg !3663
  %6 = load i8*, i8** %buf.addr, align 8, !dbg !3666
  %7 = load i32, i32* %enabled, align 4, !dbg !3667
  %tobool = icmp ne i32 %7, 0, !dbg !3667
  %8 = zext i1 %tobool to i64, !dbg !3667
  %cond = select i1 %tobool, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), !dbg !3667
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %cond) #6, !dbg !3668
  %conv = sext i32 %call1 to i64, !dbg !3668
  ret i64 %conv, !dbg !3669
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @mode_store(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %count) #0 !dbg !3670 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %tz = alloca %struct.thermal_zone_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.thermal_zone_device*, align 8
  %result = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3671, metadata !DIExpression()), !dbg !3672
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3673, metadata !DIExpression()), !dbg !3674
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3675, metadata !DIExpression()), !dbg !3676
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !3677, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tz, metadata !3679, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3681, metadata !DIExpression()), !dbg !3683
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3683
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3683
  store i8* %1, i8** %__mptr, align 8, !dbg !3683
  br label %do.body, !dbg !3683

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3684

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3683
  %add.ptr = getelementptr i8, i8* %2, i64 -24, !dbg !3683
  %3 = bitcast i8* %add.ptr to %struct.thermal_zone_device*, !dbg !3683
  store %struct.thermal_zone_device* %3, %struct.thermal_zone_device** %tmp, align 8, !dbg !3684
  %4 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tmp, align 8, !dbg !3683
  store %struct.thermal_zone_device* %4, %struct.thermal_zone_device** %tz, align 8, !dbg !3680
  call void @llvm.dbg.declare(metadata i32* %result, metadata !3686, metadata !DIExpression()), !dbg !3687
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !3688
  %call = call i32 @strncmp(i8* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i64 7) #6, !dbg !3690
  %tobool = icmp ne i32 %call, 0, !dbg !3690
  br i1 %tobool, label %if.else, label %if.then, !dbg !3691

if.then:                                          ; preds = %do.end
  %6 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3692
  %call1 = call i32 @thermal_zone_device_enable(%struct.thermal_zone_device* %6) #6, !dbg !3693
  store i32 %call1, i32* %result, align 4, !dbg !3694
  br label %if.end7, !dbg !3695

if.else:                                          ; preds = %do.end
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !3696
  %call2 = call i32 @strncmp(i8* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i64 8) #6, !dbg !3698
  %tobool3 = icmp ne i32 %call2, 0, !dbg !3698
  br i1 %tobool3, label %if.else6, label %if.then4, !dbg !3699

if.then4:                                         ; preds = %if.else
  %8 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3700
  %call5 = call i32 @thermal_zone_device_disable(%struct.thermal_zone_device* %8) #6, !dbg !3701
  store i32 %call5, i32* %result, align 4, !dbg !3702
  br label %if.end, !dbg !3703

if.else6:                                         ; preds = %if.else
  store i32 -22, i32* %result, align 4, !dbg !3704
  br label %if.end

if.end:                                           ; preds = %if.else6, %if.then4
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %9 = load i32, i32* %result, align 4, !dbg !3705
  %tobool8 = icmp ne i32 %9, 0, !dbg !3705
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !3707

if.then9:                                         ; preds = %if.end7
  %10 = load i32, i32* %result, align 4, !dbg !3708
  %conv = sext i32 %10 to i64, !dbg !3708
  store i64 %conv, i64* %retval, align 8, !dbg !3709
  br label %return, !dbg !3709

if.end10:                                         ; preds = %if.end7
  %11 = load i64, i64* %count.addr, align 8, !dbg !3710
  store i64 %11, i64* %retval, align 8, !dbg !3711
  br label %return, !dbg !3711

return:                                           ; preds = %if.end10, %if.then9
  %12 = load i64, i64* %retval, align 8, !dbg !3712
  ret i64 %12, !dbg !3712
}

; Function Attrs: noredzone
declare dso_local i32 @thermal_zone_device_is_enabled(%struct.thermal_zone_device*) #2

; Function Attrs: noredzone
declare dso_local i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: noredzone
declare dso_local i32 @thermal_zone_device_enable(%struct.thermal_zone_device*) #2

; Function Attrs: noredzone
declare dso_local i32 @thermal_zone_device_disable(%struct.thermal_zone_device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i16 @thermal_zone_passive_is_visible(%struct.kobject* %kobj, %struct.attribute* %attr, i32 %attrno) #0 !dbg !3713 {
entry:
  %retval = alloca i16, align 2
  %kobj.addr = alloca %struct.kobject*, align 8
  %attr.addr = alloca %struct.attribute*, align 8
  %attrno.addr = alloca i32, align 4
  %dev = alloca %struct.device*, align 8
  %tz = alloca %struct.thermal_zone_device*, align 8
  %trip_type = alloca i32, align 4
  %count = alloca i32, align 4
  %passive = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.thermal_zone_device*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !3714, metadata !DIExpression()), !dbg !3715
  store %struct.attribute* %attr, %struct.attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute** %attr.addr, metadata !3716, metadata !DIExpression()), !dbg !3717
  store i32 %attrno, i32* %attrno.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %attrno.addr, metadata !3718, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !3720, metadata !DIExpression()), !dbg !3721
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !3722
  %call = call %struct.device* @kobj_to_dev(%struct.kobject* %0) #6, !dbg !3723
  store %struct.device* %call, %struct.device** %dev, align 8, !dbg !3721
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tz, metadata !3724, metadata !DIExpression()), !dbg !3725
  call void @llvm.dbg.declare(metadata i32* %trip_type, metadata !3726, metadata !DIExpression()), !dbg !3727
  call void @llvm.dbg.declare(metadata i32* %count, metadata !3728, metadata !DIExpression()), !dbg !3729
  call void @llvm.dbg.declare(metadata i32* %passive, metadata !3730, metadata !DIExpression()), !dbg !3731
  store i32 0, i32* %passive, align 4, !dbg !3731
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3732, metadata !DIExpression()), !dbg !3734
  %1 = load %struct.device*, %struct.device** %dev, align 8, !dbg !3734
  %2 = bitcast %struct.device* %1 to i8*, !dbg !3734
  store i8* %2, i8** %__mptr, align 8, !dbg !3734
  br label %do.body, !dbg !3734

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3735

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !3734
  %add.ptr = getelementptr i8, i8* %3, i64 -24, !dbg !3734
  %4 = bitcast i8* %add.ptr to %struct.thermal_zone_device*, !dbg !3734
  store %struct.thermal_zone_device* %4, %struct.thermal_zone_device** %tmp, align 8, !dbg !3735
  %5 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tmp, align 8, !dbg !3734
  store %struct.thermal_zone_device* %5, %struct.thermal_zone_device** %tz, align 8, !dbg !3737
  store i32 0, i32* %count, align 4, !dbg !3738
  br label %for.cond, !dbg !3740

for.cond:                                         ; preds = %for.inc, %do.end
  %6 = load i32, i32* %count, align 4, !dbg !3741
  %7 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3743
  %trips = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %7, i32 0, i32 9, !dbg !3744
  %8 = load i32, i32* %trips, align 8, !dbg !3744
  %cmp = icmp slt i32 %6, %8, !dbg !3745
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3746

land.rhs:                                         ; preds = %for.cond
  %9 = load i32, i32* %passive, align 4, !dbg !3747
  %tobool = icmp ne i32 %9, 0, !dbg !3748
  %lnot = xor i1 %tobool, true, !dbg !3748
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %10 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ], !dbg !3749
  br i1 %10, label %for.body, label %for.end, !dbg !3750

for.body:                                         ; preds = %land.end
  %11 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3751
  %ops = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %11, i32 0, i32 21, !dbg !3753
  %12 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %ops, align 8, !dbg !3753
  %get_trip_type = getelementptr inbounds %struct.thermal_zone_device_ops, %struct.thermal_zone_device_ops* %12, i32 0, i32 5, !dbg !3754
  %13 = load i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)** %get_trip_type, align 8, !dbg !3754
  %14 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3755
  %15 = load i32, i32* %count, align 4, !dbg !3756
  %call1 = call i32 %13(%struct.thermal_zone_device* %14, i32 %15, i32* %trip_type) #6, !dbg !3751
  %16 = load i32, i32* %trip_type, align 4, !dbg !3757
  %cmp2 = icmp eq i32 %16, 1, !dbg !3759
  br i1 %cmp2, label %if.then, label %if.end, !dbg !3760

if.then:                                          ; preds = %for.body
  store i32 1, i32* %passive, align 4, !dbg !3761
  br label %if.end, !dbg !3762

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !3763

for.inc:                                          ; preds = %if.end
  %17 = load i32, i32* %count, align 4, !dbg !3764
  %inc = add i32 %17, 1, !dbg !3764
  store i32 %inc, i32* %count, align 4, !dbg !3764
  br label %for.cond, !dbg !3765, !llvm.loop !3766

for.end:                                          ; preds = %land.end
  %18 = load i32, i32* %passive, align 4, !dbg !3768
  %tobool3 = icmp ne i32 %18, 0, !dbg !3768
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !3770

if.then4:                                         ; preds = %for.end
  %19 = load %struct.attribute*, %struct.attribute** %attr.addr, align 8, !dbg !3771
  %mode = getelementptr inbounds %struct.attribute, %struct.attribute* %19, i32 0, i32 1, !dbg !3772
  %20 = load i16, i16* %mode, align 8, !dbg !3772
  store i16 %20, i16* %retval, align 2, !dbg !3773
  br label %return, !dbg !3773

if.end5:                                          ; preds = %for.end
  store i16 0, i16* %retval, align 2, !dbg !3774
  br label %return, !dbg !3774

return:                                           ; preds = %if.end5, %if.then4
  %21 = load i16, i16* %retval, align 2, !dbg !3775
  ret i16 %21, !dbg !3775
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device* @kobj_to_dev(%struct.kobject* %kobj) #0 !dbg !3776 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.device*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !3779, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3781, metadata !DIExpression()), !dbg !3783
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !3783
  %1 = bitcast %struct.kobject* %0 to i8*, !dbg !3783
  store i8* %1, i8** %__mptr, align 8, !dbg !3783
  br label %do.body, !dbg !3783

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3784

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3783
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !3783
  %3 = bitcast i8* %add.ptr to %struct.device*, !dbg !3783
  store %struct.device* %3, %struct.device** %tmp, align 8, !dbg !3784
  %4 = load %struct.device*, %struct.device** %tmp, align 8, !dbg !3783
  ret %struct.device* %4, !dbg !3786
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @passive_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3787 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %tz = alloca %struct.thermal_zone_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.thermal_zone_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3788, metadata !DIExpression()), !dbg !3789
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3790, metadata !DIExpression()), !dbg !3791
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3792, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tz, metadata !3794, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3796, metadata !DIExpression()), !dbg !3798
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3798
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3798
  store i8* %1, i8** %__mptr, align 8, !dbg !3798
  br label %do.body, !dbg !3798

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3799

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3798
  %add.ptr = getelementptr i8, i8* %2, i64 -24, !dbg !3798
  %3 = bitcast i8* %add.ptr to %struct.thermal_zone_device*, !dbg !3798
  store %struct.thermal_zone_device* %3, %struct.thermal_zone_device** %tmp, align 8, !dbg !3799
  %4 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tmp, align 8, !dbg !3798
  store %struct.thermal_zone_device* %4, %struct.thermal_zone_device** %tz, align 8, !dbg !3795
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !3801
  %6 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3802
  %forced_passive = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %6, i32 0, i32 19, !dbg !3803
  %7 = load i32, i32* %forced_passive, align 8, !dbg !3803
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %7) #6, !dbg !3804
  %conv = sext i32 %call to i64, !dbg !3804
  ret i64 %conv, !dbg !3805
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @passive_store(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %count) #0 !dbg !3806 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %tz = alloca %struct.thermal_zone_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.thermal_zone_device*, align 8
  %state = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3807, metadata !DIExpression()), !dbg !3808
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3809, metadata !DIExpression()), !dbg !3810
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3811, metadata !DIExpression()), !dbg !3812
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !3813, metadata !DIExpression()), !dbg !3814
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tz, metadata !3815, metadata !DIExpression()), !dbg !3816
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3817, metadata !DIExpression()), !dbg !3819
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3819
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3819
  store i8* %1, i8** %__mptr, align 8, !dbg !3819
  br label %do.body, !dbg !3819

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3820

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3819
  %add.ptr = getelementptr i8, i8* %2, i64 -24, !dbg !3819
  %3 = bitcast i8* %add.ptr to %struct.thermal_zone_device*, !dbg !3819
  store %struct.thermal_zone_device* %3, %struct.thermal_zone_device** %tmp, align 8, !dbg !3820
  %4 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tmp, align 8, !dbg !3819
  store %struct.thermal_zone_device* %4, %struct.thermal_zone_device** %tz, align 8, !dbg !3816
  call void @llvm.dbg.declare(metadata i32* %state, metadata !3822, metadata !DIExpression()), !dbg !3823
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !3824
  %call = call i32 (i8*, i8*, ...) @sscanf(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %state) #6, !dbg !3826
  %cmp = icmp ne i32 %call, 1, !dbg !3827
  br i1 %cmp, label %if.then, label %if.end, !dbg !3828

if.then:                                          ; preds = %do.end
  store i64 -22, i64* %retval, align 8, !dbg !3829
  br label %return, !dbg !3829

if.end:                                           ; preds = %do.end
  %6 = load i32, i32* %state, align 4, !dbg !3830
  %tobool = icmp ne i32 %6, 0, !dbg !3830
  br i1 %tobool, label %land.lhs.true, label %if.end3, !dbg !3832

land.lhs.true:                                    ; preds = %if.end
  %7 = load i32, i32* %state, align 4, !dbg !3833
  %cmp1 = icmp slt i32 %7, 1000, !dbg !3834
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !3835

if.then2:                                         ; preds = %land.lhs.true
  store i64 -22, i64* %retval, align 8, !dbg !3836
  br label %return, !dbg !3836

if.end3:                                          ; preds = %land.lhs.true, %if.end
  %8 = load i32, i32* %state, align 4, !dbg !3837
  %tobool4 = icmp ne i32 %8, 0, !dbg !3837
  br i1 %tobool4, label %land.lhs.true5, label %if.else, !dbg !3839

land.lhs.true5:                                   ; preds = %if.end3
  %9 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3840
  %forced_passive = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %9, i32 0, i32 19, !dbg !3841
  %10 = load i32, i32* %forced_passive, align 8, !dbg !3841
  %tobool6 = icmp ne i32 %10, 0, !dbg !3840
  br i1 %tobool6, label %if.else, label %if.then7, !dbg !3842

if.then7:                                         ; preds = %land.lhs.true5
  %11 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3843
  %passive_delay = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %11, i32 0, i32 11, !dbg !3846
  %12 = load i32, i32* %passive_delay, align 8, !dbg !3846
  %tobool8 = icmp ne i32 %12, 0, !dbg !3843
  br i1 %tobool8, label %if.end11, label %if.then9, !dbg !3847

if.then9:                                         ; preds = %if.then7
  %13 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3848
  %passive_delay10 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %13, i32 0, i32 11, !dbg !3849
  store i32 1000, i32* %passive_delay10, align 8, !dbg !3850
  br label %if.end11, !dbg !3848

if.end11:                                         ; preds = %if.then9, %if.then7
  %14 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3851
  call void @thermal_zone_device_rebind_exception(%struct.thermal_zone_device* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0), i64 10) #6, !dbg !3852
  br label %if.end19, !dbg !3853

if.else:                                          ; preds = %land.lhs.true5, %if.end3
  %15 = load i32, i32* %state, align 4, !dbg !3854
  %tobool12 = icmp ne i32 %15, 0, !dbg !3854
  br i1 %tobool12, label %if.end18, label %land.lhs.true13, !dbg !3856

land.lhs.true13:                                  ; preds = %if.else
  %16 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3857
  %forced_passive14 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %16, i32 0, i32 19, !dbg !3858
  %17 = load i32, i32* %forced_passive14, align 8, !dbg !3858
  %tobool15 = icmp ne i32 %17, 0, !dbg !3857
  br i1 %tobool15, label %if.then16, label %if.end18, !dbg !3859

if.then16:                                        ; preds = %land.lhs.true13
  %18 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3860
  %passive_delay17 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %18, i32 0, i32 11, !dbg !3862
  store i32 0, i32* %passive_delay17, align 8, !dbg !3863
  %19 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3864
  call void @thermal_zone_device_unbind_exception(%struct.thermal_zone_device* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0), i64 10) #6, !dbg !3865
  br label %if.end18, !dbg !3866

if.end18:                                         ; preds = %if.then16, %land.lhs.true13, %if.else
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end11
  %20 = load i32, i32* %state, align 4, !dbg !3867
  %21 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3868
  %forced_passive20 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %21, i32 0, i32 19, !dbg !3869
  store i32 %20, i32* %forced_passive20, align 8, !dbg !3870
  %22 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3871
  call void @thermal_zone_device_update(%struct.thermal_zone_device* %22, i32 0) #6, !dbg !3872
  %23 = load i64, i64* %count.addr, align 8, !dbg !3873
  store i64 %23, i64* %retval, align 8, !dbg !3874
  br label %return, !dbg !3874

return:                                           ; preds = %if.end19, %if.then2, %if.then
  %24 = load i64, i64* %retval, align 8, !dbg !3875
  ret i64 %24, !dbg !3875
}

; Function Attrs: noredzone
declare dso_local i32 @sscanf(i8*, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local void @thermal_zone_device_rebind_exception(%struct.thermal_zone_device*, i8*, i64) #2

; Function Attrs: noredzone
declare dso_local void @thermal_zone_device_unbind_exception(%struct.thermal_zone_device*, i8*, i64) #2

; Function Attrs: noredzone
declare dso_local void @thermal_zone_device_update(%struct.thermal_zone_device*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @trip_point_type_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3876 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %tz = alloca %struct.thermal_zone_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.thermal_zone_device*, align 8
  %type = alloca i32, align 4
  %trip = alloca i32, align 4
  %result = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3877, metadata !DIExpression()), !dbg !3878
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3879, metadata !DIExpression()), !dbg !3880
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3881, metadata !DIExpression()), !dbg !3882
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tz, metadata !3883, metadata !DIExpression()), !dbg !3884
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3885, metadata !DIExpression()), !dbg !3887
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3887
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3887
  store i8* %1, i8** %__mptr, align 8, !dbg !3887
  br label %do.body, !dbg !3887

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3888

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3887
  %add.ptr = getelementptr i8, i8* %2, i64 -24, !dbg !3887
  %3 = bitcast i8* %add.ptr to %struct.thermal_zone_device*, !dbg !3887
  store %struct.thermal_zone_device* %3, %struct.thermal_zone_device** %tmp, align 8, !dbg !3888
  %4 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tmp, align 8, !dbg !3887
  store %struct.thermal_zone_device* %4, %struct.thermal_zone_device** %tz, align 8, !dbg !3884
  call void @llvm.dbg.declare(metadata i32* %type, metadata !3890, metadata !DIExpression()), !dbg !3891
  call void @llvm.dbg.declare(metadata i32* %trip, metadata !3892, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.declare(metadata i32* %result, metadata !3894, metadata !DIExpression()), !dbg !3895
  %5 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3896
  %ops = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %5, i32 0, i32 21, !dbg !3898
  %6 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %ops, align 8, !dbg !3898
  %get_trip_type = getelementptr inbounds %struct.thermal_zone_device_ops, %struct.thermal_zone_device_ops* %6, i32 0, i32 5, !dbg !3899
  %7 = load i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)** %get_trip_type, align 8, !dbg !3899
  %tobool = icmp ne i32 (%struct.thermal_zone_device*, i32, i32*)* %7, null, !dbg !3896
  br i1 %tobool, label %if.end, label %if.then, !dbg !3900

if.then:                                          ; preds = %do.end
  store i64 -1, i64* %retval, align 8, !dbg !3901
  br label %return, !dbg !3901

if.end:                                           ; preds = %do.end
  %8 = load %struct.device_attribute*, %struct.device_attribute** %attr.addr, align 8, !dbg !3902
  %attr1 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %8, i32 0, i32 0, !dbg !3904
  %name = getelementptr inbounds %struct.attribute, %struct.attribute* %attr1, i32 0, i32 0, !dbg !3905
  %9 = load i8*, i8** %name, align 8, !dbg !3905
  %call = call i32 (i8*, i8*, ...) @sscanf(i8* %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0), i32* %trip) #6, !dbg !3906
  %cmp = icmp ne i32 %call, 1, !dbg !3907
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3908

if.then2:                                         ; preds = %if.end
  store i64 -22, i64* %retval, align 8, !dbg !3909
  br label %return, !dbg !3909

if.end3:                                          ; preds = %if.end
  %10 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3910
  %ops4 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %10, i32 0, i32 21, !dbg !3911
  %11 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %ops4, align 8, !dbg !3911
  %get_trip_type5 = getelementptr inbounds %struct.thermal_zone_device_ops, %struct.thermal_zone_device_ops* %11, i32 0, i32 5, !dbg !3912
  %12 = load i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)** %get_trip_type5, align 8, !dbg !3912
  %13 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3913
  %14 = load i32, i32* %trip, align 4, !dbg !3914
  %call6 = call i32 %12(%struct.thermal_zone_device* %13, i32 %14, i32* %type) #6, !dbg !3910
  store i32 %call6, i32* %result, align 4, !dbg !3915
  %15 = load i32, i32* %result, align 4, !dbg !3916
  %tobool7 = icmp ne i32 %15, 0, !dbg !3916
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !3918

if.then8:                                         ; preds = %if.end3
  %16 = load i32, i32* %result, align 4, !dbg !3919
  %conv = sext i32 %16 to i64, !dbg !3919
  store i64 %conv, i64* %retval, align 8, !dbg !3920
  br label %return, !dbg !3920

if.end9:                                          ; preds = %if.end3
  %17 = load i32, i32* %type, align 4, !dbg !3921
  switch i32 %17, label %sw.default [
    i32 3, label %sw.bb
    i32 2, label %sw.bb12
    i32 1, label %sw.bb15
    i32 0, label %sw.bb18
  ], !dbg !3922

sw.bb:                                            ; preds = %if.end9
  %18 = load i8*, i8** %buf.addr, align 8, !dbg !3923
  %call10 = call i32 (i8*, i8*, ...) @sprintf(i8* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0)) #6, !dbg !3925
  %conv11 = sext i32 %call10 to i64, !dbg !3925
  store i64 %conv11, i64* %retval, align 8, !dbg !3926
  br label %return, !dbg !3926

sw.bb12:                                          ; preds = %if.end9
  %19 = load i8*, i8** %buf.addr, align 8, !dbg !3927
  %call13 = call i32 (i8*, i8*, ...) @sprintf(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0)) #6, !dbg !3928
  %conv14 = sext i32 %call13 to i64, !dbg !3928
  store i64 %conv14, i64* %retval, align 8, !dbg !3929
  br label %return, !dbg !3929

sw.bb15:                                          ; preds = %if.end9
  %20 = load i8*, i8** %buf.addr, align 8, !dbg !3930
  %call16 = call i32 (i8*, i8*, ...) @sprintf(i8* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0)) #6, !dbg !3931
  %conv17 = sext i32 %call16 to i64, !dbg !3931
  store i64 %conv17, i64* %retval, align 8, !dbg !3932
  br label %return, !dbg !3932

sw.bb18:                                          ; preds = %if.end9
  %21 = load i8*, i8** %buf.addr, align 8, !dbg !3933
  %call19 = call i32 (i8*, i8*, ...) @sprintf(i8* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0)) #6, !dbg !3934
  %conv20 = sext i32 %call19 to i64, !dbg !3934
  store i64 %conv20, i64* %retval, align 8, !dbg !3935
  br label %return, !dbg !3935

sw.default:                                       ; preds = %if.end9
  %22 = load i8*, i8** %buf.addr, align 8, !dbg !3936
  %call21 = call i32 (i8*, i8*, ...) @sprintf(i8* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i64 0, i64 0)) #6, !dbg !3937
  %conv22 = sext i32 %call21 to i64, !dbg !3937
  store i64 %conv22, i64* %retval, align 8, !dbg !3938
  br label %return, !dbg !3938

return:                                           ; preds = %sw.default, %sw.bb18, %sw.bb15, %sw.bb12, %sw.bb, %if.then8, %if.then2, %if.then
  %23 = load i64, i64* %retval, align 8, !dbg !3939
  ret i64 %23, !dbg !3939
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @trip_point_temp_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3940 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %tz = alloca %struct.thermal_zone_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.thermal_zone_device*, align 8
  %trip = alloca i32, align 4
  %ret = alloca i32, align 4
  %temperature = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3941, metadata !DIExpression()), !dbg !3942
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3943, metadata !DIExpression()), !dbg !3944
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3945, metadata !DIExpression()), !dbg !3946
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tz, metadata !3947, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3949, metadata !DIExpression()), !dbg !3951
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3951
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3951
  store i8* %1, i8** %__mptr, align 8, !dbg !3951
  br label %do.body, !dbg !3951

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3952

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3951
  %add.ptr = getelementptr i8, i8* %2, i64 -24, !dbg !3951
  %3 = bitcast i8* %add.ptr to %struct.thermal_zone_device*, !dbg !3951
  store %struct.thermal_zone_device* %3, %struct.thermal_zone_device** %tmp, align 8, !dbg !3952
  %4 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tmp, align 8, !dbg !3951
  store %struct.thermal_zone_device* %4, %struct.thermal_zone_device** %tz, align 8, !dbg !3948
  call void @llvm.dbg.declare(metadata i32* %trip, metadata !3954, metadata !DIExpression()), !dbg !3955
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3956, metadata !DIExpression()), !dbg !3957
  call void @llvm.dbg.declare(metadata i32* %temperature, metadata !3958, metadata !DIExpression()), !dbg !3959
  %5 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3960
  %ops = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %5, i32 0, i32 21, !dbg !3962
  %6 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %ops, align 8, !dbg !3962
  %get_trip_temp = getelementptr inbounds %struct.thermal_zone_device_ops, %struct.thermal_zone_device_ops* %6, i32 0, i32 6, !dbg !3963
  %7 = load i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)** %get_trip_temp, align 8, !dbg !3963
  %tobool = icmp ne i32 (%struct.thermal_zone_device*, i32, i32*)* %7, null, !dbg !3960
  br i1 %tobool, label %if.end, label %if.then, !dbg !3964

if.then:                                          ; preds = %do.end
  store i64 -1, i64* %retval, align 8, !dbg !3965
  br label %return, !dbg !3965

if.end:                                           ; preds = %do.end
  %8 = load %struct.device_attribute*, %struct.device_attribute** %attr.addr, align 8, !dbg !3966
  %attr1 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %8, i32 0, i32 0, !dbg !3968
  %name = getelementptr inbounds %struct.attribute, %struct.attribute* %attr1, i32 0, i32 0, !dbg !3969
  %9 = load i8*, i8** %name, align 8, !dbg !3969
  %call = call i32 (i8*, i8*, ...) @sscanf(i8* %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0), i32* %trip) #6, !dbg !3970
  %cmp = icmp ne i32 %call, 1, !dbg !3971
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3972

if.then2:                                         ; preds = %if.end
  store i64 -22, i64* %retval, align 8, !dbg !3973
  br label %return, !dbg !3973

if.end3:                                          ; preds = %if.end
  %10 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3974
  %ops4 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %10, i32 0, i32 21, !dbg !3975
  %11 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %ops4, align 8, !dbg !3975
  %get_trip_temp5 = getelementptr inbounds %struct.thermal_zone_device_ops, %struct.thermal_zone_device_ops* %11, i32 0, i32 6, !dbg !3976
  %12 = load i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)** %get_trip_temp5, align 8, !dbg !3976
  %13 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !3977
  %14 = load i32, i32* %trip, align 4, !dbg !3978
  %call6 = call i32 %12(%struct.thermal_zone_device* %13, i32 %14, i32* %temperature) #6, !dbg !3974
  store i32 %call6, i32* %ret, align 4, !dbg !3979
  %15 = load i32, i32* %ret, align 4, !dbg !3980
  %tobool7 = icmp ne i32 %15, 0, !dbg !3980
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !3982

if.then8:                                         ; preds = %if.end3
  %16 = load i32, i32* %ret, align 4, !dbg !3983
  %conv = sext i32 %16 to i64, !dbg !3983
  store i64 %conv, i64* %retval, align 8, !dbg !3984
  br label %return, !dbg !3984

if.end9:                                          ; preds = %if.end3
  %17 = load i8*, i8** %buf.addr, align 8, !dbg !3985
  %18 = load i32, i32* %temperature, align 4, !dbg !3986
  %call10 = call i32 (i8*, i8*, ...) @sprintf(i8* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %18) #6, !dbg !3987
  %conv11 = sext i32 %call10 to i64, !dbg !3987
  store i64 %conv11, i64* %retval, align 8, !dbg !3988
  br label %return, !dbg !3988

return:                                           ; preds = %if.end9, %if.then8, %if.then2, %if.then
  %19 = load i64, i64* %retval, align 8, !dbg !3989
  ret i64 %19, !dbg !3989
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @trip_point_temp_store(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %count) #0 !dbg !3990 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %tz = alloca %struct.thermal_zone_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.thermal_zone_device*, align 8
  %trip = alloca i32, align 4
  %ret = alloca i32, align 4
  %temperature = alloca i32, align 4
  %hyst = alloca i32, align 4
  %type = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3991, metadata !DIExpression()), !dbg !3992
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3993, metadata !DIExpression()), !dbg !3994
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3995, metadata !DIExpression()), !dbg !3996
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !3997, metadata !DIExpression()), !dbg !3998
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tz, metadata !3999, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4001, metadata !DIExpression()), !dbg !4003
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4003
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4003
  store i8* %1, i8** %__mptr, align 8, !dbg !4003
  br label %do.body, !dbg !4003

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4004

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4003
  %add.ptr = getelementptr i8, i8* %2, i64 -24, !dbg !4003
  %3 = bitcast i8* %add.ptr to %struct.thermal_zone_device*, !dbg !4003
  store %struct.thermal_zone_device* %3, %struct.thermal_zone_device** %tmp, align 8, !dbg !4004
  %4 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tmp, align 8, !dbg !4003
  store %struct.thermal_zone_device* %4, %struct.thermal_zone_device** %tz, align 8, !dbg !4000
  call void @llvm.dbg.declare(metadata i32* %trip, metadata !4006, metadata !DIExpression()), !dbg !4007
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4008, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.declare(metadata i32* %temperature, metadata !4010, metadata !DIExpression()), !dbg !4011
  call void @llvm.dbg.declare(metadata i32* %hyst, metadata !4012, metadata !DIExpression()), !dbg !4013
  store i32 0, i32* %hyst, align 4, !dbg !4013
  call void @llvm.dbg.declare(metadata i32* %type, metadata !4014, metadata !DIExpression()), !dbg !4015
  %5 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !4016
  %ops = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %5, i32 0, i32 21, !dbg !4018
  %6 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %ops, align 8, !dbg !4018
  %set_trip_temp = getelementptr inbounds %struct.thermal_zone_device_ops, %struct.thermal_zone_device_ops* %6, i32 0, i32 7, !dbg !4019
  %7 = load i32 (%struct.thermal_zone_device*, i32, i32)*, i32 (%struct.thermal_zone_device*, i32, i32)** %set_trip_temp, align 8, !dbg !4019
  %tobool = icmp ne i32 (%struct.thermal_zone_device*, i32, i32)* %7, null, !dbg !4016
  br i1 %tobool, label %if.end, label %if.then, !dbg !4020

if.then:                                          ; preds = %do.end
  store i64 -1, i64* %retval, align 8, !dbg !4021
  br label %return, !dbg !4021

if.end:                                           ; preds = %do.end
  %8 = load %struct.device_attribute*, %struct.device_attribute** %attr.addr, align 8, !dbg !4022
  %attr1 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %8, i32 0, i32 0, !dbg !4024
  %name = getelementptr inbounds %struct.attribute, %struct.attribute* %attr1, i32 0, i32 0, !dbg !4025
  %9 = load i8*, i8** %name, align 8, !dbg !4025
  %call = call i32 (i8*, i8*, ...) @sscanf(i8* %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0), i32* %trip) #6, !dbg !4026
  %cmp = icmp ne i32 %call, 1, !dbg !4027
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4028

if.then2:                                         ; preds = %if.end
  store i64 -22, i64* %retval, align 8, !dbg !4029
  br label %return, !dbg !4029

if.end3:                                          ; preds = %if.end
  %10 = load i8*, i8** %buf.addr, align 8, !dbg !4030
  %call4 = call i32 @kstrtoint(i8* %10, i32 10, i32* %temperature) #6, !dbg !4032
  %tobool5 = icmp ne i32 %call4, 0, !dbg !4032
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !4033

if.then6:                                         ; preds = %if.end3
  store i64 -22, i64* %retval, align 8, !dbg !4034
  br label %return, !dbg !4034

if.end7:                                          ; preds = %if.end3
  %11 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !4035
  %ops8 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %11, i32 0, i32 21, !dbg !4036
  %12 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %ops8, align 8, !dbg !4036
  %set_trip_temp9 = getelementptr inbounds %struct.thermal_zone_device_ops, %struct.thermal_zone_device_ops* %12, i32 0, i32 7, !dbg !4037
  %13 = load i32 (%struct.thermal_zone_device*, i32, i32)*, i32 (%struct.thermal_zone_device*, i32, i32)** %set_trip_temp9, align 8, !dbg !4037
  %14 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !4038
  %15 = load i32, i32* %trip, align 4, !dbg !4039
  %16 = load i32, i32* %temperature, align 4, !dbg !4040
  %call10 = call i32 %13(%struct.thermal_zone_device* %14, i32 %15, i32 %16) #6, !dbg !4035
  store i32 %call10, i32* %ret, align 4, !dbg !4041
  %17 = load i32, i32* %ret, align 4, !dbg !4042
  %tobool11 = icmp ne i32 %17, 0, !dbg !4042
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !4044

if.then12:                                        ; preds = %if.end7
  %18 = load i32, i32* %ret, align 4, !dbg !4045
  %conv = sext i32 %18 to i64, !dbg !4045
  store i64 %conv, i64* %retval, align 8, !dbg !4046
  br label %return, !dbg !4046

if.end13:                                         ; preds = %if.end7
  %19 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !4047
  %ops14 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %19, i32 0, i32 21, !dbg !4049
  %20 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %ops14, align 8, !dbg !4049
  %get_trip_hyst = getelementptr inbounds %struct.thermal_zone_device_ops, %struct.thermal_zone_device_ops* %20, i32 0, i32 8, !dbg !4050
  %21 = load i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)** %get_trip_hyst, align 8, !dbg !4050
  %tobool15 = icmp ne i32 (%struct.thermal_zone_device*, i32, i32*)* %21, null, !dbg !4047
  br i1 %tobool15, label %if.then16, label %if.end24, !dbg !4051

if.then16:                                        ; preds = %if.end13
  %22 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !4052
  %ops17 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %22, i32 0, i32 21, !dbg !4054
  %23 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %ops17, align 8, !dbg !4054
  %get_trip_hyst18 = getelementptr inbounds %struct.thermal_zone_device_ops, %struct.thermal_zone_device_ops* %23, i32 0, i32 8, !dbg !4055
  %24 = load i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)** %get_trip_hyst18, align 8, !dbg !4055
  %25 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !4056
  %26 = load i32, i32* %trip, align 4, !dbg !4057
  %call19 = call i32 %24(%struct.thermal_zone_device* %25, i32 %26, i32* %hyst) #6, !dbg !4052
  store i32 %call19, i32* %ret, align 4, !dbg !4058
  %27 = load i32, i32* %ret, align 4, !dbg !4059
  %tobool20 = icmp ne i32 %27, 0, !dbg !4059
  br i1 %tobool20, label %if.then21, label %if.end23, !dbg !4061

if.then21:                                        ; preds = %if.then16
  %28 = load i32, i32* %ret, align 4, !dbg !4062
  %conv22 = sext i32 %28 to i64, !dbg !4062
  store i64 %conv22, i64* %retval, align 8, !dbg !4063
  br label %return, !dbg !4063

if.end23:                                         ; preds = %if.then16
  br label %if.end24, !dbg !4064

if.end24:                                         ; preds = %if.end23, %if.end13
  %29 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !4065
  %ops25 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %29, i32 0, i32 21, !dbg !4066
  %30 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %ops25, align 8, !dbg !4066
  %get_trip_type = getelementptr inbounds %struct.thermal_zone_device_ops, %struct.thermal_zone_device_ops* %30, i32 0, i32 5, !dbg !4067
  %31 = load i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)** %get_trip_type, align 8, !dbg !4067
  %32 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !4068
  %33 = load i32, i32* %trip, align 4, !dbg !4069
  %call26 = call i32 %31(%struct.thermal_zone_device* %32, i32 %33, i32* %type) #6, !dbg !4065
  store i32 %call26, i32* %ret, align 4, !dbg !4070
  %34 = load i32, i32* %ret, align 4, !dbg !4071
  %tobool27 = icmp ne i32 %34, 0, !dbg !4071
  br i1 %tobool27, label %if.then28, label %if.end30, !dbg !4073

if.then28:                                        ; preds = %if.end24
  %35 = load i32, i32* %ret, align 4, !dbg !4074
  %conv29 = sext i32 %35 to i64, !dbg !4074
  store i64 %conv29, i64* %retval, align 8, !dbg !4075
  br label %return, !dbg !4075

if.end30:                                         ; preds = %if.end24
  %36 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !4076
  %id = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %36, i32 0, i32 0, !dbg !4077
  %37 = load i32, i32* %id, align 8, !dbg !4077
  %38 = load i32, i32* %trip, align 4, !dbg !4078
  %39 = load i32, i32* %type, align 4, !dbg !4079
  %40 = load i32, i32* %temperature, align 4, !dbg !4080
  %41 = load i32, i32* %hyst, align 4, !dbg !4081
  %call31 = call i32 @thermal_notify_tz_trip_change(i32 %37, i32 %38, i32 %39, i32 %40, i32 %41) #6, !dbg !4082
  %42 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !4083
  call void @thermal_zone_device_update(%struct.thermal_zone_device* %42, i32 0) #6, !dbg !4084
  %43 = load i64, i64* %count.addr, align 8, !dbg !4085
  store i64 %43, i64* %retval, align 8, !dbg !4086
  br label %return, !dbg !4086

return:                                           ; preds = %if.end30, %if.then28, %if.then21, %if.then12, %if.then6, %if.then2, %if.then
  %44 = load i64, i64* %retval, align 8, !dbg !4087
  ret i64 %44, !dbg !4087
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @trip_point_hyst_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !4088 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %tz = alloca %struct.thermal_zone_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.thermal_zone_device*, align 8
  %trip = alloca i32, align 4
  %ret = alloca i32, align 4
  %temperature = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4089, metadata !DIExpression()), !dbg !4090
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4091, metadata !DIExpression()), !dbg !4092
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4093, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tz, metadata !4095, metadata !DIExpression()), !dbg !4096
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4097, metadata !DIExpression()), !dbg !4099
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4099
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4099
  store i8* %1, i8** %__mptr, align 8, !dbg !4099
  br label %do.body, !dbg !4099

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4100

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4099
  %add.ptr = getelementptr i8, i8* %2, i64 -24, !dbg !4099
  %3 = bitcast i8* %add.ptr to %struct.thermal_zone_device*, !dbg !4099
  store %struct.thermal_zone_device* %3, %struct.thermal_zone_device** %tmp, align 8, !dbg !4100
  %4 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tmp, align 8, !dbg !4099
  store %struct.thermal_zone_device* %4, %struct.thermal_zone_device** %tz, align 8, !dbg !4096
  call void @llvm.dbg.declare(metadata i32* %trip, metadata !4102, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4104, metadata !DIExpression()), !dbg !4105
  call void @llvm.dbg.declare(metadata i32* %temperature, metadata !4106, metadata !DIExpression()), !dbg !4107
  %5 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !4108
  %ops = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %5, i32 0, i32 21, !dbg !4110
  %6 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %ops, align 8, !dbg !4110
  %get_trip_hyst = getelementptr inbounds %struct.thermal_zone_device_ops, %struct.thermal_zone_device_ops* %6, i32 0, i32 8, !dbg !4111
  %7 = load i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)** %get_trip_hyst, align 8, !dbg !4111
  %tobool = icmp ne i32 (%struct.thermal_zone_device*, i32, i32*)* %7, null, !dbg !4108
  br i1 %tobool, label %if.end, label %if.then, !dbg !4112

if.then:                                          ; preds = %do.end
  store i64 -1, i64* %retval, align 8, !dbg !4113
  br label %return, !dbg !4113

if.end:                                           ; preds = %do.end
  %8 = load %struct.device_attribute*, %struct.device_attribute** %attr.addr, align 8, !dbg !4114
  %attr1 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %8, i32 0, i32 0, !dbg !4116
  %name = getelementptr inbounds %struct.attribute, %struct.attribute* %attr1, i32 0, i32 0, !dbg !4117
  %9 = load i8*, i8** %name, align 8, !dbg !4117
  %call = call i32 (i8*, i8*, ...) @sscanf(i8* %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0), i32* %trip) #6, !dbg !4118
  %cmp = icmp ne i32 %call, 1, !dbg !4119
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4120

if.then2:                                         ; preds = %if.end
  store i64 -22, i64* %retval, align 8, !dbg !4121
  br label %return, !dbg !4121

if.end3:                                          ; preds = %if.end
  %10 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !4122
  %ops4 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %10, i32 0, i32 21, !dbg !4123
  %11 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %ops4, align 8, !dbg !4123
  %get_trip_hyst5 = getelementptr inbounds %struct.thermal_zone_device_ops, %struct.thermal_zone_device_ops* %11, i32 0, i32 8, !dbg !4124
  %12 = load i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)** %get_trip_hyst5, align 8, !dbg !4124
  %13 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !4125
  %14 = load i32, i32* %trip, align 4, !dbg !4126
  %call6 = call i32 %12(%struct.thermal_zone_device* %13, i32 %14, i32* %temperature) #6, !dbg !4122
  store i32 %call6, i32* %ret, align 4, !dbg !4127
  %15 = load i32, i32* %ret, align 4, !dbg !4128
  %tobool7 = icmp ne i32 %15, 0, !dbg !4128
  br i1 %tobool7, label %cond.true, label %cond.false, !dbg !4128

cond.true:                                        ; preds = %if.end3
  %16 = load i32, i32* %ret, align 4, !dbg !4129
  br label %cond.end, !dbg !4128

cond.false:                                       ; preds = %if.end3
  %17 = load i8*, i8** %buf.addr, align 8, !dbg !4130
  %18 = load i32, i32* %temperature, align 4, !dbg !4131
  %call8 = call i32 (i8*, i8*, ...) @sprintf(i8* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %18) #6, !dbg !4132
  br label %cond.end, !dbg !4128

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %16, %cond.true ], [ %call8, %cond.false ], !dbg !4128
  %conv = sext i32 %cond to i64, !dbg !4128
  store i64 %conv, i64* %retval, align 8, !dbg !4133
  br label %return, !dbg !4133

return:                                           ; preds = %cond.end, %if.then2, %if.then
  %19 = load i64, i64* %retval, align 8, !dbg !4134
  ret i64 %19, !dbg !4134
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @trip_point_hyst_store(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %count) #0 !dbg !4135 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %tz = alloca %struct.thermal_zone_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.thermal_zone_device*, align 8
  %trip = alloca i32, align 4
  %ret = alloca i32, align 4
  %temperature = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4136, metadata !DIExpression()), !dbg !4137
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4138, metadata !DIExpression()), !dbg !4139
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4140, metadata !DIExpression()), !dbg !4141
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !4142, metadata !DIExpression()), !dbg !4143
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tz, metadata !4144, metadata !DIExpression()), !dbg !4145
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4146, metadata !DIExpression()), !dbg !4148
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4148
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4148
  store i8* %1, i8** %__mptr, align 8, !dbg !4148
  br label %do.body, !dbg !4148

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4149

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4148
  %add.ptr = getelementptr i8, i8* %2, i64 -24, !dbg !4148
  %3 = bitcast i8* %add.ptr to %struct.thermal_zone_device*, !dbg !4148
  store %struct.thermal_zone_device* %3, %struct.thermal_zone_device** %tmp, align 8, !dbg !4149
  %4 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tmp, align 8, !dbg !4148
  store %struct.thermal_zone_device* %4, %struct.thermal_zone_device** %tz, align 8, !dbg !4145
  call void @llvm.dbg.declare(metadata i32* %trip, metadata !4151, metadata !DIExpression()), !dbg !4152
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4153, metadata !DIExpression()), !dbg !4154
  call void @llvm.dbg.declare(metadata i32* %temperature, metadata !4155, metadata !DIExpression()), !dbg !4156
  %5 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !4157
  %ops = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %5, i32 0, i32 21, !dbg !4159
  %6 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %ops, align 8, !dbg !4159
  %set_trip_hyst = getelementptr inbounds %struct.thermal_zone_device_ops, %struct.thermal_zone_device_ops* %6, i32 0, i32 9, !dbg !4160
  %7 = load i32 (%struct.thermal_zone_device*, i32, i32)*, i32 (%struct.thermal_zone_device*, i32, i32)** %set_trip_hyst, align 8, !dbg !4160
  %tobool = icmp ne i32 (%struct.thermal_zone_device*, i32, i32)* %7, null, !dbg !4157
  br i1 %tobool, label %if.end, label %if.then, !dbg !4161

if.then:                                          ; preds = %do.end
  store i64 -1, i64* %retval, align 8, !dbg !4162
  br label %return, !dbg !4162

if.end:                                           ; preds = %do.end
  %8 = load %struct.device_attribute*, %struct.device_attribute** %attr.addr, align 8, !dbg !4163
  %attr1 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %8, i32 0, i32 0, !dbg !4165
  %name = getelementptr inbounds %struct.attribute, %struct.attribute* %attr1, i32 0, i32 0, !dbg !4166
  %9 = load i8*, i8** %name, align 8, !dbg !4166
  %call = call i32 (i8*, i8*, ...) @sscanf(i8* %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0), i32* %trip) #6, !dbg !4167
  %cmp = icmp ne i32 %call, 1, !dbg !4168
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4169

if.then2:                                         ; preds = %if.end
  store i64 -22, i64* %retval, align 8, !dbg !4170
  br label %return, !dbg !4170

if.end3:                                          ; preds = %if.end
  %10 = load i8*, i8** %buf.addr, align 8, !dbg !4171
  %call4 = call i32 @kstrtoint(i8* %10, i32 10, i32* %temperature) #6, !dbg !4173
  %tobool5 = icmp ne i32 %call4, 0, !dbg !4173
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !4174

if.then6:                                         ; preds = %if.end3
  store i64 -22, i64* %retval, align 8, !dbg !4175
  br label %return, !dbg !4175

if.end7:                                          ; preds = %if.end3
  %11 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !4176
  %ops8 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %11, i32 0, i32 21, !dbg !4177
  %12 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %ops8, align 8, !dbg !4177
  %set_trip_hyst9 = getelementptr inbounds %struct.thermal_zone_device_ops, %struct.thermal_zone_device_ops* %12, i32 0, i32 9, !dbg !4178
  %13 = load i32 (%struct.thermal_zone_device*, i32, i32)*, i32 (%struct.thermal_zone_device*, i32, i32)** %set_trip_hyst9, align 8, !dbg !4178
  %14 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !4179
  %15 = load i32, i32* %trip, align 4, !dbg !4180
  %16 = load i32, i32* %temperature, align 4, !dbg !4181
  %call10 = call i32 %13(%struct.thermal_zone_device* %14, i32 %15, i32 %16) #6, !dbg !4176
  store i32 %call10, i32* %ret, align 4, !dbg !4182
  %17 = load i32, i32* %ret, align 4, !dbg !4183
  %tobool11 = icmp ne i32 %17, 0, !dbg !4183
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !4185

if.then12:                                        ; preds = %if.end7
  %18 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz, align 8, !dbg !4186
  call void @thermal_zone_set_trips(%struct.thermal_zone_device* %18) #6, !dbg !4187
  br label %if.end13, !dbg !4187

if.end13:                                         ; preds = %if.then12, %if.end7
  %19 = load i32, i32* %ret, align 4, !dbg !4188
  %tobool14 = icmp ne i32 %19, 0, !dbg !4188
  br i1 %tobool14, label %cond.true, label %cond.false, !dbg !4188

cond.true:                                        ; preds = %if.end13
  %20 = load i32, i32* %ret, align 4, !dbg !4189
  %conv = sext i32 %20 to i64, !dbg !4189
  br label %cond.end, !dbg !4188

cond.false:                                       ; preds = %if.end13
  %21 = load i64, i64* %count.addr, align 8, !dbg !4190
  br label %cond.end, !dbg !4188

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %21, %cond.false ], !dbg !4188
  store i64 %cond, i64* %retval, align 8, !dbg !4191
  br label %return, !dbg !4191

return:                                           ; preds = %cond.end, %if.then6, %if.then2, %if.then
  %22 = load i64, i64* %retval, align 8, !dbg !4192
  ret i64 %22, !dbg !4192
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @thermal_notify_tz_trip_change(i32 %tz_id, i32 %id, i32 %type, i32 %temp, i32 %hyst) #0 !dbg !4193 {
entry:
  %tz_id.addr = alloca i32, align 4
  %id.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %temp.addr = alloca i32, align 4
  %hyst.addr = alloca i32, align 4
  store i32 %tz_id, i32* %tz_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %tz_id.addr, metadata !4197, metadata !DIExpression()), !dbg !4198
  store i32 %id, i32* %id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %id.addr, metadata !4199, metadata !DIExpression()), !dbg !4200
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !4201, metadata !DIExpression()), !dbg !4202
  store i32 %temp, i32* %temp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %temp.addr, metadata !4203, metadata !DIExpression()), !dbg !4204
  store i32 %hyst, i32* %hyst.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %hyst.addr, metadata !4205, metadata !DIExpression()), !dbg !4206
  ret i32 0, !dbg !4207
}

; Function Attrs: noredzone
declare dso_local void @thermal_zone_set_trips(%struct.thermal_zone_device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @cdev_type_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !4208 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %cdev = alloca %struct.thermal_cooling_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.thermal_cooling_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4209, metadata !DIExpression()), !dbg !4210
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4211, metadata !DIExpression()), !dbg !4212
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4213, metadata !DIExpression()), !dbg !4214
  call void @llvm.dbg.declare(metadata %struct.thermal_cooling_device** %cdev, metadata !4215, metadata !DIExpression()), !dbg !4216
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4217, metadata !DIExpression()), !dbg !4219
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4219
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4219
  store i8* %1, i8** %__mptr, align 8, !dbg !4219
  br label %do.body, !dbg !4219

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4220

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4219
  %add.ptr = getelementptr i8, i8* %2, i64 -24, !dbg !4219
  %3 = bitcast i8* %add.ptr to %struct.thermal_cooling_device*, !dbg !4219
  store %struct.thermal_cooling_device* %3, %struct.thermal_cooling_device** %tmp, align 8, !dbg !4220
  %4 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %tmp, align 8, !dbg !4219
  store %struct.thermal_cooling_device* %4, %struct.thermal_cooling_device** %cdev, align 8, !dbg !4216
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !4222
  %6 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %cdev, align 8, !dbg !4223
  %type = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %6, i32 0, i32 1, !dbg !4224
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %type, i64 0, i64 0, !dbg !4223
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %arraydecay) #6, !dbg !4225
  %conv = sext i32 %call to i64, !dbg !4225
  ret i64 %conv, !dbg !4226
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @max_state_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !4227 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %cdev = alloca %struct.thermal_cooling_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.thermal_cooling_device*, align 8
  %state = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4228, metadata !DIExpression()), !dbg !4229
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4230, metadata !DIExpression()), !dbg !4231
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4232, metadata !DIExpression()), !dbg !4233
  call void @llvm.dbg.declare(metadata %struct.thermal_cooling_device** %cdev, metadata !4234, metadata !DIExpression()), !dbg !4235
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4236, metadata !DIExpression()), !dbg !4238
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4238
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4238
  store i8* %1, i8** %__mptr, align 8, !dbg !4238
  br label %do.body, !dbg !4238

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4239

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4238
  %add.ptr = getelementptr i8, i8* %2, i64 -24, !dbg !4238
  %3 = bitcast i8* %add.ptr to %struct.thermal_cooling_device*, !dbg !4238
  store %struct.thermal_cooling_device* %3, %struct.thermal_cooling_device** %tmp, align 8, !dbg !4239
  %4 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %tmp, align 8, !dbg !4238
  store %struct.thermal_cooling_device* %4, %struct.thermal_cooling_device** %cdev, align 8, !dbg !4235
  call void @llvm.dbg.declare(metadata i64* %state, metadata !4241, metadata !DIExpression()), !dbg !4242
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4243, metadata !DIExpression()), !dbg !4244
  %5 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %cdev, align 8, !dbg !4245
  %ops = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %5, i32 0, i32 6, !dbg !4246
  %6 = load %struct.thermal_cooling_device_ops*, %struct.thermal_cooling_device_ops** %ops, align 8, !dbg !4246
  %get_max_state = getelementptr inbounds %struct.thermal_cooling_device_ops, %struct.thermal_cooling_device_ops* %6, i32 0, i32 0, !dbg !4247
  %7 = load i32 (%struct.thermal_cooling_device*, i64*)*, i32 (%struct.thermal_cooling_device*, i64*)** %get_max_state, align 8, !dbg !4247
  %8 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %cdev, align 8, !dbg !4248
  %call = call i32 %7(%struct.thermal_cooling_device* %8, i64* %state) #6, !dbg !4245
  store i32 %call, i32* %ret, align 4, !dbg !4249
  %9 = load i32, i32* %ret, align 4, !dbg !4250
  %tobool = icmp ne i32 %9, 0, !dbg !4250
  br i1 %tobool, label %if.then, label %if.end, !dbg !4252

if.then:                                          ; preds = %do.end
  %10 = load i32, i32* %ret, align 4, !dbg !4253
  %conv = sext i32 %10 to i64, !dbg !4253
  store i64 %conv, i64* %retval, align 8, !dbg !4254
  br label %return, !dbg !4254

if.end:                                           ; preds = %do.end
  %11 = load i8*, i8** %buf.addr, align 8, !dbg !4255
  %12 = load i64, i64* %state, align 8, !dbg !4256
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0), i64 %12) #6, !dbg !4257
  %conv2 = sext i32 %call1 to i64, !dbg !4257
  store i64 %conv2, i64* %retval, align 8, !dbg !4258
  br label %return, !dbg !4258

return:                                           ; preds = %if.end, %if.then
  %13 = load i64, i64* %retval, align 8, !dbg !4259
  ret i64 %13, !dbg !4259
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @cur_state_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !4260 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %cdev = alloca %struct.thermal_cooling_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.thermal_cooling_device*, align 8
  %state = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4261, metadata !DIExpression()), !dbg !4262
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4263, metadata !DIExpression()), !dbg !4264
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4265, metadata !DIExpression()), !dbg !4266
  call void @llvm.dbg.declare(metadata %struct.thermal_cooling_device** %cdev, metadata !4267, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4269, metadata !DIExpression()), !dbg !4271
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4271
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4271
  store i8* %1, i8** %__mptr, align 8, !dbg !4271
  br label %do.body, !dbg !4271

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4272

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4271
  %add.ptr = getelementptr i8, i8* %2, i64 -24, !dbg !4271
  %3 = bitcast i8* %add.ptr to %struct.thermal_cooling_device*, !dbg !4271
  store %struct.thermal_cooling_device* %3, %struct.thermal_cooling_device** %tmp, align 8, !dbg !4272
  %4 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %tmp, align 8, !dbg !4271
  store %struct.thermal_cooling_device* %4, %struct.thermal_cooling_device** %cdev, align 8, !dbg !4268
  call void @llvm.dbg.declare(metadata i64* %state, metadata !4274, metadata !DIExpression()), !dbg !4275
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4276, metadata !DIExpression()), !dbg !4277
  %5 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %cdev, align 8, !dbg !4278
  %ops = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %5, i32 0, i32 6, !dbg !4279
  %6 = load %struct.thermal_cooling_device_ops*, %struct.thermal_cooling_device_ops** %ops, align 8, !dbg !4279
  %get_cur_state = getelementptr inbounds %struct.thermal_cooling_device_ops, %struct.thermal_cooling_device_ops* %6, i32 0, i32 1, !dbg !4280
  %7 = load i32 (%struct.thermal_cooling_device*, i64*)*, i32 (%struct.thermal_cooling_device*, i64*)** %get_cur_state, align 8, !dbg !4280
  %8 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %cdev, align 8, !dbg !4281
  %call = call i32 %7(%struct.thermal_cooling_device* %8, i64* %state) #6, !dbg !4278
  store i32 %call, i32* %ret, align 4, !dbg !4282
  %9 = load i32, i32* %ret, align 4, !dbg !4283
  %tobool = icmp ne i32 %9, 0, !dbg !4283
  br i1 %tobool, label %if.then, label %if.end, !dbg !4285

if.then:                                          ; preds = %do.end
  %10 = load i32, i32* %ret, align 4, !dbg !4286
  %conv = sext i32 %10 to i64, !dbg !4286
  store i64 %conv, i64* %retval, align 8, !dbg !4287
  br label %return, !dbg !4287

if.end:                                           ; preds = %do.end
  %11 = load i8*, i8** %buf.addr, align 8, !dbg !4288
  %12 = load i64, i64* %state, align 8, !dbg !4289
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0), i64 %12) #6, !dbg !4290
  %conv2 = sext i32 %call1 to i64, !dbg !4290
  store i64 %conv2, i64* %retval, align 8, !dbg !4291
  br label %return, !dbg !4291

return:                                           ; preds = %if.end, %if.then
  %13 = load i64, i64* %retval, align 8, !dbg !4292
  ret i64 %13, !dbg !4292
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @cur_state_store(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %count) #0 !dbg !4293 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %cdev = alloca %struct.thermal_cooling_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.thermal_cooling_device*, align 8
  %state = alloca i64, align 8
  %result = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4294, metadata !DIExpression()), !dbg !4295
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4296, metadata !DIExpression()), !dbg !4297
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4298, metadata !DIExpression()), !dbg !4299
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !4300, metadata !DIExpression()), !dbg !4301
  call void @llvm.dbg.declare(metadata %struct.thermal_cooling_device** %cdev, metadata !4302, metadata !DIExpression()), !dbg !4303
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4304, metadata !DIExpression()), !dbg !4306
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4306
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4306
  store i8* %1, i8** %__mptr, align 8, !dbg !4306
  br label %do.body, !dbg !4306

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4307

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4306
  %add.ptr = getelementptr i8, i8* %2, i64 -24, !dbg !4306
  %3 = bitcast i8* %add.ptr to %struct.thermal_cooling_device*, !dbg !4306
  store %struct.thermal_cooling_device* %3, %struct.thermal_cooling_device** %tmp, align 8, !dbg !4307
  %4 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %tmp, align 8, !dbg !4306
  store %struct.thermal_cooling_device* %4, %struct.thermal_cooling_device** %cdev, align 8, !dbg !4303
  call void @llvm.dbg.declare(metadata i64* %state, metadata !4309, metadata !DIExpression()), !dbg !4310
  call void @llvm.dbg.declare(metadata i32* %result, metadata !4311, metadata !DIExpression()), !dbg !4312
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !4313
  %call = call i32 (i8*, i8*, ...) @sscanf(i8* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0), i64* %state) #6, !dbg !4315
  %cmp = icmp ne i32 %call, 1, !dbg !4316
  br i1 %cmp, label %if.then, label %if.end, !dbg !4317

if.then:                                          ; preds = %do.end
  store i64 -22, i64* %retval, align 8, !dbg !4318
  br label %return, !dbg !4318

if.end:                                           ; preds = %do.end
  %6 = load i64, i64* %state, align 8, !dbg !4319
  %cmp1 = icmp slt i64 %6, 0, !dbg !4321
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !4322

if.then2:                                         ; preds = %if.end
  store i64 -22, i64* %retval, align 8, !dbg !4323
  br label %return, !dbg !4323

if.end3:                                          ; preds = %if.end
  %7 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %cdev, align 8, !dbg !4324
  %lock = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %7, i32 0, i32 8, !dbg !4325
  call void @mutex_lock(%struct.mutex* %lock) #6, !dbg !4326
  %8 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %cdev, align 8, !dbg !4327
  %ops = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %8, i32 0, i32 6, !dbg !4328
  %9 = load %struct.thermal_cooling_device_ops*, %struct.thermal_cooling_device_ops** %ops, align 8, !dbg !4328
  %set_cur_state = getelementptr inbounds %struct.thermal_cooling_device_ops, %struct.thermal_cooling_device_ops* %9, i32 0, i32 2, !dbg !4329
  %10 = load i32 (%struct.thermal_cooling_device*, i64)*, i32 (%struct.thermal_cooling_device*, i64)** %set_cur_state, align 8, !dbg !4329
  %11 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %cdev, align 8, !dbg !4330
  %12 = load i64, i64* %state, align 8, !dbg !4331
  %call4 = call i32 %10(%struct.thermal_cooling_device* %11, i64 %12) #6, !dbg !4327
  store i32 %call4, i32* %result, align 4, !dbg !4332
  %13 = load i32, i32* %result, align 4, !dbg !4333
  %tobool = icmp ne i32 %13, 0, !dbg !4333
  br i1 %tobool, label %if.end6, label %if.then5, !dbg !4335

if.then5:                                         ; preds = %if.end3
  %14 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %cdev, align 8, !dbg !4336
  %15 = load i64, i64* %state, align 8, !dbg !4337
  call void @thermal_cooling_device_stats_update(%struct.thermal_cooling_device* %14, i64 %15) #6, !dbg !4338
  br label %if.end6, !dbg !4338

if.end6:                                          ; preds = %if.then5, %if.end3
  %16 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %cdev, align 8, !dbg !4339
  %lock7 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %16, i32 0, i32 8, !dbg !4340
  call void @mutex_unlock(%struct.mutex* %lock7) #6, !dbg !4341
  %17 = load i32, i32* %result, align 4, !dbg !4342
  %tobool8 = icmp ne i32 %17, 0, !dbg !4342
  br i1 %tobool8, label %cond.true, label %cond.false, !dbg !4342

cond.true:                                        ; preds = %if.end6
  %18 = load i32, i32* %result, align 4, !dbg !4343
  %conv = sext i32 %18 to i64, !dbg !4343
  br label %cond.end, !dbg !4342

cond.false:                                       ; preds = %if.end6
  %19 = load i64, i64* %count.addr, align 8, !dbg !4344
  br label %cond.end, !dbg !4342

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %19, %cond.false ], !dbg !4342
  store i64 %cond, i64* %retval, align 8, !dbg !4345
  br label %return, !dbg !4345

return:                                           ; preds = %cond.end, %if.then2, %if.then
  %20 = load i64, i64* %retval, align 8, !dbg !4346
  ret i64 %20, !dbg !4346
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @thermal_cooling_device_stats_update(%struct.thermal_cooling_device* %cdev, i64 %new_state) #0 !dbg !4347 {
entry:
  %cdev.addr = alloca %struct.thermal_cooling_device*, align 8
  %new_state.addr = alloca i64, align 8
  store %struct.thermal_cooling_device* %cdev, %struct.thermal_cooling_device** %cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_cooling_device** %cdev.addr, metadata !4350, metadata !DIExpression()), !dbg !4351
  store i64 %new_state, i64* %new_state.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %new_state.addr, metadata !4352, metadata !DIExpression()), !dbg !4353
  ret void, !dbg !4354
}

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

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
!llvm.module.flags = !{!2313, !2314, !2315, !2316}
!llvm.ident = !{!2317}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "thermal_zone_attribute_groups", scope: !2, file: !3, line: 476, type: !2301, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !87, globals: !2254, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/thermal/thermal_sysfs.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !55, !61, !69, !80}
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
!87 = !{!88, !89, !91, !92, !103, !1586, !2105, !208}
!88 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !90, line: 148, baseType: !7)
!90 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_instance", file: !94, line: 100, size: 1792, elements: !95)
!94 = !DIFile(filename: "drivers/thermal/thermal_core.h", directory: "/home/lizy2001/genbc/linux")
!95 = !{!96, !97, !102, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !93, file: !94, line: 101, baseType: !88, size: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !93, file: !94, line: 102, baseType: !98, size: 160, offset: 32)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 160, elements: !100)
!99 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!100 = !{!101}
!101 = !DISubrange(count: 20)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "tz", scope: !93, file: !94, line: 103, baseType: !103, size: 64, offset: 192)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_device", file: !62, line: 150, size: 8448, elements: !105)
!105 = !{!106, !107, !108, !2062, !2063, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2184, !2208, !2223, !2224, !2225, !2229, !2230, !2231, !2240}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !104, file: !62, line: 151, baseType: !88, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !104, file: !62, line: 152, baseType: !98, size: 160, offset: 32)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !104, file: !62, line: 153, baseType: !109, size: 5568, offset: 192)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !110)
!110 = !{!111, !1585, !1587, !1590, !1591, !1642, !1739, !1740, !1741, !1742, !1743, !1752, !1857, !1870, !1873, !1874, !1878, !1880, !1881, !1882, !1886, !1892, !1893, !1896, !2011, !2012, !2015, !2016, !2017, !2018, !2050, !2051, !2052, !2055, !2058, !2059, !2060, !2061}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !109, file: !30, line: 462, baseType: !112, size: 512)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !113, line: 64, size: 512, elements: !114)
!113 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!114 = !{!115, !118, !124, !126, !186, !1422, !1575, !1580, !1581, !1582, !1583, !1584}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !112, file: !113, line: 65, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !112, file: !113, line: 66, baseType: !119, size: 128, offset: 64)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !90, line: 178, size: 128, elements: !120)
!120 = !{!121, !123}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !119, file: !90, line: 179, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !119, file: !90, line: 179, baseType: !122, size: 64, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !112, file: !113, line: 67, baseType: !125, size: 64, offset: 192)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !112, file: !113, line: 68, baseType: !127, size: 64, offset: 256)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !113, line: 192, size: 704, elements: !129)
!129 = !{!130, !131, !147, !148}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !128, file: !113, line: 193, baseType: !119, size: 128)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !128, file: !113, line: 194, baseType: !132, offset: 128)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !133, line: 83, baseType: !134)
!133 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !133, line: 71, elements: !135)
!135 = !{!136}
!136 = !DIDerivedType(tag: DW_TAG_member, scope: !134, file: !133, line: 72, baseType: !137)
!137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !134, file: !133, line: 72, elements: !138)
!138 = !{!139}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !137, file: !133, line: 73, baseType: !140)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !133, line: 20, elements: !141)
!141 = !{!142}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !140, file: !133, line: 21, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !144, line: 25, baseType: !145)
!144 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !144, line: 25, elements: !146)
!146 = !{}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !128, file: !113, line: 195, baseType: !112, size: 512, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !128, file: !113, line: 196, baseType: !149, size: 64, offset: 640)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !113, line: 156, size: 192, elements: !152)
!152 = !{!153, !158, !163}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !151, file: !113, line: 157, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DISubroutineType(types: !157)
!157 = !{!88, !127, !125}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !151, file: !113, line: 158, baseType: !159, size: 64, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !160)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DISubroutineType(types: !162)
!162 = !{!116, !127, !125}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !151, file: !113, line: 159, baseType: !164, size: 64, offset: 128)
!164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DISubroutineType(types: !167)
!167 = !{!88, !127, !125, !168}
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !113, line: 148, size: 20736, elements: !170)
!170 = !{!171, !176, !180, !181, !185}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !169, file: !113, line: 149, baseType: !172, size: 192)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 192, elements: !174)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!174 = !{!175}
!175 = !DISubrange(count: 3)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !169, file: !113, line: 150, baseType: !177, size: 4096, offset: 192)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 4096, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !169, file: !113, line: 151, baseType: !88, size: 32, offset: 4288)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !169, file: !113, line: 152, baseType: !182, size: 16384, offset: 4320)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 16384, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 2048)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !169, file: !113, line: 153, baseType: !88, size: 32, offset: 20704)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !112, file: !113, line: 69, baseType: !187, size: 64, offset: 320)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !113, line: 138, size: 448, elements: !189)
!189 = !{!190, !194, !224, !226, !1367, !1400, !1404}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !188, file: !113, line: 139, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{null, !125}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !188, file: !113, line: 140, baseType: !195, size: 64, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !197)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !198, line: 230, size: 128, elements: !199)
!198 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!199 = !{!200, !216}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !197, file: !198, line: 231, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{!204, !125, !209, !173}
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !90, line: 60, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !206, line: 73, baseType: !207)
!206 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !206, line: 15, baseType: !208)
!208 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !198, line: 30, size: 128, elements: !211)
!211 = !{!212, !213}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !210, file: !198, line: 31, baseType: !116, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !210, file: !198, line: 32, baseType: !214, size: 16, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !90, line: 19, baseType: !215)
!215 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !197, file: !198, line: 232, baseType: !217, size: 64, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!204, !125, !209, !116, !220}
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !90, line: 55, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !206, line: 72, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !206, line: 16, baseType: !223)
!223 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !188, file: !113, line: 141, baseType: !225, size: 64, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !188, file: !113, line: 142, baseType: !227, size: 64, offset: 192)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !230)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !198, line: 84, size: 320, elements: !231)
!231 = !{!232, !233, !237, !1364, !1365}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !230, file: !198, line: 85, baseType: !116, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !230, file: !198, line: 86, baseType: !234, size: 64, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{!214, !125, !209, !88}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !230, file: !198, line: 88, baseType: !238, size: 64, offset: 128)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!214, !125, !241, !88}
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !198, line: 168, size: 448, elements: !243)
!243 = !{!244, !245, !246, !247, !257, !258}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !242, file: !198, line: 169, baseType: !210, size: 128)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !242, file: !198, line: 170, baseType: !220, size: 64, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !242, file: !198, line: 171, baseType: !91, size: 64, offset: 192)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !242, file: !198, line: 172, baseType: !248, size: 64, offset: 256)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{!204, !251, !125, !241, !173, !254, !220}
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !253, line: 526, flags: DIFlagFwdDecl)
!253 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !90, line: 46, baseType: !255)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !206, line: 88, baseType: !256)
!256 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !242, file: !198, line: 174, baseType: !248, size: 64, offset: 320)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !242, file: !198, line: 176, baseType: !259, size: 64, offset: 384)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{!88, !251, !125, !241, !262}
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !264, line: 305, size: 1472, elements: !265)
!264 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!265 = !{!266, !267, !268, !269, !270, !278, !279, !1338, !1344, !1345, !1350, !1351, !1354, !1358, !1359, !1360, !1361, !1362}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !263, file: !264, line: 308, baseType: !223, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !263, file: !264, line: 309, baseType: !223, size: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !263, file: !264, line: 313, baseType: !262, size: 64, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !263, file: !264, line: 313, baseType: !262, size: 64, offset: 192)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !263, file: !264, line: 315, baseType: !271, size: 192, align: 64, offset: 256)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !272, line: 24, size: 192, align: 64, elements: !273)
!272 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!273 = !{!274, !275, !277}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !271, file: !272, line: 25, baseType: !223, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !271, file: !272, line: 26, baseType: !276, size: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !271, file: !272, line: 27, baseType: !276, size: 64, offset: 128)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !263, file: !264, line: 323, baseType: !223, size: 64, offset: 448)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !263, file: !264, line: 327, baseType: !280, size: 64, offset: 512)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !264, line: 388, size: 7296, elements: !282)
!282 = !{!283, !1334}
!283 = !DIDerivedType(tag: DW_TAG_member, scope: !281, file: !264, line: 389, baseType: !284, size: 7296)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !281, file: !264, line: 389, size: 7296, elements: !285)
!285 = !{!286, !287, !291, !297, !301, !302, !303, !304, !305, !313, !318, !319, !320, !321, !330, !331, !332, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !367, !375, !378, !410, !411, !1305, !1306, !1309, !1312, !1313, !1316, !1317, !1318, !1321, !1333}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !284, file: !264, line: 390, baseType: !262, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !284, file: !264, line: 391, baseType: !288, size: 64, offset: 64)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !272, line: 31, size: 64, elements: !289)
!289 = !{!290}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !288, file: !272, line: 32, baseType: !276, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !284, file: !264, line: 392, baseType: !292, size: 64, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !293, line: 23, baseType: !294)
!293 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !295, line: 31, baseType: !296)
!295 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!296 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !284, file: !264, line: 394, baseType: !298, size: 64, offset: 192)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{!223, !251, !223, !223, !223, !223}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !284, file: !264, line: 398, baseType: !223, size: 64, offset: 256)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !284, file: !264, line: 399, baseType: !223, size: 64, offset: 320)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !284, file: !264, line: 405, baseType: !223, size: 64, offset: 384)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !284, file: !264, line: 406, baseType: !223, size: 64, offset: 448)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !284, file: !264, line: 407, baseType: !306, size: 64, offset: 512)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !253, line: 286, baseType: !308)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !253, line: 286, size: 64, elements: !309)
!309 = !{!310}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !308, file: !253, line: 286, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !312, line: 18, baseType: !223)
!312 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!313 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !284, file: !264, line: 416, baseType: !314, size: 32, offset: 576)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !90, line: 168, baseType: !315)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !90, line: 166, size: 32, elements: !316)
!316 = !{!317}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !315, file: !90, line: 167, baseType: !88, size: 32)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !284, file: !264, line: 428, baseType: !314, size: 32, offset: 608)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !284, file: !264, line: 437, baseType: !314, size: 32, offset: 640)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !284, file: !264, line: 447, baseType: !314, size: 32, offset: 672)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !284, file: !264, line: 450, baseType: !322, size: 64, offset: 704)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !323, line: 13, baseType: !324)
!323 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !90, line: 175, baseType: !325)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !90, line: 173, size: 64, elements: !326)
!326 = !{!327}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !325, file: !90, line: 174, baseType: !328, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !293, line: 22, baseType: !329)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !295, line: 30, baseType: !256)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !284, file: !264, line: 452, baseType: !88, size: 32, offset: 768)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !284, file: !264, line: 454, baseType: !132, offset: 800)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !284, file: !264, line: 457, baseType: !333, size: 256, offset: 832)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !334, line: 35, size: 256, elements: !335)
!334 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!335 = !{!336, !337, !338, !340}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !333, file: !334, line: 36, baseType: !322, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !333, file: !334, line: 42, baseType: !322, size: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !333, file: !334, line: 46, baseType: !339, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !133, line: 29, baseType: !140)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !333, file: !334, line: 47, baseType: !119, size: 128, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !284, file: !264, line: 459, baseType: !119, size: 128, offset: 1088)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !284, file: !264, line: 466, baseType: !223, size: 64, offset: 1216)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !284, file: !264, line: 467, baseType: !223, size: 64, offset: 1280)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !284, file: !264, line: 469, baseType: !223, size: 64, offset: 1344)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !284, file: !264, line: 470, baseType: !223, size: 64, offset: 1408)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !284, file: !264, line: 471, baseType: !324, size: 64, offset: 1472)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !284, file: !264, line: 472, baseType: !223, size: 64, offset: 1536)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !284, file: !264, line: 473, baseType: !223, size: 64, offset: 1600)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !284, file: !264, line: 474, baseType: !223, size: 64, offset: 1664)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !284, file: !264, line: 475, baseType: !223, size: 64, offset: 1728)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !284, file: !264, line: 477, baseType: !132, offset: 1792)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !284, file: !264, line: 478, baseType: !223, size: 64, offset: 1792)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !284, file: !264, line: 478, baseType: !223, size: 64, offset: 1856)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !284, file: !264, line: 478, baseType: !223, size: 64, offset: 1920)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !284, file: !264, line: 478, baseType: !223, size: 64, offset: 1984)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !284, file: !264, line: 479, baseType: !223, size: 64, offset: 2048)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !284, file: !264, line: 479, baseType: !223, size: 64, offset: 2112)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !284, file: !264, line: 479, baseType: !223, size: 64, offset: 2176)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !284, file: !264, line: 480, baseType: !223, size: 64, offset: 2240)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !284, file: !264, line: 480, baseType: !223, size: 64, offset: 2304)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !284, file: !264, line: 480, baseType: !223, size: 64, offset: 2368)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !284, file: !264, line: 480, baseType: !223, size: 64, offset: 2432)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !284, file: !264, line: 482, baseType: !364, size: 2816, offset: 2496)
!364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 2816, elements: !365)
!365 = !{!366}
!366 = !DISubrange(count: 44)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !284, file: !264, line: 488, baseType: !368, size: 256, offset: 5312)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !369, line: 60, size: 256, elements: !370)
!369 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!370 = !{!371}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !368, file: !369, line: 61, baseType: !372, size: 256)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 256, elements: !373)
!373 = !{!374}
!374 = !DISubrange(count: 4)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !284, file: !264, line: 490, baseType: !376, size: 64, offset: 5568)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !264, line: 490, flags: DIFlagFwdDecl)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !284, file: !264, line: 493, baseType: !379, size: 896, offset: 5632)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !380, line: 53, baseType: !381)
!380 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !380, line: 13, size: 896, elements: !382)
!382 = !{!383, !384, !385, !386, !389, !390, !397, !398, !402, !403, !406}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !381, file: !380, line: 18, baseType: !292, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !381, file: !380, line: 28, baseType: !324, size: 64, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !381, file: !380, line: 31, baseType: !333, size: 256, offset: 128)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !381, file: !380, line: 32, baseType: !387, size: 64, offset: 384)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !380, line: 32, flags: DIFlagFwdDecl)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !381, file: !380, line: 37, baseType: !215, size: 16, offset: 448)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !381, file: !380, line: 40, baseType: !391, size: 192, offset: 512)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !392, line: 53, size: 192, elements: !393)
!392 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!393 = !{!394, !395, !396}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !391, file: !392, line: 54, baseType: !322, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !391, file: !392, line: 55, baseType: !132, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !391, file: !392, line: 59, baseType: !119, size: 128, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !381, file: !380, line: 41, baseType: !91, size: 64, offset: 704)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !381, file: !380, line: 42, baseType: !399, size: 64, offset: 768)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !401)
!401 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !380, line: 42, flags: DIFlagFwdDecl)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !381, file: !380, line: 44, baseType: !314, size: 32, offset: 832)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !381, file: !380, line: 50, baseType: !404, size: 16, offset: 864)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !293, line: 19, baseType: !405)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !295, line: 24, baseType: !215)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !381, file: !380, line: 51, baseType: !407, size: 16, offset: 880)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !293, line: 18, baseType: !408)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !295, line: 23, baseType: !409)
!409 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !284, file: !264, line: 495, baseType: !223, size: 64, offset: 6528)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !284, file: !264, line: 497, baseType: !412, size: 64, offset: 6592)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !264, line: 381, size: 384, elements: !414)
!414 = !{!415, !416, !1304}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !413, file: !264, line: 382, baseType: !314, size: 32)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !413, file: !264, line: 383, baseType: !417, size: 128, offset: 64)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !264, line: 376, size: 128, elements: !418)
!418 = !{!419, !1302}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !417, file: !264, line: 377, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !422, line: 640, size: 48640, elements: !423)
!422 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!423 = !{!424, !432, !434, !435, !441, !442, !443, !444, !445, !446, !447, !448, !452, !470, !481, !576, !577, !578, !589, !590, !592, !593, !594, !595, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !674, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !730, !732, !733, !734, !746, !748, !749, !750, !751, !752, !758, !759, !760, !761, !762, !763, !764, !776, !781, !785, !786, !787, !790, !794, !797, !800, !803, !806, !809, !812, !815, !821, !822, !823, !829, !830, !831, !832, !833, !842, !843, !844, !845, !846, !851, !852, !853, !856, !857, !860, !863, !866, !869, !872, !875, !876, !956, !959, !962, !963, !966, !967, !968, !974, !975, !976, !989, !990, !991, !1003, !1008, !1011, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !421, file: !422, line: 646, baseType: !425, size: 128)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !426, line: 56, size: 128, elements: !427)
!426 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!427 = !{!428, !429}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !425, file: !426, line: 57, baseType: !223, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !425, file: !426, line: 58, baseType: !430, size: 32, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !293, line: 21, baseType: !431)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !295, line: 27, baseType: !7)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !421, file: !422, line: 649, baseType: !433, size: 64, offset: 128)
!433 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !208)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !421, file: !422, line: 657, baseType: !91, size: 64, offset: 192)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !421, file: !422, line: 658, baseType: !436, size: 32, offset: 256)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !437, line: 113, baseType: !438)
!437 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !437, line: 111, size: 32, elements: !439)
!439 = !{!440}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !438, file: !437, line: 112, baseType: !314, size: 32)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !421, file: !422, line: 660, baseType: !7, size: 32, offset: 288)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !421, file: !422, line: 661, baseType: !7, size: 32, offset: 320)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !421, file: !422, line: 684, baseType: !88, size: 32, offset: 352)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !421, file: !422, line: 686, baseType: !88, size: 32, offset: 384)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !421, file: !422, line: 687, baseType: !88, size: 32, offset: 416)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !421, file: !422, line: 688, baseType: !88, size: 32, offset: 448)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !421, file: !422, line: 689, baseType: !7, size: 32, offset: 480)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !421, file: !422, line: 691, baseType: !449, size: 64, offset: 512)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !451)
!451 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !422, line: 691, flags: DIFlagFwdDecl)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !421, file: !422, line: 692, baseType: !453, size: 832, offset: 576)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !422, line: 451, size: 832, elements: !454)
!454 = !{!455, !460, !461, !462, !463, !464, !465, !466, !467, !468}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !453, file: !422, line: 453, baseType: !456, size: 128)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !422, line: 325, size: 128, elements: !457)
!457 = !{!458, !459}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !456, file: !422, line: 326, baseType: !223, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !456, file: !422, line: 327, baseType: !430, size: 32, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !453, file: !422, line: 454, baseType: !271, size: 192, align: 64, offset: 128)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !453, file: !422, line: 455, baseType: !119, size: 128, offset: 320)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !453, file: !422, line: 456, baseType: !7, size: 32, offset: 448)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !453, file: !422, line: 458, baseType: !292, size: 64, offset: 512)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !453, file: !422, line: 459, baseType: !292, size: 64, offset: 576)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !453, file: !422, line: 460, baseType: !292, size: 64, offset: 640)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !453, file: !422, line: 461, baseType: !292, size: 64, offset: 704)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !453, file: !422, line: 463, baseType: !292, size: 64, offset: 768)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !453, file: !422, line: 465, baseType: !469, offset: 832)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !422, line: 415, elements: !146)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !421, file: !422, line: 693, baseType: !471, size: 384, offset: 1408)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !422, line: 489, size: 384, elements: !472)
!472 = !{!473, !474, !475, !476, !477, !478, !479}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !471, file: !422, line: 490, baseType: !119, size: 128)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !471, file: !422, line: 491, baseType: !223, size: 64, offset: 128)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !471, file: !422, line: 492, baseType: !223, size: 64, offset: 192)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !471, file: !422, line: 493, baseType: !7, size: 32, offset: 256)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !471, file: !422, line: 494, baseType: !215, size: 16, offset: 288)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !471, file: !422, line: 495, baseType: !215, size: 16, offset: 304)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !471, file: !422, line: 497, baseType: !480, size: 64, offset: 320)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !421, file: !422, line: 697, baseType: !482, size: 1792, offset: 1792)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !422, line: 507, size: 1792, elements: !483)
!483 = !{!484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !573, !574}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !482, file: !422, line: 508, baseType: !271, size: 192, align: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !482, file: !422, line: 515, baseType: !292, size: 64, offset: 192)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !482, file: !422, line: 516, baseType: !292, size: 64, offset: 256)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !482, file: !422, line: 517, baseType: !292, size: 64, offset: 320)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !482, file: !422, line: 518, baseType: !292, size: 64, offset: 384)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !482, file: !422, line: 519, baseType: !292, size: 64, offset: 448)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !482, file: !422, line: 526, baseType: !328, size: 64, offset: 512)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !482, file: !422, line: 527, baseType: !292, size: 64, offset: 576)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !482, file: !422, line: 528, baseType: !7, size: 32, offset: 640)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !482, file: !422, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !482, file: !422, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !482, file: !422, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !482, file: !422, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !482, file: !422, line: 563, baseType: !498, size: 512, offset: 704)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !499)
!499 = !{!500, !508, !509, !514, !566, !570, !571, !572}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !498, file: !6, line: 119, baseType: !501, size: 256)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !502, line: 9, size: 256, elements: !503)
!502 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!503 = !{!504, !505}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !501, file: !502, line: 10, baseType: !271, size: 192, align: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !501, file: !502, line: 11, baseType: !506, size: 64, offset: 192)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !507, line: 29, baseType: !328)
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
!522 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !520, file: !6, line: 215, baseType: !339)
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
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !90, line: 27, baseType: !541)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !206, line: 96, baseType: !88)
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
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !272, line: 125, size: 128, elements: !558)
!558 = !{!559, !560}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !557, file: !272, line: 126, baseType: !288, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !557, file: !272, line: 127, baseType: !276, size: 64, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !516, file: !6, line: 166, baseType: !562, size: 64, offset: 384)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{!506}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !516, file: !6, line: 167, baseType: !506, size: 64, offset: 448)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !498, file: !6, line: 123, baseType: !567, size: 8, offset: 448)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !293, line: 17, baseType: !568)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !295, line: 21, baseType: !569)
!569 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !498, file: !6, line: 124, baseType: !567, size: 8, offset: 456)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !498, file: !6, line: 125, baseType: !567, size: 8, offset: 464)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !498, file: !6, line: 126, baseType: !567, size: 8, offset: 472)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !482, file: !422, line: 572, baseType: !498, size: 512, offset: 1216)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !482, file: !422, line: 580, baseType: !575, size: 64, offset: 1728)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !421, file: !422, line: 721, baseType: !7, size: 32, offset: 3584)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !421, file: !422, line: 722, baseType: !88, size: 32, offset: 3616)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !421, file: !422, line: 723, baseType: !579, size: 64, offset: 3648)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !581)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !582, line: 17, baseType: !583)
!582 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !582, line: 17, size: 64, elements: !584)
!584 = !{!585}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !583, file: !582, line: 17, baseType: !586, size: 64)
!586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 64, elements: !587)
!587 = !{!588}
!588 = !DISubrange(count: 1)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !421, file: !422, line: 724, baseType: !581, size: 64, offset: 3712)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !421, file: !422, line: 749, baseType: !591, offset: 3776)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !422, line: 290, elements: !146)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !421, file: !422, line: 751, baseType: !119, size: 128, offset: 3776)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !421, file: !422, line: 757, baseType: !280, size: 64, offset: 3904)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !421, file: !422, line: 758, baseType: !280, size: 64, offset: 3968)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !421, file: !422, line: 761, baseType: !596, size: 320, offset: 4032)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !369, line: 34, size: 320, elements: !597)
!597 = !{!598, !599}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !596, file: !369, line: 35, baseType: !292, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !596, file: !369, line: 36, baseType: !600, size: 256, offset: 64)
!600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 256, elements: !373)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !421, file: !422, line: 766, baseType: !88, size: 32, offset: 4352)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !421, file: !422, line: 767, baseType: !88, size: 32, offset: 4384)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !421, file: !422, line: 768, baseType: !88, size: 32, offset: 4416)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !421, file: !422, line: 770, baseType: !88, size: 32, offset: 4448)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !421, file: !422, line: 772, baseType: !223, size: 64, offset: 4480)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !421, file: !422, line: 775, baseType: !7, size: 32, offset: 4544)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !421, file: !422, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !421, file: !422, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !421, file: !422, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !421, file: !422, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !421, file: !422, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !421, file: !422, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !421, file: !422, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !421, file: !422, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !421, file: !422, line: 831, baseType: !223, size: 64, offset: 4672)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !421, file: !422, line: 833, baseType: !617, size: 384, offset: 4736)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !618)
!618 = !{!619, !624}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !617, file: !12, line: 26, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{!208, !623}
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, scope: !617, file: !12, line: 27, baseType: !625, size: 320, offset: 64)
!625 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !617, file: !12, line: 27, size: 320, elements: !626)
!626 = !{!627, !637, !664}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !625, file: !12, line: 36, baseType: !628, size: 320)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !625, file: !12, line: 29, size: 320, elements: !629)
!629 = !{!630, !632, !633, !634, !635, !636}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !628, file: !12, line: 30, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !628, file: !12, line: 31, baseType: !430, size: 32, offset: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !628, file: !12, line: 32, baseType: !430, size: 32, offset: 96)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !628, file: !12, line: 33, baseType: !430, size: 32, offset: 128)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !628, file: !12, line: 34, baseType: !292, size: 64, offset: 192)
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
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !206, line: 93, baseType: !256)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !647, file: !648, line: 9, baseType: !256, size: 64, offset: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !643, file: !12, line: 43, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !656, line: 7, size: 64, elements: !657)
!656 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!657 = !{!658, !662}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !655, file: !656, line: 8, baseType: !659, size: 32)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !656, line: 5, baseType: !660)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !293, line: 20, baseType: !661)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !295, line: 26, baseType: !88)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !655, file: !656, line: 9, baseType: !660, size: 32, offset: 32)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !638, file: !12, line: 45, baseType: !292, size: 64, offset: 128)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !625, file: !12, line: 54, baseType: !665, size: 256)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !625, file: !12, line: 48, size: 256, elements: !666)
!666 = !{!667, !670, !671, !672, !673}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !665, file: !12, line: 49, baseType: !668, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !665, file: !12, line: 50, baseType: !88, size: 32, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !665, file: !12, line: 51, baseType: !88, size: 32, offset: 96)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !665, file: !12, line: 52, baseType: !223, size: 64, offset: 128)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !665, file: !12, line: 53, baseType: !223, size: 64, offset: 192)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !421, file: !422, line: 835, baseType: !675, size: 32, offset: 5120)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !90, line: 22, baseType: !676)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !206, line: 28, baseType: !88)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !421, file: !422, line: 836, baseType: !675, size: 32, offset: 5152)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !421, file: !422, line: 840, baseType: !223, size: 64, offset: 5184)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !421, file: !422, line: 849, baseType: !420, size: 64, offset: 5248)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !421, file: !422, line: 852, baseType: !420, size: 64, offset: 5312)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !421, file: !422, line: 857, baseType: !119, size: 128, offset: 5376)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !421, file: !422, line: 858, baseType: !119, size: 128, offset: 5504)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !421, file: !422, line: 859, baseType: !420, size: 64, offset: 5632)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !421, file: !422, line: 867, baseType: !119, size: 128, offset: 5696)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !421, file: !422, line: 868, baseType: !119, size: 128, offset: 5824)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !421, file: !422, line: 871, baseType: !687, size: 64, offset: 5952)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !689, line: 59, size: 768, elements: !690)
!689 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!690 = !{!691, !692, !693, !694, !705, !706, !713, !722}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !688, file: !689, line: 61, baseType: !436, size: 32)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !688, file: !689, line: 62, baseType: !7, size: 32, offset: 32)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !688, file: !689, line: 63, baseType: !132, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !688, file: !689, line: 65, baseType: !695, size: 256, offset: 64)
!695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !696, size: 256, elements: !373)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !90, line: 182, size: 64, elements: !697)
!697 = !{!698}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !696, file: !90, line: 183, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !90, line: 186, size: 128, elements: !701)
!701 = !{!702, !703}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !700, file: !90, line: 187, baseType: !699, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !700, file: !90, line: 187, baseType: !704, size: 64, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !688, file: !689, line: 66, baseType: !696, size: 64, offset: 320)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !688, file: !689, line: 68, baseType: !707, size: 128, offset: 384)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !708, line: 40, baseType: !709)
!708 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !708, line: 36, size: 128, elements: !710)
!710 = !{!711, !712}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !709, file: !708, line: 37, baseType: !132)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !709, file: !708, line: 38, baseType: !119, size: 128)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !688, file: !689, line: 69, baseType: !714, size: 128, align: 64, offset: 512)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !90, line: 216, size: 128, align: 64, elements: !715)
!715 = !{!716, !718}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !714, file: !90, line: 217, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !714, file: !90, line: 218, baseType: !719, size: 64, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{null, !717}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !688, file: !689, line: 70, baseType: !723, size: 128, offset: 640)
!723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !724, size: 128, elements: !587)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !689, line: 54, size: 128, elements: !725)
!725 = !{!726, !727}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !724, file: !689, line: 55, baseType: !88, size: 32)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !724, file: !689, line: 56, baseType: !728, size: 64, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !689, line: 56, flags: DIFlagFwdDecl)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !421, file: !422, line: 872, baseType: !731, size: 512, offset: 6016)
!731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !700, size: 512, elements: !373)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !421, file: !422, line: 873, baseType: !119, size: 128, offset: 6528)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !421, file: !422, line: 874, baseType: !119, size: 128, offset: 6656)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !421, file: !422, line: 876, baseType: !735, size: 64, offset: 6784)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !737, line: 26, size: 192, elements: !738)
!737 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!738 = !{!739, !740}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !736, file: !737, line: 27, baseType: !7, size: 32)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !736, file: !737, line: 28, baseType: !741, size: 128, offset: 64)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !742, line: 43, size: 128, elements: !743)
!742 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!743 = !{!744, !745}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !741, file: !742, line: 44, baseType: !339)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !741, file: !742, line: 45, baseType: !119, size: 128)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !421, file: !422, line: 879, baseType: !747, size: 64, offset: 6848)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !421, file: !422, line: 882, baseType: !747, size: 64, offset: 6912)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !421, file: !422, line: 884, baseType: !292, size: 64, offset: 6976)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !421, file: !422, line: 885, baseType: !292, size: 64, offset: 7040)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !421, file: !422, line: 890, baseType: !292, size: 64, offset: 7104)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !421, file: !422, line: 891, baseType: !753, size: 128, offset: 7168)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !422, line: 242, size: 128, elements: !754)
!754 = !{!755, !756, !757}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !753, file: !422, line: 244, baseType: !292, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !753, file: !422, line: 245, baseType: !292, size: 64, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !753, file: !422, line: 246, baseType: !339, offset: 128)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !421, file: !422, line: 900, baseType: !223, size: 64, offset: 7296)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !421, file: !422, line: 901, baseType: !223, size: 64, offset: 7360)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !421, file: !422, line: 904, baseType: !292, size: 64, offset: 7424)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !421, file: !422, line: 907, baseType: !292, size: 64, offset: 7488)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !421, file: !422, line: 910, baseType: !223, size: 64, offset: 7552)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !421, file: !422, line: 911, baseType: !223, size: 64, offset: 7616)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !421, file: !422, line: 914, baseType: !765, size: 640, offset: 7680)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !766, line: 123, size: 640, elements: !767)
!766 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!767 = !{!768, !774, !775}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !765, file: !766, line: 124, baseType: !769, size: 576)
!769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !770, size: 576, elements: !174)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !766, line: 108, size: 192, elements: !771)
!771 = !{!772, !773}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !770, file: !766, line: 109, baseType: !292, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !770, file: !766, line: 110, baseType: !554, size: 128, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !765, file: !766, line: 125, baseType: !7, size: 32, offset: 576)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !765, file: !766, line: 126, baseType: !7, size: 32, offset: 608)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !421, file: !422, line: 917, baseType: !777, size: 192, offset: 8320)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !766, line: 134, size: 192, elements: !778)
!778 = !{!779, !780}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !777, file: !766, line: 135, baseType: !714, size: 128, align: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !777, file: !766, line: 136, baseType: !7, size: 32, offset: 128)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !421, file: !422, line: 923, baseType: !782, size: 64, offset: 8512)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !784)
!784 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !422, line: 923, flags: DIFlagFwdDecl)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !421, file: !422, line: 926, baseType: !782, size: 64, offset: 8576)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !421, file: !422, line: 929, baseType: !782, size: 64, offset: 8640)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !421, file: !422, line: 933, baseType: !788, size: 64, offset: 8704)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !422, line: 933, flags: DIFlagFwdDecl)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !421, file: !422, line: 943, baseType: !791, size: 128, offset: 8768)
!791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 128, elements: !792)
!792 = !{!793}
!793 = !DISubrange(count: 16)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !421, file: !422, line: 945, baseType: !795, size: 64, offset: 8896)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !422, line: 49, flags: DIFlagFwdDecl)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !421, file: !422, line: 956, baseType: !798, size: 64, offset: 8960)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !422, line: 45, flags: DIFlagFwdDecl)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !421, file: !422, line: 959, baseType: !801, size: 64, offset: 9024)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !422, line: 959, flags: DIFlagFwdDecl)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !421, file: !422, line: 962, baseType: !804, size: 64, offset: 9088)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !422, line: 66, flags: DIFlagFwdDecl)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !421, file: !422, line: 966, baseType: !807, size: 64, offset: 9152)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !422, line: 50, flags: DIFlagFwdDecl)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !421, file: !422, line: 969, baseType: !810, size: 64, offset: 9216)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !766, line: 223, flags: DIFlagFwdDecl)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !421, file: !422, line: 970, baseType: !813, size: 64, offset: 9280)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !422, line: 62, flags: DIFlagFwdDecl)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !421, file: !422, line: 971, baseType: !816, size: 64, offset: 9344)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !817, line: 25, baseType: !818)
!817 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !817, line: 23, size: 64, elements: !819)
!819 = !{!820}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !818, file: !817, line: 24, baseType: !586, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !421, file: !422, line: 972, baseType: !816, size: 64, offset: 9408)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !421, file: !422, line: 974, baseType: !816, size: 64, offset: 9472)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !421, file: !422, line: 975, baseType: !824, size: 192, offset: 9536)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !825, line: 30, size: 192, elements: !826)
!825 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!826 = !{!827, !828}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !824, file: !825, line: 31, baseType: !119, size: 128)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !824, file: !825, line: 32, baseType: !816, size: 64, offset: 128)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !421, file: !422, line: 976, baseType: !223, size: 64, offset: 9728)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !421, file: !422, line: 977, baseType: !220, size: 64, offset: 9792)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !421, file: !422, line: 978, baseType: !7, size: 32, offset: 9856)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !421, file: !422, line: 980, baseType: !717, size: 64, offset: 9920)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !421, file: !422, line: 989, baseType: !834, size: 128, offset: 9984)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !835, line: 35, size: 128, elements: !836)
!835 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!836 = !{!837, !838, !839}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !834, file: !835, line: 36, baseType: !88, size: 32)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !834, file: !835, line: 37, baseType: !314, size: 32, offset: 32)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !834, file: !835, line: 38, baseType: !840, size: 64, offset: 64)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !835, line: 23, flags: DIFlagFwdDecl)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !421, file: !422, line: 992, baseType: !292, size: 64, offset: 10112)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !421, file: !422, line: 993, baseType: !292, size: 64, offset: 10176)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !421, file: !422, line: 996, baseType: !132, offset: 10240)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !421, file: !422, line: 999, baseType: !339, offset: 10240)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !421, file: !422, line: 1001, baseType: !847, size: 64, offset: 10240)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !422, line: 636, size: 64, elements: !848)
!848 = !{!849}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !847, file: !422, line: 637, baseType: !850, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !421, file: !422, line: 1005, baseType: !557, size: 128, offset: 10304)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !421, file: !422, line: 1007, baseType: !420, size: 64, offset: 10432)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !421, file: !422, line: 1009, baseType: !854, size: 64, offset: 10496)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !422, line: 1009, flags: DIFlagFwdDecl)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !421, file: !422, line: 1043, baseType: !91, size: 64, offset: 10560)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !421, file: !422, line: 1046, baseType: !858, size: 64, offset: 10624)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !422, line: 41, flags: DIFlagFwdDecl)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !421, file: !422, line: 1050, baseType: !861, size: 64, offset: 10688)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !422, line: 42, flags: DIFlagFwdDecl)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !421, file: !422, line: 1054, baseType: !864, size: 64, offset: 10752)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !422, line: 55, flags: DIFlagFwdDecl)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !421, file: !422, line: 1056, baseType: !867, size: 64, offset: 10816)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !422, line: 40, flags: DIFlagFwdDecl)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !421, file: !422, line: 1058, baseType: !870, size: 64, offset: 10880)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !422, line: 47, flags: DIFlagFwdDecl)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !421, file: !422, line: 1061, baseType: !873, size: 64, offset: 10944)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !422, line: 43, flags: DIFlagFwdDecl)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !421, file: !422, line: 1064, baseType: !223, size: 64, offset: 11008)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !421, file: !422, line: 1065, baseType: !877, size: 64, offset: 11072)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !825, line: 14, baseType: !879)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !825, line: 12, size: 384, elements: !880)
!880 = !{!881}
!881 = !DIDerivedType(tag: DW_TAG_member, scope: !879, file: !825, line: 13, baseType: !882, size: 384)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !879, file: !825, line: 13, size: 384, elements: !883)
!883 = !{!884, !885, !886, !887}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !882, file: !825, line: 13, baseType: !88, size: 32)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !882, file: !825, line: 13, baseType: !88, size: 32, offset: 32)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !882, file: !825, line: 13, baseType: !88, size: 32, offset: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !882, file: !825, line: 13, baseType: !888, size: 256, offset: 128)
!888 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !889, line: 32, size: 256, elements: !890)
!889 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!890 = !{!891, !897, !910, !916, !925, !945, !950}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !888, file: !889, line: 37, baseType: !892, size: 64)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !888, file: !889, line: 34, size: 64, elements: !893)
!893 = !{!894, !895}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !892, file: !889, line: 35, baseType: !676, size: 32)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !892, file: !889, line: 36, baseType: !896, size: 32, offset: 32)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !206, line: 49, baseType: !7)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !888, file: !889, line: 45, baseType: !898, size: 192)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !888, file: !889, line: 40, size: 192, elements: !899)
!899 = !{!900, !902, !903, !909}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !898, file: !889, line: 41, baseType: !901, size: 32)
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !206, line: 95, baseType: !88)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !898, file: !889, line: 42, baseType: !88, size: 32, offset: 32)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !898, file: !889, line: 43, baseType: !904, size: 64, offset: 64)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !889, line: 11, baseType: !905)
!905 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !889, line: 8, size: 64, elements: !906)
!906 = !{!907, !908}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !905, file: !889, line: 9, baseType: !88, size: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !905, file: !889, line: 10, baseType: !91, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !898, file: !889, line: 44, baseType: !88, size: 32, offset: 128)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !888, file: !889, line: 52, baseType: !911, size: 128)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !888, file: !889, line: 48, size: 128, elements: !912)
!912 = !{!913, !914, !915}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !911, file: !889, line: 49, baseType: !676, size: 32)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !911, file: !889, line: 50, baseType: !896, size: 32, offset: 32)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !911, file: !889, line: 51, baseType: !904, size: 64, offset: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !888, file: !889, line: 61, baseType: !917, size: 256)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !888, file: !889, line: 55, size: 256, elements: !918)
!918 = !{!919, !920, !921, !922, !924}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !917, file: !889, line: 56, baseType: !676, size: 32)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !917, file: !889, line: 57, baseType: !896, size: 32, offset: 32)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !917, file: !889, line: 58, baseType: !88, size: 32, offset: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !917, file: !889, line: 59, baseType: !923, size: 64, offset: 128)
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !206, line: 94, baseType: !207)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !917, file: !889, line: 60, baseType: !923, size: 64, offset: 192)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !888, file: !889, line: 95, baseType: !926, size: 256)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !888, file: !889, line: 64, size: 256, elements: !927)
!927 = !{!928, !929}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !926, file: !889, line: 65, baseType: !91, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, scope: !926, file: !889, line: 77, baseType: !930, size: 192, offset: 64)
!930 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !926, file: !889, line: 77, size: 192, elements: !931)
!931 = !{!932, !933, !940}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !930, file: !889, line: 82, baseType: !409, size: 16)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !930, file: !889, line: 88, baseType: !934, size: 192)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !930, file: !889, line: 84, size: 192, elements: !935)
!935 = !{!936, !938, !939}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !934, file: !889, line: 85, baseType: !937, size: 64)
!937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 64, elements: !536)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !934, file: !889, line: 86, baseType: !91, size: 64, offset: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !934, file: !889, line: 87, baseType: !91, size: 64, offset: 128)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !930, file: !889, line: 93, baseType: !941, size: 96)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !930, file: !889, line: 90, size: 96, elements: !942)
!942 = !{!943, !944}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !941, file: !889, line: 91, baseType: !937, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !941, file: !889, line: 92, baseType: !431, size: 32, offset: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !888, file: !889, line: 101, baseType: !946, size: 128)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !888, file: !889, line: 98, size: 128, elements: !947)
!947 = !{!948, !949}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !946, file: !889, line: 99, baseType: !208, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !946, file: !889, line: 100, baseType: !88, size: 32, offset: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !888, file: !889, line: 108, baseType: !951, size: 128)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !888, file: !889, line: 104, size: 128, elements: !952)
!952 = !{!953, !954, !955}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !951, file: !889, line: 105, baseType: !91, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !951, file: !889, line: 106, baseType: !88, size: 32, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !951, file: !889, line: 107, baseType: !7, size: 32, offset: 96)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !421, file: !422, line: 1067, baseType: !957, offset: 11136)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !958, line: 12, elements: !146)
!958 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!959 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !421, file: !422, line: 1099, baseType: !960, size: 64, offset: 11136)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !422, line: 56, flags: DIFlagFwdDecl)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !421, file: !422, line: 1103, baseType: !119, size: 128, offset: 11200)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !421, file: !422, line: 1104, baseType: !964, size: 64, offset: 11328)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !422, line: 46, flags: DIFlagFwdDecl)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !421, file: !422, line: 1105, baseType: !391, size: 192, offset: 11392)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !421, file: !422, line: 1106, baseType: !7, size: 32, offset: 11584)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !421, file: !422, line: 1109, baseType: !969, size: 128, offset: 11648)
!969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !970, size: 128, elements: !972)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !422, line: 51, flags: DIFlagFwdDecl)
!972 = !{!973}
!973 = !DISubrange(count: 2)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !421, file: !422, line: 1110, baseType: !391, size: 192, offset: 11776)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !421, file: !422, line: 1111, baseType: !119, size: 128, offset: 11968)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !421, file: !422, line: 1173, baseType: !977, size: 64, offset: 12096)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !979, line: 62, size: 256, align: 256, elements: !980)
!979 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!980 = !{!981, !982, !983, !988}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !978, file: !979, line: 75, baseType: !431, size: 32)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !978, file: !979, line: 90, baseType: !431, size: 32, offset: 32)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !978, file: !979, line: 124, baseType: !984, size: 64, offset: 64)
!984 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !978, file: !979, line: 109, size: 64, elements: !985)
!985 = !{!986, !987}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !984, file: !979, line: 110, baseType: !294, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !984, file: !979, line: 112, baseType: !294, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !978, file: !979, line: 144, baseType: !431, size: 32, offset: 128)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !421, file: !422, line: 1174, baseType: !430, size: 32, offset: 12160)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !421, file: !422, line: 1179, baseType: !223, size: 64, offset: 12224)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !421, file: !422, line: 1182, baseType: !992, size: 128, offset: 12288)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !369, line: 76, size: 128, elements: !993)
!993 = !{!994, !999, !1002}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !992, file: !369, line: 85, baseType: !995, size: 64)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !996, line: 7, size: 64, elements: !997)
!996 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!997 = !{!998}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !995, file: !996, line: 12, baseType: !583, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !992, file: !369, line: 88, baseType: !1000, size: 8, offset: 64)
!1000 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !90, line: 30, baseType: !1001)
!1001 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !992, file: !369, line: 95, baseType: !1000, size: 8, offset: 72)
!1003 = !DIDerivedType(tag: DW_TAG_member, scope: !421, file: !422, line: 1184, baseType: !1004, size: 128, offset: 12416)
!1004 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !421, file: !422, line: 1184, size: 128, elements: !1005)
!1005 = !{!1006, !1007}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1004, file: !422, line: 1185, baseType: !436, size: 32)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1004, file: !422, line: 1186, baseType: !714, size: 128, align: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !421, file: !422, line: 1190, baseType: !1009, size: 64, offset: 12544)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !422, line: 53, flags: DIFlagFwdDecl)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !421, file: !422, line: 1192, baseType: !1012, size: 128, offset: 12608)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !369, line: 64, size: 128, elements: !1013)
!1013 = !{!1014, !1107, !1108}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1012, file: !369, line: 65, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !264, line: 68, size: 512, align: 128, elements: !1017)
!1017 = !{!1018, !1019, !1099, !1106}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1016, file: !264, line: 69, baseType: !223, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, scope: !1016, file: !264, line: 77, baseType: !1020, size: 320, offset: 64)
!1020 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1016, file: !264, line: 77, size: 320, elements: !1021)
!1021 = !{!1022, !1031, !1036, !1064, !1072, !1078, !1091, !1098}
!1022 = !DIDerivedType(tag: DW_TAG_member, scope: !1020, file: !264, line: 78, baseType: !1023, size: 320)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1020, file: !264, line: 78, size: 320, elements: !1024)
!1024 = !{!1025, !1026, !1029, !1030}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1023, file: !264, line: 84, baseType: !119, size: 128)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1023, file: !264, line: 86, baseType: !1027, size: 64, offset: 128)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !264, line: 26, flags: DIFlagFwdDecl)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1023, file: !264, line: 87, baseType: !223, size: 64, offset: 192)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1023, file: !264, line: 94, baseType: !223, size: 64, offset: 256)
!1031 = !DIDerivedType(tag: DW_TAG_member, scope: !1020, file: !264, line: 96, baseType: !1032, size: 64)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1020, file: !264, line: 96, size: 64, elements: !1033)
!1033 = !{!1034}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1032, file: !264, line: 101, baseType: !1035, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !90, line: 143, baseType: !292)
!1036 = !DIDerivedType(tag: DW_TAG_member, scope: !1020, file: !264, line: 103, baseType: !1037, size: 320)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1020, file: !264, line: 103, size: 320, elements: !1038)
!1038 = !{!1039, !1049, !1052, !1053}
!1039 = !DIDerivedType(tag: DW_TAG_member, scope: !1037, file: !264, line: 104, baseType: !1040, size: 128)
!1040 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1037, file: !264, line: 104, size: 128, elements: !1041)
!1041 = !{!1042, !1043}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1040, file: !264, line: 105, baseType: !119, size: 128)
!1043 = !DIDerivedType(tag: DW_TAG_member, scope: !1040, file: !264, line: 106, baseType: !1044, size: 128)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1040, file: !264, line: 106, size: 128, elements: !1045)
!1045 = !{!1046, !1047, !1048}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1044, file: !264, line: 107, baseType: !1015, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1044, file: !264, line: 109, baseType: !88, size: 32, offset: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1044, file: !264, line: 110, baseType: !88, size: 32, offset: 96)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1037, file: !264, line: 117, baseType: !1050, size: 64, offset: 128)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !264, line: 117, flags: DIFlagFwdDecl)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1037, file: !264, line: 119, baseType: !91, size: 64, offset: 192)
!1053 = !DIDerivedType(tag: DW_TAG_member, scope: !1037, file: !264, line: 120, baseType: !1054, size: 64, offset: 256)
!1054 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1037, file: !264, line: 120, size: 64, elements: !1055)
!1055 = !{!1056, !1057, !1058}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1054, file: !264, line: 121, baseType: !91, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1054, file: !264, line: 122, baseType: !223, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, scope: !1054, file: !264, line: 123, baseType: !1059, size: 32)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1054, file: !264, line: 123, size: 32, elements: !1060)
!1060 = !{!1061, !1062, !1063}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1059, file: !264, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1059, file: !264, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1059, file: !264, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1064 = !DIDerivedType(tag: DW_TAG_member, scope: !1020, file: !264, line: 130, baseType: !1065, size: 192)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1020, file: !264, line: 130, size: 192, elements: !1066)
!1066 = !{!1067, !1068, !1069, !1070, !1071}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1065, file: !264, line: 131, baseType: !223, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1065, file: !264, line: 134, baseType: !569, size: 8, offset: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1065, file: !264, line: 135, baseType: !569, size: 8, offset: 72)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1065, file: !264, line: 136, baseType: !314, size: 32, offset: 96)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1065, file: !264, line: 137, baseType: !7, size: 32, offset: 128)
!1072 = !DIDerivedType(tag: DW_TAG_member, scope: !1020, file: !264, line: 139, baseType: !1073, size: 256)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1020, file: !264, line: 139, size: 256, elements: !1074)
!1074 = !{!1075, !1076, !1077}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1073, file: !264, line: 140, baseType: !223, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1073, file: !264, line: 141, baseType: !314, size: 32, offset: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1073, file: !264, line: 143, baseType: !119, size: 128, offset: 128)
!1078 = !DIDerivedType(tag: DW_TAG_member, scope: !1020, file: !264, line: 145, baseType: !1079, size: 256)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1020, file: !264, line: 145, size: 256, elements: !1080)
!1080 = !{!1081, !1082, !1084, !1085, !1090}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1079, file: !264, line: 146, baseType: !223, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1079, file: !264, line: 147, baseType: !1083, size: 64, offset: 64)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !253, line: 509, baseType: !1015)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1079, file: !264, line: 148, baseType: !223, size: 64, offset: 128)
!1085 = !DIDerivedType(tag: DW_TAG_member, scope: !1079, file: !264, line: 149, baseType: !1086, size: 64, offset: 192)
!1086 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1079, file: !264, line: 149, size: 64, elements: !1087)
!1087 = !{!1088, !1089}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1086, file: !264, line: 150, baseType: !280, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1086, file: !264, line: 151, baseType: !314, size: 32)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1079, file: !264, line: 156, baseType: !132, offset: 256)
!1091 = !DIDerivedType(tag: DW_TAG_member, scope: !1020, file: !264, line: 159, baseType: !1092, size: 128)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1020, file: !264, line: 159, size: 128, elements: !1093)
!1093 = !{!1094, !1097}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1092, file: !264, line: 161, baseType: !1095, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !264, line: 161, flags: DIFlagFwdDecl)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1092, file: !264, line: 162, baseType: !91, size: 64, offset: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1020, file: !264, line: 176, baseType: !714, size: 128, align: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, scope: !1016, file: !264, line: 179, baseType: !1100, size: 32, offset: 384)
!1100 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1016, file: !264, line: 179, size: 32, elements: !1101)
!1101 = !{!1102, !1103, !1104, !1105}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1100, file: !264, line: 184, baseType: !314, size: 32)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1100, file: !264, line: 192, baseType: !7, size: 32)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1100, file: !264, line: 194, baseType: !7, size: 32)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1100, file: !264, line: 195, baseType: !88, size: 32)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1016, file: !264, line: 199, baseType: !314, size: 32, offset: 416)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1012, file: !369, line: 67, baseType: !431, size: 32, offset: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1012, file: !369, line: 68, baseType: !431, size: 32, offset: 96)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !421, file: !422, line: 1206, baseType: !88, size: 32, offset: 12736)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !421, file: !422, line: 1207, baseType: !88, size: 32, offset: 12768)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !421, file: !422, line: 1209, baseType: !223, size: 64, offset: 12800)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !421, file: !422, line: 1219, baseType: !292, size: 64, offset: 12864)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !421, file: !422, line: 1220, baseType: !292, size: 64, offset: 12928)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !421, file: !422, line: 1317, baseType: !88, size: 32, offset: 12992)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !421, file: !422, line: 1319, baseType: !420, size: 64, offset: 13056)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !421, file: !422, line: 1322, baseType: !1117, size: 64, offset: 13120)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !422, line: 1322, flags: DIFlagFwdDecl)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !421, file: !422, line: 1326, baseType: !436, size: 32, offset: 13184)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !421, file: !422, line: 1342, baseType: !91, size: 64, offset: 13248)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !421, file: !422, line: 1343, baseType: !294, size: 64, offset: 13312)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !421, file: !422, line: 1344, baseType: !292, size: 64, offset: 13376)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !421, file: !422, line: 1345, baseType: !294, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !421, file: !422, line: 1346, baseType: !294, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !421, file: !422, line: 1347, baseType: !294, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !421, file: !422, line: 1348, baseType: !714, size: 128, align: 64, offset: 13504)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !421, file: !422, line: 1358, baseType: !1128, size: 34816, offset: 13824)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1129, line: 485, size: 34816, elements: !1130)
!1129 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1130 = !{!1131, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1160, !1161, !1162, !1163, !1164, !1165, !1168, !1169, !1170}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1128, file: !1129, line: 487, baseType: !1132, size: 192)
!1132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1133, size: 192, elements: !174)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1134, line: 16, size: 64, elements: !1135)
!1134 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1135 = !{!1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1133, file: !1134, line: 17, baseType: !404, size: 16)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1133, file: !1134, line: 18, baseType: !404, size: 16, offset: 16)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1133, file: !1134, line: 19, baseType: !404, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1133, file: !1134, line: 19, baseType: !404, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1133, file: !1134, line: 19, baseType: !404, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1133, file: !1134, line: 19, baseType: !404, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1133, file: !1134, line: 19, baseType: !404, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1133, file: !1134, line: 20, baseType: !404, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1133, file: !1134, line: 20, baseType: !404, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1133, file: !1134, line: 20, baseType: !404, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1133, file: !1134, line: 20, baseType: !404, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1133, file: !1134, line: 20, baseType: !404, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1133, file: !1134, line: 20, baseType: !404, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1128, file: !1129, line: 491, baseType: !223, size: 64, offset: 192)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1128, file: !1129, line: 495, baseType: !215, size: 16, offset: 256)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1128, file: !1129, line: 496, baseType: !215, size: 16, offset: 272)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1128, file: !1129, line: 497, baseType: !215, size: 16, offset: 288)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1128, file: !1129, line: 498, baseType: !215, size: 16, offset: 304)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1128, file: !1129, line: 502, baseType: !223, size: 64, offset: 320)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1128, file: !1129, line: 503, baseType: !223, size: 64, offset: 384)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1128, file: !1129, line: 514, baseType: !1157, size: 256, offset: 448)
!1157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1158, size: 256, elements: !373)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1129, line: 483, flags: DIFlagFwdDecl)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1128, file: !1129, line: 516, baseType: !223, size: 64, offset: 704)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1128, file: !1129, line: 518, baseType: !223, size: 64, offset: 768)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1128, file: !1129, line: 520, baseType: !223, size: 64, offset: 832)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1128, file: !1129, line: 521, baseType: !223, size: 64, offset: 896)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1128, file: !1129, line: 522, baseType: !223, size: 64, offset: 960)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1128, file: !1129, line: 528, baseType: !1166, size: 64, offset: 1024)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1129, line: 10, flags: DIFlagFwdDecl)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1128, file: !1129, line: 535, baseType: !223, size: 64, offset: 1088)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1128, file: !1129, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1128, file: !1129, line: 540, baseType: !1171, size: 33280, offset: 1536)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1172, line: 317, size: 33280, elements: !1173)
!1172 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1173 = !{!1174, !1175, !1176}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1171, file: !1172, line: 330, baseType: !7, size: 32)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1171, file: !1172, line: 337, baseType: !223, size: 64, offset: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1171, file: !1172, line: 348, baseType: !1177, size: 32768, offset: 512)
!1177 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1172, line: 304, size: 32768, elements: !1178)
!1178 = !{!1179, !1192, !1231, !1281, !1298}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1177, file: !1172, line: 305, baseType: !1180, size: 896)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1172, line: 12, size: 896, elements: !1181)
!1181 = !{!1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1191}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1180, file: !1172, line: 13, baseType: !430, size: 32)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1180, file: !1172, line: 14, baseType: !430, size: 32, offset: 32)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1180, file: !1172, line: 15, baseType: !430, size: 32, offset: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1180, file: !1172, line: 16, baseType: !430, size: 32, offset: 96)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1180, file: !1172, line: 17, baseType: !430, size: 32, offset: 128)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1180, file: !1172, line: 18, baseType: !430, size: 32, offset: 160)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1180, file: !1172, line: 19, baseType: !430, size: 32, offset: 192)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1180, file: !1172, line: 22, baseType: !1190, size: 640, offset: 224)
!1190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !430, size: 640, elements: !100)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1180, file: !1172, line: 25, baseType: !430, size: 32, offset: 864)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1177, file: !1172, line: 306, baseType: !1193, size: 4096, align: 128)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1172, line: 34, size: 4096, align: 128, elements: !1194)
!1194 = !{!1195, !1196, !1197, !1198, !1199, !1214, !1215, !1216, !1220, !1222, !1226}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1193, file: !1172, line: 35, baseType: !404, size: 16)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1193, file: !1172, line: 36, baseType: !404, size: 16, offset: 16)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1193, file: !1172, line: 37, baseType: !404, size: 16, offset: 32)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1193, file: !1172, line: 38, baseType: !404, size: 16, offset: 48)
!1199 = !DIDerivedType(tag: DW_TAG_member, scope: !1193, file: !1172, line: 39, baseType: !1200, size: 128, offset: 64)
!1200 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1193, file: !1172, line: 39, size: 128, elements: !1201)
!1201 = !{!1202, !1207}
!1202 = !DIDerivedType(tag: DW_TAG_member, scope: !1200, file: !1172, line: 40, baseType: !1203, size: 128)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1200, file: !1172, line: 40, size: 128, elements: !1204)
!1204 = !{!1205, !1206}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1203, file: !1172, line: 41, baseType: !292, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1203, file: !1172, line: 42, baseType: !292, size: 64, offset: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, scope: !1200, file: !1172, line: 44, baseType: !1208, size: 128)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1200, file: !1172, line: 44, size: 128, elements: !1209)
!1209 = !{!1210, !1211, !1212, !1213}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1208, file: !1172, line: 45, baseType: !430, size: 32)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1208, file: !1172, line: 46, baseType: !430, size: 32, offset: 32)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1208, file: !1172, line: 47, baseType: !430, size: 32, offset: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1208, file: !1172, line: 48, baseType: !430, size: 32, offset: 96)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1193, file: !1172, line: 51, baseType: !430, size: 32, offset: 192)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1193, file: !1172, line: 52, baseType: !430, size: 32, offset: 224)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1193, file: !1172, line: 55, baseType: !1217, size: 1024, offset: 256)
!1217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !430, size: 1024, elements: !1218)
!1218 = !{!1219}
!1219 = !DISubrange(count: 32)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1193, file: !1172, line: 58, baseType: !1221, size: 2048, offset: 1280)
!1221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !430, size: 2048, elements: !178)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1193, file: !1172, line: 60, baseType: !1223, size: 384, offset: 3328)
!1223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !430, size: 384, elements: !1224)
!1224 = !{!1225}
!1225 = !DISubrange(count: 12)
!1226 = !DIDerivedType(tag: DW_TAG_member, scope: !1193, file: !1172, line: 62, baseType: !1227, size: 384, offset: 3712)
!1227 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1193, file: !1172, line: 62, size: 384, elements: !1228)
!1228 = !{!1229, !1230}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1227, file: !1172, line: 63, baseType: !1223, size: 384)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1227, file: !1172, line: 64, baseType: !1223, size: 384)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1177, file: !1172, line: 307, baseType: !1232, size: 1088)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1172, line: 79, size: 1088, elements: !1233)
!1233 = !{!1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1280}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1232, file: !1172, line: 80, baseType: !430, size: 32)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1232, file: !1172, line: 81, baseType: !430, size: 32, offset: 32)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1232, file: !1172, line: 82, baseType: !430, size: 32, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1232, file: !1172, line: 83, baseType: !430, size: 32, offset: 96)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1232, file: !1172, line: 84, baseType: !430, size: 32, offset: 128)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1232, file: !1172, line: 85, baseType: !430, size: 32, offset: 160)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1232, file: !1172, line: 86, baseType: !430, size: 32, offset: 192)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1232, file: !1172, line: 88, baseType: !1190, size: 640, offset: 224)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1232, file: !1172, line: 89, baseType: !567, size: 8, offset: 864)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1232, file: !1172, line: 90, baseType: !567, size: 8, offset: 872)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1232, file: !1172, line: 91, baseType: !567, size: 8, offset: 880)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1232, file: !1172, line: 92, baseType: !567, size: 8, offset: 888)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1232, file: !1172, line: 93, baseType: !567, size: 8, offset: 896)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1232, file: !1172, line: 94, baseType: !567, size: 8, offset: 904)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1232, file: !1172, line: 95, baseType: !1249, size: 64, offset: 960)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1251, line: 11, size: 128, elements: !1252)
!1251 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1252 = !{!1253, !1254}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1250, file: !1251, line: 12, baseType: !208, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1250, file: !1251, line: 13, baseType: !1255, size: 64, offset: 64)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1257, line: 56, size: 1344, elements: !1258)
!1257 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1258 = !{!1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1256, file: !1257, line: 61, baseType: !223, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1256, file: !1257, line: 62, baseType: !223, size: 64, offset: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1256, file: !1257, line: 63, baseType: !223, size: 64, offset: 128)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1256, file: !1257, line: 64, baseType: !223, size: 64, offset: 192)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1256, file: !1257, line: 65, baseType: !223, size: 64, offset: 256)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1256, file: !1257, line: 66, baseType: !223, size: 64, offset: 320)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1256, file: !1257, line: 68, baseType: !223, size: 64, offset: 384)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1256, file: !1257, line: 69, baseType: !223, size: 64, offset: 448)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1256, file: !1257, line: 70, baseType: !223, size: 64, offset: 512)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1256, file: !1257, line: 71, baseType: !223, size: 64, offset: 576)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1256, file: !1257, line: 72, baseType: !223, size: 64, offset: 640)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1256, file: !1257, line: 73, baseType: !223, size: 64, offset: 704)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1256, file: !1257, line: 74, baseType: !223, size: 64, offset: 768)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1256, file: !1257, line: 75, baseType: !223, size: 64, offset: 832)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1256, file: !1257, line: 76, baseType: !223, size: 64, offset: 896)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1256, file: !1257, line: 81, baseType: !223, size: 64, offset: 960)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1256, file: !1257, line: 83, baseType: !223, size: 64, offset: 1024)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1256, file: !1257, line: 84, baseType: !223, size: 64, offset: 1088)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1256, file: !1257, line: 85, baseType: !223, size: 64, offset: 1152)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1256, file: !1257, line: 86, baseType: !223, size: 64, offset: 1216)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1256, file: !1257, line: 87, baseType: !223, size: 64, offset: 1280)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1232, file: !1172, line: 96, baseType: !430, size: 32, offset: 1024)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1177, file: !1172, line: 308, baseType: !1282, size: 4608, align: 512)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1172, line: 289, size: 4608, align: 512, elements: !1283)
!1283 = !{!1284, !1285, !1294}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1282, file: !1172, line: 290, baseType: !1193, size: 4096, align: 128)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1282, file: !1172, line: 291, baseType: !1286, size: 512, offset: 4096)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1172, line: 268, size: 512, elements: !1287)
!1287 = !{!1288, !1289, !1290}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1286, file: !1172, line: 269, baseType: !292, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1286, file: !1172, line: 270, baseType: !292, size: 64, offset: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1286, file: !1172, line: 271, baseType: !1291, size: 384, offset: 128)
!1291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 384, elements: !1292)
!1292 = !{!1293}
!1293 = !DISubrange(count: 6)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1282, file: !1172, line: 292, baseType: !1295, offset: 4608)
!1295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !567, elements: !1296)
!1296 = !{!1297}
!1297 = !DISubrange(count: 0)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1177, file: !1172, line: 309, baseType: !1299, size: 32768)
!1299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !567, size: 32768, elements: !1300)
!1300 = !{!1301}
!1301 = !DISubrange(count: 4096)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !417, file: !264, line: 378, baseType: !1303, size: 64, offset: 64)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !413, file: !264, line: 384, baseType: !736, size: 192, offset: 192)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !284, file: !264, line: 500, baseType: !132, offset: 6656)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !284, file: !264, line: 501, baseType: !1307, size: 64, offset: 6656)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !264, line: 387, flags: DIFlagFwdDecl)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !284, file: !264, line: 516, baseType: !1310, size: 64, offset: 6720)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !264, line: 516, flags: DIFlagFwdDecl)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !284, file: !264, line: 519, baseType: !251, size: 64, offset: 6784)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !284, file: !264, line: 521, baseType: !1314, size: 64, offset: 6848)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !264, line: 521, flags: DIFlagFwdDecl)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !284, file: !264, line: 545, baseType: !314, size: 32, offset: 6912)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !284, file: !264, line: 548, baseType: !1000, size: 8, offset: 6944)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !284, file: !264, line: 550, baseType: !1319, offset: 6952)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1320, line: 142, elements: !146)
!1320 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !284, file: !264, line: 554, baseType: !1322, size: 256, offset: 6976)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1323, line: 102, size: 256, elements: !1324)
!1323 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1324 = !{!1325, !1326, !1327}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1322, file: !1323, line: 103, baseType: !322, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1322, file: !1323, line: 104, baseType: !119, size: 128, offset: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1322, file: !1323, line: 105, baseType: !1328, size: 64, offset: 192)
!1328 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1323, line: 21, baseType: !1329)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{null, !1332}
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !284, file: !264, line: 557, baseType: !430, size: 32, offset: 7232)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !281, file: !264, line: 565, baseType: !1335, offset: 7296)
!1335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, elements: !1336)
!1336 = !{!1337}
!1337 = !DISubrange(count: -1)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !263, file: !264, line: 333, baseType: !1339, size: 64, offset: 576)
!1339 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !253, line: 284, baseType: !1340)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !253, line: 284, size: 64, elements: !1341)
!1341 = !{!1342}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1340, file: !253, line: 284, baseType: !1343, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !312, line: 19, baseType: !223)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !263, file: !264, line: 334, baseType: !223, size: 64, offset: 640)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !263, file: !264, line: 343, baseType: !1346, size: 256, offset: 704)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !263, file: !264, line: 340, size: 256, elements: !1347)
!1347 = !{!1348, !1349}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1346, file: !264, line: 341, baseType: !271, size: 192, align: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1346, file: !264, line: 342, baseType: !223, size: 64, offset: 192)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !263, file: !264, line: 351, baseType: !119, size: 128, offset: 960)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !263, file: !264, line: 353, baseType: !1352, size: 64, offset: 1088)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !264, line: 353, flags: DIFlagFwdDecl)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !263, file: !264, line: 356, baseType: !1355, size: 64, offset: 1152)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1357)
!1357 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !264, line: 356, flags: DIFlagFwdDecl)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !263, file: !264, line: 359, baseType: !223, size: 64, offset: 1216)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !263, file: !264, line: 361, baseType: !251, size: 64, offset: 1280)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !263, file: !264, line: 362, baseType: !91, size: 64, offset: 1344)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !263, file: !264, line: 365, baseType: !322, size: 64, offset: 1408)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !263, file: !264, line: 373, baseType: !1363, offset: 1472)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !264, line: 296, elements: !146)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !230, file: !198, line: 90, baseType: !225, size: 64, offset: 192)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !230, file: !198, line: 91, baseType: !1366, size: 64, offset: 256)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !188, file: !113, line: 143, baseType: !1368, size: 64, offset: 256)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!1371, !125}
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1373)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1374)
!1374 = !{!1375, !1376, !1380, !1384, !1392, !1396}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1373, file: !18, line: 40, baseType: !17, size: 32)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1373, file: !18, line: 41, baseType: !1377, size: 64, offset: 64)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!1000}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1373, file: !18, line: 42, baseType: !1381, size: 64, offset: 128)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{!91}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1373, file: !18, line: 43, baseType: !1385, size: 64, offset: 192)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{!1388, !1390}
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1373, file: !18, line: 44, baseType: !1393, size: 64, offset: 256)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = !DISubroutineType(types: !1395)
!1395 = !{!1388}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1373, file: !18, line: 45, baseType: !1397, size: 64, offset: 320)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{null, !91}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !188, file: !113, line: 144, baseType: !1401, size: 64, offset: 320)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{!1388, !125}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !188, file: !113, line: 145, baseType: !1405, size: 64, offset: 384)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{null, !125, !1408, !1415}
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1410, line: 23, baseType: !1411)
!1410 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1410, line: 21, size: 32, elements: !1412)
!1412 = !{!1413}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1411, file: !1410, line: 22, baseType: !1414, size: 32)
!1414 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !90, line: 32, baseType: !896)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1410, line: 28, baseType: !1417)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1410, line: 26, size: 32, elements: !1418)
!1418 = !{!1419}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1417, file: !1410, line: 27, baseType: !1420, size: 32)
!1420 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !90, line: 33, baseType: !1421)
!1421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !206, line: 50, baseType: !7)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !112, file: !113, line: 70, baseType: !1423, size: 64, offset: 384)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1425, line: 123, size: 1024, elements: !1426)
!1425 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1426 = !{!1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1568, !1569, !1570, !1571, !1572}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1424, file: !1425, line: 124, baseType: !314, size: 32)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1424, file: !1425, line: 125, baseType: !314, size: 32, offset: 32)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1424, file: !1425, line: 135, baseType: !1423, size: 64, offset: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1424, file: !1425, line: 136, baseType: !116, size: 64, offset: 128)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1424, file: !1425, line: 138, baseType: !271, size: 192, align: 64, offset: 192)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1424, file: !1425, line: 140, baseType: !1388, size: 64, offset: 384)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1424, file: !1425, line: 141, baseType: !7, size: 32, offset: 448)
!1434 = !DIDerivedType(tag: DW_TAG_member, scope: !1424, file: !1425, line: 142, baseType: !1435, size: 256, offset: 512)
!1435 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1424, file: !1425, line: 142, size: 256, elements: !1436)
!1436 = !{!1437, !1491, !1495}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1435, file: !1425, line: 143, baseType: !1438, size: 192)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1425, line: 91, size: 192, elements: !1439)
!1439 = !{!1440, !1441, !1442}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1438, file: !1425, line: 92, baseType: !223, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1438, file: !1425, line: 94, baseType: !288, size: 64, offset: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1438, file: !1425, line: 100, baseType: !1443, size: 64, offset: 128)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1425, line: 180, size: 704, elements: !1445)
!1445 = !{!1446, !1447, !1448, !1461, !1462, !1463, !1489, !1490}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1444, file: !1425, line: 182, baseType: !1423, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1444, file: !1425, line: 183, baseType: !7, size: 32, offset: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1444, file: !1425, line: 186, baseType: !1449, size: 192, offset: 128)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1450, line: 19, size: 192, elements: !1451)
!1450 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1451 = !{!1452, !1459, !1460}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1449, file: !1450, line: 20, baseType: !1453, size: 128)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1454, line: 292, size: 128, elements: !1455)
!1454 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1455 = !{!1456, !1457, !1458}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1453, file: !1454, line: 293, baseType: !132)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1453, file: !1454, line: 295, baseType: !89, size: 32)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1453, file: !1454, line: 296, baseType: !91, size: 64, offset: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1449, file: !1450, line: 21, baseType: !7, size: 32, offset: 128)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1449, file: !1450, line: 22, baseType: !7, size: 32, offset: 160)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1444, file: !1425, line: 187, baseType: !430, size: 32, offset: 320)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1444, file: !1425, line: 188, baseType: !430, size: 32, offset: 352)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1444, file: !1425, line: 189, baseType: !1464, size: 64, offset: 384)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1425, line: 168, size: 320, elements: !1466)
!1466 = !{!1467, !1473, !1477, !1481, !1485}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1465, file: !1425, line: 169, baseType: !1468, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = !DISubroutineType(types: !1470)
!1470 = !{!88, !1471, !1443}
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !253, line: 539, flags: DIFlagFwdDecl)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1465, file: !1425, line: 171, baseType: !1474, size: 64, offset: 64)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{!88, !1423, !116, !214}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1465, file: !1425, line: 173, baseType: !1478, size: 64, offset: 128)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!88, !1423}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1465, file: !1425, line: 174, baseType: !1482, size: 64, offset: 192)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{!88, !1423, !1423, !116}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1465, file: !1425, line: 176, baseType: !1486, size: 64, offset: 256)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{!88, !1471, !1423, !1443}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1444, file: !1425, line: 192, baseType: !119, size: 128, offset: 448)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1444, file: !1425, line: 194, baseType: !707, size: 128, offset: 576)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1435, file: !1425, line: 144, baseType: !1492, size: 64)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1425, line: 103, size: 64, elements: !1493)
!1493 = !{!1494}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1492, file: !1425, line: 104, baseType: !1423, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1435, file: !1425, line: 145, baseType: !1496, size: 256)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1425, line: 107, size: 256, elements: !1497)
!1497 = !{!1498, !1563, !1566, !1567}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1496, file: !1425, line: 108, baseType: !1499, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1501)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1425, line: 217, size: 768, elements: !1502)
!1502 = !{!1503, !1523, !1527, !1531, !1536, !1540, !1544, !1548, !1549, !1550, !1551, !1559}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1501, file: !1425, line: 222, baseType: !1504, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{!88, !1507}
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1425, line: 197, size: 1088, elements: !1509)
!1509 = !{!1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1508, file: !1425, line: 199, baseType: !1423, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1508, file: !1425, line: 200, baseType: !251, size: 64, offset: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1508, file: !1425, line: 201, baseType: !1471, size: 64, offset: 128)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1508, file: !1425, line: 202, baseType: !91, size: 64, offset: 192)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1508, file: !1425, line: 205, baseType: !391, size: 192, offset: 256)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1508, file: !1425, line: 206, baseType: !391, size: 192, offset: 448)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1508, file: !1425, line: 207, baseType: !88, size: 32, offset: 640)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1508, file: !1425, line: 208, baseType: !119, size: 128, offset: 704)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1508, file: !1425, line: 209, baseType: !173, size: 64, offset: 832)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1508, file: !1425, line: 211, baseType: !220, size: 64, offset: 896)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1508, file: !1425, line: 212, baseType: !1000, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1508, file: !1425, line: 213, baseType: !1000, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1508, file: !1425, line: 214, baseType: !1355, size: 64, offset: 1024)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1501, file: !1425, line: 223, baseType: !1524, size: 64, offset: 64)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{null, !1507}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1501, file: !1425, line: 236, baseType: !1528, size: 64, offset: 128)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{!88, !1471, !91}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1501, file: !1425, line: 238, baseType: !1532, size: 64, offset: 192)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DISubroutineType(types: !1534)
!1534 = !{!91, !1471, !1535}
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1501, file: !1425, line: 239, baseType: !1537, size: 64, offset: 256)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!91, !1471, !91, !1535}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1501, file: !1425, line: 240, baseType: !1541, size: 64, offset: 320)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{null, !1471, !91}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1501, file: !1425, line: 242, baseType: !1545, size: 64, offset: 384)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{!204, !1507, !173, !220, !254}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1501, file: !1425, line: 252, baseType: !220, size: 64, offset: 448)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1501, file: !1425, line: 259, baseType: !1000, size: 8, offset: 512)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1501, file: !1425, line: 260, baseType: !1545, size: 64, offset: 576)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1501, file: !1425, line: 263, baseType: !1552, size: 64, offset: 640)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!1555, !1507, !1557}
!1555 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1556, line: 52, baseType: !7)
!1556 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1425, line: 27, flags: DIFlagFwdDecl)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1501, file: !1425, line: 266, baseType: !1560, size: 64, offset: 704)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{!88, !1507, !262}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1496, file: !1425, line: 109, baseType: !1564, size: 64, offset: 64)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1425, line: 31, flags: DIFlagFwdDecl)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1496, file: !1425, line: 110, baseType: !254, size: 64, offset: 128)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1496, file: !1425, line: 111, baseType: !1423, size: 64, offset: 192)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1424, file: !1425, line: 148, baseType: !91, size: 64, offset: 768)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1424, file: !1425, line: 154, baseType: !292, size: 64, offset: 832)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1424, file: !1425, line: 156, baseType: !215, size: 16, offset: 896)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1424, file: !1425, line: 157, baseType: !214, size: 16, offset: 912)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1424, file: !1425, line: 158, baseType: !1573, size: 64, offset: 960)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1425, line: 32, flags: DIFlagFwdDecl)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !112, file: !113, line: 71, baseType: !1576, size: 32, offset: 448)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1577, line: 19, size: 32, elements: !1578)
!1577 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1578 = !{!1579}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1576, file: !1577, line: 20, baseType: !436, size: 32)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !112, file: !113, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !112, file: !113, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !112, file: !113, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !112, file: !113, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !112, file: !113, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !109, file: !30, line: 463, baseType: !1586, size: 64, offset: 512)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !109, file: !30, line: 465, baseType: !1588, size: 64, offset: 576)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !109, file: !30, line: 467, baseType: !116, size: 64, offset: 640)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !109, file: !30, line: 468, baseType: !1592, size: 64, offset: 704)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1594)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1595)
!1595 = !{!1596, !1597, !1598, !1602, !1607, !1611}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1594, file: !30, line: 88, baseType: !116, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1594, file: !30, line: 89, baseType: !227, size: 64, offset: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1594, file: !30, line: 90, baseType: !1599, size: 64, offset: 128)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{!88, !1586, !168}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1594, file: !30, line: 91, baseType: !1603, size: 64, offset: 192)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{!173, !1586, !1606, !1408, !1415}
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1594, file: !30, line: 93, baseType: !1608, size: 64, offset: 256)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{null, !1586}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1594, file: !30, line: 95, baseType: !1612, size: 64, offset: 320)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1614)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1615)
!1615 = !{!1616, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1614, file: !37, line: 279, baseType: !1617, size: 64)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{!88, !1586}
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
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !109, file: !30, line: 470, baseType: !1643, size: 64, offset: 768)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1645, line: 82, size: 1408, elements: !1646)
!1645 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1646 = !{!1647, !1648, !1649, !1650, !1651, !1652, !1653, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1732, !1735, !1738}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1644, file: !1645, line: 83, baseType: !116, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1644, file: !1645, line: 84, baseType: !116, size: 64, offset: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1644, file: !1645, line: 85, baseType: !1586, size: 64, offset: 128)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1644, file: !1645, line: 86, baseType: !227, size: 64, offset: 192)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1644, file: !1645, line: 87, baseType: !227, size: 64, offset: 256)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1644, file: !1645, line: 88, baseType: !227, size: 64, offset: 320)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1644, file: !1645, line: 90, baseType: !1654, size: 64, offset: 384)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!88, !1586, !1657}
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1659)
!1659 = !{!1660, !1661, !1662, !1666, !1667, !1668, !1669, !1683, !1696, !1697, !1698, !1699, !1700, !1708, !1709, !1710, !1711, !1712, !1713}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1658, file: !24, line: 96, baseType: !116, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1658, file: !24, line: 97, baseType: !1643, size: 64, offset: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1658, file: !24, line: 99, baseType: !1663, size: 64, offset: 128)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1665, line: 76, flags: DIFlagFwdDecl)
!1665 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1658, file: !24, line: 100, baseType: !116, size: 64, offset: 192)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1658, file: !24, line: 102, baseType: !1000, size: 8, offset: 256)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1658, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1658, file: !24, line: 105, baseType: !1670, size: 64, offset: 320)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1672)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1673, line: 262, size: 1600, elements: !1674)
!1673 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1674 = !{!1675, !1677, !1678, !1682}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1672, file: !1673, line: 263, baseType: !1676, size: 256)
!1676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 256, elements: !1218)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1672, file: !1673, line: 264, baseType: !1676, size: 256, offset: 256)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1672, file: !1673, line: 265, baseType: !1679, size: 1024, offset: 512)
!1679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 1024, elements: !1680)
!1680 = !{!1681}
!1681 = !DISubrange(count: 128)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1672, file: !1673, line: 266, baseType: !1388, size: 64, offset: 1536)
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
!1693 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1673, line: 14, baseType: !223)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1686, file: !1673, line: 213, baseType: !431, size: 32, offset: 192)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1686, file: !1673, line: 214, baseType: !431, size: 32, offset: 224)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1658, file: !24, line: 108, baseType: !1617, size: 64, offset: 448)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1658, file: !24, line: 109, baseType: !1608, size: 64, offset: 512)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1658, file: !24, line: 110, baseType: !1617, size: 64, offset: 576)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1658, file: !24, line: 111, baseType: !1608, size: 64, offset: 640)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1658, file: !24, line: 112, baseType: !1701, size: 64, offset: 704)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!88, !1586, !1704}
!1704 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1705)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1706)
!1706 = !{!1707}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1705, file: !37, line: 51, baseType: !88, size: 32)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1658, file: !24, line: 113, baseType: !1617, size: 64, offset: 768)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1658, file: !24, line: 114, baseType: !227, size: 64, offset: 832)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1658, file: !24, line: 115, baseType: !227, size: 64, offset: 896)
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
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1737, line: 187, elements: !146)
!1737 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1644, file: !1645, line: 114, baseType: !1000, size: 8, offset: 1344)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !109, file: !30, line: 471, baseType: !1657, size: 64, offset: 832)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !109, file: !30, line: 473, baseType: !91, size: 64, offset: 896)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !109, file: !30, line: 475, baseType: !91, size: 64, offset: 960)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !109, file: !30, line: 480, baseType: !391, size: 192, offset: 1024)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !109, file: !30, line: 484, baseType: !1744, size: 576, offset: 1216)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1745)
!1745 = !{!1746, !1747, !1748, !1749, !1750, !1751}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1744, file: !30, line: 362, baseType: !119, size: 128)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1744, file: !30, line: 363, baseType: !119, size: 128, offset: 128)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1744, file: !30, line: 364, baseType: !119, size: 128, offset: 256)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1744, file: !30, line: 365, baseType: !119, size: 128, offset: 384)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1744, file: !30, line: 366, baseType: !1000, size: 8, offset: 512)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1744, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !109, file: !30, line: 485, baseType: !1753, size: 2304, offset: 1792)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1754)
!1754 = !{!1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1850, !1854}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1753, file: !37, line: 566, baseType: !1704, size: 32)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1753, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1753, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1753, file: !37, line: 569, baseType: !1000, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1753, file: !37, line: 570, baseType: !1000, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1753, file: !37, line: 571, baseType: !1000, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1753, file: !37, line: 572, baseType: !1000, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1753, file: !37, line: 573, baseType: !1000, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1753, file: !37, line: 574, baseType: !1000, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1753, file: !37, line: 575, baseType: !1000, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1753, file: !37, line: 576, baseType: !1000, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1753, file: !37, line: 577, baseType: !430, size: 32, offset: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1753, file: !37, line: 578, baseType: !132, offset: 96)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1753, file: !37, line: 580, baseType: !119, size: 128, offset: 128)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1753, file: !37, line: 581, baseType: !736, size: 192, offset: 256)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1753, file: !37, line: 582, baseType: !1771, size: 64, offset: 448)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1773, line: 43, size: 1472, elements: !1774)
!1773 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1774 = !{!1775, !1776, !1777, !1778, !1779, !1782, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1772, file: !1773, line: 44, baseType: !116, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1772, file: !1773, line: 45, baseType: !88, size: 32, offset: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1772, file: !1773, line: 46, baseType: !119, size: 128, offset: 128)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1772, file: !1773, line: 47, baseType: !132, offset: 256)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1772, file: !1773, line: 48, baseType: !1780, size: 64, offset: 256)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1772, file: !1773, line: 49, baseType: !1783, size: 320, offset: 320)
!1783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1784, line: 11, size: 320, elements: !1785)
!1784 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1785 = !{!1786, !1787, !1788, !1793}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1783, file: !1784, line: 16, baseType: !700, size: 128)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1783, file: !1784, line: 17, baseType: !223, size: 64, offset: 128)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1783, file: !1784, line: 18, baseType: !1789, size: 64, offset: 192)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DISubroutineType(types: !1791)
!1791 = !{null, !1792}
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1783, file: !1784, line: 19, baseType: !430, size: 32, offset: 256)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1772, file: !1773, line: 50, baseType: !223, size: 64, offset: 640)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1772, file: !1773, line: 51, baseType: !506, size: 64, offset: 704)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1772, file: !1773, line: 52, baseType: !506, size: 64, offset: 768)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1772, file: !1773, line: 53, baseType: !506, size: 64, offset: 832)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1772, file: !1773, line: 54, baseType: !506, size: 64, offset: 896)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1772, file: !1773, line: 55, baseType: !506, size: 64, offset: 960)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1772, file: !1773, line: 56, baseType: !223, size: 64, offset: 1024)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1772, file: !1773, line: 57, baseType: !223, size: 64, offset: 1088)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1772, file: !1773, line: 58, baseType: !223, size: 64, offset: 1152)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1772, file: !1773, line: 59, baseType: !223, size: 64, offset: 1216)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1772, file: !1773, line: 60, baseType: !223, size: 64, offset: 1280)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1772, file: !1773, line: 61, baseType: !1586, size: 64, offset: 1344)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1772, file: !1773, line: 62, baseType: !1000, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1772, file: !1773, line: 63, baseType: !1000, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1753, file: !37, line: 583, baseType: !1000, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1753, file: !37, line: 584, baseType: !1000, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1753, file: !37, line: 585, baseType: !1000, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1753, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1753, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1753, file: !37, line: 592, baseType: !498, size: 512, offset: 576)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1753, file: !37, line: 593, baseType: !292, size: 64, offset: 1088)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1753, file: !37, line: 594, baseType: !1322, size: 256, offset: 1152)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1753, file: !37, line: 595, baseType: !707, size: 128, offset: 1408)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1753, file: !37, line: 596, baseType: !1780, size: 64, offset: 1536)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1753, file: !37, line: 597, baseType: !314, size: 32, offset: 1600)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1753, file: !37, line: 598, baseType: !314, size: 32, offset: 1632)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1753, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1753, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1753, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1753, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1753, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1753, file: !37, line: 604, baseType: !1000, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1753, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1753, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1753, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1753, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1753, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1753, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1753, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1753, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1753, file: !37, line: 613, baseType: !88, size: 32, offset: 1792)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1753, file: !37, line: 614, baseType: !88, size: 32, offset: 1824)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1753, file: !37, line: 615, baseType: !292, size: 64, offset: 1856)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1753, file: !37, line: 616, baseType: !292, size: 64, offset: 1920)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1753, file: !37, line: 617, baseType: !292, size: 64, offset: 1984)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1753, file: !37, line: 618, baseType: !292, size: 64, offset: 2048)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1753, file: !37, line: 620, baseType: !1841, size: 64, offset: 2112)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1843)
!1843 = !{!1844, !1845, !1846, !1847}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1842, file: !37, line: 537, baseType: !132)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1842, file: !37, line: 538, baseType: !7, size: 32)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1842, file: !37, line: 540, baseType: !119, size: 128, offset: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1842, file: !37, line: 543, baseType: !1848, size: 64, offset: 192)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1753, file: !37, line: 621, baseType: !1851, size: 64, offset: 2176)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{null, !1586, !660}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1753, file: !37, line: 622, baseType: !1855, size: 64, offset: 2240)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !109, file: !30, line: 486, baseType: !1858, size: 64, offset: 4096)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1860)
!1860 = !{!1861, !1862, !1863, !1867, !1868, !1869}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1859, file: !37, line: 643, baseType: !1614, size: 1472)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1859, file: !37, line: 644, baseType: !1617, size: 64, offset: 1472)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1859, file: !37, line: 645, baseType: !1864, size: 64, offset: 1536)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{null, !1586, !1000}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1859, file: !37, line: 646, baseType: !1617, size: 64, offset: 1600)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1859, file: !37, line: 647, baseType: !1608, size: 64, offset: 1664)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1859, file: !37, line: 648, baseType: !1608, size: 64, offset: 1728)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !109, file: !30, line: 493, baseType: !1871, size: 64, offset: 4160)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !109, file: !30, line: 499, baseType: !119, size: 128, offset: 4224)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !109, file: !30, line: 502, baseType: !1875, size: 64, offset: 4352)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1877)
!1877 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !109, file: !30, line: 504, baseType: !1879, size: 64, offset: 4416)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !109, file: !30, line: 505, baseType: !292, size: 64, offset: 4480)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !109, file: !30, line: 510, baseType: !292, size: 64, offset: 4544)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !109, file: !30, line: 511, baseType: !1883, size: 64, offset: 4608)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1885)
!1885 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !109, file: !30, line: 513, baseType: !1887, size: 64, offset: 4672)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !1889)
!1889 = !{!1890, !1891}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1888, file: !30, line: 293, baseType: !7, size: 32)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1888, file: !30, line: 294, baseType: !223, size: 64, offset: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !109, file: !30, line: 515, baseType: !119, size: 128, offset: 4736)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !109, file: !30, line: 526, baseType: !1894, offset: 4864)
!1894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1895, line: 5, elements: !146)
!1895 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !109, file: !30, line: 528, baseType: !1897, size: 64, offset: 4864)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1899, line: 51, size: 1344, elements: !1900)
!1899 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!1900 = !{!1901, !1902, !1904, !1905, !1995, !2004, !2005, !2006, !2007, !2008, !2009, !2010}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1898, file: !1899, line: 52, baseType: !116, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1898, file: !1899, line: 53, baseType: !1903, size: 32, offset: 64)
!1903 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1899, line: 28, baseType: !430)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1898, file: !1899, line: 54, baseType: !116, size: 64, offset: 128)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1898, file: !1899, line: 55, baseType: !1906, size: 192, offset: 192)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1907, line: 17, size: 192, elements: !1908)
!1907 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!1908 = !{!1909, !1911, !1994}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1906, file: !1907, line: 18, baseType: !1910, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1906, file: !1907, line: 19, baseType: !1912, size: 64, offset: 64)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1914)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1907, line: 110, size: 1152, elements: !1915)
!1915 = !{!1916, !1920, !1924, !1930, !1936, !1940, !1944, !1949, !1953, !1954, !1958, !1962, !1966, !1977, !1978, !1979, !1980, !1990}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1914, file: !1907, line: 111, baseType: !1917, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{!1910, !1910}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1914, file: !1907, line: 112, baseType: !1921, size: 64, offset: 64)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{null, !1910}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1914, file: !1907, line: 113, baseType: !1925, size: 64, offset: 128)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{!1000, !1928}
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1906)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1914, file: !1907, line: 114, baseType: !1931, size: 64, offset: 192)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!1388, !1928, !1934}
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1914, file: !1907, line: 116, baseType: !1937, size: 64, offset: 256)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DISubroutineType(types: !1939)
!1939 = !{!1000, !1928, !116}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1914, file: !1907, line: 118, baseType: !1941, size: 64, offset: 320)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{!88, !1928, !116, !7, !91, !220}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1914, file: !1907, line: 123, baseType: !1945, size: 64, offset: 384)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!88, !1928, !116, !1948, !220}
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1914, file: !1907, line: 126, baseType: !1950, size: 64, offset: 448)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{!116, !1928}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1914, file: !1907, line: 127, baseType: !1950, size: 64, offset: 512)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1914, file: !1907, line: 128, baseType: !1955, size: 64, offset: 576)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{!1910, !1928}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1914, file: !1907, line: 130, baseType: !1959, size: 64, offset: 640)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!1910, !1928, !1910}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1914, file: !1907, line: 133, baseType: !1963, size: 64, offset: 704)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!1910, !1928, !116}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1914, file: !1907, line: 135, baseType: !1967, size: 64, offset: 768)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{!88, !1928, !116, !116, !7, !7, !1970}
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1907, line: 43, size: 640, elements: !1972)
!1972 = !{!1973, !1974, !1975}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1971, file: !1907, line: 44, baseType: !1910, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1971, file: !1907, line: 45, baseType: !7, size: 32, offset: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1971, file: !1907, line: 46, baseType: !1976, size: 512, offset: 128)
!1976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 512, elements: !536)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1914, file: !1907, line: 140, baseType: !1959, size: 64, offset: 832)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1914, file: !1907, line: 143, baseType: !1955, size: 64, offset: 896)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1914, file: !1907, line: 145, baseType: !1917, size: 64, offset: 960)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1914, file: !1907, line: 146, baseType: !1981, size: 64, offset: 1024)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{!88, !1928, !1984}
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1907, line: 29, size: 128, elements: !1986)
!1986 = !{!1987, !1988, !1989}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1985, file: !1907, line: 30, baseType: !7, size: 32)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1985, file: !1907, line: 31, baseType: !7, size: 32, offset: 32)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1985, file: !1907, line: 32, baseType: !1928, size: 64, offset: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1914, file: !1907, line: 148, baseType: !1991, size: 64, offset: 1088)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!88, !1928, !1586}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1906, file: !1907, line: 20, baseType: !1586, size: 64, offset: 128)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1898, file: !1899, line: 57, baseType: !1996, size: 64, offset: 384)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1899, line: 31, size: 704, elements: !1998)
!1998 = !{!1999, !2000, !2001, !2002, !2003}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1997, file: !1899, line: 32, baseType: !173, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1997, file: !1899, line: 33, baseType: !88, size: 32, offset: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1997, file: !1899, line: 34, baseType: !91, size: 64, offset: 128)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1997, file: !1899, line: 35, baseType: !1996, size: 64, offset: 192)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1997, file: !1899, line: 43, baseType: !242, size: 448, offset: 256)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1898, file: !1899, line: 58, baseType: !1996, size: 64, offset: 448)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1898, file: !1899, line: 59, baseType: !1897, size: 64, offset: 512)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1898, file: !1899, line: 60, baseType: !1897, size: 64, offset: 576)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1898, file: !1899, line: 61, baseType: !1897, size: 64, offset: 640)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1898, file: !1899, line: 63, baseType: !112, size: 512, offset: 704)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1898, file: !1899, line: 65, baseType: !223, size: 64, offset: 1216)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1898, file: !1899, line: 66, baseType: !91, size: 64, offset: 1280)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !109, file: !30, line: 529, baseType: !1910, size: 64, offset: 4928)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !109, file: !30, line: 534, baseType: !2013, size: 32, offset: 4992)
!2013 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !90, line: 16, baseType: !2014)
!2014 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !90, line: 13, baseType: !430)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !109, file: !30, line: 535, baseType: !430, size: 32, offset: 5024)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !109, file: !30, line: 537, baseType: !132, offset: 5056)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !109, file: !30, line: 538, baseType: !119, size: 128, offset: 5056)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !109, file: !30, line: 540, baseType: !2019, size: 64, offset: 5184)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2021, line: 54, size: 960, elements: !2022)
!2021 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2022 = !{!2023, !2024, !2025, !2026, !2027, !2028, !2029, !2033, !2037, !2038, !2039, !2040, !2044, !2048, !2049}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2020, file: !2021, line: 55, baseType: !116, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2020, file: !2021, line: 56, baseType: !1663, size: 64, offset: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2020, file: !2021, line: 58, baseType: !227, size: 64, offset: 128)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2020, file: !2021, line: 59, baseType: !227, size: 64, offset: 192)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2020, file: !2021, line: 60, baseType: !125, size: 64, offset: 256)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2020, file: !2021, line: 62, baseType: !1599, size: 64, offset: 320)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2020, file: !2021, line: 63, baseType: !2030, size: 64, offset: 384)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{!173, !1586, !1606}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2020, file: !2021, line: 65, baseType: !2034, size: 64, offset: 448)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{null, !2019}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2020, file: !2021, line: 66, baseType: !1608, size: 64, offset: 512)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2020, file: !2021, line: 68, baseType: !1617, size: 64, offset: 576)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2020, file: !2021, line: 70, baseType: !1371, size: 64, offset: 640)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2020, file: !2021, line: 71, baseType: !2041, size: 64, offset: 704)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!1388, !1586}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2020, file: !2021, line: 73, baseType: !2045, size: 64, offset: 768)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{null, !1586, !1408, !1415}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2020, file: !2021, line: 75, baseType: !1612, size: 64, offset: 832)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2020, file: !2021, line: 77, baseType: !1733, size: 64, offset: 896)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !109, file: !30, line: 541, baseType: !227, size: 64, offset: 5248)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !109, file: !30, line: 543, baseType: !1608, size: 64, offset: 5312)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !109, file: !30, line: 544, baseType: !2053, size: 64, offset: 5376)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !109, file: !30, line: 545, baseType: !2056, size: 64, offset: 5440)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !109, file: !30, line: 547, baseType: !1000, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !109, file: !30, line: 548, baseType: !1000, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !109, file: !30, line: 549, baseType: !1000, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !109, file: !30, line: 550, baseType: !1000, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "trips_attribute_group", scope: !104, file: !62, line: 154, baseType: !230, size: 320, offset: 5760)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "trip_temp_attrs", scope: !104, file: !62, line: 155, baseType: !2064, size: 64, offset: 6080)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_attr", file: !94, line: 57, size: 448, elements: !2066)
!2066 = !{!2067, !2080}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2065, file: !94, line: 58, baseType: !2068, size: 256)
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !30, line: 99, size: 256, elements: !2069)
!2069 = !{!2070, !2071, !2076}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2068, file: !30, line: 100, baseType: !210, size: 128)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2068, file: !30, line: 101, baseType: !2072, size: 64, offset: 128)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DISubroutineType(types: !2074)
!2074 = !{!204, !1586, !2075, !173}
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2068, file: !30, line: 103, baseType: !2077, size: 64, offset: 192)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{!204, !1586, !2075, !116, !220}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2065, file: !94, line: 59, baseType: !98, size: 160, offset: 256)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "trip_type_attrs", scope: !104, file: !62, line: 156, baseType: !2064, size: 64, offset: 6144)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "trip_hyst_attrs", scope: !104, file: !62, line: 157, baseType: !2064, size: 64, offset: 6208)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !104, file: !62, line: 158, baseType: !50, size: 32, offset: 6272)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "devdata", scope: !104, file: !62, line: 159, baseType: !91, size: 64, offset: 6336)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "trips", scope: !104, file: !62, line: 160, baseType: !88, size: 32, offset: 6400)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "trips_disabled", scope: !104, file: !62, line: 161, baseType: !223, size: 64, offset: 6464)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "passive_delay", scope: !104, file: !62, line: 162, baseType: !88, size: 32, offset: 6528)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "polling_delay", scope: !104, file: !62, line: 163, baseType: !88, size: 32, offset: 6560)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "temperature", scope: !104, file: !62, line: 164, baseType: !88, size: 32, offset: 6592)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "last_temperature", scope: !104, file: !62, line: 165, baseType: !88, size: 32, offset: 6624)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "emul_temperature", scope: !104, file: !62, line: 166, baseType: !88, size: 32, offset: 6656)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "passive", scope: !104, file: !62, line: 167, baseType: !88, size: 32, offset: 6688)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "prev_low_trip", scope: !104, file: !62, line: 168, baseType: !88, size: 32, offset: 6720)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "prev_high_trip", scope: !104, file: !62, line: 169, baseType: !88, size: 32, offset: 6752)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "forced_passive", scope: !104, file: !62, line: 170, baseType: !7, size: 32, offset: 6784)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "need_update", scope: !104, file: !62, line: 171, baseType: !314, size: 32, offset: 6816)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !104, file: !62, line: 172, baseType: !2098, size: 64, offset: 6848)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_device_ops", file: !62, line: 61, size: 896, elements: !2100)
!2100 = !{!2101, !2145, !2146, !2150, !2154, !2158, !2163, !2167, !2168, !2169, !2170, !2171, !2175, !2180}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !2099, file: !62, line: 62, baseType: !2102, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{!88, !103, !2105}
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device", file: !62, line: 93, size: 6528, elements: !2107)
!2107 = !{!2108, !2109, !2110, !2111, !2112, !2113, !2114, !2141, !2142, !2143, !2144}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2106, file: !62, line: 94, baseType: !88, size: 32)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2106, file: !62, line: 95, baseType: !98, size: 160, offset: 32)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !2106, file: !62, line: 96, baseType: !109, size: 5568, offset: 192)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !2106, file: !62, line: 97, baseType: !1897, size: 64, offset: 5760)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "devdata", scope: !2106, file: !62, line: 98, baseType: !91, size: 64, offset: 5824)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2106, file: !62, line: 99, baseType: !91, size: 64, offset: 5888)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2106, file: !62, line: 100, baseType: !2115, size: 64, offset: 5952)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2117)
!2117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device_ops", file: !62, line: 84, size: 384, elements: !2118)
!2118 = !{!2119, !2124, !2125, !2129, !2133, !2137}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "get_max_state", scope: !2117, file: !62, line: 85, baseType: !2120, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!88, !2105, !2123}
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "get_cur_state", scope: !2117, file: !62, line: 86, baseType: !2120, size: 64, offset: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "set_cur_state", scope: !2117, file: !62, line: 87, baseType: !2126, size: 64, offset: 128)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!88, !2105, !223}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "get_requested_power", scope: !2117, file: !62, line: 88, baseType: !2130, size: 64, offset: 192)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!88, !2105, !631}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "state2power", scope: !2117, file: !62, line: 89, baseType: !2134, size: 64, offset: 256)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!88, !2105, !223, !631}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "power2state", scope: !2117, file: !62, line: 90, baseType: !2138, size: 64, offset: 320)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{!88, !2105, !430, !2123}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "updated", scope: !2106, file: !62, line: 101, baseType: !1000, size: 8, offset: 6016)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2106, file: !62, line: 102, baseType: !391, size: 192, offset: 6080)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_instances", scope: !2106, file: !62, line: 103, baseType: !119, size: 128, offset: 6272)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2106, file: !62, line: 104, baseType: !119, size: 128, offset: 6400)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !2099, file: !62, line: 64, baseType: !2102, size: 64, offset: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "get_temp", scope: !2099, file: !62, line: 66, baseType: !2147, size: 64, offset: 128)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!88, !103, !747}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "set_trips", scope: !2099, file: !62, line: 67, baseType: !2151, size: 64, offset: 192)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!88, !103, !88, !88}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "change_mode", scope: !2099, file: !62, line: 68, baseType: !2155, size: 64, offset: 256)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{!88, !103, !50}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "get_trip_type", scope: !2099, file: !62, line: 70, baseType: !2159, size: 64, offset: 320)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!88, !103, !88, !2162}
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "get_trip_temp", scope: !2099, file: !62, line: 72, baseType: !2164, size: 64, offset: 384)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{!88, !103, !88, !747}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "set_trip_temp", scope: !2099, file: !62, line: 73, baseType: !2151, size: 64, offset: 448)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "get_trip_hyst", scope: !2099, file: !62, line: 74, baseType: !2164, size: 64, offset: 512)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "set_trip_hyst", scope: !2099, file: !62, line: 75, baseType: !2151, size: 64, offset: 576)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "get_crit_temp", scope: !2099, file: !62, line: 76, baseType: !2147, size: 64, offset: 640)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "set_emul_temp", scope: !2099, file: !62, line: 77, baseType: !2172, size: 64, offset: 704)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{!88, !103, !88}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "get_trend", scope: !2099, file: !62, line: 78, baseType: !2176, size: 64, offset: 768)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DISubroutineType(types: !2178)
!2178 = !{!88, !103, !88, !2179}
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2099, file: !62, line: 80, baseType: !2181, size: 64, offset: 832)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{!88, !103, !88, !55}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "tzp", scope: !104, file: !62, line: 173, baseType: !2185, size: 64, offset: 6912)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_params", file: !62, line: 240, size: 576, elements: !2187)
!2187 = !{!2188, !2189, !2190, !2191, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "governor_name", scope: !2186, file: !62, line: 241, baseType: !98, size: 160)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "no_hwmon", scope: !2186, file: !62, line: 248, baseType: !1000, size: 8, offset: 160)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "num_tbps", scope: !2186, file: !62, line: 250, baseType: !88, size: 32, offset: 192)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "tbp", scope: !2186, file: !62, line: 251, baseType: !2192, size: 64, offset: 256)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_bind_params", file: !62, line: 205, size: 256, elements: !2194)
!2194 = !{!2195, !2196, !2197, !2198, !2199}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !2193, file: !62, line: 206, baseType: !2105, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2193, file: !62, line: 217, baseType: !88, size: 32, offset: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "trip_mask", scope: !2193, file: !62, line: 224, baseType: !88, size: 32, offset: 96)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "binding_limits", scope: !2193, file: !62, line: 234, baseType: !2123, size: 64, offset: 128)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2193, file: !62, line: 235, baseType: !2102, size: 64, offset: 192)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "sustainable_power", scope: !2186, file: !62, line: 257, baseType: !430, size: 32, offset: 320)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "k_po", scope: !2186, file: !62, line: 263, baseType: !660, size: 32, offset: 352)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "k_pu", scope: !2186, file: !62, line: 269, baseType: !660, size: 32, offset: 384)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "k_i", scope: !2186, file: !62, line: 272, baseType: !660, size: 32, offset: 416)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "k_d", scope: !2186, file: !62, line: 275, baseType: !660, size: 32, offset: 448)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "integral_cutoff", scope: !2186, file: !62, line: 278, baseType: !660, size: 32, offset: 480)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "slope", scope: !2186, file: !62, line: 284, baseType: !88, size: 32, offset: 512)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2186, file: !62, line: 289, baseType: !88, size: 32, offset: 544)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "governor", scope: !104, file: !62, line: 174, baseType: !2209, size: 64, offset: 6976)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_governor", file: !62, line: 196, size: 512, elements: !2211)
!2211 = !{!2212, !2213, !2217, !2221, !2222}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2210, file: !62, line: 197, baseType: !98, size: 160)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "bind_to_tz", scope: !2210, file: !62, line: 198, baseType: !2214, size: 64, offset: 192)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = !DISubroutineType(types: !2216)
!2216 = !{!88, !103}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "unbind_from_tz", scope: !2210, file: !62, line: 199, baseType: !2218, size: 64, offset: 256)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{null, !103}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !2210, file: !62, line: 200, baseType: !2172, size: 64, offset: 320)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "governor_list", scope: !2210, file: !62, line: 201, baseType: !119, size: 128, offset: 384)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "governor_data", scope: !104, file: !62, line: 175, baseType: !91, size: 64, offset: 7040)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_instances", scope: !104, file: !62, line: 176, baseType: !119, size: 128, offset: 7104)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "ida", scope: !104, file: !62, line: 177, baseType: !2226, size: 128, offset: 7232)
!2226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !1450, line: 244, size: 128, elements: !2227)
!2227 = !{!2228}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !2226, file: !1450, line: 245, baseType: !1453, size: 128)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !104, file: !62, line: 178, baseType: !391, size: 192, offset: 7360)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !104, file: !62, line: 179, baseType: !119, size: 128, offset: 7552)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "poll_queue", scope: !104, file: !62, line: 180, baseType: !2232, size: 704, offset: 7680)
!2232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1323, line: 115, size: 704, elements: !2233)
!2233 = !{!2234, !2235, !2236, !2239}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2232, file: !1323, line: 116, baseType: !1322, size: 256)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2232, file: !1323, line: 117, baseType: !1783, size: 320, offset: 256)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2232, file: !1323, line: 120, baseType: !2237, size: 64, offset: 576)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1323, line: 18, flags: DIFlagFwdDecl)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2232, file: !1323, line: 121, baseType: !88, size: 32, offset: 640)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "notify_event", scope: !104, file: !62, line: 181, baseType: !69, size: 32, offset: 8384)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !93, file: !94, line: 104, baseType: !2105, size: 64, offset: 256)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "trip", scope: !93, file: !94, line: 105, baseType: !88, size: 32, offset: 320)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !93, file: !94, line: 106, baseType: !1000, size: 8, offset: 352)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "upper", scope: !93, file: !94, line: 107, baseType: !223, size: 64, offset: 384)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "lower", scope: !93, file: !94, line: 108, baseType: !223, size: 64, offset: 448)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !93, file: !94, line: 109, baseType: !223, size: 64, offset: 512)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "attr_name", scope: !93, file: !94, line: 110, baseType: !98, size: 160, offset: 576)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !93, file: !94, line: 111, baseType: !2068, size: 256, offset: 768)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "weight_attr_name", scope: !93, file: !94, line: 112, baseType: !98, size: 160, offset: 1024)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "weight_attr", scope: !93, file: !94, line: 113, baseType: !2068, size: 256, offset: 1216)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "tz_node", scope: !93, file: !94, line: 114, baseType: !119, size: 128, offset: 1472)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "cdev_node", scope: !93, file: !94, line: 115, baseType: !119, size: 128, offset: 1600)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !93, file: !94, line: 116, baseType: !7, size: 32, offset: 1728)
!2254 = !{!0, !2255, !2257, !2262, !2264, !2266, !2268, !2270, !2272, !2274, !2276, !2278, !2280, !2282, !2284, !2286, !2288, !2291, !2293, !2295, !2297, !2299, !2302, !2304, !2307, !2309, !2311}
!2255 = !DIGlobalVariableExpression(var: !2256, expr: !DIExpression())
!2256 = distinct !DIGlobalVariable(name: "thermal_zone_attribute_group", scope: !2, file: !3, line: 428, type: !230, isLocal: true, isDefinition: true)
!2257 = !DIGlobalVariableExpression(var: !2258, expr: !DIExpression())
!2258 = distinct !DIGlobalVariable(name: "thermal_zone_dev_attrs", scope: !2, file: !3, line: 409, type: !2259, isLocal: true, isDefinition: true)
!2259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 832, elements: !2260)
!2260 = !{!2261}
!2261 = !DISubrange(count: 13)
!2262 = !DIGlobalVariableExpression(var: !2263, expr: !DIExpression())
!2263 = distinct !DIGlobalVariable(name: "dev_attr_type", scope: !2, file: !3, line: 398, type: !2068, isLocal: true, isDefinition: true)
!2264 = !DIGlobalVariableExpression(var: !2265, expr: !DIExpression())
!2265 = distinct !DIGlobalVariable(name: "dev_attr_temp", scope: !2, file: !3, line: 399, type: !2068, isLocal: true, isDefinition: true)
!2266 = !DIGlobalVariableExpression(var: !2267, expr: !DIExpression())
!2267 = distinct !DIGlobalVariable(name: "dev_attr_policy", scope: !2, file: !3, line: 400, type: !2068, isLocal: true, isDefinition: true)
!2268 = !DIGlobalVariableExpression(var: !2269, expr: !DIExpression())
!2269 = distinct !DIGlobalVariable(name: "dev_attr_available_policies", scope: !2, file: !3, line: 401, type: !2068, isLocal: true, isDefinition: true)
!2270 = !DIGlobalVariableExpression(var: !2271, expr: !DIExpression())
!2271 = distinct !DIGlobalVariable(name: "dev_attr_sustainable_power", scope: !2, file: !3, line: 402, type: !2068, isLocal: true, isDefinition: true)
!2272 = !DIGlobalVariableExpression(var: !2273, expr: !DIExpression())
!2273 = distinct !DIGlobalVariable(name: "dev_attr_k_po", scope: !2, file: !3, line: 384, type: !2068, isLocal: true, isDefinition: true)
!2274 = !DIGlobalVariableExpression(var: !2275, expr: !DIExpression())
!2275 = distinct !DIGlobalVariable(name: "dev_attr_k_pu", scope: !2, file: !3, line: 385, type: !2068, isLocal: true, isDefinition: true)
!2276 = !DIGlobalVariableExpression(var: !2277, expr: !DIExpression())
!2277 = distinct !DIGlobalVariable(name: "dev_attr_k_i", scope: !2, file: !3, line: 386, type: !2068, isLocal: true, isDefinition: true)
!2278 = !DIGlobalVariableExpression(var: !2279, expr: !DIExpression())
!2279 = distinct !DIGlobalVariable(name: "dev_attr_k_d", scope: !2, file: !3, line: 387, type: !2068, isLocal: true, isDefinition: true)
!2280 = !DIGlobalVariableExpression(var: !2281, expr: !DIExpression())
!2281 = distinct !DIGlobalVariable(name: "dev_attr_integral_cutoff", scope: !2, file: !3, line: 388, type: !2068, isLocal: true, isDefinition: true)
!2282 = !DIGlobalVariableExpression(var: !2283, expr: !DIExpression())
!2283 = distinct !DIGlobalVariable(name: "dev_attr_slope", scope: !2, file: !3, line: 389, type: !2068, isLocal: true, isDefinition: true)
!2284 = !DIGlobalVariableExpression(var: !2285, expr: !DIExpression())
!2285 = distinct !DIGlobalVariable(name: "dev_attr_offset", scope: !2, file: !3, line: 390, type: !2068, isLocal: true, isDefinition: true)
!2286 = !DIGlobalVariableExpression(var: !2287, expr: !DIExpression())
!2287 = distinct !DIGlobalVariable(name: "thermal_zone_mode_attribute_group", scope: !2, file: !3, line: 437, type: !230, isLocal: true, isDefinition: true)
!2288 = !DIGlobalVariableExpression(var: !2289, expr: !DIExpression())
!2289 = distinct !DIGlobalVariable(name: "thermal_zone_mode_attrs", scope: !2, file: !3, line: 432, type: !2290, isLocal: true, isDefinition: true)
!2290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 128, elements: !972)
!2291 = !DIGlobalVariableExpression(var: !2292, expr: !DIExpression())
!2292 = distinct !DIGlobalVariable(name: "dev_attr_mode", scope: !2, file: !3, line: 405, type: !2068, isLocal: true, isDefinition: true)
!2293 = !DIGlobalVariableExpression(var: !2294, expr: !DIExpression())
!2294 = distinct !DIGlobalVariable(name: "thermal_zone_passive_attribute_group", scope: !2, file: !3, line: 471, type: !230, isLocal: true, isDefinition: true)
!2295 = !DIGlobalVariableExpression(var: !2296, expr: !DIExpression())
!2296 = distinct !DIGlobalVariable(name: "thermal_zone_passive_attrs", scope: !2, file: !3, line: 442, type: !2290, isLocal: true, isDefinition: true)
!2297 = !DIGlobalVariableExpression(var: !2298, expr: !DIExpression())
!2298 = distinct !DIGlobalVariable(name: "dev_attr_passive", scope: !2, file: !3, line: 406, type: !2068, isLocal: true, isDefinition: true)
!2299 = !DIGlobalVariableExpression(var: !2300, expr: !DIExpression())
!2300 = distinct !DIGlobalVariable(name: "cooling_device_attr_groups", scope: !2, file: !3, line: 725, type: !2301, isLocal: true, isDefinition: true)
!2301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 192, elements: !174)
!2302 = !DIGlobalVariableExpression(var: !2303, expr: !DIExpression())
!2303 = distinct !DIGlobalVariable(name: "cooling_device_attr_group", scope: !2, file: !3, line: 721, type: !229, isLocal: true, isDefinition: true)
!2304 = !DIGlobalVariableExpression(var: !2305, expr: !DIExpression())
!2305 = distinct !DIGlobalVariable(name: "cooling_device_attrs", scope: !2, file: !3, line: 714, type: !2306, isLocal: true, isDefinition: true)
!2306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 256, elements: !373)
!2307 = !DIGlobalVariableExpression(var: !2308, expr: !DIExpression())
!2308 = distinct !DIGlobalVariable(name: "dev_attr_cdev_type", scope: !2, file: !3, line: 710, type: !2068, isLocal: true, isDefinition: true)
!2309 = !DIGlobalVariableExpression(var: !2310, expr: !DIExpression())
!2310 = distinct !DIGlobalVariable(name: "dev_attr_max_state", scope: !2, file: !3, line: 711, type: !2068, isLocal: true, isDefinition: true)
!2311 = !DIGlobalVariableExpression(var: !2312, expr: !DIExpression())
!2312 = distinct !DIGlobalVariable(name: "dev_attr_cur_state", scope: !2, file: !3, line: 712, type: !2068, isLocal: true, isDefinition: true)
!2313 = !{i32 7, !"Dwarf Version", i32 4}
!2314 = !{i32 2, !"Debug Info Version", i32 3}
!2315 = !{i32 1, !"wchar_size", i32 2}
!2316 = !{i32 1, !"Code Model", i32 2}
!2317 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2318 = distinct !DISubprogram(name: "thermal_zone_create_device_groups", scope: !3, file: !3, line: 607, type: !2173, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2319 = !DILocalVariable(name: "tz", arg: 1, scope: !2318, file: !3, line: 607, type: !103)
!2320 = !DILocation(line: 607, column: 67, scope: !2318)
!2321 = !DILocalVariable(name: "mask", arg: 2, scope: !2318, file: !3, line: 608, type: !88)
!2322 = !DILocation(line: 608, column: 15, scope: !2318)
!2323 = !DILocalVariable(name: "groups", scope: !2318, file: !3, line: 610, type: !227)
!2324 = !DILocation(line: 610, column: 33, scope: !2318)
!2325 = !DILocalVariable(name: "i", scope: !2318, file: !3, line: 611, type: !88)
!2326 = !DILocation(line: 611, column: 6, scope: !2318)
!2327 = !DILocalVariable(name: "size", scope: !2318, file: !3, line: 611, type: !88)
!2328 = !DILocation(line: 611, column: 9, scope: !2318)
!2329 = !DILocalVariable(name: "result", scope: !2318, file: !3, line: 611, type: !88)
!2330 = !DILocation(line: 611, column: 15, scope: !2318)
!2331 = !DILocation(line: 614, column: 7, scope: !2318)
!2332 = !DILocation(line: 616, column: 19, scope: !2318)
!2333 = !DILocation(line: 616, column: 11, scope: !2318)
!2334 = !DILocation(line: 616, column: 9, scope: !2318)
!2335 = !DILocation(line: 617, column: 7, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2318, file: !3, line: 617, column: 6)
!2337 = !DILocation(line: 617, column: 6, scope: !2318)
!2338 = !DILocation(line: 618, column: 3, scope: !2336)
!2339 = !DILocation(line: 620, column: 9, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2318, file: !3, line: 620, column: 2)
!2341 = !DILocation(line: 620, column: 7, scope: !2340)
!2342 = !DILocation(line: 620, column: 14, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2340, file: !3, line: 620, column: 2)
!2344 = !DILocation(line: 620, column: 18, scope: !2343)
!2345 = !DILocation(line: 620, column: 23, scope: !2343)
!2346 = !DILocation(line: 620, column: 16, scope: !2343)
!2347 = !DILocation(line: 620, column: 2, scope: !2340)
!2348 = !DILocation(line: 621, column: 45, scope: !2343)
!2349 = !DILocation(line: 621, column: 15, scope: !2343)
!2350 = !DILocation(line: 621, column: 3, scope: !2343)
!2351 = !DILocation(line: 621, column: 10, scope: !2343)
!2352 = !DILocation(line: 621, column: 13, scope: !2343)
!2353 = !DILocation(line: 620, column: 29, scope: !2343)
!2354 = !DILocation(line: 620, column: 2, scope: !2343)
!2355 = distinct !{!2355, !2347, !2356}
!2356 = !DILocation(line: 621, column: 46, scope: !2340)
!2357 = !DILocation(line: 623, column: 6, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2318, file: !3, line: 623, column: 6)
!2359 = !DILocation(line: 623, column: 10, scope: !2358)
!2360 = !DILocation(line: 623, column: 6, scope: !2318)
!2361 = !DILocation(line: 624, column: 30, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2358, file: !3, line: 623, column: 17)
!2363 = !DILocation(line: 624, column: 34, scope: !2362)
!2364 = !DILocation(line: 624, column: 12, scope: !2362)
!2365 = !DILocation(line: 624, column: 10, scope: !2362)
!2366 = !DILocation(line: 625, column: 7, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2362, file: !3, line: 625, column: 7)
!2368 = !DILocation(line: 625, column: 7, scope: !2362)
!2369 = !DILocation(line: 626, column: 10, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2367, file: !3, line: 625, column: 15)
!2371 = !DILocation(line: 626, column: 4, scope: !2370)
!2372 = !DILocation(line: 628, column: 11, scope: !2370)
!2373 = !DILocation(line: 628, column: 4, scope: !2370)
!2374 = !DILocation(line: 631, column: 23, scope: !2362)
!2375 = !DILocation(line: 631, column: 27, scope: !2362)
!2376 = !DILocation(line: 631, column: 3, scope: !2362)
!2377 = !DILocation(line: 631, column: 10, scope: !2362)
!2378 = !DILocation(line: 631, column: 15, scope: !2362)
!2379 = !DILocation(line: 631, column: 20, scope: !2362)
!2380 = !DILocation(line: 632, column: 2, scope: !2362)
!2381 = !DILocation(line: 634, column: 22, scope: !2318)
!2382 = !DILocation(line: 634, column: 2, scope: !2318)
!2383 = !DILocation(line: 634, column: 6, scope: !2318)
!2384 = !DILocation(line: 634, column: 13, scope: !2318)
!2385 = !DILocation(line: 634, column: 20, scope: !2318)
!2386 = !DILocation(line: 636, column: 2, scope: !2318)
!2387 = !DILocation(line: 637, column: 1, scope: !2318)
!2388 = distinct !DISubprogram(name: "kcalloc", scope: !81, file: !81, line: 601, type: !2389, scopeLine: 602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{!91, !220, !220, !89}
!2391 = !DILocalVariable(name: "n", arg: 1, scope: !2388, file: !81, line: 601, type: !220)
!2392 = !DILocation(line: 601, column: 36, scope: !2388)
!2393 = !DILocalVariable(name: "size", arg: 2, scope: !2388, file: !81, line: 601, type: !220)
!2394 = !DILocation(line: 601, column: 46, scope: !2388)
!2395 = !DILocalVariable(name: "flags", arg: 3, scope: !2388, file: !81, line: 601, type: !89)
!2396 = !DILocation(line: 601, column: 58, scope: !2388)
!2397 = !DILocation(line: 603, column: 23, scope: !2388)
!2398 = !DILocation(line: 603, column: 26, scope: !2388)
!2399 = !DILocation(line: 603, column: 32, scope: !2388)
!2400 = !DILocation(line: 603, column: 38, scope: !2388)
!2401 = !DILocation(line: 603, column: 9, scope: !2388)
!2402 = !DILocation(line: 603, column: 2, scope: !2388)
!2403 = distinct !DISubprogram(name: "create_trip_attrs", scope: !3, file: !3, line: 493, type: !2173, scopeLine: 494, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2404 = !DILocalVariable(name: "tz", arg: 1, scope: !2403, file: !3, line: 493, type: !103)
!2405 = !DILocation(line: 493, column: 58, scope: !2403)
!2406 = !DILocalVariable(name: "mask", arg: 2, scope: !2403, file: !3, line: 493, type: !88)
!2407 = !DILocation(line: 493, column: 66, scope: !2403)
!2408 = !DILocalVariable(name: "attrs", scope: !2403, file: !3, line: 495, type: !225)
!2409 = !DILocation(line: 495, column: 21, scope: !2403)
!2410 = !DILocalVariable(name: "indx", scope: !2403, file: !3, line: 496, type: !88)
!2411 = !DILocation(line: 496, column: 6, scope: !2403)
!2412 = !DILocation(line: 499, column: 6, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2403, file: !3, line: 499, column: 6)
!2414 = !DILocation(line: 499, column: 10, scope: !2413)
!2415 = !DILocation(line: 499, column: 16, scope: !2413)
!2416 = !DILocation(line: 499, column: 6, scope: !2403)
!2417 = !DILocation(line: 500, column: 3, scope: !2413)
!2418 = !DILocation(line: 502, column: 32, scope: !2403)
!2419 = !DILocation(line: 502, column: 36, scope: !2403)
!2420 = !DILocation(line: 502, column: 24, scope: !2403)
!2421 = !DILocation(line: 502, column: 2, scope: !2403)
!2422 = !DILocation(line: 502, column: 6, scope: !2403)
!2423 = !DILocation(line: 502, column: 22, scope: !2403)
!2424 = !DILocation(line: 504, column: 7, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2403, file: !3, line: 504, column: 6)
!2426 = !DILocation(line: 504, column: 11, scope: !2425)
!2427 = !DILocation(line: 504, column: 6, scope: !2403)
!2428 = !DILocation(line: 505, column: 3, scope: !2425)
!2429 = !DILocation(line: 507, column: 32, scope: !2403)
!2430 = !DILocation(line: 507, column: 36, scope: !2403)
!2431 = !DILocation(line: 507, column: 24, scope: !2403)
!2432 = !DILocation(line: 507, column: 2, scope: !2403)
!2433 = !DILocation(line: 507, column: 6, scope: !2403)
!2434 = !DILocation(line: 507, column: 22, scope: !2403)
!2435 = !DILocation(line: 509, column: 7, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2403, file: !3, line: 509, column: 6)
!2437 = !DILocation(line: 509, column: 11, scope: !2436)
!2438 = !DILocation(line: 509, column: 6, scope: !2403)
!2439 = !DILocation(line: 510, column: 9, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2436, file: !3, line: 509, column: 28)
!2441 = !DILocation(line: 510, column: 13, scope: !2440)
!2442 = !DILocation(line: 510, column: 3, scope: !2440)
!2443 = !DILocation(line: 511, column: 3, scope: !2440)
!2444 = !DILocation(line: 514, column: 6, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2403, file: !3, line: 514, column: 6)
!2446 = !DILocation(line: 514, column: 10, scope: !2445)
!2447 = !DILocation(line: 514, column: 15, scope: !2445)
!2448 = !DILocation(line: 514, column: 6, scope: !2403)
!2449 = !DILocation(line: 515, column: 33, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2445, file: !3, line: 514, column: 30)
!2451 = !DILocation(line: 515, column: 37, scope: !2450)
!2452 = !DILocation(line: 515, column: 25, scope: !2450)
!2453 = !DILocation(line: 515, column: 3, scope: !2450)
!2454 = !DILocation(line: 515, column: 7, scope: !2450)
!2455 = !DILocation(line: 515, column: 23, scope: !2450)
!2456 = !DILocation(line: 518, column: 8, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2450, file: !3, line: 518, column: 7)
!2458 = !DILocation(line: 518, column: 12, scope: !2457)
!2459 = !DILocation(line: 518, column: 7, scope: !2450)
!2460 = !DILocation(line: 519, column: 10, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2457, file: !3, line: 518, column: 29)
!2462 = !DILocation(line: 519, column: 14, scope: !2461)
!2463 = !DILocation(line: 519, column: 4, scope: !2461)
!2464 = !DILocation(line: 520, column: 10, scope: !2461)
!2465 = !DILocation(line: 520, column: 14, scope: !2461)
!2466 = !DILocation(line: 520, column: 4, scope: !2461)
!2467 = !DILocation(line: 521, column: 4, scope: !2461)
!2468 = !DILocation(line: 523, column: 2, scope: !2450)
!2469 = !DILocation(line: 525, column: 18, scope: !2403)
!2470 = !DILocation(line: 525, column: 22, scope: !2403)
!2471 = !DILocation(line: 525, column: 28, scope: !2403)
!2472 = !DILocation(line: 525, column: 32, scope: !2403)
!2473 = !DILocation(line: 525, column: 10, scope: !2403)
!2474 = !DILocation(line: 525, column: 8, scope: !2403)
!2475 = !DILocation(line: 526, column: 7, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2403, file: !3, line: 526, column: 6)
!2477 = !DILocation(line: 526, column: 6, scope: !2403)
!2478 = !DILocation(line: 527, column: 9, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2476, file: !3, line: 526, column: 14)
!2480 = !DILocation(line: 527, column: 13, scope: !2479)
!2481 = !DILocation(line: 527, column: 3, scope: !2479)
!2482 = !DILocation(line: 528, column: 9, scope: !2479)
!2483 = !DILocation(line: 528, column: 13, scope: !2479)
!2484 = !DILocation(line: 528, column: 3, scope: !2479)
!2485 = !DILocation(line: 529, column: 7, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2479, file: !3, line: 529, column: 7)
!2487 = !DILocation(line: 529, column: 11, scope: !2486)
!2488 = !DILocation(line: 529, column: 16, scope: !2486)
!2489 = !DILocation(line: 529, column: 7, scope: !2479)
!2490 = !DILocation(line: 530, column: 10, scope: !2486)
!2491 = !DILocation(line: 530, column: 14, scope: !2486)
!2492 = !DILocation(line: 530, column: 4, scope: !2486)
!2493 = !DILocation(line: 531, column: 3, scope: !2479)
!2494 = !DILocation(line: 534, column: 12, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2403, file: !3, line: 534, column: 2)
!2496 = !DILocation(line: 534, column: 7, scope: !2495)
!2497 = !DILocation(line: 534, column: 17, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2495, file: !3, line: 534, column: 2)
!2499 = !DILocation(line: 534, column: 24, scope: !2498)
!2500 = !DILocation(line: 534, column: 28, scope: !2498)
!2501 = !DILocation(line: 534, column: 22, scope: !2498)
!2502 = !DILocation(line: 534, column: 2, scope: !2495)
!2503 = !DILocation(line: 536, column: 12, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2498, file: !3, line: 534, column: 43)
!2505 = !DILocation(line: 536, column: 16, scope: !2504)
!2506 = !DILocation(line: 536, column: 32, scope: !2504)
!2507 = !DILocation(line: 536, column: 38, scope: !2504)
!2508 = !DILocation(line: 537, column: 27, scope: !2504)
!2509 = !DILocation(line: 536, column: 3, scope: !2504)
!2510 = !DILocation(line: 539, column: 3, scope: !2504)
!2511 = !DILocation(line: 539, column: 3, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2504, file: !3, line: 539, column: 3)
!2513 = !DILocation(line: 541, column: 7, scope: !2504)
!2514 = !DILocation(line: 541, column: 11, scope: !2504)
!2515 = !DILocation(line: 541, column: 27, scope: !2504)
!2516 = !DILocation(line: 541, column: 33, scope: !2504)
!2517 = !DILocation(line: 540, column: 3, scope: !2504)
!2518 = !DILocation(line: 540, column: 7, scope: !2504)
!2519 = !DILocation(line: 540, column: 23, scope: !2504)
!2520 = !DILocation(line: 540, column: 29, scope: !2504)
!2521 = !DILocation(line: 540, column: 34, scope: !2504)
!2522 = !DILocation(line: 540, column: 39, scope: !2504)
!2523 = !DILocation(line: 540, column: 44, scope: !2504)
!2524 = !DILocation(line: 542, column: 3, scope: !2504)
!2525 = !DILocation(line: 542, column: 7, scope: !2504)
!2526 = !DILocation(line: 542, column: 23, scope: !2504)
!2527 = !DILocation(line: 542, column: 29, scope: !2504)
!2528 = !DILocation(line: 542, column: 34, scope: !2504)
!2529 = !DILocation(line: 542, column: 39, scope: !2504)
!2530 = !DILocation(line: 542, column: 44, scope: !2504)
!2531 = !DILocation(line: 543, column: 3, scope: !2504)
!2532 = !DILocation(line: 543, column: 7, scope: !2504)
!2533 = !DILocation(line: 543, column: 23, scope: !2504)
!2534 = !DILocation(line: 543, column: 29, scope: !2504)
!2535 = !DILocation(line: 543, column: 34, scope: !2504)
!2536 = !DILocation(line: 543, column: 39, scope: !2504)
!2537 = !DILocation(line: 544, column: 18, scope: !2504)
!2538 = !DILocation(line: 544, column: 22, scope: !2504)
!2539 = !DILocation(line: 544, column: 38, scope: !2504)
!2540 = !DILocation(line: 544, column: 44, scope: !2504)
!2541 = !DILocation(line: 544, column: 49, scope: !2504)
!2542 = !DILocation(line: 544, column: 3, scope: !2504)
!2543 = !DILocation(line: 544, column: 9, scope: !2504)
!2544 = !DILocation(line: 544, column: 15, scope: !2504)
!2545 = !DILocation(line: 547, column: 12, scope: !2504)
!2546 = !DILocation(line: 547, column: 16, scope: !2504)
!2547 = !DILocation(line: 547, column: 32, scope: !2504)
!2548 = !DILocation(line: 547, column: 38, scope: !2504)
!2549 = !DILocation(line: 548, column: 27, scope: !2504)
!2550 = !DILocation(line: 547, column: 3, scope: !2504)
!2551 = !DILocation(line: 550, column: 3, scope: !2504)
!2552 = !DILocation(line: 550, column: 3, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2504, file: !3, line: 550, column: 3)
!2554 = !DILocation(line: 552, column: 7, scope: !2504)
!2555 = !DILocation(line: 552, column: 11, scope: !2504)
!2556 = !DILocation(line: 552, column: 27, scope: !2504)
!2557 = !DILocation(line: 552, column: 33, scope: !2504)
!2558 = !DILocation(line: 551, column: 3, scope: !2504)
!2559 = !DILocation(line: 551, column: 7, scope: !2504)
!2560 = !DILocation(line: 551, column: 23, scope: !2504)
!2561 = !DILocation(line: 551, column: 29, scope: !2504)
!2562 = !DILocation(line: 551, column: 34, scope: !2504)
!2563 = !DILocation(line: 551, column: 39, scope: !2504)
!2564 = !DILocation(line: 551, column: 44, scope: !2504)
!2565 = !DILocation(line: 553, column: 3, scope: !2504)
!2566 = !DILocation(line: 553, column: 7, scope: !2504)
!2567 = !DILocation(line: 553, column: 23, scope: !2504)
!2568 = !DILocation(line: 553, column: 29, scope: !2504)
!2569 = !DILocation(line: 553, column: 34, scope: !2504)
!2570 = !DILocation(line: 553, column: 39, scope: !2504)
!2571 = !DILocation(line: 553, column: 44, scope: !2504)
!2572 = !DILocation(line: 554, column: 3, scope: !2504)
!2573 = !DILocation(line: 554, column: 7, scope: !2504)
!2574 = !DILocation(line: 554, column: 23, scope: !2504)
!2575 = !DILocation(line: 554, column: 29, scope: !2504)
!2576 = !DILocation(line: 554, column: 34, scope: !2504)
!2577 = !DILocation(line: 554, column: 39, scope: !2504)
!2578 = !DILocation(line: 556, column: 7, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2504, file: !3, line: 555, column: 7)
!2580 = !DILocation(line: 556, column: 20, scope: !2579)
!2581 = !DILocation(line: 556, column: 17, scope: !2579)
!2582 = !DILocation(line: 556, column: 12, scope: !2579)
!2583 = !DILocation(line: 555, column: 7, scope: !2504)
!2584 = !DILocation(line: 557, column: 4, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2579, file: !3, line: 556, column: 27)
!2586 = !DILocation(line: 557, column: 8, scope: !2585)
!2587 = !DILocation(line: 557, column: 24, scope: !2585)
!2588 = !DILocation(line: 557, column: 30, scope: !2585)
!2589 = !DILocation(line: 557, column: 35, scope: !2585)
!2590 = !DILocation(line: 557, column: 40, scope: !2585)
!2591 = !DILocation(line: 557, column: 45, scope: !2585)
!2592 = !DILocation(line: 558, column: 4, scope: !2585)
!2593 = !DILocation(line: 558, column: 8, scope: !2585)
!2594 = !DILocation(line: 558, column: 24, scope: !2585)
!2595 = !DILocation(line: 558, column: 30, scope: !2585)
!2596 = !DILocation(line: 558, column: 35, scope: !2585)
!2597 = !DILocation(line: 558, column: 41, scope: !2585)
!2598 = !DILocation(line: 560, column: 3, scope: !2585)
!2599 = !DILocation(line: 561, column: 30, scope: !2504)
!2600 = !DILocation(line: 561, column: 34, scope: !2504)
!2601 = !DILocation(line: 561, column: 50, scope: !2504)
!2602 = !DILocation(line: 561, column: 56, scope: !2504)
!2603 = !DILocation(line: 561, column: 61, scope: !2504)
!2604 = !DILocation(line: 561, column: 3, scope: !2504)
!2605 = !DILocation(line: 561, column: 9, scope: !2504)
!2606 = !DILocation(line: 561, column: 16, scope: !2504)
!2607 = !DILocation(line: 561, column: 20, scope: !2504)
!2608 = !DILocation(line: 561, column: 14, scope: !2504)
!2609 = !DILocation(line: 561, column: 27, scope: !2504)
!2610 = !DILocation(line: 564, column: 8, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2504, file: !3, line: 564, column: 7)
!2612 = !DILocation(line: 564, column: 12, scope: !2611)
!2613 = !DILocation(line: 564, column: 17, scope: !2611)
!2614 = !DILocation(line: 564, column: 7, scope: !2504)
!2615 = !DILocation(line: 565, column: 4, scope: !2611)
!2616 = !DILocation(line: 566, column: 12, scope: !2504)
!2617 = !DILocation(line: 566, column: 16, scope: !2504)
!2618 = !DILocation(line: 566, column: 32, scope: !2504)
!2619 = !DILocation(line: 566, column: 38, scope: !2504)
!2620 = !DILocation(line: 567, column: 27, scope: !2504)
!2621 = !DILocation(line: 566, column: 3, scope: !2504)
!2622 = !DILocation(line: 569, column: 3, scope: !2504)
!2623 = !DILocation(line: 569, column: 3, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2504, file: !3, line: 569, column: 3)
!2625 = !DILocation(line: 571, column: 6, scope: !2504)
!2626 = !DILocation(line: 571, column: 10, scope: !2504)
!2627 = !DILocation(line: 571, column: 26, scope: !2504)
!2628 = !DILocation(line: 571, column: 32, scope: !2504)
!2629 = !DILocation(line: 570, column: 3, scope: !2504)
!2630 = !DILocation(line: 570, column: 7, scope: !2504)
!2631 = !DILocation(line: 570, column: 23, scope: !2504)
!2632 = !DILocation(line: 570, column: 29, scope: !2504)
!2633 = !DILocation(line: 570, column: 34, scope: !2504)
!2634 = !DILocation(line: 570, column: 39, scope: !2504)
!2635 = !DILocation(line: 570, column: 44, scope: !2504)
!2636 = !DILocation(line: 572, column: 3, scope: !2504)
!2637 = !DILocation(line: 572, column: 7, scope: !2504)
!2638 = !DILocation(line: 572, column: 23, scope: !2504)
!2639 = !DILocation(line: 572, column: 29, scope: !2504)
!2640 = !DILocation(line: 572, column: 34, scope: !2504)
!2641 = !DILocation(line: 572, column: 39, scope: !2504)
!2642 = !DILocation(line: 572, column: 44, scope: !2504)
!2643 = !DILocation(line: 573, column: 3, scope: !2504)
!2644 = !DILocation(line: 573, column: 7, scope: !2504)
!2645 = !DILocation(line: 573, column: 23, scope: !2504)
!2646 = !DILocation(line: 573, column: 29, scope: !2504)
!2647 = !DILocation(line: 573, column: 34, scope: !2504)
!2648 = !DILocation(line: 573, column: 39, scope: !2504)
!2649 = !DILocation(line: 574, column: 7, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2504, file: !3, line: 574, column: 7)
!2651 = !DILocation(line: 574, column: 11, scope: !2650)
!2652 = !DILocation(line: 574, column: 16, scope: !2650)
!2653 = !DILocation(line: 574, column: 7, scope: !2504)
!2654 = !DILocation(line: 575, column: 4, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2650, file: !3, line: 574, column: 31)
!2656 = !DILocation(line: 575, column: 8, scope: !2655)
!2657 = !DILocation(line: 575, column: 24, scope: !2655)
!2658 = !DILocation(line: 575, column: 30, scope: !2655)
!2659 = !DILocation(line: 575, column: 35, scope: !2655)
!2660 = !DILocation(line: 575, column: 40, scope: !2655)
!2661 = !DILocation(line: 575, column: 45, scope: !2655)
!2662 = !DILocation(line: 576, column: 4, scope: !2655)
!2663 = !DILocation(line: 576, column: 8, scope: !2655)
!2664 = !DILocation(line: 576, column: 24, scope: !2655)
!2665 = !DILocation(line: 576, column: 30, scope: !2655)
!2666 = !DILocation(line: 576, column: 35, scope: !2655)
!2667 = !DILocation(line: 576, column: 41, scope: !2655)
!2668 = !DILocation(line: 578, column: 3, scope: !2655)
!2669 = !DILocation(line: 580, column: 7, scope: !2504)
!2670 = !DILocation(line: 580, column: 11, scope: !2504)
!2671 = !DILocation(line: 580, column: 27, scope: !2504)
!2672 = !DILocation(line: 580, column: 33, scope: !2504)
!2673 = !DILocation(line: 580, column: 38, scope: !2504)
!2674 = !DILocation(line: 579, column: 3, scope: !2504)
!2675 = !DILocation(line: 579, column: 9, scope: !2504)
!2676 = !DILocation(line: 579, column: 16, scope: !2504)
!2677 = !DILocation(line: 579, column: 20, scope: !2504)
!2678 = !DILocation(line: 579, column: 26, scope: !2504)
!2679 = !DILocation(line: 579, column: 14, scope: !2504)
!2680 = !DILocation(line: 579, column: 31, scope: !2504)
!2681 = !DILocation(line: 581, column: 2, scope: !2504)
!2682 = !DILocation(line: 534, column: 39, scope: !2498)
!2683 = !DILocation(line: 534, column: 2, scope: !2498)
!2684 = distinct !{!2684, !2502, !2685}
!2685 = !DILocation(line: 581, column: 2, scope: !2495)
!2686 = !DILocation(line: 582, column: 2, scope: !2403)
!2687 = !DILocation(line: 582, column: 8, scope: !2403)
!2688 = !DILocation(line: 582, column: 12, scope: !2403)
!2689 = !DILocation(line: 582, column: 18, scope: !2403)
!2690 = !DILocation(line: 582, column: 23, scope: !2403)
!2691 = !DILocation(line: 584, column: 36, scope: !2403)
!2692 = !DILocation(line: 584, column: 2, scope: !2403)
!2693 = !DILocation(line: 584, column: 6, scope: !2403)
!2694 = !DILocation(line: 584, column: 28, scope: !2403)
!2695 = !DILocation(line: 584, column: 34, scope: !2403)
!2696 = !DILocation(line: 586, column: 2, scope: !2403)
!2697 = !DILocation(line: 587, column: 1, scope: !2403)
!2698 = distinct !DISubprogram(name: "thermal_zone_destroy_device_groups", scope: !3, file: !3, line: 639, type: !2219, scopeLine: 640, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2699 = !DILocalVariable(name: "tz", arg: 1, scope: !2698, file: !3, line: 639, type: !103)
!2700 = !DILocation(line: 639, column: 69, scope: !2698)
!2701 = !DILocation(line: 641, column: 7, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2698, file: !3, line: 641, column: 6)
!2703 = !DILocation(line: 641, column: 6, scope: !2698)
!2704 = !DILocation(line: 642, column: 3, scope: !2702)
!2705 = !DILocation(line: 644, column: 6, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2698, file: !3, line: 644, column: 6)
!2707 = !DILocation(line: 644, column: 10, scope: !2706)
!2708 = !DILocation(line: 644, column: 6, scope: !2698)
!2709 = !DILocation(line: 645, column: 22, scope: !2706)
!2710 = !DILocation(line: 645, column: 3, scope: !2706)
!2711 = !DILocation(line: 647, column: 8, scope: !2698)
!2712 = !DILocation(line: 647, column: 12, scope: !2698)
!2713 = !DILocation(line: 647, column: 19, scope: !2698)
!2714 = !DILocation(line: 647, column: 2, scope: !2698)
!2715 = !DILocation(line: 648, column: 1, scope: !2698)
!2716 = distinct !DISubprogram(name: "destroy_trip_attrs", scope: !3, file: !3, line: 595, type: !2219, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2717 = !DILocalVariable(name: "tz", arg: 1, scope: !2716, file: !3, line: 595, type: !103)
!2718 = !DILocation(line: 595, column: 60, scope: !2716)
!2719 = !DILocation(line: 597, column: 7, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2716, file: !3, line: 597, column: 6)
!2721 = !DILocation(line: 597, column: 6, scope: !2716)
!2722 = !DILocation(line: 598, column: 3, scope: !2720)
!2723 = !DILocation(line: 600, column: 8, scope: !2716)
!2724 = !DILocation(line: 600, column: 12, scope: !2716)
!2725 = !DILocation(line: 600, column: 2, scope: !2716)
!2726 = !DILocation(line: 601, column: 8, scope: !2716)
!2727 = !DILocation(line: 601, column: 12, scope: !2716)
!2728 = !DILocation(line: 601, column: 2, scope: !2716)
!2729 = !DILocation(line: 602, column: 6, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2716, file: !3, line: 602, column: 6)
!2731 = !DILocation(line: 602, column: 10, scope: !2730)
!2732 = !DILocation(line: 602, column: 15, scope: !2730)
!2733 = !DILocation(line: 602, column: 6, scope: !2716)
!2734 = !DILocation(line: 603, column: 9, scope: !2730)
!2735 = !DILocation(line: 603, column: 13, scope: !2730)
!2736 = !DILocation(line: 603, column: 3, scope: !2730)
!2737 = !DILocation(line: 604, column: 8, scope: !2716)
!2738 = !DILocation(line: 604, column: 12, scope: !2716)
!2739 = !DILocation(line: 604, column: 34, scope: !2716)
!2740 = !DILocation(line: 604, column: 2, scope: !2716)
!2741 = !DILocation(line: 605, column: 1, scope: !2716)
!2742 = distinct !DISubprogram(name: "thermal_cooling_device_setup_sysfs", scope: !3, file: !3, line: 938, type: !2743, scopeLine: 939, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2743 = !DISubroutineType(types: !2744)
!2744 = !{null, !2105}
!2745 = !DILocalVariable(name: "cdev", arg: 1, scope: !2742, file: !3, line: 938, type: !2105)
!2746 = !DILocation(line: 938, column: 72, scope: !2742)
!2747 = !DILocation(line: 940, column: 29, scope: !2742)
!2748 = !DILocation(line: 940, column: 2, scope: !2742)
!2749 = !DILocation(line: 941, column: 2, scope: !2742)
!2750 = !DILocation(line: 941, column: 8, scope: !2742)
!2751 = !DILocation(line: 941, column: 15, scope: !2742)
!2752 = !DILocation(line: 941, column: 22, scope: !2742)
!2753 = !DILocation(line: 942, column: 1, scope: !2742)
!2754 = distinct !DISubprogram(name: "cooling_device_stats_setup", scope: !3, file: !3, line: 932, type: !2743, scopeLine: 932, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2755 = !DILocalVariable(name: "cdev", arg: 1, scope: !2754, file: !3, line: 932, type: !2105)
!2756 = !DILocation(line: 932, column: 59, scope: !2754)
!2757 = !DILocation(line: 932, column: 66, scope: !2754)
!2758 = distinct !DISubprogram(name: "thermal_cooling_device_destroy_sysfs", scope: !3, file: !3, line: 944, type: !2743, scopeLine: 945, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2759 = !DILocalVariable(name: "cdev", arg: 1, scope: !2758, file: !3, line: 944, type: !2105)
!2760 = !DILocation(line: 944, column: 74, scope: !2758)
!2761 = !DILocation(line: 946, column: 31, scope: !2758)
!2762 = !DILocation(line: 946, column: 2, scope: !2758)
!2763 = !DILocation(line: 947, column: 1, scope: !2758)
!2764 = distinct !DISubprogram(name: "cooling_device_stats_destroy", scope: !3, file: !3, line: 934, type: !2743, scopeLine: 934, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2765 = !DILocalVariable(name: "cdev", arg: 1, scope: !2764, file: !3, line: 934, type: !2105)
!2766 = !DILocation(line: 934, column: 61, scope: !2764)
!2767 = !DILocation(line: 934, column: 68, scope: !2764)
!2768 = distinct !DISubprogram(name: "trip_point_show", scope: !3, file: !3, line: 951, type: !2073, scopeLine: 952, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2769 = !DILocalVariable(name: "dev", arg: 1, scope: !2768, file: !3, line: 951, type: !1586)
!2770 = !DILocation(line: 951, column: 32, scope: !2768)
!2771 = !DILocalVariable(name: "attr", arg: 2, scope: !2768, file: !3, line: 951, type: !2075)
!2772 = !DILocation(line: 951, column: 62, scope: !2768)
!2773 = !DILocalVariable(name: "buf", arg: 3, scope: !2768, file: !3, line: 951, type: !173)
!2774 = !DILocation(line: 951, column: 74, scope: !2768)
!2775 = !DILocalVariable(name: "instance", scope: !2768, file: !3, line: 953, type: !92)
!2776 = !DILocation(line: 953, column: 27, scope: !2768)
!2777 = !DILocalVariable(name: "__mptr", scope: !2778, file: !3, line: 956, type: !91)
!2778 = distinct !DILexicalBlock(scope: !2768, file: !3, line: 956, column: 6)
!2779 = !DILocation(line: 956, column: 6, scope: !2778)
!2780 = !DILocation(line: 956, column: 6, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2778, file: !3, line: 956, column: 6)
!2782 = !DILocation(line: 955, column: 11, scope: !2768)
!2783 = !DILocation(line: 958, column: 6, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2768, file: !3, line: 958, column: 6)
!2785 = !DILocation(line: 958, column: 16, scope: !2784)
!2786 = !DILocation(line: 958, column: 21, scope: !2784)
!2787 = !DILocation(line: 958, column: 6, scope: !2768)
!2788 = !DILocation(line: 959, column: 18, scope: !2784)
!2789 = !DILocation(line: 959, column: 10, scope: !2784)
!2790 = !DILocation(line: 959, column: 3, scope: !2784)
!2791 = !DILocation(line: 961, column: 18, scope: !2784)
!2792 = !DILocation(line: 961, column: 31, scope: !2784)
!2793 = !DILocation(line: 961, column: 41, scope: !2784)
!2794 = !DILocation(line: 961, column: 10, scope: !2784)
!2795 = !DILocation(line: 961, column: 3, scope: !2784)
!2796 = !DILocation(line: 962, column: 1, scope: !2768)
!2797 = distinct !DISubprogram(name: "weight_show", scope: !3, file: !3, line: 965, type: !2073, scopeLine: 966, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2798 = !DILocalVariable(name: "dev", arg: 1, scope: !2797, file: !3, line: 965, type: !1586)
!2799 = !DILocation(line: 965, column: 28, scope: !2797)
!2800 = !DILocalVariable(name: "attr", arg: 2, scope: !2797, file: !3, line: 965, type: !2075)
!2801 = !DILocation(line: 965, column: 58, scope: !2797)
!2802 = !DILocalVariable(name: "buf", arg: 3, scope: !2797, file: !3, line: 965, type: !173)
!2803 = !DILocation(line: 965, column: 70, scope: !2797)
!2804 = !DILocalVariable(name: "instance", scope: !2797, file: !3, line: 967, type: !92)
!2805 = !DILocation(line: 967, column: 27, scope: !2797)
!2806 = !DILocalVariable(name: "__mptr", scope: !2807, file: !3, line: 969, type: !91)
!2807 = distinct !DILexicalBlock(scope: !2797, file: !3, line: 969, column: 13)
!2808 = !DILocation(line: 969, column: 13, scope: !2807)
!2809 = !DILocation(line: 969, column: 13, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2807, file: !3, line: 969, column: 13)
!2811 = !DILocation(line: 969, column: 11, scope: !2797)
!2812 = !DILocation(line: 971, column: 17, scope: !2797)
!2813 = !DILocation(line: 971, column: 30, scope: !2797)
!2814 = !DILocation(line: 971, column: 40, scope: !2797)
!2815 = !DILocation(line: 971, column: 9, scope: !2797)
!2816 = !DILocation(line: 971, column: 2, scope: !2797)
!2817 = distinct !DISubprogram(name: "weight_store", scope: !3, file: !3, line: 974, type: !2078, scopeLine: 976, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2818 = !DILocalVariable(name: "dev", arg: 1, scope: !2817, file: !3, line: 974, type: !1586)
!2819 = !DILocation(line: 974, column: 37, scope: !2817)
!2820 = !DILocalVariable(name: "attr", arg: 2, scope: !2817, file: !3, line: 974, type: !2075)
!2821 = !DILocation(line: 974, column: 67, scope: !2817)
!2822 = !DILocalVariable(name: "buf", arg: 3, scope: !2817, file: !3, line: 975, type: !116)
!2823 = !DILocation(line: 975, column: 20, scope: !2817)
!2824 = !DILocalVariable(name: "count", arg: 4, scope: !2817, file: !3, line: 975, type: !220)
!2825 = !DILocation(line: 975, column: 32, scope: !2817)
!2826 = !DILocalVariable(name: "instance", scope: !2817, file: !3, line: 977, type: !92)
!2827 = !DILocation(line: 977, column: 27, scope: !2817)
!2828 = !DILocalVariable(name: "ret", scope: !2817, file: !3, line: 978, type: !88)
!2829 = !DILocation(line: 978, column: 6, scope: !2817)
!2830 = !DILocalVariable(name: "weight", scope: !2817, file: !3, line: 978, type: !88)
!2831 = !DILocation(line: 978, column: 11, scope: !2817)
!2832 = !DILocation(line: 980, column: 18, scope: !2817)
!2833 = !DILocation(line: 980, column: 8, scope: !2817)
!2834 = !DILocation(line: 980, column: 6, scope: !2817)
!2835 = !DILocation(line: 981, column: 6, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2817, file: !3, line: 981, column: 6)
!2837 = !DILocation(line: 981, column: 6, scope: !2817)
!2838 = !DILocation(line: 982, column: 10, scope: !2836)
!2839 = !DILocation(line: 982, column: 3, scope: !2836)
!2840 = !DILocalVariable(name: "__mptr", scope: !2841, file: !3, line: 984, type: !91)
!2841 = distinct !DILexicalBlock(scope: !2817, file: !3, line: 984, column: 13)
!2842 = !DILocation(line: 984, column: 13, scope: !2841)
!2843 = !DILocation(line: 984, column: 13, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2841, file: !3, line: 984, column: 13)
!2845 = !DILocation(line: 984, column: 11, scope: !2817)
!2846 = !DILocation(line: 985, column: 21, scope: !2817)
!2847 = !DILocation(line: 985, column: 2, scope: !2817)
!2848 = !DILocation(line: 985, column: 12, scope: !2817)
!2849 = !DILocation(line: 985, column: 19, scope: !2817)
!2850 = !DILocation(line: 987, column: 9, scope: !2817)
!2851 = !DILocation(line: 987, column: 2, scope: !2817)
!2852 = !DILocation(line: 988, column: 1, scope: !2817)
!2853 = distinct !DISubprogram(name: "kmalloc_array", scope: !81, file: !81, line: 584, type: !2389, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2854 = !DILocalVariable(name: "s", arg: 1, scope: !2855, file: !81, line: 445, type: !1050)
!2855 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !81, file: !81, line: 445, type: !2856, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!91, !1050, !89, !220}
!2858 = !DILocation(line: 445, column: 72, scope: !2855, inlinedAt: !2859)
!2859 = distinct !DILocation(line: 552, column: 10, scope: !2860, inlinedAt: !2865)
!2860 = distinct !DILexicalBlock(scope: !2861, file: !81, line: 540, column: 34)
!2861 = distinct !DILexicalBlock(scope: !2862, file: !81, line: 540, column: 6)
!2862 = distinct !DISubprogram(name: "kmalloc", scope: !81, file: !81, line: 538, type: !2863, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2863 = !DISubroutineType(types: !2864)
!2864 = !{!91, !220, !89}
!2865 = distinct !DILocation(line: 591, column: 10, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2853, file: !81, line: 590, column: 6)
!2867 = !DILocalVariable(name: "flags", arg: 2, scope: !2855, file: !81, line: 446, type: !89)
!2868 = !DILocation(line: 446, column: 9, scope: !2855, inlinedAt: !2859)
!2869 = !DILocalVariable(name: "size", arg: 3, scope: !2855, file: !81, line: 446, type: !220)
!2870 = !DILocation(line: 446, column: 23, scope: !2855, inlinedAt: !2859)
!2871 = !DILocalVariable(name: "ret", scope: !2855, file: !81, line: 448, type: !91)
!2872 = !DILocation(line: 448, column: 8, scope: !2855, inlinedAt: !2859)
!2873 = !DILocalVariable(name: "flags", arg: 1, scope: !2874, file: !81, line: 318, type: !89)
!2874 = distinct !DISubprogram(name: "kmalloc_type", scope: !81, file: !81, line: 318, type: !2875, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{!80, !89}
!2877 = !DILocation(line: 318, column: 67, scope: !2874, inlinedAt: !2878)
!2878 = distinct !DILocation(line: 553, column: 20, scope: !2860, inlinedAt: !2865)
!2879 = !DILocalVariable(name: "size", arg: 1, scope: !2880, file: !81, line: 346, type: !220)
!2880 = distinct !DISubprogram(name: "kmalloc_index", scope: !81, file: !81, line: 346, type: !2881, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{!7, !220}
!2883 = !DILocation(line: 346, column: 58, scope: !2880, inlinedAt: !2884)
!2884 = distinct !DILocation(line: 547, column: 11, scope: !2860, inlinedAt: !2865)
!2885 = !DILocalVariable(name: "size", arg: 1, scope: !2886, file: !81, line: 472, type: !220)
!2886 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !81, file: !81, line: 472, type: !2887, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{!91, !220, !89, !7}
!2889 = !DILocation(line: 472, column: 28, scope: !2886, inlinedAt: !2890)
!2890 = distinct !DILocation(line: 481, column: 9, scope: !2891, inlinedAt: !2892)
!2891 = distinct !DISubprogram(name: "kmalloc_large", scope: !81, file: !81, line: 478, type: !2863, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2892 = distinct !DILocation(line: 545, column: 11, scope: !2893, inlinedAt: !2865)
!2893 = distinct !DILexicalBlock(scope: !2860, file: !81, line: 544, column: 7)
!2894 = !DILocalVariable(name: "flags", arg: 2, scope: !2886, file: !81, line: 472, type: !89)
!2895 = !DILocation(line: 472, column: 40, scope: !2886, inlinedAt: !2890)
!2896 = !DILocalVariable(name: "order", arg: 3, scope: !2886, file: !81, line: 472, type: !7)
!2897 = !DILocation(line: 472, column: 60, scope: !2886, inlinedAt: !2890)
!2898 = !DILocalVariable(name: "size", arg: 1, scope: !2891, file: !81, line: 478, type: !220)
!2899 = !DILocation(line: 478, column: 51, scope: !2891, inlinedAt: !2892)
!2900 = !DILocalVariable(name: "flags", arg: 2, scope: !2891, file: !81, line: 478, type: !89)
!2901 = !DILocation(line: 478, column: 63, scope: !2891, inlinedAt: !2892)
!2902 = !DILocalVariable(name: "order", scope: !2891, file: !81, line: 480, type: !7)
!2903 = !DILocation(line: 480, column: 15, scope: !2891, inlinedAt: !2892)
!2904 = !DILocalVariable(name: "size", arg: 1, scope: !2862, file: !81, line: 538, type: !220)
!2905 = !DILocation(line: 538, column: 45, scope: !2862, inlinedAt: !2865)
!2906 = !DILocalVariable(name: "flags", arg: 2, scope: !2862, file: !81, line: 538, type: !89)
!2907 = !DILocation(line: 538, column: 57, scope: !2862, inlinedAt: !2865)
!2908 = !DILocalVariable(name: "index", scope: !2860, file: !81, line: 542, type: !7)
!2909 = !DILocation(line: 542, column: 16, scope: !2860, inlinedAt: !2865)
!2910 = !DILocalVariable(name: "n", arg: 1, scope: !2853, file: !81, line: 584, type: !220)
!2911 = !DILocation(line: 584, column: 42, scope: !2853)
!2912 = !DILocalVariable(name: "size", arg: 2, scope: !2853, file: !81, line: 584, type: !220)
!2913 = !DILocation(line: 584, column: 52, scope: !2853)
!2914 = !DILocalVariable(name: "flags", arg: 3, scope: !2853, file: !81, line: 584, type: !89)
!2915 = !DILocation(line: 584, column: 64, scope: !2853)
!2916 = !DILocalVariable(name: "bytes", scope: !2853, file: !81, line: 586, type: !220)
!2917 = !DILocation(line: 586, column: 9, scope: !2853)
!2918 = !DILocalVariable(name: "__a", scope: !2919, file: !81, line: 588, type: !220)
!2919 = distinct !DILexicalBlock(scope: !2920, file: !81, line: 588, column: 6)
!2920 = distinct !DILexicalBlock(scope: !2853, file: !81, line: 588, column: 6)
!2921 = !DILocation(line: 588, column: 6, scope: !2919)
!2922 = !DILocalVariable(name: "__b", scope: !2919, file: !81, line: 588, type: !220)
!2923 = !DILocalVariable(name: "__d", scope: !2919, file: !81, line: 588, type: !2924)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!2925 = !DILocation(line: 588, column: 6, scope: !2920)
!2926 = !DILocation(line: 588, column: 6, scope: !2853)
!2927 = !DILocation(line: 589, column: 3, scope: !2920)
!2928 = !DILocation(line: 590, column: 27, scope: !2866)
!2929 = !DILocation(line: 590, column: 6, scope: !2866)
!2930 = !DILocation(line: 590, column: 30, scope: !2866)
!2931 = !DILocation(line: 590, column: 54, scope: !2866)
!2932 = !DILocation(line: 590, column: 33, scope: !2866)
!2933 = !DILocation(line: 590, column: 6, scope: !2853)
!2934 = !DILocation(line: 591, column: 18, scope: !2866)
!2935 = !DILocation(line: 591, column: 25, scope: !2866)
!2936 = !DILocation(line: 540, column: 27, scope: !2861, inlinedAt: !2865)
!2937 = !DILocation(line: 540, column: 6, scope: !2861, inlinedAt: !2865)
!2938 = !DILocation(line: 540, column: 6, scope: !2862, inlinedAt: !2865)
!2939 = !DILocation(line: 544, column: 7, scope: !2893, inlinedAt: !2865)
!2940 = !DILocation(line: 544, column: 12, scope: !2893, inlinedAt: !2865)
!2941 = !DILocation(line: 544, column: 7, scope: !2860, inlinedAt: !2865)
!2942 = !DILocation(line: 545, column: 25, scope: !2893, inlinedAt: !2865)
!2943 = !DILocation(line: 545, column: 31, scope: !2893, inlinedAt: !2865)
!2944 = !DILocation(line: 480, column: 33, scope: !2891, inlinedAt: !2892)
!2945 = !DILocation(line: 480, column: 23, scope: !2891, inlinedAt: !2892)
!2946 = !DILocation(line: 481, column: 29, scope: !2891, inlinedAt: !2892)
!2947 = !DILocation(line: 481, column: 35, scope: !2891, inlinedAt: !2892)
!2948 = !DILocation(line: 481, column: 42, scope: !2891, inlinedAt: !2892)
!2949 = !DILocation(line: 474, column: 23, scope: !2886, inlinedAt: !2890)
!2950 = !DILocation(line: 474, column: 29, scope: !2886, inlinedAt: !2890)
!2951 = !DILocation(line: 474, column: 36, scope: !2886, inlinedAt: !2890)
!2952 = !DILocation(line: 474, column: 9, scope: !2886, inlinedAt: !2890)
!2953 = !DILocation(line: 545, column: 4, scope: !2893, inlinedAt: !2865)
!2954 = !DILocation(line: 547, column: 25, scope: !2860, inlinedAt: !2865)
!2955 = !DILocation(line: 348, column: 7, scope: !2956, inlinedAt: !2884)
!2956 = distinct !DILexicalBlock(scope: !2880, file: !81, line: 348, column: 6)
!2957 = !DILocation(line: 348, column: 6, scope: !2880, inlinedAt: !2884)
!2958 = !DILocation(line: 349, column: 3, scope: !2956, inlinedAt: !2884)
!2959 = !DILocation(line: 351, column: 6, scope: !2960, inlinedAt: !2884)
!2960 = distinct !DILexicalBlock(scope: !2880, file: !81, line: 351, column: 6)
!2961 = !DILocation(line: 351, column: 11, scope: !2960, inlinedAt: !2884)
!2962 = !DILocation(line: 351, column: 6, scope: !2880, inlinedAt: !2884)
!2963 = !DILocation(line: 352, column: 3, scope: !2960, inlinedAt: !2884)
!2964 = !DILocation(line: 354, column: 32, scope: !2965, inlinedAt: !2884)
!2965 = distinct !DILexicalBlock(scope: !2880, file: !81, line: 354, column: 6)
!2966 = !DILocation(line: 354, column: 37, scope: !2965, inlinedAt: !2884)
!2967 = !DILocation(line: 354, column: 42, scope: !2965, inlinedAt: !2884)
!2968 = !DILocation(line: 354, column: 45, scope: !2965, inlinedAt: !2884)
!2969 = !DILocation(line: 354, column: 50, scope: !2965, inlinedAt: !2884)
!2970 = !DILocation(line: 354, column: 6, scope: !2880, inlinedAt: !2884)
!2971 = !DILocation(line: 355, column: 3, scope: !2965, inlinedAt: !2884)
!2972 = !DILocation(line: 356, column: 32, scope: !2973, inlinedAt: !2884)
!2973 = distinct !DILexicalBlock(scope: !2880, file: !81, line: 356, column: 6)
!2974 = !DILocation(line: 356, column: 37, scope: !2973, inlinedAt: !2884)
!2975 = !DILocation(line: 356, column: 43, scope: !2973, inlinedAt: !2884)
!2976 = !DILocation(line: 356, column: 46, scope: !2973, inlinedAt: !2884)
!2977 = !DILocation(line: 356, column: 51, scope: !2973, inlinedAt: !2884)
!2978 = !DILocation(line: 356, column: 6, scope: !2880, inlinedAt: !2884)
!2979 = !DILocation(line: 357, column: 3, scope: !2973, inlinedAt: !2884)
!2980 = !DILocation(line: 358, column: 6, scope: !2981, inlinedAt: !2884)
!2981 = distinct !DILexicalBlock(scope: !2880, file: !81, line: 358, column: 6)
!2982 = !DILocation(line: 358, column: 11, scope: !2981, inlinedAt: !2884)
!2983 = !DILocation(line: 358, column: 6, scope: !2880, inlinedAt: !2884)
!2984 = !DILocation(line: 358, column: 26, scope: !2981, inlinedAt: !2884)
!2985 = !DILocation(line: 359, column: 6, scope: !2986, inlinedAt: !2884)
!2986 = distinct !DILexicalBlock(scope: !2880, file: !81, line: 359, column: 6)
!2987 = !DILocation(line: 359, column: 11, scope: !2986, inlinedAt: !2884)
!2988 = !DILocation(line: 359, column: 6, scope: !2880, inlinedAt: !2884)
!2989 = !DILocation(line: 359, column: 26, scope: !2986, inlinedAt: !2884)
!2990 = !DILocation(line: 360, column: 6, scope: !2991, inlinedAt: !2884)
!2991 = distinct !DILexicalBlock(scope: !2880, file: !81, line: 360, column: 6)
!2992 = !DILocation(line: 360, column: 11, scope: !2991, inlinedAt: !2884)
!2993 = !DILocation(line: 360, column: 6, scope: !2880, inlinedAt: !2884)
!2994 = !DILocation(line: 360, column: 26, scope: !2991, inlinedAt: !2884)
!2995 = !DILocation(line: 361, column: 6, scope: !2996, inlinedAt: !2884)
!2996 = distinct !DILexicalBlock(scope: !2880, file: !81, line: 361, column: 6)
!2997 = !DILocation(line: 361, column: 11, scope: !2996, inlinedAt: !2884)
!2998 = !DILocation(line: 361, column: 6, scope: !2880, inlinedAt: !2884)
!2999 = !DILocation(line: 361, column: 26, scope: !2996, inlinedAt: !2884)
!3000 = !DILocation(line: 362, column: 6, scope: !3001, inlinedAt: !2884)
!3001 = distinct !DILexicalBlock(scope: !2880, file: !81, line: 362, column: 6)
!3002 = !DILocation(line: 362, column: 11, scope: !3001, inlinedAt: !2884)
!3003 = !DILocation(line: 362, column: 6, scope: !2880, inlinedAt: !2884)
!3004 = !DILocation(line: 362, column: 26, scope: !3001, inlinedAt: !2884)
!3005 = !DILocation(line: 363, column: 6, scope: !3006, inlinedAt: !2884)
!3006 = distinct !DILexicalBlock(scope: !2880, file: !81, line: 363, column: 6)
!3007 = !DILocation(line: 363, column: 11, scope: !3006, inlinedAt: !2884)
!3008 = !DILocation(line: 363, column: 6, scope: !2880, inlinedAt: !2884)
!3009 = !DILocation(line: 363, column: 26, scope: !3006, inlinedAt: !2884)
!3010 = !DILocation(line: 364, column: 6, scope: !3011, inlinedAt: !2884)
!3011 = distinct !DILexicalBlock(scope: !2880, file: !81, line: 364, column: 6)
!3012 = !DILocation(line: 364, column: 11, scope: !3011, inlinedAt: !2884)
!3013 = !DILocation(line: 364, column: 6, scope: !2880, inlinedAt: !2884)
!3014 = !DILocation(line: 364, column: 26, scope: !3011, inlinedAt: !2884)
!3015 = !DILocation(line: 365, column: 6, scope: !3016, inlinedAt: !2884)
!3016 = distinct !DILexicalBlock(scope: !2880, file: !81, line: 365, column: 6)
!3017 = !DILocation(line: 365, column: 11, scope: !3016, inlinedAt: !2884)
!3018 = !DILocation(line: 365, column: 6, scope: !2880, inlinedAt: !2884)
!3019 = !DILocation(line: 365, column: 26, scope: !3016, inlinedAt: !2884)
!3020 = !DILocation(line: 366, column: 6, scope: !3021, inlinedAt: !2884)
!3021 = distinct !DILexicalBlock(scope: !2880, file: !81, line: 366, column: 6)
!3022 = !DILocation(line: 366, column: 11, scope: !3021, inlinedAt: !2884)
!3023 = !DILocation(line: 366, column: 6, scope: !2880, inlinedAt: !2884)
!3024 = !DILocation(line: 366, column: 26, scope: !3021, inlinedAt: !2884)
!3025 = !DILocation(line: 367, column: 6, scope: !3026, inlinedAt: !2884)
!3026 = distinct !DILexicalBlock(scope: !2880, file: !81, line: 367, column: 6)
!3027 = !DILocation(line: 367, column: 11, scope: !3026, inlinedAt: !2884)
!3028 = !DILocation(line: 367, column: 6, scope: !2880, inlinedAt: !2884)
!3029 = !DILocation(line: 367, column: 26, scope: !3026, inlinedAt: !2884)
!3030 = !DILocation(line: 368, column: 6, scope: !3031, inlinedAt: !2884)
!3031 = distinct !DILexicalBlock(scope: !2880, file: !81, line: 368, column: 6)
!3032 = !DILocation(line: 368, column: 11, scope: !3031, inlinedAt: !2884)
!3033 = !DILocation(line: 368, column: 6, scope: !2880, inlinedAt: !2884)
!3034 = !DILocation(line: 368, column: 26, scope: !3031, inlinedAt: !2884)
!3035 = !DILocation(line: 369, column: 6, scope: !3036, inlinedAt: !2884)
!3036 = distinct !DILexicalBlock(scope: !2880, file: !81, line: 369, column: 6)
!3037 = !DILocation(line: 369, column: 11, scope: !3036, inlinedAt: !2884)
!3038 = !DILocation(line: 369, column: 6, scope: !2880, inlinedAt: !2884)
!3039 = !DILocation(line: 369, column: 26, scope: !3036, inlinedAt: !2884)
!3040 = !DILocation(line: 370, column: 6, scope: !3041, inlinedAt: !2884)
!3041 = distinct !DILexicalBlock(scope: !2880, file: !81, line: 370, column: 6)
!3042 = !DILocation(line: 370, column: 11, scope: !3041, inlinedAt: !2884)
!3043 = !DILocation(line: 370, column: 6, scope: !2880, inlinedAt: !2884)
!3044 = !DILocation(line: 370, column: 26, scope: !3041, inlinedAt: !2884)
!3045 = !DILocation(line: 371, column: 6, scope: !3046, inlinedAt: !2884)
!3046 = distinct !DILexicalBlock(scope: !2880, file: !81, line: 371, column: 6)
!3047 = !DILocation(line: 371, column: 11, scope: !3046, inlinedAt: !2884)
!3048 = !DILocation(line: 371, column: 6, scope: !2880, inlinedAt: !2884)
!3049 = !DILocation(line: 371, column: 26, scope: !3046, inlinedAt: !2884)
!3050 = !DILocation(line: 372, column: 6, scope: !3051, inlinedAt: !2884)
!3051 = distinct !DILexicalBlock(scope: !2880, file: !81, line: 372, column: 6)
!3052 = !DILocation(line: 372, column: 11, scope: !3051, inlinedAt: !2884)
!3053 = !DILocation(line: 372, column: 6, scope: !2880, inlinedAt: !2884)
!3054 = !DILocation(line: 372, column: 26, scope: !3051, inlinedAt: !2884)
!3055 = !DILocation(line: 373, column: 6, scope: !3056, inlinedAt: !2884)
!3056 = distinct !DILexicalBlock(scope: !2880, file: !81, line: 373, column: 6)
!3057 = !DILocation(line: 373, column: 11, scope: !3056, inlinedAt: !2884)
!3058 = !DILocation(line: 373, column: 6, scope: !2880, inlinedAt: !2884)
!3059 = !DILocation(line: 373, column: 26, scope: !3056, inlinedAt: !2884)
!3060 = !DILocation(line: 374, column: 6, scope: !3061, inlinedAt: !2884)
!3061 = distinct !DILexicalBlock(scope: !2880, file: !81, line: 374, column: 6)
!3062 = !DILocation(line: 374, column: 11, scope: !3061, inlinedAt: !2884)
!3063 = !DILocation(line: 374, column: 6, scope: !2880, inlinedAt: !2884)
!3064 = !DILocation(line: 374, column: 26, scope: !3061, inlinedAt: !2884)
!3065 = !DILocation(line: 375, column: 6, scope: !3066, inlinedAt: !2884)
!3066 = distinct !DILexicalBlock(scope: !2880, file: !81, line: 375, column: 6)
!3067 = !DILocation(line: 375, column: 11, scope: !3066, inlinedAt: !2884)
!3068 = !DILocation(line: 375, column: 6, scope: !2880, inlinedAt: !2884)
!3069 = !DILocation(line: 375, column: 27, scope: !3066, inlinedAt: !2884)
!3070 = !DILocation(line: 376, column: 6, scope: !3071, inlinedAt: !2884)
!3071 = distinct !DILexicalBlock(scope: !2880, file: !81, line: 376, column: 6)
!3072 = !DILocation(line: 376, column: 11, scope: !3071, inlinedAt: !2884)
!3073 = !DILocation(line: 376, column: 6, scope: !2880, inlinedAt: !2884)
!3074 = !DILocation(line: 376, column: 32, scope: !3071, inlinedAt: !2884)
!3075 = !DILocation(line: 377, column: 6, scope: !3076, inlinedAt: !2884)
!3076 = distinct !DILexicalBlock(scope: !2880, file: !81, line: 377, column: 6)
!3077 = !DILocation(line: 377, column: 11, scope: !3076, inlinedAt: !2884)
!3078 = !DILocation(line: 377, column: 6, scope: !2880, inlinedAt: !2884)
!3079 = !DILocation(line: 377, column: 32, scope: !3076, inlinedAt: !2884)
!3080 = !DILocation(line: 378, column: 6, scope: !3081, inlinedAt: !2884)
!3081 = distinct !DILexicalBlock(scope: !2880, file: !81, line: 378, column: 6)
!3082 = !DILocation(line: 378, column: 11, scope: !3081, inlinedAt: !2884)
!3083 = !DILocation(line: 378, column: 6, scope: !2880, inlinedAt: !2884)
!3084 = !DILocation(line: 378, column: 32, scope: !3081, inlinedAt: !2884)
!3085 = !DILocation(line: 379, column: 6, scope: !3086, inlinedAt: !2884)
!3086 = distinct !DILexicalBlock(scope: !2880, file: !81, line: 379, column: 6)
!3087 = !DILocation(line: 379, column: 11, scope: !3086, inlinedAt: !2884)
!3088 = !DILocation(line: 379, column: 6, scope: !2880, inlinedAt: !2884)
!3089 = !DILocation(line: 379, column: 33, scope: !3086, inlinedAt: !2884)
!3090 = !DILocation(line: 380, column: 6, scope: !3091, inlinedAt: !2884)
!3091 = distinct !DILexicalBlock(scope: !2880, file: !81, line: 380, column: 6)
!3092 = !DILocation(line: 380, column: 11, scope: !3091, inlinedAt: !2884)
!3093 = !DILocation(line: 380, column: 6, scope: !2880, inlinedAt: !2884)
!3094 = !DILocation(line: 380, column: 33, scope: !3091, inlinedAt: !2884)
!3095 = !DILocation(line: 381, column: 6, scope: !3096, inlinedAt: !2884)
!3096 = distinct !DILexicalBlock(scope: !2880, file: !81, line: 381, column: 6)
!3097 = !DILocation(line: 381, column: 11, scope: !3096, inlinedAt: !2884)
!3098 = !DILocation(line: 381, column: 6, scope: !2880, inlinedAt: !2884)
!3099 = !DILocation(line: 381, column: 33, scope: !3096, inlinedAt: !2884)
!3100 = !DILocation(line: 382, column: 2, scope: !3101, inlinedAt: !2884)
!3101 = distinct !DILexicalBlock(scope: !3102, file: !81, line: 382, column: 2)
!3102 = distinct !DILexicalBlock(scope: !2880, file: !81, line: 382, column: 2)
!3103 = !{i32 -2143714036, i32 -2143714007, i32 -2143713961, i32 -2143713903, i32 -2143713849, i32 -2143713795, i32 -2143713740, i32 -2143713709}
!3104 = !DILocation(line: 382, column: 2, scope: !3105, inlinedAt: !2884)
!3105 = distinct !DILexicalBlock(scope: !3106, file: !81, line: 382, column: 2)
!3106 = distinct !DILexicalBlock(scope: !3102, file: !81, line: 382, column: 2)
!3107 = !{i32 -2143713266, i32 -2143713259, i32 -2143713205, i32 -2143713174, i32 -2143713144}
!3108 = !DILocation(line: 382, column: 2, scope: !3106, inlinedAt: !2884)
!3109 = !DILocation(line: 386, column: 1, scope: !2880, inlinedAt: !2884)
!3110 = !DILocation(line: 547, column: 9, scope: !2860, inlinedAt: !2865)
!3111 = !DILocation(line: 549, column: 8, scope: !3112, inlinedAt: !2865)
!3112 = distinct !DILexicalBlock(scope: !2860, file: !81, line: 549, column: 7)
!3113 = !DILocation(line: 549, column: 7, scope: !2860, inlinedAt: !2865)
!3114 = !DILocation(line: 550, column: 4, scope: !3112, inlinedAt: !2865)
!3115 = !DILocation(line: 553, column: 33, scope: !2860, inlinedAt: !2865)
!3116 = !DILocation(line: 325, column: 6, scope: !3117, inlinedAt: !2878)
!3117 = distinct !DILexicalBlock(scope: !2874, file: !81, line: 325, column: 6)
!3118 = !DILocation(line: 325, column: 6, scope: !2874, inlinedAt: !2878)
!3119 = !DILocation(line: 326, column: 3, scope: !3117, inlinedAt: !2878)
!3120 = !DILocation(line: 332, column: 9, scope: !2874, inlinedAt: !2878)
!3121 = !DILocation(line: 332, column: 15, scope: !2874, inlinedAt: !2878)
!3122 = !DILocation(line: 332, column: 2, scope: !2874, inlinedAt: !2878)
!3123 = !DILocation(line: 336, column: 1, scope: !2874, inlinedAt: !2878)
!3124 = !DILocation(line: 553, column: 5, scope: !2860, inlinedAt: !2865)
!3125 = !DILocation(line: 553, column: 41, scope: !2860, inlinedAt: !2865)
!3126 = !DILocation(line: 554, column: 5, scope: !2860, inlinedAt: !2865)
!3127 = !DILocation(line: 554, column: 12, scope: !2860, inlinedAt: !2865)
!3128 = !DILocation(line: 448, column: 31, scope: !2855, inlinedAt: !2859)
!3129 = !DILocation(line: 448, column: 34, scope: !2855, inlinedAt: !2859)
!3130 = !DILocation(line: 448, column: 14, scope: !2855, inlinedAt: !2859)
!3131 = !DILocation(line: 450, column: 22, scope: !2855, inlinedAt: !2859)
!3132 = !DILocation(line: 450, column: 25, scope: !2855, inlinedAt: !2859)
!3133 = !DILocation(line: 450, column: 30, scope: !2855, inlinedAt: !2859)
!3134 = !DILocation(line: 450, column: 36, scope: !2855, inlinedAt: !2859)
!3135 = !DILocation(line: 450, column: 8, scope: !2855, inlinedAt: !2859)
!3136 = !DILocation(line: 450, column: 6, scope: !2855, inlinedAt: !2859)
!3137 = !DILocation(line: 451, column: 9, scope: !2855, inlinedAt: !2859)
!3138 = !DILocation(line: 552, column: 3, scope: !2860, inlinedAt: !2865)
!3139 = !DILocation(line: 557, column: 19, scope: !2862, inlinedAt: !2865)
!3140 = !DILocation(line: 557, column: 25, scope: !2862, inlinedAt: !2865)
!3141 = !DILocation(line: 557, column: 9, scope: !2862, inlinedAt: !2865)
!3142 = !DILocation(line: 557, column: 2, scope: !2862, inlinedAt: !2865)
!3143 = !DILocation(line: 558, column: 1, scope: !2862, inlinedAt: !2865)
!3144 = !DILocation(line: 591, column: 3, scope: !2866)
!3145 = !DILocation(line: 592, column: 19, scope: !2853)
!3146 = !DILocation(line: 592, column: 26, scope: !2853)
!3147 = !DILocation(line: 592, column: 9, scope: !2853)
!3148 = !DILocation(line: 592, column: 2, scope: !2853)
!3149 = !DILocation(line: 593, column: 1, scope: !2853)
!3150 = distinct !DISubprogram(name: "__must_check_overflow", scope: !3151, file: !3151, line: 52, type: !3152, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3151 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!3152 = !DISubroutineType(types: !3153)
!3153 = !{!1000, !1000}
!3154 = !DILocalVariable(name: "overflow", arg: 1, scope: !3150, file: !3151, line: 52, type: !1000)
!3155 = !DILocation(line: 52, column: 60, scope: !3150)
!3156 = !DILocation(line: 54, column: 9, scope: !3150)
!3157 = !DILocation(line: 54, column: 2, scope: !3150)
!3158 = distinct !DISubprogram(name: "get_order", scope: !3159, file: !3159, line: 29, type: !3160, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3159 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!3160 = !DISubroutineType(types: !3161)
!3161 = !{!88, !223}
!3162 = !DILocalVariable(name: "x", arg: 1, scope: !3163, file: !3164, line: 366, type: !294)
!3163 = distinct !DISubprogram(name: "fls64", scope: !3164, file: !3164, line: 366, type: !3165, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3164 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!3165 = !DISubroutineType(types: !3166)
!3166 = !{!88, !294}
!3167 = !DILocation(line: 366, column: 40, scope: !3163, inlinedAt: !3168)
!3168 = distinct !DILocation(line: 46, column: 9, scope: !3158)
!3169 = !DILocalVariable(name: "bitpos", scope: !3163, file: !3164, line: 368, type: !88)
!3170 = !DILocation(line: 368, column: 6, scope: !3163, inlinedAt: !3168)
!3171 = !DILocalVariable(name: "size", arg: 1, scope: !3158, file: !3159, line: 29, type: !223)
!3172 = !DILocation(line: 29, column: 63, scope: !3158)
!3173 = !DILocation(line: 31, column: 27, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3158, file: !3159, line: 31, column: 6)
!3175 = !DILocation(line: 31, column: 6, scope: !3174)
!3176 = !DILocation(line: 31, column: 6, scope: !3158)
!3177 = !DILocation(line: 32, column: 8, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3179, file: !3159, line: 32, column: 7)
!3179 = distinct !DILexicalBlock(scope: !3174, file: !3159, line: 31, column: 34)
!3180 = !DILocation(line: 32, column: 7, scope: !3179)
!3181 = !DILocation(line: 33, column: 4, scope: !3178)
!3182 = !DILocation(line: 35, column: 7, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3179, file: !3159, line: 35, column: 7)
!3184 = !DILocation(line: 35, column: 12, scope: !3183)
!3185 = !DILocation(line: 35, column: 7, scope: !3179)
!3186 = !DILocation(line: 36, column: 4, scope: !3183)
!3187 = !DILocation(line: 38, column: 10, scope: !3179)
!3188 = !DILocation(line: 38, column: 28, scope: !3179)
!3189 = !DILocation(line: 38, column: 41, scope: !3179)
!3190 = !DILocation(line: 38, column: 3, scope: !3179)
!3191 = !DILocation(line: 41, column: 6, scope: !3158)
!3192 = !DILocation(line: 42, column: 7, scope: !3158)
!3193 = !DILocation(line: 46, column: 15, scope: !3158)
!3194 = !DILocation(line: 374, column: 2, scope: !3163, inlinedAt: !3168)
!3195 = !DILocation(line: 376, column: 14, scope: !3163, inlinedAt: !3168)
!3196 = !{i32 299803}
!3197 = !DILocation(line: 377, column: 9, scope: !3163, inlinedAt: !3168)
!3198 = !DILocation(line: 377, column: 16, scope: !3163, inlinedAt: !3168)
!3199 = !DILocation(line: 46, column: 2, scope: !3158)
!3200 = !DILocation(line: 48, column: 1, scope: !3158)
!3201 = distinct !DISubprogram(name: "__ilog2_u64", scope: !3202, file: !3202, line: 30, type: !3203, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3202 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!3203 = !DISubroutineType(types: !3204)
!3204 = !{!88, !292}
!3205 = !DILocation(line: 366, column: 40, scope: !3163, inlinedAt: !3206)
!3206 = distinct !DILocation(line: 32, column: 9, scope: !3201)
!3207 = !DILocation(line: 368, column: 6, scope: !3163, inlinedAt: !3206)
!3208 = !DILocalVariable(name: "n", arg: 1, scope: !3201, file: !3202, line: 30, type: !292)
!3209 = !DILocation(line: 30, column: 21, scope: !3201)
!3210 = !DILocation(line: 32, column: 15, scope: !3201)
!3211 = !DILocation(line: 374, column: 2, scope: !3163, inlinedAt: !3206)
!3212 = !DILocation(line: 376, column: 14, scope: !3163, inlinedAt: !3206)
!3213 = !DILocation(line: 377, column: 9, scope: !3163, inlinedAt: !3206)
!3214 = !DILocation(line: 377, column: 16, scope: !3163, inlinedAt: !3206)
!3215 = !DILocation(line: 32, column: 18, scope: !3201)
!3216 = !DILocation(line: 32, column: 2, scope: !3201)
!3217 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !3218, file: !3218, line: 137, type: !3219, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3218 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!3219 = !DISubroutineType(types: !3220)
!3220 = !{!91, !1050, !1388, !220, !89}
!3221 = !DILocalVariable(name: "s", arg: 1, scope: !3217, file: !3218, line: 137, type: !1050)
!3222 = !DILocation(line: 137, column: 54, scope: !3217)
!3223 = !DILocalVariable(name: "object", arg: 2, scope: !3217, file: !3218, line: 137, type: !1388)
!3224 = !DILocation(line: 137, column: 69, scope: !3217)
!3225 = !DILocalVariable(name: "size", arg: 3, scope: !3217, file: !3218, line: 138, type: !220)
!3226 = !DILocation(line: 138, column: 12, scope: !3217)
!3227 = !DILocalVariable(name: "flags", arg: 4, scope: !3217, file: !3218, line: 138, type: !89)
!3228 = !DILocation(line: 138, column: 24, scope: !3217)
!3229 = !DILocation(line: 140, column: 17, scope: !3217)
!3230 = !DILocation(line: 140, column: 2, scope: !3217)
!3231 = distinct !DISubprogram(name: "type_show", scope: !3, file: !3, line: 27, type: !2073, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3232 = !DILocalVariable(name: "dev", arg: 1, scope: !3231, file: !3, line: 27, type: !1586)
!3233 = !DILocation(line: 27, column: 26, scope: !3231)
!3234 = !DILocalVariable(name: "attr", arg: 2, scope: !3231, file: !3, line: 27, type: !2075)
!3235 = !DILocation(line: 27, column: 56, scope: !3231)
!3236 = !DILocalVariable(name: "buf", arg: 3, scope: !3231, file: !3, line: 27, type: !173)
!3237 = !DILocation(line: 27, column: 68, scope: !3231)
!3238 = !DILocalVariable(name: "tz", scope: !3231, file: !3, line: 29, type: !103)
!3239 = !DILocation(line: 29, column: 30, scope: !3231)
!3240 = !DILocalVariable(name: "__mptr", scope: !3241, file: !3, line: 29, type: !91)
!3241 = distinct !DILexicalBlock(scope: !3231, file: !3, line: 29, column: 35)
!3242 = !DILocation(line: 29, column: 35, scope: !3241)
!3243 = !DILocation(line: 29, column: 35, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3241, file: !3, line: 29, column: 35)
!3245 = !DILocation(line: 31, column: 17, scope: !3231)
!3246 = !DILocation(line: 31, column: 30, scope: !3231)
!3247 = !DILocation(line: 31, column: 34, scope: !3231)
!3248 = !DILocation(line: 31, column: 9, scope: !3231)
!3249 = !DILocation(line: 31, column: 2, scope: !3231)
!3250 = distinct !DISubprogram(name: "temp_show", scope: !3, file: !3, line: 35, type: !2073, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3251 = !DILocalVariable(name: "dev", arg: 1, scope: !3250, file: !3, line: 35, type: !1586)
!3252 = !DILocation(line: 35, column: 26, scope: !3250)
!3253 = !DILocalVariable(name: "attr", arg: 2, scope: !3250, file: !3, line: 35, type: !2075)
!3254 = !DILocation(line: 35, column: 56, scope: !3250)
!3255 = !DILocalVariable(name: "buf", arg: 3, scope: !3250, file: !3, line: 35, type: !173)
!3256 = !DILocation(line: 35, column: 68, scope: !3250)
!3257 = !DILocalVariable(name: "tz", scope: !3250, file: !3, line: 37, type: !103)
!3258 = !DILocation(line: 37, column: 30, scope: !3250)
!3259 = !DILocalVariable(name: "__mptr", scope: !3260, file: !3, line: 37, type: !91)
!3260 = distinct !DILexicalBlock(scope: !3250, file: !3, line: 37, column: 35)
!3261 = !DILocation(line: 37, column: 35, scope: !3260)
!3262 = !DILocation(line: 37, column: 35, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3260, file: !3, line: 37, column: 35)
!3264 = !DILocalVariable(name: "temperature", scope: !3250, file: !3, line: 38, type: !88)
!3265 = !DILocation(line: 38, column: 6, scope: !3250)
!3266 = !DILocalVariable(name: "ret", scope: !3250, file: !3, line: 38, type: !88)
!3267 = !DILocation(line: 38, column: 19, scope: !3250)
!3268 = !DILocation(line: 40, column: 30, scope: !3250)
!3269 = !DILocation(line: 40, column: 8, scope: !3250)
!3270 = !DILocation(line: 40, column: 6, scope: !3250)
!3271 = !DILocation(line: 42, column: 6, scope: !3272)
!3272 = distinct !DILexicalBlock(scope: !3250, file: !3, line: 42, column: 6)
!3273 = !DILocation(line: 42, column: 6, scope: !3250)
!3274 = !DILocation(line: 43, column: 10, scope: !3272)
!3275 = !DILocation(line: 43, column: 3, scope: !3272)
!3276 = !DILocation(line: 45, column: 17, scope: !3250)
!3277 = !DILocation(line: 45, column: 30, scope: !3250)
!3278 = !DILocation(line: 45, column: 9, scope: !3250)
!3279 = !DILocation(line: 45, column: 2, scope: !3250)
!3280 = !DILocation(line: 46, column: 1, scope: !3250)
!3281 = distinct !DISubprogram(name: "policy_show", scope: !3, file: !3, line: 280, type: !2073, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3282 = !DILocalVariable(name: "dev", arg: 1, scope: !3281, file: !3, line: 280, type: !1586)
!3283 = !DILocation(line: 280, column: 28, scope: !3281)
!3284 = !DILocalVariable(name: "devattr", arg: 2, scope: !3281, file: !3, line: 280, type: !2075)
!3285 = !DILocation(line: 280, column: 58, scope: !3281)
!3286 = !DILocalVariable(name: "buf", arg: 3, scope: !3281, file: !3, line: 280, type: !173)
!3287 = !DILocation(line: 280, column: 73, scope: !3281)
!3288 = !DILocalVariable(name: "tz", scope: !3281, file: !3, line: 282, type: !103)
!3289 = !DILocation(line: 282, column: 30, scope: !3281)
!3290 = !DILocalVariable(name: "__mptr", scope: !3291, file: !3, line: 282, type: !91)
!3291 = distinct !DILexicalBlock(scope: !3281, file: !3, line: 282, column: 35)
!3292 = !DILocation(line: 282, column: 35, scope: !3291)
!3293 = !DILocation(line: 282, column: 35, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3291, file: !3, line: 282, column: 35)
!3295 = !DILocation(line: 284, column: 17, scope: !3281)
!3296 = !DILocation(line: 284, column: 30, scope: !3281)
!3297 = !DILocation(line: 284, column: 34, scope: !3281)
!3298 = !DILocation(line: 284, column: 44, scope: !3281)
!3299 = !DILocation(line: 284, column: 9, scope: !3281)
!3300 = !DILocation(line: 284, column: 2, scope: !3281)
!3301 = distinct !DISubprogram(name: "policy_store", scope: !3, file: !3, line: 263, type: !2078, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3302 = !DILocalVariable(name: "dev", arg: 1, scope: !3301, file: !3, line: 263, type: !1586)
!3303 = !DILocation(line: 263, column: 29, scope: !3301)
!3304 = !DILocalVariable(name: "attr", arg: 2, scope: !3301, file: !3, line: 263, type: !2075)
!3305 = !DILocation(line: 263, column: 59, scope: !3301)
!3306 = !DILocalVariable(name: "buf", arg: 3, scope: !3301, file: !3, line: 264, type: !116)
!3307 = !DILocation(line: 264, column: 19, scope: !3301)
!3308 = !DILocalVariable(name: "count", arg: 4, scope: !3301, file: !3, line: 264, type: !220)
!3309 = !DILocation(line: 264, column: 31, scope: !3301)
!3310 = !DILocalVariable(name: "tz", scope: !3301, file: !3, line: 266, type: !103)
!3311 = !DILocation(line: 266, column: 30, scope: !3301)
!3312 = !DILocalVariable(name: "__mptr", scope: !3313, file: !3, line: 266, type: !91)
!3313 = distinct !DILexicalBlock(scope: !3301, file: !3, line: 266, column: 35)
!3314 = !DILocation(line: 266, column: 35, scope: !3313)
!3315 = !DILocation(line: 266, column: 35, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3313, file: !3, line: 266, column: 35)
!3317 = !DILocalVariable(name: "name", scope: !3301, file: !3, line: 267, type: !98)
!3318 = !DILocation(line: 267, column: 7, scope: !3301)
!3319 = !DILocalVariable(name: "ret", scope: !3301, file: !3, line: 268, type: !88)
!3320 = !DILocation(line: 268, column: 6, scope: !3301)
!3321 = !DILocation(line: 270, column: 11, scope: !3301)
!3322 = !DILocation(line: 270, column: 37, scope: !3301)
!3323 = !DILocation(line: 270, column: 2, scope: !3301)
!3324 = !DILocation(line: 272, column: 39, scope: !3301)
!3325 = !DILocation(line: 272, column: 43, scope: !3301)
!3326 = !DILocation(line: 272, column: 8, scope: !3301)
!3327 = !DILocation(line: 272, column: 6, scope: !3301)
!3328 = !DILocation(line: 273, column: 7, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3301, file: !3, line: 273, column: 6)
!3330 = !DILocation(line: 273, column: 6, scope: !3301)
!3331 = !DILocation(line: 274, column: 9, scope: !3329)
!3332 = !DILocation(line: 274, column: 7, scope: !3329)
!3333 = !DILocation(line: 274, column: 3, scope: !3329)
!3334 = !DILocation(line: 276, column: 9, scope: !3301)
!3335 = !DILocation(line: 276, column: 2, scope: !3301)
!3336 = distinct !DISubprogram(name: "available_policies_show", scope: !3, file: !3, line: 288, type: !2073, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3337 = !DILocalVariable(name: "dev", arg: 1, scope: !3336, file: !3, line: 288, type: !1586)
!3338 = !DILocation(line: 288, column: 40, scope: !3336)
!3339 = !DILocalVariable(name: "devattr", arg: 2, scope: !3336, file: !3, line: 288, type: !2075)
!3340 = !DILocation(line: 288, column: 70, scope: !3336)
!3341 = !DILocalVariable(name: "buf", arg: 3, scope: !3336, file: !3, line: 289, type: !173)
!3342 = !DILocation(line: 289, column: 10, scope: !3336)
!3343 = !DILocation(line: 291, column: 40, scope: !3336)
!3344 = !DILocation(line: 291, column: 9, scope: !3336)
!3345 = !DILocation(line: 291, column: 2, scope: !3336)
!3346 = distinct !DISubprogram(name: "sustainable_power_show", scope: !3, file: !3, line: 323, type: !2073, scopeLine: 325, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3347 = !DILocalVariable(name: "dev", arg: 1, scope: !3346, file: !3, line: 323, type: !1586)
!3348 = !DILocation(line: 323, column: 39, scope: !3346)
!3349 = !DILocalVariable(name: "devattr", arg: 2, scope: !3346, file: !3, line: 323, type: !2075)
!3350 = !DILocation(line: 323, column: 69, scope: !3346)
!3351 = !DILocalVariable(name: "buf", arg: 3, scope: !3346, file: !3, line: 324, type: !173)
!3352 = !DILocation(line: 324, column: 16, scope: !3346)
!3353 = !DILocalVariable(name: "tz", scope: !3346, file: !3, line: 326, type: !103)
!3354 = !DILocation(line: 326, column: 30, scope: !3346)
!3355 = !DILocalVariable(name: "__mptr", scope: !3356, file: !3, line: 326, type: !91)
!3356 = distinct !DILexicalBlock(scope: !3346, file: !3, line: 326, column: 35)
!3357 = !DILocation(line: 326, column: 35, scope: !3356)
!3358 = !DILocation(line: 326, column: 35, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3356, file: !3, line: 326, column: 35)
!3360 = !DILocation(line: 328, column: 6, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !3346, file: !3, line: 328, column: 6)
!3362 = !DILocation(line: 328, column: 10, scope: !3361)
!3363 = !DILocation(line: 328, column: 6, scope: !3346)
!3364 = !DILocation(line: 329, column: 18, scope: !3361)
!3365 = !DILocation(line: 329, column: 31, scope: !3361)
!3366 = !DILocation(line: 329, column: 35, scope: !3361)
!3367 = !DILocation(line: 329, column: 40, scope: !3361)
!3368 = !DILocation(line: 329, column: 10, scope: !3361)
!3369 = !DILocation(line: 329, column: 3, scope: !3361)
!3370 = !DILocation(line: 331, column: 3, scope: !3361)
!3371 = !DILocation(line: 332, column: 1, scope: !3346)
!3372 = distinct !DISubprogram(name: "sustainable_power_store", scope: !3, file: !3, line: 335, type: !2078, scopeLine: 337, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3373 = !DILocalVariable(name: "dev", arg: 1, scope: !3372, file: !3, line: 335, type: !1586)
!3374 = !DILocation(line: 335, column: 40, scope: !3372)
!3375 = !DILocalVariable(name: "devattr", arg: 2, scope: !3372, file: !3, line: 335, type: !2075)
!3376 = !DILocation(line: 335, column: 70, scope: !3372)
!3377 = !DILocalVariable(name: "buf", arg: 3, scope: !3372, file: !3, line: 336, type: !116)
!3378 = !DILocation(line: 336, column: 16, scope: !3372)
!3379 = !DILocalVariable(name: "count", arg: 4, scope: !3372, file: !3, line: 336, type: !220)
!3380 = !DILocation(line: 336, column: 28, scope: !3372)
!3381 = !DILocalVariable(name: "tz", scope: !3372, file: !3, line: 338, type: !103)
!3382 = !DILocation(line: 338, column: 30, scope: !3372)
!3383 = !DILocalVariable(name: "__mptr", scope: !3384, file: !3, line: 338, type: !91)
!3384 = distinct !DILexicalBlock(scope: !3372, file: !3, line: 338, column: 35)
!3385 = !DILocation(line: 338, column: 35, scope: !3384)
!3386 = !DILocation(line: 338, column: 35, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !3384, file: !3, line: 338, column: 35)
!3388 = !DILocalVariable(name: "sustainable_power", scope: !3372, file: !3, line: 339, type: !430)
!3389 = !DILocation(line: 339, column: 6, scope: !3372)
!3390 = !DILocation(line: 341, column: 7, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !3372, file: !3, line: 341, column: 6)
!3392 = !DILocation(line: 341, column: 11, scope: !3391)
!3393 = !DILocation(line: 341, column: 6, scope: !3372)
!3394 = !DILocation(line: 342, column: 3, scope: !3391)
!3395 = !DILocation(line: 344, column: 16, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3372, file: !3, line: 344, column: 6)
!3397 = !DILocation(line: 344, column: 6, scope: !3396)
!3398 = !DILocation(line: 344, column: 6, scope: !3372)
!3399 = !DILocation(line: 345, column: 3, scope: !3396)
!3400 = !DILocation(line: 347, column: 31, scope: !3372)
!3401 = !DILocation(line: 347, column: 2, scope: !3372)
!3402 = !DILocation(line: 347, column: 6, scope: !3372)
!3403 = !DILocation(line: 347, column: 11, scope: !3372)
!3404 = !DILocation(line: 347, column: 29, scope: !3372)
!3405 = !DILocation(line: 349, column: 9, scope: !3372)
!3406 = !DILocation(line: 349, column: 2, scope: !3372)
!3407 = !DILocation(line: 350, column: 1, scope: !3372)
!3408 = distinct !DISubprogram(name: "kstrtou32", scope: !3409, file: !3409, line: 405, type: !3410, scopeLine: 406, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3409 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/lizy2001/genbc/linux")
!3410 = !DISubroutineType(types: !3411)
!3411 = !{!88, !116, !7, !631}
!3412 = !DILocalVariable(name: "s", arg: 1, scope: !3408, file: !3409, line: 405, type: !116)
!3413 = !DILocation(line: 405, column: 54, scope: !3408)
!3414 = !DILocalVariable(name: "base", arg: 2, scope: !3408, file: !3409, line: 405, type: !7)
!3415 = !DILocation(line: 405, column: 70, scope: !3408)
!3416 = !DILocalVariable(name: "res", arg: 3, scope: !3408, file: !3409, line: 405, type: !631)
!3417 = !DILocation(line: 405, column: 81, scope: !3408)
!3418 = !DILocation(line: 407, column: 20, scope: !3408)
!3419 = !DILocation(line: 407, column: 23, scope: !3408)
!3420 = !DILocation(line: 407, column: 29, scope: !3408)
!3421 = !DILocation(line: 407, column: 9, scope: !3408)
!3422 = !DILocation(line: 407, column: 2, scope: !3408)
!3423 = distinct !DISubprogram(name: "k_po_show", scope: !3, file: !3, line: 384, type: !2073, scopeLine: 384, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3424 = !DILocalVariable(name: "dev", arg: 1, scope: !3423, file: !3, line: 384, type: !1586)
!3425 = !DILocation(line: 384, column: 1, scope: !3423)
!3426 = !DILocalVariable(name: "devattr", arg: 2, scope: !3423, file: !3, line: 384, type: !2075)
!3427 = !DILocalVariable(name: "buf", arg: 3, scope: !3423, file: !3, line: 384, type: !173)
!3428 = !DILocalVariable(name: "tz", scope: !3423, file: !3, line: 384, type: !103)
!3429 = !DILocalVariable(name: "__mptr", scope: !3430, file: !3, line: 384, type: !91)
!3430 = distinct !DILexicalBlock(scope: !3423, file: !3, line: 384, column: 1)
!3431 = !DILocation(line: 384, column: 1, scope: !3430)
!3432 = !DILocation(line: 384, column: 1, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3430, file: !3, line: 384, column: 1)
!3434 = !DILocation(line: 384, column: 1, scope: !3435)
!3435 = distinct !DILexicalBlock(scope: !3423, file: !3, line: 384, column: 1)
!3436 = distinct !DISubprogram(name: "k_po_store", scope: !3, file: !3, line: 384, type: !2078, scopeLine: 384, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3437 = !DILocalVariable(name: "dev", arg: 1, scope: !3436, file: !3, line: 384, type: !1586)
!3438 = !DILocation(line: 384, column: 1, scope: !3436)
!3439 = !DILocalVariable(name: "devattr", arg: 2, scope: !3436, file: !3, line: 384, type: !2075)
!3440 = !DILocalVariable(name: "buf", arg: 3, scope: !3436, file: !3, line: 384, type: !116)
!3441 = !DILocalVariable(name: "count", arg: 4, scope: !3436, file: !3, line: 384, type: !220)
!3442 = !DILocalVariable(name: "tz", scope: !3436, file: !3, line: 384, type: !103)
!3443 = !DILocalVariable(name: "__mptr", scope: !3444, file: !3, line: 384, type: !91)
!3444 = distinct !DILexicalBlock(scope: !3436, file: !3, line: 384, column: 1)
!3445 = !DILocation(line: 384, column: 1, scope: !3444)
!3446 = !DILocation(line: 384, column: 1, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !3444, file: !3, line: 384, column: 1)
!3448 = !DILocalVariable(name: "value", scope: !3436, file: !3, line: 384, type: !660)
!3449 = !DILocation(line: 384, column: 1, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !3436, file: !3, line: 384, column: 1)
!3451 = !DILocation(line: 384, column: 1, scope: !3452)
!3452 = distinct !DILexicalBlock(scope: !3436, file: !3, line: 384, column: 1)
!3453 = distinct !DISubprogram(name: "kstrtos32", scope: !3409, file: !3409, line: 410, type: !3454, scopeLine: 411, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3454 = !DISubroutineType(types: !3455)
!3455 = !{!88, !116, !7, !3456}
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!3457 = !DILocalVariable(name: "s", arg: 1, scope: !3453, file: !3409, line: 410, type: !116)
!3458 = !DILocation(line: 410, column: 54, scope: !3453)
!3459 = !DILocalVariable(name: "base", arg: 2, scope: !3453, file: !3409, line: 410, type: !7)
!3460 = !DILocation(line: 410, column: 70, scope: !3453)
!3461 = !DILocalVariable(name: "res", arg: 3, scope: !3453, file: !3409, line: 410, type: !3456)
!3462 = !DILocation(line: 410, column: 81, scope: !3453)
!3463 = !DILocation(line: 412, column: 19, scope: !3453)
!3464 = !DILocation(line: 412, column: 22, scope: !3453)
!3465 = !DILocation(line: 412, column: 28, scope: !3453)
!3466 = !DILocation(line: 412, column: 9, scope: !3453)
!3467 = !DILocation(line: 412, column: 2, scope: !3453)
!3468 = distinct !DISubprogram(name: "k_pu_show", scope: !3, file: !3, line: 385, type: !2073, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3469 = !DILocalVariable(name: "dev", arg: 1, scope: !3468, file: !3, line: 385, type: !1586)
!3470 = !DILocation(line: 385, column: 1, scope: !3468)
!3471 = !DILocalVariable(name: "devattr", arg: 2, scope: !3468, file: !3, line: 385, type: !2075)
!3472 = !DILocalVariable(name: "buf", arg: 3, scope: !3468, file: !3, line: 385, type: !173)
!3473 = !DILocalVariable(name: "tz", scope: !3468, file: !3, line: 385, type: !103)
!3474 = !DILocalVariable(name: "__mptr", scope: !3475, file: !3, line: 385, type: !91)
!3475 = distinct !DILexicalBlock(scope: !3468, file: !3, line: 385, column: 1)
!3476 = !DILocation(line: 385, column: 1, scope: !3475)
!3477 = !DILocation(line: 385, column: 1, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3475, file: !3, line: 385, column: 1)
!3479 = !DILocation(line: 385, column: 1, scope: !3480)
!3480 = distinct !DILexicalBlock(scope: !3468, file: !3, line: 385, column: 1)
!3481 = distinct !DISubprogram(name: "k_pu_store", scope: !3, file: !3, line: 385, type: !2078, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3482 = !DILocalVariable(name: "dev", arg: 1, scope: !3481, file: !3, line: 385, type: !1586)
!3483 = !DILocation(line: 385, column: 1, scope: !3481)
!3484 = !DILocalVariable(name: "devattr", arg: 2, scope: !3481, file: !3, line: 385, type: !2075)
!3485 = !DILocalVariable(name: "buf", arg: 3, scope: !3481, file: !3, line: 385, type: !116)
!3486 = !DILocalVariable(name: "count", arg: 4, scope: !3481, file: !3, line: 385, type: !220)
!3487 = !DILocalVariable(name: "tz", scope: !3481, file: !3, line: 385, type: !103)
!3488 = !DILocalVariable(name: "__mptr", scope: !3489, file: !3, line: 385, type: !91)
!3489 = distinct !DILexicalBlock(scope: !3481, file: !3, line: 385, column: 1)
!3490 = !DILocation(line: 385, column: 1, scope: !3489)
!3491 = !DILocation(line: 385, column: 1, scope: !3492)
!3492 = distinct !DILexicalBlock(scope: !3489, file: !3, line: 385, column: 1)
!3493 = !DILocalVariable(name: "value", scope: !3481, file: !3, line: 385, type: !660)
!3494 = !DILocation(line: 385, column: 1, scope: !3495)
!3495 = distinct !DILexicalBlock(scope: !3481, file: !3, line: 385, column: 1)
!3496 = !DILocation(line: 385, column: 1, scope: !3497)
!3497 = distinct !DILexicalBlock(scope: !3481, file: !3, line: 385, column: 1)
!3498 = distinct !DISubprogram(name: "k_i_show", scope: !3, file: !3, line: 386, type: !2073, scopeLine: 386, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3499 = !DILocalVariable(name: "dev", arg: 1, scope: !3498, file: !3, line: 386, type: !1586)
!3500 = !DILocation(line: 386, column: 1, scope: !3498)
!3501 = !DILocalVariable(name: "devattr", arg: 2, scope: !3498, file: !3, line: 386, type: !2075)
!3502 = !DILocalVariable(name: "buf", arg: 3, scope: !3498, file: !3, line: 386, type: !173)
!3503 = !DILocalVariable(name: "tz", scope: !3498, file: !3, line: 386, type: !103)
!3504 = !DILocalVariable(name: "__mptr", scope: !3505, file: !3, line: 386, type: !91)
!3505 = distinct !DILexicalBlock(scope: !3498, file: !3, line: 386, column: 1)
!3506 = !DILocation(line: 386, column: 1, scope: !3505)
!3507 = !DILocation(line: 386, column: 1, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3505, file: !3, line: 386, column: 1)
!3509 = !DILocation(line: 386, column: 1, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3498, file: !3, line: 386, column: 1)
!3511 = distinct !DISubprogram(name: "k_i_store", scope: !3, file: !3, line: 386, type: !2078, scopeLine: 386, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3512 = !DILocalVariable(name: "dev", arg: 1, scope: !3511, file: !3, line: 386, type: !1586)
!3513 = !DILocation(line: 386, column: 1, scope: !3511)
!3514 = !DILocalVariable(name: "devattr", arg: 2, scope: !3511, file: !3, line: 386, type: !2075)
!3515 = !DILocalVariable(name: "buf", arg: 3, scope: !3511, file: !3, line: 386, type: !116)
!3516 = !DILocalVariable(name: "count", arg: 4, scope: !3511, file: !3, line: 386, type: !220)
!3517 = !DILocalVariable(name: "tz", scope: !3511, file: !3, line: 386, type: !103)
!3518 = !DILocalVariable(name: "__mptr", scope: !3519, file: !3, line: 386, type: !91)
!3519 = distinct !DILexicalBlock(scope: !3511, file: !3, line: 386, column: 1)
!3520 = !DILocation(line: 386, column: 1, scope: !3519)
!3521 = !DILocation(line: 386, column: 1, scope: !3522)
!3522 = distinct !DILexicalBlock(scope: !3519, file: !3, line: 386, column: 1)
!3523 = !DILocalVariable(name: "value", scope: !3511, file: !3, line: 386, type: !660)
!3524 = !DILocation(line: 386, column: 1, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3511, file: !3, line: 386, column: 1)
!3526 = !DILocation(line: 386, column: 1, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !3511, file: !3, line: 386, column: 1)
!3528 = distinct !DISubprogram(name: "k_d_show", scope: !3, file: !3, line: 387, type: !2073, scopeLine: 387, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3529 = !DILocalVariable(name: "dev", arg: 1, scope: !3528, file: !3, line: 387, type: !1586)
!3530 = !DILocation(line: 387, column: 1, scope: !3528)
!3531 = !DILocalVariable(name: "devattr", arg: 2, scope: !3528, file: !3, line: 387, type: !2075)
!3532 = !DILocalVariable(name: "buf", arg: 3, scope: !3528, file: !3, line: 387, type: !173)
!3533 = !DILocalVariable(name: "tz", scope: !3528, file: !3, line: 387, type: !103)
!3534 = !DILocalVariable(name: "__mptr", scope: !3535, file: !3, line: 387, type: !91)
!3535 = distinct !DILexicalBlock(scope: !3528, file: !3, line: 387, column: 1)
!3536 = !DILocation(line: 387, column: 1, scope: !3535)
!3537 = !DILocation(line: 387, column: 1, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3535, file: !3, line: 387, column: 1)
!3539 = !DILocation(line: 387, column: 1, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3528, file: !3, line: 387, column: 1)
!3541 = distinct !DISubprogram(name: "k_d_store", scope: !3, file: !3, line: 387, type: !2078, scopeLine: 387, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3542 = !DILocalVariable(name: "dev", arg: 1, scope: !3541, file: !3, line: 387, type: !1586)
!3543 = !DILocation(line: 387, column: 1, scope: !3541)
!3544 = !DILocalVariable(name: "devattr", arg: 2, scope: !3541, file: !3, line: 387, type: !2075)
!3545 = !DILocalVariable(name: "buf", arg: 3, scope: !3541, file: !3, line: 387, type: !116)
!3546 = !DILocalVariable(name: "count", arg: 4, scope: !3541, file: !3, line: 387, type: !220)
!3547 = !DILocalVariable(name: "tz", scope: !3541, file: !3, line: 387, type: !103)
!3548 = !DILocalVariable(name: "__mptr", scope: !3549, file: !3, line: 387, type: !91)
!3549 = distinct !DILexicalBlock(scope: !3541, file: !3, line: 387, column: 1)
!3550 = !DILocation(line: 387, column: 1, scope: !3549)
!3551 = !DILocation(line: 387, column: 1, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !3549, file: !3, line: 387, column: 1)
!3553 = !DILocalVariable(name: "value", scope: !3541, file: !3, line: 387, type: !660)
!3554 = !DILocation(line: 387, column: 1, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3541, file: !3, line: 387, column: 1)
!3556 = !DILocation(line: 387, column: 1, scope: !3557)
!3557 = distinct !DILexicalBlock(scope: !3541, file: !3, line: 387, column: 1)
!3558 = distinct !DISubprogram(name: "integral_cutoff_show", scope: !3, file: !3, line: 388, type: !2073, scopeLine: 388, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3559 = !DILocalVariable(name: "dev", arg: 1, scope: !3558, file: !3, line: 388, type: !1586)
!3560 = !DILocation(line: 388, column: 1, scope: !3558)
!3561 = !DILocalVariable(name: "devattr", arg: 2, scope: !3558, file: !3, line: 388, type: !2075)
!3562 = !DILocalVariable(name: "buf", arg: 3, scope: !3558, file: !3, line: 388, type: !173)
!3563 = !DILocalVariable(name: "tz", scope: !3558, file: !3, line: 388, type: !103)
!3564 = !DILocalVariable(name: "__mptr", scope: !3565, file: !3, line: 388, type: !91)
!3565 = distinct !DILexicalBlock(scope: !3558, file: !3, line: 388, column: 1)
!3566 = !DILocation(line: 388, column: 1, scope: !3565)
!3567 = !DILocation(line: 388, column: 1, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3565, file: !3, line: 388, column: 1)
!3569 = !DILocation(line: 388, column: 1, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !3558, file: !3, line: 388, column: 1)
!3571 = distinct !DISubprogram(name: "integral_cutoff_store", scope: !3, file: !3, line: 388, type: !2078, scopeLine: 388, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3572 = !DILocalVariable(name: "dev", arg: 1, scope: !3571, file: !3, line: 388, type: !1586)
!3573 = !DILocation(line: 388, column: 1, scope: !3571)
!3574 = !DILocalVariable(name: "devattr", arg: 2, scope: !3571, file: !3, line: 388, type: !2075)
!3575 = !DILocalVariable(name: "buf", arg: 3, scope: !3571, file: !3, line: 388, type: !116)
!3576 = !DILocalVariable(name: "count", arg: 4, scope: !3571, file: !3, line: 388, type: !220)
!3577 = !DILocalVariable(name: "tz", scope: !3571, file: !3, line: 388, type: !103)
!3578 = !DILocalVariable(name: "__mptr", scope: !3579, file: !3, line: 388, type: !91)
!3579 = distinct !DILexicalBlock(scope: !3571, file: !3, line: 388, column: 1)
!3580 = !DILocation(line: 388, column: 1, scope: !3579)
!3581 = !DILocation(line: 388, column: 1, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !3579, file: !3, line: 388, column: 1)
!3583 = !DILocalVariable(name: "value", scope: !3571, file: !3, line: 388, type: !660)
!3584 = !DILocation(line: 388, column: 1, scope: !3585)
!3585 = distinct !DILexicalBlock(scope: !3571, file: !3, line: 388, column: 1)
!3586 = !DILocation(line: 388, column: 1, scope: !3587)
!3587 = distinct !DILexicalBlock(scope: !3571, file: !3, line: 388, column: 1)
!3588 = distinct !DISubprogram(name: "slope_show", scope: !3, file: !3, line: 389, type: !2073, scopeLine: 389, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3589 = !DILocalVariable(name: "dev", arg: 1, scope: !3588, file: !3, line: 389, type: !1586)
!3590 = !DILocation(line: 389, column: 1, scope: !3588)
!3591 = !DILocalVariable(name: "devattr", arg: 2, scope: !3588, file: !3, line: 389, type: !2075)
!3592 = !DILocalVariable(name: "buf", arg: 3, scope: !3588, file: !3, line: 389, type: !173)
!3593 = !DILocalVariable(name: "tz", scope: !3588, file: !3, line: 389, type: !103)
!3594 = !DILocalVariable(name: "__mptr", scope: !3595, file: !3, line: 389, type: !91)
!3595 = distinct !DILexicalBlock(scope: !3588, file: !3, line: 389, column: 1)
!3596 = !DILocation(line: 389, column: 1, scope: !3595)
!3597 = !DILocation(line: 389, column: 1, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3595, file: !3, line: 389, column: 1)
!3599 = !DILocation(line: 389, column: 1, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3588, file: !3, line: 389, column: 1)
!3601 = distinct !DISubprogram(name: "slope_store", scope: !3, file: !3, line: 389, type: !2078, scopeLine: 389, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3602 = !DILocalVariable(name: "dev", arg: 1, scope: !3601, file: !3, line: 389, type: !1586)
!3603 = !DILocation(line: 389, column: 1, scope: !3601)
!3604 = !DILocalVariable(name: "devattr", arg: 2, scope: !3601, file: !3, line: 389, type: !2075)
!3605 = !DILocalVariable(name: "buf", arg: 3, scope: !3601, file: !3, line: 389, type: !116)
!3606 = !DILocalVariable(name: "count", arg: 4, scope: !3601, file: !3, line: 389, type: !220)
!3607 = !DILocalVariable(name: "tz", scope: !3601, file: !3, line: 389, type: !103)
!3608 = !DILocalVariable(name: "__mptr", scope: !3609, file: !3, line: 389, type: !91)
!3609 = distinct !DILexicalBlock(scope: !3601, file: !3, line: 389, column: 1)
!3610 = !DILocation(line: 389, column: 1, scope: !3609)
!3611 = !DILocation(line: 389, column: 1, scope: !3612)
!3612 = distinct !DILexicalBlock(scope: !3609, file: !3, line: 389, column: 1)
!3613 = !DILocalVariable(name: "value", scope: !3601, file: !3, line: 389, type: !660)
!3614 = !DILocation(line: 389, column: 1, scope: !3615)
!3615 = distinct !DILexicalBlock(scope: !3601, file: !3, line: 389, column: 1)
!3616 = !DILocation(line: 389, column: 1, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !3601, file: !3, line: 389, column: 1)
!3618 = distinct !DISubprogram(name: "offset_show", scope: !3, file: !3, line: 390, type: !2073, scopeLine: 390, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3619 = !DILocalVariable(name: "dev", arg: 1, scope: !3618, file: !3, line: 390, type: !1586)
!3620 = !DILocation(line: 390, column: 1, scope: !3618)
!3621 = !DILocalVariable(name: "devattr", arg: 2, scope: !3618, file: !3, line: 390, type: !2075)
!3622 = !DILocalVariable(name: "buf", arg: 3, scope: !3618, file: !3, line: 390, type: !173)
!3623 = !DILocalVariable(name: "tz", scope: !3618, file: !3, line: 390, type: !103)
!3624 = !DILocalVariable(name: "__mptr", scope: !3625, file: !3, line: 390, type: !91)
!3625 = distinct !DILexicalBlock(scope: !3618, file: !3, line: 390, column: 1)
!3626 = !DILocation(line: 390, column: 1, scope: !3625)
!3627 = !DILocation(line: 390, column: 1, scope: !3628)
!3628 = distinct !DILexicalBlock(scope: !3625, file: !3, line: 390, column: 1)
!3629 = !DILocation(line: 390, column: 1, scope: !3630)
!3630 = distinct !DILexicalBlock(scope: !3618, file: !3, line: 390, column: 1)
!3631 = distinct !DISubprogram(name: "offset_store", scope: !3, file: !3, line: 390, type: !2078, scopeLine: 390, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3632 = !DILocalVariable(name: "dev", arg: 1, scope: !3631, file: !3, line: 390, type: !1586)
!3633 = !DILocation(line: 390, column: 1, scope: !3631)
!3634 = !DILocalVariable(name: "devattr", arg: 2, scope: !3631, file: !3, line: 390, type: !2075)
!3635 = !DILocalVariable(name: "buf", arg: 3, scope: !3631, file: !3, line: 390, type: !116)
!3636 = !DILocalVariable(name: "count", arg: 4, scope: !3631, file: !3, line: 390, type: !220)
!3637 = !DILocalVariable(name: "tz", scope: !3631, file: !3, line: 390, type: !103)
!3638 = !DILocalVariable(name: "__mptr", scope: !3639, file: !3, line: 390, type: !91)
!3639 = distinct !DILexicalBlock(scope: !3631, file: !3, line: 390, column: 1)
!3640 = !DILocation(line: 390, column: 1, scope: !3639)
!3641 = !DILocation(line: 390, column: 1, scope: !3642)
!3642 = distinct !DILexicalBlock(scope: !3639, file: !3, line: 390, column: 1)
!3643 = !DILocalVariable(name: "value", scope: !3631, file: !3, line: 390, type: !660)
!3644 = !DILocation(line: 390, column: 1, scope: !3645)
!3645 = distinct !DILexicalBlock(scope: !3631, file: !3, line: 390, column: 1)
!3646 = !DILocation(line: 390, column: 1, scope: !3647)
!3647 = distinct !DILexicalBlock(scope: !3631, file: !3, line: 390, column: 1)
!3648 = distinct !DISubprogram(name: "mode_show", scope: !3, file: !3, line: 49, type: !2073, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3649 = !DILocalVariable(name: "dev", arg: 1, scope: !3648, file: !3, line: 49, type: !1586)
!3650 = !DILocation(line: 49, column: 26, scope: !3648)
!3651 = !DILocalVariable(name: "attr", arg: 2, scope: !3648, file: !3, line: 49, type: !2075)
!3652 = !DILocation(line: 49, column: 56, scope: !3648)
!3653 = !DILocalVariable(name: "buf", arg: 3, scope: !3648, file: !3, line: 49, type: !173)
!3654 = !DILocation(line: 49, column: 68, scope: !3648)
!3655 = !DILocalVariable(name: "tz", scope: !3648, file: !3, line: 51, type: !103)
!3656 = !DILocation(line: 51, column: 30, scope: !3648)
!3657 = !DILocalVariable(name: "__mptr", scope: !3658, file: !3, line: 51, type: !91)
!3658 = distinct !DILexicalBlock(scope: !3648, file: !3, line: 51, column: 35)
!3659 = !DILocation(line: 51, column: 35, scope: !3658)
!3660 = !DILocation(line: 51, column: 35, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3658, file: !3, line: 51, column: 35)
!3662 = !DILocalVariable(name: "enabled", scope: !3648, file: !3, line: 52, type: !88)
!3663 = !DILocation(line: 52, column: 6, scope: !3648)
!3664 = !DILocation(line: 52, column: 47, scope: !3648)
!3665 = !DILocation(line: 52, column: 16, scope: !3648)
!3666 = !DILocation(line: 54, column: 17, scope: !3648)
!3667 = !DILocation(line: 54, column: 30, scope: !3648)
!3668 = !DILocation(line: 54, column: 9, scope: !3648)
!3669 = !DILocation(line: 54, column: 2, scope: !3648)
!3670 = distinct !DISubprogram(name: "mode_store", scope: !3, file: !3, line: 58, type: !2078, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3671 = !DILocalVariable(name: "dev", arg: 1, scope: !3670, file: !3, line: 58, type: !1586)
!3672 = !DILocation(line: 58, column: 27, scope: !3670)
!3673 = !DILocalVariable(name: "attr", arg: 2, scope: !3670, file: !3, line: 58, type: !2075)
!3674 = !DILocation(line: 58, column: 57, scope: !3670)
!3675 = !DILocalVariable(name: "buf", arg: 3, scope: !3670, file: !3, line: 59, type: !116)
!3676 = !DILocation(line: 59, column: 17, scope: !3670)
!3677 = !DILocalVariable(name: "count", arg: 4, scope: !3670, file: !3, line: 59, type: !220)
!3678 = !DILocation(line: 59, column: 29, scope: !3670)
!3679 = !DILocalVariable(name: "tz", scope: !3670, file: !3, line: 61, type: !103)
!3680 = !DILocation(line: 61, column: 30, scope: !3670)
!3681 = !DILocalVariable(name: "__mptr", scope: !3682, file: !3, line: 61, type: !91)
!3682 = distinct !DILexicalBlock(scope: !3670, file: !3, line: 61, column: 35)
!3683 = !DILocation(line: 61, column: 35, scope: !3682)
!3684 = !DILocation(line: 61, column: 35, scope: !3685)
!3685 = distinct !DILexicalBlock(scope: !3682, file: !3, line: 61, column: 35)
!3686 = !DILocalVariable(name: "result", scope: !3670, file: !3, line: 62, type: !88)
!3687 = !DILocation(line: 62, column: 6, scope: !3670)
!3688 = !DILocation(line: 64, column: 15, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !3670, file: !3, line: 64, column: 6)
!3690 = !DILocation(line: 64, column: 7, scope: !3689)
!3691 = !DILocation(line: 64, column: 6, scope: !3670)
!3692 = !DILocation(line: 65, column: 39, scope: !3689)
!3693 = !DILocation(line: 65, column: 12, scope: !3689)
!3694 = !DILocation(line: 65, column: 10, scope: !3689)
!3695 = !DILocation(line: 65, column: 3, scope: !3689)
!3696 = !DILocation(line: 66, column: 20, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3689, file: !3, line: 66, column: 11)
!3698 = !DILocation(line: 66, column: 12, scope: !3697)
!3699 = !DILocation(line: 66, column: 11, scope: !3689)
!3700 = !DILocation(line: 67, column: 40, scope: !3697)
!3701 = !DILocation(line: 67, column: 12, scope: !3697)
!3702 = !DILocation(line: 67, column: 10, scope: !3697)
!3703 = !DILocation(line: 67, column: 3, scope: !3697)
!3704 = !DILocation(line: 69, column: 10, scope: !3697)
!3705 = !DILocation(line: 71, column: 6, scope: !3706)
!3706 = distinct !DILexicalBlock(scope: !3670, file: !3, line: 71, column: 6)
!3707 = !DILocation(line: 71, column: 6, scope: !3670)
!3708 = !DILocation(line: 72, column: 10, scope: !3706)
!3709 = !DILocation(line: 72, column: 3, scope: !3706)
!3710 = !DILocation(line: 74, column: 9, scope: !3670)
!3711 = !DILocation(line: 74, column: 2, scope: !3670)
!3712 = !DILocation(line: 75, column: 1, scope: !3670)
!3713 = distinct !DISubprogram(name: "thermal_zone_passive_is_visible", scope: !3, file: !3, line: 447, type: !235, scopeLine: 450, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3714 = !DILocalVariable(name: "kobj", arg: 1, scope: !3713, file: !3, line: 447, type: !125)
!3715 = !DILocation(line: 447, column: 64, scope: !3713)
!3716 = !DILocalVariable(name: "attr", arg: 2, scope: !3713, file: !3, line: 448, type: !209)
!3717 = !DILocation(line: 448, column: 31, scope: !3713)
!3718 = !DILocalVariable(name: "attrno", arg: 3, scope: !3713, file: !3, line: 449, type: !88)
!3719 = !DILocation(line: 449, column: 17, scope: !3713)
!3720 = !DILocalVariable(name: "dev", scope: !3713, file: !3, line: 451, type: !1586)
!3721 = !DILocation(line: 451, column: 17, scope: !3713)
!3722 = !DILocation(line: 451, column: 35, scope: !3713)
!3723 = !DILocation(line: 451, column: 23, scope: !3713)
!3724 = !DILocalVariable(name: "tz", scope: !3713, file: !3, line: 452, type: !103)
!3725 = !DILocation(line: 452, column: 30, scope: !3713)
!3726 = !DILocalVariable(name: "trip_type", scope: !3713, file: !3, line: 453, type: !55)
!3727 = !DILocation(line: 453, column: 25, scope: !3713)
!3728 = !DILocalVariable(name: "count", scope: !3713, file: !3, line: 454, type: !88)
!3729 = !DILocation(line: 454, column: 6, scope: !3713)
!3730 = !DILocalVariable(name: "passive", scope: !3713, file: !3, line: 454, type: !88)
!3731 = !DILocation(line: 454, column: 13, scope: !3713)
!3732 = !DILocalVariable(name: "__mptr", scope: !3733, file: !3, line: 456, type: !91)
!3733 = distinct !DILexicalBlock(scope: !3713, file: !3, line: 456, column: 7)
!3734 = !DILocation(line: 456, column: 7, scope: !3733)
!3735 = !DILocation(line: 456, column: 7, scope: !3736)
!3736 = distinct !DILexicalBlock(scope: !3733, file: !3, line: 456, column: 7)
!3737 = !DILocation(line: 456, column: 5, scope: !3713)
!3738 = !DILocation(line: 458, column: 13, scope: !3739)
!3739 = distinct !DILexicalBlock(scope: !3713, file: !3, line: 458, column: 2)
!3740 = !DILocation(line: 458, column: 7, scope: !3739)
!3741 = !DILocation(line: 458, column: 18, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !3739, file: !3, line: 458, column: 2)
!3743 = !DILocation(line: 458, column: 26, scope: !3742)
!3744 = !DILocation(line: 458, column: 30, scope: !3742)
!3745 = !DILocation(line: 458, column: 24, scope: !3742)
!3746 = !DILocation(line: 458, column: 36, scope: !3742)
!3747 = !DILocation(line: 458, column: 40, scope: !3742)
!3748 = !DILocation(line: 458, column: 39, scope: !3742)
!3749 = !DILocation(line: 0, scope: !3742)
!3750 = !DILocation(line: 458, column: 2, scope: !3739)
!3751 = !DILocation(line: 459, column: 3, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3742, file: !3, line: 458, column: 58)
!3753 = !DILocation(line: 459, column: 7, scope: !3752)
!3754 = !DILocation(line: 459, column: 12, scope: !3752)
!3755 = !DILocation(line: 459, column: 26, scope: !3752)
!3756 = !DILocation(line: 459, column: 30, scope: !3752)
!3757 = !DILocation(line: 461, column: 7, scope: !3758)
!3758 = distinct !DILexicalBlock(scope: !3752, file: !3, line: 461, column: 7)
!3759 = !DILocation(line: 461, column: 17, scope: !3758)
!3760 = !DILocation(line: 461, column: 7, scope: !3752)
!3761 = !DILocation(line: 462, column: 12, scope: !3758)
!3762 = !DILocation(line: 462, column: 4, scope: !3758)
!3763 = !DILocation(line: 463, column: 2, scope: !3752)
!3764 = !DILocation(line: 458, column: 54, scope: !3742)
!3765 = !DILocation(line: 458, column: 2, scope: !3742)
!3766 = distinct !{!3766, !3750, !3767}
!3767 = !DILocation(line: 463, column: 2, scope: !3739)
!3768 = !DILocation(line: 465, column: 7, scope: !3769)
!3769 = distinct !DILexicalBlock(scope: !3713, file: !3, line: 465, column: 6)
!3770 = !DILocation(line: 465, column: 6, scope: !3713)
!3771 = !DILocation(line: 466, column: 10, scope: !3769)
!3772 = !DILocation(line: 466, column: 16, scope: !3769)
!3773 = !DILocation(line: 466, column: 3, scope: !3769)
!3774 = !DILocation(line: 468, column: 2, scope: !3713)
!3775 = !DILocation(line: 469, column: 1, scope: !3713)
!3776 = distinct !DISubprogram(name: "kobj_to_dev", scope: !30, file: !30, line: 591, type: !3777, scopeLine: 592, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3777 = !DISubroutineType(types: !3778)
!3778 = !{!1586, !125}
!3779 = !DILocalVariable(name: "kobj", arg: 1, scope: !3776, file: !30, line: 591, type: !125)
!3780 = !DILocation(line: 591, column: 58, scope: !3776)
!3781 = !DILocalVariable(name: "__mptr", scope: !3782, file: !30, line: 593, type: !91)
!3782 = distinct !DILexicalBlock(scope: !3776, file: !30, line: 593, column: 9)
!3783 = !DILocation(line: 593, column: 9, scope: !3782)
!3784 = !DILocation(line: 593, column: 9, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3782, file: !30, line: 593, column: 9)
!3786 = !DILocation(line: 593, column: 2, scope: !3776)
!3787 = distinct !DISubprogram(name: "passive_show", scope: !3, file: !3, line: 254, type: !2073, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3788 = !DILocalVariable(name: "dev", arg: 1, scope: !3787, file: !3, line: 254, type: !1586)
!3789 = !DILocation(line: 254, column: 29, scope: !3787)
!3790 = !DILocalVariable(name: "attr", arg: 2, scope: !3787, file: !3, line: 254, type: !2075)
!3791 = !DILocation(line: 254, column: 59, scope: !3787)
!3792 = !DILocalVariable(name: "buf", arg: 3, scope: !3787, file: !3, line: 255, type: !173)
!3793 = !DILocation(line: 255, column: 13, scope: !3787)
!3794 = !DILocalVariable(name: "tz", scope: !3787, file: !3, line: 257, type: !103)
!3795 = !DILocation(line: 257, column: 30, scope: !3787)
!3796 = !DILocalVariable(name: "__mptr", scope: !3797, file: !3, line: 257, type: !91)
!3797 = distinct !DILexicalBlock(scope: !3787, file: !3, line: 257, column: 35)
!3798 = !DILocation(line: 257, column: 35, scope: !3797)
!3799 = !DILocation(line: 257, column: 35, scope: !3800)
!3800 = distinct !DILexicalBlock(scope: !3797, file: !3, line: 257, column: 35)
!3801 = !DILocation(line: 259, column: 17, scope: !3787)
!3802 = !DILocation(line: 259, column: 30, scope: !3787)
!3803 = !DILocation(line: 259, column: 34, scope: !3787)
!3804 = !DILocation(line: 259, column: 9, scope: !3787)
!3805 = !DILocation(line: 259, column: 2, scope: !3787)
!3806 = distinct !DISubprogram(name: "passive_store", scope: !3, file: !3, line: 220, type: !2078, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3807 = !DILocalVariable(name: "dev", arg: 1, scope: !3806, file: !3, line: 220, type: !1586)
!3808 = !DILocation(line: 220, column: 30, scope: !3806)
!3809 = !DILocalVariable(name: "attr", arg: 2, scope: !3806, file: !3, line: 220, type: !2075)
!3810 = !DILocation(line: 220, column: 60, scope: !3806)
!3811 = !DILocalVariable(name: "buf", arg: 3, scope: !3806, file: !3, line: 221, type: !116)
!3812 = !DILocation(line: 221, column: 20, scope: !3806)
!3813 = !DILocalVariable(name: "count", arg: 4, scope: !3806, file: !3, line: 221, type: !220)
!3814 = !DILocation(line: 221, column: 32, scope: !3806)
!3815 = !DILocalVariable(name: "tz", scope: !3806, file: !3, line: 223, type: !103)
!3816 = !DILocation(line: 223, column: 30, scope: !3806)
!3817 = !DILocalVariable(name: "__mptr", scope: !3818, file: !3, line: 223, type: !91)
!3818 = distinct !DILexicalBlock(scope: !3806, file: !3, line: 223, column: 35)
!3819 = !DILocation(line: 223, column: 35, scope: !3818)
!3820 = !DILocation(line: 223, column: 35, scope: !3821)
!3821 = distinct !DILexicalBlock(scope: !3818, file: !3, line: 223, column: 35)
!3822 = !DILocalVariable(name: "state", scope: !3806, file: !3, line: 224, type: !88)
!3823 = !DILocation(line: 224, column: 6, scope: !3806)
!3824 = !DILocation(line: 226, column: 13, scope: !3825)
!3825 = distinct !DILexicalBlock(scope: !3806, file: !3, line: 226, column: 6)
!3826 = !DILocation(line: 226, column: 6, scope: !3825)
!3827 = !DILocation(line: 226, column: 34, scope: !3825)
!3828 = !DILocation(line: 226, column: 6, scope: !3806)
!3829 = !DILocation(line: 227, column: 3, scope: !3825)
!3830 = !DILocation(line: 232, column: 6, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !3806, file: !3, line: 232, column: 6)
!3832 = !DILocation(line: 232, column: 12, scope: !3831)
!3833 = !DILocation(line: 232, column: 15, scope: !3831)
!3834 = !DILocation(line: 232, column: 21, scope: !3831)
!3835 = !DILocation(line: 232, column: 6, scope: !3806)
!3836 = !DILocation(line: 233, column: 3, scope: !3831)
!3837 = !DILocation(line: 235, column: 6, scope: !3838)
!3838 = distinct !DILexicalBlock(scope: !3806, file: !3, line: 235, column: 6)
!3839 = !DILocation(line: 235, column: 12, scope: !3838)
!3840 = !DILocation(line: 235, column: 16, scope: !3838)
!3841 = !DILocation(line: 235, column: 20, scope: !3838)
!3842 = !DILocation(line: 235, column: 6, scope: !3806)
!3843 = !DILocation(line: 236, column: 8, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3845, file: !3, line: 236, column: 7)
!3845 = distinct !DILexicalBlock(scope: !3838, file: !3, line: 235, column: 36)
!3846 = !DILocation(line: 236, column: 12, scope: !3844)
!3847 = !DILocation(line: 236, column: 7, scope: !3845)
!3848 = !DILocation(line: 237, column: 4, scope: !3844)
!3849 = !DILocation(line: 237, column: 8, scope: !3844)
!3850 = !DILocation(line: 237, column: 22, scope: !3844)
!3851 = !DILocation(line: 238, column: 40, scope: !3845)
!3852 = !DILocation(line: 238, column: 3, scope: !3845)
!3853 = !DILocation(line: 240, column: 2, scope: !3845)
!3854 = !DILocation(line: 240, column: 14, scope: !3855)
!3855 = distinct !DILexicalBlock(scope: !3838, file: !3, line: 240, column: 13)
!3856 = !DILocation(line: 240, column: 20, scope: !3855)
!3857 = !DILocation(line: 240, column: 23, scope: !3855)
!3858 = !DILocation(line: 240, column: 27, scope: !3855)
!3859 = !DILocation(line: 240, column: 13, scope: !3838)
!3860 = !DILocation(line: 241, column: 3, scope: !3861)
!3861 = distinct !DILexicalBlock(scope: !3855, file: !3, line: 240, column: 43)
!3862 = !DILocation(line: 241, column: 7, scope: !3861)
!3863 = !DILocation(line: 241, column: 21, scope: !3861)
!3864 = !DILocation(line: 242, column: 40, scope: !3861)
!3865 = !DILocation(line: 242, column: 3, scope: !3861)
!3866 = !DILocation(line: 244, column: 2, scope: !3861)
!3867 = !DILocation(line: 246, column: 23, scope: !3806)
!3868 = !DILocation(line: 246, column: 2, scope: !3806)
!3869 = !DILocation(line: 246, column: 6, scope: !3806)
!3870 = !DILocation(line: 246, column: 21, scope: !3806)
!3871 = !DILocation(line: 248, column: 29, scope: !3806)
!3872 = !DILocation(line: 248, column: 2, scope: !3806)
!3873 = !DILocation(line: 250, column: 9, scope: !3806)
!3874 = !DILocation(line: 250, column: 2, scope: !3806)
!3875 = !DILocation(line: 251, column: 1, scope: !3806)
!3876 = distinct !DISubprogram(name: "trip_point_type_show", scope: !3, file: !3, line: 78, type: !2073, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3877 = !DILocalVariable(name: "dev", arg: 1, scope: !3876, file: !3, line: 78, type: !1586)
!3878 = !DILocation(line: 78, column: 37, scope: !3876)
!3879 = !DILocalVariable(name: "attr", arg: 2, scope: !3876, file: !3, line: 78, type: !2075)
!3880 = !DILocation(line: 78, column: 67, scope: !3876)
!3881 = !DILocalVariable(name: "buf", arg: 3, scope: !3876, file: !3, line: 79, type: !173)
!3882 = !DILocation(line: 79, column: 14, scope: !3876)
!3883 = !DILocalVariable(name: "tz", scope: !3876, file: !3, line: 81, type: !103)
!3884 = !DILocation(line: 81, column: 30, scope: !3876)
!3885 = !DILocalVariable(name: "__mptr", scope: !3886, file: !3, line: 81, type: !91)
!3886 = distinct !DILexicalBlock(scope: !3876, file: !3, line: 81, column: 35)
!3887 = !DILocation(line: 81, column: 35, scope: !3886)
!3888 = !DILocation(line: 81, column: 35, scope: !3889)
!3889 = distinct !DILexicalBlock(scope: !3886, file: !3, line: 81, column: 35)
!3890 = !DILocalVariable(name: "type", scope: !3876, file: !3, line: 82, type: !55)
!3891 = !DILocation(line: 82, column: 25, scope: !3876)
!3892 = !DILocalVariable(name: "trip", scope: !3876, file: !3, line: 83, type: !88)
!3893 = !DILocation(line: 83, column: 6, scope: !3876)
!3894 = !DILocalVariable(name: "result", scope: !3876, file: !3, line: 83, type: !88)
!3895 = !DILocation(line: 83, column: 12, scope: !3876)
!3896 = !DILocation(line: 85, column: 7, scope: !3897)
!3897 = distinct !DILexicalBlock(scope: !3876, file: !3, line: 85, column: 6)
!3898 = !DILocation(line: 85, column: 11, scope: !3897)
!3899 = !DILocation(line: 85, column: 16, scope: !3897)
!3900 = !DILocation(line: 85, column: 6, scope: !3876)
!3901 = !DILocation(line: 86, column: 3, scope: !3897)
!3902 = !DILocation(line: 88, column: 13, scope: !3903)
!3903 = distinct !DILexicalBlock(scope: !3876, file: !3, line: 88, column: 6)
!3904 = !DILocation(line: 88, column: 19, scope: !3903)
!3905 = !DILocation(line: 88, column: 24, scope: !3903)
!3906 = !DILocation(line: 88, column: 6, scope: !3903)
!3907 = !DILocation(line: 88, column: 59, scope: !3903)
!3908 = !DILocation(line: 88, column: 6, scope: !3876)
!3909 = !DILocation(line: 89, column: 3, scope: !3903)
!3910 = !DILocation(line: 91, column: 11, scope: !3876)
!3911 = !DILocation(line: 91, column: 15, scope: !3876)
!3912 = !DILocation(line: 91, column: 20, scope: !3876)
!3913 = !DILocation(line: 91, column: 34, scope: !3876)
!3914 = !DILocation(line: 91, column: 38, scope: !3876)
!3915 = !DILocation(line: 91, column: 9, scope: !3876)
!3916 = !DILocation(line: 92, column: 6, scope: !3917)
!3917 = distinct !DILexicalBlock(scope: !3876, file: !3, line: 92, column: 6)
!3918 = !DILocation(line: 92, column: 6, scope: !3876)
!3919 = !DILocation(line: 93, column: 10, scope: !3917)
!3920 = !DILocation(line: 93, column: 3, scope: !3917)
!3921 = !DILocation(line: 95, column: 10, scope: !3876)
!3922 = !DILocation(line: 95, column: 2, scope: !3876)
!3923 = !DILocation(line: 97, column: 18, scope: !3924)
!3924 = distinct !DILexicalBlock(scope: !3876, file: !3, line: 95, column: 16)
!3925 = !DILocation(line: 97, column: 10, scope: !3924)
!3926 = !DILocation(line: 97, column: 3, scope: !3924)
!3927 = !DILocation(line: 99, column: 18, scope: !3924)
!3928 = !DILocation(line: 99, column: 10, scope: !3924)
!3929 = !DILocation(line: 99, column: 3, scope: !3924)
!3930 = !DILocation(line: 101, column: 18, scope: !3924)
!3931 = !DILocation(line: 101, column: 10, scope: !3924)
!3932 = !DILocation(line: 101, column: 3, scope: !3924)
!3933 = !DILocation(line: 103, column: 18, scope: !3924)
!3934 = !DILocation(line: 103, column: 10, scope: !3924)
!3935 = !DILocation(line: 103, column: 3, scope: !3924)
!3936 = !DILocation(line: 105, column: 18, scope: !3924)
!3937 = !DILocation(line: 105, column: 10, scope: !3924)
!3938 = !DILocation(line: 105, column: 3, scope: !3924)
!3939 = !DILocation(line: 107, column: 1, scope: !3876)
!3940 = distinct !DISubprogram(name: "trip_point_temp_show", scope: !3, file: !3, line: 149, type: !2073, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3941 = !DILocalVariable(name: "dev", arg: 1, scope: !3940, file: !3, line: 149, type: !1586)
!3942 = !DILocation(line: 149, column: 37, scope: !3940)
!3943 = !DILocalVariable(name: "attr", arg: 2, scope: !3940, file: !3, line: 149, type: !2075)
!3944 = !DILocation(line: 149, column: 67, scope: !3940)
!3945 = !DILocalVariable(name: "buf", arg: 3, scope: !3940, file: !3, line: 150, type: !173)
!3946 = !DILocation(line: 150, column: 14, scope: !3940)
!3947 = !DILocalVariable(name: "tz", scope: !3940, file: !3, line: 152, type: !103)
!3948 = !DILocation(line: 152, column: 30, scope: !3940)
!3949 = !DILocalVariable(name: "__mptr", scope: !3950, file: !3, line: 152, type: !91)
!3950 = distinct !DILexicalBlock(scope: !3940, file: !3, line: 152, column: 35)
!3951 = !DILocation(line: 152, column: 35, scope: !3950)
!3952 = !DILocation(line: 152, column: 35, scope: !3953)
!3953 = distinct !DILexicalBlock(scope: !3950, file: !3, line: 152, column: 35)
!3954 = !DILocalVariable(name: "trip", scope: !3940, file: !3, line: 153, type: !88)
!3955 = !DILocation(line: 153, column: 6, scope: !3940)
!3956 = !DILocalVariable(name: "ret", scope: !3940, file: !3, line: 153, type: !88)
!3957 = !DILocation(line: 153, column: 12, scope: !3940)
!3958 = !DILocalVariable(name: "temperature", scope: !3940, file: !3, line: 154, type: !88)
!3959 = !DILocation(line: 154, column: 6, scope: !3940)
!3960 = !DILocation(line: 156, column: 7, scope: !3961)
!3961 = distinct !DILexicalBlock(scope: !3940, file: !3, line: 156, column: 6)
!3962 = !DILocation(line: 156, column: 11, scope: !3961)
!3963 = !DILocation(line: 156, column: 16, scope: !3961)
!3964 = !DILocation(line: 156, column: 6, scope: !3940)
!3965 = !DILocation(line: 157, column: 3, scope: !3961)
!3966 = !DILocation(line: 159, column: 13, scope: !3967)
!3967 = distinct !DILexicalBlock(scope: !3940, file: !3, line: 159, column: 6)
!3968 = !DILocation(line: 159, column: 19, scope: !3967)
!3969 = !DILocation(line: 159, column: 24, scope: !3967)
!3970 = !DILocation(line: 159, column: 6, scope: !3967)
!3971 = !DILocation(line: 159, column: 59, scope: !3967)
!3972 = !DILocation(line: 159, column: 6, scope: !3940)
!3973 = !DILocation(line: 160, column: 3, scope: !3967)
!3974 = !DILocation(line: 162, column: 8, scope: !3940)
!3975 = !DILocation(line: 162, column: 12, scope: !3940)
!3976 = !DILocation(line: 162, column: 17, scope: !3940)
!3977 = !DILocation(line: 162, column: 31, scope: !3940)
!3978 = !DILocation(line: 162, column: 35, scope: !3940)
!3979 = !DILocation(line: 162, column: 6, scope: !3940)
!3980 = !DILocation(line: 164, column: 6, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3940, file: !3, line: 164, column: 6)
!3982 = !DILocation(line: 164, column: 6, scope: !3940)
!3983 = !DILocation(line: 165, column: 10, scope: !3981)
!3984 = !DILocation(line: 165, column: 3, scope: !3981)
!3985 = !DILocation(line: 167, column: 17, scope: !3940)
!3986 = !DILocation(line: 167, column: 30, scope: !3940)
!3987 = !DILocation(line: 167, column: 9, scope: !3940)
!3988 = !DILocation(line: 167, column: 2, scope: !3940)
!3989 = !DILocation(line: 168, column: 1, scope: !3940)
!3990 = distinct !DISubprogram(name: "trip_point_temp_store", scope: !3, file: !3, line: 110, type: !2078, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3991 = !DILocalVariable(name: "dev", arg: 1, scope: !3990, file: !3, line: 110, type: !1586)
!3992 = !DILocation(line: 110, column: 38, scope: !3990)
!3993 = !DILocalVariable(name: "attr", arg: 2, scope: !3990, file: !3, line: 110, type: !2075)
!3994 = !DILocation(line: 110, column: 68, scope: !3990)
!3995 = !DILocalVariable(name: "buf", arg: 3, scope: !3990, file: !3, line: 111, type: !116)
!3996 = !DILocation(line: 111, column: 21, scope: !3990)
!3997 = !DILocalVariable(name: "count", arg: 4, scope: !3990, file: !3, line: 111, type: !220)
!3998 = !DILocation(line: 111, column: 33, scope: !3990)
!3999 = !DILocalVariable(name: "tz", scope: !3990, file: !3, line: 113, type: !103)
!4000 = !DILocation(line: 113, column: 30, scope: !3990)
!4001 = !DILocalVariable(name: "__mptr", scope: !4002, file: !3, line: 113, type: !91)
!4002 = distinct !DILexicalBlock(scope: !3990, file: !3, line: 113, column: 35)
!4003 = !DILocation(line: 113, column: 35, scope: !4002)
!4004 = !DILocation(line: 113, column: 35, scope: !4005)
!4005 = distinct !DILexicalBlock(scope: !4002, file: !3, line: 113, column: 35)
!4006 = !DILocalVariable(name: "trip", scope: !3990, file: !3, line: 114, type: !88)
!4007 = !DILocation(line: 114, column: 6, scope: !3990)
!4008 = !DILocalVariable(name: "ret", scope: !3990, file: !3, line: 114, type: !88)
!4009 = !DILocation(line: 114, column: 12, scope: !3990)
!4010 = !DILocalVariable(name: "temperature", scope: !3990, file: !3, line: 115, type: !88)
!4011 = !DILocation(line: 115, column: 6, scope: !3990)
!4012 = !DILocalVariable(name: "hyst", scope: !3990, file: !3, line: 115, type: !88)
!4013 = !DILocation(line: 115, column: 19, scope: !3990)
!4014 = !DILocalVariable(name: "type", scope: !3990, file: !3, line: 116, type: !55)
!4015 = !DILocation(line: 116, column: 25, scope: !3990)
!4016 = !DILocation(line: 118, column: 7, scope: !4017)
!4017 = distinct !DILexicalBlock(scope: !3990, file: !3, line: 118, column: 6)
!4018 = !DILocation(line: 118, column: 11, scope: !4017)
!4019 = !DILocation(line: 118, column: 16, scope: !4017)
!4020 = !DILocation(line: 118, column: 6, scope: !3990)
!4021 = !DILocation(line: 119, column: 3, scope: !4017)
!4022 = !DILocation(line: 121, column: 13, scope: !4023)
!4023 = distinct !DILexicalBlock(scope: !3990, file: !3, line: 121, column: 6)
!4024 = !DILocation(line: 121, column: 19, scope: !4023)
!4025 = !DILocation(line: 121, column: 24, scope: !4023)
!4026 = !DILocation(line: 121, column: 6, scope: !4023)
!4027 = !DILocation(line: 121, column: 59, scope: !4023)
!4028 = !DILocation(line: 121, column: 6, scope: !3990)
!4029 = !DILocation(line: 122, column: 3, scope: !4023)
!4030 = !DILocation(line: 124, column: 16, scope: !4031)
!4031 = distinct !DILexicalBlock(scope: !3990, file: !3, line: 124, column: 6)
!4032 = !DILocation(line: 124, column: 6, scope: !4031)
!4033 = !DILocation(line: 124, column: 6, scope: !3990)
!4034 = !DILocation(line: 125, column: 3, scope: !4031)
!4035 = !DILocation(line: 127, column: 8, scope: !3990)
!4036 = !DILocation(line: 127, column: 12, scope: !3990)
!4037 = !DILocation(line: 127, column: 17, scope: !3990)
!4038 = !DILocation(line: 127, column: 31, scope: !3990)
!4039 = !DILocation(line: 127, column: 35, scope: !3990)
!4040 = !DILocation(line: 127, column: 41, scope: !3990)
!4041 = !DILocation(line: 127, column: 6, scope: !3990)
!4042 = !DILocation(line: 128, column: 6, scope: !4043)
!4043 = distinct !DILexicalBlock(scope: !3990, file: !3, line: 128, column: 6)
!4044 = !DILocation(line: 128, column: 6, scope: !3990)
!4045 = !DILocation(line: 129, column: 10, scope: !4043)
!4046 = !DILocation(line: 129, column: 3, scope: !4043)
!4047 = !DILocation(line: 131, column: 6, scope: !4048)
!4048 = distinct !DILexicalBlock(scope: !3990, file: !3, line: 131, column: 6)
!4049 = !DILocation(line: 131, column: 10, scope: !4048)
!4050 = !DILocation(line: 131, column: 15, scope: !4048)
!4051 = !DILocation(line: 131, column: 6, scope: !3990)
!4052 = !DILocation(line: 132, column: 9, scope: !4053)
!4053 = distinct !DILexicalBlock(scope: !4048, file: !3, line: 131, column: 30)
!4054 = !DILocation(line: 132, column: 13, scope: !4053)
!4055 = !DILocation(line: 132, column: 18, scope: !4053)
!4056 = !DILocation(line: 132, column: 32, scope: !4053)
!4057 = !DILocation(line: 132, column: 36, scope: !4053)
!4058 = !DILocation(line: 132, column: 7, scope: !4053)
!4059 = !DILocation(line: 133, column: 7, scope: !4060)
!4060 = distinct !DILexicalBlock(scope: !4053, file: !3, line: 133, column: 7)
!4061 = !DILocation(line: 133, column: 7, scope: !4053)
!4062 = !DILocation(line: 134, column: 11, scope: !4060)
!4063 = !DILocation(line: 134, column: 4, scope: !4060)
!4064 = !DILocation(line: 135, column: 2, scope: !4053)
!4065 = !DILocation(line: 137, column: 8, scope: !3990)
!4066 = !DILocation(line: 137, column: 12, scope: !3990)
!4067 = !DILocation(line: 137, column: 17, scope: !3990)
!4068 = !DILocation(line: 137, column: 31, scope: !3990)
!4069 = !DILocation(line: 137, column: 35, scope: !3990)
!4070 = !DILocation(line: 137, column: 6, scope: !3990)
!4071 = !DILocation(line: 138, column: 6, scope: !4072)
!4072 = distinct !DILexicalBlock(scope: !3990, file: !3, line: 138, column: 6)
!4073 = !DILocation(line: 138, column: 6, scope: !3990)
!4074 = !DILocation(line: 139, column: 10, scope: !4072)
!4075 = !DILocation(line: 139, column: 3, scope: !4072)
!4076 = !DILocation(line: 141, column: 32, scope: !3990)
!4077 = !DILocation(line: 141, column: 36, scope: !3990)
!4078 = !DILocation(line: 141, column: 40, scope: !3990)
!4079 = !DILocation(line: 141, column: 46, scope: !3990)
!4080 = !DILocation(line: 141, column: 52, scope: !3990)
!4081 = !DILocation(line: 141, column: 65, scope: !3990)
!4082 = !DILocation(line: 141, column: 2, scope: !3990)
!4083 = !DILocation(line: 143, column: 29, scope: !3990)
!4084 = !DILocation(line: 143, column: 2, scope: !3990)
!4085 = !DILocation(line: 145, column: 9, scope: !3990)
!4086 = !DILocation(line: 145, column: 2, scope: !3990)
!4087 = !DILocation(line: 146, column: 1, scope: !3990)
!4088 = distinct !DISubprogram(name: "trip_point_hyst_show", scope: !3, file: !3, line: 201, type: !2073, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!4089 = !DILocalVariable(name: "dev", arg: 1, scope: !4088, file: !3, line: 201, type: !1586)
!4090 = !DILocation(line: 201, column: 37, scope: !4088)
!4091 = !DILocalVariable(name: "attr", arg: 2, scope: !4088, file: !3, line: 201, type: !2075)
!4092 = !DILocation(line: 201, column: 67, scope: !4088)
!4093 = !DILocalVariable(name: "buf", arg: 3, scope: !4088, file: !3, line: 202, type: !173)
!4094 = !DILocation(line: 202, column: 14, scope: !4088)
!4095 = !DILocalVariable(name: "tz", scope: !4088, file: !3, line: 204, type: !103)
!4096 = !DILocation(line: 204, column: 30, scope: !4088)
!4097 = !DILocalVariable(name: "__mptr", scope: !4098, file: !3, line: 204, type: !91)
!4098 = distinct !DILexicalBlock(scope: !4088, file: !3, line: 204, column: 35)
!4099 = !DILocation(line: 204, column: 35, scope: !4098)
!4100 = !DILocation(line: 204, column: 35, scope: !4101)
!4101 = distinct !DILexicalBlock(scope: !4098, file: !3, line: 204, column: 35)
!4102 = !DILocalVariable(name: "trip", scope: !4088, file: !3, line: 205, type: !88)
!4103 = !DILocation(line: 205, column: 6, scope: !4088)
!4104 = !DILocalVariable(name: "ret", scope: !4088, file: !3, line: 205, type: !88)
!4105 = !DILocation(line: 205, column: 12, scope: !4088)
!4106 = !DILocalVariable(name: "temperature", scope: !4088, file: !3, line: 206, type: !88)
!4107 = !DILocation(line: 206, column: 6, scope: !4088)
!4108 = !DILocation(line: 208, column: 7, scope: !4109)
!4109 = distinct !DILexicalBlock(scope: !4088, file: !3, line: 208, column: 6)
!4110 = !DILocation(line: 208, column: 11, scope: !4109)
!4111 = !DILocation(line: 208, column: 16, scope: !4109)
!4112 = !DILocation(line: 208, column: 6, scope: !4088)
!4113 = !DILocation(line: 209, column: 3, scope: !4109)
!4114 = !DILocation(line: 211, column: 13, scope: !4115)
!4115 = distinct !DILexicalBlock(scope: !4088, file: !3, line: 211, column: 6)
!4116 = !DILocation(line: 211, column: 19, scope: !4115)
!4117 = !DILocation(line: 211, column: 24, scope: !4115)
!4118 = !DILocation(line: 211, column: 6, scope: !4115)
!4119 = !DILocation(line: 211, column: 59, scope: !4115)
!4120 = !DILocation(line: 211, column: 6, scope: !4088)
!4121 = !DILocation(line: 212, column: 3, scope: !4115)
!4122 = !DILocation(line: 214, column: 8, scope: !4088)
!4123 = !DILocation(line: 214, column: 12, scope: !4088)
!4124 = !DILocation(line: 214, column: 17, scope: !4088)
!4125 = !DILocation(line: 214, column: 31, scope: !4088)
!4126 = !DILocation(line: 214, column: 35, scope: !4088)
!4127 = !DILocation(line: 214, column: 6, scope: !4088)
!4128 = !DILocation(line: 216, column: 9, scope: !4088)
!4129 = !DILocation(line: 216, column: 15, scope: !4088)
!4130 = !DILocation(line: 216, column: 29, scope: !4088)
!4131 = !DILocation(line: 216, column: 42, scope: !4088)
!4132 = !DILocation(line: 216, column: 21, scope: !4088)
!4133 = !DILocation(line: 216, column: 2, scope: !4088)
!4134 = !DILocation(line: 217, column: 1, scope: !4088)
!4135 = distinct !DISubprogram(name: "trip_point_hyst_store", scope: !3, file: !3, line: 171, type: !2078, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!4136 = !DILocalVariable(name: "dev", arg: 1, scope: !4135, file: !3, line: 171, type: !1586)
!4137 = !DILocation(line: 171, column: 38, scope: !4135)
!4138 = !DILocalVariable(name: "attr", arg: 2, scope: !4135, file: !3, line: 171, type: !2075)
!4139 = !DILocation(line: 171, column: 68, scope: !4135)
!4140 = !DILocalVariable(name: "buf", arg: 3, scope: !4135, file: !3, line: 172, type: !116)
!4141 = !DILocation(line: 172, column: 21, scope: !4135)
!4142 = !DILocalVariable(name: "count", arg: 4, scope: !4135, file: !3, line: 172, type: !220)
!4143 = !DILocation(line: 172, column: 33, scope: !4135)
!4144 = !DILocalVariable(name: "tz", scope: !4135, file: !3, line: 174, type: !103)
!4145 = !DILocation(line: 174, column: 30, scope: !4135)
!4146 = !DILocalVariable(name: "__mptr", scope: !4147, file: !3, line: 174, type: !91)
!4147 = distinct !DILexicalBlock(scope: !4135, file: !3, line: 174, column: 35)
!4148 = !DILocation(line: 174, column: 35, scope: !4147)
!4149 = !DILocation(line: 174, column: 35, scope: !4150)
!4150 = distinct !DILexicalBlock(scope: !4147, file: !3, line: 174, column: 35)
!4151 = !DILocalVariable(name: "trip", scope: !4135, file: !3, line: 175, type: !88)
!4152 = !DILocation(line: 175, column: 6, scope: !4135)
!4153 = !DILocalVariable(name: "ret", scope: !4135, file: !3, line: 175, type: !88)
!4154 = !DILocation(line: 175, column: 12, scope: !4135)
!4155 = !DILocalVariable(name: "temperature", scope: !4135, file: !3, line: 176, type: !88)
!4156 = !DILocation(line: 176, column: 6, scope: !4135)
!4157 = !DILocation(line: 178, column: 7, scope: !4158)
!4158 = distinct !DILexicalBlock(scope: !4135, file: !3, line: 178, column: 6)
!4159 = !DILocation(line: 178, column: 11, scope: !4158)
!4160 = !DILocation(line: 178, column: 16, scope: !4158)
!4161 = !DILocation(line: 178, column: 6, scope: !4135)
!4162 = !DILocation(line: 179, column: 3, scope: !4158)
!4163 = !DILocation(line: 181, column: 13, scope: !4164)
!4164 = distinct !DILexicalBlock(scope: !4135, file: !3, line: 181, column: 6)
!4165 = !DILocation(line: 181, column: 19, scope: !4164)
!4166 = !DILocation(line: 181, column: 24, scope: !4164)
!4167 = !DILocation(line: 181, column: 6, scope: !4164)
!4168 = !DILocation(line: 181, column: 59, scope: !4164)
!4169 = !DILocation(line: 181, column: 6, scope: !4135)
!4170 = !DILocation(line: 182, column: 3, scope: !4164)
!4171 = !DILocation(line: 184, column: 16, scope: !4172)
!4172 = distinct !DILexicalBlock(scope: !4135, file: !3, line: 184, column: 6)
!4173 = !DILocation(line: 184, column: 6, scope: !4172)
!4174 = !DILocation(line: 184, column: 6, scope: !4135)
!4175 = !DILocation(line: 185, column: 3, scope: !4172)
!4176 = !DILocation(line: 192, column: 8, scope: !4135)
!4177 = !DILocation(line: 192, column: 12, scope: !4135)
!4178 = !DILocation(line: 192, column: 17, scope: !4135)
!4179 = !DILocation(line: 192, column: 31, scope: !4135)
!4180 = !DILocation(line: 192, column: 35, scope: !4135)
!4181 = !DILocation(line: 192, column: 41, scope: !4135)
!4182 = !DILocation(line: 192, column: 6, scope: !4135)
!4183 = !DILocation(line: 194, column: 7, scope: !4184)
!4184 = distinct !DILexicalBlock(scope: !4135, file: !3, line: 194, column: 6)
!4185 = !DILocation(line: 194, column: 6, scope: !4135)
!4186 = !DILocation(line: 195, column: 26, scope: !4184)
!4187 = !DILocation(line: 195, column: 3, scope: !4184)
!4188 = !DILocation(line: 197, column: 9, scope: !4135)
!4189 = !DILocation(line: 197, column: 15, scope: !4135)
!4190 = !DILocation(line: 197, column: 21, scope: !4135)
!4191 = !DILocation(line: 197, column: 2, scope: !4135)
!4192 = !DILocation(line: 198, column: 1, scope: !4135)
!4193 = distinct !DISubprogram(name: "thermal_notify_tz_trip_change", scope: !4194, file: !4194, line: 73, type: !4195, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!4194 = !DIFile(filename: "drivers/thermal/thermal_netlink.h", directory: "/home/lizy2001/genbc/linux")
!4195 = !DISubroutineType(types: !4196)
!4196 = !{!88, !88, !88, !88, !88, !88}
!4197 = !DILocalVariable(name: "tz_id", arg: 1, scope: !4193, file: !4194, line: 73, type: !88)
!4198 = !DILocation(line: 73, column: 53, scope: !4193)
!4199 = !DILocalVariable(name: "id", arg: 2, scope: !4193, file: !4194, line: 73, type: !88)
!4200 = !DILocation(line: 73, column: 64, scope: !4193)
!4201 = !DILocalVariable(name: "type", arg: 3, scope: !4193, file: !4194, line: 73, type: !88)
!4202 = !DILocation(line: 73, column: 72, scope: !4193)
!4203 = !DILocalVariable(name: "temp", arg: 4, scope: !4193, file: !4194, line: 74, type: !88)
!4204 = !DILocation(line: 74, column: 11, scope: !4193)
!4205 = !DILocalVariable(name: "hyst", arg: 5, scope: !4193, file: !4194, line: 74, type: !88)
!4206 = !DILocation(line: 74, column: 21, scope: !4193)
!4207 = !DILocation(line: 76, column: 2, scope: !4193)
!4208 = distinct !DISubprogram(name: "cdev_type_show", scope: !3, file: !3, line: 652, type: !2073, scopeLine: 653, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!4209 = !DILocalVariable(name: "dev", arg: 1, scope: !4208, file: !3, line: 652, type: !1586)
!4210 = !DILocation(line: 652, column: 31, scope: !4208)
!4211 = !DILocalVariable(name: "attr", arg: 2, scope: !4208, file: !3, line: 652, type: !2075)
!4212 = !DILocation(line: 652, column: 61, scope: !4208)
!4213 = !DILocalVariable(name: "buf", arg: 3, scope: !4208, file: !3, line: 652, type: !173)
!4214 = !DILocation(line: 652, column: 73, scope: !4208)
!4215 = !DILocalVariable(name: "cdev", scope: !4208, file: !3, line: 654, type: !2105)
!4216 = !DILocation(line: 654, column: 33, scope: !4208)
!4217 = !DILocalVariable(name: "__mptr", scope: !4218, file: !3, line: 654, type: !91)
!4218 = distinct !DILexicalBlock(scope: !4208, file: !3, line: 654, column: 40)
!4219 = !DILocation(line: 654, column: 40, scope: !4218)
!4220 = !DILocation(line: 654, column: 40, scope: !4221)
!4221 = distinct !DILexicalBlock(scope: !4218, file: !3, line: 654, column: 40)
!4222 = !DILocation(line: 656, column: 17, scope: !4208)
!4223 = !DILocation(line: 656, column: 30, scope: !4208)
!4224 = !DILocation(line: 656, column: 36, scope: !4208)
!4225 = !DILocation(line: 656, column: 9, scope: !4208)
!4226 = !DILocation(line: 656, column: 2, scope: !4208)
!4227 = distinct !DISubprogram(name: "max_state_show", scope: !3, file: !3, line: 659, type: !2073, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!4228 = !DILocalVariable(name: "dev", arg: 1, scope: !4227, file: !3, line: 659, type: !1586)
!4229 = !DILocation(line: 659, column: 46, scope: !4227)
!4230 = !DILocalVariable(name: "attr", arg: 2, scope: !4227, file: !3, line: 659, type: !2075)
!4231 = !DILocation(line: 659, column: 76, scope: !4227)
!4232 = !DILocalVariable(name: "buf", arg: 3, scope: !4227, file: !3, line: 660, type: !173)
!4233 = !DILocation(line: 660, column: 16, scope: !4227)
!4234 = !DILocalVariable(name: "cdev", scope: !4227, file: !3, line: 662, type: !2105)
!4235 = !DILocation(line: 662, column: 33, scope: !4227)
!4236 = !DILocalVariable(name: "__mptr", scope: !4237, file: !3, line: 662, type: !91)
!4237 = distinct !DILexicalBlock(scope: !4227, file: !3, line: 662, column: 40)
!4238 = !DILocation(line: 662, column: 40, scope: !4237)
!4239 = !DILocation(line: 662, column: 40, scope: !4240)
!4240 = distinct !DILexicalBlock(scope: !4237, file: !3, line: 662, column: 40)
!4241 = !DILocalVariable(name: "state", scope: !4227, file: !3, line: 663, type: !223)
!4242 = !DILocation(line: 663, column: 16, scope: !4227)
!4243 = !DILocalVariable(name: "ret", scope: !4227, file: !3, line: 664, type: !88)
!4244 = !DILocation(line: 664, column: 6, scope: !4227)
!4245 = !DILocation(line: 666, column: 8, scope: !4227)
!4246 = !DILocation(line: 666, column: 14, scope: !4227)
!4247 = !DILocation(line: 666, column: 19, scope: !4227)
!4248 = !DILocation(line: 666, column: 33, scope: !4227)
!4249 = !DILocation(line: 666, column: 6, scope: !4227)
!4250 = !DILocation(line: 667, column: 6, scope: !4251)
!4251 = distinct !DILexicalBlock(scope: !4227, file: !3, line: 667, column: 6)
!4252 = !DILocation(line: 667, column: 6, scope: !4227)
!4253 = !DILocation(line: 668, column: 10, scope: !4251)
!4254 = !DILocation(line: 668, column: 3, scope: !4251)
!4255 = !DILocation(line: 669, column: 17, scope: !4227)
!4256 = !DILocation(line: 669, column: 31, scope: !4227)
!4257 = !DILocation(line: 669, column: 9, scope: !4227)
!4258 = !DILocation(line: 669, column: 2, scope: !4227)
!4259 = !DILocation(line: 670, column: 1, scope: !4227)
!4260 = distinct !DISubprogram(name: "cur_state_show", scope: !3, file: !3, line: 672, type: !2073, scopeLine: 674, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!4261 = !DILocalVariable(name: "dev", arg: 1, scope: !4260, file: !3, line: 672, type: !1586)
!4262 = !DILocation(line: 672, column: 46, scope: !4260)
!4263 = !DILocalVariable(name: "attr", arg: 2, scope: !4260, file: !3, line: 672, type: !2075)
!4264 = !DILocation(line: 672, column: 76, scope: !4260)
!4265 = !DILocalVariable(name: "buf", arg: 3, scope: !4260, file: !3, line: 673, type: !173)
!4266 = !DILocation(line: 673, column: 16, scope: !4260)
!4267 = !DILocalVariable(name: "cdev", scope: !4260, file: !3, line: 675, type: !2105)
!4268 = !DILocation(line: 675, column: 33, scope: !4260)
!4269 = !DILocalVariable(name: "__mptr", scope: !4270, file: !3, line: 675, type: !91)
!4270 = distinct !DILexicalBlock(scope: !4260, file: !3, line: 675, column: 40)
!4271 = !DILocation(line: 675, column: 40, scope: !4270)
!4272 = !DILocation(line: 675, column: 40, scope: !4273)
!4273 = distinct !DILexicalBlock(scope: !4270, file: !3, line: 675, column: 40)
!4274 = !DILocalVariable(name: "state", scope: !4260, file: !3, line: 676, type: !223)
!4275 = !DILocation(line: 676, column: 16, scope: !4260)
!4276 = !DILocalVariable(name: "ret", scope: !4260, file: !3, line: 677, type: !88)
!4277 = !DILocation(line: 677, column: 6, scope: !4260)
!4278 = !DILocation(line: 679, column: 8, scope: !4260)
!4279 = !DILocation(line: 679, column: 14, scope: !4260)
!4280 = !DILocation(line: 679, column: 19, scope: !4260)
!4281 = !DILocation(line: 679, column: 33, scope: !4260)
!4282 = !DILocation(line: 679, column: 6, scope: !4260)
!4283 = !DILocation(line: 680, column: 6, scope: !4284)
!4284 = distinct !DILexicalBlock(scope: !4260, file: !3, line: 680, column: 6)
!4285 = !DILocation(line: 680, column: 6, scope: !4260)
!4286 = !DILocation(line: 681, column: 10, scope: !4284)
!4287 = !DILocation(line: 681, column: 3, scope: !4284)
!4288 = !DILocation(line: 682, column: 17, scope: !4260)
!4289 = !DILocation(line: 682, column: 31, scope: !4260)
!4290 = !DILocation(line: 682, column: 9, scope: !4260)
!4291 = !DILocation(line: 682, column: 2, scope: !4260)
!4292 = !DILocation(line: 683, column: 1, scope: !4260)
!4293 = distinct !DISubprogram(name: "cur_state_store", scope: !3, file: !3, line: 686, type: !2078, scopeLine: 688, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!4294 = !DILocalVariable(name: "dev", arg: 1, scope: !4293, file: !3, line: 686, type: !1586)
!4295 = !DILocation(line: 686, column: 32, scope: !4293)
!4296 = !DILocalVariable(name: "attr", arg: 2, scope: !4293, file: !3, line: 686, type: !2075)
!4297 = !DILocation(line: 686, column: 62, scope: !4293)
!4298 = !DILocalVariable(name: "buf", arg: 3, scope: !4293, file: !3, line: 687, type: !116)
!4299 = !DILocation(line: 687, column: 15, scope: !4293)
!4300 = !DILocalVariable(name: "count", arg: 4, scope: !4293, file: !3, line: 687, type: !220)
!4301 = !DILocation(line: 687, column: 27, scope: !4293)
!4302 = !DILocalVariable(name: "cdev", scope: !4293, file: !3, line: 689, type: !2105)
!4303 = !DILocation(line: 689, column: 33, scope: !4293)
!4304 = !DILocalVariable(name: "__mptr", scope: !4305, file: !3, line: 689, type: !91)
!4305 = distinct !DILexicalBlock(scope: !4293, file: !3, line: 689, column: 40)
!4306 = !DILocation(line: 689, column: 40, scope: !4305)
!4307 = !DILocation(line: 689, column: 40, scope: !4308)
!4308 = distinct !DILexicalBlock(scope: !4305, file: !3, line: 689, column: 40)
!4309 = !DILocalVariable(name: "state", scope: !4293, file: !3, line: 690, type: !223)
!4310 = !DILocation(line: 690, column: 16, scope: !4293)
!4311 = !DILocalVariable(name: "result", scope: !4293, file: !3, line: 691, type: !88)
!4312 = !DILocation(line: 691, column: 6, scope: !4293)
!4313 = !DILocation(line: 693, column: 13, scope: !4314)
!4314 = distinct !DILexicalBlock(scope: !4293, file: !3, line: 693, column: 6)
!4315 = !DILocation(line: 693, column: 6, scope: !4314)
!4316 = !DILocation(line: 693, column: 35, scope: !4314)
!4317 = !DILocation(line: 693, column: 6, scope: !4293)
!4318 = !DILocation(line: 694, column: 3, scope: !4314)
!4319 = !DILocation(line: 696, column: 12, scope: !4320)
!4320 = distinct !DILexicalBlock(scope: !4293, file: !3, line: 696, column: 6)
!4321 = !DILocation(line: 696, column: 18, scope: !4320)
!4322 = !DILocation(line: 696, column: 6, scope: !4293)
!4323 = !DILocation(line: 697, column: 3, scope: !4320)
!4324 = !DILocation(line: 699, column: 14, scope: !4293)
!4325 = !DILocation(line: 699, column: 20, scope: !4293)
!4326 = !DILocation(line: 699, column: 2, scope: !4293)
!4327 = !DILocation(line: 701, column: 11, scope: !4293)
!4328 = !DILocation(line: 701, column: 17, scope: !4293)
!4329 = !DILocation(line: 701, column: 22, scope: !4293)
!4330 = !DILocation(line: 701, column: 36, scope: !4293)
!4331 = !DILocation(line: 701, column: 42, scope: !4293)
!4332 = !DILocation(line: 701, column: 9, scope: !4293)
!4333 = !DILocation(line: 702, column: 7, scope: !4334)
!4334 = distinct !DILexicalBlock(scope: !4293, file: !3, line: 702, column: 6)
!4335 = !DILocation(line: 702, column: 6, scope: !4293)
!4336 = !DILocation(line: 703, column: 39, scope: !4334)
!4337 = !DILocation(line: 703, column: 45, scope: !4334)
!4338 = !DILocation(line: 703, column: 3, scope: !4334)
!4339 = !DILocation(line: 705, column: 16, scope: !4293)
!4340 = !DILocation(line: 705, column: 22, scope: !4293)
!4341 = !DILocation(line: 705, column: 2, scope: !4293)
!4342 = !DILocation(line: 706, column: 9, scope: !4293)
!4343 = !DILocation(line: 706, column: 18, scope: !4293)
!4344 = !DILocation(line: 706, column: 27, scope: !4293)
!4345 = !DILocation(line: 706, column: 2, scope: !4293)
!4346 = !DILocation(line: 707, column: 1, scope: !4293)
!4347 = distinct !DISubprogram(name: "thermal_cooling_device_stats_update", scope: !94, file: !94, line: 153, type: !4348, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!4348 = !DISubroutineType(types: !4349)
!4349 = !{null, !2105, !223}
!4350 = !DILocalVariable(name: "cdev", arg: 1, scope: !4347, file: !94, line: 153, type: !2105)
!4351 = !DILocation(line: 153, column: 68, scope: !4347)
!4352 = !DILocalVariable(name: "new_state", arg: 2, scope: !4347, file: !94, line: 154, type: !223)
!4353 = !DILocation(line: 154, column: 23, scope: !4347)
!4354 = !DILocation(line: 154, column: 35, scope: !4347)
