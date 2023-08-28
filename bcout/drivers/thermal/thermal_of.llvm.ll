; ModuleID = '../bcout/drivers/thermal/thermal_of.llvm.bc'
source_filename = "drivers/thermal/thermal_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.thermal_zone_device_ops = type { i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)*, i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)*, i32 (%struct.thermal_zone_device*, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32)*, i32 (%struct.thermal_zone_device*, i32)*, i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32)*, i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32)*, i32 (%struct.thermal_zone_device*, i32*)*, i32 (%struct.thermal_zone_device*, i32)*, i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32)* }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.thermal_attr = type { %struct.device_attribute, [20 x i8] }
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.atomic_t = type { i32 }
%struct.thermal_zone_params = type { [20 x i8], i8, i32, %struct.thermal_bind_params*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thermal_bind_params = type { %struct.thermal_cooling_device*, i32, i32, i64*, i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)* }
%struct.thermal_governor = type { [20 x i8], {}*, void (%struct.thermal_zone_device*)*, i32 (%struct.thermal_zone_device*, i32)*, %struct.list_head }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.workqueue_struct = type opaque
%struct.thermal_cooling_device = type { i32, [20 x i8], %struct.device, %struct.device_node*, i8*, i8*, %struct.thermal_cooling_device_ops*, i8, %struct.mutex, %struct.list_head, %struct.list_head }
%struct.thermal_cooling_device_ops = type { i32 (%struct.thermal_cooling_device*, i64*)*, i32 (%struct.thermal_cooling_device*, i64*)*, i32 (%struct.thermal_cooling_device*, i64)*, i32 (%struct.thermal_cooling_device*, i32*)*, i32 (%struct.thermal_cooling_device*, i64, i32*)*, i32 (%struct.thermal_cooling_device*, i32, i64*)* }
%struct.kmem_cache = type opaque
%struct.__thermal_zone = type { i32, i32, i32, i32, i32, %struct.thermal_trip*, i32, %struct.__thermal_bind_params*, i8*, %struct.thermal_zone_of_device_ops* }
%struct.thermal_trip = type { %struct.device_node*, i32, i32, i32 }
%struct.__thermal_bind_params = type { %struct.__thermal_cooling_bind_param*, i32, i32, i32 }
%struct.__thermal_cooling_bind_param = type { %struct.device_node*, i64, i64 }
%struct.thermal_zone_of_device_ops = type { i32 (i8*, i32*)*, i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32)*, i32 (i8*, i32)*, i32 (i8*, i32, i32)* }
%struct.of_phandle_args = type { %struct.device_node*, i32, [16 x i32] }

@.str = private unnamed_addr constant [16 x i8] c"thermal-sensors\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"#thermal-sensor-cells\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"\014thermal_sys: %pOFn: too many cells in sensor specifier %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"thermal-zones\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"drivers/thermal/thermal_of.c\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"\013thermal_sys: failed to build thermal zone %pOFn: %ld\0A\00", align 1
@of_thermal_ops = internal global %struct.thermal_zone_device_ops { i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)* @of_thermal_bind, i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)* @of_thermal_unbind, i32 (%struct.thermal_zone_device*, i32*)* null, i32 (%struct.thermal_zone_device*, i32, i32)* null, i32 (%struct.thermal_zone_device*, i32)* null, i32 (%struct.thermal_zone_device*, i32, i32*)* @of_thermal_get_trip_type, i32 (%struct.thermal_zone_device*, i32, i32*)* @of_thermal_get_trip_temp, i32 (%struct.thermal_zone_device*, i32, i32)* @of_thermal_set_trip_temp, i32 (%struct.thermal_zone_device*, i32, i32*)* @of_thermal_get_trip_hyst, i32 (%struct.thermal_zone_device*, i32, i32)* @of_thermal_set_trip_hyst, i32 (%struct.thermal_zone_device*, i32*)* @of_thermal_get_crit_temp, i32 (%struct.thermal_zone_device*, i32)* null, i32 (%struct.thermal_zone_device*, i32, i32*)* null, i32 (%struct.thermal_zone_device*, i32, i32)* null }, align 8, !dbg !0
@.str.6 = private unnamed_addr constant [18 x i8] c"sustainable-power\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"\013thermal_sys: Failed to build %pOFn zone %ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"\013thermal_sys: no thermal zone np\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"polling-delay-passive\00", align 1
@.str.10 = private unnamed_addr constant [62 x i8] c"\013thermal_sys: %pOFn: missing polling-delay-passive property\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"polling-delay\00", align 1
@.str.12 = private unnamed_addr constant [54 x i8] c"\013thermal_sys: %pOFn: missing polling-delay property\0A\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"coefficients\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"trips\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"cooling-maps\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.16 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"temperature\00", align 1
@.str.18 = private unnamed_addr constant [45 x i8] c"\013thermal_sys: missing temperature property\0A\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"hysteresis\00", align 1
@.str.20 = private unnamed_addr constant [44 x i8] c"\013thermal_sys: missing hysteresis property\0A\00", align 1
@.str.21 = private unnamed_addr constant [41 x i8] c"\013thermal_sys: wrong trip type property\0A\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@trip_types = internal constant [4 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0)], align 16, !dbg !2242
@.str.23 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"passive\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"hot\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"critical\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"contribution\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"trip\00", align 1
@.str.29 = private unnamed_addr constant [38 x i8] c"\013thermal_sys: missing trip property\0A\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"cooling-device\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"#cooling-cells\00", align 1
@.str.32 = private unnamed_addr constant [71 x i8] c"\013thermal_sys: Add a cooling_device property with at least one device\0A\00", align 1
@.str.33 = private unnamed_addr constant [45 x i8] c"\013thermal_sys: Invalid cooling-device entry\0A\00", align 1
@.str.34 = private unnamed_addr constant [66 x i8] c"\013thermal_sys: wrong reference to cooling device, missing limits\0A\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @of_thermal_get_ntrips(%struct.thermal_zone_device* %tz) #0 !dbg !2251 {
entry:
  %retval = alloca i32, align 4
  %tz.addr = alloca %struct.thermal_zone_device*, align 8
  %data = alloca %struct.__thermal_zone*, align 8
  store %struct.thermal_zone_device* %tz, %struct.thermal_zone_device** %tz.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tz.addr, metadata !2252, metadata !DIExpression()), !dbg !2253
  call void @llvm.dbg.declare(metadata %struct.__thermal_zone** %data, metadata !2254, metadata !DIExpression()), !dbg !2309
  %0 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2310
  %devdata = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %0, i32 0, i32 8, !dbg !2311
  %1 = load i8*, i8** %devdata, align 8, !dbg !2311
  %2 = bitcast i8* %1 to %struct.__thermal_zone*, !dbg !2310
  store %struct.__thermal_zone* %2, %struct.__thermal_zone** %data, align 8, !dbg !2309
  %3 = load %struct.__thermal_zone*, %struct.__thermal_zone** %data, align 8, !dbg !2312
  %tobool = icmp ne %struct.__thermal_zone* %3, null, !dbg !2312
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2314

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.__thermal_zone*, %struct.__thermal_zone** %data, align 8, !dbg !2315
  %5 = bitcast %struct.__thermal_zone* %4 to i8*, !dbg !2315
  %call = call zeroext i1 @IS_ERR(i8* %5) #8, !dbg !2316
  br i1 %call, label %if.then, label %if.end, !dbg !2317

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -19, i32* %retval, align 4, !dbg !2318
  br label %return, !dbg !2318

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct.__thermal_zone*, %struct.__thermal_zone** %data, align 8, !dbg !2319
  %ntrips = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %6, i32 0, i32 4, !dbg !2320
  %7 = load i32, i32* %ntrips, align 8, !dbg !2320
  store i32 %7, i32* %retval, align 4, !dbg !2321
  br label %return, !dbg !2321

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !2322
  ret i32 %8, !dbg !2322
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !2323 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2327, metadata !DIExpression()), !dbg !2328
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2329
  %1 = ptrtoint i8* %0 to i64, !dbg !2329
  %2 = inttoptr i64 %1 to i8*, !dbg !2329
  %3 = ptrtoint i8* %2 to i64, !dbg !2329
  %cmp = icmp uge i64 %3, -4095, !dbg !2329
  %lnot = xor i1 %cmp, true, !dbg !2329
  %lnot1 = xor i1 %lnot, true, !dbg !2329
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2329
  %conv = sext i32 %lnot.ext to i64, !dbg !2329
  %tobool = icmp ne i64 %conv, 0, !dbg !2329
  ret i1 %tobool, !dbg !2330
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @of_thermal_is_trip_valid(%struct.thermal_zone_device* %tz, i32 %trip) #0 !dbg !2331 {
entry:
  %retval = alloca i1, align 1
  %tz.addr = alloca %struct.thermal_zone_device*, align 8
  %trip.addr = alloca i32, align 4
  %data = alloca %struct.__thermal_zone*, align 8
  store %struct.thermal_zone_device* %tz, %struct.thermal_zone_device** %tz.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tz.addr, metadata !2334, metadata !DIExpression()), !dbg !2335
  store i32 %trip, i32* %trip.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %trip.addr, metadata !2336, metadata !DIExpression()), !dbg !2337
  call void @llvm.dbg.declare(metadata %struct.__thermal_zone** %data, metadata !2338, metadata !DIExpression()), !dbg !2339
  %0 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2340
  %devdata = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %0, i32 0, i32 8, !dbg !2341
  %1 = load i8*, i8** %devdata, align 8, !dbg !2341
  %2 = bitcast i8* %1 to %struct.__thermal_zone*, !dbg !2340
  store %struct.__thermal_zone* %2, %struct.__thermal_zone** %data, align 8, !dbg !2339
  %3 = load %struct.__thermal_zone*, %struct.__thermal_zone** %data, align 8, !dbg !2342
  %tobool = icmp ne %struct.__thermal_zone* %3, null, !dbg !2342
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2344

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %trip.addr, align 4, !dbg !2345
  %5 = load %struct.__thermal_zone*, %struct.__thermal_zone** %data, align 8, !dbg !2346
  %ntrips = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %5, i32 0, i32 4, !dbg !2347
  %6 = load i32, i32* %ntrips, align 8, !dbg !2347
  %cmp = icmp sge i32 %4, %6, !dbg !2348
  br i1 %cmp, label %if.then, label %lor.lhs.false1, !dbg !2349

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %7 = load i32, i32* %trip.addr, align 4, !dbg !2350
  %cmp2 = icmp slt i32 %7, 0, !dbg !2351
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2352

if.then:                                          ; preds = %lor.lhs.false1, %lor.lhs.false, %entry
  store i1 false, i1* %retval, align 1, !dbg !2353
  br label %return, !dbg !2353

if.end:                                           ; preds = %lor.lhs.false1
  store i1 true, i1* %retval, align 1, !dbg !2354
  br label %return, !dbg !2354

return:                                           ; preds = %if.end, %if.then
  %8 = load i1, i1* %retval, align 1, !dbg !2355
  ret i1 %8, !dbg !2355
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.thermal_trip* @of_thermal_get_trip_points(%struct.thermal_zone_device* %tz) #0 !dbg !2356 {
entry:
  %retval = alloca %struct.thermal_trip*, align 8
  %tz.addr = alloca %struct.thermal_zone_device*, align 8
  %data = alloca %struct.__thermal_zone*, align 8
  store %struct.thermal_zone_device* %tz, %struct.thermal_zone_device** %tz.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tz.addr, metadata !2361, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.declare(metadata %struct.__thermal_zone** %data, metadata !2363, metadata !DIExpression()), !dbg !2364
  %0 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !2365
  %devdata = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %0, i32 0, i32 8, !dbg !2366
  %1 = load i8*, i8** %devdata, align 8, !dbg !2366
  %2 = bitcast i8* %1 to %struct.__thermal_zone*, !dbg !2365
  store %struct.__thermal_zone* %2, %struct.__thermal_zone** %data, align 8, !dbg !2364
  %3 = load %struct.__thermal_zone*, %struct.__thermal_zone** %data, align 8, !dbg !2367
  %tobool = icmp ne %struct.__thermal_zone* %3, null, !dbg !2367
  br i1 %tobool, label %if.end, label %if.then, !dbg !2369

if.then:                                          ; preds = %entry
  store %struct.thermal_trip* null, %struct.thermal_trip** %retval, align 8, !dbg !2370
  br label %return, !dbg !2370

if.end:                                           ; preds = %entry
  %4 = load %struct.__thermal_zone*, %struct.__thermal_zone** %data, align 8, !dbg !2371
  %trips = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %4, i32 0, i32 5, !dbg !2372
  %5 = load %struct.thermal_trip*, %struct.thermal_trip** %trips, align 8, !dbg !2372
  store %struct.thermal_trip* %5, %struct.thermal_trip** %retval, align 8, !dbg !2373
  br label %return, !dbg !2373

return:                                           ; preds = %if.end, %if.then
  %6 = load %struct.thermal_trip*, %struct.thermal_trip** %retval, align 8, !dbg !2374
  ret %struct.thermal_trip* %6, !dbg !2374
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @thermal_zone_of_get_sensor_id(%struct.device_node* %tz_np, %struct.device_node* %sensor_np, i32* %id) #0 !dbg !2375 {
entry:
  %retval = alloca i32, align 4
  %tz_np.addr = alloca %struct.device_node*, align 8
  %sensor_np.addr = alloca %struct.device_node*, align 8
  %id.addr = alloca i32*, align 8
  %sensor_specs = alloca %struct.of_phandle_args, align 8
  %ret = alloca i32, align 4
  store %struct.device_node* %tz_np, %struct.device_node** %tz_np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %tz_np.addr, metadata !2378, metadata !DIExpression()), !dbg !2379
  store %struct.device_node* %sensor_np, %struct.device_node** %sensor_np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %sensor_np.addr, metadata !2380, metadata !DIExpression()), !dbg !2381
  store i32* %id, i32** %id.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %id.addr, metadata !2382, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.declare(metadata %struct.of_phandle_args* %sensor_specs, metadata !2384, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2393, metadata !DIExpression()), !dbg !2394
  %0 = load %struct.device_node*, %struct.device_node** %tz_np.addr, align 8, !dbg !2395
  %call = call i32 @of_parse_phandle_with_args(%struct.device_node* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 0, %struct.of_phandle_args* %sensor_specs) #8, !dbg !2396
  store i32 %call, i32* %ret, align 4, !dbg !2397
  %1 = load i32, i32* %ret, align 4, !dbg !2398
  %tobool = icmp ne i32 %1, 0, !dbg !2398
  br i1 %tobool, label %if.then, label %if.end, !dbg !2400

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4, !dbg !2401
  store i32 %2, i32* %retval, align 4, !dbg !2402
  br label %return, !dbg !2402

if.end:                                           ; preds = %entry
  %np = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %sensor_specs, i32 0, i32 0, !dbg !2403
  %3 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2403
  %4 = load %struct.device_node*, %struct.device_node** %sensor_np.addr, align 8, !dbg !2405
  %cmp = icmp ne %struct.device_node* %3, %4, !dbg !2406
  br i1 %cmp, label %if.then1, label %if.end3, !dbg !2407

if.then1:                                         ; preds = %if.end
  %np2 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %sensor_specs, i32 0, i32 0, !dbg !2408
  %5 = load %struct.device_node*, %struct.device_node** %np2, align 8, !dbg !2408
  call void @of_node_put(%struct.device_node* %5) #8, !dbg !2410
  store i32 -19, i32* %retval, align 4, !dbg !2411
  br label %return, !dbg !2411

if.end3:                                          ; preds = %if.end
  %args_count = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %sensor_specs, i32 0, i32 1, !dbg !2412
  %6 = load i32, i32* %args_count, align 8, !dbg !2412
  %cmp4 = icmp sgt i32 %6, 1, !dbg !2414
  br i1 %cmp4, label %if.then5, label %if.end9, !dbg !2415

if.then5:                                         ; preds = %if.end3
  %np6 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %sensor_specs, i32 0, i32 0, !dbg !2416
  %7 = load %struct.device_node*, %struct.device_node** %np6, align 8, !dbg !2416
  %args_count7 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %sensor_specs, i32 0, i32 1, !dbg !2416
  %8 = load i32, i32* %args_count7, align 8, !dbg !2416
  %call8 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), %struct.device_node* %7, i32 %8) #9, !dbg !2416
  br label %if.end9, !dbg !2416

if.end9:                                          ; preds = %if.then5, %if.end3
  %args_count10 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %sensor_specs, i32 0, i32 1, !dbg !2417
  %9 = load i32, i32* %args_count10, align 8, !dbg !2417
  %tobool11 = icmp ne i32 %9, 0, !dbg !2418
  br i1 %tobool11, label %cond.true, label %cond.false, !dbg !2418

cond.true:                                        ; preds = %if.end9
  %args = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %sensor_specs, i32 0, i32 2, !dbg !2419
  %arrayidx = getelementptr [16 x i32], [16 x i32]* %args, i64 0, i64 0, !dbg !2420
  %10 = load i32, i32* %arrayidx, align 4, !dbg !2420
  br label %cond.end, !dbg !2418

cond.false:                                       ; preds = %if.end9
  br label %cond.end, !dbg !2418

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %10, %cond.true ], [ 0, %cond.false ], !dbg !2418
  %11 = load i32*, i32** %id.addr, align 8, !dbg !2421
  store i32 %cond, i32* %11, align 4, !dbg !2422
  %np12 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %sensor_specs, i32 0, i32 0, !dbg !2423
  %12 = load %struct.device_node*, %struct.device_node** %np12, align 8, !dbg !2423
  call void @of_node_put(%struct.device_node* %12) #8, !dbg !2424
  store i32 0, i32* %retval, align 4, !dbg !2425
  br label %return, !dbg !2425

return:                                           ; preds = %cond.end, %if.then1, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !2426
  ret i32 %13, !dbg !2426
}

; Function Attrs: noredzone
declare dso_local i32 @of_parse_phandle_with_args(%struct.device_node*, i8*, i8*, i32, %struct.of_phandle_args*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @of_node_put(%struct.device_node* %node) #0 !dbg !2427 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !2430, metadata !DIExpression()), !dbg !2431
  ret void, !dbg !2432
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.thermal_zone_device* @thermal_zone_of_sensor_register(%struct.device* %dev, i32 %sensor_id, i8* %data, %struct.thermal_zone_of_device_ops* %ops) #0 !dbg !2433 {
entry:
  %retval = alloca %struct.thermal_zone_device*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %sensor_id.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %ops.addr = alloca %struct.thermal_zone_of_device_ops*, align 8
  %np = alloca %struct.device_node*, align 8
  %child = alloca %struct.device_node*, align 8
  %sensor_np = alloca %struct.device_node*, align 8
  %tzd = alloca %struct.thermal_zone_device*, align 8
  %ret = alloca i32, align 4
  %id = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2436, metadata !DIExpression()), !dbg !2437
  store i32 %sensor_id, i32* %sensor_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sensor_id.addr, metadata !2438, metadata !DIExpression()), !dbg !2439
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2440, metadata !DIExpression()), !dbg !2441
  store %struct.thermal_zone_of_device_ops* %ops, %struct.thermal_zone_of_device_ops** %ops.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_of_device_ops** %ops.addr, metadata !2442, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.declare(metadata %struct.device_node** %np, metadata !2444, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.declare(metadata %struct.device_node** %child, metadata !2446, metadata !DIExpression()), !dbg !2447
  call void @llvm.dbg.declare(metadata %struct.device_node** %sensor_np, metadata !2448, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tzd, metadata !2450, metadata !DIExpression()), !dbg !2451
  %call = call i8* @ERR_PTR(i64 -19) #8, !dbg !2452
  %0 = bitcast i8* %call to %struct.thermal_zone_device*, !dbg !2452
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %tzd, align 8, !dbg !2451
  %call1 = call %struct.device_node* @of_find_node_by_name(%struct.device_node* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !2453
  store %struct.device_node* %call1, %struct.device_node** %np, align 8, !dbg !2454
  %1 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2455
  %tobool = icmp ne %struct.device_node* %1, null, !dbg !2455
  br i1 %tobool, label %if.end, label %if.then, !dbg !2457

if.then:                                          ; preds = %entry
  %call2 = call i8* @ERR_PTR(i64 -19) #8, !dbg !2458
  %2 = bitcast i8* %call2 to %struct.thermal_zone_device*, !dbg !2458
  store %struct.thermal_zone_device* %2, %struct.thermal_zone_device** %retval, align 8, !dbg !2459
  br label %return, !dbg !2459

if.end:                                           ; preds = %entry
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2460
  %tobool3 = icmp ne %struct.device* %3, null, !dbg !2460
  br i1 %tobool3, label %lor.lhs.false, label %if.then5, !dbg !2462

lor.lhs.false:                                    ; preds = %if.end
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2463
  %of_node = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 23, !dbg !2464
  %5 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !2464
  %tobool4 = icmp ne %struct.device_node* %5, null, !dbg !2463
  br i1 %tobool4, label %if.end7, label %if.then5, !dbg !2465

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  %6 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2466
  call void @of_node_put(%struct.device_node* %6) #8, !dbg !2468
  %call6 = call i8* @ERR_PTR(i64 -19) #8, !dbg !2469
  %7 = bitcast i8* %call6 to %struct.thermal_zone_device*, !dbg !2469
  store %struct.thermal_zone_device* %7, %struct.thermal_zone_device** %retval, align 8, !dbg !2470
  br label %return, !dbg !2470

if.end7:                                          ; preds = %lor.lhs.false
  %8 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2471
  %of_node8 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 23, !dbg !2472
  %9 = load %struct.device_node*, %struct.device_node** %of_node8, align 8, !dbg !2472
  %call9 = call %struct.device_node* @of_node_get(%struct.device_node* %9) #8, !dbg !2473
  store %struct.device_node* %call9, %struct.device_node** %sensor_np, align 8, !dbg !2474
  %10 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2475
  %call10 = call %struct.device_node* @of_get_next_available_child(%struct.device_node* %10, %struct.device_node* null) #8, !dbg !2475
  store %struct.device_node* %call10, %struct.device_node** %child, align 8, !dbg !2475
  br label %for.cond, !dbg !2475

for.cond:                                         ; preds = %for.inc, %if.end7
  %11 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !2477
  %cmp = icmp ne %struct.device_node* %11, null, !dbg !2477
  br i1 %cmp, label %for.body, label %for.end, !dbg !2475

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2479, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.declare(metadata i32* %id, metadata !2482, metadata !DIExpression()), !dbg !2483
  %12 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !2484
  %13 = load %struct.device_node*, %struct.device_node** %sensor_np, align 8, !dbg !2485
  %call11 = call i32 @thermal_zone_of_get_sensor_id(%struct.device_node* %12, %struct.device_node* %13, i32* %id) #8, !dbg !2486
  store i32 %call11, i32* %ret, align 4, !dbg !2487
  %14 = load i32, i32* %ret, align 4, !dbg !2488
  %tobool12 = icmp ne i32 %14, 0, !dbg !2488
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !2490

if.then13:                                        ; preds = %for.body
  br label %for.inc, !dbg !2491

if.end14:                                         ; preds = %for.body
  %15 = load i32, i32* %id, align 4, !dbg !2492
  %16 = load i32, i32* %sensor_id.addr, align 4, !dbg !2494
  %cmp15 = icmp eq i32 %15, %16, !dbg !2495
  br i1 %cmp15, label %if.then16, label %if.end22, !dbg !2496

if.then16:                                        ; preds = %if.end14
  %17 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !2497
  %18 = load %struct.device_node*, %struct.device_node** %sensor_np, align 8, !dbg !2499
  %19 = load i8*, i8** %data.addr, align 8, !dbg !2500
  %20 = load %struct.thermal_zone_of_device_ops*, %struct.thermal_zone_of_device_ops** %ops.addr, align 8, !dbg !2501
  %call17 = call %struct.thermal_zone_device* @thermal_zone_of_add_sensor(%struct.device_node* %17, %struct.device_node* %18, i8* %19, %struct.thermal_zone_of_device_ops* %20) #8, !dbg !2502
  store %struct.thermal_zone_device* %call17, %struct.thermal_zone_device** %tzd, align 8, !dbg !2503
  %21 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzd, align 8, !dbg !2504
  %22 = bitcast %struct.thermal_zone_device* %21 to i8*, !dbg !2504
  %call18 = call zeroext i1 @IS_ERR(i8* %22) #8, !dbg !2506
  br i1 %call18, label %if.end21, label %if.then19, !dbg !2507

if.then19:                                        ; preds = %if.then16
  %23 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzd, align 8, !dbg !2508
  %call20 = call i32 @thermal_zone_device_enable(%struct.thermal_zone_device* %23) #8, !dbg !2509
  br label %if.end21, !dbg !2509

if.end21:                                         ; preds = %if.then19, %if.then16
  %24 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !2510
  call void @of_node_put(%struct.device_node* %24) #8, !dbg !2511
  br label %exit, !dbg !2512

if.end22:                                         ; preds = %if.end14
  br label %for.inc, !dbg !2513

for.inc:                                          ; preds = %if.end22, %if.then13
  %25 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2477
  %26 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !2477
  %call23 = call %struct.device_node* @of_get_next_available_child(%struct.device_node* %25, %struct.device_node* %26) #8, !dbg !2477
  store %struct.device_node* %call23, %struct.device_node** %child, align 8, !dbg !2477
  br label %for.cond, !dbg !2477, !llvm.loop !2514

for.end:                                          ; preds = %for.cond
  br label %exit, !dbg !2515

exit:                                             ; preds = %for.end, %if.end21
  call void @llvm.dbg.label(metadata !2516), !dbg !2517
  %27 = load %struct.device_node*, %struct.device_node** %sensor_np, align 8, !dbg !2518
  call void @of_node_put(%struct.device_node* %27) #8, !dbg !2519
  %28 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2520
  call void @of_node_put(%struct.device_node* %28) #8, !dbg !2521
  %29 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzd, align 8, !dbg !2522
  store %struct.thermal_zone_device* %29, %struct.thermal_zone_device** %retval, align 8, !dbg !2523
  br label %return, !dbg !2523

return:                                           ; preds = %exit, %if.then5, %if.then
  %30 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %retval, align 8, !dbg !2524
  ret %struct.thermal_zone_device* %30, !dbg !2524
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !2525 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !2528, metadata !DIExpression()), !dbg !2529
  %0 = load i64, i64* %error.addr, align 8, !dbg !2530
  %1 = inttoptr i64 %0 to i8*, !dbg !2531
  ret i8* %1, !dbg !2532
}

; Function Attrs: noredzone
declare dso_local %struct.device_node* @of_find_node_by_name(%struct.device_node*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @of_node_get(%struct.device_node* %node) #0 !dbg !2533 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !2536, metadata !DIExpression()), !dbg !2537
  %0 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !2538
  ret %struct.device_node* %0, !dbg !2539
}

; Function Attrs: noredzone
declare dso_local %struct.device_node* @of_get_next_available_child(%struct.device_node*, %struct.device_node*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.thermal_zone_device* @thermal_zone_of_add_sensor(%struct.device_node* %zone, %struct.device_node* %sensor, i8* %data, %struct.thermal_zone_of_device_ops* %ops) #0 !dbg !2540 {
entry:
  %retval = alloca %struct.thermal_zone_device*, align 8
  %zone.addr = alloca %struct.device_node*, align 8
  %sensor.addr = alloca %struct.device_node*, align 8
  %data.addr = alloca i8*, align 8
  %ops.addr = alloca %struct.thermal_zone_of_device_ops*, align 8
  %tzd = alloca %struct.thermal_zone_device*, align 8
  %tz = alloca %struct.__thermal_zone*, align 8
  store %struct.device_node* %zone, %struct.device_node** %zone.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %zone.addr, metadata !2543, metadata !DIExpression()), !dbg !2544
  store %struct.device_node* %sensor, %struct.device_node** %sensor.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %sensor.addr, metadata !2545, metadata !DIExpression()), !dbg !2546
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2547, metadata !DIExpression()), !dbg !2548
  store %struct.thermal_zone_of_device_ops* %ops, %struct.thermal_zone_of_device_ops** %ops.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_of_device_ops** %ops.addr, metadata !2549, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tzd, metadata !2551, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.declare(metadata %struct.__thermal_zone** %tz, metadata !2553, metadata !DIExpression()), !dbg !2554
  %0 = load %struct.device_node*, %struct.device_node** %zone.addr, align 8, !dbg !2555
  %name = getelementptr inbounds %struct.device_node, %struct.device_node* %0, i32 0, i32 0, !dbg !2556
  %1 = load i8*, i8** %name, align 8, !dbg !2556
  %call = call %struct.thermal_zone_device* @thermal_zone_get_zone_by_name(i8* %1) #8, !dbg !2557
  store %struct.thermal_zone_device* %call, %struct.thermal_zone_device** %tzd, align 8, !dbg !2558
  %2 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzd, align 8, !dbg !2559
  %3 = bitcast %struct.thermal_zone_device* %2 to i8*, !dbg !2559
  %call1 = call zeroext i1 @IS_ERR(i8* %3) #8, !dbg !2561
  br i1 %call1, label %if.then, label %if.end, !dbg !2562

if.then:                                          ; preds = %entry
  %call2 = call i8* @ERR_PTR(i64 -517) #8, !dbg !2563
  %4 = bitcast i8* %call2 to %struct.thermal_zone_device*, !dbg !2563
  store %struct.thermal_zone_device* %4, %struct.thermal_zone_device** %retval, align 8, !dbg !2564
  br label %return, !dbg !2564

if.end:                                           ; preds = %entry
  %5 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzd, align 8, !dbg !2565
  %devdata = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %5, i32 0, i32 8, !dbg !2566
  %6 = load i8*, i8** %devdata, align 8, !dbg !2566
  %7 = bitcast i8* %6 to %struct.__thermal_zone*, !dbg !2565
  store %struct.__thermal_zone* %7, %struct.__thermal_zone** %tz, align 8, !dbg !2567
  %8 = load %struct.thermal_zone_of_device_ops*, %struct.thermal_zone_of_device_ops** %ops.addr, align 8, !dbg !2568
  %tobool = icmp ne %struct.thermal_zone_of_device_ops* %8, null, !dbg !2568
  br i1 %tobool, label %if.end5, label %if.then3, !dbg !2570

if.then3:                                         ; preds = %if.end
  %call4 = call i8* @ERR_PTR(i64 -22) #8, !dbg !2571
  %9 = bitcast i8* %call4 to %struct.thermal_zone_device*, !dbg !2571
  store %struct.thermal_zone_device* %9, %struct.thermal_zone_device** %retval, align 8, !dbg !2572
  br label %return, !dbg !2572

if.end5:                                          ; preds = %if.end
  %10 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzd, align 8, !dbg !2573
  %lock = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %10, i32 0, i32 27, !dbg !2574
  call void @mutex_lock(%struct.mutex* %lock) #8, !dbg !2575
  %11 = load %struct.thermal_zone_of_device_ops*, %struct.thermal_zone_of_device_ops** %ops.addr, align 8, !dbg !2576
  %12 = load %struct.__thermal_zone*, %struct.__thermal_zone** %tz, align 8, !dbg !2577
  %ops6 = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %12, i32 0, i32 9, !dbg !2578
  store %struct.thermal_zone_of_device_ops* %11, %struct.thermal_zone_of_device_ops** %ops6, align 8, !dbg !2579
  %13 = load i8*, i8** %data.addr, align 8, !dbg !2580
  %14 = load %struct.__thermal_zone*, %struct.__thermal_zone** %tz, align 8, !dbg !2581
  %sensor_data = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %14, i32 0, i32 8, !dbg !2582
  store i8* %13, i8** %sensor_data, align 8, !dbg !2583
  %15 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzd, align 8, !dbg !2584
  %ops7 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %15, i32 0, i32 21, !dbg !2585
  %16 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %ops7, align 8, !dbg !2585
  %get_temp = getelementptr inbounds %struct.thermal_zone_device_ops, %struct.thermal_zone_device_ops* %16, i32 0, i32 2, !dbg !2586
  store i32 (%struct.thermal_zone_device*, i32*)* @of_thermal_get_temp, i32 (%struct.thermal_zone_device*, i32*)** %get_temp, align 8, !dbg !2587
  %17 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzd, align 8, !dbg !2588
  %ops8 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %17, i32 0, i32 21, !dbg !2589
  %18 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %ops8, align 8, !dbg !2589
  %get_trend = getelementptr inbounds %struct.thermal_zone_device_ops, %struct.thermal_zone_device_ops* %18, i32 0, i32 12, !dbg !2590
  store i32 (%struct.thermal_zone_device*, i32, i32*)* @of_thermal_get_trend, i32 (%struct.thermal_zone_device*, i32, i32*)** %get_trend, align 8, !dbg !2591
  %19 = load %struct.thermal_zone_of_device_ops*, %struct.thermal_zone_of_device_ops** %ops.addr, align 8, !dbg !2592
  %set_trips = getelementptr inbounds %struct.thermal_zone_of_device_ops, %struct.thermal_zone_of_device_ops* %19, i32 0, i32 2, !dbg !2594
  %20 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %set_trips, align 8, !dbg !2594
  %tobool9 = icmp ne i32 (i8*, i32, i32)* %20, null, !dbg !2592
  br i1 %tobool9, label %if.then10, label %if.end13, !dbg !2595

if.then10:                                        ; preds = %if.end5
  %21 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzd, align 8, !dbg !2596
  %ops11 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %21, i32 0, i32 21, !dbg !2597
  %22 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %ops11, align 8, !dbg !2597
  %set_trips12 = getelementptr inbounds %struct.thermal_zone_device_ops, %struct.thermal_zone_device_ops* %22, i32 0, i32 3, !dbg !2598
  store i32 (%struct.thermal_zone_device*, i32, i32)* @of_thermal_set_trips, i32 (%struct.thermal_zone_device*, i32, i32)** %set_trips12, align 8, !dbg !2599
  br label %if.end13, !dbg !2596

if.end13:                                         ; preds = %if.then10, %if.end5
  %23 = load %struct.thermal_zone_of_device_ops*, %struct.thermal_zone_of_device_ops** %ops.addr, align 8, !dbg !2600
  %set_emul_temp = getelementptr inbounds %struct.thermal_zone_of_device_ops, %struct.thermal_zone_of_device_ops* %23, i32 0, i32 3, !dbg !2602
  %24 = load i32 (i8*, i32)*, i32 (i8*, i32)** %set_emul_temp, align 8, !dbg !2602
  %tobool14 = icmp ne i32 (i8*, i32)* %24, null, !dbg !2600
  br i1 %tobool14, label %if.then15, label %if.end18, !dbg !2603

if.then15:                                        ; preds = %if.end13
  %25 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzd, align 8, !dbg !2604
  %ops16 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %25, i32 0, i32 21, !dbg !2605
  %26 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %ops16, align 8, !dbg !2605
  %set_emul_temp17 = getelementptr inbounds %struct.thermal_zone_device_ops, %struct.thermal_zone_device_ops* %26, i32 0, i32 11, !dbg !2606
  store i32 (%struct.thermal_zone_device*, i32)* @of_thermal_set_emul_temp, i32 (%struct.thermal_zone_device*, i32)** %set_emul_temp17, align 8, !dbg !2607
  br label %if.end18, !dbg !2604

if.end18:                                         ; preds = %if.then15, %if.end13
  %27 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzd, align 8, !dbg !2608
  %lock19 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %27, i32 0, i32 27, !dbg !2609
  call void @mutex_unlock(%struct.mutex* %lock19) #8, !dbg !2610
  %28 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzd, align 8, !dbg !2611
  store %struct.thermal_zone_device* %28, %struct.thermal_zone_device** %retval, align 8, !dbg !2612
  br label %return, !dbg !2612

return:                                           ; preds = %if.end18, %if.then3, %if.then
  %29 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %retval, align 8, !dbg !2613
  ret %struct.thermal_zone_device* %29, !dbg !2613
}

; Function Attrs: noredzone
declare dso_local i32 @thermal_zone_device_enable(%struct.thermal_zone_device*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @thermal_zone_of_sensor_unregister(%struct.device* %dev, %struct.thermal_zone_device* %tzd) #0 !dbg !2614 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %tzd.addr = alloca %struct.thermal_zone_device*, align 8
  %tz = alloca %struct.__thermal_zone*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2617, metadata !DIExpression()), !dbg !2618
  store %struct.thermal_zone_device* %tzd, %struct.thermal_zone_device** %tzd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tzd.addr, metadata !2619, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.declare(metadata %struct.__thermal_zone** %tz, metadata !2621, metadata !DIExpression()), !dbg !2622
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2623
  %tobool = icmp ne %struct.device* %0, null, !dbg !2623
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2625

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzd.addr, align 8, !dbg !2626
  %tobool1 = icmp ne %struct.thermal_zone_device* %1, null, !dbg !2626
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !2627

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzd.addr, align 8, !dbg !2628
  %devdata = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %2, i32 0, i32 8, !dbg !2629
  %3 = load i8*, i8** %devdata, align 8, !dbg !2629
  %tobool3 = icmp ne i8* %3, null, !dbg !2628
  br i1 %tobool3, label %if.end, label %if.then, !dbg !2630

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  br label %return, !dbg !2631

if.end:                                           ; preds = %lor.lhs.false2
  %4 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzd.addr, align 8, !dbg !2632
  %devdata4 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %4, i32 0, i32 8, !dbg !2633
  %5 = load i8*, i8** %devdata4, align 8, !dbg !2633
  %6 = bitcast i8* %5 to %struct.__thermal_zone*, !dbg !2632
  store %struct.__thermal_zone* %6, %struct.__thermal_zone** %tz, align 8, !dbg !2634
  %7 = load %struct.__thermal_zone*, %struct.__thermal_zone** %tz, align 8, !dbg !2635
  %tobool5 = icmp ne %struct.__thermal_zone* %7, null, !dbg !2635
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !2637

if.then6:                                         ; preds = %if.end
  br label %return, !dbg !2638

if.end7:                                          ; preds = %if.end
  %8 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzd.addr, align 8, !dbg !2639
  %lock = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %8, i32 0, i32 27, !dbg !2640
  call void @mutex_lock(%struct.mutex* %lock) #8, !dbg !2641
  %9 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzd.addr, align 8, !dbg !2642
  %ops = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %9, i32 0, i32 21, !dbg !2643
  %10 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %ops, align 8, !dbg !2643
  %get_temp = getelementptr inbounds %struct.thermal_zone_device_ops, %struct.thermal_zone_device_ops* %10, i32 0, i32 2, !dbg !2644
  store i32 (%struct.thermal_zone_device*, i32*)* null, i32 (%struct.thermal_zone_device*, i32*)** %get_temp, align 8, !dbg !2645
  %11 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzd.addr, align 8, !dbg !2646
  %ops8 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %11, i32 0, i32 21, !dbg !2647
  %12 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %ops8, align 8, !dbg !2647
  %get_trend = getelementptr inbounds %struct.thermal_zone_device_ops, %struct.thermal_zone_device_ops* %12, i32 0, i32 12, !dbg !2648
  store i32 (%struct.thermal_zone_device*, i32, i32*)* null, i32 (%struct.thermal_zone_device*, i32, i32*)** %get_trend, align 8, !dbg !2649
  %13 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzd.addr, align 8, !dbg !2650
  %ops9 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %13, i32 0, i32 21, !dbg !2651
  %14 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %ops9, align 8, !dbg !2651
  %set_emul_temp = getelementptr inbounds %struct.thermal_zone_device_ops, %struct.thermal_zone_device_ops* %14, i32 0, i32 11, !dbg !2652
  store i32 (%struct.thermal_zone_device*, i32)* null, i32 (%struct.thermal_zone_device*, i32)** %set_emul_temp, align 8, !dbg !2653
  %15 = load %struct.__thermal_zone*, %struct.__thermal_zone** %tz, align 8, !dbg !2654
  %ops10 = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %15, i32 0, i32 9, !dbg !2655
  store %struct.thermal_zone_of_device_ops* null, %struct.thermal_zone_of_device_ops** %ops10, align 8, !dbg !2656
  %16 = load %struct.__thermal_zone*, %struct.__thermal_zone** %tz, align 8, !dbg !2657
  %sensor_data = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %16, i32 0, i32 8, !dbg !2658
  store i8* null, i8** %sensor_data, align 8, !dbg !2659
  %17 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzd.addr, align 8, !dbg !2660
  %lock11 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %17, i32 0, i32 27, !dbg !2661
  call void @mutex_unlock(%struct.mutex* %lock11) #8, !dbg !2662
  br label %return, !dbg !2663

return:                                           ; preds = %if.end7, %if.then6, %if.then
  ret void, !dbg !2663
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.thermal_zone_device* @devm_thermal_zone_of_sensor_register(%struct.device* %dev, i32 %sensor_id, i8* %data, %struct.thermal_zone_of_device_ops* %ops) #0 !dbg !2664 {
entry:
  %retval = alloca %struct.thermal_zone_device*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %sensor_id.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %ops.addr = alloca %struct.thermal_zone_of_device_ops*, align 8
  %ptr = alloca %struct.thermal_zone_device**, align 8
  %tzd = alloca %struct.thermal_zone_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2665, metadata !DIExpression()), !dbg !2666
  store i32 %sensor_id, i32* %sensor_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sensor_id.addr, metadata !2667, metadata !DIExpression()), !dbg !2668
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2669, metadata !DIExpression()), !dbg !2670
  store %struct.thermal_zone_of_device_ops* %ops, %struct.thermal_zone_of_device_ops** %ops.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_of_device_ops** %ops.addr, metadata !2671, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device*** %ptr, metadata !2673, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tzd, metadata !2675, metadata !DIExpression()), !dbg !2676
  %call = call i8* @devres_alloc(void (%struct.device*, i8*)* @devm_thermal_zone_of_sensor_release, i64 8, i32 3264) #8, !dbg !2677
  %0 = bitcast i8* %call to %struct.thermal_zone_device**, !dbg !2677
  store %struct.thermal_zone_device** %0, %struct.thermal_zone_device*** %ptr, align 8, !dbg !2678
  %1 = load %struct.thermal_zone_device**, %struct.thermal_zone_device*** %ptr, align 8, !dbg !2679
  %tobool = icmp ne %struct.thermal_zone_device** %1, null, !dbg !2679
  br i1 %tobool, label %if.end, label %if.then, !dbg !2681

if.then:                                          ; preds = %entry
  %call1 = call i8* @ERR_PTR(i64 -12) #8, !dbg !2682
  %2 = bitcast i8* %call1 to %struct.thermal_zone_device*, !dbg !2682
  store %struct.thermal_zone_device* %2, %struct.thermal_zone_device** %retval, align 8, !dbg !2683
  br label %return, !dbg !2683

if.end:                                           ; preds = %entry
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2684
  %4 = load i32, i32* %sensor_id.addr, align 4, !dbg !2685
  %5 = load i8*, i8** %data.addr, align 8, !dbg !2686
  %6 = load %struct.thermal_zone_of_device_ops*, %struct.thermal_zone_of_device_ops** %ops.addr, align 8, !dbg !2687
  %call2 = call %struct.thermal_zone_device* @thermal_zone_of_sensor_register(%struct.device* %3, i32 %4, i8* %5, %struct.thermal_zone_of_device_ops* %6) #8, !dbg !2688
  store %struct.thermal_zone_device* %call2, %struct.thermal_zone_device** %tzd, align 8, !dbg !2689
  %7 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzd, align 8, !dbg !2690
  %8 = bitcast %struct.thermal_zone_device* %7 to i8*, !dbg !2690
  %call3 = call zeroext i1 @IS_ERR(i8* %8) #8, !dbg !2692
  br i1 %call3, label %if.then4, label %if.end5, !dbg !2693

if.then4:                                         ; preds = %if.end
  %9 = load %struct.thermal_zone_device**, %struct.thermal_zone_device*** %ptr, align 8, !dbg !2694
  %10 = bitcast %struct.thermal_zone_device** %9 to i8*, !dbg !2694
  call void @devres_free(i8* %10) #8, !dbg !2696
  %11 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzd, align 8, !dbg !2697
  store %struct.thermal_zone_device* %11, %struct.thermal_zone_device** %retval, align 8, !dbg !2698
  br label %return, !dbg !2698

if.end5:                                          ; preds = %if.end
  %12 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzd, align 8, !dbg !2699
  %13 = load %struct.thermal_zone_device**, %struct.thermal_zone_device*** %ptr, align 8, !dbg !2700
  store %struct.thermal_zone_device* %12, %struct.thermal_zone_device** %13, align 8, !dbg !2701
  %14 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2702
  %15 = load %struct.thermal_zone_device**, %struct.thermal_zone_device*** %ptr, align 8, !dbg !2703
  %16 = bitcast %struct.thermal_zone_device** %15 to i8*, !dbg !2703
  call void @devres_add(%struct.device* %14, i8* %16) #8, !dbg !2704
  %17 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzd, align 8, !dbg !2705
  store %struct.thermal_zone_device* %17, %struct.thermal_zone_device** %retval, align 8, !dbg !2706
  br label %return, !dbg !2706

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %18 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %retval, align 8, !dbg !2707
  ret %struct.thermal_zone_device* %18, !dbg !2707
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devres_alloc(void (%struct.device*, i8*)* %release, i64 %size, i32 %gfp) #0 !dbg !2708 {
entry:
  %release.addr = alloca void (%struct.device*, i8*)*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store void (%struct.device*, i8*)* %release, void (%struct.device*, i8*)** %release.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.device*, i8*)** %release.addr, metadata !2715, metadata !DIExpression()), !dbg !2716
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2717, metadata !DIExpression()), !dbg !2718
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !2719, metadata !DIExpression()), !dbg !2720
  %0 = load void (%struct.device*, i8*)*, void (%struct.device*, i8*)** %release.addr, align 8, !dbg !2721
  %1 = load i64, i64* %size.addr, align 8, !dbg !2722
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !2723
  %call = call noalias i8* @devres_alloc_node(void (%struct.device*, i8*)* %0, i64 %1, i32 %2, i32 -1) #8, !dbg !2724
  ret i8* %call, !dbg !2725
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @devm_thermal_zone_of_sensor_release(%struct.device* %dev, i8* %res) #0 !dbg !2726 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %res.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2727, metadata !DIExpression()), !dbg !2728
  store i8* %res, i8** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %res.addr, metadata !2729, metadata !DIExpression()), !dbg !2730
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2731
  %1 = load i8*, i8** %res.addr, align 8, !dbg !2732
  %2 = bitcast i8* %1 to %struct.thermal_zone_device**, !dbg !2733
  %3 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %2, align 8, !dbg !2734
  call void @thermal_zone_of_sensor_unregister(%struct.device* %0, %struct.thermal_zone_device* %3) #8, !dbg !2735
  ret void, !dbg !2736
}

; Function Attrs: noredzone
declare dso_local void @devres_free(i8*) #2

; Function Attrs: noredzone
declare dso_local void @devres_add(%struct.device*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @devm_thermal_zone_of_sensor_unregister(%struct.device* %dev, %struct.thermal_zone_device* %tzd) #0 !dbg !2737 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %tzd.addr = alloca %struct.thermal_zone_device*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2738, metadata !DIExpression()), !dbg !2739
  store %struct.thermal_zone_device* %tzd, %struct.thermal_zone_device** %tzd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tzd.addr, metadata !2740, metadata !DIExpression()), !dbg !2741
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !2742, metadata !DIExpression()), !dbg !2744
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2744
  %1 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzd.addr, align 8, !dbg !2744
  %2 = bitcast %struct.thermal_zone_device* %1 to i8*, !dbg !2744
  %call = call i32 @devres_release(%struct.device* %0, void (%struct.device*, i8*)* @devm_thermal_zone_of_sensor_release, i32 (%struct.device*, i8*, i8*)* @devm_thermal_zone_of_sensor_match, i8* %2) #8, !dbg !2744
  %tobool = icmp ne i32 %call, 0, !dbg !2744
  %lnot = xor i1 %tobool, true, !dbg !2744
  %lnot1 = xor i1 %lnot, true, !dbg !2744
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2744
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !2744
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !2745
  %tobool2 = icmp ne i32 %3, 0, !dbg !2745
  %lnot3 = xor i1 %tobool2, true, !dbg !2745
  %lnot5 = xor i1 %lnot3, true, !dbg !2745
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !2745
  %conv = sext i32 %lnot.ext6 to i64, !dbg !2745
  %tobool7 = icmp ne i64 %conv, 0, !dbg !2745
  br i1 %tobool7, label %if.then, label %if.end, !dbg !2744

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2745

do.body:                                          ; preds = %if.then
  br label %do.body8, !dbg !2747

do.body8:                                         ; preds = %do.body
  br label %do.end, !dbg !2749

do.end:                                           ; preds = %do.body8
  br label %do.body9, !dbg !2747

do.body9:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 650, i32 2305, i64 12) #10, !dbg !2751, !srcloc !2753
  br label %do.end10, !dbg !2751

do.end10:                                         ; preds = %do.body9
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 158) #10, !dbg !2754, !srcloc !2756
  br label %do.body11, !dbg !2747

do.body11:                                        ; preds = %do.end10
  br label %do.end12, !dbg !2757

do.end12:                                         ; preds = %do.body11
  br label %do.end13, !dbg !2747

do.end13:                                         ; preds = %do.end12
  br label %if.end, !dbg !2747

if.end:                                           ; preds = %do.end13, %entry
  %4 = load i32, i32* %__ret_warn_on, align 4, !dbg !2744
  %tobool14 = icmp ne i32 %4, 0, !dbg !2744
  %lnot15 = xor i1 %tobool14, true, !dbg !2744
  %lnot17 = xor i1 %lnot15, true, !dbg !2744
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !2744
  %conv19 = sext i32 %lnot.ext18 to i64, !dbg !2744
  store i64 %conv19, i64* %tmp, align 8, !dbg !2745
  %5 = load i64, i64* %tmp, align 8, !dbg !2744
  ret void, !dbg !2759
}

; Function Attrs: noredzone
declare dso_local i32 @devres_release(%struct.device*, void (%struct.device*, i8*)*, i32 (%struct.device*, i8*, i8*)*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @devm_thermal_zone_of_sensor_match(%struct.device* %dev, i8* %res, i8* %data) #0 !dbg !2760 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %res.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %r = alloca %struct.thermal_zone_device**, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2763, metadata !DIExpression()), !dbg !2764
  store i8* %res, i8** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %res.addr, metadata !2765, metadata !DIExpression()), !dbg !2766
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2767, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device*** %r, metadata !2769, metadata !DIExpression()), !dbg !2770
  %0 = load i8*, i8** %res.addr, align 8, !dbg !2771
  %1 = bitcast i8* %0 to %struct.thermal_zone_device**, !dbg !2771
  store %struct.thermal_zone_device** %1, %struct.thermal_zone_device*** %r, align 8, !dbg !2770
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !2772, metadata !DIExpression()), !dbg !2775
  %2 = load %struct.thermal_zone_device**, %struct.thermal_zone_device*** %r, align 8, !dbg !2775
  %tobool = icmp ne %struct.thermal_zone_device** %2, null, !dbg !2775
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !2775

lor.rhs:                                          ; preds = %entry
  %3 = load %struct.thermal_zone_device**, %struct.thermal_zone_device*** %r, align 8, !dbg !2775
  %4 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8, !dbg !2775
  %tobool1 = icmp ne %struct.thermal_zone_device* %4, null, !dbg !2775
  %lnot = xor i1 %tobool1, true, !dbg !2775
  br label %lor.end, !dbg !2775

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %lnot, %lor.rhs ]
  %lnot2 = xor i1 %5, true, !dbg !2775
  %lnot3 = xor i1 %lnot2, true, !dbg !2775
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !2775
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !2775
  %6 = load i32, i32* %__ret_warn_on, align 4, !dbg !2776
  %tobool4 = icmp ne i32 %6, 0, !dbg !2776
  %lnot5 = xor i1 %tobool4, true, !dbg !2776
  %lnot7 = xor i1 %lnot5, true, !dbg !2776
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !2776
  %conv = sext i32 %lnot.ext8 to i64, !dbg !2776
  %tobool9 = icmp ne i64 %conv, 0, !dbg !2776
  br i1 %tobool9, label %if.then, label %if.end, !dbg !2775

if.then:                                          ; preds = %lor.end
  br label %do.body, !dbg !2776

do.body:                                          ; preds = %if.then
  br label %do.body10, !dbg !2778

do.body10:                                        ; preds = %do.body
  br label %do.end, !dbg !2780

do.end:                                           ; preds = %do.body10
  br label %do.body11, !dbg !2778

do.body11:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 584, i32 2305, i64 12) #10, !dbg !2782, !srcloc !2784
  br label %do.end12, !dbg !2782

do.end12:                                         ; preds = %do.body11
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 157) #10, !dbg !2785, !srcloc !2787
  br label %do.body13, !dbg !2778

do.body13:                                        ; preds = %do.end12
  br label %do.end14, !dbg !2788

do.end14:                                         ; preds = %do.body13
  br label %do.end15, !dbg !2778

do.end15:                                         ; preds = %do.end14
  br label %if.end, !dbg !2778

if.end:                                           ; preds = %do.end15, %lor.end
  %7 = load i32, i32* %__ret_warn_on, align 4, !dbg !2775
  %tobool16 = icmp ne i32 %7, 0, !dbg !2775
  %lnot17 = xor i1 %tobool16, true, !dbg !2775
  %lnot19 = xor i1 %lnot17, true, !dbg !2775
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !2775
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !2775
  store i64 %conv21, i64* %tmp, align 8, !dbg !2776
  %8 = load i64, i64* %tmp, align 8, !dbg !2775
  %tobool22 = icmp ne i64 %8, 0, !dbg !2790
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !2791

if.then23:                                        ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !2792
  br label %return, !dbg !2792

if.end24:                                         ; preds = %if.end
  %9 = load %struct.thermal_zone_device**, %struct.thermal_zone_device*** %r, align 8, !dbg !2793
  %10 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %9, align 8, !dbg !2794
  %11 = load i8*, i8** %data.addr, align 8, !dbg !2795
  %12 = bitcast i8* %11 to %struct.thermal_zone_device*, !dbg !2795
  %cmp = icmp eq %struct.thermal_zone_device* %10, %12, !dbg !2796
  %conv25 = zext i1 %cmp to i32, !dbg !2796
  store i32 %conv25, i32* %retval, align 4, !dbg !2797
  br label %return, !dbg !2797

return:                                           ; preds = %if.end24, %if.then23
  %13 = load i32, i32* %retval, align 4, !dbg !2798
  ret i32 %13, !dbg !2798
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local i32 @of_parse_thermal_zones() #4 section ".init.text" !dbg !2799 {
entry:
  %retval = alloca i32, align 4
  %np = alloca %struct.device_node*, align 8
  %child = alloca %struct.device_node*, align 8
  %tz = alloca %struct.__thermal_zone*, align 8
  %ops = alloca %struct.thermal_zone_device_ops*, align 8
  %tmp = alloca i32, align 4
  %zone = alloca %struct.thermal_zone_device*, align 8
  %tzp = alloca %struct.thermal_zone_params*, align 8
  %i = alloca i32, align 4
  %mask = alloca i32, align 4
  %prop = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.device_node** %np, metadata !2802, metadata !DIExpression()), !dbg !2803
  call void @llvm.dbg.declare(metadata %struct.device_node** %child, metadata !2804, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.declare(metadata %struct.__thermal_zone** %tz, metadata !2806, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device_ops** %ops, metadata !2808, metadata !DIExpression()), !dbg !2809
  %call = call %struct.device_node* @of_find_node_by_name(%struct.device_node* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !2810
  store %struct.device_node* %call, %struct.device_node** %np, align 8, !dbg !2811
  %0 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2812
  %tobool = icmp ne %struct.device_node* %0, null, !dbg !2812
  br i1 %tobool, label %if.end, label %if.then, !dbg !2814

if.then:                                          ; preds = %entry
  store i32 0, i32* %tmp, align 4, !dbg !2815
  %1 = load i32, i32* %tmp, align 4, !dbg !2819
  store i32 0, i32* %retval, align 4, !dbg !2820
  br label %return, !dbg !2820

if.end:                                           ; preds = %entry
  %2 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2821
  %call1 = call %struct.device_node* @of_get_next_available_child(%struct.device_node* %2, %struct.device_node* null) #8, !dbg !2821
  store %struct.device_node* %call1, %struct.device_node** %child, align 8, !dbg !2821
  br label %for.cond, !dbg !2821

for.cond:                                         ; preds = %for.inc32, %if.end
  %3 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !2823
  %cmp = icmp ne %struct.device_node* %3, null, !dbg !2823
  br i1 %cmp, label %for.body, label %for.end34, !dbg !2821

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %zone, metadata !2825, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_params** %tzp, metadata !2828, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2830, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.declare(metadata i32* %mask, metadata !2832, metadata !DIExpression()), !dbg !2833
  store i32 0, i32* %mask, align 4, !dbg !2833
  call void @llvm.dbg.declare(metadata i32* %prop, metadata !2834, metadata !DIExpression()), !dbg !2835
  %4 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !2836
  %call2 = call %struct.__thermal_zone* @thermal_of_build_thermal_zone(%struct.device_node* %4) #9, !dbg !2837
  store %struct.__thermal_zone* %call2, %struct.__thermal_zone** %tz, align 8, !dbg !2838
  %5 = load %struct.__thermal_zone*, %struct.__thermal_zone** %tz, align 8, !dbg !2839
  %6 = bitcast %struct.__thermal_zone* %5 to i8*, !dbg !2839
  %call3 = call zeroext i1 @IS_ERR(i8* %6) #8, !dbg !2841
  br i1 %call3, label %if.then4, label %if.end7, !dbg !2842

if.then4:                                         ; preds = %for.body
  %7 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !2843
  %8 = load %struct.__thermal_zone*, %struct.__thermal_zone** %tz, align 8, !dbg !2843
  %9 = bitcast %struct.__thermal_zone* %8 to i8*, !dbg !2843
  %call5 = call i64 @PTR_ERR(i8* %9) #8, !dbg !2843
  %call6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0), %struct.device_node* %7, i64 %call5) #9, !dbg !2843
  br label %for.inc32, !dbg !2845

if.end7:                                          ; preds = %for.body
  %call8 = call i8* @kmemdup(i8* bitcast (%struct.thermal_zone_device_ops* @of_thermal_ops to i8*), i64 112, i32 3264) #8, !dbg !2846
  %10 = bitcast i8* %call8 to %struct.thermal_zone_device_ops*, !dbg !2846
  store %struct.thermal_zone_device_ops* %10, %struct.thermal_zone_device_ops** %ops, align 8, !dbg !2847
  %11 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %ops, align 8, !dbg !2848
  %tobool9 = icmp ne %struct.thermal_zone_device_ops* %11, null, !dbg !2848
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !2850

if.then10:                                        ; preds = %if.end7
  br label %exit_free, !dbg !2851

if.end11:                                         ; preds = %if.end7
  %call12 = call i8* @kzalloc(i64 72, i32 3264) #8, !dbg !2852
  %12 = bitcast i8* %call12 to %struct.thermal_zone_params*, !dbg !2852
  store %struct.thermal_zone_params* %12, %struct.thermal_zone_params** %tzp, align 8, !dbg !2853
  %13 = load %struct.thermal_zone_params*, %struct.thermal_zone_params** %tzp, align 8, !dbg !2854
  %tobool13 = icmp ne %struct.thermal_zone_params* %13, null, !dbg !2854
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !2856

if.then14:                                        ; preds = %if.end11
  %14 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %ops, align 8, !dbg !2857
  %15 = bitcast %struct.thermal_zone_device_ops* %14 to i8*, !dbg !2857
  call void @kfree(i8* %15) #8, !dbg !2859
  br label %exit_free, !dbg !2860

if.end15:                                         ; preds = %if.end11
  %16 = load %struct.thermal_zone_params*, %struct.thermal_zone_params** %tzp, align 8, !dbg !2861
  %no_hwmon = getelementptr inbounds %struct.thermal_zone_params, %struct.thermal_zone_params* %16, i32 0, i32 1, !dbg !2862
  store i8 1, i8* %no_hwmon, align 4, !dbg !2863
  %17 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !2864
  %call16 = call i32 @of_property_read_u32(%struct.device_node* %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32* %prop) #8, !dbg !2866
  %tobool17 = icmp ne i32 %call16, 0, !dbg !2866
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !2867

if.then18:                                        ; preds = %if.end15
  %18 = load i32, i32* %prop, align 4, !dbg !2868
  %19 = load %struct.thermal_zone_params*, %struct.thermal_zone_params** %tzp, align 8, !dbg !2869
  %sustainable_power = getelementptr inbounds %struct.thermal_zone_params, %struct.thermal_zone_params* %19, i32 0, i32 4, !dbg !2870
  store i32 %18, i32* %sustainable_power, align 8, !dbg !2871
  br label %if.end19, !dbg !2869

if.end19:                                         ; preds = %if.then18, %if.end15
  store i32 0, i32* %i, align 4, !dbg !2872
  br label %for.cond20, !dbg !2874

for.cond20:                                       ; preds = %for.inc, %if.end19
  %20 = load i32, i32* %i, align 4, !dbg !2875
  %21 = load %struct.__thermal_zone*, %struct.__thermal_zone** %tz, align 8, !dbg !2877
  %ntrips = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %21, i32 0, i32 4, !dbg !2878
  %22 = load i32, i32* %ntrips, align 8, !dbg !2878
  %cmp21 = icmp slt i32 %20, %22, !dbg !2879
  br i1 %cmp21, label %for.body22, label %for.end, !dbg !2880

for.body22:                                       ; preds = %for.cond20
  %23 = load i32, i32* %i, align 4, !dbg !2881
  %shl = shl i32 1, %23, !dbg !2882
  %24 = load i32, i32* %mask, align 4, !dbg !2883
  %or = or i32 %24, %shl, !dbg !2883
  store i32 %or, i32* %mask, align 4, !dbg !2883
  br label %for.inc, !dbg !2884

for.inc:                                          ; preds = %for.body22
  %25 = load i32, i32* %i, align 4, !dbg !2885
  %inc = add i32 %25, 1, !dbg !2885
  store i32 %inc, i32* %i, align 4, !dbg !2885
  br label %for.cond20, !dbg !2886, !llvm.loop !2887

for.end:                                          ; preds = %for.cond20
  %26 = load %struct.__thermal_zone*, %struct.__thermal_zone** %tz, align 8, !dbg !2889
  %slope = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %26, i32 0, i32 2, !dbg !2890
  %27 = load i32, i32* %slope, align 8, !dbg !2890
  %28 = load %struct.thermal_zone_params*, %struct.thermal_zone_params** %tzp, align 8, !dbg !2891
  %slope23 = getelementptr inbounds %struct.thermal_zone_params, %struct.thermal_zone_params* %28, i32 0, i32 10, !dbg !2892
  store i32 %27, i32* %slope23, align 8, !dbg !2893
  %29 = load %struct.__thermal_zone*, %struct.__thermal_zone** %tz, align 8, !dbg !2894
  %offset = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %29, i32 0, i32 3, !dbg !2895
  %30 = load i32, i32* %offset, align 4, !dbg !2895
  %31 = load %struct.thermal_zone_params*, %struct.thermal_zone_params** %tzp, align 8, !dbg !2896
  %offset24 = getelementptr inbounds %struct.thermal_zone_params, %struct.thermal_zone_params* %31, i32 0, i32 11, !dbg !2897
  store i32 %30, i32* %offset24, align 4, !dbg !2898
  %32 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !2899
  %name = getelementptr inbounds %struct.device_node, %struct.device_node* %32, i32 0, i32 0, !dbg !2900
  %33 = load i8*, i8** %name, align 8, !dbg !2900
  %34 = load %struct.__thermal_zone*, %struct.__thermal_zone** %tz, align 8, !dbg !2901
  %ntrips25 = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %34, i32 0, i32 4, !dbg !2902
  %35 = load i32, i32* %ntrips25, align 8, !dbg !2902
  %36 = load i32, i32* %mask, align 4, !dbg !2903
  %37 = load %struct.__thermal_zone*, %struct.__thermal_zone** %tz, align 8, !dbg !2904
  %38 = bitcast %struct.__thermal_zone* %37 to i8*, !dbg !2904
  %39 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %ops, align 8, !dbg !2905
  %40 = load %struct.thermal_zone_params*, %struct.thermal_zone_params** %tzp, align 8, !dbg !2906
  %41 = load %struct.__thermal_zone*, %struct.__thermal_zone** %tz, align 8, !dbg !2907
  %passive_delay = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %41, i32 0, i32 0, !dbg !2908
  %42 = load i32, i32* %passive_delay, align 8, !dbg !2908
  %43 = load %struct.__thermal_zone*, %struct.__thermal_zone** %tz, align 8, !dbg !2909
  %polling_delay = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %43, i32 0, i32 1, !dbg !2910
  %44 = load i32, i32* %polling_delay, align 4, !dbg !2910
  %call26 = call %struct.thermal_zone_device* @thermal_zone_device_register(i8* %33, i32 %35, i32 %36, i8* %38, %struct.thermal_zone_device_ops* %39, %struct.thermal_zone_params* %40, i32 %42, i32 %44) #8, !dbg !2911
  store %struct.thermal_zone_device* %call26, %struct.thermal_zone_device** %zone, align 8, !dbg !2912
  %45 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %zone, align 8, !dbg !2913
  %46 = bitcast %struct.thermal_zone_device* %45 to i8*, !dbg !2913
  %call27 = call zeroext i1 @IS_ERR(i8* %46) #8, !dbg !2915
  br i1 %call27, label %if.then28, label %if.end31, !dbg !2916

if.then28:                                        ; preds = %for.end
  %47 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !2917
  %48 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %zone, align 8, !dbg !2917
  %49 = bitcast %struct.thermal_zone_device* %48 to i8*, !dbg !2917
  %call29 = call i64 @PTR_ERR(i8* %49) #8, !dbg !2917
  %call30 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), %struct.device_node* %47, i64 %call29) #9, !dbg !2917
  %50 = load %struct.thermal_zone_params*, %struct.thermal_zone_params** %tzp, align 8, !dbg !2919
  %51 = bitcast %struct.thermal_zone_params* %50 to i8*, !dbg !2919
  call void @kfree(i8* %51) #8, !dbg !2920
  %52 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %ops, align 8, !dbg !2921
  %53 = bitcast %struct.thermal_zone_device_ops* %52 to i8*, !dbg !2921
  call void @kfree(i8* %53) #8, !dbg !2922
  %54 = load %struct.__thermal_zone*, %struct.__thermal_zone** %tz, align 8, !dbg !2923
  call void @of_thermal_free_zone(%struct.__thermal_zone* %54) #9, !dbg !2924
  br label %if.end31, !dbg !2925

if.end31:                                         ; preds = %if.then28, %for.end
  br label %for.inc32, !dbg !2926

for.inc32:                                        ; preds = %if.end31, %if.then4
  %55 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2823
  %56 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !2823
  %call33 = call %struct.device_node* @of_get_next_available_child(%struct.device_node* %55, %struct.device_node* %56) #8, !dbg !2823
  store %struct.device_node* %call33, %struct.device_node** %child, align 8, !dbg !2823
  br label %for.cond, !dbg !2823, !llvm.loop !2927

for.end34:                                        ; preds = %for.cond
  %57 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2929
  call void @of_node_put(%struct.device_node* %57) #8, !dbg !2930
  store i32 0, i32* %retval, align 4, !dbg !2931
  br label %return, !dbg !2931

exit_free:                                        ; preds = %if.then14, %if.then10
  call void @llvm.dbg.label(metadata !2932), !dbg !2933
  %58 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !2934
  call void @of_node_put(%struct.device_node* %58) #8, !dbg !2935
  %59 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2936
  call void @of_node_put(%struct.device_node* %59) #8, !dbg !2937
  %60 = load %struct.__thermal_zone*, %struct.__thermal_zone** %tz, align 8, !dbg !2938
  call void @of_thermal_free_zone(%struct.__thermal_zone* %60) #9, !dbg !2939
  call void @of_thermal_destroy_zones() #9, !dbg !2940
  store i32 -12, i32* %retval, align 4, !dbg !2941
  br label %return, !dbg !2941

return:                                           ; preds = %exit_free, %for.end34, %if.then
  %61 = load i32, i32* %retval, align 4, !dbg !2942
  ret i32 %61, !dbg !2942
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal %struct.__thermal_zone* @thermal_of_build_thermal_zone(%struct.device_node* %np) #4 section ".init.text" !dbg !2943 {
entry:
  %retval = alloca %struct.__thermal_zone*, align 8
  %np.addr = alloca %struct.device_node*, align 8
  %child = alloca %struct.device_node*, align 8
  %gchild = alloca %struct.device_node*, align 8
  %tz = alloca %struct.__thermal_zone*, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %prop = alloca i32, align 4
  %coef = alloca [2 x i32], align 4
  %tbp = alloca %struct.__thermal_bind_params*, align 8
  %j = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2946, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.declare(metadata %struct.device_node** %child, metadata !2948, metadata !DIExpression()), !dbg !2949
  store %struct.device_node* null, %struct.device_node** %child, align 8, !dbg !2949
  call void @llvm.dbg.declare(metadata %struct.device_node** %gchild, metadata !2950, metadata !DIExpression()), !dbg !2951
  call void @llvm.dbg.declare(metadata %struct.__thermal_zone** %tz, metadata !2952, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2954, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2956, metadata !DIExpression()), !dbg !2957
  call void @llvm.dbg.declare(metadata i32* %prop, metadata !2958, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.declare(metadata [2 x i32]* %coef, metadata !2960, metadata !DIExpression()), !dbg !2962
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2963
  %tobool = icmp ne %struct.device_node* %0, null, !dbg !2963
  br i1 %tobool, label %if.end, label %if.then, !dbg !2965

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0)) #9, !dbg !2966
  %call1 = call i8* @ERR_PTR(i64 -22) #8, !dbg !2968
  %1 = bitcast i8* %call1 to %struct.__thermal_zone*, !dbg !2968
  store %struct.__thermal_zone* %1, %struct.__thermal_zone** %retval, align 8, !dbg !2969
  br label %return, !dbg !2969

if.end:                                           ; preds = %entry
  %call2 = call i8* @kzalloc(i64 64, i32 3264) #8, !dbg !2970
  %2 = bitcast i8* %call2 to %struct.__thermal_zone*, !dbg !2970
  store %struct.__thermal_zone* %2, %struct.__thermal_zone** %tz, align 8, !dbg !2971
  %3 = load %struct.__thermal_zone*, %struct.__thermal_zone** %tz, align 8, !dbg !2972
  %tobool3 = icmp ne %struct.__thermal_zone* %3, null, !dbg !2972
  br i1 %tobool3, label %if.end6, label %if.then4, !dbg !2974

if.then4:                                         ; preds = %if.end
  %call5 = call i8* @ERR_PTR(i64 -12) #8, !dbg !2975
  %4 = bitcast i8* %call5 to %struct.__thermal_zone*, !dbg !2975
  store %struct.__thermal_zone* %4, %struct.__thermal_zone** %retval, align 8, !dbg !2976
  br label %return, !dbg !2976

if.end6:                                          ; preds = %if.end
  %5 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2977
  %call7 = call i32 @of_property_read_u32(%struct.device_node* %5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32* %prop) #8, !dbg !2978
  store i32 %call7, i32* %ret, align 4, !dbg !2979
  %6 = load i32, i32* %ret, align 4, !dbg !2980
  %cmp = icmp slt i32 %6, 0, !dbg !2982
  br i1 %cmp, label %if.then8, label %if.end10, !dbg !2983

if.then8:                                         ; preds = %if.end6
  %7 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2984
  %call9 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i64 0, i64 0), %struct.device_node* %7) #9, !dbg !2984
  br label %free_tz, !dbg !2986

if.end10:                                         ; preds = %if.end6
  %8 = load i32, i32* %prop, align 4, !dbg !2987
  %9 = load %struct.__thermal_zone*, %struct.__thermal_zone** %tz, align 8, !dbg !2988
  %passive_delay = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %9, i32 0, i32 0, !dbg !2989
  store i32 %8, i32* %passive_delay, align 8, !dbg !2990
  %10 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2991
  %call11 = call i32 @of_property_read_u32(%struct.device_node* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32* %prop) #8, !dbg !2992
  store i32 %call11, i32* %ret, align 4, !dbg !2993
  %11 = load i32, i32* %ret, align 4, !dbg !2994
  %cmp12 = icmp slt i32 %11, 0, !dbg !2996
  br i1 %cmp12, label %if.then13, label %if.end15, !dbg !2997

if.then13:                                        ; preds = %if.end10
  %12 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2998
  %call14 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12, i64 0, i64 0), %struct.device_node* %12) #9, !dbg !2998
  br label %free_tz, !dbg !3000

if.end15:                                         ; preds = %if.end10
  %13 = load i32, i32* %prop, align 4, !dbg !3001
  %14 = load %struct.__thermal_zone*, %struct.__thermal_zone** %tz, align 8, !dbg !3002
  %polling_delay = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %14, i32 0, i32 1, !dbg !3003
  store i32 %13, i32* %polling_delay, align 4, !dbg !3004
  %15 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3005
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %coef, i64 0, i64 0, !dbg !3006
  %call16 = call i32 @of_property_read_u32_array(%struct.device_node* %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i32* %arraydecay, i64 2) #8, !dbg !3007
  store i32 %call16, i32* %ret, align 4, !dbg !3008
  %16 = load i32, i32* %ret, align 4, !dbg !3009
  %cmp17 = icmp eq i32 %16, 0, !dbg !3011
  br i1 %cmp17, label %if.then18, label %if.else, !dbg !3012

if.then18:                                        ; preds = %if.end15
  %arrayidx = getelementptr [2 x i32], [2 x i32]* %coef, i64 0, i64 0, !dbg !3013
  %17 = load i32, i32* %arrayidx, align 4, !dbg !3013
  %18 = load %struct.__thermal_zone*, %struct.__thermal_zone** %tz, align 8, !dbg !3015
  %slope = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %18, i32 0, i32 2, !dbg !3016
  store i32 %17, i32* %slope, align 8, !dbg !3017
  %arrayidx19 = getelementptr [2 x i32], [2 x i32]* %coef, i64 0, i64 1, !dbg !3018
  %19 = load i32, i32* %arrayidx19, align 4, !dbg !3018
  %20 = load %struct.__thermal_zone*, %struct.__thermal_zone** %tz, align 8, !dbg !3019
  %offset = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %20, i32 0, i32 3, !dbg !3020
  store i32 %19, i32* %offset, align 4, !dbg !3021
  br label %if.end22, !dbg !3022

if.else:                                          ; preds = %if.end15
  %21 = load %struct.__thermal_zone*, %struct.__thermal_zone** %tz, align 8, !dbg !3023
  %slope20 = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %21, i32 0, i32 2, !dbg !3025
  store i32 1, i32* %slope20, align 8, !dbg !3026
  %22 = load %struct.__thermal_zone*, %struct.__thermal_zone** %tz, align 8, !dbg !3027
  %offset21 = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %22, i32 0, i32 3, !dbg !3028
  store i32 0, i32* %offset21, align 4, !dbg !3029
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then18
  %23 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3030
  %call23 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0)) #8, !dbg !3031
  store %struct.device_node* %call23, %struct.device_node** %child, align 8, !dbg !3032
  %24 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !3033
  %tobool24 = icmp ne %struct.device_node* %24, null, !dbg !3033
  br i1 %tobool24, label %if.end26, label %if.then25, !dbg !3035

if.then25:                                        ; preds = %if.end22
  br label %finish, !dbg !3036

if.end26:                                         ; preds = %if.end22
  %25 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !3037
  %call27 = call i32 @of_get_child_count(%struct.device_node* %25) #8, !dbg !3038
  %26 = load %struct.__thermal_zone*, %struct.__thermal_zone** %tz, align 8, !dbg !3039
  %ntrips = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %26, i32 0, i32 4, !dbg !3040
  store i32 %call27, i32* %ntrips, align 8, !dbg !3041
  %27 = load %struct.__thermal_zone*, %struct.__thermal_zone** %tz, align 8, !dbg !3042
  %ntrips28 = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %27, i32 0, i32 4, !dbg !3044
  %28 = load i32, i32* %ntrips28, align 8, !dbg !3044
  %cmp29 = icmp eq i32 %28, 0, !dbg !3045
  br i1 %cmp29, label %if.then30, label %if.end31, !dbg !3046

if.then30:                                        ; preds = %if.end26
  br label %finish, !dbg !3047

if.end31:                                         ; preds = %if.end26
  %29 = load %struct.__thermal_zone*, %struct.__thermal_zone** %tz, align 8, !dbg !3048
  %ntrips32 = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %29, i32 0, i32 4, !dbg !3049
  %30 = load i32, i32* %ntrips32, align 8, !dbg !3049
  %conv = sext i32 %30 to i64, !dbg !3048
  %call33 = call i8* @kcalloc(i64 %conv, i64 24, i32 3264) #8, !dbg !3050
  %31 = bitcast i8* %call33 to %struct.thermal_trip*, !dbg !3050
  %32 = load %struct.__thermal_zone*, %struct.__thermal_zone** %tz, align 8, !dbg !3051
  %trips = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %32, i32 0, i32 5, !dbg !3052
  store %struct.thermal_trip* %31, %struct.thermal_trip** %trips, align 8, !dbg !3053
  %33 = load %struct.__thermal_zone*, %struct.__thermal_zone** %tz, align 8, !dbg !3054
  %trips34 = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %33, i32 0, i32 5, !dbg !3056
  %34 = load %struct.thermal_trip*, %struct.thermal_trip** %trips34, align 8, !dbg !3056
  %tobool35 = icmp ne %struct.thermal_trip* %34, null, !dbg !3054
  br i1 %tobool35, label %if.end37, label %if.then36, !dbg !3057

if.then36:                                        ; preds = %if.end31
  store i32 -12, i32* %ret, align 4, !dbg !3058
  br label %free_tz, !dbg !3060

if.end37:                                         ; preds = %if.end31
  store i32 0, i32* %i, align 4, !dbg !3061
  %35 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !3062
  %call38 = call %struct.device_node* @of_get_next_child(%struct.device_node* %35, %struct.device_node* null) #8, !dbg !3062
  store %struct.device_node* %call38, %struct.device_node** %gchild, align 8, !dbg !3062
  br label %for.cond, !dbg !3062

for.cond:                                         ; preds = %for.inc, %if.end37
  %36 = load %struct.device_node*, %struct.device_node** %gchild, align 8, !dbg !3064
  %cmp39 = icmp ne %struct.device_node* %36, null, !dbg !3064
  br i1 %cmp39, label %for.body, label %for.end, !dbg !3062

for.body:                                         ; preds = %for.cond
  %37 = load %struct.device_node*, %struct.device_node** %gchild, align 8, !dbg !3066
  %38 = load %struct.__thermal_zone*, %struct.__thermal_zone** %tz, align 8, !dbg !3068
  %trips41 = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %38, i32 0, i32 5, !dbg !3069
  %39 = load %struct.thermal_trip*, %struct.thermal_trip** %trips41, align 8, !dbg !3069
  %40 = load i32, i32* %i, align 4, !dbg !3070
  %inc = add i32 %40, 1, !dbg !3070
  store i32 %inc, i32* %i, align 4, !dbg !3070
  %idxprom = sext i32 %40 to i64, !dbg !3068
  %arrayidx42 = getelementptr %struct.thermal_trip, %struct.thermal_trip* %39, i64 %idxprom, !dbg !3068
  %call43 = call i32 @thermal_of_populate_trip(%struct.device_node* %37, %struct.thermal_trip* %arrayidx42) #8, !dbg !3071
  store i32 %call43, i32* %ret, align 4, !dbg !3072
  %41 = load i32, i32* %ret, align 4, !dbg !3073
  %tobool44 = icmp ne i32 %41, 0, !dbg !3073
  br i1 %tobool44, label %if.then45, label %if.end46, !dbg !3075

if.then45:                                        ; preds = %for.body
  br label %free_trips, !dbg !3076

if.end46:                                         ; preds = %for.body
  br label %for.inc, !dbg !3077

for.inc:                                          ; preds = %if.end46
  %42 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !3064
  %43 = load %struct.device_node*, %struct.device_node** %gchild, align 8, !dbg !3064
  %call47 = call %struct.device_node* @of_get_next_child(%struct.device_node* %42, %struct.device_node* %43) #8, !dbg !3064
  store %struct.device_node* %call47, %struct.device_node** %gchild, align 8, !dbg !3064
  br label %for.cond, !dbg !3064, !llvm.loop !3078

for.end:                                          ; preds = %for.cond
  %44 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !3080
  call void @of_node_put(%struct.device_node* %44) #8, !dbg !3081
  %45 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3082
  %call48 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0)) #8, !dbg !3083
  store %struct.device_node* %call48, %struct.device_node** %child, align 8, !dbg !3084
  %46 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !3085
  %tobool49 = icmp ne %struct.device_node* %46, null, !dbg !3085
  br i1 %tobool49, label %if.end51, label %if.then50, !dbg !3087

if.then50:                                        ; preds = %for.end
  br label %finish, !dbg !3088

if.end51:                                         ; preds = %for.end
  %47 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !3089
  %call52 = call i32 @of_get_child_count(%struct.device_node* %47) #8, !dbg !3090
  %48 = load %struct.__thermal_zone*, %struct.__thermal_zone** %tz, align 8, !dbg !3091
  %num_tbps = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %48, i32 0, i32 6, !dbg !3092
  store i32 %call52, i32* %num_tbps, align 8, !dbg !3093
  %49 = load %struct.__thermal_zone*, %struct.__thermal_zone** %tz, align 8, !dbg !3094
  %num_tbps53 = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %49, i32 0, i32 6, !dbg !3096
  %50 = load i32, i32* %num_tbps53, align 8, !dbg !3096
  %cmp54 = icmp eq i32 %50, 0, !dbg !3097
  br i1 %cmp54, label %if.then56, label %if.end57, !dbg !3098

if.then56:                                        ; preds = %if.end51
  br label %finish, !dbg !3099

if.end57:                                         ; preds = %if.end51
  %51 = load %struct.__thermal_zone*, %struct.__thermal_zone** %tz, align 8, !dbg !3100
  %num_tbps58 = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %51, i32 0, i32 6, !dbg !3101
  %52 = load i32, i32* %num_tbps58, align 8, !dbg !3101
  %conv59 = sext i32 %52 to i64, !dbg !3100
  %call60 = call i8* @kcalloc(i64 %conv59, i64 24, i32 3264) #8, !dbg !3102
  %53 = bitcast i8* %call60 to %struct.__thermal_bind_params*, !dbg !3102
  %54 = load %struct.__thermal_zone*, %struct.__thermal_zone** %tz, align 8, !dbg !3103
  %tbps = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %54, i32 0, i32 7, !dbg !3104
  store %struct.__thermal_bind_params* %53, %struct.__thermal_bind_params** %tbps, align 8, !dbg !3105
  %55 = load %struct.__thermal_zone*, %struct.__thermal_zone** %tz, align 8, !dbg !3106
  %tbps61 = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %55, i32 0, i32 7, !dbg !3108
  %56 = load %struct.__thermal_bind_params*, %struct.__thermal_bind_params** %tbps61, align 8, !dbg !3108
  %tobool62 = icmp ne %struct.__thermal_bind_params* %56, null, !dbg !3106
  br i1 %tobool62, label %if.end64, label %if.then63, !dbg !3109

if.then63:                                        ; preds = %if.end57
  store i32 -12, i32* %ret, align 4, !dbg !3110
  br label %free_trips, !dbg !3112

if.end64:                                         ; preds = %if.end57
  store i32 0, i32* %i, align 4, !dbg !3113
  %57 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !3114
  %call65 = call %struct.device_node* @of_get_next_child(%struct.device_node* %57, %struct.device_node* null) #8, !dbg !3114
  store %struct.device_node* %call65, %struct.device_node** %gchild, align 8, !dbg !3114
  br label %for.cond66, !dbg !3114

for.cond66:                                       ; preds = %for.inc80, %if.end64
  %58 = load %struct.device_node*, %struct.device_node** %gchild, align 8, !dbg !3116
  %cmp67 = icmp ne %struct.device_node* %58, null, !dbg !3116
  br i1 %cmp67, label %for.body69, label %for.end82, !dbg !3114

for.body69:                                       ; preds = %for.cond66
  %59 = load %struct.device_node*, %struct.device_node** %gchild, align 8, !dbg !3118
  %60 = load %struct.__thermal_zone*, %struct.__thermal_zone** %tz, align 8, !dbg !3120
  %tbps70 = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %60, i32 0, i32 7, !dbg !3121
  %61 = load %struct.__thermal_bind_params*, %struct.__thermal_bind_params** %tbps70, align 8, !dbg !3121
  %62 = load i32, i32* %i, align 4, !dbg !3122
  %inc71 = add i32 %62, 1, !dbg !3122
  store i32 %inc71, i32* %i, align 4, !dbg !3122
  %idxprom72 = sext i32 %62 to i64, !dbg !3120
  %arrayidx73 = getelementptr %struct.__thermal_bind_params, %struct.__thermal_bind_params* %61, i64 %idxprom72, !dbg !3120
  %63 = load %struct.__thermal_zone*, %struct.__thermal_zone** %tz, align 8, !dbg !3123
  %trips74 = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %63, i32 0, i32 5, !dbg !3124
  %64 = load %struct.thermal_trip*, %struct.thermal_trip** %trips74, align 8, !dbg !3124
  %65 = load %struct.__thermal_zone*, %struct.__thermal_zone** %tz, align 8, !dbg !3125
  %ntrips75 = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %65, i32 0, i32 4, !dbg !3126
  %66 = load i32, i32* %ntrips75, align 8, !dbg !3126
  %call76 = call i32 @thermal_of_populate_bind_params(%struct.device_node* %59, %struct.__thermal_bind_params* %arrayidx73, %struct.thermal_trip* %64, i32 %66) #8, !dbg !3127
  store i32 %call76, i32* %ret, align 4, !dbg !3128
  %67 = load i32, i32* %ret, align 4, !dbg !3129
  %tobool77 = icmp ne i32 %67, 0, !dbg !3129
  br i1 %tobool77, label %if.then78, label %if.end79, !dbg !3131

if.then78:                                        ; preds = %for.body69
  br label %free_tbps, !dbg !3132

if.end79:                                         ; preds = %for.body69
  br label %for.inc80, !dbg !3133

for.inc80:                                        ; preds = %if.end79
  %68 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !3116
  %69 = load %struct.device_node*, %struct.device_node** %gchild, align 8, !dbg !3116
  %call81 = call %struct.device_node* @of_get_next_child(%struct.device_node* %68, %struct.device_node* %69) #8, !dbg !3116
  store %struct.device_node* %call81, %struct.device_node** %gchild, align 8, !dbg !3116
  br label %for.cond66, !dbg !3116, !llvm.loop !3134

for.end82:                                        ; preds = %for.cond66
  br label %finish, !dbg !3135

finish:                                           ; preds = %for.end82, %if.then56, %if.then50, %if.then30, %if.then25
  call void @llvm.dbg.label(metadata !3136), !dbg !3137
  %70 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !3138
  call void @of_node_put(%struct.device_node* %70) #8, !dbg !3139
  %71 = load %struct.__thermal_zone*, %struct.__thermal_zone** %tz, align 8, !dbg !3140
  store %struct.__thermal_zone* %71, %struct.__thermal_zone** %retval, align 8, !dbg !3141
  br label %return, !dbg !3141

free_tbps:                                        ; preds = %if.then78
  call void @llvm.dbg.label(metadata !3142), !dbg !3143
  %72 = load i32, i32* %i, align 4, !dbg !3144
  %sub = sub i32 %72, 1, !dbg !3146
  store i32 %sub, i32* %i, align 4, !dbg !3147
  br label %for.cond83, !dbg !3148

for.cond83:                                       ; preds = %for.inc98, %free_tbps
  %73 = load i32, i32* %i, align 4, !dbg !3149
  %cmp84 = icmp sge i32 %73, 0, !dbg !3151
  br i1 %cmp84, label %for.body86, label %for.end99, !dbg !3152

for.body86:                                       ; preds = %for.cond83
  call void @llvm.dbg.declare(metadata %struct.__thermal_bind_params** %tbp, metadata !3153, metadata !DIExpression()), !dbg !3155
  %74 = load %struct.__thermal_zone*, %struct.__thermal_zone** %tz, align 8, !dbg !3156
  %tbps87 = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %74, i32 0, i32 7, !dbg !3157
  %75 = load %struct.__thermal_bind_params*, %struct.__thermal_bind_params** %tbps87, align 8, !dbg !3157
  %76 = load i32, i32* %i, align 4, !dbg !3158
  %idx.ext = sext i32 %76 to i64, !dbg !3159
  %add.ptr = getelementptr %struct.__thermal_bind_params, %struct.__thermal_bind_params* %75, i64 %idx.ext, !dbg !3159
  store %struct.__thermal_bind_params* %add.ptr, %struct.__thermal_bind_params** %tbp, align 8, !dbg !3155
  call void @llvm.dbg.declare(metadata i32* %j, metadata !3160, metadata !DIExpression()), !dbg !3161
  store i32 0, i32* %j, align 4, !dbg !3162
  br label %for.cond88, !dbg !3164

for.cond88:                                       ; preds = %for.inc94, %for.body86
  %77 = load i32, i32* %j, align 4, !dbg !3165
  %78 = load %struct.__thermal_bind_params*, %struct.__thermal_bind_params** %tbp, align 8, !dbg !3167
  %count = getelementptr inbounds %struct.__thermal_bind_params, %struct.__thermal_bind_params* %78, i32 0, i32 1, !dbg !3168
  %79 = load i32, i32* %count, align 8, !dbg !3168
  %cmp89 = icmp ult i32 %77, %79, !dbg !3169
  br i1 %cmp89, label %for.body91, label %for.end96, !dbg !3170

for.body91:                                       ; preds = %for.cond88
  %80 = load %struct.__thermal_bind_params*, %struct.__thermal_bind_params** %tbp, align 8, !dbg !3171
  %tcbp = getelementptr inbounds %struct.__thermal_bind_params, %struct.__thermal_bind_params* %80, i32 0, i32 0, !dbg !3172
  %81 = load %struct.__thermal_cooling_bind_param*, %struct.__thermal_cooling_bind_param** %tcbp, align 8, !dbg !3172
  %82 = load i32, i32* %j, align 4, !dbg !3173
  %idxprom92 = sext i32 %82 to i64, !dbg !3171
  %arrayidx93 = getelementptr %struct.__thermal_cooling_bind_param, %struct.__thermal_cooling_bind_param* %81, i64 %idxprom92, !dbg !3171
  %cooling_device = getelementptr inbounds %struct.__thermal_cooling_bind_param, %struct.__thermal_cooling_bind_param* %arrayidx93, i32 0, i32 0, !dbg !3174
  %83 = load %struct.device_node*, %struct.device_node** %cooling_device, align 8, !dbg !3174
  call void @of_node_put(%struct.device_node* %83) #8, !dbg !3175
  br label %for.inc94, !dbg !3175

for.inc94:                                        ; preds = %for.body91
  %84 = load i32, i32* %j, align 4, !dbg !3176
  %inc95 = add i32 %84, 1, !dbg !3176
  store i32 %inc95, i32* %j, align 4, !dbg !3176
  br label %for.cond88, !dbg !3177, !llvm.loop !3178

for.end96:                                        ; preds = %for.cond88
  %85 = load %struct.__thermal_bind_params*, %struct.__thermal_bind_params** %tbp, align 8, !dbg !3180
  %tcbp97 = getelementptr inbounds %struct.__thermal_bind_params, %struct.__thermal_bind_params* %85, i32 0, i32 0, !dbg !3181
  %86 = load %struct.__thermal_cooling_bind_param*, %struct.__thermal_cooling_bind_param** %tcbp97, align 8, !dbg !3181
  %87 = bitcast %struct.__thermal_cooling_bind_param* %86 to i8*, !dbg !3180
  call void @kfree(i8* %87) #8, !dbg !3182
  br label %for.inc98, !dbg !3183

for.inc98:                                        ; preds = %for.end96
  %88 = load i32, i32* %i, align 4, !dbg !3184
  %dec = add i32 %88, -1, !dbg !3184
  store i32 %dec, i32* %i, align 4, !dbg !3184
  br label %for.cond83, !dbg !3185, !llvm.loop !3186

for.end99:                                        ; preds = %for.cond83
  %89 = load %struct.__thermal_zone*, %struct.__thermal_zone** %tz, align 8, !dbg !3188
  %tbps100 = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %89, i32 0, i32 7, !dbg !3189
  %90 = load %struct.__thermal_bind_params*, %struct.__thermal_bind_params** %tbps100, align 8, !dbg !3189
  %91 = bitcast %struct.__thermal_bind_params* %90 to i8*, !dbg !3188
  call void @kfree(i8* %91) #8, !dbg !3190
  br label %free_trips, !dbg !3190

free_trips:                                       ; preds = %for.end99, %if.then63, %if.then45
  call void @llvm.dbg.label(metadata !3191), !dbg !3192
  store i32 0, i32* %i, align 4, !dbg !3193
  br label %for.cond101, !dbg !3195

for.cond101:                                      ; preds = %for.inc110, %free_trips
  %92 = load i32, i32* %i, align 4, !dbg !3196
  %93 = load %struct.__thermal_zone*, %struct.__thermal_zone** %tz, align 8, !dbg !3198
  %ntrips102 = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %93, i32 0, i32 4, !dbg !3199
  %94 = load i32, i32* %ntrips102, align 8, !dbg !3199
  %cmp103 = icmp slt i32 %92, %94, !dbg !3200
  br i1 %cmp103, label %for.body105, label %for.end112, !dbg !3201

for.body105:                                      ; preds = %for.cond101
  %95 = load %struct.__thermal_zone*, %struct.__thermal_zone** %tz, align 8, !dbg !3202
  %trips106 = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %95, i32 0, i32 5, !dbg !3203
  %96 = load %struct.thermal_trip*, %struct.thermal_trip** %trips106, align 8, !dbg !3203
  %97 = load i32, i32* %i, align 4, !dbg !3204
  %idxprom107 = sext i32 %97 to i64, !dbg !3202
  %arrayidx108 = getelementptr %struct.thermal_trip, %struct.thermal_trip* %96, i64 %idxprom107, !dbg !3202
  %np109 = getelementptr inbounds %struct.thermal_trip, %struct.thermal_trip* %arrayidx108, i32 0, i32 0, !dbg !3205
  %98 = load %struct.device_node*, %struct.device_node** %np109, align 8, !dbg !3205
  call void @of_node_put(%struct.device_node* %98) #8, !dbg !3206
  br label %for.inc110, !dbg !3206

for.inc110:                                       ; preds = %for.body105
  %99 = load i32, i32* %i, align 4, !dbg !3207
  %inc111 = add i32 %99, 1, !dbg !3207
  store i32 %inc111, i32* %i, align 4, !dbg !3207
  br label %for.cond101, !dbg !3208, !llvm.loop !3209

for.end112:                                       ; preds = %for.cond101
  %100 = load %struct.__thermal_zone*, %struct.__thermal_zone** %tz, align 8, !dbg !3211
  %trips113 = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %100, i32 0, i32 5, !dbg !3212
  %101 = load %struct.thermal_trip*, %struct.thermal_trip** %trips113, align 8, !dbg !3212
  %102 = bitcast %struct.thermal_trip* %101 to i8*, !dbg !3211
  call void @kfree(i8* %102) #8, !dbg !3213
  %103 = load %struct.device_node*, %struct.device_node** %gchild, align 8, !dbg !3214
  call void @of_node_put(%struct.device_node* %103) #8, !dbg !3215
  br label %free_tz, !dbg !3215

free_tz:                                          ; preds = %for.end112, %if.then36, %if.then13, %if.then8
  call void @llvm.dbg.label(metadata !3216), !dbg !3217
  %104 = load %struct.__thermal_zone*, %struct.__thermal_zone** %tz, align 8, !dbg !3218
  %105 = bitcast %struct.__thermal_zone* %104 to i8*, !dbg !3218
  call void @kfree(i8* %105) #8, !dbg !3219
  %106 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !3220
  call void @of_node_put(%struct.device_node* %106) #8, !dbg !3221
  %107 = load i32, i32* %ret, align 4, !dbg !3222
  %conv114 = sext i32 %107 to i64, !dbg !3222
  %call115 = call i8* @ERR_PTR(i64 %conv114) #8, !dbg !3223
  %108 = bitcast i8* %call115 to %struct.__thermal_zone*, !dbg !3223
  store %struct.__thermal_zone* %108, %struct.__thermal_zone** %retval, align 8, !dbg !3224
  br label %return, !dbg !3224

return:                                           ; preds = %free_tz, %finish, %if.then4, %if.then
  %109 = load %struct.__thermal_zone*, %struct.__thermal_zone** %retval, align 8, !dbg !3225
  ret %struct.__thermal_zone* %109, !dbg !3225
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !3226 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3229, metadata !DIExpression()), !dbg !3230
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !3231
  %1 = ptrtoint i8* %0 to i64, !dbg !3232
  ret i64 %1, !dbg !3233
}

; Function Attrs: noredzone
declare dso_local i8* @kmemdup(i8*, i64, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !3234 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3237, metadata !DIExpression()), !dbg !3241
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3247, metadata !DIExpression()), !dbg !3248
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3249, metadata !DIExpression()), !dbg !3250
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3251, metadata !DIExpression()), !dbg !3252
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3253, metadata !DIExpression()), !dbg !3257
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3259, metadata !DIExpression()), !dbg !3263
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3265, metadata !DIExpression()), !dbg !3269
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !3274, metadata !DIExpression()), !dbg !3275
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !3276, metadata !DIExpression()), !dbg !3277
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3278, metadata !DIExpression()), !dbg !3279
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !3280, metadata !DIExpression()), !dbg !3281
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !3282, metadata !DIExpression()), !dbg !3283
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3284, metadata !DIExpression()), !dbg !3285
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !3286, metadata !DIExpression()), !dbg !3287
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3288, metadata !DIExpression()), !dbg !3289
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3290, metadata !DIExpression()), !dbg !3291
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3292, metadata !DIExpression()), !dbg !3293
  %0 = load i64, i64* %size.addr, align 8, !dbg !3294
  %1 = load i32, i32* %flags.addr, align 4, !dbg !3295
  %or = or i32 %1, 256, !dbg !3296
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !3297
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !3298
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !3299

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !3300
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !3301
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !3302

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !3303
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !3304
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !3305
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !3306
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !3283
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !3307
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !3308
  %10 = load i32, i32* %order.i.i, align 4, !dbg !3309
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !3310
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !3311
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !3312
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !3313
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !3313
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !3313
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !3313
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !3313
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !3314
  br label %kmalloc.exit, !dbg !3314

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !3315
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3316
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !3316
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !3318

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !3319
  br label %kmalloc_index.exit.i, !dbg !3319

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3320
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !3322
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !3323

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3324
  br label %kmalloc_index.exit.i, !dbg !3324

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3325
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !3327
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !3328

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3329
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !3330
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !3331

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !3332
  br label %kmalloc_index.exit.i, !dbg !3332

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3333
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !3335
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !3336

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3337
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !3338
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !3339

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !3340
  br label %kmalloc_index.exit.i, !dbg !3340

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3341
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !3343
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !3344

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3345
  br label %kmalloc_index.exit.i, !dbg !3345

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3346
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !3348
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !3349

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !3350
  br label %kmalloc_index.exit.i, !dbg !3350

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3351
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !3353
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !3354

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !3355
  br label %kmalloc_index.exit.i, !dbg !3355

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3356
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !3358
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !3359

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !3360
  br label %kmalloc_index.exit.i, !dbg !3360

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3361
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !3363
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !3364

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !3365
  br label %kmalloc_index.exit.i, !dbg !3365

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3366
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !3368
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !3369

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !3370
  br label %kmalloc_index.exit.i, !dbg !3370

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3371
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !3373
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !3374

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !3375
  br label %kmalloc_index.exit.i, !dbg !3375

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3376
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !3378
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !3379

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !3380
  br label %kmalloc_index.exit.i, !dbg !3380

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3381
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !3383
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !3384

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !3385
  br label %kmalloc_index.exit.i, !dbg !3385

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3386
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !3388
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !3389

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !3390
  br label %kmalloc_index.exit.i, !dbg !3390

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3391
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !3393
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !3394

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !3395
  br label %kmalloc_index.exit.i, !dbg !3395

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3396
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !3398
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !3399

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !3400
  br label %kmalloc_index.exit.i, !dbg !3400

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3401
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !3403
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !3404

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !3405
  br label %kmalloc_index.exit.i, !dbg !3405

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3406
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !3408
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !3409

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !3410
  br label %kmalloc_index.exit.i, !dbg !3410

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3411
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !3413
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !3414

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !3415
  br label %kmalloc_index.exit.i, !dbg !3415

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3416
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !3418
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !3419

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !3420
  br label %kmalloc_index.exit.i, !dbg !3420

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3421
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !3423
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !3424

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !3425
  br label %kmalloc_index.exit.i, !dbg !3425

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3426
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !3428
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !3429

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !3430
  br label %kmalloc_index.exit.i, !dbg !3430

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3431
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !3433
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !3434

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !3435
  br label %kmalloc_index.exit.i, !dbg !3435

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3436
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !3438
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !3439

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !3440
  br label %kmalloc_index.exit.i, !dbg !3440

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3441
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !3443
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !3444

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !3445
  br label %kmalloc_index.exit.i, !dbg !3445

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3446
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !3448
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !3449

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !3450
  br label %kmalloc_index.exit.i, !dbg !3450

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3451
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !3453
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !3454

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !3455
  br label %kmalloc_index.exit.i, !dbg !3455

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3456
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !3458
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !3459

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !3460
  br label %kmalloc_index.exit.i, !dbg !3460

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !3461, !srcloc !3464
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 156) #10, !dbg !3465, !srcloc !3468
  unreachable, !dbg !3469

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !3470
  store i32 %45, i32* %index.i, align 4, !dbg !3471
  %46 = load i32, i32* %index.i, align 4, !dbg !3472
  %tobool.i = icmp ne i32 %46, 0, !dbg !3472
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !3474

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !3475
  br label %kmalloc.exit, !dbg !3475

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !3476
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3477
  %and.i.i = and i32 %48, 17, !dbg !3477
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !3477
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !3477
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !3477
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !3477
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !3479

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !3480
  br label %kmalloc_type.exit.i, !dbg !3480

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3481
  %and2.i.i = and i32 %49, 1, !dbg !3482
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !3481
  %50 = zext i1 %tobool3.i.i to i64, !dbg !3481
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !3481
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !3483
  br label %kmalloc_type.exit.i, !dbg !3483

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !3484
  %idxprom.i = zext i32 %51 to i64, !dbg !3485
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !3485
  %52 = load i32, i32* %index.i, align 4, !dbg !3486
  %idxprom6.i = zext i32 %52 to i64, !dbg !3485
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !3485
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !3485
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !3487
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !3488
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3489
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3490
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !3491
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !3491
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !3491
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !3491
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !3491
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !3252
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3492
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !3493
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !3494
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3495
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !3496
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !3497
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !3498
  store i8* %62, i8** %retval.i, align 8, !dbg !3499
  br label %kmalloc.exit, !dbg !3499

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !3500
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !3501
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !3502
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !3502
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !3502
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !3502
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !3502
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !3503
  br label %kmalloc.exit, !dbg !3503

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !3504
  ret i8* %65, !dbg !3505
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_property_read_u32(%struct.device_node* %np, i8* %propname, i32* %out_value) #0 !dbg !3506 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %out_value.addr = alloca i32*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !3511, metadata !DIExpression()), !dbg !3512
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !3513, metadata !DIExpression()), !dbg !3514
  store i32* %out_value, i32** %out_value.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %out_value.addr, metadata !3515, metadata !DIExpression()), !dbg !3516
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3517
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !3518
  %2 = load i32*, i32** %out_value.addr, align 8, !dbg !3519
  %call = call i32 @of_property_read_u32_array(%struct.device_node* %0, i8* %1, i32* %2, i64 1) #8, !dbg !3520
  ret i32 %call, !dbg !3521
}

; Function Attrs: noredzone
declare dso_local %struct.thermal_zone_device* @thermal_zone_device_register(i8*, i32, i32, i8*, %struct.thermal_zone_device_ops*, %struct.thermal_zone_params*, i32, i32) #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @of_thermal_free_zone(%struct.__thermal_zone* %tz) #4 section ".init.text" !dbg !3522 {
entry:
  %tz.addr = alloca %struct.__thermal_zone*, align 8
  %tbp = alloca %struct.__thermal_bind_params*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.__thermal_zone* %tz, %struct.__thermal_zone** %tz.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.__thermal_zone** %tz.addr, metadata !3525, metadata !DIExpression()), !dbg !3526
  call void @llvm.dbg.declare(metadata %struct.__thermal_bind_params** %tbp, metadata !3527, metadata !DIExpression()), !dbg !3528
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3529, metadata !DIExpression()), !dbg !3530
  call void @llvm.dbg.declare(metadata i32* %j, metadata !3531, metadata !DIExpression()), !dbg !3532
  store i32 0, i32* %i, align 4, !dbg !3533
  br label %for.cond, !dbg !3535

for.cond:                                         ; preds = %for.inc5, %entry
  %0 = load i32, i32* %i, align 4, !dbg !3536
  %1 = load %struct.__thermal_zone*, %struct.__thermal_zone** %tz.addr, align 8, !dbg !3538
  %num_tbps = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %1, i32 0, i32 6, !dbg !3539
  %2 = load i32, i32* %num_tbps, align 8, !dbg !3539
  %cmp = icmp slt i32 %0, %2, !dbg !3540
  br i1 %cmp, label %for.body, label %for.end7, !dbg !3541

for.body:                                         ; preds = %for.cond
  %3 = load %struct.__thermal_zone*, %struct.__thermal_zone** %tz.addr, align 8, !dbg !3542
  %tbps = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %3, i32 0, i32 7, !dbg !3544
  %4 = load %struct.__thermal_bind_params*, %struct.__thermal_bind_params** %tbps, align 8, !dbg !3544
  %5 = load i32, i32* %i, align 4, !dbg !3545
  %idx.ext = sext i32 %5 to i64, !dbg !3546
  %add.ptr = getelementptr %struct.__thermal_bind_params, %struct.__thermal_bind_params* %4, i64 %idx.ext, !dbg !3546
  store %struct.__thermal_bind_params* %add.ptr, %struct.__thermal_bind_params** %tbp, align 8, !dbg !3547
  store i32 0, i32* %j, align 4, !dbg !3548
  br label %for.cond1, !dbg !3550

for.cond1:                                        ; preds = %for.inc, %for.body
  %6 = load i32, i32* %j, align 4, !dbg !3551
  %7 = load %struct.__thermal_bind_params*, %struct.__thermal_bind_params** %tbp, align 8, !dbg !3553
  %count = getelementptr inbounds %struct.__thermal_bind_params, %struct.__thermal_bind_params* %7, i32 0, i32 1, !dbg !3554
  %8 = load i32, i32* %count, align 8, !dbg !3554
  %cmp2 = icmp ult i32 %6, %8, !dbg !3555
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !3556

for.body3:                                        ; preds = %for.cond1
  %9 = load %struct.__thermal_bind_params*, %struct.__thermal_bind_params** %tbp, align 8, !dbg !3557
  %tcbp = getelementptr inbounds %struct.__thermal_bind_params, %struct.__thermal_bind_params* %9, i32 0, i32 0, !dbg !3558
  %10 = load %struct.__thermal_cooling_bind_param*, %struct.__thermal_cooling_bind_param** %tcbp, align 8, !dbg !3558
  %11 = load i32, i32* %j, align 4, !dbg !3559
  %idxprom = sext i32 %11 to i64, !dbg !3557
  %arrayidx = getelementptr %struct.__thermal_cooling_bind_param, %struct.__thermal_cooling_bind_param* %10, i64 %idxprom, !dbg !3557
  %cooling_device = getelementptr inbounds %struct.__thermal_cooling_bind_param, %struct.__thermal_cooling_bind_param* %arrayidx, i32 0, i32 0, !dbg !3560
  %12 = load %struct.device_node*, %struct.device_node** %cooling_device, align 8, !dbg !3560
  call void @of_node_put(%struct.device_node* %12) #8, !dbg !3561
  br label %for.inc, !dbg !3561

for.inc:                                          ; preds = %for.body3
  %13 = load i32, i32* %j, align 4, !dbg !3562
  %inc = add i32 %13, 1, !dbg !3562
  store i32 %inc, i32* %j, align 4, !dbg !3562
  br label %for.cond1, !dbg !3563, !llvm.loop !3564

for.end:                                          ; preds = %for.cond1
  %14 = load %struct.__thermal_bind_params*, %struct.__thermal_bind_params** %tbp, align 8, !dbg !3566
  %tcbp4 = getelementptr inbounds %struct.__thermal_bind_params, %struct.__thermal_bind_params* %14, i32 0, i32 0, !dbg !3567
  %15 = load %struct.__thermal_cooling_bind_param*, %struct.__thermal_cooling_bind_param** %tcbp4, align 8, !dbg !3567
  %16 = bitcast %struct.__thermal_cooling_bind_param* %15 to i8*, !dbg !3566
  call void @kfree(i8* %16) #8, !dbg !3568
  br label %for.inc5, !dbg !3569

for.inc5:                                         ; preds = %for.end
  %17 = load i32, i32* %i, align 4, !dbg !3570
  %inc6 = add i32 %17, 1, !dbg !3570
  store i32 %inc6, i32* %i, align 4, !dbg !3570
  br label %for.cond, !dbg !3571, !llvm.loop !3572

for.end7:                                         ; preds = %for.cond
  %18 = load %struct.__thermal_zone*, %struct.__thermal_zone** %tz.addr, align 8, !dbg !3574
  %tbps8 = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %18, i32 0, i32 7, !dbg !3575
  %19 = load %struct.__thermal_bind_params*, %struct.__thermal_bind_params** %tbps8, align 8, !dbg !3575
  %20 = bitcast %struct.__thermal_bind_params* %19 to i8*, !dbg !3574
  call void @kfree(i8* %20) #8, !dbg !3576
  store i32 0, i32* %i, align 4, !dbg !3577
  br label %for.cond9, !dbg !3579

for.cond9:                                        ; preds = %for.inc14, %for.end7
  %21 = load i32, i32* %i, align 4, !dbg !3580
  %22 = load %struct.__thermal_zone*, %struct.__thermal_zone** %tz.addr, align 8, !dbg !3582
  %ntrips = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %22, i32 0, i32 4, !dbg !3583
  %23 = load i32, i32* %ntrips, align 8, !dbg !3583
  %cmp10 = icmp slt i32 %21, %23, !dbg !3584
  br i1 %cmp10, label %for.body11, label %for.end16, !dbg !3585

for.body11:                                       ; preds = %for.cond9
  %24 = load %struct.__thermal_zone*, %struct.__thermal_zone** %tz.addr, align 8, !dbg !3586
  %trips = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %24, i32 0, i32 5, !dbg !3587
  %25 = load %struct.thermal_trip*, %struct.thermal_trip** %trips, align 8, !dbg !3587
  %26 = load i32, i32* %i, align 4, !dbg !3588
  %idxprom12 = sext i32 %26 to i64, !dbg !3586
  %arrayidx13 = getelementptr %struct.thermal_trip, %struct.thermal_trip* %25, i64 %idxprom12, !dbg !3586
  %np = getelementptr inbounds %struct.thermal_trip, %struct.thermal_trip* %arrayidx13, i32 0, i32 0, !dbg !3589
  %27 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !3589
  call void @of_node_put(%struct.device_node* %27) #8, !dbg !3590
  br label %for.inc14, !dbg !3590

for.inc14:                                        ; preds = %for.body11
  %28 = load i32, i32* %i, align 4, !dbg !3591
  %inc15 = add i32 %28, 1, !dbg !3591
  store i32 %inc15, i32* %i, align 4, !dbg !3591
  br label %for.cond9, !dbg !3592, !llvm.loop !3593

for.end16:                                        ; preds = %for.cond9
  %29 = load %struct.__thermal_zone*, %struct.__thermal_zone** %tz.addr, align 8, !dbg !3595
  %trips17 = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %29, i32 0, i32 5, !dbg !3596
  %30 = load %struct.thermal_trip*, %struct.thermal_trip** %trips17, align 8, !dbg !3596
  %31 = bitcast %struct.thermal_trip* %30 to i8*, !dbg !3595
  call void @kfree(i8* %31) #8, !dbg !3597
  %32 = load %struct.__thermal_zone*, %struct.__thermal_zone** %tz.addr, align 8, !dbg !3598
  %33 = bitcast %struct.__thermal_zone* %32 to i8*, !dbg !3598
  call void @kfree(i8* %33) #8, !dbg !3599
  ret void, !dbg !3600
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @of_thermal_destroy_zones() #4 section ".init.text" !dbg !3601 {
entry:
  %np = alloca %struct.device_node*, align 8
  %child = alloca %struct.device_node*, align 8
  %tmp = alloca i32, align 4
  %zone = alloca %struct.thermal_zone_device*, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np, metadata !3604, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.declare(metadata %struct.device_node** %child, metadata !3606, metadata !DIExpression()), !dbg !3607
  %call = call %struct.device_node* @of_find_node_by_name(%struct.device_node* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !3608
  store %struct.device_node* %call, %struct.device_node** %np, align 8, !dbg !3609
  %0 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !3610
  %tobool = icmp ne %struct.device_node* %0, null, !dbg !3610
  br i1 %tobool, label %if.end, label %if.then, !dbg !3612

if.then:                                          ; preds = %entry
  store i32 0, i32* %tmp, align 4, !dbg !3613
  %1 = load i32, i32* %tmp, align 4, !dbg !3617
  br label %return, !dbg !3618

if.end:                                           ; preds = %entry
  %2 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !3619
  %call1 = call %struct.device_node* @of_get_next_available_child(%struct.device_node* %2, %struct.device_node* null) #8, !dbg !3619
  store %struct.device_node* %call1, %struct.device_node** %child, align 8, !dbg !3619
  br label %for.cond, !dbg !3619

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !3621
  %cmp = icmp ne %struct.device_node* %3, null, !dbg !3621
  br i1 %cmp, label %for.body, label %for.end, !dbg !3619

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %zone, metadata !3623, metadata !DIExpression()), !dbg !3625
  %4 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !3626
  %name = getelementptr inbounds %struct.device_node, %struct.device_node* %4, i32 0, i32 0, !dbg !3627
  %5 = load i8*, i8** %name, align 8, !dbg !3627
  %call2 = call %struct.thermal_zone_device* @thermal_zone_get_zone_by_name(i8* %5) #8, !dbg !3628
  store %struct.thermal_zone_device* %call2, %struct.thermal_zone_device** %zone, align 8, !dbg !3629
  %6 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %zone, align 8, !dbg !3630
  %7 = bitcast %struct.thermal_zone_device* %6 to i8*, !dbg !3630
  %call3 = call zeroext i1 @IS_ERR(i8* %7) #8, !dbg !3632
  br i1 %call3, label %if.then4, label %if.end5, !dbg !3633

if.then4:                                         ; preds = %for.body
  br label %for.inc, !dbg !3634

if.end5:                                          ; preds = %for.body
  %8 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %zone, align 8, !dbg !3635
  call void @thermal_zone_device_unregister(%struct.thermal_zone_device* %8) #8, !dbg !3636
  %9 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %zone, align 8, !dbg !3637
  %tzp = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %9, i32 0, i32 22, !dbg !3638
  %10 = load %struct.thermal_zone_params*, %struct.thermal_zone_params** %tzp, align 8, !dbg !3638
  %11 = bitcast %struct.thermal_zone_params* %10 to i8*, !dbg !3637
  call void @kfree(i8* %11) #8, !dbg !3639
  %12 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %zone, align 8, !dbg !3640
  %ops = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %12, i32 0, i32 21, !dbg !3641
  %13 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %ops, align 8, !dbg !3641
  %14 = bitcast %struct.thermal_zone_device_ops* %13 to i8*, !dbg !3640
  call void @kfree(i8* %14) #8, !dbg !3642
  %15 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %zone, align 8, !dbg !3643
  %devdata = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %15, i32 0, i32 8, !dbg !3644
  %16 = load i8*, i8** %devdata, align 8, !dbg !3644
  %17 = bitcast i8* %16 to %struct.__thermal_zone*, !dbg !3643
  call void @of_thermal_free_zone(%struct.__thermal_zone* %17) #9, !dbg !3645
  br label %for.inc, !dbg !3646

for.inc:                                          ; preds = %if.end5, %if.then4
  %18 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !3621
  %19 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !3621
  %call6 = call %struct.device_node* @of_get_next_available_child(%struct.device_node* %18, %struct.device_node* %19) #8, !dbg !3621
  store %struct.device_node* %call6, %struct.device_node** %child, align 8, !dbg !3621
  br label %for.cond, !dbg !3621, !llvm.loop !3647

for.end:                                          ; preds = %for.cond
  %20 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !3649
  call void @of_node_put(%struct.device_node* %20) #8, !dbg !3650
  br label %return, !dbg !3651

return:                                           ; preds = %for.end, %if.then
  ret void, !dbg !3651
}

; Function Attrs: noredzone
declare dso_local %struct.thermal_zone_device* @thermal_zone_get_zone_by_name(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_thermal_get_temp(%struct.thermal_zone_device* %tz, i32* %temp) #0 !dbg !3652 {
entry:
  %retval = alloca i32, align 4
  %tz.addr = alloca %struct.thermal_zone_device*, align 8
  %temp.addr = alloca i32*, align 8
  %data = alloca %struct.__thermal_zone*, align 8
  store %struct.thermal_zone_device* %tz, %struct.thermal_zone_device** %tz.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tz.addr, metadata !3653, metadata !DIExpression()), !dbg !3654
  store i32* %temp, i32** %temp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %temp.addr, metadata !3655, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.declare(metadata %struct.__thermal_zone** %data, metadata !3657, metadata !DIExpression()), !dbg !3658
  %0 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !3659
  %devdata = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %0, i32 0, i32 8, !dbg !3660
  %1 = load i8*, i8** %devdata, align 8, !dbg !3660
  %2 = bitcast i8* %1 to %struct.__thermal_zone*, !dbg !3659
  store %struct.__thermal_zone* %2, %struct.__thermal_zone** %data, align 8, !dbg !3658
  %3 = load %struct.__thermal_zone*, %struct.__thermal_zone** %data, align 8, !dbg !3661
  %ops = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %3, i32 0, i32 9, !dbg !3663
  %4 = load %struct.thermal_zone_of_device_ops*, %struct.thermal_zone_of_device_ops** %ops, align 8, !dbg !3663
  %get_temp = getelementptr inbounds %struct.thermal_zone_of_device_ops, %struct.thermal_zone_of_device_ops* %4, i32 0, i32 0, !dbg !3664
  %5 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %get_temp, align 8, !dbg !3664
  %tobool = icmp ne i32 (i8*, i32*)* %5, null, !dbg !3661
  br i1 %tobool, label %if.end, label %if.then, !dbg !3665

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !3666
  br label %return, !dbg !3666

if.end:                                           ; preds = %entry
  %6 = load %struct.__thermal_zone*, %struct.__thermal_zone** %data, align 8, !dbg !3667
  %ops1 = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %6, i32 0, i32 9, !dbg !3668
  %7 = load %struct.thermal_zone_of_device_ops*, %struct.thermal_zone_of_device_ops** %ops1, align 8, !dbg !3668
  %get_temp2 = getelementptr inbounds %struct.thermal_zone_of_device_ops, %struct.thermal_zone_of_device_ops* %7, i32 0, i32 0, !dbg !3669
  %8 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %get_temp2, align 8, !dbg !3669
  %9 = load %struct.__thermal_zone*, %struct.__thermal_zone** %data, align 8, !dbg !3670
  %sensor_data = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %9, i32 0, i32 8, !dbg !3671
  %10 = load i8*, i8** %sensor_data, align 8, !dbg !3671
  %11 = load i32*, i32** %temp.addr, align 8, !dbg !3672
  %call = call i32 %8(i8* %10, i32* %11) #8, !dbg !3667
  store i32 %call, i32* %retval, align 4, !dbg !3673
  br label %return, !dbg !3673

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !3674
  ret i32 %12, !dbg !3674
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_thermal_get_trend(%struct.thermal_zone_device* %tz, i32 %trip, i32* %trend) #0 !dbg !3675 {
entry:
  %retval = alloca i32, align 4
  %tz.addr = alloca %struct.thermal_zone_device*, align 8
  %trip.addr = alloca i32, align 4
  %trend.addr = alloca i32*, align 8
  %data = alloca %struct.__thermal_zone*, align 8
  store %struct.thermal_zone_device* %tz, %struct.thermal_zone_device** %tz.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tz.addr, metadata !3676, metadata !DIExpression()), !dbg !3677
  store i32 %trip, i32* %trip.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %trip.addr, metadata !3678, metadata !DIExpression()), !dbg !3679
  store i32* %trend, i32** %trend.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %trend.addr, metadata !3680, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.declare(metadata %struct.__thermal_zone** %data, metadata !3682, metadata !DIExpression()), !dbg !3683
  %0 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !3684
  %devdata = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %0, i32 0, i32 8, !dbg !3685
  %1 = load i8*, i8** %devdata, align 8, !dbg !3685
  %2 = bitcast i8* %1 to %struct.__thermal_zone*, !dbg !3684
  store %struct.__thermal_zone* %2, %struct.__thermal_zone** %data, align 8, !dbg !3683
  %3 = load %struct.__thermal_zone*, %struct.__thermal_zone** %data, align 8, !dbg !3686
  %ops = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %3, i32 0, i32 9, !dbg !3688
  %4 = load %struct.thermal_zone_of_device_ops*, %struct.thermal_zone_of_device_ops** %ops, align 8, !dbg !3688
  %get_trend = getelementptr inbounds %struct.thermal_zone_of_device_ops, %struct.thermal_zone_of_device_ops* %4, i32 0, i32 1, !dbg !3689
  %5 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %get_trend, align 8, !dbg !3689
  %tobool = icmp ne i32 (i8*, i32, i32*)* %5, null, !dbg !3686
  br i1 %tobool, label %if.end, label %if.then, !dbg !3690

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !3691
  br label %return, !dbg !3691

if.end:                                           ; preds = %entry
  %6 = load %struct.__thermal_zone*, %struct.__thermal_zone** %data, align 8, !dbg !3692
  %ops1 = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %6, i32 0, i32 9, !dbg !3693
  %7 = load %struct.thermal_zone_of_device_ops*, %struct.thermal_zone_of_device_ops** %ops1, align 8, !dbg !3693
  %get_trend2 = getelementptr inbounds %struct.thermal_zone_of_device_ops, %struct.thermal_zone_of_device_ops* %7, i32 0, i32 1, !dbg !3694
  %8 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %get_trend2, align 8, !dbg !3694
  %9 = load %struct.__thermal_zone*, %struct.__thermal_zone** %data, align 8, !dbg !3695
  %sensor_data = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %9, i32 0, i32 8, !dbg !3696
  %10 = load i8*, i8** %sensor_data, align 8, !dbg !3696
  %11 = load i32, i32* %trip.addr, align 4, !dbg !3697
  %12 = load i32*, i32** %trend.addr, align 8, !dbg !3698
  %call = call i32 %8(i8* %10, i32 %11, i32* %12) #8, !dbg !3692
  store i32 %call, i32* %retval, align 4, !dbg !3699
  br label %return, !dbg !3699

return:                                           ; preds = %if.end, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !3700
  ret i32 %13, !dbg !3700
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_thermal_set_trips(%struct.thermal_zone_device* %tz, i32 %low, i32 %high) #0 !dbg !3701 {
entry:
  %retval = alloca i32, align 4
  %tz.addr = alloca %struct.thermal_zone_device*, align 8
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  %data = alloca %struct.__thermal_zone*, align 8
  store %struct.thermal_zone_device* %tz, %struct.thermal_zone_device** %tz.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tz.addr, metadata !3702, metadata !DIExpression()), !dbg !3703
  store i32 %low, i32* %low.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %low.addr, metadata !3704, metadata !DIExpression()), !dbg !3705
  store i32 %high, i32* %high.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %high.addr, metadata !3706, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.declare(metadata %struct.__thermal_zone** %data, metadata !3708, metadata !DIExpression()), !dbg !3709
  %0 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !3710
  %devdata = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %0, i32 0, i32 8, !dbg !3711
  %1 = load i8*, i8** %devdata, align 8, !dbg !3711
  %2 = bitcast i8* %1 to %struct.__thermal_zone*, !dbg !3710
  store %struct.__thermal_zone* %2, %struct.__thermal_zone** %data, align 8, !dbg !3709
  %3 = load %struct.__thermal_zone*, %struct.__thermal_zone** %data, align 8, !dbg !3712
  %ops = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %3, i32 0, i32 9, !dbg !3714
  %4 = load %struct.thermal_zone_of_device_ops*, %struct.thermal_zone_of_device_ops** %ops, align 8, !dbg !3714
  %tobool = icmp ne %struct.thermal_zone_of_device_ops* %4, null, !dbg !3712
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3715

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.__thermal_zone*, %struct.__thermal_zone** %data, align 8, !dbg !3716
  %ops1 = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %5, i32 0, i32 9, !dbg !3717
  %6 = load %struct.thermal_zone_of_device_ops*, %struct.thermal_zone_of_device_ops** %ops1, align 8, !dbg !3717
  %set_trips = getelementptr inbounds %struct.thermal_zone_of_device_ops, %struct.thermal_zone_of_device_ops* %6, i32 0, i32 2, !dbg !3718
  %7 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %set_trips, align 8, !dbg !3718
  %tobool2 = icmp ne i32 (i8*, i32, i32)* %7, null, !dbg !3716
  br i1 %tobool2, label %if.end, label %if.then, !dbg !3719

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !3720
  br label %return, !dbg !3720

if.end:                                           ; preds = %lor.lhs.false
  %8 = load %struct.__thermal_zone*, %struct.__thermal_zone** %data, align 8, !dbg !3721
  %ops3 = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %8, i32 0, i32 9, !dbg !3722
  %9 = load %struct.thermal_zone_of_device_ops*, %struct.thermal_zone_of_device_ops** %ops3, align 8, !dbg !3722
  %set_trips4 = getelementptr inbounds %struct.thermal_zone_of_device_ops, %struct.thermal_zone_of_device_ops* %9, i32 0, i32 2, !dbg !3723
  %10 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %set_trips4, align 8, !dbg !3723
  %11 = load %struct.__thermal_zone*, %struct.__thermal_zone** %data, align 8, !dbg !3724
  %sensor_data = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %11, i32 0, i32 8, !dbg !3725
  %12 = load i8*, i8** %sensor_data, align 8, !dbg !3725
  %13 = load i32, i32* %low.addr, align 4, !dbg !3726
  %14 = load i32, i32* %high.addr, align 4, !dbg !3727
  %call = call i32 %10(i8* %12, i32 %13, i32 %14) #8, !dbg !3721
  store i32 %call, i32* %retval, align 4, !dbg !3728
  br label %return, !dbg !3728

return:                                           ; preds = %if.end, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !3729
  ret i32 %15, !dbg !3729
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_thermal_set_emul_temp(%struct.thermal_zone_device* %tz, i32 %temp) #0 !dbg !3730 {
entry:
  %tz.addr = alloca %struct.thermal_zone_device*, align 8
  %temp.addr = alloca i32, align 4
  %data = alloca %struct.__thermal_zone*, align 8
  store %struct.thermal_zone_device* %tz, %struct.thermal_zone_device** %tz.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tz.addr, metadata !3731, metadata !DIExpression()), !dbg !3732
  store i32 %temp, i32* %temp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %temp.addr, metadata !3733, metadata !DIExpression()), !dbg !3734
  call void @llvm.dbg.declare(metadata %struct.__thermal_zone** %data, metadata !3735, metadata !DIExpression()), !dbg !3736
  %0 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !3737
  %devdata = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %0, i32 0, i32 8, !dbg !3738
  %1 = load i8*, i8** %devdata, align 8, !dbg !3738
  %2 = bitcast i8* %1 to %struct.__thermal_zone*, !dbg !3737
  store %struct.__thermal_zone* %2, %struct.__thermal_zone** %data, align 8, !dbg !3736
  %3 = load %struct.__thermal_zone*, %struct.__thermal_zone** %data, align 8, !dbg !3739
  %ops = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %3, i32 0, i32 9, !dbg !3740
  %4 = load %struct.thermal_zone_of_device_ops*, %struct.thermal_zone_of_device_ops** %ops, align 8, !dbg !3740
  %set_emul_temp = getelementptr inbounds %struct.thermal_zone_of_device_ops, %struct.thermal_zone_of_device_ops* %4, i32 0, i32 3, !dbg !3741
  %5 = load i32 (i8*, i32)*, i32 (i8*, i32)** %set_emul_temp, align 8, !dbg !3741
  %6 = load %struct.__thermal_zone*, %struct.__thermal_zone** %data, align 8, !dbg !3742
  %sensor_data = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %6, i32 0, i32 8, !dbg !3743
  %7 = load i8*, i8** %sensor_data, align 8, !dbg !3743
  %8 = load i32, i32* %temp.addr, align 4, !dbg !3744
  %call = call i32 %5(i8* %7, i32 %8) #8, !dbg !3739
  ret i32 %call, !dbg !3745
}

; Function Attrs: noredzone
declare dso_local noalias i8* @devres_alloc_node(void (%struct.device*, i8*)*, i64, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_property_read_u32_array(%struct.device_node* %np, i8* %propname, i32* %out_values, i64 %sz) #0 !dbg !3746 {
entry:
  %retval = alloca i32, align 4
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %out_values.addr = alloca i32*, align 8
  %sz.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !3749, metadata !DIExpression()), !dbg !3750
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !3751, metadata !DIExpression()), !dbg !3752
  store i32* %out_values, i32** %out_values.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %out_values.addr, metadata !3753, metadata !DIExpression()), !dbg !3754
  store i64 %sz, i64* %sz.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sz.addr, metadata !3755, metadata !DIExpression()), !dbg !3756
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3757, metadata !DIExpression()), !dbg !3758
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3759
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !3760
  %2 = load i32*, i32** %out_values.addr, align 8, !dbg !3761
  %3 = load i64, i64* %sz.addr, align 8, !dbg !3762
  %call = call i32 @of_property_read_variable_u32_array(%struct.device_node* %0, i8* %1, i32* %2, i64 %3, i64 0) #8, !dbg !3763
  store i32 %call, i32* %ret, align 4, !dbg !3758
  %4 = load i32, i32* %ret, align 4, !dbg !3764
  %cmp = icmp sge i32 %4, 0, !dbg !3766
  br i1 %cmp, label %if.then, label %if.else, !dbg !3767

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3768
  br label %return, !dbg !3768

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4, !dbg !3769
  store i32 %5, i32* %retval, align 4, !dbg !3770
  br label %return, !dbg !3770

return:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !3771
  ret i32 %6, !dbg !3771
}

; Function Attrs: noredzone
declare dso_local %struct.device_node* @of_get_child_by_name(%struct.device_node*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_get_child_count(%struct.device_node* %np) #0 !dbg !3772 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %child = alloca %struct.device_node*, align 8
  %num = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !3775, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.declare(metadata %struct.device_node** %child, metadata !3777, metadata !DIExpression()), !dbg !3778
  call void @llvm.dbg.declare(metadata i32* %num, metadata !3779, metadata !DIExpression()), !dbg !3780
  store i32 0, i32* %num, align 4, !dbg !3780
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3781
  %call = call %struct.device_node* @of_get_next_child(%struct.device_node* %0, %struct.device_node* null) #8, !dbg !3781
  store %struct.device_node* %call, %struct.device_node** %child, align 8, !dbg !3781
  br label %for.cond, !dbg !3781

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !3783
  %cmp = icmp ne %struct.device_node* %1, null, !dbg !3783
  br i1 %cmp, label %for.body, label %for.end, !dbg !3781

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %num, align 4, !dbg !3785
  %inc = add i32 %2, 1, !dbg !3785
  store i32 %inc, i32* %num, align 4, !dbg !3785
  br label %for.inc, !dbg !3786

for.inc:                                          ; preds = %for.body
  %3 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3783
  %4 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !3783
  %call1 = call %struct.device_node* @of_get_next_child(%struct.device_node* %3, %struct.device_node* %4) #8, !dbg !3783
  store %struct.device_node* %call1, %struct.device_node** %child, align 8, !dbg !3783
  br label %for.cond, !dbg !3783, !llvm.loop !3787

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %num, align 4, !dbg !3789
  ret i32 %5, !dbg !3790
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kcalloc(i64 %n, i64 %size, i32 %flags) #0 !dbg !3791 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3794, metadata !DIExpression()), !dbg !3795
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3796, metadata !DIExpression()), !dbg !3797
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3798, metadata !DIExpression()), !dbg !3799
  %0 = load i64, i64* %n.addr, align 8, !dbg !3800
  %1 = load i64, i64* %size.addr, align 8, !dbg !3801
  %2 = load i32, i32* %flags.addr, align 4, !dbg !3802
  %or = or i32 %2, 256, !dbg !3803
  %call = call i8* @kmalloc_array(i64 %0, i64 %1, i32 %or) #8, !dbg !3804
  ret i8* %call, !dbg !3805
}

; Function Attrs: noredzone
declare dso_local %struct.device_node* @of_get_next_child(%struct.device_node*, %struct.device_node*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @thermal_of_populate_trip(%struct.device_node* %np, %struct.thermal_trip* %trip) #0 !dbg !3806 {
entry:
  %retval = alloca i32, align 4
  %np.addr = alloca %struct.device_node*, align 8
  %trip.addr = alloca %struct.thermal_trip*, align 8
  %prop = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !3809, metadata !DIExpression()), !dbg !3810
  store %struct.thermal_trip* %trip, %struct.thermal_trip** %trip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_trip** %trip.addr, metadata !3811, metadata !DIExpression()), !dbg !3812
  call void @llvm.dbg.declare(metadata i32* %prop, metadata !3813, metadata !DIExpression()), !dbg !3814
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3815, metadata !DIExpression()), !dbg !3816
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3817
  %call = call i32 @of_property_read_u32(%struct.device_node* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i32* %prop) #8, !dbg !3818
  store i32 %call, i32* %ret, align 4, !dbg !3819
  %1 = load i32, i32* %ret, align 4, !dbg !3820
  %cmp = icmp slt i32 %1, 0, !dbg !3822
  br i1 %cmp, label %if.then, label %if.end, !dbg !3823

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.18, i64 0, i64 0)) #9, !dbg !3824
  %2 = load i32, i32* %ret, align 4, !dbg !3826
  store i32 %2, i32* %retval, align 4, !dbg !3827
  br label %return, !dbg !3827

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %prop, align 4, !dbg !3828
  %4 = load %struct.thermal_trip*, %struct.thermal_trip** %trip.addr, align 8, !dbg !3829
  %temperature = getelementptr inbounds %struct.thermal_trip, %struct.thermal_trip* %4, i32 0, i32 1, !dbg !3830
  store i32 %3, i32* %temperature, align 8, !dbg !3831
  %5 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3832
  %call2 = call i32 @of_property_read_u32(%struct.device_node* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i32* %prop) #8, !dbg !3833
  store i32 %call2, i32* %ret, align 4, !dbg !3834
  %6 = load i32, i32* %ret, align 4, !dbg !3835
  %cmp3 = icmp slt i32 %6, 0, !dbg !3837
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !3838

if.then4:                                         ; preds = %if.end
  %call5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.20, i64 0, i64 0)) #9, !dbg !3839
  %7 = load i32, i32* %ret, align 4, !dbg !3841
  store i32 %7, i32* %retval, align 4, !dbg !3842
  br label %return, !dbg !3842

if.end6:                                          ; preds = %if.end
  %8 = load i32, i32* %prop, align 4, !dbg !3843
  %9 = load %struct.thermal_trip*, %struct.thermal_trip** %trip.addr, align 8, !dbg !3844
  %hysteresis = getelementptr inbounds %struct.thermal_trip, %struct.thermal_trip* %9, i32 0, i32 2, !dbg !3845
  store i32 %8, i32* %hysteresis, align 4, !dbg !3846
  %10 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3847
  %11 = load %struct.thermal_trip*, %struct.thermal_trip** %trip.addr, align 8, !dbg !3848
  %type = getelementptr inbounds %struct.thermal_trip, %struct.thermal_trip* %11, i32 0, i32 3, !dbg !3849
  %call7 = call i32 @thermal_of_get_trip_type(%struct.device_node* %10, i32* %type) #8, !dbg !3850
  store i32 %call7, i32* %ret, align 4, !dbg !3851
  %12 = load i32, i32* %ret, align 4, !dbg !3852
  %cmp8 = icmp slt i32 %12, 0, !dbg !3854
  br i1 %cmp8, label %if.then9, label %if.end11, !dbg !3855

if.then9:                                         ; preds = %if.end6
  %call10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.21, i64 0, i64 0)) #9, !dbg !3856
  %13 = load i32, i32* %ret, align 4, !dbg !3858
  store i32 %13, i32* %retval, align 4, !dbg !3859
  br label %return, !dbg !3859

if.end11:                                         ; preds = %if.end6
  %14 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3860
  %15 = load %struct.thermal_trip*, %struct.thermal_trip** %trip.addr, align 8, !dbg !3861
  %np12 = getelementptr inbounds %struct.thermal_trip, %struct.thermal_trip* %15, i32 0, i32 0, !dbg !3862
  store %struct.device_node* %14, %struct.device_node** %np12, align 8, !dbg !3863
  %16 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3864
  %call13 = call %struct.device_node* @of_node_get(%struct.device_node* %16) #8, !dbg !3865
  store i32 0, i32* %retval, align 4, !dbg !3866
  br label %return, !dbg !3866

return:                                           ; preds = %if.end11, %if.then9, %if.then4, %if.then
  %17 = load i32, i32* %retval, align 4, !dbg !3867
  ret i32 %17, !dbg !3867
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @thermal_of_populate_bind_params(%struct.device_node* %np, %struct.__thermal_bind_params* %__tbp, %struct.thermal_trip* %trips, i32 %ntrips) #0 !dbg !3868 {
entry:
  %retval = alloca i32, align 4
  %np.addr = alloca %struct.device_node*, align 8
  %__tbp.addr = alloca %struct.__thermal_bind_params*, align 8
  %trips.addr = alloca %struct.thermal_trip*, align 8
  %ntrips.addr = alloca i32, align 4
  %cooling_spec = alloca %struct.of_phandle_args, align 8
  %__tcbp = alloca %struct.__thermal_cooling_bind_param*, align 8
  %trip = alloca %struct.device_node*, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %prop = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !3871, metadata !DIExpression()), !dbg !3872
  store %struct.__thermal_bind_params* %__tbp, %struct.__thermal_bind_params** %__tbp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.__thermal_bind_params** %__tbp.addr, metadata !3873, metadata !DIExpression()), !dbg !3874
  store %struct.thermal_trip* %trips, %struct.thermal_trip** %trips.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_trip** %trips.addr, metadata !3875, metadata !DIExpression()), !dbg !3876
  store i32 %ntrips, i32* %ntrips.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ntrips.addr, metadata !3877, metadata !DIExpression()), !dbg !3878
  call void @llvm.dbg.declare(metadata %struct.of_phandle_args* %cooling_spec, metadata !3879, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.declare(metadata %struct.__thermal_cooling_bind_param** %__tcbp, metadata !3881, metadata !DIExpression()), !dbg !3882
  call void @llvm.dbg.declare(metadata %struct.device_node** %trip, metadata !3883, metadata !DIExpression()), !dbg !3884
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3885, metadata !DIExpression()), !dbg !3886
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3887, metadata !DIExpression()), !dbg !3888
  call void @llvm.dbg.declare(metadata i32* %count, metadata !3889, metadata !DIExpression()), !dbg !3890
  call void @llvm.dbg.declare(metadata i32* %prop, metadata !3891, metadata !DIExpression()), !dbg !3892
  %0 = load %struct.__thermal_bind_params*, %struct.__thermal_bind_params** %__tbp.addr, align 8, !dbg !3893
  %usage = getelementptr inbounds %struct.__thermal_bind_params, %struct.__thermal_bind_params* %0, i32 0, i32 3, !dbg !3894
  store i32 0, i32* %usage, align 8, !dbg !3895
  %1 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3896
  %call = call i32 @of_property_read_u32(%struct.device_node* %1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0), i32* %prop) #8, !dbg !3897
  store i32 %call, i32* %ret, align 4, !dbg !3898
  %2 = load i32, i32* %ret, align 4, !dbg !3899
  %cmp = icmp eq i32 %2, 0, !dbg !3901
  br i1 %cmp, label %if.then, label %if.end, !dbg !3902

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %prop, align 4, !dbg !3903
  %4 = load %struct.__thermal_bind_params*, %struct.__thermal_bind_params** %__tbp.addr, align 8, !dbg !3904
  %usage1 = getelementptr inbounds %struct.__thermal_bind_params, %struct.__thermal_bind_params* %4, i32 0, i32 3, !dbg !3905
  store i32 %3, i32* %usage1, align 8, !dbg !3906
  br label %if.end, !dbg !3904

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3907
  %call2 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i32 0) #8, !dbg !3908
  store %struct.device_node* %call2, %struct.device_node** %trip, align 8, !dbg !3909
  %6 = load %struct.device_node*, %struct.device_node** %trip, align 8, !dbg !3910
  %tobool = icmp ne %struct.device_node* %6, null, !dbg !3910
  br i1 %tobool, label %if.end5, label %if.then3, !dbg !3912

if.then3:                                         ; preds = %if.end
  %call4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.29, i64 0, i64 0)) #9, !dbg !3913
  store i32 -19, i32* %retval, align 4, !dbg !3915
  br label %return, !dbg !3915

if.end5:                                          ; preds = %if.end
  store i32 0, i32* %i, align 4, !dbg !3916
  br label %for.cond, !dbg !3918

for.cond:                                         ; preds = %for.inc, %if.end5
  %7 = load i32, i32* %i, align 4, !dbg !3919
  %8 = load i32, i32* %ntrips.addr, align 4, !dbg !3921
  %cmp6 = icmp slt i32 %7, %8, !dbg !3922
  br i1 %cmp6, label %for.body, label %for.end, !dbg !3923

for.body:                                         ; preds = %for.cond
  %9 = load %struct.device_node*, %struct.device_node** %trip, align 8, !dbg !3924
  %10 = load %struct.thermal_trip*, %struct.thermal_trip** %trips.addr, align 8, !dbg !3926
  %11 = load i32, i32* %i, align 4, !dbg !3927
  %idxprom = sext i32 %11 to i64, !dbg !3926
  %arrayidx = getelementptr %struct.thermal_trip, %struct.thermal_trip* %10, i64 %idxprom, !dbg !3926
  %np7 = getelementptr inbounds %struct.thermal_trip, %struct.thermal_trip* %arrayidx, i32 0, i32 0, !dbg !3928
  %12 = load %struct.device_node*, %struct.device_node** %np7, align 8, !dbg !3928
  %cmp8 = icmp eq %struct.device_node* %9, %12, !dbg !3929
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !3930

if.then9:                                         ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !dbg !3931
  %14 = load %struct.__thermal_bind_params*, %struct.__thermal_bind_params** %__tbp.addr, align 8, !dbg !3933
  %trip_id = getelementptr inbounds %struct.__thermal_bind_params, %struct.__thermal_bind_params* %14, i32 0, i32 2, !dbg !3934
  store i32 %13, i32* %trip_id, align 4, !dbg !3935
  br label %for.end, !dbg !3936

if.end10:                                         ; preds = %for.body
  br label %for.inc, !dbg !3928

for.inc:                                          ; preds = %if.end10
  %15 = load i32, i32* %i, align 4, !dbg !3937
  %inc = add i32 %15, 1, !dbg !3937
  store i32 %inc, i32* %i, align 4, !dbg !3937
  br label %for.cond, !dbg !3938, !llvm.loop !3939

for.end:                                          ; preds = %if.then9, %for.cond
  %16 = load i32, i32* %i, align 4, !dbg !3941
  %17 = load i32, i32* %ntrips.addr, align 4, !dbg !3943
  %cmp11 = icmp eq i32 %16, %17, !dbg !3944
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !3945

if.then12:                                        ; preds = %for.end
  store i32 -19, i32* %ret, align 4, !dbg !3946
  br label %end, !dbg !3948

if.end13:                                         ; preds = %for.end
  %18 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3949
  %call14 = call i32 @of_count_phandle_with_args(%struct.device_node* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i64 0, i64 0)) #8, !dbg !3950
  store i32 %call14, i32* %count, align 4, !dbg !3951
  %19 = load i32, i32* %count, align 4, !dbg !3952
  %tobool15 = icmp ne i32 %19, 0, !dbg !3952
  br i1 %tobool15, label %if.end18, label %if.then16, !dbg !3954

if.then16:                                        ; preds = %if.end13
  %call17 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.32, i64 0, i64 0)) #9, !dbg !3955
  br label %end, !dbg !3957

if.end18:                                         ; preds = %if.end13
  %20 = load i32, i32* %count, align 4, !dbg !3958
  %conv = sext i32 %20 to i64, !dbg !3958
  %call19 = call i8* @kcalloc(i64 %conv, i64 24, i32 3264) #8, !dbg !3959
  %21 = bitcast i8* %call19 to %struct.__thermal_cooling_bind_param*, !dbg !3959
  store %struct.__thermal_cooling_bind_param* %21, %struct.__thermal_cooling_bind_param** %__tcbp, align 8, !dbg !3960
  %22 = load %struct.__thermal_cooling_bind_param*, %struct.__thermal_cooling_bind_param** %__tcbp, align 8, !dbg !3961
  %tobool20 = icmp ne %struct.__thermal_cooling_bind_param* %22, null, !dbg !3961
  br i1 %tobool20, label %if.end22, label %if.then21, !dbg !3963

if.then21:                                        ; preds = %if.end18
  br label %end, !dbg !3964

if.end22:                                         ; preds = %if.end18
  store i32 0, i32* %i, align 4, !dbg !3965
  br label %for.cond23, !dbg !3967

for.cond23:                                       ; preds = %for.inc50, %if.end22
  %23 = load i32, i32* %i, align 4, !dbg !3968
  %24 = load i32, i32* %count, align 4, !dbg !3970
  %cmp24 = icmp slt i32 %23, %24, !dbg !3971
  br i1 %cmp24, label %for.body26, label %for.end52, !dbg !3972

for.body26:                                       ; preds = %for.cond23
  %25 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3973
  %26 = load i32, i32* %i, align 4, !dbg !3975
  %call27 = call i32 @of_parse_phandle_with_args(%struct.device_node* %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i64 0, i64 0), i32 %26, %struct.of_phandle_args* %cooling_spec) #8, !dbg !3976
  store i32 %call27, i32* %ret, align 4, !dbg !3977
  %27 = load i32, i32* %ret, align 4, !dbg !3978
  %cmp28 = icmp slt i32 %27, 0, !dbg !3980
  br i1 %cmp28, label %if.then30, label %if.end32, !dbg !3981

if.then30:                                        ; preds = %for.body26
  %call31 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.33, i64 0, i64 0)) #9, !dbg !3982
  br label %free_tcbp, !dbg !3984

if.end32:                                         ; preds = %for.body26
  %np33 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %cooling_spec, i32 0, i32 0, !dbg !3985
  %28 = load %struct.device_node*, %struct.device_node** %np33, align 8, !dbg !3985
  %29 = load %struct.__thermal_cooling_bind_param*, %struct.__thermal_cooling_bind_param** %__tcbp, align 8, !dbg !3986
  %30 = load i32, i32* %i, align 4, !dbg !3987
  %idxprom34 = sext i32 %30 to i64, !dbg !3986
  %arrayidx35 = getelementptr %struct.__thermal_cooling_bind_param, %struct.__thermal_cooling_bind_param* %29, i64 %idxprom34, !dbg !3986
  %cooling_device = getelementptr inbounds %struct.__thermal_cooling_bind_param, %struct.__thermal_cooling_bind_param* %arrayidx35, i32 0, i32 0, !dbg !3988
  store %struct.device_node* %28, %struct.device_node** %cooling_device, align 8, !dbg !3989
  %args_count = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %cooling_spec, i32 0, i32 1, !dbg !3990
  %31 = load i32, i32* %args_count, align 8, !dbg !3990
  %cmp36 = icmp sge i32 %31, 2, !dbg !3992
  br i1 %cmp36, label %if.then38, label %if.else, !dbg !3993

if.then38:                                        ; preds = %if.end32
  %args = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %cooling_spec, i32 0, i32 2, !dbg !3994
  %arrayidx39 = getelementptr [16 x i32], [16 x i32]* %args, i64 0, i64 0, !dbg !3996
  %32 = load i32, i32* %arrayidx39, align 4, !dbg !3996
  %conv40 = zext i32 %32 to i64, !dbg !3996
  %33 = load %struct.__thermal_cooling_bind_param*, %struct.__thermal_cooling_bind_param** %__tcbp, align 8, !dbg !3997
  %34 = load i32, i32* %i, align 4, !dbg !3998
  %idxprom41 = sext i32 %34 to i64, !dbg !3997
  %arrayidx42 = getelementptr %struct.__thermal_cooling_bind_param, %struct.__thermal_cooling_bind_param* %33, i64 %idxprom41, !dbg !3997
  %min = getelementptr inbounds %struct.__thermal_cooling_bind_param, %struct.__thermal_cooling_bind_param* %arrayidx42, i32 0, i32 1, !dbg !3999
  store i64 %conv40, i64* %min, align 8, !dbg !4000
  %args43 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %cooling_spec, i32 0, i32 2, !dbg !4001
  %arrayidx44 = getelementptr [16 x i32], [16 x i32]* %args43, i64 0, i64 1, !dbg !4002
  %35 = load i32, i32* %arrayidx44, align 4, !dbg !4002
  %conv45 = zext i32 %35 to i64, !dbg !4002
  %36 = load %struct.__thermal_cooling_bind_param*, %struct.__thermal_cooling_bind_param** %__tcbp, align 8, !dbg !4003
  %37 = load i32, i32* %i, align 4, !dbg !4004
  %idxprom46 = sext i32 %37 to i64, !dbg !4003
  %arrayidx47 = getelementptr %struct.__thermal_cooling_bind_param, %struct.__thermal_cooling_bind_param* %36, i64 %idxprom46, !dbg !4003
  %max = getelementptr inbounds %struct.__thermal_cooling_bind_param, %struct.__thermal_cooling_bind_param* %arrayidx47, i32 0, i32 2, !dbg !4005
  store i64 %conv45, i64* %max, align 8, !dbg !4006
  br label %if.end49, !dbg !4007

if.else:                                          ; preds = %if.end32
  %call48 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.34, i64 0, i64 0)) #9, !dbg !4008
  br label %if.end49

if.end49:                                         ; preds = %if.else, %if.then38
  br label %for.inc50, !dbg !4010

for.inc50:                                        ; preds = %if.end49
  %38 = load i32, i32* %i, align 4, !dbg !4011
  %inc51 = add i32 %38, 1, !dbg !4011
  store i32 %inc51, i32* %i, align 4, !dbg !4011
  br label %for.cond23, !dbg !4012, !llvm.loop !4013

for.end52:                                        ; preds = %for.cond23
  %39 = load %struct.__thermal_cooling_bind_param*, %struct.__thermal_cooling_bind_param** %__tcbp, align 8, !dbg !4015
  %40 = load %struct.__thermal_bind_params*, %struct.__thermal_bind_params** %__tbp.addr, align 8, !dbg !4016
  %tcbp = getelementptr inbounds %struct.__thermal_bind_params, %struct.__thermal_bind_params* %40, i32 0, i32 0, !dbg !4017
  store %struct.__thermal_cooling_bind_param* %39, %struct.__thermal_cooling_bind_param** %tcbp, align 8, !dbg !4018
  %41 = load i32, i32* %count, align 4, !dbg !4019
  %42 = load %struct.__thermal_bind_params*, %struct.__thermal_bind_params** %__tbp.addr, align 8, !dbg !4020
  %count53 = getelementptr inbounds %struct.__thermal_bind_params, %struct.__thermal_bind_params* %42, i32 0, i32 1, !dbg !4021
  store i32 %41, i32* %count53, align 8, !dbg !4022
  br label %end, !dbg !4023

free_tcbp:                                        ; preds = %if.then30
  call void @llvm.dbg.label(metadata !4024), !dbg !4025
  %43 = load i32, i32* %i, align 4, !dbg !4026
  %sub = sub i32 %43, 1, !dbg !4028
  store i32 %sub, i32* %i, align 4, !dbg !4029
  br label %for.cond54, !dbg !4030

for.cond54:                                       ; preds = %for.inc61, %free_tcbp
  %44 = load i32, i32* %i, align 4, !dbg !4031
  %cmp55 = icmp sge i32 %44, 0, !dbg !4033
  br i1 %cmp55, label %for.body57, label %for.end62, !dbg !4034

for.body57:                                       ; preds = %for.cond54
  %45 = load %struct.__thermal_cooling_bind_param*, %struct.__thermal_cooling_bind_param** %__tcbp, align 8, !dbg !4035
  %46 = load i32, i32* %i, align 4, !dbg !4036
  %idxprom58 = sext i32 %46 to i64, !dbg !4035
  %arrayidx59 = getelementptr %struct.__thermal_cooling_bind_param, %struct.__thermal_cooling_bind_param* %45, i64 %idxprom58, !dbg !4035
  %cooling_device60 = getelementptr inbounds %struct.__thermal_cooling_bind_param, %struct.__thermal_cooling_bind_param* %arrayidx59, i32 0, i32 0, !dbg !4037
  %47 = load %struct.device_node*, %struct.device_node** %cooling_device60, align 8, !dbg !4037
  call void @of_node_put(%struct.device_node* %47) #8, !dbg !4038
  br label %for.inc61, !dbg !4038

for.inc61:                                        ; preds = %for.body57
  %48 = load i32, i32* %i, align 4, !dbg !4039
  %dec = add i32 %48, -1, !dbg !4039
  store i32 %dec, i32* %i, align 4, !dbg !4039
  br label %for.cond54, !dbg !4040, !llvm.loop !4041

for.end62:                                        ; preds = %for.cond54
  %49 = load %struct.__thermal_cooling_bind_param*, %struct.__thermal_cooling_bind_param** %__tcbp, align 8, !dbg !4043
  %50 = bitcast %struct.__thermal_cooling_bind_param* %49 to i8*, !dbg !4043
  call void @kfree(i8* %50) #8, !dbg !4044
  br label %end, !dbg !4044

end:                                              ; preds = %for.end62, %for.end52, %if.then21, %if.then16, %if.then12
  call void @llvm.dbg.label(metadata !4045), !dbg !4046
  %51 = load %struct.device_node*, %struct.device_node** %trip, align 8, !dbg !4047
  call void @of_node_put(%struct.device_node* %51) #8, !dbg !4048
  %52 = load i32, i32* %ret, align 4, !dbg !4049
  store i32 %52, i32* %retval, align 4, !dbg !4050
  br label %return, !dbg !4050

return:                                           ; preds = %end, %if.then3
  %53 = load i32, i32* %retval, align 4, !dbg !4051
  ret i32 %53, !dbg !4051
}

; Function Attrs: noredzone
declare dso_local i32 @of_property_read_variable_u32_array(%struct.device_node*, i8*, i32*, i64, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kmalloc_array(i64 %n, i64 %size, i32 %flags) #0 !dbg !4052 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3237, metadata !DIExpression()), !dbg !4053
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3247, metadata !DIExpression()), !dbg !4057
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3249, metadata !DIExpression()), !dbg !4058
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3251, metadata !DIExpression()), !dbg !4059
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3253, metadata !DIExpression()), !dbg !4060
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3259, metadata !DIExpression()), !dbg !4062
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3265, metadata !DIExpression()), !dbg !4064
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !3274, metadata !DIExpression()), !dbg !4067
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !3276, metadata !DIExpression()), !dbg !4068
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3278, metadata !DIExpression()), !dbg !4069
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !3280, metadata !DIExpression()), !dbg !4070
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !3282, metadata !DIExpression()), !dbg !4071
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3284, metadata !DIExpression()), !dbg !4072
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !3286, metadata !DIExpression()), !dbg !4073
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3288, metadata !DIExpression()), !dbg !4074
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
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4075, metadata !DIExpression()), !dbg !4076
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4077, metadata !DIExpression()), !dbg !4078
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4079, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !4081, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !4083, metadata !DIExpression()), !dbg !4086
  %0 = load i64, i64* %n.addr, align 8, !dbg !4086
  store i64 %0, i64* %__a, align 8, !dbg !4086
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !4087, metadata !DIExpression()), !dbg !4086
  %1 = load i64, i64* %size.addr, align 8, !dbg !4086
  store i64 %1, i64* %__b, align 8, !dbg !4086
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !4088, metadata !DIExpression()), !dbg !4086
  store i64* %bytes, i64** %__d, align 8, !dbg !4086
  %cmp = icmp eq i64* %__a, %__b, !dbg !4086
  %conv = zext i1 %cmp to i32, !dbg !4086
  %2 = load i64*, i64** %__d, align 8, !dbg !4086
  %cmp1 = icmp eq i64* %__a, %2, !dbg !4086
  %conv2 = zext i1 %cmp1 to i32, !dbg !4086
  %3 = load i64, i64* %__a, align 8, !dbg !4086
  %4 = load i64, i64* %__b, align 8, !dbg !4086
  %5 = load i64*, i64** %__d, align 8, !dbg !4086
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !4086
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4086
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !4086
  store i64 %8, i64* %5, align 8, !dbg !4086
  %frombool = zext i1 %7 to i8, !dbg !4086
  store i8 %frombool, i8* %tmp, align 1, !dbg !4086
  %9 = load i8, i8* %tmp, align 1, !dbg !4086
  %tobool = trunc i8 %9 to i1, !dbg !4086
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #8, !dbg !4090
  %lnot = xor i1 %call, true, !dbg !4090
  %lnot3 = xor i1 %lnot, true, !dbg !4090
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !4090
  %conv4 = sext i32 %lnot.ext to i64, !dbg !4090
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !4090
  br i1 %tobool5, label %if.then, label %if.end, !dbg !4091

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !4092
  br label %return, !dbg !4092

if.end:                                           ; preds = %entry
  %10 = load i64, i64* %n.addr, align 8, !dbg !4093
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !4094
  br i1 %11, label %land.lhs.true, label %if.end8, !dbg !4095

land.lhs.true:                                    ; preds = %if.end
  %12 = load i64, i64* %size.addr, align 8, !dbg !4096
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !4097
  br i1 %13, label %if.then6, label %if.end8, !dbg !4098

if.then6:                                         ; preds = %land.lhs.true
  %14 = load i64, i64* %bytes, align 8, !dbg !4099
  %15 = load i32, i32* %flags.addr, align 4, !dbg !4100
  store i64 %14, i64* %size.addr.i, align 8
  store i32 %15, i32* %flags.addr.i, align 4
  %16 = load i64, i64* %size.addr.i, align 8, !dbg !4101
  %17 = call i1 @llvm.is.constant.i64(i64 %16) #10, !dbg !4102
  br i1 %17, label %if.then.i, label %if.end9.i, !dbg !4103

if.then.i:                                        ; preds = %if.then6
  %18 = load i64, i64* %size.addr.i, align 8, !dbg !4104
  %cmp.i = icmp ugt i64 %18, 8192, !dbg !4105
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4106

if.then1.i:                                       ; preds = %if.then.i
  %19 = load i64, i64* %size.addr.i, align 8, !dbg !4107
  %20 = load i32, i32* %flags.addr.i, align 4, !dbg !4108
  store i64 %19, i64* %size.addr.i.i, align 8
  store i32 %20, i32* %flags.addr.i.i, align 4
  %21 = load i64, i64* %size.addr.i.i, align 8, !dbg !4109
  %call.i.i = call i32 @get_order(i64 %21) #11, !dbg !4110
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4071
  %22 = load i64, i64* %size.addr.i.i, align 8, !dbg !4111
  %23 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4112
  %24 = load i32, i32* %order.i.i, align 4, !dbg !4113
  store i64 %22, i64* %size.addr.i.i.i, align 8
  store i32 %23, i32* %flags.addr.i.i.i, align 4
  store i32 %24, i32* %order.addr.i.i.i, align 4
  %25 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4114
  %26 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4115
  %27 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4116
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %25, i32 %26, i32 %27) #12, !dbg !4117
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4117
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4117
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4117
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !4117
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4118
  br label %kmalloc.exit, !dbg !4118

if.end.i:                                         ; preds = %if.then.i
  %28 = load i64, i64* %size.addr.i, align 8, !dbg !4119
  store i64 %28, i64* %size.addr.i11.i, align 8
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4120
  %tobool.i.i = icmp ne i64 %29, 0, !dbg !4120
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4121

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4122
  br label %kmalloc_index.exit.i, !dbg !4122

if.end.i.i:                                       ; preds = %if.end.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4123
  %cmp.i.i = icmp ule i64 %30, 8, !dbg !4124
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4125

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4126
  br label %kmalloc_index.exit.i, !dbg !4126

if.end2.i.i:                                      ; preds = %if.end.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4127
  %cmp3.i.i = icmp ugt i64 %31, 64, !dbg !4128
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4129

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4130
  %cmp4.i.i = icmp ule i64 %32, 96, !dbg !4131
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4132

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4133
  br label %kmalloc_index.exit.i, !dbg !4133

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4134
  %cmp7.i.i = icmp ugt i64 %33, 128, !dbg !4135
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4136

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4137
  %cmp9.i.i = icmp ule i64 %34, 192, !dbg !4138
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4139

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4140
  br label %kmalloc_index.exit.i, !dbg !4140

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4141
  %cmp12.i.i = icmp ule i64 %35, 8, !dbg !4142
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4143

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4144
  br label %kmalloc_index.exit.i, !dbg !4144

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4145
  %cmp15.i.i = icmp ule i64 %36, 16, !dbg !4146
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4147

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4148
  br label %kmalloc_index.exit.i, !dbg !4148

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4149
  %cmp18.i.i = icmp ule i64 %37, 32, !dbg !4150
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4151

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4152
  br label %kmalloc_index.exit.i, !dbg !4152

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4153
  %cmp21.i.i = icmp ule i64 %38, 64, !dbg !4154
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4155

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4156
  br label %kmalloc_index.exit.i, !dbg !4156

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4157
  %cmp24.i.i = icmp ule i64 %39, 128, !dbg !4158
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4159

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4160
  br label %kmalloc_index.exit.i, !dbg !4160

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4161
  %cmp27.i.i = icmp ule i64 %40, 256, !dbg !4162
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4163

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4164
  br label %kmalloc_index.exit.i, !dbg !4164

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4165
  %cmp30.i.i = icmp ule i64 %41, 512, !dbg !4166
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4167

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4168
  br label %kmalloc_index.exit.i, !dbg !4168

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4169
  %cmp33.i.i = icmp ule i64 %42, 1024, !dbg !4170
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4171

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4172
  br label %kmalloc_index.exit.i, !dbg !4172

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4173
  %cmp36.i.i = icmp ule i64 %43, 2048, !dbg !4174
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4175

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4176
  br label %kmalloc_index.exit.i, !dbg !4176

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4177
  %cmp39.i.i = icmp ule i64 %44, 4096, !dbg !4178
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4179

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4180
  br label %kmalloc_index.exit.i, !dbg !4180

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4181
  %cmp42.i.i = icmp ule i64 %45, 8192, !dbg !4182
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4183

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4184
  br label %kmalloc_index.exit.i, !dbg !4184

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4185
  %cmp45.i.i = icmp ule i64 %46, 16384, !dbg !4186
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4187

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4188
  br label %kmalloc_index.exit.i, !dbg !4188

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4189
  %cmp48.i.i = icmp ule i64 %47, 32768, !dbg !4190
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4191

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4192
  br label %kmalloc_index.exit.i, !dbg !4192

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4193
  %cmp51.i.i = icmp ule i64 %48, 65536, !dbg !4194
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4195

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4196
  br label %kmalloc_index.exit.i, !dbg !4196

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4197
  %cmp54.i.i = icmp ule i64 %49, 131072, !dbg !4198
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4199

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4200
  br label %kmalloc_index.exit.i, !dbg !4200

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4201
  %cmp57.i.i = icmp ule i64 %50, 262144, !dbg !4202
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4203

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4204
  br label %kmalloc_index.exit.i, !dbg !4204

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4205
  %cmp60.i.i = icmp ule i64 %51, 524288, !dbg !4206
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4207

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4208
  br label %kmalloc_index.exit.i, !dbg !4208

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4209
  %cmp63.i.i = icmp ule i64 %52, 1048576, !dbg !4210
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4211

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4212
  br label %kmalloc_index.exit.i, !dbg !4212

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4213
  %cmp66.i.i = icmp ule i64 %53, 2097152, !dbg !4214
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4215

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4216
  br label %kmalloc_index.exit.i, !dbg !4216

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4217
  %cmp69.i.i = icmp ule i64 %54, 4194304, !dbg !4218
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4219

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4220
  br label %kmalloc_index.exit.i, !dbg !4220

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4221
  %cmp72.i.i = icmp ule i64 %55, 8388608, !dbg !4222
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4223

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4224
  br label %kmalloc_index.exit.i, !dbg !4224

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4225
  %cmp75.i.i = icmp ule i64 %56, 16777216, !dbg !4226
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4227

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4228
  br label %kmalloc_index.exit.i, !dbg !4228

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4229
  %cmp78.i.i = icmp ule i64 %57, 33554432, !dbg !4230
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4231

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4232
  br label %kmalloc_index.exit.i, !dbg !4232

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4233
  %cmp81.i.i = icmp ule i64 %58, 67108864, !dbg !4234
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4235

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4236
  br label %kmalloc_index.exit.i, !dbg !4236

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !4237, !srcloc !3464
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 156) #10, !dbg !4238, !srcloc !3468
  unreachable, !dbg !4239

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %59 = load i32, i32* %retval.i.i, align 4, !dbg !4240
  store i32 %59, i32* %index.i, align 4, !dbg !4241
  %60 = load i32, i32* %index.i, align 4, !dbg !4242
  %tobool.i = icmp ne i32 %60, 0, !dbg !4242
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4243

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4244
  br label %kmalloc.exit, !dbg !4244

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %61 = load i32, i32* %flags.addr.i, align 4, !dbg !4245
  store i32 %61, i32* %flags.addr.i13.i, align 4
  %62 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4246
  %and.i.i = and i32 %62, 17, !dbg !4246
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4246
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4246
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4246
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4246
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4247

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4248
  br label %kmalloc_type.exit.i, !dbg !4248

if.end.i16.i:                                     ; preds = %if.end4.i
  %63 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4249
  %and2.i.i = and i32 %63, 1, !dbg !4250
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4249
  %64 = zext i1 %tobool3.i.i to i64, !dbg !4249
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4249
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4251
  br label %kmalloc_type.exit.i, !dbg !4251

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %65 = load i32, i32* %retval.i12.i, align 4, !dbg !4252
  %idxprom.i = zext i32 %65 to i64, !dbg !4253
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4253
  %66 = load i32, i32* %index.i, align 4, !dbg !4254
  %idxprom6.i = zext i32 %66 to i64, !dbg !4253
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4253
  %67 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4253
  %68 = load i32, i32* %flags.addr.i, align 4, !dbg !4255
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !4256
  store %struct.kmem_cache* %67, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %68, i32* %flags.addr.i17.i, align 4
  store i64 %69, i64* %size.addr.i18.i, align 8
  %70 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4257
  %71 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4258
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %70, i32 %71) #12, !dbg !4259
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4259
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4259
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4259
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !4259
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4059
  %72 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4260
  %73 = load i8*, i8** %ret.i.i, align 8, !dbg !4261
  %74 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4262
  %75 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4263
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %72, i8* %73, i64 %74, i32 %75) #12, !dbg !4264
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4265
  %76 = load i8*, i8** %ret.i.i, align 8, !dbg !4266
  store i8* %76, i8** %retval.i, align 8, !dbg !4267
  br label %kmalloc.exit, !dbg !4267

if.end9.i:                                        ; preds = %if.then6
  %77 = load i64, i64* %size.addr.i, align 8, !dbg !4268
  %78 = load i32, i32* %flags.addr.i, align 4, !dbg !4269
  %call10.i = call noalias i8* @__kmalloc(i64 %77, i32 %78) #12, !dbg !4270
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4270
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4270
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4270
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !4270
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4271
  br label %kmalloc.exit, !dbg !4271

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %79 = load i8*, i8** %retval.i, align 8, !dbg !4272
  store i8* %79, i8** %retval, align 8, !dbg !4273
  br label %return, !dbg !4273

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %80 = load i64, i64* %bytes, align 8, !dbg !4274
  %81 = load i32, i32* %flags.addr, align 4, !dbg !4275
  %call9 = call noalias i8* @__kmalloc(i64 %80, i32 %81) #8, !dbg !4276
  %ptrint = ptrtoint i8* %call9 to i64, !dbg !4276
  %maskedptr = and i64 %ptrint, 7, !dbg !4276
  %maskcond = icmp eq i64 %maskedptr, 0, !dbg !4276
  call void @llvm.assume(i1 %maskcond), !dbg !4276
  store i8* %call9, i8** %retval, align 8, !dbg !4277
  br label %return, !dbg !4277

return:                                           ; preds = %if.end8, %kmalloc.exit, %if.then
  %82 = load i8*, i8** %retval, align 8, !dbg !4278
  ret i8* %82, !dbg !4278
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #0 !dbg !4279 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !4283, metadata !DIExpression()), !dbg !4284
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !4285
  %tobool = trunc i8 %0 to i1, !dbg !4285
  %lnot = xor i1 %tobool, true, !dbg !4285
  %lnot1 = xor i1 %lnot, true, !dbg !4285
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4285
  %conv = sext i32 %lnot.ext to i64, !dbg !4285
  %tobool2 = icmp ne i64 %conv, 0, !dbg !4285
  ret i1 %tobool2, !dbg !4286
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !4287 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4291, metadata !DIExpression()), !dbg !4296
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4298, metadata !DIExpression()), !dbg !4299
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4300, metadata !DIExpression()), !dbg !4301
  %0 = load i64, i64* %size.addr, align 8, !dbg !4302
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4304
  br i1 %1, label %if.then, label %if.end447, !dbg !4305

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4306
  %tobool = icmp ne i64 %2, 0, !dbg !4306
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4309

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4310
  br label %return, !dbg !4310

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4311
  %cmp = icmp ult i64 %3, 4096, !dbg !4313
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4314

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4315
  br label %return, !dbg !4315

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub = sub i64 %4, 1, !dbg !4316
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4316
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4316

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub4 = sub i64 %6, 1, !dbg !4316
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4316
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4316

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub6 = sub i64 %8, 1, !dbg !4316
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4316
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4316

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4316

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub9 = sub i64 %9, 1, !dbg !4316
  %and = and i64 %sub9, -9223372036854775808, !dbg !4316
  %tobool10 = icmp ne i64 %and, 0, !dbg !4316
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4316

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4316

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub13 = sub i64 %10, 1, !dbg !4316
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4316
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4316
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4316

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4316

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub18 = sub i64 %11, 1, !dbg !4316
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4316
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4316
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4316

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4316

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub23 = sub i64 %12, 1, !dbg !4316
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4316
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4316
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4316

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4316

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub28 = sub i64 %13, 1, !dbg !4316
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4316
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4316
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4316

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4316

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub33 = sub i64 %14, 1, !dbg !4316
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4316
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4316
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4316

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4316

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub38 = sub i64 %15, 1, !dbg !4316
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4316
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4316
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4316

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4316

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub43 = sub i64 %16, 1, !dbg !4316
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4316
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4316
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4316

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4316

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub48 = sub i64 %17, 1, !dbg !4316
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4316
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4316
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4316

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4316

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub53 = sub i64 %18, 1, !dbg !4316
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4316
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4316
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4316

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4316

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub58 = sub i64 %19, 1, !dbg !4316
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4316
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4316
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4316

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4316

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub63 = sub i64 %20, 1, !dbg !4316
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4316
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4316
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4316

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4316

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub68 = sub i64 %21, 1, !dbg !4316
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4316
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4316
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4316

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4316

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub73 = sub i64 %22, 1, !dbg !4316
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4316
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4316
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4316

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4316

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub78 = sub i64 %23, 1, !dbg !4316
  %and79 = and i64 %sub78, 562949953421312, !dbg !4316
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4316
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4316

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4316

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub83 = sub i64 %24, 1, !dbg !4316
  %and84 = and i64 %sub83, 281474976710656, !dbg !4316
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4316
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4316

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4316

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub88 = sub i64 %25, 1, !dbg !4316
  %and89 = and i64 %sub88, 140737488355328, !dbg !4316
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4316
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4316

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4316

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub93 = sub i64 %26, 1, !dbg !4316
  %and94 = and i64 %sub93, 70368744177664, !dbg !4316
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4316
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4316

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4316

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub98 = sub i64 %27, 1, !dbg !4316
  %and99 = and i64 %sub98, 35184372088832, !dbg !4316
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4316
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4316

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4316

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub103 = sub i64 %28, 1, !dbg !4316
  %and104 = and i64 %sub103, 17592186044416, !dbg !4316
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4316
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4316

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4316

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub108 = sub i64 %29, 1, !dbg !4316
  %and109 = and i64 %sub108, 8796093022208, !dbg !4316
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4316
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4316

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4316

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub113 = sub i64 %30, 1, !dbg !4316
  %and114 = and i64 %sub113, 4398046511104, !dbg !4316
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4316
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4316

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4316

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub118 = sub i64 %31, 1, !dbg !4316
  %and119 = and i64 %sub118, 2199023255552, !dbg !4316
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4316
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4316

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4316

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub123 = sub i64 %32, 1, !dbg !4316
  %and124 = and i64 %sub123, 1099511627776, !dbg !4316
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4316
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4316

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4316

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub128 = sub i64 %33, 1, !dbg !4316
  %and129 = and i64 %sub128, 549755813888, !dbg !4316
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4316
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4316

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4316

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub133 = sub i64 %34, 1, !dbg !4316
  %and134 = and i64 %sub133, 274877906944, !dbg !4316
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4316
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4316

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4316

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub138 = sub i64 %35, 1, !dbg !4316
  %and139 = and i64 %sub138, 137438953472, !dbg !4316
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4316
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4316

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4316

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub143 = sub i64 %36, 1, !dbg !4316
  %and144 = and i64 %sub143, 68719476736, !dbg !4316
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4316
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4316

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4316

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub148 = sub i64 %37, 1, !dbg !4316
  %and149 = and i64 %sub148, 34359738368, !dbg !4316
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4316
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4316

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4316

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub153 = sub i64 %38, 1, !dbg !4316
  %and154 = and i64 %sub153, 17179869184, !dbg !4316
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4316
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4316

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4316

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub158 = sub i64 %39, 1, !dbg !4316
  %and159 = and i64 %sub158, 8589934592, !dbg !4316
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4316
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4316

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4316

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub163 = sub i64 %40, 1, !dbg !4316
  %and164 = and i64 %sub163, 4294967296, !dbg !4316
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4316
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4316

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4316

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub168 = sub i64 %41, 1, !dbg !4316
  %and169 = and i64 %sub168, 2147483648, !dbg !4316
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4316
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4316

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4316

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub173 = sub i64 %42, 1, !dbg !4316
  %and174 = and i64 %sub173, 1073741824, !dbg !4316
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4316
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4316

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4316

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub178 = sub i64 %43, 1, !dbg !4316
  %and179 = and i64 %sub178, 536870912, !dbg !4316
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4316
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4316

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4316

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub183 = sub i64 %44, 1, !dbg !4316
  %and184 = and i64 %sub183, 268435456, !dbg !4316
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4316
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4316

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4316

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub188 = sub i64 %45, 1, !dbg !4316
  %and189 = and i64 %sub188, 134217728, !dbg !4316
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4316
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4316

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4316

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub193 = sub i64 %46, 1, !dbg !4316
  %and194 = and i64 %sub193, 67108864, !dbg !4316
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4316
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4316

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4316

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub198 = sub i64 %47, 1, !dbg !4316
  %and199 = and i64 %sub198, 33554432, !dbg !4316
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4316
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4316

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4316

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub203 = sub i64 %48, 1, !dbg !4316
  %and204 = and i64 %sub203, 16777216, !dbg !4316
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4316
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4316

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4316

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub208 = sub i64 %49, 1, !dbg !4316
  %and209 = and i64 %sub208, 8388608, !dbg !4316
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4316
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4316

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4316

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub213 = sub i64 %50, 1, !dbg !4316
  %and214 = and i64 %sub213, 4194304, !dbg !4316
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4316
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4316

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4316

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub218 = sub i64 %51, 1, !dbg !4316
  %and219 = and i64 %sub218, 2097152, !dbg !4316
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4316
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4316

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4316

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub223 = sub i64 %52, 1, !dbg !4316
  %and224 = and i64 %sub223, 1048576, !dbg !4316
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4316
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4316

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4316

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub228 = sub i64 %53, 1, !dbg !4316
  %and229 = and i64 %sub228, 524288, !dbg !4316
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4316
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4316

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4316

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub233 = sub i64 %54, 1, !dbg !4316
  %and234 = and i64 %sub233, 262144, !dbg !4316
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4316
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4316

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4316

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub238 = sub i64 %55, 1, !dbg !4316
  %and239 = and i64 %sub238, 131072, !dbg !4316
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4316
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4316

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4316

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub243 = sub i64 %56, 1, !dbg !4316
  %and244 = and i64 %sub243, 65536, !dbg !4316
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4316
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4316

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4316

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub248 = sub i64 %57, 1, !dbg !4316
  %and249 = and i64 %sub248, 32768, !dbg !4316
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4316
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4316

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4316

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub253 = sub i64 %58, 1, !dbg !4316
  %and254 = and i64 %sub253, 16384, !dbg !4316
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4316
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4316

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4316

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub258 = sub i64 %59, 1, !dbg !4316
  %and259 = and i64 %sub258, 8192, !dbg !4316
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4316
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4316

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4316

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub263 = sub i64 %60, 1, !dbg !4316
  %and264 = and i64 %sub263, 4096, !dbg !4316
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4316
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4316

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4316

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub268 = sub i64 %61, 1, !dbg !4316
  %and269 = and i64 %sub268, 2048, !dbg !4316
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4316
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4316

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4316

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub273 = sub i64 %62, 1, !dbg !4316
  %and274 = and i64 %sub273, 1024, !dbg !4316
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4316
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4316

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4316

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub278 = sub i64 %63, 1, !dbg !4316
  %and279 = and i64 %sub278, 512, !dbg !4316
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4316
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4316

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4316

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub283 = sub i64 %64, 1, !dbg !4316
  %and284 = and i64 %sub283, 256, !dbg !4316
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4316
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4316

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4316

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub288 = sub i64 %65, 1, !dbg !4316
  %and289 = and i64 %sub288, 128, !dbg !4316
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4316
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4316

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4316

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub293 = sub i64 %66, 1, !dbg !4316
  %and294 = and i64 %sub293, 64, !dbg !4316
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4316
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4316

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4316

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub298 = sub i64 %67, 1, !dbg !4316
  %and299 = and i64 %sub298, 32, !dbg !4316
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4316
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4316

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4316

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub303 = sub i64 %68, 1, !dbg !4316
  %and304 = and i64 %sub303, 16, !dbg !4316
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4316
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4316

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4316

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub308 = sub i64 %69, 1, !dbg !4316
  %and309 = and i64 %sub308, 8, !dbg !4316
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4316
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4316

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4316

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub313 = sub i64 %70, 1, !dbg !4316
  %and314 = and i64 %sub313, 4, !dbg !4316
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4316
  %71 = zext i1 %tobool315 to i64, !dbg !4316
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4316
  br label %cond.end, !dbg !4316

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4316
  br label %cond.end317, !dbg !4316

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4316
  br label %cond.end319, !dbg !4316

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4316
  br label %cond.end321, !dbg !4316

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4316
  br label %cond.end323, !dbg !4316

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4316
  br label %cond.end325, !dbg !4316

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4316
  br label %cond.end327, !dbg !4316

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4316
  br label %cond.end329, !dbg !4316

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4316
  br label %cond.end331, !dbg !4316

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4316
  br label %cond.end333, !dbg !4316

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4316
  br label %cond.end335, !dbg !4316

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4316
  br label %cond.end337, !dbg !4316

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4316
  br label %cond.end339, !dbg !4316

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4316
  br label %cond.end341, !dbg !4316

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4316
  br label %cond.end343, !dbg !4316

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4316
  br label %cond.end345, !dbg !4316

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4316
  br label %cond.end347, !dbg !4316

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4316
  br label %cond.end349, !dbg !4316

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4316
  br label %cond.end351, !dbg !4316

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4316
  br label %cond.end353, !dbg !4316

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4316
  br label %cond.end355, !dbg !4316

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4316
  br label %cond.end357, !dbg !4316

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4316
  br label %cond.end359, !dbg !4316

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4316
  br label %cond.end361, !dbg !4316

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4316
  br label %cond.end363, !dbg !4316

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4316
  br label %cond.end365, !dbg !4316

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4316
  br label %cond.end367, !dbg !4316

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4316
  br label %cond.end369, !dbg !4316

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4316
  br label %cond.end371, !dbg !4316

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4316
  br label %cond.end373, !dbg !4316

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4316
  br label %cond.end375, !dbg !4316

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4316
  br label %cond.end377, !dbg !4316

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4316
  br label %cond.end379, !dbg !4316

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4316
  br label %cond.end381, !dbg !4316

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4316
  br label %cond.end383, !dbg !4316

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4316
  br label %cond.end385, !dbg !4316

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4316
  br label %cond.end387, !dbg !4316

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4316
  br label %cond.end389, !dbg !4316

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4316
  br label %cond.end391, !dbg !4316

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4316
  br label %cond.end393, !dbg !4316

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4316
  br label %cond.end395, !dbg !4316

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4316
  br label %cond.end397, !dbg !4316

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4316
  br label %cond.end399, !dbg !4316

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4316
  br label %cond.end401, !dbg !4316

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4316
  br label %cond.end403, !dbg !4316

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4316
  br label %cond.end405, !dbg !4316

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4316
  br label %cond.end407, !dbg !4316

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4316
  br label %cond.end409, !dbg !4316

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4316
  br label %cond.end411, !dbg !4316

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4316
  br label %cond.end413, !dbg !4316

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4316
  br label %cond.end415, !dbg !4316

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4316
  br label %cond.end417, !dbg !4316

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4316
  br label %cond.end419, !dbg !4316

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4316
  br label %cond.end421, !dbg !4316

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4316
  br label %cond.end423, !dbg !4316

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4316
  br label %cond.end425, !dbg !4316

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4316
  br label %cond.end427, !dbg !4316

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4316
  br label %cond.end429, !dbg !4316

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4316
  br label %cond.end431, !dbg !4316

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4316
  br label %cond.end433, !dbg !4316

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4316
  br label %cond.end435, !dbg !4316

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4316
  br label %cond.end437, !dbg !4316

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4316
  br label %cond.end440, !dbg !4316

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4316

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4316
  br label %cond.end444, !dbg !4316

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub443 = sub i64 %72, 1, !dbg !4316
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !4316
  br label %cond.end444, !dbg !4316

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4316
  %sub446 = sub i32 %cond445, 12, !dbg !4317
  %add = add i32 %sub446, 1, !dbg !4318
  store i32 %add, i32* %retval, align 4, !dbg !4319
  br label %return, !dbg !4319

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4320
  %dec = add i64 %73, -1, !dbg !4320
  store i64 %dec, i64* %size.addr, align 8, !dbg !4320
  %74 = load i64, i64* %size.addr, align 8, !dbg !4321
  %shr = lshr i64 %74, 12, !dbg !4321
  store i64 %shr, i64* %size.addr, align 8, !dbg !4321
  %75 = load i64, i64* %size.addr, align 8, !dbg !4322
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4299
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4323
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4324
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !4323, !srcloc !4325
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4323
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4326
  %add.i = add i32 %79, 1, !dbg !4327
  store i32 %add.i, i32* %retval, align 4, !dbg !4328
  br label %return, !dbg !4328

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4329
  ret i32 %80, !dbg !4329
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !4330 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4291, metadata !DIExpression()), !dbg !4334
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4298, metadata !DIExpression()), !dbg !4336
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4337, metadata !DIExpression()), !dbg !4338
  %0 = load i64, i64* %n.addr, align 8, !dbg !4339
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4336
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4340
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4341
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !4340, !srcloc !4325
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4340
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4342
  %add.i = add i32 %4, 1, !dbg !4343
  %sub = sub i32 %add.i, 1, !dbg !4344
  ret i32 %sub, !dbg !4345
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !4346 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4350, metadata !DIExpression()), !dbg !4351
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4352, metadata !DIExpression()), !dbg !4353
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4354, metadata !DIExpression()), !dbg !4355
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4356, metadata !DIExpression()), !dbg !4357
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4358
  ret i8* %0, !dbg !4359
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @thermal_of_get_trip_type(%struct.device_node* %np, i32* %type) #0 !dbg !4360 {
entry:
  %retval = alloca i32, align 4
  %np.addr = alloca %struct.device_node*, align 8
  %type.addr = alloca i32*, align 8
  %t = alloca i8*, align 8
  %err = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !4363, metadata !DIExpression()), !dbg !4364
  store i32* %type, i32** %type.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %type.addr, metadata !4365, metadata !DIExpression()), !dbg !4366
  call void @llvm.dbg.declare(metadata i8** %t, metadata !4367, metadata !DIExpression()), !dbg !4368
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4369, metadata !DIExpression()), !dbg !4370
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4371, metadata !DIExpression()), !dbg !4372
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4373
  %call = call i32 @of_property_read_string(%struct.device_node* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i8** %t) #8, !dbg !4374
  store i32 %call, i32* %err, align 4, !dbg !4375
  %1 = load i32, i32* %err, align 4, !dbg !4376
  %cmp = icmp slt i32 %1, 0, !dbg !4378
  br i1 %cmp, label %if.then, label %if.end, !dbg !4379

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %err, align 4, !dbg !4380
  store i32 %2, i32* %retval, align 4, !dbg !4381
  br label %return, !dbg !4381

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !4382
  br label %for.cond, !dbg !4384

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4, !dbg !4385
  %conv = sext i32 %3 to i64, !dbg !4385
  %cmp1 = icmp ult i64 %conv, 4, !dbg !4387
  br i1 %cmp1, label %for.body, label %for.end, !dbg !4388

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %t, align 8, !dbg !4389
  %5 = load i32, i32* %i, align 4, !dbg !4391
  %idxprom = sext i32 %5 to i64, !dbg !4392
  %arrayidx = getelementptr [4 x i8*], [4 x i8*]* @trip_types, i64 0, i64 %idxprom, !dbg !4392
  %6 = load i8*, i8** %arrayidx, align 8, !dbg !4392
  %call3 = call i32 @strcasecmp(i8* %4, i8* %6) #8, !dbg !4393
  %tobool = icmp ne i32 %call3, 0, !dbg !4393
  br i1 %tobool, label %if.end5, label %if.then4, !dbg !4394

if.then4:                                         ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !4395
  %8 = load i32*, i32** %type.addr, align 8, !dbg !4397
  store i32 %7, i32* %8, align 4, !dbg !4398
  store i32 0, i32* %retval, align 4, !dbg !4399
  br label %return, !dbg !4399

if.end5:                                          ; preds = %for.body
  br label %for.inc, !dbg !4400

for.inc:                                          ; preds = %if.end5
  %9 = load i32, i32* %i, align 4, !dbg !4401
  %inc = add i32 %9, 1, !dbg !4401
  store i32 %inc, i32* %i, align 4, !dbg !4401
  br label %for.cond, !dbg !4402, !llvm.loop !4403

for.end:                                          ; preds = %for.cond
  store i32 -19, i32* %retval, align 4, !dbg !4405
  br label %return, !dbg !4405

return:                                           ; preds = %for.end, %if.then4, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !4406
  ret i32 %10, !dbg !4406
}

; Function Attrs: noredzone
declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i8**) #2

; Function Attrs: noredzone
declare dso_local i32 @strcasecmp(i8*, i8*) #2

; Function Attrs: noredzone
declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @of_count_phandle_with_args(%struct.device_node*, i8*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_thermal_bind(%struct.thermal_zone_device* %thermal, %struct.thermal_cooling_device* %cdev) #0 !dbg !4407 {
entry:
  %retval = alloca i32, align 4
  %thermal.addr = alloca %struct.thermal_zone_device*, align 8
  %cdev.addr = alloca %struct.thermal_cooling_device*, align 8
  %data = alloca %struct.__thermal_zone*, align 8
  %tbp = alloca %struct.__thermal_bind_params*, align 8
  %tcbp = alloca %struct.__thermal_cooling_bind_param*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.thermal_zone_device* %thermal, %struct.thermal_zone_device** %thermal.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %thermal.addr, metadata !4408, metadata !DIExpression()), !dbg !4409
  store %struct.thermal_cooling_device* %cdev, %struct.thermal_cooling_device** %cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_cooling_device** %cdev.addr, metadata !4410, metadata !DIExpression()), !dbg !4411
  call void @llvm.dbg.declare(metadata %struct.__thermal_zone** %data, metadata !4412, metadata !DIExpression()), !dbg !4413
  %0 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %thermal.addr, align 8, !dbg !4414
  %devdata = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %0, i32 0, i32 8, !dbg !4415
  %1 = load i8*, i8** %devdata, align 8, !dbg !4415
  %2 = bitcast i8* %1 to %struct.__thermal_zone*, !dbg !4414
  store %struct.__thermal_zone* %2, %struct.__thermal_zone** %data, align 8, !dbg !4413
  call void @llvm.dbg.declare(metadata %struct.__thermal_bind_params** %tbp, metadata !4416, metadata !DIExpression()), !dbg !4417
  call void @llvm.dbg.declare(metadata %struct.__thermal_cooling_bind_param** %tcbp, metadata !4418, metadata !DIExpression()), !dbg !4419
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4420, metadata !DIExpression()), !dbg !4421
  call void @llvm.dbg.declare(metadata i32* %j, metadata !4422, metadata !DIExpression()), !dbg !4423
  %3 = load %struct.__thermal_zone*, %struct.__thermal_zone** %data, align 8, !dbg !4424
  %tobool = icmp ne %struct.__thermal_zone* %3, null, !dbg !4424
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4426

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.__thermal_zone*, %struct.__thermal_zone** %data, align 8, !dbg !4427
  %5 = bitcast %struct.__thermal_zone* %4 to i8*, !dbg !4427
  %call = call zeroext i1 @IS_ERR(i8* %5) #8, !dbg !4428
  br i1 %call, label %if.then, label %if.end, !dbg !4429

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -19, i32* %retval, align 4, !dbg !4430
  br label %return, !dbg !4430

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4, !dbg !4431
  br label %for.cond, !dbg !4433

for.cond:                                         ; preds = %for.inc14, %if.end
  %6 = load i32, i32* %i, align 4, !dbg !4434
  %7 = load %struct.__thermal_zone*, %struct.__thermal_zone** %data, align 8, !dbg !4436
  %num_tbps = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %7, i32 0, i32 6, !dbg !4437
  %8 = load i32, i32* %num_tbps, align 8, !dbg !4437
  %cmp = icmp slt i32 %6, %8, !dbg !4438
  br i1 %cmp, label %for.body, label %for.end16, !dbg !4439

for.body:                                         ; preds = %for.cond
  %9 = load %struct.__thermal_zone*, %struct.__thermal_zone** %data, align 8, !dbg !4440
  %tbps = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %9, i32 0, i32 7, !dbg !4442
  %10 = load %struct.__thermal_bind_params*, %struct.__thermal_bind_params** %tbps, align 8, !dbg !4442
  %11 = load i32, i32* %i, align 4, !dbg !4443
  %idx.ext = sext i32 %11 to i64, !dbg !4444
  %add.ptr = getelementptr %struct.__thermal_bind_params, %struct.__thermal_bind_params* %10, i64 %idx.ext, !dbg !4444
  store %struct.__thermal_bind_params* %add.ptr, %struct.__thermal_bind_params** %tbp, align 8, !dbg !4445
  store i32 0, i32* %j, align 4, !dbg !4446
  br label %for.cond1, !dbg !4448

for.cond1:                                        ; preds = %for.inc, %for.body
  %12 = load i32, i32* %j, align 4, !dbg !4449
  %13 = load %struct.__thermal_bind_params*, %struct.__thermal_bind_params** %tbp, align 8, !dbg !4451
  %count = getelementptr inbounds %struct.__thermal_bind_params, %struct.__thermal_bind_params* %13, i32 0, i32 1, !dbg !4452
  %14 = load i32, i32* %count, align 8, !dbg !4452
  %cmp2 = icmp ult i32 %12, %14, !dbg !4453
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !4454

for.body3:                                        ; preds = %for.cond1
  %15 = load %struct.__thermal_bind_params*, %struct.__thermal_bind_params** %tbp, align 8, !dbg !4455
  %tcbp4 = getelementptr inbounds %struct.__thermal_bind_params, %struct.__thermal_bind_params* %15, i32 0, i32 0, !dbg !4457
  %16 = load %struct.__thermal_cooling_bind_param*, %struct.__thermal_cooling_bind_param** %tcbp4, align 8, !dbg !4457
  %17 = load i32, i32* %j, align 4, !dbg !4458
  %idx.ext5 = sext i32 %17 to i64, !dbg !4459
  %add.ptr6 = getelementptr %struct.__thermal_cooling_bind_param, %struct.__thermal_cooling_bind_param* %16, i64 %idx.ext5, !dbg !4459
  store %struct.__thermal_cooling_bind_param* %add.ptr6, %struct.__thermal_cooling_bind_param** %tcbp, align 8, !dbg !4460
  %18 = load %struct.__thermal_cooling_bind_param*, %struct.__thermal_cooling_bind_param** %tcbp, align 8, !dbg !4461
  %cooling_device = getelementptr inbounds %struct.__thermal_cooling_bind_param, %struct.__thermal_cooling_bind_param* %18, i32 0, i32 0, !dbg !4463
  %19 = load %struct.device_node*, %struct.device_node** %cooling_device, align 8, !dbg !4463
  %20 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %cdev.addr, align 8, !dbg !4464
  %np = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %20, i32 0, i32 3, !dbg !4465
  %21 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !4465
  %cmp7 = icmp eq %struct.device_node* %19, %21, !dbg !4466
  br i1 %cmp7, label %if.then8, label %if.end13, !dbg !4467

if.then8:                                         ; preds = %for.body3
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4468, metadata !DIExpression()), !dbg !4470
  %22 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %thermal.addr, align 8, !dbg !4471
  %23 = load %struct.__thermal_bind_params*, %struct.__thermal_bind_params** %tbp, align 8, !dbg !4472
  %trip_id = getelementptr inbounds %struct.__thermal_bind_params, %struct.__thermal_bind_params* %23, i32 0, i32 2, !dbg !4473
  %24 = load i32, i32* %trip_id, align 4, !dbg !4473
  %25 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %cdev.addr, align 8, !dbg !4474
  %26 = load %struct.__thermal_cooling_bind_param*, %struct.__thermal_cooling_bind_param** %tcbp, align 8, !dbg !4475
  %max = getelementptr inbounds %struct.__thermal_cooling_bind_param, %struct.__thermal_cooling_bind_param* %26, i32 0, i32 2, !dbg !4476
  %27 = load i64, i64* %max, align 8, !dbg !4476
  %28 = load %struct.__thermal_cooling_bind_param*, %struct.__thermal_cooling_bind_param** %tcbp, align 8, !dbg !4477
  %min = getelementptr inbounds %struct.__thermal_cooling_bind_param, %struct.__thermal_cooling_bind_param* %28, i32 0, i32 1, !dbg !4478
  %29 = load i64, i64* %min, align 8, !dbg !4478
  %30 = load %struct.__thermal_bind_params*, %struct.__thermal_bind_params** %tbp, align 8, !dbg !4479
  %usage = getelementptr inbounds %struct.__thermal_bind_params, %struct.__thermal_bind_params* %30, i32 0, i32 3, !dbg !4480
  %31 = load i32, i32* %usage, align 8, !dbg !4480
  %call9 = call i32 @thermal_zone_bind_cooling_device(%struct.thermal_zone_device* %22, i32 %24, %struct.thermal_cooling_device* %25, i64 %27, i64 %29, i32 %31) #8, !dbg !4481
  store i32 %call9, i32* %ret, align 4, !dbg !4482
  %32 = load i32, i32* %ret, align 4, !dbg !4483
  %tobool10 = icmp ne i32 %32, 0, !dbg !4483
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !4485

if.then11:                                        ; preds = %if.then8
  %33 = load i32, i32* %ret, align 4, !dbg !4486
  store i32 %33, i32* %retval, align 4, !dbg !4487
  br label %return, !dbg !4487

if.end12:                                         ; preds = %if.then8
  br label %if.end13, !dbg !4488

if.end13:                                         ; preds = %if.end12, %for.body3
  br label %for.inc, !dbg !4489

for.inc:                                          ; preds = %if.end13
  %34 = load i32, i32* %j, align 4, !dbg !4490
  %inc = add i32 %34, 1, !dbg !4490
  store i32 %inc, i32* %j, align 4, !dbg !4490
  br label %for.cond1, !dbg !4491, !llvm.loop !4492

for.end:                                          ; preds = %for.cond1
  br label %for.inc14, !dbg !4494

for.inc14:                                        ; preds = %for.end
  %35 = load i32, i32* %i, align 4, !dbg !4495
  %inc15 = add i32 %35, 1, !dbg !4495
  store i32 %inc15, i32* %i, align 4, !dbg !4495
  br label %for.cond, !dbg !4496, !llvm.loop !4497

for.end16:                                        ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !4499
  br label %return, !dbg !4499

return:                                           ; preds = %for.end16, %if.then11, %if.then
  %36 = load i32, i32* %retval, align 4, !dbg !4500
  ret i32 %36, !dbg !4500
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_thermal_unbind(%struct.thermal_zone_device* %thermal, %struct.thermal_cooling_device* %cdev) #0 !dbg !4501 {
entry:
  %retval = alloca i32, align 4
  %thermal.addr = alloca %struct.thermal_zone_device*, align 8
  %cdev.addr = alloca %struct.thermal_cooling_device*, align 8
  %data = alloca %struct.__thermal_zone*, align 8
  %tbp = alloca %struct.__thermal_bind_params*, align 8
  %tcbp = alloca %struct.__thermal_cooling_bind_param*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.thermal_zone_device* %thermal, %struct.thermal_zone_device** %thermal.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %thermal.addr, metadata !4502, metadata !DIExpression()), !dbg !4503
  store %struct.thermal_cooling_device* %cdev, %struct.thermal_cooling_device** %cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_cooling_device** %cdev.addr, metadata !4504, metadata !DIExpression()), !dbg !4505
  call void @llvm.dbg.declare(metadata %struct.__thermal_zone** %data, metadata !4506, metadata !DIExpression()), !dbg !4507
  %0 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %thermal.addr, align 8, !dbg !4508
  %devdata = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %0, i32 0, i32 8, !dbg !4509
  %1 = load i8*, i8** %devdata, align 8, !dbg !4509
  %2 = bitcast i8* %1 to %struct.__thermal_zone*, !dbg !4508
  store %struct.__thermal_zone* %2, %struct.__thermal_zone** %data, align 8, !dbg !4507
  call void @llvm.dbg.declare(metadata %struct.__thermal_bind_params** %tbp, metadata !4510, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.declare(metadata %struct.__thermal_cooling_bind_param** %tcbp, metadata !4512, metadata !DIExpression()), !dbg !4513
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4514, metadata !DIExpression()), !dbg !4515
  call void @llvm.dbg.declare(metadata i32* %j, metadata !4516, metadata !DIExpression()), !dbg !4517
  %3 = load %struct.__thermal_zone*, %struct.__thermal_zone** %data, align 8, !dbg !4518
  %tobool = icmp ne %struct.__thermal_zone* %3, null, !dbg !4518
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4520

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.__thermal_zone*, %struct.__thermal_zone** %data, align 8, !dbg !4521
  %5 = bitcast %struct.__thermal_zone* %4 to i8*, !dbg !4521
  %call = call zeroext i1 @IS_ERR(i8* %5) #8, !dbg !4522
  br i1 %call, label %if.then, label %if.end, !dbg !4523

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -19, i32* %retval, align 4, !dbg !4524
  br label %return, !dbg !4524

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4, !dbg !4525
  br label %for.cond, !dbg !4527

for.cond:                                         ; preds = %for.inc14, %if.end
  %6 = load i32, i32* %i, align 4, !dbg !4528
  %7 = load %struct.__thermal_zone*, %struct.__thermal_zone** %data, align 8, !dbg !4530
  %num_tbps = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %7, i32 0, i32 6, !dbg !4531
  %8 = load i32, i32* %num_tbps, align 8, !dbg !4531
  %cmp = icmp slt i32 %6, %8, !dbg !4532
  br i1 %cmp, label %for.body, label %for.end16, !dbg !4533

for.body:                                         ; preds = %for.cond
  %9 = load %struct.__thermal_zone*, %struct.__thermal_zone** %data, align 8, !dbg !4534
  %tbps = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %9, i32 0, i32 7, !dbg !4536
  %10 = load %struct.__thermal_bind_params*, %struct.__thermal_bind_params** %tbps, align 8, !dbg !4536
  %11 = load i32, i32* %i, align 4, !dbg !4537
  %idx.ext = sext i32 %11 to i64, !dbg !4538
  %add.ptr = getelementptr %struct.__thermal_bind_params, %struct.__thermal_bind_params* %10, i64 %idx.ext, !dbg !4538
  store %struct.__thermal_bind_params* %add.ptr, %struct.__thermal_bind_params** %tbp, align 8, !dbg !4539
  store i32 0, i32* %j, align 4, !dbg !4540
  br label %for.cond1, !dbg !4542

for.cond1:                                        ; preds = %for.inc, %for.body
  %12 = load i32, i32* %j, align 4, !dbg !4543
  %13 = load %struct.__thermal_bind_params*, %struct.__thermal_bind_params** %tbp, align 8, !dbg !4545
  %count = getelementptr inbounds %struct.__thermal_bind_params, %struct.__thermal_bind_params* %13, i32 0, i32 1, !dbg !4546
  %14 = load i32, i32* %count, align 8, !dbg !4546
  %cmp2 = icmp ult i32 %12, %14, !dbg !4547
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !4548

for.body3:                                        ; preds = %for.cond1
  %15 = load %struct.__thermal_bind_params*, %struct.__thermal_bind_params** %tbp, align 8, !dbg !4549
  %tcbp4 = getelementptr inbounds %struct.__thermal_bind_params, %struct.__thermal_bind_params* %15, i32 0, i32 0, !dbg !4551
  %16 = load %struct.__thermal_cooling_bind_param*, %struct.__thermal_cooling_bind_param** %tcbp4, align 8, !dbg !4551
  %17 = load i32, i32* %j, align 4, !dbg !4552
  %idx.ext5 = sext i32 %17 to i64, !dbg !4553
  %add.ptr6 = getelementptr %struct.__thermal_cooling_bind_param, %struct.__thermal_cooling_bind_param* %16, i64 %idx.ext5, !dbg !4553
  store %struct.__thermal_cooling_bind_param* %add.ptr6, %struct.__thermal_cooling_bind_param** %tcbp, align 8, !dbg !4554
  %18 = load %struct.__thermal_cooling_bind_param*, %struct.__thermal_cooling_bind_param** %tcbp, align 8, !dbg !4555
  %cooling_device = getelementptr inbounds %struct.__thermal_cooling_bind_param, %struct.__thermal_cooling_bind_param* %18, i32 0, i32 0, !dbg !4557
  %19 = load %struct.device_node*, %struct.device_node** %cooling_device, align 8, !dbg !4557
  %20 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %cdev.addr, align 8, !dbg !4558
  %np = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %20, i32 0, i32 3, !dbg !4559
  %21 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !4559
  %cmp7 = icmp eq %struct.device_node* %19, %21, !dbg !4560
  br i1 %cmp7, label %if.then8, label %if.end13, !dbg !4561

if.then8:                                         ; preds = %for.body3
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4562, metadata !DIExpression()), !dbg !4564
  %22 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %thermal.addr, align 8, !dbg !4565
  %23 = load %struct.__thermal_bind_params*, %struct.__thermal_bind_params** %tbp, align 8, !dbg !4566
  %trip_id = getelementptr inbounds %struct.__thermal_bind_params, %struct.__thermal_bind_params* %23, i32 0, i32 2, !dbg !4567
  %24 = load i32, i32* %trip_id, align 4, !dbg !4567
  %25 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %cdev.addr, align 8, !dbg !4568
  %call9 = call i32 @thermal_zone_unbind_cooling_device(%struct.thermal_zone_device* %22, i32 %24, %struct.thermal_cooling_device* %25) #8, !dbg !4569
  store i32 %call9, i32* %ret, align 4, !dbg !4570
  %26 = load i32, i32* %ret, align 4, !dbg !4571
  %tobool10 = icmp ne i32 %26, 0, !dbg !4571
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !4573

if.then11:                                        ; preds = %if.then8
  %27 = load i32, i32* %ret, align 4, !dbg !4574
  store i32 %27, i32* %retval, align 4, !dbg !4575
  br label %return, !dbg !4575

if.end12:                                         ; preds = %if.then8
  br label %if.end13, !dbg !4576

if.end13:                                         ; preds = %if.end12, %for.body3
  br label %for.inc, !dbg !4577

for.inc:                                          ; preds = %if.end13
  %28 = load i32, i32* %j, align 4, !dbg !4578
  %inc = add i32 %28, 1, !dbg !4578
  store i32 %inc, i32* %j, align 4, !dbg !4578
  br label %for.cond1, !dbg !4579, !llvm.loop !4580

for.end:                                          ; preds = %for.cond1
  br label %for.inc14, !dbg !4582

for.inc14:                                        ; preds = %for.end
  %29 = load i32, i32* %i, align 4, !dbg !4583
  %inc15 = add i32 %29, 1, !dbg !4583
  store i32 %inc15, i32* %i, align 4, !dbg !4583
  br label %for.cond, !dbg !4584, !llvm.loop !4585

for.end16:                                        ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !4587
  br label %return, !dbg !4587

return:                                           ; preds = %for.end16, %if.then11, %if.then
  %30 = load i32, i32* %retval, align 4, !dbg !4588
  ret i32 %30, !dbg !4588
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_thermal_get_trip_type(%struct.thermal_zone_device* %tz, i32 %trip, i32* %type) #0 !dbg !4589 {
entry:
  %retval = alloca i32, align 4
  %tz.addr = alloca %struct.thermal_zone_device*, align 8
  %trip.addr = alloca i32, align 4
  %type.addr = alloca i32*, align 8
  %data = alloca %struct.__thermal_zone*, align 8
  store %struct.thermal_zone_device* %tz, %struct.thermal_zone_device** %tz.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tz.addr, metadata !4590, metadata !DIExpression()), !dbg !4591
  store i32 %trip, i32* %trip.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %trip.addr, metadata !4592, metadata !DIExpression()), !dbg !4593
  store i32* %type, i32** %type.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %type.addr, metadata !4594, metadata !DIExpression()), !dbg !4595
  call void @llvm.dbg.declare(metadata %struct.__thermal_zone** %data, metadata !4596, metadata !DIExpression()), !dbg !4597
  %0 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !4598
  %devdata = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %0, i32 0, i32 8, !dbg !4599
  %1 = load i8*, i8** %devdata, align 8, !dbg !4599
  %2 = bitcast i8* %1 to %struct.__thermal_zone*, !dbg !4598
  store %struct.__thermal_zone* %2, %struct.__thermal_zone** %data, align 8, !dbg !4597
  %3 = load i32, i32* %trip.addr, align 4, !dbg !4600
  %4 = load %struct.__thermal_zone*, %struct.__thermal_zone** %data, align 8, !dbg !4602
  %ntrips = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %4, i32 0, i32 4, !dbg !4603
  %5 = load i32, i32* %ntrips, align 8, !dbg !4603
  %cmp = icmp sge i32 %3, %5, !dbg !4604
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4605

lor.lhs.false:                                    ; preds = %entry
  %6 = load i32, i32* %trip.addr, align 4, !dbg !4606
  %cmp1 = icmp slt i32 %6, 0, !dbg !4607
  br i1 %cmp1, label %if.then, label %if.end, !dbg !4608

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -33, i32* %retval, align 4, !dbg !4609
  br label %return, !dbg !4609

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct.__thermal_zone*, %struct.__thermal_zone** %data, align 8, !dbg !4610
  %trips = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %7, i32 0, i32 5, !dbg !4611
  %8 = load %struct.thermal_trip*, %struct.thermal_trip** %trips, align 8, !dbg !4611
  %9 = load i32, i32* %trip.addr, align 4, !dbg !4612
  %idxprom = sext i32 %9 to i64, !dbg !4610
  %arrayidx = getelementptr %struct.thermal_trip, %struct.thermal_trip* %8, i64 %idxprom, !dbg !4610
  %type2 = getelementptr inbounds %struct.thermal_trip, %struct.thermal_trip* %arrayidx, i32 0, i32 3, !dbg !4613
  %10 = load i32, i32* %type2, align 8, !dbg !4613
  %11 = load i32*, i32** %type.addr, align 8, !dbg !4614
  store i32 %10, i32* %11, align 4, !dbg !4615
  store i32 0, i32* %retval, align 4, !dbg !4616
  br label %return, !dbg !4616

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !4617
  ret i32 %12, !dbg !4617
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_thermal_get_trip_temp(%struct.thermal_zone_device* %tz, i32 %trip, i32* %temp) #0 !dbg !4618 {
entry:
  %retval = alloca i32, align 4
  %tz.addr = alloca %struct.thermal_zone_device*, align 8
  %trip.addr = alloca i32, align 4
  %temp.addr = alloca i32*, align 8
  %data = alloca %struct.__thermal_zone*, align 8
  store %struct.thermal_zone_device* %tz, %struct.thermal_zone_device** %tz.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tz.addr, metadata !4619, metadata !DIExpression()), !dbg !4620
  store i32 %trip, i32* %trip.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %trip.addr, metadata !4621, metadata !DIExpression()), !dbg !4622
  store i32* %temp, i32** %temp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %temp.addr, metadata !4623, metadata !DIExpression()), !dbg !4624
  call void @llvm.dbg.declare(metadata %struct.__thermal_zone** %data, metadata !4625, metadata !DIExpression()), !dbg !4626
  %0 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !4627
  %devdata = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %0, i32 0, i32 8, !dbg !4628
  %1 = load i8*, i8** %devdata, align 8, !dbg !4628
  %2 = bitcast i8* %1 to %struct.__thermal_zone*, !dbg !4627
  store %struct.__thermal_zone* %2, %struct.__thermal_zone** %data, align 8, !dbg !4626
  %3 = load i32, i32* %trip.addr, align 4, !dbg !4629
  %4 = load %struct.__thermal_zone*, %struct.__thermal_zone** %data, align 8, !dbg !4631
  %ntrips = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %4, i32 0, i32 4, !dbg !4632
  %5 = load i32, i32* %ntrips, align 8, !dbg !4632
  %cmp = icmp sge i32 %3, %5, !dbg !4633
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4634

lor.lhs.false:                                    ; preds = %entry
  %6 = load i32, i32* %trip.addr, align 4, !dbg !4635
  %cmp1 = icmp slt i32 %6, 0, !dbg !4636
  br i1 %cmp1, label %if.then, label %if.end, !dbg !4637

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -33, i32* %retval, align 4, !dbg !4638
  br label %return, !dbg !4638

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct.__thermal_zone*, %struct.__thermal_zone** %data, align 8, !dbg !4639
  %trips = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %7, i32 0, i32 5, !dbg !4640
  %8 = load %struct.thermal_trip*, %struct.thermal_trip** %trips, align 8, !dbg !4640
  %9 = load i32, i32* %trip.addr, align 4, !dbg !4641
  %idxprom = sext i32 %9 to i64, !dbg !4639
  %arrayidx = getelementptr %struct.thermal_trip, %struct.thermal_trip* %8, i64 %idxprom, !dbg !4639
  %temperature = getelementptr inbounds %struct.thermal_trip, %struct.thermal_trip* %arrayidx, i32 0, i32 1, !dbg !4642
  %10 = load i32, i32* %temperature, align 8, !dbg !4642
  %11 = load i32*, i32** %temp.addr, align 8, !dbg !4643
  store i32 %10, i32* %11, align 4, !dbg !4644
  store i32 0, i32* %retval, align 4, !dbg !4645
  br label %return, !dbg !4645

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !4646
  ret i32 %12, !dbg !4646
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_thermal_set_trip_temp(%struct.thermal_zone_device* %tz, i32 %trip, i32 %temp) #0 !dbg !4647 {
entry:
  %retval = alloca i32, align 4
  %tz.addr = alloca %struct.thermal_zone_device*, align 8
  %trip.addr = alloca i32, align 4
  %temp.addr = alloca i32, align 4
  %data = alloca %struct.__thermal_zone*, align 8
  %ret = alloca i32, align 4
  store %struct.thermal_zone_device* %tz, %struct.thermal_zone_device** %tz.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tz.addr, metadata !4648, metadata !DIExpression()), !dbg !4649
  store i32 %trip, i32* %trip.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %trip.addr, metadata !4650, metadata !DIExpression()), !dbg !4651
  store i32 %temp, i32* %temp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %temp.addr, metadata !4652, metadata !DIExpression()), !dbg !4653
  call void @llvm.dbg.declare(metadata %struct.__thermal_zone** %data, metadata !4654, metadata !DIExpression()), !dbg !4655
  %0 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !4656
  %devdata = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %0, i32 0, i32 8, !dbg !4657
  %1 = load i8*, i8** %devdata, align 8, !dbg !4657
  %2 = bitcast i8* %1 to %struct.__thermal_zone*, !dbg !4656
  store %struct.__thermal_zone* %2, %struct.__thermal_zone** %data, align 8, !dbg !4655
  %3 = load i32, i32* %trip.addr, align 4, !dbg !4658
  %4 = load %struct.__thermal_zone*, %struct.__thermal_zone** %data, align 8, !dbg !4660
  %ntrips = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %4, i32 0, i32 4, !dbg !4661
  %5 = load i32, i32* %ntrips, align 8, !dbg !4661
  %cmp = icmp sge i32 %3, %5, !dbg !4662
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4663

lor.lhs.false:                                    ; preds = %entry
  %6 = load i32, i32* %trip.addr, align 4, !dbg !4664
  %cmp1 = icmp slt i32 %6, 0, !dbg !4665
  br i1 %cmp1, label %if.then, label %if.end, !dbg !4666

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -33, i32* %retval, align 4, !dbg !4667
  br label %return, !dbg !4667

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct.__thermal_zone*, %struct.__thermal_zone** %data, align 8, !dbg !4668
  %ops = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %7, i32 0, i32 9, !dbg !4670
  %8 = load %struct.thermal_zone_of_device_ops*, %struct.thermal_zone_of_device_ops** %ops, align 8, !dbg !4670
  %set_trip_temp = getelementptr inbounds %struct.thermal_zone_of_device_ops, %struct.thermal_zone_of_device_ops* %8, i32 0, i32 4, !dbg !4671
  %9 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %set_trip_temp, align 8, !dbg !4671
  %tobool = icmp ne i32 (i8*, i32, i32)* %9, null, !dbg !4668
  br i1 %tobool, label %if.then2, label %if.end8, !dbg !4672

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4673, metadata !DIExpression()), !dbg !4675
  %10 = load %struct.__thermal_zone*, %struct.__thermal_zone** %data, align 8, !dbg !4676
  %ops3 = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %10, i32 0, i32 9, !dbg !4677
  %11 = load %struct.thermal_zone_of_device_ops*, %struct.thermal_zone_of_device_ops** %ops3, align 8, !dbg !4677
  %set_trip_temp4 = getelementptr inbounds %struct.thermal_zone_of_device_ops, %struct.thermal_zone_of_device_ops* %11, i32 0, i32 4, !dbg !4678
  %12 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %set_trip_temp4, align 8, !dbg !4678
  %13 = load %struct.__thermal_zone*, %struct.__thermal_zone** %data, align 8, !dbg !4679
  %sensor_data = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %13, i32 0, i32 8, !dbg !4680
  %14 = load i8*, i8** %sensor_data, align 8, !dbg !4680
  %15 = load i32, i32* %trip.addr, align 4, !dbg !4681
  %16 = load i32, i32* %temp.addr, align 4, !dbg !4682
  %call = call i32 %12(i8* %14, i32 %15, i32 %16) #8, !dbg !4676
  store i32 %call, i32* %ret, align 4, !dbg !4683
  %17 = load i32, i32* %ret, align 4, !dbg !4684
  %tobool5 = icmp ne i32 %17, 0, !dbg !4684
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !4686

if.then6:                                         ; preds = %if.then2
  %18 = load i32, i32* %ret, align 4, !dbg !4687
  store i32 %18, i32* %retval, align 4, !dbg !4688
  br label %return, !dbg !4688

if.end7:                                          ; preds = %if.then2
  br label %if.end8, !dbg !4689

if.end8:                                          ; preds = %if.end7, %if.end
  %19 = load i32, i32* %temp.addr, align 4, !dbg !4690
  %20 = load %struct.__thermal_zone*, %struct.__thermal_zone** %data, align 8, !dbg !4691
  %trips = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %20, i32 0, i32 5, !dbg !4692
  %21 = load %struct.thermal_trip*, %struct.thermal_trip** %trips, align 8, !dbg !4692
  %22 = load i32, i32* %trip.addr, align 4, !dbg !4693
  %idxprom = sext i32 %22 to i64, !dbg !4691
  %arrayidx = getelementptr %struct.thermal_trip, %struct.thermal_trip* %21, i64 %idxprom, !dbg !4691
  %temperature = getelementptr inbounds %struct.thermal_trip, %struct.thermal_trip* %arrayidx, i32 0, i32 1, !dbg !4694
  store i32 %19, i32* %temperature, align 8, !dbg !4695
  store i32 0, i32* %retval, align 4, !dbg !4696
  br label %return, !dbg !4696

return:                                           ; preds = %if.end8, %if.then6, %if.then
  %23 = load i32, i32* %retval, align 4, !dbg !4697
  ret i32 %23, !dbg !4697
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_thermal_get_trip_hyst(%struct.thermal_zone_device* %tz, i32 %trip, i32* %hyst) #0 !dbg !4698 {
entry:
  %retval = alloca i32, align 4
  %tz.addr = alloca %struct.thermal_zone_device*, align 8
  %trip.addr = alloca i32, align 4
  %hyst.addr = alloca i32*, align 8
  %data = alloca %struct.__thermal_zone*, align 8
  store %struct.thermal_zone_device* %tz, %struct.thermal_zone_device** %tz.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tz.addr, metadata !4699, metadata !DIExpression()), !dbg !4700
  store i32 %trip, i32* %trip.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %trip.addr, metadata !4701, metadata !DIExpression()), !dbg !4702
  store i32* %hyst, i32** %hyst.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hyst.addr, metadata !4703, metadata !DIExpression()), !dbg !4704
  call void @llvm.dbg.declare(metadata %struct.__thermal_zone** %data, metadata !4705, metadata !DIExpression()), !dbg !4706
  %0 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !4707
  %devdata = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %0, i32 0, i32 8, !dbg !4708
  %1 = load i8*, i8** %devdata, align 8, !dbg !4708
  %2 = bitcast i8* %1 to %struct.__thermal_zone*, !dbg !4707
  store %struct.__thermal_zone* %2, %struct.__thermal_zone** %data, align 8, !dbg !4706
  %3 = load i32, i32* %trip.addr, align 4, !dbg !4709
  %4 = load %struct.__thermal_zone*, %struct.__thermal_zone** %data, align 8, !dbg !4711
  %ntrips = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %4, i32 0, i32 4, !dbg !4712
  %5 = load i32, i32* %ntrips, align 8, !dbg !4712
  %cmp = icmp sge i32 %3, %5, !dbg !4713
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4714

lor.lhs.false:                                    ; preds = %entry
  %6 = load i32, i32* %trip.addr, align 4, !dbg !4715
  %cmp1 = icmp slt i32 %6, 0, !dbg !4716
  br i1 %cmp1, label %if.then, label %if.end, !dbg !4717

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -33, i32* %retval, align 4, !dbg !4718
  br label %return, !dbg !4718

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct.__thermal_zone*, %struct.__thermal_zone** %data, align 8, !dbg !4719
  %trips = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %7, i32 0, i32 5, !dbg !4720
  %8 = load %struct.thermal_trip*, %struct.thermal_trip** %trips, align 8, !dbg !4720
  %9 = load i32, i32* %trip.addr, align 4, !dbg !4721
  %idxprom = sext i32 %9 to i64, !dbg !4719
  %arrayidx = getelementptr %struct.thermal_trip, %struct.thermal_trip* %8, i64 %idxprom, !dbg !4719
  %hysteresis = getelementptr inbounds %struct.thermal_trip, %struct.thermal_trip* %arrayidx, i32 0, i32 2, !dbg !4722
  %10 = load i32, i32* %hysteresis, align 4, !dbg !4722
  %11 = load i32*, i32** %hyst.addr, align 8, !dbg !4723
  store i32 %10, i32* %11, align 4, !dbg !4724
  store i32 0, i32* %retval, align 4, !dbg !4725
  br label %return, !dbg !4725

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !4726
  ret i32 %12, !dbg !4726
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_thermal_set_trip_hyst(%struct.thermal_zone_device* %tz, i32 %trip, i32 %hyst) #0 !dbg !4727 {
entry:
  %retval = alloca i32, align 4
  %tz.addr = alloca %struct.thermal_zone_device*, align 8
  %trip.addr = alloca i32, align 4
  %hyst.addr = alloca i32, align 4
  %data = alloca %struct.__thermal_zone*, align 8
  store %struct.thermal_zone_device* %tz, %struct.thermal_zone_device** %tz.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tz.addr, metadata !4728, metadata !DIExpression()), !dbg !4729
  store i32 %trip, i32* %trip.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %trip.addr, metadata !4730, metadata !DIExpression()), !dbg !4731
  store i32 %hyst, i32* %hyst.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %hyst.addr, metadata !4732, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.declare(metadata %struct.__thermal_zone** %data, metadata !4734, metadata !DIExpression()), !dbg !4735
  %0 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !4736
  %devdata = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %0, i32 0, i32 8, !dbg !4737
  %1 = load i8*, i8** %devdata, align 8, !dbg !4737
  %2 = bitcast i8* %1 to %struct.__thermal_zone*, !dbg !4736
  store %struct.__thermal_zone* %2, %struct.__thermal_zone** %data, align 8, !dbg !4735
  %3 = load i32, i32* %trip.addr, align 4, !dbg !4738
  %4 = load %struct.__thermal_zone*, %struct.__thermal_zone** %data, align 8, !dbg !4740
  %ntrips = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %4, i32 0, i32 4, !dbg !4741
  %5 = load i32, i32* %ntrips, align 8, !dbg !4741
  %cmp = icmp sge i32 %3, %5, !dbg !4742
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4743

lor.lhs.false:                                    ; preds = %entry
  %6 = load i32, i32* %trip.addr, align 4, !dbg !4744
  %cmp1 = icmp slt i32 %6, 0, !dbg !4745
  br i1 %cmp1, label %if.then, label %if.end, !dbg !4746

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -33, i32* %retval, align 4, !dbg !4747
  br label %return, !dbg !4747

if.end:                                           ; preds = %lor.lhs.false
  %7 = load i32, i32* %hyst.addr, align 4, !dbg !4748
  %8 = load %struct.__thermal_zone*, %struct.__thermal_zone** %data, align 8, !dbg !4749
  %trips = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %8, i32 0, i32 5, !dbg !4750
  %9 = load %struct.thermal_trip*, %struct.thermal_trip** %trips, align 8, !dbg !4750
  %10 = load i32, i32* %trip.addr, align 4, !dbg !4751
  %idxprom = sext i32 %10 to i64, !dbg !4749
  %arrayidx = getelementptr %struct.thermal_trip, %struct.thermal_trip* %9, i64 %idxprom, !dbg !4749
  %hysteresis = getelementptr inbounds %struct.thermal_trip, %struct.thermal_trip* %arrayidx, i32 0, i32 2, !dbg !4752
  store i32 %7, i32* %hysteresis, align 4, !dbg !4753
  store i32 0, i32* %retval, align 4, !dbg !4754
  br label %return, !dbg !4754

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !4755
  ret i32 %11, !dbg !4755
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_thermal_get_crit_temp(%struct.thermal_zone_device* %tz, i32* %temp) #0 !dbg !4756 {
entry:
  %retval = alloca i32, align 4
  %tz.addr = alloca %struct.thermal_zone_device*, align 8
  %temp.addr = alloca i32*, align 8
  %data = alloca %struct.__thermal_zone*, align 8
  %i = alloca i32, align 4
  store %struct.thermal_zone_device* %tz, %struct.thermal_zone_device** %tz.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tz.addr, metadata !4757, metadata !DIExpression()), !dbg !4758
  store i32* %temp, i32** %temp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %temp.addr, metadata !4759, metadata !DIExpression()), !dbg !4760
  call void @llvm.dbg.declare(metadata %struct.__thermal_zone** %data, metadata !4761, metadata !DIExpression()), !dbg !4762
  %0 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tz.addr, align 8, !dbg !4763
  %devdata = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %0, i32 0, i32 8, !dbg !4764
  %1 = load i8*, i8** %devdata, align 8, !dbg !4764
  %2 = bitcast i8* %1 to %struct.__thermal_zone*, !dbg !4763
  store %struct.__thermal_zone* %2, %struct.__thermal_zone** %data, align 8, !dbg !4762
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4765, metadata !DIExpression()), !dbg !4766
  store i32 0, i32* %i, align 4, !dbg !4767
  br label %for.cond, !dbg !4769

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !dbg !4770
  %4 = load %struct.__thermal_zone*, %struct.__thermal_zone** %data, align 8, !dbg !4772
  %ntrips = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %4, i32 0, i32 4, !dbg !4773
  %5 = load i32, i32* %ntrips, align 8, !dbg !4773
  %cmp = icmp slt i32 %3, %5, !dbg !4774
  br i1 %cmp, label %for.body, label %for.end, !dbg !4775

for.body:                                         ; preds = %for.cond
  %6 = load %struct.__thermal_zone*, %struct.__thermal_zone** %data, align 8, !dbg !4776
  %trips = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %6, i32 0, i32 5, !dbg !4778
  %7 = load %struct.thermal_trip*, %struct.thermal_trip** %trips, align 8, !dbg !4778
  %8 = load i32, i32* %i, align 4, !dbg !4779
  %idxprom = sext i32 %8 to i64, !dbg !4776
  %arrayidx = getelementptr %struct.thermal_trip, %struct.thermal_trip* %7, i64 %idxprom, !dbg !4776
  %type = getelementptr inbounds %struct.thermal_trip, %struct.thermal_trip* %arrayidx, i32 0, i32 3, !dbg !4780
  %9 = load i32, i32* %type, align 8, !dbg !4780
  %cmp1 = icmp eq i32 %9, 3, !dbg !4781
  br i1 %cmp1, label %if.then, label %if.end, !dbg !4782

if.then:                                          ; preds = %for.body
  %10 = load %struct.__thermal_zone*, %struct.__thermal_zone** %data, align 8, !dbg !4783
  %trips2 = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %10, i32 0, i32 5, !dbg !4785
  %11 = load %struct.thermal_trip*, %struct.thermal_trip** %trips2, align 8, !dbg !4785
  %12 = load i32, i32* %i, align 4, !dbg !4786
  %idxprom3 = sext i32 %12 to i64, !dbg !4783
  %arrayidx4 = getelementptr %struct.thermal_trip, %struct.thermal_trip* %11, i64 %idxprom3, !dbg !4783
  %temperature = getelementptr inbounds %struct.thermal_trip, %struct.thermal_trip* %arrayidx4, i32 0, i32 1, !dbg !4787
  %13 = load i32, i32* %temperature, align 8, !dbg !4787
  %14 = load i32*, i32** %temp.addr, align 8, !dbg !4788
  store i32 %13, i32* %14, align 4, !dbg !4789
  store i32 0, i32* %retval, align 4, !dbg !4790
  br label %return, !dbg !4790

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !4791

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %i, align 4, !dbg !4792
  %inc = add i32 %15, 1, !dbg !4792
  store i32 %inc, i32* %i, align 4, !dbg !4792
  br label %for.cond, !dbg !4793, !llvm.loop !4794

for.end:                                          ; preds = %for.cond
  store i32 -22, i32* %retval, align 4, !dbg !4796
  br label %return, !dbg !4796

return:                                           ; preds = %for.end, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !4797
  ret i32 %16, !dbg !4797
}

; Function Attrs: noredzone
declare dso_local i32 @thermal_zone_bind_cooling_device(%struct.thermal_zone_device*, i32, %struct.thermal_cooling_device*, i64, i64, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @thermal_zone_unbind_cooling_device(%struct.thermal_zone_device*, i32, %struct.thermal_cooling_device*) #2

; Function Attrs: noredzone
declare dso_local void @thermal_zone_device_unregister(%struct.thermal_zone_device*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noredzone }
attributes #9 = { cold noredzone }
attributes #10 = { nounwind }
attributes #11 = { noredzone nounwind readnone }
attributes #12 = { noredzone nounwind }
attributes #13 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2246, !2247, !2248, !2249}
!llvm.ident = !{!2250}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "of_thermal_ops", scope: !2, file: !3, line: 360, type: !2099, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !92, globals: !2241, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/thermal/thermal_of.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !55, !61, !69, !80, !85}
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
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !81, line: 10, baseType: !7, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!82 = !{!83, !84}
!83 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!84 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !86, line: 305, baseType: !7, size: 32, elements: !87)
!86 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!87 = !{!88, !89, !90, !91}
!88 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!89 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!90 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!91 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!92 = !{!93, !94, !96, !97, !102, !208}
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !95, line: 148, baseType: !7)
!95 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!96 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_device", file: !62, line: 150, size: 8448, elements: !100)
!100 = !{!101, !103, !108, !2061, !2062, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2184, !2208, !2223, !2224, !2225, !2229, !2230, !2231, !2240}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !99, file: !62, line: 151, baseType: !102, size: 32)
!102 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !99, file: !62, line: 152, baseType: !104, size: 160, offset: 32)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 160, elements: !106)
!105 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!106 = !{!107}
!107 = !DISubrange(count: 20)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !99, file: !62, line: 153, baseType: !109, size: 5568, offset: 192)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !110)
!110 = !{!111, !1584, !1586, !1589, !1590, !1641, !1738, !1739, !1740, !1741, !1742, !1751, !1856, !1869, !1872, !1873, !1877, !1879, !1880, !1881, !1885, !1891, !1892, !1895, !2010, !2011, !2014, !2015, !2016, !2017, !2049, !2050, !2051, !2054, !2057, !2058, !2059, !2060}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !109, file: !30, line: 462, baseType: !112, size: 512)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !113, line: 64, size: 512, elements: !114)
!113 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!114 = !{!115, !118, !124, !126, !186, !1421, !1574, !1579, !1580, !1581, !1582, !1583}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !112, file: !113, line: 65, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !112, file: !113, line: 66, baseType: !119, size: 128, offset: 64)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !95, line: 178, size: 128, elements: !120)
!120 = !{!121, !123}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !119, file: !95, line: 179, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !119, file: !95, line: 179, baseType: !122, size: 64, offset: 64)
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
!157 = !{!102, !127, !125}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !151, file: !113, line: 158, baseType: !159, size: 64, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !160)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DISubroutineType(types: !162)
!162 = !{!116, !127, !125}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !151, file: !113, line: 159, baseType: !164, size: 64, offset: 128)
!164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DISubroutineType(types: !167)
!167 = !{!102, !127, !125, !168}
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !113, line: 148, size: 20736, elements: !170)
!170 = !{!171, !176, !180, !181, !185}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !169, file: !113, line: 149, baseType: !172, size: 192)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 192, elements: !174)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!174 = !{!175}
!175 = !DISubrange(count: 3)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !169, file: !113, line: 150, baseType: !177, size: 4096, offset: 192)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 4096, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !169, file: !113, line: 151, baseType: !102, size: 32, offset: 4288)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !169, file: !113, line: 152, baseType: !182, size: 16384, offset: 4320)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 16384, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 2048)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !169, file: !113, line: 153, baseType: !102, size: 32, offset: 20704)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !112, file: !113, line: 69, baseType: !187, size: 64, offset: 320)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !113, line: 138, size: 448, elements: !189)
!189 = !{!190, !194, !223, !225, !1367, !1400, !1404}
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
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !95, line: 60, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !206, line: 73, baseType: !207)
!206 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !206, line: 15, baseType: !208)
!208 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !198, line: 30, size: 128, elements: !211)
!211 = !{!212, !213}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !210, file: !198, line: 31, baseType: !116, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !210, file: !198, line: 32, baseType: !214, size: 16, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !95, line: 19, baseType: !215)
!215 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !197, file: !198, line: 232, baseType: !217, size: 64, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!204, !125, !209, !116, !220}
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !95, line: 55, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !206, line: 72, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !206, line: 16, baseType: !96)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !188, file: !113, line: 141, baseType: !224, size: 64, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !188, file: !113, line: 142, baseType: !226, size: 64, offset: 192)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !229)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !198, line: 84, size: 320, elements: !230)
!230 = !{!231, !232, !236, !1364, !1365}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !229, file: !198, line: 85, baseType: !116, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !229, file: !198, line: 86, baseType: !233, size: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!214, !125, !209, !102}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !229, file: !198, line: 88, baseType: !237, size: 64, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{!214, !125, !240, !102}
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !198, line: 168, size: 448, elements: !242)
!242 = !{!243, !244, !245, !246, !256, !257}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !241, file: !198, line: 169, baseType: !210, size: 128)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !241, file: !198, line: 170, baseType: !220, size: 64, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !241, file: !198, line: 171, baseType: !93, size: 64, offset: 192)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !241, file: !198, line: 172, baseType: !247, size: 64, offset: 256)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{!204, !250, !125, !240, !173, !253, !220}
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !252, line: 526, flags: DIFlagFwdDecl)
!252 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !95, line: 46, baseType: !254)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !206, line: 88, baseType: !255)
!255 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !241, file: !198, line: 174, baseType: !247, size: 64, offset: 320)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !241, file: !198, line: 176, baseType: !258, size: 64, offset: 384)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!102, !250, !125, !240, !261}
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !263, line: 305, size: 1472, elements: !264)
!263 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!264 = !{!265, !266, !267, !268, !269, !277, !278, !1338, !1344, !1345, !1350, !1351, !1354, !1358, !1359, !1360, !1361, !1362}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !262, file: !263, line: 308, baseType: !96, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !262, file: !263, line: 309, baseType: !96, size: 64, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !262, file: !263, line: 313, baseType: !261, size: 64, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !262, file: !263, line: 313, baseType: !261, size: 64, offset: 192)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !262, file: !263, line: 315, baseType: !270, size: 192, align: 64, offset: 256)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !271, line: 24, size: 192, align: 64, elements: !272)
!271 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!272 = !{!273, !274, !276}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !270, file: !271, line: 25, baseType: !96, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !270, file: !271, line: 26, baseType: !275, size: 64, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !270, file: !271, line: 27, baseType: !275, size: 64, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !262, file: !263, line: 323, baseType: !96, size: 64, offset: 448)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !262, file: !263, line: 327, baseType: !279, size: 64, offset: 512)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !263, line: 388, size: 7296, elements: !281)
!281 = !{!282, !1334}
!282 = !DIDerivedType(tag: DW_TAG_member, scope: !280, file: !263, line: 389, baseType: !283, size: 7296)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !280, file: !263, line: 389, size: 7296, elements: !284)
!284 = !{!285, !286, !290, !296, !300, !301, !302, !303, !304, !312, !317, !318, !319, !320, !329, !330, !331, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !366, !374, !377, !409, !410, !1304, !1305, !1308, !1312, !1313, !1316, !1317, !1318, !1321, !1333}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !283, file: !263, line: 390, baseType: !261, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !283, file: !263, line: 391, baseType: !287, size: 64, offset: 64)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !271, line: 31, size: 64, elements: !288)
!288 = !{!289}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !287, file: !271, line: 32, baseType: !275, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !283, file: !263, line: 392, baseType: !291, size: 64, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !292, line: 23, baseType: !293)
!292 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !294, line: 31, baseType: !295)
!294 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!295 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !283, file: !263, line: 394, baseType: !297, size: 64, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DISubroutineType(types: !299)
!299 = !{!96, !250, !96, !96, !96, !96}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !283, file: !263, line: 398, baseType: !96, size: 64, offset: 256)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !283, file: !263, line: 399, baseType: !96, size: 64, offset: 320)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !283, file: !263, line: 405, baseType: !96, size: 64, offset: 384)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !283, file: !263, line: 406, baseType: !96, size: 64, offset: 448)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !283, file: !263, line: 407, baseType: !305, size: 64, offset: 512)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !252, line: 286, baseType: !307)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !252, line: 286, size: 64, elements: !308)
!308 = !{!309}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !307, file: !252, line: 286, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !311, line: 18, baseType: !96)
!311 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!312 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !283, file: !263, line: 416, baseType: !313, size: 32, offset: 576)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !95, line: 168, baseType: !314)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !95, line: 166, size: 32, elements: !315)
!315 = !{!316}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !314, file: !95, line: 167, baseType: !102, size: 32)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !283, file: !263, line: 428, baseType: !313, size: 32, offset: 608)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !283, file: !263, line: 437, baseType: !313, size: 32, offset: 640)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !283, file: !263, line: 447, baseType: !313, size: 32, offset: 672)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !283, file: !263, line: 450, baseType: !321, size: 64, offset: 704)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !322, line: 13, baseType: !323)
!322 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !95, line: 175, baseType: !324)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !95, line: 173, size: 64, elements: !325)
!325 = !{!326}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !324, file: !95, line: 174, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !292, line: 22, baseType: !328)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !294, line: 30, baseType: !255)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !283, file: !263, line: 452, baseType: !102, size: 32, offset: 768)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !283, file: !263, line: 454, baseType: !132, offset: 800)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !283, file: !263, line: 457, baseType: !332, size: 256, offset: 832)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !333, line: 35, size: 256, elements: !334)
!333 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!334 = !{!335, !336, !337, !339}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !332, file: !333, line: 36, baseType: !321, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !332, file: !333, line: 42, baseType: !321, size: 64, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !332, file: !333, line: 46, baseType: !338, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !133, line: 29, baseType: !140)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !332, file: !333, line: 47, baseType: !119, size: 128, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !283, file: !263, line: 459, baseType: !119, size: 128, offset: 1088)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !283, file: !263, line: 466, baseType: !96, size: 64, offset: 1216)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !283, file: !263, line: 467, baseType: !96, size: 64, offset: 1280)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !283, file: !263, line: 469, baseType: !96, size: 64, offset: 1344)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !283, file: !263, line: 470, baseType: !96, size: 64, offset: 1408)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !283, file: !263, line: 471, baseType: !323, size: 64, offset: 1472)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !283, file: !263, line: 472, baseType: !96, size: 64, offset: 1536)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !283, file: !263, line: 473, baseType: !96, size: 64, offset: 1600)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !283, file: !263, line: 474, baseType: !96, size: 64, offset: 1664)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !283, file: !263, line: 475, baseType: !96, size: 64, offset: 1728)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !283, file: !263, line: 477, baseType: !132, offset: 1792)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !283, file: !263, line: 478, baseType: !96, size: 64, offset: 1792)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !283, file: !263, line: 478, baseType: !96, size: 64, offset: 1856)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !283, file: !263, line: 478, baseType: !96, size: 64, offset: 1920)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !283, file: !263, line: 478, baseType: !96, size: 64, offset: 1984)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !283, file: !263, line: 479, baseType: !96, size: 64, offset: 2048)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !283, file: !263, line: 479, baseType: !96, size: 64, offset: 2112)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !283, file: !263, line: 479, baseType: !96, size: 64, offset: 2176)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !283, file: !263, line: 480, baseType: !96, size: 64, offset: 2240)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !283, file: !263, line: 480, baseType: !96, size: 64, offset: 2304)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !283, file: !263, line: 480, baseType: !96, size: 64, offset: 2368)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !283, file: !263, line: 480, baseType: !96, size: 64, offset: 2432)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !283, file: !263, line: 482, baseType: !363, size: 2816, offset: 2496)
!363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 2816, elements: !364)
!364 = !{!365}
!365 = !DISubrange(count: 44)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !283, file: !263, line: 488, baseType: !367, size: 256, offset: 5312)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !368, line: 60, size: 256, elements: !369)
!368 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!369 = !{!370}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !367, file: !368, line: 61, baseType: !371, size: 256)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 256, elements: !372)
!372 = !{!373}
!373 = !DISubrange(count: 4)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !283, file: !263, line: 490, baseType: !375, size: 64, offset: 5568)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !263, line: 490, flags: DIFlagFwdDecl)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !283, file: !263, line: 493, baseType: !378, size: 896, offset: 5632)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !379, line: 53, baseType: !380)
!379 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !379, line: 13, size: 896, elements: !381)
!381 = !{!382, !383, !384, !385, !388, !389, !396, !397, !401, !402, !405}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !380, file: !379, line: 18, baseType: !291, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !380, file: !379, line: 28, baseType: !323, size: 64, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !380, file: !379, line: 31, baseType: !332, size: 256, offset: 128)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !380, file: !379, line: 32, baseType: !386, size: 64, offset: 384)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !379, line: 32, flags: DIFlagFwdDecl)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !380, file: !379, line: 37, baseType: !215, size: 16, offset: 448)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !380, file: !379, line: 40, baseType: !390, size: 192, offset: 512)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !391, line: 53, size: 192, elements: !392)
!391 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!392 = !{!393, !394, !395}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !390, file: !391, line: 54, baseType: !321, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !390, file: !391, line: 55, baseType: !132, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !390, file: !391, line: 59, baseType: !119, size: 128, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !380, file: !379, line: 41, baseType: !93, size: 64, offset: 704)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !380, file: !379, line: 42, baseType: !398, size: 64, offset: 768)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !400)
!400 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !379, line: 42, flags: DIFlagFwdDecl)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !380, file: !379, line: 44, baseType: !313, size: 32, offset: 832)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !380, file: !379, line: 50, baseType: !403, size: 16, offset: 864)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !292, line: 19, baseType: !404)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !294, line: 24, baseType: !215)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !380, file: !379, line: 51, baseType: !406, size: 16, offset: 880)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !292, line: 18, baseType: !407)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !294, line: 23, baseType: !408)
!408 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !283, file: !263, line: 495, baseType: !96, size: 64, offset: 6528)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !283, file: !263, line: 497, baseType: !411, size: 64, offset: 6592)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !263, line: 381, size: 384, elements: !413)
!413 = !{!414, !415, !1303}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !412, file: !263, line: 382, baseType: !313, size: 32)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !412, file: !263, line: 383, baseType: !416, size: 128, offset: 64)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !263, line: 376, size: 128, elements: !417)
!417 = !{!418, !1301}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !416, file: !263, line: 377, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !421, line: 640, size: 48640, elements: !422)
!421 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!422 = !{!423, !431, !433, !434, !440, !441, !442, !443, !444, !445, !446, !447, !451, !469, !480, !575, !576, !577, !588, !589, !591, !592, !593, !594, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !673, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !729, !731, !732, !733, !745, !747, !748, !749, !750, !751, !757, !758, !759, !760, !761, !762, !763, !775, !780, !784, !785, !786, !789, !793, !796, !799, !802, !805, !808, !811, !814, !820, !821, !822, !828, !829, !830, !831, !832, !841, !842, !843, !844, !845, !850, !851, !852, !855, !856, !859, !862, !865, !868, !871, !874, !875, !955, !958, !961, !962, !965, !966, !967, !973, !974, !975, !988, !989, !990, !1002, !1007, !1010, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !420, file: !421, line: 646, baseType: !424, size: 128)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !425, line: 56, size: 128, elements: !426)
!425 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!426 = !{!427, !428}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !424, file: !425, line: 57, baseType: !96, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !424, file: !425, line: 58, baseType: !429, size: 32, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !292, line: 21, baseType: !430)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !294, line: 27, baseType: !7)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !420, file: !421, line: 649, baseType: !432, size: 64, offset: 128)
!432 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !208)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !420, file: !421, line: 657, baseType: !93, size: 64, offset: 192)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !420, file: !421, line: 658, baseType: !435, size: 32, offset: 256)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !436, line: 113, baseType: !437)
!436 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !436, line: 111, size: 32, elements: !438)
!438 = !{!439}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !437, file: !436, line: 112, baseType: !313, size: 32)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !420, file: !421, line: 660, baseType: !7, size: 32, offset: 288)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !420, file: !421, line: 661, baseType: !7, size: 32, offset: 320)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !420, file: !421, line: 684, baseType: !102, size: 32, offset: 352)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !420, file: !421, line: 686, baseType: !102, size: 32, offset: 384)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !420, file: !421, line: 687, baseType: !102, size: 32, offset: 416)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !420, file: !421, line: 688, baseType: !102, size: 32, offset: 448)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !420, file: !421, line: 689, baseType: !7, size: 32, offset: 480)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !420, file: !421, line: 691, baseType: !448, size: 64, offset: 512)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !450)
!450 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !421, line: 691, flags: DIFlagFwdDecl)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !420, file: !421, line: 692, baseType: !452, size: 832, offset: 576)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !421, line: 451, size: 832, elements: !453)
!453 = !{!454, !459, !460, !461, !462, !463, !464, !465, !466, !467}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !452, file: !421, line: 453, baseType: !455, size: 128)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !421, line: 325, size: 128, elements: !456)
!456 = !{!457, !458}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !455, file: !421, line: 326, baseType: !96, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !455, file: !421, line: 327, baseType: !429, size: 32, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !452, file: !421, line: 454, baseType: !270, size: 192, align: 64, offset: 128)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !452, file: !421, line: 455, baseType: !119, size: 128, offset: 320)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !452, file: !421, line: 456, baseType: !7, size: 32, offset: 448)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !452, file: !421, line: 458, baseType: !291, size: 64, offset: 512)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !452, file: !421, line: 459, baseType: !291, size: 64, offset: 576)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !452, file: !421, line: 460, baseType: !291, size: 64, offset: 640)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !452, file: !421, line: 461, baseType: !291, size: 64, offset: 704)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !452, file: !421, line: 463, baseType: !291, size: 64, offset: 768)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !452, file: !421, line: 465, baseType: !468, offset: 832)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !421, line: 415, elements: !146)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !420, file: !421, line: 693, baseType: !470, size: 384, offset: 1408)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !421, line: 489, size: 384, elements: !471)
!471 = !{!472, !473, !474, !475, !476, !477, !478}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !470, file: !421, line: 490, baseType: !119, size: 128)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !470, file: !421, line: 491, baseType: !96, size: 64, offset: 128)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !470, file: !421, line: 492, baseType: !96, size: 64, offset: 192)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !470, file: !421, line: 493, baseType: !7, size: 32, offset: 256)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !470, file: !421, line: 494, baseType: !215, size: 16, offset: 288)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !470, file: !421, line: 495, baseType: !215, size: 16, offset: 304)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !470, file: !421, line: 497, baseType: !479, size: 64, offset: 320)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !420, file: !421, line: 697, baseType: !481, size: 1792, offset: 1792)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !421, line: 507, size: 1792, elements: !482)
!482 = !{!483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !572, !573}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !481, file: !421, line: 508, baseType: !270, size: 192, align: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !481, file: !421, line: 515, baseType: !291, size: 64, offset: 192)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !481, file: !421, line: 516, baseType: !291, size: 64, offset: 256)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !481, file: !421, line: 517, baseType: !291, size: 64, offset: 320)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !481, file: !421, line: 518, baseType: !291, size: 64, offset: 384)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !481, file: !421, line: 519, baseType: !291, size: 64, offset: 448)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !481, file: !421, line: 526, baseType: !327, size: 64, offset: 512)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !481, file: !421, line: 527, baseType: !291, size: 64, offset: 576)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !481, file: !421, line: 528, baseType: !7, size: 32, offset: 640)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !481, file: !421, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !481, file: !421, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !481, file: !421, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !481, file: !421, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !481, file: !421, line: 563, baseType: !497, size: 512, offset: 704)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !498)
!498 = !{!499, !507, !508, !513, !565, !569, !570, !571}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !497, file: !6, line: 119, baseType: !500, size: 256)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !501, line: 9, size: 256, elements: !502)
!501 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!502 = !{!503, !504}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !500, file: !501, line: 10, baseType: !270, size: 192, align: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !500, file: !501, line: 11, baseType: !505, size: 64, offset: 192)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !506, line: 29, baseType: !327)
!506 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!507 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !497, file: !6, line: 120, baseType: !505, size: 64, offset: 256)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !497, file: !6, line: 121, baseType: !509, size: 64, offset: 320)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{!5, !512}
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !497, file: !6, line: 122, baseType: !514, size: 64, offset: 384)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !516)
!516 = !{!517, !537, !538, !541, !551, !552, !560, !564}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !515, file: !6, line: 160, baseType: !518, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !520)
!520 = !{!521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !519, file: !6, line: 215, baseType: !338)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !519, file: !6, line: 216, baseType: !7, size: 32)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !519, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !519, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !519, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !519, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !519, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !519, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !519, file: !6, line: 233, baseType: !505, size: 64, offset: 128)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !519, file: !6, line: 234, baseType: !512, size: 64, offset: 192)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !519, file: !6, line: 235, baseType: !505, size: 64, offset: 256)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !519, file: !6, line: 236, baseType: !512, size: 64, offset: 320)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !519, file: !6, line: 237, baseType: !534, size: 4096, offset: 512)
!534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !515, size: 4096, elements: !535)
!535 = !{!536}
!536 = !DISubrange(count: 8)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !515, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !515, file: !6, line: 162, baseType: !539, size: 32, offset: 96)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !95, line: 27, baseType: !540)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !206, line: 96, baseType: !102)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !515, file: !6, line: 163, baseType: !542, size: 32, offset: 128)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !543, line: 276, baseType: !544)
!543 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !543, line: 276, size: 32, elements: !545)
!545 = !{!546}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !544, file: !543, line: 276, baseType: !547, size: 32)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !543, line: 70, baseType: !548)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !543, line: 65, size: 32, elements: !549)
!549 = !{!550}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !548, file: !543, line: 66, baseType: !7, size: 32)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !515, file: !6, line: 164, baseType: !512, size: 64, offset: 192)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !515, file: !6, line: 165, baseType: !553, size: 128, offset: 256)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !501, line: 14, size: 128, elements: !554)
!554 = !{!555}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !553, file: !501, line: 15, baseType: !556, size: 128)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !271, line: 125, size: 128, elements: !557)
!557 = !{!558, !559}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !556, file: !271, line: 126, baseType: !287, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !556, file: !271, line: 127, baseType: !275, size: 64, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !515, file: !6, line: 166, baseType: !561, size: 64, offset: 384)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DISubroutineType(types: !563)
!563 = !{!505}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !515, file: !6, line: 167, baseType: !505, size: 64, offset: 448)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !497, file: !6, line: 123, baseType: !566, size: 8, offset: 448)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !292, line: 17, baseType: !567)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !294, line: 21, baseType: !568)
!568 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !497, file: !6, line: 124, baseType: !566, size: 8, offset: 456)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !497, file: !6, line: 125, baseType: !566, size: 8, offset: 464)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !497, file: !6, line: 126, baseType: !566, size: 8, offset: 472)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !481, file: !421, line: 572, baseType: !497, size: 512, offset: 1216)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !481, file: !421, line: 580, baseType: !574, size: 64, offset: 1728)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !420, file: !421, line: 721, baseType: !7, size: 32, offset: 3584)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !420, file: !421, line: 722, baseType: !102, size: 32, offset: 3616)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !420, file: !421, line: 723, baseType: !578, size: 64, offset: 3648)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !580)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !581, line: 17, baseType: !582)
!581 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !581, line: 17, size: 64, elements: !583)
!583 = !{!584}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !582, file: !581, line: 17, baseType: !585, size: 64)
!585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 64, elements: !586)
!586 = !{!587}
!587 = !DISubrange(count: 1)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !420, file: !421, line: 724, baseType: !580, size: 64, offset: 3712)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !420, file: !421, line: 749, baseType: !590, offset: 3776)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !421, line: 290, elements: !146)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !420, file: !421, line: 751, baseType: !119, size: 128, offset: 3776)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !420, file: !421, line: 757, baseType: !279, size: 64, offset: 3904)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !420, file: !421, line: 758, baseType: !279, size: 64, offset: 3968)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !420, file: !421, line: 761, baseType: !595, size: 320, offset: 4032)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !368, line: 34, size: 320, elements: !596)
!596 = !{!597, !598}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !595, file: !368, line: 35, baseType: !291, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !595, file: !368, line: 36, baseType: !599, size: 256, offset: 64)
!599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !261, size: 256, elements: !372)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !420, file: !421, line: 766, baseType: !102, size: 32, offset: 4352)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !420, file: !421, line: 767, baseType: !102, size: 32, offset: 4384)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !420, file: !421, line: 768, baseType: !102, size: 32, offset: 4416)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !420, file: !421, line: 770, baseType: !102, size: 32, offset: 4448)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !420, file: !421, line: 772, baseType: !96, size: 64, offset: 4480)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !420, file: !421, line: 775, baseType: !7, size: 32, offset: 4544)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !420, file: !421, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !420, file: !421, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !420, file: !421, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !420, file: !421, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !420, file: !421, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !420, file: !421, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !420, file: !421, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !420, file: !421, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !420, file: !421, line: 831, baseType: !96, size: 64, offset: 4672)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !420, file: !421, line: 833, baseType: !616, size: 384, offset: 4736)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !617)
!617 = !{!618, !623}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !616, file: !12, line: 26, baseType: !619, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DISubroutineType(types: !621)
!621 = !{!208, !622}
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, scope: !616, file: !12, line: 27, baseType: !624, size: 320, offset: 64)
!624 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !616, file: !12, line: 27, size: 320, elements: !625)
!625 = !{!626, !636, !663}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !624, file: !12, line: 36, baseType: !627, size: 320)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !624, file: !12, line: 29, size: 320, elements: !628)
!628 = !{!629, !631, !632, !633, !634, !635}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !627, file: !12, line: 30, baseType: !630, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !627, file: !12, line: 31, baseType: !429, size: 32, offset: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !627, file: !12, line: 32, baseType: !429, size: 32, offset: 96)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !627, file: !12, line: 33, baseType: !429, size: 32, offset: 128)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !627, file: !12, line: 34, baseType: !291, size: 64, offset: 192)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !627, file: !12, line: 35, baseType: !630, size: 64, offset: 256)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !624, file: !12, line: 46, baseType: !637, size: 192)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !624, file: !12, line: 38, size: 192, elements: !638)
!638 = !{!639, !640, !641, !662}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !637, file: !12, line: 39, baseType: !539, size: 32)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !637, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!641 = !DIDerivedType(tag: DW_TAG_member, scope: !637, file: !12, line: 41, baseType: !642, size: 64, offset: 64)
!642 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !637, file: !12, line: 41, size: 64, elements: !643)
!643 = !{!644, !652}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !642, file: !12, line: 42, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !647, line: 7, size: 128, elements: !648)
!647 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!648 = !{!649, !651}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !646, file: !647, line: 8, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !206, line: 93, baseType: !255)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !646, file: !647, line: 9, baseType: !255, size: 64, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !642, file: !12, line: 43, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !655, line: 7, size: 64, elements: !656)
!655 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!656 = !{!657, !661}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !654, file: !655, line: 8, baseType: !658, size: 32)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !655, line: 5, baseType: !659)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !292, line: 20, baseType: !660)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !294, line: 26, baseType: !102)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !654, file: !655, line: 9, baseType: !659, size: 32, offset: 32)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !637, file: !12, line: 45, baseType: !291, size: 64, offset: 128)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !624, file: !12, line: 54, baseType: !664, size: 256)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !624, file: !12, line: 48, size: 256, elements: !665)
!665 = !{!666, !669, !670, !671, !672}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !664, file: !12, line: 49, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !664, file: !12, line: 50, baseType: !102, size: 32, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !664, file: !12, line: 51, baseType: !102, size: 32, offset: 96)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !664, file: !12, line: 52, baseType: !96, size: 64, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !664, file: !12, line: 53, baseType: !96, size: 64, offset: 192)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !420, file: !421, line: 835, baseType: !674, size: 32, offset: 5120)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !95, line: 22, baseType: !675)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !206, line: 28, baseType: !102)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !420, file: !421, line: 836, baseType: !674, size: 32, offset: 5152)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !420, file: !421, line: 840, baseType: !96, size: 64, offset: 5184)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !420, file: !421, line: 849, baseType: !419, size: 64, offset: 5248)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !420, file: !421, line: 852, baseType: !419, size: 64, offset: 5312)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !420, file: !421, line: 857, baseType: !119, size: 128, offset: 5376)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !420, file: !421, line: 858, baseType: !119, size: 128, offset: 5504)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !420, file: !421, line: 859, baseType: !419, size: 64, offset: 5632)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !420, file: !421, line: 867, baseType: !119, size: 128, offset: 5696)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !420, file: !421, line: 868, baseType: !119, size: 128, offset: 5824)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !420, file: !421, line: 871, baseType: !686, size: 64, offset: 5952)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !688, line: 59, size: 768, elements: !689)
!688 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!689 = !{!690, !691, !692, !693, !704, !705, !712, !721}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !687, file: !688, line: 61, baseType: !435, size: 32)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !687, file: !688, line: 62, baseType: !7, size: 32, offset: 32)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !687, file: !688, line: 63, baseType: !132, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !687, file: !688, line: 65, baseType: !694, size: 256, offset: 64)
!694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !695, size: 256, elements: !372)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !95, line: 182, size: 64, elements: !696)
!696 = !{!697}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !695, file: !95, line: 183, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !95, line: 186, size: 128, elements: !700)
!700 = !{!701, !702}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !699, file: !95, line: 187, baseType: !698, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !699, file: !95, line: 187, baseType: !703, size: 64, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !687, file: !688, line: 66, baseType: !695, size: 64, offset: 320)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !687, file: !688, line: 68, baseType: !706, size: 128, offset: 384)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !707, line: 40, baseType: !708)
!707 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !707, line: 36, size: 128, elements: !709)
!709 = !{!710, !711}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !708, file: !707, line: 37, baseType: !132)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !708, file: !707, line: 38, baseType: !119, size: 128)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !687, file: !688, line: 69, baseType: !713, size: 128, align: 64, offset: 512)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !95, line: 216, size: 128, align: 64, elements: !714)
!714 = !{!715, !717}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !713, file: !95, line: 217, baseType: !716, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !713, file: !95, line: 218, baseType: !718, size: 64, offset: 64)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{null, !716}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !687, file: !688, line: 70, baseType: !722, size: 128, offset: 640)
!722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !723, size: 128, elements: !586)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !688, line: 54, size: 128, elements: !724)
!724 = !{!725, !726}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !723, file: !688, line: 55, baseType: !102, size: 32)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !723, file: !688, line: 56, baseType: !727, size: 64, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !688, line: 56, flags: DIFlagFwdDecl)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !420, file: !421, line: 872, baseType: !730, size: 512, offset: 6016)
!730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !699, size: 512, elements: !372)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !420, file: !421, line: 873, baseType: !119, size: 128, offset: 6528)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !420, file: !421, line: 874, baseType: !119, size: 128, offset: 6656)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !420, file: !421, line: 876, baseType: !734, size: 64, offset: 6784)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !736, line: 26, size: 192, elements: !737)
!736 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!737 = !{!738, !739}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !735, file: !736, line: 27, baseType: !7, size: 32)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !735, file: !736, line: 28, baseType: !740, size: 128, offset: 64)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !741, line: 43, size: 128, elements: !742)
!741 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!742 = !{!743, !744}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !740, file: !741, line: 44, baseType: !338)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !740, file: !741, line: 45, baseType: !119, size: 128)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !420, file: !421, line: 879, baseType: !746, size: 64, offset: 6848)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !420, file: !421, line: 882, baseType: !746, size: 64, offset: 6912)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !420, file: !421, line: 884, baseType: !291, size: 64, offset: 6976)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !420, file: !421, line: 885, baseType: !291, size: 64, offset: 7040)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !420, file: !421, line: 890, baseType: !291, size: 64, offset: 7104)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !420, file: !421, line: 891, baseType: !752, size: 128, offset: 7168)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !421, line: 242, size: 128, elements: !753)
!753 = !{!754, !755, !756}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !752, file: !421, line: 244, baseType: !291, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !752, file: !421, line: 245, baseType: !291, size: 64, offset: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !752, file: !421, line: 246, baseType: !338, offset: 128)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !420, file: !421, line: 900, baseType: !96, size: 64, offset: 7296)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !420, file: !421, line: 901, baseType: !96, size: 64, offset: 7360)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !420, file: !421, line: 904, baseType: !291, size: 64, offset: 7424)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !420, file: !421, line: 907, baseType: !291, size: 64, offset: 7488)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !420, file: !421, line: 910, baseType: !96, size: 64, offset: 7552)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !420, file: !421, line: 911, baseType: !96, size: 64, offset: 7616)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !420, file: !421, line: 914, baseType: !764, size: 640, offset: 7680)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !765, line: 123, size: 640, elements: !766)
!765 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!766 = !{!767, !773, !774}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !764, file: !765, line: 124, baseType: !768, size: 576)
!768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !769, size: 576, elements: !174)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !765, line: 108, size: 192, elements: !770)
!770 = !{!771, !772}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !769, file: !765, line: 109, baseType: !291, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !769, file: !765, line: 110, baseType: !553, size: 128, offset: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !764, file: !765, line: 125, baseType: !7, size: 32, offset: 576)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !764, file: !765, line: 126, baseType: !7, size: 32, offset: 608)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !420, file: !421, line: 917, baseType: !776, size: 192, offset: 8320)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !765, line: 134, size: 192, elements: !777)
!777 = !{!778, !779}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !776, file: !765, line: 135, baseType: !713, size: 128, align: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !776, file: !765, line: 136, baseType: !7, size: 32, offset: 128)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !420, file: !421, line: 923, baseType: !781, size: 64, offset: 8512)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !783)
!783 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !421, line: 923, flags: DIFlagFwdDecl)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !420, file: !421, line: 926, baseType: !781, size: 64, offset: 8576)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !420, file: !421, line: 929, baseType: !781, size: 64, offset: 8640)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !420, file: !421, line: 933, baseType: !787, size: 64, offset: 8704)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !421, line: 933, flags: DIFlagFwdDecl)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !420, file: !421, line: 943, baseType: !790, size: 128, offset: 8768)
!790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 128, elements: !791)
!791 = !{!792}
!792 = !DISubrange(count: 16)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !420, file: !421, line: 945, baseType: !794, size: 64, offset: 8896)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !421, line: 49, flags: DIFlagFwdDecl)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !420, file: !421, line: 956, baseType: !797, size: 64, offset: 8960)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !421, line: 45, flags: DIFlagFwdDecl)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !420, file: !421, line: 959, baseType: !800, size: 64, offset: 9024)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !421, line: 959, flags: DIFlagFwdDecl)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !420, file: !421, line: 962, baseType: !803, size: 64, offset: 9088)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !421, line: 66, flags: DIFlagFwdDecl)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !420, file: !421, line: 966, baseType: !806, size: 64, offset: 9152)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !421, line: 50, flags: DIFlagFwdDecl)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !420, file: !421, line: 969, baseType: !809, size: 64, offset: 9216)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !765, line: 223, flags: DIFlagFwdDecl)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !420, file: !421, line: 970, baseType: !812, size: 64, offset: 9280)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !421, line: 62, flags: DIFlagFwdDecl)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !420, file: !421, line: 971, baseType: !815, size: 64, offset: 9344)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !816, line: 25, baseType: !817)
!816 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !816, line: 23, size: 64, elements: !818)
!818 = !{!819}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !817, file: !816, line: 24, baseType: !585, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !420, file: !421, line: 972, baseType: !815, size: 64, offset: 9408)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !420, file: !421, line: 974, baseType: !815, size: 64, offset: 9472)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !420, file: !421, line: 975, baseType: !823, size: 192, offset: 9536)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !824, line: 30, size: 192, elements: !825)
!824 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!825 = !{!826, !827}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !823, file: !824, line: 31, baseType: !119, size: 128)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !823, file: !824, line: 32, baseType: !815, size: 64, offset: 128)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !420, file: !421, line: 976, baseType: !96, size: 64, offset: 9728)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !420, file: !421, line: 977, baseType: !220, size: 64, offset: 9792)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !420, file: !421, line: 978, baseType: !7, size: 32, offset: 9856)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !420, file: !421, line: 980, baseType: !716, size: 64, offset: 9920)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !420, file: !421, line: 989, baseType: !833, size: 128, offset: 9984)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !834, line: 35, size: 128, elements: !835)
!834 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!835 = !{!836, !837, !838}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !833, file: !834, line: 36, baseType: !102, size: 32)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !833, file: !834, line: 37, baseType: !313, size: 32, offset: 32)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !833, file: !834, line: 38, baseType: !839, size: 64, offset: 64)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !834, line: 23, flags: DIFlagFwdDecl)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !420, file: !421, line: 992, baseType: !291, size: 64, offset: 10112)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !420, file: !421, line: 993, baseType: !291, size: 64, offset: 10176)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !420, file: !421, line: 996, baseType: !132, offset: 10240)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !420, file: !421, line: 999, baseType: !338, offset: 10240)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !420, file: !421, line: 1001, baseType: !846, size: 64, offset: 10240)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !421, line: 636, size: 64, elements: !847)
!847 = !{!848}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !846, file: !421, line: 637, baseType: !849, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !420, file: !421, line: 1005, baseType: !556, size: 128, offset: 10304)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !420, file: !421, line: 1007, baseType: !419, size: 64, offset: 10432)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !420, file: !421, line: 1009, baseType: !853, size: 64, offset: 10496)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !421, line: 1009, flags: DIFlagFwdDecl)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !420, file: !421, line: 1043, baseType: !93, size: 64, offset: 10560)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !420, file: !421, line: 1046, baseType: !857, size: 64, offset: 10624)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !421, line: 41, flags: DIFlagFwdDecl)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !420, file: !421, line: 1050, baseType: !860, size: 64, offset: 10688)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !421, line: 42, flags: DIFlagFwdDecl)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !420, file: !421, line: 1054, baseType: !863, size: 64, offset: 10752)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !421, line: 55, flags: DIFlagFwdDecl)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !420, file: !421, line: 1056, baseType: !866, size: 64, offset: 10816)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !421, line: 40, flags: DIFlagFwdDecl)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !420, file: !421, line: 1058, baseType: !869, size: 64, offset: 10880)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !421, line: 47, flags: DIFlagFwdDecl)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !420, file: !421, line: 1061, baseType: !872, size: 64, offset: 10944)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !421, line: 43, flags: DIFlagFwdDecl)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !420, file: !421, line: 1064, baseType: !96, size: 64, offset: 11008)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !420, file: !421, line: 1065, baseType: !876, size: 64, offset: 11072)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !824, line: 14, baseType: !878)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !824, line: 12, size: 384, elements: !879)
!879 = !{!880}
!880 = !DIDerivedType(tag: DW_TAG_member, scope: !878, file: !824, line: 13, baseType: !881, size: 384)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !878, file: !824, line: 13, size: 384, elements: !882)
!882 = !{!883, !884, !885, !886}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !881, file: !824, line: 13, baseType: !102, size: 32)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !881, file: !824, line: 13, baseType: !102, size: 32, offset: 32)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !881, file: !824, line: 13, baseType: !102, size: 32, offset: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !881, file: !824, line: 13, baseType: !887, size: 256, offset: 128)
!887 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !888, line: 32, size: 256, elements: !889)
!888 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!889 = !{!890, !896, !909, !915, !924, !944, !949}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !887, file: !888, line: 37, baseType: !891, size: 64)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !887, file: !888, line: 34, size: 64, elements: !892)
!892 = !{!893, !894}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !891, file: !888, line: 35, baseType: !675, size: 32)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !891, file: !888, line: 36, baseType: !895, size: 32, offset: 32)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !206, line: 49, baseType: !7)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !887, file: !888, line: 45, baseType: !897, size: 192)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !887, file: !888, line: 40, size: 192, elements: !898)
!898 = !{!899, !901, !902, !908}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !897, file: !888, line: 41, baseType: !900, size: 32)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !206, line: 95, baseType: !102)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !897, file: !888, line: 42, baseType: !102, size: 32, offset: 32)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !897, file: !888, line: 43, baseType: !903, size: 64, offset: 64)
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !888, line: 11, baseType: !904)
!904 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !888, line: 8, size: 64, elements: !905)
!905 = !{!906, !907}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !904, file: !888, line: 9, baseType: !102, size: 32)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !904, file: !888, line: 10, baseType: !93, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !897, file: !888, line: 44, baseType: !102, size: 32, offset: 128)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !887, file: !888, line: 52, baseType: !910, size: 128)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !887, file: !888, line: 48, size: 128, elements: !911)
!911 = !{!912, !913, !914}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !910, file: !888, line: 49, baseType: !675, size: 32)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !910, file: !888, line: 50, baseType: !895, size: 32, offset: 32)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !910, file: !888, line: 51, baseType: !903, size: 64, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !887, file: !888, line: 61, baseType: !916, size: 256)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !887, file: !888, line: 55, size: 256, elements: !917)
!917 = !{!918, !919, !920, !921, !923}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !916, file: !888, line: 56, baseType: !675, size: 32)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !916, file: !888, line: 57, baseType: !895, size: 32, offset: 32)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !916, file: !888, line: 58, baseType: !102, size: 32, offset: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !916, file: !888, line: 59, baseType: !922, size: 64, offset: 128)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !206, line: 94, baseType: !207)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !916, file: !888, line: 60, baseType: !922, size: 64, offset: 192)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !887, file: !888, line: 95, baseType: !925, size: 256)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !887, file: !888, line: 64, size: 256, elements: !926)
!926 = !{!927, !928}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !925, file: !888, line: 65, baseType: !93, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, scope: !925, file: !888, line: 77, baseType: !929, size: 192, offset: 64)
!929 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !925, file: !888, line: 77, size: 192, elements: !930)
!930 = !{!931, !932, !939}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !929, file: !888, line: 82, baseType: !408, size: 16)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !929, file: !888, line: 88, baseType: !933, size: 192)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !929, file: !888, line: 84, size: 192, elements: !934)
!934 = !{!935, !937, !938}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !933, file: !888, line: 85, baseType: !936, size: 64)
!936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 64, elements: !535)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !933, file: !888, line: 86, baseType: !93, size: 64, offset: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !933, file: !888, line: 87, baseType: !93, size: 64, offset: 128)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !929, file: !888, line: 93, baseType: !940, size: 96)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !929, file: !888, line: 90, size: 96, elements: !941)
!941 = !{!942, !943}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !940, file: !888, line: 91, baseType: !936, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !940, file: !888, line: 92, baseType: !430, size: 32, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !887, file: !888, line: 101, baseType: !945, size: 128)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !887, file: !888, line: 98, size: 128, elements: !946)
!946 = !{!947, !948}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !945, file: !888, line: 99, baseType: !208, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !945, file: !888, line: 100, baseType: !102, size: 32, offset: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !887, file: !888, line: 108, baseType: !950, size: 128)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !887, file: !888, line: 104, size: 128, elements: !951)
!951 = !{!952, !953, !954}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !950, file: !888, line: 105, baseType: !93, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !950, file: !888, line: 106, baseType: !102, size: 32, offset: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !950, file: !888, line: 107, baseType: !7, size: 32, offset: 96)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !420, file: !421, line: 1067, baseType: !956, offset: 11136)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !957, line: 12, elements: !146)
!957 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!958 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !420, file: !421, line: 1099, baseType: !959, size: 64, offset: 11136)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !421, line: 56, flags: DIFlagFwdDecl)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !420, file: !421, line: 1103, baseType: !119, size: 128, offset: 11200)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !420, file: !421, line: 1104, baseType: !963, size: 64, offset: 11328)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !421, line: 46, flags: DIFlagFwdDecl)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !420, file: !421, line: 1105, baseType: !390, size: 192, offset: 11392)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !420, file: !421, line: 1106, baseType: !7, size: 32, offset: 11584)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !420, file: !421, line: 1109, baseType: !968, size: 128, offset: 11648)
!968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !969, size: 128, elements: !971)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !421, line: 51, flags: DIFlagFwdDecl)
!971 = !{!972}
!972 = !DISubrange(count: 2)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !420, file: !421, line: 1110, baseType: !390, size: 192, offset: 11776)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !420, file: !421, line: 1111, baseType: !119, size: 128, offset: 11968)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !420, file: !421, line: 1173, baseType: !976, size: 64, offset: 12096)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !978, line: 62, size: 256, align: 256, elements: !979)
!978 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!979 = !{!980, !981, !982, !987}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !977, file: !978, line: 75, baseType: !430, size: 32)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !977, file: !978, line: 90, baseType: !430, size: 32, offset: 32)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !977, file: !978, line: 124, baseType: !983, size: 64, offset: 64)
!983 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !977, file: !978, line: 109, size: 64, elements: !984)
!984 = !{!985, !986}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !983, file: !978, line: 110, baseType: !293, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !983, file: !978, line: 112, baseType: !293, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !977, file: !978, line: 144, baseType: !430, size: 32, offset: 128)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !420, file: !421, line: 1174, baseType: !429, size: 32, offset: 12160)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !420, file: !421, line: 1179, baseType: !96, size: 64, offset: 12224)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !420, file: !421, line: 1182, baseType: !991, size: 128, offset: 12288)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !368, line: 76, size: 128, elements: !992)
!992 = !{!993, !998, !1001}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !991, file: !368, line: 85, baseType: !994, size: 64)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !995, line: 7, size: 64, elements: !996)
!995 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!996 = !{!997}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !994, file: !995, line: 12, baseType: !582, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !991, file: !368, line: 88, baseType: !999, size: 8, offset: 64)
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !95, line: 30, baseType: !1000)
!1000 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !991, file: !368, line: 95, baseType: !999, size: 8, offset: 72)
!1002 = !DIDerivedType(tag: DW_TAG_member, scope: !420, file: !421, line: 1184, baseType: !1003, size: 128, offset: 12416)
!1003 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !420, file: !421, line: 1184, size: 128, elements: !1004)
!1004 = !{!1005, !1006}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1003, file: !421, line: 1185, baseType: !435, size: 32)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1003, file: !421, line: 1186, baseType: !713, size: 128, align: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !420, file: !421, line: 1190, baseType: !1008, size: 64, offset: 12544)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !421, line: 53, flags: DIFlagFwdDecl)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !420, file: !421, line: 1192, baseType: !1011, size: 128, offset: 12608)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !368, line: 64, size: 128, elements: !1012)
!1012 = !{!1013, !1106, !1107}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1011, file: !368, line: 65, baseType: !1014, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !263, line: 68, size: 512, align: 128, elements: !1016)
!1016 = !{!1017, !1018, !1098, !1105}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1015, file: !263, line: 69, baseType: !96, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, scope: !1015, file: !263, line: 77, baseType: !1019, size: 320, offset: 64)
!1019 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1015, file: !263, line: 77, size: 320, elements: !1020)
!1020 = !{!1021, !1030, !1035, !1063, !1071, !1077, !1090, !1097}
!1021 = !DIDerivedType(tag: DW_TAG_member, scope: !1019, file: !263, line: 78, baseType: !1022, size: 320)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1019, file: !263, line: 78, size: 320, elements: !1023)
!1023 = !{!1024, !1025, !1028, !1029}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1022, file: !263, line: 84, baseType: !119, size: 128)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1022, file: !263, line: 86, baseType: !1026, size: 64, offset: 128)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !263, line: 26, flags: DIFlagFwdDecl)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1022, file: !263, line: 87, baseType: !96, size: 64, offset: 192)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1022, file: !263, line: 94, baseType: !96, size: 64, offset: 256)
!1030 = !DIDerivedType(tag: DW_TAG_member, scope: !1019, file: !263, line: 96, baseType: !1031, size: 64)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1019, file: !263, line: 96, size: 64, elements: !1032)
!1032 = !{!1033}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1031, file: !263, line: 101, baseType: !1034, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !95, line: 143, baseType: !291)
!1035 = !DIDerivedType(tag: DW_TAG_member, scope: !1019, file: !263, line: 103, baseType: !1036, size: 320)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1019, file: !263, line: 103, size: 320, elements: !1037)
!1037 = !{!1038, !1048, !1051, !1052}
!1038 = !DIDerivedType(tag: DW_TAG_member, scope: !1036, file: !263, line: 104, baseType: !1039, size: 128)
!1039 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1036, file: !263, line: 104, size: 128, elements: !1040)
!1040 = !{!1041, !1042}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1039, file: !263, line: 105, baseType: !119, size: 128)
!1042 = !DIDerivedType(tag: DW_TAG_member, scope: !1039, file: !263, line: 106, baseType: !1043, size: 128)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1039, file: !263, line: 106, size: 128, elements: !1044)
!1044 = !{!1045, !1046, !1047}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1043, file: !263, line: 107, baseType: !1014, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1043, file: !263, line: 109, baseType: !102, size: 32, offset: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1043, file: !263, line: 110, baseType: !102, size: 32, offset: 96)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1036, file: !263, line: 117, baseType: !1049, size: 64, offset: 128)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !263, line: 117, flags: DIFlagFwdDecl)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1036, file: !263, line: 119, baseType: !93, size: 64, offset: 192)
!1052 = !DIDerivedType(tag: DW_TAG_member, scope: !1036, file: !263, line: 120, baseType: !1053, size: 64, offset: 256)
!1053 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1036, file: !263, line: 120, size: 64, elements: !1054)
!1054 = !{!1055, !1056, !1057}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1053, file: !263, line: 121, baseType: !93, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1053, file: !263, line: 122, baseType: !96, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, scope: !1053, file: !263, line: 123, baseType: !1058, size: 32)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1053, file: !263, line: 123, size: 32, elements: !1059)
!1059 = !{!1060, !1061, !1062}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1058, file: !263, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1058, file: !263, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1058, file: !263, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1063 = !DIDerivedType(tag: DW_TAG_member, scope: !1019, file: !263, line: 130, baseType: !1064, size: 192)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1019, file: !263, line: 130, size: 192, elements: !1065)
!1065 = !{!1066, !1067, !1068, !1069, !1070}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1064, file: !263, line: 131, baseType: !96, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1064, file: !263, line: 134, baseType: !568, size: 8, offset: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1064, file: !263, line: 135, baseType: !568, size: 8, offset: 72)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1064, file: !263, line: 136, baseType: !313, size: 32, offset: 96)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1064, file: !263, line: 137, baseType: !7, size: 32, offset: 128)
!1071 = !DIDerivedType(tag: DW_TAG_member, scope: !1019, file: !263, line: 139, baseType: !1072, size: 256)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1019, file: !263, line: 139, size: 256, elements: !1073)
!1073 = !{!1074, !1075, !1076}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1072, file: !263, line: 140, baseType: !96, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1072, file: !263, line: 141, baseType: !313, size: 32, offset: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1072, file: !263, line: 143, baseType: !119, size: 128, offset: 128)
!1077 = !DIDerivedType(tag: DW_TAG_member, scope: !1019, file: !263, line: 145, baseType: !1078, size: 256)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1019, file: !263, line: 145, size: 256, elements: !1079)
!1079 = !{!1080, !1081, !1083, !1084, !1089}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1078, file: !263, line: 146, baseType: !96, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1078, file: !263, line: 147, baseType: !1082, size: 64, offset: 64)
!1082 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !252, line: 509, baseType: !1014)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1078, file: !263, line: 148, baseType: !96, size: 64, offset: 128)
!1084 = !DIDerivedType(tag: DW_TAG_member, scope: !1078, file: !263, line: 149, baseType: !1085, size: 64, offset: 192)
!1085 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1078, file: !263, line: 149, size: 64, elements: !1086)
!1086 = !{!1087, !1088}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1085, file: !263, line: 150, baseType: !279, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1085, file: !263, line: 151, baseType: !313, size: 32)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1078, file: !263, line: 156, baseType: !132, offset: 256)
!1090 = !DIDerivedType(tag: DW_TAG_member, scope: !1019, file: !263, line: 159, baseType: !1091, size: 128)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1019, file: !263, line: 159, size: 128, elements: !1092)
!1092 = !{!1093, !1096}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1091, file: !263, line: 161, baseType: !1094, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !263, line: 161, flags: DIFlagFwdDecl)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1091, file: !263, line: 162, baseType: !93, size: 64, offset: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1019, file: !263, line: 176, baseType: !713, size: 128, align: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, scope: !1015, file: !263, line: 179, baseType: !1099, size: 32, offset: 384)
!1099 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1015, file: !263, line: 179, size: 32, elements: !1100)
!1100 = !{!1101, !1102, !1103, !1104}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1099, file: !263, line: 184, baseType: !313, size: 32)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1099, file: !263, line: 192, baseType: !7, size: 32)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1099, file: !263, line: 194, baseType: !7, size: 32)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1099, file: !263, line: 195, baseType: !102, size: 32)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1015, file: !263, line: 199, baseType: !313, size: 32, offset: 416)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1011, file: !368, line: 67, baseType: !430, size: 32, offset: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1011, file: !368, line: 68, baseType: !430, size: 32, offset: 96)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !420, file: !421, line: 1206, baseType: !102, size: 32, offset: 12736)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !420, file: !421, line: 1207, baseType: !102, size: 32, offset: 12768)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !420, file: !421, line: 1209, baseType: !96, size: 64, offset: 12800)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !420, file: !421, line: 1219, baseType: !291, size: 64, offset: 12864)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !420, file: !421, line: 1220, baseType: !291, size: 64, offset: 12928)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !420, file: !421, line: 1317, baseType: !102, size: 32, offset: 12992)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !420, file: !421, line: 1319, baseType: !419, size: 64, offset: 13056)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !420, file: !421, line: 1322, baseType: !1116, size: 64, offset: 13120)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !421, line: 1322, flags: DIFlagFwdDecl)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !420, file: !421, line: 1326, baseType: !435, size: 32, offset: 13184)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !420, file: !421, line: 1342, baseType: !93, size: 64, offset: 13248)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !420, file: !421, line: 1343, baseType: !293, size: 64, offset: 13312)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !420, file: !421, line: 1344, baseType: !291, size: 64, offset: 13376)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !420, file: !421, line: 1345, baseType: !293, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !420, file: !421, line: 1346, baseType: !293, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !420, file: !421, line: 1347, baseType: !293, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !420, file: !421, line: 1348, baseType: !713, size: 128, align: 64, offset: 13504)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !420, file: !421, line: 1358, baseType: !1127, size: 34816, offset: 13824)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1128, line: 485, size: 34816, elements: !1129)
!1128 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1129 = !{!1130, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1159, !1160, !1161, !1162, !1163, !1164, !1167, !1168, !1169}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1127, file: !1128, line: 487, baseType: !1131, size: 192)
!1131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1132, size: 192, elements: !174)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1133, line: 16, size: 64, elements: !1134)
!1133 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1134 = !{!1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1132, file: !1133, line: 17, baseType: !403, size: 16)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1132, file: !1133, line: 18, baseType: !403, size: 16, offset: 16)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1132, file: !1133, line: 19, baseType: !403, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1132, file: !1133, line: 19, baseType: !403, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1132, file: !1133, line: 19, baseType: !403, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1132, file: !1133, line: 19, baseType: !403, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1132, file: !1133, line: 19, baseType: !403, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1132, file: !1133, line: 20, baseType: !403, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1132, file: !1133, line: 20, baseType: !403, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1132, file: !1133, line: 20, baseType: !403, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1132, file: !1133, line: 20, baseType: !403, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1132, file: !1133, line: 20, baseType: !403, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1132, file: !1133, line: 20, baseType: !403, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1127, file: !1128, line: 491, baseType: !96, size: 64, offset: 192)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1127, file: !1128, line: 495, baseType: !215, size: 16, offset: 256)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1127, file: !1128, line: 496, baseType: !215, size: 16, offset: 272)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1127, file: !1128, line: 497, baseType: !215, size: 16, offset: 288)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1127, file: !1128, line: 498, baseType: !215, size: 16, offset: 304)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1127, file: !1128, line: 502, baseType: !96, size: 64, offset: 320)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1127, file: !1128, line: 503, baseType: !96, size: 64, offset: 384)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1127, file: !1128, line: 514, baseType: !1156, size: 256, offset: 448)
!1156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1157, size: 256, elements: !372)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1128, line: 483, flags: DIFlagFwdDecl)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1127, file: !1128, line: 516, baseType: !96, size: 64, offset: 704)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1127, file: !1128, line: 518, baseType: !96, size: 64, offset: 768)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1127, file: !1128, line: 520, baseType: !96, size: 64, offset: 832)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1127, file: !1128, line: 521, baseType: !96, size: 64, offset: 896)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1127, file: !1128, line: 522, baseType: !96, size: 64, offset: 960)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1127, file: !1128, line: 528, baseType: !1165, size: 64, offset: 1024)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1128, line: 10, flags: DIFlagFwdDecl)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1127, file: !1128, line: 535, baseType: !96, size: 64, offset: 1088)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1127, file: !1128, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1127, file: !1128, line: 540, baseType: !1170, size: 33280, offset: 1536)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1171, line: 317, size: 33280, elements: !1172)
!1171 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1172 = !{!1173, !1174, !1175}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1170, file: !1171, line: 330, baseType: !7, size: 32)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1170, file: !1171, line: 337, baseType: !96, size: 64, offset: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1170, file: !1171, line: 348, baseType: !1176, size: 32768, offset: 512)
!1176 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1171, line: 304, size: 32768, elements: !1177)
!1177 = !{!1178, !1191, !1230, !1280, !1297}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1176, file: !1171, line: 305, baseType: !1179, size: 896)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1171, line: 12, size: 896, elements: !1180)
!1180 = !{!1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1190}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1179, file: !1171, line: 13, baseType: !429, size: 32)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1179, file: !1171, line: 14, baseType: !429, size: 32, offset: 32)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1179, file: !1171, line: 15, baseType: !429, size: 32, offset: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1179, file: !1171, line: 16, baseType: !429, size: 32, offset: 96)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1179, file: !1171, line: 17, baseType: !429, size: 32, offset: 128)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1179, file: !1171, line: 18, baseType: !429, size: 32, offset: 160)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1179, file: !1171, line: 19, baseType: !429, size: 32, offset: 192)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1179, file: !1171, line: 22, baseType: !1189, size: 640, offset: 224)
!1189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !429, size: 640, elements: !106)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1179, file: !1171, line: 25, baseType: !429, size: 32, offset: 864)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1176, file: !1171, line: 306, baseType: !1192, size: 4096, align: 128)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1171, line: 34, size: 4096, align: 128, elements: !1193)
!1193 = !{!1194, !1195, !1196, !1197, !1198, !1213, !1214, !1215, !1219, !1221, !1225}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1192, file: !1171, line: 35, baseType: !403, size: 16)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1192, file: !1171, line: 36, baseType: !403, size: 16, offset: 16)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1192, file: !1171, line: 37, baseType: !403, size: 16, offset: 32)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1192, file: !1171, line: 38, baseType: !403, size: 16, offset: 48)
!1198 = !DIDerivedType(tag: DW_TAG_member, scope: !1192, file: !1171, line: 39, baseType: !1199, size: 128, offset: 64)
!1199 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1192, file: !1171, line: 39, size: 128, elements: !1200)
!1200 = !{!1201, !1206}
!1201 = !DIDerivedType(tag: DW_TAG_member, scope: !1199, file: !1171, line: 40, baseType: !1202, size: 128)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1199, file: !1171, line: 40, size: 128, elements: !1203)
!1203 = !{!1204, !1205}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1202, file: !1171, line: 41, baseType: !291, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1202, file: !1171, line: 42, baseType: !291, size: 64, offset: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, scope: !1199, file: !1171, line: 44, baseType: !1207, size: 128)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1199, file: !1171, line: 44, size: 128, elements: !1208)
!1208 = !{!1209, !1210, !1211, !1212}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1207, file: !1171, line: 45, baseType: !429, size: 32)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1207, file: !1171, line: 46, baseType: !429, size: 32, offset: 32)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1207, file: !1171, line: 47, baseType: !429, size: 32, offset: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1207, file: !1171, line: 48, baseType: !429, size: 32, offset: 96)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1192, file: !1171, line: 51, baseType: !429, size: 32, offset: 192)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1192, file: !1171, line: 52, baseType: !429, size: 32, offset: 224)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1192, file: !1171, line: 55, baseType: !1216, size: 1024, offset: 256)
!1216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !429, size: 1024, elements: !1217)
!1217 = !{!1218}
!1218 = !DISubrange(count: 32)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1192, file: !1171, line: 58, baseType: !1220, size: 2048, offset: 1280)
!1220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !429, size: 2048, elements: !178)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1192, file: !1171, line: 60, baseType: !1222, size: 384, offset: 3328)
!1222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !429, size: 384, elements: !1223)
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
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1231, file: !1171, line: 80, baseType: !429, size: 32)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1231, file: !1171, line: 81, baseType: !429, size: 32, offset: 32)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1231, file: !1171, line: 82, baseType: !429, size: 32, offset: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1231, file: !1171, line: 83, baseType: !429, size: 32, offset: 96)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1231, file: !1171, line: 84, baseType: !429, size: 32, offset: 128)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1231, file: !1171, line: 85, baseType: !429, size: 32, offset: 160)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1231, file: !1171, line: 86, baseType: !429, size: 32, offset: 192)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1231, file: !1171, line: 88, baseType: !1189, size: 640, offset: 224)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1231, file: !1171, line: 89, baseType: !566, size: 8, offset: 864)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1231, file: !1171, line: 90, baseType: !566, size: 8, offset: 872)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1231, file: !1171, line: 91, baseType: !566, size: 8, offset: 880)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1231, file: !1171, line: 92, baseType: !566, size: 8, offset: 888)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1231, file: !1171, line: 93, baseType: !566, size: 8, offset: 896)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1231, file: !1171, line: 94, baseType: !566, size: 8, offset: 904)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1231, file: !1171, line: 95, baseType: !1248, size: 64, offset: 960)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1250, line: 11, size: 128, elements: !1251)
!1250 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1251 = !{!1252, !1253}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1249, file: !1250, line: 12, baseType: !208, size: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1249, file: !1250, line: 13, baseType: !1254, size: 64, offset: 64)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1256, line: 56, size: 1344, elements: !1257)
!1256 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1257 = !{!1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1255, file: !1256, line: 61, baseType: !96, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1255, file: !1256, line: 62, baseType: !96, size: 64, offset: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1255, file: !1256, line: 63, baseType: !96, size: 64, offset: 128)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1255, file: !1256, line: 64, baseType: !96, size: 64, offset: 192)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1255, file: !1256, line: 65, baseType: !96, size: 64, offset: 256)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1255, file: !1256, line: 66, baseType: !96, size: 64, offset: 320)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1255, file: !1256, line: 68, baseType: !96, size: 64, offset: 384)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1255, file: !1256, line: 69, baseType: !96, size: 64, offset: 448)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1255, file: !1256, line: 70, baseType: !96, size: 64, offset: 512)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1255, file: !1256, line: 71, baseType: !96, size: 64, offset: 576)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1255, file: !1256, line: 72, baseType: !96, size: 64, offset: 640)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1255, file: !1256, line: 73, baseType: !96, size: 64, offset: 704)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1255, file: !1256, line: 74, baseType: !96, size: 64, offset: 768)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1255, file: !1256, line: 75, baseType: !96, size: 64, offset: 832)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1255, file: !1256, line: 76, baseType: !96, size: 64, offset: 896)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1255, file: !1256, line: 81, baseType: !96, size: 64, offset: 960)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1255, file: !1256, line: 83, baseType: !96, size: 64, offset: 1024)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1255, file: !1256, line: 84, baseType: !96, size: 64, offset: 1088)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1255, file: !1256, line: 85, baseType: !96, size: 64, offset: 1152)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1255, file: !1256, line: 86, baseType: !96, size: 64, offset: 1216)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1255, file: !1256, line: 87, baseType: !96, size: 64, offset: 1280)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1231, file: !1171, line: 96, baseType: !429, size: 32, offset: 1024)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1176, file: !1171, line: 308, baseType: !1281, size: 4608, align: 512)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1171, line: 289, size: 4608, align: 512, elements: !1282)
!1282 = !{!1283, !1284, !1293}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1281, file: !1171, line: 290, baseType: !1192, size: 4096, align: 128)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1281, file: !1171, line: 291, baseType: !1285, size: 512, offset: 4096)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1171, line: 268, size: 512, elements: !1286)
!1286 = !{!1287, !1288, !1289}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1285, file: !1171, line: 269, baseType: !291, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1285, file: !1171, line: 270, baseType: !291, size: 64, offset: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1285, file: !1171, line: 271, baseType: !1290, size: 384, offset: 128)
!1290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 384, elements: !1291)
!1291 = !{!1292}
!1292 = !DISubrange(count: 6)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1281, file: !1171, line: 292, baseType: !1294, offset: 4608)
!1294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !566, elements: !1295)
!1295 = !{!1296}
!1296 = !DISubrange(count: 0)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1176, file: !1171, line: 309, baseType: !1298, size: 32768)
!1298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !566, size: 32768, elements: !1299)
!1299 = !{!1300}
!1300 = !DISubrange(count: 4096)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !416, file: !263, line: 378, baseType: !1302, size: 64, offset: 64)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !412, file: !263, line: 384, baseType: !735, size: 192, offset: 192)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !283, file: !263, line: 500, baseType: !132, offset: 6656)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !283, file: !263, line: 501, baseType: !1306, size: 64, offset: 6656)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !263, line: 387, flags: DIFlagFwdDecl)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !283, file: !263, line: 516, baseType: !1309, size: 64, offset: 6720)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1311, line: 18, flags: DIFlagFwdDecl)
!1311 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !283, file: !263, line: 519, baseType: !250, size: 64, offset: 6784)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !283, file: !263, line: 521, baseType: !1314, size: 64, offset: 6848)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !263, line: 521, flags: DIFlagFwdDecl)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !283, file: !263, line: 545, baseType: !313, size: 32, offset: 6912)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !283, file: !263, line: 548, baseType: !999, size: 8, offset: 6944)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !283, file: !263, line: 550, baseType: !1319, offset: 6952)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1320, line: 142, elements: !146)
!1320 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !283, file: !263, line: 554, baseType: !1322, size: 256, offset: 6976)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1323, line: 102, size: 256, elements: !1324)
!1323 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1324 = !{!1325, !1326, !1327}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1322, file: !1323, line: 103, baseType: !321, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1322, file: !1323, line: 104, baseType: !119, size: 128, offset: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1322, file: !1323, line: 105, baseType: !1328, size: 64, offset: 192)
!1328 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1323, line: 21, baseType: !1329)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{null, !1332}
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !283, file: !263, line: 557, baseType: !429, size: 32, offset: 7232)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !280, file: !263, line: 565, baseType: !1335, offset: 7296)
!1335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, elements: !1336)
!1336 = !{!1337}
!1337 = !DISubrange(count: -1)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !262, file: !263, line: 333, baseType: !1339, size: 64, offset: 576)
!1339 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !252, line: 284, baseType: !1340)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !252, line: 284, size: 64, elements: !1341)
!1341 = !{!1342}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1340, file: !252, line: 284, baseType: !1343, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !311, line: 19, baseType: !96)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !262, file: !263, line: 334, baseType: !96, size: 64, offset: 640)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !262, file: !263, line: 343, baseType: !1346, size: 256, offset: 704)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !262, file: !263, line: 340, size: 256, elements: !1347)
!1347 = !{!1348, !1349}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1346, file: !263, line: 341, baseType: !270, size: 192, align: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1346, file: !263, line: 342, baseType: !96, size: 64, offset: 192)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !262, file: !263, line: 351, baseType: !119, size: 128, offset: 960)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !262, file: !263, line: 353, baseType: !1352, size: 64, offset: 1088)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !263, line: 353, flags: DIFlagFwdDecl)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !262, file: !263, line: 356, baseType: !1355, size: 64, offset: 1152)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1357)
!1357 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !263, line: 356, flags: DIFlagFwdDecl)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !262, file: !263, line: 359, baseType: !96, size: 64, offset: 1216)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !262, file: !263, line: 361, baseType: !250, size: 64, offset: 1280)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !262, file: !263, line: 362, baseType: !93, size: 64, offset: 1344)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !262, file: !263, line: 365, baseType: !321, size: 64, offset: 1408)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !262, file: !263, line: 373, baseType: !1363, offset: 1472)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !263, line: 296, elements: !146)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !229, file: !198, line: 90, baseType: !224, size: 64, offset: 192)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !229, file: !198, line: 91, baseType: !1366, size: 64, offset: 256)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
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
!1379 = !{!999}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1373, file: !18, line: 42, baseType: !1381, size: 64, offset: 128)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{!93}
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
!1399 = !{null, !93}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !188, file: !113, line: 144, baseType: !1401, size: 64, offset: 320)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{!1388, !125}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !188, file: !113, line: 145, baseType: !1405, size: 64, offset: 384)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{null, !125, !1408, !1414}
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1311, line: 23, baseType: !1410)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1311, line: 21, size: 32, elements: !1411)
!1411 = !{!1412}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1410, file: !1311, line: 22, baseType: !1413, size: 32)
!1413 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !95, line: 32, baseType: !895)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1311, line: 28, baseType: !1416)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1311, line: 26, size: 32, elements: !1417)
!1417 = !{!1418}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1416, file: !1311, line: 27, baseType: !1419, size: 32)
!1419 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !95, line: 33, baseType: !1420)
!1420 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !206, line: 50, baseType: !7)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !112, file: !113, line: 70, baseType: !1422, size: 64, offset: 384)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1424, line: 123, size: 1024, elements: !1425)
!1424 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1425 = !{!1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1567, !1568, !1569, !1570, !1571}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1423, file: !1424, line: 124, baseType: !313, size: 32)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1423, file: !1424, line: 125, baseType: !313, size: 32, offset: 32)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1423, file: !1424, line: 135, baseType: !1422, size: 64, offset: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1423, file: !1424, line: 136, baseType: !116, size: 64, offset: 128)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1423, file: !1424, line: 138, baseType: !270, size: 192, align: 64, offset: 192)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1423, file: !1424, line: 140, baseType: !1388, size: 64, offset: 384)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1423, file: !1424, line: 141, baseType: !7, size: 32, offset: 448)
!1433 = !DIDerivedType(tag: DW_TAG_member, scope: !1423, file: !1424, line: 142, baseType: !1434, size: 256, offset: 512)
!1434 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1423, file: !1424, line: 142, size: 256, elements: !1435)
!1435 = !{!1436, !1490, !1494}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1434, file: !1424, line: 143, baseType: !1437, size: 192)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1424, line: 91, size: 192, elements: !1438)
!1438 = !{!1439, !1440, !1441}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1437, file: !1424, line: 92, baseType: !96, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1437, file: !1424, line: 94, baseType: !287, size: 64, offset: 64)
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
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1452, file: !1453, line: 293, baseType: !132)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1452, file: !1453, line: 295, baseType: !94, size: 32)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1452, file: !1453, line: 296, baseType: !93, size: 64, offset: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1448, file: !1449, line: 21, baseType: !7, size: 32, offset: 128)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1448, file: !1449, line: 22, baseType: !7, size: 32, offset: 160)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1443, file: !1424, line: 187, baseType: !429, size: 32, offset: 320)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1443, file: !1424, line: 188, baseType: !429, size: 32, offset: 352)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1443, file: !1424, line: 189, baseType: !1463, size: 64, offset: 384)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1424, line: 168, size: 320, elements: !1465)
!1465 = !{!1466, !1472, !1476, !1480, !1484}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1464, file: !1424, line: 169, baseType: !1467, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{!102, !1470, !1442}
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !252, line: 539, flags: DIFlagFwdDecl)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1464, file: !1424, line: 171, baseType: !1473, size: 64, offset: 64)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{!102, !1422, !116, !214}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1464, file: !1424, line: 173, baseType: !1477, size: 64, offset: 128)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!102, !1422}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1464, file: !1424, line: 174, baseType: !1481, size: 64, offset: 192)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DISubroutineType(types: !1483)
!1483 = !{!102, !1422, !1422, !116}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1464, file: !1424, line: 176, baseType: !1485, size: 64, offset: 256)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!102, !1470, !1422, !1442}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1443, file: !1424, line: 192, baseType: !119, size: 128, offset: 448)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1443, file: !1424, line: 194, baseType: !706, size: 128, offset: 576)
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
!1505 = !{!102, !1506}
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1424, line: 197, size: 1088, elements: !1508)
!1508 = !{!1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1507, file: !1424, line: 199, baseType: !1422, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1507, file: !1424, line: 200, baseType: !250, size: 64, offset: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1507, file: !1424, line: 201, baseType: !1470, size: 64, offset: 128)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1507, file: !1424, line: 202, baseType: !93, size: 64, offset: 192)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1507, file: !1424, line: 205, baseType: !390, size: 192, offset: 256)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1507, file: !1424, line: 206, baseType: !390, size: 192, offset: 448)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1507, file: !1424, line: 207, baseType: !102, size: 32, offset: 640)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1507, file: !1424, line: 208, baseType: !119, size: 128, offset: 704)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1507, file: !1424, line: 209, baseType: !173, size: 64, offset: 832)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1507, file: !1424, line: 211, baseType: !220, size: 64, offset: 896)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1507, file: !1424, line: 212, baseType: !999, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1507, file: !1424, line: 213, baseType: !999, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1507, file: !1424, line: 214, baseType: !1355, size: 64, offset: 1024)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1500, file: !1424, line: 223, baseType: !1523, size: 64, offset: 64)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{null, !1506}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1500, file: !1424, line: 236, baseType: !1527, size: 64, offset: 128)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!102, !1470, !93}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1500, file: !1424, line: 238, baseType: !1531, size: 64, offset: 192)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!93, !1470, !1534}
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1500, file: !1424, line: 239, baseType: !1536, size: 64, offset: 256)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DISubroutineType(types: !1538)
!1538 = !{!93, !1470, !93, !1534}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1500, file: !1424, line: 240, baseType: !1540, size: 64, offset: 320)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{null, !1470, !93}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1500, file: !1424, line: 242, baseType: !1544, size: 64, offset: 384)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!204, !1506, !173, !220, !253}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1500, file: !1424, line: 252, baseType: !220, size: 64, offset: 448)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1500, file: !1424, line: 259, baseType: !999, size: 8, offset: 512)
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
!1561 = !{!102, !1506, !261}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1495, file: !1424, line: 109, baseType: !1563, size: 64, offset: 64)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1424, line: 31, flags: DIFlagFwdDecl)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1495, file: !1424, line: 110, baseType: !253, size: 64, offset: 128)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1495, file: !1424, line: 111, baseType: !1422, size: 64, offset: 192)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1423, file: !1424, line: 148, baseType: !93, size: 64, offset: 768)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1423, file: !1424, line: 154, baseType: !291, size: 64, offset: 832)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1423, file: !1424, line: 156, baseType: !215, size: 16, offset: 896)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1423, file: !1424, line: 157, baseType: !214, size: 16, offset: 912)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1423, file: !1424, line: 158, baseType: !1572, size: 64, offset: 960)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1424, line: 32, flags: DIFlagFwdDecl)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !112, file: !113, line: 71, baseType: !1575, size: 32, offset: 448)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1576, line: 19, size: 32, elements: !1577)
!1576 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1577 = !{!1578}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1575, file: !1576, line: 20, baseType: !435, size: 32)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !112, file: !113, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !112, file: !113, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !112, file: !113, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !112, file: !113, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !112, file: !113, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !109, file: !30, line: 463, baseType: !1585, size: 64, offset: 512)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !109, file: !30, line: 465, baseType: !1587, size: 64, offset: 576)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !109, file: !30, line: 467, baseType: !116, size: 64, offset: 640)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !109, file: !30, line: 468, baseType: !1591, size: 64, offset: 704)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1593)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1594)
!1594 = !{!1595, !1596, !1597, !1601, !1606, !1610}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1593, file: !30, line: 88, baseType: !116, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1593, file: !30, line: 89, baseType: !226, size: 64, offset: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1593, file: !30, line: 90, baseType: !1598, size: 64, offset: 128)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!102, !1585, !168}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1593, file: !30, line: 91, baseType: !1602, size: 64, offset: 192)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!173, !1585, !1605, !1408, !1414}
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1593, file: !30, line: 93, baseType: !1607, size: 64, offset: 256)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{null, !1585}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1593, file: !30, line: 95, baseType: !1611, size: 64, offset: 320)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1613)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1614)
!1614 = !{!1615, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1613, file: !37, line: 279, baseType: !1616, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{!102, !1585}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1613, file: !37, line: 280, baseType: !1607, size: 64, offset: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1613, file: !37, line: 281, baseType: !1616, size: 64, offset: 128)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1613, file: !37, line: 282, baseType: !1616, size: 64, offset: 192)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1613, file: !37, line: 283, baseType: !1616, size: 64, offset: 256)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1613, file: !37, line: 284, baseType: !1616, size: 64, offset: 320)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1613, file: !37, line: 285, baseType: !1616, size: 64, offset: 384)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1613, file: !37, line: 286, baseType: !1616, size: 64, offset: 448)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1613, file: !37, line: 287, baseType: !1616, size: 64, offset: 512)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1613, file: !37, line: 288, baseType: !1616, size: 64, offset: 576)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1613, file: !37, line: 289, baseType: !1616, size: 64, offset: 640)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1613, file: !37, line: 290, baseType: !1616, size: 64, offset: 704)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1613, file: !37, line: 291, baseType: !1616, size: 64, offset: 768)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1613, file: !37, line: 292, baseType: !1616, size: 64, offset: 832)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1613, file: !37, line: 293, baseType: !1616, size: 64, offset: 896)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1613, file: !37, line: 294, baseType: !1616, size: 64, offset: 960)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1613, file: !37, line: 295, baseType: !1616, size: 64, offset: 1024)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1613, file: !37, line: 296, baseType: !1616, size: 64, offset: 1088)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1613, file: !37, line: 297, baseType: !1616, size: 64, offset: 1152)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1613, file: !37, line: 298, baseType: !1616, size: 64, offset: 1216)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1613, file: !37, line: 299, baseType: !1616, size: 64, offset: 1280)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1613, file: !37, line: 300, baseType: !1616, size: 64, offset: 1344)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1613, file: !37, line: 301, baseType: !1616, size: 64, offset: 1408)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !109, file: !30, line: 470, baseType: !1642, size: 64, offset: 768)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1644, line: 82, size: 1408, elements: !1645)
!1644 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1645 = !{!1646, !1647, !1648, !1649, !1650, !1651, !1652, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1731, !1734, !1737}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1643, file: !1644, line: 83, baseType: !116, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1643, file: !1644, line: 84, baseType: !116, size: 64, offset: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1643, file: !1644, line: 85, baseType: !1585, size: 64, offset: 128)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1643, file: !1644, line: 86, baseType: !226, size: 64, offset: 192)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1643, file: !1644, line: 87, baseType: !226, size: 64, offset: 256)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1643, file: !1644, line: 88, baseType: !226, size: 64, offset: 320)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1643, file: !1644, line: 90, baseType: !1653, size: 64, offset: 384)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!102, !1585, !1656}
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1658)
!1658 = !{!1659, !1660, !1661, !1665, !1666, !1667, !1668, !1682, !1695, !1696, !1697, !1698, !1699, !1707, !1708, !1709, !1710, !1711, !1712}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1657, file: !24, line: 96, baseType: !116, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1657, file: !24, line: 97, baseType: !1642, size: 64, offset: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1657, file: !24, line: 99, baseType: !1662, size: 64, offset: 128)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1664, line: 76, flags: DIFlagFwdDecl)
!1664 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1657, file: !24, line: 100, baseType: !116, size: 64, offset: 192)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1657, file: !24, line: 102, baseType: !999, size: 8, offset: 256)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1657, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1657, file: !24, line: 105, baseType: !1669, size: 64, offset: 320)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1671)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1672, line: 262, size: 1600, elements: !1673)
!1672 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1673 = !{!1674, !1676, !1677, !1681}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1671, file: !1672, line: 263, baseType: !1675, size: 256)
!1675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 256, elements: !1217)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1671, file: !1672, line: 264, baseType: !1675, size: 256, offset: 256)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1671, file: !1672, line: 265, baseType: !1678, size: 1024, offset: 512)
!1678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 1024, elements: !1679)
!1679 = !{!1680}
!1680 = !DISubrange(count: 128)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1671, file: !1672, line: 266, baseType: !1388, size: 64, offset: 1536)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1657, file: !24, line: 106, baseType: !1683, size: 64, offset: 384)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1685)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1672, line: 210, size: 256, elements: !1686)
!1686 = !{!1687, !1691, !1693, !1694}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1685, file: !1672, line: 211, baseType: !1688, size: 72)
!1688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !567, size: 72, elements: !1689)
!1689 = !{!1690}
!1690 = !DISubrange(count: 9)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1685, file: !1672, line: 212, baseType: !1692, size: 64, offset: 128)
!1692 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1672, line: 14, baseType: !96)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1685, file: !1672, line: 213, baseType: !430, size: 32, offset: 192)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1685, file: !1672, line: 214, baseType: !430, size: 32, offset: 224)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1657, file: !24, line: 108, baseType: !1616, size: 64, offset: 448)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1657, file: !24, line: 109, baseType: !1607, size: 64, offset: 512)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1657, file: !24, line: 110, baseType: !1616, size: 64, offset: 576)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1657, file: !24, line: 111, baseType: !1607, size: 64, offset: 640)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1657, file: !24, line: 112, baseType: !1700, size: 64, offset: 704)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{!102, !1585, !1703}
!1703 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1704)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1705)
!1705 = !{!1706}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1704, file: !37, line: 51, baseType: !102, size: 32)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1657, file: !24, line: 113, baseType: !1616, size: 64, offset: 768)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1657, file: !24, line: 114, baseType: !226, size: 64, offset: 832)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1657, file: !24, line: 115, baseType: !226, size: 64, offset: 896)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1657, file: !24, line: 117, baseType: !1611, size: 64, offset: 960)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1657, file: !24, line: 118, baseType: !1607, size: 64, offset: 1024)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1657, file: !24, line: 120, baseType: !1713, size: 64, offset: 1088)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1643, file: !1644, line: 91, baseType: !1598, size: 64, offset: 448)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1643, file: !1644, line: 92, baseType: !1616, size: 64, offset: 512)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1643, file: !1644, line: 93, baseType: !1607, size: 64, offset: 576)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1643, file: !1644, line: 94, baseType: !1616, size: 64, offset: 640)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1643, file: !1644, line: 95, baseType: !1607, size: 64, offset: 704)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1643, file: !1644, line: 97, baseType: !1616, size: 64, offset: 768)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1643, file: !1644, line: 98, baseType: !1616, size: 64, offset: 832)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1643, file: !1644, line: 100, baseType: !1700, size: 64, offset: 896)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1643, file: !1644, line: 101, baseType: !1616, size: 64, offset: 960)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1643, file: !1644, line: 103, baseType: !1616, size: 64, offset: 1024)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1643, file: !1644, line: 105, baseType: !1616, size: 64, offset: 1088)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1643, file: !1644, line: 107, baseType: !1611, size: 64, offset: 1152)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1643, file: !1644, line: 109, baseType: !1728, size: 64, offset: 1216)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1730)
!1730 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1644, line: 109, flags: DIFlagFwdDecl)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1643, file: !1644, line: 111, baseType: !1732, size: 64, offset: 1280)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1644, line: 111, flags: DIFlagFwdDecl)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1643, file: !1644, line: 112, baseType: !1735, offset: 1344)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1736, line: 187, elements: !146)
!1736 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1643, file: !1644, line: 114, baseType: !999, size: 8, offset: 1344)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !109, file: !30, line: 471, baseType: !1656, size: 64, offset: 832)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !109, file: !30, line: 473, baseType: !93, size: 64, offset: 896)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !109, file: !30, line: 475, baseType: !93, size: 64, offset: 960)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !109, file: !30, line: 480, baseType: !390, size: 192, offset: 1024)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !109, file: !30, line: 484, baseType: !1743, size: 576, offset: 1216)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1744)
!1744 = !{!1745, !1746, !1747, !1748, !1749, !1750}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1743, file: !30, line: 362, baseType: !119, size: 128)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1743, file: !30, line: 363, baseType: !119, size: 128, offset: 128)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1743, file: !30, line: 364, baseType: !119, size: 128, offset: 256)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1743, file: !30, line: 365, baseType: !119, size: 128, offset: 384)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1743, file: !30, line: 366, baseType: !999, size: 8, offset: 512)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1743, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !109, file: !30, line: 485, baseType: !1752, size: 2304, offset: 1792)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1753)
!1753 = !{!1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1849, !1853}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1752, file: !37, line: 566, baseType: !1703, size: 32)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1752, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1752, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1752, file: !37, line: 569, baseType: !999, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1752, file: !37, line: 570, baseType: !999, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1752, file: !37, line: 571, baseType: !999, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1752, file: !37, line: 572, baseType: !999, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1752, file: !37, line: 573, baseType: !999, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1752, file: !37, line: 574, baseType: !999, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1752, file: !37, line: 575, baseType: !999, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1752, file: !37, line: 576, baseType: !999, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1752, file: !37, line: 577, baseType: !429, size: 32, offset: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1752, file: !37, line: 578, baseType: !132, offset: 96)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1752, file: !37, line: 580, baseType: !119, size: 128, offset: 128)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1752, file: !37, line: 581, baseType: !735, size: 192, offset: 256)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1752, file: !37, line: 582, baseType: !1770, size: 64, offset: 448)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1772, line: 43, size: 1472, elements: !1773)
!1772 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1773 = !{!1774, !1775, !1776, !1777, !1778, !1781, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1771, file: !1772, line: 44, baseType: !116, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1771, file: !1772, line: 45, baseType: !102, size: 32, offset: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1771, file: !1772, line: 46, baseType: !119, size: 128, offset: 128)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1771, file: !1772, line: 47, baseType: !132, offset: 256)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1771, file: !1772, line: 48, baseType: !1779, size: 64, offset: 256)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1771, file: !1772, line: 49, baseType: !1782, size: 320, offset: 320)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1783, line: 11, size: 320, elements: !1784)
!1783 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1784 = !{!1785, !1786, !1787, !1792}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1782, file: !1783, line: 16, baseType: !699, size: 128)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1782, file: !1783, line: 17, baseType: !96, size: 64, offset: 128)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1782, file: !1783, line: 18, baseType: !1788, size: 64, offset: 192)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DISubroutineType(types: !1790)
!1790 = !{null, !1791}
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1782, file: !1783, line: 19, baseType: !429, size: 32, offset: 256)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1771, file: !1772, line: 50, baseType: !96, size: 64, offset: 640)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1771, file: !1772, line: 51, baseType: !505, size: 64, offset: 704)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1771, file: !1772, line: 52, baseType: !505, size: 64, offset: 768)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1771, file: !1772, line: 53, baseType: !505, size: 64, offset: 832)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1771, file: !1772, line: 54, baseType: !505, size: 64, offset: 896)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1771, file: !1772, line: 55, baseType: !505, size: 64, offset: 960)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1771, file: !1772, line: 56, baseType: !96, size: 64, offset: 1024)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1771, file: !1772, line: 57, baseType: !96, size: 64, offset: 1088)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1771, file: !1772, line: 58, baseType: !96, size: 64, offset: 1152)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1771, file: !1772, line: 59, baseType: !96, size: 64, offset: 1216)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1771, file: !1772, line: 60, baseType: !96, size: 64, offset: 1280)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1771, file: !1772, line: 61, baseType: !1585, size: 64, offset: 1344)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1771, file: !1772, line: 62, baseType: !999, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1771, file: !1772, line: 63, baseType: !999, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1752, file: !37, line: 583, baseType: !999, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1752, file: !37, line: 584, baseType: !999, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1752, file: !37, line: 585, baseType: !999, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1752, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1752, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1752, file: !37, line: 592, baseType: !497, size: 512, offset: 576)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1752, file: !37, line: 593, baseType: !291, size: 64, offset: 1088)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1752, file: !37, line: 594, baseType: !1322, size: 256, offset: 1152)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1752, file: !37, line: 595, baseType: !706, size: 128, offset: 1408)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1752, file: !37, line: 596, baseType: !1779, size: 64, offset: 1536)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1752, file: !37, line: 597, baseType: !313, size: 32, offset: 1600)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1752, file: !37, line: 598, baseType: !313, size: 32, offset: 1632)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1752, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1752, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1752, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1752, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1752, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1752, file: !37, line: 604, baseType: !999, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1752, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1752, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1752, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1752, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1752, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1752, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1752, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1752, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1752, file: !37, line: 613, baseType: !102, size: 32, offset: 1792)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1752, file: !37, line: 614, baseType: !102, size: 32, offset: 1824)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1752, file: !37, line: 615, baseType: !291, size: 64, offset: 1856)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1752, file: !37, line: 616, baseType: !291, size: 64, offset: 1920)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1752, file: !37, line: 617, baseType: !291, size: 64, offset: 1984)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1752, file: !37, line: 618, baseType: !291, size: 64, offset: 2048)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1752, file: !37, line: 620, baseType: !1840, size: 64, offset: 2112)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1842)
!1842 = !{!1843, !1844, !1845, !1846}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1841, file: !37, line: 537, baseType: !132)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1841, file: !37, line: 538, baseType: !7, size: 32)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1841, file: !37, line: 540, baseType: !119, size: 128, offset: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1841, file: !37, line: 543, baseType: !1847, size: 64, offset: 192)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1752, file: !37, line: 621, baseType: !1850, size: 64, offset: 2176)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{null, !1585, !659}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1752, file: !37, line: 622, baseType: !1854, size: 64, offset: 2240)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !109, file: !30, line: 486, baseType: !1857, size: 64, offset: 4096)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1859)
!1859 = !{!1860, !1861, !1862, !1866, !1867, !1868}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1858, file: !37, line: 643, baseType: !1613, size: 1472)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1858, file: !37, line: 644, baseType: !1616, size: 64, offset: 1472)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1858, file: !37, line: 645, baseType: !1863, size: 64, offset: 1536)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DISubroutineType(types: !1865)
!1865 = !{null, !1585, !999}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1858, file: !37, line: 646, baseType: !1616, size: 64, offset: 1600)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1858, file: !37, line: 647, baseType: !1607, size: 64, offset: 1664)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1858, file: !37, line: 648, baseType: !1607, size: 64, offset: 1728)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !109, file: !30, line: 493, baseType: !1870, size: 64, offset: 4160)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !109, file: !30, line: 499, baseType: !119, size: 128, offset: 4224)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !109, file: !30, line: 502, baseType: !1874, size: 64, offset: 4352)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1876)
!1876 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !109, file: !30, line: 504, baseType: !1878, size: 64, offset: 4416)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !109, file: !30, line: 505, baseType: !291, size: 64, offset: 4480)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !109, file: !30, line: 510, baseType: !291, size: 64, offset: 4544)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !109, file: !30, line: 511, baseType: !1882, size: 64, offset: 4608)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1884)
!1884 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !109, file: !30, line: 513, baseType: !1886, size: 64, offset: 4672)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !1888)
!1888 = !{!1889, !1890}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1887, file: !30, line: 293, baseType: !7, size: 32)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1887, file: !30, line: 294, baseType: !96, size: 64, offset: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !109, file: !30, line: 515, baseType: !119, size: 128, offset: 4736)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !109, file: !30, line: 526, baseType: !1893, offset: 4864)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1894, line: 5, elements: !146)
!1894 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !109, file: !30, line: 528, baseType: !1896, size: 64, offset: 4864)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1898, line: 51, size: 1344, elements: !1899)
!1898 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!1899 = !{!1900, !1901, !1903, !1904, !1994, !2003, !2004, !2005, !2006, !2007, !2008, !2009}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1897, file: !1898, line: 52, baseType: !116, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1897, file: !1898, line: 53, baseType: !1902, size: 32, offset: 64)
!1902 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1898, line: 28, baseType: !429)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1897, file: !1898, line: 54, baseType: !116, size: 64, offset: 128)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1897, file: !1898, line: 55, baseType: !1905, size: 192, offset: 192)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1906, line: 17, size: 192, elements: !1907)
!1906 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!1907 = !{!1908, !1910, !1993}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1905, file: !1906, line: 18, baseType: !1909, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1905, file: !1906, line: 19, baseType: !1911, size: 64, offset: 64)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1913)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1906, line: 110, size: 1152, elements: !1914)
!1914 = !{!1915, !1919, !1923, !1929, !1935, !1939, !1943, !1948, !1952, !1953, !1957, !1961, !1965, !1976, !1977, !1978, !1979, !1989}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1913, file: !1906, line: 111, baseType: !1916, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{!1909, !1909}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1913, file: !1906, line: 112, baseType: !1920, size: 64, offset: 64)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{null, !1909}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1913, file: !1906, line: 113, baseType: !1924, size: 64, offset: 128)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{!999, !1927}
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1905)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1913, file: !1906, line: 114, baseType: !1930, size: 64, offset: 192)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{!1388, !1927, !1933}
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1913, file: !1906, line: 116, baseType: !1936, size: 64, offset: 256)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{!999, !1927, !116}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1913, file: !1906, line: 118, baseType: !1940, size: 64, offset: 320)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{!102, !1927, !116, !7, !93, !220}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1913, file: !1906, line: 123, baseType: !1944, size: 64, offset: 384)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{!102, !1927, !116, !1947, !220}
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1913, file: !1906, line: 126, baseType: !1949, size: 64, offset: 448)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!116, !1927}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1913, file: !1906, line: 127, baseType: !1949, size: 64, offset: 512)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1913, file: !1906, line: 128, baseType: !1954, size: 64, offset: 576)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!1909, !1927}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1913, file: !1906, line: 130, baseType: !1958, size: 64, offset: 640)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DISubroutineType(types: !1960)
!1960 = !{!1909, !1927, !1909}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1913, file: !1906, line: 133, baseType: !1962, size: 64, offset: 704)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DISubroutineType(types: !1964)
!1964 = !{!1909, !1927, !116}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1913, file: !1906, line: 135, baseType: !1966, size: 64, offset: 768)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{!102, !1927, !116, !116, !7, !7, !1969}
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1906, line: 43, size: 640, elements: !1971)
!1971 = !{!1972, !1973, !1974}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1970, file: !1906, line: 44, baseType: !1909, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1970, file: !1906, line: 45, baseType: !7, size: 32, offset: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1970, file: !1906, line: 46, baseType: !1975, size: 512, offset: 128)
!1975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 512, elements: !535)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1913, file: !1906, line: 140, baseType: !1958, size: 64, offset: 832)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1913, file: !1906, line: 143, baseType: !1954, size: 64, offset: 896)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1913, file: !1906, line: 145, baseType: !1916, size: 64, offset: 960)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1913, file: !1906, line: 146, baseType: !1980, size: 64, offset: 1024)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{!102, !1927, !1983}
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1906, line: 29, size: 128, elements: !1985)
!1985 = !{!1986, !1987, !1988}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1984, file: !1906, line: 30, baseType: !7, size: 32)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1984, file: !1906, line: 31, baseType: !7, size: 32, offset: 32)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1984, file: !1906, line: 32, baseType: !1927, size: 64, offset: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1913, file: !1906, line: 148, baseType: !1990, size: 64, offset: 1088)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{!102, !1927, !1585}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1905, file: !1906, line: 20, baseType: !1585, size: 64, offset: 128)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1897, file: !1898, line: 57, baseType: !1995, size: 64, offset: 384)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1898, line: 31, size: 704, elements: !1997)
!1997 = !{!1998, !1999, !2000, !2001, !2002}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1996, file: !1898, line: 32, baseType: !173, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1996, file: !1898, line: 33, baseType: !102, size: 32, offset: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1996, file: !1898, line: 34, baseType: !93, size: 64, offset: 128)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1996, file: !1898, line: 35, baseType: !1995, size: 64, offset: 192)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1996, file: !1898, line: 43, baseType: !241, size: 448, offset: 256)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1897, file: !1898, line: 58, baseType: !1995, size: 64, offset: 448)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1897, file: !1898, line: 59, baseType: !1896, size: 64, offset: 512)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1897, file: !1898, line: 60, baseType: !1896, size: 64, offset: 576)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1897, file: !1898, line: 61, baseType: !1896, size: 64, offset: 640)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1897, file: !1898, line: 63, baseType: !112, size: 512, offset: 704)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1897, file: !1898, line: 65, baseType: !96, size: 64, offset: 1216)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1897, file: !1898, line: 66, baseType: !93, size: 64, offset: 1280)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !109, file: !30, line: 529, baseType: !1909, size: 64, offset: 4928)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !109, file: !30, line: 534, baseType: !2012, size: 32, offset: 4992)
!2012 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !95, line: 16, baseType: !2013)
!2013 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !95, line: 13, baseType: !429)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !109, file: !30, line: 535, baseType: !429, size: 32, offset: 5024)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !109, file: !30, line: 537, baseType: !132, offset: 5056)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !109, file: !30, line: 538, baseType: !119, size: 128, offset: 5056)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !109, file: !30, line: 540, baseType: !2018, size: 64, offset: 5184)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2020, line: 54, size: 960, elements: !2021)
!2020 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2021 = !{!2022, !2023, !2024, !2025, !2026, !2027, !2028, !2032, !2036, !2037, !2038, !2039, !2043, !2047, !2048}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2019, file: !2020, line: 55, baseType: !116, size: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2019, file: !2020, line: 56, baseType: !1662, size: 64, offset: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2019, file: !2020, line: 58, baseType: !226, size: 64, offset: 128)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2019, file: !2020, line: 59, baseType: !226, size: 64, offset: 192)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2019, file: !2020, line: 60, baseType: !125, size: 64, offset: 256)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2019, file: !2020, line: 62, baseType: !1598, size: 64, offset: 320)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2019, file: !2020, line: 63, baseType: !2029, size: 64, offset: 384)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{!173, !1585, !1605}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2019, file: !2020, line: 65, baseType: !2033, size: 64, offset: 448)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{null, !2018}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2019, file: !2020, line: 66, baseType: !1607, size: 64, offset: 512)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2019, file: !2020, line: 68, baseType: !1616, size: 64, offset: 576)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2019, file: !2020, line: 70, baseType: !1371, size: 64, offset: 640)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2019, file: !2020, line: 71, baseType: !2040, size: 64, offset: 704)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{!1388, !1585}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2019, file: !2020, line: 73, baseType: !2044, size: 64, offset: 768)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{null, !1585, !1408, !1414}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2019, file: !2020, line: 75, baseType: !1611, size: 64, offset: 832)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2019, file: !2020, line: 77, baseType: !1732, size: 64, offset: 896)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !109, file: !30, line: 541, baseType: !226, size: 64, offset: 5248)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !109, file: !30, line: 543, baseType: !1607, size: 64, offset: 5312)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !109, file: !30, line: 544, baseType: !2052, size: 64, offset: 5376)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !109, file: !30, line: 545, baseType: !2055, size: 64, offset: 5440)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !109, file: !30, line: 547, baseType: !999, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !109, file: !30, line: 548, baseType: !999, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !109, file: !30, line: 549, baseType: !999, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !109, file: !30, line: 550, baseType: !999, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "trips_attribute_group", scope: !99, file: !62, line: 154, baseType: !229, size: 320, offset: 5760)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "trip_temp_attrs", scope: !99, file: !62, line: 155, baseType: !2063, size: 64, offset: 6080)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_attr", file: !2065, line: 57, size: 448, elements: !2066)
!2065 = !DIFile(filename: "drivers/thermal/thermal_core.h", directory: "/home/lizy2001/genbc/linux")
!2066 = !{!2067, !2080}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2064, file: !2065, line: 58, baseType: !2068, size: 256)
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !30, line: 99, size: 256, elements: !2069)
!2069 = !{!2070, !2071, !2076}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2068, file: !30, line: 100, baseType: !210, size: 128)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2068, file: !30, line: 101, baseType: !2072, size: 64, offset: 128)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DISubroutineType(types: !2074)
!2074 = !{!204, !1585, !2075, !173}
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2068, file: !30, line: 103, baseType: !2077, size: 64, offset: 192)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{!204, !1585, !2075, !116, !220}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2064, file: !2065, line: 59, baseType: !104, size: 160, offset: 256)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "trip_type_attrs", scope: !99, file: !62, line: 156, baseType: !2063, size: 64, offset: 6144)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "trip_hyst_attrs", scope: !99, file: !62, line: 157, baseType: !2063, size: 64, offset: 6208)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !99, file: !62, line: 158, baseType: !50, size: 32, offset: 6272)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "devdata", scope: !99, file: !62, line: 159, baseType: !93, size: 64, offset: 6336)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "trips", scope: !99, file: !62, line: 160, baseType: !102, size: 32, offset: 6400)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "trips_disabled", scope: !99, file: !62, line: 161, baseType: !96, size: 64, offset: 6464)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "passive_delay", scope: !99, file: !62, line: 162, baseType: !102, size: 32, offset: 6528)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "polling_delay", scope: !99, file: !62, line: 163, baseType: !102, size: 32, offset: 6560)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "temperature", scope: !99, file: !62, line: 164, baseType: !102, size: 32, offset: 6592)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "last_temperature", scope: !99, file: !62, line: 165, baseType: !102, size: 32, offset: 6624)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "emul_temperature", scope: !99, file: !62, line: 166, baseType: !102, size: 32, offset: 6656)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "passive", scope: !99, file: !62, line: 167, baseType: !102, size: 32, offset: 6688)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "prev_low_trip", scope: !99, file: !62, line: 168, baseType: !102, size: 32, offset: 6720)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "prev_high_trip", scope: !99, file: !62, line: 169, baseType: !102, size: 32, offset: 6752)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "forced_passive", scope: !99, file: !62, line: 170, baseType: !7, size: 32, offset: 6784)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "need_update", scope: !99, file: !62, line: 171, baseType: !313, size: 32, offset: 6816)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !99, file: !62, line: 172, baseType: !2098, size: 64, offset: 6848)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_device_ops", file: !62, line: 61, size: 896, elements: !2100)
!2100 = !{!2101, !2145, !2146, !2150, !2154, !2158, !2163, !2167, !2168, !2169, !2170, !2171, !2175, !2180}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !2099, file: !62, line: 62, baseType: !2102, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{!102, !98, !2105}
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device", file: !62, line: 93, size: 6528, elements: !2107)
!2107 = !{!2108, !2109, !2110, !2111, !2112, !2113, !2114, !2141, !2142, !2143, !2144}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2106, file: !62, line: 94, baseType: !102, size: 32)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2106, file: !62, line: 95, baseType: !104, size: 160, offset: 32)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !2106, file: !62, line: 96, baseType: !109, size: 5568, offset: 192)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !2106, file: !62, line: 97, baseType: !1896, size: 64, offset: 5760)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "devdata", scope: !2106, file: !62, line: 98, baseType: !93, size: 64, offset: 5824)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2106, file: !62, line: 99, baseType: !93, size: 64, offset: 5888)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2106, file: !62, line: 100, baseType: !2115, size: 64, offset: 5952)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2117)
!2117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device_ops", file: !62, line: 84, size: 384, elements: !2118)
!2118 = !{!2119, !2124, !2125, !2129, !2133, !2137}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "get_max_state", scope: !2117, file: !62, line: 85, baseType: !2120, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!102, !2105, !2123}
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "get_cur_state", scope: !2117, file: !62, line: 86, baseType: !2120, size: 64, offset: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "set_cur_state", scope: !2117, file: !62, line: 87, baseType: !2126, size: 64, offset: 128)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!102, !2105, !96}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "get_requested_power", scope: !2117, file: !62, line: 88, baseType: !2130, size: 64, offset: 192)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!102, !2105, !630}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "state2power", scope: !2117, file: !62, line: 89, baseType: !2134, size: 64, offset: 256)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!102, !2105, !96, !630}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "power2state", scope: !2117, file: !62, line: 90, baseType: !2138, size: 64, offset: 320)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{!102, !2105, !429, !2123}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "updated", scope: !2106, file: !62, line: 101, baseType: !999, size: 8, offset: 6016)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2106, file: !62, line: 102, baseType: !390, size: 192, offset: 6080)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_instances", scope: !2106, file: !62, line: 103, baseType: !119, size: 128, offset: 6272)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2106, file: !62, line: 104, baseType: !119, size: 128, offset: 6400)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !2099, file: !62, line: 64, baseType: !2102, size: 64, offset: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "get_temp", scope: !2099, file: !62, line: 66, baseType: !2147, size: 64, offset: 128)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!102, !98, !746}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "set_trips", scope: !2099, file: !62, line: 67, baseType: !2151, size: 64, offset: 192)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!102, !98, !102, !102}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "change_mode", scope: !2099, file: !62, line: 68, baseType: !2155, size: 64, offset: 256)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{!102, !98, !50}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "get_trip_type", scope: !2099, file: !62, line: 70, baseType: !2159, size: 64, offset: 320)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!102, !98, !102, !2162}
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "get_trip_temp", scope: !2099, file: !62, line: 72, baseType: !2164, size: 64, offset: 384)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{!102, !98, !102, !746}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "set_trip_temp", scope: !2099, file: !62, line: 73, baseType: !2151, size: 64, offset: 448)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "get_trip_hyst", scope: !2099, file: !62, line: 74, baseType: !2164, size: 64, offset: 512)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "set_trip_hyst", scope: !2099, file: !62, line: 75, baseType: !2151, size: 64, offset: 576)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "get_crit_temp", scope: !2099, file: !62, line: 76, baseType: !2147, size: 64, offset: 640)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "set_emul_temp", scope: !2099, file: !62, line: 77, baseType: !2172, size: 64, offset: 704)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{!102, !98, !102}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "get_trend", scope: !2099, file: !62, line: 78, baseType: !2176, size: 64, offset: 768)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DISubroutineType(types: !2178)
!2178 = !{!102, !98, !102, !2179}
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2099, file: !62, line: 80, baseType: !2181, size: 64, offset: 832)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{!102, !98, !102, !55}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "tzp", scope: !99, file: !62, line: 173, baseType: !2185, size: 64, offset: 6912)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_params", file: !62, line: 240, size: 576, elements: !2187)
!2187 = !{!2188, !2189, !2190, !2191, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "governor_name", scope: !2186, file: !62, line: 241, baseType: !104, size: 160)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "no_hwmon", scope: !2186, file: !62, line: 248, baseType: !999, size: 8, offset: 160)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "num_tbps", scope: !2186, file: !62, line: 250, baseType: !102, size: 32, offset: 192)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "tbp", scope: !2186, file: !62, line: 251, baseType: !2192, size: 64, offset: 256)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_bind_params", file: !62, line: 205, size: 256, elements: !2194)
!2194 = !{!2195, !2196, !2197, !2198, !2199}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !2193, file: !62, line: 206, baseType: !2105, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2193, file: !62, line: 217, baseType: !102, size: 32, offset: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "trip_mask", scope: !2193, file: !62, line: 224, baseType: !102, size: 32, offset: 96)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "binding_limits", scope: !2193, file: !62, line: 234, baseType: !2123, size: 64, offset: 128)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2193, file: !62, line: 235, baseType: !2102, size: 64, offset: 192)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "sustainable_power", scope: !2186, file: !62, line: 257, baseType: !429, size: 32, offset: 320)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "k_po", scope: !2186, file: !62, line: 263, baseType: !659, size: 32, offset: 352)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "k_pu", scope: !2186, file: !62, line: 269, baseType: !659, size: 32, offset: 384)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "k_i", scope: !2186, file: !62, line: 272, baseType: !659, size: 32, offset: 416)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "k_d", scope: !2186, file: !62, line: 275, baseType: !659, size: 32, offset: 448)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "integral_cutoff", scope: !2186, file: !62, line: 278, baseType: !659, size: 32, offset: 480)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "slope", scope: !2186, file: !62, line: 284, baseType: !102, size: 32, offset: 512)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2186, file: !62, line: 289, baseType: !102, size: 32, offset: 544)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "governor", scope: !99, file: !62, line: 174, baseType: !2209, size: 64, offset: 6976)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_governor", file: !62, line: 196, size: 512, elements: !2211)
!2211 = !{!2212, !2213, !2217, !2221, !2222}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2210, file: !62, line: 197, baseType: !104, size: 160)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "bind_to_tz", scope: !2210, file: !62, line: 198, baseType: !2214, size: 64, offset: 192)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = !DISubroutineType(types: !2216)
!2216 = !{!102, !98}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "unbind_from_tz", scope: !2210, file: !62, line: 199, baseType: !2218, size: 64, offset: 256)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{null, !98}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !2210, file: !62, line: 200, baseType: !2172, size: 64, offset: 320)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "governor_list", scope: !2210, file: !62, line: 201, baseType: !119, size: 128, offset: 384)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "governor_data", scope: !99, file: !62, line: 175, baseType: !93, size: 64, offset: 7040)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_instances", scope: !99, file: !62, line: 176, baseType: !119, size: 128, offset: 7104)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "ida", scope: !99, file: !62, line: 177, baseType: !2226, size: 128, offset: 7232)
!2226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !1449, line: 244, size: 128, elements: !2227)
!2227 = !{!2228}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !2226, file: !1449, line: 245, baseType: !1452, size: 128)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !99, file: !62, line: 178, baseType: !390, size: 192, offset: 7360)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !99, file: !62, line: 179, baseType: !119, size: 128, offset: 7552)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "poll_queue", scope: !99, file: !62, line: 180, baseType: !2232, size: 704, offset: 7680)
!2232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1323, line: 115, size: 704, elements: !2233)
!2233 = !{!2234, !2235, !2236, !2239}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2232, file: !1323, line: 116, baseType: !1322, size: 256)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2232, file: !1323, line: 117, baseType: !1782, size: 320, offset: 256)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2232, file: !1323, line: 120, baseType: !2237, size: 64, offset: 576)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1323, line: 18, flags: DIFlagFwdDecl)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2232, file: !1323, line: 121, baseType: !102, size: 32, offset: 640)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "notify_event", scope: !99, file: !62, line: 181, baseType: !69, size: 32, offset: 8384)
!2241 = !{!2242, !0}
!2242 = !DIGlobalVariableExpression(var: !2243, expr: !DIExpression())
!2243 = distinct !DIGlobalVariable(name: "trip_types", scope: !2, file: !3, line: 753, type: !2244, isLocal: true, isDefinition: true)
!2244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2245, size: 256, elements: !372)
!2245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!2246 = !{i32 7, !"Dwarf Version", i32 4}
!2247 = !{i32 2, !"Debug Info Version", i32 3}
!2248 = !{i32 1, !"wchar_size", i32 2}
!2249 = !{i32 1, !"Code Model", i32 2}
!2250 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2251 = distinct !DISubprogram(name: "of_thermal_get_ntrips", scope: !3, file: !3, line: 119, type: !2215, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2252 = !DILocalVariable(name: "tz", arg: 1, scope: !2251, file: !3, line: 119, type: !98)
!2253 = !DILocation(line: 119, column: 55, scope: !2251)
!2254 = !DILocalVariable(name: "data", scope: !2251, file: !3, line: 121, type: !2255)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__thermal_zone", file: !3, line: 66, size: 512, elements: !2257)
!2257 = !{!2258, !2259, !2260, !2261, !2262, !2263, !2271, !2272, !2286, !2287}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "passive_delay", scope: !2256, file: !3, line: 67, baseType: !102, size: 32)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "polling_delay", scope: !2256, file: !3, line: 68, baseType: !102, size: 32, offset: 32)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "slope", scope: !2256, file: !3, line: 69, baseType: !102, size: 32, offset: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2256, file: !3, line: 70, baseType: !102, size: 32, offset: 96)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "ntrips", scope: !2256, file: !3, line: 73, baseType: !102, size: 32, offset: 128)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "trips", scope: !2256, file: !3, line: 74, baseType: !2264, size: 64, offset: 192)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_trip", file: !2065, line: 81, size: 192, elements: !2266)
!2266 = !{!2267, !2268, !2269, !2270}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !2265, file: !2065, line: 82, baseType: !1896, size: 64)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "temperature", scope: !2265, file: !2065, line: 83, baseType: !102, size: 32, offset: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "hysteresis", scope: !2265, file: !2065, line: 84, baseType: !102, size: 32, offset: 96)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2265, file: !2065, line: 85, baseType: !55, size: 32, offset: 128)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "num_tbps", scope: !2256, file: !3, line: 77, baseType: !102, size: 32, offset: 256)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "tbps", scope: !2256, file: !3, line: 78, baseType: !2273, size: 64, offset: 320)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__thermal_bind_params", file: !3, line: 45, size: 192, elements: !2275)
!2275 = !{!2276, !2283, !2284, !2285}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "tcbp", scope: !2274, file: !3, line: 46, baseType: !2277, size: 64)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__thermal_cooling_bind_param", file: !3, line: 31, size: 192, elements: !2279)
!2279 = !{!2280, !2281, !2282}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "cooling_device", scope: !2278, file: !3, line: 32, baseType: !1896, size: 64)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !2278, file: !3, line: 33, baseType: !96, size: 64, offset: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2278, file: !3, line: 34, baseType: !96, size: 64, offset: 128)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2274, file: !3, line: 47, baseType: !7, size: 32, offset: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "trip_id", scope: !2274, file: !3, line: 48, baseType: !7, size: 32, offset: 96)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2274, file: !3, line: 49, baseType: !7, size: 32, offset: 128)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "sensor_data", scope: !2256, file: !3, line: 81, baseType: !93, size: 64, offset: 384)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2256, file: !3, line: 82, baseType: !2288, size: 64, offset: 448)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2290)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_of_device_ops", file: !62, line: 308, size: 320, elements: !2291)
!2291 = !{!2292, !2296, !2300, !2304, !2308}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "get_temp", scope: !2290, file: !62, line: 309, baseType: !2293, size: 64)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!102, !93, !746}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "get_trend", scope: !2290, file: !62, line: 310, baseType: !2297, size: 64, offset: 64)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DISubroutineType(types: !2299)
!2299 = !{!102, !93, !102, !2179}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "set_trips", scope: !2290, file: !62, line: 311, baseType: !2301, size: 64, offset: 128)
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{!102, !93, !102, !102}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "set_emul_temp", scope: !2290, file: !62, line: 312, baseType: !2305, size: 64, offset: 192)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{!102, !93, !102}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "set_trip_temp", scope: !2290, file: !62, line: 313, baseType: !2301, size: 64, offset: 256)
!2309 = !DILocation(line: 121, column: 25, scope: !2251)
!2310 = !DILocation(line: 121, column: 32, scope: !2251)
!2311 = !DILocation(line: 121, column: 36, scope: !2251)
!2312 = !DILocation(line: 123, column: 7, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2251, file: !3, line: 123, column: 6)
!2314 = !DILocation(line: 123, column: 12, scope: !2313)
!2315 = !DILocation(line: 123, column: 22, scope: !2313)
!2316 = !DILocation(line: 123, column: 15, scope: !2313)
!2317 = !DILocation(line: 123, column: 6, scope: !2251)
!2318 = !DILocation(line: 124, column: 3, scope: !2313)
!2319 = !DILocation(line: 126, column: 9, scope: !2251)
!2320 = !DILocation(line: 126, column: 15, scope: !2251)
!2321 = !DILocation(line: 126, column: 2, scope: !2251)
!2322 = !DILocation(line: 127, column: 1, scope: !2251)
!2323 = distinct !DISubprogram(name: "IS_ERR", scope: !2324, file: !2324, line: 34, type: !2325, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2324 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!2325 = !DISubroutineType(types: !2326)
!2326 = !{!999, !1388}
!2327 = !DILocalVariable(name: "ptr", arg: 1, scope: !2323, file: !2324, line: 34, type: !1388)
!2328 = !DILocation(line: 34, column: 60, scope: !2323)
!2329 = !DILocation(line: 36, column: 9, scope: !2323)
!2330 = !DILocation(line: 36, column: 2, scope: !2323)
!2331 = distinct !DISubprogram(name: "of_thermal_is_trip_valid", scope: !3, file: !3, line: 140, type: !2332, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2332 = !DISubroutineType(types: !2333)
!2333 = !{!999, !98, !102}
!2334 = !DILocalVariable(name: "tz", arg: 1, scope: !2331, file: !3, line: 140, type: !98)
!2335 = !DILocation(line: 140, column: 59, scope: !2331)
!2336 = !DILocalVariable(name: "trip", arg: 2, scope: !2331, file: !3, line: 140, type: !102)
!2337 = !DILocation(line: 140, column: 67, scope: !2331)
!2338 = !DILocalVariable(name: "data", scope: !2331, file: !3, line: 142, type: !2255)
!2339 = !DILocation(line: 142, column: 25, scope: !2331)
!2340 = !DILocation(line: 142, column: 32, scope: !2331)
!2341 = !DILocation(line: 142, column: 36, scope: !2331)
!2342 = !DILocation(line: 144, column: 7, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2331, file: !3, line: 144, column: 6)
!2344 = !DILocation(line: 144, column: 12, scope: !2343)
!2345 = !DILocation(line: 144, column: 15, scope: !2343)
!2346 = !DILocation(line: 144, column: 23, scope: !2343)
!2347 = !DILocation(line: 144, column: 29, scope: !2343)
!2348 = !DILocation(line: 144, column: 20, scope: !2343)
!2349 = !DILocation(line: 144, column: 36, scope: !2343)
!2350 = !DILocation(line: 144, column: 39, scope: !2343)
!2351 = !DILocation(line: 144, column: 44, scope: !2343)
!2352 = !DILocation(line: 144, column: 6, scope: !2331)
!2353 = !DILocation(line: 145, column: 3, scope: !2343)
!2354 = !DILocation(line: 147, column: 2, scope: !2331)
!2355 = !DILocation(line: 148, column: 1, scope: !2331)
!2356 = distinct !DISubprogram(name: "of_thermal_get_trip_points", scope: !3, file: !3, line: 162, type: !2357, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{!2359, !98}
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2265)
!2361 = !DILocalVariable(name: "tz", arg: 1, scope: !2356, file: !3, line: 162, type: !98)
!2362 = !DILocation(line: 162, column: 56, scope: !2356)
!2363 = !DILocalVariable(name: "data", scope: !2356, file: !3, line: 164, type: !2255)
!2364 = !DILocation(line: 164, column: 25, scope: !2356)
!2365 = !DILocation(line: 164, column: 32, scope: !2356)
!2366 = !DILocation(line: 164, column: 36, scope: !2356)
!2367 = !DILocation(line: 166, column: 7, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2356, file: !3, line: 166, column: 6)
!2369 = !DILocation(line: 166, column: 6, scope: !2356)
!2370 = !DILocation(line: 167, column: 3, scope: !2368)
!2371 = !DILocation(line: 169, column: 9, scope: !2356)
!2372 = !DILocation(line: 169, column: 15, scope: !2356)
!2373 = !DILocation(line: 169, column: 2, scope: !2356)
!2374 = !DILocation(line: 170, column: 1, scope: !2356)
!2375 = distinct !DISubprogram(name: "thermal_zone_of_get_sensor_id", scope: !3, file: !3, line: 425, type: !2376, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!102, !1896, !1896, !630}
!2378 = !DILocalVariable(name: "tz_np", arg: 1, scope: !2375, file: !3, line: 425, type: !1896)
!2379 = !DILocation(line: 425, column: 55, scope: !2375)
!2380 = !DILocalVariable(name: "sensor_np", arg: 2, scope: !2375, file: !3, line: 426, type: !1896)
!2381 = !DILocation(line: 426, column: 27, scope: !2375)
!2382 = !DILocalVariable(name: "id", arg: 3, scope: !2375, file: !3, line: 427, type: !630)
!2383 = !DILocation(line: 427, column: 12, scope: !2375)
!2384 = !DILocalVariable(name: "sensor_specs", scope: !2375, file: !3, line: 429, type: !2385)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_phandle_args", file: !1898, line: 74, size: 640, elements: !2386)
!2386 = !{!2387, !2388, !2389}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !2385, file: !1898, line: 75, baseType: !1896, size: 64)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "args_count", scope: !2385, file: !1898, line: 76, baseType: !102, size: 32, offset: 64)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2385, file: !1898, line: 77, baseType: !2390, size: 512, offset: 96)
!2390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2391, size: 512, elements: !791)
!2391 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !95, line: 104, baseType: !429)
!2392 = !DILocation(line: 429, column: 25, scope: !2375)
!2393 = !DILocalVariable(name: "ret", scope: !2375, file: !3, line: 430, type: !102)
!2394 = !DILocation(line: 430, column: 6, scope: !2375)
!2395 = !DILocation(line: 432, column: 35, scope: !2375)
!2396 = !DILocation(line: 432, column: 8, scope: !2375)
!2397 = !DILocation(line: 432, column: 6, scope: !2375)
!2398 = !DILocation(line: 437, column: 6, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2375, file: !3, line: 437, column: 6)
!2400 = !DILocation(line: 437, column: 6, scope: !2375)
!2401 = !DILocation(line: 438, column: 10, scope: !2399)
!2402 = !DILocation(line: 438, column: 3, scope: !2399)
!2403 = !DILocation(line: 440, column: 19, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2375, file: !3, line: 440, column: 6)
!2405 = !DILocation(line: 440, column: 25, scope: !2404)
!2406 = !DILocation(line: 440, column: 22, scope: !2404)
!2407 = !DILocation(line: 440, column: 6, scope: !2375)
!2408 = !DILocation(line: 441, column: 28, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2404, file: !3, line: 440, column: 36)
!2410 = !DILocation(line: 441, column: 3, scope: !2409)
!2411 = !DILocation(line: 442, column: 3, scope: !2409)
!2412 = !DILocation(line: 445, column: 19, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2375, file: !3, line: 445, column: 6)
!2414 = !DILocation(line: 445, column: 30, scope: !2413)
!2415 = !DILocation(line: 445, column: 6, scope: !2375)
!2416 = !DILocation(line: 446, column: 3, scope: !2413)
!2417 = !DILocation(line: 449, column: 21, scope: !2375)
!2418 = !DILocation(line: 449, column: 8, scope: !2375)
!2419 = !DILocation(line: 449, column: 47, scope: !2375)
!2420 = !DILocation(line: 449, column: 34, scope: !2375)
!2421 = !DILocation(line: 449, column: 3, scope: !2375)
!2422 = !DILocation(line: 449, column: 6, scope: !2375)
!2423 = !DILocation(line: 451, column: 27, scope: !2375)
!2424 = !DILocation(line: 451, column: 2, scope: !2375)
!2425 = !DILocation(line: 453, column: 2, scope: !2375)
!2426 = !DILocation(line: 454, column: 1, scope: !2375)
!2427 = distinct !DISubprogram(name: "of_node_put", scope: !1898, file: !1898, line: 129, type: !2428, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{null, !1896}
!2430 = !DILocalVariable(name: "node", arg: 1, scope: !2427, file: !1898, line: 129, type: !1896)
!2431 = !DILocation(line: 129, column: 52, scope: !2427)
!2432 = !DILocation(line: 129, column: 60, scope: !2427)
!2433 = distinct !DISubprogram(name: "thermal_zone_of_sensor_register", scope: !3, file: !3, line: 490, type: !2434, scopeLine: 492, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{!98, !1585, !102, !93, !2288}
!2436 = !DILocalVariable(name: "dev", arg: 1, scope: !2433, file: !3, line: 490, type: !1585)
!2437 = !DILocation(line: 490, column: 48, scope: !2433)
!2438 = !DILocalVariable(name: "sensor_id", arg: 2, scope: !2433, file: !3, line: 490, type: !102)
!2439 = !DILocation(line: 490, column: 57, scope: !2433)
!2440 = !DILocalVariable(name: "data", arg: 3, scope: !2433, file: !3, line: 490, type: !93)
!2441 = !DILocation(line: 490, column: 74, scope: !2433)
!2442 = !DILocalVariable(name: "ops", arg: 4, scope: !2433, file: !3, line: 491, type: !2288)
!2443 = !DILocation(line: 491, column: 46, scope: !2433)
!2444 = !DILocalVariable(name: "np", scope: !2433, file: !3, line: 493, type: !1896)
!2445 = !DILocation(line: 493, column: 22, scope: !2433)
!2446 = !DILocalVariable(name: "child", scope: !2433, file: !3, line: 493, type: !1896)
!2447 = !DILocation(line: 493, column: 27, scope: !2433)
!2448 = !DILocalVariable(name: "sensor_np", scope: !2433, file: !3, line: 493, type: !1896)
!2449 = !DILocation(line: 493, column: 35, scope: !2433)
!2450 = !DILocalVariable(name: "tzd", scope: !2433, file: !3, line: 494, type: !98)
!2451 = !DILocation(line: 494, column: 30, scope: !2433)
!2452 = !DILocation(line: 494, column: 36, scope: !2433)
!2453 = !DILocation(line: 496, column: 7, scope: !2433)
!2454 = !DILocation(line: 496, column: 5, scope: !2433)
!2455 = !DILocation(line: 497, column: 7, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2433, file: !3, line: 497, column: 6)
!2457 = !DILocation(line: 497, column: 6, scope: !2433)
!2458 = !DILocation(line: 498, column: 10, scope: !2456)
!2459 = !DILocation(line: 498, column: 3, scope: !2456)
!2460 = !DILocation(line: 500, column: 7, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2433, file: !3, line: 500, column: 6)
!2462 = !DILocation(line: 500, column: 11, scope: !2461)
!2463 = !DILocation(line: 500, column: 15, scope: !2461)
!2464 = !DILocation(line: 500, column: 20, scope: !2461)
!2465 = !DILocation(line: 500, column: 6, scope: !2433)
!2466 = !DILocation(line: 501, column: 15, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2461, file: !3, line: 500, column: 29)
!2468 = !DILocation(line: 501, column: 3, scope: !2467)
!2469 = !DILocation(line: 502, column: 10, scope: !2467)
!2470 = !DILocation(line: 502, column: 3, scope: !2467)
!2471 = !DILocation(line: 505, column: 26, scope: !2433)
!2472 = !DILocation(line: 505, column: 31, scope: !2433)
!2473 = !DILocation(line: 505, column: 14, scope: !2433)
!2474 = !DILocation(line: 505, column: 12, scope: !2433)
!2475 = !DILocation(line: 507, column: 2, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2433, file: !3, line: 507, column: 2)
!2477 = !DILocation(line: 507, column: 2, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2476, file: !3, line: 507, column: 2)
!2479 = !DILocalVariable(name: "ret", scope: !2480, file: !3, line: 508, type: !102)
!2480 = distinct !DILexicalBlock(scope: !2478, file: !3, line: 507, column: 46)
!2481 = !DILocation(line: 508, column: 7, scope: !2480)
!2482 = !DILocalVariable(name: "id", scope: !2480, file: !3, line: 508, type: !102)
!2483 = !DILocation(line: 508, column: 12, scope: !2480)
!2484 = !DILocation(line: 511, column: 39, scope: !2480)
!2485 = !DILocation(line: 511, column: 46, scope: !2480)
!2486 = !DILocation(line: 511, column: 9, scope: !2480)
!2487 = !DILocation(line: 511, column: 7, scope: !2480)
!2488 = !DILocation(line: 512, column: 7, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 512, column: 7)
!2490 = !DILocation(line: 512, column: 7, scope: !2480)
!2491 = !DILocation(line: 513, column: 4, scope: !2489)
!2492 = !DILocation(line: 515, column: 7, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 515, column: 7)
!2494 = !DILocation(line: 515, column: 13, scope: !2493)
!2495 = !DILocation(line: 515, column: 10, scope: !2493)
!2496 = !DILocation(line: 515, column: 7, scope: !2480)
!2497 = !DILocation(line: 516, column: 37, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2493, file: !3, line: 515, column: 24)
!2499 = !DILocation(line: 516, column: 44, scope: !2498)
!2500 = !DILocation(line: 517, column: 9, scope: !2498)
!2501 = !DILocation(line: 517, column: 15, scope: !2498)
!2502 = !DILocation(line: 516, column: 10, scope: !2498)
!2503 = !DILocation(line: 516, column: 8, scope: !2498)
!2504 = !DILocation(line: 518, column: 16, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2498, file: !3, line: 518, column: 8)
!2506 = !DILocation(line: 518, column: 9, scope: !2505)
!2507 = !DILocation(line: 518, column: 8, scope: !2498)
!2508 = !DILocation(line: 519, column: 32, scope: !2505)
!2509 = !DILocation(line: 519, column: 5, scope: !2505)
!2510 = !DILocation(line: 521, column: 16, scope: !2498)
!2511 = !DILocation(line: 521, column: 4, scope: !2498)
!2512 = !DILocation(line: 522, column: 4, scope: !2498)
!2513 = !DILocation(line: 524, column: 2, scope: !2480)
!2514 = distinct !{!2514, !2475, !2515}
!2515 = !DILocation(line: 524, column: 2, scope: !2476)
!2516 = !DILabel(scope: !2433, name: "exit", file: !3, line: 525)
!2517 = !DILocation(line: 525, column: 1, scope: !2433)
!2518 = !DILocation(line: 526, column: 14, scope: !2433)
!2519 = !DILocation(line: 526, column: 2, scope: !2433)
!2520 = !DILocation(line: 527, column: 14, scope: !2433)
!2521 = !DILocation(line: 527, column: 2, scope: !2433)
!2522 = !DILocation(line: 529, column: 9, scope: !2433)
!2523 = !DILocation(line: 529, column: 2, scope: !2433)
!2524 = !DILocation(line: 530, column: 1, scope: !2433)
!2525 = distinct !DISubprogram(name: "ERR_PTR", scope: !2324, file: !2324, line: 24, type: !2526, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2526 = !DISubroutineType(types: !2527)
!2527 = !{!93, !208}
!2528 = !DILocalVariable(name: "error", arg: 1, scope: !2525, file: !2324, line: 24, type: !208)
!2529 = !DILocation(line: 24, column: 48, scope: !2525)
!2530 = !DILocation(line: 26, column: 18, scope: !2525)
!2531 = !DILocation(line: 26, column: 9, scope: !2525)
!2532 = !DILocation(line: 26, column: 2, scope: !2525)
!2533 = distinct !DISubprogram(name: "of_node_get", scope: !1898, file: !1898, line: 125, type: !2534, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{!1896, !1896}
!2536 = !DILocalVariable(name: "node", arg: 1, scope: !2533, file: !1898, line: 125, type: !1896)
!2537 = !DILocation(line: 125, column: 67, scope: !2533)
!2538 = !DILocation(line: 127, column: 9, scope: !2533)
!2539 = !DILocation(line: 127, column: 2, scope: !2533)
!2540 = distinct !DISubprogram(name: "thermal_zone_of_add_sensor", scope: !3, file: !3, line: 375, type: !2541, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!98, !1896, !1896, !93, !2288}
!2543 = !DILocalVariable(name: "zone", arg: 1, scope: !2540, file: !3, line: 375, type: !1896)
!2544 = !DILocation(line: 375, column: 48, scope: !2540)
!2545 = !DILocalVariable(name: "sensor", arg: 2, scope: !2540, file: !3, line: 376, type: !1896)
!2546 = !DILocation(line: 376, column: 27, scope: !2540)
!2547 = !DILocalVariable(name: "data", arg: 3, scope: !2540, file: !3, line: 376, type: !93)
!2548 = !DILocation(line: 376, column: 41, scope: !2540)
!2549 = !DILocalVariable(name: "ops", arg: 4, scope: !2540, file: !3, line: 377, type: !2288)
!2550 = !DILocation(line: 377, column: 48, scope: !2540)
!2551 = !DILocalVariable(name: "tzd", scope: !2540, file: !3, line: 379, type: !98)
!2552 = !DILocation(line: 379, column: 30, scope: !2540)
!2553 = !DILocalVariable(name: "tz", scope: !2540, file: !3, line: 380, type: !2255)
!2554 = !DILocation(line: 380, column: 25, scope: !2540)
!2555 = !DILocation(line: 382, column: 38, scope: !2540)
!2556 = !DILocation(line: 382, column: 44, scope: !2540)
!2557 = !DILocation(line: 382, column: 8, scope: !2540)
!2558 = !DILocation(line: 382, column: 6, scope: !2540)
!2559 = !DILocation(line: 383, column: 13, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2540, file: !3, line: 383, column: 6)
!2561 = !DILocation(line: 383, column: 6, scope: !2560)
!2562 = !DILocation(line: 383, column: 6, scope: !2540)
!2563 = !DILocation(line: 384, column: 10, scope: !2560)
!2564 = !DILocation(line: 384, column: 3, scope: !2560)
!2565 = !DILocation(line: 386, column: 7, scope: !2540)
!2566 = !DILocation(line: 386, column: 12, scope: !2540)
!2567 = !DILocation(line: 386, column: 5, scope: !2540)
!2568 = !DILocation(line: 388, column: 7, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2540, file: !3, line: 388, column: 6)
!2570 = !DILocation(line: 388, column: 6, scope: !2540)
!2571 = !DILocation(line: 389, column: 10, scope: !2569)
!2572 = !DILocation(line: 389, column: 3, scope: !2569)
!2573 = !DILocation(line: 391, column: 14, scope: !2540)
!2574 = !DILocation(line: 391, column: 19, scope: !2540)
!2575 = !DILocation(line: 391, column: 2, scope: !2540)
!2576 = !DILocation(line: 392, column: 12, scope: !2540)
!2577 = !DILocation(line: 392, column: 2, scope: !2540)
!2578 = !DILocation(line: 392, column: 6, scope: !2540)
!2579 = !DILocation(line: 392, column: 10, scope: !2540)
!2580 = !DILocation(line: 393, column: 20, scope: !2540)
!2581 = !DILocation(line: 393, column: 2, scope: !2540)
!2582 = !DILocation(line: 393, column: 6, scope: !2540)
!2583 = !DILocation(line: 393, column: 18, scope: !2540)
!2584 = !DILocation(line: 395, column: 2, scope: !2540)
!2585 = !DILocation(line: 395, column: 7, scope: !2540)
!2586 = !DILocation(line: 395, column: 12, scope: !2540)
!2587 = !DILocation(line: 395, column: 21, scope: !2540)
!2588 = !DILocation(line: 396, column: 2, scope: !2540)
!2589 = !DILocation(line: 396, column: 7, scope: !2540)
!2590 = !DILocation(line: 396, column: 12, scope: !2540)
!2591 = !DILocation(line: 396, column: 22, scope: !2540)
!2592 = !DILocation(line: 402, column: 6, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2540, file: !3, line: 402, column: 6)
!2594 = !DILocation(line: 402, column: 11, scope: !2593)
!2595 = !DILocation(line: 402, column: 6, scope: !2540)
!2596 = !DILocation(line: 403, column: 3, scope: !2593)
!2597 = !DILocation(line: 403, column: 8, scope: !2593)
!2598 = !DILocation(line: 403, column: 13, scope: !2593)
!2599 = !DILocation(line: 403, column: 23, scope: !2593)
!2600 = !DILocation(line: 405, column: 6, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2540, file: !3, line: 405, column: 6)
!2602 = !DILocation(line: 405, column: 11, scope: !2601)
!2603 = !DILocation(line: 405, column: 6, scope: !2540)
!2604 = !DILocation(line: 406, column: 3, scope: !2601)
!2605 = !DILocation(line: 406, column: 8, scope: !2601)
!2606 = !DILocation(line: 406, column: 13, scope: !2601)
!2607 = !DILocation(line: 406, column: 27, scope: !2601)
!2608 = !DILocation(line: 408, column: 16, scope: !2540)
!2609 = !DILocation(line: 408, column: 21, scope: !2540)
!2610 = !DILocation(line: 408, column: 2, scope: !2540)
!2611 = !DILocation(line: 410, column: 9, scope: !2540)
!2612 = !DILocation(line: 410, column: 2, scope: !2540)
!2613 = !DILocation(line: 411, column: 1, scope: !2540)
!2614 = distinct !DISubprogram(name: "thermal_zone_of_sensor_unregister", scope: !3, file: !3, line: 548, type: !2615, scopeLine: 550, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2615 = !DISubroutineType(types: !2616)
!2616 = !{null, !1585, !98}
!2617 = !DILocalVariable(name: "dev", arg: 1, scope: !2614, file: !3, line: 548, type: !1585)
!2618 = !DILocation(line: 548, column: 55, scope: !2614)
!2619 = !DILocalVariable(name: "tzd", arg: 2, scope: !2614, file: !3, line: 549, type: !98)
!2620 = !DILocation(line: 549, column: 40, scope: !2614)
!2621 = !DILocalVariable(name: "tz", scope: !2614, file: !3, line: 551, type: !2255)
!2622 = !DILocation(line: 551, column: 25, scope: !2614)
!2623 = !DILocation(line: 553, column: 7, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2614, file: !3, line: 553, column: 6)
!2625 = !DILocation(line: 553, column: 11, scope: !2624)
!2626 = !DILocation(line: 553, column: 15, scope: !2624)
!2627 = !DILocation(line: 553, column: 19, scope: !2624)
!2628 = !DILocation(line: 553, column: 23, scope: !2624)
!2629 = !DILocation(line: 553, column: 28, scope: !2624)
!2630 = !DILocation(line: 553, column: 6, scope: !2614)
!2631 = !DILocation(line: 554, column: 3, scope: !2624)
!2632 = !DILocation(line: 556, column: 7, scope: !2614)
!2633 = !DILocation(line: 556, column: 12, scope: !2614)
!2634 = !DILocation(line: 556, column: 5, scope: !2614)
!2635 = !DILocation(line: 559, column: 7, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2614, file: !3, line: 559, column: 6)
!2637 = !DILocation(line: 559, column: 6, scope: !2614)
!2638 = !DILocation(line: 560, column: 3, scope: !2636)
!2639 = !DILocation(line: 562, column: 14, scope: !2614)
!2640 = !DILocation(line: 562, column: 19, scope: !2614)
!2641 = !DILocation(line: 562, column: 2, scope: !2614)
!2642 = !DILocation(line: 563, column: 2, scope: !2614)
!2643 = !DILocation(line: 563, column: 7, scope: !2614)
!2644 = !DILocation(line: 563, column: 12, scope: !2614)
!2645 = !DILocation(line: 563, column: 21, scope: !2614)
!2646 = !DILocation(line: 564, column: 2, scope: !2614)
!2647 = !DILocation(line: 564, column: 7, scope: !2614)
!2648 = !DILocation(line: 564, column: 12, scope: !2614)
!2649 = !DILocation(line: 564, column: 22, scope: !2614)
!2650 = !DILocation(line: 565, column: 2, scope: !2614)
!2651 = !DILocation(line: 565, column: 7, scope: !2614)
!2652 = !DILocation(line: 565, column: 12, scope: !2614)
!2653 = !DILocation(line: 565, column: 26, scope: !2614)
!2654 = !DILocation(line: 567, column: 2, scope: !2614)
!2655 = !DILocation(line: 567, column: 6, scope: !2614)
!2656 = !DILocation(line: 567, column: 10, scope: !2614)
!2657 = !DILocation(line: 568, column: 2, scope: !2614)
!2658 = !DILocation(line: 568, column: 6, scope: !2614)
!2659 = !DILocation(line: 568, column: 18, scope: !2614)
!2660 = !DILocation(line: 569, column: 16, scope: !2614)
!2661 = !DILocation(line: 569, column: 21, scope: !2614)
!2662 = !DILocation(line: 569, column: 2, scope: !2614)
!2663 = !DILocation(line: 570, column: 1, scope: !2614)
!2664 = distinct !DISubprogram(name: "devm_thermal_zone_of_sensor_register", scope: !3, file: !3, line: 609, type: !2434, scopeLine: 612, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2665 = !DILocalVariable(name: "dev", arg: 1, scope: !2664, file: !3, line: 610, type: !1585)
!2666 = !DILocation(line: 610, column: 17, scope: !2664)
!2667 = !DILocalVariable(name: "sensor_id", arg: 2, scope: !2664, file: !3, line: 610, type: !102)
!2668 = !DILocation(line: 610, column: 26, scope: !2664)
!2669 = !DILocalVariable(name: "data", arg: 3, scope: !2664, file: !3, line: 611, type: !93)
!2670 = !DILocation(line: 611, column: 8, scope: !2664)
!2671 = !DILocalVariable(name: "ops", arg: 4, scope: !2664, file: !3, line: 611, type: !2288)
!2672 = !DILocation(line: 611, column: 55, scope: !2664)
!2673 = !DILocalVariable(name: "ptr", scope: !2664, file: !3, line: 613, type: !97)
!2674 = !DILocation(line: 613, column: 31, scope: !2664)
!2675 = !DILocalVariable(name: "tzd", scope: !2664, file: !3, line: 613, type: !98)
!2676 = !DILocation(line: 613, column: 37, scope: !2664)
!2677 = !DILocation(line: 615, column: 8, scope: !2664)
!2678 = !DILocation(line: 615, column: 6, scope: !2664)
!2679 = !DILocation(line: 617, column: 7, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2664, file: !3, line: 617, column: 6)
!2681 = !DILocation(line: 617, column: 6, scope: !2664)
!2682 = !DILocation(line: 618, column: 10, scope: !2680)
!2683 = !DILocation(line: 618, column: 3, scope: !2680)
!2684 = !DILocation(line: 620, column: 40, scope: !2664)
!2685 = !DILocation(line: 620, column: 45, scope: !2664)
!2686 = !DILocation(line: 620, column: 56, scope: !2664)
!2687 = !DILocation(line: 620, column: 62, scope: !2664)
!2688 = !DILocation(line: 620, column: 8, scope: !2664)
!2689 = !DILocation(line: 620, column: 6, scope: !2664)
!2690 = !DILocation(line: 621, column: 13, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2664, file: !3, line: 621, column: 6)
!2692 = !DILocation(line: 621, column: 6, scope: !2691)
!2693 = !DILocation(line: 621, column: 6, scope: !2664)
!2694 = !DILocation(line: 622, column: 15, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2691, file: !3, line: 621, column: 19)
!2696 = !DILocation(line: 622, column: 3, scope: !2695)
!2697 = !DILocation(line: 623, column: 10, scope: !2695)
!2698 = !DILocation(line: 623, column: 3, scope: !2695)
!2699 = !DILocation(line: 626, column: 9, scope: !2664)
!2700 = !DILocation(line: 626, column: 3, scope: !2664)
!2701 = !DILocation(line: 626, column: 7, scope: !2664)
!2702 = !DILocation(line: 627, column: 13, scope: !2664)
!2703 = !DILocation(line: 627, column: 18, scope: !2664)
!2704 = !DILocation(line: 627, column: 2, scope: !2664)
!2705 = !DILocation(line: 629, column: 9, scope: !2664)
!2706 = !DILocation(line: 629, column: 2, scope: !2664)
!2707 = !DILocation(line: 630, column: 1, scope: !2664)
!2708 = distinct !DISubprogram(name: "devres_alloc", scope: !30, file: !30, line: 178, type: !2709, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2709 = !DISubroutineType(types: !2710)
!2710 = !{!93, !2711, !220, !94}
!2711 = !DIDerivedType(tag: DW_TAG_typedef, name: "dr_release_t", file: !30, line: 165, baseType: !2712)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{null, !1585, !93}
!2715 = !DILocalVariable(name: "release", arg: 1, scope: !2708, file: !30, line: 178, type: !2711)
!2716 = !DILocation(line: 178, column: 47, scope: !2708)
!2717 = !DILocalVariable(name: "size", arg: 2, scope: !2708, file: !30, line: 178, type: !220)
!2718 = !DILocation(line: 178, column: 63, scope: !2708)
!2719 = !DILocalVariable(name: "gfp", arg: 3, scope: !2708, file: !30, line: 178, type: !94)
!2720 = !DILocation(line: 178, column: 75, scope: !2708)
!2721 = !DILocation(line: 180, column: 27, scope: !2708)
!2722 = !DILocation(line: 180, column: 36, scope: !2708)
!2723 = !DILocation(line: 180, column: 42, scope: !2708)
!2724 = !DILocation(line: 180, column: 9, scope: !2708)
!2725 = !DILocation(line: 180, column: 2, scope: !2708)
!2726 = distinct !DISubprogram(name: "devm_thermal_zone_of_sensor_release", scope: !3, file: !3, line: 573, type: !2713, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2727 = !DILocalVariable(name: "dev", arg: 1, scope: !2726, file: !3, line: 573, type: !1585)
!2728 = !DILocation(line: 573, column: 64, scope: !2726)
!2729 = !DILocalVariable(name: "res", arg: 2, scope: !2726, file: !3, line: 573, type: !93)
!2730 = !DILocation(line: 573, column: 75, scope: !2726)
!2731 = !DILocation(line: 575, column: 36, scope: !2726)
!2732 = !DILocation(line: 576, column: 40, scope: !2726)
!2733 = !DILocation(line: 576, column: 9, scope: !2726)
!2734 = !DILocation(line: 576, column: 8, scope: !2726)
!2735 = !DILocation(line: 575, column: 2, scope: !2726)
!2736 = !DILocation(line: 577, column: 1, scope: !2726)
!2737 = distinct !DISubprogram(name: "devm_thermal_zone_of_sensor_unregister", scope: !3, file: !3, line: 646, type: !2615, scopeLine: 648, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2738 = !DILocalVariable(name: "dev", arg: 1, scope: !2737, file: !3, line: 646, type: !1585)
!2739 = !DILocation(line: 646, column: 60, scope: !2737)
!2740 = !DILocalVariable(name: "tzd", arg: 2, scope: !2737, file: !3, line: 647, type: !98)
!2741 = !DILocation(line: 647, column: 38, scope: !2737)
!2742 = !DILocalVariable(name: "__ret_warn_on", scope: !2743, file: !3, line: 649, type: !102)
!2743 = distinct !DILexicalBlock(scope: !2737, file: !3, line: 649, column: 2)
!2744 = !DILocation(line: 649, column: 2, scope: !2743)
!2745 = !DILocation(line: 649, column: 2, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2743, file: !3, line: 649, column: 2)
!2747 = !DILocation(line: 649, column: 2, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2746, file: !3, line: 649, column: 2)
!2749 = !DILocation(line: 649, column: 2, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2748, file: !3, line: 649, column: 2)
!2751 = !DILocation(line: 649, column: 2, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2748, file: !3, line: 649, column: 2)
!2753 = !{i32 -2143502657, i32 -2143502628, i32 -2143502582, i32 -2143502524, i32 -2143502470, i32 -2143502416, i32 -2143502361, i32 -2143502330}
!2754 = !DILocation(line: 649, column: 2, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2748, file: !3, line: 649, column: 2)
!2756 = !{i32 -2143501920, i32 -2143501913, i32 -2143501861, i32 -2143501830, i32 -2143501800}
!2757 = !DILocation(line: 649, column: 2, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2748, file: !3, line: 649, column: 2)
!2759 = !DILocation(line: 651, column: 1, scope: !2737)
!2760 = distinct !DISubprogram(name: "devm_thermal_zone_of_sensor_match", scope: !3, file: !3, line: 579, type: !2761, scopeLine: 581, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!102, !1585, !93, !93}
!2763 = !DILocalVariable(name: "dev", arg: 1, scope: !2760, file: !3, line: 579, type: !1585)
!2764 = !DILocation(line: 579, column: 61, scope: !2760)
!2765 = !DILocalVariable(name: "res", arg: 2, scope: !2760, file: !3, line: 579, type: !93)
!2766 = !DILocation(line: 579, column: 72, scope: !2760)
!2767 = !DILocalVariable(name: "data", arg: 3, scope: !2760, file: !3, line: 580, type: !93)
!2768 = !DILocation(line: 580, column: 17, scope: !2760)
!2769 = !DILocalVariable(name: "r", scope: !2760, file: !3, line: 582, type: !97)
!2770 = !DILocation(line: 582, column: 31, scope: !2760)
!2771 = !DILocation(line: 582, column: 35, scope: !2760)
!2772 = !DILocalVariable(name: "__ret_warn_on", scope: !2773, file: !3, line: 584, type: !102)
!2773 = distinct !DILexicalBlock(scope: !2774, file: !3, line: 584, column: 6)
!2774 = distinct !DILexicalBlock(scope: !2760, file: !3, line: 584, column: 6)
!2775 = !DILocation(line: 584, column: 6, scope: !2773)
!2776 = !DILocation(line: 584, column: 6, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2773, file: !3, line: 584, column: 6)
!2778 = !DILocation(line: 584, column: 6, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2777, file: !3, line: 584, column: 6)
!2780 = !DILocation(line: 584, column: 6, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2779, file: !3, line: 584, column: 6)
!2782 = !DILocation(line: 584, column: 6, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2779, file: !3, line: 584, column: 6)
!2784 = !{i32 -2143504515, i32 -2143504486, i32 -2143504440, i32 -2143504382, i32 -2143504328, i32 -2143504274, i32 -2143504219, i32 -2143504188}
!2785 = !DILocation(line: 584, column: 6, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2779, file: !3, line: 584, column: 6)
!2787 = !{i32 -2143503778, i32 -2143503771, i32 -2143503719, i32 -2143503688, i32 -2143503658}
!2788 = !DILocation(line: 584, column: 6, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2779, file: !3, line: 584, column: 6)
!2790 = !DILocation(line: 584, column: 6, scope: !2774)
!2791 = !DILocation(line: 584, column: 6, scope: !2760)
!2792 = !DILocation(line: 585, column: 3, scope: !2774)
!2793 = !DILocation(line: 587, column: 10, scope: !2760)
!2794 = !DILocation(line: 587, column: 9, scope: !2760)
!2795 = !DILocation(line: 587, column: 15, scope: !2760)
!2796 = !DILocation(line: 587, column: 12, scope: !2760)
!2797 = !DILocation(line: 587, column: 2, scope: !2760)
!2798 = !DILocation(line: 588, column: 1, scope: !2760)
!2799 = distinct !DISubprogram(name: "of_parse_thermal_zones", scope: !3, file: !3, line: 1036, type: !2800, scopeLine: 1037, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2800 = !DISubroutineType(types: !2801)
!2801 = !{!102}
!2802 = !DILocalVariable(name: "np", scope: !2799, file: !3, line: 1038, type: !1896)
!2803 = !DILocation(line: 1038, column: 22, scope: !2799)
!2804 = !DILocalVariable(name: "child", scope: !2799, file: !3, line: 1038, type: !1896)
!2805 = !DILocation(line: 1038, column: 27, scope: !2799)
!2806 = !DILocalVariable(name: "tz", scope: !2799, file: !3, line: 1039, type: !2255)
!2807 = !DILocation(line: 1039, column: 25, scope: !2799)
!2808 = !DILocalVariable(name: "ops", scope: !2799, file: !3, line: 1040, type: !2098)
!2809 = !DILocation(line: 1040, column: 34, scope: !2799)
!2810 = !DILocation(line: 1042, column: 7, scope: !2799)
!2811 = !DILocation(line: 1042, column: 5, scope: !2799)
!2812 = !DILocation(line: 1043, column: 7, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2799, file: !3, line: 1043, column: 6)
!2814 = !DILocation(line: 1043, column: 6, scope: !2799)
!2815 = !DILocation(line: 1044, column: 3, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2817, file: !3, line: 1044, column: 3)
!2817 = distinct !DILexicalBlock(scope: !2818, file: !3, line: 1044, column: 3)
!2818 = distinct !DILexicalBlock(scope: !2813, file: !3, line: 1043, column: 11)
!2819 = !DILocation(line: 1044, column: 3, scope: !2817)
!2820 = !DILocation(line: 1045, column: 3, scope: !2818)
!2821 = !DILocation(line: 1048, column: 2, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2799, file: !3, line: 1048, column: 2)
!2823 = !DILocation(line: 1048, column: 2, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2822, file: !3, line: 1048, column: 2)
!2825 = !DILocalVariable(name: "zone", scope: !2826, file: !3, line: 1049, type: !98)
!2826 = distinct !DILexicalBlock(scope: !2824, file: !3, line: 1048, column: 46)
!2827 = !DILocation(line: 1049, column: 31, scope: !2826)
!2828 = !DILocalVariable(name: "tzp", scope: !2826, file: !3, line: 1050, type: !2185)
!2829 = !DILocation(line: 1050, column: 31, scope: !2826)
!2830 = !DILocalVariable(name: "i", scope: !2826, file: !3, line: 1051, type: !102)
!2831 = !DILocation(line: 1051, column: 7, scope: !2826)
!2832 = !DILocalVariable(name: "mask", scope: !2826, file: !3, line: 1051, type: !102)
!2833 = !DILocation(line: 1051, column: 10, scope: !2826)
!2834 = !DILocalVariable(name: "prop", scope: !2826, file: !3, line: 1052, type: !429)
!2835 = !DILocation(line: 1052, column: 7, scope: !2826)
!2836 = !DILocation(line: 1054, column: 38, scope: !2826)
!2837 = !DILocation(line: 1054, column: 8, scope: !2826)
!2838 = !DILocation(line: 1054, column: 6, scope: !2826)
!2839 = !DILocation(line: 1055, column: 14, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2826, file: !3, line: 1055, column: 7)
!2841 = !DILocation(line: 1055, column: 7, scope: !2840)
!2842 = !DILocation(line: 1055, column: 7, scope: !2826)
!2843 = !DILocation(line: 1056, column: 4, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2840, file: !3, line: 1055, column: 19)
!2845 = !DILocation(line: 1059, column: 4, scope: !2844)
!2846 = !DILocation(line: 1062, column: 9, scope: !2826)
!2847 = !DILocation(line: 1062, column: 7, scope: !2826)
!2848 = !DILocation(line: 1063, column: 8, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2826, file: !3, line: 1063, column: 7)
!2850 = !DILocation(line: 1063, column: 7, scope: !2826)
!2851 = !DILocation(line: 1064, column: 4, scope: !2849)
!2852 = !DILocation(line: 1066, column: 9, scope: !2826)
!2853 = !DILocation(line: 1066, column: 7, scope: !2826)
!2854 = !DILocation(line: 1067, column: 8, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2826, file: !3, line: 1067, column: 7)
!2856 = !DILocation(line: 1067, column: 7, scope: !2826)
!2857 = !DILocation(line: 1068, column: 10, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2855, file: !3, line: 1067, column: 13)
!2859 = !DILocation(line: 1068, column: 4, scope: !2858)
!2860 = !DILocation(line: 1069, column: 4, scope: !2858)
!2861 = !DILocation(line: 1073, column: 3, scope: !2826)
!2862 = !DILocation(line: 1073, column: 8, scope: !2826)
!2863 = !DILocation(line: 1073, column: 17, scope: !2826)
!2864 = !DILocation(line: 1075, column: 29, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2826, file: !3, line: 1075, column: 7)
!2866 = !DILocation(line: 1075, column: 8, scope: !2865)
!2867 = !DILocation(line: 1075, column: 7, scope: !2826)
!2868 = !DILocation(line: 1076, column: 29, scope: !2865)
!2869 = !DILocation(line: 1076, column: 4, scope: !2865)
!2870 = !DILocation(line: 1076, column: 9, scope: !2865)
!2871 = !DILocation(line: 1076, column: 27, scope: !2865)
!2872 = !DILocation(line: 1078, column: 10, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2826, file: !3, line: 1078, column: 3)
!2874 = !DILocation(line: 1078, column: 8, scope: !2873)
!2875 = !DILocation(line: 1078, column: 15, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2873, file: !3, line: 1078, column: 3)
!2877 = !DILocation(line: 1078, column: 19, scope: !2876)
!2878 = !DILocation(line: 1078, column: 23, scope: !2876)
!2879 = !DILocation(line: 1078, column: 17, scope: !2876)
!2880 = !DILocation(line: 1078, column: 3, scope: !2873)
!2881 = !DILocation(line: 1079, column: 17, scope: !2876)
!2882 = !DILocation(line: 1079, column: 14, scope: !2876)
!2883 = !DILocation(line: 1079, column: 9, scope: !2876)
!2884 = !DILocation(line: 1079, column: 4, scope: !2876)
!2885 = !DILocation(line: 1078, column: 32, scope: !2876)
!2886 = !DILocation(line: 1078, column: 3, scope: !2876)
!2887 = distinct !{!2887, !2880, !2888}
!2888 = !DILocation(line: 1079, column: 17, scope: !2873)
!2889 = !DILocation(line: 1082, column: 16, scope: !2826)
!2890 = !DILocation(line: 1082, column: 20, scope: !2826)
!2891 = !DILocation(line: 1082, column: 3, scope: !2826)
!2892 = !DILocation(line: 1082, column: 8, scope: !2826)
!2893 = !DILocation(line: 1082, column: 14, scope: !2826)
!2894 = !DILocation(line: 1083, column: 17, scope: !2826)
!2895 = !DILocation(line: 1083, column: 21, scope: !2826)
!2896 = !DILocation(line: 1083, column: 3, scope: !2826)
!2897 = !DILocation(line: 1083, column: 8, scope: !2826)
!2898 = !DILocation(line: 1083, column: 15, scope: !2826)
!2899 = !DILocation(line: 1085, column: 39, scope: !2826)
!2900 = !DILocation(line: 1085, column: 46, scope: !2826)
!2901 = !DILocation(line: 1085, column: 52, scope: !2826)
!2902 = !DILocation(line: 1085, column: 56, scope: !2826)
!2903 = !DILocation(line: 1086, column: 11, scope: !2826)
!2904 = !DILocation(line: 1086, column: 17, scope: !2826)
!2905 = !DILocation(line: 1087, column: 11, scope: !2826)
!2906 = !DILocation(line: 1087, column: 16, scope: !2826)
!2907 = !DILocation(line: 1088, column: 11, scope: !2826)
!2908 = !DILocation(line: 1088, column: 15, scope: !2826)
!2909 = !DILocation(line: 1089, column: 11, scope: !2826)
!2910 = !DILocation(line: 1089, column: 15, scope: !2826)
!2911 = !DILocation(line: 1085, column: 10, scope: !2826)
!2912 = !DILocation(line: 1085, column: 8, scope: !2826)
!2913 = !DILocation(line: 1090, column: 14, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2826, file: !3, line: 1090, column: 7)
!2915 = !DILocation(line: 1090, column: 7, scope: !2914)
!2916 = !DILocation(line: 1090, column: 7, scope: !2826)
!2917 = !DILocation(line: 1091, column: 4, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2914, file: !3, line: 1090, column: 21)
!2919 = !DILocation(line: 1093, column: 10, scope: !2918)
!2920 = !DILocation(line: 1093, column: 4, scope: !2918)
!2921 = !DILocation(line: 1094, column: 10, scope: !2918)
!2922 = !DILocation(line: 1094, column: 4, scope: !2918)
!2923 = !DILocation(line: 1095, column: 25, scope: !2918)
!2924 = !DILocation(line: 1095, column: 4, scope: !2918)
!2925 = !DILocation(line: 1097, column: 3, scope: !2918)
!2926 = !DILocation(line: 1098, column: 2, scope: !2826)
!2927 = distinct !{!2927, !2821, !2928}
!2928 = !DILocation(line: 1098, column: 2, scope: !2822)
!2929 = !DILocation(line: 1099, column: 14, scope: !2799)
!2930 = !DILocation(line: 1099, column: 2, scope: !2799)
!2931 = !DILocation(line: 1101, column: 2, scope: !2799)
!2932 = !DILabel(scope: !2799, name: "exit_free", file: !3, line: 1103)
!2933 = !DILocation(line: 1103, column: 1, scope: !2799)
!2934 = !DILocation(line: 1104, column: 14, scope: !2799)
!2935 = !DILocation(line: 1104, column: 2, scope: !2799)
!2936 = !DILocation(line: 1105, column: 14, scope: !2799)
!2937 = !DILocation(line: 1105, column: 2, scope: !2799)
!2938 = !DILocation(line: 1106, column: 23, scope: !2799)
!2939 = !DILocation(line: 1106, column: 2, scope: !2799)
!2940 = !DILocation(line: 1109, column: 2, scope: !2799)
!2941 = !DILocation(line: 1111, column: 2, scope: !2799)
!2942 = !DILocation(line: 1112, column: 1, scope: !2799)
!2943 = distinct !DISubprogram(name: "thermal_of_build_thermal_zone", scope: !3, file: !3, line: 847, type: !2944, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2944 = !DISubroutineType(types: !2945)
!2945 = !{!2255, !1896}
!2946 = !DILocalVariable(name: "np", arg: 1, scope: !2943, file: !3, line: 847, type: !1896)
!2947 = !DILocation(line: 847, column: 59, scope: !2943)
!2948 = !DILocalVariable(name: "child", scope: !2943, file: !3, line: 849, type: !1896)
!2949 = !DILocation(line: 849, column: 22, scope: !2943)
!2950 = !DILocalVariable(name: "gchild", scope: !2943, file: !3, line: 849, type: !1896)
!2951 = !DILocation(line: 849, column: 37, scope: !2943)
!2952 = !DILocalVariable(name: "tz", scope: !2943, file: !3, line: 850, type: !2255)
!2953 = !DILocation(line: 850, column: 25, scope: !2943)
!2954 = !DILocalVariable(name: "ret", scope: !2943, file: !3, line: 851, type: !102)
!2955 = !DILocation(line: 851, column: 6, scope: !2943)
!2956 = !DILocalVariable(name: "i", scope: !2943, file: !3, line: 851, type: !102)
!2957 = !DILocation(line: 851, column: 11, scope: !2943)
!2958 = !DILocalVariable(name: "prop", scope: !2943, file: !3, line: 852, type: !429)
!2959 = !DILocation(line: 852, column: 6, scope: !2943)
!2960 = !DILocalVariable(name: "coef", scope: !2943, file: !3, line: 852, type: !2961)
!2961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !429, size: 64, elements: !971)
!2962 = !DILocation(line: 852, column: 12, scope: !2943)
!2963 = !DILocation(line: 854, column: 7, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2943, file: !3, line: 854, column: 6)
!2965 = !DILocation(line: 854, column: 6, scope: !2943)
!2966 = !DILocation(line: 855, column: 3, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2964, file: !3, line: 854, column: 11)
!2968 = !DILocation(line: 856, column: 10, scope: !2967)
!2969 = !DILocation(line: 856, column: 3, scope: !2967)
!2970 = !DILocation(line: 859, column: 7, scope: !2943)
!2971 = !DILocation(line: 859, column: 5, scope: !2943)
!2972 = !DILocation(line: 860, column: 7, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2943, file: !3, line: 860, column: 6)
!2974 = !DILocation(line: 860, column: 6, scope: !2943)
!2975 = !DILocation(line: 861, column: 10, scope: !2973)
!2976 = !DILocation(line: 861, column: 3, scope: !2973)
!2977 = !DILocation(line: 863, column: 29, scope: !2943)
!2978 = !DILocation(line: 863, column: 8, scope: !2943)
!2979 = !DILocation(line: 863, column: 6, scope: !2943)
!2980 = !DILocation(line: 864, column: 6, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2943, file: !3, line: 864, column: 6)
!2982 = !DILocation(line: 864, column: 10, scope: !2981)
!2983 = !DILocation(line: 864, column: 6, scope: !2943)
!2984 = !DILocation(line: 865, column: 3, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2981, file: !3, line: 864, column: 15)
!2986 = !DILocation(line: 866, column: 3, scope: !2985)
!2987 = !DILocation(line: 868, column: 22, scope: !2943)
!2988 = !DILocation(line: 868, column: 2, scope: !2943)
!2989 = !DILocation(line: 868, column: 6, scope: !2943)
!2990 = !DILocation(line: 868, column: 20, scope: !2943)
!2991 = !DILocation(line: 870, column: 29, scope: !2943)
!2992 = !DILocation(line: 870, column: 8, scope: !2943)
!2993 = !DILocation(line: 870, column: 6, scope: !2943)
!2994 = !DILocation(line: 871, column: 6, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2943, file: !3, line: 871, column: 6)
!2996 = !DILocation(line: 871, column: 10, scope: !2995)
!2997 = !DILocation(line: 871, column: 6, scope: !2943)
!2998 = !DILocation(line: 872, column: 3, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2995, file: !3, line: 871, column: 15)
!3000 = !DILocation(line: 873, column: 3, scope: !2999)
!3001 = !DILocation(line: 875, column: 22, scope: !2943)
!3002 = !DILocation(line: 875, column: 2, scope: !2943)
!3003 = !DILocation(line: 875, column: 6, scope: !2943)
!3004 = !DILocation(line: 875, column: 20, scope: !2943)
!3005 = !DILocation(line: 882, column: 35, scope: !2943)
!3006 = !DILocation(line: 882, column: 55, scope: !2943)
!3007 = !DILocation(line: 882, column: 8, scope: !2943)
!3008 = !DILocation(line: 882, column: 6, scope: !2943)
!3009 = !DILocation(line: 883, column: 6, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !2943, file: !3, line: 883, column: 6)
!3011 = !DILocation(line: 883, column: 10, scope: !3010)
!3012 = !DILocation(line: 883, column: 6, scope: !2943)
!3013 = !DILocation(line: 884, column: 15, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !3010, file: !3, line: 883, column: 16)
!3015 = !DILocation(line: 884, column: 3, scope: !3014)
!3016 = !DILocation(line: 884, column: 7, scope: !3014)
!3017 = !DILocation(line: 884, column: 13, scope: !3014)
!3018 = !DILocation(line: 885, column: 16, scope: !3014)
!3019 = !DILocation(line: 885, column: 3, scope: !3014)
!3020 = !DILocation(line: 885, column: 7, scope: !3014)
!3021 = !DILocation(line: 885, column: 14, scope: !3014)
!3022 = !DILocation(line: 886, column: 2, scope: !3014)
!3023 = !DILocation(line: 887, column: 3, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3010, file: !3, line: 886, column: 9)
!3025 = !DILocation(line: 887, column: 7, scope: !3024)
!3026 = !DILocation(line: 887, column: 13, scope: !3024)
!3027 = !DILocation(line: 888, column: 3, scope: !3024)
!3028 = !DILocation(line: 888, column: 7, scope: !3024)
!3029 = !DILocation(line: 888, column: 14, scope: !3024)
!3030 = !DILocation(line: 892, column: 31, scope: !2943)
!3031 = !DILocation(line: 892, column: 10, scope: !2943)
!3032 = !DILocation(line: 892, column: 8, scope: !2943)
!3033 = !DILocation(line: 895, column: 7, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !2943, file: !3, line: 895, column: 6)
!3035 = !DILocation(line: 895, column: 6, scope: !2943)
!3036 = !DILocation(line: 896, column: 3, scope: !3034)
!3037 = !DILocation(line: 898, column: 34, scope: !2943)
!3038 = !DILocation(line: 898, column: 15, scope: !2943)
!3039 = !DILocation(line: 898, column: 2, scope: !2943)
!3040 = !DILocation(line: 898, column: 6, scope: !2943)
!3041 = !DILocation(line: 898, column: 13, scope: !2943)
!3042 = !DILocation(line: 899, column: 6, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !2943, file: !3, line: 899, column: 6)
!3044 = !DILocation(line: 899, column: 10, scope: !3043)
!3045 = !DILocation(line: 899, column: 17, scope: !3043)
!3046 = !DILocation(line: 899, column: 6, scope: !2943)
!3047 = !DILocation(line: 900, column: 3, scope: !3043)
!3048 = !DILocation(line: 902, column: 22, scope: !2943)
!3049 = !DILocation(line: 902, column: 26, scope: !2943)
!3050 = !DILocation(line: 902, column: 14, scope: !2943)
!3051 = !DILocation(line: 902, column: 2, scope: !2943)
!3052 = !DILocation(line: 902, column: 6, scope: !2943)
!3053 = !DILocation(line: 902, column: 12, scope: !2943)
!3054 = !DILocation(line: 903, column: 7, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !2943, file: !3, line: 903, column: 6)
!3056 = !DILocation(line: 903, column: 11, scope: !3055)
!3057 = !DILocation(line: 903, column: 6, scope: !2943)
!3058 = !DILocation(line: 904, column: 7, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !3055, file: !3, line: 903, column: 18)
!3060 = !DILocation(line: 905, column: 3, scope: !3059)
!3061 = !DILocation(line: 908, column: 4, scope: !2943)
!3062 = !DILocation(line: 909, column: 2, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !2943, file: !3, line: 909, column: 2)
!3064 = !DILocation(line: 909, column: 2, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3063, file: !3, line: 909, column: 2)
!3066 = !DILocation(line: 910, column: 34, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3065, file: !3, line: 909, column: 40)
!3068 = !DILocation(line: 910, column: 43, scope: !3067)
!3069 = !DILocation(line: 910, column: 47, scope: !3067)
!3070 = !DILocation(line: 910, column: 54, scope: !3067)
!3071 = !DILocation(line: 910, column: 9, scope: !3067)
!3072 = !DILocation(line: 910, column: 7, scope: !3067)
!3073 = !DILocation(line: 911, column: 7, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3067, file: !3, line: 911, column: 7)
!3075 = !DILocation(line: 911, column: 7, scope: !3067)
!3076 = !DILocation(line: 912, column: 4, scope: !3074)
!3077 = !DILocation(line: 913, column: 2, scope: !3067)
!3078 = distinct !{!3078, !3062, !3079}
!3079 = !DILocation(line: 913, column: 2, scope: !3063)
!3080 = !DILocation(line: 915, column: 14, scope: !2943)
!3081 = !DILocation(line: 915, column: 2, scope: !2943)
!3082 = !DILocation(line: 918, column: 31, scope: !2943)
!3083 = !DILocation(line: 918, column: 10, scope: !2943)
!3084 = !DILocation(line: 918, column: 8, scope: !2943)
!3085 = !DILocation(line: 921, column: 7, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !2943, file: !3, line: 921, column: 6)
!3087 = !DILocation(line: 921, column: 6, scope: !2943)
!3088 = !DILocation(line: 922, column: 3, scope: !3086)
!3089 = !DILocation(line: 924, column: 36, scope: !2943)
!3090 = !DILocation(line: 924, column: 17, scope: !2943)
!3091 = !DILocation(line: 924, column: 2, scope: !2943)
!3092 = !DILocation(line: 924, column: 6, scope: !2943)
!3093 = !DILocation(line: 924, column: 15, scope: !2943)
!3094 = !DILocation(line: 925, column: 6, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !2943, file: !3, line: 925, column: 6)
!3096 = !DILocation(line: 925, column: 10, scope: !3095)
!3097 = !DILocation(line: 925, column: 19, scope: !3095)
!3098 = !DILocation(line: 925, column: 6, scope: !2943)
!3099 = !DILocation(line: 926, column: 3, scope: !3095)
!3100 = !DILocation(line: 928, column: 21, scope: !2943)
!3101 = !DILocation(line: 928, column: 25, scope: !2943)
!3102 = !DILocation(line: 928, column: 13, scope: !2943)
!3103 = !DILocation(line: 928, column: 2, scope: !2943)
!3104 = !DILocation(line: 928, column: 6, scope: !2943)
!3105 = !DILocation(line: 928, column: 11, scope: !2943)
!3106 = !DILocation(line: 929, column: 7, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !2943, file: !3, line: 929, column: 6)
!3108 = !DILocation(line: 929, column: 11, scope: !3107)
!3109 = !DILocation(line: 929, column: 6, scope: !2943)
!3110 = !DILocation(line: 930, column: 7, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 929, column: 17)
!3112 = !DILocation(line: 931, column: 3, scope: !3111)
!3113 = !DILocation(line: 934, column: 4, scope: !2943)
!3114 = !DILocation(line: 935, column: 2, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !2943, file: !3, line: 935, column: 2)
!3116 = !DILocation(line: 935, column: 2, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3115, file: !3, line: 935, column: 2)
!3118 = !DILocation(line: 936, column: 41, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3117, file: !3, line: 935, column: 40)
!3120 = !DILocation(line: 936, column: 50, scope: !3119)
!3121 = !DILocation(line: 936, column: 54, scope: !3119)
!3122 = !DILocation(line: 936, column: 60, scope: !3119)
!3123 = !DILocation(line: 937, column: 13, scope: !3119)
!3124 = !DILocation(line: 937, column: 17, scope: !3119)
!3125 = !DILocation(line: 937, column: 24, scope: !3119)
!3126 = !DILocation(line: 937, column: 28, scope: !3119)
!3127 = !DILocation(line: 936, column: 9, scope: !3119)
!3128 = !DILocation(line: 936, column: 7, scope: !3119)
!3129 = !DILocation(line: 938, column: 7, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !3119, file: !3, line: 938, column: 7)
!3131 = !DILocation(line: 938, column: 7, scope: !3119)
!3132 = !DILocation(line: 939, column: 4, scope: !3130)
!3133 = !DILocation(line: 940, column: 2, scope: !3119)
!3134 = distinct !{!3134, !3114, !3135}
!3135 = !DILocation(line: 940, column: 2, scope: !3115)
!3136 = !DILabel(scope: !2943, name: "finish", file: !3, line: 942)
!3137 = !DILocation(line: 942, column: 1, scope: !2943)
!3138 = !DILocation(line: 943, column: 14, scope: !2943)
!3139 = !DILocation(line: 943, column: 2, scope: !2943)
!3140 = !DILocation(line: 945, column: 9, scope: !2943)
!3141 = !DILocation(line: 945, column: 2, scope: !2943)
!3142 = !DILabel(scope: !2943, name: "free_tbps", file: !3, line: 947)
!3143 = !DILocation(line: 947, column: 1, scope: !2943)
!3144 = !DILocation(line: 948, column: 11, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !2943, file: !3, line: 948, column: 2)
!3146 = !DILocation(line: 948, column: 13, scope: !3145)
!3147 = !DILocation(line: 948, column: 9, scope: !3145)
!3148 = !DILocation(line: 948, column: 7, scope: !3145)
!3149 = !DILocation(line: 948, column: 18, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3145, file: !3, line: 948, column: 2)
!3151 = !DILocation(line: 948, column: 20, scope: !3150)
!3152 = !DILocation(line: 948, column: 2, scope: !3145)
!3153 = !DILocalVariable(name: "tbp", scope: !3154, file: !3, line: 949, type: !2273)
!3154 = distinct !DILexicalBlock(scope: !3150, file: !3, line: 948, column: 31)
!3155 = !DILocation(line: 949, column: 33, scope: !3154)
!3156 = !DILocation(line: 949, column: 39, scope: !3154)
!3157 = !DILocation(line: 949, column: 43, scope: !3154)
!3158 = !DILocation(line: 949, column: 50, scope: !3154)
!3159 = !DILocation(line: 949, column: 48, scope: !3154)
!3160 = !DILocalVariable(name: "j", scope: !3154, file: !3, line: 950, type: !102)
!3161 = !DILocation(line: 950, column: 7, scope: !3154)
!3162 = !DILocation(line: 952, column: 10, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3154, file: !3, line: 952, column: 3)
!3164 = !DILocation(line: 952, column: 8, scope: !3163)
!3165 = !DILocation(line: 952, column: 15, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3163, file: !3, line: 952, column: 3)
!3167 = !DILocation(line: 952, column: 19, scope: !3166)
!3168 = !DILocation(line: 952, column: 24, scope: !3166)
!3169 = !DILocation(line: 952, column: 17, scope: !3166)
!3170 = !DILocation(line: 952, column: 3, scope: !3163)
!3171 = !DILocation(line: 953, column: 16, scope: !3166)
!3172 = !DILocation(line: 953, column: 21, scope: !3166)
!3173 = !DILocation(line: 953, column: 26, scope: !3166)
!3174 = !DILocation(line: 953, column: 29, scope: !3166)
!3175 = !DILocation(line: 953, column: 4, scope: !3166)
!3176 = !DILocation(line: 952, column: 32, scope: !3166)
!3177 = !DILocation(line: 952, column: 3, scope: !3166)
!3178 = distinct !{!3178, !3170, !3179}
!3179 = !DILocation(line: 953, column: 43, scope: !3163)
!3180 = !DILocation(line: 955, column: 9, scope: !3154)
!3181 = !DILocation(line: 955, column: 14, scope: !3154)
!3182 = !DILocation(line: 955, column: 3, scope: !3154)
!3183 = !DILocation(line: 956, column: 2, scope: !3154)
!3184 = !DILocation(line: 948, column: 27, scope: !3150)
!3185 = !DILocation(line: 948, column: 2, scope: !3150)
!3186 = distinct !{!3186, !3152, !3187}
!3187 = !DILocation(line: 956, column: 2, scope: !3145)
!3188 = !DILocation(line: 958, column: 8, scope: !2943)
!3189 = !DILocation(line: 958, column: 12, scope: !2943)
!3190 = !DILocation(line: 958, column: 2, scope: !2943)
!3191 = !DILabel(scope: !2943, name: "free_trips", file: !3, line: 959)
!3192 = !DILocation(line: 959, column: 1, scope: !2943)
!3193 = !DILocation(line: 960, column: 9, scope: !3194)
!3194 = distinct !DILexicalBlock(scope: !2943, file: !3, line: 960, column: 2)
!3195 = !DILocation(line: 960, column: 7, scope: !3194)
!3196 = !DILocation(line: 960, column: 14, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !3194, file: !3, line: 960, column: 2)
!3198 = !DILocation(line: 960, column: 18, scope: !3197)
!3199 = !DILocation(line: 960, column: 22, scope: !3197)
!3200 = !DILocation(line: 960, column: 16, scope: !3197)
!3201 = !DILocation(line: 960, column: 2, scope: !3194)
!3202 = !DILocation(line: 961, column: 15, scope: !3197)
!3203 = !DILocation(line: 961, column: 19, scope: !3197)
!3204 = !DILocation(line: 961, column: 25, scope: !3197)
!3205 = !DILocation(line: 961, column: 28, scope: !3197)
!3206 = !DILocation(line: 961, column: 3, scope: !3197)
!3207 = !DILocation(line: 960, column: 31, scope: !3197)
!3208 = !DILocation(line: 960, column: 2, scope: !3197)
!3209 = distinct !{!3209, !3201, !3210}
!3210 = !DILocation(line: 961, column: 30, scope: !3194)
!3211 = !DILocation(line: 962, column: 8, scope: !2943)
!3212 = !DILocation(line: 962, column: 12, scope: !2943)
!3213 = !DILocation(line: 962, column: 2, scope: !2943)
!3214 = !DILocation(line: 963, column: 14, scope: !2943)
!3215 = !DILocation(line: 963, column: 2, scope: !2943)
!3216 = !DILabel(scope: !2943, name: "free_tz", file: !3, line: 964)
!3217 = !DILocation(line: 964, column: 1, scope: !2943)
!3218 = !DILocation(line: 965, column: 8, scope: !2943)
!3219 = !DILocation(line: 965, column: 2, scope: !2943)
!3220 = !DILocation(line: 966, column: 14, scope: !2943)
!3221 = !DILocation(line: 966, column: 2, scope: !2943)
!3222 = !DILocation(line: 968, column: 17, scope: !2943)
!3223 = !DILocation(line: 968, column: 9, scope: !2943)
!3224 = !DILocation(line: 968, column: 2, scope: !2943)
!3225 = !DILocation(line: 969, column: 1, scope: !2943)
!3226 = distinct !DISubprogram(name: "PTR_ERR", scope: !2324, file: !2324, line: 29, type: !3227, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{!208, !1388}
!3229 = !DILocalVariable(name: "ptr", arg: 1, scope: !3226, file: !2324, line: 29, type: !1388)
!3230 = !DILocation(line: 29, column: 61, scope: !3226)
!3231 = !DILocation(line: 31, column: 16, scope: !3226)
!3232 = !DILocation(line: 31, column: 9, scope: !3226)
!3233 = !DILocation(line: 31, column: 2, scope: !3226)
!3234 = distinct !DISubprogram(name: "kzalloc", scope: !86, file: !86, line: 662, type: !3235, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{!93, !220, !94}
!3237 = !DILocalVariable(name: "s", arg: 1, scope: !3238, file: !86, line: 445, type: !1049)
!3238 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !86, file: !86, line: 445, type: !3239, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{!93, !1049, !94, !220}
!3241 = !DILocation(line: 445, column: 72, scope: !3238, inlinedAt: !3242)
!3242 = distinct !DILocation(line: 552, column: 10, scope: !3243, inlinedAt: !3246)
!3243 = distinct !DILexicalBlock(scope: !3244, file: !86, line: 540, column: 34)
!3244 = distinct !DILexicalBlock(scope: !3245, file: !86, line: 540, column: 6)
!3245 = distinct !DISubprogram(name: "kmalloc", scope: !86, file: !86, line: 538, type: !3235, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3246 = distinct !DILocation(line: 664, column: 9, scope: !3234)
!3247 = !DILocalVariable(name: "flags", arg: 2, scope: !3238, file: !86, line: 446, type: !94)
!3248 = !DILocation(line: 446, column: 9, scope: !3238, inlinedAt: !3242)
!3249 = !DILocalVariable(name: "size", arg: 3, scope: !3238, file: !86, line: 446, type: !220)
!3250 = !DILocation(line: 446, column: 23, scope: !3238, inlinedAt: !3242)
!3251 = !DILocalVariable(name: "ret", scope: !3238, file: !86, line: 448, type: !93)
!3252 = !DILocation(line: 448, column: 8, scope: !3238, inlinedAt: !3242)
!3253 = !DILocalVariable(name: "flags", arg: 1, scope: !3254, file: !86, line: 318, type: !94)
!3254 = distinct !DISubprogram(name: "kmalloc_type", scope: !86, file: !86, line: 318, type: !3255, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3255 = !DISubroutineType(types: !3256)
!3256 = !{!85, !94}
!3257 = !DILocation(line: 318, column: 67, scope: !3254, inlinedAt: !3258)
!3258 = distinct !DILocation(line: 553, column: 20, scope: !3243, inlinedAt: !3246)
!3259 = !DILocalVariable(name: "size", arg: 1, scope: !3260, file: !86, line: 346, type: !220)
!3260 = distinct !DISubprogram(name: "kmalloc_index", scope: !86, file: !86, line: 346, type: !3261, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3261 = !DISubroutineType(types: !3262)
!3262 = !{!7, !220}
!3263 = !DILocation(line: 346, column: 58, scope: !3260, inlinedAt: !3264)
!3264 = distinct !DILocation(line: 547, column: 11, scope: !3243, inlinedAt: !3246)
!3265 = !DILocalVariable(name: "size", arg: 1, scope: !3266, file: !86, line: 472, type: !220)
!3266 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !86, file: !86, line: 472, type: !3267, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3267 = !DISubroutineType(types: !3268)
!3268 = !{!93, !220, !94, !7}
!3269 = !DILocation(line: 472, column: 28, scope: !3266, inlinedAt: !3270)
!3270 = distinct !DILocation(line: 481, column: 9, scope: !3271, inlinedAt: !3272)
!3271 = distinct !DISubprogram(name: "kmalloc_large", scope: !86, file: !86, line: 478, type: !3235, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3272 = distinct !DILocation(line: 545, column: 11, scope: !3273, inlinedAt: !3246)
!3273 = distinct !DILexicalBlock(scope: !3243, file: !86, line: 544, column: 7)
!3274 = !DILocalVariable(name: "flags", arg: 2, scope: !3266, file: !86, line: 472, type: !94)
!3275 = !DILocation(line: 472, column: 40, scope: !3266, inlinedAt: !3270)
!3276 = !DILocalVariable(name: "order", arg: 3, scope: !3266, file: !86, line: 472, type: !7)
!3277 = !DILocation(line: 472, column: 60, scope: !3266, inlinedAt: !3270)
!3278 = !DILocalVariable(name: "size", arg: 1, scope: !3271, file: !86, line: 478, type: !220)
!3279 = !DILocation(line: 478, column: 51, scope: !3271, inlinedAt: !3272)
!3280 = !DILocalVariable(name: "flags", arg: 2, scope: !3271, file: !86, line: 478, type: !94)
!3281 = !DILocation(line: 478, column: 63, scope: !3271, inlinedAt: !3272)
!3282 = !DILocalVariable(name: "order", scope: !3271, file: !86, line: 480, type: !7)
!3283 = !DILocation(line: 480, column: 15, scope: !3271, inlinedAt: !3272)
!3284 = !DILocalVariable(name: "size", arg: 1, scope: !3245, file: !86, line: 538, type: !220)
!3285 = !DILocation(line: 538, column: 45, scope: !3245, inlinedAt: !3246)
!3286 = !DILocalVariable(name: "flags", arg: 2, scope: !3245, file: !86, line: 538, type: !94)
!3287 = !DILocation(line: 538, column: 57, scope: !3245, inlinedAt: !3246)
!3288 = !DILocalVariable(name: "index", scope: !3243, file: !86, line: 542, type: !7)
!3289 = !DILocation(line: 542, column: 16, scope: !3243, inlinedAt: !3246)
!3290 = !DILocalVariable(name: "size", arg: 1, scope: !3234, file: !86, line: 662, type: !220)
!3291 = !DILocation(line: 662, column: 36, scope: !3234)
!3292 = !DILocalVariable(name: "flags", arg: 2, scope: !3234, file: !86, line: 662, type: !94)
!3293 = !DILocation(line: 662, column: 48, scope: !3234)
!3294 = !DILocation(line: 664, column: 17, scope: !3234)
!3295 = !DILocation(line: 664, column: 23, scope: !3234)
!3296 = !DILocation(line: 664, column: 29, scope: !3234)
!3297 = !DILocation(line: 540, column: 27, scope: !3244, inlinedAt: !3246)
!3298 = !DILocation(line: 540, column: 6, scope: !3244, inlinedAt: !3246)
!3299 = !DILocation(line: 540, column: 6, scope: !3245, inlinedAt: !3246)
!3300 = !DILocation(line: 544, column: 7, scope: !3273, inlinedAt: !3246)
!3301 = !DILocation(line: 544, column: 12, scope: !3273, inlinedAt: !3246)
!3302 = !DILocation(line: 544, column: 7, scope: !3243, inlinedAt: !3246)
!3303 = !DILocation(line: 545, column: 25, scope: !3273, inlinedAt: !3246)
!3304 = !DILocation(line: 545, column: 31, scope: !3273, inlinedAt: !3246)
!3305 = !DILocation(line: 480, column: 33, scope: !3271, inlinedAt: !3272)
!3306 = !DILocation(line: 480, column: 23, scope: !3271, inlinedAt: !3272)
!3307 = !DILocation(line: 481, column: 29, scope: !3271, inlinedAt: !3272)
!3308 = !DILocation(line: 481, column: 35, scope: !3271, inlinedAt: !3272)
!3309 = !DILocation(line: 481, column: 42, scope: !3271, inlinedAt: !3272)
!3310 = !DILocation(line: 474, column: 23, scope: !3266, inlinedAt: !3270)
!3311 = !DILocation(line: 474, column: 29, scope: !3266, inlinedAt: !3270)
!3312 = !DILocation(line: 474, column: 36, scope: !3266, inlinedAt: !3270)
!3313 = !DILocation(line: 474, column: 9, scope: !3266, inlinedAt: !3270)
!3314 = !DILocation(line: 545, column: 4, scope: !3273, inlinedAt: !3246)
!3315 = !DILocation(line: 547, column: 25, scope: !3243, inlinedAt: !3246)
!3316 = !DILocation(line: 348, column: 7, scope: !3317, inlinedAt: !3264)
!3317 = distinct !DILexicalBlock(scope: !3260, file: !86, line: 348, column: 6)
!3318 = !DILocation(line: 348, column: 6, scope: !3260, inlinedAt: !3264)
!3319 = !DILocation(line: 349, column: 3, scope: !3317, inlinedAt: !3264)
!3320 = !DILocation(line: 351, column: 6, scope: !3321, inlinedAt: !3264)
!3321 = distinct !DILexicalBlock(scope: !3260, file: !86, line: 351, column: 6)
!3322 = !DILocation(line: 351, column: 11, scope: !3321, inlinedAt: !3264)
!3323 = !DILocation(line: 351, column: 6, scope: !3260, inlinedAt: !3264)
!3324 = !DILocation(line: 352, column: 3, scope: !3321, inlinedAt: !3264)
!3325 = !DILocation(line: 354, column: 32, scope: !3326, inlinedAt: !3264)
!3326 = distinct !DILexicalBlock(scope: !3260, file: !86, line: 354, column: 6)
!3327 = !DILocation(line: 354, column: 37, scope: !3326, inlinedAt: !3264)
!3328 = !DILocation(line: 354, column: 42, scope: !3326, inlinedAt: !3264)
!3329 = !DILocation(line: 354, column: 45, scope: !3326, inlinedAt: !3264)
!3330 = !DILocation(line: 354, column: 50, scope: !3326, inlinedAt: !3264)
!3331 = !DILocation(line: 354, column: 6, scope: !3260, inlinedAt: !3264)
!3332 = !DILocation(line: 355, column: 3, scope: !3326, inlinedAt: !3264)
!3333 = !DILocation(line: 356, column: 32, scope: !3334, inlinedAt: !3264)
!3334 = distinct !DILexicalBlock(scope: !3260, file: !86, line: 356, column: 6)
!3335 = !DILocation(line: 356, column: 37, scope: !3334, inlinedAt: !3264)
!3336 = !DILocation(line: 356, column: 43, scope: !3334, inlinedAt: !3264)
!3337 = !DILocation(line: 356, column: 46, scope: !3334, inlinedAt: !3264)
!3338 = !DILocation(line: 356, column: 51, scope: !3334, inlinedAt: !3264)
!3339 = !DILocation(line: 356, column: 6, scope: !3260, inlinedAt: !3264)
!3340 = !DILocation(line: 357, column: 3, scope: !3334, inlinedAt: !3264)
!3341 = !DILocation(line: 358, column: 6, scope: !3342, inlinedAt: !3264)
!3342 = distinct !DILexicalBlock(scope: !3260, file: !86, line: 358, column: 6)
!3343 = !DILocation(line: 358, column: 11, scope: !3342, inlinedAt: !3264)
!3344 = !DILocation(line: 358, column: 6, scope: !3260, inlinedAt: !3264)
!3345 = !DILocation(line: 358, column: 26, scope: !3342, inlinedAt: !3264)
!3346 = !DILocation(line: 359, column: 6, scope: !3347, inlinedAt: !3264)
!3347 = distinct !DILexicalBlock(scope: !3260, file: !86, line: 359, column: 6)
!3348 = !DILocation(line: 359, column: 11, scope: !3347, inlinedAt: !3264)
!3349 = !DILocation(line: 359, column: 6, scope: !3260, inlinedAt: !3264)
!3350 = !DILocation(line: 359, column: 26, scope: !3347, inlinedAt: !3264)
!3351 = !DILocation(line: 360, column: 6, scope: !3352, inlinedAt: !3264)
!3352 = distinct !DILexicalBlock(scope: !3260, file: !86, line: 360, column: 6)
!3353 = !DILocation(line: 360, column: 11, scope: !3352, inlinedAt: !3264)
!3354 = !DILocation(line: 360, column: 6, scope: !3260, inlinedAt: !3264)
!3355 = !DILocation(line: 360, column: 26, scope: !3352, inlinedAt: !3264)
!3356 = !DILocation(line: 361, column: 6, scope: !3357, inlinedAt: !3264)
!3357 = distinct !DILexicalBlock(scope: !3260, file: !86, line: 361, column: 6)
!3358 = !DILocation(line: 361, column: 11, scope: !3357, inlinedAt: !3264)
!3359 = !DILocation(line: 361, column: 6, scope: !3260, inlinedAt: !3264)
!3360 = !DILocation(line: 361, column: 26, scope: !3357, inlinedAt: !3264)
!3361 = !DILocation(line: 362, column: 6, scope: !3362, inlinedAt: !3264)
!3362 = distinct !DILexicalBlock(scope: !3260, file: !86, line: 362, column: 6)
!3363 = !DILocation(line: 362, column: 11, scope: !3362, inlinedAt: !3264)
!3364 = !DILocation(line: 362, column: 6, scope: !3260, inlinedAt: !3264)
!3365 = !DILocation(line: 362, column: 26, scope: !3362, inlinedAt: !3264)
!3366 = !DILocation(line: 363, column: 6, scope: !3367, inlinedAt: !3264)
!3367 = distinct !DILexicalBlock(scope: !3260, file: !86, line: 363, column: 6)
!3368 = !DILocation(line: 363, column: 11, scope: !3367, inlinedAt: !3264)
!3369 = !DILocation(line: 363, column: 6, scope: !3260, inlinedAt: !3264)
!3370 = !DILocation(line: 363, column: 26, scope: !3367, inlinedAt: !3264)
!3371 = !DILocation(line: 364, column: 6, scope: !3372, inlinedAt: !3264)
!3372 = distinct !DILexicalBlock(scope: !3260, file: !86, line: 364, column: 6)
!3373 = !DILocation(line: 364, column: 11, scope: !3372, inlinedAt: !3264)
!3374 = !DILocation(line: 364, column: 6, scope: !3260, inlinedAt: !3264)
!3375 = !DILocation(line: 364, column: 26, scope: !3372, inlinedAt: !3264)
!3376 = !DILocation(line: 365, column: 6, scope: !3377, inlinedAt: !3264)
!3377 = distinct !DILexicalBlock(scope: !3260, file: !86, line: 365, column: 6)
!3378 = !DILocation(line: 365, column: 11, scope: !3377, inlinedAt: !3264)
!3379 = !DILocation(line: 365, column: 6, scope: !3260, inlinedAt: !3264)
!3380 = !DILocation(line: 365, column: 26, scope: !3377, inlinedAt: !3264)
!3381 = !DILocation(line: 366, column: 6, scope: !3382, inlinedAt: !3264)
!3382 = distinct !DILexicalBlock(scope: !3260, file: !86, line: 366, column: 6)
!3383 = !DILocation(line: 366, column: 11, scope: !3382, inlinedAt: !3264)
!3384 = !DILocation(line: 366, column: 6, scope: !3260, inlinedAt: !3264)
!3385 = !DILocation(line: 366, column: 26, scope: !3382, inlinedAt: !3264)
!3386 = !DILocation(line: 367, column: 6, scope: !3387, inlinedAt: !3264)
!3387 = distinct !DILexicalBlock(scope: !3260, file: !86, line: 367, column: 6)
!3388 = !DILocation(line: 367, column: 11, scope: !3387, inlinedAt: !3264)
!3389 = !DILocation(line: 367, column: 6, scope: !3260, inlinedAt: !3264)
!3390 = !DILocation(line: 367, column: 26, scope: !3387, inlinedAt: !3264)
!3391 = !DILocation(line: 368, column: 6, scope: !3392, inlinedAt: !3264)
!3392 = distinct !DILexicalBlock(scope: !3260, file: !86, line: 368, column: 6)
!3393 = !DILocation(line: 368, column: 11, scope: !3392, inlinedAt: !3264)
!3394 = !DILocation(line: 368, column: 6, scope: !3260, inlinedAt: !3264)
!3395 = !DILocation(line: 368, column: 26, scope: !3392, inlinedAt: !3264)
!3396 = !DILocation(line: 369, column: 6, scope: !3397, inlinedAt: !3264)
!3397 = distinct !DILexicalBlock(scope: !3260, file: !86, line: 369, column: 6)
!3398 = !DILocation(line: 369, column: 11, scope: !3397, inlinedAt: !3264)
!3399 = !DILocation(line: 369, column: 6, scope: !3260, inlinedAt: !3264)
!3400 = !DILocation(line: 369, column: 26, scope: !3397, inlinedAt: !3264)
!3401 = !DILocation(line: 370, column: 6, scope: !3402, inlinedAt: !3264)
!3402 = distinct !DILexicalBlock(scope: !3260, file: !86, line: 370, column: 6)
!3403 = !DILocation(line: 370, column: 11, scope: !3402, inlinedAt: !3264)
!3404 = !DILocation(line: 370, column: 6, scope: !3260, inlinedAt: !3264)
!3405 = !DILocation(line: 370, column: 26, scope: !3402, inlinedAt: !3264)
!3406 = !DILocation(line: 371, column: 6, scope: !3407, inlinedAt: !3264)
!3407 = distinct !DILexicalBlock(scope: !3260, file: !86, line: 371, column: 6)
!3408 = !DILocation(line: 371, column: 11, scope: !3407, inlinedAt: !3264)
!3409 = !DILocation(line: 371, column: 6, scope: !3260, inlinedAt: !3264)
!3410 = !DILocation(line: 371, column: 26, scope: !3407, inlinedAt: !3264)
!3411 = !DILocation(line: 372, column: 6, scope: !3412, inlinedAt: !3264)
!3412 = distinct !DILexicalBlock(scope: !3260, file: !86, line: 372, column: 6)
!3413 = !DILocation(line: 372, column: 11, scope: !3412, inlinedAt: !3264)
!3414 = !DILocation(line: 372, column: 6, scope: !3260, inlinedAt: !3264)
!3415 = !DILocation(line: 372, column: 26, scope: !3412, inlinedAt: !3264)
!3416 = !DILocation(line: 373, column: 6, scope: !3417, inlinedAt: !3264)
!3417 = distinct !DILexicalBlock(scope: !3260, file: !86, line: 373, column: 6)
!3418 = !DILocation(line: 373, column: 11, scope: !3417, inlinedAt: !3264)
!3419 = !DILocation(line: 373, column: 6, scope: !3260, inlinedAt: !3264)
!3420 = !DILocation(line: 373, column: 26, scope: !3417, inlinedAt: !3264)
!3421 = !DILocation(line: 374, column: 6, scope: !3422, inlinedAt: !3264)
!3422 = distinct !DILexicalBlock(scope: !3260, file: !86, line: 374, column: 6)
!3423 = !DILocation(line: 374, column: 11, scope: !3422, inlinedAt: !3264)
!3424 = !DILocation(line: 374, column: 6, scope: !3260, inlinedAt: !3264)
!3425 = !DILocation(line: 374, column: 26, scope: !3422, inlinedAt: !3264)
!3426 = !DILocation(line: 375, column: 6, scope: !3427, inlinedAt: !3264)
!3427 = distinct !DILexicalBlock(scope: !3260, file: !86, line: 375, column: 6)
!3428 = !DILocation(line: 375, column: 11, scope: !3427, inlinedAt: !3264)
!3429 = !DILocation(line: 375, column: 6, scope: !3260, inlinedAt: !3264)
!3430 = !DILocation(line: 375, column: 27, scope: !3427, inlinedAt: !3264)
!3431 = !DILocation(line: 376, column: 6, scope: !3432, inlinedAt: !3264)
!3432 = distinct !DILexicalBlock(scope: !3260, file: !86, line: 376, column: 6)
!3433 = !DILocation(line: 376, column: 11, scope: !3432, inlinedAt: !3264)
!3434 = !DILocation(line: 376, column: 6, scope: !3260, inlinedAt: !3264)
!3435 = !DILocation(line: 376, column: 32, scope: !3432, inlinedAt: !3264)
!3436 = !DILocation(line: 377, column: 6, scope: !3437, inlinedAt: !3264)
!3437 = distinct !DILexicalBlock(scope: !3260, file: !86, line: 377, column: 6)
!3438 = !DILocation(line: 377, column: 11, scope: !3437, inlinedAt: !3264)
!3439 = !DILocation(line: 377, column: 6, scope: !3260, inlinedAt: !3264)
!3440 = !DILocation(line: 377, column: 32, scope: !3437, inlinedAt: !3264)
!3441 = !DILocation(line: 378, column: 6, scope: !3442, inlinedAt: !3264)
!3442 = distinct !DILexicalBlock(scope: !3260, file: !86, line: 378, column: 6)
!3443 = !DILocation(line: 378, column: 11, scope: !3442, inlinedAt: !3264)
!3444 = !DILocation(line: 378, column: 6, scope: !3260, inlinedAt: !3264)
!3445 = !DILocation(line: 378, column: 32, scope: !3442, inlinedAt: !3264)
!3446 = !DILocation(line: 379, column: 6, scope: !3447, inlinedAt: !3264)
!3447 = distinct !DILexicalBlock(scope: !3260, file: !86, line: 379, column: 6)
!3448 = !DILocation(line: 379, column: 11, scope: !3447, inlinedAt: !3264)
!3449 = !DILocation(line: 379, column: 6, scope: !3260, inlinedAt: !3264)
!3450 = !DILocation(line: 379, column: 33, scope: !3447, inlinedAt: !3264)
!3451 = !DILocation(line: 380, column: 6, scope: !3452, inlinedAt: !3264)
!3452 = distinct !DILexicalBlock(scope: !3260, file: !86, line: 380, column: 6)
!3453 = !DILocation(line: 380, column: 11, scope: !3452, inlinedAt: !3264)
!3454 = !DILocation(line: 380, column: 6, scope: !3260, inlinedAt: !3264)
!3455 = !DILocation(line: 380, column: 33, scope: !3452, inlinedAt: !3264)
!3456 = !DILocation(line: 381, column: 6, scope: !3457, inlinedAt: !3264)
!3457 = distinct !DILexicalBlock(scope: !3260, file: !86, line: 381, column: 6)
!3458 = !DILocation(line: 381, column: 11, scope: !3457, inlinedAt: !3264)
!3459 = !DILocation(line: 381, column: 6, scope: !3260, inlinedAt: !3264)
!3460 = !DILocation(line: 381, column: 33, scope: !3457, inlinedAt: !3264)
!3461 = !DILocation(line: 382, column: 2, scope: !3462, inlinedAt: !3264)
!3462 = distinct !DILexicalBlock(scope: !3463, file: !86, line: 382, column: 2)
!3463 = distinct !DILexicalBlock(scope: !3260, file: !86, line: 382, column: 2)
!3464 = !{i32 -2143542950, i32 -2143542921, i32 -2143542875, i32 -2143542817, i32 -2143542763, i32 -2143542709, i32 -2143542654, i32 -2143542623}
!3465 = !DILocation(line: 382, column: 2, scope: !3466, inlinedAt: !3264)
!3466 = distinct !DILexicalBlock(scope: !3467, file: !86, line: 382, column: 2)
!3467 = distinct !DILexicalBlock(scope: !3463, file: !86, line: 382, column: 2)
!3468 = !{i32 -2143542180, i32 -2143542173, i32 -2143542119, i32 -2143542088, i32 -2143542058}
!3469 = !DILocation(line: 382, column: 2, scope: !3467, inlinedAt: !3264)
!3470 = !DILocation(line: 386, column: 1, scope: !3260, inlinedAt: !3264)
!3471 = !DILocation(line: 547, column: 9, scope: !3243, inlinedAt: !3246)
!3472 = !DILocation(line: 549, column: 8, scope: !3473, inlinedAt: !3246)
!3473 = distinct !DILexicalBlock(scope: !3243, file: !86, line: 549, column: 7)
!3474 = !DILocation(line: 549, column: 7, scope: !3243, inlinedAt: !3246)
!3475 = !DILocation(line: 550, column: 4, scope: !3473, inlinedAt: !3246)
!3476 = !DILocation(line: 553, column: 33, scope: !3243, inlinedAt: !3246)
!3477 = !DILocation(line: 325, column: 6, scope: !3478, inlinedAt: !3258)
!3478 = distinct !DILexicalBlock(scope: !3254, file: !86, line: 325, column: 6)
!3479 = !DILocation(line: 325, column: 6, scope: !3254, inlinedAt: !3258)
!3480 = !DILocation(line: 326, column: 3, scope: !3478, inlinedAt: !3258)
!3481 = !DILocation(line: 332, column: 9, scope: !3254, inlinedAt: !3258)
!3482 = !DILocation(line: 332, column: 15, scope: !3254, inlinedAt: !3258)
!3483 = !DILocation(line: 332, column: 2, scope: !3254, inlinedAt: !3258)
!3484 = !DILocation(line: 336, column: 1, scope: !3254, inlinedAt: !3258)
!3485 = !DILocation(line: 553, column: 5, scope: !3243, inlinedAt: !3246)
!3486 = !DILocation(line: 553, column: 41, scope: !3243, inlinedAt: !3246)
!3487 = !DILocation(line: 554, column: 5, scope: !3243, inlinedAt: !3246)
!3488 = !DILocation(line: 554, column: 12, scope: !3243, inlinedAt: !3246)
!3489 = !DILocation(line: 448, column: 31, scope: !3238, inlinedAt: !3242)
!3490 = !DILocation(line: 448, column: 34, scope: !3238, inlinedAt: !3242)
!3491 = !DILocation(line: 448, column: 14, scope: !3238, inlinedAt: !3242)
!3492 = !DILocation(line: 450, column: 22, scope: !3238, inlinedAt: !3242)
!3493 = !DILocation(line: 450, column: 25, scope: !3238, inlinedAt: !3242)
!3494 = !DILocation(line: 450, column: 30, scope: !3238, inlinedAt: !3242)
!3495 = !DILocation(line: 450, column: 36, scope: !3238, inlinedAt: !3242)
!3496 = !DILocation(line: 450, column: 8, scope: !3238, inlinedAt: !3242)
!3497 = !DILocation(line: 450, column: 6, scope: !3238, inlinedAt: !3242)
!3498 = !DILocation(line: 451, column: 9, scope: !3238, inlinedAt: !3242)
!3499 = !DILocation(line: 552, column: 3, scope: !3243, inlinedAt: !3246)
!3500 = !DILocation(line: 557, column: 19, scope: !3245, inlinedAt: !3246)
!3501 = !DILocation(line: 557, column: 25, scope: !3245, inlinedAt: !3246)
!3502 = !DILocation(line: 557, column: 9, scope: !3245, inlinedAt: !3246)
!3503 = !DILocation(line: 557, column: 2, scope: !3245, inlinedAt: !3246)
!3504 = !DILocation(line: 558, column: 1, scope: !3245, inlinedAt: !3246)
!3505 = !DILocation(line: 664, column: 2, scope: !3234)
!3506 = distinct !DISubprogram(name: "of_property_read_u32", scope: !1898, file: !1898, line: 1214, type: !3507, scopeLine: 1217, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{!102, !3509, !116, !630}
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1897)
!3511 = !DILocalVariable(name: "np", arg: 1, scope: !3506, file: !1898, line: 1214, type: !3509)
!3512 = !DILocation(line: 1214, column: 66, scope: !3506)
!3513 = !DILocalVariable(name: "propname", arg: 2, scope: !3506, file: !1898, line: 1215, type: !116)
!3514 = !DILocation(line: 1215, column: 24, scope: !3506)
!3515 = !DILocalVariable(name: "out_value", arg: 3, scope: !3506, file: !1898, line: 1216, type: !630)
!3516 = !DILocation(line: 1216, column: 17, scope: !3506)
!3517 = !DILocation(line: 1218, column: 36, scope: !3506)
!3518 = !DILocation(line: 1218, column: 40, scope: !3506)
!3519 = !DILocation(line: 1218, column: 50, scope: !3506)
!3520 = !DILocation(line: 1218, column: 9, scope: !3506)
!3521 = !DILocation(line: 1218, column: 2, scope: !3506)
!3522 = distinct !DISubprogram(name: "of_thermal_free_zone", scope: !3, file: !3, line: 971, type: !3523, scopeLine: 972, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3523 = !DISubroutineType(types: !3524)
!3524 = !{null, !2255}
!3525 = !DILocalVariable(name: "tz", arg: 1, scope: !3522, file: !3, line: 971, type: !2255)
!3526 = !DILocation(line: 971, column: 64, scope: !3522)
!3527 = !DILocalVariable(name: "tbp", scope: !3522, file: !3, line: 973, type: !2273)
!3528 = !DILocation(line: 973, column: 32, scope: !3522)
!3529 = !DILocalVariable(name: "i", scope: !3522, file: !3, line: 974, type: !102)
!3530 = !DILocation(line: 974, column: 6, scope: !3522)
!3531 = !DILocalVariable(name: "j", scope: !3522, file: !3, line: 974, type: !102)
!3532 = !DILocation(line: 974, column: 9, scope: !3522)
!3533 = !DILocation(line: 976, column: 9, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3522, file: !3, line: 976, column: 2)
!3535 = !DILocation(line: 976, column: 7, scope: !3534)
!3536 = !DILocation(line: 976, column: 14, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3534, file: !3, line: 976, column: 2)
!3538 = !DILocation(line: 976, column: 18, scope: !3537)
!3539 = !DILocation(line: 976, column: 22, scope: !3537)
!3540 = !DILocation(line: 976, column: 16, scope: !3537)
!3541 = !DILocation(line: 976, column: 2, scope: !3534)
!3542 = !DILocation(line: 977, column: 9, scope: !3543)
!3543 = distinct !DILexicalBlock(scope: !3537, file: !3, line: 976, column: 37)
!3544 = !DILocation(line: 977, column: 13, scope: !3543)
!3545 = !DILocation(line: 977, column: 20, scope: !3543)
!3546 = !DILocation(line: 977, column: 18, scope: !3543)
!3547 = !DILocation(line: 977, column: 7, scope: !3543)
!3548 = !DILocation(line: 979, column: 10, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3543, file: !3, line: 979, column: 3)
!3550 = !DILocation(line: 979, column: 8, scope: !3549)
!3551 = !DILocation(line: 979, column: 15, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !3549, file: !3, line: 979, column: 3)
!3553 = !DILocation(line: 979, column: 19, scope: !3552)
!3554 = !DILocation(line: 979, column: 24, scope: !3552)
!3555 = !DILocation(line: 979, column: 17, scope: !3552)
!3556 = !DILocation(line: 979, column: 3, scope: !3549)
!3557 = !DILocation(line: 980, column: 16, scope: !3552)
!3558 = !DILocation(line: 980, column: 21, scope: !3552)
!3559 = !DILocation(line: 980, column: 26, scope: !3552)
!3560 = !DILocation(line: 980, column: 29, scope: !3552)
!3561 = !DILocation(line: 980, column: 4, scope: !3552)
!3562 = !DILocation(line: 979, column: 32, scope: !3552)
!3563 = !DILocation(line: 979, column: 3, scope: !3552)
!3564 = distinct !{!3564, !3556, !3565}
!3565 = !DILocation(line: 980, column: 43, scope: !3549)
!3566 = !DILocation(line: 982, column: 9, scope: !3543)
!3567 = !DILocation(line: 982, column: 14, scope: !3543)
!3568 = !DILocation(line: 982, column: 3, scope: !3543)
!3569 = !DILocation(line: 983, column: 2, scope: !3543)
!3570 = !DILocation(line: 976, column: 33, scope: !3537)
!3571 = !DILocation(line: 976, column: 2, scope: !3537)
!3572 = distinct !{!3572, !3541, !3573}
!3573 = !DILocation(line: 983, column: 2, scope: !3534)
!3574 = !DILocation(line: 985, column: 8, scope: !3522)
!3575 = !DILocation(line: 985, column: 12, scope: !3522)
!3576 = !DILocation(line: 985, column: 2, scope: !3522)
!3577 = !DILocation(line: 986, column: 9, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !3522, file: !3, line: 986, column: 2)
!3579 = !DILocation(line: 986, column: 7, scope: !3578)
!3580 = !DILocation(line: 986, column: 14, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3578, file: !3, line: 986, column: 2)
!3582 = !DILocation(line: 986, column: 18, scope: !3581)
!3583 = !DILocation(line: 986, column: 22, scope: !3581)
!3584 = !DILocation(line: 986, column: 16, scope: !3581)
!3585 = !DILocation(line: 986, column: 2, scope: !3578)
!3586 = !DILocation(line: 987, column: 15, scope: !3581)
!3587 = !DILocation(line: 987, column: 19, scope: !3581)
!3588 = !DILocation(line: 987, column: 25, scope: !3581)
!3589 = !DILocation(line: 987, column: 28, scope: !3581)
!3590 = !DILocation(line: 987, column: 3, scope: !3581)
!3591 = !DILocation(line: 986, column: 31, scope: !3581)
!3592 = !DILocation(line: 986, column: 2, scope: !3581)
!3593 = distinct !{!3593, !3585, !3594}
!3594 = !DILocation(line: 987, column: 30, scope: !3578)
!3595 = !DILocation(line: 988, column: 8, scope: !3522)
!3596 = !DILocation(line: 988, column: 12, scope: !3522)
!3597 = !DILocation(line: 988, column: 2, scope: !3522)
!3598 = !DILocation(line: 989, column: 8, scope: !3522)
!3599 = !DILocation(line: 989, column: 2, scope: !3522)
!3600 = !DILocation(line: 990, column: 1, scope: !3522)
!3601 = distinct !DISubprogram(name: "of_thermal_destroy_zones", scope: !3, file: !3, line: 999, type: !3602, scopeLine: 1000, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{null}
!3604 = !DILocalVariable(name: "np", scope: !3601, file: !3, line: 1001, type: !1896)
!3605 = !DILocation(line: 1001, column: 22, scope: !3601)
!3606 = !DILocalVariable(name: "child", scope: !3601, file: !3, line: 1001, type: !1896)
!3607 = !DILocation(line: 1001, column: 27, scope: !3601)
!3608 = !DILocation(line: 1003, column: 7, scope: !3601)
!3609 = !DILocation(line: 1003, column: 5, scope: !3601)
!3610 = !DILocation(line: 1004, column: 7, scope: !3611)
!3611 = distinct !DILexicalBlock(scope: !3601, file: !3, line: 1004, column: 6)
!3612 = !DILocation(line: 1004, column: 6, scope: !3601)
!3613 = !DILocation(line: 1005, column: 3, scope: !3614)
!3614 = distinct !DILexicalBlock(scope: !3615, file: !3, line: 1005, column: 3)
!3615 = distinct !DILexicalBlock(scope: !3616, file: !3, line: 1005, column: 3)
!3616 = distinct !DILexicalBlock(scope: !3611, file: !3, line: 1004, column: 11)
!3617 = !DILocation(line: 1005, column: 3, scope: !3615)
!3618 = !DILocation(line: 1006, column: 3, scope: !3616)
!3619 = !DILocation(line: 1009, column: 2, scope: !3620)
!3620 = distinct !DILexicalBlock(scope: !3601, file: !3, line: 1009, column: 2)
!3621 = !DILocation(line: 1009, column: 2, scope: !3622)
!3622 = distinct !DILexicalBlock(scope: !3620, file: !3, line: 1009, column: 2)
!3623 = !DILocalVariable(name: "zone", scope: !3624, file: !3, line: 1010, type: !98)
!3624 = distinct !DILexicalBlock(scope: !3622, file: !3, line: 1009, column: 46)
!3625 = !DILocation(line: 1010, column: 31, scope: !3624)
!3626 = !DILocation(line: 1012, column: 40, scope: !3624)
!3627 = !DILocation(line: 1012, column: 47, scope: !3624)
!3628 = !DILocation(line: 1012, column: 10, scope: !3624)
!3629 = !DILocation(line: 1012, column: 8, scope: !3624)
!3630 = !DILocation(line: 1013, column: 14, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !3624, file: !3, line: 1013, column: 7)
!3632 = !DILocation(line: 1013, column: 7, scope: !3631)
!3633 = !DILocation(line: 1013, column: 7, scope: !3624)
!3634 = !DILocation(line: 1014, column: 4, scope: !3631)
!3635 = !DILocation(line: 1016, column: 34, scope: !3624)
!3636 = !DILocation(line: 1016, column: 3, scope: !3624)
!3637 = !DILocation(line: 1017, column: 9, scope: !3624)
!3638 = !DILocation(line: 1017, column: 15, scope: !3624)
!3639 = !DILocation(line: 1017, column: 3, scope: !3624)
!3640 = !DILocation(line: 1018, column: 9, scope: !3624)
!3641 = !DILocation(line: 1018, column: 15, scope: !3624)
!3642 = !DILocation(line: 1018, column: 3, scope: !3624)
!3643 = !DILocation(line: 1019, column: 24, scope: !3624)
!3644 = !DILocation(line: 1019, column: 30, scope: !3624)
!3645 = !DILocation(line: 1019, column: 3, scope: !3624)
!3646 = !DILocation(line: 1020, column: 2, scope: !3624)
!3647 = distinct !{!3647, !3619, !3648}
!3648 = !DILocation(line: 1020, column: 2, scope: !3620)
!3649 = !DILocation(line: 1021, column: 14, scope: !3601)
!3650 = !DILocation(line: 1021, column: 2, scope: !3601)
!3651 = !DILocation(line: 1022, column: 1, scope: !3601)
!3652 = distinct !DISubprogram(name: "of_thermal_get_temp", scope: !3, file: !3, line: 87, type: !2148, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3653 = !DILocalVariable(name: "tz", arg: 1, scope: !3652, file: !3, line: 87, type: !98)
!3654 = !DILocation(line: 87, column: 60, scope: !3652)
!3655 = !DILocalVariable(name: "temp", arg: 2, scope: !3652, file: !3, line: 88, type: !746)
!3656 = !DILocation(line: 88, column: 16, scope: !3652)
!3657 = !DILocalVariable(name: "data", scope: !3652, file: !3, line: 90, type: !2255)
!3658 = !DILocation(line: 90, column: 25, scope: !3652)
!3659 = !DILocation(line: 90, column: 32, scope: !3652)
!3660 = !DILocation(line: 90, column: 36, scope: !3652)
!3661 = !DILocation(line: 92, column: 7, scope: !3662)
!3662 = distinct !DILexicalBlock(scope: !3652, file: !3, line: 92, column: 6)
!3663 = !DILocation(line: 92, column: 13, scope: !3662)
!3664 = !DILocation(line: 92, column: 18, scope: !3662)
!3665 = !DILocation(line: 92, column: 6, scope: !3652)
!3666 = !DILocation(line: 93, column: 3, scope: !3662)
!3667 = !DILocation(line: 95, column: 9, scope: !3652)
!3668 = !DILocation(line: 95, column: 15, scope: !3652)
!3669 = !DILocation(line: 95, column: 20, scope: !3652)
!3670 = !DILocation(line: 95, column: 29, scope: !3652)
!3671 = !DILocation(line: 95, column: 35, scope: !3652)
!3672 = !DILocation(line: 95, column: 48, scope: !3652)
!3673 = !DILocation(line: 95, column: 2, scope: !3652)
!3674 = !DILocation(line: 96, column: 1, scope: !3652)
!3675 = distinct !DISubprogram(name: "of_thermal_get_trend", scope: !3, file: !3, line: 192, type: !2177, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3676 = !DILocalVariable(name: "tz", arg: 1, scope: !3675, file: !3, line: 192, type: !98)
!3677 = !DILocation(line: 192, column: 61, scope: !3675)
!3678 = !DILocalVariable(name: "trip", arg: 2, scope: !3675, file: !3, line: 192, type: !102)
!3679 = !DILocation(line: 192, column: 69, scope: !3675)
!3680 = !DILocalVariable(name: "trend", arg: 3, scope: !3675, file: !3, line: 193, type: !2179)
!3681 = !DILocation(line: 193, column: 25, scope: !3675)
!3682 = !DILocalVariable(name: "data", scope: !3675, file: !3, line: 195, type: !2255)
!3683 = !DILocation(line: 195, column: 25, scope: !3675)
!3684 = !DILocation(line: 195, column: 32, scope: !3675)
!3685 = !DILocation(line: 195, column: 36, scope: !3675)
!3686 = !DILocation(line: 197, column: 7, scope: !3687)
!3687 = distinct !DILexicalBlock(scope: !3675, file: !3, line: 197, column: 6)
!3688 = !DILocation(line: 197, column: 13, scope: !3687)
!3689 = !DILocation(line: 197, column: 18, scope: !3687)
!3690 = !DILocation(line: 197, column: 6, scope: !3675)
!3691 = !DILocation(line: 198, column: 3, scope: !3687)
!3692 = !DILocation(line: 200, column: 9, scope: !3675)
!3693 = !DILocation(line: 200, column: 15, scope: !3675)
!3694 = !DILocation(line: 200, column: 20, scope: !3675)
!3695 = !DILocation(line: 200, column: 30, scope: !3675)
!3696 = !DILocation(line: 200, column: 36, scope: !3675)
!3697 = !DILocation(line: 200, column: 49, scope: !3675)
!3698 = !DILocation(line: 200, column: 55, scope: !3675)
!3699 = !DILocation(line: 200, column: 2, scope: !3675)
!3700 = !DILocation(line: 201, column: 1, scope: !3675)
!3701 = distinct !DISubprogram(name: "of_thermal_set_trips", scope: !3, file: !3, line: 98, type: !2152, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3702 = !DILocalVariable(name: "tz", arg: 1, scope: !3701, file: !3, line: 98, type: !98)
!3703 = !DILocation(line: 98, column: 61, scope: !3701)
!3704 = !DILocalVariable(name: "low", arg: 2, scope: !3701, file: !3, line: 99, type: !102)
!3705 = !DILocation(line: 99, column: 9, scope: !3701)
!3706 = !DILocalVariable(name: "high", arg: 3, scope: !3701, file: !3, line: 99, type: !102)
!3707 = !DILocation(line: 99, column: 18, scope: !3701)
!3708 = !DILocalVariable(name: "data", scope: !3701, file: !3, line: 101, type: !2255)
!3709 = !DILocation(line: 101, column: 25, scope: !3701)
!3710 = !DILocation(line: 101, column: 32, scope: !3701)
!3711 = !DILocation(line: 101, column: 36, scope: !3701)
!3712 = !DILocation(line: 103, column: 7, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3701, file: !3, line: 103, column: 6)
!3714 = !DILocation(line: 103, column: 13, scope: !3713)
!3715 = !DILocation(line: 103, column: 17, scope: !3713)
!3716 = !DILocation(line: 103, column: 21, scope: !3713)
!3717 = !DILocation(line: 103, column: 27, scope: !3713)
!3718 = !DILocation(line: 103, column: 32, scope: !3713)
!3719 = !DILocation(line: 103, column: 6, scope: !3701)
!3720 = !DILocation(line: 104, column: 3, scope: !3713)
!3721 = !DILocation(line: 106, column: 9, scope: !3701)
!3722 = !DILocation(line: 106, column: 15, scope: !3701)
!3723 = !DILocation(line: 106, column: 20, scope: !3701)
!3724 = !DILocation(line: 106, column: 30, scope: !3701)
!3725 = !DILocation(line: 106, column: 36, scope: !3701)
!3726 = !DILocation(line: 106, column: 49, scope: !3701)
!3727 = !DILocation(line: 106, column: 54, scope: !3701)
!3728 = !DILocation(line: 106, column: 2, scope: !3701)
!3729 = !DILocation(line: 107, column: 1, scope: !3701)
!3730 = distinct !DISubprogram(name: "of_thermal_set_emul_temp", scope: !3, file: !3, line: 184, type: !2173, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3731 = !DILocalVariable(name: "tz", arg: 1, scope: !3730, file: !3, line: 184, type: !98)
!3732 = !DILocation(line: 184, column: 65, scope: !3730)
!3733 = !DILocalVariable(name: "temp", arg: 2, scope: !3730, file: !3, line: 185, type: !102)
!3734 = !DILocation(line: 185, column: 13, scope: !3730)
!3735 = !DILocalVariable(name: "data", scope: !3730, file: !3, line: 187, type: !2255)
!3736 = !DILocation(line: 187, column: 25, scope: !3730)
!3737 = !DILocation(line: 187, column: 32, scope: !3730)
!3738 = !DILocation(line: 187, column: 36, scope: !3730)
!3739 = !DILocation(line: 189, column: 9, scope: !3730)
!3740 = !DILocation(line: 189, column: 15, scope: !3730)
!3741 = !DILocation(line: 189, column: 20, scope: !3730)
!3742 = !DILocation(line: 189, column: 34, scope: !3730)
!3743 = !DILocation(line: 189, column: 40, scope: !3730)
!3744 = !DILocation(line: 189, column: 53, scope: !3730)
!3745 = !DILocation(line: 189, column: 2, scope: !3730)
!3746 = distinct !DISubprogram(name: "of_property_read_u32_array", scope: !1898, file: !1898, line: 494, type: !3747, scopeLine: 497, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3747 = !DISubroutineType(types: !3748)
!3748 = !{!102, !3509, !116, !630, !220}
!3749 = !DILocalVariable(name: "np", arg: 1, scope: !3746, file: !1898, line: 494, type: !3509)
!3750 = !DILocation(line: 494, column: 72, scope: !3746)
!3751 = !DILocalVariable(name: "propname", arg: 2, scope: !3746, file: !1898, line: 495, type: !116)
!3752 = !DILocation(line: 495, column: 23, scope: !3746)
!3753 = !DILocalVariable(name: "out_values", arg: 3, scope: !3746, file: !1898, line: 496, type: !630)
!3754 = !DILocation(line: 496, column: 16, scope: !3746)
!3755 = !DILocalVariable(name: "sz", arg: 4, scope: !3746, file: !1898, line: 496, type: !220)
!3756 = !DILocation(line: 496, column: 35, scope: !3746)
!3757 = !DILocalVariable(name: "ret", scope: !3746, file: !1898, line: 498, type: !102)
!3758 = !DILocation(line: 498, column: 6, scope: !3746)
!3759 = !DILocation(line: 498, column: 48, scope: !3746)
!3760 = !DILocation(line: 498, column: 52, scope: !3746)
!3761 = !DILocation(line: 498, column: 62, scope: !3746)
!3762 = !DILocation(line: 499, column: 13, scope: !3746)
!3763 = !DILocation(line: 498, column: 12, scope: !3746)
!3764 = !DILocation(line: 500, column: 6, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3746, file: !1898, line: 500, column: 6)
!3766 = !DILocation(line: 500, column: 10, scope: !3765)
!3767 = !DILocation(line: 500, column: 6, scope: !3746)
!3768 = !DILocation(line: 501, column: 3, scope: !3765)
!3769 = !DILocation(line: 503, column: 10, scope: !3765)
!3770 = !DILocation(line: 503, column: 3, scope: !3765)
!3771 = !DILocation(line: 504, column: 1, scope: !3746)
!3772 = distinct !DISubprogram(name: "of_get_child_count", scope: !1898, file: !1898, line: 1277, type: !3773, scopeLine: 1278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3773 = !DISubroutineType(types: !3774)
!3774 = !{!102, !3509}
!3775 = !DILocalVariable(name: "np", arg: 1, scope: !3772, file: !1898, line: 1277, type: !3509)
!3776 = !DILocation(line: 1277, column: 64, scope: !3772)
!3777 = !DILocalVariable(name: "child", scope: !3772, file: !1898, line: 1279, type: !1896)
!3778 = !DILocation(line: 1279, column: 22, scope: !3772)
!3779 = !DILocalVariable(name: "num", scope: !3772, file: !1898, line: 1280, type: !102)
!3780 = !DILocation(line: 1280, column: 6, scope: !3772)
!3781 = !DILocation(line: 1282, column: 2, scope: !3782)
!3782 = distinct !DILexicalBlock(scope: !3772, file: !1898, line: 1282, column: 2)
!3783 = !DILocation(line: 1282, column: 2, scope: !3784)
!3784 = distinct !DILexicalBlock(scope: !3782, file: !1898, line: 1282, column: 2)
!3785 = !DILocation(line: 1283, column: 6, scope: !3784)
!3786 = !DILocation(line: 1283, column: 3, scope: !3784)
!3787 = distinct !{!3787, !3781, !3788}
!3788 = !DILocation(line: 1283, column: 6, scope: !3782)
!3789 = !DILocation(line: 1285, column: 9, scope: !3772)
!3790 = !DILocation(line: 1285, column: 2, scope: !3772)
!3791 = distinct !DISubprogram(name: "kcalloc", scope: !86, file: !86, line: 601, type: !3792, scopeLine: 602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3792 = !DISubroutineType(types: !3793)
!3793 = !{!93, !220, !220, !94}
!3794 = !DILocalVariable(name: "n", arg: 1, scope: !3791, file: !86, line: 601, type: !220)
!3795 = !DILocation(line: 601, column: 36, scope: !3791)
!3796 = !DILocalVariable(name: "size", arg: 2, scope: !3791, file: !86, line: 601, type: !220)
!3797 = !DILocation(line: 601, column: 46, scope: !3791)
!3798 = !DILocalVariable(name: "flags", arg: 3, scope: !3791, file: !86, line: 601, type: !94)
!3799 = !DILocation(line: 601, column: 58, scope: !3791)
!3800 = !DILocation(line: 603, column: 23, scope: !3791)
!3801 = !DILocation(line: 603, column: 26, scope: !3791)
!3802 = !DILocation(line: 603, column: 32, scope: !3791)
!3803 = !DILocation(line: 603, column: 38, scope: !3791)
!3804 = !DILocation(line: 603, column: 9, scope: !3791)
!3805 = !DILocation(line: 603, column: 2, scope: !3791)
!3806 = distinct !DISubprogram(name: "thermal_of_populate_trip", scope: !3, file: !3, line: 799, type: !3807, scopeLine: 801, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!102, !1896, !2264}
!3809 = !DILocalVariable(name: "np", arg: 1, scope: !3806, file: !3, line: 799, type: !1896)
!3810 = !DILocation(line: 799, column: 57, scope: !3806)
!3811 = !DILocalVariable(name: "trip", arg: 2, scope: !3806, file: !3, line: 800, type: !2264)
!3812 = !DILocation(line: 800, column: 30, scope: !3806)
!3813 = !DILocalVariable(name: "prop", scope: !3806, file: !3, line: 802, type: !102)
!3814 = !DILocation(line: 802, column: 6, scope: !3806)
!3815 = !DILocalVariable(name: "ret", scope: !3806, file: !3, line: 803, type: !102)
!3816 = !DILocation(line: 803, column: 6, scope: !3806)
!3817 = !DILocation(line: 805, column: 29, scope: !3806)
!3818 = !DILocation(line: 805, column: 8, scope: !3806)
!3819 = !DILocation(line: 805, column: 6, scope: !3806)
!3820 = !DILocation(line: 806, column: 6, scope: !3821)
!3821 = distinct !DILexicalBlock(scope: !3806, file: !3, line: 806, column: 6)
!3822 = !DILocation(line: 806, column: 10, scope: !3821)
!3823 = !DILocation(line: 806, column: 6, scope: !3806)
!3824 = !DILocation(line: 807, column: 3, scope: !3825)
!3825 = distinct !DILexicalBlock(scope: !3821, file: !3, line: 806, column: 15)
!3826 = !DILocation(line: 808, column: 10, scope: !3825)
!3827 = !DILocation(line: 808, column: 3, scope: !3825)
!3828 = !DILocation(line: 810, column: 22, scope: !3806)
!3829 = !DILocation(line: 810, column: 2, scope: !3806)
!3830 = !DILocation(line: 810, column: 8, scope: !3806)
!3831 = !DILocation(line: 810, column: 20, scope: !3806)
!3832 = !DILocation(line: 812, column: 29, scope: !3806)
!3833 = !DILocation(line: 812, column: 8, scope: !3806)
!3834 = !DILocation(line: 812, column: 6, scope: !3806)
!3835 = !DILocation(line: 813, column: 6, scope: !3836)
!3836 = distinct !DILexicalBlock(scope: !3806, file: !3, line: 813, column: 6)
!3837 = !DILocation(line: 813, column: 10, scope: !3836)
!3838 = !DILocation(line: 813, column: 6, scope: !3806)
!3839 = !DILocation(line: 814, column: 3, scope: !3840)
!3840 = distinct !DILexicalBlock(scope: !3836, file: !3, line: 813, column: 15)
!3841 = !DILocation(line: 815, column: 10, scope: !3840)
!3842 = !DILocation(line: 815, column: 3, scope: !3840)
!3843 = !DILocation(line: 817, column: 21, scope: !3806)
!3844 = !DILocation(line: 817, column: 2, scope: !3806)
!3845 = !DILocation(line: 817, column: 8, scope: !3806)
!3846 = !DILocation(line: 817, column: 19, scope: !3806)
!3847 = !DILocation(line: 819, column: 33, scope: !3806)
!3848 = !DILocation(line: 819, column: 38, scope: !3806)
!3849 = !DILocation(line: 819, column: 44, scope: !3806)
!3850 = !DILocation(line: 819, column: 8, scope: !3806)
!3851 = !DILocation(line: 819, column: 6, scope: !3806)
!3852 = !DILocation(line: 820, column: 6, scope: !3853)
!3853 = distinct !DILexicalBlock(scope: !3806, file: !3, line: 820, column: 6)
!3854 = !DILocation(line: 820, column: 10, scope: !3853)
!3855 = !DILocation(line: 820, column: 6, scope: !3806)
!3856 = !DILocation(line: 821, column: 3, scope: !3857)
!3857 = distinct !DILexicalBlock(scope: !3853, file: !3, line: 820, column: 15)
!3858 = !DILocation(line: 822, column: 10, scope: !3857)
!3859 = !DILocation(line: 822, column: 3, scope: !3857)
!3860 = !DILocation(line: 826, column: 13, scope: !3806)
!3861 = !DILocation(line: 826, column: 2, scope: !3806)
!3862 = !DILocation(line: 826, column: 8, scope: !3806)
!3863 = !DILocation(line: 826, column: 11, scope: !3806)
!3864 = !DILocation(line: 827, column: 14, scope: !3806)
!3865 = !DILocation(line: 827, column: 2, scope: !3806)
!3866 = !DILocation(line: 829, column: 2, scope: !3806)
!3867 = !DILocation(line: 830, column: 1, scope: !3806)
!3868 = distinct !DISubprogram(name: "thermal_of_populate_bind_params", scope: !3, file: !3, line: 670, type: !3869, scopeLine: 674, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3869 = !DISubroutineType(types: !3870)
!3870 = !{!102, !1896, !2273, !2264, !102}
!3871 = !DILocalVariable(name: "np", arg: 1, scope: !3868, file: !3, line: 670, type: !1896)
!3872 = !DILocation(line: 670, column: 64, scope: !3868)
!3873 = !DILocalVariable(name: "__tbp", arg: 2, scope: !3868, file: !3, line: 671, type: !2273)
!3874 = !DILocation(line: 671, column: 39, scope: !3868)
!3875 = !DILocalVariable(name: "trips", arg: 3, scope: !3868, file: !3, line: 672, type: !2264)
!3876 = !DILocation(line: 672, column: 30, scope: !3868)
!3877 = !DILocalVariable(name: "ntrips", arg: 4, scope: !3868, file: !3, line: 673, type: !102)
!3878 = !DILocation(line: 673, column: 13, scope: !3868)
!3879 = !DILocalVariable(name: "cooling_spec", scope: !3868, file: !3, line: 675, type: !2385)
!3880 = !DILocation(line: 675, column: 25, scope: !3868)
!3881 = !DILocalVariable(name: "__tcbp", scope: !3868, file: !3, line: 676, type: !2277)
!3882 = !DILocation(line: 676, column: 39, scope: !3868)
!3883 = !DILocalVariable(name: "trip", scope: !3868, file: !3, line: 677, type: !1896)
!3884 = !DILocation(line: 677, column: 22, scope: !3868)
!3885 = !DILocalVariable(name: "ret", scope: !3868, file: !3, line: 678, type: !102)
!3886 = !DILocation(line: 678, column: 6, scope: !3868)
!3887 = !DILocalVariable(name: "i", scope: !3868, file: !3, line: 678, type: !102)
!3888 = !DILocation(line: 678, column: 11, scope: !3868)
!3889 = !DILocalVariable(name: "count", scope: !3868, file: !3, line: 678, type: !102)
!3890 = !DILocation(line: 678, column: 14, scope: !3868)
!3891 = !DILocalVariable(name: "prop", scope: !3868, file: !3, line: 679, type: !429)
!3892 = !DILocation(line: 679, column: 6, scope: !3868)
!3893 = !DILocation(line: 682, column: 2, scope: !3868)
!3894 = !DILocation(line: 682, column: 9, scope: !3868)
!3895 = !DILocation(line: 682, column: 15, scope: !3868)
!3896 = !DILocation(line: 683, column: 29, scope: !3868)
!3897 = !DILocation(line: 683, column: 8, scope: !3868)
!3898 = !DILocation(line: 683, column: 6, scope: !3868)
!3899 = !DILocation(line: 684, column: 6, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3868, file: !3, line: 684, column: 6)
!3901 = !DILocation(line: 684, column: 10, scope: !3900)
!3902 = !DILocation(line: 684, column: 6, scope: !3868)
!3903 = !DILocation(line: 685, column: 18, scope: !3900)
!3904 = !DILocation(line: 685, column: 3, scope: !3900)
!3905 = !DILocation(line: 685, column: 10, scope: !3900)
!3906 = !DILocation(line: 685, column: 16, scope: !3900)
!3907 = !DILocation(line: 687, column: 26, scope: !3868)
!3908 = !DILocation(line: 687, column: 9, scope: !3868)
!3909 = !DILocation(line: 687, column: 7, scope: !3868)
!3910 = !DILocation(line: 688, column: 7, scope: !3911)
!3911 = distinct !DILexicalBlock(scope: !3868, file: !3, line: 688, column: 6)
!3912 = !DILocation(line: 688, column: 6, scope: !3868)
!3913 = !DILocation(line: 689, column: 3, scope: !3914)
!3914 = distinct !DILexicalBlock(scope: !3911, file: !3, line: 688, column: 13)
!3915 = !DILocation(line: 690, column: 3, scope: !3914)
!3916 = !DILocation(line: 694, column: 9, scope: !3917)
!3917 = distinct !DILexicalBlock(scope: !3868, file: !3, line: 694, column: 2)
!3918 = !DILocation(line: 694, column: 7, scope: !3917)
!3919 = !DILocation(line: 694, column: 14, scope: !3920)
!3920 = distinct !DILexicalBlock(scope: !3917, file: !3, line: 694, column: 2)
!3921 = !DILocation(line: 694, column: 18, scope: !3920)
!3922 = !DILocation(line: 694, column: 16, scope: !3920)
!3923 = !DILocation(line: 694, column: 2, scope: !3917)
!3924 = !DILocation(line: 695, column: 7, scope: !3925)
!3925 = distinct !DILexicalBlock(scope: !3920, file: !3, line: 695, column: 7)
!3926 = !DILocation(line: 695, column: 15, scope: !3925)
!3927 = !DILocation(line: 695, column: 21, scope: !3925)
!3928 = !DILocation(line: 695, column: 24, scope: !3925)
!3929 = !DILocation(line: 695, column: 12, scope: !3925)
!3930 = !DILocation(line: 695, column: 7, scope: !3920)
!3931 = !DILocation(line: 696, column: 21, scope: !3932)
!3932 = distinct !DILexicalBlock(scope: !3925, file: !3, line: 695, column: 28)
!3933 = !DILocation(line: 696, column: 4, scope: !3932)
!3934 = !DILocation(line: 696, column: 11, scope: !3932)
!3935 = !DILocation(line: 696, column: 19, scope: !3932)
!3936 = !DILocation(line: 697, column: 4, scope: !3932)
!3937 = !DILocation(line: 694, column: 27, scope: !3920)
!3938 = !DILocation(line: 694, column: 2, scope: !3920)
!3939 = distinct !{!3939, !3923, !3940}
!3940 = !DILocation(line: 698, column: 3, scope: !3917)
!3941 = !DILocation(line: 700, column: 6, scope: !3942)
!3942 = distinct !DILexicalBlock(scope: !3868, file: !3, line: 700, column: 6)
!3943 = !DILocation(line: 700, column: 11, scope: !3942)
!3944 = !DILocation(line: 700, column: 8, scope: !3942)
!3945 = !DILocation(line: 700, column: 6, scope: !3868)
!3946 = !DILocation(line: 701, column: 7, scope: !3947)
!3947 = distinct !DILexicalBlock(scope: !3942, file: !3, line: 700, column: 19)
!3948 = !DILocation(line: 702, column: 3, scope: !3947)
!3949 = !DILocation(line: 705, column: 37, scope: !3868)
!3950 = !DILocation(line: 705, column: 10, scope: !3868)
!3951 = !DILocation(line: 705, column: 8, scope: !3868)
!3952 = !DILocation(line: 707, column: 7, scope: !3953)
!3953 = distinct !DILexicalBlock(scope: !3868, file: !3, line: 707, column: 6)
!3954 = !DILocation(line: 707, column: 6, scope: !3868)
!3955 = !DILocation(line: 708, column: 3, scope: !3956)
!3956 = distinct !DILexicalBlock(scope: !3953, file: !3, line: 707, column: 14)
!3957 = !DILocation(line: 709, column: 3, scope: !3956)
!3958 = !DILocation(line: 712, column: 19, scope: !3868)
!3959 = !DILocation(line: 712, column: 11, scope: !3868)
!3960 = !DILocation(line: 712, column: 9, scope: !3868)
!3961 = !DILocation(line: 713, column: 7, scope: !3962)
!3962 = distinct !DILexicalBlock(scope: !3868, file: !3, line: 713, column: 6)
!3963 = !DILocation(line: 713, column: 6, scope: !3868)
!3964 = !DILocation(line: 714, column: 3, scope: !3962)
!3965 = !DILocation(line: 716, column: 9, scope: !3966)
!3966 = distinct !DILexicalBlock(scope: !3868, file: !3, line: 716, column: 2)
!3967 = !DILocation(line: 716, column: 7, scope: !3966)
!3968 = !DILocation(line: 716, column: 14, scope: !3969)
!3969 = distinct !DILexicalBlock(scope: !3966, file: !3, line: 716, column: 2)
!3970 = !DILocation(line: 716, column: 18, scope: !3969)
!3971 = !DILocation(line: 716, column: 16, scope: !3969)
!3972 = !DILocation(line: 716, column: 2, scope: !3966)
!3973 = !DILocation(line: 717, column: 36, scope: !3974)
!3974 = distinct !DILexicalBlock(scope: !3969, file: !3, line: 716, column: 30)
!3975 = !DILocation(line: 718, column: 23, scope: !3974)
!3976 = !DILocation(line: 717, column: 9, scope: !3974)
!3977 = !DILocation(line: 717, column: 7, scope: !3974)
!3978 = !DILocation(line: 719, column: 7, scope: !3979)
!3979 = distinct !DILexicalBlock(scope: !3974, file: !3, line: 719, column: 7)
!3980 = !DILocation(line: 719, column: 11, scope: !3979)
!3981 = !DILocation(line: 719, column: 7, scope: !3974)
!3982 = !DILocation(line: 720, column: 4, scope: !3983)
!3983 = distinct !DILexicalBlock(scope: !3979, file: !3, line: 719, column: 16)
!3984 = !DILocation(line: 721, column: 4, scope: !3983)
!3985 = !DILocation(line: 724, column: 43, scope: !3974)
!3986 = !DILocation(line: 724, column: 3, scope: !3974)
!3987 = !DILocation(line: 724, column: 10, scope: !3974)
!3988 = !DILocation(line: 724, column: 13, scope: !3974)
!3989 = !DILocation(line: 724, column: 28, scope: !3974)
!3990 = !DILocation(line: 726, column: 20, scope: !3991)
!3991 = distinct !DILexicalBlock(scope: !3974, file: !3, line: 726, column: 7)
!3992 = !DILocation(line: 726, column: 31, scope: !3991)
!3993 = !DILocation(line: 726, column: 7, scope: !3974)
!3994 = !DILocation(line: 727, column: 33, scope: !3995)
!3995 = distinct !DILexicalBlock(scope: !3991, file: !3, line: 726, column: 37)
!3996 = !DILocation(line: 727, column: 20, scope: !3995)
!3997 = !DILocation(line: 727, column: 4, scope: !3995)
!3998 = !DILocation(line: 727, column: 11, scope: !3995)
!3999 = !DILocation(line: 727, column: 14, scope: !3995)
!4000 = !DILocation(line: 727, column: 18, scope: !3995)
!4001 = !DILocation(line: 728, column: 33, scope: !3995)
!4002 = !DILocation(line: 728, column: 20, scope: !3995)
!4003 = !DILocation(line: 728, column: 4, scope: !3995)
!4004 = !DILocation(line: 728, column: 11, scope: !3995)
!4005 = !DILocation(line: 728, column: 14, scope: !3995)
!4006 = !DILocation(line: 728, column: 18, scope: !3995)
!4007 = !DILocation(line: 729, column: 3, scope: !3995)
!4008 = !DILocation(line: 730, column: 4, scope: !4009)
!4009 = distinct !DILexicalBlock(scope: !3991, file: !3, line: 729, column: 10)
!4010 = !DILocation(line: 732, column: 2, scope: !3974)
!4011 = !DILocation(line: 716, column: 26, scope: !3969)
!4012 = !DILocation(line: 716, column: 2, scope: !3969)
!4013 = distinct !{!4013, !3972, !4014}
!4014 = !DILocation(line: 732, column: 2, scope: !3966)
!4015 = !DILocation(line: 734, column: 16, scope: !3868)
!4016 = !DILocation(line: 734, column: 2, scope: !3868)
!4017 = !DILocation(line: 734, column: 9, scope: !3868)
!4018 = !DILocation(line: 734, column: 14, scope: !3868)
!4019 = !DILocation(line: 735, column: 17, scope: !3868)
!4020 = !DILocation(line: 735, column: 2, scope: !3868)
!4021 = !DILocation(line: 735, column: 9, scope: !3868)
!4022 = !DILocation(line: 735, column: 15, scope: !3868)
!4023 = !DILocation(line: 737, column: 2, scope: !3868)
!4024 = !DILabel(scope: !3868, name: "free_tcbp", file: !3, line: 739)
!4025 = !DILocation(line: 739, column: 1, scope: !3868)
!4026 = !DILocation(line: 740, column: 11, scope: !4027)
!4027 = distinct !DILexicalBlock(scope: !3868, file: !3, line: 740, column: 2)
!4028 = !DILocation(line: 740, column: 13, scope: !4027)
!4029 = !DILocation(line: 740, column: 9, scope: !4027)
!4030 = !DILocation(line: 740, column: 7, scope: !4027)
!4031 = !DILocation(line: 740, column: 18, scope: !4032)
!4032 = distinct !DILexicalBlock(scope: !4027, file: !3, line: 740, column: 2)
!4033 = !DILocation(line: 740, column: 20, scope: !4032)
!4034 = !DILocation(line: 740, column: 2, scope: !4027)
!4035 = !DILocation(line: 741, column: 15, scope: !4032)
!4036 = !DILocation(line: 741, column: 22, scope: !4032)
!4037 = !DILocation(line: 741, column: 25, scope: !4032)
!4038 = !DILocation(line: 741, column: 3, scope: !4032)
!4039 = !DILocation(line: 740, column: 27, scope: !4032)
!4040 = !DILocation(line: 740, column: 2, scope: !4032)
!4041 = distinct !{!4041, !4034, !4042}
!4042 = !DILocation(line: 741, column: 39, scope: !4027)
!4043 = !DILocation(line: 742, column: 8, scope: !3868)
!4044 = !DILocation(line: 742, column: 2, scope: !3868)
!4045 = !DILabel(scope: !3868, name: "end", file: !3, line: 743)
!4046 = !DILocation(line: 743, column: 1, scope: !3868)
!4047 = !DILocation(line: 744, column: 14, scope: !3868)
!4048 = !DILocation(line: 744, column: 2, scope: !3868)
!4049 = !DILocation(line: 746, column: 9, scope: !3868)
!4050 = !DILocation(line: 746, column: 2, scope: !3868)
!4051 = !DILocation(line: 747, column: 1, scope: !3868)
!4052 = distinct !DISubprogram(name: "kmalloc_array", scope: !86, file: !86, line: 584, type: !3792, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!4053 = !DILocation(line: 445, column: 72, scope: !3238, inlinedAt: !4054)
!4054 = distinct !DILocation(line: 552, column: 10, scope: !3243, inlinedAt: !4055)
!4055 = distinct !DILocation(line: 591, column: 10, scope: !4056)
!4056 = distinct !DILexicalBlock(scope: !4052, file: !86, line: 590, column: 6)
!4057 = !DILocation(line: 446, column: 9, scope: !3238, inlinedAt: !4054)
!4058 = !DILocation(line: 446, column: 23, scope: !3238, inlinedAt: !4054)
!4059 = !DILocation(line: 448, column: 8, scope: !3238, inlinedAt: !4054)
!4060 = !DILocation(line: 318, column: 67, scope: !3254, inlinedAt: !4061)
!4061 = distinct !DILocation(line: 553, column: 20, scope: !3243, inlinedAt: !4055)
!4062 = !DILocation(line: 346, column: 58, scope: !3260, inlinedAt: !4063)
!4063 = distinct !DILocation(line: 547, column: 11, scope: !3243, inlinedAt: !4055)
!4064 = !DILocation(line: 472, column: 28, scope: !3266, inlinedAt: !4065)
!4065 = distinct !DILocation(line: 481, column: 9, scope: !3271, inlinedAt: !4066)
!4066 = distinct !DILocation(line: 545, column: 11, scope: !3273, inlinedAt: !4055)
!4067 = !DILocation(line: 472, column: 40, scope: !3266, inlinedAt: !4065)
!4068 = !DILocation(line: 472, column: 60, scope: !3266, inlinedAt: !4065)
!4069 = !DILocation(line: 478, column: 51, scope: !3271, inlinedAt: !4066)
!4070 = !DILocation(line: 478, column: 63, scope: !3271, inlinedAt: !4066)
!4071 = !DILocation(line: 480, column: 15, scope: !3271, inlinedAt: !4066)
!4072 = !DILocation(line: 538, column: 45, scope: !3245, inlinedAt: !4055)
!4073 = !DILocation(line: 538, column: 57, scope: !3245, inlinedAt: !4055)
!4074 = !DILocation(line: 542, column: 16, scope: !3243, inlinedAt: !4055)
!4075 = !DILocalVariable(name: "n", arg: 1, scope: !4052, file: !86, line: 584, type: !220)
!4076 = !DILocation(line: 584, column: 42, scope: !4052)
!4077 = !DILocalVariable(name: "size", arg: 2, scope: !4052, file: !86, line: 584, type: !220)
!4078 = !DILocation(line: 584, column: 52, scope: !4052)
!4079 = !DILocalVariable(name: "flags", arg: 3, scope: !4052, file: !86, line: 584, type: !94)
!4080 = !DILocation(line: 584, column: 64, scope: !4052)
!4081 = !DILocalVariable(name: "bytes", scope: !4052, file: !86, line: 586, type: !220)
!4082 = !DILocation(line: 586, column: 9, scope: !4052)
!4083 = !DILocalVariable(name: "__a", scope: !4084, file: !86, line: 588, type: !220)
!4084 = distinct !DILexicalBlock(scope: !4085, file: !86, line: 588, column: 6)
!4085 = distinct !DILexicalBlock(scope: !4052, file: !86, line: 588, column: 6)
!4086 = !DILocation(line: 588, column: 6, scope: !4084)
!4087 = !DILocalVariable(name: "__b", scope: !4084, file: !86, line: 588, type: !220)
!4088 = !DILocalVariable(name: "__d", scope: !4084, file: !86, line: 588, type: !4089)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!4090 = !DILocation(line: 588, column: 6, scope: !4085)
!4091 = !DILocation(line: 588, column: 6, scope: !4052)
!4092 = !DILocation(line: 589, column: 3, scope: !4085)
!4093 = !DILocation(line: 590, column: 27, scope: !4056)
!4094 = !DILocation(line: 590, column: 6, scope: !4056)
!4095 = !DILocation(line: 590, column: 30, scope: !4056)
!4096 = !DILocation(line: 590, column: 54, scope: !4056)
!4097 = !DILocation(line: 590, column: 33, scope: !4056)
!4098 = !DILocation(line: 590, column: 6, scope: !4052)
!4099 = !DILocation(line: 591, column: 18, scope: !4056)
!4100 = !DILocation(line: 591, column: 25, scope: !4056)
!4101 = !DILocation(line: 540, column: 27, scope: !3244, inlinedAt: !4055)
!4102 = !DILocation(line: 540, column: 6, scope: !3244, inlinedAt: !4055)
!4103 = !DILocation(line: 540, column: 6, scope: !3245, inlinedAt: !4055)
!4104 = !DILocation(line: 544, column: 7, scope: !3273, inlinedAt: !4055)
!4105 = !DILocation(line: 544, column: 12, scope: !3273, inlinedAt: !4055)
!4106 = !DILocation(line: 544, column: 7, scope: !3243, inlinedAt: !4055)
!4107 = !DILocation(line: 545, column: 25, scope: !3273, inlinedAt: !4055)
!4108 = !DILocation(line: 545, column: 31, scope: !3273, inlinedAt: !4055)
!4109 = !DILocation(line: 480, column: 33, scope: !3271, inlinedAt: !4066)
!4110 = !DILocation(line: 480, column: 23, scope: !3271, inlinedAt: !4066)
!4111 = !DILocation(line: 481, column: 29, scope: !3271, inlinedAt: !4066)
!4112 = !DILocation(line: 481, column: 35, scope: !3271, inlinedAt: !4066)
!4113 = !DILocation(line: 481, column: 42, scope: !3271, inlinedAt: !4066)
!4114 = !DILocation(line: 474, column: 23, scope: !3266, inlinedAt: !4065)
!4115 = !DILocation(line: 474, column: 29, scope: !3266, inlinedAt: !4065)
!4116 = !DILocation(line: 474, column: 36, scope: !3266, inlinedAt: !4065)
!4117 = !DILocation(line: 474, column: 9, scope: !3266, inlinedAt: !4065)
!4118 = !DILocation(line: 545, column: 4, scope: !3273, inlinedAt: !4055)
!4119 = !DILocation(line: 547, column: 25, scope: !3243, inlinedAt: !4055)
!4120 = !DILocation(line: 348, column: 7, scope: !3317, inlinedAt: !4063)
!4121 = !DILocation(line: 348, column: 6, scope: !3260, inlinedAt: !4063)
!4122 = !DILocation(line: 349, column: 3, scope: !3317, inlinedAt: !4063)
!4123 = !DILocation(line: 351, column: 6, scope: !3321, inlinedAt: !4063)
!4124 = !DILocation(line: 351, column: 11, scope: !3321, inlinedAt: !4063)
!4125 = !DILocation(line: 351, column: 6, scope: !3260, inlinedAt: !4063)
!4126 = !DILocation(line: 352, column: 3, scope: !3321, inlinedAt: !4063)
!4127 = !DILocation(line: 354, column: 32, scope: !3326, inlinedAt: !4063)
!4128 = !DILocation(line: 354, column: 37, scope: !3326, inlinedAt: !4063)
!4129 = !DILocation(line: 354, column: 42, scope: !3326, inlinedAt: !4063)
!4130 = !DILocation(line: 354, column: 45, scope: !3326, inlinedAt: !4063)
!4131 = !DILocation(line: 354, column: 50, scope: !3326, inlinedAt: !4063)
!4132 = !DILocation(line: 354, column: 6, scope: !3260, inlinedAt: !4063)
!4133 = !DILocation(line: 355, column: 3, scope: !3326, inlinedAt: !4063)
!4134 = !DILocation(line: 356, column: 32, scope: !3334, inlinedAt: !4063)
!4135 = !DILocation(line: 356, column: 37, scope: !3334, inlinedAt: !4063)
!4136 = !DILocation(line: 356, column: 43, scope: !3334, inlinedAt: !4063)
!4137 = !DILocation(line: 356, column: 46, scope: !3334, inlinedAt: !4063)
!4138 = !DILocation(line: 356, column: 51, scope: !3334, inlinedAt: !4063)
!4139 = !DILocation(line: 356, column: 6, scope: !3260, inlinedAt: !4063)
!4140 = !DILocation(line: 357, column: 3, scope: !3334, inlinedAt: !4063)
!4141 = !DILocation(line: 358, column: 6, scope: !3342, inlinedAt: !4063)
!4142 = !DILocation(line: 358, column: 11, scope: !3342, inlinedAt: !4063)
!4143 = !DILocation(line: 358, column: 6, scope: !3260, inlinedAt: !4063)
!4144 = !DILocation(line: 358, column: 26, scope: !3342, inlinedAt: !4063)
!4145 = !DILocation(line: 359, column: 6, scope: !3347, inlinedAt: !4063)
!4146 = !DILocation(line: 359, column: 11, scope: !3347, inlinedAt: !4063)
!4147 = !DILocation(line: 359, column: 6, scope: !3260, inlinedAt: !4063)
!4148 = !DILocation(line: 359, column: 26, scope: !3347, inlinedAt: !4063)
!4149 = !DILocation(line: 360, column: 6, scope: !3352, inlinedAt: !4063)
!4150 = !DILocation(line: 360, column: 11, scope: !3352, inlinedAt: !4063)
!4151 = !DILocation(line: 360, column: 6, scope: !3260, inlinedAt: !4063)
!4152 = !DILocation(line: 360, column: 26, scope: !3352, inlinedAt: !4063)
!4153 = !DILocation(line: 361, column: 6, scope: !3357, inlinedAt: !4063)
!4154 = !DILocation(line: 361, column: 11, scope: !3357, inlinedAt: !4063)
!4155 = !DILocation(line: 361, column: 6, scope: !3260, inlinedAt: !4063)
!4156 = !DILocation(line: 361, column: 26, scope: !3357, inlinedAt: !4063)
!4157 = !DILocation(line: 362, column: 6, scope: !3362, inlinedAt: !4063)
!4158 = !DILocation(line: 362, column: 11, scope: !3362, inlinedAt: !4063)
!4159 = !DILocation(line: 362, column: 6, scope: !3260, inlinedAt: !4063)
!4160 = !DILocation(line: 362, column: 26, scope: !3362, inlinedAt: !4063)
!4161 = !DILocation(line: 363, column: 6, scope: !3367, inlinedAt: !4063)
!4162 = !DILocation(line: 363, column: 11, scope: !3367, inlinedAt: !4063)
!4163 = !DILocation(line: 363, column: 6, scope: !3260, inlinedAt: !4063)
!4164 = !DILocation(line: 363, column: 26, scope: !3367, inlinedAt: !4063)
!4165 = !DILocation(line: 364, column: 6, scope: !3372, inlinedAt: !4063)
!4166 = !DILocation(line: 364, column: 11, scope: !3372, inlinedAt: !4063)
!4167 = !DILocation(line: 364, column: 6, scope: !3260, inlinedAt: !4063)
!4168 = !DILocation(line: 364, column: 26, scope: !3372, inlinedAt: !4063)
!4169 = !DILocation(line: 365, column: 6, scope: !3377, inlinedAt: !4063)
!4170 = !DILocation(line: 365, column: 11, scope: !3377, inlinedAt: !4063)
!4171 = !DILocation(line: 365, column: 6, scope: !3260, inlinedAt: !4063)
!4172 = !DILocation(line: 365, column: 26, scope: !3377, inlinedAt: !4063)
!4173 = !DILocation(line: 366, column: 6, scope: !3382, inlinedAt: !4063)
!4174 = !DILocation(line: 366, column: 11, scope: !3382, inlinedAt: !4063)
!4175 = !DILocation(line: 366, column: 6, scope: !3260, inlinedAt: !4063)
!4176 = !DILocation(line: 366, column: 26, scope: !3382, inlinedAt: !4063)
!4177 = !DILocation(line: 367, column: 6, scope: !3387, inlinedAt: !4063)
!4178 = !DILocation(line: 367, column: 11, scope: !3387, inlinedAt: !4063)
!4179 = !DILocation(line: 367, column: 6, scope: !3260, inlinedAt: !4063)
!4180 = !DILocation(line: 367, column: 26, scope: !3387, inlinedAt: !4063)
!4181 = !DILocation(line: 368, column: 6, scope: !3392, inlinedAt: !4063)
!4182 = !DILocation(line: 368, column: 11, scope: !3392, inlinedAt: !4063)
!4183 = !DILocation(line: 368, column: 6, scope: !3260, inlinedAt: !4063)
!4184 = !DILocation(line: 368, column: 26, scope: !3392, inlinedAt: !4063)
!4185 = !DILocation(line: 369, column: 6, scope: !3397, inlinedAt: !4063)
!4186 = !DILocation(line: 369, column: 11, scope: !3397, inlinedAt: !4063)
!4187 = !DILocation(line: 369, column: 6, scope: !3260, inlinedAt: !4063)
!4188 = !DILocation(line: 369, column: 26, scope: !3397, inlinedAt: !4063)
!4189 = !DILocation(line: 370, column: 6, scope: !3402, inlinedAt: !4063)
!4190 = !DILocation(line: 370, column: 11, scope: !3402, inlinedAt: !4063)
!4191 = !DILocation(line: 370, column: 6, scope: !3260, inlinedAt: !4063)
!4192 = !DILocation(line: 370, column: 26, scope: !3402, inlinedAt: !4063)
!4193 = !DILocation(line: 371, column: 6, scope: !3407, inlinedAt: !4063)
!4194 = !DILocation(line: 371, column: 11, scope: !3407, inlinedAt: !4063)
!4195 = !DILocation(line: 371, column: 6, scope: !3260, inlinedAt: !4063)
!4196 = !DILocation(line: 371, column: 26, scope: !3407, inlinedAt: !4063)
!4197 = !DILocation(line: 372, column: 6, scope: !3412, inlinedAt: !4063)
!4198 = !DILocation(line: 372, column: 11, scope: !3412, inlinedAt: !4063)
!4199 = !DILocation(line: 372, column: 6, scope: !3260, inlinedAt: !4063)
!4200 = !DILocation(line: 372, column: 26, scope: !3412, inlinedAt: !4063)
!4201 = !DILocation(line: 373, column: 6, scope: !3417, inlinedAt: !4063)
!4202 = !DILocation(line: 373, column: 11, scope: !3417, inlinedAt: !4063)
!4203 = !DILocation(line: 373, column: 6, scope: !3260, inlinedAt: !4063)
!4204 = !DILocation(line: 373, column: 26, scope: !3417, inlinedAt: !4063)
!4205 = !DILocation(line: 374, column: 6, scope: !3422, inlinedAt: !4063)
!4206 = !DILocation(line: 374, column: 11, scope: !3422, inlinedAt: !4063)
!4207 = !DILocation(line: 374, column: 6, scope: !3260, inlinedAt: !4063)
!4208 = !DILocation(line: 374, column: 26, scope: !3422, inlinedAt: !4063)
!4209 = !DILocation(line: 375, column: 6, scope: !3427, inlinedAt: !4063)
!4210 = !DILocation(line: 375, column: 11, scope: !3427, inlinedAt: !4063)
!4211 = !DILocation(line: 375, column: 6, scope: !3260, inlinedAt: !4063)
!4212 = !DILocation(line: 375, column: 27, scope: !3427, inlinedAt: !4063)
!4213 = !DILocation(line: 376, column: 6, scope: !3432, inlinedAt: !4063)
!4214 = !DILocation(line: 376, column: 11, scope: !3432, inlinedAt: !4063)
!4215 = !DILocation(line: 376, column: 6, scope: !3260, inlinedAt: !4063)
!4216 = !DILocation(line: 376, column: 32, scope: !3432, inlinedAt: !4063)
!4217 = !DILocation(line: 377, column: 6, scope: !3437, inlinedAt: !4063)
!4218 = !DILocation(line: 377, column: 11, scope: !3437, inlinedAt: !4063)
!4219 = !DILocation(line: 377, column: 6, scope: !3260, inlinedAt: !4063)
!4220 = !DILocation(line: 377, column: 32, scope: !3437, inlinedAt: !4063)
!4221 = !DILocation(line: 378, column: 6, scope: !3442, inlinedAt: !4063)
!4222 = !DILocation(line: 378, column: 11, scope: !3442, inlinedAt: !4063)
!4223 = !DILocation(line: 378, column: 6, scope: !3260, inlinedAt: !4063)
!4224 = !DILocation(line: 378, column: 32, scope: !3442, inlinedAt: !4063)
!4225 = !DILocation(line: 379, column: 6, scope: !3447, inlinedAt: !4063)
!4226 = !DILocation(line: 379, column: 11, scope: !3447, inlinedAt: !4063)
!4227 = !DILocation(line: 379, column: 6, scope: !3260, inlinedAt: !4063)
!4228 = !DILocation(line: 379, column: 33, scope: !3447, inlinedAt: !4063)
!4229 = !DILocation(line: 380, column: 6, scope: !3452, inlinedAt: !4063)
!4230 = !DILocation(line: 380, column: 11, scope: !3452, inlinedAt: !4063)
!4231 = !DILocation(line: 380, column: 6, scope: !3260, inlinedAt: !4063)
!4232 = !DILocation(line: 380, column: 33, scope: !3452, inlinedAt: !4063)
!4233 = !DILocation(line: 381, column: 6, scope: !3457, inlinedAt: !4063)
!4234 = !DILocation(line: 381, column: 11, scope: !3457, inlinedAt: !4063)
!4235 = !DILocation(line: 381, column: 6, scope: !3260, inlinedAt: !4063)
!4236 = !DILocation(line: 381, column: 33, scope: !3457, inlinedAt: !4063)
!4237 = !DILocation(line: 382, column: 2, scope: !3462, inlinedAt: !4063)
!4238 = !DILocation(line: 382, column: 2, scope: !3466, inlinedAt: !4063)
!4239 = !DILocation(line: 382, column: 2, scope: !3467, inlinedAt: !4063)
!4240 = !DILocation(line: 386, column: 1, scope: !3260, inlinedAt: !4063)
!4241 = !DILocation(line: 547, column: 9, scope: !3243, inlinedAt: !4055)
!4242 = !DILocation(line: 549, column: 8, scope: !3473, inlinedAt: !4055)
!4243 = !DILocation(line: 549, column: 7, scope: !3243, inlinedAt: !4055)
!4244 = !DILocation(line: 550, column: 4, scope: !3473, inlinedAt: !4055)
!4245 = !DILocation(line: 553, column: 33, scope: !3243, inlinedAt: !4055)
!4246 = !DILocation(line: 325, column: 6, scope: !3478, inlinedAt: !4061)
!4247 = !DILocation(line: 325, column: 6, scope: !3254, inlinedAt: !4061)
!4248 = !DILocation(line: 326, column: 3, scope: !3478, inlinedAt: !4061)
!4249 = !DILocation(line: 332, column: 9, scope: !3254, inlinedAt: !4061)
!4250 = !DILocation(line: 332, column: 15, scope: !3254, inlinedAt: !4061)
!4251 = !DILocation(line: 332, column: 2, scope: !3254, inlinedAt: !4061)
!4252 = !DILocation(line: 336, column: 1, scope: !3254, inlinedAt: !4061)
!4253 = !DILocation(line: 553, column: 5, scope: !3243, inlinedAt: !4055)
!4254 = !DILocation(line: 553, column: 41, scope: !3243, inlinedAt: !4055)
!4255 = !DILocation(line: 554, column: 5, scope: !3243, inlinedAt: !4055)
!4256 = !DILocation(line: 554, column: 12, scope: !3243, inlinedAt: !4055)
!4257 = !DILocation(line: 448, column: 31, scope: !3238, inlinedAt: !4054)
!4258 = !DILocation(line: 448, column: 34, scope: !3238, inlinedAt: !4054)
!4259 = !DILocation(line: 448, column: 14, scope: !3238, inlinedAt: !4054)
!4260 = !DILocation(line: 450, column: 22, scope: !3238, inlinedAt: !4054)
!4261 = !DILocation(line: 450, column: 25, scope: !3238, inlinedAt: !4054)
!4262 = !DILocation(line: 450, column: 30, scope: !3238, inlinedAt: !4054)
!4263 = !DILocation(line: 450, column: 36, scope: !3238, inlinedAt: !4054)
!4264 = !DILocation(line: 450, column: 8, scope: !3238, inlinedAt: !4054)
!4265 = !DILocation(line: 450, column: 6, scope: !3238, inlinedAt: !4054)
!4266 = !DILocation(line: 451, column: 9, scope: !3238, inlinedAt: !4054)
!4267 = !DILocation(line: 552, column: 3, scope: !3243, inlinedAt: !4055)
!4268 = !DILocation(line: 557, column: 19, scope: !3245, inlinedAt: !4055)
!4269 = !DILocation(line: 557, column: 25, scope: !3245, inlinedAt: !4055)
!4270 = !DILocation(line: 557, column: 9, scope: !3245, inlinedAt: !4055)
!4271 = !DILocation(line: 557, column: 2, scope: !3245, inlinedAt: !4055)
!4272 = !DILocation(line: 558, column: 1, scope: !3245, inlinedAt: !4055)
!4273 = !DILocation(line: 591, column: 3, scope: !4056)
!4274 = !DILocation(line: 592, column: 19, scope: !4052)
!4275 = !DILocation(line: 592, column: 26, scope: !4052)
!4276 = !DILocation(line: 592, column: 9, scope: !4052)
!4277 = !DILocation(line: 592, column: 2, scope: !4052)
!4278 = !DILocation(line: 593, column: 1, scope: !4052)
!4279 = distinct !DISubprogram(name: "__must_check_overflow", scope: !4280, file: !4280, line: 52, type: !4281, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!4280 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!4281 = !DISubroutineType(types: !4282)
!4282 = !{!999, !999}
!4283 = !DILocalVariable(name: "overflow", arg: 1, scope: !4279, file: !4280, line: 52, type: !999)
!4284 = !DILocation(line: 52, column: 60, scope: !4279)
!4285 = !DILocation(line: 54, column: 9, scope: !4279)
!4286 = !DILocation(line: 54, column: 2, scope: !4279)
!4287 = distinct !DISubprogram(name: "get_order", scope: !4288, file: !4288, line: 29, type: !4289, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!4288 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4289 = !DISubroutineType(types: !4290)
!4290 = !{!102, !96}
!4291 = !DILocalVariable(name: "x", arg: 1, scope: !4292, file: !4293, line: 366, type: !293)
!4292 = distinct !DISubprogram(name: "fls64", scope: !4293, file: !4293, line: 366, type: !4294, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!4293 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4294 = !DISubroutineType(types: !4295)
!4295 = !{!102, !293}
!4296 = !DILocation(line: 366, column: 40, scope: !4292, inlinedAt: !4297)
!4297 = distinct !DILocation(line: 46, column: 9, scope: !4287)
!4298 = !DILocalVariable(name: "bitpos", scope: !4292, file: !4293, line: 368, type: !102)
!4299 = !DILocation(line: 368, column: 6, scope: !4292, inlinedAt: !4297)
!4300 = !DILocalVariable(name: "size", arg: 1, scope: !4287, file: !4288, line: 29, type: !96)
!4301 = !DILocation(line: 29, column: 63, scope: !4287)
!4302 = !DILocation(line: 31, column: 27, scope: !4303)
!4303 = distinct !DILexicalBlock(scope: !4287, file: !4288, line: 31, column: 6)
!4304 = !DILocation(line: 31, column: 6, scope: !4303)
!4305 = !DILocation(line: 31, column: 6, scope: !4287)
!4306 = !DILocation(line: 32, column: 8, scope: !4307)
!4307 = distinct !DILexicalBlock(scope: !4308, file: !4288, line: 32, column: 7)
!4308 = distinct !DILexicalBlock(scope: !4303, file: !4288, line: 31, column: 34)
!4309 = !DILocation(line: 32, column: 7, scope: !4308)
!4310 = !DILocation(line: 33, column: 4, scope: !4307)
!4311 = !DILocation(line: 35, column: 7, scope: !4312)
!4312 = distinct !DILexicalBlock(scope: !4308, file: !4288, line: 35, column: 7)
!4313 = !DILocation(line: 35, column: 12, scope: !4312)
!4314 = !DILocation(line: 35, column: 7, scope: !4308)
!4315 = !DILocation(line: 36, column: 4, scope: !4312)
!4316 = !DILocation(line: 38, column: 10, scope: !4308)
!4317 = !DILocation(line: 38, column: 28, scope: !4308)
!4318 = !DILocation(line: 38, column: 41, scope: !4308)
!4319 = !DILocation(line: 38, column: 3, scope: !4308)
!4320 = !DILocation(line: 41, column: 6, scope: !4287)
!4321 = !DILocation(line: 42, column: 7, scope: !4287)
!4322 = !DILocation(line: 46, column: 15, scope: !4287)
!4323 = !DILocation(line: 374, column: 2, scope: !4292, inlinedAt: !4297)
!4324 = !DILocation(line: 376, column: 14, scope: !4292, inlinedAt: !4297)
!4325 = !{i32 429727}
!4326 = !DILocation(line: 377, column: 9, scope: !4292, inlinedAt: !4297)
!4327 = !DILocation(line: 377, column: 16, scope: !4292, inlinedAt: !4297)
!4328 = !DILocation(line: 46, column: 2, scope: !4287)
!4329 = !DILocation(line: 48, column: 1, scope: !4287)
!4330 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4331, file: !4331, line: 30, type: !4332, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!4331 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4332 = !DISubroutineType(types: !4333)
!4333 = !{!102, !291}
!4334 = !DILocation(line: 366, column: 40, scope: !4292, inlinedAt: !4335)
!4335 = distinct !DILocation(line: 32, column: 9, scope: !4330)
!4336 = !DILocation(line: 368, column: 6, scope: !4292, inlinedAt: !4335)
!4337 = !DILocalVariable(name: "n", arg: 1, scope: !4330, file: !4331, line: 30, type: !291)
!4338 = !DILocation(line: 30, column: 21, scope: !4330)
!4339 = !DILocation(line: 32, column: 15, scope: !4330)
!4340 = !DILocation(line: 374, column: 2, scope: !4292, inlinedAt: !4335)
!4341 = !DILocation(line: 376, column: 14, scope: !4292, inlinedAt: !4335)
!4342 = !DILocation(line: 377, column: 9, scope: !4292, inlinedAt: !4335)
!4343 = !DILocation(line: 377, column: 16, scope: !4292, inlinedAt: !4335)
!4344 = !DILocation(line: 32, column: 18, scope: !4330)
!4345 = !DILocation(line: 32, column: 2, scope: !4330)
!4346 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !4347, file: !4347, line: 137, type: !4348, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!4347 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!4348 = !DISubroutineType(types: !4349)
!4349 = !{!93, !1049, !1388, !220, !94}
!4350 = !DILocalVariable(name: "s", arg: 1, scope: !4346, file: !4347, line: 137, type: !1049)
!4351 = !DILocation(line: 137, column: 54, scope: !4346)
!4352 = !DILocalVariable(name: "object", arg: 2, scope: !4346, file: !4347, line: 137, type: !1388)
!4353 = !DILocation(line: 137, column: 69, scope: !4346)
!4354 = !DILocalVariable(name: "size", arg: 3, scope: !4346, file: !4347, line: 138, type: !220)
!4355 = !DILocation(line: 138, column: 12, scope: !4346)
!4356 = !DILocalVariable(name: "flags", arg: 4, scope: !4346, file: !4347, line: 138, type: !94)
!4357 = !DILocation(line: 138, column: 24, scope: !4346)
!4358 = !DILocation(line: 140, column: 17, scope: !4346)
!4359 = !DILocation(line: 140, column: 2, scope: !4346)
!4360 = distinct !DISubprogram(name: "thermal_of_get_trip_type", scope: !3, file: !3, line: 770, type: !4361, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!4361 = !DISubroutineType(types: !4362)
!4362 = !{!102, !1896, !2162}
!4363 = !DILocalVariable(name: "np", arg: 1, scope: !4360, file: !3, line: 770, type: !1896)
!4364 = !DILocation(line: 770, column: 57, scope: !4360)
!4365 = !DILocalVariable(name: "type", arg: 2, scope: !4360, file: !3, line: 771, type: !2162)
!4366 = !DILocation(line: 771, column: 33, scope: !4360)
!4367 = !DILocalVariable(name: "t", scope: !4360, file: !3, line: 773, type: !116)
!4368 = !DILocation(line: 773, column: 14, scope: !4360)
!4369 = !DILocalVariable(name: "err", scope: !4360, file: !3, line: 774, type: !102)
!4370 = !DILocation(line: 774, column: 6, scope: !4360)
!4371 = !DILocalVariable(name: "i", scope: !4360, file: !3, line: 774, type: !102)
!4372 = !DILocation(line: 774, column: 11, scope: !4360)
!4373 = !DILocation(line: 776, column: 32, scope: !4360)
!4374 = !DILocation(line: 776, column: 8, scope: !4360)
!4375 = !DILocation(line: 776, column: 6, scope: !4360)
!4376 = !DILocation(line: 777, column: 6, scope: !4377)
!4377 = distinct !DILexicalBlock(scope: !4360, file: !3, line: 777, column: 6)
!4378 = !DILocation(line: 777, column: 10, scope: !4377)
!4379 = !DILocation(line: 777, column: 6, scope: !4360)
!4380 = !DILocation(line: 778, column: 10, scope: !4377)
!4381 = !DILocation(line: 778, column: 3, scope: !4377)
!4382 = !DILocation(line: 780, column: 9, scope: !4383)
!4383 = distinct !DILexicalBlock(scope: !4360, file: !3, line: 780, column: 2)
!4384 = !DILocation(line: 780, column: 7, scope: !4383)
!4385 = !DILocation(line: 780, column: 14, scope: !4386)
!4386 = distinct !DILexicalBlock(scope: !4383, file: !3, line: 780, column: 2)
!4387 = !DILocation(line: 780, column: 16, scope: !4386)
!4388 = !DILocation(line: 780, column: 2, scope: !4383)
!4389 = !DILocation(line: 781, column: 19, scope: !4390)
!4390 = distinct !DILexicalBlock(scope: !4386, file: !3, line: 781, column: 7)
!4391 = !DILocation(line: 781, column: 33, scope: !4390)
!4392 = !DILocation(line: 781, column: 22, scope: !4390)
!4393 = !DILocation(line: 781, column: 8, scope: !4390)
!4394 = !DILocation(line: 781, column: 7, scope: !4386)
!4395 = !DILocation(line: 782, column: 12, scope: !4396)
!4396 = distinct !DILexicalBlock(scope: !4390, file: !3, line: 781, column: 38)
!4397 = !DILocation(line: 782, column: 5, scope: !4396)
!4398 = !DILocation(line: 782, column: 10, scope: !4396)
!4399 = !DILocation(line: 783, column: 4, scope: !4396)
!4400 = !DILocation(line: 781, column: 35, scope: !4390)
!4401 = !DILocation(line: 780, column: 43, scope: !4386)
!4402 = !DILocation(line: 780, column: 2, scope: !4386)
!4403 = distinct !{!4403, !4388, !4404}
!4404 = !DILocation(line: 784, column: 3, scope: !4383)
!4405 = !DILocation(line: 786, column: 2, scope: !4360)
!4406 = !DILocation(line: 787, column: 1, scope: !4360)
!4407 = distinct !DISubprogram(name: "of_thermal_bind", scope: !3, file: !3, line: 203, type: !2103, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!4408 = !DILocalVariable(name: "thermal", arg: 1, scope: !4407, file: !3, line: 203, type: !98)
!4409 = !DILocation(line: 203, column: 56, scope: !4407)
!4410 = !DILocalVariable(name: "cdev", arg: 2, scope: !4407, file: !3, line: 204, type: !2105)
!4411 = !DILocation(line: 204, column: 38, scope: !4407)
!4412 = !DILocalVariable(name: "data", scope: !4407, file: !3, line: 206, type: !2255)
!4413 = !DILocation(line: 206, column: 25, scope: !4407)
!4414 = !DILocation(line: 206, column: 32, scope: !4407)
!4415 = !DILocation(line: 206, column: 41, scope: !4407)
!4416 = !DILocalVariable(name: "tbp", scope: !4407, file: !3, line: 207, type: !2273)
!4417 = !DILocation(line: 207, column: 32, scope: !4407)
!4418 = !DILocalVariable(name: "tcbp", scope: !4407, file: !3, line: 208, type: !2277)
!4419 = !DILocation(line: 208, column: 39, scope: !4407)
!4420 = !DILocalVariable(name: "i", scope: !4407, file: !3, line: 209, type: !102)
!4421 = !DILocation(line: 209, column: 6, scope: !4407)
!4422 = !DILocalVariable(name: "j", scope: !4407, file: !3, line: 209, type: !102)
!4423 = !DILocation(line: 209, column: 9, scope: !4407)
!4424 = !DILocation(line: 211, column: 7, scope: !4425)
!4425 = distinct !DILexicalBlock(scope: !4407, file: !3, line: 211, column: 6)
!4426 = !DILocation(line: 211, column: 12, scope: !4425)
!4427 = !DILocation(line: 211, column: 22, scope: !4425)
!4428 = !DILocation(line: 211, column: 15, scope: !4425)
!4429 = !DILocation(line: 211, column: 6, scope: !4407)
!4430 = !DILocation(line: 212, column: 3, scope: !4425)
!4431 = !DILocation(line: 215, column: 9, scope: !4432)
!4432 = distinct !DILexicalBlock(scope: !4407, file: !3, line: 215, column: 2)
!4433 = !DILocation(line: 215, column: 7, scope: !4432)
!4434 = !DILocation(line: 215, column: 14, scope: !4435)
!4435 = distinct !DILexicalBlock(scope: !4432, file: !3, line: 215, column: 2)
!4436 = !DILocation(line: 215, column: 18, scope: !4435)
!4437 = !DILocation(line: 215, column: 24, scope: !4435)
!4438 = !DILocation(line: 215, column: 16, scope: !4435)
!4439 = !DILocation(line: 215, column: 2, scope: !4432)
!4440 = !DILocation(line: 216, column: 9, scope: !4441)
!4441 = distinct !DILexicalBlock(scope: !4435, file: !3, line: 215, column: 39)
!4442 = !DILocation(line: 216, column: 15, scope: !4441)
!4443 = !DILocation(line: 216, column: 22, scope: !4441)
!4444 = !DILocation(line: 216, column: 20, scope: !4441)
!4445 = !DILocation(line: 216, column: 7, scope: !4441)
!4446 = !DILocation(line: 218, column: 10, scope: !4447)
!4447 = distinct !DILexicalBlock(scope: !4441, file: !3, line: 218, column: 3)
!4448 = !DILocation(line: 218, column: 8, scope: !4447)
!4449 = !DILocation(line: 218, column: 15, scope: !4450)
!4450 = distinct !DILexicalBlock(scope: !4447, file: !3, line: 218, column: 3)
!4451 = !DILocation(line: 218, column: 19, scope: !4450)
!4452 = !DILocation(line: 218, column: 24, scope: !4450)
!4453 = !DILocation(line: 218, column: 17, scope: !4450)
!4454 = !DILocation(line: 218, column: 3, scope: !4447)
!4455 = !DILocation(line: 219, column: 11, scope: !4456)
!4456 = distinct !DILexicalBlock(scope: !4450, file: !3, line: 218, column: 36)
!4457 = !DILocation(line: 219, column: 16, scope: !4456)
!4458 = !DILocation(line: 219, column: 23, scope: !4456)
!4459 = !DILocation(line: 219, column: 21, scope: !4456)
!4460 = !DILocation(line: 219, column: 9, scope: !4456)
!4461 = !DILocation(line: 221, column: 8, scope: !4462)
!4462 = distinct !DILexicalBlock(scope: !4456, file: !3, line: 221, column: 8)
!4463 = !DILocation(line: 221, column: 14, scope: !4462)
!4464 = !DILocation(line: 221, column: 32, scope: !4462)
!4465 = !DILocation(line: 221, column: 38, scope: !4462)
!4466 = !DILocation(line: 221, column: 29, scope: !4462)
!4467 = !DILocation(line: 221, column: 8, scope: !4456)
!4468 = !DILocalVariable(name: "ret", scope: !4469, file: !3, line: 222, type: !102)
!4469 = distinct !DILexicalBlock(scope: !4462, file: !3, line: 221, column: 42)
!4470 = !DILocation(line: 222, column: 9, scope: !4469)
!4471 = !DILocation(line: 224, column: 44, scope: !4469)
!4472 = !DILocation(line: 225, column: 7, scope: !4469)
!4473 = !DILocation(line: 225, column: 12, scope: !4469)
!4474 = !DILocation(line: 225, column: 21, scope: !4469)
!4475 = !DILocation(line: 226, column: 7, scope: !4469)
!4476 = !DILocation(line: 226, column: 13, scope: !4469)
!4477 = !DILocation(line: 227, column: 7, scope: !4469)
!4478 = !DILocation(line: 227, column: 13, scope: !4469)
!4479 = !DILocation(line: 228, column: 7, scope: !4469)
!4480 = !DILocation(line: 228, column: 12, scope: !4469)
!4481 = !DILocation(line: 224, column: 11, scope: !4469)
!4482 = !DILocation(line: 224, column: 9, scope: !4469)
!4483 = !DILocation(line: 229, column: 9, scope: !4484)
!4484 = distinct !DILexicalBlock(scope: !4469, file: !3, line: 229, column: 9)
!4485 = !DILocation(line: 229, column: 9, scope: !4469)
!4486 = !DILocation(line: 230, column: 13, scope: !4484)
!4487 = !DILocation(line: 230, column: 6, scope: !4484)
!4488 = !DILocation(line: 231, column: 4, scope: !4469)
!4489 = !DILocation(line: 232, column: 3, scope: !4456)
!4490 = !DILocation(line: 218, column: 32, scope: !4450)
!4491 = !DILocation(line: 218, column: 3, scope: !4450)
!4492 = distinct !{!4492, !4454, !4493}
!4493 = !DILocation(line: 232, column: 3, scope: !4447)
!4494 = !DILocation(line: 233, column: 2, scope: !4441)
!4495 = !DILocation(line: 215, column: 35, scope: !4435)
!4496 = !DILocation(line: 215, column: 2, scope: !4435)
!4497 = distinct !{!4497, !4439, !4498}
!4498 = !DILocation(line: 233, column: 2, scope: !4432)
!4499 = !DILocation(line: 235, column: 2, scope: !4407)
!4500 = !DILocation(line: 236, column: 1, scope: !4407)
!4501 = distinct !DISubprogram(name: "of_thermal_unbind", scope: !3, file: !3, line: 238, type: !2103, scopeLine: 240, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!4502 = !DILocalVariable(name: "thermal", arg: 1, scope: !4501, file: !3, line: 238, type: !98)
!4503 = !DILocation(line: 238, column: 58, scope: !4501)
!4504 = !DILocalVariable(name: "cdev", arg: 2, scope: !4501, file: !3, line: 239, type: !2105)
!4505 = !DILocation(line: 239, column: 40, scope: !4501)
!4506 = !DILocalVariable(name: "data", scope: !4501, file: !3, line: 241, type: !2255)
!4507 = !DILocation(line: 241, column: 25, scope: !4501)
!4508 = !DILocation(line: 241, column: 32, scope: !4501)
!4509 = !DILocation(line: 241, column: 41, scope: !4501)
!4510 = !DILocalVariable(name: "tbp", scope: !4501, file: !3, line: 242, type: !2273)
!4511 = !DILocation(line: 242, column: 32, scope: !4501)
!4512 = !DILocalVariable(name: "tcbp", scope: !4501, file: !3, line: 243, type: !2277)
!4513 = !DILocation(line: 243, column: 39, scope: !4501)
!4514 = !DILocalVariable(name: "i", scope: !4501, file: !3, line: 244, type: !102)
!4515 = !DILocation(line: 244, column: 6, scope: !4501)
!4516 = !DILocalVariable(name: "j", scope: !4501, file: !3, line: 244, type: !102)
!4517 = !DILocation(line: 244, column: 9, scope: !4501)
!4518 = !DILocation(line: 246, column: 7, scope: !4519)
!4519 = distinct !DILexicalBlock(scope: !4501, file: !3, line: 246, column: 6)
!4520 = !DILocation(line: 246, column: 12, scope: !4519)
!4521 = !DILocation(line: 246, column: 22, scope: !4519)
!4522 = !DILocation(line: 246, column: 15, scope: !4519)
!4523 = !DILocation(line: 246, column: 6, scope: !4501)
!4524 = !DILocation(line: 247, column: 3, scope: !4519)
!4525 = !DILocation(line: 250, column: 9, scope: !4526)
!4526 = distinct !DILexicalBlock(scope: !4501, file: !3, line: 250, column: 2)
!4527 = !DILocation(line: 250, column: 7, scope: !4526)
!4528 = !DILocation(line: 250, column: 14, scope: !4529)
!4529 = distinct !DILexicalBlock(scope: !4526, file: !3, line: 250, column: 2)
!4530 = !DILocation(line: 250, column: 18, scope: !4529)
!4531 = !DILocation(line: 250, column: 24, scope: !4529)
!4532 = !DILocation(line: 250, column: 16, scope: !4529)
!4533 = !DILocation(line: 250, column: 2, scope: !4526)
!4534 = !DILocation(line: 251, column: 9, scope: !4535)
!4535 = distinct !DILexicalBlock(scope: !4529, file: !3, line: 250, column: 39)
!4536 = !DILocation(line: 251, column: 15, scope: !4535)
!4537 = !DILocation(line: 251, column: 22, scope: !4535)
!4538 = !DILocation(line: 251, column: 20, scope: !4535)
!4539 = !DILocation(line: 251, column: 7, scope: !4535)
!4540 = !DILocation(line: 253, column: 10, scope: !4541)
!4541 = distinct !DILexicalBlock(scope: !4535, file: !3, line: 253, column: 3)
!4542 = !DILocation(line: 253, column: 8, scope: !4541)
!4543 = !DILocation(line: 253, column: 15, scope: !4544)
!4544 = distinct !DILexicalBlock(scope: !4541, file: !3, line: 253, column: 3)
!4545 = !DILocation(line: 253, column: 19, scope: !4544)
!4546 = !DILocation(line: 253, column: 24, scope: !4544)
!4547 = !DILocation(line: 253, column: 17, scope: !4544)
!4548 = !DILocation(line: 253, column: 3, scope: !4541)
!4549 = !DILocation(line: 254, column: 11, scope: !4550)
!4550 = distinct !DILexicalBlock(scope: !4544, file: !3, line: 253, column: 36)
!4551 = !DILocation(line: 254, column: 16, scope: !4550)
!4552 = !DILocation(line: 254, column: 23, scope: !4550)
!4553 = !DILocation(line: 254, column: 21, scope: !4550)
!4554 = !DILocation(line: 254, column: 9, scope: !4550)
!4555 = !DILocation(line: 256, column: 8, scope: !4556)
!4556 = distinct !DILexicalBlock(scope: !4550, file: !3, line: 256, column: 8)
!4557 = !DILocation(line: 256, column: 14, scope: !4556)
!4558 = !DILocation(line: 256, column: 32, scope: !4556)
!4559 = !DILocation(line: 256, column: 38, scope: !4556)
!4560 = !DILocation(line: 256, column: 29, scope: !4556)
!4561 = !DILocation(line: 256, column: 8, scope: !4550)
!4562 = !DILocalVariable(name: "ret", scope: !4563, file: !3, line: 257, type: !102)
!4563 = distinct !DILexicalBlock(scope: !4556, file: !3, line: 256, column: 42)
!4564 = !DILocation(line: 257, column: 9, scope: !4563)
!4565 = !DILocation(line: 259, column: 46, scope: !4563)
!4566 = !DILocation(line: 260, column: 8, scope: !4563)
!4567 = !DILocation(line: 260, column: 13, scope: !4563)
!4568 = !DILocation(line: 260, column: 22, scope: !4563)
!4569 = !DILocation(line: 259, column: 11, scope: !4563)
!4570 = !DILocation(line: 259, column: 9, scope: !4563)
!4571 = !DILocation(line: 261, column: 9, scope: !4572)
!4572 = distinct !DILexicalBlock(scope: !4563, file: !3, line: 261, column: 9)
!4573 = !DILocation(line: 261, column: 9, scope: !4563)
!4574 = !DILocation(line: 262, column: 13, scope: !4572)
!4575 = !DILocation(line: 262, column: 6, scope: !4572)
!4576 = !DILocation(line: 263, column: 4, scope: !4563)
!4577 = !DILocation(line: 264, column: 3, scope: !4550)
!4578 = !DILocation(line: 253, column: 32, scope: !4544)
!4579 = !DILocation(line: 253, column: 3, scope: !4544)
!4580 = distinct !{!4580, !4548, !4581}
!4581 = !DILocation(line: 264, column: 3, scope: !4541)
!4582 = !DILocation(line: 265, column: 2, scope: !4535)
!4583 = !DILocation(line: 250, column: 35, scope: !4529)
!4584 = !DILocation(line: 250, column: 2, scope: !4529)
!4585 = distinct !{!4585, !4533, !4586}
!4586 = !DILocation(line: 265, column: 2, scope: !4526)
!4587 = !DILocation(line: 267, column: 2, scope: !4501)
!4588 = !DILocation(line: 268, column: 1, scope: !4501)
!4589 = distinct !DISubprogram(name: "of_thermal_get_trip_type", scope: !3, file: !3, line: 270, type: !2160, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!4590 = !DILocalVariable(name: "tz", arg: 1, scope: !4589, file: !3, line: 270, type: !98)
!4591 = !DILocation(line: 270, column: 65, scope: !4589)
!4592 = !DILocalVariable(name: "trip", arg: 2, scope: !4589, file: !3, line: 270, type: !102)
!4593 = !DILocation(line: 270, column: 73, scope: !4589)
!4594 = !DILocalVariable(name: "type", arg: 3, scope: !4589, file: !3, line: 271, type: !2162)
!4595 = !DILocation(line: 271, column: 33, scope: !4589)
!4596 = !DILocalVariable(name: "data", scope: !4589, file: !3, line: 273, type: !2255)
!4597 = !DILocation(line: 273, column: 25, scope: !4589)
!4598 = !DILocation(line: 273, column: 32, scope: !4589)
!4599 = !DILocation(line: 273, column: 36, scope: !4589)
!4600 = !DILocation(line: 275, column: 6, scope: !4601)
!4601 = distinct !DILexicalBlock(scope: !4589, file: !3, line: 275, column: 6)
!4602 = !DILocation(line: 275, column: 14, scope: !4601)
!4603 = !DILocation(line: 275, column: 20, scope: !4601)
!4604 = !DILocation(line: 275, column: 11, scope: !4601)
!4605 = !DILocation(line: 275, column: 27, scope: !4601)
!4606 = !DILocation(line: 275, column: 30, scope: !4601)
!4607 = !DILocation(line: 275, column: 35, scope: !4601)
!4608 = !DILocation(line: 275, column: 6, scope: !4589)
!4609 = !DILocation(line: 276, column: 3, scope: !4601)
!4610 = !DILocation(line: 278, column: 10, scope: !4589)
!4611 = !DILocation(line: 278, column: 16, scope: !4589)
!4612 = !DILocation(line: 278, column: 22, scope: !4589)
!4613 = !DILocation(line: 278, column: 28, scope: !4589)
!4614 = !DILocation(line: 278, column: 3, scope: !4589)
!4615 = !DILocation(line: 278, column: 8, scope: !4589)
!4616 = !DILocation(line: 280, column: 2, scope: !4589)
!4617 = !DILocation(line: 281, column: 1, scope: !4589)
!4618 = distinct !DISubprogram(name: "of_thermal_get_trip_temp", scope: !3, file: !3, line: 283, type: !2165, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!4619 = !DILocalVariable(name: "tz", arg: 1, scope: !4618, file: !3, line: 283, type: !98)
!4620 = !DILocation(line: 283, column: 65, scope: !4618)
!4621 = !DILocalVariable(name: "trip", arg: 2, scope: !4618, file: !3, line: 283, type: !102)
!4622 = !DILocation(line: 283, column: 73, scope: !4618)
!4623 = !DILocalVariable(name: "temp", arg: 3, scope: !4618, file: !3, line: 284, type: !746)
!4624 = !DILocation(line: 284, column: 14, scope: !4618)
!4625 = !DILocalVariable(name: "data", scope: !4618, file: !3, line: 286, type: !2255)
!4626 = !DILocation(line: 286, column: 25, scope: !4618)
!4627 = !DILocation(line: 286, column: 32, scope: !4618)
!4628 = !DILocation(line: 286, column: 36, scope: !4618)
!4629 = !DILocation(line: 288, column: 6, scope: !4630)
!4630 = distinct !DILexicalBlock(scope: !4618, file: !3, line: 288, column: 6)
!4631 = !DILocation(line: 288, column: 14, scope: !4630)
!4632 = !DILocation(line: 288, column: 20, scope: !4630)
!4633 = !DILocation(line: 288, column: 11, scope: !4630)
!4634 = !DILocation(line: 288, column: 27, scope: !4630)
!4635 = !DILocation(line: 288, column: 30, scope: !4630)
!4636 = !DILocation(line: 288, column: 35, scope: !4630)
!4637 = !DILocation(line: 288, column: 6, scope: !4618)
!4638 = !DILocation(line: 289, column: 3, scope: !4630)
!4639 = !DILocation(line: 291, column: 10, scope: !4618)
!4640 = !DILocation(line: 291, column: 16, scope: !4618)
!4641 = !DILocation(line: 291, column: 22, scope: !4618)
!4642 = !DILocation(line: 291, column: 28, scope: !4618)
!4643 = !DILocation(line: 291, column: 3, scope: !4618)
!4644 = !DILocation(line: 291, column: 8, scope: !4618)
!4645 = !DILocation(line: 293, column: 2, scope: !4618)
!4646 = !DILocation(line: 294, column: 1, scope: !4618)
!4647 = distinct !DISubprogram(name: "of_thermal_set_trip_temp", scope: !3, file: !3, line: 296, type: !2152, scopeLine: 298, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!4648 = !DILocalVariable(name: "tz", arg: 1, scope: !4647, file: !3, line: 296, type: !98)
!4649 = !DILocation(line: 296, column: 65, scope: !4647)
!4650 = !DILocalVariable(name: "trip", arg: 2, scope: !4647, file: !3, line: 296, type: !102)
!4651 = !DILocation(line: 296, column: 73, scope: !4647)
!4652 = !DILocalVariable(name: "temp", arg: 3, scope: !4647, file: !3, line: 297, type: !102)
!4653 = !DILocation(line: 297, column: 13, scope: !4647)
!4654 = !DILocalVariable(name: "data", scope: !4647, file: !3, line: 299, type: !2255)
!4655 = !DILocation(line: 299, column: 25, scope: !4647)
!4656 = !DILocation(line: 299, column: 32, scope: !4647)
!4657 = !DILocation(line: 299, column: 36, scope: !4647)
!4658 = !DILocation(line: 301, column: 6, scope: !4659)
!4659 = distinct !DILexicalBlock(scope: !4647, file: !3, line: 301, column: 6)
!4660 = !DILocation(line: 301, column: 14, scope: !4659)
!4661 = !DILocation(line: 301, column: 20, scope: !4659)
!4662 = !DILocation(line: 301, column: 11, scope: !4659)
!4663 = !DILocation(line: 301, column: 27, scope: !4659)
!4664 = !DILocation(line: 301, column: 30, scope: !4659)
!4665 = !DILocation(line: 301, column: 35, scope: !4659)
!4666 = !DILocation(line: 301, column: 6, scope: !4647)
!4667 = !DILocation(line: 302, column: 3, scope: !4659)
!4668 = !DILocation(line: 304, column: 6, scope: !4669)
!4669 = distinct !DILexicalBlock(scope: !4647, file: !3, line: 304, column: 6)
!4670 = !DILocation(line: 304, column: 12, scope: !4669)
!4671 = !DILocation(line: 304, column: 17, scope: !4669)
!4672 = !DILocation(line: 304, column: 6, scope: !4647)
!4673 = !DILocalVariable(name: "ret", scope: !4674, file: !3, line: 305, type: !102)
!4674 = distinct !DILexicalBlock(scope: !4669, file: !3, line: 304, column: 32)
!4675 = !DILocation(line: 305, column: 7, scope: !4674)
!4676 = !DILocation(line: 307, column: 9, scope: !4674)
!4677 = !DILocation(line: 307, column: 15, scope: !4674)
!4678 = !DILocation(line: 307, column: 20, scope: !4674)
!4679 = !DILocation(line: 307, column: 34, scope: !4674)
!4680 = !DILocation(line: 307, column: 40, scope: !4674)
!4681 = !DILocation(line: 307, column: 53, scope: !4674)
!4682 = !DILocation(line: 307, column: 59, scope: !4674)
!4683 = !DILocation(line: 307, column: 7, scope: !4674)
!4684 = !DILocation(line: 308, column: 7, scope: !4685)
!4685 = distinct !DILexicalBlock(scope: !4674, file: !3, line: 308, column: 7)
!4686 = !DILocation(line: 308, column: 7, scope: !4674)
!4687 = !DILocation(line: 309, column: 11, scope: !4685)
!4688 = !DILocation(line: 309, column: 4, scope: !4685)
!4689 = !DILocation(line: 310, column: 2, scope: !4674)
!4690 = !DILocation(line: 313, column: 34, scope: !4647)
!4691 = !DILocation(line: 313, column: 2, scope: !4647)
!4692 = !DILocation(line: 313, column: 8, scope: !4647)
!4693 = !DILocation(line: 313, column: 14, scope: !4647)
!4694 = !DILocation(line: 313, column: 20, scope: !4647)
!4695 = !DILocation(line: 313, column: 32, scope: !4647)
!4696 = !DILocation(line: 315, column: 2, scope: !4647)
!4697 = !DILocation(line: 316, column: 1, scope: !4647)
!4698 = distinct !DISubprogram(name: "of_thermal_get_trip_hyst", scope: !3, file: !3, line: 318, type: !2165, scopeLine: 320, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!4699 = !DILocalVariable(name: "tz", arg: 1, scope: !4698, file: !3, line: 318, type: !98)
!4700 = !DILocation(line: 318, column: 65, scope: !4698)
!4701 = !DILocalVariable(name: "trip", arg: 2, scope: !4698, file: !3, line: 318, type: !102)
!4702 = !DILocation(line: 318, column: 73, scope: !4698)
!4703 = !DILocalVariable(name: "hyst", arg: 3, scope: !4698, file: !3, line: 319, type: !746)
!4704 = !DILocation(line: 319, column: 14, scope: !4698)
!4705 = !DILocalVariable(name: "data", scope: !4698, file: !3, line: 321, type: !2255)
!4706 = !DILocation(line: 321, column: 25, scope: !4698)
!4707 = !DILocation(line: 321, column: 32, scope: !4698)
!4708 = !DILocation(line: 321, column: 36, scope: !4698)
!4709 = !DILocation(line: 323, column: 6, scope: !4710)
!4710 = distinct !DILexicalBlock(scope: !4698, file: !3, line: 323, column: 6)
!4711 = !DILocation(line: 323, column: 14, scope: !4710)
!4712 = !DILocation(line: 323, column: 20, scope: !4710)
!4713 = !DILocation(line: 323, column: 11, scope: !4710)
!4714 = !DILocation(line: 323, column: 27, scope: !4710)
!4715 = !DILocation(line: 323, column: 30, scope: !4710)
!4716 = !DILocation(line: 323, column: 35, scope: !4710)
!4717 = !DILocation(line: 323, column: 6, scope: !4698)
!4718 = !DILocation(line: 324, column: 3, scope: !4710)
!4719 = !DILocation(line: 326, column: 10, scope: !4698)
!4720 = !DILocation(line: 326, column: 16, scope: !4698)
!4721 = !DILocation(line: 326, column: 22, scope: !4698)
!4722 = !DILocation(line: 326, column: 28, scope: !4698)
!4723 = !DILocation(line: 326, column: 3, scope: !4698)
!4724 = !DILocation(line: 326, column: 8, scope: !4698)
!4725 = !DILocation(line: 328, column: 2, scope: !4698)
!4726 = !DILocation(line: 329, column: 1, scope: !4698)
!4727 = distinct !DISubprogram(name: "of_thermal_set_trip_hyst", scope: !3, file: !3, line: 331, type: !2152, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!4728 = !DILocalVariable(name: "tz", arg: 1, scope: !4727, file: !3, line: 331, type: !98)
!4729 = !DILocation(line: 331, column: 65, scope: !4727)
!4730 = !DILocalVariable(name: "trip", arg: 2, scope: !4727, file: !3, line: 331, type: !102)
!4731 = !DILocation(line: 331, column: 73, scope: !4727)
!4732 = !DILocalVariable(name: "hyst", arg: 3, scope: !4727, file: !3, line: 332, type: !102)
!4733 = !DILocation(line: 332, column: 13, scope: !4727)
!4734 = !DILocalVariable(name: "data", scope: !4727, file: !3, line: 334, type: !2255)
!4735 = !DILocation(line: 334, column: 25, scope: !4727)
!4736 = !DILocation(line: 334, column: 32, scope: !4727)
!4737 = !DILocation(line: 334, column: 36, scope: !4727)
!4738 = !DILocation(line: 336, column: 6, scope: !4739)
!4739 = distinct !DILexicalBlock(scope: !4727, file: !3, line: 336, column: 6)
!4740 = !DILocation(line: 336, column: 14, scope: !4739)
!4741 = !DILocation(line: 336, column: 20, scope: !4739)
!4742 = !DILocation(line: 336, column: 11, scope: !4739)
!4743 = !DILocation(line: 336, column: 27, scope: !4739)
!4744 = !DILocation(line: 336, column: 30, scope: !4739)
!4745 = !DILocation(line: 336, column: 35, scope: !4739)
!4746 = !DILocation(line: 336, column: 6, scope: !4727)
!4747 = !DILocation(line: 337, column: 3, scope: !4739)
!4748 = !DILocation(line: 340, column: 33, scope: !4727)
!4749 = !DILocation(line: 340, column: 2, scope: !4727)
!4750 = !DILocation(line: 340, column: 8, scope: !4727)
!4751 = !DILocation(line: 340, column: 14, scope: !4727)
!4752 = !DILocation(line: 340, column: 20, scope: !4727)
!4753 = !DILocation(line: 340, column: 31, scope: !4727)
!4754 = !DILocation(line: 342, column: 2, scope: !4727)
!4755 = !DILocation(line: 343, column: 1, scope: !4727)
!4756 = distinct !DISubprogram(name: "of_thermal_get_crit_temp", scope: !3, file: !3, line: 345, type: !2148, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!4757 = !DILocalVariable(name: "tz", arg: 1, scope: !4756, file: !3, line: 345, type: !98)
!4758 = !DILocation(line: 345, column: 65, scope: !4756)
!4759 = !DILocalVariable(name: "temp", arg: 2, scope: !4756, file: !3, line: 346, type: !746)
!4760 = !DILocation(line: 346, column: 14, scope: !4756)
!4761 = !DILocalVariable(name: "data", scope: !4756, file: !3, line: 348, type: !2255)
!4762 = !DILocation(line: 348, column: 25, scope: !4756)
!4763 = !DILocation(line: 348, column: 32, scope: !4756)
!4764 = !DILocation(line: 348, column: 36, scope: !4756)
!4765 = !DILocalVariable(name: "i", scope: !4756, file: !3, line: 349, type: !102)
!4766 = !DILocation(line: 349, column: 6, scope: !4756)
!4767 = !DILocation(line: 351, column: 9, scope: !4768)
!4768 = distinct !DILexicalBlock(scope: !4756, file: !3, line: 351, column: 2)
!4769 = !DILocation(line: 351, column: 7, scope: !4768)
!4770 = !DILocation(line: 351, column: 14, scope: !4771)
!4771 = distinct !DILexicalBlock(scope: !4768, file: !3, line: 351, column: 2)
!4772 = !DILocation(line: 351, column: 18, scope: !4771)
!4773 = !DILocation(line: 351, column: 24, scope: !4771)
!4774 = !DILocation(line: 351, column: 16, scope: !4771)
!4775 = !DILocation(line: 351, column: 2, scope: !4768)
!4776 = !DILocation(line: 352, column: 7, scope: !4777)
!4777 = distinct !DILexicalBlock(scope: !4771, file: !3, line: 352, column: 7)
!4778 = !DILocation(line: 352, column: 13, scope: !4777)
!4779 = !DILocation(line: 352, column: 19, scope: !4777)
!4780 = !DILocation(line: 352, column: 22, scope: !4777)
!4781 = !DILocation(line: 352, column: 27, scope: !4777)
!4782 = !DILocation(line: 352, column: 7, scope: !4771)
!4783 = !DILocation(line: 353, column: 12, scope: !4784)
!4784 = distinct !DILexicalBlock(scope: !4777, file: !3, line: 352, column: 53)
!4785 = !DILocation(line: 353, column: 18, scope: !4784)
!4786 = !DILocation(line: 353, column: 24, scope: !4784)
!4787 = !DILocation(line: 353, column: 27, scope: !4784)
!4788 = !DILocation(line: 353, column: 5, scope: !4784)
!4789 = !DILocation(line: 353, column: 10, scope: !4784)
!4790 = !DILocation(line: 354, column: 4, scope: !4784)
!4791 = !DILocation(line: 352, column: 30, scope: !4777)
!4792 = !DILocation(line: 351, column: 33, scope: !4771)
!4793 = !DILocation(line: 351, column: 2, scope: !4771)
!4794 = distinct !{!4794, !4775, !4795}
!4795 = !DILocation(line: 355, column: 3, scope: !4768)
!4796 = !DILocation(line: 357, column: 2, scope: !4756)
!4797 = !DILocation(line: 358, column: 1, scope: !4756)
