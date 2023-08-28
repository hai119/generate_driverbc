; ModuleID = '../bcout/drivers/thermal/intel/int340x_thermal/int340x_thermal_zone.llvm.bc'
source_filename = "drivers/thermal/intel/int340x_thermal/int340x_thermal_zone.c"
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
%struct.irq_domain = type { %struct.list_head, i8*, %struct.irq_domain_ops*, i8*, i32, i32, %struct.fwnode_handle*, i32, %struct.irq_domain_chip_generic*, %struct.irq_domain*, i64, i32, i32, %struct.xarray, %struct.mutex, [0 x i32] }
%struct.irq_domain_ops = type { i32 (%struct.irq_domain*, %struct.device_node*, i32)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)*, i32 (%struct.irq_domain*, i32, i64)*, void (%struct.irq_domain*, i32)*, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)*, i32 (%struct.irq_domain*, i32, i32, i8*)*, void (%struct.irq_domain*, i32, i32)*, i32 (%struct.irq_domain*, %struct.irq_data*, i1)*, void (%struct.irq_domain*, %struct.irq_data*)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* }
%struct.irq_fwspec = type { %struct.fwnode_handle*, i32, [16 x i32] }
%struct.irq_data = type opaque
%struct.irq_domain_chip_generic = type opaque
%struct.xarray = type { %struct.spinlock, i32, i8* }
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
%struct.thermal_attr = type opaque
%struct.atomic_t = type { i32 }
%struct.thermal_zone_params = type { [20 x i8], i8, i32, %struct.thermal_bind_params*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thermal_bind_params = type { %struct.thermal_cooling_device*, i32, i32, i64*, i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)* }
%struct.thermal_governor = type { [20 x i8], i32 (%struct.thermal_zone_device*)*, void (%struct.thermal_zone_device*)*, i32 (%struct.thermal_zone_device*, i32)*, %struct.list_head }
%struct.ida = type { %struct.xarray }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.workqueue_struct = type opaque
%struct.thermal_cooling_device = type { i32, [20 x i8], %struct.device, %struct.device_node*, i8*, i8*, %struct.thermal_cooling_device_ops*, i8, %struct.mutex, %struct.list_head, %struct.list_head }
%struct.thermal_cooling_device_ops = type { i32 (%struct.thermal_cooling_device*, i64*)*, i32 (%struct.thermal_cooling_device*, i64*)*, i32 (%struct.thermal_cooling_device*, i64)*, i32 (%struct.thermal_cooling_device*, i32*)*, i32 (%struct.thermal_cooling_device*, i64, i32*)*, i32 (%struct.thermal_cooling_device*, i32, i64*)* }
%struct.kmem_cache = type opaque
%struct.int34x_thermal_zone = type { %struct.acpi_device*, [10 x %struct.active_trip], i64*, i32, i32, i32, i32, i32, i32, i32, %struct.thermal_zone_device*, %struct.thermal_zone_device_ops*, i8*, %struct.acpi_lpat_conversion_table* }
%struct.acpi_device = type { i32, i8*, %struct.fwnode_handle, %struct.acpi_device*, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.acpi_device_status, %struct.acpi_device_flags, %struct.acpi_device_pnp, %struct.acpi_device_power, %struct.acpi_device_wakeup, %struct.acpi_device_perf, %struct.acpi_device_dir, %struct.acpi_device_data, %struct.acpi_scan_handler*, %struct.acpi_hotplug_context*, %struct.acpi_driver*, %struct.acpi_gpio_mapping*, i8*, %struct.device, i32, i32, %struct.list_head, %struct.mutex, void (%struct.acpi_device*)* }
%struct.acpi_device_status = type { i32 }
%struct.acpi_device_flags = type { i32 }
%struct.acpi_device_pnp = type { [8 x i8], %struct.acpi_pnp_type, i64, i8*, %struct.list_head, [40 x i8], [20 x i8], %union.acpi_object* }
%struct.acpi_pnp_type = type { i32 }
%union.acpi_object = type { %struct.anon.43 }
%struct.anon.43 = type { i32, i32, i64, i32 }
%struct.acpi_device_power = type { i32, %struct.acpi_device_power_flags, [5 x %struct.acpi_device_power_state] }
%struct.acpi_device_power_flags = type { i32 }
%struct.acpi_device_power_state = type { %struct.anon.45, i32, i32, %struct.list_head }
%struct.anon.45 = type { i8 }
%struct.acpi_device_wakeup = type { i8*, i64, i64, %struct.list_head, %struct.acpi_device_wakeup_flags, %struct.acpi_device_wakeup_context, %struct.wakeup_source*, i32, i32 }
%struct.acpi_device_wakeup_flags = type { i8 }
%struct.acpi_device_wakeup_context = type { void (%struct.acpi_device_wakeup_context*)*, %struct.device* }
%struct.acpi_device_perf = type { i32, %struct.acpi_device_perf_flags, i32, %struct.acpi_device_perf_state* }
%struct.acpi_device_perf_flags = type { i8 }
%struct.acpi_device_perf_state = type { %struct.anon.46, i8, i8, i32 }
%struct.anon.46 = type { i8 }
%struct.acpi_device_dir = type { %struct.proc_dir_entry* }
%struct.proc_dir_entry = type opaque
%struct.acpi_device_data = type { %union.acpi_object*, %struct.list_head, %union.acpi_object*, %struct.list_head }
%struct.acpi_scan_handler = type { %struct.acpi_device_id*, %struct.list_head, i1 (i8*, %struct.acpi_device_id**)*, i32 (%struct.acpi_device*, %struct.acpi_device_id*)*, void (%struct.acpi_device*)*, void (%struct.device*)*, void (%struct.device*)*, %struct.acpi_hotplug_profile }
%struct.acpi_hotplug_profile = type { %struct.kobject, i32 (%struct.acpi_device*)*, void (%struct.acpi_device*)*, i8 }
%struct.acpi_hotplug_context = type { %struct.acpi_device*, i32 (%struct.acpi_device*, i32)*, void (%struct.acpi_device*, i32)*, void (%struct.acpi_device*)* }
%struct.acpi_driver = type { [80 x i8], [80 x i8], %struct.acpi_device_id*, i32, %struct.acpi_device_ops, %struct.device_driver, %struct.module* }
%struct.acpi_device_ops = type { i32 (%struct.acpi_device*)*, i32 (%struct.acpi_device*)*, void (%struct.acpi_device*, i32)* }
%struct.acpi_gpio_mapping = type opaque
%struct.active_trip = type { i32, i32, i8 }
%struct.acpi_lpat_conversion_table = type { %struct.acpi_lpat*, i32 }
%struct.acpi_lpat = type { i32, i32 }
%struct.acpi_object_list = type { i32, %union.acpi_object* }

@.str = private unnamed_addr constant [5 x i8] c"_CRT\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"_HOT\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"_PSV\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"PATC\00", align 1
@int340x_thermal_zone_ops = internal global %struct.thermal_zone_device_ops { i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)* null, i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)* null, i32 (%struct.thermal_zone_device*, i32*)* @int340x_thermal_get_zone_temp, i32 (%struct.thermal_zone_device*, i32, i32)* null, i32 (%struct.thermal_zone_device*, i32)* null, i32 (%struct.thermal_zone_device*, i32, i32*)* @int340x_thermal_get_trip_type, i32 (%struct.thermal_zone_device*, i32, i32*)* @int340x_thermal_get_trip_temp, i32 (%struct.thermal_zone_device*, i32, i32)* @int340x_thermal_set_trip_temp, i32 (%struct.thermal_zone_device*, i32, i32*)* @int340x_thermal_get_trip_hyst, i32 (%struct.thermal_zone_device*, i32, i32)* null, i32 (%struct.thermal_zone_device*, i32*)* null, i32 (%struct.thermal_zone_device*, i32)* null, i32 (%struct.thermal_zone_device*, i32, i32*)* null, i32 (%struct.thermal_zone_device*, i32, i32)* null }, align 8, !dbg !0
@int340x_thermal_params = internal global %struct.thermal_zone_params { [20 x i8] c"user_space\00\00\00\00\00\00\00\00\00\00", i8 1, i32 0, %struct.thermal_bind_params* null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, align 8, !dbg !141
@__UNIQUE_ID_author169 = internal constant [58 x i8] c"int340x_thermal_zone.author=Aaron Lu <aaron.lu@intel.com>\00", section ".modinfo", align 1, !dbg !114
@__UNIQUE_ID_author170 = internal constant [86 x i8] c"int340x_thermal_zone.author=Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>\00", section ".modinfo", align 1, !dbg !121
@__UNIQUE_ID_description171 = internal constant [75 x i8] c"int340x_thermal_zone.description=Intel INT340x common thermal zone handler\00", section ".modinfo", align 1, !dbg !126
@__UNIQUE_ID_file172 = internal constant [85 x i8] c"int340x_thermal_zone.file=drivers/thermal/intel/int340x_thermal/int340x_thermal_zone\00", section ".modinfo", align 1, !dbg !131
@__UNIQUE_ID_license173 = internal constant [36 x i8] c"int340x_thermal_zone.license=GPL v2\00", section ".modinfo", align 1, !dbg !136
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"_TMP\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"PAT%d\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"GTSH\00", align 1
@llvm.used = appending global [5 x i8*] [i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__UNIQUE_ID_author169, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @__UNIQUE_ID_author170, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @__UNIQUE_ID_description171, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @__UNIQUE_ID_file172, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__UNIQUE_ID_license173, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @int340x_thermal_read_trips(%struct.int34x_thermal_zone* %int34x_zone) #0 !dbg !2379 {
entry:
  %int34x_zone.addr = alloca %struct.int34x_thermal_zone*, align 8
  %trip_cnt = alloca i32, align 4
  %i = alloca i32, align 4
  %name = alloca [5 x i8], align 1
  store %struct.int34x_thermal_zone* %int34x_zone, %struct.int34x_thermal_zone** %int34x_zone.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.int34x_thermal_zone** %int34x_zone.addr, metadata !2700, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.declare(metadata i32* %trip_cnt, metadata !2702, metadata !DIExpression()), !dbg !2703
  %0 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %int34x_zone.addr, align 8, !dbg !2704
  %aux_trip_nr = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %0, i32 0, i32 3, !dbg !2705
  %1 = load i32, i32* %aux_trip_nr, align 8, !dbg !2705
  store i32 %1, i32* %trip_cnt, align 4, !dbg !2703
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2706, metadata !DIExpression()), !dbg !2707
  %2 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %int34x_zone.addr, align 8, !dbg !2708
  %crt_trip_id = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %2, i32 0, i32 7, !dbg !2709
  store i32 -1, i32* %crt_trip_id, align 8, !dbg !2710
  %3 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %int34x_zone.addr, align 8, !dbg !2711
  %adev = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %3, i32 0, i32 0, !dbg !2713
  %4 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !2713
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %4, i32 0, i32 1, !dbg !2714
  %5 = load i8*, i8** %handle, align 8, !dbg !2714
  %6 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %int34x_zone.addr, align 8, !dbg !2715
  %crt_temp = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %6, i32 0, i32 6, !dbg !2716
  %call = call i32 @int340x_thermal_get_trip_config(i8* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %crt_temp) #6, !dbg !2717
  %tobool = icmp ne i32 %call, 0, !dbg !2717
  br i1 %tobool, label %if.end, label %if.then, !dbg !2718

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %trip_cnt, align 4, !dbg !2719
  %inc = add i32 %7, 1, !dbg !2719
  store i32 %inc, i32* %trip_cnt, align 4, !dbg !2719
  %8 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %int34x_zone.addr, align 8, !dbg !2720
  %crt_trip_id1 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %8, i32 0, i32 7, !dbg !2721
  store i32 %7, i32* %crt_trip_id1, align 8, !dbg !2722
  br label %if.end, !dbg !2720

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %int34x_zone.addr, align 8, !dbg !2723
  %hot_trip_id = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %9, i32 0, i32 9, !dbg !2724
  store i32 -1, i32* %hot_trip_id, align 8, !dbg !2725
  %10 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %int34x_zone.addr, align 8, !dbg !2726
  %adev2 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %10, i32 0, i32 0, !dbg !2728
  %11 = load %struct.acpi_device*, %struct.acpi_device** %adev2, align 8, !dbg !2728
  %handle3 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %11, i32 0, i32 1, !dbg !2729
  %12 = load i8*, i8** %handle3, align 8, !dbg !2729
  %13 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %int34x_zone.addr, align 8, !dbg !2730
  %hot_temp = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %13, i32 0, i32 8, !dbg !2731
  %call4 = call i32 @int340x_thermal_get_trip_config(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %hot_temp) #6, !dbg !2732
  %tobool5 = icmp ne i32 %call4, 0, !dbg !2732
  br i1 %tobool5, label %if.end9, label %if.then6, !dbg !2733

if.then6:                                         ; preds = %if.end
  %14 = load i32, i32* %trip_cnt, align 4, !dbg !2734
  %inc7 = add i32 %14, 1, !dbg !2734
  store i32 %inc7, i32* %trip_cnt, align 4, !dbg !2734
  %15 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %int34x_zone.addr, align 8, !dbg !2735
  %hot_trip_id8 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %15, i32 0, i32 9, !dbg !2736
  store i32 %14, i32* %hot_trip_id8, align 8, !dbg !2737
  br label %if.end9, !dbg !2735

if.end9:                                          ; preds = %if.then6, %if.end
  %16 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %int34x_zone.addr, align 8, !dbg !2738
  %psv_trip_id = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %16, i32 0, i32 5, !dbg !2739
  store i32 -1, i32* %psv_trip_id, align 8, !dbg !2740
  %17 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %int34x_zone.addr, align 8, !dbg !2741
  %adev10 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %17, i32 0, i32 0, !dbg !2743
  %18 = load %struct.acpi_device*, %struct.acpi_device** %adev10, align 8, !dbg !2743
  %handle11 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %18, i32 0, i32 1, !dbg !2744
  %19 = load i8*, i8** %handle11, align 8, !dbg !2744
  %20 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %int34x_zone.addr, align 8, !dbg !2745
  %psv_temp = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %20, i32 0, i32 4, !dbg !2746
  %call12 = call i32 @int340x_thermal_get_trip_config(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %psv_temp) #6, !dbg !2747
  %tobool13 = icmp ne i32 %call12, 0, !dbg !2747
  br i1 %tobool13, label %if.end17, label %if.then14, !dbg !2748

if.then14:                                        ; preds = %if.end9
  %21 = load i32, i32* %trip_cnt, align 4, !dbg !2749
  %inc15 = add i32 %21, 1, !dbg !2749
  store i32 %inc15, i32* %trip_cnt, align 4, !dbg !2749
  %22 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %int34x_zone.addr, align 8, !dbg !2750
  %psv_trip_id16 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %22, i32 0, i32 5, !dbg !2751
  store i32 %21, i32* %psv_trip_id16, align 8, !dbg !2752
  br label %if.end17, !dbg !2750

if.end17:                                         ; preds = %if.then14, %if.end9
  store i32 0, i32* %i, align 4, !dbg !2753
  br label %for.cond, !dbg !2755

for.cond:                                         ; preds = %for.inc, %if.end17
  %23 = load i32, i32* %i, align 4, !dbg !2756
  %cmp = icmp slt i32 %23, 10, !dbg !2758
  br i1 %cmp, label %for.body, label %for.end, !dbg !2759

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata [5 x i8]* %name, metadata !2760, metadata !DIExpression()), !dbg !2763
  %arrayinit.begin = getelementptr inbounds [5 x i8], [5 x i8]* %name, i64 0, i64 0, !dbg !2764
  store i8 95, i8* %arrayinit.begin, align 1, !dbg !2764
  %arrayinit.element = getelementptr inbounds i8, i8* %arrayinit.begin, i64 1, !dbg !2764
  store i8 65, i8* %arrayinit.element, align 1, !dbg !2764
  %arrayinit.element18 = getelementptr inbounds i8, i8* %arrayinit.element, i64 1, !dbg !2764
  store i8 67, i8* %arrayinit.element18, align 1, !dbg !2764
  %arrayinit.element19 = getelementptr inbounds i8, i8* %arrayinit.element18, i64 1, !dbg !2764
  %24 = load i32, i32* %i, align 4, !dbg !2765
  %add = add i32 48, %24, !dbg !2766
  %conv = trunc i32 %add to i8, !dbg !2767
  store i8 %conv, i8* %arrayinit.element19, align 1, !dbg !2764
  %arrayinit.element20 = getelementptr inbounds i8, i8* %arrayinit.element19, i64 1, !dbg !2764
  store i8 0, i8* %arrayinit.element20, align 1, !dbg !2764
  %25 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %int34x_zone.addr, align 8, !dbg !2768
  %adev21 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %25, i32 0, i32 0, !dbg !2770
  %26 = load %struct.acpi_device*, %struct.acpi_device** %adev21, align 8, !dbg !2770
  %handle22 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %26, i32 0, i32 1, !dbg !2771
  %27 = load i8*, i8** %handle22, align 8, !dbg !2771
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %name, i64 0, i64 0, !dbg !2772
  %28 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %int34x_zone.addr, align 8, !dbg !2773
  %act_trips = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %28, i32 0, i32 1, !dbg !2774
  %29 = load i32, i32* %i, align 4, !dbg !2775
  %idxprom = sext i32 %29 to i64, !dbg !2773
  %arrayidx = getelementptr [10 x %struct.active_trip], [10 x %struct.active_trip]* %act_trips, i64 0, i64 %idxprom, !dbg !2773
  %temp = getelementptr inbounds %struct.active_trip, %struct.active_trip* %arrayidx, i32 0, i32 0, !dbg !2776
  %call23 = call i32 @int340x_thermal_get_trip_config(i8* %27, i8* %arraydecay, i32* %temp) #6, !dbg !2777
  %tobool24 = icmp ne i32 %call23, 0, !dbg !2777
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !2778

if.then25:                                        ; preds = %for.body
  br label %for.end, !dbg !2779

if.end26:                                         ; preds = %for.body
  %30 = load i32, i32* %trip_cnt, align 4, !dbg !2780
  %inc27 = add i32 %30, 1, !dbg !2780
  store i32 %inc27, i32* %trip_cnt, align 4, !dbg !2780
  %31 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %int34x_zone.addr, align 8, !dbg !2781
  %act_trips28 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %31, i32 0, i32 1, !dbg !2782
  %32 = load i32, i32* %i, align 4, !dbg !2783
  %idxprom29 = sext i32 %32 to i64, !dbg !2781
  %arrayidx30 = getelementptr [10 x %struct.active_trip], [10 x %struct.active_trip]* %act_trips28, i64 0, i64 %idxprom29, !dbg !2781
  %id = getelementptr inbounds %struct.active_trip, %struct.active_trip* %arrayidx30, i32 0, i32 1, !dbg !2784
  store i32 %30, i32* %id, align 4, !dbg !2785
  %33 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %int34x_zone.addr, align 8, !dbg !2786
  %act_trips31 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %33, i32 0, i32 1, !dbg !2787
  %34 = load i32, i32* %i, align 4, !dbg !2788
  %idxprom32 = sext i32 %34 to i64, !dbg !2786
  %arrayidx33 = getelementptr [10 x %struct.active_trip], [10 x %struct.active_trip]* %act_trips31, i64 0, i64 %idxprom32, !dbg !2786
  %valid = getelementptr inbounds %struct.active_trip, %struct.active_trip* %arrayidx33, i32 0, i32 2, !dbg !2789
  store i8 1, i8* %valid, align 4, !dbg !2790
  br label %for.inc, !dbg !2791

for.inc:                                          ; preds = %if.end26
  %35 = load i32, i32* %i, align 4, !dbg !2792
  %inc34 = add i32 %35, 1, !dbg !2792
  store i32 %inc34, i32* %i, align 4, !dbg !2792
  br label %for.cond, !dbg !2793, !llvm.loop !2794

for.end:                                          ; preds = %if.then25, %for.cond
  %36 = load i32, i32* %trip_cnt, align 4, !dbg !2796
  ret i32 %36, !dbg !2797
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @int340x_thermal_get_trip_config(i8* %handle, i8* %name, i32* %temp) #0 !dbg !2798 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %temp.addr = alloca i32*, align 8
  %r = alloca i64, align 8
  %status = alloca i32, align 4
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !2801, metadata !DIExpression()), !dbg !2802
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !2803, metadata !DIExpression()), !dbg !2804
  store i32* %temp, i32** %temp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %temp.addr, metadata !2805, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.declare(metadata i64* %r, metadata !2807, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.declare(metadata i32* %status, metadata !2809, metadata !DIExpression()), !dbg !2811
  %0 = load i8*, i8** %handle.addr, align 8, !dbg !2812
  %1 = load i8*, i8** %name.addr, align 8, !dbg !2813
  %call = call i32 @acpi_evaluate_integer(i8* %0, i8* %1, %struct.acpi_object_list* null, i64* %r) #6, !dbg !2814
  store i32 %call, i32* %status, align 4, !dbg !2815
  %2 = load i32, i32* %status, align 4, !dbg !2816
  %tobool = icmp ne i32 %2, 0, !dbg !2816
  br i1 %tobool, label %if.then, label %if.end, !dbg !2818

if.then:                                          ; preds = %entry
  store i32 -5, i32* %retval, align 4, !dbg !2819
  br label %return, !dbg !2819

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %r, align 8, !dbg !2820
  %call1 = call i64 @deci_kelvin_to_millicelsius(i64 %3) #6, !dbg !2821
  %conv = trunc i64 %call1 to i32, !dbg !2821
  %4 = load i32*, i32** %temp.addr, align 8, !dbg !2822
  store i32 %conv, i32* %4, align 4, !dbg !2823
  store i32 0, i32* %retval, align 4, !dbg !2824
  br label %return, !dbg !2824

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !2825
  ret i32 %5, !dbg !2825
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.int34x_thermal_zone* @int340x_thermal_zone_add(%struct.acpi_device* %adev, %struct.thermal_zone_device_ops* %override_ops) #0 !dbg !2826 {
entry:
  %retval = alloca %struct.int34x_thermal_zone*, align 8
  %adev.addr = alloca %struct.acpi_device*, align 8
  %override_ops.addr = alloca %struct.thermal_zone_device_ops*, align 8
  %int34x_thermal_zone = alloca %struct.int34x_thermal_zone*, align 8
  %status = alloca i32, align 4
  %trip_cnt = alloca i64, align 8
  %trip_mask = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !2829, metadata !DIExpression()), !dbg !2830
  store %struct.thermal_zone_device_ops* %override_ops, %struct.thermal_zone_device_ops** %override_ops.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device_ops** %override_ops.addr, metadata !2831, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.declare(metadata %struct.int34x_thermal_zone** %int34x_thermal_zone, metadata !2833, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.declare(metadata i32* %status, metadata !2835, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.declare(metadata i64* %trip_cnt, metadata !2837, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.declare(metadata i32* %trip_mask, metadata !2839, metadata !DIExpression()), !dbg !2840
  store i32 0, i32* %trip_mask, align 4, !dbg !2840
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2841, metadata !DIExpression()), !dbg !2842
  %call = call i8* @kzalloc(i64 200, i32 3264) #6, !dbg !2843
  %0 = bitcast i8* %call to %struct.int34x_thermal_zone*, !dbg !2843
  store %struct.int34x_thermal_zone* %0, %struct.int34x_thermal_zone** %int34x_thermal_zone, align 8, !dbg !2844
  %1 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %int34x_thermal_zone, align 8, !dbg !2845
  %tobool = icmp ne %struct.int34x_thermal_zone* %1, null, !dbg !2845
  br i1 %tobool, label %if.end, label %if.then, !dbg !2847

if.then:                                          ; preds = %entry
  %call1 = call i8* @ERR_PTR(i64 -12) #6, !dbg !2848
  %2 = bitcast i8* %call1 to %struct.int34x_thermal_zone*, !dbg !2848
  store %struct.int34x_thermal_zone* %2, %struct.int34x_thermal_zone** %retval, align 8, !dbg !2849
  br label %return, !dbg !2849

if.end:                                           ; preds = %entry
  %3 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !2850
  %4 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %int34x_thermal_zone, align 8, !dbg !2851
  %adev2 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %4, i32 0, i32 0, !dbg !2852
  store %struct.acpi_device* %3, %struct.acpi_device** %adev2, align 8, !dbg !2853
  %5 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %override_ops.addr, align 8, !dbg !2854
  %6 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %int34x_thermal_zone, align 8, !dbg !2855
  %override_ops3 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %6, i32 0, i32 11, !dbg !2856
  store %struct.thermal_zone_device_ops* %5, %struct.thermal_zone_device_ops** %override_ops3, align 8, !dbg !2857
  %7 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !2858
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %7, i32 0, i32 1, !dbg !2859
  %8 = load i8*, i8** %handle, align 8, !dbg !2859
  %call4 = call i32 @acpi_evaluate_integer(i8* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), %struct.acpi_object_list* null, i64* %trip_cnt) #6, !dbg !2860
  store i32 %call4, i32* %status, align 4, !dbg !2861
  %9 = load i32, i32* %status, align 4, !dbg !2862
  %tobool5 = icmp ne i32 %9, 0, !dbg !2862
  br i1 %tobool5, label %if.then6, label %if.else, !dbg !2864

if.then6:                                         ; preds = %if.end
  store i64 0, i64* %trip_cnt, align 8, !dbg !2865
  br label %if.end13, !dbg !2866

if.else:                                          ; preds = %if.end
  %10 = load i64, i64* %trip_cnt, align 8, !dbg !2867
  %call7 = call i8* @kcalloc(i64 %10, i64 8, i32 3264) #6, !dbg !2869
  %11 = bitcast i8* %call7 to i64*, !dbg !2869
  %12 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %int34x_thermal_zone, align 8, !dbg !2870
  %aux_trips = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %12, i32 0, i32 2, !dbg !2871
  store i64* %11, i64** %aux_trips, align 8, !dbg !2872
  %13 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %int34x_thermal_zone, align 8, !dbg !2873
  %aux_trips8 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %13, i32 0, i32 2, !dbg !2875
  %14 = load i64*, i64** %aux_trips8, align 8, !dbg !2875
  %tobool9 = icmp ne i64* %14, null, !dbg !2873
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !2876

if.then10:                                        ; preds = %if.else
  store i32 -12, i32* %ret, align 4, !dbg !2877
  br label %err_trip_alloc, !dbg !2879

if.end11:                                         ; preds = %if.else
  %15 = load i64, i64* %trip_cnt, align 8, !dbg !2880
  %shl = shl i64 1, %15, !dbg !2880
  %sub = sub i64 %shl, 1, !dbg !2881
  %conv = trunc i64 %sub to i32, !dbg !2880
  store i32 %conv, i32* %trip_mask, align 4, !dbg !2882
  %16 = load i64, i64* %trip_cnt, align 8, !dbg !2883
  %conv12 = trunc i64 %16 to i32, !dbg !2883
  %17 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %int34x_thermal_zone, align 8, !dbg !2884
  %aux_trip_nr = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %17, i32 0, i32 3, !dbg !2885
  store i32 %conv12, i32* %aux_trip_nr, align 8, !dbg !2886
  br label %if.end13

if.end13:                                         ; preds = %if.end11, %if.then6
  %18 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %int34x_thermal_zone, align 8, !dbg !2887
  %call14 = call i32 @int340x_thermal_read_trips(%struct.int34x_thermal_zone* %18) #6, !dbg !2888
  %conv15 = sext i32 %call14 to i64, !dbg !2888
  store i64 %conv15, i64* %trip_cnt, align 8, !dbg !2889
  %19 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !2890
  %handle16 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %19, i32 0, i32 1, !dbg !2891
  %20 = load i8*, i8** %handle16, align 8, !dbg !2891
  %call17 = call %struct.acpi_lpat_conversion_table* @acpi_lpat_get_conversion_table(i8* %20) #6, !dbg !2892
  %21 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %int34x_thermal_zone, align 8, !dbg !2893
  %lpat_table = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %21, i32 0, i32 13, !dbg !2894
  store %struct.acpi_lpat_conversion_table* %call17, %struct.acpi_lpat_conversion_table** %lpat_table, align 8, !dbg !2895
  %22 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !2896
  %pnp = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %22, i32 0, i32 10, !dbg !2896
  %bus_id = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp, i32 0, i32 0, !dbg !2896
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %bus_id, i64 0, i64 0, !dbg !2896
  %23 = load i64, i64* %trip_cnt, align 8, !dbg !2897
  %conv18 = trunc i64 %23 to i32, !dbg !2897
  %24 = load i32, i32* %trip_mask, align 4, !dbg !2898
  %25 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %int34x_thermal_zone, align 8, !dbg !2899
  %26 = bitcast %struct.int34x_thermal_zone* %25 to i8*, !dbg !2899
  %call19 = call %struct.thermal_zone_device* @thermal_zone_device_register(i8* %arraydecay, i32 %conv18, i32 %24, i8* %26, %struct.thermal_zone_device_ops* @int340x_thermal_zone_ops, %struct.thermal_zone_params* @int340x_thermal_params, i32 0, i32 0) #6, !dbg !2900
  %27 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %int34x_thermal_zone, align 8, !dbg !2901
  %zone = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %27, i32 0, i32 10, !dbg !2902
  store %struct.thermal_zone_device* %call19, %struct.thermal_zone_device** %zone, align 8, !dbg !2903
  %28 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %int34x_thermal_zone, align 8, !dbg !2904
  %zone20 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %28, i32 0, i32 10, !dbg !2906
  %29 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %zone20, align 8, !dbg !2906
  %30 = bitcast %struct.thermal_zone_device* %29 to i8*, !dbg !2904
  %call21 = call zeroext i1 @IS_ERR(i8* %30) #6, !dbg !2907
  br i1 %call21, label %if.then22, label %if.end26, !dbg !2908

if.then22:                                        ; preds = %if.end13
  %31 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %int34x_thermal_zone, align 8, !dbg !2909
  %zone23 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %31, i32 0, i32 10, !dbg !2911
  %32 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %zone23, align 8, !dbg !2911
  %33 = bitcast %struct.thermal_zone_device* %32 to i8*, !dbg !2909
  %call24 = call i64 @PTR_ERR(i8* %33) #6, !dbg !2912
  %conv25 = trunc i64 %call24 to i32, !dbg !2912
  store i32 %conv25, i32* %ret, align 4, !dbg !2913
  br label %err_thermal_zone, !dbg !2914

if.end26:                                         ; preds = %if.end13
  %34 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %int34x_thermal_zone, align 8, !dbg !2915
  %zone27 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %34, i32 0, i32 10, !dbg !2916
  %35 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %zone27, align 8, !dbg !2916
  %call28 = call i32 @thermal_zone_device_enable(%struct.thermal_zone_device* %35) #6, !dbg !2917
  store i32 %call28, i32* %ret, align 4, !dbg !2918
  %36 = load i32, i32* %ret, align 4, !dbg !2919
  %tobool29 = icmp ne i32 %36, 0, !dbg !2919
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !2921

if.then30:                                        ; preds = %if.end26
  br label %err_enable, !dbg !2922

if.end31:                                         ; preds = %if.end26
  %37 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %int34x_thermal_zone, align 8, !dbg !2923
  store %struct.int34x_thermal_zone* %37, %struct.int34x_thermal_zone** %retval, align 8, !dbg !2924
  br label %return, !dbg !2924

err_enable:                                       ; preds = %if.then30
  call void @llvm.dbg.label(metadata !2925), !dbg !2926
  %38 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %int34x_thermal_zone, align 8, !dbg !2927
  %zone32 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %38, i32 0, i32 10, !dbg !2928
  %39 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %zone32, align 8, !dbg !2928
  call void @thermal_zone_device_unregister(%struct.thermal_zone_device* %39) #6, !dbg !2929
  br label %err_thermal_zone, !dbg !2929

err_thermal_zone:                                 ; preds = %err_enable, %if.then22
  call void @llvm.dbg.label(metadata !2930), !dbg !2931
  %40 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %int34x_thermal_zone, align 8, !dbg !2932
  %lpat_table33 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %40, i32 0, i32 13, !dbg !2933
  %41 = load %struct.acpi_lpat_conversion_table*, %struct.acpi_lpat_conversion_table** %lpat_table33, align 8, !dbg !2933
  call void @acpi_lpat_free_conversion_table(%struct.acpi_lpat_conversion_table* %41) #6, !dbg !2934
  %42 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %int34x_thermal_zone, align 8, !dbg !2935
  %aux_trips34 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %42, i32 0, i32 2, !dbg !2936
  %43 = load i64*, i64** %aux_trips34, align 8, !dbg !2936
  %44 = bitcast i64* %43 to i8*, !dbg !2935
  call void @kfree(i8* %44) #6, !dbg !2937
  br label %err_trip_alloc, !dbg !2937

err_trip_alloc:                                   ; preds = %err_thermal_zone, %if.then10
  call void @llvm.dbg.label(metadata !2938), !dbg !2939
  %45 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %int34x_thermal_zone, align 8, !dbg !2940
  %46 = bitcast %struct.int34x_thermal_zone* %45 to i8*, !dbg !2940
  call void @kfree(i8* %46) #6, !dbg !2941
  %47 = load i32, i32* %ret, align 4, !dbg !2942
  %conv35 = sext i32 %47 to i64, !dbg !2942
  %call36 = call i8* @ERR_PTR(i64 %conv35) #6, !dbg !2943
  %48 = bitcast i8* %call36 to %struct.int34x_thermal_zone*, !dbg !2943
  store %struct.int34x_thermal_zone* %48, %struct.int34x_thermal_zone** %retval, align 8, !dbg !2944
  br label %return, !dbg !2944

return:                                           ; preds = %err_trip_alloc, %if.end31, %if.then
  %49 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %retval, align 8, !dbg !2945
  ret %struct.int34x_thermal_zone* %49, !dbg !2945
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !2946 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2949, metadata !DIExpression()), !dbg !2953
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2959, metadata !DIExpression()), !dbg !2960
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2961, metadata !DIExpression()), !dbg !2962
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2963, metadata !DIExpression()), !dbg !2964
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2965, metadata !DIExpression()), !dbg !2969
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2971, metadata !DIExpression()), !dbg !2975
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2977, metadata !DIExpression()), !dbg !2981
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !2986, metadata !DIExpression()), !dbg !2987
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !2988, metadata !DIExpression()), !dbg !2989
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2990, metadata !DIExpression()), !dbg !2991
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !2992, metadata !DIExpression()), !dbg !2993
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !2994, metadata !DIExpression()), !dbg !2995
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2996, metadata !DIExpression()), !dbg !2997
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !2998, metadata !DIExpression()), !dbg !2999
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3000, metadata !DIExpression()), !dbg !3001
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3002, metadata !DIExpression()), !dbg !3003
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3004, metadata !DIExpression()), !dbg !3005
  %0 = load i64, i64* %size.addr, align 8, !dbg !3006
  %1 = load i32, i32* %flags.addr, align 4, !dbg !3007
  %or = or i32 %1, 256, !dbg !3008
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !3009
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #7, !dbg !3010
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !3011

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !3012
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !3013
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !3014

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !3015
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !3016
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !3017
  %call.i.i = call i32 @get_order(i64 %7) #8, !dbg !3018
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !2995
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !3019
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !3020
  %10 = load i32, i32* %order.i.i, align 4, !dbg !3021
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !3022
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !3023
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !3024
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #9, !dbg !3025
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !3025
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !3025
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !3025
  call void @llvm.assume(i1 %maskcond.i.i.i) #7, !dbg !3025
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !3026
  br label %kmalloc.exit, !dbg !3026

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !3027
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3028
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !3028
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !3030

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !3031
  br label %kmalloc_index.exit.i, !dbg !3031

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3032
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !3034
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !3035

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3036
  br label %kmalloc_index.exit.i, !dbg !3036

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3037
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !3039
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !3040

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3041
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !3042
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !3043

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !3044
  br label %kmalloc_index.exit.i, !dbg !3044

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3045
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !3047
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !3048

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3049
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !3050
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !3051

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !3052
  br label %kmalloc_index.exit.i, !dbg !3052

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3053
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !3055
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !3056

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3057
  br label %kmalloc_index.exit.i, !dbg !3057

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3058
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !3060
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !3061

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !3062
  br label %kmalloc_index.exit.i, !dbg !3062

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3063
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !3065
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !3066

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !3067
  br label %kmalloc_index.exit.i, !dbg !3067

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3068
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !3070
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !3071

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !3072
  br label %kmalloc_index.exit.i, !dbg !3072

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3073
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !3075
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !3076

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !3077
  br label %kmalloc_index.exit.i, !dbg !3077

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3078
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !3080
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !3081

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !3082
  br label %kmalloc_index.exit.i, !dbg !3082

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3083
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !3085
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !3086

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !3087
  br label %kmalloc_index.exit.i, !dbg !3087

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3088
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !3090
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !3091

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !3092
  br label %kmalloc_index.exit.i, !dbg !3092

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3093
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !3095
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !3096

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !3097
  br label %kmalloc_index.exit.i, !dbg !3097

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3098
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !3100
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !3101

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !3102
  br label %kmalloc_index.exit.i, !dbg !3102

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3103
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !3105
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !3106

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !3107
  br label %kmalloc_index.exit.i, !dbg !3107

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3108
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !3110
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !3111

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !3112
  br label %kmalloc_index.exit.i, !dbg !3112

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3113
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !3115
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !3116

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !3117
  br label %kmalloc_index.exit.i, !dbg !3117

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3118
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !3120
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !3121

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !3122
  br label %kmalloc_index.exit.i, !dbg !3122

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3123
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !3125
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !3126

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !3127
  br label %kmalloc_index.exit.i, !dbg !3127

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3128
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !3130
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !3131

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !3132
  br label %kmalloc_index.exit.i, !dbg !3132

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3133
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !3135
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !3136

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !3137
  br label %kmalloc_index.exit.i, !dbg !3137

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3138
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !3140
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !3141

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !3142
  br label %kmalloc_index.exit.i, !dbg !3142

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3143
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !3145
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !3146

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !3147
  br label %kmalloc_index.exit.i, !dbg !3147

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3148
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !3150
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !3151

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !3152
  br label %kmalloc_index.exit.i, !dbg !3152

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3153
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !3155
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !3156

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !3157
  br label %kmalloc_index.exit.i, !dbg !3157

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3158
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !3160
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !3161

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !3162
  br label %kmalloc_index.exit.i, !dbg !3162

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3163
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !3165
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !3166

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !3167
  br label %kmalloc_index.exit.i, !dbg !3167

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3168
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !3170
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !3171

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !3172
  br label %kmalloc_index.exit.i, !dbg !3172

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 382, i32 0, i64 12) #7, !dbg !3173, !srcloc !3176
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 106) #7, !dbg !3177, !srcloc !3180
  unreachable, !dbg !3181

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !3182
  store i32 %45, i32* %index.i, align 4, !dbg !3183
  %46 = load i32, i32* %index.i, align 4, !dbg !3184
  %tobool.i = icmp ne i32 %46, 0, !dbg !3184
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !3186

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !3187
  br label %kmalloc.exit, !dbg !3187

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !3188
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3189
  %and.i.i = and i32 %48, 17, !dbg !3189
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !3189
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !3189
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !3189
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !3189
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !3191

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !3192
  br label %kmalloc_type.exit.i, !dbg !3192

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3193
  %and2.i.i = and i32 %49, 1, !dbg !3194
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !3193
  %50 = zext i1 %tobool3.i.i to i64, !dbg !3193
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !3193
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !3195
  br label %kmalloc_type.exit.i, !dbg !3195

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !3196
  %idxprom.i = zext i32 %51 to i64, !dbg !3197
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !3197
  %52 = load i32, i32* %index.i, align 4, !dbg !3198
  %idxprom6.i = zext i32 %52 to i64, !dbg !3197
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !3197
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !3197
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !3199
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !3200
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3201
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3202
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #9, !dbg !3203
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !3203
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !3203
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !3203
  call void @llvm.assume(i1 %maskcond.i.i) #7, !dbg !3203
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !2964
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3204
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !3205
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !3206
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3207
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #9, !dbg !3208
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !3209
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !3210
  store i8* %62, i8** %retval.i, align 8, !dbg !3211
  br label %kmalloc.exit, !dbg !3211

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !3212
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !3213
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #9, !dbg !3214
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !3214
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !3214
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !3214
  call void @llvm.assume(i1 %maskcond.i) #7, !dbg !3214
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !3215
  br label %kmalloc.exit, !dbg !3215

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !3216
  ret i8* %65, !dbg !3217
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !3218 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !3222, metadata !DIExpression()), !dbg !3223
  %0 = load i64, i64* %error.addr, align 8, !dbg !3224
  %1 = inttoptr i64 %0 to i8*, !dbg !3225
  ret i8* %1, !dbg !3226
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_evaluate_integer(i8*, i8*, %struct.acpi_object_list*, i64*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kcalloc(i64 %n, i64 %size, i32 %flags) #0 !dbg !3227 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3230, metadata !DIExpression()), !dbg !3231
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3232, metadata !DIExpression()), !dbg !3233
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3234, metadata !DIExpression()), !dbg !3235
  %0 = load i64, i64* %n.addr, align 8, !dbg !3236
  %1 = load i64, i64* %size.addr, align 8, !dbg !3237
  %2 = load i32, i32* %flags.addr, align 4, !dbg !3238
  %or = or i32 %2, 256, !dbg !3239
  %call = call i8* @kmalloc_array(i64 %0, i64 %1, i32 %or) #6, !dbg !3240
  ret i8* %call, !dbg !3241
}

; Function Attrs: noredzone
declare dso_local %struct.acpi_lpat_conversion_table* @acpi_lpat_get_conversion_table(i8*) #2

; Function Attrs: noredzone
declare dso_local %struct.thermal_zone_device* @thermal_zone_device_register(i8*, i32, i32, i8*, %struct.thermal_zone_device_ops*, %struct.thermal_zone_params*, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !3242 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3245, metadata !DIExpression()), !dbg !3246
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !3247
  %1 = ptrtoint i8* %0 to i64, !dbg !3247
  %2 = inttoptr i64 %1 to i8*, !dbg !3247
  %3 = ptrtoint i8* %2 to i64, !dbg !3247
  %cmp = icmp uge i64 %3, -4095, !dbg !3247
  %lnot = xor i1 %cmp, true, !dbg !3247
  %lnot1 = xor i1 %lnot, true, !dbg !3247
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3247
  %conv = sext i32 %lnot.ext to i64, !dbg !3247
  %tobool = icmp ne i64 %conv, 0, !dbg !3247
  ret i1 %tobool, !dbg !3248
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !3249 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3252, metadata !DIExpression()), !dbg !3253
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !3254
  %1 = ptrtoint i8* %0 to i64, !dbg !3255
  ret i64 %1, !dbg !3256
}

; Function Attrs: noredzone
declare dso_local i32 @thermal_zone_device_enable(%struct.thermal_zone_device*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @thermal_zone_device_unregister(%struct.thermal_zone_device*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_lpat_free_conversion_table(%struct.acpi_lpat_conversion_table*) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @int340x_thermal_zone_remove(%struct.int34x_thermal_zone* %int34x_thermal_zone) #0 !dbg !3257 {
entry:
  %int34x_thermal_zone.addr = alloca %struct.int34x_thermal_zone*, align 8
  store %struct.int34x_thermal_zone* %int34x_thermal_zone, %struct.int34x_thermal_zone** %int34x_thermal_zone.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.int34x_thermal_zone** %int34x_thermal_zone.addr, metadata !3260, metadata !DIExpression()), !dbg !3261
  %0 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %int34x_thermal_zone.addr, align 8, !dbg !3262
  %zone = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %0, i32 0, i32 10, !dbg !3263
  %1 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %zone, align 8, !dbg !3263
  call void @thermal_zone_device_unregister(%struct.thermal_zone_device* %1) #6, !dbg !3264
  %2 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %int34x_thermal_zone.addr, align 8, !dbg !3265
  %lpat_table = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %2, i32 0, i32 13, !dbg !3266
  %3 = load %struct.acpi_lpat_conversion_table*, %struct.acpi_lpat_conversion_table** %lpat_table, align 8, !dbg !3266
  call void @acpi_lpat_free_conversion_table(%struct.acpi_lpat_conversion_table* %3) #6, !dbg !3267
  %4 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %int34x_thermal_zone.addr, align 8, !dbg !3268
  %aux_trips = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %4, i32 0, i32 2, !dbg !3269
  %5 = load i64*, i64** %aux_trips, align 8, !dbg !3269
  %6 = bitcast i64* %5 to i8*, !dbg !3268
  call void @kfree(i8* %6) #6, !dbg !3270
  %7 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %int34x_thermal_zone.addr, align 8, !dbg !3271
  %8 = bitcast %struct.int34x_thermal_zone* %7 to i8*, !dbg !3271
  call void @kfree(i8* %8) #6, !dbg !3272
  ret void, !dbg !3273
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @deci_kelvin_to_millicelsius(i64 %t) #0 !dbg !3274 {
entry:
  %t.addr = alloca i64, align 8
  store i64 %t, i64* %t.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %t.addr, metadata !3278, metadata !DIExpression()), !dbg !3279
  %0 = load i64, i64* %t.addr, align 8, !dbg !3280
  %mul = mul i64 %0, 100, !dbg !3281
  %call = call i64 @milli_kelvin_to_millicelsius(i64 %mul) #6, !dbg !3282
  ret i64 %call, !dbg !3283
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @milli_kelvin_to_millicelsius(i64 %t) #0 !dbg !3284 {
entry:
  %t.addr = alloca i64, align 8
  store i64 %t, i64* %t.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %t.addr, metadata !3285, metadata !DIExpression()), !dbg !3286
  %0 = load i64, i64* %t.addr, align 8, !dbg !3287
  %add = add i64 %0, -273150, !dbg !3288
  ret i64 %add, !dbg !3289
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #4

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #5 !dbg !3290 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3294, metadata !DIExpression()), !dbg !3299
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3301, metadata !DIExpression()), !dbg !3302
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3303, metadata !DIExpression()), !dbg !3304
  %0 = load i64, i64* %size.addr, align 8, !dbg !3305
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3307
  br i1 %1, label %if.then, label %if.end447, !dbg !3308

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !3309
  %tobool = icmp ne i64 %2, 0, !dbg !3309
  br i1 %tobool, label %if.end, label %if.then1, !dbg !3312

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !3313
  br label %return, !dbg !3313

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !3314
  %cmp = icmp ult i64 %3, 4096, !dbg !3316
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3317

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3318
  br label %return, !dbg !3318

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub = sub i64 %4, 1, !dbg !3319
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !3319
  br i1 %5, label %cond.true, label %cond.false442, !dbg !3319

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub4 = sub i64 %6, 1, !dbg !3319
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !3319
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !3319

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub6 = sub i64 %8, 1, !dbg !3319
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !3319
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !3319

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !3319

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub9 = sub i64 %9, 1, !dbg !3319
  %and = and i64 %sub9, -9223372036854775808, !dbg !3319
  %tobool10 = icmp ne i64 %and, 0, !dbg !3319
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !3319

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !3319

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub13 = sub i64 %10, 1, !dbg !3319
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !3319
  %tobool15 = icmp ne i64 %and14, 0, !dbg !3319
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !3319

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !3319

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub18 = sub i64 %11, 1, !dbg !3319
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !3319
  %tobool20 = icmp ne i64 %and19, 0, !dbg !3319
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !3319

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !3319

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub23 = sub i64 %12, 1, !dbg !3319
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !3319
  %tobool25 = icmp ne i64 %and24, 0, !dbg !3319
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !3319

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !3319

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub28 = sub i64 %13, 1, !dbg !3319
  %and29 = and i64 %sub28, 576460752303423488, !dbg !3319
  %tobool30 = icmp ne i64 %and29, 0, !dbg !3319
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !3319

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !3319

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub33 = sub i64 %14, 1, !dbg !3319
  %and34 = and i64 %sub33, 288230376151711744, !dbg !3319
  %tobool35 = icmp ne i64 %and34, 0, !dbg !3319
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !3319

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !3319

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub38 = sub i64 %15, 1, !dbg !3319
  %and39 = and i64 %sub38, 144115188075855872, !dbg !3319
  %tobool40 = icmp ne i64 %and39, 0, !dbg !3319
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !3319

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !3319

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub43 = sub i64 %16, 1, !dbg !3319
  %and44 = and i64 %sub43, 72057594037927936, !dbg !3319
  %tobool45 = icmp ne i64 %and44, 0, !dbg !3319
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !3319

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !3319

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub48 = sub i64 %17, 1, !dbg !3319
  %and49 = and i64 %sub48, 36028797018963968, !dbg !3319
  %tobool50 = icmp ne i64 %and49, 0, !dbg !3319
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !3319

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !3319

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub53 = sub i64 %18, 1, !dbg !3319
  %and54 = and i64 %sub53, 18014398509481984, !dbg !3319
  %tobool55 = icmp ne i64 %and54, 0, !dbg !3319
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !3319

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !3319

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub58 = sub i64 %19, 1, !dbg !3319
  %and59 = and i64 %sub58, 9007199254740992, !dbg !3319
  %tobool60 = icmp ne i64 %and59, 0, !dbg !3319
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !3319

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !3319

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub63 = sub i64 %20, 1, !dbg !3319
  %and64 = and i64 %sub63, 4503599627370496, !dbg !3319
  %tobool65 = icmp ne i64 %and64, 0, !dbg !3319
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !3319

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !3319

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub68 = sub i64 %21, 1, !dbg !3319
  %and69 = and i64 %sub68, 2251799813685248, !dbg !3319
  %tobool70 = icmp ne i64 %and69, 0, !dbg !3319
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !3319

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !3319

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub73 = sub i64 %22, 1, !dbg !3319
  %and74 = and i64 %sub73, 1125899906842624, !dbg !3319
  %tobool75 = icmp ne i64 %and74, 0, !dbg !3319
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !3319

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !3319

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub78 = sub i64 %23, 1, !dbg !3319
  %and79 = and i64 %sub78, 562949953421312, !dbg !3319
  %tobool80 = icmp ne i64 %and79, 0, !dbg !3319
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !3319

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !3319

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub83 = sub i64 %24, 1, !dbg !3319
  %and84 = and i64 %sub83, 281474976710656, !dbg !3319
  %tobool85 = icmp ne i64 %and84, 0, !dbg !3319
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !3319

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !3319

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub88 = sub i64 %25, 1, !dbg !3319
  %and89 = and i64 %sub88, 140737488355328, !dbg !3319
  %tobool90 = icmp ne i64 %and89, 0, !dbg !3319
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !3319

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !3319

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub93 = sub i64 %26, 1, !dbg !3319
  %and94 = and i64 %sub93, 70368744177664, !dbg !3319
  %tobool95 = icmp ne i64 %and94, 0, !dbg !3319
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !3319

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !3319

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub98 = sub i64 %27, 1, !dbg !3319
  %and99 = and i64 %sub98, 35184372088832, !dbg !3319
  %tobool100 = icmp ne i64 %and99, 0, !dbg !3319
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !3319

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !3319

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub103 = sub i64 %28, 1, !dbg !3319
  %and104 = and i64 %sub103, 17592186044416, !dbg !3319
  %tobool105 = icmp ne i64 %and104, 0, !dbg !3319
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !3319

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !3319

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub108 = sub i64 %29, 1, !dbg !3319
  %and109 = and i64 %sub108, 8796093022208, !dbg !3319
  %tobool110 = icmp ne i64 %and109, 0, !dbg !3319
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !3319

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !3319

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub113 = sub i64 %30, 1, !dbg !3319
  %and114 = and i64 %sub113, 4398046511104, !dbg !3319
  %tobool115 = icmp ne i64 %and114, 0, !dbg !3319
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !3319

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !3319

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub118 = sub i64 %31, 1, !dbg !3319
  %and119 = and i64 %sub118, 2199023255552, !dbg !3319
  %tobool120 = icmp ne i64 %and119, 0, !dbg !3319
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !3319

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !3319

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub123 = sub i64 %32, 1, !dbg !3319
  %and124 = and i64 %sub123, 1099511627776, !dbg !3319
  %tobool125 = icmp ne i64 %and124, 0, !dbg !3319
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !3319

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !3319

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub128 = sub i64 %33, 1, !dbg !3319
  %and129 = and i64 %sub128, 549755813888, !dbg !3319
  %tobool130 = icmp ne i64 %and129, 0, !dbg !3319
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !3319

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !3319

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub133 = sub i64 %34, 1, !dbg !3319
  %and134 = and i64 %sub133, 274877906944, !dbg !3319
  %tobool135 = icmp ne i64 %and134, 0, !dbg !3319
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !3319

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !3319

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub138 = sub i64 %35, 1, !dbg !3319
  %and139 = and i64 %sub138, 137438953472, !dbg !3319
  %tobool140 = icmp ne i64 %and139, 0, !dbg !3319
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !3319

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !3319

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub143 = sub i64 %36, 1, !dbg !3319
  %and144 = and i64 %sub143, 68719476736, !dbg !3319
  %tobool145 = icmp ne i64 %and144, 0, !dbg !3319
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !3319

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !3319

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub148 = sub i64 %37, 1, !dbg !3319
  %and149 = and i64 %sub148, 34359738368, !dbg !3319
  %tobool150 = icmp ne i64 %and149, 0, !dbg !3319
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !3319

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !3319

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub153 = sub i64 %38, 1, !dbg !3319
  %and154 = and i64 %sub153, 17179869184, !dbg !3319
  %tobool155 = icmp ne i64 %and154, 0, !dbg !3319
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !3319

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !3319

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub158 = sub i64 %39, 1, !dbg !3319
  %and159 = and i64 %sub158, 8589934592, !dbg !3319
  %tobool160 = icmp ne i64 %and159, 0, !dbg !3319
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !3319

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !3319

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub163 = sub i64 %40, 1, !dbg !3319
  %and164 = and i64 %sub163, 4294967296, !dbg !3319
  %tobool165 = icmp ne i64 %and164, 0, !dbg !3319
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !3319

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !3319

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub168 = sub i64 %41, 1, !dbg !3319
  %and169 = and i64 %sub168, 2147483648, !dbg !3319
  %tobool170 = icmp ne i64 %and169, 0, !dbg !3319
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !3319

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !3319

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub173 = sub i64 %42, 1, !dbg !3319
  %and174 = and i64 %sub173, 1073741824, !dbg !3319
  %tobool175 = icmp ne i64 %and174, 0, !dbg !3319
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !3319

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !3319

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub178 = sub i64 %43, 1, !dbg !3319
  %and179 = and i64 %sub178, 536870912, !dbg !3319
  %tobool180 = icmp ne i64 %and179, 0, !dbg !3319
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !3319

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !3319

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub183 = sub i64 %44, 1, !dbg !3319
  %and184 = and i64 %sub183, 268435456, !dbg !3319
  %tobool185 = icmp ne i64 %and184, 0, !dbg !3319
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !3319

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !3319

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub188 = sub i64 %45, 1, !dbg !3319
  %and189 = and i64 %sub188, 134217728, !dbg !3319
  %tobool190 = icmp ne i64 %and189, 0, !dbg !3319
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !3319

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !3319

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub193 = sub i64 %46, 1, !dbg !3319
  %and194 = and i64 %sub193, 67108864, !dbg !3319
  %tobool195 = icmp ne i64 %and194, 0, !dbg !3319
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !3319

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !3319

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub198 = sub i64 %47, 1, !dbg !3319
  %and199 = and i64 %sub198, 33554432, !dbg !3319
  %tobool200 = icmp ne i64 %and199, 0, !dbg !3319
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !3319

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !3319

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub203 = sub i64 %48, 1, !dbg !3319
  %and204 = and i64 %sub203, 16777216, !dbg !3319
  %tobool205 = icmp ne i64 %and204, 0, !dbg !3319
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !3319

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !3319

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub208 = sub i64 %49, 1, !dbg !3319
  %and209 = and i64 %sub208, 8388608, !dbg !3319
  %tobool210 = icmp ne i64 %and209, 0, !dbg !3319
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !3319

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !3319

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub213 = sub i64 %50, 1, !dbg !3319
  %and214 = and i64 %sub213, 4194304, !dbg !3319
  %tobool215 = icmp ne i64 %and214, 0, !dbg !3319
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !3319

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !3319

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub218 = sub i64 %51, 1, !dbg !3319
  %and219 = and i64 %sub218, 2097152, !dbg !3319
  %tobool220 = icmp ne i64 %and219, 0, !dbg !3319
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !3319

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !3319

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub223 = sub i64 %52, 1, !dbg !3319
  %and224 = and i64 %sub223, 1048576, !dbg !3319
  %tobool225 = icmp ne i64 %and224, 0, !dbg !3319
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !3319

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !3319

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub228 = sub i64 %53, 1, !dbg !3319
  %and229 = and i64 %sub228, 524288, !dbg !3319
  %tobool230 = icmp ne i64 %and229, 0, !dbg !3319
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !3319

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !3319

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub233 = sub i64 %54, 1, !dbg !3319
  %and234 = and i64 %sub233, 262144, !dbg !3319
  %tobool235 = icmp ne i64 %and234, 0, !dbg !3319
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !3319

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !3319

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub238 = sub i64 %55, 1, !dbg !3319
  %and239 = and i64 %sub238, 131072, !dbg !3319
  %tobool240 = icmp ne i64 %and239, 0, !dbg !3319
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !3319

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !3319

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub243 = sub i64 %56, 1, !dbg !3319
  %and244 = and i64 %sub243, 65536, !dbg !3319
  %tobool245 = icmp ne i64 %and244, 0, !dbg !3319
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !3319

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !3319

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub248 = sub i64 %57, 1, !dbg !3319
  %and249 = and i64 %sub248, 32768, !dbg !3319
  %tobool250 = icmp ne i64 %and249, 0, !dbg !3319
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !3319

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !3319

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub253 = sub i64 %58, 1, !dbg !3319
  %and254 = and i64 %sub253, 16384, !dbg !3319
  %tobool255 = icmp ne i64 %and254, 0, !dbg !3319
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !3319

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !3319

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub258 = sub i64 %59, 1, !dbg !3319
  %and259 = and i64 %sub258, 8192, !dbg !3319
  %tobool260 = icmp ne i64 %and259, 0, !dbg !3319
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !3319

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !3319

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub263 = sub i64 %60, 1, !dbg !3319
  %and264 = and i64 %sub263, 4096, !dbg !3319
  %tobool265 = icmp ne i64 %and264, 0, !dbg !3319
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !3319

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !3319

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub268 = sub i64 %61, 1, !dbg !3319
  %and269 = and i64 %sub268, 2048, !dbg !3319
  %tobool270 = icmp ne i64 %and269, 0, !dbg !3319
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !3319

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !3319

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub273 = sub i64 %62, 1, !dbg !3319
  %and274 = and i64 %sub273, 1024, !dbg !3319
  %tobool275 = icmp ne i64 %and274, 0, !dbg !3319
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !3319

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !3319

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub278 = sub i64 %63, 1, !dbg !3319
  %and279 = and i64 %sub278, 512, !dbg !3319
  %tobool280 = icmp ne i64 %and279, 0, !dbg !3319
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !3319

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !3319

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub283 = sub i64 %64, 1, !dbg !3319
  %and284 = and i64 %sub283, 256, !dbg !3319
  %tobool285 = icmp ne i64 %and284, 0, !dbg !3319
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !3319

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !3319

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub288 = sub i64 %65, 1, !dbg !3319
  %and289 = and i64 %sub288, 128, !dbg !3319
  %tobool290 = icmp ne i64 %and289, 0, !dbg !3319
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !3319

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !3319

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub293 = sub i64 %66, 1, !dbg !3319
  %and294 = and i64 %sub293, 64, !dbg !3319
  %tobool295 = icmp ne i64 %and294, 0, !dbg !3319
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !3319

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !3319

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub298 = sub i64 %67, 1, !dbg !3319
  %and299 = and i64 %sub298, 32, !dbg !3319
  %tobool300 = icmp ne i64 %and299, 0, !dbg !3319
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !3319

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !3319

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub303 = sub i64 %68, 1, !dbg !3319
  %and304 = and i64 %sub303, 16, !dbg !3319
  %tobool305 = icmp ne i64 %and304, 0, !dbg !3319
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !3319

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !3319

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub308 = sub i64 %69, 1, !dbg !3319
  %and309 = and i64 %sub308, 8, !dbg !3319
  %tobool310 = icmp ne i64 %and309, 0, !dbg !3319
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !3319

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !3319

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub313 = sub i64 %70, 1, !dbg !3319
  %and314 = and i64 %sub313, 4, !dbg !3319
  %tobool315 = icmp ne i64 %and314, 0, !dbg !3319
  %71 = zext i1 %tobool315 to i64, !dbg !3319
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !3319
  br label %cond.end, !dbg !3319

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !3319
  br label %cond.end317, !dbg !3319

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !3319
  br label %cond.end319, !dbg !3319

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !3319
  br label %cond.end321, !dbg !3319

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !3319
  br label %cond.end323, !dbg !3319

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !3319
  br label %cond.end325, !dbg !3319

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !3319
  br label %cond.end327, !dbg !3319

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !3319
  br label %cond.end329, !dbg !3319

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !3319
  br label %cond.end331, !dbg !3319

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !3319
  br label %cond.end333, !dbg !3319

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !3319
  br label %cond.end335, !dbg !3319

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !3319
  br label %cond.end337, !dbg !3319

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !3319
  br label %cond.end339, !dbg !3319

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !3319
  br label %cond.end341, !dbg !3319

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !3319
  br label %cond.end343, !dbg !3319

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !3319
  br label %cond.end345, !dbg !3319

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !3319
  br label %cond.end347, !dbg !3319

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !3319
  br label %cond.end349, !dbg !3319

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !3319
  br label %cond.end351, !dbg !3319

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !3319
  br label %cond.end353, !dbg !3319

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !3319
  br label %cond.end355, !dbg !3319

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !3319
  br label %cond.end357, !dbg !3319

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !3319
  br label %cond.end359, !dbg !3319

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !3319
  br label %cond.end361, !dbg !3319

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !3319
  br label %cond.end363, !dbg !3319

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !3319
  br label %cond.end365, !dbg !3319

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !3319
  br label %cond.end367, !dbg !3319

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !3319
  br label %cond.end369, !dbg !3319

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !3319
  br label %cond.end371, !dbg !3319

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !3319
  br label %cond.end373, !dbg !3319

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !3319
  br label %cond.end375, !dbg !3319

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !3319
  br label %cond.end377, !dbg !3319

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !3319
  br label %cond.end379, !dbg !3319

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !3319
  br label %cond.end381, !dbg !3319

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !3319
  br label %cond.end383, !dbg !3319

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !3319
  br label %cond.end385, !dbg !3319

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !3319
  br label %cond.end387, !dbg !3319

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !3319
  br label %cond.end389, !dbg !3319

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !3319
  br label %cond.end391, !dbg !3319

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !3319
  br label %cond.end393, !dbg !3319

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !3319
  br label %cond.end395, !dbg !3319

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !3319
  br label %cond.end397, !dbg !3319

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !3319
  br label %cond.end399, !dbg !3319

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !3319
  br label %cond.end401, !dbg !3319

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !3319
  br label %cond.end403, !dbg !3319

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !3319
  br label %cond.end405, !dbg !3319

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !3319
  br label %cond.end407, !dbg !3319

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !3319
  br label %cond.end409, !dbg !3319

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !3319
  br label %cond.end411, !dbg !3319

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !3319
  br label %cond.end413, !dbg !3319

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !3319
  br label %cond.end415, !dbg !3319

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !3319
  br label %cond.end417, !dbg !3319

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !3319
  br label %cond.end419, !dbg !3319

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !3319
  br label %cond.end421, !dbg !3319

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !3319
  br label %cond.end423, !dbg !3319

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !3319
  br label %cond.end425, !dbg !3319

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !3319
  br label %cond.end427, !dbg !3319

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !3319
  br label %cond.end429, !dbg !3319

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !3319
  br label %cond.end431, !dbg !3319

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !3319
  br label %cond.end433, !dbg !3319

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !3319
  br label %cond.end435, !dbg !3319

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !3319
  br label %cond.end437, !dbg !3319

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !3319
  br label %cond.end440, !dbg !3319

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !3319

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !3319
  br label %cond.end444, !dbg !3319

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !3319
  %sub443 = sub i64 %72, 1, !dbg !3319
  %call = call i32 @__ilog2_u64(i64 %sub443) #8, !dbg !3319
  br label %cond.end444, !dbg !3319

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !3319
  %sub446 = sub i32 %cond445, 12, !dbg !3320
  %add = add i32 %sub446, 1, !dbg !3321
  store i32 %add, i32* %retval, align 4, !dbg !3322
  br label %return, !dbg !3322

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !3323
  %dec = add i64 %73, -1, !dbg !3323
  store i64 %dec, i64* %size.addr, align 8, !dbg !3323
  %74 = load i64, i64* %size.addr, align 8, !dbg !3324
  %shr = lshr i64 %74, 12, !dbg !3324
  store i64 %shr, i64* %size.addr, align 8, !dbg !3324
  %75 = load i64, i64* %size.addr, align 8, !dbg !3325
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3302
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !3326
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !3327
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #10, !dbg !3326, !srcloc !3328
  store i32 %78, i32* %bitpos.i, align 4, !dbg !3326
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !3329
  %add.i = add i32 %79, 1, !dbg !3330
  store i32 %add.i, i32* %retval, align 4, !dbg !3331
  br label %return, !dbg !3331

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !3332
  ret i32 %80, !dbg !3332
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #5 !dbg !3333 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3294, metadata !DIExpression()), !dbg !3337
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3301, metadata !DIExpression()), !dbg !3339
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3340, metadata !DIExpression()), !dbg !3341
  %0 = load i64, i64* %n.addr, align 8, !dbg !3342
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3339
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !3343
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !3344
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #10, !dbg !3343, !srcloc !3328
  store i32 %3, i32* %bitpos.i, align 4, !dbg !3343
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !3345
  %add.i = add i32 %4, 1, !dbg !3346
  %sub = sub i32 %add.i, 1, !dbg !3347
  ret i32 %sub, !dbg !3348
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !3349 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !3353, metadata !DIExpression()), !dbg !3354
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !3355, metadata !DIExpression()), !dbg !3356
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3357, metadata !DIExpression()), !dbg !3358
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3359, metadata !DIExpression()), !dbg !3360
  %0 = load i8*, i8** %object.addr, align 8, !dbg !3361
  ret i8* %0, !dbg !3362
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kmalloc_array(i64 %n, i64 %size, i32 %flags) #0 !dbg !3363 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2949, metadata !DIExpression()), !dbg !3364
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2959, metadata !DIExpression()), !dbg !3368
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2961, metadata !DIExpression()), !dbg !3369
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2963, metadata !DIExpression()), !dbg !3370
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2965, metadata !DIExpression()), !dbg !3371
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2971, metadata !DIExpression()), !dbg !3373
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2977, metadata !DIExpression()), !dbg !3375
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !2986, metadata !DIExpression()), !dbg !3378
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !2988, metadata !DIExpression()), !dbg !3379
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2990, metadata !DIExpression()), !dbg !3380
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !2992, metadata !DIExpression()), !dbg !3381
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !2994, metadata !DIExpression()), !dbg !3382
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2996, metadata !DIExpression()), !dbg !3383
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !2998, metadata !DIExpression()), !dbg !3384
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3000, metadata !DIExpression()), !dbg !3385
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
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3386, metadata !DIExpression()), !dbg !3387
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3388, metadata !DIExpression()), !dbg !3389
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3390, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !3392, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !3394, metadata !DIExpression()), !dbg !3397
  %0 = load i64, i64* %n.addr, align 8, !dbg !3397
  store i64 %0, i64* %__a, align 8, !dbg !3397
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !3398, metadata !DIExpression()), !dbg !3397
  %1 = load i64, i64* %size.addr, align 8, !dbg !3397
  store i64 %1, i64* %__b, align 8, !dbg !3397
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !3399, metadata !DIExpression()), !dbg !3397
  store i64* %bytes, i64** %__d, align 8, !dbg !3397
  %cmp = icmp eq i64* %__a, %__b, !dbg !3397
  %conv = zext i1 %cmp to i32, !dbg !3397
  %2 = load i64*, i64** %__d, align 8, !dbg !3397
  %cmp1 = icmp eq i64* %__a, %2, !dbg !3397
  %conv2 = zext i1 %cmp1 to i32, !dbg !3397
  %3 = load i64, i64* %__a, align 8, !dbg !3397
  %4 = load i64, i64* %__b, align 8, !dbg !3397
  %5 = load i64*, i64** %__d, align 8, !dbg !3397
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !3397
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3397
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !3397
  store i64 %8, i64* %5, align 8, !dbg !3397
  %frombool = zext i1 %7 to i8, !dbg !3397
  store i8 %frombool, i8* %tmp, align 1, !dbg !3397
  %9 = load i8, i8* %tmp, align 1, !dbg !3397
  %tobool = trunc i8 %9 to i1, !dbg !3397
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #6, !dbg !3401
  %lnot = xor i1 %call, true, !dbg !3401
  %lnot3 = xor i1 %lnot, true, !dbg !3401
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !3401
  %conv4 = sext i32 %lnot.ext to i64, !dbg !3401
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !3401
  br i1 %tobool5, label %if.then, label %if.end, !dbg !3402

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !3403
  br label %return, !dbg !3403

if.end:                                           ; preds = %entry
  %10 = load i64, i64* %n.addr, align 8, !dbg !3404
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !3405
  br i1 %11, label %land.lhs.true, label %if.end8, !dbg !3406

land.lhs.true:                                    ; preds = %if.end
  %12 = load i64, i64* %size.addr, align 8, !dbg !3407
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !3408
  br i1 %13, label %if.then6, label %if.end8, !dbg !3409

if.then6:                                         ; preds = %land.lhs.true
  %14 = load i64, i64* %bytes, align 8, !dbg !3410
  %15 = load i32, i32* %flags.addr, align 4, !dbg !3411
  store i64 %14, i64* %size.addr.i, align 8
  store i32 %15, i32* %flags.addr.i, align 4
  %16 = load i64, i64* %size.addr.i, align 8, !dbg !3412
  %17 = call i1 @llvm.is.constant.i64(i64 %16) #7, !dbg !3413
  br i1 %17, label %if.then.i, label %if.end9.i, !dbg !3414

if.then.i:                                        ; preds = %if.then6
  %18 = load i64, i64* %size.addr.i, align 8, !dbg !3415
  %cmp.i = icmp ugt i64 %18, 8192, !dbg !3416
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !3417

if.then1.i:                                       ; preds = %if.then.i
  %19 = load i64, i64* %size.addr.i, align 8, !dbg !3418
  %20 = load i32, i32* %flags.addr.i, align 4, !dbg !3419
  store i64 %19, i64* %size.addr.i.i, align 8
  store i32 %20, i32* %flags.addr.i.i, align 4
  %21 = load i64, i64* %size.addr.i.i, align 8, !dbg !3420
  %call.i.i = call i32 @get_order(i64 %21) #8, !dbg !3421
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !3382
  %22 = load i64, i64* %size.addr.i.i, align 8, !dbg !3422
  %23 = load i32, i32* %flags.addr.i.i, align 4, !dbg !3423
  %24 = load i32, i32* %order.i.i, align 4, !dbg !3424
  store i64 %22, i64* %size.addr.i.i.i, align 8
  store i32 %23, i32* %flags.addr.i.i.i, align 4
  store i32 %24, i32* %order.addr.i.i.i, align 4
  %25 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !3425
  %26 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !3426
  %27 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !3427
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %25, i32 %26, i32 %27) #9, !dbg !3428
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !3428
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !3428
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !3428
  call void @llvm.assume(i1 %maskcond.i.i.i) #7, !dbg !3428
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !3429
  br label %kmalloc.exit, !dbg !3429

if.end.i:                                         ; preds = %if.then.i
  %28 = load i64, i64* %size.addr.i, align 8, !dbg !3430
  store i64 %28, i64* %size.addr.i11.i, align 8
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3431
  %tobool.i.i = icmp ne i64 %29, 0, !dbg !3431
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !3432

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !3433
  br label %kmalloc_index.exit.i, !dbg !3433

if.end.i.i:                                       ; preds = %if.end.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3434
  %cmp.i.i = icmp ule i64 %30, 8, !dbg !3435
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !3436

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3437
  br label %kmalloc_index.exit.i, !dbg !3437

if.end2.i.i:                                      ; preds = %if.end.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3438
  %cmp3.i.i = icmp ugt i64 %31, 64, !dbg !3439
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !3440

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3441
  %cmp4.i.i = icmp ule i64 %32, 96, !dbg !3442
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !3443

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !3444
  br label %kmalloc_index.exit.i, !dbg !3444

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3445
  %cmp7.i.i = icmp ugt i64 %33, 128, !dbg !3446
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !3447

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3448
  %cmp9.i.i = icmp ule i64 %34, 192, !dbg !3449
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !3450

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !3451
  br label %kmalloc_index.exit.i, !dbg !3451

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3452
  %cmp12.i.i = icmp ule i64 %35, 8, !dbg !3453
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !3454

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3455
  br label %kmalloc_index.exit.i, !dbg !3455

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3456
  %cmp15.i.i = icmp ule i64 %36, 16, !dbg !3457
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !3458

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !3459
  br label %kmalloc_index.exit.i, !dbg !3459

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3460
  %cmp18.i.i = icmp ule i64 %37, 32, !dbg !3461
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !3462

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !3463
  br label %kmalloc_index.exit.i, !dbg !3463

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3464
  %cmp21.i.i = icmp ule i64 %38, 64, !dbg !3465
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !3466

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !3467
  br label %kmalloc_index.exit.i, !dbg !3467

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3468
  %cmp24.i.i = icmp ule i64 %39, 128, !dbg !3469
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !3470

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !3471
  br label %kmalloc_index.exit.i, !dbg !3471

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3472
  %cmp27.i.i = icmp ule i64 %40, 256, !dbg !3473
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !3474

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !3475
  br label %kmalloc_index.exit.i, !dbg !3475

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3476
  %cmp30.i.i = icmp ule i64 %41, 512, !dbg !3477
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !3478

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !3479
  br label %kmalloc_index.exit.i, !dbg !3479

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3480
  %cmp33.i.i = icmp ule i64 %42, 1024, !dbg !3481
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !3482

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !3483
  br label %kmalloc_index.exit.i, !dbg !3483

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3484
  %cmp36.i.i = icmp ule i64 %43, 2048, !dbg !3485
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !3486

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !3487
  br label %kmalloc_index.exit.i, !dbg !3487

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3488
  %cmp39.i.i = icmp ule i64 %44, 4096, !dbg !3489
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !3490

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !3491
  br label %kmalloc_index.exit.i, !dbg !3491

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3492
  %cmp42.i.i = icmp ule i64 %45, 8192, !dbg !3493
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !3494

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !3495
  br label %kmalloc_index.exit.i, !dbg !3495

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3496
  %cmp45.i.i = icmp ule i64 %46, 16384, !dbg !3497
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !3498

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !3499
  br label %kmalloc_index.exit.i, !dbg !3499

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3500
  %cmp48.i.i = icmp ule i64 %47, 32768, !dbg !3501
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !3502

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !3503
  br label %kmalloc_index.exit.i, !dbg !3503

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3504
  %cmp51.i.i = icmp ule i64 %48, 65536, !dbg !3505
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !3506

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !3507
  br label %kmalloc_index.exit.i, !dbg !3507

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3508
  %cmp54.i.i = icmp ule i64 %49, 131072, !dbg !3509
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !3510

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !3511
  br label %kmalloc_index.exit.i, !dbg !3511

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3512
  %cmp57.i.i = icmp ule i64 %50, 262144, !dbg !3513
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !3514

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !3515
  br label %kmalloc_index.exit.i, !dbg !3515

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3516
  %cmp60.i.i = icmp ule i64 %51, 524288, !dbg !3517
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !3518

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !3519
  br label %kmalloc_index.exit.i, !dbg !3519

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3520
  %cmp63.i.i = icmp ule i64 %52, 1048576, !dbg !3521
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !3522

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !3523
  br label %kmalloc_index.exit.i, !dbg !3523

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3524
  %cmp66.i.i = icmp ule i64 %53, 2097152, !dbg !3525
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !3526

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !3527
  br label %kmalloc_index.exit.i, !dbg !3527

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3528
  %cmp69.i.i = icmp ule i64 %54, 4194304, !dbg !3529
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !3530

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !3531
  br label %kmalloc_index.exit.i, !dbg !3531

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3532
  %cmp72.i.i = icmp ule i64 %55, 8388608, !dbg !3533
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !3534

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !3535
  br label %kmalloc_index.exit.i, !dbg !3535

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3536
  %cmp75.i.i = icmp ule i64 %56, 16777216, !dbg !3537
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !3538

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !3539
  br label %kmalloc_index.exit.i, !dbg !3539

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3540
  %cmp78.i.i = icmp ule i64 %57, 33554432, !dbg !3541
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !3542

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !3543
  br label %kmalloc_index.exit.i, !dbg !3543

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3544
  %cmp81.i.i = icmp ule i64 %58, 67108864, !dbg !3545
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !3546

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !3547
  br label %kmalloc_index.exit.i, !dbg !3547

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 382, i32 0, i64 12) #7, !dbg !3548, !srcloc !3176
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 106) #7, !dbg !3549, !srcloc !3180
  unreachable, !dbg !3550

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %59 = load i32, i32* %retval.i.i, align 4, !dbg !3551
  store i32 %59, i32* %index.i, align 4, !dbg !3552
  %60 = load i32, i32* %index.i, align 4, !dbg !3553
  %tobool.i = icmp ne i32 %60, 0, !dbg !3553
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !3554

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !3555
  br label %kmalloc.exit, !dbg !3555

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %61 = load i32, i32* %flags.addr.i, align 4, !dbg !3556
  store i32 %61, i32* %flags.addr.i13.i, align 4
  %62 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3557
  %and.i.i = and i32 %62, 17, !dbg !3557
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !3557
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !3557
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !3557
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !3557
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !3558

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !3559
  br label %kmalloc_type.exit.i, !dbg !3559

if.end.i16.i:                                     ; preds = %if.end4.i
  %63 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3560
  %and2.i.i = and i32 %63, 1, !dbg !3561
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !3560
  %64 = zext i1 %tobool3.i.i to i64, !dbg !3560
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !3560
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !3562
  br label %kmalloc_type.exit.i, !dbg !3562

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %65 = load i32, i32* %retval.i12.i, align 4, !dbg !3563
  %idxprom.i = zext i32 %65 to i64, !dbg !3564
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !3564
  %66 = load i32, i32* %index.i, align 4, !dbg !3565
  %idxprom6.i = zext i32 %66 to i64, !dbg !3564
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !3564
  %67 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !3564
  %68 = load i32, i32* %flags.addr.i, align 4, !dbg !3566
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !3567
  store %struct.kmem_cache* %67, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %68, i32* %flags.addr.i17.i, align 4
  store i64 %69, i64* %size.addr.i18.i, align 8
  %70 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3568
  %71 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3569
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %70, i32 %71) #9, !dbg !3570
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !3570
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !3570
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !3570
  call void @llvm.assume(i1 %maskcond.i.i) #7, !dbg !3570
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !3370
  %72 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3571
  %73 = load i8*, i8** %ret.i.i, align 8, !dbg !3572
  %74 = load i64, i64* %size.addr.i18.i, align 8, !dbg !3573
  %75 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3574
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %72, i8* %73, i64 %74, i32 %75) #9, !dbg !3575
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !3576
  %76 = load i8*, i8** %ret.i.i, align 8, !dbg !3577
  store i8* %76, i8** %retval.i, align 8, !dbg !3578
  br label %kmalloc.exit, !dbg !3578

if.end9.i:                                        ; preds = %if.then6
  %77 = load i64, i64* %size.addr.i, align 8, !dbg !3579
  %78 = load i32, i32* %flags.addr.i, align 4, !dbg !3580
  %call10.i = call noalias i8* @__kmalloc(i64 %77, i32 %78) #9, !dbg !3581
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !3581
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !3581
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !3581
  call void @llvm.assume(i1 %maskcond.i) #7, !dbg !3581
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !3582
  br label %kmalloc.exit, !dbg !3582

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %79 = load i8*, i8** %retval.i, align 8, !dbg !3583
  store i8* %79, i8** %retval, align 8, !dbg !3584
  br label %return, !dbg !3584

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %80 = load i64, i64* %bytes, align 8, !dbg !3585
  %81 = load i32, i32* %flags.addr, align 4, !dbg !3586
  %call9 = call noalias i8* @__kmalloc(i64 %80, i32 %81) #6, !dbg !3587
  %ptrint = ptrtoint i8* %call9 to i64, !dbg !3587
  %maskedptr = and i64 %ptrint, 7, !dbg !3587
  %maskcond = icmp eq i64 %maskedptr, 0, !dbg !3587
  call void @llvm.assume(i1 %maskcond), !dbg !3587
  store i8* %call9, i8** %retval, align 8, !dbg !3588
  br label %return, !dbg !3588

return:                                           ; preds = %if.end8, %kmalloc.exit, %if.then
  %82 = load i8*, i8** %retval, align 8, !dbg !3589
  ret i8* %82, !dbg !3589
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #0 !dbg !3590 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !3594, metadata !DIExpression()), !dbg !3595
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !3596
  %tobool = trunc i8 %0 to i1, !dbg !3596
  %lnot = xor i1 %tobool, true, !dbg !3596
  %lnot1 = xor i1 %lnot, true, !dbg !3596
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3596
  %conv = sext i32 %lnot.ext to i64, !dbg !3596
  %tobool2 = icmp ne i64 %conv, 0, !dbg !3596
  ret i1 %tobool2, !dbg !3597
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @int340x_thermal_get_zone_temp(%struct.thermal_zone_device* %zone, i32* %temp) #0 !dbg !3598 {
entry:
  %retval = alloca i32, align 4
  %zone.addr = alloca %struct.thermal_zone_device*, align 8
  %temp.addr = alloca i32*, align 8
  %d = alloca %struct.int34x_thermal_zone*, align 8
  %tmp = alloca i64, align 8
  %status = alloca i32, align 4
  %conv_temp = alloca i32, align 4
  store %struct.thermal_zone_device* %zone, %struct.thermal_zone_device** %zone.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %zone.addr, metadata !3599, metadata !DIExpression()), !dbg !3600
  store i32* %temp, i32** %temp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %temp.addr, metadata !3601, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.declare(metadata %struct.int34x_thermal_zone** %d, metadata !3603, metadata !DIExpression()), !dbg !3604
  %0 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %zone.addr, align 8, !dbg !3605
  %devdata = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %0, i32 0, i32 8, !dbg !3606
  %1 = load i8*, i8** %devdata, align 8, !dbg !3606
  %2 = bitcast i8* %1 to %struct.int34x_thermal_zone*, !dbg !3605
  store %struct.int34x_thermal_zone* %2, %struct.int34x_thermal_zone** %d, align 8, !dbg !3604
  call void @llvm.dbg.declare(metadata i64* %tmp, metadata !3607, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3609, metadata !DIExpression()), !dbg !3610
  %3 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %d, align 8, !dbg !3611
  %override_ops = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %3, i32 0, i32 11, !dbg !3613
  %4 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %override_ops, align 8, !dbg !3613
  %tobool = icmp ne %struct.thermal_zone_device_ops* %4, null, !dbg !3611
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !3614

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %d, align 8, !dbg !3615
  %override_ops1 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %5, i32 0, i32 11, !dbg !3616
  %6 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %override_ops1, align 8, !dbg !3616
  %get_temp = getelementptr inbounds %struct.thermal_zone_device_ops, %struct.thermal_zone_device_ops* %6, i32 0, i32 2, !dbg !3617
  %7 = load i32 (%struct.thermal_zone_device*, i32*)*, i32 (%struct.thermal_zone_device*, i32*)** %get_temp, align 8, !dbg !3617
  %tobool2 = icmp ne i32 (%struct.thermal_zone_device*, i32*)* %7, null, !dbg !3615
  br i1 %tobool2, label %if.then, label %if.end, !dbg !3618

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %d, align 8, !dbg !3619
  %override_ops3 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %8, i32 0, i32 11, !dbg !3620
  %9 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %override_ops3, align 8, !dbg !3620
  %get_temp4 = getelementptr inbounds %struct.thermal_zone_device_ops, %struct.thermal_zone_device_ops* %9, i32 0, i32 2, !dbg !3621
  %10 = load i32 (%struct.thermal_zone_device*, i32*)*, i32 (%struct.thermal_zone_device*, i32*)** %get_temp4, align 8, !dbg !3621
  %11 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %zone.addr, align 8, !dbg !3622
  %12 = load i32*, i32** %temp.addr, align 8, !dbg !3623
  %call = call i32 %10(%struct.thermal_zone_device* %11, i32* %12) #6, !dbg !3619
  store i32 %call, i32* %retval, align 4, !dbg !3624
  br label %return, !dbg !3624

if.end:                                           ; preds = %land.lhs.true, %entry
  %13 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %d, align 8, !dbg !3625
  %adev = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %13, i32 0, i32 0, !dbg !3626
  %14 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !3626
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %14, i32 0, i32 1, !dbg !3627
  %15 = load i8*, i8** %handle, align 8, !dbg !3627
  %call5 = call i32 @acpi_evaluate_integer(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), %struct.acpi_object_list* null, i64* %tmp) #6, !dbg !3628
  store i32 %call5, i32* %status, align 4, !dbg !3629
  %16 = load i32, i32* %status, align 4, !dbg !3630
  %tobool6 = icmp ne i32 %16, 0, !dbg !3630
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !3632

if.then7:                                         ; preds = %if.end
  store i32 -5, i32* %retval, align 4, !dbg !3633
  br label %return, !dbg !3633

if.end8:                                          ; preds = %if.end
  %17 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %d, align 8, !dbg !3634
  %lpat_table = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %17, i32 0, i32 13, !dbg !3636
  %18 = load %struct.acpi_lpat_conversion_table*, %struct.acpi_lpat_conversion_table** %lpat_table, align 8, !dbg !3636
  %tobool9 = icmp ne %struct.acpi_lpat_conversion_table* %18, null, !dbg !3634
  br i1 %tobool9, label %if.then10, label %if.else, !dbg !3637

if.then10:                                        ; preds = %if.end8
  call void @llvm.dbg.declare(metadata i32* %conv_temp, metadata !3638, metadata !DIExpression()), !dbg !3640
  %19 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %d, align 8, !dbg !3641
  %lpat_table11 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %19, i32 0, i32 13, !dbg !3642
  %20 = load %struct.acpi_lpat_conversion_table*, %struct.acpi_lpat_conversion_table** %lpat_table11, align 8, !dbg !3642
  %21 = load i64, i64* %tmp, align 8, !dbg !3643
  %conv = trunc i64 %21 to i32, !dbg !3644
  %call12 = call i32 @acpi_lpat_raw_to_temp(%struct.acpi_lpat_conversion_table* %20, i32 %conv) #6, !dbg !3645
  store i32 %call12, i32* %conv_temp, align 4, !dbg !3646
  %22 = load i32, i32* %conv_temp, align 4, !dbg !3647
  %cmp = icmp slt i32 %22, 0, !dbg !3649
  br i1 %cmp, label %if.then14, label %if.end15, !dbg !3650

if.then14:                                        ; preds = %if.then10
  %23 = load i32, i32* %conv_temp, align 4, !dbg !3651
  store i32 %23, i32* %retval, align 4, !dbg !3652
  br label %return, !dbg !3652

if.end15:                                         ; preds = %if.then10
  %24 = load i32, i32* %conv_temp, align 4, !dbg !3653
  %conv16 = sext i32 %24 to i64, !dbg !3654
  %mul = mul i64 %conv16, 10, !dbg !3655
  %conv17 = trunc i64 %mul to i32, !dbg !3654
  %25 = load i32*, i32** %temp.addr, align 8, !dbg !3656
  store i32 %conv17, i32* %25, align 4, !dbg !3657
  br label %if.end20, !dbg !3658

if.else:                                          ; preds = %if.end8
  %26 = load i64, i64* %tmp, align 8, !dbg !3659
  %call18 = call i64 @deci_kelvin_to_millicelsius(i64 %26) #6, !dbg !3660
  %conv19 = trunc i64 %call18 to i32, !dbg !3660
  %27 = load i32*, i32** %temp.addr, align 8, !dbg !3661
  store i32 %conv19, i32* %27, align 4, !dbg !3662
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.end15
  store i32 0, i32* %retval, align 4, !dbg !3663
  br label %return, !dbg !3663

return:                                           ; preds = %if.end20, %if.then14, %if.then7, %if.then
  %28 = load i32, i32* %retval, align 4, !dbg !3664
  ret i32 %28, !dbg !3664
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @int340x_thermal_get_trip_type(%struct.thermal_zone_device* %zone, i32 %trip, i32* %type) #0 !dbg !3665 {
entry:
  %retval = alloca i32, align 4
  %zone.addr = alloca %struct.thermal_zone_device*, align 8
  %trip.addr = alloca i32, align 4
  %type.addr = alloca i32*, align 8
  %d = alloca %struct.int34x_thermal_zone*, align 8
  %i = alloca i32, align 4
  store %struct.thermal_zone_device* %zone, %struct.thermal_zone_device** %zone.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %zone.addr, metadata !3666, metadata !DIExpression()), !dbg !3667
  store i32 %trip, i32* %trip.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %trip.addr, metadata !3668, metadata !DIExpression()), !dbg !3669
  store i32* %type, i32** %type.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %type.addr, metadata !3670, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.declare(metadata %struct.int34x_thermal_zone** %d, metadata !3672, metadata !DIExpression()), !dbg !3673
  %0 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %zone.addr, align 8, !dbg !3674
  %devdata = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %0, i32 0, i32 8, !dbg !3675
  %1 = load i8*, i8** %devdata, align 8, !dbg !3675
  %2 = bitcast i8* %1 to %struct.int34x_thermal_zone*, !dbg !3674
  store %struct.int34x_thermal_zone* %2, %struct.int34x_thermal_zone** %d, align 8, !dbg !3673
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3676, metadata !DIExpression()), !dbg !3677
  %3 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %d, align 8, !dbg !3678
  %override_ops = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %3, i32 0, i32 11, !dbg !3680
  %4 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %override_ops, align 8, !dbg !3680
  %tobool = icmp ne %struct.thermal_zone_device_ops* %4, null, !dbg !3678
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !3681

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %d, align 8, !dbg !3682
  %override_ops1 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %5, i32 0, i32 11, !dbg !3683
  %6 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %override_ops1, align 8, !dbg !3683
  %get_trip_type = getelementptr inbounds %struct.thermal_zone_device_ops, %struct.thermal_zone_device_ops* %6, i32 0, i32 5, !dbg !3684
  %7 = load i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)** %get_trip_type, align 8, !dbg !3684
  %tobool2 = icmp ne i32 (%struct.thermal_zone_device*, i32, i32*)* %7, null, !dbg !3682
  br i1 %tobool2, label %if.then, label %if.end, !dbg !3685

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %d, align 8, !dbg !3686
  %override_ops3 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %8, i32 0, i32 11, !dbg !3687
  %9 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %override_ops3, align 8, !dbg !3687
  %get_trip_type4 = getelementptr inbounds %struct.thermal_zone_device_ops, %struct.thermal_zone_device_ops* %9, i32 0, i32 5, !dbg !3688
  %10 = load i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)** %get_trip_type4, align 8, !dbg !3688
  %11 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %zone.addr, align 8, !dbg !3689
  %12 = load i32, i32* %trip.addr, align 4, !dbg !3690
  %13 = load i32*, i32** %type.addr, align 8, !dbg !3691
  %call = call i32 %10(%struct.thermal_zone_device* %11, i32 %12, i32* %13) #6, !dbg !3686
  store i32 %call, i32* %retval, align 4, !dbg !3692
  br label %return, !dbg !3692

if.end:                                           ; preds = %land.lhs.true, %entry
  %14 = load i32, i32* %trip.addr, align 4, !dbg !3693
  %15 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %d, align 8, !dbg !3695
  %aux_trip_nr = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %15, i32 0, i32 3, !dbg !3696
  %16 = load i32, i32* %aux_trip_nr, align 8, !dbg !3696
  %cmp = icmp slt i32 %14, %16, !dbg !3697
  br i1 %cmp, label %if.then5, label %if.else, !dbg !3698

if.then5:                                         ; preds = %if.end
  %17 = load i32*, i32** %type.addr, align 8, !dbg !3699
  store i32 1, i32* %17, align 4, !dbg !3700
  br label %if.end30, !dbg !3701

if.else:                                          ; preds = %if.end
  %18 = load i32, i32* %trip.addr, align 4, !dbg !3702
  %19 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %d, align 8, !dbg !3704
  %crt_trip_id = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %19, i32 0, i32 7, !dbg !3705
  %20 = load i32, i32* %crt_trip_id, align 8, !dbg !3705
  %cmp6 = icmp eq i32 %18, %20, !dbg !3706
  br i1 %cmp6, label %if.then7, label %if.else8, !dbg !3707

if.then7:                                         ; preds = %if.else
  %21 = load i32*, i32** %type.addr, align 8, !dbg !3708
  store i32 3, i32* %21, align 4, !dbg !3709
  br label %if.end29, !dbg !3710

if.else8:                                         ; preds = %if.else
  %22 = load i32, i32* %trip.addr, align 4, !dbg !3711
  %23 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %d, align 8, !dbg !3713
  %hot_trip_id = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %23, i32 0, i32 9, !dbg !3714
  %24 = load i32, i32* %hot_trip_id, align 8, !dbg !3714
  %cmp9 = icmp eq i32 %22, %24, !dbg !3715
  br i1 %cmp9, label %if.then10, label %if.else11, !dbg !3716

if.then10:                                        ; preds = %if.else8
  %25 = load i32*, i32** %type.addr, align 8, !dbg !3717
  store i32 2, i32* %25, align 4, !dbg !3718
  br label %if.end28, !dbg !3719

if.else11:                                        ; preds = %if.else8
  %26 = load i32, i32* %trip.addr, align 4, !dbg !3720
  %27 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %d, align 8, !dbg !3722
  %psv_trip_id = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %27, i32 0, i32 5, !dbg !3723
  %28 = load i32, i32* %psv_trip_id, align 8, !dbg !3723
  %cmp12 = icmp eq i32 %26, %28, !dbg !3724
  br i1 %cmp12, label %if.then13, label %if.else14, !dbg !3725

if.then13:                                        ; preds = %if.else11
  %29 = load i32*, i32** %type.addr, align 8, !dbg !3726
  store i32 1, i32* %29, align 4, !dbg !3727
  br label %if.end27, !dbg !3728

if.else14:                                        ; preds = %if.else11
  store i32 0, i32* %i, align 4, !dbg !3729
  br label %for.cond, !dbg !3732

for.cond:                                         ; preds = %for.inc, %if.else14
  %30 = load i32, i32* %i, align 4, !dbg !3733
  %cmp15 = icmp slt i32 %30, 10, !dbg !3735
  br i1 %cmp15, label %for.body, label %for.end, !dbg !3736

for.body:                                         ; preds = %for.cond
  %31 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %d, align 8, !dbg !3737
  %act_trips = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %31, i32 0, i32 1, !dbg !3740
  %32 = load i32, i32* %i, align 4, !dbg !3741
  %idxprom = sext i32 %32 to i64, !dbg !3737
  %arrayidx = getelementptr [10 x %struct.active_trip], [10 x %struct.active_trip]* %act_trips, i64 0, i64 %idxprom, !dbg !3737
  %valid = getelementptr inbounds %struct.active_trip, %struct.active_trip* %arrayidx, i32 0, i32 2, !dbg !3742
  %33 = load i8, i8* %valid, align 4, !dbg !3742
  %tobool16 = trunc i8 %33 to i1, !dbg !3742
  br i1 %tobool16, label %land.lhs.true17, label %if.end23, !dbg !3743

land.lhs.true17:                                  ; preds = %for.body
  %34 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %d, align 8, !dbg !3744
  %act_trips18 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %34, i32 0, i32 1, !dbg !3745
  %35 = load i32, i32* %i, align 4, !dbg !3746
  %idxprom19 = sext i32 %35 to i64, !dbg !3744
  %arrayidx20 = getelementptr [10 x %struct.active_trip], [10 x %struct.active_trip]* %act_trips18, i64 0, i64 %idxprom19, !dbg !3744
  %id = getelementptr inbounds %struct.active_trip, %struct.active_trip* %arrayidx20, i32 0, i32 1, !dbg !3747
  %36 = load i32, i32* %id, align 4, !dbg !3747
  %37 = load i32, i32* %trip.addr, align 4, !dbg !3748
  %cmp21 = icmp eq i32 %36, %37, !dbg !3749
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !3750

if.then22:                                        ; preds = %land.lhs.true17
  %38 = load i32*, i32** %type.addr, align 8, !dbg !3751
  store i32 0, i32* %38, align 4, !dbg !3753
  br label %for.end, !dbg !3754

if.end23:                                         ; preds = %land.lhs.true17, %for.body
  br label %for.inc, !dbg !3755

for.inc:                                          ; preds = %if.end23
  %39 = load i32, i32* %i, align 4, !dbg !3756
  %inc = add i32 %39, 1, !dbg !3756
  store i32 %inc, i32* %i, align 4, !dbg !3756
  br label %for.cond, !dbg !3757, !llvm.loop !3758

for.end:                                          ; preds = %if.then22, %for.cond
  %40 = load i32, i32* %i, align 4, !dbg !3760
  %cmp24 = icmp eq i32 %40, 10, !dbg !3762
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !3763

if.then25:                                        ; preds = %for.end
  store i32 -22, i32* %retval, align 4, !dbg !3764
  br label %return, !dbg !3764

if.end26:                                         ; preds = %for.end
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.then13
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then10
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then7
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then5
  store i32 0, i32* %retval, align 4, !dbg !3765
  br label %return, !dbg !3765

return:                                           ; preds = %if.end30, %if.then25, %if.then
  %41 = load i32, i32* %retval, align 4, !dbg !3766
  ret i32 %41, !dbg !3766
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @int340x_thermal_get_trip_temp(%struct.thermal_zone_device* %zone, i32 %trip, i32* %temp) #0 !dbg !3767 {
entry:
  %retval = alloca i32, align 4
  %zone.addr = alloca %struct.thermal_zone_device*, align 8
  %trip.addr = alloca i32, align 4
  %temp.addr = alloca i32*, align 8
  %d = alloca %struct.int34x_thermal_zone*, align 8
  %i = alloca i32, align 4
  store %struct.thermal_zone_device* %zone, %struct.thermal_zone_device** %zone.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %zone.addr, metadata !3768, metadata !DIExpression()), !dbg !3769
  store i32 %trip, i32* %trip.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %trip.addr, metadata !3770, metadata !DIExpression()), !dbg !3771
  store i32* %temp, i32** %temp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %temp.addr, metadata !3772, metadata !DIExpression()), !dbg !3773
  call void @llvm.dbg.declare(metadata %struct.int34x_thermal_zone** %d, metadata !3774, metadata !DIExpression()), !dbg !3775
  %0 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %zone.addr, align 8, !dbg !3776
  %devdata = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %0, i32 0, i32 8, !dbg !3777
  %1 = load i8*, i8** %devdata, align 8, !dbg !3777
  %2 = bitcast i8* %1 to %struct.int34x_thermal_zone*, !dbg !3776
  store %struct.int34x_thermal_zone* %2, %struct.int34x_thermal_zone** %d, align 8, !dbg !3775
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3778, metadata !DIExpression()), !dbg !3779
  %3 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %d, align 8, !dbg !3780
  %override_ops = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %3, i32 0, i32 11, !dbg !3782
  %4 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %override_ops, align 8, !dbg !3782
  %tobool = icmp ne %struct.thermal_zone_device_ops* %4, null, !dbg !3780
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !3783

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %d, align 8, !dbg !3784
  %override_ops1 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %5, i32 0, i32 11, !dbg !3785
  %6 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %override_ops1, align 8, !dbg !3785
  %get_trip_temp = getelementptr inbounds %struct.thermal_zone_device_ops, %struct.thermal_zone_device_ops* %6, i32 0, i32 6, !dbg !3786
  %7 = load i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)** %get_trip_temp, align 8, !dbg !3786
  %tobool2 = icmp ne i32 (%struct.thermal_zone_device*, i32, i32*)* %7, null, !dbg !3784
  br i1 %tobool2, label %if.then, label %if.end, !dbg !3787

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %d, align 8, !dbg !3788
  %override_ops3 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %8, i32 0, i32 11, !dbg !3789
  %9 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %override_ops3, align 8, !dbg !3789
  %get_trip_temp4 = getelementptr inbounds %struct.thermal_zone_device_ops, %struct.thermal_zone_device_ops* %9, i32 0, i32 6, !dbg !3790
  %10 = load i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)** %get_trip_temp4, align 8, !dbg !3790
  %11 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %zone.addr, align 8, !dbg !3791
  %12 = load i32, i32* %trip.addr, align 4, !dbg !3792
  %13 = load i32*, i32** %temp.addr, align 8, !dbg !3793
  %call = call i32 %10(%struct.thermal_zone_device* %11, i32 %12, i32* %13) #6, !dbg !3788
  store i32 %call, i32* %retval, align 4, !dbg !3794
  br label %return, !dbg !3794

if.end:                                           ; preds = %land.lhs.true, %entry
  %14 = load i32, i32* %trip.addr, align 4, !dbg !3795
  %15 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %d, align 8, !dbg !3797
  %aux_trip_nr = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %15, i32 0, i32 3, !dbg !3798
  %16 = load i32, i32* %aux_trip_nr, align 8, !dbg !3798
  %cmp = icmp slt i32 %14, %16, !dbg !3799
  br i1 %cmp, label %if.then5, label %if.else, !dbg !3800

if.then5:                                         ; preds = %if.end
  %17 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %d, align 8, !dbg !3801
  %aux_trips = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %17, i32 0, i32 2, !dbg !3802
  %18 = load i64*, i64** %aux_trips, align 8, !dbg !3802
  %19 = load i32, i32* %trip.addr, align 4, !dbg !3803
  %idxprom = sext i32 %19 to i64, !dbg !3801
  %arrayidx = getelementptr i64, i64* %18, i64 %idxprom, !dbg !3801
  %20 = load i64, i64* %arrayidx, align 8, !dbg !3801
  %conv = trunc i64 %20 to i32, !dbg !3801
  %21 = load i32*, i32** %temp.addr, align 8, !dbg !3804
  store i32 %conv, i32* %21, align 4, !dbg !3805
  br label %if.end43, !dbg !3806

if.else:                                          ; preds = %if.end
  %22 = load i32, i32* %trip.addr, align 4, !dbg !3807
  %23 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %d, align 8, !dbg !3809
  %crt_trip_id = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %23, i32 0, i32 7, !dbg !3810
  %24 = load i32, i32* %crt_trip_id, align 8, !dbg !3810
  %cmp6 = icmp eq i32 %22, %24, !dbg !3811
  br i1 %cmp6, label %if.then8, label %if.else9, !dbg !3812

if.then8:                                         ; preds = %if.else
  %25 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %d, align 8, !dbg !3813
  %crt_temp = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %25, i32 0, i32 6, !dbg !3814
  %26 = load i32, i32* %crt_temp, align 4, !dbg !3814
  %27 = load i32*, i32** %temp.addr, align 8, !dbg !3815
  store i32 %26, i32* %27, align 4, !dbg !3816
  br label %if.end42, !dbg !3817

if.else9:                                         ; preds = %if.else
  %28 = load i32, i32* %trip.addr, align 4, !dbg !3818
  %29 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %d, align 8, !dbg !3820
  %psv_trip_id = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %29, i32 0, i32 5, !dbg !3821
  %30 = load i32, i32* %psv_trip_id, align 8, !dbg !3821
  %cmp10 = icmp eq i32 %28, %30, !dbg !3822
  br i1 %cmp10, label %if.then12, label %if.else13, !dbg !3823

if.then12:                                        ; preds = %if.else9
  %31 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %d, align 8, !dbg !3824
  %psv_temp = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %31, i32 0, i32 4, !dbg !3825
  %32 = load i32, i32* %psv_temp, align 4, !dbg !3825
  %33 = load i32*, i32** %temp.addr, align 8, !dbg !3826
  store i32 %32, i32* %33, align 4, !dbg !3827
  br label %if.end41, !dbg !3828

if.else13:                                        ; preds = %if.else9
  %34 = load i32, i32* %trip.addr, align 4, !dbg !3829
  %35 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %d, align 8, !dbg !3831
  %hot_trip_id = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %35, i32 0, i32 9, !dbg !3832
  %36 = load i32, i32* %hot_trip_id, align 8, !dbg !3832
  %cmp14 = icmp eq i32 %34, %36, !dbg !3833
  br i1 %cmp14, label %if.then16, label %if.else17, !dbg !3834

if.then16:                                        ; preds = %if.else13
  %37 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %d, align 8, !dbg !3835
  %hot_temp = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %37, i32 0, i32 8, !dbg !3836
  %38 = load i32, i32* %hot_temp, align 4, !dbg !3836
  %39 = load i32*, i32** %temp.addr, align 8, !dbg !3837
  store i32 %38, i32* %39, align 4, !dbg !3838
  br label %if.end40, !dbg !3839

if.else17:                                        ; preds = %if.else13
  store i32 0, i32* %i, align 4, !dbg !3840
  br label %for.cond, !dbg !3843

for.cond:                                         ; preds = %for.inc, %if.else17
  %40 = load i32, i32* %i, align 4, !dbg !3844
  %cmp18 = icmp slt i32 %40, 10, !dbg !3846
  br i1 %cmp18, label %for.body, label %for.end, !dbg !3847

for.body:                                         ; preds = %for.cond
  %41 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %d, align 8, !dbg !3848
  %act_trips = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %41, i32 0, i32 1, !dbg !3851
  %42 = load i32, i32* %i, align 4, !dbg !3852
  %idxprom20 = sext i32 %42 to i64, !dbg !3848
  %arrayidx21 = getelementptr [10 x %struct.active_trip], [10 x %struct.active_trip]* %act_trips, i64 0, i64 %idxprom20, !dbg !3848
  %valid = getelementptr inbounds %struct.active_trip, %struct.active_trip* %arrayidx21, i32 0, i32 2, !dbg !3853
  %43 = load i8, i8* %valid, align 4, !dbg !3853
  %tobool22 = trunc i8 %43 to i1, !dbg !3853
  br i1 %tobool22, label %land.lhs.true24, label %if.end35, !dbg !3854

land.lhs.true24:                                  ; preds = %for.body
  %44 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %d, align 8, !dbg !3855
  %act_trips25 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %44, i32 0, i32 1, !dbg !3856
  %45 = load i32, i32* %i, align 4, !dbg !3857
  %idxprom26 = sext i32 %45 to i64, !dbg !3855
  %arrayidx27 = getelementptr [10 x %struct.active_trip], [10 x %struct.active_trip]* %act_trips25, i64 0, i64 %idxprom26, !dbg !3855
  %id = getelementptr inbounds %struct.active_trip, %struct.active_trip* %arrayidx27, i32 0, i32 1, !dbg !3858
  %46 = load i32, i32* %id, align 4, !dbg !3858
  %47 = load i32, i32* %trip.addr, align 4, !dbg !3859
  %cmp28 = icmp eq i32 %46, %47, !dbg !3860
  br i1 %cmp28, label %if.then30, label %if.end35, !dbg !3861

if.then30:                                        ; preds = %land.lhs.true24
  %48 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %d, align 8, !dbg !3862
  %act_trips31 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %48, i32 0, i32 1, !dbg !3864
  %49 = load i32, i32* %i, align 4, !dbg !3865
  %idxprom32 = sext i32 %49 to i64, !dbg !3862
  %arrayidx33 = getelementptr [10 x %struct.active_trip], [10 x %struct.active_trip]* %act_trips31, i64 0, i64 %idxprom32, !dbg !3862
  %temp34 = getelementptr inbounds %struct.active_trip, %struct.active_trip* %arrayidx33, i32 0, i32 0, !dbg !3866
  %50 = load i32, i32* %temp34, align 4, !dbg !3866
  %51 = load i32*, i32** %temp.addr, align 8, !dbg !3867
  store i32 %50, i32* %51, align 4, !dbg !3868
  br label %for.end, !dbg !3869

if.end35:                                         ; preds = %land.lhs.true24, %for.body
  br label %for.inc, !dbg !3870

for.inc:                                          ; preds = %if.end35
  %52 = load i32, i32* %i, align 4, !dbg !3871
  %inc = add i32 %52, 1, !dbg !3871
  store i32 %inc, i32* %i, align 4, !dbg !3871
  br label %for.cond, !dbg !3872, !llvm.loop !3873

for.end:                                          ; preds = %if.then30, %for.cond
  %53 = load i32, i32* %i, align 4, !dbg !3875
  %cmp36 = icmp eq i32 %53, 10, !dbg !3877
  br i1 %cmp36, label %if.then38, label %if.end39, !dbg !3878

if.then38:                                        ; preds = %for.end
  store i32 -22, i32* %retval, align 4, !dbg !3879
  br label %return, !dbg !3879

if.end39:                                         ; preds = %for.end
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then16
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.then12
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.then8
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.then5
  store i32 0, i32* %retval, align 4, !dbg !3880
  br label %return, !dbg !3880

return:                                           ; preds = %if.end43, %if.then38, %if.then
  %54 = load i32, i32* %retval, align 4, !dbg !3881
  ret i32 %54, !dbg !3881
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @int340x_thermal_set_trip_temp(%struct.thermal_zone_device* %zone, i32 %trip, i32 %temp) #0 !dbg !3882 {
entry:
  %retval = alloca i32, align 4
  %zone.addr = alloca %struct.thermal_zone_device*, align 8
  %trip.addr = alloca i32, align 4
  %temp.addr = alloca i32, align 4
  %d = alloca %struct.int34x_thermal_zone*, align 8
  %status = alloca i32, align 4
  %name = alloca [10 x i8], align 1
  store %struct.thermal_zone_device* %zone, %struct.thermal_zone_device** %zone.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %zone.addr, metadata !3883, metadata !DIExpression()), !dbg !3884
  store i32 %trip, i32* %trip.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %trip.addr, metadata !3885, metadata !DIExpression()), !dbg !3886
  store i32 %temp, i32* %temp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %temp.addr, metadata !3887, metadata !DIExpression()), !dbg !3888
  call void @llvm.dbg.declare(metadata %struct.int34x_thermal_zone** %d, metadata !3889, metadata !DIExpression()), !dbg !3890
  %0 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %zone.addr, align 8, !dbg !3891
  %devdata = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %0, i32 0, i32 8, !dbg !3892
  %1 = load i8*, i8** %devdata, align 8, !dbg !3892
  %2 = bitcast i8* %1 to %struct.int34x_thermal_zone*, !dbg !3891
  store %struct.int34x_thermal_zone* %2, %struct.int34x_thermal_zone** %d, align 8, !dbg !3890
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3893, metadata !DIExpression()), !dbg !3894
  call void @llvm.dbg.declare(metadata [10 x i8]* %name, metadata !3895, metadata !DIExpression()), !dbg !3897
  %3 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %d, align 8, !dbg !3898
  %override_ops = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %3, i32 0, i32 11, !dbg !3900
  %4 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %override_ops, align 8, !dbg !3900
  %tobool = icmp ne %struct.thermal_zone_device_ops* %4, null, !dbg !3898
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !3901

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %d, align 8, !dbg !3902
  %override_ops1 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %5, i32 0, i32 11, !dbg !3903
  %6 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %override_ops1, align 8, !dbg !3903
  %set_trip_temp = getelementptr inbounds %struct.thermal_zone_device_ops, %struct.thermal_zone_device_ops* %6, i32 0, i32 7, !dbg !3904
  %7 = load i32 (%struct.thermal_zone_device*, i32, i32)*, i32 (%struct.thermal_zone_device*, i32, i32)** %set_trip_temp, align 8, !dbg !3904
  %tobool2 = icmp ne i32 (%struct.thermal_zone_device*, i32, i32)* %7, null, !dbg !3902
  br i1 %tobool2, label %if.then, label %if.end, !dbg !3905

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %d, align 8, !dbg !3906
  %override_ops3 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %8, i32 0, i32 11, !dbg !3907
  %9 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %override_ops3, align 8, !dbg !3907
  %set_trip_temp4 = getelementptr inbounds %struct.thermal_zone_device_ops, %struct.thermal_zone_device_ops* %9, i32 0, i32 7, !dbg !3908
  %10 = load i32 (%struct.thermal_zone_device*, i32, i32)*, i32 (%struct.thermal_zone_device*, i32, i32)** %set_trip_temp4, align 8, !dbg !3908
  %11 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %zone.addr, align 8, !dbg !3909
  %12 = load i32, i32* %trip.addr, align 4, !dbg !3910
  %13 = load i32, i32* %temp.addr, align 4, !dbg !3911
  %call = call i32 %10(%struct.thermal_zone_device* %11, i32 %12, i32 %13) #6, !dbg !3906
  store i32 %call, i32* %retval, align 4, !dbg !3912
  br label %return, !dbg !3912

if.end:                                           ; preds = %land.lhs.true, %entry
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %name, i64 0, i64 0, !dbg !3913
  %14 = load i32, i32* %trip.addr, align 4, !dbg !3914
  %call5 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %14) #6, !dbg !3915
  %15 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %d, align 8, !dbg !3916
  %adev = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %15, i32 0, i32 0, !dbg !3917
  %16 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !3917
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %16, i32 0, i32 1, !dbg !3918
  %17 = load i8*, i8** %handle, align 8, !dbg !3918
  %arraydecay6 = getelementptr inbounds [10 x i8], [10 x i8]* %name, i64 0, i64 0, !dbg !3919
  %18 = load i32, i32* %temp.addr, align 4, !dbg !3920
  %conv = sext i32 %18 to i64, !dbg !3920
  %call7 = call i64 @millicelsius_to_deci_kelvin(i64 %conv) #6, !dbg !3921
  %call8 = call i32 @acpi_execute_simple_method(i8* %17, i8* %arraydecay6, i64 %call7) #6, !dbg !3922
  store i32 %call8, i32* %status, align 4, !dbg !3923
  %19 = load i32, i32* %status, align 4, !dbg !3924
  %tobool9 = icmp ne i32 %19, 0, !dbg !3924
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !3926

if.then10:                                        ; preds = %if.end
  store i32 -5, i32* %retval, align 4, !dbg !3927
  br label %return, !dbg !3927

if.end11:                                         ; preds = %if.end
  %20 = load i32, i32* %temp.addr, align 4, !dbg !3928
  %conv12 = sext i32 %20 to i64, !dbg !3928
  %21 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %d, align 8, !dbg !3929
  %aux_trips = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %21, i32 0, i32 2, !dbg !3930
  %22 = load i64*, i64** %aux_trips, align 8, !dbg !3930
  %23 = load i32, i32* %trip.addr, align 4, !dbg !3931
  %idxprom = sext i32 %23 to i64, !dbg !3929
  %arrayidx = getelementptr i64, i64* %22, i64 %idxprom, !dbg !3929
  store i64 %conv12, i64* %arrayidx, align 8, !dbg !3932
  store i32 0, i32* %retval, align 4, !dbg !3933
  br label %return, !dbg !3933

return:                                           ; preds = %if.end11, %if.then10, %if.then
  %24 = load i32, i32* %retval, align 4, !dbg !3934
  ret i32 %24, !dbg !3934
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @int340x_thermal_get_trip_hyst(%struct.thermal_zone_device* %zone, i32 %trip, i32* %temp) #0 !dbg !3935 {
entry:
  %retval = alloca i32, align 4
  %zone.addr = alloca %struct.thermal_zone_device*, align 8
  %trip.addr = alloca i32, align 4
  %temp.addr = alloca i32*, align 8
  %d = alloca %struct.int34x_thermal_zone*, align 8
  %status = alloca i32, align 4
  %hyst = alloca i64, align 8
  store %struct.thermal_zone_device* %zone, %struct.thermal_zone_device** %zone.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %zone.addr, metadata !3936, metadata !DIExpression()), !dbg !3937
  store i32 %trip, i32* %trip.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %trip.addr, metadata !3938, metadata !DIExpression()), !dbg !3939
  store i32* %temp, i32** %temp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %temp.addr, metadata !3940, metadata !DIExpression()), !dbg !3941
  call void @llvm.dbg.declare(metadata %struct.int34x_thermal_zone** %d, metadata !3942, metadata !DIExpression()), !dbg !3943
  %0 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %zone.addr, align 8, !dbg !3944
  %devdata = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %0, i32 0, i32 8, !dbg !3945
  %1 = load i8*, i8** %devdata, align 8, !dbg !3945
  %2 = bitcast i8* %1 to %struct.int34x_thermal_zone*, !dbg !3944
  store %struct.int34x_thermal_zone* %2, %struct.int34x_thermal_zone** %d, align 8, !dbg !3943
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3946, metadata !DIExpression()), !dbg !3947
  call void @llvm.dbg.declare(metadata i64* %hyst, metadata !3948, metadata !DIExpression()), !dbg !3949
  %3 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %d, align 8, !dbg !3950
  %override_ops = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %3, i32 0, i32 11, !dbg !3952
  %4 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %override_ops, align 8, !dbg !3952
  %tobool = icmp ne %struct.thermal_zone_device_ops* %4, null, !dbg !3950
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !3953

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %d, align 8, !dbg !3954
  %override_ops1 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %5, i32 0, i32 11, !dbg !3955
  %6 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %override_ops1, align 8, !dbg !3955
  %get_trip_hyst = getelementptr inbounds %struct.thermal_zone_device_ops, %struct.thermal_zone_device_ops* %6, i32 0, i32 8, !dbg !3956
  %7 = load i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)** %get_trip_hyst, align 8, !dbg !3956
  %tobool2 = icmp ne i32 (%struct.thermal_zone_device*, i32, i32*)* %7, null, !dbg !3954
  br i1 %tobool2, label %if.then, label %if.end, !dbg !3957

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %d, align 8, !dbg !3958
  %override_ops3 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %8, i32 0, i32 11, !dbg !3959
  %9 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %override_ops3, align 8, !dbg !3959
  %get_trip_hyst4 = getelementptr inbounds %struct.thermal_zone_device_ops, %struct.thermal_zone_device_ops* %9, i32 0, i32 8, !dbg !3960
  %10 = load i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)** %get_trip_hyst4, align 8, !dbg !3960
  %11 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %zone.addr, align 8, !dbg !3961
  %12 = load i32, i32* %trip.addr, align 4, !dbg !3962
  %13 = load i32*, i32** %temp.addr, align 8, !dbg !3963
  %call = call i32 %10(%struct.thermal_zone_device* %11, i32 %12, i32* %13) #6, !dbg !3958
  store i32 %call, i32* %retval, align 4, !dbg !3964
  br label %return, !dbg !3964

if.end:                                           ; preds = %land.lhs.true, %entry
  %14 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %d, align 8, !dbg !3965
  %adev = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %14, i32 0, i32 0, !dbg !3966
  %15 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !3966
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %15, i32 0, i32 1, !dbg !3967
  %16 = load i8*, i8** %handle, align 8, !dbg !3967
  %call5 = call i32 @acpi_evaluate_integer(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), %struct.acpi_object_list* null, i64* %hyst) #6, !dbg !3968
  store i32 %call5, i32* %status, align 4, !dbg !3969
  %17 = load i32, i32* %status, align 4, !dbg !3970
  %tobool6 = icmp ne i32 %17, 0, !dbg !3970
  br i1 %tobool6, label %if.then7, label %if.else, !dbg !3972

if.then7:                                         ; preds = %if.end
  %18 = load i32*, i32** %temp.addr, align 8, !dbg !3973
  store i32 0, i32* %18, align 4, !dbg !3974
  br label %if.end8, !dbg !3975

if.else:                                          ; preds = %if.end
  %19 = load i64, i64* %hyst, align 8, !dbg !3976
  %mul = mul i64 %19, 100, !dbg !3977
  %conv = trunc i64 %mul to i32, !dbg !3976
  %20 = load i32*, i32** %temp.addr, align 8, !dbg !3978
  store i32 %conv, i32* %20, align 4, !dbg !3979
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then7
  store i32 0, i32* %retval, align 4, !dbg !3980
  br label %return, !dbg !3980

return:                                           ; preds = %if.end8, %if.then
  %21 = load i32, i32* %retval, align 4, !dbg !3981
  ret i32 %21, !dbg !3981
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_lpat_raw_to_temp(%struct.acpi_lpat_conversion_table*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_execute_simple_method(i8*, i8*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @millicelsius_to_deci_kelvin(i64 %t) #0 !dbg !3982 {
entry:
  %t.addr = alloca i64, align 8
  %__x = alloca i64, align 8
  %__d = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i64 %t, i64* %t.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %t.addr, metadata !3983, metadata !DIExpression()), !dbg !3984
  %0 = load i64, i64* %t.addr, align 8, !dbg !3985
  %call = call i64 @millicelsius_to_milli_kelvin(i64 %0) #6, !dbg !3986
  store i64 %call, i64* %t.addr, align 8, !dbg !3987
  call void @llvm.dbg.declare(metadata i64* %__x, metadata !3988, metadata !DIExpression()), !dbg !3990
  %1 = load i64, i64* %t.addr, align 8, !dbg !3990
  store i64 %1, i64* %__x, align 8, !dbg !3990
  call void @llvm.dbg.declare(metadata i32* %__d, metadata !3991, metadata !DIExpression()), !dbg !3990
  store i32 100, i32* %__d, align 4, !dbg !3990
  %2 = load i64, i64* %__x, align 8, !dbg !3990
  %cmp = icmp sgt i64 %2, 0, !dbg !3990
  %conv = zext i1 %cmp to i32, !dbg !3990
  %3 = load i32, i32* %__d, align 4, !dbg !3990
  %cmp1 = icmp sgt i32 %3, 0, !dbg !3990
  %conv2 = zext i1 %cmp1 to i32, !dbg !3990
  %cmp3 = icmp eq i32 %conv, %conv2, !dbg !3990
  br i1 %cmp3, label %cond.true, label %cond.false, !dbg !3990

cond.true:                                        ; preds = %entry
  %4 = load i64, i64* %__x, align 8, !dbg !3990
  %5 = load i32, i32* %__d, align 4, !dbg !3990
  %div = sdiv i32 %5, 2, !dbg !3990
  %conv5 = sext i32 %div to i64, !dbg !3990
  %add = add i64 %4, %conv5, !dbg !3990
  %6 = load i32, i32* %__d, align 4, !dbg !3990
  %conv6 = sext i32 %6 to i64, !dbg !3990
  %div7 = sdiv i64 %add, %conv6, !dbg !3990
  br label %cond.end, !dbg !3990

cond.false:                                       ; preds = %entry
  %7 = load i64, i64* %__x, align 8, !dbg !3990
  %8 = load i32, i32* %__d, align 4, !dbg !3990
  %div8 = sdiv i32 %8, 2, !dbg !3990
  %conv9 = sext i32 %div8 to i64, !dbg !3990
  %sub = sub i64 %7, %conv9, !dbg !3990
  %9 = load i32, i32* %__d, align 4, !dbg !3990
  %conv10 = sext i32 %9 to i64, !dbg !3990
  %div11 = sdiv i64 %sub, %conv10, !dbg !3990
  br label %cond.end, !dbg !3990

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %div7, %cond.true ], [ %div11, %cond.false ], !dbg !3990
  store i64 %cond, i64* %tmp, align 8, !dbg !3990
  %10 = load i64, i64* %tmp, align 8, !dbg !3990
  ret i64 %10, !dbg !3992
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @millicelsius_to_milli_kelvin(i64 %t) #0 !dbg !3993 {
entry:
  %t.addr = alloca i64, align 8
  store i64 %t, i64* %t.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %t.addr, metadata !3994, metadata !DIExpression()), !dbg !3995
  %0 = load i64, i64* %t.addr, align 8, !dbg !3996
  %sub = sub i64 %0, -273150, !dbg !3997
  ret i64 %sub, !dbg !3998
}

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
!llvm.module.flags = !{!2374, !2375, !2376, !2377}
!llvm.ident = !{!2378}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "int340x_thermal_zone_ops", scope: !2, file: !3, line: 149, type: !2289, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !106, globals: !113, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/thermal/intel/int340x_thermal/int340x_thermal_zone.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !64, !69, !75, !83, !94, !99}
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
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_device_mode", file: !65, line: 7, baseType: !7, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/uapi/linux/thermal.h", directory: "/home/lizy2001/genbc/linux")
!66 = !{!67, !68}
!67 = !DIEnumerator(name: "THERMAL_DEVICE_DISABLED", value: 0, isUnsigned: true)
!68 = !DIEnumerator(name: "THERMAL_DEVICE_ENABLED", value: 1, isUnsigned: true)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_trip_type", file: !65, line: 12, baseType: !7, size: 32, elements: !70)
!70 = !{!71, !72, !73, !74}
!71 = !DIEnumerator(name: "THERMAL_TRIP_ACTIVE", value: 0, isUnsigned: true)
!72 = !DIEnumerator(name: "THERMAL_TRIP_PASSIVE", value: 1, isUnsigned: true)
!73 = !DIEnumerator(name: "THERMAL_TRIP_HOT", value: 2, isUnsigned: true)
!74 = !DIEnumerator(name: "THERMAL_TRIP_CRITICAL", value: 3, isUnsigned: true)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_trend", file: !76, line: 40, baseType: !7, size: 32, elements: !77)
!76 = !DIFile(filename: "./include/linux/thermal.h", directory: "/home/lizy2001/genbc/linux")
!77 = !{!78, !79, !80, !81, !82}
!78 = !DIEnumerator(name: "THERMAL_TREND_STABLE", value: 0, isUnsigned: true)
!79 = !DIEnumerator(name: "THERMAL_TREND_RAISING", value: 1, isUnsigned: true)
!80 = !DIEnumerator(name: "THERMAL_TREND_DROPPING", value: 2, isUnsigned: true)
!81 = !DIEnumerator(name: "THERMAL_TREND_RAISE_FULL", value: 3, isUnsigned: true)
!82 = !DIEnumerator(name: "THERMAL_TREND_DROP_FULL", value: 4, isUnsigned: true)
!83 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_notify_event", file: !76, line: 49, baseType: !7, size: 32, elements: !84)
!84 = !{!85, !86, !87, !88, !89, !90, !91, !92, !93}
!85 = !DIEnumerator(name: "THERMAL_EVENT_UNSPECIFIED", value: 0, isUnsigned: true)
!86 = !DIEnumerator(name: "THERMAL_EVENT_TEMP_SAMPLE", value: 1, isUnsigned: true)
!87 = !DIEnumerator(name: "THERMAL_TRIP_VIOLATED", value: 2, isUnsigned: true)
!88 = !DIEnumerator(name: "THERMAL_TRIP_CHANGED", value: 3, isUnsigned: true)
!89 = !DIEnumerator(name: "THERMAL_DEVICE_DOWN", value: 4, isUnsigned: true)
!90 = !DIEnumerator(name: "THERMAL_DEVICE_UP", value: 5, isUnsigned: true)
!91 = !DIEnumerator(name: "THERMAL_DEVICE_POWER_CAPABILITY_CHANGED", value: 6, isUnsigned: true)
!92 = !DIEnumerator(name: "THERMAL_TABLE_CHANGED", value: 7, isUnsigned: true)
!93 = !DIEnumerator(name: "THERMAL_EVENT_KEEP_ALIVE", value: 8, isUnsigned: true)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !95, line: 10, baseType: !7, size: 32, elements: !96)
!95 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!96 = !{!97, !98}
!97 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!98 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !100, line: 305, baseType: !7, size: 32, elements: !101)
!100 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!101 = !{!102, !103, !104, !105}
!102 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!103 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!104 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!105 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!106 = !{!107, !109, !110, !111, !112}
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !108, line: 148, baseType: !7)
!108 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!110 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!111 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!112 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!113 = !{!114, !121, !126, !131, !136, !0, !141}
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author169", scope: !2, file: !3, line: 289, type: !116, isLocal: true, isDefinition: true, align: 8)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 464, elements: !119)
!117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!118 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!119 = !{!120}
!120 = !DISubrange(count: 58)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author170", scope: !2, file: !3, line: 290, type: !123, isLocal: true, isDefinition: true, align: 8)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 688, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 86)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description171", scope: !2, file: !3, line: 291, type: !128, isLocal: true, isDefinition: true, align: 8)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 600, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 75)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file172", scope: !2, file: !3, line: 292, type: !133, isLocal: true, isDefinition: true, align: 8)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 680, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 85)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license173", scope: !2, file: !3, line: 292, type: !138, isLocal: true, isDefinition: true, align: 8)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 288, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 36)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(name: "int340x_thermal_params", scope: !2, file: !3, line: 208, type: !143, isLocal: true, isDefinition: true)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_params", file: !76, line: 240, size: 576, elements: !144)
!144 = !{!145, !149, !152, !153, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "governor_name", scope: !143, file: !76, line: 241, baseType: !146, size: 160)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 160, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 20)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "no_hwmon", scope: !143, file: !76, line: 248, baseType: !150, size: 8, offset: 160)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !108, line: 30, baseType: !151)
!151 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "num_tbps", scope: !143, file: !76, line: 250, baseType: !110, size: 32, offset: 192)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "tbp", scope: !143, file: !76, line: 251, baseType: !154, size: 64, offset: 256)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_bind_params", file: !76, line: 205, size: 256, elements: !156)
!156 = !{!157, !2254, !2255, !2256, !2257}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !155, file: !76, line: 206, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device", file: !76, line: 93, size: 6528, elements: !160)
!160 = !{!161, !162, !163, !2221, !2222, !2223, !2224, !2250, !2251, !2252, !2253}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !159, file: !76, line: 94, baseType: !110, size: 32)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !159, file: !76, line: 95, baseType: !146, size: 160, offset: 32)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !159, file: !76, line: 96, baseType: !164, size: 5568, offset: 192)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !165)
!165 = !{!166, !1665, !1667, !1670, !1671, !1722, !1819, !1820, !1821, !1822, !1823, !1832, !1937, !1950, !2146, !2147, !2151, !2153, !2154, !2155, !2159, !2165, !2166, !2169, !2170, !2171, !2174, !2175, !2176, !2177, !2209, !2210, !2211, !2214, !2217, !2218, !2219, !2220}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !164, file: !30, line: 462, baseType: !167, size: 512)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !168, line: 64, size: 512, elements: !169)
!168 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!169 = !{!170, !172, !178, !180, !240, !1502, !1655, !1660, !1661, !1662, !1663, !1664}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !167, file: !168, line: 65, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !167, file: !168, line: 66, baseType: !173, size: 128, offset: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !108, line: 178, size: 128, elements: !174)
!174 = !{!175, !177}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !173, file: !108, line: 179, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !173, file: !108, line: 179, baseType: !176, size: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !167, file: !168, line: 67, baseType: !179, size: 64, offset: 192)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !167, file: !168, line: 68, baseType: !181, size: 64, offset: 256)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !168, line: 192, size: 704, elements: !183)
!183 = !{!184, !185, !201, !202}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !182, file: !168, line: 193, baseType: !173, size: 128)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !182, file: !168, line: 194, baseType: !186, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !187, line: 83, baseType: !188)
!187 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !187, line: 71, elements: !189)
!189 = !{!190}
!190 = !DIDerivedType(tag: DW_TAG_member, scope: !188, file: !187, line: 72, baseType: !191)
!191 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !188, file: !187, line: 72, elements: !192)
!192 = !{!193}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !191, file: !187, line: 73, baseType: !194)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !187, line: 20, elements: !195)
!195 = !{!196}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !194, file: !187, line: 21, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !198, line: 25, baseType: !199)
!198 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !198, line: 25, elements: !200)
!200 = !{}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !182, file: !168, line: 195, baseType: !167, size: 512, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !182, file: !168, line: 196, baseType: !203, size: 64, offset: 640)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !205)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !168, line: 156, size: 192, elements: !206)
!206 = !{!207, !212, !217}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !205, file: !168, line: 157, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{!110, !181, !179}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !205, file: !168, line: 158, baseType: !213, size: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{!171, !181, !179}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !205, file: !168, line: 159, baseType: !218, size: 64, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{!110, !181, !179, !222}
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !168, line: 148, size: 20736, elements: !224)
!224 = !{!225, !230, !234, !235, !239}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !223, file: !168, line: 149, baseType: !226, size: 192)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 192, elements: !228)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!228 = !{!229}
!229 = !DISubrange(count: 3)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !223, file: !168, line: 150, baseType: !231, size: 4096, offset: 192)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 4096, elements: !232)
!232 = !{!233}
!233 = !DISubrange(count: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !223, file: !168, line: 151, baseType: !110, size: 32, offset: 4288)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !223, file: !168, line: 152, baseType: !236, size: 16384, offset: 4320)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 16384, elements: !237)
!237 = !{!238}
!238 = !DISubrange(count: 2048)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !223, file: !168, line: 153, baseType: !110, size: 32, offset: 20704)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !167, file: !168, line: 69, baseType: !241, size: 64, offset: 320)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !168, line: 138, size: 448, elements: !243)
!243 = !{!244, !248, !276, !278, !1450, !1481, !1485}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !242, file: !168, line: 139, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{null, !179}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !242, file: !168, line: 140, baseType: !249, size: 64, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !251)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !252, line: 230, size: 128, elements: !253)
!252 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!253 = !{!254, !269}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !251, file: !252, line: 231, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DISubroutineType(types: !257)
!257 = !{!258, !179, !262, !227}
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !108, line: 60, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !260, line: 73, baseType: !261)
!260 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !260, line: 15, baseType: !112)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !252, line: 30, size: 128, elements: !264)
!264 = !{!265, !266}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !263, file: !252, line: 31, baseType: !171, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !263, file: !252, line: 32, baseType: !267, size: 16, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !108, line: 19, baseType: !268)
!268 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !251, file: !252, line: 232, baseType: !270, size: 64, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!258, !179, !262, !171, !273}
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !108, line: 55, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !260, line: 72, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !260, line: 16, baseType: !111)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !242, file: !168, line: 141, baseType: !277, size: 64, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !242, file: !168, line: 142, baseType: !279, size: 64, offset: 192)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !282)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !252, line: 84, size: 320, elements: !283)
!283 = !{!284, !285, !289, !1447, !1448}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !282, file: !252, line: 85, baseType: !171, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !282, file: !252, line: 86, baseType: !286, size: 64, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{!267, !179, !262, !110}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !282, file: !252, line: 88, baseType: !290, size: 64, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{!267, !179, !293, !110}
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !252, line: 168, size: 448, elements: !295)
!295 = !{!296, !297, !298, !299, !309, !310}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !294, file: !252, line: 169, baseType: !263, size: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !294, file: !252, line: 170, baseType: !273, size: 64, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !294, file: !252, line: 171, baseType: !109, size: 64, offset: 192)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !294, file: !252, line: 172, baseType: !300, size: 64, offset: 256)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{!258, !303, !179, !293, !227, !306, !273}
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !305, line: 526, flags: DIFlagFwdDecl)
!305 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !108, line: 46, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !260, line: 88, baseType: !308)
!308 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !294, file: !252, line: 174, baseType: !300, size: 64, offset: 320)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !294, file: !252, line: 176, baseType: !311, size: 64, offset: 384)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!110, !303, !179, !293, !314}
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !316, line: 305, size: 1472, elements: !317)
!316 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!317 = !{!318, !319, !320, !321, !322, !330, !331, !1421, !1427, !1428, !1433, !1434, !1437, !1441, !1442, !1443, !1444, !1445}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !315, file: !316, line: 308, baseType: !111, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !315, file: !316, line: 309, baseType: !111, size: 64, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !315, file: !316, line: 313, baseType: !314, size: 64, offset: 128)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !315, file: !316, line: 313, baseType: !314, size: 64, offset: 192)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !315, file: !316, line: 315, baseType: !323, size: 192, align: 64, offset: 256)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !324, line: 24, size: 192, align: 64, elements: !325)
!324 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!325 = !{!326, !327, !329}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !323, file: !324, line: 25, baseType: !111, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !323, file: !324, line: 26, baseType: !328, size: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !323, file: !324, line: 27, baseType: !328, size: 64, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !315, file: !316, line: 323, baseType: !111, size: 64, offset: 448)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !315, file: !316, line: 327, baseType: !332, size: 64, offset: 512)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !316, line: 388, size: 7296, elements: !334)
!334 = !{!335, !1417}
!335 = !DIDerivedType(tag: DW_TAG_member, scope: !333, file: !316, line: 389, baseType: !336, size: 7296)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !333, file: !316, line: 389, size: 7296, elements: !337)
!337 = !{!338, !339, !343, !349, !353, !354, !355, !356, !357, !365, !370, !371, !372, !373, !382, !383, !384, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !419, !427, !430, !478, !479, !1387, !1388, !1391, !1395, !1396, !1399, !1400, !1401, !1404, !1416}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !336, file: !316, line: 390, baseType: !314, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !336, file: !316, line: 391, baseType: !340, size: 64, offset: 64)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !324, line: 31, size: 64, elements: !341)
!341 = !{!342}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !340, file: !324, line: 32, baseType: !328, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !336, file: !316, line: 392, baseType: !344, size: 64, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !345, line: 23, baseType: !346)
!345 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !347, line: 31, baseType: !348)
!347 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!348 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !336, file: !316, line: 394, baseType: !350, size: 64, offset: 192)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DISubroutineType(types: !352)
!352 = !{!111, !303, !111, !111, !111, !111}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !336, file: !316, line: 398, baseType: !111, size: 64, offset: 256)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !336, file: !316, line: 399, baseType: !111, size: 64, offset: 320)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !336, file: !316, line: 405, baseType: !111, size: 64, offset: 384)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !336, file: !316, line: 406, baseType: !111, size: 64, offset: 448)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !336, file: !316, line: 407, baseType: !358, size: 64, offset: 512)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !305, line: 286, baseType: !360)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !305, line: 286, size: 64, elements: !361)
!361 = !{!362}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !360, file: !305, line: 286, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !364, line: 18, baseType: !111)
!364 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!365 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !336, file: !316, line: 416, baseType: !366, size: 32, offset: 576)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !108, line: 168, baseType: !367)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !108, line: 166, size: 32, elements: !368)
!368 = !{!369}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !367, file: !108, line: 167, baseType: !110, size: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !336, file: !316, line: 428, baseType: !366, size: 32, offset: 608)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !336, file: !316, line: 437, baseType: !366, size: 32, offset: 640)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !336, file: !316, line: 447, baseType: !366, size: 32, offset: 672)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !336, file: !316, line: 450, baseType: !374, size: 64, offset: 704)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !375, line: 13, baseType: !376)
!375 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !108, line: 175, baseType: !377)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !108, line: 173, size: 64, elements: !378)
!378 = !{!379}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !377, file: !108, line: 174, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !345, line: 22, baseType: !381)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !347, line: 30, baseType: !308)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !336, file: !316, line: 452, baseType: !110, size: 32, offset: 768)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !336, file: !316, line: 454, baseType: !186, offset: 800)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !336, file: !316, line: 457, baseType: !385, size: 256, offset: 832)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !386, line: 35, size: 256, elements: !387)
!386 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!387 = !{!388, !389, !390, !392}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !385, file: !386, line: 36, baseType: !374, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !385, file: !386, line: 42, baseType: !374, size: 64, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !385, file: !386, line: 46, baseType: !391, offset: 128)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !187, line: 29, baseType: !194)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !385, file: !386, line: 47, baseType: !173, size: 128, offset: 128)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !336, file: !316, line: 459, baseType: !173, size: 128, offset: 1088)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !336, file: !316, line: 466, baseType: !111, size: 64, offset: 1216)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !336, file: !316, line: 467, baseType: !111, size: 64, offset: 1280)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !336, file: !316, line: 469, baseType: !111, size: 64, offset: 1344)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !336, file: !316, line: 470, baseType: !111, size: 64, offset: 1408)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !336, file: !316, line: 471, baseType: !376, size: 64, offset: 1472)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !336, file: !316, line: 472, baseType: !111, size: 64, offset: 1536)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !336, file: !316, line: 473, baseType: !111, size: 64, offset: 1600)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !336, file: !316, line: 474, baseType: !111, size: 64, offset: 1664)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !336, file: !316, line: 475, baseType: !111, size: 64, offset: 1728)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !336, file: !316, line: 477, baseType: !186, offset: 1792)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !336, file: !316, line: 478, baseType: !111, size: 64, offset: 1792)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !336, file: !316, line: 478, baseType: !111, size: 64, offset: 1856)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !336, file: !316, line: 478, baseType: !111, size: 64, offset: 1920)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !336, file: !316, line: 478, baseType: !111, size: 64, offset: 1984)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !336, file: !316, line: 479, baseType: !111, size: 64, offset: 2048)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !336, file: !316, line: 479, baseType: !111, size: 64, offset: 2112)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !336, file: !316, line: 479, baseType: !111, size: 64, offset: 2176)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !336, file: !316, line: 480, baseType: !111, size: 64, offset: 2240)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !336, file: !316, line: 480, baseType: !111, size: 64, offset: 2304)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !336, file: !316, line: 480, baseType: !111, size: 64, offset: 2368)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !336, file: !316, line: 480, baseType: !111, size: 64, offset: 2432)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !336, file: !316, line: 482, baseType: !416, size: 2816, offset: 2496)
!416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 2816, elements: !417)
!417 = !{!418}
!418 = !DISubrange(count: 44)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !336, file: !316, line: 488, baseType: !420, size: 256, offset: 5312)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !421, line: 60, size: 256, elements: !422)
!421 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!422 = !{!423}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !420, file: !421, line: 61, baseType: !424, size: 256)
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !374, size: 256, elements: !425)
!425 = !{!426}
!426 = !DISubrange(count: 4)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !336, file: !316, line: 490, baseType: !428, size: 64, offset: 5568)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !316, line: 490, flags: DIFlagFwdDecl)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !336, file: !316, line: 493, baseType: !431, size: 896, offset: 5632)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !432, line: 53, baseType: !433)
!432 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !432, line: 13, size: 896, elements: !434)
!434 = !{!435, !436, !437, !438, !441, !442, !449, !450, !470, !471, !474}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !433, file: !432, line: 18, baseType: !344, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !433, file: !432, line: 28, baseType: !376, size: 64, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !433, file: !432, line: 31, baseType: !385, size: 256, offset: 128)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !433, file: !432, line: 32, baseType: !439, size: 64, offset: 384)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !432, line: 32, flags: DIFlagFwdDecl)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !433, file: !432, line: 37, baseType: !268, size: 16, offset: 448)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !433, file: !432, line: 40, baseType: !443, size: 192, offset: 512)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !444, line: 53, size: 192, elements: !445)
!444 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!445 = !{!446, !447, !448}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !443, file: !444, line: 54, baseType: !374, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !443, file: !444, line: 55, baseType: !186, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !443, file: !444, line: 59, baseType: !173, size: 128, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !433, file: !432, line: 41, baseType: !109, size: 64, offset: 704)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !433, file: !432, line: 42, baseType: !451, size: 64, offset: 768)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !453)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !454, line: 13, size: 896, elements: !455)
!454 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!455 = !{!456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !453, file: !454, line: 14, baseType: !109, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !453, file: !454, line: 15, baseType: !111, size: 64, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !453, file: !454, line: 17, baseType: !111, size: 64, offset: 128)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !453, file: !454, line: 17, baseType: !111, size: 64, offset: 192)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !453, file: !454, line: 19, baseType: !112, size: 64, offset: 256)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !453, file: !454, line: 21, baseType: !112, size: 64, offset: 320)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !453, file: !454, line: 22, baseType: !112, size: 64, offset: 384)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !453, file: !454, line: 23, baseType: !112, size: 64, offset: 448)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !453, file: !454, line: 24, baseType: !112, size: 64, offset: 512)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !453, file: !454, line: 25, baseType: !112, size: 64, offset: 576)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !453, file: !454, line: 26, baseType: !112, size: 64, offset: 640)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !453, file: !454, line: 27, baseType: !112, size: 64, offset: 704)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !453, file: !454, line: 28, baseType: !112, size: 64, offset: 768)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !453, file: !454, line: 29, baseType: !112, size: 64, offset: 832)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !433, file: !432, line: 44, baseType: !366, size: 32, offset: 832)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !433, file: !432, line: 50, baseType: !472, size: 16, offset: 864)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !345, line: 19, baseType: !473)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !347, line: 24, baseType: !268)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !433, file: !432, line: 51, baseType: !475, size: 16, offset: 880)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !345, line: 18, baseType: !476)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !347, line: 23, baseType: !477)
!477 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !336, file: !316, line: 495, baseType: !111, size: 64, offset: 6528)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !336, file: !316, line: 497, baseType: !480, size: 64, offset: 6592)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !316, line: 381, size: 384, elements: !482)
!482 = !{!483, !484, !1386}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !481, file: !316, line: 382, baseType: !366, size: 32)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !481, file: !316, line: 383, baseType: !485, size: 128, offset: 64)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !316, line: 376, size: 128, elements: !486)
!486 = !{!487, !1384}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !485, file: !316, line: 377, baseType: !488, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !490, line: 640, size: 48640, elements: !491)
!490 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!491 = !{!492, !500, !502, !503, !509, !510, !511, !512, !513, !514, !515, !516, !520, !538, !549, !644, !645, !646, !657, !658, !660, !661, !662, !663, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !742, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !798, !800, !801, !802, !814, !816, !817, !818, !819, !820, !826, !827, !828, !829, !830, !831, !832, !844, !849, !854, !855, !856, !859, !863, !866, !869, !872, !875, !879, !882, !885, !891, !892, !893, !899, !900, !901, !902, !903, !912, !913, !914, !915, !916, !921, !922, !923, !926, !927, !930, !933, !936, !939, !942, !945, !946, !1026, !1029, !1032, !1033, !1036, !1037, !1038, !1044, !1045, !1046, !1059, !1060, !1061, !1071, !1076, !1079, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !489, file: !490, line: 646, baseType: !493, size: 128)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !494, line: 56, size: 128, elements: !495)
!494 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!495 = !{!496, !497}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !493, file: !494, line: 57, baseType: !111, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !493, file: !494, line: 58, baseType: !498, size: 32, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !345, line: 21, baseType: !499)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !347, line: 27, baseType: !7)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !489, file: !490, line: 649, baseType: !501, size: 64, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !112)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !489, file: !490, line: 657, baseType: !109, size: 64, offset: 192)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !489, file: !490, line: 658, baseType: !504, size: 32, offset: 256)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !505, line: 113, baseType: !506)
!505 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !505, line: 111, size: 32, elements: !507)
!507 = !{!508}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !506, file: !505, line: 112, baseType: !366, size: 32)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !489, file: !490, line: 660, baseType: !7, size: 32, offset: 288)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !489, file: !490, line: 661, baseType: !7, size: 32, offset: 320)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !489, file: !490, line: 684, baseType: !110, size: 32, offset: 352)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !489, file: !490, line: 686, baseType: !110, size: 32, offset: 384)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !489, file: !490, line: 687, baseType: !110, size: 32, offset: 416)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !489, file: !490, line: 688, baseType: !110, size: 32, offset: 448)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !489, file: !490, line: 689, baseType: !7, size: 32, offset: 480)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !489, file: !490, line: 691, baseType: !517, size: 64, offset: 512)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !519)
!519 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !490, line: 691, flags: DIFlagFwdDecl)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !489, file: !490, line: 692, baseType: !521, size: 832, offset: 576)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !490, line: 451, size: 832, elements: !522)
!522 = !{!523, !528, !529, !530, !531, !532, !533, !534, !535, !536}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !521, file: !490, line: 453, baseType: !524, size: 128)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !490, line: 325, size: 128, elements: !525)
!525 = !{!526, !527}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !524, file: !490, line: 326, baseType: !111, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !524, file: !490, line: 327, baseType: !498, size: 32, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !521, file: !490, line: 454, baseType: !323, size: 192, align: 64, offset: 128)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !521, file: !490, line: 455, baseType: !173, size: 128, offset: 320)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !521, file: !490, line: 456, baseType: !7, size: 32, offset: 448)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !521, file: !490, line: 458, baseType: !344, size: 64, offset: 512)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !521, file: !490, line: 459, baseType: !344, size: 64, offset: 576)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !521, file: !490, line: 460, baseType: !344, size: 64, offset: 640)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !521, file: !490, line: 461, baseType: !344, size: 64, offset: 704)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !521, file: !490, line: 463, baseType: !344, size: 64, offset: 768)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !521, file: !490, line: 465, baseType: !537, offset: 832)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !490, line: 415, elements: !200)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !489, file: !490, line: 693, baseType: !539, size: 384, offset: 1408)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !490, line: 489, size: 384, elements: !540)
!540 = !{!541, !542, !543, !544, !545, !546, !547}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !539, file: !490, line: 490, baseType: !173, size: 128)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !539, file: !490, line: 491, baseType: !111, size: 64, offset: 128)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !539, file: !490, line: 492, baseType: !111, size: 64, offset: 192)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !539, file: !490, line: 493, baseType: !7, size: 32, offset: 256)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !539, file: !490, line: 494, baseType: !268, size: 16, offset: 288)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !539, file: !490, line: 495, baseType: !268, size: 16, offset: 304)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !539, file: !490, line: 497, baseType: !548, size: 64, offset: 320)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !489, file: !490, line: 697, baseType: !550, size: 1792, offset: 1792)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !490, line: 507, size: 1792, elements: !551)
!551 = !{!552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !641, !642}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !550, file: !490, line: 508, baseType: !323, size: 192, align: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !550, file: !490, line: 515, baseType: !344, size: 64, offset: 192)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !550, file: !490, line: 516, baseType: !344, size: 64, offset: 256)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !550, file: !490, line: 517, baseType: !344, size: 64, offset: 320)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !550, file: !490, line: 518, baseType: !344, size: 64, offset: 384)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !550, file: !490, line: 519, baseType: !344, size: 64, offset: 448)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !550, file: !490, line: 526, baseType: !380, size: 64, offset: 512)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !550, file: !490, line: 527, baseType: !344, size: 64, offset: 576)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !550, file: !490, line: 528, baseType: !7, size: 32, offset: 640)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !550, file: !490, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !550, file: !490, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !550, file: !490, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !550, file: !490, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !550, file: !490, line: 563, baseType: !566, size: 512, offset: 704)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !567)
!567 = !{!568, !576, !577, !582, !634, !638, !639, !640}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !566, file: !6, line: 119, baseType: !569, size: 256)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !570, line: 9, size: 256, elements: !571)
!570 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!571 = !{!572, !573}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !569, file: !570, line: 10, baseType: !323, size: 192, align: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !569, file: !570, line: 11, baseType: !574, size: 64, offset: 192)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !575, line: 29, baseType: !380)
!575 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!576 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !566, file: !6, line: 120, baseType: !574, size: 64, offset: 256)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !566, file: !6, line: 121, baseType: !578, size: 64, offset: 320)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DISubroutineType(types: !580)
!580 = !{!5, !581}
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !566, file: !6, line: 122, baseType: !583, size: 64, offset: 384)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !585)
!585 = !{!586, !606, !607, !610, !620, !621, !629, !633}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !584, file: !6, line: 160, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !589)
!589 = !{!590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !588, file: !6, line: 215, baseType: !391)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !588, file: !6, line: 216, baseType: !7, size: 32)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !588, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !588, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !588, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !588, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !588, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !588, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !588, file: !6, line: 233, baseType: !574, size: 64, offset: 128)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !588, file: !6, line: 234, baseType: !581, size: 64, offset: 192)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !588, file: !6, line: 235, baseType: !574, size: 64, offset: 256)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !588, file: !6, line: 236, baseType: !581, size: 64, offset: 320)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !588, file: !6, line: 237, baseType: !603, size: 4096, offset: 512)
!603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !584, size: 4096, elements: !604)
!604 = !{!605}
!605 = !DISubrange(count: 8)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !584, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !584, file: !6, line: 162, baseType: !608, size: 32, offset: 96)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !108, line: 27, baseType: !609)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !260, line: 96, baseType: !110)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !584, file: !6, line: 163, baseType: !611, size: 32, offset: 128)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !612, line: 276, baseType: !613)
!612 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !612, line: 276, size: 32, elements: !614)
!614 = !{!615}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !613, file: !612, line: 276, baseType: !616, size: 32)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !612, line: 70, baseType: !617)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !612, line: 65, size: 32, elements: !618)
!618 = !{!619}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !617, file: !612, line: 66, baseType: !7, size: 32)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !584, file: !6, line: 164, baseType: !581, size: 64, offset: 192)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !584, file: !6, line: 165, baseType: !622, size: 128, offset: 256)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !570, line: 14, size: 128, elements: !623)
!623 = !{!624}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !622, file: !570, line: 15, baseType: !625, size: 128)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !324, line: 125, size: 128, elements: !626)
!626 = !{!627, !628}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !625, file: !324, line: 126, baseType: !340, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !625, file: !324, line: 127, baseType: !328, size: 64, offset: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !584, file: !6, line: 166, baseType: !630, size: 64, offset: 384)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{!574}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !584, file: !6, line: 167, baseType: !574, size: 64, offset: 448)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !566, file: !6, line: 123, baseType: !635, size: 8, offset: 448)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !345, line: 17, baseType: !636)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !347, line: 21, baseType: !637)
!637 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !566, file: !6, line: 124, baseType: !635, size: 8, offset: 456)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !566, file: !6, line: 125, baseType: !635, size: 8, offset: 464)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !566, file: !6, line: 126, baseType: !635, size: 8, offset: 472)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !550, file: !490, line: 572, baseType: !566, size: 512, offset: 1216)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !550, file: !490, line: 580, baseType: !643, size: 64, offset: 1728)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !489, file: !490, line: 721, baseType: !7, size: 32, offset: 3584)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !489, file: !490, line: 722, baseType: !110, size: 32, offset: 3616)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !489, file: !490, line: 723, baseType: !647, size: 64, offset: 3648)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !649)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !650, line: 17, baseType: !651)
!650 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !650, line: 17, size: 64, elements: !652)
!652 = !{!653}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !651, file: !650, line: 17, baseType: !654, size: 64)
!654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 64, elements: !655)
!655 = !{!656}
!656 = !DISubrange(count: 1)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !489, file: !490, line: 724, baseType: !649, size: 64, offset: 3712)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !489, file: !490, line: 749, baseType: !659, offset: 3776)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !490, line: 290, elements: !200)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !489, file: !490, line: 751, baseType: !173, size: 128, offset: 3776)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !489, file: !490, line: 757, baseType: !332, size: 64, offset: 3904)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !489, file: !490, line: 758, baseType: !332, size: 64, offset: 3968)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !489, file: !490, line: 761, baseType: !664, size: 320, offset: 4032)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !421, line: 34, size: 320, elements: !665)
!665 = !{!666, !667}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !664, file: !421, line: 35, baseType: !344, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !664, file: !421, line: 36, baseType: !668, size: 256, offset: 64)
!668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 256, elements: !425)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !489, file: !490, line: 766, baseType: !110, size: 32, offset: 4352)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !489, file: !490, line: 767, baseType: !110, size: 32, offset: 4384)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !489, file: !490, line: 768, baseType: !110, size: 32, offset: 4416)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !489, file: !490, line: 770, baseType: !110, size: 32, offset: 4448)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !489, file: !490, line: 772, baseType: !111, size: 64, offset: 4480)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !489, file: !490, line: 775, baseType: !7, size: 32, offset: 4544)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !489, file: !490, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !489, file: !490, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !489, file: !490, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !489, file: !490, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !489, file: !490, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !489, file: !490, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !489, file: !490, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !489, file: !490, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !489, file: !490, line: 831, baseType: !111, size: 64, offset: 4672)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !489, file: !490, line: 833, baseType: !685, size: 384, offset: 4736)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !686)
!686 = !{!687, !692}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !685, file: !12, line: 26, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DISubroutineType(types: !690)
!690 = !{!112, !691}
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, scope: !685, file: !12, line: 27, baseType: !693, size: 320, offset: 64)
!693 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !685, file: !12, line: 27, size: 320, elements: !694)
!694 = !{!695, !705, !732}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !693, file: !12, line: 36, baseType: !696, size: 320)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !693, file: !12, line: 29, size: 320, elements: !697)
!697 = !{!698, !700, !701, !702, !703, !704}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !696, file: !12, line: 30, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !696, file: !12, line: 31, baseType: !498, size: 32, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !696, file: !12, line: 32, baseType: !498, size: 32, offset: 96)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !696, file: !12, line: 33, baseType: !498, size: 32, offset: 128)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !696, file: !12, line: 34, baseType: !344, size: 64, offset: 192)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !696, file: !12, line: 35, baseType: !699, size: 64, offset: 256)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !693, file: !12, line: 46, baseType: !706, size: 192)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !693, file: !12, line: 38, size: 192, elements: !707)
!707 = !{!708, !709, !710, !731}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !706, file: !12, line: 39, baseType: !608, size: 32)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !706, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!710 = !DIDerivedType(tag: DW_TAG_member, scope: !706, file: !12, line: 41, baseType: !711, size: 64, offset: 64)
!711 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !706, file: !12, line: 41, size: 64, elements: !712)
!712 = !{!713, !721}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !711, file: !12, line: 42, baseType: !714, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !716, line: 7, size: 128, elements: !717)
!716 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!717 = !{!718, !720}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !715, file: !716, line: 8, baseType: !719, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !260, line: 93, baseType: !308)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !715, file: !716, line: 9, baseType: !308, size: 64, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !711, file: !12, line: 43, baseType: !722, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !724, line: 7, size: 64, elements: !725)
!724 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!725 = !{!726, !730}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !723, file: !724, line: 8, baseType: !727, size: 32)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !724, line: 5, baseType: !728)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !345, line: 20, baseType: !729)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !347, line: 26, baseType: !110)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !723, file: !724, line: 9, baseType: !728, size: 32, offset: 32)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !706, file: !12, line: 45, baseType: !344, size: 64, offset: 128)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !693, file: !12, line: 54, baseType: !733, size: 256)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !693, file: !12, line: 48, size: 256, elements: !734)
!734 = !{!735, !738, !739, !740, !741}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !733, file: !12, line: 49, baseType: !736, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !733, file: !12, line: 50, baseType: !110, size: 32, offset: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !733, file: !12, line: 51, baseType: !110, size: 32, offset: 96)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !733, file: !12, line: 52, baseType: !111, size: 64, offset: 128)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !733, file: !12, line: 53, baseType: !111, size: 64, offset: 192)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !489, file: !490, line: 835, baseType: !743, size: 32, offset: 5120)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !108, line: 22, baseType: !744)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !260, line: 28, baseType: !110)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !489, file: !490, line: 836, baseType: !743, size: 32, offset: 5152)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !489, file: !490, line: 840, baseType: !111, size: 64, offset: 5184)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !489, file: !490, line: 849, baseType: !488, size: 64, offset: 5248)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !489, file: !490, line: 852, baseType: !488, size: 64, offset: 5312)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !489, file: !490, line: 857, baseType: !173, size: 128, offset: 5376)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !489, file: !490, line: 858, baseType: !173, size: 128, offset: 5504)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !489, file: !490, line: 859, baseType: !488, size: 64, offset: 5632)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !489, file: !490, line: 867, baseType: !173, size: 128, offset: 5696)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !489, file: !490, line: 868, baseType: !173, size: 128, offset: 5824)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !489, file: !490, line: 871, baseType: !755, size: 64, offset: 5952)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !757, line: 59, size: 768, elements: !758)
!757 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!758 = !{!759, !760, !761, !762, !773, !774, !781, !790}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !756, file: !757, line: 61, baseType: !504, size: 32)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !756, file: !757, line: 62, baseType: !7, size: 32, offset: 32)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !756, file: !757, line: 63, baseType: !186, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !756, file: !757, line: 65, baseType: !763, size: 256, offset: 64)
!763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !764, size: 256, elements: !425)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !108, line: 182, size: 64, elements: !765)
!765 = !{!766}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !764, file: !108, line: 183, baseType: !767, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !108, line: 186, size: 128, elements: !769)
!769 = !{!770, !771}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !768, file: !108, line: 187, baseType: !767, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !768, file: !108, line: 187, baseType: !772, size: 64, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !756, file: !757, line: 66, baseType: !764, size: 64, offset: 320)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !756, file: !757, line: 68, baseType: !775, size: 128, offset: 384)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !776, line: 40, baseType: !777)
!776 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !776, line: 36, size: 128, elements: !778)
!778 = !{!779, !780}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !777, file: !776, line: 37, baseType: !186)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !777, file: !776, line: 38, baseType: !173, size: 128)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !756, file: !757, line: 69, baseType: !782, size: 128, align: 64, offset: 512)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !108, line: 216, size: 128, align: 64, elements: !783)
!783 = !{!784, !786}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !782, file: !108, line: 217, baseType: !785, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !782, file: !108, line: 218, baseType: !787, size: 64, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DISubroutineType(types: !789)
!789 = !{null, !785}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !756, file: !757, line: 70, baseType: !791, size: 128, offset: 640)
!791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !792, size: 128, elements: !655)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !757, line: 54, size: 128, elements: !793)
!793 = !{!794, !795}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !792, file: !757, line: 55, baseType: !110, size: 32)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !792, file: !757, line: 56, baseType: !796, size: 64, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !757, line: 56, flags: DIFlagFwdDecl)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !489, file: !490, line: 872, baseType: !799, size: 512, offset: 6016)
!799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !768, size: 512, elements: !425)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !489, file: !490, line: 873, baseType: !173, size: 128, offset: 6528)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !489, file: !490, line: 874, baseType: !173, size: 128, offset: 6656)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !489, file: !490, line: 876, baseType: !803, size: 64, offset: 6784)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !805, line: 26, size: 192, elements: !806)
!805 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!806 = !{!807, !808}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !804, file: !805, line: 27, baseType: !7, size: 32)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !804, file: !805, line: 28, baseType: !809, size: 128, offset: 64)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !810, line: 43, size: 128, elements: !811)
!810 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!811 = !{!812, !813}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !809, file: !810, line: 44, baseType: !391)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !809, file: !810, line: 45, baseType: !173, size: 128)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !489, file: !490, line: 879, baseType: !815, size: 64, offset: 6848)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !489, file: !490, line: 882, baseType: !815, size: 64, offset: 6912)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !489, file: !490, line: 884, baseType: !344, size: 64, offset: 6976)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !489, file: !490, line: 885, baseType: !344, size: 64, offset: 7040)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !489, file: !490, line: 890, baseType: !344, size: 64, offset: 7104)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !489, file: !490, line: 891, baseType: !821, size: 128, offset: 7168)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !490, line: 242, size: 128, elements: !822)
!822 = !{!823, !824, !825}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !821, file: !490, line: 244, baseType: !344, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !821, file: !490, line: 245, baseType: !344, size: 64, offset: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !821, file: !490, line: 246, baseType: !391, offset: 128)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !489, file: !490, line: 900, baseType: !111, size: 64, offset: 7296)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !489, file: !490, line: 901, baseType: !111, size: 64, offset: 7360)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !489, file: !490, line: 904, baseType: !344, size: 64, offset: 7424)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !489, file: !490, line: 907, baseType: !344, size: 64, offset: 7488)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !489, file: !490, line: 910, baseType: !111, size: 64, offset: 7552)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !489, file: !490, line: 911, baseType: !111, size: 64, offset: 7616)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !489, file: !490, line: 914, baseType: !833, size: 640, offset: 7680)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !834, line: 123, size: 640, elements: !835)
!834 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!835 = !{!836, !842, !843}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !833, file: !834, line: 124, baseType: !837, size: 576)
!837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !838, size: 576, elements: !228)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !834, line: 108, size: 192, elements: !839)
!839 = !{!840, !841}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !838, file: !834, line: 109, baseType: !344, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !838, file: !834, line: 110, baseType: !622, size: 128, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !833, file: !834, line: 125, baseType: !7, size: 32, offset: 576)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !833, file: !834, line: 126, baseType: !7, size: 32, offset: 608)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !489, file: !490, line: 917, baseType: !845, size: 192, offset: 8320)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !834, line: 134, size: 192, elements: !846)
!846 = !{!847, !848}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !845, file: !834, line: 135, baseType: !782, size: 128, align: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !845, file: !834, line: 136, baseType: !7, size: 32, offset: 128)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !489, file: !490, line: 923, baseType: !850, size: 64, offset: 8512)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !852)
!852 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !853, line: 11, flags: DIFlagFwdDecl)
!853 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/lizy2001/genbc/linux")
!854 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !489, file: !490, line: 926, baseType: !850, size: 64, offset: 8576)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !489, file: !490, line: 929, baseType: !850, size: 64, offset: 8640)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !489, file: !490, line: 933, baseType: !857, size: 64, offset: 8704)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !490, line: 933, flags: DIFlagFwdDecl)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !489, file: !490, line: 943, baseType: !860, size: 128, offset: 8768)
!860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 128, elements: !861)
!861 = !{!862}
!862 = !DISubrange(count: 16)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !489, file: !490, line: 945, baseType: !864, size: 64, offset: 8896)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !490, line: 49, flags: DIFlagFwdDecl)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !489, file: !490, line: 956, baseType: !867, size: 64, offset: 8960)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !490, line: 45, flags: DIFlagFwdDecl)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !489, file: !490, line: 959, baseType: !870, size: 64, offset: 9024)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !490, line: 959, flags: DIFlagFwdDecl)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !489, file: !490, line: 962, baseType: !873, size: 64, offset: 9088)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !490, line: 66, flags: DIFlagFwdDecl)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !489, file: !490, line: 966, baseType: !876, size: 64, offset: 9152)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !878, line: 35, flags: DIFlagFwdDecl)
!878 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!879 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !489, file: !490, line: 969, baseType: !880, size: 64, offset: 9216)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !834, line: 223, flags: DIFlagFwdDecl)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !489, file: !490, line: 970, baseType: !883, size: 64, offset: 9280)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !490, line: 62, flags: DIFlagFwdDecl)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !489, file: !490, line: 971, baseType: !886, size: 64, offset: 9344)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !887, line: 25, baseType: !888)
!887 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !887, line: 23, size: 64, elements: !889)
!889 = !{!890}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !888, file: !887, line: 24, baseType: !654, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !489, file: !490, line: 972, baseType: !886, size: 64, offset: 9408)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !489, file: !490, line: 974, baseType: !886, size: 64, offset: 9472)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !489, file: !490, line: 975, baseType: !894, size: 192, offset: 9536)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !895, line: 30, size: 192, elements: !896)
!895 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!896 = !{!897, !898}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !894, file: !895, line: 31, baseType: !173, size: 128)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !894, file: !895, line: 32, baseType: !886, size: 64, offset: 128)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !489, file: !490, line: 976, baseType: !111, size: 64, offset: 9728)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !489, file: !490, line: 977, baseType: !273, size: 64, offset: 9792)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !489, file: !490, line: 978, baseType: !7, size: 32, offset: 9856)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !489, file: !490, line: 980, baseType: !785, size: 64, offset: 9920)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !489, file: !490, line: 989, baseType: !904, size: 128, offset: 9984)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !905, line: 35, size: 128, elements: !906)
!905 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!906 = !{!907, !908, !909}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !904, file: !905, line: 36, baseType: !110, size: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !904, file: !905, line: 37, baseType: !366, size: 32, offset: 32)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !904, file: !905, line: 38, baseType: !910, size: 64, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !905, line: 23, flags: DIFlagFwdDecl)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !489, file: !490, line: 992, baseType: !344, size: 64, offset: 10112)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !489, file: !490, line: 993, baseType: !344, size: 64, offset: 10176)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !489, file: !490, line: 996, baseType: !186, offset: 10240)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !489, file: !490, line: 999, baseType: !391, offset: 10240)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !489, file: !490, line: 1001, baseType: !917, size: 64, offset: 10240)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !490, line: 636, size: 64, elements: !918)
!918 = !{!919}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !917, file: !490, line: 637, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !489, file: !490, line: 1005, baseType: !625, size: 128, offset: 10304)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !489, file: !490, line: 1007, baseType: !488, size: 64, offset: 10432)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !489, file: !490, line: 1009, baseType: !924, size: 64, offset: 10496)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !490, line: 1009, flags: DIFlagFwdDecl)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !489, file: !490, line: 1043, baseType: !109, size: 64, offset: 10560)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !489, file: !490, line: 1046, baseType: !928, size: 64, offset: 10624)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !490, line: 41, flags: DIFlagFwdDecl)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !489, file: !490, line: 1050, baseType: !931, size: 64, offset: 10688)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !490, line: 42, flags: DIFlagFwdDecl)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !489, file: !490, line: 1054, baseType: !934, size: 64, offset: 10752)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !490, line: 55, flags: DIFlagFwdDecl)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !489, file: !490, line: 1056, baseType: !937, size: 64, offset: 10816)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !490, line: 40, flags: DIFlagFwdDecl)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !489, file: !490, line: 1058, baseType: !940, size: 64, offset: 10880)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !490, line: 47, flags: DIFlagFwdDecl)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !489, file: !490, line: 1061, baseType: !943, size: 64, offset: 10944)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !490, line: 43, flags: DIFlagFwdDecl)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !489, file: !490, line: 1064, baseType: !111, size: 64, offset: 11008)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !489, file: !490, line: 1065, baseType: !947, size: 64, offset: 11072)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !895, line: 14, baseType: !949)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !895, line: 12, size: 384, elements: !950)
!950 = !{!951}
!951 = !DIDerivedType(tag: DW_TAG_member, scope: !949, file: !895, line: 13, baseType: !952, size: 384)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !949, file: !895, line: 13, size: 384, elements: !953)
!953 = !{!954, !955, !956, !957}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !952, file: !895, line: 13, baseType: !110, size: 32)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !952, file: !895, line: 13, baseType: !110, size: 32, offset: 32)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !952, file: !895, line: 13, baseType: !110, size: 32, offset: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !952, file: !895, line: 13, baseType: !958, size: 256, offset: 128)
!958 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !959, line: 32, size: 256, elements: !960)
!959 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!960 = !{!961, !967, !980, !986, !995, !1015, !1020}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !958, file: !959, line: 37, baseType: !962, size: 64)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !958, file: !959, line: 34, size: 64, elements: !963)
!963 = !{!964, !965}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !962, file: !959, line: 35, baseType: !744, size: 32)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !962, file: !959, line: 36, baseType: !966, size: 32, offset: 32)
!966 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !260, line: 49, baseType: !7)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !958, file: !959, line: 45, baseType: !968, size: 192)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !958, file: !959, line: 40, size: 192, elements: !969)
!969 = !{!970, !972, !973, !979}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !968, file: !959, line: 41, baseType: !971, size: 32)
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !260, line: 95, baseType: !110)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !968, file: !959, line: 42, baseType: !110, size: 32, offset: 32)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !968, file: !959, line: 43, baseType: !974, size: 64, offset: 64)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !959, line: 11, baseType: !975)
!975 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !959, line: 8, size: 64, elements: !976)
!976 = !{!977, !978}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !975, file: !959, line: 9, baseType: !110, size: 32)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !975, file: !959, line: 10, baseType: !109, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !968, file: !959, line: 44, baseType: !110, size: 32, offset: 128)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !958, file: !959, line: 52, baseType: !981, size: 128)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !958, file: !959, line: 48, size: 128, elements: !982)
!982 = !{!983, !984, !985}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !981, file: !959, line: 49, baseType: !744, size: 32)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !981, file: !959, line: 50, baseType: !966, size: 32, offset: 32)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !981, file: !959, line: 51, baseType: !974, size: 64, offset: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !958, file: !959, line: 61, baseType: !987, size: 256)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !958, file: !959, line: 55, size: 256, elements: !988)
!988 = !{!989, !990, !991, !992, !994}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !987, file: !959, line: 56, baseType: !744, size: 32)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !987, file: !959, line: 57, baseType: !966, size: 32, offset: 32)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !987, file: !959, line: 58, baseType: !110, size: 32, offset: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !987, file: !959, line: 59, baseType: !993, size: 64, offset: 128)
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !260, line: 94, baseType: !261)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !987, file: !959, line: 60, baseType: !993, size: 64, offset: 192)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !958, file: !959, line: 95, baseType: !996, size: 256)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !958, file: !959, line: 64, size: 256, elements: !997)
!997 = !{!998, !999}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !996, file: !959, line: 65, baseType: !109, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, scope: !996, file: !959, line: 77, baseType: !1000, size: 192, offset: 64)
!1000 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !996, file: !959, line: 77, size: 192, elements: !1001)
!1001 = !{!1002, !1003, !1010}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1000, file: !959, line: 82, baseType: !477, size: 16)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1000, file: !959, line: 88, baseType: !1004, size: 192)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1000, file: !959, line: 84, size: 192, elements: !1005)
!1005 = !{!1006, !1008, !1009}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1004, file: !959, line: 85, baseType: !1007, size: 64)
!1007 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 64, elements: !604)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1004, file: !959, line: 86, baseType: !109, size: 64, offset: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1004, file: !959, line: 87, baseType: !109, size: 64, offset: 128)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1000, file: !959, line: 93, baseType: !1011, size: 96)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1000, file: !959, line: 90, size: 96, elements: !1012)
!1012 = !{!1013, !1014}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1011, file: !959, line: 91, baseType: !1007, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1011, file: !959, line: 92, baseType: !499, size: 32, offset: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !958, file: !959, line: 101, baseType: !1016, size: 128)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !958, file: !959, line: 98, size: 128, elements: !1017)
!1017 = !{!1018, !1019}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1016, file: !959, line: 99, baseType: !112, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1016, file: !959, line: 100, baseType: !110, size: 32, offset: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !958, file: !959, line: 108, baseType: !1021, size: 128)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !958, file: !959, line: 104, size: 128, elements: !1022)
!1022 = !{!1023, !1024, !1025}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1021, file: !959, line: 105, baseType: !109, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1021, file: !959, line: 106, baseType: !110, size: 32, offset: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1021, file: !959, line: 107, baseType: !7, size: 32, offset: 96)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !489, file: !490, line: 1067, baseType: !1027, offset: 11136)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1028, line: 12, elements: !200)
!1028 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !489, file: !490, line: 1099, baseType: !1030, size: 64, offset: 11136)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !490, line: 56, flags: DIFlagFwdDecl)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !489, file: !490, line: 1103, baseType: !173, size: 128, offset: 11200)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !489, file: !490, line: 1104, baseType: !1034, size: 64, offset: 11328)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !490, line: 46, flags: DIFlagFwdDecl)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !489, file: !490, line: 1105, baseType: !443, size: 192, offset: 11392)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !489, file: !490, line: 1106, baseType: !7, size: 32, offset: 11584)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !489, file: !490, line: 1109, baseType: !1039, size: 128, offset: 11648)
!1039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1040, size: 128, elements: !1042)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !490, line: 51, flags: DIFlagFwdDecl)
!1042 = !{!1043}
!1043 = !DISubrange(count: 2)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !489, file: !490, line: 1110, baseType: !443, size: 192, offset: 11776)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !489, file: !490, line: 1111, baseType: !173, size: 128, offset: 11968)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !489, file: !490, line: 1173, baseType: !1047, size: 64, offset: 12096)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1049, line: 62, size: 256, align: 256, elements: !1050)
!1049 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1050 = !{!1051, !1052, !1053, !1058}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1048, file: !1049, line: 75, baseType: !499, size: 32)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1048, file: !1049, line: 90, baseType: !499, size: 32, offset: 32)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1048, file: !1049, line: 124, baseType: !1054, size: 64, offset: 64)
!1054 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1048, file: !1049, line: 109, size: 64, elements: !1055)
!1055 = !{!1056, !1057}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1054, file: !1049, line: 110, baseType: !346, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1054, file: !1049, line: 112, baseType: !346, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1048, file: !1049, line: 144, baseType: !499, size: 32, offset: 128)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !489, file: !490, line: 1174, baseType: !498, size: 32, offset: 12160)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !489, file: !490, line: 1179, baseType: !111, size: 64, offset: 12224)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !489, file: !490, line: 1182, baseType: !1062, size: 128, offset: 12288)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !421, line: 76, size: 128, elements: !1063)
!1063 = !{!1064, !1069, !1070}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1062, file: !421, line: 85, baseType: !1065, size: 64)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1066, line: 7, size: 64, elements: !1067)
!1066 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1067 = !{!1068}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1065, file: !1066, line: 12, baseType: !651, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1062, file: !421, line: 88, baseType: !150, size: 8, offset: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1062, file: !421, line: 95, baseType: !150, size: 8, offset: 72)
!1071 = !DIDerivedType(tag: DW_TAG_member, scope: !489, file: !490, line: 1184, baseType: !1072, size: 128, offset: 12416)
!1072 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !489, file: !490, line: 1184, size: 128, elements: !1073)
!1073 = !{!1074, !1075}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1072, file: !490, line: 1185, baseType: !504, size: 32)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1072, file: !490, line: 1186, baseType: !782, size: 128, align: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !489, file: !490, line: 1190, baseType: !1077, size: 64, offset: 12544)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !490, line: 53, flags: DIFlagFwdDecl)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !489, file: !490, line: 1192, baseType: !1080, size: 128, offset: 12608)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !421, line: 64, size: 128, elements: !1081)
!1081 = !{!1082, !1175, !1176}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1080, file: !421, line: 65, baseType: !1083, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !316, line: 68, size: 512, align: 128, elements: !1085)
!1085 = !{!1086, !1087, !1167, !1174}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1084, file: !316, line: 69, baseType: !111, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, scope: !1084, file: !316, line: 77, baseType: !1088, size: 320, offset: 64)
!1088 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1084, file: !316, line: 77, size: 320, elements: !1089)
!1089 = !{!1090, !1099, !1104, !1132, !1140, !1146, !1159, !1166}
!1090 = !DIDerivedType(tag: DW_TAG_member, scope: !1088, file: !316, line: 78, baseType: !1091, size: 320)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1088, file: !316, line: 78, size: 320, elements: !1092)
!1092 = !{!1093, !1094, !1097, !1098}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1091, file: !316, line: 84, baseType: !173, size: 128)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1091, file: !316, line: 86, baseType: !1095, size: 64, offset: 128)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !316, line: 26, flags: DIFlagFwdDecl)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1091, file: !316, line: 87, baseType: !111, size: 64, offset: 192)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1091, file: !316, line: 94, baseType: !111, size: 64, offset: 256)
!1099 = !DIDerivedType(tag: DW_TAG_member, scope: !1088, file: !316, line: 96, baseType: !1100, size: 64)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1088, file: !316, line: 96, size: 64, elements: !1101)
!1101 = !{!1102}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1100, file: !316, line: 101, baseType: !1103, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !108, line: 143, baseType: !344)
!1104 = !DIDerivedType(tag: DW_TAG_member, scope: !1088, file: !316, line: 103, baseType: !1105, size: 320)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1088, file: !316, line: 103, size: 320, elements: !1106)
!1106 = !{!1107, !1117, !1120, !1121}
!1107 = !DIDerivedType(tag: DW_TAG_member, scope: !1105, file: !316, line: 104, baseType: !1108, size: 128)
!1108 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1105, file: !316, line: 104, size: 128, elements: !1109)
!1109 = !{!1110, !1111}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1108, file: !316, line: 105, baseType: !173, size: 128)
!1111 = !DIDerivedType(tag: DW_TAG_member, scope: !1108, file: !316, line: 106, baseType: !1112, size: 128)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1108, file: !316, line: 106, size: 128, elements: !1113)
!1113 = !{!1114, !1115, !1116}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1112, file: !316, line: 107, baseType: !1083, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1112, file: !316, line: 109, baseType: !110, size: 32, offset: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1112, file: !316, line: 110, baseType: !110, size: 32, offset: 96)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1105, file: !316, line: 117, baseType: !1118, size: 64, offset: 128)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !316, line: 117, flags: DIFlagFwdDecl)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1105, file: !316, line: 119, baseType: !109, size: 64, offset: 192)
!1121 = !DIDerivedType(tag: DW_TAG_member, scope: !1105, file: !316, line: 120, baseType: !1122, size: 64, offset: 256)
!1122 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1105, file: !316, line: 120, size: 64, elements: !1123)
!1123 = !{!1124, !1125, !1126}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1122, file: !316, line: 121, baseType: !109, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1122, file: !316, line: 122, baseType: !111, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, scope: !1122, file: !316, line: 123, baseType: !1127, size: 32)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1122, file: !316, line: 123, size: 32, elements: !1128)
!1128 = !{!1129, !1130, !1131}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1127, file: !316, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1127, file: !316, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1127, file: !316, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1132 = !DIDerivedType(tag: DW_TAG_member, scope: !1088, file: !316, line: 130, baseType: !1133, size: 192)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1088, file: !316, line: 130, size: 192, elements: !1134)
!1134 = !{!1135, !1136, !1137, !1138, !1139}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1133, file: !316, line: 131, baseType: !111, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1133, file: !316, line: 134, baseType: !637, size: 8, offset: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1133, file: !316, line: 135, baseType: !637, size: 8, offset: 72)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1133, file: !316, line: 136, baseType: !366, size: 32, offset: 96)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1133, file: !316, line: 137, baseType: !7, size: 32, offset: 128)
!1140 = !DIDerivedType(tag: DW_TAG_member, scope: !1088, file: !316, line: 139, baseType: !1141, size: 256)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1088, file: !316, line: 139, size: 256, elements: !1142)
!1142 = !{!1143, !1144, !1145}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1141, file: !316, line: 140, baseType: !111, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1141, file: !316, line: 141, baseType: !366, size: 32, offset: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1141, file: !316, line: 143, baseType: !173, size: 128, offset: 128)
!1146 = !DIDerivedType(tag: DW_TAG_member, scope: !1088, file: !316, line: 145, baseType: !1147, size: 256)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1088, file: !316, line: 145, size: 256, elements: !1148)
!1148 = !{!1149, !1150, !1152, !1153, !1158}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1147, file: !316, line: 146, baseType: !111, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1147, file: !316, line: 147, baseType: !1151, size: 64, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !305, line: 509, baseType: !1083)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1147, file: !316, line: 148, baseType: !111, size: 64, offset: 128)
!1153 = !DIDerivedType(tag: DW_TAG_member, scope: !1147, file: !316, line: 149, baseType: !1154, size: 64, offset: 192)
!1154 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1147, file: !316, line: 149, size: 64, elements: !1155)
!1155 = !{!1156, !1157}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1154, file: !316, line: 150, baseType: !332, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1154, file: !316, line: 151, baseType: !366, size: 32)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1147, file: !316, line: 156, baseType: !186, offset: 256)
!1159 = !DIDerivedType(tag: DW_TAG_member, scope: !1088, file: !316, line: 159, baseType: !1160, size: 128)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1088, file: !316, line: 159, size: 128, elements: !1161)
!1161 = !{!1162, !1165}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1160, file: !316, line: 161, baseType: !1163, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !316, line: 161, flags: DIFlagFwdDecl)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1160, file: !316, line: 162, baseType: !109, size: 64, offset: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1088, file: !316, line: 176, baseType: !782, size: 128, align: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, scope: !1084, file: !316, line: 179, baseType: !1168, size: 32, offset: 384)
!1168 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1084, file: !316, line: 179, size: 32, elements: !1169)
!1169 = !{!1170, !1171, !1172, !1173}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1168, file: !316, line: 184, baseType: !366, size: 32)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1168, file: !316, line: 192, baseType: !7, size: 32)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1168, file: !316, line: 194, baseType: !7, size: 32)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1168, file: !316, line: 195, baseType: !110, size: 32)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1084, file: !316, line: 199, baseType: !366, size: 32, offset: 416)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1080, file: !421, line: 67, baseType: !499, size: 32, offset: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1080, file: !421, line: 68, baseType: !499, size: 32, offset: 96)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !489, file: !490, line: 1206, baseType: !110, size: 32, offset: 12736)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !489, file: !490, line: 1207, baseType: !110, size: 32, offset: 12768)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !489, file: !490, line: 1209, baseType: !111, size: 64, offset: 12800)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !489, file: !490, line: 1219, baseType: !344, size: 64, offset: 12864)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !489, file: !490, line: 1220, baseType: !344, size: 64, offset: 12928)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !489, file: !490, line: 1317, baseType: !110, size: 32, offset: 12992)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !489, file: !490, line: 1319, baseType: !488, size: 64, offset: 13056)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !489, file: !490, line: 1322, baseType: !1185, size: 64, offset: 13120)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1187, line: 56, size: 512, elements: !1188)
!1187 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1188 = !{!1189, !1190, !1191, !1192, !1193, !1195, !1196, !1198}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1186, file: !1187, line: 57, baseType: !1185, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1186, file: !1187, line: 58, baseType: !109, size: 64, offset: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1186, file: !1187, line: 59, baseType: !111, size: 64, offset: 128)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1186, file: !1187, line: 60, baseType: !111, size: 64, offset: 192)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1186, file: !1187, line: 61, baseType: !1194, size: 64, offset: 256)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1186, file: !1187, line: 62, baseType: !7, size: 32, offset: 320)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1186, file: !1187, line: 63, baseType: !1197, size: 64, offset: 384)
!1197 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !108, line: 153, baseType: !344)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1186, file: !1187, line: 64, baseType: !1199, size: 64, offset: 448)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !489, file: !490, line: 1326, baseType: !504, size: 32, offset: 13184)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !489, file: !490, line: 1342, baseType: !109, size: 64, offset: 13248)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !489, file: !490, line: 1343, baseType: !346, size: 64, offset: 13312)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !489, file: !490, line: 1344, baseType: !344, size: 64, offset: 13376)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !489, file: !490, line: 1345, baseType: !346, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !489, file: !490, line: 1346, baseType: !346, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !489, file: !490, line: 1347, baseType: !346, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !489, file: !490, line: 1348, baseType: !782, size: 128, align: 64, offset: 13504)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !489, file: !490, line: 1358, baseType: !1210, size: 34816, offset: 13824)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1211, line: 485, size: 34816, elements: !1212)
!1211 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1212 = !{!1213, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1242, !1243, !1244, !1245, !1246, !1247, !1250, !1251, !1252}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1210, file: !1211, line: 487, baseType: !1214, size: 192)
!1214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1215, size: 192, elements: !228)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1216, line: 16, size: 64, elements: !1217)
!1216 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1217 = !{!1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1215, file: !1216, line: 17, baseType: !472, size: 16)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1215, file: !1216, line: 18, baseType: !472, size: 16, offset: 16)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1215, file: !1216, line: 19, baseType: !472, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1215, file: !1216, line: 19, baseType: !472, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1215, file: !1216, line: 19, baseType: !472, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1215, file: !1216, line: 19, baseType: !472, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1215, file: !1216, line: 19, baseType: !472, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1215, file: !1216, line: 20, baseType: !472, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1215, file: !1216, line: 20, baseType: !472, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1215, file: !1216, line: 20, baseType: !472, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1215, file: !1216, line: 20, baseType: !472, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1215, file: !1216, line: 20, baseType: !472, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1215, file: !1216, line: 20, baseType: !472, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1210, file: !1211, line: 491, baseType: !111, size: 64, offset: 192)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1210, file: !1211, line: 495, baseType: !268, size: 16, offset: 256)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1210, file: !1211, line: 496, baseType: !268, size: 16, offset: 272)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1210, file: !1211, line: 497, baseType: !268, size: 16, offset: 288)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1210, file: !1211, line: 498, baseType: !268, size: 16, offset: 304)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1210, file: !1211, line: 502, baseType: !111, size: 64, offset: 320)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1210, file: !1211, line: 503, baseType: !111, size: 64, offset: 384)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1210, file: !1211, line: 514, baseType: !1239, size: 256, offset: 448)
!1239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1240, size: 256, elements: !425)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1211, line: 483, flags: DIFlagFwdDecl)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1210, file: !1211, line: 516, baseType: !111, size: 64, offset: 704)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1210, file: !1211, line: 518, baseType: !111, size: 64, offset: 768)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1210, file: !1211, line: 520, baseType: !111, size: 64, offset: 832)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1210, file: !1211, line: 521, baseType: !111, size: 64, offset: 896)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1210, file: !1211, line: 522, baseType: !111, size: 64, offset: 960)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1210, file: !1211, line: 528, baseType: !1248, size: 64, offset: 1024)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1211, line: 10, flags: DIFlagFwdDecl)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1210, file: !1211, line: 535, baseType: !111, size: 64, offset: 1088)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1210, file: !1211, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1210, file: !1211, line: 540, baseType: !1253, size: 33280, offset: 1536)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1254, line: 317, size: 33280, elements: !1255)
!1254 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1255 = !{!1256, !1257, !1258}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1253, file: !1254, line: 330, baseType: !7, size: 32)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1253, file: !1254, line: 337, baseType: !111, size: 64, offset: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1253, file: !1254, line: 348, baseType: !1259, size: 32768, offset: 512)
!1259 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1254, line: 304, size: 32768, elements: !1260)
!1260 = !{!1261, !1274, !1313, !1363, !1380}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1259, file: !1254, line: 305, baseType: !1262, size: 896)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1254, line: 12, size: 896, elements: !1263)
!1263 = !{!1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1273}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1262, file: !1254, line: 13, baseType: !498, size: 32)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1262, file: !1254, line: 14, baseType: !498, size: 32, offset: 32)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1262, file: !1254, line: 15, baseType: !498, size: 32, offset: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1262, file: !1254, line: 16, baseType: !498, size: 32, offset: 96)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1262, file: !1254, line: 17, baseType: !498, size: 32, offset: 128)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1262, file: !1254, line: 18, baseType: !498, size: 32, offset: 160)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1262, file: !1254, line: 19, baseType: !498, size: 32, offset: 192)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1262, file: !1254, line: 22, baseType: !1272, size: 640, offset: 224)
!1272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !498, size: 640, elements: !147)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1262, file: !1254, line: 25, baseType: !498, size: 32, offset: 864)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1259, file: !1254, line: 306, baseType: !1275, size: 4096, align: 128)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1254, line: 34, size: 4096, align: 128, elements: !1276)
!1276 = !{!1277, !1278, !1279, !1280, !1281, !1296, !1297, !1298, !1302, !1304, !1308}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1275, file: !1254, line: 35, baseType: !472, size: 16)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1275, file: !1254, line: 36, baseType: !472, size: 16, offset: 16)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1275, file: !1254, line: 37, baseType: !472, size: 16, offset: 32)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1275, file: !1254, line: 38, baseType: !472, size: 16, offset: 48)
!1281 = !DIDerivedType(tag: DW_TAG_member, scope: !1275, file: !1254, line: 39, baseType: !1282, size: 128, offset: 64)
!1282 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1275, file: !1254, line: 39, size: 128, elements: !1283)
!1283 = !{!1284, !1289}
!1284 = !DIDerivedType(tag: DW_TAG_member, scope: !1282, file: !1254, line: 40, baseType: !1285, size: 128)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1282, file: !1254, line: 40, size: 128, elements: !1286)
!1286 = !{!1287, !1288}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1285, file: !1254, line: 41, baseType: !344, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1285, file: !1254, line: 42, baseType: !344, size: 64, offset: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, scope: !1282, file: !1254, line: 44, baseType: !1290, size: 128)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1282, file: !1254, line: 44, size: 128, elements: !1291)
!1291 = !{!1292, !1293, !1294, !1295}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1290, file: !1254, line: 45, baseType: !498, size: 32)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1290, file: !1254, line: 46, baseType: !498, size: 32, offset: 32)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1290, file: !1254, line: 47, baseType: !498, size: 32, offset: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1290, file: !1254, line: 48, baseType: !498, size: 32, offset: 96)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1275, file: !1254, line: 51, baseType: !498, size: 32, offset: 192)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1275, file: !1254, line: 52, baseType: !498, size: 32, offset: 224)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1275, file: !1254, line: 55, baseType: !1299, size: 1024, offset: 256)
!1299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !498, size: 1024, elements: !1300)
!1300 = !{!1301}
!1301 = !DISubrange(count: 32)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1275, file: !1254, line: 58, baseType: !1303, size: 2048, offset: 1280)
!1303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !498, size: 2048, elements: !232)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1275, file: !1254, line: 60, baseType: !1305, size: 384, offset: 3328)
!1305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !498, size: 384, elements: !1306)
!1306 = !{!1307}
!1307 = !DISubrange(count: 12)
!1308 = !DIDerivedType(tag: DW_TAG_member, scope: !1275, file: !1254, line: 62, baseType: !1309, size: 384, offset: 3712)
!1309 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1275, file: !1254, line: 62, size: 384, elements: !1310)
!1310 = !{!1311, !1312}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1309, file: !1254, line: 63, baseType: !1305, size: 384)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1309, file: !1254, line: 64, baseType: !1305, size: 384)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1259, file: !1254, line: 307, baseType: !1314, size: 1088)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1254, line: 79, size: 1088, elements: !1315)
!1315 = !{!1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1362}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1314, file: !1254, line: 80, baseType: !498, size: 32)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1314, file: !1254, line: 81, baseType: !498, size: 32, offset: 32)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1314, file: !1254, line: 82, baseType: !498, size: 32, offset: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1314, file: !1254, line: 83, baseType: !498, size: 32, offset: 96)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1314, file: !1254, line: 84, baseType: !498, size: 32, offset: 128)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1314, file: !1254, line: 85, baseType: !498, size: 32, offset: 160)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1314, file: !1254, line: 86, baseType: !498, size: 32, offset: 192)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1314, file: !1254, line: 88, baseType: !1272, size: 640, offset: 224)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1314, file: !1254, line: 89, baseType: !635, size: 8, offset: 864)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1314, file: !1254, line: 90, baseType: !635, size: 8, offset: 872)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1314, file: !1254, line: 91, baseType: !635, size: 8, offset: 880)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1314, file: !1254, line: 92, baseType: !635, size: 8, offset: 888)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1314, file: !1254, line: 93, baseType: !635, size: 8, offset: 896)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1314, file: !1254, line: 94, baseType: !635, size: 8, offset: 904)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1314, file: !1254, line: 95, baseType: !1331, size: 64, offset: 960)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1333, line: 11, size: 128, elements: !1334)
!1333 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1334 = !{!1335, !1336}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1332, file: !1333, line: 12, baseType: !112, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1332, file: !1333, line: 13, baseType: !1337, size: 64, offset: 64)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1339, line: 56, size: 1344, elements: !1340)
!1339 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1340 = !{!1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1338, file: !1339, line: 61, baseType: !111, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1338, file: !1339, line: 62, baseType: !111, size: 64, offset: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1338, file: !1339, line: 63, baseType: !111, size: 64, offset: 128)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1338, file: !1339, line: 64, baseType: !111, size: 64, offset: 192)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1338, file: !1339, line: 65, baseType: !111, size: 64, offset: 256)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1338, file: !1339, line: 66, baseType: !111, size: 64, offset: 320)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1338, file: !1339, line: 68, baseType: !111, size: 64, offset: 384)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1338, file: !1339, line: 69, baseType: !111, size: 64, offset: 448)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1338, file: !1339, line: 70, baseType: !111, size: 64, offset: 512)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1338, file: !1339, line: 71, baseType: !111, size: 64, offset: 576)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1338, file: !1339, line: 72, baseType: !111, size: 64, offset: 640)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1338, file: !1339, line: 73, baseType: !111, size: 64, offset: 704)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1338, file: !1339, line: 74, baseType: !111, size: 64, offset: 768)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1338, file: !1339, line: 75, baseType: !111, size: 64, offset: 832)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1338, file: !1339, line: 76, baseType: !111, size: 64, offset: 896)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1338, file: !1339, line: 81, baseType: !111, size: 64, offset: 960)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1338, file: !1339, line: 83, baseType: !111, size: 64, offset: 1024)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1338, file: !1339, line: 84, baseType: !111, size: 64, offset: 1088)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1338, file: !1339, line: 85, baseType: !111, size: 64, offset: 1152)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1338, file: !1339, line: 86, baseType: !111, size: 64, offset: 1216)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1338, file: !1339, line: 87, baseType: !111, size: 64, offset: 1280)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1314, file: !1254, line: 96, baseType: !498, size: 32, offset: 1024)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1259, file: !1254, line: 308, baseType: !1364, size: 4608, align: 512)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1254, line: 289, size: 4608, align: 512, elements: !1365)
!1365 = !{!1366, !1367, !1376}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1364, file: !1254, line: 290, baseType: !1275, size: 4096, align: 128)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1364, file: !1254, line: 291, baseType: !1368, size: 512, offset: 4096)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1254, line: 268, size: 512, elements: !1369)
!1369 = !{!1370, !1371, !1372}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1368, file: !1254, line: 269, baseType: !344, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1368, file: !1254, line: 270, baseType: !344, size: 64, offset: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1368, file: !1254, line: 271, baseType: !1373, size: 384, offset: 128)
!1373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 384, elements: !1374)
!1374 = !{!1375}
!1375 = !DISubrange(count: 6)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1364, file: !1254, line: 292, baseType: !1377, offset: 4608)
!1377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !635, elements: !1378)
!1378 = !{!1379}
!1379 = !DISubrange(count: 0)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1259, file: !1254, line: 309, baseType: !1381, size: 32768)
!1381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !635, size: 32768, elements: !1382)
!1382 = !{!1383}
!1383 = !DISubrange(count: 4096)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !485, file: !316, line: 378, baseType: !1385, size: 64, offset: 64)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !481, file: !316, line: 384, baseType: !804, size: 192, offset: 192)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !336, file: !316, line: 500, baseType: !186, offset: 6656)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !336, file: !316, line: 501, baseType: !1389, size: 64, offset: 6656)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !316, line: 387, flags: DIFlagFwdDecl)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !336, file: !316, line: 516, baseType: !1392, size: 64, offset: 6720)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1394, line: 18, flags: DIFlagFwdDecl)
!1394 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !336, file: !316, line: 519, baseType: !303, size: 64, offset: 6784)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !336, file: !316, line: 521, baseType: !1397, size: 64, offset: 6848)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !316, line: 521, flags: DIFlagFwdDecl)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !336, file: !316, line: 545, baseType: !366, size: 32, offset: 6912)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !336, file: !316, line: 548, baseType: !150, size: 8, offset: 6944)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !336, file: !316, line: 550, baseType: !1402, offset: 6952)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1403, line: 142, elements: !200)
!1403 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !336, file: !316, line: 554, baseType: !1405, size: 256, offset: 6976)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1406, line: 102, size: 256, elements: !1407)
!1406 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1407 = !{!1408, !1409, !1410}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1405, file: !1406, line: 103, baseType: !374, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1405, file: !1406, line: 104, baseType: !173, size: 128, offset: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1405, file: !1406, line: 105, baseType: !1411, size: 64, offset: 192)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1406, line: 21, baseType: !1412)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{null, !1415}
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !336, file: !316, line: 557, baseType: !498, size: 32, offset: 7232)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !333, file: !316, line: 565, baseType: !1418, offset: 7296)
!1418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, elements: !1419)
!1419 = !{!1420}
!1420 = !DISubrange(count: -1)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !315, file: !316, line: 333, baseType: !1422, size: 64, offset: 576)
!1422 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !305, line: 284, baseType: !1423)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !305, line: 284, size: 64, elements: !1424)
!1424 = !{!1425}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1423, file: !305, line: 284, baseType: !1426, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !364, line: 19, baseType: !111)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !315, file: !316, line: 334, baseType: !111, size: 64, offset: 640)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !315, file: !316, line: 343, baseType: !1429, size: 256, offset: 704)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !315, file: !316, line: 340, size: 256, elements: !1430)
!1430 = !{!1431, !1432}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1429, file: !316, line: 341, baseType: !323, size: 192, align: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1429, file: !316, line: 342, baseType: !111, size: 64, offset: 192)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !315, file: !316, line: 351, baseType: !173, size: 128, offset: 960)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !315, file: !316, line: 353, baseType: !1435, size: 64, offset: 1088)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !316, line: 353, flags: DIFlagFwdDecl)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !315, file: !316, line: 356, baseType: !1438, size: 64, offset: 1152)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1440)
!1440 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !316, line: 356, flags: DIFlagFwdDecl)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !315, file: !316, line: 359, baseType: !111, size: 64, offset: 1216)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !315, file: !316, line: 361, baseType: !303, size: 64, offset: 1280)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !315, file: !316, line: 362, baseType: !109, size: 64, offset: 1344)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !315, file: !316, line: 365, baseType: !374, size: 64, offset: 1408)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !315, file: !316, line: 373, baseType: !1446, offset: 1472)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !316, line: 296, elements: !200)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !282, file: !252, line: 90, baseType: !277, size: 64, offset: 192)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !282, file: !252, line: 91, baseType: !1449, size: 64, offset: 256)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !242, file: !168, line: 143, baseType: !1451, size: 64, offset: 256)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!1454, !179}
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1456)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1457)
!1457 = !{!1458, !1459, !1463, !1467, !1473, !1477}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1456, file: !18, line: 40, baseType: !17, size: 32)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1456, file: !18, line: 41, baseType: !1460, size: 64, offset: 64)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = !DISubroutineType(types: !1462)
!1462 = !{!150}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1456, file: !18, line: 42, baseType: !1464, size: 64, offset: 128)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{!109}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1456, file: !18, line: 43, baseType: !1468, size: 64, offset: 192)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = !DISubroutineType(types: !1470)
!1470 = !{!1199, !1471}
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1456, file: !18, line: 44, baseType: !1474, size: 64, offset: 256)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{!1199}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1456, file: !18, line: 45, baseType: !1478, size: 64, offset: 320)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{null, !109}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !242, file: !168, line: 144, baseType: !1482, size: 64, offset: 320)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{!1199, !179}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !242, file: !168, line: 145, baseType: !1486, size: 64, offset: 384)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{null, !179, !1489, !1495}
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1394, line: 23, baseType: !1491)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1394, line: 21, size: 32, elements: !1492)
!1492 = !{!1493}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1491, file: !1394, line: 22, baseType: !1494, size: 32)
!1494 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !108, line: 32, baseType: !966)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1394, line: 28, baseType: !1497)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1394, line: 26, size: 32, elements: !1498)
!1498 = !{!1499}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1497, file: !1394, line: 27, baseType: !1500, size: 32)
!1500 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !108, line: 33, baseType: !1501)
!1501 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !260, line: 50, baseType: !7)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !167, file: !168, line: 70, baseType: !1503, size: 64, offset: 384)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1505, line: 123, size: 1024, elements: !1506)
!1505 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1506 = !{!1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1648, !1649, !1650, !1651, !1652}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1504, file: !1505, line: 124, baseType: !366, size: 32)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1504, file: !1505, line: 125, baseType: !366, size: 32, offset: 32)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1504, file: !1505, line: 135, baseType: !1503, size: 64, offset: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1504, file: !1505, line: 136, baseType: !171, size: 64, offset: 128)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1504, file: !1505, line: 138, baseType: !323, size: 192, align: 64, offset: 192)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1504, file: !1505, line: 140, baseType: !1199, size: 64, offset: 384)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1504, file: !1505, line: 141, baseType: !7, size: 32, offset: 448)
!1514 = !DIDerivedType(tag: DW_TAG_member, scope: !1504, file: !1505, line: 142, baseType: !1515, size: 256, offset: 512)
!1515 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1504, file: !1505, line: 142, size: 256, elements: !1516)
!1516 = !{!1517, !1571, !1575}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1515, file: !1505, line: 143, baseType: !1518, size: 192)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1505, line: 91, size: 192, elements: !1519)
!1519 = !{!1520, !1521, !1522}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1518, file: !1505, line: 92, baseType: !111, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1518, file: !1505, line: 94, baseType: !340, size: 64, offset: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1518, file: !1505, line: 100, baseType: !1523, size: 64, offset: 128)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1505, line: 180, size: 704, elements: !1525)
!1525 = !{!1526, !1527, !1528, !1541, !1542, !1543, !1569, !1570}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1524, file: !1505, line: 182, baseType: !1503, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1524, file: !1505, line: 183, baseType: !7, size: 32, offset: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1524, file: !1505, line: 186, baseType: !1529, size: 192, offset: 128)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1530, line: 19, size: 192, elements: !1531)
!1530 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1531 = !{!1532, !1539, !1540}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1529, file: !1530, line: 20, baseType: !1533, size: 128)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1534, line: 292, size: 128, elements: !1535)
!1534 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1535 = !{!1536, !1537, !1538}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1533, file: !1534, line: 293, baseType: !186)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1533, file: !1534, line: 295, baseType: !107, size: 32)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1533, file: !1534, line: 296, baseType: !109, size: 64, offset: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1529, file: !1530, line: 21, baseType: !7, size: 32, offset: 128)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1529, file: !1530, line: 22, baseType: !7, size: 32, offset: 160)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1524, file: !1505, line: 187, baseType: !498, size: 32, offset: 320)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1524, file: !1505, line: 188, baseType: !498, size: 32, offset: 352)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1524, file: !1505, line: 189, baseType: !1544, size: 64, offset: 384)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1505, line: 168, size: 320, elements: !1546)
!1546 = !{!1547, !1553, !1557, !1561, !1565}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1545, file: !1505, line: 169, baseType: !1548, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{!110, !1551, !1523}
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !305, line: 539, flags: DIFlagFwdDecl)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1545, file: !1505, line: 171, baseType: !1554, size: 64, offset: 64)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{!110, !1503, !171, !267}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1545, file: !1505, line: 173, baseType: !1558, size: 64, offset: 128)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!110, !1503}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1545, file: !1505, line: 174, baseType: !1562, size: 64, offset: 192)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!110, !1503, !1503, !171}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1545, file: !1505, line: 176, baseType: !1566, size: 64, offset: 256)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!110, !1551, !1503, !1523}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1524, file: !1505, line: 192, baseType: !173, size: 128, offset: 448)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1524, file: !1505, line: 194, baseType: !775, size: 128, offset: 576)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1515, file: !1505, line: 144, baseType: !1572, size: 64)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1505, line: 103, size: 64, elements: !1573)
!1573 = !{!1574}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1572, file: !1505, line: 104, baseType: !1503, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1515, file: !1505, line: 145, baseType: !1576, size: 256)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1505, line: 107, size: 256, elements: !1577)
!1577 = !{!1578, !1643, !1646, !1647}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1576, file: !1505, line: 108, baseType: !1579, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1581)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1505, line: 217, size: 768, elements: !1582)
!1582 = !{!1583, !1603, !1607, !1611, !1616, !1620, !1624, !1628, !1629, !1630, !1631, !1639}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1581, file: !1505, line: 222, baseType: !1584, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!110, !1587}
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1505, line: 197, size: 1088, elements: !1589)
!1589 = !{!1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1588, file: !1505, line: 199, baseType: !1503, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1588, file: !1505, line: 200, baseType: !303, size: 64, offset: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1588, file: !1505, line: 201, baseType: !1551, size: 64, offset: 128)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1588, file: !1505, line: 202, baseType: !109, size: 64, offset: 192)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1588, file: !1505, line: 205, baseType: !443, size: 192, offset: 256)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1588, file: !1505, line: 206, baseType: !443, size: 192, offset: 448)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1588, file: !1505, line: 207, baseType: !110, size: 32, offset: 640)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1588, file: !1505, line: 208, baseType: !173, size: 128, offset: 704)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1588, file: !1505, line: 209, baseType: !227, size: 64, offset: 832)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1588, file: !1505, line: 211, baseType: !273, size: 64, offset: 896)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1588, file: !1505, line: 212, baseType: !150, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1588, file: !1505, line: 213, baseType: !150, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1588, file: !1505, line: 214, baseType: !1438, size: 64, offset: 1024)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1581, file: !1505, line: 223, baseType: !1604, size: 64, offset: 64)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{null, !1587}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1581, file: !1505, line: 236, baseType: !1608, size: 64, offset: 128)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!110, !1551, !109}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1581, file: !1505, line: 238, baseType: !1612, size: 64, offset: 192)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{!109, !1551, !1615}
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1581, file: !1505, line: 239, baseType: !1617, size: 64, offset: 256)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{!109, !1551, !109, !1615}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1581, file: !1505, line: 240, baseType: !1621, size: 64, offset: 320)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{null, !1551, !109}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1581, file: !1505, line: 242, baseType: !1625, size: 64, offset: 384)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{!258, !1587, !227, !273, !306}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1581, file: !1505, line: 252, baseType: !273, size: 64, offset: 448)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1581, file: !1505, line: 259, baseType: !150, size: 8, offset: 512)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1581, file: !1505, line: 260, baseType: !1625, size: 64, offset: 576)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1581, file: !1505, line: 263, baseType: !1632, size: 64, offset: 640)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{!1635, !1587, !1637}
!1635 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1636, line: 52, baseType: !7)
!1636 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1505, line: 27, flags: DIFlagFwdDecl)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1581, file: !1505, line: 266, baseType: !1640, size: 64, offset: 704)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{!110, !1587, !314}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1576, file: !1505, line: 109, baseType: !1644, size: 64, offset: 64)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1505, line: 31, flags: DIFlagFwdDecl)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1576, file: !1505, line: 110, baseType: !306, size: 64, offset: 128)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1576, file: !1505, line: 111, baseType: !1503, size: 64, offset: 192)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1504, file: !1505, line: 148, baseType: !109, size: 64, offset: 768)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1504, file: !1505, line: 154, baseType: !344, size: 64, offset: 832)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1504, file: !1505, line: 156, baseType: !268, size: 16, offset: 896)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1504, file: !1505, line: 157, baseType: !267, size: 16, offset: 912)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1504, file: !1505, line: 158, baseType: !1653, size: 64, offset: 960)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1505, line: 32, flags: DIFlagFwdDecl)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !167, file: !168, line: 71, baseType: !1656, size: 32, offset: 448)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1657, line: 19, size: 32, elements: !1658)
!1657 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1658 = !{!1659}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1656, file: !1657, line: 20, baseType: !504, size: 32)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !167, file: !168, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !167, file: !168, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !167, file: !168, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !167, file: !168, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !167, file: !168, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !164, file: !30, line: 463, baseType: !1666, size: 64, offset: 512)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !164, file: !30, line: 465, baseType: !1668, size: 64, offset: 576)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !164, file: !30, line: 467, baseType: !171, size: 64, offset: 640)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !164, file: !30, line: 468, baseType: !1672, size: 64, offset: 704)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1674)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1675)
!1675 = !{!1676, !1677, !1678, !1682, !1687, !1691}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1674, file: !30, line: 88, baseType: !171, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1674, file: !30, line: 89, baseType: !279, size: 64, offset: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1674, file: !30, line: 90, baseType: !1679, size: 64, offset: 128)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{!110, !1666, !222}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1674, file: !30, line: 91, baseType: !1683, size: 64, offset: 192)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!227, !1666, !1686, !1489, !1495}
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1674, file: !30, line: 93, baseType: !1688, size: 64, offset: 256)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{null, !1666}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1674, file: !30, line: 95, baseType: !1692, size: 64, offset: 320)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1694)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1695)
!1695 = !{!1696, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1694, file: !37, line: 279, baseType: !1697, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!110, !1666}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1694, file: !37, line: 280, baseType: !1688, size: 64, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1694, file: !37, line: 281, baseType: !1697, size: 64, offset: 128)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1694, file: !37, line: 282, baseType: !1697, size: 64, offset: 192)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1694, file: !37, line: 283, baseType: !1697, size: 64, offset: 256)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1694, file: !37, line: 284, baseType: !1697, size: 64, offset: 320)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1694, file: !37, line: 285, baseType: !1697, size: 64, offset: 384)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1694, file: !37, line: 286, baseType: !1697, size: 64, offset: 448)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1694, file: !37, line: 287, baseType: !1697, size: 64, offset: 512)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1694, file: !37, line: 288, baseType: !1697, size: 64, offset: 576)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1694, file: !37, line: 289, baseType: !1697, size: 64, offset: 640)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1694, file: !37, line: 290, baseType: !1697, size: 64, offset: 704)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1694, file: !37, line: 291, baseType: !1697, size: 64, offset: 768)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1694, file: !37, line: 292, baseType: !1697, size: 64, offset: 832)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1694, file: !37, line: 293, baseType: !1697, size: 64, offset: 896)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1694, file: !37, line: 294, baseType: !1697, size: 64, offset: 960)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1694, file: !37, line: 295, baseType: !1697, size: 64, offset: 1024)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1694, file: !37, line: 296, baseType: !1697, size: 64, offset: 1088)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1694, file: !37, line: 297, baseType: !1697, size: 64, offset: 1152)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1694, file: !37, line: 298, baseType: !1697, size: 64, offset: 1216)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1694, file: !37, line: 299, baseType: !1697, size: 64, offset: 1280)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1694, file: !37, line: 300, baseType: !1697, size: 64, offset: 1344)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1694, file: !37, line: 301, baseType: !1697, size: 64, offset: 1408)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !164, file: !30, line: 470, baseType: !1723, size: 64, offset: 768)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1725, line: 82, size: 1408, elements: !1726)
!1725 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1726 = !{!1727, !1728, !1729, !1730, !1731, !1732, !1733, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1812, !1815, !1818}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1724, file: !1725, line: 83, baseType: !171, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1724, file: !1725, line: 84, baseType: !171, size: 64, offset: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1724, file: !1725, line: 85, baseType: !1666, size: 64, offset: 128)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1724, file: !1725, line: 86, baseType: !279, size: 64, offset: 192)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1724, file: !1725, line: 87, baseType: !279, size: 64, offset: 256)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1724, file: !1725, line: 88, baseType: !279, size: 64, offset: 320)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1724, file: !1725, line: 90, baseType: !1734, size: 64, offset: 384)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{!110, !1666, !1737}
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1739)
!1739 = !{!1740, !1741, !1742, !1746, !1747, !1748, !1749, !1763, !1776, !1777, !1778, !1779, !1780, !1788, !1789, !1790, !1791, !1792, !1793}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1738, file: !24, line: 96, baseType: !171, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1738, file: !24, line: 97, baseType: !1723, size: 64, offset: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1738, file: !24, line: 99, baseType: !1743, size: 64, offset: 128)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1745, line: 76, flags: DIFlagFwdDecl)
!1745 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1738, file: !24, line: 100, baseType: !171, size: 64, offset: 192)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1738, file: !24, line: 102, baseType: !150, size: 8, offset: 256)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1738, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1738, file: !24, line: 105, baseType: !1750, size: 64, offset: 320)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1752)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1753, line: 262, size: 1600, elements: !1754)
!1753 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1754 = !{!1755, !1757, !1758, !1762}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1752, file: !1753, line: 263, baseType: !1756, size: 256)
!1756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 256, elements: !1300)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1752, file: !1753, line: 264, baseType: !1756, size: 256, offset: 256)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1752, file: !1753, line: 265, baseType: !1759, size: 1024, offset: 512)
!1759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 1024, elements: !1760)
!1760 = !{!1761}
!1761 = !DISubrange(count: 128)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1752, file: !1753, line: 266, baseType: !1199, size: 64, offset: 1536)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1738, file: !24, line: 106, baseType: !1764, size: 64, offset: 384)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1766)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1753, line: 210, size: 256, elements: !1767)
!1767 = !{!1768, !1772, !1774, !1775}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1766, file: !1753, line: 211, baseType: !1769, size: 72)
!1769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !636, size: 72, elements: !1770)
!1770 = !{!1771}
!1771 = !DISubrange(count: 9)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1766, file: !1753, line: 212, baseType: !1773, size: 64, offset: 128)
!1773 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1753, line: 14, baseType: !111)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1766, file: !1753, line: 213, baseType: !499, size: 32, offset: 192)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1766, file: !1753, line: 214, baseType: !499, size: 32, offset: 224)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1738, file: !24, line: 108, baseType: !1697, size: 64, offset: 448)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1738, file: !24, line: 109, baseType: !1688, size: 64, offset: 512)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1738, file: !24, line: 110, baseType: !1697, size: 64, offset: 576)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1738, file: !24, line: 111, baseType: !1688, size: 64, offset: 640)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1738, file: !24, line: 112, baseType: !1781, size: 64, offset: 704)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{!110, !1666, !1784}
!1784 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1785)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1786)
!1786 = !{!1787}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1785, file: !37, line: 51, baseType: !110, size: 32)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1738, file: !24, line: 113, baseType: !1697, size: 64, offset: 768)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1738, file: !24, line: 114, baseType: !279, size: 64, offset: 832)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1738, file: !24, line: 115, baseType: !279, size: 64, offset: 896)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1738, file: !24, line: 117, baseType: !1692, size: 64, offset: 960)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1738, file: !24, line: 118, baseType: !1688, size: 64, offset: 1024)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1738, file: !24, line: 120, baseType: !1794, size: 64, offset: 1088)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1724, file: !1725, line: 91, baseType: !1679, size: 64, offset: 448)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1724, file: !1725, line: 92, baseType: !1697, size: 64, offset: 512)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1724, file: !1725, line: 93, baseType: !1688, size: 64, offset: 576)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1724, file: !1725, line: 94, baseType: !1697, size: 64, offset: 640)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1724, file: !1725, line: 95, baseType: !1688, size: 64, offset: 704)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1724, file: !1725, line: 97, baseType: !1697, size: 64, offset: 768)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1724, file: !1725, line: 98, baseType: !1697, size: 64, offset: 832)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1724, file: !1725, line: 100, baseType: !1781, size: 64, offset: 896)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1724, file: !1725, line: 101, baseType: !1697, size: 64, offset: 960)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1724, file: !1725, line: 103, baseType: !1697, size: 64, offset: 1024)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1724, file: !1725, line: 105, baseType: !1697, size: 64, offset: 1088)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1724, file: !1725, line: 107, baseType: !1692, size: 64, offset: 1152)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1724, file: !1725, line: 109, baseType: !1809, size: 64, offset: 1216)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1811)
!1811 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1725, line: 109, flags: DIFlagFwdDecl)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1724, file: !1725, line: 111, baseType: !1813, size: 64, offset: 1280)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1725, line: 111, flags: DIFlagFwdDecl)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1724, file: !1725, line: 112, baseType: !1816, offset: 1344)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1817, line: 187, elements: !200)
!1817 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1724, file: !1725, line: 114, baseType: !150, size: 8, offset: 1344)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !164, file: !30, line: 471, baseType: !1737, size: 64, offset: 832)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !164, file: !30, line: 473, baseType: !109, size: 64, offset: 896)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !164, file: !30, line: 475, baseType: !109, size: 64, offset: 960)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !164, file: !30, line: 480, baseType: !443, size: 192, offset: 1024)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !164, file: !30, line: 484, baseType: !1824, size: 576, offset: 1216)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1825)
!1825 = !{!1826, !1827, !1828, !1829, !1830, !1831}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1824, file: !30, line: 362, baseType: !173, size: 128)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1824, file: !30, line: 363, baseType: !173, size: 128, offset: 128)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1824, file: !30, line: 364, baseType: !173, size: 128, offset: 256)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1824, file: !30, line: 365, baseType: !173, size: 128, offset: 384)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1824, file: !30, line: 366, baseType: !150, size: 8, offset: 512)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1824, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !164, file: !30, line: 485, baseType: !1833, size: 2304, offset: 1792)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1834)
!1834 = !{!1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1930, !1934}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1833, file: !37, line: 566, baseType: !1784, size: 32)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1833, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1833, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1833, file: !37, line: 569, baseType: !150, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1833, file: !37, line: 570, baseType: !150, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1833, file: !37, line: 571, baseType: !150, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1833, file: !37, line: 572, baseType: !150, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1833, file: !37, line: 573, baseType: !150, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1833, file: !37, line: 574, baseType: !150, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1833, file: !37, line: 575, baseType: !150, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1833, file: !37, line: 576, baseType: !150, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1833, file: !37, line: 577, baseType: !498, size: 32, offset: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1833, file: !37, line: 578, baseType: !186, offset: 96)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1833, file: !37, line: 580, baseType: !173, size: 128, offset: 128)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1833, file: !37, line: 581, baseType: !804, size: 192, offset: 256)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1833, file: !37, line: 582, baseType: !1851, size: 64, offset: 448)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1853, line: 43, size: 1472, elements: !1854)
!1853 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1854 = !{!1855, !1856, !1857, !1858, !1859, !1862, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1852, file: !1853, line: 44, baseType: !171, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1852, file: !1853, line: 45, baseType: !110, size: 32, offset: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1852, file: !1853, line: 46, baseType: !173, size: 128, offset: 128)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1852, file: !1853, line: 47, baseType: !186, offset: 256)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1852, file: !1853, line: 48, baseType: !1860, size: 64, offset: 256)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1852, file: !1853, line: 49, baseType: !1863, size: 320, offset: 320)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1864, line: 11, size: 320, elements: !1865)
!1864 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1865 = !{!1866, !1867, !1868, !1873}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1863, file: !1864, line: 16, baseType: !768, size: 128)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1863, file: !1864, line: 17, baseType: !111, size: 64, offset: 128)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1863, file: !1864, line: 18, baseType: !1869, size: 64, offset: 192)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{null, !1872}
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1863, file: !1864, line: 19, baseType: !498, size: 32, offset: 256)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1852, file: !1853, line: 50, baseType: !111, size: 64, offset: 640)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1852, file: !1853, line: 51, baseType: !574, size: 64, offset: 704)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1852, file: !1853, line: 52, baseType: !574, size: 64, offset: 768)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1852, file: !1853, line: 53, baseType: !574, size: 64, offset: 832)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1852, file: !1853, line: 54, baseType: !574, size: 64, offset: 896)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1852, file: !1853, line: 55, baseType: !574, size: 64, offset: 960)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1852, file: !1853, line: 56, baseType: !111, size: 64, offset: 1024)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1852, file: !1853, line: 57, baseType: !111, size: 64, offset: 1088)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1852, file: !1853, line: 58, baseType: !111, size: 64, offset: 1152)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1852, file: !1853, line: 59, baseType: !111, size: 64, offset: 1216)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1852, file: !1853, line: 60, baseType: !111, size: 64, offset: 1280)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1852, file: !1853, line: 61, baseType: !1666, size: 64, offset: 1344)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1852, file: !1853, line: 62, baseType: !150, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1852, file: !1853, line: 63, baseType: !150, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1833, file: !37, line: 583, baseType: !150, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1833, file: !37, line: 584, baseType: !150, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1833, file: !37, line: 585, baseType: !150, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1833, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1833, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1833, file: !37, line: 592, baseType: !566, size: 512, offset: 576)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1833, file: !37, line: 593, baseType: !344, size: 64, offset: 1088)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1833, file: !37, line: 594, baseType: !1405, size: 256, offset: 1152)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1833, file: !37, line: 595, baseType: !775, size: 128, offset: 1408)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1833, file: !37, line: 596, baseType: !1860, size: 64, offset: 1536)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1833, file: !37, line: 597, baseType: !366, size: 32, offset: 1600)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1833, file: !37, line: 598, baseType: !366, size: 32, offset: 1632)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1833, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1833, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1833, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1833, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1833, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1833, file: !37, line: 604, baseType: !150, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1833, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1833, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1833, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1833, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1833, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1833, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1833, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1833, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1833, file: !37, line: 613, baseType: !110, size: 32, offset: 1792)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1833, file: !37, line: 614, baseType: !110, size: 32, offset: 1824)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1833, file: !37, line: 615, baseType: !344, size: 64, offset: 1856)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1833, file: !37, line: 616, baseType: !344, size: 64, offset: 1920)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1833, file: !37, line: 617, baseType: !344, size: 64, offset: 1984)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1833, file: !37, line: 618, baseType: !344, size: 64, offset: 2048)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1833, file: !37, line: 620, baseType: !1921, size: 64, offset: 2112)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1923)
!1923 = !{!1924, !1925, !1926, !1927}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1922, file: !37, line: 537, baseType: !186)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1922, file: !37, line: 538, baseType: !7, size: 32)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1922, file: !37, line: 540, baseType: !173, size: 128, offset: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1922, file: !37, line: 543, baseType: !1928, size: 64, offset: 192)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1833, file: !37, line: 621, baseType: !1931, size: 64, offset: 2176)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{null, !1666, !728}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1833, file: !37, line: 622, baseType: !1935, size: 64, offset: 2240)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !164, file: !30, line: 486, baseType: !1938, size: 64, offset: 4096)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1940)
!1940 = !{!1941, !1942, !1943, !1947, !1948, !1949}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1939, file: !37, line: 643, baseType: !1694, size: 1472)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1939, file: !37, line: 644, baseType: !1697, size: 64, offset: 1472)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1939, file: !37, line: 645, baseType: !1944, size: 64, offset: 1536)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{null, !1666, !150}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1939, file: !37, line: 646, baseType: !1697, size: 64, offset: 1600)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1939, file: !37, line: 647, baseType: !1688, size: 64, offset: 1664)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1939, file: !37, line: 648, baseType: !1688, size: 64, offset: 1728)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !164, file: !30, line: 493, baseType: !1951, size: 64, offset: 4160)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !51, line: 162, size: 1088, elements: !1953)
!1953 = !{!1954, !1955, !1956, !2130, !2131, !2132, !2133, !2134, !2135, !2138, !2139, !2140, !2141, !2142, !2143, !2144}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1952, file: !51, line: 163, baseType: !173, size: 128)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1952, file: !51, line: 164, baseType: !171, size: 64, offset: 128)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1952, file: !51, line: 165, baseType: !1957, size: 64, offset: 192)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1959)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !51, line: 105, size: 640, elements: !1960)
!1960 = !{!1961, !2079, !2090, !2095, !2099, !2107, !2111, !2115, !2122, !2126}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1959, file: !51, line: 106, baseType: !1962, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DISubroutineType(types: !1964)
!1964 = !{!110, !1951, !1965, !50}
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1967, line: 51, size: 1344, elements: !1968)
!1967 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!1968 = !{!1969, !1970, !1972, !1973, !2063, !2072, !2073, !2074, !2075, !2076, !2077, !2078}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1966, file: !1967, line: 52, baseType: !171, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1966, file: !1967, line: 53, baseType: !1971, size: 32, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1967, line: 28, baseType: !498)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1966, file: !1967, line: 54, baseType: !171, size: 64, offset: 128)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1966, file: !1967, line: 55, baseType: !1974, size: 192, offset: 192)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1975, line: 17, size: 192, elements: !1976)
!1975 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!1976 = !{!1977, !1979, !2062}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1974, file: !1975, line: 18, baseType: !1978, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1974, file: !1975, line: 19, baseType: !1980, size: 64, offset: 64)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1982)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1975, line: 110, size: 1152, elements: !1983)
!1983 = !{!1984, !1988, !1992, !1998, !2004, !2008, !2012, !2017, !2021, !2022, !2026, !2030, !2034, !2045, !2046, !2047, !2048, !2058}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1982, file: !1975, line: 111, baseType: !1985, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DISubroutineType(types: !1987)
!1987 = !{!1978, !1978}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1982, file: !1975, line: 112, baseType: !1989, size: 64, offset: 64)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{null, !1978}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1982, file: !1975, line: 113, baseType: !1993, size: 64, offset: 128)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{!150, !1996}
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1974)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1982, file: !1975, line: 114, baseType: !1999, size: 64, offset: 192)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!1199, !1996, !2002}
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !164)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1982, file: !1975, line: 116, baseType: !2005, size: 64, offset: 256)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!150, !1996, !171}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1982, file: !1975, line: 118, baseType: !2009, size: 64, offset: 320)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!110, !1996, !171, !7, !109, !273}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1982, file: !1975, line: 123, baseType: !2013, size: 64, offset: 384)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!110, !1996, !171, !2016, !273}
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1982, file: !1975, line: 126, baseType: !2018, size: 64, offset: 448)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{!171, !1996}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1982, file: !1975, line: 127, baseType: !2018, size: 64, offset: 512)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1982, file: !1975, line: 128, baseType: !2023, size: 64, offset: 576)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!1978, !1996}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1982, file: !1975, line: 130, baseType: !2027, size: 64, offset: 640)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!1978, !1996, !1978}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1982, file: !1975, line: 133, baseType: !2031, size: 64, offset: 704)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{!1978, !1996, !171}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1982, file: !1975, line: 135, baseType: !2035, size: 64, offset: 768)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DISubroutineType(types: !2037)
!2037 = !{!110, !1996, !171, !171, !7, !7, !2038}
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1975, line: 43, size: 640, elements: !2040)
!2040 = !{!2041, !2042, !2043}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2039, file: !1975, line: 44, baseType: !1978, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2039, file: !1975, line: 45, baseType: !7, size: 32, offset: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2039, file: !1975, line: 46, baseType: !2044, size: 512, offset: 128)
!2044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 512, elements: !604)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1982, file: !1975, line: 140, baseType: !2027, size: 64, offset: 832)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1982, file: !1975, line: 143, baseType: !2023, size: 64, offset: 896)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1982, file: !1975, line: 145, baseType: !1985, size: 64, offset: 960)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1982, file: !1975, line: 146, baseType: !2049, size: 64, offset: 1024)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{!110, !1996, !2052}
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1975, line: 29, size: 128, elements: !2054)
!2054 = !{!2055, !2056, !2057}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2053, file: !1975, line: 30, baseType: !7, size: 32)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2053, file: !1975, line: 31, baseType: !7, size: 32, offset: 32)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2053, file: !1975, line: 32, baseType: !1996, size: 64, offset: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1982, file: !1975, line: 148, baseType: !2059, size: 64, offset: 1088)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!110, !1996, !1666}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1974, file: !1975, line: 20, baseType: !1666, size: 64, offset: 128)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1966, file: !1967, line: 57, baseType: !2064, size: 64, offset: 384)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1967, line: 31, size: 704, elements: !2066)
!2066 = !{!2067, !2068, !2069, !2070, !2071}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2065, file: !1967, line: 32, baseType: !227, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2065, file: !1967, line: 33, baseType: !110, size: 32, offset: 64)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2065, file: !1967, line: 34, baseType: !109, size: 64, offset: 128)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2065, file: !1967, line: 35, baseType: !2064, size: 64, offset: 192)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2065, file: !1967, line: 43, baseType: !294, size: 448, offset: 256)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1966, file: !1967, line: 58, baseType: !2064, size: 64, offset: 448)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1966, file: !1967, line: 59, baseType: !1965, size: 64, offset: 512)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1966, file: !1967, line: 60, baseType: !1965, size: 64, offset: 576)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1966, file: !1967, line: 61, baseType: !1965, size: 64, offset: 640)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1966, file: !1967, line: 63, baseType: !167, size: 512, offset: 704)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1966, file: !1967, line: 65, baseType: !111, size: 64, offset: 1216)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1966, file: !1967, line: 66, baseType: !109, size: 64, offset: 1280)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !1959, file: !51, line: 108, baseType: !2080, size: 64, offset: 64)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!110, !1951, !2083, !50}
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !51, line: 63, size: 640, elements: !2085)
!2085 = !{!2086, !2087, !2088}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2084, file: !51, line: 64, baseType: !1978, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !2084, file: !51, line: 65, baseType: !110, size: 32, offset: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !2084, file: !51, line: 66, baseType: !2089, size: 512, offset: 96)
!2089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !498, size: 512, elements: !861)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1959, file: !51, line: 110, baseType: !2091, size: 64, offset: 128)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = !DISubroutineType(types: !2093)
!2093 = !{!110, !1951, !7, !2094}
!2094 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !108, line: 164, baseType: !111)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !1959, file: !51, line: 111, baseType: !2096, size: 64, offset: 192)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{null, !1951, !7}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !1959, file: !51, line: 112, baseType: !2100, size: 64, offset: 256)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = !DISubroutineType(types: !2102)
!2102 = !{!110, !1951, !1965, !2103, !7, !2105, !2106}
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !498)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1959, file: !51, line: 117, baseType: !2108, size: 64, offset: 320)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!110, !1951, !7, !7, !109}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1959, file: !51, line: 119, baseType: !2112, size: 64, offset: 384)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{null, !1951, !7, !7}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1959, file: !51, line: 121, baseType: !2116, size: 64, offset: 448)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!110, !1951, !2119, !150}
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !2121, line: 11, flags: DIFlagFwdDecl)
!2121 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !1959, file: !51, line: 122, baseType: !2123, size: 64, offset: 512)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{null, !1951, !2119}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !1959, file: !51, line: 123, baseType: !2127, size: 64, offset: 576)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{!110, !1951, !2083, !2105, !2106}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !1952, file: !51, line: 166, baseType: !109, size: 64, offset: 256)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1952, file: !51, line: 167, baseType: !7, size: 32, offset: 320)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !1952, file: !51, line: 168, baseType: !7, size: 32, offset: 352)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1952, file: !51, line: 171, baseType: !1978, size: 64, offset: 384)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !1952, file: !51, line: 172, baseType: !50, size: 32, offset: 448)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !1952, file: !51, line: 173, baseType: !2136, size: 64, offset: 512)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !51, line: 134, flags: DIFlagFwdDecl)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1952, file: !51, line: 175, baseType: !1951, size: 64, offset: 576)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !1952, file: !51, line: 182, baseType: !2094, size: 64, offset: 640)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !1952, file: !51, line: 183, baseType: !7, size: 32, offset: 704)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !1952, file: !51, line: 184, baseType: !7, size: 32, offset: 736)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !1952, file: !51, line: 185, baseType: !1533, size: 128, offset: 768)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !1952, file: !51, line: 186, baseType: !443, size: 192, offset: 896)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !1952, file: !51, line: 187, baseType: !2145, offset: 1088)
!2145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !1419)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !164, file: !30, line: 499, baseType: !173, size: 128, offset: 4224)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !164, file: !30, line: 502, baseType: !2148, size: 64, offset: 4352)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2150)
!2150 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !164, file: !30, line: 504, baseType: !2152, size: 64, offset: 4416)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !164, file: !30, line: 505, baseType: !344, size: 64, offset: 4480)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !164, file: !30, line: 510, baseType: !344, size: 64, offset: 4544)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !164, file: !30, line: 511, baseType: !2156, size: 64, offset: 4608)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2158)
!2158 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !164, file: !30, line: 513, baseType: !2160, size: 64, offset: 4672)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !2162)
!2162 = !{!2163, !2164}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2161, file: !30, line: 293, baseType: !7, size: 32)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2161, file: !30, line: 294, baseType: !111, size: 64, offset: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !164, file: !30, line: 515, baseType: !173, size: 128, offset: 4736)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !164, file: !30, line: 526, baseType: !2167, offset: 4864)
!2167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2168, line: 5, elements: !200)
!2168 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !164, file: !30, line: 528, baseType: !1965, size: 64, offset: 4864)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !164, file: !30, line: 529, baseType: !1978, size: 64, offset: 4928)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !164, file: !30, line: 534, baseType: !2172, size: 32, offset: 4992)
!2172 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !108, line: 16, baseType: !2173)
!2173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !108, line: 13, baseType: !498)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !164, file: !30, line: 535, baseType: !498, size: 32, offset: 5024)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !164, file: !30, line: 537, baseType: !186, offset: 5056)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !164, file: !30, line: 538, baseType: !173, size: 128, offset: 5056)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !164, file: !30, line: 540, baseType: !2178, size: 64, offset: 5184)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2180, line: 54, size: 960, elements: !2181)
!2180 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2181 = !{!2182, !2183, !2184, !2185, !2186, !2187, !2188, !2192, !2196, !2197, !2198, !2199, !2203, !2207, !2208}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2179, file: !2180, line: 55, baseType: !171, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2179, file: !2180, line: 56, baseType: !1743, size: 64, offset: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2179, file: !2180, line: 58, baseType: !279, size: 64, offset: 128)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2179, file: !2180, line: 59, baseType: !279, size: 64, offset: 192)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2179, file: !2180, line: 60, baseType: !179, size: 64, offset: 256)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2179, file: !2180, line: 62, baseType: !1679, size: 64, offset: 320)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2179, file: !2180, line: 63, baseType: !2189, size: 64, offset: 384)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{!227, !1666, !1686}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2179, file: !2180, line: 65, baseType: !2193, size: 64, offset: 448)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = !DISubroutineType(types: !2195)
!2195 = !{null, !2178}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2179, file: !2180, line: 66, baseType: !1688, size: 64, offset: 512)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2179, file: !2180, line: 68, baseType: !1697, size: 64, offset: 576)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2179, file: !2180, line: 70, baseType: !1454, size: 64, offset: 640)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2179, file: !2180, line: 71, baseType: !2200, size: 64, offset: 704)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!1199, !1666}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2179, file: !2180, line: 73, baseType: !2204, size: 64, offset: 768)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{null, !1666, !1489, !1495}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2179, file: !2180, line: 75, baseType: !1692, size: 64, offset: 832)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2179, file: !2180, line: 77, baseType: !1813, size: 64, offset: 896)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !164, file: !30, line: 541, baseType: !279, size: 64, offset: 5248)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !164, file: !30, line: 543, baseType: !1688, size: 64, offset: 5312)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !164, file: !30, line: 544, baseType: !2212, size: 64, offset: 5376)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !164, file: !30, line: 545, baseType: !2215, size: 64, offset: 5440)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !164, file: !30, line: 547, baseType: !150, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !164, file: !30, line: 548, baseType: !150, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !164, file: !30, line: 549, baseType: !150, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !164, file: !30, line: 550, baseType: !150, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !159, file: !76, line: 97, baseType: !1965, size: 64, offset: 5760)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "devdata", scope: !159, file: !76, line: 98, baseType: !109, size: 64, offset: 5824)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !159, file: !76, line: 99, baseType: !109, size: 64, offset: 5888)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !159, file: !76, line: 100, baseType: !2225, size: 64, offset: 5952)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2227)
!2227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device_ops", file: !76, line: 84, size: 384, elements: !2228)
!2228 = !{!2229, !2233, !2234, !2238, !2242, !2246}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "get_max_state", scope: !2227, file: !76, line: 85, baseType: !2230, size: 64)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DISubroutineType(types: !2232)
!2232 = !{!110, !158, !2105}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "get_cur_state", scope: !2227, file: !76, line: 86, baseType: !2230, size: 64, offset: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "set_cur_state", scope: !2227, file: !76, line: 87, baseType: !2235, size: 64, offset: 128)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = !DISubroutineType(types: !2237)
!2237 = !{!110, !158, !111}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "get_requested_power", scope: !2227, file: !76, line: 88, baseType: !2239, size: 64, offset: 192)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{!110, !158, !699}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "state2power", scope: !2227, file: !76, line: 89, baseType: !2243, size: 64, offset: 256)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = !DISubroutineType(types: !2245)
!2245 = !{!110, !158, !111, !699}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "power2state", scope: !2227, file: !76, line: 90, baseType: !2247, size: 64, offset: 320)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{!110, !158, !498, !2105}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "updated", scope: !159, file: !76, line: 101, baseType: !150, size: 8, offset: 6016)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !159, file: !76, line: 102, baseType: !443, size: 192, offset: 6080)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_instances", scope: !159, file: !76, line: 103, baseType: !173, size: 128, offset: 6272)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !159, file: !76, line: 104, baseType: !173, size: 128, offset: 6400)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !155, file: !76, line: 217, baseType: !110, size: 32, offset: 64)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "trip_mask", scope: !155, file: !76, line: 224, baseType: !110, size: 32, offset: 96)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "binding_limits", scope: !155, file: !76, line: 234, baseType: !2105, size: 64, offset: 128)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !155, file: !76, line: 235, baseType: !2258, size: 64, offset: 192)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DISubroutineType(types: !2260)
!2260 = !{!110, !2261, !158}
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_device", file: !76, line: 150, size: 8448, elements: !2263)
!2263 = !{!2264, !2265, !2266, !2267, !2268, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2331, !2333, !2348, !2349, !2350, !2354, !2355, !2356, !2365}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2262, file: !76, line: 151, baseType: !110, size: 32)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2262, file: !76, line: 152, baseType: !146, size: 160, offset: 32)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !2262, file: !76, line: 153, baseType: !164, size: 5568, offset: 192)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "trips_attribute_group", scope: !2262, file: !76, line: 154, baseType: !282, size: 320, offset: 5760)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "trip_temp_attrs", scope: !2262, file: !76, line: 155, baseType: !2269, size: 64, offset: 6080)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_attr", file: !76, line: 38, flags: DIFlagFwdDecl)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "trip_type_attrs", scope: !2262, file: !76, line: 156, baseType: !2269, size: 64, offset: 6144)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "trip_hyst_attrs", scope: !2262, file: !76, line: 157, baseType: !2269, size: 64, offset: 6208)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2262, file: !76, line: 158, baseType: !64, size: 32, offset: 6272)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "devdata", scope: !2262, file: !76, line: 159, baseType: !109, size: 64, offset: 6336)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "trips", scope: !2262, file: !76, line: 160, baseType: !110, size: 32, offset: 6400)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "trips_disabled", scope: !2262, file: !76, line: 161, baseType: !111, size: 64, offset: 6464)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "passive_delay", scope: !2262, file: !76, line: 162, baseType: !110, size: 32, offset: 6528)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "polling_delay", scope: !2262, file: !76, line: 163, baseType: !110, size: 32, offset: 6560)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "temperature", scope: !2262, file: !76, line: 164, baseType: !110, size: 32, offset: 6592)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "last_temperature", scope: !2262, file: !76, line: 165, baseType: !110, size: 32, offset: 6624)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "emul_temperature", scope: !2262, file: !76, line: 166, baseType: !110, size: 32, offset: 6656)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "passive", scope: !2262, file: !76, line: 167, baseType: !110, size: 32, offset: 6688)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "prev_low_trip", scope: !2262, file: !76, line: 168, baseType: !110, size: 32, offset: 6720)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "prev_high_trip", scope: !2262, file: !76, line: 169, baseType: !110, size: 32, offset: 6752)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "forced_passive", scope: !2262, file: !76, line: 170, baseType: !7, size: 32, offset: 6784)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "need_update", scope: !2262, file: !76, line: 171, baseType: !366, size: 32, offset: 6816)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2262, file: !76, line: 172, baseType: !2288, size: 64, offset: 6848)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_device_ops", file: !76, line: 61, size: 896, elements: !2290)
!2290 = !{!2291, !2292, !2293, !2297, !2301, !2305, !2310, !2314, !2315, !2316, !2317, !2318, !2322, !2327}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !2289, file: !76, line: 62, baseType: !2258, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !2289, file: !76, line: 64, baseType: !2258, size: 64, offset: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "get_temp", scope: !2289, file: !76, line: 66, baseType: !2294, size: 64, offset: 128)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DISubroutineType(types: !2296)
!2296 = !{!110, !2261, !815}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "set_trips", scope: !2289, file: !76, line: 67, baseType: !2298, size: 64, offset: 192)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{!110, !2261, !110, !110}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "change_mode", scope: !2289, file: !76, line: 68, baseType: !2302, size: 64, offset: 256)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{!110, !2261, !64}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "get_trip_type", scope: !2289, file: !76, line: 70, baseType: !2306, size: 64, offset: 320)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{!110, !2261, !110, !2309}
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "get_trip_temp", scope: !2289, file: !76, line: 72, baseType: !2311, size: 64, offset: 384)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!110, !2261, !110, !815}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "set_trip_temp", scope: !2289, file: !76, line: 73, baseType: !2298, size: 64, offset: 448)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "get_trip_hyst", scope: !2289, file: !76, line: 74, baseType: !2311, size: 64, offset: 512)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "set_trip_hyst", scope: !2289, file: !76, line: 75, baseType: !2298, size: 64, offset: 576)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "get_crit_temp", scope: !2289, file: !76, line: 76, baseType: !2294, size: 64, offset: 640)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "set_emul_temp", scope: !2289, file: !76, line: 77, baseType: !2319, size: 64, offset: 704)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!110, !2261, !110}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "get_trend", scope: !2289, file: !76, line: 78, baseType: !2323, size: 64, offset: 768)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{!110, !2261, !110, !2326}
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2289, file: !76, line: 80, baseType: !2328, size: 64, offset: 832)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{!110, !2261, !110, !69}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "tzp", scope: !2262, file: !76, line: 173, baseType: !2332, size: 64, offset: 6912)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "governor", scope: !2262, file: !76, line: 174, baseType: !2334, size: 64, offset: 6976)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_governor", file: !76, line: 196, size: 512, elements: !2336)
!2336 = !{!2337, !2338, !2342, !2346, !2347}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2335, file: !76, line: 197, baseType: !146, size: 160)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "bind_to_tz", scope: !2335, file: !76, line: 198, baseType: !2339, size: 64, offset: 192)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = !DISubroutineType(types: !2341)
!2341 = !{!110, !2261}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "unbind_from_tz", scope: !2335, file: !76, line: 199, baseType: !2343, size: 64, offset: 256)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = !DISubroutineType(types: !2345)
!2345 = !{null, !2261}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !2335, file: !76, line: 200, baseType: !2319, size: 64, offset: 320)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "governor_list", scope: !2335, file: !76, line: 201, baseType: !173, size: 128, offset: 384)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "governor_data", scope: !2262, file: !76, line: 175, baseType: !109, size: 64, offset: 7040)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_instances", scope: !2262, file: !76, line: 176, baseType: !173, size: 128, offset: 7104)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "ida", scope: !2262, file: !76, line: 177, baseType: !2351, size: 128, offset: 7232)
!2351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !1530, line: 244, size: 128, elements: !2352)
!2352 = !{!2353}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !2351, file: !1530, line: 245, baseType: !1533, size: 128)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2262, file: !76, line: 178, baseType: !443, size: 192, offset: 7360)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2262, file: !76, line: 179, baseType: !173, size: 128, offset: 7552)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "poll_queue", scope: !2262, file: !76, line: 180, baseType: !2357, size: 704, offset: 7680)
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1406, line: 115, size: 704, elements: !2358)
!2358 = !{!2359, !2360, !2361, !2364}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2357, file: !1406, line: 116, baseType: !1405, size: 256)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2357, file: !1406, line: 117, baseType: !1863, size: 320, offset: 256)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2357, file: !1406, line: 120, baseType: !2362, size: 64, offset: 576)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1406, line: 18, flags: DIFlagFwdDecl)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2357, file: !1406, line: 121, baseType: !110, size: 32, offset: 640)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "notify_event", scope: !2262, file: !76, line: 181, baseType: !83, size: 32, offset: 8384)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "sustainable_power", scope: !143, file: !76, line: 257, baseType: !498, size: 32, offset: 320)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "k_po", scope: !143, file: !76, line: 263, baseType: !728, size: 32, offset: 352)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "k_pu", scope: !143, file: !76, line: 269, baseType: !728, size: 32, offset: 384)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "k_i", scope: !143, file: !76, line: 272, baseType: !728, size: 32, offset: 416)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "k_d", scope: !143, file: !76, line: 275, baseType: !728, size: 32, offset: 448)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "integral_cutoff", scope: !143, file: !76, line: 278, baseType: !728, size: 32, offset: 480)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "slope", scope: !143, file: !76, line: 284, baseType: !110, size: 32, offset: 512)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !143, file: !76, line: 289, baseType: !110, size: 32, offset: 544)
!2374 = !{i32 7, !"Dwarf Version", i32 4}
!2375 = !{i32 2, !"Debug Info Version", i32 3}
!2376 = !{i32 1, !"wchar_size", i32 2}
!2377 = !{i32 1, !"Code Model", i32 2}
!2378 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2379 = distinct !DISubprogram(name: "int340x_thermal_read_trips", scope: !3, file: !3, line: 172, type: !2380, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !200)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{!110, !2382}
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int34x_thermal_zone", file: !2384, line: 20, size: 1600, elements: !2385)
!2384 = !DIFile(filename: "drivers/thermal/intel/int340x_thermal/int340x_thermal_zone.h", directory: "/home/lizy2001/genbc/linux")
!2385 = !{!2386, !2668, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "adev", scope: !2383, file: !2384, line: 21, baseType: !2387, size: 64)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !2389, line: 351, size: 10880, elements: !2390)
!2389 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/lizy2001/genbc/linux")
!2390 = !{!2391, !2392, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2410, !2427, !2500, !2529, !2553, !2574, !2580, !2589, !2621, !2635, !2657, !2661, !2662, !2663, !2664, !2665, !2666, !2667}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !2388, file: !2389, line: 352, baseType: !110, size: 32)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !2388, file: !2389, line: 353, baseType: !2393, size: 64, offset: 64)
!2393 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !2394, line: 424, baseType: !109)
!2394 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2388, file: !2389, line: 354, baseType: !1974, size: 192, offset: 128)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2388, file: !2389, line: 355, baseType: !2387, size: 64, offset: 320)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2388, file: !2389, line: 356, baseType: !173, size: 128, offset: 384)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2388, file: !2389, line: 357, baseType: !173, size: 128, offset: 512)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !2388, file: !2389, line: 358, baseType: !173, size: 128, offset: 640)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !2388, file: !2389, line: 359, baseType: !173, size: 128, offset: 768)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2388, file: !2389, line: 360, baseType: !2402, size: 32, offset: 896)
!2402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !2389, line: 179, size: 32, elements: !2403)
!2403 = !{!2404, !2405, !2406, !2407, !2408, !2409}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !2402, file: !2389, line: 180, baseType: !498, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2402, file: !2389, line: 181, baseType: !498, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !2402, file: !2389, line: 182, baseType: !498, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !2402, file: !2389, line: 183, baseType: !498, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !2402, file: !2389, line: 184, baseType: !498, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2402, file: !2389, line: 185, baseType: !498, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2388, file: !2389, line: 361, baseType: !2411, size: 32, offset: 928)
!2411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !2389, line: 190, size: 32, elements: !2412)
!2412 = !{!2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !2411, file: !2389, line: 191, baseType: !498, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2411, file: !2389, line: 192, baseType: !498, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !2411, file: !2389, line: 193, baseType: !498, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !2411, file: !2389, line: 194, baseType: !498, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !2411, file: !2389, line: 195, baseType: !498, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !2411, file: !2389, line: 196, baseType: !498, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !2411, file: !2389, line: 197, baseType: !498, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !2411, file: !2389, line: 198, baseType: !498, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !2411, file: !2389, line: 199, baseType: !498, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !2411, file: !2389, line: 200, baseType: !498, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !2411, file: !2389, line: 201, baseType: !498, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !2411, file: !2389, line: 202, baseType: !498, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !2411, file: !2389, line: 203, baseType: !498, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2411, file: !2389, line: 204, baseType: !498, size: 19, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !2388, file: !2389, line: 362, baseType: !2428, size: 960, offset: 960)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !2389, line: 234, size: 960, elements: !2429)
!2429 = !{!2430, !2432, !2439, !2441, !2442, !2443, !2448, !2450}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !2428, file: !2389, line: 235, baseType: !2431, size: 64)
!2431 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !2389, line: 217, baseType: !1007)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2428, file: !2389, line: 236, baseType: !2433, size: 32, offset: 64)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !2389, line: 227, size: 32, elements: !2434)
!2434 = !{!2435, !2436, !2437, !2438}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !2433, file: !2389, line: 228, baseType: !498, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !2433, file: !2389, line: 229, baseType: !498, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !2433, file: !2389, line: 230, baseType: !498, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2433, file: !2389, line: 231, baseType: !498, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !2428, file: !2389, line: 237, baseType: !2440, size: 64, offset: 128)
!2440 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !2389, line: 218, baseType: !344)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !2428, file: !2389, line: 238, baseType: !227, size: 64, offset: 192)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2428, file: !2389, line: 239, baseType: !173, size: 128, offset: 256)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !2428, file: !2389, line: 240, baseType: !2444, size: 320, offset: 384)
!2444 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !2389, line: 219, baseType: !2445)
!2445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 320, elements: !2446)
!2446 = !{!2447}
!2447 = !DISubrange(count: 40)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !2428, file: !2389, line: 241, baseType: !2449, size: 160, offset: 704)
!2449 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !2389, line: 220, baseType: !146)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !2428, file: !2389, line: 242, baseType: !2451, size: 64, offset: 896)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !2394, line: 899, size: 192, elements: !2453)
!2453 = !{!2454, !2456, !2461, !2467, !2474, !2480, !2486, !2494}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2452, file: !2394, line: 900, baseType: !2455, size: 32)
!2455 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !2394, line: 635, baseType: !498)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !2452, file: !2394, line: 904, baseType: !2457, size: 128)
!2457 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2452, file: !2394, line: 901, size: 128, elements: !2458)
!2458 = !{!2459, !2460}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2457, file: !2394, line: 902, baseType: !2455, size: 32)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2457, file: !2394, line: 903, baseType: !344, size: 64, offset: 64)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2452, file: !2394, line: 910, baseType: !2462, size: 128)
!2462 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2452, file: !2394, line: 906, size: 128, elements: !2463)
!2463 = !{!2464, !2465, !2466}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2462, file: !2394, line: 907, baseType: !2455, size: 32)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2462, file: !2394, line: 908, baseType: !498, size: 32, offset: 32)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2462, file: !2394, line: 909, baseType: !227, size: 64, offset: 64)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2452, file: !2394, line: 916, baseType: !2468, size: 128)
!2468 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2452, file: !2394, line: 912, size: 128, elements: !2469)
!2469 = !{!2470, !2471, !2472}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2468, file: !2394, line: 913, baseType: !2455, size: 32)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2468, file: !2394, line: 914, baseType: !498, size: 32, offset: 32)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2468, file: !2394, line: 915, baseType: !2473, size: 64, offset: 64)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !2452, file: !2394, line: 922, baseType: !2475, size: 128)
!2475 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2452, file: !2394, line: 918, size: 128, elements: !2476)
!2476 = !{!2477, !2478, !2479}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2475, file: !2394, line: 919, baseType: !2455, size: 32)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2475, file: !2394, line: 920, baseType: !498, size: 32, offset: 32)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !2475, file: !2394, line: 921, baseType: !2451, size: 64, offset: 64)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !2452, file: !2394, line: 928, baseType: !2481, size: 128)
!2481 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2452, file: !2394, line: 924, size: 128, elements: !2482)
!2482 = !{!2483, !2484, !2485}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2481, file: !2394, line: 925, baseType: !2455, size: 32)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !2481, file: !2394, line: 926, baseType: !2455, size: 32, offset: 32)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !2481, file: !2394, line: 927, baseType: !2393, size: 64, offset: 64)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !2452, file: !2394, line: 935, baseType: !2487, size: 192)
!2487 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2452, file: !2394, line: 930, size: 192, elements: !2488)
!2488 = !{!2489, !2490, !2491, !2493}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2487, file: !2394, line: 931, baseType: !2455, size: 32)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !2487, file: !2394, line: 932, baseType: !498, size: 32, offset: 32)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !2487, file: !2394, line: 933, baseType: !2492, size: 64, offset: 64)
!2492 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !2394, line: 128, baseType: !344)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !2487, file: !2394, line: 934, baseType: !498, size: 32, offset: 128)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !2452, file: !2394, line: 941, baseType: !2495, size: 96)
!2495 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2452, file: !2394, line: 937, size: 96, elements: !2496)
!2496 = !{!2497, !2498, !2499}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2495, file: !2394, line: 938, baseType: !2455, size: 32)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !2495, file: !2394, line: 939, baseType: !498, size: 32, offset: 32)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !2495, file: !2394, line: 940, baseType: !498, size: 32, offset: 64)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2388, file: !2389, line: 363, baseType: !2501, size: 1344, offset: 1920)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !2389, line: 275, size: 1344, elements: !2502)
!2502 = !{!2503, !2504, !2514}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2501, file: !2389, line: 276, baseType: !110, size: 32)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2501, file: !2389, line: 277, baseType: !2505, size: 32, offset: 32)
!2505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !2389, line: 254, size: 32, elements: !2506)
!2506 = !{!2507, !2508, !2509, !2510, !2511, !2512, !2513}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !2505, file: !2389, line: 255, baseType: !498, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !2505, file: !2389, line: 256, baseType: !498, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !2505, file: !2389, line: 257, baseType: !498, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !2505, file: !2389, line: 258, baseType: !498, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !2505, file: !2389, line: 259, baseType: !498, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !2505, file: !2389, line: 260, baseType: !498, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2505, file: !2389, line: 261, baseType: !498, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2501, file: !2389, line: 278, baseType: !2515, size: 1280, offset: 64)
!2515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2516, size: 1280, elements: !2527)
!2516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !2389, line: 264, size: 256, elements: !2517)
!2517 = !{!2518, !2524, !2525, !2526}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2516, file: !2389, line: 269, baseType: !2519, size: 8)
!2519 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2516, file: !2389, line: 265, size: 8, elements: !2520)
!2520 = !{!2521, !2522, !2523}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2519, file: !2389, line: 266, baseType: !635, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !2519, file: !2389, line: 267, baseType: !635, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2519, file: !2389, line: 268, baseType: !635, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2516, file: !2389, line: 270, baseType: !110, size: 32, offset: 32)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !2516, file: !2389, line: 271, baseType: !110, size: 32, offset: 64)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !2516, file: !2389, line: 272, baseType: !173, size: 128, offset: 128)
!2527 = !{!2528}
!2528 = !DISubrange(count: 5)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2388, file: !2389, line: 364, baseType: !2530, size: 640, offset: 3264)
!2530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !2389, line: 315, size: 640, elements: !2531)
!2531 = !{!2532, !2533, !2534, !2535, !2536, !2541, !2550, !2551, !2552}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !2530, file: !2389, line: 316, baseType: !2393, size: 64)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !2530, file: !2389, line: 317, baseType: !344, size: 64, offset: 64)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !2530, file: !2389, line: 318, baseType: !344, size: 64, offset: 128)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !2530, file: !2389, line: 319, baseType: !173, size: 128, offset: 192)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2530, file: !2389, line: 320, baseType: !2537, size: 8, offset: 320)
!2537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !2389, line: 305, size: 8, elements: !2538)
!2538 = !{!2539, !2540}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2537, file: !2389, line: 306, baseType: !635, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !2537, file: !2389, line: 307, baseType: !635, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2530, file: !2389, line: 321, baseType: !2542, size: 128, offset: 384)
!2542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !2389, line: 310, size: 128, elements: !2543)
!2543 = !{!2544, !2549}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2542, file: !2389, line: 311, baseType: !2545, size: 64)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{null, !2548}
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2542, file: !2389, line: 312, baseType: !1666, size: 64, offset: 64)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !2530, file: !2389, line: 322, baseType: !1851, size: 64, offset: 512)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !2530, file: !2389, line: 323, baseType: !110, size: 32, offset: 576)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !2530, file: !2389, line: 324, baseType: !110, size: 32, offset: 608)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !2388, file: !2389, line: 365, baseType: !2554, size: 192, offset: 3904)
!2554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !2389, line: 297, size: 192, elements: !2555)
!2555 = !{!2556, !2557, !2561, !2562}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2554, file: !2389, line: 298, baseType: !110, size: 32)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2554, file: !2389, line: 299, baseType: !2558, size: 8, offset: 32)
!2558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !2389, line: 283, size: 8, elements: !2559)
!2559 = !{!2560}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2558, file: !2389, line: 284, baseType: !635, size: 8, flags: DIFlagBitField, extraData: i64 0)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !2554, file: !2389, line: 300, baseType: !110, size: 32, offset: 64)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2554, file: !2389, line: 301, baseType: !2563, size: 64, offset: 128)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !2389, line: 287, size: 64, elements: !2565)
!2565 = !{!2566, !2571, !2572, !2573}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2564, file: !2389, line: 291, baseType: !2567, size: 8)
!2567 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2564, file: !2389, line: 288, size: 8, elements: !2568)
!2568 = !{!2569, !2570}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2567, file: !2389, line: 289, baseType: !635, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2567, file: !2389, line: 290, baseType: !635, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2564, file: !2389, line: 292, baseType: !635, size: 8, offset: 8)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !2564, file: !2389, line: 293, baseType: !635, size: 8, offset: 16)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !2564, file: !2389, line: 294, baseType: !110, size: 32, offset: 32)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2388, file: !2389, line: 366, baseType: !2575, size: 64, offset: 4096)
!2575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !2389, line: 209, size: 64, elements: !2576)
!2576 = !{!2577}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2575, file: !2389, line: 210, baseType: !2578, size: 64)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !2389, line: 84, flags: DIFlagFwdDecl)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2388, file: !2389, line: 367, baseType: !2581, size: 384, offset: 4160)
!2581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !2389, line: 341, size: 384, elements: !2582)
!2582 = !{!2583, !2586, !2587, !2588}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2581, file: !2389, line: 342, baseType: !2584, size: 64)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2452)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2581, file: !2389, line: 343, baseType: !173, size: 128, offset: 64)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !2581, file: !2389, line: 344, baseType: !2584, size: 64, offset: 192)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !2581, file: !2389, line: 345, baseType: !173, size: 128, offset: 256)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !2388, file: !2389, line: 368, baseType: !2590, size: 64, offset: 4544)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !2389, line: 122, size: 1216, elements: !2592)
!2592 = !{!2593, !2594, !2595, !2600, !2604, !2608, !2609, !2610}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2591, file: !2389, line: 123, baseType: !1764, size: 64)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !2591, file: !2389, line: 124, baseType: !173, size: 128, offset: 64)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2591, file: !2389, line: 125, baseType: !2596, size: 64, offset: 192)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{!150, !171, !2599}
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !2591, file: !2389, line: 126, baseType: !2601, size: 64, offset: 256)
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = !DISubroutineType(types: !2603)
!2603 = !{!110, !2387, !1764}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2591, file: !2389, line: 127, baseType: !2605, size: 64, offset: 320)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{null, !2387}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !2591, file: !2389, line: 128, baseType: !1688, size: 64, offset: 384)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !2591, file: !2389, line: 129, baseType: !1688, size: 64, offset: 448)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !2591, file: !2389, line: 130, baseType: !2611, size: 704, offset: 512)
!2611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !2389, line: 108, size: 704, elements: !2612)
!2612 = !{!2613, !2614, !2618, !2619, !2620}
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2611, file: !2389, line: 109, baseType: !167, size: 512)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !2611, file: !2389, line: 110, baseType: !2615, size: 64, offset: 512)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!110, !2387}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !2611, file: !2389, line: 111, baseType: !2605, size: 64, offset: 576)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2611, file: !2389, line: 112, baseType: !150, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !2611, file: !2389, line: 113, baseType: !150, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !2388, file: !2389, line: 369, baseType: !2622, size: 64, offset: 4608)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !2389, line: 138, size: 256, elements: !2624)
!2624 = !{!2625, !2626, !2630, !2634}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !2623, file: !2389, line: 139, baseType: !2387, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2623, file: !2389, line: 140, baseType: !2627, size: 64, offset: 64)
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = !DISubroutineType(types: !2629)
!2629 = !{!110, !2387, !498}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2623, file: !2389, line: 141, baseType: !2631, size: 64, offset: 128)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = !DISubroutineType(types: !2633)
!2633 = !{null, !2387, !498}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2623, file: !2389, line: 142, baseType: !2605, size: 64, offset: 192)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2388, file: !2389, line: 370, baseType: !2636, size: 64, offset: 4672)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_driver", file: !2389, line: 162, size: 2816, elements: !2638)
!2638 = !{!2639, !2643, !2644, !2645, !2646, !2655, !2656}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2637, file: !2389, line: 163, baseType: !2640, size: 640)
!2640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 640, elements: !2641)
!2641 = !{!2642}
!2642 = !DISubrange(count: 80)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2637, file: !2389, line: 164, baseType: !2640, size: 640, offset: 640)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2637, file: !2389, line: 165, baseType: !1764, size: 64, offset: 1280)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2637, file: !2389, line: 166, baseType: !7, size: 32, offset: 1344)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2637, file: !2389, line: 167, baseType: !2647, size: 192, offset: 1408)
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_ops", file: !2389, line: 154, size: 192, elements: !2648)
!2648 = !{!2649, !2651, !2653}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !2647, file: !2389, line: 155, baseType: !2650, size: 64)
!2650 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_add", file: !2389, line: 150, baseType: !2615)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2647, file: !2389, line: 156, baseType: !2652, size: 64, offset: 64)
!2652 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_remove", file: !2389, line: 151, baseType: !2615)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2647, file: !2389, line: 157, baseType: !2654, size: 64, offset: 128)
!2654 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_notify", file: !2389, line: 152, baseType: !2631)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !2637, file: !2389, line: 168, baseType: !1738, size: 1152, offset: 1600)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2637, file: !2389, line: 169, baseType: !1743, size: 64, offset: 2752)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !2388, file: !2389, line: 371, baseType: !2658, size: 64, offset: 4736)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2660)
!2660 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !2389, line: 348, flags: DIFlagFwdDecl)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2388, file: !2389, line: 372, baseType: !109, size: 64, offset: 4800)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2388, file: !2389, line: 373, baseType: !164, size: 5568, offset: 4864)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !2388, file: !2389, line: 374, baseType: !7, size: 32, offset: 10432)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !2388, file: !2389, line: 375, baseType: !7, size: 32, offset: 10464)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !2388, file: !2389, line: 376, baseType: !173, size: 128, offset: 10496)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !2388, file: !2389, line: 377, baseType: !443, size: 192, offset: 10624)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2388, file: !2389, line: 378, baseType: !2605, size: 64, offset: 10816)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "act_trips", scope: !2383, file: !2384, line: 22, baseType: !2669, size: 960, offset: 64)
!2669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2670, size: 960, elements: !2675)
!2670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "active_trip", file: !2384, line: 14, size: 96, elements: !2671)
!2671 = !{!2672, !2673, !2674}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !2670, file: !2384, line: 15, baseType: !110, size: 32)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2670, file: !2384, line: 16, baseType: !110, size: 32, offset: 32)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2670, file: !2384, line: 17, baseType: !150, size: 8, offset: 64)
!2675 = !{!2676}
!2676 = !DISubrange(count: 10)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "aux_trips", scope: !2383, file: !2384, line: 23, baseType: !2105, size: 64, offset: 1024)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "aux_trip_nr", scope: !2383, file: !2384, line: 24, baseType: !110, size: 32, offset: 1088)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "psv_temp", scope: !2383, file: !2384, line: 25, baseType: !110, size: 32, offset: 1120)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "psv_trip_id", scope: !2383, file: !2384, line: 26, baseType: !110, size: 32, offset: 1152)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "crt_temp", scope: !2383, file: !2384, line: 27, baseType: !110, size: 32, offset: 1184)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "crt_trip_id", scope: !2383, file: !2384, line: 28, baseType: !110, size: 32, offset: 1216)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "hot_temp", scope: !2383, file: !2384, line: 29, baseType: !110, size: 32, offset: 1248)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "hot_trip_id", scope: !2383, file: !2384, line: 30, baseType: !110, size: 32, offset: 1280)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "zone", scope: !2383, file: !2384, line: 31, baseType: !2261, size: 64, offset: 1344)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "override_ops", scope: !2383, file: !2384, line: 32, baseType: !2288, size: 64, offset: 1408)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "priv_data", scope: !2383, file: !2384, line: 33, baseType: !109, size: 64, offset: 1472)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "lpat_table", scope: !2383, file: !2384, line: 34, baseType: !2689, size: 64, offset: 1536)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_lpat_conversion_table", file: !2691, line: 16, size: 128, elements: !2692)
!2691 = !DIFile(filename: "./include/acpi/acpi_lpat.h", directory: "/home/lizy2001/genbc/linux")
!2692 = !{!2693, !2699}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "lpat", scope: !2690, file: !2691, line: 17, baseType: !2694, size: 64)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_lpat", file: !2691, line: 11, size: 64, elements: !2696)
!2696 = !{!2697, !2698}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !2695, file: !2691, line: 12, baseType: !110, size: 32)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !2695, file: !2691, line: 13, baseType: !110, size: 32, offset: 32)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "lpat_count", scope: !2690, file: !2691, line: 18, baseType: !110, size: 32, offset: 64)
!2700 = !DILocalVariable(name: "int34x_zone", arg: 1, scope: !2379, file: !3, line: 172, type: !2382)
!2701 = !DILocation(line: 172, column: 60, scope: !2379)
!2702 = !DILocalVariable(name: "trip_cnt", scope: !2379, file: !3, line: 174, type: !110)
!2703 = !DILocation(line: 174, column: 6, scope: !2379)
!2704 = !DILocation(line: 174, column: 17, scope: !2379)
!2705 = !DILocation(line: 174, column: 30, scope: !2379)
!2706 = !DILocalVariable(name: "i", scope: !2379, file: !3, line: 175, type: !110)
!2707 = !DILocation(line: 175, column: 6, scope: !2379)
!2708 = !DILocation(line: 177, column: 2, scope: !2379)
!2709 = !DILocation(line: 177, column: 15, scope: !2379)
!2710 = !DILocation(line: 177, column: 27, scope: !2379)
!2711 = !DILocation(line: 178, column: 39, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2379, file: !3, line: 178, column: 6)
!2713 = !DILocation(line: 178, column: 52, scope: !2712)
!2714 = !DILocation(line: 178, column: 58, scope: !2712)
!2715 = !DILocation(line: 179, column: 12, scope: !2712)
!2716 = !DILocation(line: 179, column: 25, scope: !2712)
!2717 = !DILocation(line: 178, column: 7, scope: !2712)
!2718 = !DILocation(line: 178, column: 6, scope: !2379)
!2719 = !DILocation(line: 180, column: 38, scope: !2712)
!2720 = !DILocation(line: 180, column: 3, scope: !2712)
!2721 = !DILocation(line: 180, column: 16, scope: !2712)
!2722 = !DILocation(line: 180, column: 28, scope: !2712)
!2723 = !DILocation(line: 182, column: 2, scope: !2379)
!2724 = !DILocation(line: 182, column: 15, scope: !2379)
!2725 = !DILocation(line: 182, column: 27, scope: !2379)
!2726 = !DILocation(line: 183, column: 39, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2379, file: !3, line: 183, column: 6)
!2728 = !DILocation(line: 183, column: 52, scope: !2727)
!2729 = !DILocation(line: 183, column: 58, scope: !2727)
!2730 = !DILocation(line: 184, column: 12, scope: !2727)
!2731 = !DILocation(line: 184, column: 25, scope: !2727)
!2732 = !DILocation(line: 183, column: 7, scope: !2727)
!2733 = !DILocation(line: 183, column: 6, scope: !2379)
!2734 = !DILocation(line: 185, column: 38, scope: !2727)
!2735 = !DILocation(line: 185, column: 3, scope: !2727)
!2736 = !DILocation(line: 185, column: 16, scope: !2727)
!2737 = !DILocation(line: 185, column: 28, scope: !2727)
!2738 = !DILocation(line: 187, column: 2, scope: !2379)
!2739 = !DILocation(line: 187, column: 15, scope: !2379)
!2740 = !DILocation(line: 187, column: 27, scope: !2379)
!2741 = !DILocation(line: 188, column: 39, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2379, file: !3, line: 188, column: 6)
!2743 = !DILocation(line: 188, column: 52, scope: !2742)
!2744 = !DILocation(line: 188, column: 58, scope: !2742)
!2745 = !DILocation(line: 189, column: 12, scope: !2742)
!2746 = !DILocation(line: 189, column: 25, scope: !2742)
!2747 = !DILocation(line: 188, column: 7, scope: !2742)
!2748 = !DILocation(line: 188, column: 6, scope: !2379)
!2749 = !DILocation(line: 190, column: 38, scope: !2742)
!2750 = !DILocation(line: 190, column: 3, scope: !2742)
!2751 = !DILocation(line: 190, column: 16, scope: !2742)
!2752 = !DILocation(line: 190, column: 28, scope: !2742)
!2753 = !DILocation(line: 192, column: 9, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2379, file: !3, line: 192, column: 2)
!2755 = !DILocation(line: 192, column: 7, scope: !2754)
!2756 = !DILocation(line: 192, column: 14, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2754, file: !3, line: 192, column: 2)
!2758 = !DILocation(line: 192, column: 16, scope: !2757)
!2759 = !DILocation(line: 192, column: 2, scope: !2754)
!2760 = !DILocalVariable(name: "name", scope: !2761, file: !3, line: 193, type: !2762)
!2761 = distinct !DILexicalBlock(scope: !2757, file: !3, line: 192, column: 59)
!2762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 40, elements: !2527)
!2763 = !DILocation(line: 193, column: 8, scope: !2761)
!2764 = !DILocation(line: 193, column: 18, scope: !2761)
!2765 = !DILocation(line: 193, column: 41, scope: !2761)
!2766 = !DILocation(line: 193, column: 39, scope: !2761)
!2767 = !DILocation(line: 193, column: 35, scope: !2761)
!2768 = !DILocation(line: 195, column: 39, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2761, file: !3, line: 195, column: 7)
!2770 = !DILocation(line: 195, column: 52, scope: !2769)
!2771 = !DILocation(line: 195, column: 58, scope: !2769)
!2772 = !DILocation(line: 196, column: 6, scope: !2769)
!2773 = !DILocation(line: 197, column: 7, scope: !2769)
!2774 = !DILocation(line: 197, column: 20, scope: !2769)
!2775 = !DILocation(line: 197, column: 30, scope: !2769)
!2776 = !DILocation(line: 197, column: 33, scope: !2769)
!2777 = !DILocation(line: 195, column: 7, scope: !2769)
!2778 = !DILocation(line: 195, column: 7, scope: !2761)
!2779 = !DILocation(line: 198, column: 4, scope: !2769)
!2780 = !DILocation(line: 200, column: 42, scope: !2761)
!2781 = !DILocation(line: 200, column: 3, scope: !2761)
!2782 = !DILocation(line: 200, column: 16, scope: !2761)
!2783 = !DILocation(line: 200, column: 26, scope: !2761)
!2784 = !DILocation(line: 200, column: 29, scope: !2761)
!2785 = !DILocation(line: 200, column: 32, scope: !2761)
!2786 = !DILocation(line: 201, column: 3, scope: !2761)
!2787 = !DILocation(line: 201, column: 16, scope: !2761)
!2788 = !DILocation(line: 201, column: 26, scope: !2761)
!2789 = !DILocation(line: 201, column: 29, scope: !2761)
!2790 = !DILocation(line: 201, column: 35, scope: !2761)
!2791 = !DILocation(line: 202, column: 2, scope: !2761)
!2792 = !DILocation(line: 192, column: 55, scope: !2757)
!2793 = !DILocation(line: 192, column: 2, scope: !2757)
!2794 = distinct !{!2794, !2759, !2795}
!2795 = !DILocation(line: 202, column: 2, scope: !2754)
!2796 = !DILocation(line: 204, column: 9, scope: !2379)
!2797 = !DILocation(line: 204, column: 2, scope: !2379)
!2798 = distinct !DISubprogram(name: "int340x_thermal_get_trip_config", scope: !3, file: !3, line: 157, type: !2799, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !200)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!110, !2393, !227, !815}
!2801 = !DILocalVariable(name: "handle", arg: 1, scope: !2798, file: !3, line: 157, type: !2393)
!2802 = !DILocation(line: 157, column: 56, scope: !2798)
!2803 = !DILocalVariable(name: "name", arg: 2, scope: !2798, file: !3, line: 157, type: !227)
!2804 = !DILocation(line: 157, column: 70, scope: !2798)
!2805 = !DILocalVariable(name: "temp", arg: 3, scope: !2798, file: !3, line: 158, type: !815)
!2806 = !DILocation(line: 158, column: 16, scope: !2798)
!2807 = !DILocalVariable(name: "r", scope: !2798, file: !3, line: 160, type: !348)
!2808 = !DILocation(line: 160, column: 21, scope: !2798)
!2809 = !DILocalVariable(name: "status", scope: !2798, file: !3, line: 161, type: !2810)
!2810 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !2394, line: 421, baseType: !498)
!2811 = !DILocation(line: 161, column: 14, scope: !2798)
!2812 = !DILocation(line: 163, column: 33, scope: !2798)
!2813 = !DILocation(line: 163, column: 41, scope: !2798)
!2814 = !DILocation(line: 163, column: 11, scope: !2798)
!2815 = !DILocation(line: 163, column: 9, scope: !2798)
!2816 = !DILocation(line: 164, column: 6, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2798, file: !3, line: 164, column: 6)
!2818 = !DILocation(line: 164, column: 6, scope: !2798)
!2819 = !DILocation(line: 165, column: 3, scope: !2817)
!2820 = !DILocation(line: 167, column: 38, scope: !2798)
!2821 = !DILocation(line: 167, column: 10, scope: !2798)
!2822 = !DILocation(line: 167, column: 3, scope: !2798)
!2823 = !DILocation(line: 167, column: 8, scope: !2798)
!2824 = !DILocation(line: 169, column: 2, scope: !2798)
!2825 = !DILocation(line: 170, column: 1, scope: !2798)
!2826 = distinct !DISubprogram(name: "int340x_thermal_zone_add", scope: !3, file: !3, line: 213, type: !2827, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !200)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{!2382, !2387, !2288}
!2829 = !DILocalVariable(name: "adev", arg: 1, scope: !2826, file: !3, line: 213, type: !2387)
!2830 = !DILocation(line: 213, column: 74, scope: !2826)
!2831 = !DILocalVariable(name: "override_ops", arg: 2, scope: !2826, file: !3, line: 214, type: !2288)
!2832 = !DILocation(line: 214, column: 37, scope: !2826)
!2833 = !DILocalVariable(name: "int34x_thermal_zone", scope: !2826, file: !3, line: 216, type: !2382)
!2834 = !DILocation(line: 216, column: 30, scope: !2826)
!2835 = !DILocalVariable(name: "status", scope: !2826, file: !3, line: 217, type: !2810)
!2836 = !DILocation(line: 217, column: 14, scope: !2826)
!2837 = !DILocalVariable(name: "trip_cnt", scope: !2826, file: !3, line: 218, type: !348)
!2838 = !DILocation(line: 218, column: 21, scope: !2826)
!2839 = !DILocalVariable(name: "trip_mask", scope: !2826, file: !3, line: 219, type: !110)
!2840 = !DILocation(line: 219, column: 6, scope: !2826)
!2841 = !DILocalVariable(name: "ret", scope: !2826, file: !3, line: 220, type: !110)
!2842 = !DILocation(line: 220, column: 6, scope: !2826)
!2843 = !DILocation(line: 222, column: 24, scope: !2826)
!2844 = !DILocation(line: 222, column: 22, scope: !2826)
!2845 = !DILocation(line: 224, column: 7, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2826, file: !3, line: 224, column: 6)
!2847 = !DILocation(line: 224, column: 6, scope: !2826)
!2848 = !DILocation(line: 225, column: 10, scope: !2846)
!2849 = !DILocation(line: 225, column: 3, scope: !2846)
!2850 = !DILocation(line: 227, column: 30, scope: !2826)
!2851 = !DILocation(line: 227, column: 2, scope: !2826)
!2852 = !DILocation(line: 227, column: 23, scope: !2826)
!2853 = !DILocation(line: 227, column: 28, scope: !2826)
!2854 = !DILocation(line: 228, column: 38, scope: !2826)
!2855 = !DILocation(line: 228, column: 2, scope: !2826)
!2856 = !DILocation(line: 228, column: 23, scope: !2826)
!2857 = !DILocation(line: 228, column: 36, scope: !2826)
!2858 = !DILocation(line: 230, column: 33, scope: !2826)
!2859 = !DILocation(line: 230, column: 39, scope: !2826)
!2860 = !DILocation(line: 230, column: 11, scope: !2826)
!2861 = !DILocation(line: 230, column: 9, scope: !2826)
!2862 = !DILocation(line: 231, column: 6, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2826, file: !3, line: 231, column: 6)
!2864 = !DILocation(line: 231, column: 6, scope: !2826)
!2865 = !DILocation(line: 232, column: 12, scope: !2863)
!2866 = !DILocation(line: 232, column: 3, scope: !2863)
!2867 = !DILocation(line: 235, column: 12, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2863, file: !3, line: 233, column: 7)
!2869 = !DILocation(line: 235, column: 4, scope: !2868)
!2870 = !DILocation(line: 234, column: 3, scope: !2868)
!2871 = !DILocation(line: 234, column: 24, scope: !2868)
!2872 = !DILocation(line: 234, column: 34, scope: !2868)
!2873 = !DILocation(line: 238, column: 8, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2868, file: !3, line: 238, column: 7)
!2875 = !DILocation(line: 238, column: 29, scope: !2874)
!2876 = !DILocation(line: 238, column: 7, scope: !2868)
!2877 = !DILocation(line: 239, column: 8, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2874, file: !3, line: 238, column: 40)
!2879 = !DILocation(line: 240, column: 4, scope: !2878)
!2880 = !DILocation(line: 242, column: 15, scope: !2868)
!2881 = !DILocation(line: 242, column: 29, scope: !2868)
!2882 = !DILocation(line: 242, column: 13, scope: !2868)
!2883 = !DILocation(line: 243, column: 38, scope: !2868)
!2884 = !DILocation(line: 243, column: 3, scope: !2868)
!2885 = !DILocation(line: 243, column: 24, scope: !2868)
!2886 = !DILocation(line: 243, column: 36, scope: !2868)
!2887 = !DILocation(line: 246, column: 40, scope: !2826)
!2888 = !DILocation(line: 246, column: 13, scope: !2826)
!2889 = !DILocation(line: 246, column: 11, scope: !2826)
!2890 = !DILocation(line: 249, column: 9, scope: !2826)
!2891 = !DILocation(line: 249, column: 15, scope: !2826)
!2892 = !DILocation(line: 248, column: 36, scope: !2826)
!2893 = !DILocation(line: 248, column: 2, scope: !2826)
!2894 = !DILocation(line: 248, column: 23, scope: !2826)
!2895 = !DILocation(line: 248, column: 34, scope: !2826)
!2896 = !DILocation(line: 252, column: 7, scope: !2826)
!2897 = !DILocation(line: 253, column: 7, scope: !2826)
!2898 = !DILocation(line: 254, column: 7, scope: !2826)
!2899 = !DILocation(line: 254, column: 18, scope: !2826)
!2900 = !DILocation(line: 251, column: 30, scope: !2826)
!2901 = !DILocation(line: 251, column: 2, scope: !2826)
!2902 = !DILocation(line: 251, column: 23, scope: !2826)
!2903 = !DILocation(line: 251, column: 28, scope: !2826)
!2904 = !DILocation(line: 258, column: 13, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2826, file: !3, line: 258, column: 6)
!2906 = !DILocation(line: 258, column: 34, scope: !2905)
!2907 = !DILocation(line: 258, column: 6, scope: !2905)
!2908 = !DILocation(line: 258, column: 6, scope: !2826)
!2909 = !DILocation(line: 259, column: 17, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2905, file: !3, line: 258, column: 41)
!2911 = !DILocation(line: 259, column: 38, scope: !2910)
!2912 = !DILocation(line: 259, column: 9, scope: !2910)
!2913 = !DILocation(line: 259, column: 7, scope: !2910)
!2914 = !DILocation(line: 260, column: 3, scope: !2910)
!2915 = !DILocation(line: 262, column: 35, scope: !2826)
!2916 = !DILocation(line: 262, column: 56, scope: !2826)
!2917 = !DILocation(line: 262, column: 8, scope: !2826)
!2918 = !DILocation(line: 262, column: 6, scope: !2826)
!2919 = !DILocation(line: 263, column: 6, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2826, file: !3, line: 263, column: 6)
!2921 = !DILocation(line: 263, column: 6, scope: !2826)
!2922 = !DILocation(line: 264, column: 3, scope: !2920)
!2923 = !DILocation(line: 266, column: 9, scope: !2826)
!2924 = !DILocation(line: 266, column: 2, scope: !2826)
!2925 = !DILabel(scope: !2826, name: "err_enable", file: !3, line: 268)
!2926 = !DILocation(line: 268, column: 1, scope: !2826)
!2927 = !DILocation(line: 269, column: 33, scope: !2826)
!2928 = !DILocation(line: 269, column: 54, scope: !2826)
!2929 = !DILocation(line: 269, column: 2, scope: !2826)
!2930 = !DILabel(scope: !2826, name: "err_thermal_zone", file: !3, line: 270)
!2931 = !DILocation(line: 270, column: 1, scope: !2826)
!2932 = !DILocation(line: 271, column: 34, scope: !2826)
!2933 = !DILocation(line: 271, column: 55, scope: !2826)
!2934 = !DILocation(line: 271, column: 2, scope: !2826)
!2935 = !DILocation(line: 272, column: 8, scope: !2826)
!2936 = !DILocation(line: 272, column: 29, scope: !2826)
!2937 = !DILocation(line: 272, column: 2, scope: !2826)
!2938 = !DILabel(scope: !2826, name: "err_trip_alloc", file: !3, line: 273)
!2939 = !DILocation(line: 273, column: 1, scope: !2826)
!2940 = !DILocation(line: 274, column: 8, scope: !2826)
!2941 = !DILocation(line: 274, column: 2, scope: !2826)
!2942 = !DILocation(line: 275, column: 17, scope: !2826)
!2943 = !DILocation(line: 275, column: 9, scope: !2826)
!2944 = !DILocation(line: 275, column: 2, scope: !2826)
!2945 = !DILocation(line: 276, column: 1, scope: !2826)
!2946 = distinct !DISubprogram(name: "kzalloc", scope: !100, file: !100, line: 662, type: !2947, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !200)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{!109, !273, !107}
!2949 = !DILocalVariable(name: "s", arg: 1, scope: !2950, file: !100, line: 445, type: !1118)
!2950 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !100, file: !100, line: 445, type: !2951, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !200)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{!109, !1118, !107, !273}
!2953 = !DILocation(line: 445, column: 72, scope: !2950, inlinedAt: !2954)
!2954 = distinct !DILocation(line: 552, column: 10, scope: !2955, inlinedAt: !2958)
!2955 = distinct !DILexicalBlock(scope: !2956, file: !100, line: 540, column: 34)
!2956 = distinct !DILexicalBlock(scope: !2957, file: !100, line: 540, column: 6)
!2957 = distinct !DISubprogram(name: "kmalloc", scope: !100, file: !100, line: 538, type: !2947, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !200)
!2958 = distinct !DILocation(line: 664, column: 9, scope: !2946)
!2959 = !DILocalVariable(name: "flags", arg: 2, scope: !2950, file: !100, line: 446, type: !107)
!2960 = !DILocation(line: 446, column: 9, scope: !2950, inlinedAt: !2954)
!2961 = !DILocalVariable(name: "size", arg: 3, scope: !2950, file: !100, line: 446, type: !273)
!2962 = !DILocation(line: 446, column: 23, scope: !2950, inlinedAt: !2954)
!2963 = !DILocalVariable(name: "ret", scope: !2950, file: !100, line: 448, type: !109)
!2964 = !DILocation(line: 448, column: 8, scope: !2950, inlinedAt: !2954)
!2965 = !DILocalVariable(name: "flags", arg: 1, scope: !2966, file: !100, line: 318, type: !107)
!2966 = distinct !DISubprogram(name: "kmalloc_type", scope: !100, file: !100, line: 318, type: !2967, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !200)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!99, !107}
!2969 = !DILocation(line: 318, column: 67, scope: !2966, inlinedAt: !2970)
!2970 = distinct !DILocation(line: 553, column: 20, scope: !2955, inlinedAt: !2958)
!2971 = !DILocalVariable(name: "size", arg: 1, scope: !2972, file: !100, line: 346, type: !273)
!2972 = distinct !DISubprogram(name: "kmalloc_index", scope: !100, file: !100, line: 346, type: !2973, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !200)
!2973 = !DISubroutineType(types: !2974)
!2974 = !{!7, !273}
!2975 = !DILocation(line: 346, column: 58, scope: !2972, inlinedAt: !2976)
!2976 = distinct !DILocation(line: 547, column: 11, scope: !2955, inlinedAt: !2958)
!2977 = !DILocalVariable(name: "size", arg: 1, scope: !2978, file: !100, line: 472, type: !273)
!2978 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !100, file: !100, line: 472, type: !2979, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !200)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{!109, !273, !107, !7}
!2981 = !DILocation(line: 472, column: 28, scope: !2978, inlinedAt: !2982)
!2982 = distinct !DILocation(line: 481, column: 9, scope: !2983, inlinedAt: !2984)
!2983 = distinct !DISubprogram(name: "kmalloc_large", scope: !100, file: !100, line: 478, type: !2947, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !200)
!2984 = distinct !DILocation(line: 545, column: 11, scope: !2985, inlinedAt: !2958)
!2985 = distinct !DILexicalBlock(scope: !2955, file: !100, line: 544, column: 7)
!2986 = !DILocalVariable(name: "flags", arg: 2, scope: !2978, file: !100, line: 472, type: !107)
!2987 = !DILocation(line: 472, column: 40, scope: !2978, inlinedAt: !2982)
!2988 = !DILocalVariable(name: "order", arg: 3, scope: !2978, file: !100, line: 472, type: !7)
!2989 = !DILocation(line: 472, column: 60, scope: !2978, inlinedAt: !2982)
!2990 = !DILocalVariable(name: "size", arg: 1, scope: !2983, file: !100, line: 478, type: !273)
!2991 = !DILocation(line: 478, column: 51, scope: !2983, inlinedAt: !2984)
!2992 = !DILocalVariable(name: "flags", arg: 2, scope: !2983, file: !100, line: 478, type: !107)
!2993 = !DILocation(line: 478, column: 63, scope: !2983, inlinedAt: !2984)
!2994 = !DILocalVariable(name: "order", scope: !2983, file: !100, line: 480, type: !7)
!2995 = !DILocation(line: 480, column: 15, scope: !2983, inlinedAt: !2984)
!2996 = !DILocalVariable(name: "size", arg: 1, scope: !2957, file: !100, line: 538, type: !273)
!2997 = !DILocation(line: 538, column: 45, scope: !2957, inlinedAt: !2958)
!2998 = !DILocalVariable(name: "flags", arg: 2, scope: !2957, file: !100, line: 538, type: !107)
!2999 = !DILocation(line: 538, column: 57, scope: !2957, inlinedAt: !2958)
!3000 = !DILocalVariable(name: "index", scope: !2955, file: !100, line: 542, type: !7)
!3001 = !DILocation(line: 542, column: 16, scope: !2955, inlinedAt: !2958)
!3002 = !DILocalVariable(name: "size", arg: 1, scope: !2946, file: !100, line: 662, type: !273)
!3003 = !DILocation(line: 662, column: 36, scope: !2946)
!3004 = !DILocalVariable(name: "flags", arg: 2, scope: !2946, file: !100, line: 662, type: !107)
!3005 = !DILocation(line: 662, column: 48, scope: !2946)
!3006 = !DILocation(line: 664, column: 17, scope: !2946)
!3007 = !DILocation(line: 664, column: 23, scope: !2946)
!3008 = !DILocation(line: 664, column: 29, scope: !2946)
!3009 = !DILocation(line: 540, column: 27, scope: !2956, inlinedAt: !2958)
!3010 = !DILocation(line: 540, column: 6, scope: !2956, inlinedAt: !2958)
!3011 = !DILocation(line: 540, column: 6, scope: !2957, inlinedAt: !2958)
!3012 = !DILocation(line: 544, column: 7, scope: !2985, inlinedAt: !2958)
!3013 = !DILocation(line: 544, column: 12, scope: !2985, inlinedAt: !2958)
!3014 = !DILocation(line: 544, column: 7, scope: !2955, inlinedAt: !2958)
!3015 = !DILocation(line: 545, column: 25, scope: !2985, inlinedAt: !2958)
!3016 = !DILocation(line: 545, column: 31, scope: !2985, inlinedAt: !2958)
!3017 = !DILocation(line: 480, column: 33, scope: !2983, inlinedAt: !2984)
!3018 = !DILocation(line: 480, column: 23, scope: !2983, inlinedAt: !2984)
!3019 = !DILocation(line: 481, column: 29, scope: !2983, inlinedAt: !2984)
!3020 = !DILocation(line: 481, column: 35, scope: !2983, inlinedAt: !2984)
!3021 = !DILocation(line: 481, column: 42, scope: !2983, inlinedAt: !2984)
!3022 = !DILocation(line: 474, column: 23, scope: !2978, inlinedAt: !2982)
!3023 = !DILocation(line: 474, column: 29, scope: !2978, inlinedAt: !2982)
!3024 = !DILocation(line: 474, column: 36, scope: !2978, inlinedAt: !2982)
!3025 = !DILocation(line: 474, column: 9, scope: !2978, inlinedAt: !2982)
!3026 = !DILocation(line: 545, column: 4, scope: !2985, inlinedAt: !2958)
!3027 = !DILocation(line: 547, column: 25, scope: !2955, inlinedAt: !2958)
!3028 = !DILocation(line: 348, column: 7, scope: !3029, inlinedAt: !2976)
!3029 = distinct !DILexicalBlock(scope: !2972, file: !100, line: 348, column: 6)
!3030 = !DILocation(line: 348, column: 6, scope: !2972, inlinedAt: !2976)
!3031 = !DILocation(line: 349, column: 3, scope: !3029, inlinedAt: !2976)
!3032 = !DILocation(line: 351, column: 6, scope: !3033, inlinedAt: !2976)
!3033 = distinct !DILexicalBlock(scope: !2972, file: !100, line: 351, column: 6)
!3034 = !DILocation(line: 351, column: 11, scope: !3033, inlinedAt: !2976)
!3035 = !DILocation(line: 351, column: 6, scope: !2972, inlinedAt: !2976)
!3036 = !DILocation(line: 352, column: 3, scope: !3033, inlinedAt: !2976)
!3037 = !DILocation(line: 354, column: 32, scope: !3038, inlinedAt: !2976)
!3038 = distinct !DILexicalBlock(scope: !2972, file: !100, line: 354, column: 6)
!3039 = !DILocation(line: 354, column: 37, scope: !3038, inlinedAt: !2976)
!3040 = !DILocation(line: 354, column: 42, scope: !3038, inlinedAt: !2976)
!3041 = !DILocation(line: 354, column: 45, scope: !3038, inlinedAt: !2976)
!3042 = !DILocation(line: 354, column: 50, scope: !3038, inlinedAt: !2976)
!3043 = !DILocation(line: 354, column: 6, scope: !2972, inlinedAt: !2976)
!3044 = !DILocation(line: 355, column: 3, scope: !3038, inlinedAt: !2976)
!3045 = !DILocation(line: 356, column: 32, scope: !3046, inlinedAt: !2976)
!3046 = distinct !DILexicalBlock(scope: !2972, file: !100, line: 356, column: 6)
!3047 = !DILocation(line: 356, column: 37, scope: !3046, inlinedAt: !2976)
!3048 = !DILocation(line: 356, column: 43, scope: !3046, inlinedAt: !2976)
!3049 = !DILocation(line: 356, column: 46, scope: !3046, inlinedAt: !2976)
!3050 = !DILocation(line: 356, column: 51, scope: !3046, inlinedAt: !2976)
!3051 = !DILocation(line: 356, column: 6, scope: !2972, inlinedAt: !2976)
!3052 = !DILocation(line: 357, column: 3, scope: !3046, inlinedAt: !2976)
!3053 = !DILocation(line: 358, column: 6, scope: !3054, inlinedAt: !2976)
!3054 = distinct !DILexicalBlock(scope: !2972, file: !100, line: 358, column: 6)
!3055 = !DILocation(line: 358, column: 11, scope: !3054, inlinedAt: !2976)
!3056 = !DILocation(line: 358, column: 6, scope: !2972, inlinedAt: !2976)
!3057 = !DILocation(line: 358, column: 26, scope: !3054, inlinedAt: !2976)
!3058 = !DILocation(line: 359, column: 6, scope: !3059, inlinedAt: !2976)
!3059 = distinct !DILexicalBlock(scope: !2972, file: !100, line: 359, column: 6)
!3060 = !DILocation(line: 359, column: 11, scope: !3059, inlinedAt: !2976)
!3061 = !DILocation(line: 359, column: 6, scope: !2972, inlinedAt: !2976)
!3062 = !DILocation(line: 359, column: 26, scope: !3059, inlinedAt: !2976)
!3063 = !DILocation(line: 360, column: 6, scope: !3064, inlinedAt: !2976)
!3064 = distinct !DILexicalBlock(scope: !2972, file: !100, line: 360, column: 6)
!3065 = !DILocation(line: 360, column: 11, scope: !3064, inlinedAt: !2976)
!3066 = !DILocation(line: 360, column: 6, scope: !2972, inlinedAt: !2976)
!3067 = !DILocation(line: 360, column: 26, scope: !3064, inlinedAt: !2976)
!3068 = !DILocation(line: 361, column: 6, scope: !3069, inlinedAt: !2976)
!3069 = distinct !DILexicalBlock(scope: !2972, file: !100, line: 361, column: 6)
!3070 = !DILocation(line: 361, column: 11, scope: !3069, inlinedAt: !2976)
!3071 = !DILocation(line: 361, column: 6, scope: !2972, inlinedAt: !2976)
!3072 = !DILocation(line: 361, column: 26, scope: !3069, inlinedAt: !2976)
!3073 = !DILocation(line: 362, column: 6, scope: !3074, inlinedAt: !2976)
!3074 = distinct !DILexicalBlock(scope: !2972, file: !100, line: 362, column: 6)
!3075 = !DILocation(line: 362, column: 11, scope: !3074, inlinedAt: !2976)
!3076 = !DILocation(line: 362, column: 6, scope: !2972, inlinedAt: !2976)
!3077 = !DILocation(line: 362, column: 26, scope: !3074, inlinedAt: !2976)
!3078 = !DILocation(line: 363, column: 6, scope: !3079, inlinedAt: !2976)
!3079 = distinct !DILexicalBlock(scope: !2972, file: !100, line: 363, column: 6)
!3080 = !DILocation(line: 363, column: 11, scope: !3079, inlinedAt: !2976)
!3081 = !DILocation(line: 363, column: 6, scope: !2972, inlinedAt: !2976)
!3082 = !DILocation(line: 363, column: 26, scope: !3079, inlinedAt: !2976)
!3083 = !DILocation(line: 364, column: 6, scope: !3084, inlinedAt: !2976)
!3084 = distinct !DILexicalBlock(scope: !2972, file: !100, line: 364, column: 6)
!3085 = !DILocation(line: 364, column: 11, scope: !3084, inlinedAt: !2976)
!3086 = !DILocation(line: 364, column: 6, scope: !2972, inlinedAt: !2976)
!3087 = !DILocation(line: 364, column: 26, scope: !3084, inlinedAt: !2976)
!3088 = !DILocation(line: 365, column: 6, scope: !3089, inlinedAt: !2976)
!3089 = distinct !DILexicalBlock(scope: !2972, file: !100, line: 365, column: 6)
!3090 = !DILocation(line: 365, column: 11, scope: !3089, inlinedAt: !2976)
!3091 = !DILocation(line: 365, column: 6, scope: !2972, inlinedAt: !2976)
!3092 = !DILocation(line: 365, column: 26, scope: !3089, inlinedAt: !2976)
!3093 = !DILocation(line: 366, column: 6, scope: !3094, inlinedAt: !2976)
!3094 = distinct !DILexicalBlock(scope: !2972, file: !100, line: 366, column: 6)
!3095 = !DILocation(line: 366, column: 11, scope: !3094, inlinedAt: !2976)
!3096 = !DILocation(line: 366, column: 6, scope: !2972, inlinedAt: !2976)
!3097 = !DILocation(line: 366, column: 26, scope: !3094, inlinedAt: !2976)
!3098 = !DILocation(line: 367, column: 6, scope: !3099, inlinedAt: !2976)
!3099 = distinct !DILexicalBlock(scope: !2972, file: !100, line: 367, column: 6)
!3100 = !DILocation(line: 367, column: 11, scope: !3099, inlinedAt: !2976)
!3101 = !DILocation(line: 367, column: 6, scope: !2972, inlinedAt: !2976)
!3102 = !DILocation(line: 367, column: 26, scope: !3099, inlinedAt: !2976)
!3103 = !DILocation(line: 368, column: 6, scope: !3104, inlinedAt: !2976)
!3104 = distinct !DILexicalBlock(scope: !2972, file: !100, line: 368, column: 6)
!3105 = !DILocation(line: 368, column: 11, scope: !3104, inlinedAt: !2976)
!3106 = !DILocation(line: 368, column: 6, scope: !2972, inlinedAt: !2976)
!3107 = !DILocation(line: 368, column: 26, scope: !3104, inlinedAt: !2976)
!3108 = !DILocation(line: 369, column: 6, scope: !3109, inlinedAt: !2976)
!3109 = distinct !DILexicalBlock(scope: !2972, file: !100, line: 369, column: 6)
!3110 = !DILocation(line: 369, column: 11, scope: !3109, inlinedAt: !2976)
!3111 = !DILocation(line: 369, column: 6, scope: !2972, inlinedAt: !2976)
!3112 = !DILocation(line: 369, column: 26, scope: !3109, inlinedAt: !2976)
!3113 = !DILocation(line: 370, column: 6, scope: !3114, inlinedAt: !2976)
!3114 = distinct !DILexicalBlock(scope: !2972, file: !100, line: 370, column: 6)
!3115 = !DILocation(line: 370, column: 11, scope: !3114, inlinedAt: !2976)
!3116 = !DILocation(line: 370, column: 6, scope: !2972, inlinedAt: !2976)
!3117 = !DILocation(line: 370, column: 26, scope: !3114, inlinedAt: !2976)
!3118 = !DILocation(line: 371, column: 6, scope: !3119, inlinedAt: !2976)
!3119 = distinct !DILexicalBlock(scope: !2972, file: !100, line: 371, column: 6)
!3120 = !DILocation(line: 371, column: 11, scope: !3119, inlinedAt: !2976)
!3121 = !DILocation(line: 371, column: 6, scope: !2972, inlinedAt: !2976)
!3122 = !DILocation(line: 371, column: 26, scope: !3119, inlinedAt: !2976)
!3123 = !DILocation(line: 372, column: 6, scope: !3124, inlinedAt: !2976)
!3124 = distinct !DILexicalBlock(scope: !2972, file: !100, line: 372, column: 6)
!3125 = !DILocation(line: 372, column: 11, scope: !3124, inlinedAt: !2976)
!3126 = !DILocation(line: 372, column: 6, scope: !2972, inlinedAt: !2976)
!3127 = !DILocation(line: 372, column: 26, scope: !3124, inlinedAt: !2976)
!3128 = !DILocation(line: 373, column: 6, scope: !3129, inlinedAt: !2976)
!3129 = distinct !DILexicalBlock(scope: !2972, file: !100, line: 373, column: 6)
!3130 = !DILocation(line: 373, column: 11, scope: !3129, inlinedAt: !2976)
!3131 = !DILocation(line: 373, column: 6, scope: !2972, inlinedAt: !2976)
!3132 = !DILocation(line: 373, column: 26, scope: !3129, inlinedAt: !2976)
!3133 = !DILocation(line: 374, column: 6, scope: !3134, inlinedAt: !2976)
!3134 = distinct !DILexicalBlock(scope: !2972, file: !100, line: 374, column: 6)
!3135 = !DILocation(line: 374, column: 11, scope: !3134, inlinedAt: !2976)
!3136 = !DILocation(line: 374, column: 6, scope: !2972, inlinedAt: !2976)
!3137 = !DILocation(line: 374, column: 26, scope: !3134, inlinedAt: !2976)
!3138 = !DILocation(line: 375, column: 6, scope: !3139, inlinedAt: !2976)
!3139 = distinct !DILexicalBlock(scope: !2972, file: !100, line: 375, column: 6)
!3140 = !DILocation(line: 375, column: 11, scope: !3139, inlinedAt: !2976)
!3141 = !DILocation(line: 375, column: 6, scope: !2972, inlinedAt: !2976)
!3142 = !DILocation(line: 375, column: 27, scope: !3139, inlinedAt: !2976)
!3143 = !DILocation(line: 376, column: 6, scope: !3144, inlinedAt: !2976)
!3144 = distinct !DILexicalBlock(scope: !2972, file: !100, line: 376, column: 6)
!3145 = !DILocation(line: 376, column: 11, scope: !3144, inlinedAt: !2976)
!3146 = !DILocation(line: 376, column: 6, scope: !2972, inlinedAt: !2976)
!3147 = !DILocation(line: 376, column: 32, scope: !3144, inlinedAt: !2976)
!3148 = !DILocation(line: 377, column: 6, scope: !3149, inlinedAt: !2976)
!3149 = distinct !DILexicalBlock(scope: !2972, file: !100, line: 377, column: 6)
!3150 = !DILocation(line: 377, column: 11, scope: !3149, inlinedAt: !2976)
!3151 = !DILocation(line: 377, column: 6, scope: !2972, inlinedAt: !2976)
!3152 = !DILocation(line: 377, column: 32, scope: !3149, inlinedAt: !2976)
!3153 = !DILocation(line: 378, column: 6, scope: !3154, inlinedAt: !2976)
!3154 = distinct !DILexicalBlock(scope: !2972, file: !100, line: 378, column: 6)
!3155 = !DILocation(line: 378, column: 11, scope: !3154, inlinedAt: !2976)
!3156 = !DILocation(line: 378, column: 6, scope: !2972, inlinedAt: !2976)
!3157 = !DILocation(line: 378, column: 32, scope: !3154, inlinedAt: !2976)
!3158 = !DILocation(line: 379, column: 6, scope: !3159, inlinedAt: !2976)
!3159 = distinct !DILexicalBlock(scope: !2972, file: !100, line: 379, column: 6)
!3160 = !DILocation(line: 379, column: 11, scope: !3159, inlinedAt: !2976)
!3161 = !DILocation(line: 379, column: 6, scope: !2972, inlinedAt: !2976)
!3162 = !DILocation(line: 379, column: 33, scope: !3159, inlinedAt: !2976)
!3163 = !DILocation(line: 380, column: 6, scope: !3164, inlinedAt: !2976)
!3164 = distinct !DILexicalBlock(scope: !2972, file: !100, line: 380, column: 6)
!3165 = !DILocation(line: 380, column: 11, scope: !3164, inlinedAt: !2976)
!3166 = !DILocation(line: 380, column: 6, scope: !2972, inlinedAt: !2976)
!3167 = !DILocation(line: 380, column: 33, scope: !3164, inlinedAt: !2976)
!3168 = !DILocation(line: 381, column: 6, scope: !3169, inlinedAt: !2976)
!3169 = distinct !DILexicalBlock(scope: !2972, file: !100, line: 381, column: 6)
!3170 = !DILocation(line: 381, column: 11, scope: !3169, inlinedAt: !2976)
!3171 = !DILocation(line: 381, column: 6, scope: !2972, inlinedAt: !2976)
!3172 = !DILocation(line: 381, column: 33, scope: !3169, inlinedAt: !2976)
!3173 = !DILocation(line: 382, column: 2, scope: !3174, inlinedAt: !2976)
!3174 = distinct !DILexicalBlock(scope: !3175, file: !100, line: 382, column: 2)
!3175 = distinct !DILexicalBlock(scope: !2972, file: !100, line: 382, column: 2)
!3176 = !{i32 -2144049422, i32 -2144049393, i32 -2144049347, i32 -2144049289, i32 -2144049235, i32 -2144049181, i32 -2144049126, i32 -2144049095}
!3177 = !DILocation(line: 382, column: 2, scope: !3178, inlinedAt: !2976)
!3178 = distinct !DILexicalBlock(scope: !3179, file: !100, line: 382, column: 2)
!3179 = distinct !DILexicalBlock(scope: !3175, file: !100, line: 382, column: 2)
!3180 = !{i32 -2144048652, i32 -2144048645, i32 -2144048591, i32 -2144048560, i32 -2144048530}
!3181 = !DILocation(line: 382, column: 2, scope: !3179, inlinedAt: !2976)
!3182 = !DILocation(line: 386, column: 1, scope: !2972, inlinedAt: !2976)
!3183 = !DILocation(line: 547, column: 9, scope: !2955, inlinedAt: !2958)
!3184 = !DILocation(line: 549, column: 8, scope: !3185, inlinedAt: !2958)
!3185 = distinct !DILexicalBlock(scope: !2955, file: !100, line: 549, column: 7)
!3186 = !DILocation(line: 549, column: 7, scope: !2955, inlinedAt: !2958)
!3187 = !DILocation(line: 550, column: 4, scope: !3185, inlinedAt: !2958)
!3188 = !DILocation(line: 553, column: 33, scope: !2955, inlinedAt: !2958)
!3189 = !DILocation(line: 325, column: 6, scope: !3190, inlinedAt: !2970)
!3190 = distinct !DILexicalBlock(scope: !2966, file: !100, line: 325, column: 6)
!3191 = !DILocation(line: 325, column: 6, scope: !2966, inlinedAt: !2970)
!3192 = !DILocation(line: 326, column: 3, scope: !3190, inlinedAt: !2970)
!3193 = !DILocation(line: 332, column: 9, scope: !2966, inlinedAt: !2970)
!3194 = !DILocation(line: 332, column: 15, scope: !2966, inlinedAt: !2970)
!3195 = !DILocation(line: 332, column: 2, scope: !2966, inlinedAt: !2970)
!3196 = !DILocation(line: 336, column: 1, scope: !2966, inlinedAt: !2970)
!3197 = !DILocation(line: 553, column: 5, scope: !2955, inlinedAt: !2958)
!3198 = !DILocation(line: 553, column: 41, scope: !2955, inlinedAt: !2958)
!3199 = !DILocation(line: 554, column: 5, scope: !2955, inlinedAt: !2958)
!3200 = !DILocation(line: 554, column: 12, scope: !2955, inlinedAt: !2958)
!3201 = !DILocation(line: 448, column: 31, scope: !2950, inlinedAt: !2954)
!3202 = !DILocation(line: 448, column: 34, scope: !2950, inlinedAt: !2954)
!3203 = !DILocation(line: 448, column: 14, scope: !2950, inlinedAt: !2954)
!3204 = !DILocation(line: 450, column: 22, scope: !2950, inlinedAt: !2954)
!3205 = !DILocation(line: 450, column: 25, scope: !2950, inlinedAt: !2954)
!3206 = !DILocation(line: 450, column: 30, scope: !2950, inlinedAt: !2954)
!3207 = !DILocation(line: 450, column: 36, scope: !2950, inlinedAt: !2954)
!3208 = !DILocation(line: 450, column: 8, scope: !2950, inlinedAt: !2954)
!3209 = !DILocation(line: 450, column: 6, scope: !2950, inlinedAt: !2954)
!3210 = !DILocation(line: 451, column: 9, scope: !2950, inlinedAt: !2954)
!3211 = !DILocation(line: 552, column: 3, scope: !2955, inlinedAt: !2958)
!3212 = !DILocation(line: 557, column: 19, scope: !2957, inlinedAt: !2958)
!3213 = !DILocation(line: 557, column: 25, scope: !2957, inlinedAt: !2958)
!3214 = !DILocation(line: 557, column: 9, scope: !2957, inlinedAt: !2958)
!3215 = !DILocation(line: 557, column: 2, scope: !2957, inlinedAt: !2958)
!3216 = !DILocation(line: 558, column: 1, scope: !2957, inlinedAt: !2958)
!3217 = !DILocation(line: 664, column: 2, scope: !2946)
!3218 = distinct !DISubprogram(name: "ERR_PTR", scope: !3219, file: !3219, line: 24, type: !3220, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !200)
!3219 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!3220 = !DISubroutineType(types: !3221)
!3221 = !{!109, !112}
!3222 = !DILocalVariable(name: "error", arg: 1, scope: !3218, file: !3219, line: 24, type: !112)
!3223 = !DILocation(line: 24, column: 48, scope: !3218)
!3224 = !DILocation(line: 26, column: 18, scope: !3218)
!3225 = !DILocation(line: 26, column: 9, scope: !3218)
!3226 = !DILocation(line: 26, column: 2, scope: !3218)
!3227 = distinct !DISubprogram(name: "kcalloc", scope: !100, file: !100, line: 601, type: !3228, scopeLine: 602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !200)
!3228 = !DISubroutineType(types: !3229)
!3229 = !{!109, !273, !273, !107}
!3230 = !DILocalVariable(name: "n", arg: 1, scope: !3227, file: !100, line: 601, type: !273)
!3231 = !DILocation(line: 601, column: 36, scope: !3227)
!3232 = !DILocalVariable(name: "size", arg: 2, scope: !3227, file: !100, line: 601, type: !273)
!3233 = !DILocation(line: 601, column: 46, scope: !3227)
!3234 = !DILocalVariable(name: "flags", arg: 3, scope: !3227, file: !100, line: 601, type: !107)
!3235 = !DILocation(line: 601, column: 58, scope: !3227)
!3236 = !DILocation(line: 603, column: 23, scope: !3227)
!3237 = !DILocation(line: 603, column: 26, scope: !3227)
!3238 = !DILocation(line: 603, column: 32, scope: !3227)
!3239 = !DILocation(line: 603, column: 38, scope: !3227)
!3240 = !DILocation(line: 603, column: 9, scope: !3227)
!3241 = !DILocation(line: 603, column: 2, scope: !3227)
!3242 = distinct !DISubprogram(name: "IS_ERR", scope: !3219, file: !3219, line: 34, type: !3243, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !200)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{!150, !1199}
!3245 = !DILocalVariable(name: "ptr", arg: 1, scope: !3242, file: !3219, line: 34, type: !1199)
!3246 = !DILocation(line: 34, column: 60, scope: !3242)
!3247 = !DILocation(line: 36, column: 9, scope: !3242)
!3248 = !DILocation(line: 36, column: 2, scope: !3242)
!3249 = distinct !DISubprogram(name: "PTR_ERR", scope: !3219, file: !3219, line: 29, type: !3250, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !200)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{!112, !1199}
!3252 = !DILocalVariable(name: "ptr", arg: 1, scope: !3249, file: !3219, line: 29, type: !1199)
!3253 = !DILocation(line: 29, column: 61, scope: !3249)
!3254 = !DILocation(line: 31, column: 16, scope: !3249)
!3255 = !DILocation(line: 31, column: 9, scope: !3249)
!3256 = !DILocation(line: 31, column: 2, scope: !3249)
!3257 = distinct !DISubprogram(name: "int340x_thermal_zone_remove", scope: !3, file: !3, line: 279, type: !3258, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !200)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{null, !2382}
!3260 = !DILocalVariable(name: "int34x_thermal_zone", arg: 1, scope: !3257, file: !3, line: 280, type: !2382)
!3261 = !DILocation(line: 280, column: 7, scope: !3257)
!3262 = !DILocation(line: 282, column: 33, scope: !3257)
!3263 = !DILocation(line: 282, column: 54, scope: !3257)
!3264 = !DILocation(line: 282, column: 2, scope: !3257)
!3265 = !DILocation(line: 283, column: 34, scope: !3257)
!3266 = !DILocation(line: 283, column: 55, scope: !3257)
!3267 = !DILocation(line: 283, column: 2, scope: !3257)
!3268 = !DILocation(line: 284, column: 8, scope: !3257)
!3269 = !DILocation(line: 284, column: 29, scope: !3257)
!3270 = !DILocation(line: 284, column: 2, scope: !3257)
!3271 = !DILocation(line: 285, column: 8, scope: !3257)
!3272 = !DILocation(line: 285, column: 2, scope: !3257)
!3273 = !DILocation(line: 286, column: 1, scope: !3257)
!3274 = distinct !DISubprogram(name: "deci_kelvin_to_millicelsius", scope: !3275, file: !3275, line: 60, type: !3276, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !200)
!3275 = !DIFile(filename: "./include/linux/units.h", directory: "/home/lizy2001/genbc/linux")
!3276 = !DISubroutineType(types: !3277)
!3277 = !{!112, !112}
!3278 = !DILocalVariable(name: "t", arg: 1, scope: !3274, file: !3275, line: 60, type: !112)
!3279 = !DILocation(line: 60, column: 53, scope: !3274)
!3280 = !DILocation(line: 62, column: 38, scope: !3274)
!3281 = !DILocation(line: 62, column: 40, scope: !3274)
!3282 = !DILocation(line: 62, column: 9, scope: !3274)
!3283 = !DILocation(line: 62, column: 2, scope: !3274)
!3284 = distinct !DISubprogram(name: "milli_kelvin_to_millicelsius", scope: !3275, file: !3275, line: 9, type: !3276, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !200)
!3285 = !DILocalVariable(name: "t", arg: 1, scope: !3284, file: !3275, line: 9, type: !112)
!3286 = !DILocation(line: 9, column: 54, scope: !3284)
!3287 = !DILocation(line: 11, column: 9, scope: !3284)
!3288 = !DILocation(line: 11, column: 11, scope: !3284)
!3289 = !DILocation(line: 11, column: 2, scope: !3284)
!3290 = distinct !DISubprogram(name: "get_order", scope: !3291, file: !3291, line: 29, type: !3292, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !200)
!3291 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!3292 = !DISubroutineType(types: !3293)
!3293 = !{!110, !111}
!3294 = !DILocalVariable(name: "x", arg: 1, scope: !3295, file: !3296, line: 366, type: !346)
!3295 = distinct !DISubprogram(name: "fls64", scope: !3296, file: !3296, line: 366, type: !3297, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !200)
!3296 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!3297 = !DISubroutineType(types: !3298)
!3298 = !{!110, !346}
!3299 = !DILocation(line: 366, column: 40, scope: !3295, inlinedAt: !3300)
!3300 = distinct !DILocation(line: 46, column: 9, scope: !3290)
!3301 = !DILocalVariable(name: "bitpos", scope: !3295, file: !3296, line: 368, type: !110)
!3302 = !DILocation(line: 368, column: 6, scope: !3295, inlinedAt: !3300)
!3303 = !DILocalVariable(name: "size", arg: 1, scope: !3290, file: !3291, line: 29, type: !111)
!3304 = !DILocation(line: 29, column: 63, scope: !3290)
!3305 = !DILocation(line: 31, column: 27, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3290, file: !3291, line: 31, column: 6)
!3307 = !DILocation(line: 31, column: 6, scope: !3306)
!3308 = !DILocation(line: 31, column: 6, scope: !3290)
!3309 = !DILocation(line: 32, column: 8, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3311, file: !3291, line: 32, column: 7)
!3311 = distinct !DILexicalBlock(scope: !3306, file: !3291, line: 31, column: 34)
!3312 = !DILocation(line: 32, column: 7, scope: !3311)
!3313 = !DILocation(line: 33, column: 4, scope: !3310)
!3314 = !DILocation(line: 35, column: 7, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3311, file: !3291, line: 35, column: 7)
!3316 = !DILocation(line: 35, column: 12, scope: !3315)
!3317 = !DILocation(line: 35, column: 7, scope: !3311)
!3318 = !DILocation(line: 36, column: 4, scope: !3315)
!3319 = !DILocation(line: 38, column: 10, scope: !3311)
!3320 = !DILocation(line: 38, column: 28, scope: !3311)
!3321 = !DILocation(line: 38, column: 41, scope: !3311)
!3322 = !DILocation(line: 38, column: 3, scope: !3311)
!3323 = !DILocation(line: 41, column: 6, scope: !3290)
!3324 = !DILocation(line: 42, column: 7, scope: !3290)
!3325 = !DILocation(line: 46, column: 15, scope: !3290)
!3326 = !DILocation(line: 374, column: 2, scope: !3295, inlinedAt: !3300)
!3327 = !DILocation(line: 376, column: 14, scope: !3295, inlinedAt: !3300)
!3328 = !{i32 246879}
!3329 = !DILocation(line: 377, column: 9, scope: !3295, inlinedAt: !3300)
!3330 = !DILocation(line: 377, column: 16, scope: !3295, inlinedAt: !3300)
!3331 = !DILocation(line: 46, column: 2, scope: !3290)
!3332 = !DILocation(line: 48, column: 1, scope: !3290)
!3333 = distinct !DISubprogram(name: "__ilog2_u64", scope: !3334, file: !3334, line: 30, type: !3335, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !200)
!3334 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!3335 = !DISubroutineType(types: !3336)
!3336 = !{!110, !344}
!3337 = !DILocation(line: 366, column: 40, scope: !3295, inlinedAt: !3338)
!3338 = distinct !DILocation(line: 32, column: 9, scope: !3333)
!3339 = !DILocation(line: 368, column: 6, scope: !3295, inlinedAt: !3338)
!3340 = !DILocalVariable(name: "n", arg: 1, scope: !3333, file: !3334, line: 30, type: !344)
!3341 = !DILocation(line: 30, column: 21, scope: !3333)
!3342 = !DILocation(line: 32, column: 15, scope: !3333)
!3343 = !DILocation(line: 374, column: 2, scope: !3295, inlinedAt: !3338)
!3344 = !DILocation(line: 376, column: 14, scope: !3295, inlinedAt: !3338)
!3345 = !DILocation(line: 377, column: 9, scope: !3295, inlinedAt: !3338)
!3346 = !DILocation(line: 377, column: 16, scope: !3295, inlinedAt: !3338)
!3347 = !DILocation(line: 32, column: 18, scope: !3333)
!3348 = !DILocation(line: 32, column: 2, scope: !3333)
!3349 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !3350, file: !3350, line: 137, type: !3351, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !200)
!3350 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!109, !1118, !1199, !273, !107}
!3353 = !DILocalVariable(name: "s", arg: 1, scope: !3349, file: !3350, line: 137, type: !1118)
!3354 = !DILocation(line: 137, column: 54, scope: !3349)
!3355 = !DILocalVariable(name: "object", arg: 2, scope: !3349, file: !3350, line: 137, type: !1199)
!3356 = !DILocation(line: 137, column: 69, scope: !3349)
!3357 = !DILocalVariable(name: "size", arg: 3, scope: !3349, file: !3350, line: 138, type: !273)
!3358 = !DILocation(line: 138, column: 12, scope: !3349)
!3359 = !DILocalVariable(name: "flags", arg: 4, scope: !3349, file: !3350, line: 138, type: !107)
!3360 = !DILocation(line: 138, column: 24, scope: !3349)
!3361 = !DILocation(line: 140, column: 17, scope: !3349)
!3362 = !DILocation(line: 140, column: 2, scope: !3349)
!3363 = distinct !DISubprogram(name: "kmalloc_array", scope: !100, file: !100, line: 584, type: !3228, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !200)
!3364 = !DILocation(line: 445, column: 72, scope: !2950, inlinedAt: !3365)
!3365 = distinct !DILocation(line: 552, column: 10, scope: !2955, inlinedAt: !3366)
!3366 = distinct !DILocation(line: 591, column: 10, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3363, file: !100, line: 590, column: 6)
!3368 = !DILocation(line: 446, column: 9, scope: !2950, inlinedAt: !3365)
!3369 = !DILocation(line: 446, column: 23, scope: !2950, inlinedAt: !3365)
!3370 = !DILocation(line: 448, column: 8, scope: !2950, inlinedAt: !3365)
!3371 = !DILocation(line: 318, column: 67, scope: !2966, inlinedAt: !3372)
!3372 = distinct !DILocation(line: 553, column: 20, scope: !2955, inlinedAt: !3366)
!3373 = !DILocation(line: 346, column: 58, scope: !2972, inlinedAt: !3374)
!3374 = distinct !DILocation(line: 547, column: 11, scope: !2955, inlinedAt: !3366)
!3375 = !DILocation(line: 472, column: 28, scope: !2978, inlinedAt: !3376)
!3376 = distinct !DILocation(line: 481, column: 9, scope: !2983, inlinedAt: !3377)
!3377 = distinct !DILocation(line: 545, column: 11, scope: !2985, inlinedAt: !3366)
!3378 = !DILocation(line: 472, column: 40, scope: !2978, inlinedAt: !3376)
!3379 = !DILocation(line: 472, column: 60, scope: !2978, inlinedAt: !3376)
!3380 = !DILocation(line: 478, column: 51, scope: !2983, inlinedAt: !3377)
!3381 = !DILocation(line: 478, column: 63, scope: !2983, inlinedAt: !3377)
!3382 = !DILocation(line: 480, column: 15, scope: !2983, inlinedAt: !3377)
!3383 = !DILocation(line: 538, column: 45, scope: !2957, inlinedAt: !3366)
!3384 = !DILocation(line: 538, column: 57, scope: !2957, inlinedAt: !3366)
!3385 = !DILocation(line: 542, column: 16, scope: !2955, inlinedAt: !3366)
!3386 = !DILocalVariable(name: "n", arg: 1, scope: !3363, file: !100, line: 584, type: !273)
!3387 = !DILocation(line: 584, column: 42, scope: !3363)
!3388 = !DILocalVariable(name: "size", arg: 2, scope: !3363, file: !100, line: 584, type: !273)
!3389 = !DILocation(line: 584, column: 52, scope: !3363)
!3390 = !DILocalVariable(name: "flags", arg: 3, scope: !3363, file: !100, line: 584, type: !107)
!3391 = !DILocation(line: 584, column: 64, scope: !3363)
!3392 = !DILocalVariable(name: "bytes", scope: !3363, file: !100, line: 586, type: !273)
!3393 = !DILocation(line: 586, column: 9, scope: !3363)
!3394 = !DILocalVariable(name: "__a", scope: !3395, file: !100, line: 588, type: !273)
!3395 = distinct !DILexicalBlock(scope: !3396, file: !100, line: 588, column: 6)
!3396 = distinct !DILexicalBlock(scope: !3363, file: !100, line: 588, column: 6)
!3397 = !DILocation(line: 588, column: 6, scope: !3395)
!3398 = !DILocalVariable(name: "__b", scope: !3395, file: !100, line: 588, type: !273)
!3399 = !DILocalVariable(name: "__d", scope: !3395, file: !100, line: 588, type: !3400)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!3401 = !DILocation(line: 588, column: 6, scope: !3396)
!3402 = !DILocation(line: 588, column: 6, scope: !3363)
!3403 = !DILocation(line: 589, column: 3, scope: !3396)
!3404 = !DILocation(line: 590, column: 27, scope: !3367)
!3405 = !DILocation(line: 590, column: 6, scope: !3367)
!3406 = !DILocation(line: 590, column: 30, scope: !3367)
!3407 = !DILocation(line: 590, column: 54, scope: !3367)
!3408 = !DILocation(line: 590, column: 33, scope: !3367)
!3409 = !DILocation(line: 590, column: 6, scope: !3363)
!3410 = !DILocation(line: 591, column: 18, scope: !3367)
!3411 = !DILocation(line: 591, column: 25, scope: !3367)
!3412 = !DILocation(line: 540, column: 27, scope: !2956, inlinedAt: !3366)
!3413 = !DILocation(line: 540, column: 6, scope: !2956, inlinedAt: !3366)
!3414 = !DILocation(line: 540, column: 6, scope: !2957, inlinedAt: !3366)
!3415 = !DILocation(line: 544, column: 7, scope: !2985, inlinedAt: !3366)
!3416 = !DILocation(line: 544, column: 12, scope: !2985, inlinedAt: !3366)
!3417 = !DILocation(line: 544, column: 7, scope: !2955, inlinedAt: !3366)
!3418 = !DILocation(line: 545, column: 25, scope: !2985, inlinedAt: !3366)
!3419 = !DILocation(line: 545, column: 31, scope: !2985, inlinedAt: !3366)
!3420 = !DILocation(line: 480, column: 33, scope: !2983, inlinedAt: !3377)
!3421 = !DILocation(line: 480, column: 23, scope: !2983, inlinedAt: !3377)
!3422 = !DILocation(line: 481, column: 29, scope: !2983, inlinedAt: !3377)
!3423 = !DILocation(line: 481, column: 35, scope: !2983, inlinedAt: !3377)
!3424 = !DILocation(line: 481, column: 42, scope: !2983, inlinedAt: !3377)
!3425 = !DILocation(line: 474, column: 23, scope: !2978, inlinedAt: !3376)
!3426 = !DILocation(line: 474, column: 29, scope: !2978, inlinedAt: !3376)
!3427 = !DILocation(line: 474, column: 36, scope: !2978, inlinedAt: !3376)
!3428 = !DILocation(line: 474, column: 9, scope: !2978, inlinedAt: !3376)
!3429 = !DILocation(line: 545, column: 4, scope: !2985, inlinedAt: !3366)
!3430 = !DILocation(line: 547, column: 25, scope: !2955, inlinedAt: !3366)
!3431 = !DILocation(line: 348, column: 7, scope: !3029, inlinedAt: !3374)
!3432 = !DILocation(line: 348, column: 6, scope: !2972, inlinedAt: !3374)
!3433 = !DILocation(line: 349, column: 3, scope: !3029, inlinedAt: !3374)
!3434 = !DILocation(line: 351, column: 6, scope: !3033, inlinedAt: !3374)
!3435 = !DILocation(line: 351, column: 11, scope: !3033, inlinedAt: !3374)
!3436 = !DILocation(line: 351, column: 6, scope: !2972, inlinedAt: !3374)
!3437 = !DILocation(line: 352, column: 3, scope: !3033, inlinedAt: !3374)
!3438 = !DILocation(line: 354, column: 32, scope: !3038, inlinedAt: !3374)
!3439 = !DILocation(line: 354, column: 37, scope: !3038, inlinedAt: !3374)
!3440 = !DILocation(line: 354, column: 42, scope: !3038, inlinedAt: !3374)
!3441 = !DILocation(line: 354, column: 45, scope: !3038, inlinedAt: !3374)
!3442 = !DILocation(line: 354, column: 50, scope: !3038, inlinedAt: !3374)
!3443 = !DILocation(line: 354, column: 6, scope: !2972, inlinedAt: !3374)
!3444 = !DILocation(line: 355, column: 3, scope: !3038, inlinedAt: !3374)
!3445 = !DILocation(line: 356, column: 32, scope: !3046, inlinedAt: !3374)
!3446 = !DILocation(line: 356, column: 37, scope: !3046, inlinedAt: !3374)
!3447 = !DILocation(line: 356, column: 43, scope: !3046, inlinedAt: !3374)
!3448 = !DILocation(line: 356, column: 46, scope: !3046, inlinedAt: !3374)
!3449 = !DILocation(line: 356, column: 51, scope: !3046, inlinedAt: !3374)
!3450 = !DILocation(line: 356, column: 6, scope: !2972, inlinedAt: !3374)
!3451 = !DILocation(line: 357, column: 3, scope: !3046, inlinedAt: !3374)
!3452 = !DILocation(line: 358, column: 6, scope: !3054, inlinedAt: !3374)
!3453 = !DILocation(line: 358, column: 11, scope: !3054, inlinedAt: !3374)
!3454 = !DILocation(line: 358, column: 6, scope: !2972, inlinedAt: !3374)
!3455 = !DILocation(line: 358, column: 26, scope: !3054, inlinedAt: !3374)
!3456 = !DILocation(line: 359, column: 6, scope: !3059, inlinedAt: !3374)
!3457 = !DILocation(line: 359, column: 11, scope: !3059, inlinedAt: !3374)
!3458 = !DILocation(line: 359, column: 6, scope: !2972, inlinedAt: !3374)
!3459 = !DILocation(line: 359, column: 26, scope: !3059, inlinedAt: !3374)
!3460 = !DILocation(line: 360, column: 6, scope: !3064, inlinedAt: !3374)
!3461 = !DILocation(line: 360, column: 11, scope: !3064, inlinedAt: !3374)
!3462 = !DILocation(line: 360, column: 6, scope: !2972, inlinedAt: !3374)
!3463 = !DILocation(line: 360, column: 26, scope: !3064, inlinedAt: !3374)
!3464 = !DILocation(line: 361, column: 6, scope: !3069, inlinedAt: !3374)
!3465 = !DILocation(line: 361, column: 11, scope: !3069, inlinedAt: !3374)
!3466 = !DILocation(line: 361, column: 6, scope: !2972, inlinedAt: !3374)
!3467 = !DILocation(line: 361, column: 26, scope: !3069, inlinedAt: !3374)
!3468 = !DILocation(line: 362, column: 6, scope: !3074, inlinedAt: !3374)
!3469 = !DILocation(line: 362, column: 11, scope: !3074, inlinedAt: !3374)
!3470 = !DILocation(line: 362, column: 6, scope: !2972, inlinedAt: !3374)
!3471 = !DILocation(line: 362, column: 26, scope: !3074, inlinedAt: !3374)
!3472 = !DILocation(line: 363, column: 6, scope: !3079, inlinedAt: !3374)
!3473 = !DILocation(line: 363, column: 11, scope: !3079, inlinedAt: !3374)
!3474 = !DILocation(line: 363, column: 6, scope: !2972, inlinedAt: !3374)
!3475 = !DILocation(line: 363, column: 26, scope: !3079, inlinedAt: !3374)
!3476 = !DILocation(line: 364, column: 6, scope: !3084, inlinedAt: !3374)
!3477 = !DILocation(line: 364, column: 11, scope: !3084, inlinedAt: !3374)
!3478 = !DILocation(line: 364, column: 6, scope: !2972, inlinedAt: !3374)
!3479 = !DILocation(line: 364, column: 26, scope: !3084, inlinedAt: !3374)
!3480 = !DILocation(line: 365, column: 6, scope: !3089, inlinedAt: !3374)
!3481 = !DILocation(line: 365, column: 11, scope: !3089, inlinedAt: !3374)
!3482 = !DILocation(line: 365, column: 6, scope: !2972, inlinedAt: !3374)
!3483 = !DILocation(line: 365, column: 26, scope: !3089, inlinedAt: !3374)
!3484 = !DILocation(line: 366, column: 6, scope: !3094, inlinedAt: !3374)
!3485 = !DILocation(line: 366, column: 11, scope: !3094, inlinedAt: !3374)
!3486 = !DILocation(line: 366, column: 6, scope: !2972, inlinedAt: !3374)
!3487 = !DILocation(line: 366, column: 26, scope: !3094, inlinedAt: !3374)
!3488 = !DILocation(line: 367, column: 6, scope: !3099, inlinedAt: !3374)
!3489 = !DILocation(line: 367, column: 11, scope: !3099, inlinedAt: !3374)
!3490 = !DILocation(line: 367, column: 6, scope: !2972, inlinedAt: !3374)
!3491 = !DILocation(line: 367, column: 26, scope: !3099, inlinedAt: !3374)
!3492 = !DILocation(line: 368, column: 6, scope: !3104, inlinedAt: !3374)
!3493 = !DILocation(line: 368, column: 11, scope: !3104, inlinedAt: !3374)
!3494 = !DILocation(line: 368, column: 6, scope: !2972, inlinedAt: !3374)
!3495 = !DILocation(line: 368, column: 26, scope: !3104, inlinedAt: !3374)
!3496 = !DILocation(line: 369, column: 6, scope: !3109, inlinedAt: !3374)
!3497 = !DILocation(line: 369, column: 11, scope: !3109, inlinedAt: !3374)
!3498 = !DILocation(line: 369, column: 6, scope: !2972, inlinedAt: !3374)
!3499 = !DILocation(line: 369, column: 26, scope: !3109, inlinedAt: !3374)
!3500 = !DILocation(line: 370, column: 6, scope: !3114, inlinedAt: !3374)
!3501 = !DILocation(line: 370, column: 11, scope: !3114, inlinedAt: !3374)
!3502 = !DILocation(line: 370, column: 6, scope: !2972, inlinedAt: !3374)
!3503 = !DILocation(line: 370, column: 26, scope: !3114, inlinedAt: !3374)
!3504 = !DILocation(line: 371, column: 6, scope: !3119, inlinedAt: !3374)
!3505 = !DILocation(line: 371, column: 11, scope: !3119, inlinedAt: !3374)
!3506 = !DILocation(line: 371, column: 6, scope: !2972, inlinedAt: !3374)
!3507 = !DILocation(line: 371, column: 26, scope: !3119, inlinedAt: !3374)
!3508 = !DILocation(line: 372, column: 6, scope: !3124, inlinedAt: !3374)
!3509 = !DILocation(line: 372, column: 11, scope: !3124, inlinedAt: !3374)
!3510 = !DILocation(line: 372, column: 6, scope: !2972, inlinedAt: !3374)
!3511 = !DILocation(line: 372, column: 26, scope: !3124, inlinedAt: !3374)
!3512 = !DILocation(line: 373, column: 6, scope: !3129, inlinedAt: !3374)
!3513 = !DILocation(line: 373, column: 11, scope: !3129, inlinedAt: !3374)
!3514 = !DILocation(line: 373, column: 6, scope: !2972, inlinedAt: !3374)
!3515 = !DILocation(line: 373, column: 26, scope: !3129, inlinedAt: !3374)
!3516 = !DILocation(line: 374, column: 6, scope: !3134, inlinedAt: !3374)
!3517 = !DILocation(line: 374, column: 11, scope: !3134, inlinedAt: !3374)
!3518 = !DILocation(line: 374, column: 6, scope: !2972, inlinedAt: !3374)
!3519 = !DILocation(line: 374, column: 26, scope: !3134, inlinedAt: !3374)
!3520 = !DILocation(line: 375, column: 6, scope: !3139, inlinedAt: !3374)
!3521 = !DILocation(line: 375, column: 11, scope: !3139, inlinedAt: !3374)
!3522 = !DILocation(line: 375, column: 6, scope: !2972, inlinedAt: !3374)
!3523 = !DILocation(line: 375, column: 27, scope: !3139, inlinedAt: !3374)
!3524 = !DILocation(line: 376, column: 6, scope: !3144, inlinedAt: !3374)
!3525 = !DILocation(line: 376, column: 11, scope: !3144, inlinedAt: !3374)
!3526 = !DILocation(line: 376, column: 6, scope: !2972, inlinedAt: !3374)
!3527 = !DILocation(line: 376, column: 32, scope: !3144, inlinedAt: !3374)
!3528 = !DILocation(line: 377, column: 6, scope: !3149, inlinedAt: !3374)
!3529 = !DILocation(line: 377, column: 11, scope: !3149, inlinedAt: !3374)
!3530 = !DILocation(line: 377, column: 6, scope: !2972, inlinedAt: !3374)
!3531 = !DILocation(line: 377, column: 32, scope: !3149, inlinedAt: !3374)
!3532 = !DILocation(line: 378, column: 6, scope: !3154, inlinedAt: !3374)
!3533 = !DILocation(line: 378, column: 11, scope: !3154, inlinedAt: !3374)
!3534 = !DILocation(line: 378, column: 6, scope: !2972, inlinedAt: !3374)
!3535 = !DILocation(line: 378, column: 32, scope: !3154, inlinedAt: !3374)
!3536 = !DILocation(line: 379, column: 6, scope: !3159, inlinedAt: !3374)
!3537 = !DILocation(line: 379, column: 11, scope: !3159, inlinedAt: !3374)
!3538 = !DILocation(line: 379, column: 6, scope: !2972, inlinedAt: !3374)
!3539 = !DILocation(line: 379, column: 33, scope: !3159, inlinedAt: !3374)
!3540 = !DILocation(line: 380, column: 6, scope: !3164, inlinedAt: !3374)
!3541 = !DILocation(line: 380, column: 11, scope: !3164, inlinedAt: !3374)
!3542 = !DILocation(line: 380, column: 6, scope: !2972, inlinedAt: !3374)
!3543 = !DILocation(line: 380, column: 33, scope: !3164, inlinedAt: !3374)
!3544 = !DILocation(line: 381, column: 6, scope: !3169, inlinedAt: !3374)
!3545 = !DILocation(line: 381, column: 11, scope: !3169, inlinedAt: !3374)
!3546 = !DILocation(line: 381, column: 6, scope: !2972, inlinedAt: !3374)
!3547 = !DILocation(line: 381, column: 33, scope: !3169, inlinedAt: !3374)
!3548 = !DILocation(line: 382, column: 2, scope: !3174, inlinedAt: !3374)
!3549 = !DILocation(line: 382, column: 2, scope: !3178, inlinedAt: !3374)
!3550 = !DILocation(line: 382, column: 2, scope: !3179, inlinedAt: !3374)
!3551 = !DILocation(line: 386, column: 1, scope: !2972, inlinedAt: !3374)
!3552 = !DILocation(line: 547, column: 9, scope: !2955, inlinedAt: !3366)
!3553 = !DILocation(line: 549, column: 8, scope: !3185, inlinedAt: !3366)
!3554 = !DILocation(line: 549, column: 7, scope: !2955, inlinedAt: !3366)
!3555 = !DILocation(line: 550, column: 4, scope: !3185, inlinedAt: !3366)
!3556 = !DILocation(line: 553, column: 33, scope: !2955, inlinedAt: !3366)
!3557 = !DILocation(line: 325, column: 6, scope: !3190, inlinedAt: !3372)
!3558 = !DILocation(line: 325, column: 6, scope: !2966, inlinedAt: !3372)
!3559 = !DILocation(line: 326, column: 3, scope: !3190, inlinedAt: !3372)
!3560 = !DILocation(line: 332, column: 9, scope: !2966, inlinedAt: !3372)
!3561 = !DILocation(line: 332, column: 15, scope: !2966, inlinedAt: !3372)
!3562 = !DILocation(line: 332, column: 2, scope: !2966, inlinedAt: !3372)
!3563 = !DILocation(line: 336, column: 1, scope: !2966, inlinedAt: !3372)
!3564 = !DILocation(line: 553, column: 5, scope: !2955, inlinedAt: !3366)
!3565 = !DILocation(line: 553, column: 41, scope: !2955, inlinedAt: !3366)
!3566 = !DILocation(line: 554, column: 5, scope: !2955, inlinedAt: !3366)
!3567 = !DILocation(line: 554, column: 12, scope: !2955, inlinedAt: !3366)
!3568 = !DILocation(line: 448, column: 31, scope: !2950, inlinedAt: !3365)
!3569 = !DILocation(line: 448, column: 34, scope: !2950, inlinedAt: !3365)
!3570 = !DILocation(line: 448, column: 14, scope: !2950, inlinedAt: !3365)
!3571 = !DILocation(line: 450, column: 22, scope: !2950, inlinedAt: !3365)
!3572 = !DILocation(line: 450, column: 25, scope: !2950, inlinedAt: !3365)
!3573 = !DILocation(line: 450, column: 30, scope: !2950, inlinedAt: !3365)
!3574 = !DILocation(line: 450, column: 36, scope: !2950, inlinedAt: !3365)
!3575 = !DILocation(line: 450, column: 8, scope: !2950, inlinedAt: !3365)
!3576 = !DILocation(line: 450, column: 6, scope: !2950, inlinedAt: !3365)
!3577 = !DILocation(line: 451, column: 9, scope: !2950, inlinedAt: !3365)
!3578 = !DILocation(line: 552, column: 3, scope: !2955, inlinedAt: !3366)
!3579 = !DILocation(line: 557, column: 19, scope: !2957, inlinedAt: !3366)
!3580 = !DILocation(line: 557, column: 25, scope: !2957, inlinedAt: !3366)
!3581 = !DILocation(line: 557, column: 9, scope: !2957, inlinedAt: !3366)
!3582 = !DILocation(line: 557, column: 2, scope: !2957, inlinedAt: !3366)
!3583 = !DILocation(line: 558, column: 1, scope: !2957, inlinedAt: !3366)
!3584 = !DILocation(line: 591, column: 3, scope: !3367)
!3585 = !DILocation(line: 592, column: 19, scope: !3363)
!3586 = !DILocation(line: 592, column: 26, scope: !3363)
!3587 = !DILocation(line: 592, column: 9, scope: !3363)
!3588 = !DILocation(line: 592, column: 2, scope: !3363)
!3589 = !DILocation(line: 593, column: 1, scope: !3363)
!3590 = distinct !DISubprogram(name: "__must_check_overflow", scope: !3591, file: !3591, line: 52, type: !3592, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !200)
!3591 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!3592 = !DISubroutineType(types: !3593)
!3593 = !{!150, !150}
!3594 = !DILocalVariable(name: "overflow", arg: 1, scope: !3590, file: !3591, line: 52, type: !150)
!3595 = !DILocation(line: 52, column: 60, scope: !3590)
!3596 = !DILocation(line: 54, column: 9, scope: !3590)
!3597 = !DILocation(line: 54, column: 2, scope: !3590)
!3598 = distinct !DISubprogram(name: "int340x_thermal_get_zone_temp", scope: !3, file: !3, line: 14, type: !2295, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !200)
!3599 = !DILocalVariable(name: "zone", arg: 1, scope: !3598, file: !3, line: 14, type: !2261)
!3600 = !DILocation(line: 14, column: 70, scope: !3598)
!3601 = !DILocalVariable(name: "temp", arg: 2, scope: !3598, file: !3, line: 15, type: !815)
!3602 = !DILocation(line: 15, column: 12, scope: !3598)
!3603 = !DILocalVariable(name: "d", scope: !3598, file: !3, line: 17, type: !2382)
!3604 = !DILocation(line: 17, column: 30, scope: !3598)
!3605 = !DILocation(line: 17, column: 34, scope: !3598)
!3606 = !DILocation(line: 17, column: 40, scope: !3598)
!3607 = !DILocalVariable(name: "tmp", scope: !3598, file: !3, line: 18, type: !348)
!3608 = !DILocation(line: 18, column: 21, scope: !3598)
!3609 = !DILocalVariable(name: "status", scope: !3598, file: !3, line: 19, type: !2810)
!3610 = !DILocation(line: 19, column: 14, scope: !3598)
!3611 = !DILocation(line: 21, column: 6, scope: !3612)
!3612 = distinct !DILexicalBlock(scope: !3598, file: !3, line: 21, column: 6)
!3613 = !DILocation(line: 21, column: 9, scope: !3612)
!3614 = !DILocation(line: 21, column: 22, scope: !3612)
!3615 = !DILocation(line: 21, column: 25, scope: !3612)
!3616 = !DILocation(line: 21, column: 28, scope: !3612)
!3617 = !DILocation(line: 21, column: 42, scope: !3612)
!3618 = !DILocation(line: 21, column: 6, scope: !3598)
!3619 = !DILocation(line: 22, column: 10, scope: !3612)
!3620 = !DILocation(line: 22, column: 13, scope: !3612)
!3621 = !DILocation(line: 22, column: 27, scope: !3612)
!3622 = !DILocation(line: 22, column: 36, scope: !3612)
!3623 = !DILocation(line: 22, column: 42, scope: !3612)
!3624 = !DILocation(line: 22, column: 3, scope: !3612)
!3625 = !DILocation(line: 24, column: 33, scope: !3598)
!3626 = !DILocation(line: 24, column: 36, scope: !3598)
!3627 = !DILocation(line: 24, column: 42, scope: !3598)
!3628 = !DILocation(line: 24, column: 11, scope: !3598)
!3629 = !DILocation(line: 24, column: 9, scope: !3598)
!3630 = !DILocation(line: 25, column: 6, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !3598, file: !3, line: 25, column: 6)
!3632 = !DILocation(line: 25, column: 6, scope: !3598)
!3633 = !DILocation(line: 26, column: 3, scope: !3631)
!3634 = !DILocation(line: 28, column: 6, scope: !3635)
!3635 = distinct !DILexicalBlock(scope: !3598, file: !3, line: 28, column: 6)
!3636 = !DILocation(line: 28, column: 9, scope: !3635)
!3637 = !DILocation(line: 28, column: 6, scope: !3598)
!3638 = !DILocalVariable(name: "conv_temp", scope: !3639, file: !3, line: 29, type: !110)
!3639 = distinct !DILexicalBlock(scope: !3635, file: !3, line: 28, column: 21)
!3640 = !DILocation(line: 29, column: 7, scope: !3639)
!3641 = !DILocation(line: 31, column: 37, scope: !3639)
!3642 = !DILocation(line: 31, column: 40, scope: !3639)
!3643 = !DILocation(line: 31, column: 57, scope: !3639)
!3644 = !DILocation(line: 31, column: 52, scope: !3639)
!3645 = !DILocation(line: 31, column: 15, scope: !3639)
!3646 = !DILocation(line: 31, column: 13, scope: !3639)
!3647 = !DILocation(line: 32, column: 7, scope: !3648)
!3648 = distinct !DILexicalBlock(scope: !3639, file: !3, line: 32, column: 7)
!3649 = !DILocation(line: 32, column: 17, scope: !3648)
!3650 = !DILocation(line: 32, column: 7, scope: !3639)
!3651 = !DILocation(line: 33, column: 11, scope: !3648)
!3652 = !DILocation(line: 33, column: 4, scope: !3648)
!3653 = !DILocation(line: 35, column: 26, scope: !3639)
!3654 = !DILocation(line: 35, column: 11, scope: !3639)
!3655 = !DILocation(line: 35, column: 36, scope: !3639)
!3656 = !DILocation(line: 35, column: 4, scope: !3639)
!3657 = !DILocation(line: 35, column: 9, scope: !3639)
!3658 = !DILocation(line: 36, column: 2, scope: !3639)
!3659 = !DILocation(line: 38, column: 39, scope: !3635)
!3660 = !DILocation(line: 38, column: 11, scope: !3635)
!3661 = !DILocation(line: 38, column: 4, scope: !3635)
!3662 = !DILocation(line: 38, column: 9, scope: !3635)
!3663 = !DILocation(line: 40, column: 2, scope: !3598)
!3664 = !DILocation(line: 41, column: 1, scope: !3598)
!3665 = distinct !DISubprogram(name: "int340x_thermal_get_trip_type", scope: !3, file: !3, line: 75, type: !2307, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !200)
!3666 = !DILocalVariable(name: "zone", arg: 1, scope: !3665, file: !3, line: 75, type: !2261)
!3667 = !DILocation(line: 75, column: 70, scope: !3665)
!3668 = !DILocalVariable(name: "trip", arg: 2, scope: !3665, file: !3, line: 76, type: !110)
!3669 = !DILocation(line: 76, column: 11, scope: !3665)
!3670 = !DILocalVariable(name: "type", arg: 3, scope: !3665, file: !3, line: 77, type: !2309)
!3671 = !DILocation(line: 77, column: 31, scope: !3665)
!3672 = !DILocalVariable(name: "d", scope: !3665, file: !3, line: 79, type: !2382)
!3673 = !DILocation(line: 79, column: 30, scope: !3665)
!3674 = !DILocation(line: 79, column: 34, scope: !3665)
!3675 = !DILocation(line: 79, column: 40, scope: !3665)
!3676 = !DILocalVariable(name: "i", scope: !3665, file: !3, line: 80, type: !110)
!3677 = !DILocation(line: 80, column: 6, scope: !3665)
!3678 = !DILocation(line: 82, column: 6, scope: !3679)
!3679 = distinct !DILexicalBlock(scope: !3665, file: !3, line: 82, column: 6)
!3680 = !DILocation(line: 82, column: 9, scope: !3679)
!3681 = !DILocation(line: 82, column: 22, scope: !3679)
!3682 = !DILocation(line: 82, column: 25, scope: !3679)
!3683 = !DILocation(line: 82, column: 28, scope: !3679)
!3684 = !DILocation(line: 82, column: 42, scope: !3679)
!3685 = !DILocation(line: 82, column: 6, scope: !3665)
!3686 = !DILocation(line: 83, column: 10, scope: !3679)
!3687 = !DILocation(line: 83, column: 13, scope: !3679)
!3688 = !DILocation(line: 83, column: 27, scope: !3679)
!3689 = !DILocation(line: 83, column: 41, scope: !3679)
!3690 = !DILocation(line: 83, column: 47, scope: !3679)
!3691 = !DILocation(line: 83, column: 53, scope: !3679)
!3692 = !DILocation(line: 83, column: 3, scope: !3679)
!3693 = !DILocation(line: 85, column: 6, scope: !3694)
!3694 = distinct !DILexicalBlock(scope: !3665, file: !3, line: 85, column: 6)
!3695 = !DILocation(line: 85, column: 13, scope: !3694)
!3696 = !DILocation(line: 85, column: 16, scope: !3694)
!3697 = !DILocation(line: 85, column: 11, scope: !3694)
!3698 = !DILocation(line: 85, column: 6, scope: !3665)
!3699 = !DILocation(line: 86, column: 4, scope: !3694)
!3700 = !DILocation(line: 86, column: 9, scope: !3694)
!3701 = !DILocation(line: 86, column: 3, scope: !3694)
!3702 = !DILocation(line: 87, column: 11, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3694, file: !3, line: 87, column: 11)
!3704 = !DILocation(line: 87, column: 19, scope: !3703)
!3705 = !DILocation(line: 87, column: 22, scope: !3703)
!3706 = !DILocation(line: 87, column: 16, scope: !3703)
!3707 = !DILocation(line: 87, column: 11, scope: !3694)
!3708 = !DILocation(line: 88, column: 4, scope: !3703)
!3709 = !DILocation(line: 88, column: 9, scope: !3703)
!3710 = !DILocation(line: 88, column: 3, scope: !3703)
!3711 = !DILocation(line: 89, column: 11, scope: !3712)
!3712 = distinct !DILexicalBlock(scope: !3703, file: !3, line: 89, column: 11)
!3713 = !DILocation(line: 89, column: 19, scope: !3712)
!3714 = !DILocation(line: 89, column: 22, scope: !3712)
!3715 = !DILocation(line: 89, column: 16, scope: !3712)
!3716 = !DILocation(line: 89, column: 11, scope: !3703)
!3717 = !DILocation(line: 90, column: 4, scope: !3712)
!3718 = !DILocation(line: 90, column: 9, scope: !3712)
!3719 = !DILocation(line: 90, column: 3, scope: !3712)
!3720 = !DILocation(line: 91, column: 11, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3712, file: !3, line: 91, column: 11)
!3722 = !DILocation(line: 91, column: 19, scope: !3721)
!3723 = !DILocation(line: 91, column: 22, scope: !3721)
!3724 = !DILocation(line: 91, column: 16, scope: !3721)
!3725 = !DILocation(line: 91, column: 11, scope: !3712)
!3726 = !DILocation(line: 92, column: 4, scope: !3721)
!3727 = !DILocation(line: 92, column: 9, scope: !3721)
!3728 = !DILocation(line: 92, column: 3, scope: !3721)
!3729 = !DILocation(line: 94, column: 10, scope: !3730)
!3730 = distinct !DILexicalBlock(scope: !3731, file: !3, line: 94, column: 3)
!3731 = distinct !DILexicalBlock(scope: !3721, file: !3, line: 93, column: 7)
!3732 = !DILocation(line: 94, column: 8, scope: !3730)
!3733 = !DILocation(line: 94, column: 15, scope: !3734)
!3734 = distinct !DILexicalBlock(scope: !3730, file: !3, line: 94, column: 3)
!3735 = !DILocation(line: 94, column: 17, scope: !3734)
!3736 = !DILocation(line: 94, column: 3, scope: !3730)
!3737 = !DILocation(line: 95, column: 8, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3739, file: !3, line: 95, column: 8)
!3739 = distinct !DILexicalBlock(scope: !3734, file: !3, line: 94, column: 60)
!3740 = !DILocation(line: 95, column: 11, scope: !3738)
!3741 = !DILocation(line: 95, column: 21, scope: !3738)
!3742 = !DILocation(line: 95, column: 24, scope: !3738)
!3743 = !DILocation(line: 95, column: 30, scope: !3738)
!3744 = !DILocation(line: 96, column: 8, scope: !3738)
!3745 = !DILocation(line: 96, column: 11, scope: !3738)
!3746 = !DILocation(line: 96, column: 21, scope: !3738)
!3747 = !DILocation(line: 96, column: 24, scope: !3738)
!3748 = !DILocation(line: 96, column: 30, scope: !3738)
!3749 = !DILocation(line: 96, column: 27, scope: !3738)
!3750 = !DILocation(line: 95, column: 8, scope: !3739)
!3751 = !DILocation(line: 97, column: 6, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3738, file: !3, line: 96, column: 36)
!3753 = !DILocation(line: 97, column: 11, scope: !3752)
!3754 = !DILocation(line: 98, column: 5, scope: !3752)
!3755 = !DILocation(line: 100, column: 3, scope: !3739)
!3756 = !DILocation(line: 94, column: 56, scope: !3734)
!3757 = !DILocation(line: 94, column: 3, scope: !3734)
!3758 = distinct !{!3758, !3736, !3759}
!3759 = !DILocation(line: 100, column: 3, scope: !3730)
!3760 = !DILocation(line: 101, column: 7, scope: !3761)
!3761 = distinct !DILexicalBlock(scope: !3731, file: !3, line: 101, column: 7)
!3762 = !DILocation(line: 101, column: 9, scope: !3761)
!3763 = !DILocation(line: 101, column: 7, scope: !3731)
!3764 = !DILocation(line: 102, column: 4, scope: !3761)
!3765 = !DILocation(line: 105, column: 2, scope: !3665)
!3766 = !DILocation(line: 106, column: 1, scope: !3665)
!3767 = distinct !DISubprogram(name: "int340x_thermal_get_trip_temp", scope: !3, file: !3, line: 43, type: !2312, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !200)
!3768 = !DILocalVariable(name: "zone", arg: 1, scope: !3767, file: !3, line: 43, type: !2261)
!3769 = !DILocation(line: 43, column: 70, scope: !3767)
!3770 = !DILocalVariable(name: "trip", arg: 2, scope: !3767, file: !3, line: 44, type: !110)
!3771 = !DILocation(line: 44, column: 11, scope: !3767)
!3772 = !DILocalVariable(name: "temp", arg: 3, scope: !3767, file: !3, line: 44, type: !815)
!3773 = !DILocation(line: 44, column: 22, scope: !3767)
!3774 = !DILocalVariable(name: "d", scope: !3767, file: !3, line: 46, type: !2382)
!3775 = !DILocation(line: 46, column: 30, scope: !3767)
!3776 = !DILocation(line: 46, column: 34, scope: !3767)
!3777 = !DILocation(line: 46, column: 40, scope: !3767)
!3778 = !DILocalVariable(name: "i", scope: !3767, file: !3, line: 47, type: !110)
!3779 = !DILocation(line: 47, column: 6, scope: !3767)
!3780 = !DILocation(line: 49, column: 6, scope: !3781)
!3781 = distinct !DILexicalBlock(scope: !3767, file: !3, line: 49, column: 6)
!3782 = !DILocation(line: 49, column: 9, scope: !3781)
!3783 = !DILocation(line: 49, column: 22, scope: !3781)
!3784 = !DILocation(line: 49, column: 25, scope: !3781)
!3785 = !DILocation(line: 49, column: 28, scope: !3781)
!3786 = !DILocation(line: 49, column: 42, scope: !3781)
!3787 = !DILocation(line: 49, column: 6, scope: !3767)
!3788 = !DILocation(line: 50, column: 10, scope: !3781)
!3789 = !DILocation(line: 50, column: 13, scope: !3781)
!3790 = !DILocation(line: 50, column: 27, scope: !3781)
!3791 = !DILocation(line: 50, column: 41, scope: !3781)
!3792 = !DILocation(line: 50, column: 47, scope: !3781)
!3793 = !DILocation(line: 50, column: 53, scope: !3781)
!3794 = !DILocation(line: 50, column: 3, scope: !3781)
!3795 = !DILocation(line: 52, column: 6, scope: !3796)
!3796 = distinct !DILexicalBlock(scope: !3767, file: !3, line: 52, column: 6)
!3797 = !DILocation(line: 52, column: 13, scope: !3796)
!3798 = !DILocation(line: 52, column: 16, scope: !3796)
!3799 = !DILocation(line: 52, column: 11, scope: !3796)
!3800 = !DILocation(line: 52, column: 6, scope: !3767)
!3801 = !DILocation(line: 53, column: 11, scope: !3796)
!3802 = !DILocation(line: 53, column: 14, scope: !3796)
!3803 = !DILocation(line: 53, column: 24, scope: !3796)
!3804 = !DILocation(line: 53, column: 4, scope: !3796)
!3805 = !DILocation(line: 53, column: 9, scope: !3796)
!3806 = !DILocation(line: 53, column: 3, scope: !3796)
!3807 = !DILocation(line: 54, column: 11, scope: !3808)
!3808 = distinct !DILexicalBlock(scope: !3796, file: !3, line: 54, column: 11)
!3809 = !DILocation(line: 54, column: 19, scope: !3808)
!3810 = !DILocation(line: 54, column: 22, scope: !3808)
!3811 = !DILocation(line: 54, column: 16, scope: !3808)
!3812 = !DILocation(line: 54, column: 11, scope: !3796)
!3813 = !DILocation(line: 55, column: 11, scope: !3808)
!3814 = !DILocation(line: 55, column: 14, scope: !3808)
!3815 = !DILocation(line: 55, column: 4, scope: !3808)
!3816 = !DILocation(line: 55, column: 9, scope: !3808)
!3817 = !DILocation(line: 55, column: 3, scope: !3808)
!3818 = !DILocation(line: 56, column: 11, scope: !3819)
!3819 = distinct !DILexicalBlock(scope: !3808, file: !3, line: 56, column: 11)
!3820 = !DILocation(line: 56, column: 19, scope: !3819)
!3821 = !DILocation(line: 56, column: 22, scope: !3819)
!3822 = !DILocation(line: 56, column: 16, scope: !3819)
!3823 = !DILocation(line: 56, column: 11, scope: !3808)
!3824 = !DILocation(line: 57, column: 11, scope: !3819)
!3825 = !DILocation(line: 57, column: 14, scope: !3819)
!3826 = !DILocation(line: 57, column: 4, scope: !3819)
!3827 = !DILocation(line: 57, column: 9, scope: !3819)
!3828 = !DILocation(line: 57, column: 3, scope: !3819)
!3829 = !DILocation(line: 58, column: 11, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3819, file: !3, line: 58, column: 11)
!3831 = !DILocation(line: 58, column: 19, scope: !3830)
!3832 = !DILocation(line: 58, column: 22, scope: !3830)
!3833 = !DILocation(line: 58, column: 16, scope: !3830)
!3834 = !DILocation(line: 58, column: 11, scope: !3819)
!3835 = !DILocation(line: 59, column: 11, scope: !3830)
!3836 = !DILocation(line: 59, column: 14, scope: !3830)
!3837 = !DILocation(line: 59, column: 4, scope: !3830)
!3838 = !DILocation(line: 59, column: 9, scope: !3830)
!3839 = !DILocation(line: 59, column: 3, scope: !3830)
!3840 = !DILocation(line: 61, column: 10, scope: !3841)
!3841 = distinct !DILexicalBlock(scope: !3842, file: !3, line: 61, column: 3)
!3842 = distinct !DILexicalBlock(scope: !3830, file: !3, line: 60, column: 7)
!3843 = !DILocation(line: 61, column: 8, scope: !3841)
!3844 = !DILocation(line: 61, column: 15, scope: !3845)
!3845 = distinct !DILexicalBlock(scope: !3841, file: !3, line: 61, column: 3)
!3846 = !DILocation(line: 61, column: 17, scope: !3845)
!3847 = !DILocation(line: 61, column: 3, scope: !3841)
!3848 = !DILocation(line: 62, column: 8, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3850, file: !3, line: 62, column: 8)
!3850 = distinct !DILexicalBlock(scope: !3845, file: !3, line: 61, column: 60)
!3851 = !DILocation(line: 62, column: 11, scope: !3849)
!3852 = !DILocation(line: 62, column: 21, scope: !3849)
!3853 = !DILocation(line: 62, column: 24, scope: !3849)
!3854 = !DILocation(line: 62, column: 30, scope: !3849)
!3855 = !DILocation(line: 63, column: 8, scope: !3849)
!3856 = !DILocation(line: 63, column: 11, scope: !3849)
!3857 = !DILocation(line: 63, column: 21, scope: !3849)
!3858 = !DILocation(line: 63, column: 24, scope: !3849)
!3859 = !DILocation(line: 63, column: 30, scope: !3849)
!3860 = !DILocation(line: 63, column: 27, scope: !3849)
!3861 = !DILocation(line: 62, column: 8, scope: !3850)
!3862 = !DILocation(line: 64, column: 13, scope: !3863)
!3863 = distinct !DILexicalBlock(scope: !3849, file: !3, line: 63, column: 36)
!3864 = !DILocation(line: 64, column: 16, scope: !3863)
!3865 = !DILocation(line: 64, column: 26, scope: !3863)
!3866 = !DILocation(line: 64, column: 29, scope: !3863)
!3867 = !DILocation(line: 64, column: 6, scope: !3863)
!3868 = !DILocation(line: 64, column: 11, scope: !3863)
!3869 = !DILocation(line: 65, column: 5, scope: !3863)
!3870 = !DILocation(line: 67, column: 3, scope: !3850)
!3871 = !DILocation(line: 61, column: 56, scope: !3845)
!3872 = !DILocation(line: 61, column: 3, scope: !3845)
!3873 = distinct !{!3873, !3847, !3874}
!3874 = !DILocation(line: 67, column: 3, scope: !3841)
!3875 = !DILocation(line: 68, column: 7, scope: !3876)
!3876 = distinct !DILexicalBlock(scope: !3842, file: !3, line: 68, column: 7)
!3877 = !DILocation(line: 68, column: 9, scope: !3876)
!3878 = !DILocation(line: 68, column: 7, scope: !3842)
!3879 = !DILocation(line: 69, column: 4, scope: !3876)
!3880 = !DILocation(line: 72, column: 2, scope: !3767)
!3881 = !DILocation(line: 73, column: 1, scope: !3767)
!3882 = distinct !DISubprogram(name: "int340x_thermal_set_trip_temp", scope: !3, file: !3, line: 108, type: !2299, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !200)
!3883 = !DILocalVariable(name: "zone", arg: 1, scope: !3882, file: !3, line: 108, type: !2261)
!3884 = !DILocation(line: 108, column: 70, scope: !3882)
!3885 = !DILocalVariable(name: "trip", arg: 2, scope: !3882, file: !3, line: 109, type: !110)
!3886 = !DILocation(line: 109, column: 15, scope: !3882)
!3887 = !DILocalVariable(name: "temp", arg: 3, scope: !3882, file: !3, line: 109, type: !110)
!3888 = !DILocation(line: 109, column: 25, scope: !3882)
!3889 = !DILocalVariable(name: "d", scope: !3882, file: !3, line: 111, type: !2382)
!3890 = !DILocation(line: 111, column: 30, scope: !3882)
!3891 = !DILocation(line: 111, column: 34, scope: !3882)
!3892 = !DILocation(line: 111, column: 40, scope: !3882)
!3893 = !DILocalVariable(name: "status", scope: !3882, file: !3, line: 112, type: !2810)
!3894 = !DILocation(line: 112, column: 14, scope: !3882)
!3895 = !DILocalVariable(name: "name", scope: !3882, file: !3, line: 113, type: !3896)
!3896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 80, elements: !2675)
!3897 = !DILocation(line: 113, column: 7, scope: !3882)
!3898 = !DILocation(line: 115, column: 6, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !3882, file: !3, line: 115, column: 6)
!3900 = !DILocation(line: 115, column: 9, scope: !3899)
!3901 = !DILocation(line: 115, column: 22, scope: !3899)
!3902 = !DILocation(line: 115, column: 25, scope: !3899)
!3903 = !DILocation(line: 115, column: 28, scope: !3899)
!3904 = !DILocation(line: 115, column: 42, scope: !3899)
!3905 = !DILocation(line: 115, column: 6, scope: !3882)
!3906 = !DILocation(line: 116, column: 10, scope: !3899)
!3907 = !DILocation(line: 116, column: 13, scope: !3899)
!3908 = !DILocation(line: 116, column: 27, scope: !3899)
!3909 = !DILocation(line: 116, column: 41, scope: !3899)
!3910 = !DILocation(line: 116, column: 47, scope: !3899)
!3911 = !DILocation(line: 116, column: 53, scope: !3899)
!3912 = !DILocation(line: 116, column: 3, scope: !3899)
!3913 = !DILocation(line: 118, column: 11, scope: !3882)
!3914 = !DILocation(line: 118, column: 40, scope: !3882)
!3915 = !DILocation(line: 118, column: 2, scope: !3882)
!3916 = !DILocation(line: 119, column: 38, scope: !3882)
!3917 = !DILocation(line: 119, column: 41, scope: !3882)
!3918 = !DILocation(line: 119, column: 47, scope: !3882)
!3919 = !DILocation(line: 119, column: 55, scope: !3882)
!3920 = !DILocation(line: 120, column: 32, scope: !3882)
!3921 = !DILocation(line: 120, column: 4, scope: !3882)
!3922 = !DILocation(line: 119, column: 11, scope: !3882)
!3923 = !DILocation(line: 119, column: 9, scope: !3882)
!3924 = !DILocation(line: 121, column: 6, scope: !3925)
!3925 = distinct !DILexicalBlock(scope: !3882, file: !3, line: 121, column: 6)
!3926 = !DILocation(line: 121, column: 6, scope: !3882)
!3927 = !DILocation(line: 122, column: 3, scope: !3925)
!3928 = !DILocation(line: 124, column: 23, scope: !3882)
!3929 = !DILocation(line: 124, column: 2, scope: !3882)
!3930 = !DILocation(line: 124, column: 5, scope: !3882)
!3931 = !DILocation(line: 124, column: 15, scope: !3882)
!3932 = !DILocation(line: 124, column: 21, scope: !3882)
!3933 = !DILocation(line: 126, column: 2, scope: !3882)
!3934 = !DILocation(line: 127, column: 1, scope: !3882)
!3935 = distinct !DISubprogram(name: "int340x_thermal_get_trip_hyst", scope: !3, file: !3, line: 130, type: !2312, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !200)
!3936 = !DILocalVariable(name: "zone", arg: 1, scope: !3935, file: !3, line: 130, type: !2261)
!3937 = !DILocation(line: 130, column: 70, scope: !3935)
!3938 = !DILocalVariable(name: "trip", arg: 2, scope: !3935, file: !3, line: 131, type: !110)
!3939 = !DILocation(line: 131, column: 7, scope: !3935)
!3940 = !DILocalVariable(name: "temp", arg: 3, scope: !3935, file: !3, line: 131, type: !815)
!3941 = !DILocation(line: 131, column: 18, scope: !3935)
!3942 = !DILocalVariable(name: "d", scope: !3935, file: !3, line: 133, type: !2382)
!3943 = !DILocation(line: 133, column: 30, scope: !3935)
!3944 = !DILocation(line: 133, column: 34, scope: !3935)
!3945 = !DILocation(line: 133, column: 40, scope: !3935)
!3946 = !DILocalVariable(name: "status", scope: !3935, file: !3, line: 134, type: !2810)
!3947 = !DILocation(line: 134, column: 14, scope: !3935)
!3948 = !DILocalVariable(name: "hyst", scope: !3935, file: !3, line: 135, type: !348)
!3949 = !DILocation(line: 135, column: 21, scope: !3935)
!3950 = !DILocation(line: 137, column: 6, scope: !3951)
!3951 = distinct !DILexicalBlock(scope: !3935, file: !3, line: 137, column: 6)
!3952 = !DILocation(line: 137, column: 9, scope: !3951)
!3953 = !DILocation(line: 137, column: 22, scope: !3951)
!3954 = !DILocation(line: 137, column: 25, scope: !3951)
!3955 = !DILocation(line: 137, column: 28, scope: !3951)
!3956 = !DILocation(line: 137, column: 42, scope: !3951)
!3957 = !DILocation(line: 137, column: 6, scope: !3935)
!3958 = !DILocation(line: 138, column: 10, scope: !3951)
!3959 = !DILocation(line: 138, column: 13, scope: !3951)
!3960 = !DILocation(line: 138, column: 27, scope: !3951)
!3961 = !DILocation(line: 138, column: 41, scope: !3951)
!3962 = !DILocation(line: 138, column: 47, scope: !3951)
!3963 = !DILocation(line: 138, column: 53, scope: !3951)
!3964 = !DILocation(line: 138, column: 3, scope: !3951)
!3965 = !DILocation(line: 140, column: 33, scope: !3935)
!3966 = !DILocation(line: 140, column: 36, scope: !3935)
!3967 = !DILocation(line: 140, column: 42, scope: !3935)
!3968 = !DILocation(line: 140, column: 11, scope: !3935)
!3969 = !DILocation(line: 140, column: 9, scope: !3935)
!3970 = !DILocation(line: 141, column: 6, scope: !3971)
!3971 = distinct !DILexicalBlock(scope: !3935, file: !3, line: 141, column: 6)
!3972 = !DILocation(line: 141, column: 6, scope: !3935)
!3973 = !DILocation(line: 142, column: 4, scope: !3971)
!3974 = !DILocation(line: 142, column: 9, scope: !3971)
!3975 = !DILocation(line: 142, column: 3, scope: !3971)
!3976 = !DILocation(line: 144, column: 11, scope: !3971)
!3977 = !DILocation(line: 144, column: 16, scope: !3971)
!3978 = !DILocation(line: 144, column: 4, scope: !3971)
!3979 = !DILocation(line: 144, column: 9, scope: !3971)
!3980 = !DILocation(line: 146, column: 2, scope: !3935)
!3981 = !DILocation(line: 147, column: 1, scope: !3935)
!3982 = distinct !DISubprogram(name: "millicelsius_to_deci_kelvin", scope: !3275, file: !3275, line: 65, type: !3276, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !200)
!3983 = !DILocalVariable(name: "t", arg: 1, scope: !3982, file: !3275, line: 65, type: !112)
!3984 = !DILocation(line: 65, column: 53, scope: !3982)
!3985 = !DILocation(line: 67, column: 35, scope: !3982)
!3986 = !DILocation(line: 67, column: 6, scope: !3982)
!3987 = !DILocation(line: 67, column: 4, scope: !3982)
!3988 = !DILocalVariable(name: "__x", scope: !3989, file: !3275, line: 69, type: !112)
!3989 = distinct !DILexicalBlock(scope: !3982, file: !3275, line: 69, column: 9)
!3990 = !DILocation(line: 69, column: 9, scope: !3989)
!3991 = !DILocalVariable(name: "__d", scope: !3989, file: !3275, line: 69, type: !110)
!3992 = !DILocation(line: 69, column: 2, scope: !3982)
!3993 = distinct !DISubprogram(name: "millicelsius_to_milli_kelvin", scope: !3275, file: !3275, line: 14, type: !3276, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !200)
!3994 = !DILocalVariable(name: "t", arg: 1, scope: !3993, file: !3275, line: 14, type: !112)
!3995 = !DILocation(line: 14, column: 54, scope: !3993)
!3996 = !DILocation(line: 16, column: 9, scope: !3993)
!3997 = !DILocation(line: 16, column: 11, scope: !3993)
!3998 = !DILocation(line: 16, column: 2, scope: !3993)
