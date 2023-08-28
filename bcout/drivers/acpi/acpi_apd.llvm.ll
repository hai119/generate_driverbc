; ModuleID = '../bcout/drivers/acpi/acpi_apd.llvm.bc'
source_filename = "drivers/acpi/acpi_apd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_scan_handler = type { %struct.acpi_device_id*, %struct.list_head, i1 (i8*, %struct.acpi_device_id**)*, i32 (%struct.acpi_device*, %struct.acpi_device_id*)*, void (%struct.acpi_device*)*, void (%struct.device*)*, void (%struct.device*)*, %struct.acpi_hotplug_profile }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.acpi_device = type { i32, i8*, %struct.fwnode_handle, %struct.acpi_device*, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.acpi_device_status, %struct.acpi_device_flags, %struct.acpi_device_pnp, %struct.acpi_device_power, %struct.acpi_device_wakeup, %struct.acpi_device_perf, %struct.acpi_device_dir, %struct.acpi_device_data, %struct.acpi_scan_handler*, %struct.acpi_hotplug_context*, %struct.acpi_driver*, %struct.acpi_gpio_mapping*, i8*, %struct.device, i32, i32, %struct.list_head, %struct.mutex, void (%struct.acpi_device*)* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
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
%struct.wakeup_source = type { i8*, i32, %struct.list_head, %struct.spinlock, %struct.wake_irq*, %struct.timer_list, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.device*, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.wake_irq = type opaque
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.acpi_device_perf = type { i32, %struct.acpi_device_perf_flags, i32, %struct.acpi_device_perf_state* }
%struct.acpi_device_perf_flags = type { i8 }
%struct.acpi_device_perf_state = type { %struct.anon.46, i8, i8, i32 }
%struct.anon.46 = type { i8 }
%struct.acpi_device_dir = type { %struct.proc_dir_entry* }
%struct.proc_dir_entry = type opaque
%struct.acpi_device_data = type { %union.acpi_object*, %struct.list_head, %union.acpi_object*, %struct.list_head }
%struct.acpi_hotplug_context = type { %struct.acpi_device*, i32 (%struct.acpi_device*, i32)*, void (%struct.acpi_device*, i32)*, void (%struct.acpi_device*)* }
%struct.acpi_driver = type { [80 x i8], [80 x i8], %struct.acpi_device_id*, i32, %struct.acpi_device_ops, %struct.device_driver, %struct.module* }
%struct.acpi_device_ops = type { i32 (%struct.acpi_device*)*, i32 (%struct.acpi_device*)*, void (%struct.acpi_device*, i32)* }
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
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
%struct.attribute = type { i8*, i16 }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.driver_private = type opaque
%struct.module = type opaque
%struct.acpi_gpio_mapping = type opaque
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i8, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, %struct.wakeup_source*, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, %struct.wake_irq*, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i64, i64, i64, i64, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
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
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.acpi_hotplug_profile = type { %struct.kobject, i32 (%struct.acpi_device*)*, void (%struct.acpi_device*)*, i8 }
%struct.kmem_cache = type opaque
%struct.apd_device_desc = type { i32, %struct.property_entry*, i32 (%struct.apd_private_data*)* }
%struct.property_entry = type { i8*, i64, i8, i32, %union.anon.47 }
%union.anon.47 = type { i8* }
%struct.apd_private_data = type { %struct.clk*, %struct.acpi_device*, %struct.apd_device_desc* }
%struct.clk = type opaque
%struct.platform_device = type { i8*, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, %struct.resource*, %struct.platform_device_id*, i8*, %struct.mfd_cell*, %struct.pdev_archdata }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.platform_device_id = type { [20 x i8], i64 }
%struct.mfd_cell = type opaque
%struct.pdev_archdata = type {}

@apd_handler = internal global %struct.acpi_scan_handler { %struct.acpi_device_id* getelementptr inbounds ([1 x %struct.acpi_device_id], [1 x %struct.acpi_device_id]* @acpi_apd_device_ids, i32 0, i32 0), %struct.list_head zeroinitializer, i1 (i8*, %struct.acpi_device_id**)* null, i32 (%struct.acpi_device*, %struct.acpi_device_id*)* @acpi_apd_create_device, void (%struct.acpi_device*)* null, void (%struct.device*)* null, void (%struct.device*)* null, %struct.acpi_hotplug_profile zeroinitializer }, align 8, !dbg !0
@acpi_apd_device_ids = internal constant [1 x %struct.acpi_device_id] zeroinitializer, align 16, !dbg !87
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_apd_init() #0 section ".init.text" !dbg !2439 {
entry:
  %call = call i32 @acpi_scan_add_handler(%struct.acpi_scan_handler* @apd_handler) #7, !dbg !2442
  ret void, !dbg !2443
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_scan_add_handler(%struct.acpi_scan_handler*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_apd_create_device(%struct.acpi_device* %adev, %struct.acpi_device_id* %id) #2 !dbg !2444 {
entry:
  %retval = alloca i32, align 4
  %adev.addr = alloca %struct.acpi_device*, align 8
  %id.addr = alloca %struct.acpi_device_id*, align 8
  %dev_desc = alloca %struct.apd_device_desc*, align 8
  %pdata = alloca %struct.apd_private_data*, align 8
  %pdev = alloca %struct.platform_device*, align 8
  %ret = alloca i32, align 4
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !2445, metadata !DIExpression()), !dbg !2446
  store %struct.acpi_device_id* %id, %struct.acpi_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device_id** %id.addr, metadata !2447, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.declare(metadata %struct.apd_device_desc** %dev_desc, metadata !2449, metadata !DIExpression()), !dbg !2493
  %0 = load %struct.acpi_device_id*, %struct.acpi_device_id** %id.addr, align 8, !dbg !2494
  %driver_data = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %0, i32 0, i32 1, !dbg !2495
  %1 = load i64, i64* %driver_data, align 8, !dbg !2495
  %2 = inttoptr i64 %1 to i8*, !dbg !2496
  %3 = bitcast i8* %2 to %struct.apd_device_desc*, !dbg !2496
  store %struct.apd_device_desc* %3, %struct.apd_device_desc** %dev_desc, align 8, !dbg !2493
  call void @llvm.dbg.declare(metadata %struct.apd_private_data** %pdata, metadata !2497, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev, metadata !2499, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2539, metadata !DIExpression()), !dbg !2540
  %4 = load %struct.apd_device_desc*, %struct.apd_device_desc** %dev_desc, align 8, !dbg !2541
  %tobool = icmp ne %struct.apd_device_desc* %4, null, !dbg !2541
  br i1 %tobool, label %if.end, label %if.then, !dbg !2543

if.then:                                          ; preds = %entry
  %5 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !2544
  %call = call %struct.platform_device* @acpi_create_platform_device(%struct.acpi_device* %5, %struct.property_entry* null) #7, !dbg !2546
  store %struct.platform_device* %call, %struct.platform_device** %pdev, align 8, !dbg !2547
  %6 = load %struct.platform_device*, %struct.platform_device** %pdev, align 8, !dbg !2548
  %7 = bitcast %struct.platform_device* %6 to i8*, !dbg !2548
  %call1 = call zeroext i1 @IS_ERR_OR_NULL(i8* %7) #7, !dbg !2549
  br i1 %call1, label %cond.true, label %cond.false, !dbg !2549

cond.true:                                        ; preds = %if.then
  %8 = load %struct.platform_device*, %struct.platform_device** %pdev, align 8, !dbg !2550
  %9 = bitcast %struct.platform_device* %8 to i8*, !dbg !2550
  %call2 = call i64 @PTR_ERR(i8* %9) #7, !dbg !2551
  br label %cond.end, !dbg !2549

cond.false:                                       ; preds = %if.then
  br label %cond.end, !dbg !2549

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call2, %cond.true ], [ 1, %cond.false ], !dbg !2549
  %conv = trunc i64 %cond to i32, !dbg !2549
  store i32 %conv, i32* %retval, align 4, !dbg !2552
  br label %return, !dbg !2552

if.end:                                           ; preds = %entry
  %call3 = call i8* @kzalloc(i64 24, i32 3264) #7, !dbg !2553
  %10 = bitcast i8* %call3 to %struct.apd_private_data*, !dbg !2553
  store %struct.apd_private_data* %10, %struct.apd_private_data** %pdata, align 8, !dbg !2554
  %11 = load %struct.apd_private_data*, %struct.apd_private_data** %pdata, align 8, !dbg !2555
  %tobool4 = icmp ne %struct.apd_private_data* %11, null, !dbg !2555
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !2557

if.then5:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !2558
  br label %return, !dbg !2558

if.end6:                                          ; preds = %if.end
  %12 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !2559
  %13 = load %struct.apd_private_data*, %struct.apd_private_data** %pdata, align 8, !dbg !2560
  %adev7 = getelementptr inbounds %struct.apd_private_data, %struct.apd_private_data* %13, i32 0, i32 1, !dbg !2561
  store %struct.acpi_device* %12, %struct.acpi_device** %adev7, align 8, !dbg !2562
  %14 = load %struct.apd_device_desc*, %struct.apd_device_desc** %dev_desc, align 8, !dbg !2563
  %15 = load %struct.apd_private_data*, %struct.apd_private_data** %pdata, align 8, !dbg !2564
  %dev_desc8 = getelementptr inbounds %struct.apd_private_data, %struct.apd_private_data* %15, i32 0, i32 2, !dbg !2565
  store %struct.apd_device_desc* %14, %struct.apd_device_desc** %dev_desc8, align 8, !dbg !2566
  %16 = load %struct.apd_device_desc*, %struct.apd_device_desc** %dev_desc, align 8, !dbg !2567
  %setup = getelementptr inbounds %struct.apd_device_desc, %struct.apd_device_desc* %16, i32 0, i32 2, !dbg !2569
  %17 = load i32 (%struct.apd_private_data*)*, i32 (%struct.apd_private_data*)** %setup, align 8, !dbg !2569
  %tobool9 = icmp ne i32 (%struct.apd_private_data*)* %17, null, !dbg !2567
  br i1 %tobool9, label %if.then10, label %if.end16, !dbg !2570

if.then10:                                        ; preds = %if.end6
  %18 = load %struct.apd_device_desc*, %struct.apd_device_desc** %dev_desc, align 8, !dbg !2571
  %setup11 = getelementptr inbounds %struct.apd_device_desc, %struct.apd_device_desc* %18, i32 0, i32 2, !dbg !2573
  %19 = load i32 (%struct.apd_private_data*)*, i32 (%struct.apd_private_data*)** %setup11, align 8, !dbg !2573
  %20 = load %struct.apd_private_data*, %struct.apd_private_data** %pdata, align 8, !dbg !2574
  %call12 = call i32 %19(%struct.apd_private_data* %20) #7, !dbg !2571
  store i32 %call12, i32* %ret, align 4, !dbg !2575
  %21 = load i32, i32* %ret, align 4, !dbg !2576
  %tobool13 = icmp ne i32 %21, 0, !dbg !2576
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !2578

if.then14:                                        ; preds = %if.then10
  br label %err_out, !dbg !2579

if.end15:                                         ; preds = %if.then10
  br label %if.end16, !dbg !2580

if.end16:                                         ; preds = %if.end15, %if.end6
  %22 = load %struct.apd_private_data*, %struct.apd_private_data** %pdata, align 8, !dbg !2581
  %23 = bitcast %struct.apd_private_data* %22 to i8*, !dbg !2581
  %24 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !2582
  %driver_data17 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %24, i32 0, i32 20, !dbg !2583
  store i8* %23, i8** %driver_data17, align 8, !dbg !2584
  %25 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !2585
  %26 = load %struct.apd_device_desc*, %struct.apd_device_desc** %dev_desc, align 8, !dbg !2586
  %properties = getelementptr inbounds %struct.apd_device_desc, %struct.apd_device_desc* %26, i32 0, i32 1, !dbg !2587
  %27 = load %struct.property_entry*, %struct.property_entry** %properties, align 8, !dbg !2587
  %call18 = call %struct.platform_device* @acpi_create_platform_device(%struct.acpi_device* %25, %struct.property_entry* %27) #7, !dbg !2588
  store %struct.platform_device* %call18, %struct.platform_device** %pdev, align 8, !dbg !2589
  %28 = load %struct.platform_device*, %struct.platform_device** %pdev, align 8, !dbg !2590
  %29 = bitcast %struct.platform_device* %28 to i8*, !dbg !2590
  %call19 = call zeroext i1 @IS_ERR_OR_NULL(i8* %29) #7, !dbg !2592
  br i1 %call19, label %if.end21, label %if.then20, !dbg !2593

if.then20:                                        ; preds = %if.end16
  store i32 1, i32* %retval, align 4, !dbg !2594
  br label %return, !dbg !2594

if.end21:                                         ; preds = %if.end16
  %30 = load %struct.platform_device*, %struct.platform_device** %pdev, align 8, !dbg !2595
  %31 = bitcast %struct.platform_device* %30 to i8*, !dbg !2595
  %call22 = call i64 @PTR_ERR(i8* %31) #7, !dbg !2596
  %conv23 = trunc i64 %call22 to i32, !dbg !2596
  store i32 %conv23, i32* %ret, align 4, !dbg !2597
  %32 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !2598
  %driver_data24 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %32, i32 0, i32 20, !dbg !2599
  store i8* null, i8** %driver_data24, align 8, !dbg !2600
  br label %err_out, !dbg !2598

err_out:                                          ; preds = %if.end21, %if.then14
  call void @llvm.dbg.label(metadata !2601), !dbg !2602
  %33 = load %struct.apd_private_data*, %struct.apd_private_data** %pdata, align 8, !dbg !2603
  %34 = bitcast %struct.apd_private_data* %33 to i8*, !dbg !2603
  call void @kfree(i8* %34) #7, !dbg !2604
  %35 = load i32, i32* %ret, align 4, !dbg !2605
  store i32 %35, i32* %retval, align 4, !dbg !2606
  br label %return, !dbg !2606

return:                                           ; preds = %err_out, %if.then20, %if.then5, %cond.end
  %36 = load i32, i32* %retval, align 4, !dbg !2607
  ret i32 %36, !dbg !2607
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noredzone
declare dso_local %struct.platform_device* @acpi_create_platform_device(%struct.acpi_device*, %struct.property_entry*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR_OR_NULL(i8* %ptr) #2 !dbg !2608 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2612, metadata !DIExpression()), !dbg !2613
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2614
  %tobool = icmp ne i8* %0, null, !dbg !2614
  %lnot = xor i1 %tobool, true, !dbg !2614
  %lnot1 = xor i1 %lnot, true, !dbg !2614
  %lnot2 = xor i1 %lnot1, true, !dbg !2614
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2614
  %conv = sext i32 %lnot.ext to i64, !dbg !2614
  %tobool3 = icmp ne i64 %conv, 0, !dbg !2614
  br i1 %tobool3, label %lor.end, label %lor.rhs, !dbg !2615

lor.rhs:                                          ; preds = %entry
  %1 = load i8*, i8** %ptr.addr, align 8, !dbg !2616
  %2 = ptrtoint i8* %1 to i64, !dbg !2616
  %3 = inttoptr i64 %2 to i8*, !dbg !2616
  %4 = ptrtoint i8* %3 to i64, !dbg !2616
  %cmp = icmp uge i64 %4, -4095, !dbg !2616
  %lnot5 = xor i1 %cmp, true, !dbg !2616
  %lnot7 = xor i1 %lnot5, true, !dbg !2616
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !2616
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !2616
  %tobool10 = icmp ne i64 %conv9, 0, !dbg !2615
  br label %lor.end, !dbg !2615

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %tobool10, %lor.rhs ]
  ret i1 %5, !dbg !2617
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #2 !dbg !2618 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2621, metadata !DIExpression()), !dbg !2622
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2623
  %1 = ptrtoint i8* %0 to i64, !dbg !2624
  ret i64 %1, !dbg !2625
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #2 !dbg !2626 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2629, metadata !DIExpression()), !dbg !2633
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2639, metadata !DIExpression()), !dbg !2640
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2641, metadata !DIExpression()), !dbg !2642
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2643, metadata !DIExpression()), !dbg !2644
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2645, metadata !DIExpression()), !dbg !2649
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2651, metadata !DIExpression()), !dbg !2655
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2657, metadata !DIExpression()), !dbg !2661
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !2666, metadata !DIExpression()), !dbg !2667
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !2668, metadata !DIExpression()), !dbg !2669
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2670, metadata !DIExpression()), !dbg !2671
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !2672, metadata !DIExpression()), !dbg !2673
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !2674, metadata !DIExpression()), !dbg !2675
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2676, metadata !DIExpression()), !dbg !2677
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !2678, metadata !DIExpression()), !dbg !2679
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !2680, metadata !DIExpression()), !dbg !2681
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2682, metadata !DIExpression()), !dbg !2683
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2684, metadata !DIExpression()), !dbg !2685
  %0 = load i64, i64* %size.addr, align 8, !dbg !2686
  %1 = load i32, i32* %flags.addr, align 4, !dbg !2687
  %or = or i32 %1, 256, !dbg !2688
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !2689
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #8, !dbg !2690
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !2691

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !2692
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !2693
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !2694

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !2695
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !2696
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !2697
  %call.i.i = call i32 @get_order(i64 %7) #9, !dbg !2698
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !2675
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !2699
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !2700
  %10 = load i32, i32* %order.i.i, align 4, !dbg !2701
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !2702
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !2703
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !2704
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #10, !dbg !2705
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !2705
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !2705
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !2705
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !2705
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !2706
  br label %kmalloc.exit, !dbg !2706

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !2707
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2708
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !2708
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !2710

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !2711
  br label %kmalloc_index.exit.i, !dbg !2711

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2712
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !2714
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !2715

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2716
  br label %kmalloc_index.exit.i, !dbg !2716

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2717
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !2719
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !2720

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2721
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !2722
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !2723

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !2724
  br label %kmalloc_index.exit.i, !dbg !2724

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2725
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !2727
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !2728

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2729
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !2730
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !2731

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !2732
  br label %kmalloc_index.exit.i, !dbg !2732

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2733
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !2735
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !2736

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2737
  br label %kmalloc_index.exit.i, !dbg !2737

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2738
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !2740
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !2741

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !2742
  br label %kmalloc_index.exit.i, !dbg !2742

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2743
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !2745
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !2746

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !2747
  br label %kmalloc_index.exit.i, !dbg !2747

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2748
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !2750
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !2751

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !2752
  br label %kmalloc_index.exit.i, !dbg !2752

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2753
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !2755
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !2756

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !2757
  br label %kmalloc_index.exit.i, !dbg !2757

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2758
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !2760
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !2761

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !2762
  br label %kmalloc_index.exit.i, !dbg !2762

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2763
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !2765
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !2766

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !2767
  br label %kmalloc_index.exit.i, !dbg !2767

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2768
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !2770
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !2771

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !2772
  br label %kmalloc_index.exit.i, !dbg !2772

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2773
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !2775
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !2776

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !2777
  br label %kmalloc_index.exit.i, !dbg !2777

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2778
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !2780
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !2781

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !2782
  br label %kmalloc_index.exit.i, !dbg !2782

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2783
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !2785
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !2786

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !2787
  br label %kmalloc_index.exit.i, !dbg !2787

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2788
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !2790
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !2791

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !2792
  br label %kmalloc_index.exit.i, !dbg !2792

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2793
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !2795
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !2796

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !2797
  br label %kmalloc_index.exit.i, !dbg !2797

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2798
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !2800
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !2801

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !2802
  br label %kmalloc_index.exit.i, !dbg !2802

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2803
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !2805
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !2806

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !2807
  br label %kmalloc_index.exit.i, !dbg !2807

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2808
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !2810
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !2811

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !2812
  br label %kmalloc_index.exit.i, !dbg !2812

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2813
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !2815
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !2816

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !2817
  br label %kmalloc_index.exit.i, !dbg !2817

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2818
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !2820
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !2821

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !2822
  br label %kmalloc_index.exit.i, !dbg !2822

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2823
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !2825
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !2826

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !2827
  br label %kmalloc_index.exit.i, !dbg !2827

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2828
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !2830
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !2831

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !2832
  br label %kmalloc_index.exit.i, !dbg !2832

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2833
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !2835
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !2836

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !2837
  br label %kmalloc_index.exit.i, !dbg !2837

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2838
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !2840
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !2841

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !2842
  br label %kmalloc_index.exit.i, !dbg !2842

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2843
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !2845
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !2846

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !2847
  br label %kmalloc_index.exit.i, !dbg !2847

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2848
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !2850
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !2851

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !2852
  br label %kmalloc_index.exit.i, !dbg !2852

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !2853, !srcloc !2856
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 102) #8, !dbg !2857, !srcloc !2860
  unreachable, !dbg !2861

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !2862
  store i32 %45, i32* %index.i, align 4, !dbg !2863
  %46 = load i32, i32* %index.i, align 4, !dbg !2864
  %tobool.i = icmp ne i32 %46, 0, !dbg !2864
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !2866

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !2867
  br label %kmalloc.exit, !dbg !2867

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !2868
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2869
  %and.i.i = and i32 %48, 17, !dbg !2869
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !2869
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !2869
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !2869
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !2869
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !2871

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !2872
  br label %kmalloc_type.exit.i, !dbg !2872

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2873
  %and2.i.i = and i32 %49, 1, !dbg !2874
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !2873
  %50 = zext i1 %tobool3.i.i to i64, !dbg !2873
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !2873
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !2875
  br label %kmalloc_type.exit.i, !dbg !2875

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !2876
  %idxprom.i = zext i32 %51 to i64, !dbg !2877
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !2877
  %52 = load i32, i32* %index.i, align 4, !dbg !2878
  %idxprom6.i = zext i32 %52 to i64, !dbg !2877
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !2877
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !2877
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !2879
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !2880
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2881
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2882
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #10, !dbg !2883
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !2883
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !2883
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !2883
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !2883
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !2644
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2884
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !2885
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !2886
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2887
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #10, !dbg !2888
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !2889
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !2890
  store i8* %62, i8** %retval.i, align 8, !dbg !2891
  br label %kmalloc.exit, !dbg !2891

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !2892
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !2893
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #10, !dbg !2894
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !2894
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !2894
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !2894
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !2894
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !2895
  br label %kmalloc.exit, !dbg !2895

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !2896
  ret i8* %65, !dbg !2897
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #1

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !2898 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !2902, metadata !DIExpression()), !dbg !2907
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !2909, metadata !DIExpression()), !dbg !2910
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2911, metadata !DIExpression()), !dbg !2912
  %0 = load i64, i64* %size.addr, align 8, !dbg !2913
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2915
  br i1 %1, label %if.then, label %if.end447, !dbg !2916

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !2917
  %tobool = icmp ne i64 %2, 0, !dbg !2917
  br i1 %tobool, label %if.end, label %if.then1, !dbg !2920

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !2921
  br label %return, !dbg !2921

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !2922
  %cmp = icmp ult i64 %3, 4096, !dbg !2924
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !2925

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !2926
  br label %return, !dbg !2926

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub = sub i64 %4, 1, !dbg !2927
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !2927
  br i1 %5, label %cond.true, label %cond.false442, !dbg !2927

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub4 = sub i64 %6, 1, !dbg !2927
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !2927
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !2927

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub6 = sub i64 %8, 1, !dbg !2927
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !2927
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !2927

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !2927

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub9 = sub i64 %9, 1, !dbg !2927
  %and = and i64 %sub9, -9223372036854775808, !dbg !2927
  %tobool10 = icmp ne i64 %and, 0, !dbg !2927
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !2927

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !2927

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub13 = sub i64 %10, 1, !dbg !2927
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !2927
  %tobool15 = icmp ne i64 %and14, 0, !dbg !2927
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !2927

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !2927

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub18 = sub i64 %11, 1, !dbg !2927
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !2927
  %tobool20 = icmp ne i64 %and19, 0, !dbg !2927
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !2927

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !2927

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub23 = sub i64 %12, 1, !dbg !2927
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !2927
  %tobool25 = icmp ne i64 %and24, 0, !dbg !2927
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !2927

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !2927

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub28 = sub i64 %13, 1, !dbg !2927
  %and29 = and i64 %sub28, 576460752303423488, !dbg !2927
  %tobool30 = icmp ne i64 %and29, 0, !dbg !2927
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !2927

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !2927

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub33 = sub i64 %14, 1, !dbg !2927
  %and34 = and i64 %sub33, 288230376151711744, !dbg !2927
  %tobool35 = icmp ne i64 %and34, 0, !dbg !2927
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !2927

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !2927

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub38 = sub i64 %15, 1, !dbg !2927
  %and39 = and i64 %sub38, 144115188075855872, !dbg !2927
  %tobool40 = icmp ne i64 %and39, 0, !dbg !2927
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !2927

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !2927

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub43 = sub i64 %16, 1, !dbg !2927
  %and44 = and i64 %sub43, 72057594037927936, !dbg !2927
  %tobool45 = icmp ne i64 %and44, 0, !dbg !2927
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !2927

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !2927

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub48 = sub i64 %17, 1, !dbg !2927
  %and49 = and i64 %sub48, 36028797018963968, !dbg !2927
  %tobool50 = icmp ne i64 %and49, 0, !dbg !2927
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !2927

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !2927

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub53 = sub i64 %18, 1, !dbg !2927
  %and54 = and i64 %sub53, 18014398509481984, !dbg !2927
  %tobool55 = icmp ne i64 %and54, 0, !dbg !2927
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !2927

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !2927

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub58 = sub i64 %19, 1, !dbg !2927
  %and59 = and i64 %sub58, 9007199254740992, !dbg !2927
  %tobool60 = icmp ne i64 %and59, 0, !dbg !2927
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !2927

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !2927

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub63 = sub i64 %20, 1, !dbg !2927
  %and64 = and i64 %sub63, 4503599627370496, !dbg !2927
  %tobool65 = icmp ne i64 %and64, 0, !dbg !2927
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !2927

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !2927

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub68 = sub i64 %21, 1, !dbg !2927
  %and69 = and i64 %sub68, 2251799813685248, !dbg !2927
  %tobool70 = icmp ne i64 %and69, 0, !dbg !2927
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !2927

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !2927

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub73 = sub i64 %22, 1, !dbg !2927
  %and74 = and i64 %sub73, 1125899906842624, !dbg !2927
  %tobool75 = icmp ne i64 %and74, 0, !dbg !2927
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !2927

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !2927

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub78 = sub i64 %23, 1, !dbg !2927
  %and79 = and i64 %sub78, 562949953421312, !dbg !2927
  %tobool80 = icmp ne i64 %and79, 0, !dbg !2927
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !2927

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !2927

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub83 = sub i64 %24, 1, !dbg !2927
  %and84 = and i64 %sub83, 281474976710656, !dbg !2927
  %tobool85 = icmp ne i64 %and84, 0, !dbg !2927
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !2927

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !2927

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub88 = sub i64 %25, 1, !dbg !2927
  %and89 = and i64 %sub88, 140737488355328, !dbg !2927
  %tobool90 = icmp ne i64 %and89, 0, !dbg !2927
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !2927

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !2927

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub93 = sub i64 %26, 1, !dbg !2927
  %and94 = and i64 %sub93, 70368744177664, !dbg !2927
  %tobool95 = icmp ne i64 %and94, 0, !dbg !2927
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !2927

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !2927

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub98 = sub i64 %27, 1, !dbg !2927
  %and99 = and i64 %sub98, 35184372088832, !dbg !2927
  %tobool100 = icmp ne i64 %and99, 0, !dbg !2927
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !2927

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !2927

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub103 = sub i64 %28, 1, !dbg !2927
  %and104 = and i64 %sub103, 17592186044416, !dbg !2927
  %tobool105 = icmp ne i64 %and104, 0, !dbg !2927
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !2927

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !2927

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub108 = sub i64 %29, 1, !dbg !2927
  %and109 = and i64 %sub108, 8796093022208, !dbg !2927
  %tobool110 = icmp ne i64 %and109, 0, !dbg !2927
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !2927

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !2927

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub113 = sub i64 %30, 1, !dbg !2927
  %and114 = and i64 %sub113, 4398046511104, !dbg !2927
  %tobool115 = icmp ne i64 %and114, 0, !dbg !2927
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !2927

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !2927

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub118 = sub i64 %31, 1, !dbg !2927
  %and119 = and i64 %sub118, 2199023255552, !dbg !2927
  %tobool120 = icmp ne i64 %and119, 0, !dbg !2927
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !2927

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !2927

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub123 = sub i64 %32, 1, !dbg !2927
  %and124 = and i64 %sub123, 1099511627776, !dbg !2927
  %tobool125 = icmp ne i64 %and124, 0, !dbg !2927
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !2927

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !2927

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub128 = sub i64 %33, 1, !dbg !2927
  %and129 = and i64 %sub128, 549755813888, !dbg !2927
  %tobool130 = icmp ne i64 %and129, 0, !dbg !2927
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !2927

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !2927

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub133 = sub i64 %34, 1, !dbg !2927
  %and134 = and i64 %sub133, 274877906944, !dbg !2927
  %tobool135 = icmp ne i64 %and134, 0, !dbg !2927
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !2927

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !2927

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub138 = sub i64 %35, 1, !dbg !2927
  %and139 = and i64 %sub138, 137438953472, !dbg !2927
  %tobool140 = icmp ne i64 %and139, 0, !dbg !2927
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !2927

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !2927

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub143 = sub i64 %36, 1, !dbg !2927
  %and144 = and i64 %sub143, 68719476736, !dbg !2927
  %tobool145 = icmp ne i64 %and144, 0, !dbg !2927
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !2927

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !2927

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub148 = sub i64 %37, 1, !dbg !2927
  %and149 = and i64 %sub148, 34359738368, !dbg !2927
  %tobool150 = icmp ne i64 %and149, 0, !dbg !2927
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !2927

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !2927

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub153 = sub i64 %38, 1, !dbg !2927
  %and154 = and i64 %sub153, 17179869184, !dbg !2927
  %tobool155 = icmp ne i64 %and154, 0, !dbg !2927
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !2927

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !2927

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub158 = sub i64 %39, 1, !dbg !2927
  %and159 = and i64 %sub158, 8589934592, !dbg !2927
  %tobool160 = icmp ne i64 %and159, 0, !dbg !2927
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !2927

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !2927

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub163 = sub i64 %40, 1, !dbg !2927
  %and164 = and i64 %sub163, 4294967296, !dbg !2927
  %tobool165 = icmp ne i64 %and164, 0, !dbg !2927
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !2927

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !2927

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub168 = sub i64 %41, 1, !dbg !2927
  %and169 = and i64 %sub168, 2147483648, !dbg !2927
  %tobool170 = icmp ne i64 %and169, 0, !dbg !2927
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !2927

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !2927

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub173 = sub i64 %42, 1, !dbg !2927
  %and174 = and i64 %sub173, 1073741824, !dbg !2927
  %tobool175 = icmp ne i64 %and174, 0, !dbg !2927
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !2927

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !2927

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub178 = sub i64 %43, 1, !dbg !2927
  %and179 = and i64 %sub178, 536870912, !dbg !2927
  %tobool180 = icmp ne i64 %and179, 0, !dbg !2927
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !2927

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !2927

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub183 = sub i64 %44, 1, !dbg !2927
  %and184 = and i64 %sub183, 268435456, !dbg !2927
  %tobool185 = icmp ne i64 %and184, 0, !dbg !2927
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !2927

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !2927

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub188 = sub i64 %45, 1, !dbg !2927
  %and189 = and i64 %sub188, 134217728, !dbg !2927
  %tobool190 = icmp ne i64 %and189, 0, !dbg !2927
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !2927

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !2927

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub193 = sub i64 %46, 1, !dbg !2927
  %and194 = and i64 %sub193, 67108864, !dbg !2927
  %tobool195 = icmp ne i64 %and194, 0, !dbg !2927
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !2927

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !2927

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub198 = sub i64 %47, 1, !dbg !2927
  %and199 = and i64 %sub198, 33554432, !dbg !2927
  %tobool200 = icmp ne i64 %and199, 0, !dbg !2927
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !2927

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !2927

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub203 = sub i64 %48, 1, !dbg !2927
  %and204 = and i64 %sub203, 16777216, !dbg !2927
  %tobool205 = icmp ne i64 %and204, 0, !dbg !2927
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !2927

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !2927

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub208 = sub i64 %49, 1, !dbg !2927
  %and209 = and i64 %sub208, 8388608, !dbg !2927
  %tobool210 = icmp ne i64 %and209, 0, !dbg !2927
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !2927

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !2927

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub213 = sub i64 %50, 1, !dbg !2927
  %and214 = and i64 %sub213, 4194304, !dbg !2927
  %tobool215 = icmp ne i64 %and214, 0, !dbg !2927
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !2927

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !2927

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub218 = sub i64 %51, 1, !dbg !2927
  %and219 = and i64 %sub218, 2097152, !dbg !2927
  %tobool220 = icmp ne i64 %and219, 0, !dbg !2927
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !2927

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !2927

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub223 = sub i64 %52, 1, !dbg !2927
  %and224 = and i64 %sub223, 1048576, !dbg !2927
  %tobool225 = icmp ne i64 %and224, 0, !dbg !2927
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !2927

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !2927

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub228 = sub i64 %53, 1, !dbg !2927
  %and229 = and i64 %sub228, 524288, !dbg !2927
  %tobool230 = icmp ne i64 %and229, 0, !dbg !2927
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !2927

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !2927

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub233 = sub i64 %54, 1, !dbg !2927
  %and234 = and i64 %sub233, 262144, !dbg !2927
  %tobool235 = icmp ne i64 %and234, 0, !dbg !2927
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !2927

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !2927

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub238 = sub i64 %55, 1, !dbg !2927
  %and239 = and i64 %sub238, 131072, !dbg !2927
  %tobool240 = icmp ne i64 %and239, 0, !dbg !2927
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !2927

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !2927

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub243 = sub i64 %56, 1, !dbg !2927
  %and244 = and i64 %sub243, 65536, !dbg !2927
  %tobool245 = icmp ne i64 %and244, 0, !dbg !2927
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !2927

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !2927

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub248 = sub i64 %57, 1, !dbg !2927
  %and249 = and i64 %sub248, 32768, !dbg !2927
  %tobool250 = icmp ne i64 %and249, 0, !dbg !2927
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !2927

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !2927

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub253 = sub i64 %58, 1, !dbg !2927
  %and254 = and i64 %sub253, 16384, !dbg !2927
  %tobool255 = icmp ne i64 %and254, 0, !dbg !2927
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !2927

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !2927

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub258 = sub i64 %59, 1, !dbg !2927
  %and259 = and i64 %sub258, 8192, !dbg !2927
  %tobool260 = icmp ne i64 %and259, 0, !dbg !2927
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !2927

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !2927

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub263 = sub i64 %60, 1, !dbg !2927
  %and264 = and i64 %sub263, 4096, !dbg !2927
  %tobool265 = icmp ne i64 %and264, 0, !dbg !2927
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !2927

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !2927

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub268 = sub i64 %61, 1, !dbg !2927
  %and269 = and i64 %sub268, 2048, !dbg !2927
  %tobool270 = icmp ne i64 %and269, 0, !dbg !2927
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !2927

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !2927

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub273 = sub i64 %62, 1, !dbg !2927
  %and274 = and i64 %sub273, 1024, !dbg !2927
  %tobool275 = icmp ne i64 %and274, 0, !dbg !2927
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !2927

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !2927

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub278 = sub i64 %63, 1, !dbg !2927
  %and279 = and i64 %sub278, 512, !dbg !2927
  %tobool280 = icmp ne i64 %and279, 0, !dbg !2927
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !2927

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !2927

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub283 = sub i64 %64, 1, !dbg !2927
  %and284 = and i64 %sub283, 256, !dbg !2927
  %tobool285 = icmp ne i64 %and284, 0, !dbg !2927
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !2927

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !2927

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub288 = sub i64 %65, 1, !dbg !2927
  %and289 = and i64 %sub288, 128, !dbg !2927
  %tobool290 = icmp ne i64 %and289, 0, !dbg !2927
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !2927

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !2927

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub293 = sub i64 %66, 1, !dbg !2927
  %and294 = and i64 %sub293, 64, !dbg !2927
  %tobool295 = icmp ne i64 %and294, 0, !dbg !2927
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !2927

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !2927

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub298 = sub i64 %67, 1, !dbg !2927
  %and299 = and i64 %sub298, 32, !dbg !2927
  %tobool300 = icmp ne i64 %and299, 0, !dbg !2927
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !2927

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !2927

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub303 = sub i64 %68, 1, !dbg !2927
  %and304 = and i64 %sub303, 16, !dbg !2927
  %tobool305 = icmp ne i64 %and304, 0, !dbg !2927
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !2927

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !2927

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub308 = sub i64 %69, 1, !dbg !2927
  %and309 = and i64 %sub308, 8, !dbg !2927
  %tobool310 = icmp ne i64 %and309, 0, !dbg !2927
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !2927

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !2927

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub313 = sub i64 %70, 1, !dbg !2927
  %and314 = and i64 %sub313, 4, !dbg !2927
  %tobool315 = icmp ne i64 %and314, 0, !dbg !2927
  %71 = zext i1 %tobool315 to i64, !dbg !2927
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !2927
  br label %cond.end, !dbg !2927

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !2927
  br label %cond.end317, !dbg !2927

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !2927
  br label %cond.end319, !dbg !2927

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !2927
  br label %cond.end321, !dbg !2927

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !2927
  br label %cond.end323, !dbg !2927

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !2927
  br label %cond.end325, !dbg !2927

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !2927
  br label %cond.end327, !dbg !2927

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !2927
  br label %cond.end329, !dbg !2927

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !2927
  br label %cond.end331, !dbg !2927

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !2927
  br label %cond.end333, !dbg !2927

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !2927
  br label %cond.end335, !dbg !2927

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !2927
  br label %cond.end337, !dbg !2927

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !2927
  br label %cond.end339, !dbg !2927

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !2927
  br label %cond.end341, !dbg !2927

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !2927
  br label %cond.end343, !dbg !2927

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !2927
  br label %cond.end345, !dbg !2927

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !2927
  br label %cond.end347, !dbg !2927

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !2927
  br label %cond.end349, !dbg !2927

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !2927
  br label %cond.end351, !dbg !2927

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !2927
  br label %cond.end353, !dbg !2927

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !2927
  br label %cond.end355, !dbg !2927

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !2927
  br label %cond.end357, !dbg !2927

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !2927
  br label %cond.end359, !dbg !2927

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !2927
  br label %cond.end361, !dbg !2927

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !2927
  br label %cond.end363, !dbg !2927

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !2927
  br label %cond.end365, !dbg !2927

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !2927
  br label %cond.end367, !dbg !2927

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !2927
  br label %cond.end369, !dbg !2927

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !2927
  br label %cond.end371, !dbg !2927

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !2927
  br label %cond.end373, !dbg !2927

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !2927
  br label %cond.end375, !dbg !2927

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !2927
  br label %cond.end377, !dbg !2927

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !2927
  br label %cond.end379, !dbg !2927

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !2927
  br label %cond.end381, !dbg !2927

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !2927
  br label %cond.end383, !dbg !2927

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !2927
  br label %cond.end385, !dbg !2927

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !2927
  br label %cond.end387, !dbg !2927

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !2927
  br label %cond.end389, !dbg !2927

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !2927
  br label %cond.end391, !dbg !2927

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !2927
  br label %cond.end393, !dbg !2927

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !2927
  br label %cond.end395, !dbg !2927

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !2927
  br label %cond.end397, !dbg !2927

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !2927
  br label %cond.end399, !dbg !2927

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !2927
  br label %cond.end401, !dbg !2927

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !2927
  br label %cond.end403, !dbg !2927

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !2927
  br label %cond.end405, !dbg !2927

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !2927
  br label %cond.end407, !dbg !2927

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !2927
  br label %cond.end409, !dbg !2927

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !2927
  br label %cond.end411, !dbg !2927

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !2927
  br label %cond.end413, !dbg !2927

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !2927
  br label %cond.end415, !dbg !2927

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !2927
  br label %cond.end417, !dbg !2927

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !2927
  br label %cond.end419, !dbg !2927

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !2927
  br label %cond.end421, !dbg !2927

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !2927
  br label %cond.end423, !dbg !2927

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !2927
  br label %cond.end425, !dbg !2927

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !2927
  br label %cond.end427, !dbg !2927

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !2927
  br label %cond.end429, !dbg !2927

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !2927
  br label %cond.end431, !dbg !2927

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !2927
  br label %cond.end433, !dbg !2927

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !2927
  br label %cond.end435, !dbg !2927

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !2927
  br label %cond.end437, !dbg !2927

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !2927
  br label %cond.end440, !dbg !2927

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !2927

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !2927
  br label %cond.end444, !dbg !2927

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !2927
  %sub443 = sub i64 %72, 1, !dbg !2927
  %call = call i32 @__ilog2_u64(i64 %sub443) #9, !dbg !2927
  br label %cond.end444, !dbg !2927

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !2927
  %sub446 = sub i32 %cond445, 12, !dbg !2928
  %add = add i32 %sub446, 1, !dbg !2929
  store i32 %add, i32* %retval, align 4, !dbg !2930
  br label %return, !dbg !2930

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !2931
  %dec = add i64 %73, -1, !dbg !2931
  store i64 %dec, i64* %size.addr, align 8, !dbg !2931
  %74 = load i64, i64* %size.addr, align 8, !dbg !2932
  %shr = lshr i64 %74, 12, !dbg !2932
  store i64 %shr, i64* %size.addr, align 8, !dbg !2932
  %75 = load i64, i64* %size.addr, align 8, !dbg !2933
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !2910
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !2934
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !2935
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #11, !dbg !2934, !srcloc !2936
  store i32 %78, i32* %bitpos.i, align 4, !dbg !2934
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !2937
  %add.i = add i32 %79, 1, !dbg !2938
  store i32 %add.i, i32* %retval, align 4, !dbg !2939
  br label %return, !dbg !2939

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !2940
  ret i32 %80, !dbg !2940
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !2941 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !2902, metadata !DIExpression()), !dbg !2945
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !2909, metadata !DIExpression()), !dbg !2947
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2948, metadata !DIExpression()), !dbg !2949
  %0 = load i64, i64* %n.addr, align 8, !dbg !2950
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !2947
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !2951
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !2952
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #11, !dbg !2951, !srcloc !2936
  store i32 %3, i32* %bitpos.i, align 4, !dbg !2951
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !2953
  %add.i = add i32 %4, 1, !dbg !2954
  %sub = sub i32 %add.i, 1, !dbg !2955
  ret i32 %sub, !dbg !2956
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #2 !dbg !2957 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !2961, metadata !DIExpression()), !dbg !2962
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !2963, metadata !DIExpression()), !dbg !2964
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2965, metadata !DIExpression()), !dbg !2966
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2967, metadata !DIExpression()), !dbg !2968
  %0 = load i8*, i8** %object.addr, align 8, !dbg !2969
  ret i8* %0, !dbg !2970
}

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noredzone }
attributes #8 = { nounwind }
attributes #9 = { noredzone nounwind readnone }
attributes #10 = { noredzone nounwind }
attributes #11 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2434, !2435, !2436, !2437}
!llvm.ident = !{!2438}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "apd_handler", scope: !2, file: !3, line: 247, type: !108, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !80, globals: !86, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpi_apd.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !64, !73}
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
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_prop_type", file: !65, line: 19, baseType: !7, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/property.h", directory: "/home/lizy2001/genbc/linux")
!66 = !{!67, !68, !69, !70, !71, !72}
!67 = !DIEnumerator(name: "DEV_PROP_U8", value: 0, isUnsigned: true)
!68 = !DIEnumerator(name: "DEV_PROP_U16", value: 1, isUnsigned: true)
!69 = !DIEnumerator(name: "DEV_PROP_U32", value: 2, isUnsigned: true)
!70 = !DIEnumerator(name: "DEV_PROP_U64", value: 3, isUnsigned: true)
!71 = !DIEnumerator(name: "DEV_PROP_STRING", value: 4, isUnsigned: true)
!72 = !DIEnumerator(name: "DEV_PROP_REF", value: 5, isUnsigned: true)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !74, line: 305, baseType: !7, size: 32, elements: !75)
!74 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!75 = !{!76, !77, !78, !79}
!76 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!77 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!78 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!79 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!80 = !{!81, !82, !84, !85}
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !83, line: 148, baseType: !7)
!83 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!84 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!85 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!86 = !{!0, !87}
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(name: "acpi_apd_device_ids", scope: !2, file: !3, line: 222, type: !89, isLocal: true, isDefinition: true)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 256, elements: !106)
!90 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !92, line: 210, size: 256, elements: !93)
!92 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!93 = !{!94, !101, !103, !105}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !91, file: !92, line: 211, baseType: !95, size: 72)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 72, elements: !99)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !97, line: 21, baseType: !98)
!97 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!98 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!99 = !{!100}
!100 = !DISubrange(count: 9)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !91, file: !92, line: 212, baseType: !102, size: 64, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !92, line: 14, baseType: !84)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !91, file: !92, line: 213, baseType: !104, size: 32, offset: 192)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !97, line: 27, baseType: !7)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !91, file: !92, line: 214, baseType: !104, size: 32, offset: 224)
!106 = !{!107}
!107 = !DISubrange(count: 1)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !109, line: 122, size: 1216, elements: !110)
!109 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/lizy2001/genbc/linux")
!110 = !{!111, !113, !119, !129, !2423, !2424, !2425, !2426}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !108, file: !109, line: 123, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !108, file: !109, line: 124, baseType: !114, size: 128, offset: 64)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !83, line: 178, size: 128, elements: !115)
!115 = !{!116, !118}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !114, file: !83, line: 179, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !114, file: !83, line: 179, baseType: !117, size: 64, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !108, file: !109, line: 125, baseType: !120, size: 64, offset: 192)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{!123, !125, !128}
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !83, line: 30, baseType: !124)
!124 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!127 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !108, file: !109, line: 126, baseType: !130, size: 64, offset: 256)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{!133, !134, !112}
!133 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !109, line: 351, size: 10880, elements: !136)
!136 = !{!137, !138, !141, !2174, !2175, !2176, !2177, !2178, !2179, !2188, !2205, !2279, !2308, !2332, !2353, !2359, !2368, !2370, !2387, !2412, !2416, !2417, !2418, !2419, !2420, !2421, !2422}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !135, file: !109, line: 352, baseType: !133, size: 32)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !135, file: !109, line: 353, baseType: !139, size: 64, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !140, line: 424, baseType: !81)
!140 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!141 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !135, file: !109, line: 354, baseType: !142, size: 192, offset: 128)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !143, line: 17, size: 192, elements: !144)
!143 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!144 = !{!145, !147, !2173}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !142, file: !143, line: 18, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !142, file: !143, line: 19, baseType: !148, size: 64, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !143, line: 110, size: 1152, elements: !151)
!151 = !{!152, !156, !160, !166, !2115, !2119, !2123, !2128, !2132, !2133, !2137, !2141, !2145, !2156, !2157, !2158, !2159, !2169}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !150, file: !143, line: 111, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DISubroutineType(types: !155)
!155 = !{!146, !146}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !150, file: !143, line: 112, baseType: !157, size: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{null, !146}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !150, file: !143, line: 113, baseType: !161, size: 64, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DISubroutineType(types: !163)
!163 = !{!123, !164}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !150, file: !143, line: 114, baseType: !167, size: 64, offset: 192)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DISubroutineType(types: !169)
!169 = !{!170, !164, !172}
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !175)
!175 = !{!176, !1661, !1663, !1666, !1667, !1718, !1802, !1803, !1804, !1805, !1806, !1815, !1920, !1933, !2040, !2041, !2045, !2047, !2048, !2049, !2053, !2059, !2060, !2063, !2064, !2065, !2068, !2069, !2070, !2071, !2103, !2104, !2105, !2108, !2111, !2112, !2113, !2114}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !174, file: !30, line: 462, baseType: !177, size: 512)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !178, line: 64, size: 512, elements: !179)
!178 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!179 = !{!180, !181, !182, !184, !244, !1498, !1651, !1656, !1657, !1658, !1659, !1660}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !177, file: !178, line: 65, baseType: !125, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !177, file: !178, line: 66, baseType: !114, size: 128, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !177, file: !178, line: 67, baseType: !183, size: 64, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !177, file: !178, line: 68, baseType: !185, size: 64, offset: 256)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !178, line: 192, size: 704, elements: !187)
!187 = !{!188, !189, !205, !206}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !186, file: !178, line: 193, baseType: !114, size: 128)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !186, file: !178, line: 194, baseType: !190, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !191, line: 83, baseType: !192)
!191 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !191, line: 71, elements: !193)
!193 = !{!194}
!194 = !DIDerivedType(tag: DW_TAG_member, scope: !192, file: !191, line: 72, baseType: !195)
!195 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !192, file: !191, line: 72, elements: !196)
!196 = !{!197}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !195, file: !191, line: 73, baseType: !198)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !191, line: 20, elements: !199)
!199 = !{!200}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !198, file: !191, line: 21, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !202, line: 25, baseType: !203)
!202 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !202, line: 25, elements: !204)
!204 = !{}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !186, file: !178, line: 195, baseType: !177, size: 512, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !186, file: !178, line: 196, baseType: !207, size: 64, offset: 640)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !178, line: 156, size: 192, elements: !210)
!210 = !{!211, !216, !221}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !209, file: !178, line: 157, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{!133, !185, !183}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !209, file: !178, line: 158, baseType: !217, size: 64, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !218)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{!125, !185, !183}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !209, file: !178, line: 159, baseType: !222, size: 64, offset: 128)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{!133, !185, !183, !226}
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !178, line: 148, size: 20736, elements: !228)
!228 = !{!229, !234, !238, !239, !243}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !227, file: !178, line: 149, baseType: !230, size: 192)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 192, elements: !232)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!232 = !{!233}
!233 = !DISubrange(count: 3)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !227, file: !178, line: 150, baseType: !235, size: 4096, offset: 192)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 4096, elements: !236)
!236 = !{!237}
!237 = !DISubrange(count: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !227, file: !178, line: 151, baseType: !133, size: 32, offset: 4288)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !227, file: !178, line: 152, baseType: !240, size: 16384, offset: 4320)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 16384, elements: !241)
!241 = !{!242}
!242 = !DISubrange(count: 2048)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !227, file: !178, line: 153, baseType: !133, size: 32, offset: 20704)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !177, file: !178, line: 69, baseType: !245, size: 64, offset: 320)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !178, line: 138, size: 448, elements: !247)
!247 = !{!248, !252, !280, !282, !1445, !1476, !1480}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !246, file: !178, line: 139, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{null, !183}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !246, file: !178, line: 140, baseType: !253, size: 64, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !255)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !256, line: 230, size: 128, elements: !257)
!256 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!257 = !{!258, !273}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !255, file: !256, line: 231, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{!262, !183, !266, !231}
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !83, line: 60, baseType: !263)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !264, line: 73, baseType: !265)
!264 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !264, line: 15, baseType: !85)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !256, line: 30, size: 128, elements: !268)
!268 = !{!269, !270}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !267, file: !256, line: 31, baseType: !125, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !267, file: !256, line: 32, baseType: !271, size: 16, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !83, line: 19, baseType: !272)
!272 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !255, file: !256, line: 232, baseType: !274, size: 64, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!262, !183, !266, !125, !277}
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !83, line: 55, baseType: !278)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !264, line: 72, baseType: !279)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !264, line: 16, baseType: !84)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !246, file: !178, line: 141, baseType: !281, size: 64, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !246, file: !178, line: 142, baseType: !283, size: 64, offset: 192)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !286)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !256, line: 84, size: 320, elements: !287)
!287 = !{!288, !289, !293, !1442, !1443}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !286, file: !256, line: 85, baseType: !125, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !286, file: !256, line: 86, baseType: !290, size: 64, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{!271, !183, !266, !133}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !286, file: !256, line: 88, baseType: !294, size: 64, offset: 128)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{!271, !183, !297, !133}
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !256, line: 168, size: 448, elements: !299)
!299 = !{!300, !301, !302, !303, !313, !314}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !298, file: !256, line: 169, baseType: !267, size: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !298, file: !256, line: 170, baseType: !277, size: 64, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !298, file: !256, line: 171, baseType: !81, size: 64, offset: 192)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !298, file: !256, line: 172, baseType: !304, size: 64, offset: 256)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!262, !307, !183, !297, !231, !310, !277}
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !309, line: 526, flags: DIFlagFwdDecl)
!309 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !83, line: 46, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !264, line: 88, baseType: !312)
!312 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !298, file: !256, line: 174, baseType: !304, size: 64, offset: 320)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !298, file: !256, line: 176, baseType: !315, size: 64, offset: 384)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DISubroutineType(types: !317)
!317 = !{!133, !307, !183, !297, !318}
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !320, line: 305, size: 1472, elements: !321)
!320 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!321 = !{!322, !323, !324, !325, !326, !334, !335, !1416, !1422, !1423, !1428, !1429, !1432, !1436, !1437, !1438, !1439, !1440}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !319, file: !320, line: 308, baseType: !84, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !319, file: !320, line: 309, baseType: !84, size: 64, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !319, file: !320, line: 313, baseType: !318, size: 64, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !319, file: !320, line: 313, baseType: !318, size: 64, offset: 192)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !319, file: !320, line: 315, baseType: !327, size: 192, align: 64, offset: 256)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !328, line: 24, size: 192, align: 64, elements: !329)
!328 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!329 = !{!330, !331, !333}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !327, file: !328, line: 25, baseType: !84, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !327, file: !328, line: 26, baseType: !332, size: 64, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !327, file: !328, line: 27, baseType: !332, size: 64, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !319, file: !320, line: 323, baseType: !84, size: 64, offset: 448)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !319, file: !320, line: 327, baseType: !336, size: 64, offset: 512)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !320, line: 388, size: 7296, elements: !338)
!338 = !{!339, !1412}
!339 = !DIDerivedType(tag: DW_TAG_member, scope: !337, file: !320, line: 389, baseType: !340, size: 7296)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !337, file: !320, line: 389, size: 7296, elements: !341)
!341 = !{!342, !343, !347, !352, !356, !357, !358, !359, !360, !368, !373, !374, !375, !376, !385, !386, !387, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !422, !430, !433, !481, !482, !1383, !1384, !1387, !1390, !1391, !1394, !1395, !1396, !1399, !1411}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !340, file: !320, line: 390, baseType: !318, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !340, file: !320, line: 391, baseType: !344, size: 64, offset: 64)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !328, line: 31, size: 64, elements: !345)
!345 = !{!346}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !344, file: !328, line: 32, baseType: !332, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !340, file: !320, line: 392, baseType: !348, size: 64, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !349, line: 23, baseType: !350)
!349 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !97, line: 31, baseType: !351)
!351 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !340, file: !320, line: 394, baseType: !353, size: 64, offset: 192)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{!84, !307, !84, !84, !84, !84}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !340, file: !320, line: 398, baseType: !84, size: 64, offset: 256)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !340, file: !320, line: 399, baseType: !84, size: 64, offset: 320)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !340, file: !320, line: 405, baseType: !84, size: 64, offset: 384)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !340, file: !320, line: 406, baseType: !84, size: 64, offset: 448)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !340, file: !320, line: 407, baseType: !361, size: 64, offset: 512)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !309, line: 286, baseType: !363)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !309, line: 286, size: 64, elements: !364)
!364 = !{!365}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !363, file: !309, line: 286, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !367, line: 18, baseType: !84)
!367 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!368 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !340, file: !320, line: 416, baseType: !369, size: 32, offset: 576)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !83, line: 168, baseType: !370)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !83, line: 166, size: 32, elements: !371)
!371 = !{!372}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !370, file: !83, line: 167, baseType: !133, size: 32)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !340, file: !320, line: 428, baseType: !369, size: 32, offset: 608)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !340, file: !320, line: 437, baseType: !369, size: 32, offset: 640)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !340, file: !320, line: 447, baseType: !369, size: 32, offset: 672)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !340, file: !320, line: 450, baseType: !377, size: 64, offset: 704)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !378, line: 13, baseType: !379)
!378 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !83, line: 175, baseType: !380)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !83, line: 173, size: 64, elements: !381)
!381 = !{!382}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !380, file: !83, line: 174, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !349, line: 22, baseType: !384)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !97, line: 30, baseType: !312)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !340, file: !320, line: 452, baseType: !133, size: 32, offset: 768)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !340, file: !320, line: 454, baseType: !190, offset: 800)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !340, file: !320, line: 457, baseType: !388, size: 256, offset: 832)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !389, line: 35, size: 256, elements: !390)
!389 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!390 = !{!391, !392, !393, !395}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !388, file: !389, line: 36, baseType: !377, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !388, file: !389, line: 42, baseType: !377, size: 64, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !388, file: !389, line: 46, baseType: !394, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !191, line: 29, baseType: !198)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !388, file: !389, line: 47, baseType: !114, size: 128, offset: 128)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !340, file: !320, line: 459, baseType: !114, size: 128, offset: 1088)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !340, file: !320, line: 466, baseType: !84, size: 64, offset: 1216)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !340, file: !320, line: 467, baseType: !84, size: 64, offset: 1280)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !340, file: !320, line: 469, baseType: !84, size: 64, offset: 1344)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !340, file: !320, line: 470, baseType: !84, size: 64, offset: 1408)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !340, file: !320, line: 471, baseType: !379, size: 64, offset: 1472)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !340, file: !320, line: 472, baseType: !84, size: 64, offset: 1536)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !340, file: !320, line: 473, baseType: !84, size: 64, offset: 1600)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !340, file: !320, line: 474, baseType: !84, size: 64, offset: 1664)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !340, file: !320, line: 475, baseType: !84, size: 64, offset: 1728)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !340, file: !320, line: 477, baseType: !190, offset: 1792)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !340, file: !320, line: 478, baseType: !84, size: 64, offset: 1792)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !340, file: !320, line: 478, baseType: !84, size: 64, offset: 1856)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !340, file: !320, line: 478, baseType: !84, size: 64, offset: 1920)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !340, file: !320, line: 478, baseType: !84, size: 64, offset: 1984)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !340, file: !320, line: 479, baseType: !84, size: 64, offset: 2048)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !340, file: !320, line: 479, baseType: !84, size: 64, offset: 2112)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !340, file: !320, line: 479, baseType: !84, size: 64, offset: 2176)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !340, file: !320, line: 480, baseType: !84, size: 64, offset: 2240)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !340, file: !320, line: 480, baseType: !84, size: 64, offset: 2304)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !340, file: !320, line: 480, baseType: !84, size: 64, offset: 2368)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !340, file: !320, line: 480, baseType: !84, size: 64, offset: 2432)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !340, file: !320, line: 482, baseType: !419, size: 2816, offset: 2496)
!419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 2816, elements: !420)
!420 = !{!421}
!421 = !DISubrange(count: 44)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !340, file: !320, line: 488, baseType: !423, size: 256, offset: 5312)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !424, line: 60, size: 256, elements: !425)
!424 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!425 = !{!426}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !423, file: !424, line: 61, baseType: !427, size: 256)
!427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 256, elements: !428)
!428 = !{!429}
!429 = !DISubrange(count: 4)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !340, file: !320, line: 490, baseType: !431, size: 64, offset: 5568)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !320, line: 490, flags: DIFlagFwdDecl)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !340, file: !320, line: 493, baseType: !434, size: 896, offset: 5632)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !435, line: 53, baseType: !436)
!435 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !435, line: 13, size: 896, elements: !437)
!437 = !{!438, !439, !440, !441, !444, !445, !452, !453, !473, !474, !477}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !436, file: !435, line: 18, baseType: !348, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !436, file: !435, line: 28, baseType: !379, size: 64, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !436, file: !435, line: 31, baseType: !388, size: 256, offset: 128)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !436, file: !435, line: 32, baseType: !442, size: 64, offset: 384)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !435, line: 32, flags: DIFlagFwdDecl)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !436, file: !435, line: 37, baseType: !272, size: 16, offset: 448)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !436, file: !435, line: 40, baseType: !446, size: 192, offset: 512)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !447, line: 53, size: 192, elements: !448)
!447 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!448 = !{!449, !450, !451}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !446, file: !447, line: 54, baseType: !377, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !446, file: !447, line: 55, baseType: !190, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !446, file: !447, line: 59, baseType: !114, size: 128, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !436, file: !435, line: 41, baseType: !81, size: 64, offset: 704)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !436, file: !435, line: 42, baseType: !454, size: 64, offset: 768)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !456)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !457, line: 13, size: 896, elements: !458)
!457 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!458 = !{!459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !456, file: !457, line: 14, baseType: !81, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !456, file: !457, line: 15, baseType: !84, size: 64, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !456, file: !457, line: 17, baseType: !84, size: 64, offset: 128)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !456, file: !457, line: 17, baseType: !84, size: 64, offset: 192)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !456, file: !457, line: 19, baseType: !85, size: 64, offset: 256)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !456, file: !457, line: 21, baseType: !85, size: 64, offset: 320)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !456, file: !457, line: 22, baseType: !85, size: 64, offset: 384)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !456, file: !457, line: 23, baseType: !85, size: 64, offset: 448)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !456, file: !457, line: 24, baseType: !85, size: 64, offset: 512)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !456, file: !457, line: 25, baseType: !85, size: 64, offset: 576)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !456, file: !457, line: 26, baseType: !85, size: 64, offset: 640)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !456, file: !457, line: 27, baseType: !85, size: 64, offset: 704)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !456, file: !457, line: 28, baseType: !85, size: 64, offset: 768)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !456, file: !457, line: 29, baseType: !85, size: 64, offset: 832)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !436, file: !435, line: 44, baseType: !369, size: 32, offset: 832)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !436, file: !435, line: 50, baseType: !475, size: 16, offset: 864)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !349, line: 19, baseType: !476)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !97, line: 24, baseType: !272)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !436, file: !435, line: 51, baseType: !478, size: 16, offset: 880)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !349, line: 18, baseType: !479)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !97, line: 23, baseType: !480)
!480 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !340, file: !320, line: 495, baseType: !84, size: 64, offset: 6528)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !340, file: !320, line: 497, baseType: !483, size: 64, offset: 6592)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !320, line: 381, size: 384, elements: !485)
!485 = !{!486, !487, !1382}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !484, file: !320, line: 382, baseType: !369, size: 32)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !484, file: !320, line: 383, baseType: !488, size: 128, offset: 64)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !320, line: 376, size: 128, elements: !489)
!489 = !{!490, !1380}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !488, file: !320, line: 377, baseType: !491, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !493, line: 640, size: 48640, elements: !494)
!493 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!494 = !{!495, !502, !504, !505, !511, !512, !513, !514, !515, !516, !517, !518, !522, !540, !551, !644, !645, !646, !655, !656, !658, !659, !660, !661, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !740, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !796, !798, !799, !800, !812, !814, !815, !816, !817, !818, !824, !825, !826, !827, !828, !829, !830, !842, !847, !851, !852, !853, !856, !860, !863, !866, !869, !872, !875, !878, !881, !887, !888, !889, !895, !896, !897, !898, !899, !908, !909, !910, !911, !912, !917, !918, !919, !922, !923, !926, !929, !932, !935, !938, !941, !942, !1022, !1025, !1028, !1029, !1032, !1033, !1034, !1040, !1041, !1042, !1055, !1056, !1057, !1067, !1072, !1075, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !492, file: !493, line: 646, baseType: !496, size: 128)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !497, line: 56, size: 128, elements: !498)
!497 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!498 = !{!499, !500}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !496, file: !497, line: 57, baseType: !84, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !496, file: !497, line: 58, baseType: !501, size: 32, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !349, line: 21, baseType: !104)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !492, file: !493, line: 649, baseType: !503, size: 64, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !85)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !492, file: !493, line: 657, baseType: !81, size: 64, offset: 192)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !492, file: !493, line: 658, baseType: !506, size: 32, offset: 256)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !507, line: 113, baseType: !508)
!507 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !507, line: 111, size: 32, elements: !509)
!509 = !{!510}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !508, file: !507, line: 112, baseType: !369, size: 32)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !492, file: !493, line: 660, baseType: !7, size: 32, offset: 288)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !492, file: !493, line: 661, baseType: !7, size: 32, offset: 320)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !492, file: !493, line: 684, baseType: !133, size: 32, offset: 352)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !492, file: !493, line: 686, baseType: !133, size: 32, offset: 384)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !492, file: !493, line: 687, baseType: !133, size: 32, offset: 416)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !492, file: !493, line: 688, baseType: !133, size: 32, offset: 448)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !492, file: !493, line: 689, baseType: !7, size: 32, offset: 480)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !492, file: !493, line: 691, baseType: !519, size: 64, offset: 512)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !521)
!521 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !493, line: 691, flags: DIFlagFwdDecl)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !492, file: !493, line: 692, baseType: !523, size: 832, offset: 576)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !493, line: 451, size: 832, elements: !524)
!524 = !{!525, !530, !531, !532, !533, !534, !535, !536, !537, !538}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !523, file: !493, line: 453, baseType: !526, size: 128)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !493, line: 325, size: 128, elements: !527)
!527 = !{!528, !529}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !526, file: !493, line: 326, baseType: !84, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !526, file: !493, line: 327, baseType: !501, size: 32, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !523, file: !493, line: 454, baseType: !327, size: 192, align: 64, offset: 128)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !523, file: !493, line: 455, baseType: !114, size: 128, offset: 320)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !523, file: !493, line: 456, baseType: !7, size: 32, offset: 448)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !523, file: !493, line: 458, baseType: !348, size: 64, offset: 512)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !523, file: !493, line: 459, baseType: !348, size: 64, offset: 576)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !523, file: !493, line: 460, baseType: !348, size: 64, offset: 640)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !523, file: !493, line: 461, baseType: !348, size: 64, offset: 704)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !523, file: !493, line: 463, baseType: !348, size: 64, offset: 768)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !523, file: !493, line: 465, baseType: !539, offset: 832)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !493, line: 415, elements: !204)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !492, file: !493, line: 693, baseType: !541, size: 384, offset: 1408)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !493, line: 489, size: 384, elements: !542)
!542 = !{!543, !544, !545, !546, !547, !548, !549}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !541, file: !493, line: 490, baseType: !114, size: 128)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !541, file: !493, line: 491, baseType: !84, size: 64, offset: 128)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !541, file: !493, line: 492, baseType: !84, size: 64, offset: 192)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !541, file: !493, line: 493, baseType: !7, size: 32, offset: 256)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !541, file: !493, line: 494, baseType: !272, size: 16, offset: 288)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !541, file: !493, line: 495, baseType: !272, size: 16, offset: 304)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !541, file: !493, line: 497, baseType: !550, size: 64, offset: 320)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !492, file: !493, line: 697, baseType: !552, size: 1792, offset: 1792)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !493, line: 507, size: 1792, elements: !553)
!553 = !{!554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !641, !642}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !552, file: !493, line: 508, baseType: !327, size: 192, align: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !552, file: !493, line: 515, baseType: !348, size: 64, offset: 192)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !552, file: !493, line: 516, baseType: !348, size: 64, offset: 256)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !552, file: !493, line: 517, baseType: !348, size: 64, offset: 320)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !552, file: !493, line: 518, baseType: !348, size: 64, offset: 384)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !552, file: !493, line: 519, baseType: !348, size: 64, offset: 448)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !552, file: !493, line: 526, baseType: !383, size: 64, offset: 512)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !552, file: !493, line: 527, baseType: !348, size: 64, offset: 576)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !552, file: !493, line: 528, baseType: !7, size: 32, offset: 640)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !552, file: !493, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !552, file: !493, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !552, file: !493, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !552, file: !493, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !552, file: !493, line: 563, baseType: !568, size: 512, offset: 704)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !569)
!569 = !{!570, !578, !579, !584, !636, !638, !639, !640}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !568, file: !6, line: 119, baseType: !571, size: 256)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !572, line: 9, size: 256, elements: !573)
!572 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!573 = !{!574, !575}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !571, file: !572, line: 10, baseType: !327, size: 192, align: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !571, file: !572, line: 11, baseType: !576, size: 64, offset: 192)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !577, line: 29, baseType: !383)
!577 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!578 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !568, file: !6, line: 120, baseType: !576, size: 64, offset: 256)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !568, file: !6, line: 121, baseType: !580, size: 64, offset: 320)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DISubroutineType(types: !582)
!582 = !{!5, !583}
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !568, file: !6, line: 122, baseType: !585, size: 64, offset: 384)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !587)
!587 = !{!588, !608, !609, !612, !622, !623, !631, !635}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !586, file: !6, line: 160, baseType: !589, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !591)
!591 = !{!592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !590, file: !6, line: 215, baseType: !394)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !590, file: !6, line: 216, baseType: !7, size: 32)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !590, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !590, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !590, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !590, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !590, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !590, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !590, file: !6, line: 233, baseType: !576, size: 64, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !590, file: !6, line: 234, baseType: !583, size: 64, offset: 192)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !590, file: !6, line: 235, baseType: !576, size: 64, offset: 256)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !590, file: !6, line: 236, baseType: !583, size: 64, offset: 320)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !590, file: !6, line: 237, baseType: !605, size: 4096, offset: 512)
!605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !586, size: 4096, elements: !606)
!606 = !{!607}
!607 = !DISubrange(count: 8)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !586, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !586, file: !6, line: 162, baseType: !610, size: 32, offset: 96)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !83, line: 27, baseType: !611)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !264, line: 96, baseType: !133)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !586, file: !6, line: 163, baseType: !613, size: 32, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !614, line: 276, baseType: !615)
!614 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !614, line: 276, size: 32, elements: !616)
!616 = !{!617}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !615, file: !614, line: 276, baseType: !618, size: 32)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !614, line: 70, baseType: !619)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !614, line: 65, size: 32, elements: !620)
!620 = !{!621}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !619, file: !614, line: 66, baseType: !7, size: 32)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !586, file: !6, line: 164, baseType: !583, size: 64, offset: 192)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !586, file: !6, line: 165, baseType: !624, size: 128, offset: 256)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !572, line: 14, size: 128, elements: !625)
!625 = !{!626}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !624, file: !572, line: 15, baseType: !627, size: 128)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !328, line: 125, size: 128, elements: !628)
!628 = !{!629, !630}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !627, file: !328, line: 126, baseType: !344, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !627, file: !328, line: 127, baseType: !332, size: 64, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !586, file: !6, line: 166, baseType: !632, size: 64, offset: 384)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DISubroutineType(types: !634)
!634 = !{!576}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !586, file: !6, line: 167, baseType: !576, size: 64, offset: 448)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !568, file: !6, line: 123, baseType: !637, size: 8, offset: 448)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !349, line: 17, baseType: !96)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !568, file: !6, line: 124, baseType: !637, size: 8, offset: 456)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !568, file: !6, line: 125, baseType: !637, size: 8, offset: 464)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !568, file: !6, line: 126, baseType: !637, size: 8, offset: 472)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !552, file: !493, line: 572, baseType: !568, size: 512, offset: 1216)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !552, file: !493, line: 580, baseType: !643, size: 64, offset: 1728)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !492, file: !493, line: 721, baseType: !7, size: 32, offset: 3584)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !492, file: !493, line: 722, baseType: !133, size: 32, offset: 3616)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !492, file: !493, line: 723, baseType: !647, size: 64, offset: 3648)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !649)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !650, line: 17, baseType: !651)
!650 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !650, line: 17, size: 64, elements: !652)
!652 = !{!653}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !651, file: !650, line: 17, baseType: !654, size: 64)
!654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 64, elements: !106)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !492, file: !493, line: 724, baseType: !649, size: 64, offset: 3712)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !492, file: !493, line: 749, baseType: !657, offset: 3776)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !493, line: 290, elements: !204)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !492, file: !493, line: 751, baseType: !114, size: 128, offset: 3776)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !492, file: !493, line: 757, baseType: !336, size: 64, offset: 3904)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !492, file: !493, line: 758, baseType: !336, size: 64, offset: 3968)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !492, file: !493, line: 761, baseType: !662, size: 320, offset: 4032)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !424, line: 34, size: 320, elements: !663)
!663 = !{!664, !665}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !662, file: !424, line: 35, baseType: !348, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !662, file: !424, line: 36, baseType: !666, size: 256, offset: 64)
!666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, size: 256, elements: !428)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !492, file: !493, line: 766, baseType: !133, size: 32, offset: 4352)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !492, file: !493, line: 767, baseType: !133, size: 32, offset: 4384)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !492, file: !493, line: 768, baseType: !133, size: 32, offset: 4416)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !492, file: !493, line: 770, baseType: !133, size: 32, offset: 4448)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !492, file: !493, line: 772, baseType: !84, size: 64, offset: 4480)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !492, file: !493, line: 775, baseType: !7, size: 32, offset: 4544)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !492, file: !493, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !492, file: !493, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !492, file: !493, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !492, file: !493, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !492, file: !493, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !492, file: !493, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !492, file: !493, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !492, file: !493, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !492, file: !493, line: 831, baseType: !84, size: 64, offset: 4672)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !492, file: !493, line: 833, baseType: !683, size: 384, offset: 4736)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !684)
!684 = !{!685, !690}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !683, file: !12, line: 26, baseType: !686, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DISubroutineType(types: !688)
!688 = !{!85, !689}
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, scope: !683, file: !12, line: 27, baseType: !691, size: 320, offset: 64)
!691 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !683, file: !12, line: 27, size: 320, elements: !692)
!692 = !{!693, !703, !730}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !691, file: !12, line: 36, baseType: !694, size: 320)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !691, file: !12, line: 29, size: 320, elements: !695)
!695 = !{!696, !698, !699, !700, !701, !702}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !694, file: !12, line: 30, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !694, file: !12, line: 31, baseType: !501, size: 32, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !694, file: !12, line: 32, baseType: !501, size: 32, offset: 96)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !694, file: !12, line: 33, baseType: !501, size: 32, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !694, file: !12, line: 34, baseType: !348, size: 64, offset: 192)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !694, file: !12, line: 35, baseType: !697, size: 64, offset: 256)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !691, file: !12, line: 46, baseType: !704, size: 192)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !691, file: !12, line: 38, size: 192, elements: !705)
!705 = !{!706, !707, !708, !729}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !704, file: !12, line: 39, baseType: !610, size: 32)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !704, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!708 = !DIDerivedType(tag: DW_TAG_member, scope: !704, file: !12, line: 41, baseType: !709, size: 64, offset: 64)
!709 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !704, file: !12, line: 41, size: 64, elements: !710)
!710 = !{!711, !719}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !709, file: !12, line: 42, baseType: !712, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !714, line: 7, size: 128, elements: !715)
!714 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!715 = !{!716, !718}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !713, file: !714, line: 8, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !264, line: 93, baseType: !312)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !713, file: !714, line: 9, baseType: !312, size: 64, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !709, file: !12, line: 43, baseType: !720, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !722, line: 7, size: 64, elements: !723)
!722 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!723 = !{!724, !728}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !721, file: !722, line: 8, baseType: !725, size: 32)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !722, line: 5, baseType: !726)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !349, line: 20, baseType: !727)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !97, line: 26, baseType: !133)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !721, file: !722, line: 9, baseType: !726, size: 32, offset: 32)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !704, file: !12, line: 45, baseType: !348, size: 64, offset: 128)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !691, file: !12, line: 54, baseType: !731, size: 256)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !691, file: !12, line: 48, size: 256, elements: !732)
!732 = !{!733, !736, !737, !738, !739}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !731, file: !12, line: 49, baseType: !734, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !731, file: !12, line: 50, baseType: !133, size: 32, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !731, file: !12, line: 51, baseType: !133, size: 32, offset: 96)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !731, file: !12, line: 52, baseType: !84, size: 64, offset: 128)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !731, file: !12, line: 53, baseType: !84, size: 64, offset: 192)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !492, file: !493, line: 835, baseType: !741, size: 32, offset: 5120)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !83, line: 22, baseType: !742)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !264, line: 28, baseType: !133)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !492, file: !493, line: 836, baseType: !741, size: 32, offset: 5152)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !492, file: !493, line: 840, baseType: !84, size: 64, offset: 5184)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !492, file: !493, line: 849, baseType: !491, size: 64, offset: 5248)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !492, file: !493, line: 852, baseType: !491, size: 64, offset: 5312)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !492, file: !493, line: 857, baseType: !114, size: 128, offset: 5376)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !492, file: !493, line: 858, baseType: !114, size: 128, offset: 5504)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !492, file: !493, line: 859, baseType: !491, size: 64, offset: 5632)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !492, file: !493, line: 867, baseType: !114, size: 128, offset: 5696)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !492, file: !493, line: 868, baseType: !114, size: 128, offset: 5824)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !492, file: !493, line: 871, baseType: !753, size: 64, offset: 5952)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !755, line: 59, size: 768, elements: !756)
!755 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!756 = !{!757, !758, !759, !760, !771, !772, !779, !788}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !754, file: !755, line: 61, baseType: !506, size: 32)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !754, file: !755, line: 62, baseType: !7, size: 32, offset: 32)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !754, file: !755, line: 63, baseType: !190, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !754, file: !755, line: 65, baseType: !761, size: 256, offset: 64)
!761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !762, size: 256, elements: !428)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !83, line: 182, size: 64, elements: !763)
!763 = !{!764}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !762, file: !83, line: 183, baseType: !765, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !83, line: 186, size: 128, elements: !767)
!767 = !{!768, !769}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !766, file: !83, line: 187, baseType: !765, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !766, file: !83, line: 187, baseType: !770, size: 64, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !754, file: !755, line: 66, baseType: !762, size: 64, offset: 320)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !754, file: !755, line: 68, baseType: !773, size: 128, offset: 384)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !774, line: 40, baseType: !775)
!774 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !774, line: 36, size: 128, elements: !776)
!776 = !{!777, !778}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !775, file: !774, line: 37, baseType: !190)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !775, file: !774, line: 38, baseType: !114, size: 128)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !754, file: !755, line: 69, baseType: !780, size: 128, align: 64, offset: 512)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !83, line: 216, size: 128, align: 64, elements: !781)
!781 = !{!782, !784}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !780, file: !83, line: 217, baseType: !783, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !780, file: !83, line: 218, baseType: !785, size: 64, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DISubroutineType(types: !787)
!787 = !{null, !783}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !754, file: !755, line: 70, baseType: !789, size: 128, offset: 640)
!789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !790, size: 128, elements: !106)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !755, line: 54, size: 128, elements: !791)
!791 = !{!792, !793}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !790, file: !755, line: 55, baseType: !133, size: 32)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !790, file: !755, line: 56, baseType: !794, size: 64, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !755, line: 56, flags: DIFlagFwdDecl)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !492, file: !493, line: 872, baseType: !797, size: 512, offset: 6016)
!797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !766, size: 512, elements: !428)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !492, file: !493, line: 873, baseType: !114, size: 128, offset: 6528)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !492, file: !493, line: 874, baseType: !114, size: 128, offset: 6656)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !492, file: !493, line: 876, baseType: !801, size: 64, offset: 6784)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !803, line: 26, size: 192, elements: !804)
!803 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!804 = !{!805, !806}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !802, file: !803, line: 27, baseType: !7, size: 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !802, file: !803, line: 28, baseType: !807, size: 128, offset: 64)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !808, line: 43, size: 128, elements: !809)
!808 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!809 = !{!810, !811}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !807, file: !808, line: 44, baseType: !394)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !807, file: !808, line: 45, baseType: !114, size: 128)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !492, file: !493, line: 879, baseType: !813, size: 64, offset: 6848)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !492, file: !493, line: 882, baseType: !813, size: 64, offset: 6912)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !492, file: !493, line: 884, baseType: !348, size: 64, offset: 6976)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !492, file: !493, line: 885, baseType: !348, size: 64, offset: 7040)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !492, file: !493, line: 890, baseType: !348, size: 64, offset: 7104)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !492, file: !493, line: 891, baseType: !819, size: 128, offset: 7168)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !493, line: 242, size: 128, elements: !820)
!820 = !{!821, !822, !823}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !819, file: !493, line: 244, baseType: !348, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !819, file: !493, line: 245, baseType: !348, size: 64, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !819, file: !493, line: 246, baseType: !394, offset: 128)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !492, file: !493, line: 900, baseType: !84, size: 64, offset: 7296)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !492, file: !493, line: 901, baseType: !84, size: 64, offset: 7360)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !492, file: !493, line: 904, baseType: !348, size: 64, offset: 7424)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !492, file: !493, line: 907, baseType: !348, size: 64, offset: 7488)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !492, file: !493, line: 910, baseType: !84, size: 64, offset: 7552)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !492, file: !493, line: 911, baseType: !84, size: 64, offset: 7616)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !492, file: !493, line: 914, baseType: !831, size: 640, offset: 7680)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !832, line: 123, size: 640, elements: !833)
!832 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!833 = !{!834, !840, !841}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !831, file: !832, line: 124, baseType: !835, size: 576)
!835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !836, size: 576, elements: !232)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !832, line: 108, size: 192, elements: !837)
!837 = !{!838, !839}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !836, file: !832, line: 109, baseType: !348, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !836, file: !832, line: 110, baseType: !624, size: 128, offset: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !831, file: !832, line: 125, baseType: !7, size: 32, offset: 576)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !831, file: !832, line: 126, baseType: !7, size: 32, offset: 608)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !492, file: !493, line: 917, baseType: !843, size: 192, offset: 8320)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !832, line: 134, size: 192, elements: !844)
!844 = !{!845, !846}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !843, file: !832, line: 135, baseType: !780, size: 128, align: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !843, file: !832, line: 136, baseType: !7, size: 32, offset: 128)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !492, file: !493, line: 923, baseType: !848, size: 64, offset: 8512)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !850)
!850 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !493, line: 923, flags: DIFlagFwdDecl)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !492, file: !493, line: 926, baseType: !848, size: 64, offset: 8576)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !492, file: !493, line: 929, baseType: !848, size: 64, offset: 8640)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !492, file: !493, line: 933, baseType: !854, size: 64, offset: 8704)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !493, line: 933, flags: DIFlagFwdDecl)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !492, file: !493, line: 943, baseType: !857, size: 128, offset: 8768)
!857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 128, elements: !858)
!858 = !{!859}
!859 = !DISubrange(count: 16)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !492, file: !493, line: 945, baseType: !861, size: 64, offset: 8896)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !493, line: 49, flags: DIFlagFwdDecl)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !492, file: !493, line: 956, baseType: !864, size: 64, offset: 8960)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !493, line: 45, flags: DIFlagFwdDecl)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !492, file: !493, line: 959, baseType: !867, size: 64, offset: 9024)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !493, line: 959, flags: DIFlagFwdDecl)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !492, file: !493, line: 962, baseType: !870, size: 64, offset: 9088)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !493, line: 66, flags: DIFlagFwdDecl)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !492, file: !493, line: 966, baseType: !873, size: 64, offset: 9152)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !493, line: 50, flags: DIFlagFwdDecl)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !492, file: !493, line: 969, baseType: !876, size: 64, offset: 9216)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !832, line: 223, flags: DIFlagFwdDecl)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !492, file: !493, line: 970, baseType: !879, size: 64, offset: 9280)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !493, line: 62, flags: DIFlagFwdDecl)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !492, file: !493, line: 971, baseType: !882, size: 64, offset: 9344)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !883, line: 25, baseType: !884)
!883 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !883, line: 23, size: 64, elements: !885)
!885 = !{!886}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !884, file: !883, line: 24, baseType: !654, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !492, file: !493, line: 972, baseType: !882, size: 64, offset: 9408)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !492, file: !493, line: 974, baseType: !882, size: 64, offset: 9472)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !492, file: !493, line: 975, baseType: !890, size: 192, offset: 9536)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !891, line: 30, size: 192, elements: !892)
!891 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!892 = !{!893, !894}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !890, file: !891, line: 31, baseType: !114, size: 128)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !890, file: !891, line: 32, baseType: !882, size: 64, offset: 128)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !492, file: !493, line: 976, baseType: !84, size: 64, offset: 9728)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !492, file: !493, line: 977, baseType: !277, size: 64, offset: 9792)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !492, file: !493, line: 978, baseType: !7, size: 32, offset: 9856)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !492, file: !493, line: 980, baseType: !783, size: 64, offset: 9920)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !492, file: !493, line: 989, baseType: !900, size: 128, offset: 9984)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !901, line: 35, size: 128, elements: !902)
!901 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!902 = !{!903, !904, !905}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !900, file: !901, line: 36, baseType: !133, size: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !900, file: !901, line: 37, baseType: !369, size: 32, offset: 32)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !900, file: !901, line: 38, baseType: !906, size: 64, offset: 64)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !901, line: 23, flags: DIFlagFwdDecl)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !492, file: !493, line: 992, baseType: !348, size: 64, offset: 10112)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !492, file: !493, line: 993, baseType: !348, size: 64, offset: 10176)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !492, file: !493, line: 996, baseType: !190, offset: 10240)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !492, file: !493, line: 999, baseType: !394, offset: 10240)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !492, file: !493, line: 1001, baseType: !913, size: 64, offset: 10240)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !493, line: 636, size: 64, elements: !914)
!914 = !{!915}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !913, file: !493, line: 637, baseType: !916, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !492, file: !493, line: 1005, baseType: !627, size: 128, offset: 10304)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !492, file: !493, line: 1007, baseType: !491, size: 64, offset: 10432)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !492, file: !493, line: 1009, baseType: !920, size: 64, offset: 10496)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !493, line: 1009, flags: DIFlagFwdDecl)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !492, file: !493, line: 1043, baseType: !81, size: 64, offset: 10560)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !492, file: !493, line: 1046, baseType: !924, size: 64, offset: 10624)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !493, line: 41, flags: DIFlagFwdDecl)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !492, file: !493, line: 1050, baseType: !927, size: 64, offset: 10688)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !493, line: 42, flags: DIFlagFwdDecl)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !492, file: !493, line: 1054, baseType: !930, size: 64, offset: 10752)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !493, line: 55, flags: DIFlagFwdDecl)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !492, file: !493, line: 1056, baseType: !933, size: 64, offset: 10816)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !493, line: 40, flags: DIFlagFwdDecl)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !492, file: !493, line: 1058, baseType: !936, size: 64, offset: 10880)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !493, line: 47, flags: DIFlagFwdDecl)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !492, file: !493, line: 1061, baseType: !939, size: 64, offset: 10944)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !493, line: 43, flags: DIFlagFwdDecl)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !492, file: !493, line: 1064, baseType: !84, size: 64, offset: 11008)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !492, file: !493, line: 1065, baseType: !943, size: 64, offset: 11072)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !891, line: 14, baseType: !945)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !891, line: 12, size: 384, elements: !946)
!946 = !{!947}
!947 = !DIDerivedType(tag: DW_TAG_member, scope: !945, file: !891, line: 13, baseType: !948, size: 384)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !945, file: !891, line: 13, size: 384, elements: !949)
!949 = !{!950, !951, !952, !953}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !948, file: !891, line: 13, baseType: !133, size: 32)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !948, file: !891, line: 13, baseType: !133, size: 32, offset: 32)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !948, file: !891, line: 13, baseType: !133, size: 32, offset: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !948, file: !891, line: 13, baseType: !954, size: 256, offset: 128)
!954 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !955, line: 32, size: 256, elements: !956)
!955 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!956 = !{!957, !963, !976, !982, !991, !1011, !1016}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !954, file: !955, line: 37, baseType: !958, size: 64)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !954, file: !955, line: 34, size: 64, elements: !959)
!959 = !{!960, !961}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !958, file: !955, line: 35, baseType: !742, size: 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !958, file: !955, line: 36, baseType: !962, size: 32, offset: 32)
!962 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !264, line: 49, baseType: !7)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !954, file: !955, line: 45, baseType: !964, size: 192)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !954, file: !955, line: 40, size: 192, elements: !965)
!965 = !{!966, !968, !969, !975}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !964, file: !955, line: 41, baseType: !967, size: 32)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !264, line: 95, baseType: !133)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !964, file: !955, line: 42, baseType: !133, size: 32, offset: 32)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !964, file: !955, line: 43, baseType: !970, size: 64, offset: 64)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !955, line: 11, baseType: !971)
!971 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !955, line: 8, size: 64, elements: !972)
!972 = !{!973, !974}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !971, file: !955, line: 9, baseType: !133, size: 32)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !971, file: !955, line: 10, baseType: !81, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !964, file: !955, line: 44, baseType: !133, size: 32, offset: 128)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !954, file: !955, line: 52, baseType: !977, size: 128)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !954, file: !955, line: 48, size: 128, elements: !978)
!978 = !{!979, !980, !981}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !977, file: !955, line: 49, baseType: !742, size: 32)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !977, file: !955, line: 50, baseType: !962, size: 32, offset: 32)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !977, file: !955, line: 51, baseType: !970, size: 64, offset: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !954, file: !955, line: 61, baseType: !983, size: 256)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !954, file: !955, line: 55, size: 256, elements: !984)
!984 = !{!985, !986, !987, !988, !990}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !983, file: !955, line: 56, baseType: !742, size: 32)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !983, file: !955, line: 57, baseType: !962, size: 32, offset: 32)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !983, file: !955, line: 58, baseType: !133, size: 32, offset: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !983, file: !955, line: 59, baseType: !989, size: 64, offset: 128)
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !264, line: 94, baseType: !265)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !983, file: !955, line: 60, baseType: !989, size: 64, offset: 192)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !954, file: !955, line: 95, baseType: !992, size: 256)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !954, file: !955, line: 64, size: 256, elements: !993)
!993 = !{!994, !995}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !992, file: !955, line: 65, baseType: !81, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, scope: !992, file: !955, line: 77, baseType: !996, size: 192, offset: 64)
!996 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !992, file: !955, line: 77, size: 192, elements: !997)
!997 = !{!998, !999, !1006}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !996, file: !955, line: 82, baseType: !480, size: 16)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !996, file: !955, line: 88, baseType: !1000, size: 192)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !996, file: !955, line: 84, size: 192, elements: !1001)
!1001 = !{!1002, !1004, !1005}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1000, file: !955, line: 85, baseType: !1003, size: 64)
!1003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 64, elements: !606)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1000, file: !955, line: 86, baseType: !81, size: 64, offset: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1000, file: !955, line: 87, baseType: !81, size: 64, offset: 128)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !996, file: !955, line: 93, baseType: !1007, size: 96)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !996, file: !955, line: 90, size: 96, elements: !1008)
!1008 = !{!1009, !1010}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1007, file: !955, line: 91, baseType: !1003, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1007, file: !955, line: 92, baseType: !104, size: 32, offset: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !954, file: !955, line: 101, baseType: !1012, size: 128)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !954, file: !955, line: 98, size: 128, elements: !1013)
!1013 = !{!1014, !1015}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1012, file: !955, line: 99, baseType: !85, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1012, file: !955, line: 100, baseType: !133, size: 32, offset: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !954, file: !955, line: 108, baseType: !1017, size: 128)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !954, file: !955, line: 104, size: 128, elements: !1018)
!1018 = !{!1019, !1020, !1021}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1017, file: !955, line: 105, baseType: !81, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1017, file: !955, line: 106, baseType: !133, size: 32, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1017, file: !955, line: 107, baseType: !7, size: 32, offset: 96)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !492, file: !493, line: 1067, baseType: !1023, offset: 11136)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1024, line: 12, elements: !204)
!1024 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !492, file: !493, line: 1099, baseType: !1026, size: 64, offset: 11136)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !493, line: 56, flags: DIFlagFwdDecl)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !492, file: !493, line: 1103, baseType: !114, size: 128, offset: 11200)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !492, file: !493, line: 1104, baseType: !1030, size: 64, offset: 11328)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !493, line: 46, flags: DIFlagFwdDecl)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !492, file: !493, line: 1105, baseType: !446, size: 192, offset: 11392)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !492, file: !493, line: 1106, baseType: !7, size: 32, offset: 11584)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !492, file: !493, line: 1109, baseType: !1035, size: 128, offset: 11648)
!1035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1036, size: 128, elements: !1038)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !493, line: 51, flags: DIFlagFwdDecl)
!1038 = !{!1039}
!1039 = !DISubrange(count: 2)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !492, file: !493, line: 1110, baseType: !446, size: 192, offset: 11776)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !492, file: !493, line: 1111, baseType: !114, size: 128, offset: 11968)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !492, file: !493, line: 1173, baseType: !1043, size: 64, offset: 12096)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1045, line: 62, size: 256, align: 256, elements: !1046)
!1045 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1046 = !{!1047, !1048, !1049, !1054}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1044, file: !1045, line: 75, baseType: !104, size: 32)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1044, file: !1045, line: 90, baseType: !104, size: 32, offset: 32)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1044, file: !1045, line: 124, baseType: !1050, size: 64, offset: 64)
!1050 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1044, file: !1045, line: 109, size: 64, elements: !1051)
!1051 = !{!1052, !1053}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1050, file: !1045, line: 110, baseType: !350, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1050, file: !1045, line: 112, baseType: !350, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1044, file: !1045, line: 144, baseType: !104, size: 32, offset: 128)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !492, file: !493, line: 1174, baseType: !501, size: 32, offset: 12160)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !492, file: !493, line: 1179, baseType: !84, size: 64, offset: 12224)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !492, file: !493, line: 1182, baseType: !1058, size: 128, offset: 12288)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !424, line: 76, size: 128, elements: !1059)
!1059 = !{!1060, !1065, !1066}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1058, file: !424, line: 85, baseType: !1061, size: 64)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1062, line: 7, size: 64, elements: !1063)
!1062 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1063 = !{!1064}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1061, file: !1062, line: 12, baseType: !651, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1058, file: !424, line: 88, baseType: !123, size: 8, offset: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1058, file: !424, line: 95, baseType: !123, size: 8, offset: 72)
!1067 = !DIDerivedType(tag: DW_TAG_member, scope: !492, file: !493, line: 1184, baseType: !1068, size: 128, offset: 12416)
!1068 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !492, file: !493, line: 1184, size: 128, elements: !1069)
!1069 = !{!1070, !1071}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1068, file: !493, line: 1185, baseType: !506, size: 32)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1068, file: !493, line: 1186, baseType: !780, size: 128, align: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !492, file: !493, line: 1190, baseType: !1073, size: 64, offset: 12544)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !493, line: 53, flags: DIFlagFwdDecl)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !492, file: !493, line: 1192, baseType: !1076, size: 128, offset: 12608)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !424, line: 64, size: 128, elements: !1077)
!1077 = !{!1078, !1171, !1172}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1076, file: !424, line: 65, baseType: !1079, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !320, line: 68, size: 512, align: 128, elements: !1081)
!1081 = !{!1082, !1083, !1163, !1170}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1080, file: !320, line: 69, baseType: !84, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, scope: !1080, file: !320, line: 77, baseType: !1084, size: 320, offset: 64)
!1084 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1080, file: !320, line: 77, size: 320, elements: !1085)
!1085 = !{!1086, !1095, !1100, !1128, !1136, !1142, !1155, !1162}
!1086 = !DIDerivedType(tag: DW_TAG_member, scope: !1084, file: !320, line: 78, baseType: !1087, size: 320)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1084, file: !320, line: 78, size: 320, elements: !1088)
!1088 = !{!1089, !1090, !1093, !1094}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1087, file: !320, line: 84, baseType: !114, size: 128)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1087, file: !320, line: 86, baseType: !1091, size: 64, offset: 128)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !320, line: 26, flags: DIFlagFwdDecl)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1087, file: !320, line: 87, baseType: !84, size: 64, offset: 192)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1087, file: !320, line: 94, baseType: !84, size: 64, offset: 256)
!1095 = !DIDerivedType(tag: DW_TAG_member, scope: !1084, file: !320, line: 96, baseType: !1096, size: 64)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1084, file: !320, line: 96, size: 64, elements: !1097)
!1097 = !{!1098}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1096, file: !320, line: 101, baseType: !1099, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !83, line: 143, baseType: !348)
!1100 = !DIDerivedType(tag: DW_TAG_member, scope: !1084, file: !320, line: 103, baseType: !1101, size: 320)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1084, file: !320, line: 103, size: 320, elements: !1102)
!1102 = !{!1103, !1113, !1116, !1117}
!1103 = !DIDerivedType(tag: DW_TAG_member, scope: !1101, file: !320, line: 104, baseType: !1104, size: 128)
!1104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1101, file: !320, line: 104, size: 128, elements: !1105)
!1105 = !{!1106, !1107}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1104, file: !320, line: 105, baseType: !114, size: 128)
!1107 = !DIDerivedType(tag: DW_TAG_member, scope: !1104, file: !320, line: 106, baseType: !1108, size: 128)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1104, file: !320, line: 106, size: 128, elements: !1109)
!1109 = !{!1110, !1111, !1112}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1108, file: !320, line: 107, baseType: !1079, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1108, file: !320, line: 109, baseType: !133, size: 32, offset: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1108, file: !320, line: 110, baseType: !133, size: 32, offset: 96)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1101, file: !320, line: 117, baseType: !1114, size: 64, offset: 128)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !320, line: 117, flags: DIFlagFwdDecl)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1101, file: !320, line: 119, baseType: !81, size: 64, offset: 192)
!1117 = !DIDerivedType(tag: DW_TAG_member, scope: !1101, file: !320, line: 120, baseType: !1118, size: 64, offset: 256)
!1118 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1101, file: !320, line: 120, size: 64, elements: !1119)
!1119 = !{!1120, !1121, !1122}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1118, file: !320, line: 121, baseType: !81, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1118, file: !320, line: 122, baseType: !84, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, scope: !1118, file: !320, line: 123, baseType: !1123, size: 32)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1118, file: !320, line: 123, size: 32, elements: !1124)
!1124 = !{!1125, !1126, !1127}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1123, file: !320, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1123, file: !320, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1123, file: !320, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1128 = !DIDerivedType(tag: DW_TAG_member, scope: !1084, file: !320, line: 130, baseType: !1129, size: 192)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1084, file: !320, line: 130, size: 192, elements: !1130)
!1130 = !{!1131, !1132, !1133, !1134, !1135}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1129, file: !320, line: 131, baseType: !84, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1129, file: !320, line: 134, baseType: !98, size: 8, offset: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1129, file: !320, line: 135, baseType: !98, size: 8, offset: 72)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1129, file: !320, line: 136, baseType: !369, size: 32, offset: 96)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1129, file: !320, line: 137, baseType: !7, size: 32, offset: 128)
!1136 = !DIDerivedType(tag: DW_TAG_member, scope: !1084, file: !320, line: 139, baseType: !1137, size: 256)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1084, file: !320, line: 139, size: 256, elements: !1138)
!1138 = !{!1139, !1140, !1141}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1137, file: !320, line: 140, baseType: !84, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1137, file: !320, line: 141, baseType: !369, size: 32, offset: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1137, file: !320, line: 143, baseType: !114, size: 128, offset: 128)
!1142 = !DIDerivedType(tag: DW_TAG_member, scope: !1084, file: !320, line: 145, baseType: !1143, size: 256)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1084, file: !320, line: 145, size: 256, elements: !1144)
!1144 = !{!1145, !1146, !1148, !1149, !1154}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1143, file: !320, line: 146, baseType: !84, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1143, file: !320, line: 147, baseType: !1147, size: 64, offset: 64)
!1147 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !309, line: 509, baseType: !1079)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1143, file: !320, line: 148, baseType: !84, size: 64, offset: 128)
!1149 = !DIDerivedType(tag: DW_TAG_member, scope: !1143, file: !320, line: 149, baseType: !1150, size: 64, offset: 192)
!1150 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1143, file: !320, line: 149, size: 64, elements: !1151)
!1151 = !{!1152, !1153}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1150, file: !320, line: 150, baseType: !336, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1150, file: !320, line: 151, baseType: !369, size: 32)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1143, file: !320, line: 156, baseType: !190, offset: 256)
!1155 = !DIDerivedType(tag: DW_TAG_member, scope: !1084, file: !320, line: 159, baseType: !1156, size: 128)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1084, file: !320, line: 159, size: 128, elements: !1157)
!1157 = !{!1158, !1161}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1156, file: !320, line: 161, baseType: !1159, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !320, line: 161, flags: DIFlagFwdDecl)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1156, file: !320, line: 162, baseType: !81, size: 64, offset: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1084, file: !320, line: 176, baseType: !780, size: 128, align: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, scope: !1080, file: !320, line: 179, baseType: !1164, size: 32, offset: 384)
!1164 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1080, file: !320, line: 179, size: 32, elements: !1165)
!1165 = !{!1166, !1167, !1168, !1169}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1164, file: !320, line: 184, baseType: !369, size: 32)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1164, file: !320, line: 192, baseType: !7, size: 32)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1164, file: !320, line: 194, baseType: !7, size: 32)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1164, file: !320, line: 195, baseType: !133, size: 32)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1080, file: !320, line: 199, baseType: !369, size: 32, offset: 416)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1076, file: !424, line: 67, baseType: !104, size: 32, offset: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1076, file: !424, line: 68, baseType: !104, size: 32, offset: 96)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !492, file: !493, line: 1206, baseType: !133, size: 32, offset: 12736)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !492, file: !493, line: 1207, baseType: !133, size: 32, offset: 12768)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !492, file: !493, line: 1209, baseType: !84, size: 64, offset: 12800)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !492, file: !493, line: 1219, baseType: !348, size: 64, offset: 12864)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !492, file: !493, line: 1220, baseType: !348, size: 64, offset: 12928)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !492, file: !493, line: 1317, baseType: !133, size: 32, offset: 12992)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !492, file: !493, line: 1319, baseType: !491, size: 64, offset: 13056)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !492, file: !493, line: 1322, baseType: !1181, size: 64, offset: 13120)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1183, line: 56, size: 512, elements: !1184)
!1183 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1184 = !{!1185, !1186, !1187, !1188, !1189, !1191, !1192, !1194}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1182, file: !1183, line: 57, baseType: !1181, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1182, file: !1183, line: 58, baseType: !81, size: 64, offset: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1182, file: !1183, line: 59, baseType: !84, size: 64, offset: 128)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1182, file: !1183, line: 60, baseType: !84, size: 64, offset: 192)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1182, file: !1183, line: 61, baseType: !1190, size: 64, offset: 256)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1182, file: !1183, line: 62, baseType: !7, size: 32, offset: 320)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1182, file: !1183, line: 63, baseType: !1193, size: 64, offset: 384)
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !83, line: 153, baseType: !348)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1182, file: !1183, line: 64, baseType: !170, size: 64, offset: 448)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !492, file: !493, line: 1326, baseType: !506, size: 32, offset: 13184)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !492, file: !493, line: 1342, baseType: !81, size: 64, offset: 13248)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !492, file: !493, line: 1343, baseType: !350, size: 64, offset: 13312)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !492, file: !493, line: 1344, baseType: !348, size: 64, offset: 13376)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !492, file: !493, line: 1345, baseType: !350, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !492, file: !493, line: 1346, baseType: !350, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !492, file: !493, line: 1347, baseType: !350, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !492, file: !493, line: 1348, baseType: !780, size: 128, align: 64, offset: 13504)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !492, file: !493, line: 1358, baseType: !1204, size: 34816, offset: 13824)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1205, line: 485, size: 34816, elements: !1206)
!1205 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1206 = !{!1207, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1236, !1237, !1238, !1239, !1240, !1241, !1244, !1245, !1246}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1204, file: !1205, line: 487, baseType: !1208, size: 192)
!1208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1209, size: 192, elements: !232)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1210, line: 16, size: 64, elements: !1211)
!1210 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1211 = !{!1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1209, file: !1210, line: 17, baseType: !475, size: 16)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1209, file: !1210, line: 18, baseType: !475, size: 16, offset: 16)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1209, file: !1210, line: 19, baseType: !475, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1209, file: !1210, line: 19, baseType: !475, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1209, file: !1210, line: 19, baseType: !475, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1209, file: !1210, line: 19, baseType: !475, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1209, file: !1210, line: 19, baseType: !475, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1209, file: !1210, line: 20, baseType: !475, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1209, file: !1210, line: 20, baseType: !475, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1209, file: !1210, line: 20, baseType: !475, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1209, file: !1210, line: 20, baseType: !475, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1209, file: !1210, line: 20, baseType: !475, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1209, file: !1210, line: 20, baseType: !475, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1204, file: !1205, line: 491, baseType: !84, size: 64, offset: 192)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1204, file: !1205, line: 495, baseType: !272, size: 16, offset: 256)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1204, file: !1205, line: 496, baseType: !272, size: 16, offset: 272)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1204, file: !1205, line: 497, baseType: !272, size: 16, offset: 288)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1204, file: !1205, line: 498, baseType: !272, size: 16, offset: 304)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1204, file: !1205, line: 502, baseType: !84, size: 64, offset: 320)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1204, file: !1205, line: 503, baseType: !84, size: 64, offset: 384)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1204, file: !1205, line: 514, baseType: !1233, size: 256, offset: 448)
!1233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1234, size: 256, elements: !428)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1205, line: 483, flags: DIFlagFwdDecl)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1204, file: !1205, line: 516, baseType: !84, size: 64, offset: 704)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1204, file: !1205, line: 518, baseType: !84, size: 64, offset: 768)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1204, file: !1205, line: 520, baseType: !84, size: 64, offset: 832)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1204, file: !1205, line: 521, baseType: !84, size: 64, offset: 896)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1204, file: !1205, line: 522, baseType: !84, size: 64, offset: 960)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1204, file: !1205, line: 528, baseType: !1242, size: 64, offset: 1024)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1205, line: 10, flags: DIFlagFwdDecl)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1204, file: !1205, line: 535, baseType: !84, size: 64, offset: 1088)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1204, file: !1205, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1204, file: !1205, line: 540, baseType: !1247, size: 33280, offset: 1536)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1248, line: 317, size: 33280, elements: !1249)
!1248 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1249 = !{!1250, !1251, !1252}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1247, file: !1248, line: 330, baseType: !7, size: 32)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1247, file: !1248, line: 337, baseType: !84, size: 64, offset: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1247, file: !1248, line: 348, baseType: !1253, size: 32768, offset: 512)
!1253 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1248, line: 304, size: 32768, elements: !1254)
!1254 = !{!1255, !1270, !1309, !1359, !1376}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1253, file: !1248, line: 305, baseType: !1256, size: 896)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1248, line: 12, size: 896, elements: !1257)
!1257 = !{!1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1269}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1256, file: !1248, line: 13, baseType: !501, size: 32)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1256, file: !1248, line: 14, baseType: !501, size: 32, offset: 32)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1256, file: !1248, line: 15, baseType: !501, size: 32, offset: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1256, file: !1248, line: 16, baseType: !501, size: 32, offset: 96)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1256, file: !1248, line: 17, baseType: !501, size: 32, offset: 128)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1256, file: !1248, line: 18, baseType: !501, size: 32, offset: 160)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1256, file: !1248, line: 19, baseType: !501, size: 32, offset: 192)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1256, file: !1248, line: 22, baseType: !1266, size: 640, offset: 224)
!1266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !501, size: 640, elements: !1267)
!1267 = !{!1268}
!1268 = !DISubrange(count: 20)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1256, file: !1248, line: 25, baseType: !501, size: 32, offset: 864)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1253, file: !1248, line: 306, baseType: !1271, size: 4096, align: 128)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1248, line: 34, size: 4096, align: 128, elements: !1272)
!1272 = !{!1273, !1274, !1275, !1276, !1277, !1292, !1293, !1294, !1298, !1300, !1304}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1271, file: !1248, line: 35, baseType: !475, size: 16)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1271, file: !1248, line: 36, baseType: !475, size: 16, offset: 16)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1271, file: !1248, line: 37, baseType: !475, size: 16, offset: 32)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1271, file: !1248, line: 38, baseType: !475, size: 16, offset: 48)
!1277 = !DIDerivedType(tag: DW_TAG_member, scope: !1271, file: !1248, line: 39, baseType: !1278, size: 128, offset: 64)
!1278 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1271, file: !1248, line: 39, size: 128, elements: !1279)
!1279 = !{!1280, !1285}
!1280 = !DIDerivedType(tag: DW_TAG_member, scope: !1278, file: !1248, line: 40, baseType: !1281, size: 128)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1278, file: !1248, line: 40, size: 128, elements: !1282)
!1282 = !{!1283, !1284}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1281, file: !1248, line: 41, baseType: !348, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1281, file: !1248, line: 42, baseType: !348, size: 64, offset: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, scope: !1278, file: !1248, line: 44, baseType: !1286, size: 128)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1278, file: !1248, line: 44, size: 128, elements: !1287)
!1287 = !{!1288, !1289, !1290, !1291}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1286, file: !1248, line: 45, baseType: !501, size: 32)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1286, file: !1248, line: 46, baseType: !501, size: 32, offset: 32)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1286, file: !1248, line: 47, baseType: !501, size: 32, offset: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1286, file: !1248, line: 48, baseType: !501, size: 32, offset: 96)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1271, file: !1248, line: 51, baseType: !501, size: 32, offset: 192)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1271, file: !1248, line: 52, baseType: !501, size: 32, offset: 224)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1271, file: !1248, line: 55, baseType: !1295, size: 1024, offset: 256)
!1295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !501, size: 1024, elements: !1296)
!1296 = !{!1297}
!1297 = !DISubrange(count: 32)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1271, file: !1248, line: 58, baseType: !1299, size: 2048, offset: 1280)
!1299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !501, size: 2048, elements: !236)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1271, file: !1248, line: 60, baseType: !1301, size: 384, offset: 3328)
!1301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !501, size: 384, elements: !1302)
!1302 = !{!1303}
!1303 = !DISubrange(count: 12)
!1304 = !DIDerivedType(tag: DW_TAG_member, scope: !1271, file: !1248, line: 62, baseType: !1305, size: 384, offset: 3712)
!1305 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1271, file: !1248, line: 62, size: 384, elements: !1306)
!1306 = !{!1307, !1308}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1305, file: !1248, line: 63, baseType: !1301, size: 384)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1305, file: !1248, line: 64, baseType: !1301, size: 384)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1253, file: !1248, line: 307, baseType: !1310, size: 1088)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1248, line: 79, size: 1088, elements: !1311)
!1311 = !{!1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1358}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1310, file: !1248, line: 80, baseType: !501, size: 32)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1310, file: !1248, line: 81, baseType: !501, size: 32, offset: 32)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1310, file: !1248, line: 82, baseType: !501, size: 32, offset: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1310, file: !1248, line: 83, baseType: !501, size: 32, offset: 96)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1310, file: !1248, line: 84, baseType: !501, size: 32, offset: 128)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1310, file: !1248, line: 85, baseType: !501, size: 32, offset: 160)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1310, file: !1248, line: 86, baseType: !501, size: 32, offset: 192)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1310, file: !1248, line: 88, baseType: !1266, size: 640, offset: 224)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1310, file: !1248, line: 89, baseType: !637, size: 8, offset: 864)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1310, file: !1248, line: 90, baseType: !637, size: 8, offset: 872)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1310, file: !1248, line: 91, baseType: !637, size: 8, offset: 880)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1310, file: !1248, line: 92, baseType: !637, size: 8, offset: 888)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1310, file: !1248, line: 93, baseType: !637, size: 8, offset: 896)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1310, file: !1248, line: 94, baseType: !637, size: 8, offset: 904)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1310, file: !1248, line: 95, baseType: !1327, size: 64, offset: 960)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1329, line: 11, size: 128, elements: !1330)
!1329 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1330 = !{!1331, !1332}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1328, file: !1329, line: 12, baseType: !85, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1328, file: !1329, line: 13, baseType: !1333, size: 64, offset: 64)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1335, line: 56, size: 1344, elements: !1336)
!1335 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1336 = !{!1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1334, file: !1335, line: 61, baseType: !84, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1334, file: !1335, line: 62, baseType: !84, size: 64, offset: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1334, file: !1335, line: 63, baseType: !84, size: 64, offset: 128)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1334, file: !1335, line: 64, baseType: !84, size: 64, offset: 192)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1334, file: !1335, line: 65, baseType: !84, size: 64, offset: 256)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1334, file: !1335, line: 66, baseType: !84, size: 64, offset: 320)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1334, file: !1335, line: 68, baseType: !84, size: 64, offset: 384)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1334, file: !1335, line: 69, baseType: !84, size: 64, offset: 448)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1334, file: !1335, line: 70, baseType: !84, size: 64, offset: 512)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1334, file: !1335, line: 71, baseType: !84, size: 64, offset: 576)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1334, file: !1335, line: 72, baseType: !84, size: 64, offset: 640)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1334, file: !1335, line: 73, baseType: !84, size: 64, offset: 704)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1334, file: !1335, line: 74, baseType: !84, size: 64, offset: 768)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1334, file: !1335, line: 75, baseType: !84, size: 64, offset: 832)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1334, file: !1335, line: 76, baseType: !84, size: 64, offset: 896)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1334, file: !1335, line: 81, baseType: !84, size: 64, offset: 960)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1334, file: !1335, line: 83, baseType: !84, size: 64, offset: 1024)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1334, file: !1335, line: 84, baseType: !84, size: 64, offset: 1088)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1334, file: !1335, line: 85, baseType: !84, size: 64, offset: 1152)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1334, file: !1335, line: 86, baseType: !84, size: 64, offset: 1216)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1334, file: !1335, line: 87, baseType: !84, size: 64, offset: 1280)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1310, file: !1248, line: 96, baseType: !501, size: 32, offset: 1024)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1253, file: !1248, line: 308, baseType: !1360, size: 4608, align: 512)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1248, line: 289, size: 4608, align: 512, elements: !1361)
!1361 = !{!1362, !1363, !1372}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1360, file: !1248, line: 290, baseType: !1271, size: 4096, align: 128)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1360, file: !1248, line: 291, baseType: !1364, size: 512, offset: 4096)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1248, line: 268, size: 512, elements: !1365)
!1365 = !{!1366, !1367, !1368}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1364, file: !1248, line: 269, baseType: !348, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1364, file: !1248, line: 270, baseType: !348, size: 64, offset: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1364, file: !1248, line: 271, baseType: !1369, size: 384, offset: 128)
!1369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 384, elements: !1370)
!1370 = !{!1371}
!1371 = !DISubrange(count: 6)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1360, file: !1248, line: 292, baseType: !1373, offset: 4608)
!1373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !637, elements: !1374)
!1374 = !{!1375}
!1375 = !DISubrange(count: 0)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1253, file: !1248, line: 309, baseType: !1377, size: 32768)
!1377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !637, size: 32768, elements: !1378)
!1378 = !{!1379}
!1379 = !DISubrange(count: 4096)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !488, file: !320, line: 378, baseType: !1381, size: 64, offset: 64)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !484, file: !320, line: 384, baseType: !802, size: 192, offset: 192)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !340, file: !320, line: 500, baseType: !190, offset: 6656)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !340, file: !320, line: 501, baseType: !1385, size: 64, offset: 6656)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !320, line: 387, flags: DIFlagFwdDecl)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !340, file: !320, line: 516, baseType: !1388, size: 64, offset: 6720)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !320, line: 516, flags: DIFlagFwdDecl)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !340, file: !320, line: 519, baseType: !307, size: 64, offset: 6784)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !340, file: !320, line: 521, baseType: !1392, size: 64, offset: 6848)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !320, line: 521, flags: DIFlagFwdDecl)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !340, file: !320, line: 545, baseType: !369, size: 32, offset: 6912)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !340, file: !320, line: 548, baseType: !123, size: 8, offset: 6944)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !340, file: !320, line: 550, baseType: !1397, offset: 6952)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1398, line: 142, elements: !204)
!1398 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !340, file: !320, line: 554, baseType: !1400, size: 256, offset: 6976)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1401, line: 102, size: 256, elements: !1402)
!1401 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1402 = !{!1403, !1404, !1405}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1400, file: !1401, line: 103, baseType: !377, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1400, file: !1401, line: 104, baseType: !114, size: 128, offset: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1400, file: !1401, line: 105, baseType: !1406, size: 64, offset: 192)
!1406 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1401, line: 21, baseType: !1407)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{null, !1410}
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !340, file: !320, line: 557, baseType: !501, size: 32, offset: 7232)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !337, file: !320, line: 565, baseType: !1413, offset: 7296)
!1413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, elements: !1414)
!1414 = !{!1415}
!1415 = !DISubrange(count: -1)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !319, file: !320, line: 333, baseType: !1417, size: 64, offset: 576)
!1417 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !309, line: 284, baseType: !1418)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !309, line: 284, size: 64, elements: !1419)
!1419 = !{!1420}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1418, file: !309, line: 284, baseType: !1421, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !367, line: 19, baseType: !84)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !319, file: !320, line: 334, baseType: !84, size: 64, offset: 640)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !319, file: !320, line: 343, baseType: !1424, size: 256, offset: 704)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !319, file: !320, line: 340, size: 256, elements: !1425)
!1425 = !{!1426, !1427}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1424, file: !320, line: 341, baseType: !327, size: 192, align: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1424, file: !320, line: 342, baseType: !84, size: 64, offset: 192)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !319, file: !320, line: 351, baseType: !114, size: 128, offset: 960)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !319, file: !320, line: 353, baseType: !1430, size: 64, offset: 1088)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !320, line: 353, flags: DIFlagFwdDecl)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !319, file: !320, line: 356, baseType: !1433, size: 64, offset: 1152)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1435)
!1435 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !320, line: 356, flags: DIFlagFwdDecl)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !319, file: !320, line: 359, baseType: !84, size: 64, offset: 1216)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !319, file: !320, line: 361, baseType: !307, size: 64, offset: 1280)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !319, file: !320, line: 362, baseType: !81, size: 64, offset: 1344)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !319, file: !320, line: 365, baseType: !377, size: 64, offset: 1408)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !319, file: !320, line: 373, baseType: !1441, offset: 1472)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !320, line: 296, elements: !204)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !286, file: !256, line: 90, baseType: !281, size: 64, offset: 192)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !286, file: !256, line: 91, baseType: !1444, size: 64, offset: 256)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !246, file: !178, line: 143, baseType: !1446, size: 64, offset: 256)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{!1449, !183}
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1451)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1452)
!1452 = !{!1453, !1454, !1458, !1462, !1468, !1472}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1451, file: !18, line: 40, baseType: !17, size: 32)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1451, file: !18, line: 41, baseType: !1455, size: 64, offset: 64)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!123}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1451, file: !18, line: 42, baseType: !1459, size: 64, offset: 128)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DISubroutineType(types: !1461)
!1461 = !{!81}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1451, file: !18, line: 43, baseType: !1463, size: 64, offset: 192)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{!170, !1466}
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1451, file: !18, line: 44, baseType: !1469, size: 64, offset: 256)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!170}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1451, file: !18, line: 45, baseType: !1473, size: 64, offset: 320)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{null, !81}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !246, file: !178, line: 144, baseType: !1477, size: 64, offset: 320)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!170, !183}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !246, file: !178, line: 145, baseType: !1481, size: 64, offset: 384)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DISubroutineType(types: !1483)
!1483 = !{null, !183, !1484, !1491}
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1486, line: 23, baseType: !1487)
!1486 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1486, line: 21, size: 32, elements: !1488)
!1488 = !{!1489}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1487, file: !1486, line: 22, baseType: !1490, size: 32)
!1490 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !83, line: 32, baseType: !962)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1486, line: 28, baseType: !1493)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1486, line: 26, size: 32, elements: !1494)
!1494 = !{!1495}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1493, file: !1486, line: 27, baseType: !1496, size: 32)
!1496 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !83, line: 33, baseType: !1497)
!1497 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !264, line: 50, baseType: !7)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !177, file: !178, line: 70, baseType: !1499, size: 64, offset: 384)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1501, line: 123, size: 1024, elements: !1502)
!1501 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1502 = !{!1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1644, !1645, !1646, !1647, !1648}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1500, file: !1501, line: 124, baseType: !369, size: 32)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1500, file: !1501, line: 125, baseType: !369, size: 32, offset: 32)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1500, file: !1501, line: 135, baseType: !1499, size: 64, offset: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1500, file: !1501, line: 136, baseType: !125, size: 64, offset: 128)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1500, file: !1501, line: 138, baseType: !327, size: 192, align: 64, offset: 192)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1500, file: !1501, line: 140, baseType: !170, size: 64, offset: 384)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1500, file: !1501, line: 141, baseType: !7, size: 32, offset: 448)
!1510 = !DIDerivedType(tag: DW_TAG_member, scope: !1500, file: !1501, line: 142, baseType: !1511, size: 256, offset: 512)
!1511 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1500, file: !1501, line: 142, size: 256, elements: !1512)
!1512 = !{!1513, !1567, !1571}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1511, file: !1501, line: 143, baseType: !1514, size: 192)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1501, line: 91, size: 192, elements: !1515)
!1515 = !{!1516, !1517, !1518}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1514, file: !1501, line: 92, baseType: !84, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1514, file: !1501, line: 94, baseType: !344, size: 64, offset: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1514, file: !1501, line: 100, baseType: !1519, size: 64, offset: 128)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1501, line: 180, size: 704, elements: !1521)
!1521 = !{!1522, !1523, !1524, !1537, !1538, !1539, !1565, !1566}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1520, file: !1501, line: 182, baseType: !1499, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1520, file: !1501, line: 183, baseType: !7, size: 32, offset: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1520, file: !1501, line: 186, baseType: !1525, size: 192, offset: 128)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1526, line: 19, size: 192, elements: !1527)
!1526 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1527 = !{!1528, !1535, !1536}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1525, file: !1526, line: 20, baseType: !1529, size: 128)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1530, line: 292, size: 128, elements: !1531)
!1530 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1531 = !{!1532, !1533, !1534}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1529, file: !1530, line: 293, baseType: !190)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1529, file: !1530, line: 295, baseType: !82, size: 32)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1529, file: !1530, line: 296, baseType: !81, size: 64, offset: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1525, file: !1526, line: 21, baseType: !7, size: 32, offset: 128)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1525, file: !1526, line: 22, baseType: !7, size: 32, offset: 160)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1520, file: !1501, line: 187, baseType: !501, size: 32, offset: 320)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1520, file: !1501, line: 188, baseType: !501, size: 32, offset: 352)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1520, file: !1501, line: 189, baseType: !1540, size: 64, offset: 384)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1501, line: 168, size: 320, elements: !1542)
!1542 = !{!1543, !1549, !1553, !1557, !1561}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1541, file: !1501, line: 169, baseType: !1544, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!133, !1547, !1519}
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !309, line: 539, flags: DIFlagFwdDecl)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1541, file: !1501, line: 171, baseType: !1550, size: 64, offset: 64)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{!133, !1499, !125, !271}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1541, file: !1501, line: 173, baseType: !1554, size: 64, offset: 128)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{!133, !1499}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1541, file: !1501, line: 174, baseType: !1558, size: 64, offset: 192)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!133, !1499, !1499, !125}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1541, file: !1501, line: 176, baseType: !1562, size: 64, offset: 256)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!133, !1547, !1499, !1519}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1520, file: !1501, line: 192, baseType: !114, size: 128, offset: 448)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1520, file: !1501, line: 194, baseType: !773, size: 128, offset: 576)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1511, file: !1501, line: 144, baseType: !1568, size: 64)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1501, line: 103, size: 64, elements: !1569)
!1569 = !{!1570}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1568, file: !1501, line: 104, baseType: !1499, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1511, file: !1501, line: 145, baseType: !1572, size: 256)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1501, line: 107, size: 256, elements: !1573)
!1573 = !{!1574, !1639, !1642, !1643}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1572, file: !1501, line: 108, baseType: !1575, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1577)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1501, line: 217, size: 768, elements: !1578)
!1578 = !{!1579, !1599, !1603, !1607, !1612, !1616, !1620, !1624, !1625, !1626, !1627, !1635}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1577, file: !1501, line: 222, baseType: !1580, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!133, !1583}
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1501, line: 197, size: 1088, elements: !1585)
!1585 = !{!1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1584, file: !1501, line: 199, baseType: !1499, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1584, file: !1501, line: 200, baseType: !307, size: 64, offset: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1584, file: !1501, line: 201, baseType: !1547, size: 64, offset: 128)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1584, file: !1501, line: 202, baseType: !81, size: 64, offset: 192)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1584, file: !1501, line: 205, baseType: !446, size: 192, offset: 256)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1584, file: !1501, line: 206, baseType: !446, size: 192, offset: 448)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1584, file: !1501, line: 207, baseType: !133, size: 32, offset: 640)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1584, file: !1501, line: 208, baseType: !114, size: 128, offset: 704)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1584, file: !1501, line: 209, baseType: !231, size: 64, offset: 832)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1584, file: !1501, line: 211, baseType: !277, size: 64, offset: 896)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1584, file: !1501, line: 212, baseType: !123, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1584, file: !1501, line: 213, baseType: !123, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1584, file: !1501, line: 214, baseType: !1433, size: 64, offset: 1024)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1577, file: !1501, line: 223, baseType: !1600, size: 64, offset: 64)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{null, !1583}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1577, file: !1501, line: 236, baseType: !1604, size: 64, offset: 128)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!133, !1547, !81}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1577, file: !1501, line: 238, baseType: !1608, size: 64, offset: 192)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!81, !1547, !1611}
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1577, file: !1501, line: 239, baseType: !1613, size: 64, offset: 256)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{!81, !1547, !81, !1611}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1577, file: !1501, line: 240, baseType: !1617, size: 64, offset: 320)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{null, !1547, !81}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1577, file: !1501, line: 242, baseType: !1621, size: 64, offset: 384)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!262, !1583, !231, !277, !310}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1577, file: !1501, line: 252, baseType: !277, size: 64, offset: 448)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1577, file: !1501, line: 259, baseType: !123, size: 8, offset: 512)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1577, file: !1501, line: 260, baseType: !1621, size: 64, offset: 576)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1577, file: !1501, line: 263, baseType: !1628, size: 64, offset: 640)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{!1631, !1583, !1633}
!1631 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1632, line: 52, baseType: !7)
!1632 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1501, line: 27, flags: DIFlagFwdDecl)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1577, file: !1501, line: 266, baseType: !1636, size: 64, offset: 704)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{!133, !1583, !318}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1572, file: !1501, line: 109, baseType: !1640, size: 64, offset: 64)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1501, line: 31, flags: DIFlagFwdDecl)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1572, file: !1501, line: 110, baseType: !310, size: 64, offset: 128)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1572, file: !1501, line: 111, baseType: !1499, size: 64, offset: 192)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1500, file: !1501, line: 148, baseType: !81, size: 64, offset: 768)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1500, file: !1501, line: 154, baseType: !348, size: 64, offset: 832)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1500, file: !1501, line: 156, baseType: !272, size: 16, offset: 896)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1500, file: !1501, line: 157, baseType: !271, size: 16, offset: 912)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1500, file: !1501, line: 158, baseType: !1649, size: 64, offset: 960)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1501, line: 32, flags: DIFlagFwdDecl)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !177, file: !178, line: 71, baseType: !1652, size: 32, offset: 448)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1653, line: 19, size: 32, elements: !1654)
!1653 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1654 = !{!1655}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1652, file: !1653, line: 20, baseType: !506, size: 32)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !177, file: !178, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !177, file: !178, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !177, file: !178, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !177, file: !178, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !177, file: !178, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !174, file: !30, line: 463, baseType: !1662, size: 64, offset: 512)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !174, file: !30, line: 465, baseType: !1664, size: 64, offset: 576)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !174, file: !30, line: 467, baseType: !125, size: 64, offset: 640)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !174, file: !30, line: 468, baseType: !1668, size: 64, offset: 704)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1670)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1671)
!1671 = !{!1672, !1673, !1674, !1678, !1683, !1687}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1670, file: !30, line: 88, baseType: !125, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1670, file: !30, line: 89, baseType: !283, size: 64, offset: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1670, file: !30, line: 90, baseType: !1675, size: 64, offset: 128)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{!133, !1662, !226}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1670, file: !30, line: 91, baseType: !1679, size: 64, offset: 192)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{!231, !1662, !1682, !1484, !1491}
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1670, file: !30, line: 93, baseType: !1684, size: 64, offset: 256)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{null, !1662}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1670, file: !30, line: 95, baseType: !1688, size: 64, offset: 320)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1690)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1691)
!1691 = !{!1692, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1690, file: !37, line: 279, baseType: !1693, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{!133, !1662}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1690, file: !37, line: 280, baseType: !1684, size: 64, offset: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1690, file: !37, line: 281, baseType: !1693, size: 64, offset: 128)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1690, file: !37, line: 282, baseType: !1693, size: 64, offset: 192)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1690, file: !37, line: 283, baseType: !1693, size: 64, offset: 256)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1690, file: !37, line: 284, baseType: !1693, size: 64, offset: 320)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1690, file: !37, line: 285, baseType: !1693, size: 64, offset: 384)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1690, file: !37, line: 286, baseType: !1693, size: 64, offset: 448)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1690, file: !37, line: 287, baseType: !1693, size: 64, offset: 512)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1690, file: !37, line: 288, baseType: !1693, size: 64, offset: 576)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1690, file: !37, line: 289, baseType: !1693, size: 64, offset: 640)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1690, file: !37, line: 290, baseType: !1693, size: 64, offset: 704)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1690, file: !37, line: 291, baseType: !1693, size: 64, offset: 768)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1690, file: !37, line: 292, baseType: !1693, size: 64, offset: 832)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1690, file: !37, line: 293, baseType: !1693, size: 64, offset: 896)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1690, file: !37, line: 294, baseType: !1693, size: 64, offset: 960)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1690, file: !37, line: 295, baseType: !1693, size: 64, offset: 1024)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1690, file: !37, line: 296, baseType: !1693, size: 64, offset: 1088)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1690, file: !37, line: 297, baseType: !1693, size: 64, offset: 1152)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1690, file: !37, line: 298, baseType: !1693, size: 64, offset: 1216)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1690, file: !37, line: 299, baseType: !1693, size: 64, offset: 1280)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1690, file: !37, line: 300, baseType: !1693, size: 64, offset: 1344)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1690, file: !37, line: 301, baseType: !1693, size: 64, offset: 1408)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !174, file: !30, line: 470, baseType: !1719, size: 64, offset: 768)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1721, line: 82, size: 1408, elements: !1722)
!1721 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1722 = !{!1723, !1724, !1725, !1726, !1727, !1728, !1729, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1795, !1798, !1801}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1720, file: !1721, line: 83, baseType: !125, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1720, file: !1721, line: 84, baseType: !125, size: 64, offset: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1720, file: !1721, line: 85, baseType: !1662, size: 64, offset: 128)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1720, file: !1721, line: 86, baseType: !283, size: 64, offset: 192)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1720, file: !1721, line: 87, baseType: !283, size: 64, offset: 256)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1720, file: !1721, line: 88, baseType: !283, size: 64, offset: 320)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1720, file: !1721, line: 90, baseType: !1730, size: 64, offset: 384)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{!133, !1662, !1733}
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1735)
!1735 = !{!1736, !1737, !1738, !1742, !1743, !1744, !1745, !1758, !1759, !1760, !1761, !1762, !1763, !1771, !1772, !1773, !1774, !1775, !1776}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1734, file: !24, line: 96, baseType: !125, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1734, file: !24, line: 97, baseType: !1719, size: 64, offset: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1734, file: !24, line: 99, baseType: !1739, size: 64, offset: 128)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1741, line: 76, flags: DIFlagFwdDecl)
!1741 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1734, file: !24, line: 100, baseType: !125, size: 64, offset: 192)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1734, file: !24, line: 102, baseType: !123, size: 8, offset: 256)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1734, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1734, file: !24, line: 105, baseType: !1746, size: 64, offset: 320)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1748)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !92, line: 262, size: 1600, elements: !1749)
!1749 = !{!1750, !1752, !1753, !1757}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1748, file: !92, line: 263, baseType: !1751, size: 256)
!1751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 256, elements: !1296)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1748, file: !92, line: 264, baseType: !1751, size: 256, offset: 256)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1748, file: !92, line: 265, baseType: !1754, size: 1024, offset: 512)
!1754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 1024, elements: !1755)
!1755 = !{!1756}
!1756 = !DISubrange(count: 128)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1748, file: !92, line: 266, baseType: !170, size: 64, offset: 1536)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1734, file: !24, line: 106, baseType: !112, size: 64, offset: 384)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1734, file: !24, line: 108, baseType: !1693, size: 64, offset: 448)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1734, file: !24, line: 109, baseType: !1684, size: 64, offset: 512)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1734, file: !24, line: 110, baseType: !1693, size: 64, offset: 576)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1734, file: !24, line: 111, baseType: !1684, size: 64, offset: 640)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1734, file: !24, line: 112, baseType: !1764, size: 64, offset: 704)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DISubroutineType(types: !1766)
!1766 = !{!133, !1662, !1767}
!1767 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1768)
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1769)
!1769 = !{!1770}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1768, file: !37, line: 51, baseType: !133, size: 32)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1734, file: !24, line: 113, baseType: !1693, size: 64, offset: 768)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1734, file: !24, line: 114, baseType: !283, size: 64, offset: 832)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1734, file: !24, line: 115, baseType: !283, size: 64, offset: 896)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1734, file: !24, line: 117, baseType: !1688, size: 64, offset: 960)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1734, file: !24, line: 118, baseType: !1684, size: 64, offset: 1024)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1734, file: !24, line: 120, baseType: !1777, size: 64, offset: 1088)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1720, file: !1721, line: 91, baseType: !1675, size: 64, offset: 448)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1720, file: !1721, line: 92, baseType: !1693, size: 64, offset: 512)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1720, file: !1721, line: 93, baseType: !1684, size: 64, offset: 576)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1720, file: !1721, line: 94, baseType: !1693, size: 64, offset: 640)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1720, file: !1721, line: 95, baseType: !1684, size: 64, offset: 704)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1720, file: !1721, line: 97, baseType: !1693, size: 64, offset: 768)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1720, file: !1721, line: 98, baseType: !1693, size: 64, offset: 832)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1720, file: !1721, line: 100, baseType: !1764, size: 64, offset: 896)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1720, file: !1721, line: 101, baseType: !1693, size: 64, offset: 960)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1720, file: !1721, line: 103, baseType: !1693, size: 64, offset: 1024)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1720, file: !1721, line: 105, baseType: !1693, size: 64, offset: 1088)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1720, file: !1721, line: 107, baseType: !1688, size: 64, offset: 1152)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1720, file: !1721, line: 109, baseType: !1792, size: 64, offset: 1216)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1794)
!1794 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1721, line: 109, flags: DIFlagFwdDecl)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1720, file: !1721, line: 111, baseType: !1796, size: 64, offset: 1280)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1721, line: 111, flags: DIFlagFwdDecl)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1720, file: !1721, line: 112, baseType: !1799, offset: 1344)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1800, line: 187, elements: !204)
!1800 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1720, file: !1721, line: 114, baseType: !123, size: 8, offset: 1344)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !174, file: !30, line: 471, baseType: !1733, size: 64, offset: 832)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !174, file: !30, line: 473, baseType: !81, size: 64, offset: 896)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !174, file: !30, line: 475, baseType: !81, size: 64, offset: 960)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !174, file: !30, line: 480, baseType: !446, size: 192, offset: 1024)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !174, file: !30, line: 484, baseType: !1807, size: 576, offset: 1216)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1808)
!1808 = !{!1809, !1810, !1811, !1812, !1813, !1814}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1807, file: !30, line: 362, baseType: !114, size: 128)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1807, file: !30, line: 363, baseType: !114, size: 128, offset: 128)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1807, file: !30, line: 364, baseType: !114, size: 128, offset: 256)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1807, file: !30, line: 365, baseType: !114, size: 128, offset: 384)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1807, file: !30, line: 366, baseType: !123, size: 8, offset: 512)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1807, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !174, file: !30, line: 485, baseType: !1816, size: 2304, offset: 1792)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1817)
!1817 = !{!1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1913, !1917}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1816, file: !37, line: 566, baseType: !1767, size: 32)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1816, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1816, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1816, file: !37, line: 569, baseType: !123, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1816, file: !37, line: 570, baseType: !123, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1816, file: !37, line: 571, baseType: !123, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1816, file: !37, line: 572, baseType: !123, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1816, file: !37, line: 573, baseType: !123, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1816, file: !37, line: 574, baseType: !123, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1816, file: !37, line: 575, baseType: !123, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1816, file: !37, line: 576, baseType: !123, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1816, file: !37, line: 577, baseType: !501, size: 32, offset: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1816, file: !37, line: 578, baseType: !190, offset: 96)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1816, file: !37, line: 580, baseType: !114, size: 128, offset: 128)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1816, file: !37, line: 581, baseType: !802, size: 192, offset: 256)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1816, file: !37, line: 582, baseType: !1834, size: 64, offset: 448)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1836, line: 43, size: 1472, elements: !1837)
!1836 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1837 = !{!1838, !1839, !1840, !1841, !1842, !1845, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1835, file: !1836, line: 44, baseType: !125, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1835, file: !1836, line: 45, baseType: !133, size: 32, offset: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1835, file: !1836, line: 46, baseType: !114, size: 128, offset: 128)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1835, file: !1836, line: 47, baseType: !190, offset: 256)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1835, file: !1836, line: 48, baseType: !1843, size: 64, offset: 256)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1835, file: !1836, line: 49, baseType: !1846, size: 320, offset: 320)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1847, line: 11, size: 320, elements: !1848)
!1847 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1848 = !{!1849, !1850, !1851, !1856}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1846, file: !1847, line: 16, baseType: !766, size: 128)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1846, file: !1847, line: 17, baseType: !84, size: 64, offset: 128)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1846, file: !1847, line: 18, baseType: !1852, size: 64, offset: 192)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{null, !1855}
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1846, file: !1847, line: 19, baseType: !501, size: 32, offset: 256)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1835, file: !1836, line: 50, baseType: !84, size: 64, offset: 640)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1835, file: !1836, line: 51, baseType: !576, size: 64, offset: 704)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1835, file: !1836, line: 52, baseType: !576, size: 64, offset: 768)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1835, file: !1836, line: 53, baseType: !576, size: 64, offset: 832)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1835, file: !1836, line: 54, baseType: !576, size: 64, offset: 896)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1835, file: !1836, line: 55, baseType: !576, size: 64, offset: 960)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1835, file: !1836, line: 56, baseType: !84, size: 64, offset: 1024)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1835, file: !1836, line: 57, baseType: !84, size: 64, offset: 1088)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1835, file: !1836, line: 58, baseType: !84, size: 64, offset: 1152)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1835, file: !1836, line: 59, baseType: !84, size: 64, offset: 1216)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1835, file: !1836, line: 60, baseType: !84, size: 64, offset: 1280)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1835, file: !1836, line: 61, baseType: !1662, size: 64, offset: 1344)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1835, file: !1836, line: 62, baseType: !123, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1835, file: !1836, line: 63, baseType: !123, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1816, file: !37, line: 583, baseType: !123, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1816, file: !37, line: 584, baseType: !123, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1816, file: !37, line: 585, baseType: !123, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1816, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1816, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1816, file: !37, line: 592, baseType: !568, size: 512, offset: 576)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1816, file: !37, line: 593, baseType: !348, size: 64, offset: 1088)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1816, file: !37, line: 594, baseType: !1400, size: 256, offset: 1152)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1816, file: !37, line: 595, baseType: !773, size: 128, offset: 1408)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1816, file: !37, line: 596, baseType: !1843, size: 64, offset: 1536)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1816, file: !37, line: 597, baseType: !369, size: 32, offset: 1600)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1816, file: !37, line: 598, baseType: !369, size: 32, offset: 1632)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1816, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1816, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1816, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1816, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1816, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1816, file: !37, line: 604, baseType: !123, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1816, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1816, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1816, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1816, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1816, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1816, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1816, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1816, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1816, file: !37, line: 613, baseType: !133, size: 32, offset: 1792)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1816, file: !37, line: 614, baseType: !133, size: 32, offset: 1824)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1816, file: !37, line: 615, baseType: !348, size: 64, offset: 1856)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1816, file: !37, line: 616, baseType: !348, size: 64, offset: 1920)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1816, file: !37, line: 617, baseType: !348, size: 64, offset: 1984)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1816, file: !37, line: 618, baseType: !348, size: 64, offset: 2048)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1816, file: !37, line: 620, baseType: !1904, size: 64, offset: 2112)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1906)
!1906 = !{!1907, !1908, !1909, !1910}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1905, file: !37, line: 537, baseType: !190)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1905, file: !37, line: 538, baseType: !7, size: 32)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1905, file: !37, line: 540, baseType: !114, size: 128, offset: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1905, file: !37, line: 543, baseType: !1911, size: 64, offset: 192)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1816, file: !37, line: 621, baseType: !1914, size: 64, offset: 2176)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{null, !1662, !726}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1816, file: !37, line: 622, baseType: !1918, size: 64, offset: 2240)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !174, file: !30, line: 486, baseType: !1921, size: 64, offset: 4096)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1923)
!1923 = !{!1924, !1925, !1926, !1930, !1931, !1932}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1922, file: !37, line: 643, baseType: !1690, size: 1472)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1922, file: !37, line: 644, baseType: !1693, size: 64, offset: 1472)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1922, file: !37, line: 645, baseType: !1927, size: 64, offset: 1536)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{null, !1662, !123}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1922, file: !37, line: 646, baseType: !1693, size: 64, offset: 1600)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1922, file: !37, line: 647, baseType: !1684, size: 64, offset: 1664)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1922, file: !37, line: 648, baseType: !1684, size: 64, offset: 1728)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !174, file: !30, line: 493, baseType: !1934, size: 64, offset: 4160)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !51, line: 162, size: 1088, elements: !1936)
!1936 = !{!1937, !1938, !1939, !2024, !2025, !2026, !2027, !2028, !2029, !2032, !2033, !2034, !2035, !2036, !2037, !2038}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1935, file: !51, line: 163, baseType: !114, size: 128)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1935, file: !51, line: 164, baseType: !125, size: 64, offset: 128)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1935, file: !51, line: 165, baseType: !1940, size: 64, offset: 192)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1942)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !51, line: 105, size: 640, elements: !1943)
!1943 = !{!1944, !1973, !1984, !1989, !1993, !2001, !2005, !2009, !2016, !2020}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1942, file: !51, line: 106, baseType: !1945, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!133, !1934, !1948, !50}
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1950, line: 51, size: 1344, elements: !1951)
!1950 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!1951 = !{!1952, !1953, !1955, !1956, !1957, !1966, !1967, !1968, !1969, !1970, !1971, !1972}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1949, file: !1950, line: 52, baseType: !125, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1949, file: !1950, line: 53, baseType: !1954, size: 32, offset: 64)
!1954 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1950, line: 28, baseType: !501)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1949, file: !1950, line: 54, baseType: !125, size: 64, offset: 128)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1949, file: !1950, line: 55, baseType: !142, size: 192, offset: 192)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1949, file: !1950, line: 57, baseType: !1958, size: 64, offset: 384)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1950, line: 31, size: 704, elements: !1960)
!1960 = !{!1961, !1962, !1963, !1964, !1965}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1959, file: !1950, line: 32, baseType: !231, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1959, file: !1950, line: 33, baseType: !133, size: 32, offset: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1959, file: !1950, line: 34, baseType: !81, size: 64, offset: 128)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1959, file: !1950, line: 35, baseType: !1958, size: 64, offset: 192)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1959, file: !1950, line: 43, baseType: !298, size: 448, offset: 256)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1949, file: !1950, line: 58, baseType: !1958, size: 64, offset: 448)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1949, file: !1950, line: 59, baseType: !1948, size: 64, offset: 512)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1949, file: !1950, line: 60, baseType: !1948, size: 64, offset: 576)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1949, file: !1950, line: 61, baseType: !1948, size: 64, offset: 640)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1949, file: !1950, line: 63, baseType: !177, size: 512, offset: 704)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1949, file: !1950, line: 65, baseType: !84, size: 64, offset: 1216)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1949, file: !1950, line: 66, baseType: !81, size: 64, offset: 1280)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !1942, file: !51, line: 108, baseType: !1974, size: 64, offset: 64)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{!133, !1934, !1977, !50}
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !51, line: 63, size: 640, elements: !1979)
!1979 = !{!1980, !1981, !1982}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1978, file: !51, line: 64, baseType: !146, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !1978, file: !51, line: 65, baseType: !133, size: 32, offset: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !1978, file: !51, line: 66, baseType: !1983, size: 512, offset: 96)
!1983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !501, size: 512, elements: !858)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1942, file: !51, line: 110, baseType: !1985, size: 64, offset: 128)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DISubroutineType(types: !1987)
!1987 = !{!133, !1934, !7, !1988}
!1988 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !83, line: 164, baseType: !84)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !1942, file: !51, line: 111, baseType: !1990, size: 64, offset: 192)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{null, !1934, !7}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !1942, file: !51, line: 112, baseType: !1994, size: 64, offset: 256)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{!133, !1934, !1948, !1997, !7, !1999, !2000}
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !501)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1942, file: !51, line: 117, baseType: !2002, size: 64, offset: 320)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{!133, !1934, !7, !7, !81}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1942, file: !51, line: 119, baseType: !2006, size: 64, offset: 384)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DISubroutineType(types: !2008)
!2008 = !{null, !1934, !7, !7}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1942, file: !51, line: 121, baseType: !2010, size: 64, offset: 448)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!133, !1934, !2013, !123}
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !2015, line: 11, flags: DIFlagFwdDecl)
!2015 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !1942, file: !51, line: 122, baseType: !2017, size: 64, offset: 512)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{null, !1934, !2013}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !1942, file: !51, line: 123, baseType: !2021, size: 64, offset: 576)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!133, !1934, !1977, !1999, !2000}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !1935, file: !51, line: 166, baseType: !81, size: 64, offset: 256)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1935, file: !51, line: 167, baseType: !7, size: 32, offset: 320)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !1935, file: !51, line: 168, baseType: !7, size: 32, offset: 352)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1935, file: !51, line: 171, baseType: !146, size: 64, offset: 384)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !1935, file: !51, line: 172, baseType: !50, size: 32, offset: 448)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !1935, file: !51, line: 173, baseType: !2030, size: 64, offset: 512)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !51, line: 134, flags: DIFlagFwdDecl)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1935, file: !51, line: 175, baseType: !1934, size: 64, offset: 576)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !1935, file: !51, line: 182, baseType: !1988, size: 64, offset: 640)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !1935, file: !51, line: 183, baseType: !7, size: 32, offset: 704)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !1935, file: !51, line: 184, baseType: !7, size: 32, offset: 736)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !1935, file: !51, line: 185, baseType: !1529, size: 128, offset: 768)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !1935, file: !51, line: 186, baseType: !446, size: 192, offset: 896)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !1935, file: !51, line: 187, baseType: !2039, offset: 1088)
!2039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !1414)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !174, file: !30, line: 499, baseType: !114, size: 128, offset: 4224)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !174, file: !30, line: 502, baseType: !2042, size: 64, offset: 4352)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2044)
!2044 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !174, file: !30, line: 504, baseType: !2046, size: 64, offset: 4416)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !174, file: !30, line: 505, baseType: !348, size: 64, offset: 4480)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !174, file: !30, line: 510, baseType: !348, size: 64, offset: 4544)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !174, file: !30, line: 511, baseType: !2050, size: 64, offset: 4608)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2052)
!2052 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !174, file: !30, line: 513, baseType: !2054, size: 64, offset: 4672)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !2056)
!2056 = !{!2057, !2058}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2055, file: !30, line: 293, baseType: !7, size: 32)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2055, file: !30, line: 294, baseType: !84, size: 64, offset: 64)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !174, file: !30, line: 515, baseType: !114, size: 128, offset: 4736)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !174, file: !30, line: 526, baseType: !2061, offset: 4864)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2062, line: 5, elements: !204)
!2062 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !174, file: !30, line: 528, baseType: !1948, size: 64, offset: 4864)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !174, file: !30, line: 529, baseType: !146, size: 64, offset: 4928)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !174, file: !30, line: 534, baseType: !2066, size: 32, offset: 4992)
!2066 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !83, line: 16, baseType: !2067)
!2067 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !83, line: 13, baseType: !501)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !174, file: !30, line: 535, baseType: !501, size: 32, offset: 5024)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !174, file: !30, line: 537, baseType: !190, offset: 5056)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !174, file: !30, line: 538, baseType: !114, size: 128, offset: 5056)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !174, file: !30, line: 540, baseType: !2072, size: 64, offset: 5184)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2074, line: 54, size: 960, elements: !2075)
!2074 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2075 = !{!2076, !2077, !2078, !2079, !2080, !2081, !2082, !2086, !2090, !2091, !2092, !2093, !2097, !2101, !2102}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2073, file: !2074, line: 55, baseType: !125, size: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2073, file: !2074, line: 56, baseType: !1739, size: 64, offset: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2073, file: !2074, line: 58, baseType: !283, size: 64, offset: 128)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2073, file: !2074, line: 59, baseType: !283, size: 64, offset: 192)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2073, file: !2074, line: 60, baseType: !183, size: 64, offset: 256)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2073, file: !2074, line: 62, baseType: !1675, size: 64, offset: 320)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2073, file: !2074, line: 63, baseType: !2083, size: 64, offset: 384)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{!231, !1662, !1682}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2073, file: !2074, line: 65, baseType: !2087, size: 64, offset: 448)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{null, !2072}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2073, file: !2074, line: 66, baseType: !1684, size: 64, offset: 512)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2073, file: !2074, line: 68, baseType: !1693, size: 64, offset: 576)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2073, file: !2074, line: 70, baseType: !1449, size: 64, offset: 640)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2073, file: !2074, line: 71, baseType: !2094, size: 64, offset: 704)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{!170, !1662}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2073, file: !2074, line: 73, baseType: !2098, size: 64, offset: 768)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{null, !1662, !1484, !1491}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2073, file: !2074, line: 75, baseType: !1688, size: 64, offset: 832)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2073, file: !2074, line: 77, baseType: !1796, size: 64, offset: 896)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !174, file: !30, line: 541, baseType: !283, size: 64, offset: 5248)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !174, file: !30, line: 543, baseType: !1684, size: 64, offset: 5312)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !174, file: !30, line: 544, baseType: !2106, size: 64, offset: 5376)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !174, file: !30, line: 545, baseType: !2109, size: 64, offset: 5440)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !174, file: !30, line: 547, baseType: !123, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !174, file: !30, line: 548, baseType: !123, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !174, file: !30, line: 549, baseType: !123, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !174, file: !30, line: 550, baseType: !123, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !150, file: !143, line: 116, baseType: !2116, size: 64, offset: 256)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!123, !164, !125}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !150, file: !143, line: 118, baseType: !2120, size: 64, offset: 320)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!133, !164, !125, !7, !81, !277}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !150, file: !143, line: 123, baseType: !2124, size: 64, offset: 384)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{!133, !164, !125, !2127, !277}
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !150, file: !143, line: 126, baseType: !2129, size: 64, offset: 448)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{!125, !164}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !150, file: !143, line: 127, baseType: !2129, size: 64, offset: 512)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !150, file: !143, line: 128, baseType: !2134, size: 64, offset: 576)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!146, !164}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !150, file: !143, line: 130, baseType: !2138, size: 64, offset: 640)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{!146, !164, !146}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !150, file: !143, line: 133, baseType: !2142, size: 64, offset: 704)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!146, !164, !125}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !150, file: !143, line: 135, baseType: !2146, size: 64, offset: 768)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{!133, !164, !125, !125, !7, !7, !2149}
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !143, line: 43, size: 640, elements: !2151)
!2151 = !{!2152, !2153, !2154}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2150, file: !143, line: 44, baseType: !146, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2150, file: !143, line: 45, baseType: !7, size: 32, offset: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2150, file: !143, line: 46, baseType: !2155, size: 512, offset: 128)
!2155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 512, elements: !606)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !150, file: !143, line: 140, baseType: !2138, size: 64, offset: 832)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !150, file: !143, line: 143, baseType: !2134, size: 64, offset: 896)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !150, file: !143, line: 145, baseType: !153, size: 64, offset: 960)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !150, file: !143, line: 146, baseType: !2160, size: 64, offset: 1024)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!133, !164, !2163}
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !143, line: 29, size: 128, elements: !2165)
!2165 = !{!2166, !2167, !2168}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2164, file: !143, line: 30, baseType: !7, size: 32)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2164, file: !143, line: 31, baseType: !7, size: 32, offset: 32)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2164, file: !143, line: 32, baseType: !164, size: 64, offset: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !150, file: !143, line: 148, baseType: !2170, size: 64, offset: 1088)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{!133, !164, !1662}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !142, file: !143, line: 20, baseType: !1662, size: 64, offset: 128)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !135, file: !109, line: 355, baseType: !134, size: 64, offset: 320)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !135, file: !109, line: 356, baseType: !114, size: 128, offset: 384)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !135, file: !109, line: 357, baseType: !114, size: 128, offset: 512)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !135, file: !109, line: 358, baseType: !114, size: 128, offset: 640)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !135, file: !109, line: 359, baseType: !114, size: 128, offset: 768)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !135, file: !109, line: 360, baseType: !2180, size: 32, offset: 896)
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !109, line: 179, size: 32, elements: !2181)
!2181 = !{!2182, !2183, !2184, !2185, !2186, !2187}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !2180, file: !109, line: 180, baseType: !501, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2180, file: !109, line: 181, baseType: !501, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !2180, file: !109, line: 182, baseType: !501, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !2180, file: !109, line: 183, baseType: !501, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !2180, file: !109, line: 184, baseType: !501, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2180, file: !109, line: 185, baseType: !501, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !135, file: !109, line: 361, baseType: !2189, size: 32, offset: 928)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !109, line: 190, size: 32, elements: !2190)
!2190 = !{!2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !2189, file: !109, line: 191, baseType: !501, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2189, file: !109, line: 192, baseType: !501, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !2189, file: !109, line: 193, baseType: !501, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !2189, file: !109, line: 194, baseType: !501, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !2189, file: !109, line: 195, baseType: !501, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !2189, file: !109, line: 196, baseType: !501, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !2189, file: !109, line: 197, baseType: !501, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !2189, file: !109, line: 198, baseType: !501, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !2189, file: !109, line: 199, baseType: !501, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !2189, file: !109, line: 200, baseType: !501, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !2189, file: !109, line: 201, baseType: !501, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !2189, file: !109, line: 202, baseType: !501, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !2189, file: !109, line: 203, baseType: !501, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2189, file: !109, line: 204, baseType: !501, size: 19, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !135, file: !109, line: 362, baseType: !2206, size: 960, offset: 960)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !109, line: 234, size: 960, elements: !2207)
!2207 = !{!2208, !2210, !2217, !2219, !2220, !2221, !2226, !2229}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !2206, file: !109, line: 235, baseType: !2209, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !109, line: 217, baseType: !1003)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2206, file: !109, line: 236, baseType: !2211, size: 32, offset: 64)
!2211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !109, line: 227, size: 32, elements: !2212)
!2212 = !{!2213, !2214, !2215, !2216}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !2211, file: !109, line: 228, baseType: !501, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !2211, file: !109, line: 229, baseType: !501, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !2211, file: !109, line: 230, baseType: !501, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2211, file: !109, line: 231, baseType: !501, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !2206, file: !109, line: 237, baseType: !2218, size: 64, offset: 128)
!2218 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !109, line: 218, baseType: !348)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !2206, file: !109, line: 238, baseType: !231, size: 64, offset: 192)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2206, file: !109, line: 239, baseType: !114, size: 128, offset: 256)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !2206, file: !109, line: 240, baseType: !2222, size: 320, offset: 384)
!2222 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !109, line: 219, baseType: !2223)
!2223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 320, elements: !2224)
!2224 = !{!2225}
!2225 = !DISubrange(count: 40)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !2206, file: !109, line: 241, baseType: !2227, size: 160, offset: 704)
!2227 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !109, line: 220, baseType: !2228)
!2228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 160, elements: !1267)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !2206, file: !109, line: 242, baseType: !2230, size: 64, offset: 896)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !140, line: 899, size: 192, elements: !2232)
!2232 = !{!2233, !2235, !2240, !2246, !2253, !2259, !2265, !2273}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2231, file: !140, line: 900, baseType: !2234, size: 32)
!2234 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !140, line: 635, baseType: !501)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !2231, file: !140, line: 904, baseType: !2236, size: 128)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2231, file: !140, line: 901, size: 128, elements: !2237)
!2237 = !{!2238, !2239}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2236, file: !140, line: 902, baseType: !2234, size: 32)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2236, file: !140, line: 903, baseType: !348, size: 64, offset: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2231, file: !140, line: 910, baseType: !2241, size: 128)
!2241 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2231, file: !140, line: 906, size: 128, elements: !2242)
!2242 = !{!2243, !2244, !2245}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2241, file: !140, line: 907, baseType: !2234, size: 32)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2241, file: !140, line: 908, baseType: !501, size: 32, offset: 32)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2241, file: !140, line: 909, baseType: !231, size: 64, offset: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2231, file: !140, line: 916, baseType: !2247, size: 128)
!2247 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2231, file: !140, line: 912, size: 128, elements: !2248)
!2248 = !{!2249, !2250, !2251}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2247, file: !140, line: 913, baseType: !2234, size: 32)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2247, file: !140, line: 914, baseType: !501, size: 32, offset: 32)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2247, file: !140, line: 915, baseType: !2252, size: 64, offset: 64)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !2231, file: !140, line: 922, baseType: !2254, size: 128)
!2254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2231, file: !140, line: 918, size: 128, elements: !2255)
!2255 = !{!2256, !2257, !2258}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2254, file: !140, line: 919, baseType: !2234, size: 32)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2254, file: !140, line: 920, baseType: !501, size: 32, offset: 32)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !2254, file: !140, line: 921, baseType: !2230, size: 64, offset: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !2231, file: !140, line: 928, baseType: !2260, size: 128)
!2260 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2231, file: !140, line: 924, size: 128, elements: !2261)
!2261 = !{!2262, !2263, !2264}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2260, file: !140, line: 925, baseType: !2234, size: 32)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !2260, file: !140, line: 926, baseType: !2234, size: 32, offset: 32)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !2260, file: !140, line: 927, baseType: !139, size: 64, offset: 64)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !2231, file: !140, line: 935, baseType: !2266, size: 192)
!2266 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2231, file: !140, line: 930, size: 192, elements: !2267)
!2267 = !{!2268, !2269, !2270, !2272}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2266, file: !140, line: 931, baseType: !2234, size: 32)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !2266, file: !140, line: 932, baseType: !501, size: 32, offset: 32)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !2266, file: !140, line: 933, baseType: !2271, size: 64, offset: 64)
!2271 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !140, line: 128, baseType: !348)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !2266, file: !140, line: 934, baseType: !501, size: 32, offset: 128)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !2231, file: !140, line: 941, baseType: !2274, size: 96)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2231, file: !140, line: 937, size: 96, elements: !2275)
!2275 = !{!2276, !2277, !2278}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2274, file: !140, line: 938, baseType: !2234, size: 32)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !2274, file: !140, line: 939, baseType: !501, size: 32, offset: 32)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !2274, file: !140, line: 940, baseType: !501, size: 32, offset: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !135, file: !109, line: 363, baseType: !2280, size: 1344, offset: 1920)
!2280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !109, line: 275, size: 1344, elements: !2281)
!2281 = !{!2282, !2283, !2293}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2280, file: !109, line: 276, baseType: !133, size: 32)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2280, file: !109, line: 277, baseType: !2284, size: 32, offset: 32)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !109, line: 254, size: 32, elements: !2285)
!2285 = !{!2286, !2287, !2288, !2289, !2290, !2291, !2292}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !2284, file: !109, line: 255, baseType: !501, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !2284, file: !109, line: 256, baseType: !501, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !2284, file: !109, line: 257, baseType: !501, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !2284, file: !109, line: 258, baseType: !501, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !2284, file: !109, line: 259, baseType: !501, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !2284, file: !109, line: 260, baseType: !501, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2284, file: !109, line: 261, baseType: !501, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2280, file: !109, line: 278, baseType: !2294, size: 1280, offset: 64)
!2294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2295, size: 1280, elements: !2306)
!2295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !109, line: 264, size: 256, elements: !2296)
!2296 = !{!2297, !2303, !2304, !2305}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2295, file: !109, line: 269, baseType: !2298, size: 8)
!2298 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2295, file: !109, line: 265, size: 8, elements: !2299)
!2299 = !{!2300, !2301, !2302}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2298, file: !109, line: 266, baseType: !637, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !2298, file: !109, line: 267, baseType: !637, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2298, file: !109, line: 268, baseType: !637, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2295, file: !109, line: 270, baseType: !133, size: 32, offset: 32)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !2295, file: !109, line: 271, baseType: !133, size: 32, offset: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !2295, file: !109, line: 272, baseType: !114, size: 128, offset: 128)
!2306 = !{!2307}
!2307 = !DISubrange(count: 5)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !135, file: !109, line: 364, baseType: !2309, size: 640, offset: 3264)
!2309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !109, line: 315, size: 640, elements: !2310)
!2310 = !{!2311, !2312, !2313, !2314, !2315, !2320, !2329, !2330, !2331}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !2309, file: !109, line: 316, baseType: !139, size: 64)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !2309, file: !109, line: 317, baseType: !348, size: 64, offset: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !2309, file: !109, line: 318, baseType: !348, size: 64, offset: 128)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !2309, file: !109, line: 319, baseType: !114, size: 128, offset: 192)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2309, file: !109, line: 320, baseType: !2316, size: 8, offset: 320)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !109, line: 305, size: 8, elements: !2317)
!2317 = !{!2318, !2319}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2316, file: !109, line: 306, baseType: !637, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !2316, file: !109, line: 307, baseType: !637, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2309, file: !109, line: 321, baseType: !2321, size: 128, offset: 384)
!2321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !109, line: 310, size: 128, elements: !2322)
!2322 = !{!2323, !2328}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2321, file: !109, line: 311, baseType: !2324, size: 64)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{null, !2327}
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2321, file: !109, line: 312, baseType: !1662, size: 64, offset: 64)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !2309, file: !109, line: 322, baseType: !1834, size: 64, offset: 512)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !2309, file: !109, line: 323, baseType: !133, size: 32, offset: 576)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !2309, file: !109, line: 324, baseType: !133, size: 32, offset: 608)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !135, file: !109, line: 365, baseType: !2333, size: 192, offset: 3904)
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !109, line: 297, size: 192, elements: !2334)
!2334 = !{!2335, !2336, !2340, !2341}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2333, file: !109, line: 298, baseType: !133, size: 32)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2333, file: !109, line: 299, baseType: !2337, size: 8, offset: 32)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !109, line: 283, size: 8, elements: !2338)
!2338 = !{!2339}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2337, file: !109, line: 284, baseType: !637, size: 8, flags: DIFlagBitField, extraData: i64 0)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !2333, file: !109, line: 300, baseType: !133, size: 32, offset: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2333, file: !109, line: 301, baseType: !2342, size: 64, offset: 128)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !109, line: 287, size: 64, elements: !2344)
!2344 = !{!2345, !2350, !2351, !2352}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2343, file: !109, line: 291, baseType: !2346, size: 8)
!2346 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2343, file: !109, line: 288, size: 8, elements: !2347)
!2347 = !{!2348, !2349}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2346, file: !109, line: 289, baseType: !637, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2346, file: !109, line: 290, baseType: !637, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2343, file: !109, line: 292, baseType: !637, size: 8, offset: 8)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !2343, file: !109, line: 293, baseType: !637, size: 8, offset: 16)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !2343, file: !109, line: 294, baseType: !133, size: 32, offset: 32)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !135, file: !109, line: 366, baseType: !2354, size: 64, offset: 4096)
!2354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !109, line: 209, size: 64, elements: !2355)
!2355 = !{!2356}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2354, file: !109, line: 210, baseType: !2357, size: 64)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !109, line: 84, flags: DIFlagFwdDecl)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !135, file: !109, line: 367, baseType: !2360, size: 384, offset: 4160)
!2360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !109, line: 341, size: 384, elements: !2361)
!2361 = !{!2362, !2365, !2366, !2367}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2360, file: !109, line: 342, baseType: !2363, size: 64)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2231)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2360, file: !109, line: 343, baseType: !114, size: 128, offset: 64)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !2360, file: !109, line: 344, baseType: !2363, size: 64, offset: 192)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !2360, file: !109, line: 345, baseType: !114, size: 128, offset: 256)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !135, file: !109, line: 368, baseType: !2369, size: 64, offset: 4544)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !135, file: !109, line: 369, baseType: !2371, size: 64, offset: 4608)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !109, line: 138, size: 256, elements: !2373)
!2373 = !{!2374, !2375, !2379, !2383}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !2372, file: !109, line: 139, baseType: !134, size: 64)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2372, file: !109, line: 140, baseType: !2376, size: 64, offset: 64)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{!133, !134, !501}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2372, file: !109, line: 141, baseType: !2380, size: 64, offset: 128)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{null, !134, !501}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2372, file: !109, line: 142, baseType: !2384, size: 64, offset: 192)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{null, !134}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !135, file: !109, line: 370, baseType: !2388, size: 64, offset: 4672)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_driver", file: !109, line: 162, size: 2816, elements: !2390)
!2390 = !{!2391, !2395, !2396, !2397, !2398, !2410, !2411}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2389, file: !109, line: 163, baseType: !2392, size: 640)
!2392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 640, elements: !2393)
!2393 = !{!2394}
!2394 = !DISubrange(count: 80)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2389, file: !109, line: 164, baseType: !2392, size: 640, offset: 640)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2389, file: !109, line: 165, baseType: !112, size: 64, offset: 1280)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2389, file: !109, line: 166, baseType: !7, size: 32, offset: 1344)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2389, file: !109, line: 167, baseType: !2399, size: 192, offset: 1408)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_ops", file: !109, line: 154, size: 192, elements: !2400)
!2400 = !{!2401, !2406, !2408}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !2399, file: !109, line: 155, baseType: !2402, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_add", file: !109, line: 150, baseType: !2403)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{!133, !134}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2399, file: !109, line: 156, baseType: !2407, size: 64, offset: 64)
!2407 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_remove", file: !109, line: 151, baseType: !2403)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2399, file: !109, line: 157, baseType: !2409, size: 64, offset: 128)
!2409 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_notify", file: !109, line: 152, baseType: !2380)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !2389, file: !109, line: 168, baseType: !1734, size: 1152, offset: 1600)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2389, file: !109, line: 169, baseType: !1739, size: 64, offset: 2752)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !135, file: !109, line: 371, baseType: !2413, size: 64, offset: 4736)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2415)
!2415 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !109, line: 348, flags: DIFlagFwdDecl)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !135, file: !109, line: 372, baseType: !81, size: 64, offset: 4800)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !135, file: !109, line: 373, baseType: !174, size: 5568, offset: 4864)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !135, file: !109, line: 374, baseType: !7, size: 32, offset: 10432)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !135, file: !109, line: 375, baseType: !7, size: 32, offset: 10464)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !135, file: !109, line: 376, baseType: !114, size: 128, offset: 10496)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !135, file: !109, line: 377, baseType: !446, size: 192, offset: 10624)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !135, file: !109, line: 378, baseType: !2384, size: 64, offset: 10816)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !108, file: !109, line: 127, baseType: !2384, size: 64, offset: 320)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !108, file: !109, line: 128, baseType: !1684, size: 64, offset: 384)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !108, file: !109, line: 129, baseType: !1684, size: 64, offset: 448)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !108, file: !109, line: 130, baseType: !2427, size: 704, offset: 512)
!2427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !109, line: 108, size: 704, elements: !2428)
!2428 = !{!2429, !2430, !2431, !2432, !2433}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2427, file: !109, line: 109, baseType: !177, size: 512)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !2427, file: !109, line: 110, baseType: !2403, size: 64, offset: 512)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !2427, file: !109, line: 111, baseType: !2384, size: 64, offset: 576)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2427, file: !109, line: 112, baseType: !123, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !2427, file: !109, line: 113, baseType: !123, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!2434 = !{i32 7, !"Dwarf Version", i32 4}
!2435 = !{i32 2, !"Debug Info Version", i32 3}
!2436 = !{i32 1, !"wchar_size", i32 2}
!2437 = !{i32 1, !"Code Model", i32 2}
!2438 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2439 = distinct !DISubprogram(name: "acpi_apd_init", scope: !3, file: !3, line: 252, type: !2440, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !204)
!2440 = !DISubroutineType(types: !2441)
!2441 = !{null}
!2442 = !DILocation(line: 254, column: 2, scope: !2439)
!2443 = !DILocation(line: 255, column: 1, scope: !2439)
!2444 = distinct !DISubprogram(name: "acpi_apd_create_device", scope: !3, file: !3, line: 183, type: !131, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !204)
!2445 = !DILocalVariable(name: "adev", arg: 1, scope: !2444, file: !3, line: 183, type: !134)
!2446 = !DILocation(line: 183, column: 55, scope: !2444)
!2447 = !DILocalVariable(name: "id", arg: 2, scope: !2444, file: !3, line: 184, type: !112)
!2448 = !DILocation(line: 184, column: 37, scope: !2444)
!2449 = !DILocalVariable(name: "dev_desc", scope: !2444, file: !3, line: 186, type: !2450)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2452)
!2452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apd_device_desc", file: !3, line: 31, size: 192, elements: !2453)
!2453 = !{!2454, !2455, !2480}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_clk_rate", scope: !2452, file: !3, line: 32, baseType: !7, size: 32)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2452, file: !3, line: 33, baseType: !2456, size: 64, offset: 64)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property_entry", file: !65, line: 263, size: 256, elements: !2458)
!2458 = !{!2459, !2460, !2461, !2462, !2463}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2457, file: !65, line: 264, baseType: !125, size: 64)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2457, file: !65, line: 265, baseType: !277, size: 64, offset: 64)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "is_inline", scope: !2457, file: !65, line: 266, baseType: !123, size: 8, offset: 128)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2457, file: !65, line: 267, baseType: !64, size: 32, offset: 160)
!2463 = !DIDerivedType(tag: DW_TAG_member, scope: !2457, file: !65, line: 268, baseType: !2464, size: 64, offset: 192)
!2464 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2457, file: !65, line: 268, size: 64, elements: !2465)
!2465 = !{!2466, !2467}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2464, file: !65, line: 269, baseType: !170, size: 64)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2464, file: !65, line: 276, baseType: !2468, size: 64)
!2468 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2464, file: !65, line: 270, size: 64, elements: !2469)
!2469 = !{!2470, !2472, !2474, !2476, !2478}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "u8_data", scope: !2468, file: !65, line: 271, baseType: !2471, size: 64)
!2471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !637, size: 64, elements: !606)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "u16_data", scope: !2468, file: !65, line: 272, baseType: !2473, size: 64)
!2473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !475, size: 64, elements: !428)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "u32_data", scope: !2468, file: !65, line: 273, baseType: !2475, size: 64)
!2475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !501, size: 64, elements: !1038)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "u64_data", scope: !2468, file: !65, line: 274, baseType: !2477, size: 64)
!2477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 64, elements: !106)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2468, file: !65, line: 275, baseType: !2479, size: 64)
!2479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 64, elements: !106)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2452, file: !3, line: 34, baseType: !2481, size: 64, offset: 128)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = !DISubroutineType(types: !2483)
!2483 = !{!133, !2484}
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apd_private_data", file: !3, line: 37, size: 192, elements: !2486)
!2486 = !{!2487, !2491, !2492}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "clk", scope: !2485, file: !3, line: 38, baseType: !2488, size: 64)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DICompositeType(tag: DW_TAG_structure_type, name: "clk", file: !2490, line: 14, flags: DIFlagFwdDecl)
!2490 = !DIFile(filename: "./include/linux/clkdev.h", directory: "/home/lizy2001/genbc/linux")
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "adev", scope: !2485, file: !3, line: 39, baseType: !134, size: 64, offset: 64)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "dev_desc", scope: !2485, file: !3, line: 40, baseType: !2450, size: 64, offset: 128)
!2493 = !DILocation(line: 186, column: 32, scope: !2444)
!2494 = !DILocation(line: 186, column: 51, scope: !2444)
!2495 = !DILocation(line: 186, column: 55, scope: !2444)
!2496 = !DILocation(line: 186, column: 43, scope: !2444)
!2497 = !DILocalVariable(name: "pdata", scope: !2444, file: !3, line: 187, type: !2484)
!2498 = !DILocation(line: 187, column: 27, scope: !2444)
!2499 = !DILocalVariable(name: "pdev", scope: !2444, file: !3, line: 188, type: !2500)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device", file: !2502, line: 22, size: 6208, elements: !2503)
!2502 = !DIFile(filename: "./include/linux/platform_device.h", directory: "/home/lizy2001/genbc/linux")
!2503 = !{!2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2525, !2532, !2533, !2536}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2501, file: !2502, line: 23, baseType: !125, size: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2501, file: !2502, line: 24, baseType: !133, size: 32, offset: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "id_auto", scope: !2501, file: !2502, line: 25, baseType: !123, size: 8, offset: 96)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2501, file: !2502, line: 26, baseType: !174, size: 5568, offset: 128)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "platform_dma_mask", scope: !2501, file: !2502, line: 27, baseType: !348, size: 64, offset: 5696)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2501, file: !2502, line: 28, baseType: !2055, size: 128, offset: 5760)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !2501, file: !2502, line: 29, baseType: !501, size: 32, offset: 5888)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !2501, file: !2502, line: 30, baseType: !2512, size: 64, offset: 5952)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !2514, line: 20, size: 512, elements: !2515)
!2514 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!2515 = !{!2516, !2518, !2519, !2520, !2521, !2522, !2523, !2524}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2513, file: !2514, line: 21, baseType: !2517, size: 64)
!2517 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !83, line: 158, baseType: !1193)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2513, file: !2514, line: 22, baseType: !2517, size: 64, offset: 64)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2513, file: !2514, line: 23, baseType: !125, size: 64, offset: 128)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2513, file: !2514, line: 24, baseType: !84, size: 64, offset: 192)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2513, file: !2514, line: 25, baseType: !84, size: 64, offset: 256)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2513, file: !2514, line: 26, baseType: !2512, size: 64, offset: 320)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2513, file: !2514, line: 26, baseType: !2512, size: 64, offset: 384)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2513, file: !2514, line: 26, baseType: !2512, size: 64, offset: 448)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "id_entry", scope: !2501, file: !2502, line: 32, baseType: !2526, size: 64, offset: 6016)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2528)
!2528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device_id", file: !92, line: 586, size: 256, elements: !2529)
!2529 = !{!2530, !2531}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2528, file: !92, line: 587, baseType: !2228, size: 160)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2528, file: !92, line: 588, baseType: !102, size: 64, offset: 192)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !2501, file: !2502, line: 33, baseType: !231, size: 64, offset: 6080)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "mfd_cell", scope: !2501, file: !2502, line: 36, baseType: !2534, size: 64, offset: 6144)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = !DICompositeType(tag: DW_TAG_structure_type, name: "mfd_cell", file: !2502, line: 18, flags: DIFlagFwdDecl)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2501, file: !2502, line: 39, baseType: !2537, offset: 6208)
!2537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pdev_archdata", file: !2062, line: 8, elements: !204)
!2538 = !DILocation(line: 188, column: 26, scope: !2444)
!2539 = !DILocalVariable(name: "ret", scope: !2444, file: !3, line: 189, type: !133)
!2540 = !DILocation(line: 189, column: 6, scope: !2444)
!2541 = !DILocation(line: 191, column: 7, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2444, file: !3, line: 191, column: 6)
!2543 = !DILocation(line: 191, column: 6, scope: !2444)
!2544 = !DILocation(line: 192, column: 38, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2542, file: !3, line: 191, column: 17)
!2546 = !DILocation(line: 192, column: 10, scope: !2545)
!2547 = !DILocation(line: 192, column: 8, scope: !2545)
!2548 = !DILocation(line: 193, column: 25, scope: !2545)
!2549 = !DILocation(line: 193, column: 10, scope: !2545)
!2550 = !DILocation(line: 193, column: 41, scope: !2545)
!2551 = !DILocation(line: 193, column: 33, scope: !2545)
!2552 = !DILocation(line: 193, column: 3, scope: !2545)
!2553 = !DILocation(line: 196, column: 10, scope: !2444)
!2554 = !DILocation(line: 196, column: 8, scope: !2444)
!2555 = !DILocation(line: 197, column: 7, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2444, file: !3, line: 197, column: 6)
!2557 = !DILocation(line: 197, column: 6, scope: !2444)
!2558 = !DILocation(line: 198, column: 3, scope: !2556)
!2559 = !DILocation(line: 200, column: 16, scope: !2444)
!2560 = !DILocation(line: 200, column: 2, scope: !2444)
!2561 = !DILocation(line: 200, column: 9, scope: !2444)
!2562 = !DILocation(line: 200, column: 14, scope: !2444)
!2563 = !DILocation(line: 201, column: 20, scope: !2444)
!2564 = !DILocation(line: 201, column: 2, scope: !2444)
!2565 = !DILocation(line: 201, column: 9, scope: !2444)
!2566 = !DILocation(line: 201, column: 18, scope: !2444)
!2567 = !DILocation(line: 203, column: 6, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2444, file: !3, line: 203, column: 6)
!2569 = !DILocation(line: 203, column: 16, scope: !2568)
!2570 = !DILocation(line: 203, column: 6, scope: !2444)
!2571 = !DILocation(line: 204, column: 9, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2568, file: !3, line: 203, column: 23)
!2573 = !DILocation(line: 204, column: 19, scope: !2572)
!2574 = !DILocation(line: 204, column: 25, scope: !2572)
!2575 = !DILocation(line: 204, column: 7, scope: !2572)
!2576 = !DILocation(line: 205, column: 7, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2572, file: !3, line: 205, column: 7)
!2578 = !DILocation(line: 205, column: 7, scope: !2572)
!2579 = !DILocation(line: 206, column: 4, scope: !2577)
!2580 = !DILocation(line: 207, column: 2, scope: !2572)
!2581 = !DILocation(line: 209, column: 22, scope: !2444)
!2582 = !DILocation(line: 209, column: 2, scope: !2444)
!2583 = !DILocation(line: 209, column: 8, scope: !2444)
!2584 = !DILocation(line: 209, column: 20, scope: !2444)
!2585 = !DILocation(line: 210, column: 37, scope: !2444)
!2586 = !DILocation(line: 210, column: 43, scope: !2444)
!2587 = !DILocation(line: 210, column: 53, scope: !2444)
!2588 = !DILocation(line: 210, column: 9, scope: !2444)
!2589 = !DILocation(line: 210, column: 7, scope: !2444)
!2590 = !DILocation(line: 211, column: 22, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2444, file: !3, line: 211, column: 6)
!2592 = !DILocation(line: 211, column: 7, scope: !2591)
!2593 = !DILocation(line: 211, column: 6, scope: !2444)
!2594 = !DILocation(line: 212, column: 3, scope: !2591)
!2595 = !DILocation(line: 214, column: 16, scope: !2444)
!2596 = !DILocation(line: 214, column: 8, scope: !2444)
!2597 = !DILocation(line: 214, column: 6, scope: !2444)
!2598 = !DILocation(line: 215, column: 2, scope: !2444)
!2599 = !DILocation(line: 215, column: 8, scope: !2444)
!2600 = !DILocation(line: 215, column: 20, scope: !2444)
!2601 = !DILabel(scope: !2444, name: "err_out", file: !3, line: 217)
!2602 = !DILocation(line: 217, column: 2, scope: !2444)
!2603 = !DILocation(line: 218, column: 8, scope: !2444)
!2604 = !DILocation(line: 218, column: 2, scope: !2444)
!2605 = !DILocation(line: 219, column: 9, scope: !2444)
!2606 = !DILocation(line: 219, column: 2, scope: !2444)
!2607 = !DILocation(line: 220, column: 1, scope: !2444)
!2608 = distinct !DISubprogram(name: "IS_ERR_OR_NULL", scope: !2609, file: !2609, line: 39, type: !2610, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !204)
!2609 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!2610 = !DISubroutineType(types: !2611)
!2611 = !{!123, !170}
!2612 = !DILocalVariable(name: "ptr", arg: 1, scope: !2608, file: !2609, line: 39, type: !170)
!2613 = !DILocation(line: 39, column: 68, scope: !2608)
!2614 = !DILocation(line: 41, column: 9, scope: !2608)
!2615 = !DILocation(line: 41, column: 24, scope: !2608)
!2616 = !DILocation(line: 41, column: 27, scope: !2608)
!2617 = !DILocation(line: 41, column: 2, scope: !2608)
!2618 = distinct !DISubprogram(name: "PTR_ERR", scope: !2609, file: !2609, line: 29, type: !2619, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !204)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{!85, !170}
!2621 = !DILocalVariable(name: "ptr", arg: 1, scope: !2618, file: !2609, line: 29, type: !170)
!2622 = !DILocation(line: 29, column: 61, scope: !2618)
!2623 = !DILocation(line: 31, column: 16, scope: !2618)
!2624 = !DILocation(line: 31, column: 9, scope: !2618)
!2625 = !DILocation(line: 31, column: 2, scope: !2618)
!2626 = distinct !DISubprogram(name: "kzalloc", scope: !74, file: !74, line: 662, type: !2627, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !204)
!2627 = !DISubroutineType(types: !2628)
!2628 = !{!81, !277, !82}
!2629 = !DILocalVariable(name: "s", arg: 1, scope: !2630, file: !74, line: 445, type: !1114)
!2630 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !74, file: !74, line: 445, type: !2631, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !204)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!81, !1114, !82, !277}
!2633 = !DILocation(line: 445, column: 72, scope: !2630, inlinedAt: !2634)
!2634 = distinct !DILocation(line: 552, column: 10, scope: !2635, inlinedAt: !2638)
!2635 = distinct !DILexicalBlock(scope: !2636, file: !74, line: 540, column: 34)
!2636 = distinct !DILexicalBlock(scope: !2637, file: !74, line: 540, column: 6)
!2637 = distinct !DISubprogram(name: "kmalloc", scope: !74, file: !74, line: 538, type: !2627, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !204)
!2638 = distinct !DILocation(line: 664, column: 9, scope: !2626)
!2639 = !DILocalVariable(name: "flags", arg: 2, scope: !2630, file: !74, line: 446, type: !82)
!2640 = !DILocation(line: 446, column: 9, scope: !2630, inlinedAt: !2634)
!2641 = !DILocalVariable(name: "size", arg: 3, scope: !2630, file: !74, line: 446, type: !277)
!2642 = !DILocation(line: 446, column: 23, scope: !2630, inlinedAt: !2634)
!2643 = !DILocalVariable(name: "ret", scope: !2630, file: !74, line: 448, type: !81)
!2644 = !DILocation(line: 448, column: 8, scope: !2630, inlinedAt: !2634)
!2645 = !DILocalVariable(name: "flags", arg: 1, scope: !2646, file: !74, line: 318, type: !82)
!2646 = distinct !DISubprogram(name: "kmalloc_type", scope: !74, file: !74, line: 318, type: !2647, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !204)
!2647 = !DISubroutineType(types: !2648)
!2648 = !{!73, !82}
!2649 = !DILocation(line: 318, column: 67, scope: !2646, inlinedAt: !2650)
!2650 = distinct !DILocation(line: 553, column: 20, scope: !2635, inlinedAt: !2638)
!2651 = !DILocalVariable(name: "size", arg: 1, scope: !2652, file: !74, line: 346, type: !277)
!2652 = distinct !DISubprogram(name: "kmalloc_index", scope: !74, file: !74, line: 346, type: !2653, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !204)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{!7, !277}
!2655 = !DILocation(line: 346, column: 58, scope: !2652, inlinedAt: !2656)
!2656 = distinct !DILocation(line: 547, column: 11, scope: !2635, inlinedAt: !2638)
!2657 = !DILocalVariable(name: "size", arg: 1, scope: !2658, file: !74, line: 472, type: !277)
!2658 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !74, file: !74, line: 472, type: !2659, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !204)
!2659 = !DISubroutineType(types: !2660)
!2660 = !{!81, !277, !82, !7}
!2661 = !DILocation(line: 472, column: 28, scope: !2658, inlinedAt: !2662)
!2662 = distinct !DILocation(line: 481, column: 9, scope: !2663, inlinedAt: !2664)
!2663 = distinct !DISubprogram(name: "kmalloc_large", scope: !74, file: !74, line: 478, type: !2627, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !204)
!2664 = distinct !DILocation(line: 545, column: 11, scope: !2665, inlinedAt: !2638)
!2665 = distinct !DILexicalBlock(scope: !2635, file: !74, line: 544, column: 7)
!2666 = !DILocalVariable(name: "flags", arg: 2, scope: !2658, file: !74, line: 472, type: !82)
!2667 = !DILocation(line: 472, column: 40, scope: !2658, inlinedAt: !2662)
!2668 = !DILocalVariable(name: "order", arg: 3, scope: !2658, file: !74, line: 472, type: !7)
!2669 = !DILocation(line: 472, column: 60, scope: !2658, inlinedAt: !2662)
!2670 = !DILocalVariable(name: "size", arg: 1, scope: !2663, file: !74, line: 478, type: !277)
!2671 = !DILocation(line: 478, column: 51, scope: !2663, inlinedAt: !2664)
!2672 = !DILocalVariable(name: "flags", arg: 2, scope: !2663, file: !74, line: 478, type: !82)
!2673 = !DILocation(line: 478, column: 63, scope: !2663, inlinedAt: !2664)
!2674 = !DILocalVariable(name: "order", scope: !2663, file: !74, line: 480, type: !7)
!2675 = !DILocation(line: 480, column: 15, scope: !2663, inlinedAt: !2664)
!2676 = !DILocalVariable(name: "size", arg: 1, scope: !2637, file: !74, line: 538, type: !277)
!2677 = !DILocation(line: 538, column: 45, scope: !2637, inlinedAt: !2638)
!2678 = !DILocalVariable(name: "flags", arg: 2, scope: !2637, file: !74, line: 538, type: !82)
!2679 = !DILocation(line: 538, column: 57, scope: !2637, inlinedAt: !2638)
!2680 = !DILocalVariable(name: "index", scope: !2635, file: !74, line: 542, type: !7)
!2681 = !DILocation(line: 542, column: 16, scope: !2635, inlinedAt: !2638)
!2682 = !DILocalVariable(name: "size", arg: 1, scope: !2626, file: !74, line: 662, type: !277)
!2683 = !DILocation(line: 662, column: 36, scope: !2626)
!2684 = !DILocalVariable(name: "flags", arg: 2, scope: !2626, file: !74, line: 662, type: !82)
!2685 = !DILocation(line: 662, column: 48, scope: !2626)
!2686 = !DILocation(line: 664, column: 17, scope: !2626)
!2687 = !DILocation(line: 664, column: 23, scope: !2626)
!2688 = !DILocation(line: 664, column: 29, scope: !2626)
!2689 = !DILocation(line: 540, column: 27, scope: !2636, inlinedAt: !2638)
!2690 = !DILocation(line: 540, column: 6, scope: !2636, inlinedAt: !2638)
!2691 = !DILocation(line: 540, column: 6, scope: !2637, inlinedAt: !2638)
!2692 = !DILocation(line: 544, column: 7, scope: !2665, inlinedAt: !2638)
!2693 = !DILocation(line: 544, column: 12, scope: !2665, inlinedAt: !2638)
!2694 = !DILocation(line: 544, column: 7, scope: !2635, inlinedAt: !2638)
!2695 = !DILocation(line: 545, column: 25, scope: !2665, inlinedAt: !2638)
!2696 = !DILocation(line: 545, column: 31, scope: !2665, inlinedAt: !2638)
!2697 = !DILocation(line: 480, column: 33, scope: !2663, inlinedAt: !2664)
!2698 = !DILocation(line: 480, column: 23, scope: !2663, inlinedAt: !2664)
!2699 = !DILocation(line: 481, column: 29, scope: !2663, inlinedAt: !2664)
!2700 = !DILocation(line: 481, column: 35, scope: !2663, inlinedAt: !2664)
!2701 = !DILocation(line: 481, column: 42, scope: !2663, inlinedAt: !2664)
!2702 = !DILocation(line: 474, column: 23, scope: !2658, inlinedAt: !2662)
!2703 = !DILocation(line: 474, column: 29, scope: !2658, inlinedAt: !2662)
!2704 = !DILocation(line: 474, column: 36, scope: !2658, inlinedAt: !2662)
!2705 = !DILocation(line: 474, column: 9, scope: !2658, inlinedAt: !2662)
!2706 = !DILocation(line: 545, column: 4, scope: !2665, inlinedAt: !2638)
!2707 = !DILocation(line: 547, column: 25, scope: !2635, inlinedAt: !2638)
!2708 = !DILocation(line: 348, column: 7, scope: !2709, inlinedAt: !2656)
!2709 = distinct !DILexicalBlock(scope: !2652, file: !74, line: 348, column: 6)
!2710 = !DILocation(line: 348, column: 6, scope: !2652, inlinedAt: !2656)
!2711 = !DILocation(line: 349, column: 3, scope: !2709, inlinedAt: !2656)
!2712 = !DILocation(line: 351, column: 6, scope: !2713, inlinedAt: !2656)
!2713 = distinct !DILexicalBlock(scope: !2652, file: !74, line: 351, column: 6)
!2714 = !DILocation(line: 351, column: 11, scope: !2713, inlinedAt: !2656)
!2715 = !DILocation(line: 351, column: 6, scope: !2652, inlinedAt: !2656)
!2716 = !DILocation(line: 352, column: 3, scope: !2713, inlinedAt: !2656)
!2717 = !DILocation(line: 354, column: 32, scope: !2718, inlinedAt: !2656)
!2718 = distinct !DILexicalBlock(scope: !2652, file: !74, line: 354, column: 6)
!2719 = !DILocation(line: 354, column: 37, scope: !2718, inlinedAt: !2656)
!2720 = !DILocation(line: 354, column: 42, scope: !2718, inlinedAt: !2656)
!2721 = !DILocation(line: 354, column: 45, scope: !2718, inlinedAt: !2656)
!2722 = !DILocation(line: 354, column: 50, scope: !2718, inlinedAt: !2656)
!2723 = !DILocation(line: 354, column: 6, scope: !2652, inlinedAt: !2656)
!2724 = !DILocation(line: 355, column: 3, scope: !2718, inlinedAt: !2656)
!2725 = !DILocation(line: 356, column: 32, scope: !2726, inlinedAt: !2656)
!2726 = distinct !DILexicalBlock(scope: !2652, file: !74, line: 356, column: 6)
!2727 = !DILocation(line: 356, column: 37, scope: !2726, inlinedAt: !2656)
!2728 = !DILocation(line: 356, column: 43, scope: !2726, inlinedAt: !2656)
!2729 = !DILocation(line: 356, column: 46, scope: !2726, inlinedAt: !2656)
!2730 = !DILocation(line: 356, column: 51, scope: !2726, inlinedAt: !2656)
!2731 = !DILocation(line: 356, column: 6, scope: !2652, inlinedAt: !2656)
!2732 = !DILocation(line: 357, column: 3, scope: !2726, inlinedAt: !2656)
!2733 = !DILocation(line: 358, column: 6, scope: !2734, inlinedAt: !2656)
!2734 = distinct !DILexicalBlock(scope: !2652, file: !74, line: 358, column: 6)
!2735 = !DILocation(line: 358, column: 11, scope: !2734, inlinedAt: !2656)
!2736 = !DILocation(line: 358, column: 6, scope: !2652, inlinedAt: !2656)
!2737 = !DILocation(line: 358, column: 26, scope: !2734, inlinedAt: !2656)
!2738 = !DILocation(line: 359, column: 6, scope: !2739, inlinedAt: !2656)
!2739 = distinct !DILexicalBlock(scope: !2652, file: !74, line: 359, column: 6)
!2740 = !DILocation(line: 359, column: 11, scope: !2739, inlinedAt: !2656)
!2741 = !DILocation(line: 359, column: 6, scope: !2652, inlinedAt: !2656)
!2742 = !DILocation(line: 359, column: 26, scope: !2739, inlinedAt: !2656)
!2743 = !DILocation(line: 360, column: 6, scope: !2744, inlinedAt: !2656)
!2744 = distinct !DILexicalBlock(scope: !2652, file: !74, line: 360, column: 6)
!2745 = !DILocation(line: 360, column: 11, scope: !2744, inlinedAt: !2656)
!2746 = !DILocation(line: 360, column: 6, scope: !2652, inlinedAt: !2656)
!2747 = !DILocation(line: 360, column: 26, scope: !2744, inlinedAt: !2656)
!2748 = !DILocation(line: 361, column: 6, scope: !2749, inlinedAt: !2656)
!2749 = distinct !DILexicalBlock(scope: !2652, file: !74, line: 361, column: 6)
!2750 = !DILocation(line: 361, column: 11, scope: !2749, inlinedAt: !2656)
!2751 = !DILocation(line: 361, column: 6, scope: !2652, inlinedAt: !2656)
!2752 = !DILocation(line: 361, column: 26, scope: !2749, inlinedAt: !2656)
!2753 = !DILocation(line: 362, column: 6, scope: !2754, inlinedAt: !2656)
!2754 = distinct !DILexicalBlock(scope: !2652, file: !74, line: 362, column: 6)
!2755 = !DILocation(line: 362, column: 11, scope: !2754, inlinedAt: !2656)
!2756 = !DILocation(line: 362, column: 6, scope: !2652, inlinedAt: !2656)
!2757 = !DILocation(line: 362, column: 26, scope: !2754, inlinedAt: !2656)
!2758 = !DILocation(line: 363, column: 6, scope: !2759, inlinedAt: !2656)
!2759 = distinct !DILexicalBlock(scope: !2652, file: !74, line: 363, column: 6)
!2760 = !DILocation(line: 363, column: 11, scope: !2759, inlinedAt: !2656)
!2761 = !DILocation(line: 363, column: 6, scope: !2652, inlinedAt: !2656)
!2762 = !DILocation(line: 363, column: 26, scope: !2759, inlinedAt: !2656)
!2763 = !DILocation(line: 364, column: 6, scope: !2764, inlinedAt: !2656)
!2764 = distinct !DILexicalBlock(scope: !2652, file: !74, line: 364, column: 6)
!2765 = !DILocation(line: 364, column: 11, scope: !2764, inlinedAt: !2656)
!2766 = !DILocation(line: 364, column: 6, scope: !2652, inlinedAt: !2656)
!2767 = !DILocation(line: 364, column: 26, scope: !2764, inlinedAt: !2656)
!2768 = !DILocation(line: 365, column: 6, scope: !2769, inlinedAt: !2656)
!2769 = distinct !DILexicalBlock(scope: !2652, file: !74, line: 365, column: 6)
!2770 = !DILocation(line: 365, column: 11, scope: !2769, inlinedAt: !2656)
!2771 = !DILocation(line: 365, column: 6, scope: !2652, inlinedAt: !2656)
!2772 = !DILocation(line: 365, column: 26, scope: !2769, inlinedAt: !2656)
!2773 = !DILocation(line: 366, column: 6, scope: !2774, inlinedAt: !2656)
!2774 = distinct !DILexicalBlock(scope: !2652, file: !74, line: 366, column: 6)
!2775 = !DILocation(line: 366, column: 11, scope: !2774, inlinedAt: !2656)
!2776 = !DILocation(line: 366, column: 6, scope: !2652, inlinedAt: !2656)
!2777 = !DILocation(line: 366, column: 26, scope: !2774, inlinedAt: !2656)
!2778 = !DILocation(line: 367, column: 6, scope: !2779, inlinedAt: !2656)
!2779 = distinct !DILexicalBlock(scope: !2652, file: !74, line: 367, column: 6)
!2780 = !DILocation(line: 367, column: 11, scope: !2779, inlinedAt: !2656)
!2781 = !DILocation(line: 367, column: 6, scope: !2652, inlinedAt: !2656)
!2782 = !DILocation(line: 367, column: 26, scope: !2779, inlinedAt: !2656)
!2783 = !DILocation(line: 368, column: 6, scope: !2784, inlinedAt: !2656)
!2784 = distinct !DILexicalBlock(scope: !2652, file: !74, line: 368, column: 6)
!2785 = !DILocation(line: 368, column: 11, scope: !2784, inlinedAt: !2656)
!2786 = !DILocation(line: 368, column: 6, scope: !2652, inlinedAt: !2656)
!2787 = !DILocation(line: 368, column: 26, scope: !2784, inlinedAt: !2656)
!2788 = !DILocation(line: 369, column: 6, scope: !2789, inlinedAt: !2656)
!2789 = distinct !DILexicalBlock(scope: !2652, file: !74, line: 369, column: 6)
!2790 = !DILocation(line: 369, column: 11, scope: !2789, inlinedAt: !2656)
!2791 = !DILocation(line: 369, column: 6, scope: !2652, inlinedAt: !2656)
!2792 = !DILocation(line: 369, column: 26, scope: !2789, inlinedAt: !2656)
!2793 = !DILocation(line: 370, column: 6, scope: !2794, inlinedAt: !2656)
!2794 = distinct !DILexicalBlock(scope: !2652, file: !74, line: 370, column: 6)
!2795 = !DILocation(line: 370, column: 11, scope: !2794, inlinedAt: !2656)
!2796 = !DILocation(line: 370, column: 6, scope: !2652, inlinedAt: !2656)
!2797 = !DILocation(line: 370, column: 26, scope: !2794, inlinedAt: !2656)
!2798 = !DILocation(line: 371, column: 6, scope: !2799, inlinedAt: !2656)
!2799 = distinct !DILexicalBlock(scope: !2652, file: !74, line: 371, column: 6)
!2800 = !DILocation(line: 371, column: 11, scope: !2799, inlinedAt: !2656)
!2801 = !DILocation(line: 371, column: 6, scope: !2652, inlinedAt: !2656)
!2802 = !DILocation(line: 371, column: 26, scope: !2799, inlinedAt: !2656)
!2803 = !DILocation(line: 372, column: 6, scope: !2804, inlinedAt: !2656)
!2804 = distinct !DILexicalBlock(scope: !2652, file: !74, line: 372, column: 6)
!2805 = !DILocation(line: 372, column: 11, scope: !2804, inlinedAt: !2656)
!2806 = !DILocation(line: 372, column: 6, scope: !2652, inlinedAt: !2656)
!2807 = !DILocation(line: 372, column: 26, scope: !2804, inlinedAt: !2656)
!2808 = !DILocation(line: 373, column: 6, scope: !2809, inlinedAt: !2656)
!2809 = distinct !DILexicalBlock(scope: !2652, file: !74, line: 373, column: 6)
!2810 = !DILocation(line: 373, column: 11, scope: !2809, inlinedAt: !2656)
!2811 = !DILocation(line: 373, column: 6, scope: !2652, inlinedAt: !2656)
!2812 = !DILocation(line: 373, column: 26, scope: !2809, inlinedAt: !2656)
!2813 = !DILocation(line: 374, column: 6, scope: !2814, inlinedAt: !2656)
!2814 = distinct !DILexicalBlock(scope: !2652, file: !74, line: 374, column: 6)
!2815 = !DILocation(line: 374, column: 11, scope: !2814, inlinedAt: !2656)
!2816 = !DILocation(line: 374, column: 6, scope: !2652, inlinedAt: !2656)
!2817 = !DILocation(line: 374, column: 26, scope: !2814, inlinedAt: !2656)
!2818 = !DILocation(line: 375, column: 6, scope: !2819, inlinedAt: !2656)
!2819 = distinct !DILexicalBlock(scope: !2652, file: !74, line: 375, column: 6)
!2820 = !DILocation(line: 375, column: 11, scope: !2819, inlinedAt: !2656)
!2821 = !DILocation(line: 375, column: 6, scope: !2652, inlinedAt: !2656)
!2822 = !DILocation(line: 375, column: 27, scope: !2819, inlinedAt: !2656)
!2823 = !DILocation(line: 376, column: 6, scope: !2824, inlinedAt: !2656)
!2824 = distinct !DILexicalBlock(scope: !2652, file: !74, line: 376, column: 6)
!2825 = !DILocation(line: 376, column: 11, scope: !2824, inlinedAt: !2656)
!2826 = !DILocation(line: 376, column: 6, scope: !2652, inlinedAt: !2656)
!2827 = !DILocation(line: 376, column: 32, scope: !2824, inlinedAt: !2656)
!2828 = !DILocation(line: 377, column: 6, scope: !2829, inlinedAt: !2656)
!2829 = distinct !DILexicalBlock(scope: !2652, file: !74, line: 377, column: 6)
!2830 = !DILocation(line: 377, column: 11, scope: !2829, inlinedAt: !2656)
!2831 = !DILocation(line: 377, column: 6, scope: !2652, inlinedAt: !2656)
!2832 = !DILocation(line: 377, column: 32, scope: !2829, inlinedAt: !2656)
!2833 = !DILocation(line: 378, column: 6, scope: !2834, inlinedAt: !2656)
!2834 = distinct !DILexicalBlock(scope: !2652, file: !74, line: 378, column: 6)
!2835 = !DILocation(line: 378, column: 11, scope: !2834, inlinedAt: !2656)
!2836 = !DILocation(line: 378, column: 6, scope: !2652, inlinedAt: !2656)
!2837 = !DILocation(line: 378, column: 32, scope: !2834, inlinedAt: !2656)
!2838 = !DILocation(line: 379, column: 6, scope: !2839, inlinedAt: !2656)
!2839 = distinct !DILexicalBlock(scope: !2652, file: !74, line: 379, column: 6)
!2840 = !DILocation(line: 379, column: 11, scope: !2839, inlinedAt: !2656)
!2841 = !DILocation(line: 379, column: 6, scope: !2652, inlinedAt: !2656)
!2842 = !DILocation(line: 379, column: 33, scope: !2839, inlinedAt: !2656)
!2843 = !DILocation(line: 380, column: 6, scope: !2844, inlinedAt: !2656)
!2844 = distinct !DILexicalBlock(scope: !2652, file: !74, line: 380, column: 6)
!2845 = !DILocation(line: 380, column: 11, scope: !2844, inlinedAt: !2656)
!2846 = !DILocation(line: 380, column: 6, scope: !2652, inlinedAt: !2656)
!2847 = !DILocation(line: 380, column: 33, scope: !2844, inlinedAt: !2656)
!2848 = !DILocation(line: 381, column: 6, scope: !2849, inlinedAt: !2656)
!2849 = distinct !DILexicalBlock(scope: !2652, file: !74, line: 381, column: 6)
!2850 = !DILocation(line: 381, column: 11, scope: !2849, inlinedAt: !2656)
!2851 = !DILocation(line: 381, column: 6, scope: !2652, inlinedAt: !2656)
!2852 = !DILocation(line: 381, column: 33, scope: !2849, inlinedAt: !2656)
!2853 = !DILocation(line: 382, column: 2, scope: !2854, inlinedAt: !2656)
!2854 = distinct !DILexicalBlock(scope: !2855, file: !74, line: 382, column: 2)
!2855 = distinct !DILexicalBlock(scope: !2652, file: !74, line: 382, column: 2)
!2856 = !{i32 -2144217606, i32 -2144217577, i32 -2144217531, i32 -2144217473, i32 -2144217419, i32 -2144217365, i32 -2144217310, i32 -2144217279}
!2857 = !DILocation(line: 382, column: 2, scope: !2858, inlinedAt: !2656)
!2858 = distinct !DILexicalBlock(scope: !2859, file: !74, line: 382, column: 2)
!2859 = distinct !DILexicalBlock(scope: !2855, file: !74, line: 382, column: 2)
!2860 = !{i32 -2144216836, i32 -2144216829, i32 -2144216775, i32 -2144216744, i32 -2144216714}
!2861 = !DILocation(line: 382, column: 2, scope: !2859, inlinedAt: !2656)
!2862 = !DILocation(line: 386, column: 1, scope: !2652, inlinedAt: !2656)
!2863 = !DILocation(line: 547, column: 9, scope: !2635, inlinedAt: !2638)
!2864 = !DILocation(line: 549, column: 8, scope: !2865, inlinedAt: !2638)
!2865 = distinct !DILexicalBlock(scope: !2635, file: !74, line: 549, column: 7)
!2866 = !DILocation(line: 549, column: 7, scope: !2635, inlinedAt: !2638)
!2867 = !DILocation(line: 550, column: 4, scope: !2865, inlinedAt: !2638)
!2868 = !DILocation(line: 553, column: 33, scope: !2635, inlinedAt: !2638)
!2869 = !DILocation(line: 325, column: 6, scope: !2870, inlinedAt: !2650)
!2870 = distinct !DILexicalBlock(scope: !2646, file: !74, line: 325, column: 6)
!2871 = !DILocation(line: 325, column: 6, scope: !2646, inlinedAt: !2650)
!2872 = !DILocation(line: 326, column: 3, scope: !2870, inlinedAt: !2650)
!2873 = !DILocation(line: 332, column: 9, scope: !2646, inlinedAt: !2650)
!2874 = !DILocation(line: 332, column: 15, scope: !2646, inlinedAt: !2650)
!2875 = !DILocation(line: 332, column: 2, scope: !2646, inlinedAt: !2650)
!2876 = !DILocation(line: 336, column: 1, scope: !2646, inlinedAt: !2650)
!2877 = !DILocation(line: 553, column: 5, scope: !2635, inlinedAt: !2638)
!2878 = !DILocation(line: 553, column: 41, scope: !2635, inlinedAt: !2638)
!2879 = !DILocation(line: 554, column: 5, scope: !2635, inlinedAt: !2638)
!2880 = !DILocation(line: 554, column: 12, scope: !2635, inlinedAt: !2638)
!2881 = !DILocation(line: 448, column: 31, scope: !2630, inlinedAt: !2634)
!2882 = !DILocation(line: 448, column: 34, scope: !2630, inlinedAt: !2634)
!2883 = !DILocation(line: 448, column: 14, scope: !2630, inlinedAt: !2634)
!2884 = !DILocation(line: 450, column: 22, scope: !2630, inlinedAt: !2634)
!2885 = !DILocation(line: 450, column: 25, scope: !2630, inlinedAt: !2634)
!2886 = !DILocation(line: 450, column: 30, scope: !2630, inlinedAt: !2634)
!2887 = !DILocation(line: 450, column: 36, scope: !2630, inlinedAt: !2634)
!2888 = !DILocation(line: 450, column: 8, scope: !2630, inlinedAt: !2634)
!2889 = !DILocation(line: 450, column: 6, scope: !2630, inlinedAt: !2634)
!2890 = !DILocation(line: 451, column: 9, scope: !2630, inlinedAt: !2634)
!2891 = !DILocation(line: 552, column: 3, scope: !2635, inlinedAt: !2638)
!2892 = !DILocation(line: 557, column: 19, scope: !2637, inlinedAt: !2638)
!2893 = !DILocation(line: 557, column: 25, scope: !2637, inlinedAt: !2638)
!2894 = !DILocation(line: 557, column: 9, scope: !2637, inlinedAt: !2638)
!2895 = !DILocation(line: 557, column: 2, scope: !2637, inlinedAt: !2638)
!2896 = !DILocation(line: 558, column: 1, scope: !2637, inlinedAt: !2638)
!2897 = !DILocation(line: 664, column: 2, scope: !2626)
!2898 = distinct !DISubprogram(name: "get_order", scope: !2899, file: !2899, line: 29, type: !2900, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !204)
!2899 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!2900 = !DISubroutineType(types: !2901)
!2901 = !{!133, !84}
!2902 = !DILocalVariable(name: "x", arg: 1, scope: !2903, file: !2904, line: 366, type: !350)
!2903 = distinct !DISubprogram(name: "fls64", scope: !2904, file: !2904, line: 366, type: !2905, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !204)
!2904 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!2905 = !DISubroutineType(types: !2906)
!2906 = !{!133, !350}
!2907 = !DILocation(line: 366, column: 40, scope: !2903, inlinedAt: !2908)
!2908 = distinct !DILocation(line: 46, column: 9, scope: !2898)
!2909 = !DILocalVariable(name: "bitpos", scope: !2903, file: !2904, line: 368, type: !133)
!2910 = !DILocation(line: 368, column: 6, scope: !2903, inlinedAt: !2908)
!2911 = !DILocalVariable(name: "size", arg: 1, scope: !2898, file: !2899, line: 29, type: !84)
!2912 = !DILocation(line: 29, column: 63, scope: !2898)
!2913 = !DILocation(line: 31, column: 27, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2898, file: !2899, line: 31, column: 6)
!2915 = !DILocation(line: 31, column: 6, scope: !2914)
!2916 = !DILocation(line: 31, column: 6, scope: !2898)
!2917 = !DILocation(line: 32, column: 8, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2919, file: !2899, line: 32, column: 7)
!2919 = distinct !DILexicalBlock(scope: !2914, file: !2899, line: 31, column: 34)
!2920 = !DILocation(line: 32, column: 7, scope: !2919)
!2921 = !DILocation(line: 33, column: 4, scope: !2918)
!2922 = !DILocation(line: 35, column: 7, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2919, file: !2899, line: 35, column: 7)
!2924 = !DILocation(line: 35, column: 12, scope: !2923)
!2925 = !DILocation(line: 35, column: 7, scope: !2919)
!2926 = !DILocation(line: 36, column: 4, scope: !2923)
!2927 = !DILocation(line: 38, column: 10, scope: !2919)
!2928 = !DILocation(line: 38, column: 28, scope: !2919)
!2929 = !DILocation(line: 38, column: 41, scope: !2919)
!2930 = !DILocation(line: 38, column: 3, scope: !2919)
!2931 = !DILocation(line: 41, column: 6, scope: !2898)
!2932 = !DILocation(line: 42, column: 7, scope: !2898)
!2933 = !DILocation(line: 46, column: 15, scope: !2898)
!2934 = !DILocation(line: 374, column: 2, scope: !2903, inlinedAt: !2908)
!2935 = !DILocation(line: 376, column: 14, scope: !2903, inlinedAt: !2908)
!2936 = !{i32 317506}
!2937 = !DILocation(line: 377, column: 9, scope: !2903, inlinedAt: !2908)
!2938 = !DILocation(line: 377, column: 16, scope: !2903, inlinedAt: !2908)
!2939 = !DILocation(line: 46, column: 2, scope: !2898)
!2940 = !DILocation(line: 48, column: 1, scope: !2898)
!2941 = distinct !DISubprogram(name: "__ilog2_u64", scope: !2942, file: !2942, line: 30, type: !2943, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !204)
!2942 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!2943 = !DISubroutineType(types: !2944)
!2944 = !{!133, !348}
!2945 = !DILocation(line: 366, column: 40, scope: !2903, inlinedAt: !2946)
!2946 = distinct !DILocation(line: 32, column: 9, scope: !2941)
!2947 = !DILocation(line: 368, column: 6, scope: !2903, inlinedAt: !2946)
!2948 = !DILocalVariable(name: "n", arg: 1, scope: !2941, file: !2942, line: 30, type: !348)
!2949 = !DILocation(line: 30, column: 21, scope: !2941)
!2950 = !DILocation(line: 32, column: 15, scope: !2941)
!2951 = !DILocation(line: 374, column: 2, scope: !2903, inlinedAt: !2946)
!2952 = !DILocation(line: 376, column: 14, scope: !2903, inlinedAt: !2946)
!2953 = !DILocation(line: 377, column: 9, scope: !2903, inlinedAt: !2946)
!2954 = !DILocation(line: 377, column: 16, scope: !2903, inlinedAt: !2946)
!2955 = !DILocation(line: 32, column: 18, scope: !2941)
!2956 = !DILocation(line: 32, column: 2, scope: !2941)
!2957 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !2958, file: !2958, line: 137, type: !2959, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !204)
!2958 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!81, !1114, !170, !277, !82}
!2961 = !DILocalVariable(name: "s", arg: 1, scope: !2957, file: !2958, line: 137, type: !1114)
!2962 = !DILocation(line: 137, column: 54, scope: !2957)
!2963 = !DILocalVariable(name: "object", arg: 2, scope: !2957, file: !2958, line: 137, type: !170)
!2964 = !DILocation(line: 137, column: 69, scope: !2957)
!2965 = !DILocalVariable(name: "size", arg: 3, scope: !2957, file: !2958, line: 138, type: !277)
!2966 = !DILocation(line: 138, column: 12, scope: !2957)
!2967 = !DILocalVariable(name: "flags", arg: 4, scope: !2957, file: !2958, line: 138, type: !82)
!2968 = !DILocation(line: 138, column: 24, scope: !2957)
!2969 = !DILocation(line: 140, column: 17, scope: !2957)
!2970 = !DILocation(line: 140, column: 2, scope: !2957)
