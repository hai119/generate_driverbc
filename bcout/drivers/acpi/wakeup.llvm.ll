; ModuleID = '../bcout/drivers/acpi/wakeup.llvm.bc'
source_filename = "drivers/acpi/wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.kmem_cache = type opaque
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
%struct.acpi_scan_handler = type { %struct.acpi_device_id*, %struct.list_head, i1 (i8*, %struct.acpi_device_id**)*, i32 (%struct.acpi_device*, %struct.acpi_device_id*)*, void (%struct.acpi_device*)*, void (%struct.device*)*, void (%struct.device*)*, %struct.acpi_hotplug_profile }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.acpi_hotplug_profile = type { %struct.kobject, i32 (%struct.acpi_device*)*, void (%struct.acpi_device*)*, i8 }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.file = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.36, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
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
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot = type { i64 }
%struct.anon.36 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type opaque
%struct.vm_userfaultfd_ctx = type {}
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.37, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.37 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.seq_file = type opaque
%struct.poll_table_struct = type opaque
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.acpi_hotplug_context = type { %struct.acpi_device*, i32 (%struct.acpi_device*, i32)*, void (%struct.acpi_device*, i32)*, void (%struct.acpi_device*)* }
%struct.acpi_driver = type { [80 x i8], [80 x i8], %struct.acpi_device_id*, i32, %struct.acpi_device_ops, %struct.device_driver, %struct.module* }
%struct.acpi_device_ops = type { i32 (%struct.acpi_device*)*, i32 (%struct.acpi_device*)*, void (%struct.acpi_device*, i32)* }
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
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
%struct.acpi_wakeup_handler = type { %struct.list_head, i1 (i8*)*, i8* }

@acpi_wakeup_device_list = external dso_local global %struct.list_head, align 8
@acpi_device_lock = external dso_local global %struct.mutex, align 8
@acpi_sci_irq = external dso_local global i32, align 4
@acpi_wakeup_handler_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @acpi_wakeup_handler_mutex to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @acpi_wakeup_handler_mutex to i8*), i64 8) to %struct.list_head*) } }, align 8, !dbg !0
@acpi_wakeup_handler_head = internal global %struct.list_head { %struct.list_head* @acpi_wakeup_handler_head, %struct.list_head* @acpi_wakeup_handler_head }, align 8, !dbg !2438
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_enable_wakeup_devices(i8 zeroext %sleep_state) #0 !dbg !2445 {
entry:
  %sleep_state.addr = alloca i8, align 1
  %dev = alloca %struct.acpi_device*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.acpi_device*, align 8
  %__mptr2 = alloca i8*, align 8
  %tmp5 = alloca %struct.acpi_device*, align 8
  %__mptr29 = alloca i8*, align 8
  %tmp34 = alloca %struct.acpi_device*, align 8
  store i8 %sleep_state, i8* %sleep_state.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %sleep_state.addr, metadata !2448, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %dev, metadata !2450, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %tmp, metadata !2452, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2454, metadata !DIExpression()), !dbg !2457
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @acpi_wakeup_device_list, i32 0, i32 0), align 8, !dbg !2457
  %1 = bitcast %struct.list_head* %0 to i8*, !dbg !2457
  store i8* %1, i8** %__mptr, align 8, !dbg !2457
  br label %do.body, !dbg !2457

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2458

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2457
  %add.ptr = getelementptr i8, i8* %2, i64 -80, !dbg !2457
  %3 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !2457
  store %struct.acpi_device* %3, %struct.acpi_device** %tmp1, align 8, !dbg !2458
  %4 = load %struct.acpi_device*, %struct.acpi_device** %tmp1, align 8, !dbg !2457
  store %struct.acpi_device* %4, %struct.acpi_device** %dev, align 8, !dbg !2460
  call void @llvm.dbg.declare(metadata i8** %__mptr2, metadata !2461, metadata !DIExpression()), !dbg !2463
  %5 = load %struct.acpi_device*, %struct.acpi_device** %dev, align 8, !dbg !2463
  %wakeup_list = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %5, i32 0, i32 6, !dbg !2463
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %wakeup_list, i32 0, i32 0, !dbg !2463
  %6 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2463
  %7 = bitcast %struct.list_head* %6 to i8*, !dbg !2463
  store i8* %7, i8** %__mptr2, align 8, !dbg !2463
  br label %do.body3, !dbg !2463

do.body3:                                         ; preds = %do.end
  br label %do.end4, !dbg !2464

do.end4:                                          ; preds = %do.body3
  %8 = load i8*, i8** %__mptr2, align 8, !dbg !2463
  %add.ptr6 = getelementptr i8, i8* %8, i64 -80, !dbg !2463
  %9 = bitcast i8* %add.ptr6 to %struct.acpi_device*, !dbg !2463
  store %struct.acpi_device* %9, %struct.acpi_device** %tmp5, align 8, !dbg !2464
  %10 = load %struct.acpi_device*, %struct.acpi_device** %tmp5, align 8, !dbg !2463
  store %struct.acpi_device* %10, %struct.acpi_device** %tmp, align 8, !dbg !2460
  br label %for.cond, !dbg !2460

for.cond:                                         ; preds = %do.end33, %do.end4
  %11 = load %struct.acpi_device*, %struct.acpi_device** %dev, align 8, !dbg !2466
  %wakeup_list7 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %11, i32 0, i32 6, !dbg !2466
  %cmp = icmp eq %struct.list_head* %wakeup_list7, @acpi_wakeup_device_list, !dbg !2466
  %lnot = xor i1 %cmp, true, !dbg !2466
  br i1 %lnot, label %for.body, label %for.end, !dbg !2460

for.body:                                         ; preds = %for.cond
  %12 = load %struct.acpi_device*, %struct.acpi_device** %dev, align 8, !dbg !2468
  %wakeup = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %12, i32 0, i32 12, !dbg !2471
  %flags = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %wakeup, i32 0, i32 4, !dbg !2472
  %13 = bitcast %struct.acpi_device_wakeup_flags* %flags to i8*, !dbg !2473
  %bf.load = load i8, i8* %13, align 8, !dbg !2473
  %bf.clear = and i8 %bf.load, 1, !dbg !2473
  %tobool = icmp ne i8 %bf.clear, 0, !dbg !2468
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2474

lor.lhs.false:                                    ; preds = %for.body
  %14 = load i8, i8* %sleep_state.addr, align 1, !dbg !2475
  %conv = zext i8 %14 to i32, !dbg !2475
  %15 = load %struct.acpi_device*, %struct.acpi_device** %dev, align 8, !dbg !2476
  %wakeup8 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %15, i32 0, i32 12, !dbg !2477
  %sleep_state9 = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %wakeup8, i32 0, i32 2, !dbg !2478
  %16 = load i64, i64* %sleep_state9, align 8, !dbg !2478
  %conv10 = trunc i64 %16 to i32, !dbg !2479
  %cmp11 = icmp ugt i32 %conv, %conv10, !dbg !2480
  br i1 %cmp11, label %if.then, label %lor.lhs.false13, !dbg !2481

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %17 = load %struct.acpi_device*, %struct.acpi_device** %dev, align 8, !dbg !2482
  %dev14 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %17, i32 0, i32 21, !dbg !2483
  %call = call zeroext i1 @device_may_wakeup(%struct.device* %dev14) #7, !dbg !2484
  br i1 %call, label %if.end, label %lor.lhs.false16, !dbg !2485

lor.lhs.false16:                                  ; preds = %lor.lhs.false13
  %18 = load %struct.acpi_device*, %struct.acpi_device** %dev, align 8, !dbg !2486
  %wakeup17 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %18, i32 0, i32 12, !dbg !2487
  %prepare_count = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %wakeup17, i32 0, i32 7, !dbg !2488
  %19 = load i32, i32* %prepare_count, align 8, !dbg !2488
  %tobool18 = icmp ne i32 %19, 0, !dbg !2486
  br i1 %tobool18, label %if.end, label %if.then, !dbg !2489

if.then:                                          ; preds = %lor.lhs.false16, %lor.lhs.false, %for.body
  br label %for.inc, !dbg !2490

if.end:                                           ; preds = %lor.lhs.false16, %lor.lhs.false13
  %20 = load %struct.acpi_device*, %struct.acpi_device** %dev, align 8, !dbg !2491
  %dev19 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %20, i32 0, i32 21, !dbg !2493
  %call20 = call zeroext i1 @device_may_wakeup(%struct.device* %dev19) #7, !dbg !2494
  br i1 %call20, label %if.then21, label %if.end24, !dbg !2495

if.then21:                                        ; preds = %if.end
  %21 = load %struct.acpi_device*, %struct.acpi_device** %dev, align 8, !dbg !2496
  %22 = load i8, i8* %sleep_state.addr, align 1, !dbg !2497
  %conv22 = zext i8 %22 to i32, !dbg !2497
  %call23 = call i32 @acpi_enable_wakeup_device_power(%struct.acpi_device* %21, i32 %conv22) #7, !dbg !2498
  br label %if.end24, !dbg !2498

if.end24:                                         ; preds = %if.then21, %if.end
  %23 = load %struct.acpi_device*, %struct.acpi_device** %dev, align 8, !dbg !2499
  %wakeup25 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %23, i32 0, i32 12, !dbg !2500
  %gpe_device = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %wakeup25, i32 0, i32 0, !dbg !2501
  %24 = load i8*, i8** %gpe_device, align 8, !dbg !2501
  %25 = load %struct.acpi_device*, %struct.acpi_device** %dev, align 8, !dbg !2502
  %wakeup26 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %25, i32 0, i32 12, !dbg !2503
  %gpe_number = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %wakeup26, i32 0, i32 1, !dbg !2504
  %26 = load i64, i64* %gpe_number, align 8, !dbg !2504
  %conv27 = trunc i64 %26 to i32, !dbg !2502
  %call28 = call i32 @acpi_set_gpe_wake_mask(i8* %24, i32 %conv27, i8 zeroext 0) #7, !dbg !2505
  br label %for.inc, !dbg !2506

for.inc:                                          ; preds = %if.end24, %if.then
  %27 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !2466
  store %struct.acpi_device* %27, %struct.acpi_device** %dev, align 8, !dbg !2466
  call void @llvm.dbg.declare(metadata i8** %__mptr29, metadata !2507, metadata !DIExpression()), !dbg !2509
  %28 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !2509
  %wakeup_list30 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %28, i32 0, i32 6, !dbg !2509
  %next31 = getelementptr inbounds %struct.list_head, %struct.list_head* %wakeup_list30, i32 0, i32 0, !dbg !2509
  %29 = load %struct.list_head*, %struct.list_head** %next31, align 8, !dbg !2509
  %30 = bitcast %struct.list_head* %29 to i8*, !dbg !2509
  store i8* %30, i8** %__mptr29, align 8, !dbg !2509
  br label %do.body32, !dbg !2509

do.body32:                                        ; preds = %for.inc
  br label %do.end33, !dbg !2510

do.end33:                                         ; preds = %do.body32
  %31 = load i8*, i8** %__mptr29, align 8, !dbg !2509
  %add.ptr35 = getelementptr i8, i8* %31, i64 -80, !dbg !2509
  %32 = bitcast i8* %add.ptr35 to %struct.acpi_device*, !dbg !2509
  store %struct.acpi_device* %32, %struct.acpi_device** %tmp34, align 8, !dbg !2510
  %33 = load %struct.acpi_device*, %struct.acpi_device** %tmp34, align 8, !dbg !2509
  store %struct.acpi_device* %33, %struct.acpi_device** %tmp, align 8, !dbg !2466
  br label %for.cond, !dbg !2466, !llvm.loop !2512

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2514
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @device_may_wakeup(%struct.device* %dev) #0 !dbg !2515 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2518, metadata !DIExpression()), !dbg !2519
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2520
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !2521
  %can_wakeup = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 1, !dbg !2522
  %bf.load = load i16, i16* %can_wakeup, align 4, !dbg !2522
  %bf.clear = and i16 %bf.load, 1, !dbg !2522
  %bf.cast = zext i16 %bf.clear to i32, !dbg !2522
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !2520
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !2523

land.rhs:                                         ; preds = %entry
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2524
  %power1 = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 11, !dbg !2525
  %wakeup = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power1, i32 0, i32 6, !dbg !2526
  %2 = load %struct.wakeup_source*, %struct.wakeup_source** %wakeup, align 8, !dbg !2526
  %tobool2 = icmp ne %struct.wakeup_source* %2, null, !dbg !2527
  %lnot = xor i1 %tobool2, true, !dbg !2527
  %lnot3 = xor i1 %lnot, true, !dbg !2528
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %lnot3, %land.rhs ], !dbg !2529
  ret i1 %3, !dbg !2530
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_enable_wakeup_device_power(%struct.acpi_device*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_set_gpe_wake_mask(i8*, i32, i8 zeroext) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_disable_wakeup_devices(i8 zeroext %sleep_state) #0 !dbg !2531 {
entry:
  %sleep_state.addr = alloca i8, align 1
  %dev = alloca %struct.acpi_device*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.acpi_device*, align 8
  %__mptr2 = alloca i8*, align 8
  %tmp5 = alloca %struct.acpi_device*, align 8
  %__mptr28 = alloca i8*, align 8
  %tmp33 = alloca %struct.acpi_device*, align 8
  store i8 %sleep_state, i8* %sleep_state.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %sleep_state.addr, metadata !2532, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %dev, metadata !2534, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %tmp, metadata !2536, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2538, metadata !DIExpression()), !dbg !2541
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @acpi_wakeup_device_list, i32 0, i32 0), align 8, !dbg !2541
  %1 = bitcast %struct.list_head* %0 to i8*, !dbg !2541
  store i8* %1, i8** %__mptr, align 8, !dbg !2541
  br label %do.body, !dbg !2541

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2542

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2541
  %add.ptr = getelementptr i8, i8* %2, i64 -80, !dbg !2541
  %3 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !2541
  store %struct.acpi_device* %3, %struct.acpi_device** %tmp1, align 8, !dbg !2542
  %4 = load %struct.acpi_device*, %struct.acpi_device** %tmp1, align 8, !dbg !2541
  store %struct.acpi_device* %4, %struct.acpi_device** %dev, align 8, !dbg !2544
  call void @llvm.dbg.declare(metadata i8** %__mptr2, metadata !2545, metadata !DIExpression()), !dbg !2547
  %5 = load %struct.acpi_device*, %struct.acpi_device** %dev, align 8, !dbg !2547
  %wakeup_list = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %5, i32 0, i32 6, !dbg !2547
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %wakeup_list, i32 0, i32 0, !dbg !2547
  %6 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2547
  %7 = bitcast %struct.list_head* %6 to i8*, !dbg !2547
  store i8* %7, i8** %__mptr2, align 8, !dbg !2547
  br label %do.body3, !dbg !2547

do.body3:                                         ; preds = %do.end
  br label %do.end4, !dbg !2548

do.end4:                                          ; preds = %do.body3
  %8 = load i8*, i8** %__mptr2, align 8, !dbg !2547
  %add.ptr6 = getelementptr i8, i8* %8, i64 -80, !dbg !2547
  %9 = bitcast i8* %add.ptr6 to %struct.acpi_device*, !dbg !2547
  store %struct.acpi_device* %9, %struct.acpi_device** %tmp5, align 8, !dbg !2548
  %10 = load %struct.acpi_device*, %struct.acpi_device** %tmp5, align 8, !dbg !2547
  store %struct.acpi_device* %10, %struct.acpi_device** %tmp, align 8, !dbg !2544
  br label %for.cond, !dbg !2544

for.cond:                                         ; preds = %do.end32, %do.end4
  %11 = load %struct.acpi_device*, %struct.acpi_device** %dev, align 8, !dbg !2550
  %wakeup_list7 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %11, i32 0, i32 6, !dbg !2550
  %cmp = icmp eq %struct.list_head* %wakeup_list7, @acpi_wakeup_device_list, !dbg !2550
  %lnot = xor i1 %cmp, true, !dbg !2550
  br i1 %lnot, label %for.body, label %for.end, !dbg !2544

for.body:                                         ; preds = %for.cond
  %12 = load %struct.acpi_device*, %struct.acpi_device** %dev, align 8, !dbg !2552
  %wakeup = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %12, i32 0, i32 12, !dbg !2555
  %flags = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %wakeup, i32 0, i32 4, !dbg !2556
  %13 = bitcast %struct.acpi_device_wakeup_flags* %flags to i8*, !dbg !2557
  %bf.load = load i8, i8* %13, align 8, !dbg !2557
  %bf.clear = and i8 %bf.load, 1, !dbg !2557
  %tobool = icmp ne i8 %bf.clear, 0, !dbg !2552
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2558

lor.lhs.false:                                    ; preds = %for.body
  %14 = load i8, i8* %sleep_state.addr, align 1, !dbg !2559
  %conv = zext i8 %14 to i32, !dbg !2559
  %15 = load %struct.acpi_device*, %struct.acpi_device** %dev, align 8, !dbg !2560
  %wakeup8 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %15, i32 0, i32 12, !dbg !2561
  %sleep_state9 = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %wakeup8, i32 0, i32 2, !dbg !2562
  %16 = load i64, i64* %sleep_state9, align 8, !dbg !2562
  %conv10 = trunc i64 %16 to i32, !dbg !2563
  %cmp11 = icmp ugt i32 %conv, %conv10, !dbg !2564
  br i1 %cmp11, label %if.then, label %lor.lhs.false13, !dbg !2565

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %17 = load %struct.acpi_device*, %struct.acpi_device** %dev, align 8, !dbg !2566
  %dev14 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %17, i32 0, i32 21, !dbg !2567
  %call = call zeroext i1 @device_may_wakeup(%struct.device* %dev14) #7, !dbg !2568
  br i1 %call, label %if.end, label %lor.lhs.false16, !dbg !2569

lor.lhs.false16:                                  ; preds = %lor.lhs.false13
  %18 = load %struct.acpi_device*, %struct.acpi_device** %dev, align 8, !dbg !2570
  %wakeup17 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %18, i32 0, i32 12, !dbg !2571
  %prepare_count = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %wakeup17, i32 0, i32 7, !dbg !2572
  %19 = load i32, i32* %prepare_count, align 8, !dbg !2572
  %tobool18 = icmp ne i32 %19, 0, !dbg !2570
  br i1 %tobool18, label %if.end, label %if.then, !dbg !2573

if.then:                                          ; preds = %lor.lhs.false16, %lor.lhs.false, %for.body
  br label %for.inc, !dbg !2574

if.end:                                           ; preds = %lor.lhs.false16, %lor.lhs.false13
  %20 = load %struct.acpi_device*, %struct.acpi_device** %dev, align 8, !dbg !2575
  %wakeup19 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %20, i32 0, i32 12, !dbg !2576
  %gpe_device = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %wakeup19, i32 0, i32 0, !dbg !2577
  %21 = load i8*, i8** %gpe_device, align 8, !dbg !2577
  %22 = load %struct.acpi_device*, %struct.acpi_device** %dev, align 8, !dbg !2578
  %wakeup20 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %22, i32 0, i32 12, !dbg !2579
  %gpe_number = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %wakeup20, i32 0, i32 1, !dbg !2580
  %23 = load i64, i64* %gpe_number, align 8, !dbg !2580
  %conv21 = trunc i64 %23 to i32, !dbg !2578
  %call22 = call i32 @acpi_set_gpe_wake_mask(i8* %21, i32 %conv21, i8 zeroext 1) #7, !dbg !2581
  %24 = load %struct.acpi_device*, %struct.acpi_device** %dev, align 8, !dbg !2582
  %dev23 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %24, i32 0, i32 21, !dbg !2584
  %call24 = call zeroext i1 @device_may_wakeup(%struct.device* %dev23) #7, !dbg !2585
  br i1 %call24, label %if.then25, label %if.end27, !dbg !2586

if.then25:                                        ; preds = %if.end
  %25 = load %struct.acpi_device*, %struct.acpi_device** %dev, align 8, !dbg !2587
  %call26 = call i32 @acpi_disable_wakeup_device_power(%struct.acpi_device* %25) #7, !dbg !2588
  br label %if.end27, !dbg !2588

if.end27:                                         ; preds = %if.then25, %if.end
  br label %for.inc, !dbg !2589

for.inc:                                          ; preds = %if.end27, %if.then
  %26 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !2550
  store %struct.acpi_device* %26, %struct.acpi_device** %dev, align 8, !dbg !2550
  call void @llvm.dbg.declare(metadata i8** %__mptr28, metadata !2590, metadata !DIExpression()), !dbg !2592
  %27 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !2592
  %wakeup_list29 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %27, i32 0, i32 6, !dbg !2592
  %next30 = getelementptr inbounds %struct.list_head, %struct.list_head* %wakeup_list29, i32 0, i32 0, !dbg !2592
  %28 = load %struct.list_head*, %struct.list_head** %next30, align 8, !dbg !2592
  %29 = bitcast %struct.list_head* %28 to i8*, !dbg !2592
  store i8* %29, i8** %__mptr28, align 8, !dbg !2592
  br label %do.body31, !dbg !2592

do.body31:                                        ; preds = %for.inc
  br label %do.end32, !dbg !2593

do.end32:                                         ; preds = %do.body31
  %30 = load i8*, i8** %__mptr28, align 8, !dbg !2592
  %add.ptr34 = getelementptr i8, i8* %30, i64 -80, !dbg !2592
  %31 = bitcast i8* %add.ptr34 to %struct.acpi_device*, !dbg !2592
  store %struct.acpi_device* %31, %struct.acpi_device** %tmp33, align 8, !dbg !2593
  %32 = load %struct.acpi_device*, %struct.acpi_device** %tmp33, align 8, !dbg !2592
  store %struct.acpi_device* %32, %struct.acpi_device** %tmp, align 8, !dbg !2550
  br label %for.cond, !dbg !2550, !llvm.loop !2595

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2597
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_disable_wakeup_device_power(%struct.acpi_device*) #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_wakeup_device_init() #3 section ".init.text" !dbg !2598 {
entry:
  %dev = alloca %struct.acpi_device*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.acpi_device*, align 8
  %__mptr2 = alloca i8*, align 8
  %tmp5 = alloca %struct.acpi_device*, align 8
  %__mptr13 = alloca i8*, align 8
  %tmp18 = alloca %struct.acpi_device*, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %dev, metadata !2601, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %tmp, metadata !2603, metadata !DIExpression()), !dbg !2604
  call void @mutex_lock(%struct.mutex* @acpi_device_lock) #7, !dbg !2605
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2606, metadata !DIExpression()), !dbg !2609
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @acpi_wakeup_device_list, i32 0, i32 0), align 8, !dbg !2609
  %1 = bitcast %struct.list_head* %0 to i8*, !dbg !2609
  store i8* %1, i8** %__mptr, align 8, !dbg !2609
  br label %do.body, !dbg !2609

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2610

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2609
  %add.ptr = getelementptr i8, i8* %2, i64 -80, !dbg !2609
  %3 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !2609
  store %struct.acpi_device* %3, %struct.acpi_device** %tmp1, align 8, !dbg !2610
  %4 = load %struct.acpi_device*, %struct.acpi_device** %tmp1, align 8, !dbg !2609
  store %struct.acpi_device* %4, %struct.acpi_device** %dev, align 8, !dbg !2612
  call void @llvm.dbg.declare(metadata i8** %__mptr2, metadata !2613, metadata !DIExpression()), !dbg !2615
  %5 = load %struct.acpi_device*, %struct.acpi_device** %dev, align 8, !dbg !2615
  %wakeup_list = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %5, i32 0, i32 6, !dbg !2615
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %wakeup_list, i32 0, i32 0, !dbg !2615
  %6 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2615
  %7 = bitcast %struct.list_head* %6 to i8*, !dbg !2615
  store i8* %7, i8** %__mptr2, align 8, !dbg !2615
  br label %do.body3, !dbg !2615

do.body3:                                         ; preds = %do.end
  br label %do.end4, !dbg !2616

do.end4:                                          ; preds = %do.body3
  %8 = load i8*, i8** %__mptr2, align 8, !dbg !2615
  %add.ptr6 = getelementptr i8, i8* %8, i64 -80, !dbg !2615
  %9 = bitcast i8* %add.ptr6 to %struct.acpi_device*, !dbg !2615
  store %struct.acpi_device* %9, %struct.acpi_device** %tmp5, align 8, !dbg !2616
  %10 = load %struct.acpi_device*, %struct.acpi_device** %tmp5, align 8, !dbg !2615
  store %struct.acpi_device* %10, %struct.acpi_device** %tmp, align 8, !dbg !2612
  br label %for.cond, !dbg !2612

for.cond:                                         ; preds = %do.end17, %do.end4
  %11 = load %struct.acpi_device*, %struct.acpi_device** %dev, align 8, !dbg !2618
  %wakeup_list7 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %11, i32 0, i32 6, !dbg !2618
  %cmp = icmp eq %struct.list_head* %wakeup_list7, @acpi_wakeup_device_list, !dbg !2618
  %lnot = xor i1 %cmp, true, !dbg !2618
  br i1 %lnot, label %for.body, label %for.end, !dbg !2612

for.body:                                         ; preds = %for.cond
  %12 = load %struct.acpi_device*, %struct.acpi_device** %dev, align 8, !dbg !2620
  %dev8 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %12, i32 0, i32 21, !dbg !2623
  %call = call zeroext i1 @device_can_wakeup(%struct.device* %dev8) #7, !dbg !2624
  br i1 %call, label %if.then, label %if.end, !dbg !2625

if.then:                                          ; preds = %for.body
  %13 = load %struct.acpi_device*, %struct.acpi_device** %dev, align 8, !dbg !2626
  %wakeup = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %13, i32 0, i32 12, !dbg !2628
  %gpe_device = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %wakeup, i32 0, i32 0, !dbg !2629
  %14 = load i8*, i8** %gpe_device, align 8, !dbg !2629
  %15 = load %struct.acpi_device*, %struct.acpi_device** %dev, align 8, !dbg !2630
  %wakeup9 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %15, i32 0, i32 12, !dbg !2631
  %gpe_number = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %wakeup9, i32 0, i32 1, !dbg !2632
  %16 = load i64, i64* %gpe_number, align 8, !dbg !2632
  %conv = trunc i64 %16 to i32, !dbg !2630
  %call10 = call i32 @acpi_enable_gpe(i8* %14, i32 %conv) #7, !dbg !2633
  %17 = load %struct.acpi_device*, %struct.acpi_device** %dev, align 8, !dbg !2634
  %dev11 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %17, i32 0, i32 21, !dbg !2635
  %call12 = call i32 @device_set_wakeup_enable(%struct.device* %dev11, i1 zeroext true) #7, !dbg !2636
  br label %if.end, !dbg !2637

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !2638

for.inc:                                          ; preds = %if.end
  %18 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !2618
  store %struct.acpi_device* %18, %struct.acpi_device** %dev, align 8, !dbg !2618
  call void @llvm.dbg.declare(metadata i8** %__mptr13, metadata !2639, metadata !DIExpression()), !dbg !2641
  %19 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !2641
  %wakeup_list14 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %19, i32 0, i32 6, !dbg !2641
  %next15 = getelementptr inbounds %struct.list_head, %struct.list_head* %wakeup_list14, i32 0, i32 0, !dbg !2641
  %20 = load %struct.list_head*, %struct.list_head** %next15, align 8, !dbg !2641
  %21 = bitcast %struct.list_head* %20 to i8*, !dbg !2641
  store i8* %21, i8** %__mptr13, align 8, !dbg !2641
  br label %do.body16, !dbg !2641

do.body16:                                        ; preds = %for.inc
  br label %do.end17, !dbg !2642

do.end17:                                         ; preds = %do.body16
  %22 = load i8*, i8** %__mptr13, align 8, !dbg !2641
  %add.ptr19 = getelementptr i8, i8* %22, i64 -80, !dbg !2641
  %23 = bitcast i8* %add.ptr19 to %struct.acpi_device*, !dbg !2641
  store %struct.acpi_device* %23, %struct.acpi_device** %tmp18, align 8, !dbg !2642
  %24 = load %struct.acpi_device*, %struct.acpi_device** %tmp18, align 8, !dbg !2641
  store %struct.acpi_device* %24, %struct.acpi_device** %tmp, align 8, !dbg !2618
  br label %for.cond, !dbg !2618, !llvm.loop !2644

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(%struct.mutex* @acpi_device_lock) #7, !dbg !2646
  ret i32 0, !dbg !2647
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @device_can_wakeup(%struct.device* %dev) #0 !dbg !2648 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2649, metadata !DIExpression()), !dbg !2650
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2651
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !2652
  %can_wakeup = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 1, !dbg !2653
  %bf.load = load i16, i16* %can_wakeup, align 4, !dbg !2653
  %bf.clear = and i16 %bf.load, 1, !dbg !2653
  %bf.cast = zext i16 %bf.clear to i32, !dbg !2653
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !2651
  ret i1 %tobool, !dbg !2654
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_enable_gpe(i8*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @device_set_wakeup_enable(%struct.device*, i1 zeroext) #2

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_register_wakeup_handler(i32 %wake_irq, i1 (i8*)* %wakeup, i8* %context) #0 !dbg !2655 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2658, metadata !DIExpression()), !dbg !2662
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2670, metadata !DIExpression()), !dbg !2671
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2672, metadata !DIExpression()), !dbg !2673
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2674, metadata !DIExpression()), !dbg !2675
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2676, metadata !DIExpression()), !dbg !2680
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2682, metadata !DIExpression()), !dbg !2686
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2688, metadata !DIExpression()), !dbg !2692
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !2697, metadata !DIExpression()), !dbg !2698
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !2699, metadata !DIExpression()), !dbg !2700
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2701, metadata !DIExpression()), !dbg !2702
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !2703, metadata !DIExpression()), !dbg !2704
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !2705, metadata !DIExpression()), !dbg !2706
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2707, metadata !DIExpression()), !dbg !2708
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !2709, metadata !DIExpression()), !dbg !2710
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !2711, metadata !DIExpression()), !dbg !2712
  %retval = alloca i32, align 4
  %wake_irq.addr = alloca i32, align 4
  %wakeup.addr = alloca i1 (i8*)*, align 8
  %context.addr = alloca i8*, align 8
  %handler = alloca %struct.acpi_wakeup_handler*, align 8
  store i32 %wake_irq, i32* %wake_irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wake_irq.addr, metadata !2713, metadata !DIExpression()), !dbg !2714
  store i1 (i8*)* %wakeup, i1 (i8*)** %wakeup.addr, align 8
  call void @llvm.dbg.declare(metadata i1 (i8*)** %wakeup.addr, metadata !2715, metadata !DIExpression()), !dbg !2716
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !2717, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.declare(metadata %struct.acpi_wakeup_handler** %handler, metadata !2719, metadata !DIExpression()), !dbg !2720
  %call = call zeroext i1 @acpi_sci_irq_valid() #7, !dbg !2721
  br i1 %call, label %lor.lhs.false, label %if.then, !dbg !2723

lor.lhs.false:                                    ; preds = %entry
  %0 = load i32, i32* %wake_irq.addr, align 4, !dbg !2724
  %1 = load i32, i32* @acpi_sci_irq, align 4, !dbg !2725
  %cmp = icmp ne i32 %0, %1, !dbg !2726
  br i1 %cmp, label %if.then, label %if.end, !dbg !2727

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4, !dbg !2728
  br label %return, !dbg !2728

if.end:                                           ; preds = %lor.lhs.false
  store i64 32, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !2729
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #8, !dbg !2730
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !2731

if.then.i:                                        ; preds = %if.end
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !2732
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !2733
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !2734

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !2735
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !2736
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !2737
  %call.i.i = call i32 @get_order(i64 %7) #9, !dbg !2738
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !2706
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !2739
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !2740
  %10 = load i32, i32* %order.i.i, align 4, !dbg !2741
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !2742
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !2743
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !2744
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #10, !dbg !2745
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !2745
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !2745
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !2745
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !2745
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !2746
  br label %kmalloc.exit, !dbg !2746

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !2747
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2748
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !2748
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !2750

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !2751
  br label %kmalloc_index.exit.i, !dbg !2751

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2752
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !2754
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !2755

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2756
  br label %kmalloc_index.exit.i, !dbg !2756

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2757
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !2759
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !2760

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2761
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !2762
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !2763

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !2764
  br label %kmalloc_index.exit.i, !dbg !2764

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2765
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !2767
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !2768

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2769
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !2770
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !2771

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !2772
  br label %kmalloc_index.exit.i, !dbg !2772

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2773
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !2775
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !2776

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2777
  br label %kmalloc_index.exit.i, !dbg !2777

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2778
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !2780
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !2781

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !2782
  br label %kmalloc_index.exit.i, !dbg !2782

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2783
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !2785
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !2786

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !2787
  br label %kmalloc_index.exit.i, !dbg !2787

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2788
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !2790
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !2791

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !2792
  br label %kmalloc_index.exit.i, !dbg !2792

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2793
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !2795
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !2796

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !2797
  br label %kmalloc_index.exit.i, !dbg !2797

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2798
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !2800
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !2801

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !2802
  br label %kmalloc_index.exit.i, !dbg !2802

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2803
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !2805
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !2806

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !2807
  br label %kmalloc_index.exit.i, !dbg !2807

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2808
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !2810
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !2811

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !2812
  br label %kmalloc_index.exit.i, !dbg !2812

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2813
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !2815
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !2816

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !2817
  br label %kmalloc_index.exit.i, !dbg !2817

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2818
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !2820
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !2821

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !2822
  br label %kmalloc_index.exit.i, !dbg !2822

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2823
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !2825
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !2826

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !2827
  br label %kmalloc_index.exit.i, !dbg !2827

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2828
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !2830
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !2831

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !2832
  br label %kmalloc_index.exit.i, !dbg !2832

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2833
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !2835
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !2836

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !2837
  br label %kmalloc_index.exit.i, !dbg !2837

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2838
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !2840
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !2841

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !2842
  br label %kmalloc_index.exit.i, !dbg !2842

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2843
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !2845
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !2846

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !2847
  br label %kmalloc_index.exit.i, !dbg !2847

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2848
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !2850
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !2851

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !2852
  br label %kmalloc_index.exit.i, !dbg !2852

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2853
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !2855
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !2856

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !2857
  br label %kmalloc_index.exit.i, !dbg !2857

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2858
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !2860
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !2861

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !2862
  br label %kmalloc_index.exit.i, !dbg !2862

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2863
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !2865
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !2866

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !2867
  br label %kmalloc_index.exit.i, !dbg !2867

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2868
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !2870
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !2871

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !2872
  br label %kmalloc_index.exit.i, !dbg !2872

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2873
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !2875
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !2876

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !2877
  br label %kmalloc_index.exit.i, !dbg !2877

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2878
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !2880
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !2881

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !2882
  br label %kmalloc_index.exit.i, !dbg !2882

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2883
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !2885
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !2886

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !2887
  br label %kmalloc_index.exit.i, !dbg !2887

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2888
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !2890
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !2891

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !2892
  br label %kmalloc_index.exit.i, !dbg !2892

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !2893, !srcloc !2896
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 102) #8, !dbg !2897, !srcloc !2900
  unreachable, !dbg !2901

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !2902
  store i32 %45, i32* %index.i, align 4, !dbg !2903
  %46 = load i32, i32* %index.i, align 4, !dbg !2904
  %tobool.i = icmp ne i32 %46, 0, !dbg !2904
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !2906

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !2907
  br label %kmalloc.exit, !dbg !2907

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !2908
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2909
  %and.i.i = and i32 %48, 17, !dbg !2909
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !2909
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !2909
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !2909
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !2909
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !2911

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !2912
  br label %kmalloc_type.exit.i, !dbg !2912

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2913
  %and2.i.i = and i32 %49, 1, !dbg !2914
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !2913
  %50 = zext i1 %tobool3.i.i to i64, !dbg !2913
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !2913
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !2915
  br label %kmalloc_type.exit.i, !dbg !2915

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !2916
  %idxprom.i = zext i32 %51 to i64, !dbg !2917
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !2917
  %52 = load i32, i32* %index.i, align 4, !dbg !2918
  %idxprom6.i = zext i32 %52 to i64, !dbg !2917
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !2917
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !2917
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !2919
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !2920
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2921
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2922
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #10, !dbg !2923
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !2923
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !2923
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !2923
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !2923
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !2675
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2924
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !2925
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !2926
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2927
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #10, !dbg !2928
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !2929
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !2930
  store i8* %62, i8** %retval.i, align 8, !dbg !2931
  br label %kmalloc.exit, !dbg !2931

if.end9.i:                                        ; preds = %if.end
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !2932
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !2933
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #10, !dbg !2934
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !2934
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !2934
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !2934
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !2934
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !2935
  br label %kmalloc.exit, !dbg !2935

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !2936
  %66 = bitcast i8* %65 to %struct.acpi_wakeup_handler*, !dbg !2937
  store %struct.acpi_wakeup_handler* %66, %struct.acpi_wakeup_handler** %handler, align 8, !dbg !2938
  %67 = load %struct.acpi_wakeup_handler*, %struct.acpi_wakeup_handler** %handler, align 8, !dbg !2939
  %tobool = icmp ne %struct.acpi_wakeup_handler* %67, null, !dbg !2939
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !2941

if.then2:                                         ; preds = %kmalloc.exit
  store i32 -12, i32* %retval, align 4, !dbg !2942
  br label %return, !dbg !2942

if.end3:                                          ; preds = %kmalloc.exit
  %68 = load i1 (i8*)*, i1 (i8*)** %wakeup.addr, align 8, !dbg !2943
  %69 = load %struct.acpi_wakeup_handler*, %struct.acpi_wakeup_handler** %handler, align 8, !dbg !2944
  %wakeup4 = getelementptr inbounds %struct.acpi_wakeup_handler, %struct.acpi_wakeup_handler* %69, i32 0, i32 1, !dbg !2945
  store i1 (i8*)* %68, i1 (i8*)** %wakeup4, align 8, !dbg !2946
  %70 = load i8*, i8** %context.addr, align 8, !dbg !2947
  %71 = load %struct.acpi_wakeup_handler*, %struct.acpi_wakeup_handler** %handler, align 8, !dbg !2948
  %context5 = getelementptr inbounds %struct.acpi_wakeup_handler, %struct.acpi_wakeup_handler* %71, i32 0, i32 2, !dbg !2949
  store i8* %70, i8** %context5, align 8, !dbg !2950
  call void @mutex_lock(%struct.mutex* @acpi_wakeup_handler_mutex) #7, !dbg !2951
  %72 = load %struct.acpi_wakeup_handler*, %struct.acpi_wakeup_handler** %handler, align 8, !dbg !2952
  %list_node = getelementptr inbounds %struct.acpi_wakeup_handler, %struct.acpi_wakeup_handler* %72, i32 0, i32 0, !dbg !2953
  call void @list_add(%struct.list_head* %list_node, %struct.list_head* @acpi_wakeup_handler_head) #7, !dbg !2954
  call void @mutex_unlock(%struct.mutex* @acpi_wakeup_handler_mutex) #7, !dbg !2955
  store i32 0, i32* %retval, align 4, !dbg !2956
  br label %return, !dbg !2956

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %73 = load i32, i32* %retval, align 4, !dbg !2957
  ret i32 %73, !dbg !2957
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @acpi_sci_irq_valid() #0 !dbg !2958 {
entry:
  %0 = load i32, i32* @acpi_sci_irq, align 4, !dbg !2960
  %cmp = icmp ne i32 %0, -1, !dbg !2961
  ret i1 %cmp, !dbg !2962
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !2963 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !2967, metadata !DIExpression()), !dbg !2968
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !2969, metadata !DIExpression()), !dbg !2970
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !2971
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !2972
  %2 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !2973
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 0, !dbg !2974
  %3 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2974
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %3) #7, !dbg !2975
  ret void, !dbg !2976
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_unregister_wakeup_handler(i1 (i8*)* %wakeup, i8* %context) #0 !dbg !2977 {
entry:
  %wakeup.addr = alloca i1 (i8*)*, align 8
  %context.addr = alloca i8*, align 8
  %handler = alloca %struct.acpi_wakeup_handler*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_wakeup_handler*, align 8
  %__mptr6 = alloca i8*, align 8
  %tmp10 = alloca %struct.acpi_wakeup_handler*, align 8
  store i1 (i8*)* %wakeup, i1 (i8*)** %wakeup.addr, align 8
  call void @llvm.dbg.declare(metadata i1 (i8*)** %wakeup.addr, metadata !2980, metadata !DIExpression()), !dbg !2981
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !2982, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.declare(metadata %struct.acpi_wakeup_handler** %handler, metadata !2984, metadata !DIExpression()), !dbg !2985
  call void @mutex_lock(%struct.mutex* @acpi_wakeup_handler_mutex) #7, !dbg !2986
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2987, metadata !DIExpression()), !dbg !2990
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @acpi_wakeup_handler_head, i32 0, i32 0), align 8, !dbg !2990
  %1 = bitcast %struct.list_head* %0 to i8*, !dbg !2990
  store i8* %1, i8** %__mptr, align 8, !dbg !2990
  br label %do.body, !dbg !2990

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2991

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2990
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !2990
  %3 = bitcast i8* %add.ptr to %struct.acpi_wakeup_handler*, !dbg !2990
  store %struct.acpi_wakeup_handler* %3, %struct.acpi_wakeup_handler** %tmp, align 8, !dbg !2991
  %4 = load %struct.acpi_wakeup_handler*, %struct.acpi_wakeup_handler** %tmp, align 8, !dbg !2990
  store %struct.acpi_wakeup_handler* %4, %struct.acpi_wakeup_handler** %handler, align 8, !dbg !2993
  br label %for.cond, !dbg !2993

for.cond:                                         ; preds = %do.end9, %do.end
  %5 = load %struct.acpi_wakeup_handler*, %struct.acpi_wakeup_handler** %handler, align 8, !dbg !2994
  %list_node = getelementptr inbounds %struct.acpi_wakeup_handler, %struct.acpi_wakeup_handler* %5, i32 0, i32 0, !dbg !2994
  %cmp = icmp eq %struct.list_head* %list_node, @acpi_wakeup_handler_head, !dbg !2994
  %lnot = xor i1 %cmp, true, !dbg !2994
  br i1 %lnot, label %for.body, label %for.end, !dbg !2993

for.body:                                         ; preds = %for.cond
  %6 = load %struct.acpi_wakeup_handler*, %struct.acpi_wakeup_handler** %handler, align 8, !dbg !2996
  %wakeup1 = getelementptr inbounds %struct.acpi_wakeup_handler, %struct.acpi_wakeup_handler* %6, i32 0, i32 1, !dbg !2999
  %7 = load i1 (i8*)*, i1 (i8*)** %wakeup1, align 8, !dbg !2999
  %8 = load i1 (i8*)*, i1 (i8*)** %wakeup.addr, align 8, !dbg !3000
  %cmp2 = icmp eq i1 (i8*)* %7, %8, !dbg !3001
  br i1 %cmp2, label %land.lhs.true, label %if.end, !dbg !3002

land.lhs.true:                                    ; preds = %for.body
  %9 = load %struct.acpi_wakeup_handler*, %struct.acpi_wakeup_handler** %handler, align 8, !dbg !3003
  %context3 = getelementptr inbounds %struct.acpi_wakeup_handler, %struct.acpi_wakeup_handler* %9, i32 0, i32 2, !dbg !3004
  %10 = load i8*, i8** %context3, align 8, !dbg !3004
  %11 = load i8*, i8** %context.addr, align 8, !dbg !3005
  %cmp4 = icmp eq i8* %10, %11, !dbg !3006
  br i1 %cmp4, label %if.then, label %if.end, !dbg !3007

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct.acpi_wakeup_handler*, %struct.acpi_wakeup_handler** %handler, align 8, !dbg !3008
  %list_node5 = getelementptr inbounds %struct.acpi_wakeup_handler, %struct.acpi_wakeup_handler* %12, i32 0, i32 0, !dbg !3010
  call void @list_del(%struct.list_head* %list_node5) #7, !dbg !3011
  %13 = load %struct.acpi_wakeup_handler*, %struct.acpi_wakeup_handler** %handler, align 8, !dbg !3012
  %14 = bitcast %struct.acpi_wakeup_handler* %13 to i8*, !dbg !3012
  call void @kfree(i8* %14) #7, !dbg !3013
  br label %for.end, !dbg !3014

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !3015

for.inc:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr6, metadata !3016, metadata !DIExpression()), !dbg !3018
  %15 = load %struct.acpi_wakeup_handler*, %struct.acpi_wakeup_handler** %handler, align 8, !dbg !3018
  %list_node7 = getelementptr inbounds %struct.acpi_wakeup_handler, %struct.acpi_wakeup_handler* %15, i32 0, i32 0, !dbg !3018
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list_node7, i32 0, i32 0, !dbg !3018
  %16 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3018
  %17 = bitcast %struct.list_head* %16 to i8*, !dbg !3018
  store i8* %17, i8** %__mptr6, align 8, !dbg !3018
  br label %do.body8, !dbg !3018

do.body8:                                         ; preds = %for.inc
  br label %do.end9, !dbg !3019

do.end9:                                          ; preds = %do.body8
  %18 = load i8*, i8** %__mptr6, align 8, !dbg !3018
  %add.ptr11 = getelementptr i8, i8* %18, i64 0, !dbg !3018
  %19 = bitcast i8* %add.ptr11 to %struct.acpi_wakeup_handler*, !dbg !3018
  store %struct.acpi_wakeup_handler* %19, %struct.acpi_wakeup_handler** %tmp10, align 8, !dbg !3019
  %20 = load %struct.acpi_wakeup_handler*, %struct.acpi_wakeup_handler** %tmp10, align 8, !dbg !3018
  store %struct.acpi_wakeup_handler* %20, %struct.acpi_wakeup_handler** %handler, align 8, !dbg !2994
  br label %for.cond, !dbg !2994, !llvm.loop !3021

for.end:                                          ; preds = %if.then, %for.cond
  call void @mutex_unlock(%struct.mutex* @acpi_wakeup_handler_mutex) #7, !dbg !3023
  ret void, !dbg !3024
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !3025 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !3028, metadata !DIExpression()), !dbg !3029
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3030
  call void @__list_del_entry(%struct.list_head* %0) #7, !dbg !3031
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3032
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !3033
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !3034
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3035
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !3036
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !3037
  ret void, !dbg !3038
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @acpi_check_wakeup_handlers() #0 !dbg !3039 {
entry:
  %retval = alloca i1, align 1
  %handler = alloca %struct.acpi_wakeup_handler*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_wakeup_handler*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp5 = alloca %struct.acpi_wakeup_handler*, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_wakeup_handler** %handler, metadata !3040, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3042, metadata !DIExpression()), !dbg !3045
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @acpi_wakeup_handler_head, i32 0, i32 0), align 8, !dbg !3045
  %1 = bitcast %struct.list_head* %0 to i8*, !dbg !3045
  store i8* %1, i8** %__mptr, align 8, !dbg !3045
  br label %do.body, !dbg !3045

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3046

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3045
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !3045
  %3 = bitcast i8* %add.ptr to %struct.acpi_wakeup_handler*, !dbg !3045
  store %struct.acpi_wakeup_handler* %3, %struct.acpi_wakeup_handler** %tmp, align 8, !dbg !3046
  %4 = load %struct.acpi_wakeup_handler*, %struct.acpi_wakeup_handler** %tmp, align 8, !dbg !3045
  store %struct.acpi_wakeup_handler* %4, %struct.acpi_wakeup_handler** %handler, align 8, !dbg !3048
  br label %for.cond, !dbg !3048

for.cond:                                         ; preds = %do.end4, %do.end
  %5 = load %struct.acpi_wakeup_handler*, %struct.acpi_wakeup_handler** %handler, align 8, !dbg !3049
  %list_node = getelementptr inbounds %struct.acpi_wakeup_handler, %struct.acpi_wakeup_handler* %5, i32 0, i32 0, !dbg !3049
  %cmp = icmp eq %struct.list_head* %list_node, @acpi_wakeup_handler_head, !dbg !3049
  %lnot = xor i1 %cmp, true, !dbg !3049
  br i1 %lnot, label %for.body, label %for.end, !dbg !3048

for.body:                                         ; preds = %for.cond
  %6 = load %struct.acpi_wakeup_handler*, %struct.acpi_wakeup_handler** %handler, align 8, !dbg !3051
  %wakeup = getelementptr inbounds %struct.acpi_wakeup_handler, %struct.acpi_wakeup_handler* %6, i32 0, i32 1, !dbg !3054
  %7 = load i1 (i8*)*, i1 (i8*)** %wakeup, align 8, !dbg !3054
  %8 = load %struct.acpi_wakeup_handler*, %struct.acpi_wakeup_handler** %handler, align 8, !dbg !3055
  %context = getelementptr inbounds %struct.acpi_wakeup_handler, %struct.acpi_wakeup_handler* %8, i32 0, i32 2, !dbg !3056
  %9 = load i8*, i8** %context, align 8, !dbg !3056
  %call = call zeroext i1 %7(i8* %9) #7, !dbg !3051
  br i1 %call, label %if.then, label %if.end, !dbg !3057

if.then:                                          ; preds = %for.body
  store i1 true, i1* %retval, align 1, !dbg !3058
  br label %return, !dbg !3058

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !3059

for.inc:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !3060, metadata !DIExpression()), !dbg !3062
  %10 = load %struct.acpi_wakeup_handler*, %struct.acpi_wakeup_handler** %handler, align 8, !dbg !3062
  %list_node2 = getelementptr inbounds %struct.acpi_wakeup_handler, %struct.acpi_wakeup_handler* %10, i32 0, i32 0, !dbg !3062
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list_node2, i32 0, i32 0, !dbg !3062
  %11 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3062
  %12 = bitcast %struct.list_head* %11 to i8*, !dbg !3062
  store i8* %12, i8** %__mptr1, align 8, !dbg !3062
  br label %do.body3, !dbg !3062

do.body3:                                         ; preds = %for.inc
  br label %do.end4, !dbg !3063

do.end4:                                          ; preds = %do.body3
  %13 = load i8*, i8** %__mptr1, align 8, !dbg !3062
  %add.ptr6 = getelementptr i8, i8* %13, i64 0, !dbg !3062
  %14 = bitcast i8* %add.ptr6 to %struct.acpi_wakeup_handler*, !dbg !3062
  store %struct.acpi_wakeup_handler* %14, %struct.acpi_wakeup_handler** %tmp5, align 8, !dbg !3063
  %15 = load %struct.acpi_wakeup_handler*, %struct.acpi_wakeup_handler** %tmp5, align 8, !dbg !3062
  store %struct.acpi_wakeup_handler* %15, %struct.acpi_wakeup_handler** %handler, align 8, !dbg !3049
  br label %for.cond, !dbg !3049, !llvm.loop !3065

for.end:                                          ; preds = %for.cond
  store i1 false, i1* %retval, align 1, !dbg !3067
  br label %return, !dbg !3067

return:                                           ; preds = %for.end, %if.then
  %16 = load i1, i1* %retval, align 1, !dbg !3068
  ret i1 %16, !dbg !3068
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !3069 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3073, metadata !DIExpression()), !dbg !3078
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3080, metadata !DIExpression()), !dbg !3081
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3082, metadata !DIExpression()), !dbg !3083
  %0 = load i64, i64* %size.addr, align 8, !dbg !3084
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3086
  br i1 %1, label %if.then, label %if.end447, !dbg !3087

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !3088
  %tobool = icmp ne i64 %2, 0, !dbg !3088
  br i1 %tobool, label %if.end, label %if.then1, !dbg !3091

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !3092
  br label %return, !dbg !3092

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !3093
  %cmp = icmp ult i64 %3, 4096, !dbg !3095
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3096

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3097
  br label %return, !dbg !3097

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub = sub i64 %4, 1, !dbg !3098
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !3098
  br i1 %5, label %cond.true, label %cond.false442, !dbg !3098

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub4 = sub i64 %6, 1, !dbg !3098
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !3098
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !3098

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub6 = sub i64 %8, 1, !dbg !3098
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !3098
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !3098

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !3098

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub9 = sub i64 %9, 1, !dbg !3098
  %and = and i64 %sub9, -9223372036854775808, !dbg !3098
  %tobool10 = icmp ne i64 %and, 0, !dbg !3098
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !3098

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !3098

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub13 = sub i64 %10, 1, !dbg !3098
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !3098
  %tobool15 = icmp ne i64 %and14, 0, !dbg !3098
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !3098

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !3098

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub18 = sub i64 %11, 1, !dbg !3098
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !3098
  %tobool20 = icmp ne i64 %and19, 0, !dbg !3098
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !3098

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !3098

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub23 = sub i64 %12, 1, !dbg !3098
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !3098
  %tobool25 = icmp ne i64 %and24, 0, !dbg !3098
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !3098

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !3098

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub28 = sub i64 %13, 1, !dbg !3098
  %and29 = and i64 %sub28, 576460752303423488, !dbg !3098
  %tobool30 = icmp ne i64 %and29, 0, !dbg !3098
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !3098

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !3098

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub33 = sub i64 %14, 1, !dbg !3098
  %and34 = and i64 %sub33, 288230376151711744, !dbg !3098
  %tobool35 = icmp ne i64 %and34, 0, !dbg !3098
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !3098

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !3098

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub38 = sub i64 %15, 1, !dbg !3098
  %and39 = and i64 %sub38, 144115188075855872, !dbg !3098
  %tobool40 = icmp ne i64 %and39, 0, !dbg !3098
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !3098

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !3098

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub43 = sub i64 %16, 1, !dbg !3098
  %and44 = and i64 %sub43, 72057594037927936, !dbg !3098
  %tobool45 = icmp ne i64 %and44, 0, !dbg !3098
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !3098

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !3098

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub48 = sub i64 %17, 1, !dbg !3098
  %and49 = and i64 %sub48, 36028797018963968, !dbg !3098
  %tobool50 = icmp ne i64 %and49, 0, !dbg !3098
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !3098

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !3098

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub53 = sub i64 %18, 1, !dbg !3098
  %and54 = and i64 %sub53, 18014398509481984, !dbg !3098
  %tobool55 = icmp ne i64 %and54, 0, !dbg !3098
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !3098

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !3098

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub58 = sub i64 %19, 1, !dbg !3098
  %and59 = and i64 %sub58, 9007199254740992, !dbg !3098
  %tobool60 = icmp ne i64 %and59, 0, !dbg !3098
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !3098

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !3098

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub63 = sub i64 %20, 1, !dbg !3098
  %and64 = and i64 %sub63, 4503599627370496, !dbg !3098
  %tobool65 = icmp ne i64 %and64, 0, !dbg !3098
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !3098

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !3098

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub68 = sub i64 %21, 1, !dbg !3098
  %and69 = and i64 %sub68, 2251799813685248, !dbg !3098
  %tobool70 = icmp ne i64 %and69, 0, !dbg !3098
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !3098

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !3098

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub73 = sub i64 %22, 1, !dbg !3098
  %and74 = and i64 %sub73, 1125899906842624, !dbg !3098
  %tobool75 = icmp ne i64 %and74, 0, !dbg !3098
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !3098

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !3098

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub78 = sub i64 %23, 1, !dbg !3098
  %and79 = and i64 %sub78, 562949953421312, !dbg !3098
  %tobool80 = icmp ne i64 %and79, 0, !dbg !3098
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !3098

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !3098

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub83 = sub i64 %24, 1, !dbg !3098
  %and84 = and i64 %sub83, 281474976710656, !dbg !3098
  %tobool85 = icmp ne i64 %and84, 0, !dbg !3098
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !3098

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !3098

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub88 = sub i64 %25, 1, !dbg !3098
  %and89 = and i64 %sub88, 140737488355328, !dbg !3098
  %tobool90 = icmp ne i64 %and89, 0, !dbg !3098
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !3098

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !3098

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub93 = sub i64 %26, 1, !dbg !3098
  %and94 = and i64 %sub93, 70368744177664, !dbg !3098
  %tobool95 = icmp ne i64 %and94, 0, !dbg !3098
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !3098

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !3098

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub98 = sub i64 %27, 1, !dbg !3098
  %and99 = and i64 %sub98, 35184372088832, !dbg !3098
  %tobool100 = icmp ne i64 %and99, 0, !dbg !3098
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !3098

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !3098

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub103 = sub i64 %28, 1, !dbg !3098
  %and104 = and i64 %sub103, 17592186044416, !dbg !3098
  %tobool105 = icmp ne i64 %and104, 0, !dbg !3098
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !3098

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !3098

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub108 = sub i64 %29, 1, !dbg !3098
  %and109 = and i64 %sub108, 8796093022208, !dbg !3098
  %tobool110 = icmp ne i64 %and109, 0, !dbg !3098
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !3098

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !3098

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub113 = sub i64 %30, 1, !dbg !3098
  %and114 = and i64 %sub113, 4398046511104, !dbg !3098
  %tobool115 = icmp ne i64 %and114, 0, !dbg !3098
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !3098

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !3098

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub118 = sub i64 %31, 1, !dbg !3098
  %and119 = and i64 %sub118, 2199023255552, !dbg !3098
  %tobool120 = icmp ne i64 %and119, 0, !dbg !3098
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !3098

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !3098

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub123 = sub i64 %32, 1, !dbg !3098
  %and124 = and i64 %sub123, 1099511627776, !dbg !3098
  %tobool125 = icmp ne i64 %and124, 0, !dbg !3098
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !3098

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !3098

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub128 = sub i64 %33, 1, !dbg !3098
  %and129 = and i64 %sub128, 549755813888, !dbg !3098
  %tobool130 = icmp ne i64 %and129, 0, !dbg !3098
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !3098

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !3098

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub133 = sub i64 %34, 1, !dbg !3098
  %and134 = and i64 %sub133, 274877906944, !dbg !3098
  %tobool135 = icmp ne i64 %and134, 0, !dbg !3098
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !3098

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !3098

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub138 = sub i64 %35, 1, !dbg !3098
  %and139 = and i64 %sub138, 137438953472, !dbg !3098
  %tobool140 = icmp ne i64 %and139, 0, !dbg !3098
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !3098

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !3098

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub143 = sub i64 %36, 1, !dbg !3098
  %and144 = and i64 %sub143, 68719476736, !dbg !3098
  %tobool145 = icmp ne i64 %and144, 0, !dbg !3098
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !3098

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !3098

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub148 = sub i64 %37, 1, !dbg !3098
  %and149 = and i64 %sub148, 34359738368, !dbg !3098
  %tobool150 = icmp ne i64 %and149, 0, !dbg !3098
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !3098

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !3098

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub153 = sub i64 %38, 1, !dbg !3098
  %and154 = and i64 %sub153, 17179869184, !dbg !3098
  %tobool155 = icmp ne i64 %and154, 0, !dbg !3098
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !3098

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !3098

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub158 = sub i64 %39, 1, !dbg !3098
  %and159 = and i64 %sub158, 8589934592, !dbg !3098
  %tobool160 = icmp ne i64 %and159, 0, !dbg !3098
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !3098

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !3098

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub163 = sub i64 %40, 1, !dbg !3098
  %and164 = and i64 %sub163, 4294967296, !dbg !3098
  %tobool165 = icmp ne i64 %and164, 0, !dbg !3098
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !3098

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !3098

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub168 = sub i64 %41, 1, !dbg !3098
  %and169 = and i64 %sub168, 2147483648, !dbg !3098
  %tobool170 = icmp ne i64 %and169, 0, !dbg !3098
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !3098

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !3098

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub173 = sub i64 %42, 1, !dbg !3098
  %and174 = and i64 %sub173, 1073741824, !dbg !3098
  %tobool175 = icmp ne i64 %and174, 0, !dbg !3098
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !3098

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !3098

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub178 = sub i64 %43, 1, !dbg !3098
  %and179 = and i64 %sub178, 536870912, !dbg !3098
  %tobool180 = icmp ne i64 %and179, 0, !dbg !3098
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !3098

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !3098

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub183 = sub i64 %44, 1, !dbg !3098
  %and184 = and i64 %sub183, 268435456, !dbg !3098
  %tobool185 = icmp ne i64 %and184, 0, !dbg !3098
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !3098

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !3098

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub188 = sub i64 %45, 1, !dbg !3098
  %and189 = and i64 %sub188, 134217728, !dbg !3098
  %tobool190 = icmp ne i64 %and189, 0, !dbg !3098
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !3098

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !3098

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub193 = sub i64 %46, 1, !dbg !3098
  %and194 = and i64 %sub193, 67108864, !dbg !3098
  %tobool195 = icmp ne i64 %and194, 0, !dbg !3098
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !3098

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !3098

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub198 = sub i64 %47, 1, !dbg !3098
  %and199 = and i64 %sub198, 33554432, !dbg !3098
  %tobool200 = icmp ne i64 %and199, 0, !dbg !3098
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !3098

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !3098

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub203 = sub i64 %48, 1, !dbg !3098
  %and204 = and i64 %sub203, 16777216, !dbg !3098
  %tobool205 = icmp ne i64 %and204, 0, !dbg !3098
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !3098

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !3098

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub208 = sub i64 %49, 1, !dbg !3098
  %and209 = and i64 %sub208, 8388608, !dbg !3098
  %tobool210 = icmp ne i64 %and209, 0, !dbg !3098
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !3098

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !3098

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub213 = sub i64 %50, 1, !dbg !3098
  %and214 = and i64 %sub213, 4194304, !dbg !3098
  %tobool215 = icmp ne i64 %and214, 0, !dbg !3098
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !3098

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !3098

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub218 = sub i64 %51, 1, !dbg !3098
  %and219 = and i64 %sub218, 2097152, !dbg !3098
  %tobool220 = icmp ne i64 %and219, 0, !dbg !3098
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !3098

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !3098

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub223 = sub i64 %52, 1, !dbg !3098
  %and224 = and i64 %sub223, 1048576, !dbg !3098
  %tobool225 = icmp ne i64 %and224, 0, !dbg !3098
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !3098

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !3098

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub228 = sub i64 %53, 1, !dbg !3098
  %and229 = and i64 %sub228, 524288, !dbg !3098
  %tobool230 = icmp ne i64 %and229, 0, !dbg !3098
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !3098

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !3098

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub233 = sub i64 %54, 1, !dbg !3098
  %and234 = and i64 %sub233, 262144, !dbg !3098
  %tobool235 = icmp ne i64 %and234, 0, !dbg !3098
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !3098

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !3098

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub238 = sub i64 %55, 1, !dbg !3098
  %and239 = and i64 %sub238, 131072, !dbg !3098
  %tobool240 = icmp ne i64 %and239, 0, !dbg !3098
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !3098

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !3098

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub243 = sub i64 %56, 1, !dbg !3098
  %and244 = and i64 %sub243, 65536, !dbg !3098
  %tobool245 = icmp ne i64 %and244, 0, !dbg !3098
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !3098

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !3098

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub248 = sub i64 %57, 1, !dbg !3098
  %and249 = and i64 %sub248, 32768, !dbg !3098
  %tobool250 = icmp ne i64 %and249, 0, !dbg !3098
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !3098

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !3098

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub253 = sub i64 %58, 1, !dbg !3098
  %and254 = and i64 %sub253, 16384, !dbg !3098
  %tobool255 = icmp ne i64 %and254, 0, !dbg !3098
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !3098

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !3098

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub258 = sub i64 %59, 1, !dbg !3098
  %and259 = and i64 %sub258, 8192, !dbg !3098
  %tobool260 = icmp ne i64 %and259, 0, !dbg !3098
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !3098

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !3098

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub263 = sub i64 %60, 1, !dbg !3098
  %and264 = and i64 %sub263, 4096, !dbg !3098
  %tobool265 = icmp ne i64 %and264, 0, !dbg !3098
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !3098

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !3098

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub268 = sub i64 %61, 1, !dbg !3098
  %and269 = and i64 %sub268, 2048, !dbg !3098
  %tobool270 = icmp ne i64 %and269, 0, !dbg !3098
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !3098

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !3098

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub273 = sub i64 %62, 1, !dbg !3098
  %and274 = and i64 %sub273, 1024, !dbg !3098
  %tobool275 = icmp ne i64 %and274, 0, !dbg !3098
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !3098

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !3098

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub278 = sub i64 %63, 1, !dbg !3098
  %and279 = and i64 %sub278, 512, !dbg !3098
  %tobool280 = icmp ne i64 %and279, 0, !dbg !3098
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !3098

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !3098

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub283 = sub i64 %64, 1, !dbg !3098
  %and284 = and i64 %sub283, 256, !dbg !3098
  %tobool285 = icmp ne i64 %and284, 0, !dbg !3098
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !3098

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !3098

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub288 = sub i64 %65, 1, !dbg !3098
  %and289 = and i64 %sub288, 128, !dbg !3098
  %tobool290 = icmp ne i64 %and289, 0, !dbg !3098
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !3098

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !3098

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub293 = sub i64 %66, 1, !dbg !3098
  %and294 = and i64 %sub293, 64, !dbg !3098
  %tobool295 = icmp ne i64 %and294, 0, !dbg !3098
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !3098

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !3098

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub298 = sub i64 %67, 1, !dbg !3098
  %and299 = and i64 %sub298, 32, !dbg !3098
  %tobool300 = icmp ne i64 %and299, 0, !dbg !3098
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !3098

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !3098

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub303 = sub i64 %68, 1, !dbg !3098
  %and304 = and i64 %sub303, 16, !dbg !3098
  %tobool305 = icmp ne i64 %and304, 0, !dbg !3098
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !3098

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !3098

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub308 = sub i64 %69, 1, !dbg !3098
  %and309 = and i64 %sub308, 8, !dbg !3098
  %tobool310 = icmp ne i64 %and309, 0, !dbg !3098
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !3098

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !3098

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub313 = sub i64 %70, 1, !dbg !3098
  %and314 = and i64 %sub313, 4, !dbg !3098
  %tobool315 = icmp ne i64 %and314, 0, !dbg !3098
  %71 = zext i1 %tobool315 to i64, !dbg !3098
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !3098
  br label %cond.end, !dbg !3098

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !3098
  br label %cond.end317, !dbg !3098

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !3098
  br label %cond.end319, !dbg !3098

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !3098
  br label %cond.end321, !dbg !3098

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !3098
  br label %cond.end323, !dbg !3098

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !3098
  br label %cond.end325, !dbg !3098

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !3098
  br label %cond.end327, !dbg !3098

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !3098
  br label %cond.end329, !dbg !3098

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !3098
  br label %cond.end331, !dbg !3098

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !3098
  br label %cond.end333, !dbg !3098

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !3098
  br label %cond.end335, !dbg !3098

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !3098
  br label %cond.end337, !dbg !3098

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !3098
  br label %cond.end339, !dbg !3098

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !3098
  br label %cond.end341, !dbg !3098

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !3098
  br label %cond.end343, !dbg !3098

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !3098
  br label %cond.end345, !dbg !3098

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !3098
  br label %cond.end347, !dbg !3098

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !3098
  br label %cond.end349, !dbg !3098

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !3098
  br label %cond.end351, !dbg !3098

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !3098
  br label %cond.end353, !dbg !3098

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !3098
  br label %cond.end355, !dbg !3098

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !3098
  br label %cond.end357, !dbg !3098

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !3098
  br label %cond.end359, !dbg !3098

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !3098
  br label %cond.end361, !dbg !3098

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !3098
  br label %cond.end363, !dbg !3098

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !3098
  br label %cond.end365, !dbg !3098

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !3098
  br label %cond.end367, !dbg !3098

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !3098
  br label %cond.end369, !dbg !3098

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !3098
  br label %cond.end371, !dbg !3098

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !3098
  br label %cond.end373, !dbg !3098

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !3098
  br label %cond.end375, !dbg !3098

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !3098
  br label %cond.end377, !dbg !3098

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !3098
  br label %cond.end379, !dbg !3098

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !3098
  br label %cond.end381, !dbg !3098

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !3098
  br label %cond.end383, !dbg !3098

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !3098
  br label %cond.end385, !dbg !3098

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !3098
  br label %cond.end387, !dbg !3098

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !3098
  br label %cond.end389, !dbg !3098

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !3098
  br label %cond.end391, !dbg !3098

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !3098
  br label %cond.end393, !dbg !3098

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !3098
  br label %cond.end395, !dbg !3098

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !3098
  br label %cond.end397, !dbg !3098

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !3098
  br label %cond.end399, !dbg !3098

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !3098
  br label %cond.end401, !dbg !3098

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !3098
  br label %cond.end403, !dbg !3098

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !3098
  br label %cond.end405, !dbg !3098

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !3098
  br label %cond.end407, !dbg !3098

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !3098
  br label %cond.end409, !dbg !3098

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !3098
  br label %cond.end411, !dbg !3098

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !3098
  br label %cond.end413, !dbg !3098

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !3098
  br label %cond.end415, !dbg !3098

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !3098
  br label %cond.end417, !dbg !3098

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !3098
  br label %cond.end419, !dbg !3098

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !3098
  br label %cond.end421, !dbg !3098

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !3098
  br label %cond.end423, !dbg !3098

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !3098
  br label %cond.end425, !dbg !3098

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !3098
  br label %cond.end427, !dbg !3098

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !3098
  br label %cond.end429, !dbg !3098

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !3098
  br label %cond.end431, !dbg !3098

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !3098
  br label %cond.end433, !dbg !3098

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !3098
  br label %cond.end435, !dbg !3098

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !3098
  br label %cond.end437, !dbg !3098

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !3098
  br label %cond.end440, !dbg !3098

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !3098

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !3098
  br label %cond.end444, !dbg !3098

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !3098
  %sub443 = sub i64 %72, 1, !dbg !3098
  %call = call i32 @__ilog2_u64(i64 %sub443) #9, !dbg !3098
  br label %cond.end444, !dbg !3098

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !3098
  %sub446 = sub i32 %cond445, 12, !dbg !3099
  %add = add i32 %sub446, 1, !dbg !3100
  store i32 %add, i32* %retval, align 4, !dbg !3101
  br label %return, !dbg !3101

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !3102
  %dec = add i64 %73, -1, !dbg !3102
  store i64 %dec, i64* %size.addr, align 8, !dbg !3102
  %74 = load i64, i64* %size.addr, align 8, !dbg !3103
  %shr = lshr i64 %74, 12, !dbg !3103
  store i64 %shr, i64* %size.addr, align 8, !dbg !3103
  %75 = load i64, i64* %size.addr, align 8, !dbg !3104
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3081
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !3105
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !3106
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #11, !dbg !3105, !srcloc !3107
  store i32 %78, i32* %bitpos.i, align 4, !dbg !3105
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !3108
  %add.i = add i32 %79, 1, !dbg !3109
  store i32 %add.i, i32* %retval, align 4, !dbg !3110
  br label %return, !dbg !3110

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !3111
  ret i32 %80, !dbg !3111
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !3112 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3073, metadata !DIExpression()), !dbg !3116
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3080, metadata !DIExpression()), !dbg !3118
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3119, metadata !DIExpression()), !dbg !3120
  %0 = load i64, i64* %n.addr, align 8, !dbg !3121
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3118
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !3122
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !3123
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #11, !dbg !3122, !srcloc !3107
  store i32 %3, i32* %bitpos.i, align 4, !dbg !3122
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !3124
  %add.i = add i32 %4, 1, !dbg !3125
  %sub = sub i32 %add.i, 1, !dbg !3126
  ret i32 %sub, !dbg !3127
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !3128 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !3132, metadata !DIExpression()), !dbg !3133
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !3134, metadata !DIExpression()), !dbg !3135
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3136, metadata !DIExpression()), !dbg !3137
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3138, metadata !DIExpression()), !dbg !3139
  %0 = load i8*, i8** %object.addr, align 8, !dbg !3140
  ret i8* %0, !dbg !3141
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !3142 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !3145, metadata !DIExpression()), !dbg !3146
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !3147, metadata !DIExpression()), !dbg !3148
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !3149, metadata !DIExpression()), !dbg !3150
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3151
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3153
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3154
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #7, !dbg !3155
  br i1 %call, label %if.end, label %if.then, !dbg !3156

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !3157

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3158
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3159
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !3160
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !3161
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3162
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3163
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !3164
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !3165
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3166
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3167
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !3168
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !3169
  br label %do.body, !dbg !3170

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !3171

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !3173

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !3171

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3175
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3175
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !3175
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !3175
  br label %do.end7, !dbg !3175

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !3171

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !3177
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !3178 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !3181, metadata !DIExpression()), !dbg !3182
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !3183, metadata !DIExpression()), !dbg !3184
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !3185, metadata !DIExpression()), !dbg !3186
  ret i1 true, !dbg !3187
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !3188 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !3189, metadata !DIExpression()), !dbg !3190
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3191
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #7, !dbg !3193
  br i1 %call, label %if.end, label %if.then, !dbg !3194

if.then:                                          ; preds = %entry
  br label %return, !dbg !3195

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3196
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !3197
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !3197
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3198
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !3199
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3199
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #7, !dbg !3200
  br label %return, !dbg !3201

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !3201
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !3202 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !3205, metadata !DIExpression()), !dbg !3206
  ret i1 true, !dbg !3207
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !3208 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !3209, metadata !DIExpression()), !dbg !3210
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !3211, metadata !DIExpression()), !dbg !3212
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3213
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3214
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !3215
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !3216
  br label %do.body, !dbg !3217

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !3218

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !3220

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !3218

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3222
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3222
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !3222
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !3222
  br label %do.end5, !dbg !3222

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !3218

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !3224
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noredzone }
attributes #8 = { nounwind }
attributes #9 = { noredzone nounwind readnone }
attributes #10 = { noredzone nounwind }
attributes #11 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2440, !2441, !2442, !2443}
!llvm.ident = !{!2444}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "acpi_wakeup_handler_mutex", scope: !2, file: !3, line: 22, type: !406, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !76, globals: !2437, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/wakeup.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !64, !69}
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
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !65, line: 10, baseType: !7, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!66 = !{!67, !68}
!67 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!68 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !70, line: 305, baseType: !7, size: 32, elements: !71)
!70 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!71 = !{!72, !73, !74, !75}
!72 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!73 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!74 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!75 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!76 = !{!77, !78, !461, !1499, !2426, !7, !2435}
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !80, line: 351, size: 10880, elements: !81)
!80 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/lizy2001/genbc/linux")
!81 = !{!82, !84, !87, !2153, !2154, !2155, !2156, !2157, !2158, !2167, !2184, !2258, !2287, !2311, !2332, !2338, !2347, !2379, !2393, !2415, !2419, !2420, !2421, !2422, !2423, !2424, !2425}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !79, file: !80, line: 352, baseType: !83, size: 32)
!83 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !79, file: !80, line: 353, baseType: !85, size: 64, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !86, line: 424, baseType: !77)
!86 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!87 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !79, file: !80, line: 354, baseType: !88, size: 192, offset: 128)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !89, line: 17, size: 192, elements: !90)
!89 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!90 = !{!91, !93, !2152}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !88, file: !89, line: 18, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !88, file: !89, line: 19, baseType: !94, size: 64, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !89, line: 110, size: 1152, elements: !97)
!97 = !{!98, !102, !106, !115, !2094, !2098, !2102, !2107, !2111, !2112, !2116, !2120, !2124, !2135, !2136, !2137, !2138, !2148}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !96, file: !89, line: 111, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DISubroutineType(types: !101)
!101 = !{!92, !92}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !96, file: !89, line: 112, baseType: !103, size: 64, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DISubroutineType(types: !105)
!105 = !{null, !92}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !96, file: !89, line: 113, baseType: !107, size: 64, offset: 128)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DISubroutineType(types: !109)
!109 = !{!110, !113}
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !111, line: 30, baseType: !112)
!111 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!112 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !96, file: !89, line: 114, baseType: !116, size: 64, offset: 192)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{!119, !113, !121}
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !124)
!124 = !{!125, !1627, !1629, !1632, !1633, !1684, !1781, !1782, !1783, !1784, !1785, !1794, !1899, !1912, !2019, !2020, !2024, !2026, !2027, !2028, !2032, !2038, !2039, !2042, !2043, !2044, !2047, !2048, !2049, !2050, !2082, !2083, !2084, !2087, !2090, !2091, !2092, !2093}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !123, file: !30, line: 462, baseType: !126, size: 512)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !127, line: 64, size: 512, elements: !128)
!127 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!128 = !{!129, !133, !139, !141, !201, !1463, !1617, !1622, !1623, !1624, !1625, !1626}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !126, file: !127, line: 65, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!132 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !126, file: !127, line: 66, baseType: !134, size: 128, offset: 64)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !111, line: 178, size: 128, elements: !135)
!135 = !{!136, !138}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !134, file: !111, line: 179, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !134, file: !111, line: 179, baseType: !137, size: 64, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !126, file: !127, line: 67, baseType: !140, size: 64, offset: 192)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !126, file: !127, line: 68, baseType: !142, size: 64, offset: 256)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !127, line: 192, size: 704, elements: !144)
!144 = !{!145, !146, !162, !163}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !143, file: !127, line: 193, baseType: !134, size: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !143, file: !127, line: 194, baseType: !147, offset: 128)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !148, line: 83, baseType: !149)
!148 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !148, line: 71, elements: !150)
!150 = !{!151}
!151 = !DIDerivedType(tag: DW_TAG_member, scope: !149, file: !148, line: 72, baseType: !152)
!152 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !149, file: !148, line: 72, elements: !153)
!153 = !{!154}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !152, file: !148, line: 73, baseType: !155)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !148, line: 20, elements: !156)
!156 = !{!157}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !155, file: !148, line: 21, baseType: !158)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !159, line: 25, baseType: !160)
!159 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !159, line: 25, elements: !161)
!161 = !{}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !143, file: !127, line: 195, baseType: !126, size: 512, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !143, file: !127, line: 196, baseType: !164, size: 64, offset: 640)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !166)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !127, line: 156, size: 192, elements: !167)
!167 = !{!168, !173, !178}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !166, file: !127, line: 157, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !170)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DISubroutineType(types: !172)
!172 = !{!83, !142, !140}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !166, file: !127, line: 158, baseType: !174, size: 64, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DISubroutineType(types: !177)
!177 = !{!130, !142, !140}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !166, file: !127, line: 159, baseType: !179, size: 64, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !180)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DISubroutineType(types: !182)
!182 = !{!83, !142, !140, !183}
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !127, line: 148, size: 20736, elements: !185)
!185 = !{!186, !191, !195, !196, !200}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !184, file: !127, line: 149, baseType: !187, size: 192)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 192, elements: !189)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!189 = !{!190}
!190 = !DISubrange(count: 3)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !184, file: !127, line: 150, baseType: !192, size: 4096, offset: 192)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 4096, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !184, file: !127, line: 151, baseType: !83, size: 32, offset: 4288)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !184, file: !127, line: 152, baseType: !197, size: 16384, offset: 4320)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 16384, elements: !198)
!198 = !{!199}
!199 = !DISubrange(count: 2048)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !184, file: !127, line: 153, baseType: !83, size: 32, offset: 20704)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !126, file: !127, line: 69, baseType: !202, size: 64, offset: 320)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !127, line: 138, size: 448, elements: !204)
!204 = !{!205, !209, !239, !241, !1410, !1441, !1445}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !203, file: !127, line: 139, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{null, !140}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !203, file: !127, line: 140, baseType: !210, size: 64, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !212)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !213, line: 230, size: 128, elements: !214)
!213 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!214 = !{!215, !231}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !212, file: !213, line: 231, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{!219, !140, !224, !188}
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !111, line: 60, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !221, line: 73, baseType: !222)
!221 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !221, line: 15, baseType: !223)
!223 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !213, line: 30, size: 128, elements: !226)
!226 = !{!227, !228}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !225, file: !213, line: 31, baseType: !130, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !225, file: !213, line: 32, baseType: !229, size: 16, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !111, line: 19, baseType: !230)
!230 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !212, file: !213, line: 232, baseType: !232, size: 64, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!219, !140, !224, !130, !235}
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !111, line: 55, baseType: !236)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !221, line: 72, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !221, line: 16, baseType: !238)
!238 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !203, file: !127, line: 141, baseType: !240, size: 64, offset: 128)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !203, file: !127, line: 142, baseType: !242, size: 64, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !245)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !213, line: 84, size: 320, elements: !246)
!246 = !{!247, !248, !252, !1407, !1408}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !245, file: !213, line: 85, baseType: !130, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !245, file: !213, line: 86, baseType: !249, size: 64, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{!229, !140, !224, !83}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !245, file: !213, line: 88, baseType: !253, size: 64, offset: 128)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{!229, !140, !256, !83}
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !213, line: 168, size: 448, elements: !258)
!258 = !{!259, !260, !261, !262, !272, !273}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !257, file: !213, line: 169, baseType: !225, size: 128)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !257, file: !213, line: 170, baseType: !235, size: 64, offset: 128)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !257, file: !213, line: 171, baseType: !77, size: 64, offset: 192)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !257, file: !213, line: 172, baseType: !263, size: 64, offset: 256)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{!219, !266, !140, !256, !188, !269, !235}
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !268, line: 526, flags: DIFlagFwdDecl)
!268 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !111, line: 46, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !221, line: 88, baseType: !271)
!271 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !257, file: !213, line: 174, baseType: !263, size: 64, offset: 320)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !257, file: !213, line: 176, baseType: !274, size: 64, offset: 384)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!83, !266, !140, !256, !277}
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !279, line: 305, size: 1472, elements: !280)
!279 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!280 = !{!281, !282, !283, !284, !285, !293, !294, !1381, !1387, !1388, !1393, !1394, !1397, !1401, !1402, !1403, !1404, !1405}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !278, file: !279, line: 308, baseType: !238, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !278, file: !279, line: 309, baseType: !238, size: 64, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !278, file: !279, line: 313, baseType: !277, size: 64, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !278, file: !279, line: 313, baseType: !277, size: 64, offset: 192)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !278, file: !279, line: 315, baseType: !286, size: 192, align: 64, offset: 256)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !287, line: 24, size: 192, align: 64, elements: !288)
!287 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!288 = !{!289, !290, !292}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !286, file: !287, line: 25, baseType: !238, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !286, file: !287, line: 26, baseType: !291, size: 64, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !286, file: !287, line: 27, baseType: !291, size: 64, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !278, file: !279, line: 323, baseType: !238, size: 64, offset: 448)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !278, file: !279, line: 327, baseType: !295, size: 64, offset: 512)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !279, line: 388, size: 7296, elements: !297)
!297 = !{!298, !1377}
!298 = !DIDerivedType(tag: DW_TAG_member, scope: !296, file: !279, line: 389, baseType: !299, size: 7296)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !296, file: !279, line: 389, size: 7296, elements: !300)
!300 = !{!301, !302, !306, !312, !316, !317, !318, !319, !320, !328, !333, !334, !335, !336, !345, !346, !347, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !382, !390, !393, !441, !442, !1348, !1349, !1352, !1355, !1356, !1359, !1360, !1361, !1364, !1376}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !299, file: !279, line: 390, baseType: !277, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !299, file: !279, line: 391, baseType: !303, size: 64, offset: 64)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !287, line: 31, size: 64, elements: !304)
!304 = !{!305}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !303, file: !287, line: 32, baseType: !291, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !299, file: !279, line: 392, baseType: !307, size: 64, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !308, line: 23, baseType: !309)
!308 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !310, line: 31, baseType: !311)
!310 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!311 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !299, file: !279, line: 394, baseType: !313, size: 64, offset: 192)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{!238, !266, !238, !238, !238, !238}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !299, file: !279, line: 398, baseType: !238, size: 64, offset: 256)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !299, file: !279, line: 399, baseType: !238, size: 64, offset: 320)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !299, file: !279, line: 405, baseType: !238, size: 64, offset: 384)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !299, file: !279, line: 406, baseType: !238, size: 64, offset: 448)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !299, file: !279, line: 407, baseType: !321, size: 64, offset: 512)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !268, line: 286, baseType: !323)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !268, line: 286, size: 64, elements: !324)
!324 = !{!325}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !323, file: !268, line: 286, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !327, line: 18, baseType: !238)
!327 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!328 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !299, file: !279, line: 416, baseType: !329, size: 32, offset: 576)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !111, line: 168, baseType: !330)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !111, line: 166, size: 32, elements: !331)
!331 = !{!332}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !330, file: !111, line: 167, baseType: !83, size: 32)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !299, file: !279, line: 428, baseType: !329, size: 32, offset: 608)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !299, file: !279, line: 437, baseType: !329, size: 32, offset: 640)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !299, file: !279, line: 447, baseType: !329, size: 32, offset: 672)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !299, file: !279, line: 450, baseType: !337, size: 64, offset: 704)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !338, line: 13, baseType: !339)
!338 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !111, line: 175, baseType: !340)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !111, line: 173, size: 64, elements: !341)
!341 = !{!342}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !340, file: !111, line: 174, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !308, line: 22, baseType: !344)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !310, line: 30, baseType: !271)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !299, file: !279, line: 452, baseType: !83, size: 32, offset: 768)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !299, file: !279, line: 454, baseType: !147, offset: 800)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !299, file: !279, line: 457, baseType: !348, size: 256, offset: 832)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !349, line: 35, size: 256, elements: !350)
!349 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!350 = !{!351, !352, !353, !355}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !348, file: !349, line: 36, baseType: !337, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !348, file: !349, line: 42, baseType: !337, size: 64, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !348, file: !349, line: 46, baseType: !354, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !148, line: 29, baseType: !155)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !348, file: !349, line: 47, baseType: !134, size: 128, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !299, file: !279, line: 459, baseType: !134, size: 128, offset: 1088)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !299, file: !279, line: 466, baseType: !238, size: 64, offset: 1216)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !299, file: !279, line: 467, baseType: !238, size: 64, offset: 1280)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !299, file: !279, line: 469, baseType: !238, size: 64, offset: 1344)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !299, file: !279, line: 470, baseType: !238, size: 64, offset: 1408)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !299, file: !279, line: 471, baseType: !339, size: 64, offset: 1472)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !299, file: !279, line: 472, baseType: !238, size: 64, offset: 1536)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !299, file: !279, line: 473, baseType: !238, size: 64, offset: 1600)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !299, file: !279, line: 474, baseType: !238, size: 64, offset: 1664)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !299, file: !279, line: 475, baseType: !238, size: 64, offset: 1728)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !299, file: !279, line: 477, baseType: !147, offset: 1792)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !299, file: !279, line: 478, baseType: !238, size: 64, offset: 1792)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !299, file: !279, line: 478, baseType: !238, size: 64, offset: 1856)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !299, file: !279, line: 478, baseType: !238, size: 64, offset: 1920)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !299, file: !279, line: 478, baseType: !238, size: 64, offset: 1984)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !299, file: !279, line: 479, baseType: !238, size: 64, offset: 2048)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !299, file: !279, line: 479, baseType: !238, size: 64, offset: 2112)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !299, file: !279, line: 479, baseType: !238, size: 64, offset: 2176)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !299, file: !279, line: 480, baseType: !238, size: 64, offset: 2240)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !299, file: !279, line: 480, baseType: !238, size: 64, offset: 2304)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !299, file: !279, line: 480, baseType: !238, size: 64, offset: 2368)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !299, file: !279, line: 480, baseType: !238, size: 64, offset: 2432)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !299, file: !279, line: 482, baseType: !379, size: 2816, offset: 2496)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 2816, elements: !380)
!380 = !{!381}
!381 = !DISubrange(count: 44)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !299, file: !279, line: 488, baseType: !383, size: 256, offset: 5312)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !384, line: 60, size: 256, elements: !385)
!384 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!385 = !{!386}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !383, file: !384, line: 61, baseType: !387, size: 256)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, size: 256, elements: !388)
!388 = !{!389}
!389 = !DISubrange(count: 4)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !299, file: !279, line: 490, baseType: !391, size: 64, offset: 5568)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !279, line: 490, flags: DIFlagFwdDecl)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !299, file: !279, line: 493, baseType: !394, size: 896, offset: 5632)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !395, line: 53, baseType: !396)
!395 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !395, line: 13, size: 896, elements: !397)
!397 = !{!398, !399, !400, !401, !404, !405, !412, !413, !433, !434, !437}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !396, file: !395, line: 18, baseType: !307, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !396, file: !395, line: 28, baseType: !339, size: 64, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !396, file: !395, line: 31, baseType: !348, size: 256, offset: 128)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !396, file: !395, line: 32, baseType: !402, size: 64, offset: 384)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !395, line: 32, flags: DIFlagFwdDecl)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !396, file: !395, line: 37, baseType: !230, size: 16, offset: 448)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !396, file: !395, line: 40, baseType: !406, size: 192, offset: 512)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !407, line: 53, size: 192, elements: !408)
!407 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!408 = !{!409, !410, !411}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !406, file: !407, line: 54, baseType: !337, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !406, file: !407, line: 55, baseType: !147, offset: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !406, file: !407, line: 59, baseType: !134, size: 128, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !396, file: !395, line: 41, baseType: !77, size: 64, offset: 704)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !396, file: !395, line: 42, baseType: !414, size: 64, offset: 768)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !416)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !417, line: 13, size: 896, elements: !418)
!417 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!418 = !{!419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !416, file: !417, line: 14, baseType: !77, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !416, file: !417, line: 15, baseType: !238, size: 64, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !416, file: !417, line: 17, baseType: !238, size: 64, offset: 128)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !416, file: !417, line: 17, baseType: !238, size: 64, offset: 192)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !416, file: !417, line: 19, baseType: !223, size: 64, offset: 256)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !416, file: !417, line: 21, baseType: !223, size: 64, offset: 320)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !416, file: !417, line: 22, baseType: !223, size: 64, offset: 384)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !416, file: !417, line: 23, baseType: !223, size: 64, offset: 448)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !416, file: !417, line: 24, baseType: !223, size: 64, offset: 512)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !416, file: !417, line: 25, baseType: !223, size: 64, offset: 576)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !416, file: !417, line: 26, baseType: !223, size: 64, offset: 640)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !416, file: !417, line: 27, baseType: !223, size: 64, offset: 704)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !416, file: !417, line: 28, baseType: !223, size: 64, offset: 768)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !416, file: !417, line: 29, baseType: !223, size: 64, offset: 832)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !396, file: !395, line: 44, baseType: !329, size: 32, offset: 832)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !396, file: !395, line: 50, baseType: !435, size: 16, offset: 864)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !308, line: 19, baseType: !436)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !310, line: 24, baseType: !230)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !396, file: !395, line: 51, baseType: !438, size: 16, offset: 880)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !308, line: 18, baseType: !439)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !310, line: 23, baseType: !440)
!440 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !299, file: !279, line: 495, baseType: !238, size: 64, offset: 6528)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !299, file: !279, line: 497, baseType: !443, size: 64, offset: 6592)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !279, line: 381, size: 384, elements: !445)
!445 = !{!446, !447, !1347}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !444, file: !279, line: 382, baseType: !329, size: 32)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !444, file: !279, line: 383, baseType: !448, size: 128, offset: 64)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !279, line: 376, size: 128, elements: !449)
!449 = !{!450, !1345}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !448, file: !279, line: 377, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !453, line: 640, size: 48640, elements: !454)
!453 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!454 = !{!455, !463, !465, !466, !472, !473, !474, !475, !476, !477, !478, !479, !483, !501, !512, !607, !608, !609, !620, !621, !623, !624, !625, !626, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !705, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !761, !763, !764, !765, !777, !779, !780, !781, !782, !783, !789, !790, !791, !792, !793, !794, !795, !807, !812, !816, !817, !818, !821, !825, !828, !831, !834, !837, !840, !843, !846, !852, !853, !854, !860, !861, !862, !863, !864, !873, !874, !875, !876, !877, !882, !883, !884, !887, !888, !891, !894, !897, !900, !903, !906, !907, !987, !990, !993, !994, !997, !998, !999, !1005, !1006, !1007, !1020, !1021, !1022, !1032, !1037, !1040, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !452, file: !453, line: 646, baseType: !456, size: 128)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !457, line: 56, size: 128, elements: !458)
!457 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!458 = !{!459, !460}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !456, file: !457, line: 57, baseType: !238, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !456, file: !457, line: 58, baseType: !461, size: 32, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !308, line: 21, baseType: !462)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !310, line: 27, baseType: !7)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !452, file: !453, line: 649, baseType: !464, size: 64, offset: 128)
!464 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !223)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !452, file: !453, line: 657, baseType: !77, size: 64, offset: 192)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !452, file: !453, line: 658, baseType: !467, size: 32, offset: 256)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !468, line: 113, baseType: !469)
!468 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !468, line: 111, size: 32, elements: !470)
!470 = !{!471}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !469, file: !468, line: 112, baseType: !329, size: 32)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !452, file: !453, line: 660, baseType: !7, size: 32, offset: 288)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !452, file: !453, line: 661, baseType: !7, size: 32, offset: 320)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !452, file: !453, line: 684, baseType: !83, size: 32, offset: 352)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !452, file: !453, line: 686, baseType: !83, size: 32, offset: 384)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !452, file: !453, line: 687, baseType: !83, size: 32, offset: 416)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !452, file: !453, line: 688, baseType: !83, size: 32, offset: 448)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !452, file: !453, line: 689, baseType: !7, size: 32, offset: 480)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !452, file: !453, line: 691, baseType: !480, size: 64, offset: 512)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !482)
!482 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !453, line: 691, flags: DIFlagFwdDecl)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !452, file: !453, line: 692, baseType: !484, size: 832, offset: 576)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !453, line: 451, size: 832, elements: !485)
!485 = !{!486, !491, !492, !493, !494, !495, !496, !497, !498, !499}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !484, file: !453, line: 453, baseType: !487, size: 128)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !453, line: 325, size: 128, elements: !488)
!488 = !{!489, !490}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !487, file: !453, line: 326, baseType: !238, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !487, file: !453, line: 327, baseType: !461, size: 32, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !484, file: !453, line: 454, baseType: !286, size: 192, align: 64, offset: 128)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !484, file: !453, line: 455, baseType: !134, size: 128, offset: 320)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !484, file: !453, line: 456, baseType: !7, size: 32, offset: 448)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !484, file: !453, line: 458, baseType: !307, size: 64, offset: 512)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !484, file: !453, line: 459, baseType: !307, size: 64, offset: 576)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !484, file: !453, line: 460, baseType: !307, size: 64, offset: 640)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !484, file: !453, line: 461, baseType: !307, size: 64, offset: 704)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !484, file: !453, line: 463, baseType: !307, size: 64, offset: 768)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !484, file: !453, line: 465, baseType: !500, offset: 832)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !453, line: 415, elements: !161)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !452, file: !453, line: 693, baseType: !502, size: 384, offset: 1408)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !453, line: 489, size: 384, elements: !503)
!503 = !{!504, !505, !506, !507, !508, !509, !510}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !502, file: !453, line: 490, baseType: !134, size: 128)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !502, file: !453, line: 491, baseType: !238, size: 64, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !502, file: !453, line: 492, baseType: !238, size: 64, offset: 192)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !502, file: !453, line: 493, baseType: !7, size: 32, offset: 256)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !502, file: !453, line: 494, baseType: !230, size: 16, offset: 288)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !502, file: !453, line: 495, baseType: !230, size: 16, offset: 304)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !502, file: !453, line: 497, baseType: !511, size: 64, offset: 320)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !452, file: !453, line: 697, baseType: !513, size: 1792, offset: 1792)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !453, line: 507, size: 1792, elements: !514)
!514 = !{!515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !604, !605}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !513, file: !453, line: 508, baseType: !286, size: 192, align: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !513, file: !453, line: 515, baseType: !307, size: 64, offset: 192)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !513, file: !453, line: 516, baseType: !307, size: 64, offset: 256)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !513, file: !453, line: 517, baseType: !307, size: 64, offset: 320)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !513, file: !453, line: 518, baseType: !307, size: 64, offset: 384)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !513, file: !453, line: 519, baseType: !307, size: 64, offset: 448)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !513, file: !453, line: 526, baseType: !343, size: 64, offset: 512)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !513, file: !453, line: 527, baseType: !307, size: 64, offset: 576)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !513, file: !453, line: 528, baseType: !7, size: 32, offset: 640)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !513, file: !453, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !513, file: !453, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !513, file: !453, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !513, file: !453, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !513, file: !453, line: 563, baseType: !529, size: 512, offset: 704)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !530)
!530 = !{!531, !539, !540, !545, !597, !601, !602, !603}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !529, file: !6, line: 119, baseType: !532, size: 256)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !533, line: 9, size: 256, elements: !534)
!533 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!534 = !{!535, !536}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !532, file: !533, line: 10, baseType: !286, size: 192, align: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !532, file: !533, line: 11, baseType: !537, size: 64, offset: 192)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !538, line: 29, baseType: !343)
!538 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!539 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !529, file: !6, line: 120, baseType: !537, size: 64, offset: 256)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !529, file: !6, line: 121, baseType: !541, size: 64, offset: 320)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{!5, !544}
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !529, file: !6, line: 122, baseType: !546, size: 64, offset: 384)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !548)
!548 = !{!549, !569, !570, !573, !583, !584, !592, !596}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !547, file: !6, line: 160, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !552)
!552 = !{!553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !551, file: !6, line: 215, baseType: !354)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !551, file: !6, line: 216, baseType: !7, size: 32)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !551, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !551, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !551, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !551, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !551, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !551, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !551, file: !6, line: 233, baseType: !537, size: 64, offset: 128)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !551, file: !6, line: 234, baseType: !544, size: 64, offset: 192)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !551, file: !6, line: 235, baseType: !537, size: 64, offset: 256)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !551, file: !6, line: 236, baseType: !544, size: 64, offset: 320)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !551, file: !6, line: 237, baseType: !566, size: 4096, offset: 512)
!566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !547, size: 4096, elements: !567)
!567 = !{!568}
!568 = !DISubrange(count: 8)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !547, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !547, file: !6, line: 162, baseType: !571, size: 32, offset: 96)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !111, line: 27, baseType: !572)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !221, line: 96, baseType: !83)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !547, file: !6, line: 163, baseType: !574, size: 32, offset: 128)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !575, line: 276, baseType: !576)
!575 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !575, line: 276, size: 32, elements: !577)
!577 = !{!578}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !576, file: !575, line: 276, baseType: !579, size: 32)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !575, line: 70, baseType: !580)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !575, line: 65, size: 32, elements: !581)
!581 = !{!582}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !580, file: !575, line: 66, baseType: !7, size: 32)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !547, file: !6, line: 164, baseType: !544, size: 64, offset: 192)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !547, file: !6, line: 165, baseType: !585, size: 128, offset: 256)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !533, line: 14, size: 128, elements: !586)
!586 = !{!587}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !585, file: !533, line: 15, baseType: !588, size: 128)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !287, line: 125, size: 128, elements: !589)
!589 = !{!590, !591}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !588, file: !287, line: 126, baseType: !303, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !588, file: !287, line: 127, baseType: !291, size: 64, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !547, file: !6, line: 166, baseType: !593, size: 64, offset: 384)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DISubroutineType(types: !595)
!595 = !{!537}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !547, file: !6, line: 167, baseType: !537, size: 64, offset: 448)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !529, file: !6, line: 123, baseType: !598, size: 8, offset: 448)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !308, line: 17, baseType: !599)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !310, line: 21, baseType: !600)
!600 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !529, file: !6, line: 124, baseType: !598, size: 8, offset: 456)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !529, file: !6, line: 125, baseType: !598, size: 8, offset: 464)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !529, file: !6, line: 126, baseType: !598, size: 8, offset: 472)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !513, file: !453, line: 572, baseType: !529, size: 512, offset: 1216)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !513, file: !453, line: 580, baseType: !606, size: 64, offset: 1728)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !452, file: !453, line: 721, baseType: !7, size: 32, offset: 3584)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !452, file: !453, line: 722, baseType: !83, size: 32, offset: 3616)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !452, file: !453, line: 723, baseType: !610, size: 64, offset: 3648)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !612)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !613, line: 17, baseType: !614)
!613 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !613, line: 17, size: 64, elements: !615)
!615 = !{!616}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !614, file: !613, line: 17, baseType: !617, size: 64)
!617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 64, elements: !618)
!618 = !{!619}
!619 = !DISubrange(count: 1)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !452, file: !453, line: 724, baseType: !612, size: 64, offset: 3712)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !452, file: !453, line: 749, baseType: !622, offset: 3776)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !453, line: 290, elements: !161)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !452, file: !453, line: 751, baseType: !134, size: 128, offset: 3776)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !452, file: !453, line: 757, baseType: !295, size: 64, offset: 3904)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !452, file: !453, line: 758, baseType: !295, size: 64, offset: 3968)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !452, file: !453, line: 761, baseType: !627, size: 320, offset: 4032)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !384, line: 34, size: 320, elements: !628)
!628 = !{!629, !630}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !627, file: !384, line: 35, baseType: !307, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !627, file: !384, line: 36, baseType: !631, size: 256, offset: 64)
!631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 256, elements: !388)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !452, file: !453, line: 766, baseType: !83, size: 32, offset: 4352)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !452, file: !453, line: 767, baseType: !83, size: 32, offset: 4384)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !452, file: !453, line: 768, baseType: !83, size: 32, offset: 4416)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !452, file: !453, line: 770, baseType: !83, size: 32, offset: 4448)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !452, file: !453, line: 772, baseType: !238, size: 64, offset: 4480)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !452, file: !453, line: 775, baseType: !7, size: 32, offset: 4544)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !452, file: !453, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !452, file: !453, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !452, file: !453, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !452, file: !453, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !452, file: !453, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !452, file: !453, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !452, file: !453, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !452, file: !453, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !452, file: !453, line: 831, baseType: !238, size: 64, offset: 4672)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !452, file: !453, line: 833, baseType: !648, size: 384, offset: 4736)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !649)
!649 = !{!650, !655}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !648, file: !12, line: 26, baseType: !651, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{!223, !654}
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, scope: !648, file: !12, line: 27, baseType: !656, size: 320, offset: 64)
!656 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !648, file: !12, line: 27, size: 320, elements: !657)
!657 = !{!658, !668, !695}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !656, file: !12, line: 36, baseType: !659, size: 320)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !656, file: !12, line: 29, size: 320, elements: !660)
!660 = !{!661, !663, !664, !665, !666, !667}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !659, file: !12, line: 30, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !659, file: !12, line: 31, baseType: !461, size: 32, offset: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !659, file: !12, line: 32, baseType: !461, size: 32, offset: 96)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !659, file: !12, line: 33, baseType: !461, size: 32, offset: 128)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !659, file: !12, line: 34, baseType: !307, size: 64, offset: 192)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !659, file: !12, line: 35, baseType: !662, size: 64, offset: 256)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !656, file: !12, line: 46, baseType: !669, size: 192)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !656, file: !12, line: 38, size: 192, elements: !670)
!670 = !{!671, !672, !673, !694}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !669, file: !12, line: 39, baseType: !571, size: 32)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !669, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!673 = !DIDerivedType(tag: DW_TAG_member, scope: !669, file: !12, line: 41, baseType: !674, size: 64, offset: 64)
!674 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !669, file: !12, line: 41, size: 64, elements: !675)
!675 = !{!676, !684}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !674, file: !12, line: 42, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !679, line: 7, size: 128, elements: !680)
!679 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!680 = !{!681, !683}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !678, file: !679, line: 8, baseType: !682, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !221, line: 93, baseType: !271)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !678, file: !679, line: 9, baseType: !271, size: 64, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !674, file: !12, line: 43, baseType: !685, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !687, line: 7, size: 64, elements: !688)
!687 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!688 = !{!689, !693}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !686, file: !687, line: 8, baseType: !690, size: 32)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !687, line: 5, baseType: !691)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !308, line: 20, baseType: !692)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !310, line: 26, baseType: !83)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !686, file: !687, line: 9, baseType: !691, size: 32, offset: 32)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !669, file: !12, line: 45, baseType: !307, size: 64, offset: 128)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !656, file: !12, line: 54, baseType: !696, size: 256)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !656, file: !12, line: 48, size: 256, elements: !697)
!697 = !{!698, !701, !702, !703, !704}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !696, file: !12, line: 49, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !696, file: !12, line: 50, baseType: !83, size: 32, offset: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !696, file: !12, line: 51, baseType: !83, size: 32, offset: 96)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !696, file: !12, line: 52, baseType: !238, size: 64, offset: 128)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !696, file: !12, line: 53, baseType: !238, size: 64, offset: 192)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !452, file: !453, line: 835, baseType: !706, size: 32, offset: 5120)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !111, line: 22, baseType: !707)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !221, line: 28, baseType: !83)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !452, file: !453, line: 836, baseType: !706, size: 32, offset: 5152)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !452, file: !453, line: 840, baseType: !238, size: 64, offset: 5184)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !452, file: !453, line: 849, baseType: !451, size: 64, offset: 5248)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !452, file: !453, line: 852, baseType: !451, size: 64, offset: 5312)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !452, file: !453, line: 857, baseType: !134, size: 128, offset: 5376)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !452, file: !453, line: 858, baseType: !134, size: 128, offset: 5504)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !452, file: !453, line: 859, baseType: !451, size: 64, offset: 5632)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !452, file: !453, line: 867, baseType: !134, size: 128, offset: 5696)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !452, file: !453, line: 868, baseType: !134, size: 128, offset: 5824)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !452, file: !453, line: 871, baseType: !718, size: 64, offset: 5952)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !720, line: 59, size: 768, elements: !721)
!720 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!721 = !{!722, !723, !724, !725, !736, !737, !744, !753}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !719, file: !720, line: 61, baseType: !467, size: 32)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !719, file: !720, line: 62, baseType: !7, size: 32, offset: 32)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !719, file: !720, line: 63, baseType: !147, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !719, file: !720, line: 65, baseType: !726, size: 256, offset: 64)
!726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !727, size: 256, elements: !388)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !111, line: 182, size: 64, elements: !728)
!728 = !{!729}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !727, file: !111, line: 183, baseType: !730, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !111, line: 186, size: 128, elements: !732)
!732 = !{!733, !734}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !731, file: !111, line: 187, baseType: !730, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !731, file: !111, line: 187, baseType: !735, size: 64, offset: 64)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !719, file: !720, line: 66, baseType: !727, size: 64, offset: 320)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !719, file: !720, line: 68, baseType: !738, size: 128, offset: 384)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !739, line: 40, baseType: !740)
!739 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !739, line: 36, size: 128, elements: !741)
!741 = !{!742, !743}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !740, file: !739, line: 37, baseType: !147)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !740, file: !739, line: 38, baseType: !134, size: 128)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !719, file: !720, line: 69, baseType: !745, size: 128, align: 64, offset: 512)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !111, line: 216, size: 128, align: 64, elements: !746)
!746 = !{!747, !749}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !745, file: !111, line: 217, baseType: !748, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !745, file: !111, line: 218, baseType: !750, size: 64, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{null, !748}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !719, file: !720, line: 70, baseType: !754, size: 128, offset: 640)
!754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !755, size: 128, elements: !618)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !720, line: 54, size: 128, elements: !756)
!756 = !{!757, !758}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !755, file: !720, line: 55, baseType: !83, size: 32)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !755, file: !720, line: 56, baseType: !759, size: 64, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !720, line: 56, flags: DIFlagFwdDecl)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !452, file: !453, line: 872, baseType: !762, size: 512, offset: 6016)
!762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !731, size: 512, elements: !388)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !452, file: !453, line: 873, baseType: !134, size: 128, offset: 6528)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !452, file: !453, line: 874, baseType: !134, size: 128, offset: 6656)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !452, file: !453, line: 876, baseType: !766, size: 64, offset: 6784)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !768, line: 26, size: 192, elements: !769)
!768 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!769 = !{!770, !771}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !767, file: !768, line: 27, baseType: !7, size: 32)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !767, file: !768, line: 28, baseType: !772, size: 128, offset: 64)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !773, line: 43, size: 128, elements: !774)
!773 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!774 = !{!775, !776}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !772, file: !773, line: 44, baseType: !354)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !772, file: !773, line: 45, baseType: !134, size: 128)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !452, file: !453, line: 879, baseType: !778, size: 64, offset: 6848)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !452, file: !453, line: 882, baseType: !778, size: 64, offset: 6912)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !452, file: !453, line: 884, baseType: !307, size: 64, offset: 6976)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !452, file: !453, line: 885, baseType: !307, size: 64, offset: 7040)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !452, file: !453, line: 890, baseType: !307, size: 64, offset: 7104)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !452, file: !453, line: 891, baseType: !784, size: 128, offset: 7168)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !453, line: 242, size: 128, elements: !785)
!785 = !{!786, !787, !788}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !784, file: !453, line: 244, baseType: !307, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !784, file: !453, line: 245, baseType: !307, size: 64, offset: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !784, file: !453, line: 246, baseType: !354, offset: 128)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !452, file: !453, line: 900, baseType: !238, size: 64, offset: 7296)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !452, file: !453, line: 901, baseType: !238, size: 64, offset: 7360)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !452, file: !453, line: 904, baseType: !307, size: 64, offset: 7424)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !452, file: !453, line: 907, baseType: !307, size: 64, offset: 7488)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !452, file: !453, line: 910, baseType: !238, size: 64, offset: 7552)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !452, file: !453, line: 911, baseType: !238, size: 64, offset: 7616)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !452, file: !453, line: 914, baseType: !796, size: 640, offset: 7680)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !797, line: 123, size: 640, elements: !798)
!797 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!798 = !{!799, !805, !806}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !796, file: !797, line: 124, baseType: !800, size: 576)
!800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !801, size: 576, elements: !189)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !797, line: 108, size: 192, elements: !802)
!802 = !{!803, !804}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !801, file: !797, line: 109, baseType: !307, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !801, file: !797, line: 110, baseType: !585, size: 128, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !796, file: !797, line: 125, baseType: !7, size: 32, offset: 576)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !796, file: !797, line: 126, baseType: !7, size: 32, offset: 608)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !452, file: !453, line: 917, baseType: !808, size: 192, offset: 8320)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !797, line: 134, size: 192, elements: !809)
!809 = !{!810, !811}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !808, file: !797, line: 135, baseType: !745, size: 128, align: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !808, file: !797, line: 136, baseType: !7, size: 32, offset: 128)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !452, file: !453, line: 923, baseType: !813, size: 64, offset: 8512)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !815)
!815 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !453, line: 923, flags: DIFlagFwdDecl)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !452, file: !453, line: 926, baseType: !813, size: 64, offset: 8576)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !452, file: !453, line: 929, baseType: !813, size: 64, offset: 8640)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !452, file: !453, line: 933, baseType: !819, size: 64, offset: 8704)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !453, line: 933, flags: DIFlagFwdDecl)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !452, file: !453, line: 943, baseType: !822, size: 128, offset: 8768)
!822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 128, elements: !823)
!823 = !{!824}
!824 = !DISubrange(count: 16)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !452, file: !453, line: 945, baseType: !826, size: 64, offset: 8896)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !453, line: 49, flags: DIFlagFwdDecl)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !452, file: !453, line: 956, baseType: !829, size: 64, offset: 8960)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !453, line: 45, flags: DIFlagFwdDecl)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !452, file: !453, line: 959, baseType: !832, size: 64, offset: 9024)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !453, line: 959, flags: DIFlagFwdDecl)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !452, file: !453, line: 962, baseType: !835, size: 64, offset: 9088)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !453, line: 66, flags: DIFlagFwdDecl)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !452, file: !453, line: 966, baseType: !838, size: 64, offset: 9152)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !453, line: 50, flags: DIFlagFwdDecl)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !452, file: !453, line: 969, baseType: !841, size: 64, offset: 9216)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !797, line: 223, flags: DIFlagFwdDecl)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !452, file: !453, line: 970, baseType: !844, size: 64, offset: 9280)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !453, line: 62, flags: DIFlagFwdDecl)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !452, file: !453, line: 971, baseType: !847, size: 64, offset: 9344)
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !848, line: 25, baseType: !849)
!848 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !848, line: 23, size: 64, elements: !850)
!850 = !{!851}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !849, file: !848, line: 24, baseType: !617, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !452, file: !453, line: 972, baseType: !847, size: 64, offset: 9408)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !452, file: !453, line: 974, baseType: !847, size: 64, offset: 9472)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !452, file: !453, line: 975, baseType: !855, size: 192, offset: 9536)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !856, line: 30, size: 192, elements: !857)
!856 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!857 = !{!858, !859}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !855, file: !856, line: 31, baseType: !134, size: 128)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !855, file: !856, line: 32, baseType: !847, size: 64, offset: 128)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !452, file: !453, line: 976, baseType: !238, size: 64, offset: 9728)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !452, file: !453, line: 977, baseType: !235, size: 64, offset: 9792)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !452, file: !453, line: 978, baseType: !7, size: 32, offset: 9856)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !452, file: !453, line: 980, baseType: !748, size: 64, offset: 9920)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !452, file: !453, line: 989, baseType: !865, size: 128, offset: 9984)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !866, line: 35, size: 128, elements: !867)
!866 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!867 = !{!868, !869, !870}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !865, file: !866, line: 36, baseType: !83, size: 32)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !865, file: !866, line: 37, baseType: !329, size: 32, offset: 32)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !865, file: !866, line: 38, baseType: !871, size: 64, offset: 64)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !866, line: 23, flags: DIFlagFwdDecl)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !452, file: !453, line: 992, baseType: !307, size: 64, offset: 10112)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !452, file: !453, line: 993, baseType: !307, size: 64, offset: 10176)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !452, file: !453, line: 996, baseType: !147, offset: 10240)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !452, file: !453, line: 999, baseType: !354, offset: 10240)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !452, file: !453, line: 1001, baseType: !878, size: 64, offset: 10240)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !453, line: 636, size: 64, elements: !879)
!879 = !{!880}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !878, file: !453, line: 637, baseType: !881, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !452, file: !453, line: 1005, baseType: !588, size: 128, offset: 10304)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !452, file: !453, line: 1007, baseType: !451, size: 64, offset: 10432)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !452, file: !453, line: 1009, baseType: !885, size: 64, offset: 10496)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !453, line: 1009, flags: DIFlagFwdDecl)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !452, file: !453, line: 1043, baseType: !77, size: 64, offset: 10560)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !452, file: !453, line: 1046, baseType: !889, size: 64, offset: 10624)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !453, line: 41, flags: DIFlagFwdDecl)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !452, file: !453, line: 1050, baseType: !892, size: 64, offset: 10688)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !453, line: 42, flags: DIFlagFwdDecl)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !452, file: !453, line: 1054, baseType: !895, size: 64, offset: 10752)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !453, line: 55, flags: DIFlagFwdDecl)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !452, file: !453, line: 1056, baseType: !898, size: 64, offset: 10816)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !453, line: 40, flags: DIFlagFwdDecl)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !452, file: !453, line: 1058, baseType: !901, size: 64, offset: 10880)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !453, line: 47, flags: DIFlagFwdDecl)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !452, file: !453, line: 1061, baseType: !904, size: 64, offset: 10944)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !453, line: 43, flags: DIFlagFwdDecl)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !452, file: !453, line: 1064, baseType: !238, size: 64, offset: 11008)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !452, file: !453, line: 1065, baseType: !908, size: 64, offset: 11072)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !856, line: 14, baseType: !910)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !856, line: 12, size: 384, elements: !911)
!911 = !{!912}
!912 = !DIDerivedType(tag: DW_TAG_member, scope: !910, file: !856, line: 13, baseType: !913, size: 384)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !910, file: !856, line: 13, size: 384, elements: !914)
!914 = !{!915, !916, !917, !918}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !913, file: !856, line: 13, baseType: !83, size: 32)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !913, file: !856, line: 13, baseType: !83, size: 32, offset: 32)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !913, file: !856, line: 13, baseType: !83, size: 32, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !913, file: !856, line: 13, baseType: !919, size: 256, offset: 128)
!919 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !920, line: 32, size: 256, elements: !921)
!920 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!921 = !{!922, !928, !941, !947, !956, !976, !981}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !919, file: !920, line: 37, baseType: !923, size: 64)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !919, file: !920, line: 34, size: 64, elements: !924)
!924 = !{!925, !926}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !923, file: !920, line: 35, baseType: !707, size: 32)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !923, file: !920, line: 36, baseType: !927, size: 32, offset: 32)
!927 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !221, line: 49, baseType: !7)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !919, file: !920, line: 45, baseType: !929, size: 192)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !919, file: !920, line: 40, size: 192, elements: !930)
!930 = !{!931, !933, !934, !940}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !929, file: !920, line: 41, baseType: !932, size: 32)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !221, line: 95, baseType: !83)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !929, file: !920, line: 42, baseType: !83, size: 32, offset: 32)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !929, file: !920, line: 43, baseType: !935, size: 64, offset: 64)
!935 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !920, line: 11, baseType: !936)
!936 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !920, line: 8, size: 64, elements: !937)
!937 = !{!938, !939}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !936, file: !920, line: 9, baseType: !83, size: 32)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !936, file: !920, line: 10, baseType: !77, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !929, file: !920, line: 44, baseType: !83, size: 32, offset: 128)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !919, file: !920, line: 52, baseType: !942, size: 128)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !919, file: !920, line: 48, size: 128, elements: !943)
!943 = !{!944, !945, !946}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !942, file: !920, line: 49, baseType: !707, size: 32)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !942, file: !920, line: 50, baseType: !927, size: 32, offset: 32)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !942, file: !920, line: 51, baseType: !935, size: 64, offset: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !919, file: !920, line: 61, baseType: !948, size: 256)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !919, file: !920, line: 55, size: 256, elements: !949)
!949 = !{!950, !951, !952, !953, !955}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !948, file: !920, line: 56, baseType: !707, size: 32)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !948, file: !920, line: 57, baseType: !927, size: 32, offset: 32)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !948, file: !920, line: 58, baseType: !83, size: 32, offset: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !948, file: !920, line: 59, baseType: !954, size: 64, offset: 128)
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !221, line: 94, baseType: !222)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !948, file: !920, line: 60, baseType: !954, size: 64, offset: 192)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !919, file: !920, line: 95, baseType: !957, size: 256)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !919, file: !920, line: 64, size: 256, elements: !958)
!958 = !{!959, !960}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !957, file: !920, line: 65, baseType: !77, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, scope: !957, file: !920, line: 77, baseType: !961, size: 192, offset: 64)
!961 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !957, file: !920, line: 77, size: 192, elements: !962)
!962 = !{!963, !964, !971}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !961, file: !920, line: 82, baseType: !440, size: 16)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !961, file: !920, line: 88, baseType: !965, size: 192)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !961, file: !920, line: 84, size: 192, elements: !966)
!966 = !{!967, !969, !970}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !965, file: !920, line: 85, baseType: !968, size: 64)
!968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 64, elements: !567)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !965, file: !920, line: 86, baseType: !77, size: 64, offset: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !965, file: !920, line: 87, baseType: !77, size: 64, offset: 128)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !961, file: !920, line: 93, baseType: !972, size: 96)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !961, file: !920, line: 90, size: 96, elements: !973)
!973 = !{!974, !975}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !972, file: !920, line: 91, baseType: !968, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !972, file: !920, line: 92, baseType: !462, size: 32, offset: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !919, file: !920, line: 101, baseType: !977, size: 128)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !919, file: !920, line: 98, size: 128, elements: !978)
!978 = !{!979, !980}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !977, file: !920, line: 99, baseType: !223, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !977, file: !920, line: 100, baseType: !83, size: 32, offset: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !919, file: !920, line: 108, baseType: !982, size: 128)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !919, file: !920, line: 104, size: 128, elements: !983)
!983 = !{!984, !985, !986}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !982, file: !920, line: 105, baseType: !77, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !982, file: !920, line: 106, baseType: !83, size: 32, offset: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !982, file: !920, line: 107, baseType: !7, size: 32, offset: 96)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !452, file: !453, line: 1067, baseType: !988, offset: 11136)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !989, line: 12, elements: !161)
!989 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!990 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !452, file: !453, line: 1099, baseType: !991, size: 64, offset: 11136)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !453, line: 56, flags: DIFlagFwdDecl)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !452, file: !453, line: 1103, baseType: !134, size: 128, offset: 11200)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !452, file: !453, line: 1104, baseType: !995, size: 64, offset: 11328)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !453, line: 46, flags: DIFlagFwdDecl)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !452, file: !453, line: 1105, baseType: !406, size: 192, offset: 11392)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !452, file: !453, line: 1106, baseType: !7, size: 32, offset: 11584)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !452, file: !453, line: 1109, baseType: !1000, size: 128, offset: 11648)
!1000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1001, size: 128, elements: !1003)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !453, line: 51, flags: DIFlagFwdDecl)
!1003 = !{!1004}
!1004 = !DISubrange(count: 2)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !452, file: !453, line: 1110, baseType: !406, size: 192, offset: 11776)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !452, file: !453, line: 1111, baseType: !134, size: 128, offset: 11968)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !452, file: !453, line: 1173, baseType: !1008, size: 64, offset: 12096)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1010, line: 62, size: 256, align: 256, elements: !1011)
!1010 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1011 = !{!1012, !1013, !1014, !1019}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1009, file: !1010, line: 75, baseType: !462, size: 32)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1009, file: !1010, line: 90, baseType: !462, size: 32, offset: 32)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1009, file: !1010, line: 124, baseType: !1015, size: 64, offset: 64)
!1015 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1009, file: !1010, line: 109, size: 64, elements: !1016)
!1016 = !{!1017, !1018}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1015, file: !1010, line: 110, baseType: !309, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1015, file: !1010, line: 112, baseType: !309, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1009, file: !1010, line: 144, baseType: !462, size: 32, offset: 128)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !452, file: !453, line: 1174, baseType: !461, size: 32, offset: 12160)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !452, file: !453, line: 1179, baseType: !238, size: 64, offset: 12224)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !452, file: !453, line: 1182, baseType: !1023, size: 128, offset: 12288)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !384, line: 76, size: 128, elements: !1024)
!1024 = !{!1025, !1030, !1031}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1023, file: !384, line: 85, baseType: !1026, size: 64)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1027, line: 7, size: 64, elements: !1028)
!1027 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1028 = !{!1029}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1026, file: !1027, line: 12, baseType: !614, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1023, file: !384, line: 88, baseType: !110, size: 8, offset: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1023, file: !384, line: 95, baseType: !110, size: 8, offset: 72)
!1032 = !DIDerivedType(tag: DW_TAG_member, scope: !452, file: !453, line: 1184, baseType: !1033, size: 128, offset: 12416)
!1033 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !452, file: !453, line: 1184, size: 128, elements: !1034)
!1034 = !{!1035, !1036}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1033, file: !453, line: 1185, baseType: !467, size: 32)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1033, file: !453, line: 1186, baseType: !745, size: 128, align: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !452, file: !453, line: 1190, baseType: !1038, size: 64, offset: 12544)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !453, line: 53, flags: DIFlagFwdDecl)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !452, file: !453, line: 1192, baseType: !1041, size: 128, offset: 12608)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !384, line: 64, size: 128, elements: !1042)
!1042 = !{!1043, !1136, !1137}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1041, file: !384, line: 65, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !279, line: 68, size: 512, align: 128, elements: !1046)
!1046 = !{!1047, !1048, !1128, !1135}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1045, file: !279, line: 69, baseType: !238, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, scope: !1045, file: !279, line: 77, baseType: !1049, size: 320, offset: 64)
!1049 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1045, file: !279, line: 77, size: 320, elements: !1050)
!1050 = !{!1051, !1060, !1065, !1093, !1101, !1107, !1120, !1127}
!1051 = !DIDerivedType(tag: DW_TAG_member, scope: !1049, file: !279, line: 78, baseType: !1052, size: 320)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1049, file: !279, line: 78, size: 320, elements: !1053)
!1053 = !{!1054, !1055, !1058, !1059}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1052, file: !279, line: 84, baseType: !134, size: 128)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1052, file: !279, line: 86, baseType: !1056, size: 64, offset: 128)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !279, line: 26, flags: DIFlagFwdDecl)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1052, file: !279, line: 87, baseType: !238, size: 64, offset: 192)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1052, file: !279, line: 94, baseType: !238, size: 64, offset: 256)
!1060 = !DIDerivedType(tag: DW_TAG_member, scope: !1049, file: !279, line: 96, baseType: !1061, size: 64)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1049, file: !279, line: 96, size: 64, elements: !1062)
!1062 = !{!1063}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1061, file: !279, line: 101, baseType: !1064, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !111, line: 143, baseType: !307)
!1065 = !DIDerivedType(tag: DW_TAG_member, scope: !1049, file: !279, line: 103, baseType: !1066, size: 320)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1049, file: !279, line: 103, size: 320, elements: !1067)
!1067 = !{!1068, !1078, !1081, !1082}
!1068 = !DIDerivedType(tag: DW_TAG_member, scope: !1066, file: !279, line: 104, baseType: !1069, size: 128)
!1069 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1066, file: !279, line: 104, size: 128, elements: !1070)
!1070 = !{!1071, !1072}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1069, file: !279, line: 105, baseType: !134, size: 128)
!1072 = !DIDerivedType(tag: DW_TAG_member, scope: !1069, file: !279, line: 106, baseType: !1073, size: 128)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1069, file: !279, line: 106, size: 128, elements: !1074)
!1074 = !{!1075, !1076, !1077}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1073, file: !279, line: 107, baseType: !1044, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1073, file: !279, line: 109, baseType: !83, size: 32, offset: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1073, file: !279, line: 110, baseType: !83, size: 32, offset: 96)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1066, file: !279, line: 117, baseType: !1079, size: 64, offset: 128)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !279, line: 117, flags: DIFlagFwdDecl)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1066, file: !279, line: 119, baseType: !77, size: 64, offset: 192)
!1082 = !DIDerivedType(tag: DW_TAG_member, scope: !1066, file: !279, line: 120, baseType: !1083, size: 64, offset: 256)
!1083 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1066, file: !279, line: 120, size: 64, elements: !1084)
!1084 = !{!1085, !1086, !1087}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1083, file: !279, line: 121, baseType: !77, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1083, file: !279, line: 122, baseType: !238, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, scope: !1083, file: !279, line: 123, baseType: !1088, size: 32)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1083, file: !279, line: 123, size: 32, elements: !1089)
!1089 = !{!1090, !1091, !1092}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1088, file: !279, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1088, file: !279, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1088, file: !279, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1093 = !DIDerivedType(tag: DW_TAG_member, scope: !1049, file: !279, line: 130, baseType: !1094, size: 192)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1049, file: !279, line: 130, size: 192, elements: !1095)
!1095 = !{!1096, !1097, !1098, !1099, !1100}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1094, file: !279, line: 131, baseType: !238, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1094, file: !279, line: 134, baseType: !600, size: 8, offset: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1094, file: !279, line: 135, baseType: !600, size: 8, offset: 72)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1094, file: !279, line: 136, baseType: !329, size: 32, offset: 96)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1094, file: !279, line: 137, baseType: !7, size: 32, offset: 128)
!1101 = !DIDerivedType(tag: DW_TAG_member, scope: !1049, file: !279, line: 139, baseType: !1102, size: 256)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1049, file: !279, line: 139, size: 256, elements: !1103)
!1103 = !{!1104, !1105, !1106}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1102, file: !279, line: 140, baseType: !238, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1102, file: !279, line: 141, baseType: !329, size: 32, offset: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1102, file: !279, line: 143, baseType: !134, size: 128, offset: 128)
!1107 = !DIDerivedType(tag: DW_TAG_member, scope: !1049, file: !279, line: 145, baseType: !1108, size: 256)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1049, file: !279, line: 145, size: 256, elements: !1109)
!1109 = !{!1110, !1111, !1113, !1114, !1119}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1108, file: !279, line: 146, baseType: !238, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1108, file: !279, line: 147, baseType: !1112, size: 64, offset: 64)
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !268, line: 509, baseType: !1044)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1108, file: !279, line: 148, baseType: !238, size: 64, offset: 128)
!1114 = !DIDerivedType(tag: DW_TAG_member, scope: !1108, file: !279, line: 149, baseType: !1115, size: 64, offset: 192)
!1115 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1108, file: !279, line: 149, size: 64, elements: !1116)
!1116 = !{!1117, !1118}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1115, file: !279, line: 150, baseType: !295, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1115, file: !279, line: 151, baseType: !329, size: 32)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1108, file: !279, line: 156, baseType: !147, offset: 256)
!1120 = !DIDerivedType(tag: DW_TAG_member, scope: !1049, file: !279, line: 159, baseType: !1121, size: 128)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1049, file: !279, line: 159, size: 128, elements: !1122)
!1122 = !{!1123, !1126}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1121, file: !279, line: 161, baseType: !1124, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !279, line: 161, flags: DIFlagFwdDecl)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1121, file: !279, line: 162, baseType: !77, size: 64, offset: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1049, file: !279, line: 176, baseType: !745, size: 128, align: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, scope: !1045, file: !279, line: 179, baseType: !1129, size: 32, offset: 384)
!1129 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1045, file: !279, line: 179, size: 32, elements: !1130)
!1130 = !{!1131, !1132, !1133, !1134}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1129, file: !279, line: 184, baseType: !329, size: 32)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1129, file: !279, line: 192, baseType: !7, size: 32)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1129, file: !279, line: 194, baseType: !7, size: 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1129, file: !279, line: 195, baseType: !83, size: 32)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1045, file: !279, line: 199, baseType: !329, size: 32, offset: 416)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1041, file: !384, line: 67, baseType: !462, size: 32, offset: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1041, file: !384, line: 68, baseType: !462, size: 32, offset: 96)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !452, file: !453, line: 1206, baseType: !83, size: 32, offset: 12736)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !452, file: !453, line: 1207, baseType: !83, size: 32, offset: 12768)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !452, file: !453, line: 1209, baseType: !238, size: 64, offset: 12800)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !452, file: !453, line: 1219, baseType: !307, size: 64, offset: 12864)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !452, file: !453, line: 1220, baseType: !307, size: 64, offset: 12928)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !452, file: !453, line: 1317, baseType: !83, size: 32, offset: 12992)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !452, file: !453, line: 1319, baseType: !451, size: 64, offset: 13056)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !452, file: !453, line: 1322, baseType: !1146, size: 64, offset: 13120)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1148, line: 56, size: 512, elements: !1149)
!1148 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1149 = !{!1150, !1151, !1152, !1153, !1154, !1156, !1157, !1159}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1147, file: !1148, line: 57, baseType: !1146, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1147, file: !1148, line: 58, baseType: !77, size: 64, offset: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1147, file: !1148, line: 59, baseType: !238, size: 64, offset: 128)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1147, file: !1148, line: 60, baseType: !238, size: 64, offset: 192)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1147, file: !1148, line: 61, baseType: !1155, size: 64, offset: 256)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1147, file: !1148, line: 62, baseType: !7, size: 32, offset: 320)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1147, file: !1148, line: 63, baseType: !1158, size: 64, offset: 384)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !111, line: 153, baseType: !307)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1147, file: !1148, line: 64, baseType: !119, size: 64, offset: 448)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !452, file: !453, line: 1326, baseType: !467, size: 32, offset: 13184)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !452, file: !453, line: 1342, baseType: !77, size: 64, offset: 13248)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !452, file: !453, line: 1343, baseType: !309, size: 64, offset: 13312)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !452, file: !453, line: 1344, baseType: !307, size: 64, offset: 13376)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !452, file: !453, line: 1345, baseType: !309, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !452, file: !453, line: 1346, baseType: !309, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !452, file: !453, line: 1347, baseType: !309, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !452, file: !453, line: 1348, baseType: !745, size: 128, align: 64, offset: 13504)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !452, file: !453, line: 1358, baseType: !1169, size: 34816, offset: 13824)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1170, line: 485, size: 34816, elements: !1171)
!1170 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1171 = !{!1172, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1201, !1202, !1203, !1204, !1205, !1206, !1209, !1210, !1211}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1169, file: !1170, line: 487, baseType: !1173, size: 192)
!1173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1174, size: 192, elements: !189)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1175, line: 16, size: 64, elements: !1176)
!1175 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1176 = !{!1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1174, file: !1175, line: 17, baseType: !435, size: 16)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1174, file: !1175, line: 18, baseType: !435, size: 16, offset: 16)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1174, file: !1175, line: 19, baseType: !435, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1174, file: !1175, line: 19, baseType: !435, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1174, file: !1175, line: 19, baseType: !435, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1174, file: !1175, line: 19, baseType: !435, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1174, file: !1175, line: 19, baseType: !435, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1174, file: !1175, line: 20, baseType: !435, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1174, file: !1175, line: 20, baseType: !435, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1174, file: !1175, line: 20, baseType: !435, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1174, file: !1175, line: 20, baseType: !435, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1174, file: !1175, line: 20, baseType: !435, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1174, file: !1175, line: 20, baseType: !435, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1169, file: !1170, line: 491, baseType: !238, size: 64, offset: 192)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1169, file: !1170, line: 495, baseType: !230, size: 16, offset: 256)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1169, file: !1170, line: 496, baseType: !230, size: 16, offset: 272)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1169, file: !1170, line: 497, baseType: !230, size: 16, offset: 288)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1169, file: !1170, line: 498, baseType: !230, size: 16, offset: 304)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1169, file: !1170, line: 502, baseType: !238, size: 64, offset: 320)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1169, file: !1170, line: 503, baseType: !238, size: 64, offset: 384)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1169, file: !1170, line: 514, baseType: !1198, size: 256, offset: 448)
!1198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1199, size: 256, elements: !388)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1170, line: 483, flags: DIFlagFwdDecl)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1169, file: !1170, line: 516, baseType: !238, size: 64, offset: 704)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1169, file: !1170, line: 518, baseType: !238, size: 64, offset: 768)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1169, file: !1170, line: 520, baseType: !238, size: 64, offset: 832)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1169, file: !1170, line: 521, baseType: !238, size: 64, offset: 896)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1169, file: !1170, line: 522, baseType: !238, size: 64, offset: 960)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1169, file: !1170, line: 528, baseType: !1207, size: 64, offset: 1024)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1170, line: 10, flags: DIFlagFwdDecl)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1169, file: !1170, line: 535, baseType: !238, size: 64, offset: 1088)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1169, file: !1170, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1169, file: !1170, line: 540, baseType: !1212, size: 33280, offset: 1536)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1213, line: 317, size: 33280, elements: !1214)
!1213 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1214 = !{!1215, !1216, !1217}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1212, file: !1213, line: 330, baseType: !7, size: 32)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1212, file: !1213, line: 337, baseType: !238, size: 64, offset: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1212, file: !1213, line: 348, baseType: !1218, size: 32768, offset: 512)
!1218 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1213, line: 304, size: 32768, elements: !1219)
!1219 = !{!1220, !1235, !1274, !1324, !1341}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1218, file: !1213, line: 305, baseType: !1221, size: 896)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1213, line: 12, size: 896, elements: !1222)
!1222 = !{!1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1234}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1221, file: !1213, line: 13, baseType: !461, size: 32)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1221, file: !1213, line: 14, baseType: !461, size: 32, offset: 32)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1221, file: !1213, line: 15, baseType: !461, size: 32, offset: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1221, file: !1213, line: 16, baseType: !461, size: 32, offset: 96)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1221, file: !1213, line: 17, baseType: !461, size: 32, offset: 128)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1221, file: !1213, line: 18, baseType: !461, size: 32, offset: 160)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1221, file: !1213, line: 19, baseType: !461, size: 32, offset: 192)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1221, file: !1213, line: 22, baseType: !1231, size: 640, offset: 224)
!1231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !461, size: 640, elements: !1232)
!1232 = !{!1233}
!1233 = !DISubrange(count: 20)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1221, file: !1213, line: 25, baseType: !461, size: 32, offset: 864)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1218, file: !1213, line: 306, baseType: !1236, size: 4096, align: 128)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1213, line: 34, size: 4096, align: 128, elements: !1237)
!1237 = !{!1238, !1239, !1240, !1241, !1242, !1257, !1258, !1259, !1263, !1265, !1269}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1236, file: !1213, line: 35, baseType: !435, size: 16)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1236, file: !1213, line: 36, baseType: !435, size: 16, offset: 16)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1236, file: !1213, line: 37, baseType: !435, size: 16, offset: 32)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1236, file: !1213, line: 38, baseType: !435, size: 16, offset: 48)
!1242 = !DIDerivedType(tag: DW_TAG_member, scope: !1236, file: !1213, line: 39, baseType: !1243, size: 128, offset: 64)
!1243 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1236, file: !1213, line: 39, size: 128, elements: !1244)
!1244 = !{!1245, !1250}
!1245 = !DIDerivedType(tag: DW_TAG_member, scope: !1243, file: !1213, line: 40, baseType: !1246, size: 128)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1243, file: !1213, line: 40, size: 128, elements: !1247)
!1247 = !{!1248, !1249}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1246, file: !1213, line: 41, baseType: !307, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1246, file: !1213, line: 42, baseType: !307, size: 64, offset: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, scope: !1243, file: !1213, line: 44, baseType: !1251, size: 128)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1243, file: !1213, line: 44, size: 128, elements: !1252)
!1252 = !{!1253, !1254, !1255, !1256}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1251, file: !1213, line: 45, baseType: !461, size: 32)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1251, file: !1213, line: 46, baseType: !461, size: 32, offset: 32)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1251, file: !1213, line: 47, baseType: !461, size: 32, offset: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1251, file: !1213, line: 48, baseType: !461, size: 32, offset: 96)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1236, file: !1213, line: 51, baseType: !461, size: 32, offset: 192)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1236, file: !1213, line: 52, baseType: !461, size: 32, offset: 224)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1236, file: !1213, line: 55, baseType: !1260, size: 1024, offset: 256)
!1260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !461, size: 1024, elements: !1261)
!1261 = !{!1262}
!1262 = !DISubrange(count: 32)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1236, file: !1213, line: 58, baseType: !1264, size: 2048, offset: 1280)
!1264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !461, size: 2048, elements: !193)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1236, file: !1213, line: 60, baseType: !1266, size: 384, offset: 3328)
!1266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !461, size: 384, elements: !1267)
!1267 = !{!1268}
!1268 = !DISubrange(count: 12)
!1269 = !DIDerivedType(tag: DW_TAG_member, scope: !1236, file: !1213, line: 62, baseType: !1270, size: 384, offset: 3712)
!1270 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1236, file: !1213, line: 62, size: 384, elements: !1271)
!1271 = !{!1272, !1273}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1270, file: !1213, line: 63, baseType: !1266, size: 384)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1270, file: !1213, line: 64, baseType: !1266, size: 384)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1218, file: !1213, line: 307, baseType: !1275, size: 1088)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1213, line: 79, size: 1088, elements: !1276)
!1276 = !{!1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1323}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1275, file: !1213, line: 80, baseType: !461, size: 32)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1275, file: !1213, line: 81, baseType: !461, size: 32, offset: 32)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1275, file: !1213, line: 82, baseType: !461, size: 32, offset: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1275, file: !1213, line: 83, baseType: !461, size: 32, offset: 96)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1275, file: !1213, line: 84, baseType: !461, size: 32, offset: 128)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1275, file: !1213, line: 85, baseType: !461, size: 32, offset: 160)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1275, file: !1213, line: 86, baseType: !461, size: 32, offset: 192)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1275, file: !1213, line: 88, baseType: !1231, size: 640, offset: 224)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1275, file: !1213, line: 89, baseType: !598, size: 8, offset: 864)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1275, file: !1213, line: 90, baseType: !598, size: 8, offset: 872)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1275, file: !1213, line: 91, baseType: !598, size: 8, offset: 880)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1275, file: !1213, line: 92, baseType: !598, size: 8, offset: 888)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1275, file: !1213, line: 93, baseType: !598, size: 8, offset: 896)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1275, file: !1213, line: 94, baseType: !598, size: 8, offset: 904)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1275, file: !1213, line: 95, baseType: !1292, size: 64, offset: 960)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1294, line: 11, size: 128, elements: !1295)
!1294 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1295 = !{!1296, !1297}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1293, file: !1294, line: 12, baseType: !223, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1293, file: !1294, line: 13, baseType: !1298, size: 64, offset: 64)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1300, line: 56, size: 1344, elements: !1301)
!1300 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1301 = !{!1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1299, file: !1300, line: 61, baseType: !238, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1299, file: !1300, line: 62, baseType: !238, size: 64, offset: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1299, file: !1300, line: 63, baseType: !238, size: 64, offset: 128)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1299, file: !1300, line: 64, baseType: !238, size: 64, offset: 192)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1299, file: !1300, line: 65, baseType: !238, size: 64, offset: 256)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1299, file: !1300, line: 66, baseType: !238, size: 64, offset: 320)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1299, file: !1300, line: 68, baseType: !238, size: 64, offset: 384)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1299, file: !1300, line: 69, baseType: !238, size: 64, offset: 448)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1299, file: !1300, line: 70, baseType: !238, size: 64, offset: 512)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1299, file: !1300, line: 71, baseType: !238, size: 64, offset: 576)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1299, file: !1300, line: 72, baseType: !238, size: 64, offset: 640)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1299, file: !1300, line: 73, baseType: !238, size: 64, offset: 704)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1299, file: !1300, line: 74, baseType: !238, size: 64, offset: 768)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1299, file: !1300, line: 75, baseType: !238, size: 64, offset: 832)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1299, file: !1300, line: 76, baseType: !238, size: 64, offset: 896)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1299, file: !1300, line: 81, baseType: !238, size: 64, offset: 960)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1299, file: !1300, line: 83, baseType: !238, size: 64, offset: 1024)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1299, file: !1300, line: 84, baseType: !238, size: 64, offset: 1088)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1299, file: !1300, line: 85, baseType: !238, size: 64, offset: 1152)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1299, file: !1300, line: 86, baseType: !238, size: 64, offset: 1216)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1299, file: !1300, line: 87, baseType: !238, size: 64, offset: 1280)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1275, file: !1213, line: 96, baseType: !461, size: 32, offset: 1024)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1218, file: !1213, line: 308, baseType: !1325, size: 4608, align: 512)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1213, line: 289, size: 4608, align: 512, elements: !1326)
!1326 = !{!1327, !1328, !1337}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1325, file: !1213, line: 290, baseType: !1236, size: 4096, align: 128)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1325, file: !1213, line: 291, baseType: !1329, size: 512, offset: 4096)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1213, line: 268, size: 512, elements: !1330)
!1330 = !{!1331, !1332, !1333}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1329, file: !1213, line: 269, baseType: !307, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1329, file: !1213, line: 270, baseType: !307, size: 64, offset: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1329, file: !1213, line: 271, baseType: !1334, size: 384, offset: 128)
!1334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 384, elements: !1335)
!1335 = !{!1336}
!1336 = !DISubrange(count: 6)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1325, file: !1213, line: 292, baseType: !1338, offset: 4608)
!1338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !598, elements: !1339)
!1339 = !{!1340}
!1340 = !DISubrange(count: 0)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1218, file: !1213, line: 309, baseType: !1342, size: 32768)
!1342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !598, size: 32768, elements: !1343)
!1343 = !{!1344}
!1344 = !DISubrange(count: 4096)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !448, file: !279, line: 378, baseType: !1346, size: 64, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !444, file: !279, line: 384, baseType: !767, size: 192, offset: 192)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !299, file: !279, line: 500, baseType: !147, offset: 6656)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !299, file: !279, line: 501, baseType: !1350, size: 64, offset: 6656)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !279, line: 387, flags: DIFlagFwdDecl)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !299, file: !279, line: 516, baseType: !1353, size: 64, offset: 6720)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !279, line: 516, flags: DIFlagFwdDecl)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !299, file: !279, line: 519, baseType: !266, size: 64, offset: 6784)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !299, file: !279, line: 521, baseType: !1357, size: 64, offset: 6848)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !279, line: 521, flags: DIFlagFwdDecl)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !299, file: !279, line: 545, baseType: !329, size: 32, offset: 6912)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !299, file: !279, line: 548, baseType: !110, size: 8, offset: 6944)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !299, file: !279, line: 550, baseType: !1362, offset: 6952)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1363, line: 142, elements: !161)
!1363 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !299, file: !279, line: 554, baseType: !1365, size: 256, offset: 6976)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1366, line: 102, size: 256, elements: !1367)
!1366 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1367 = !{!1368, !1369, !1370}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1365, file: !1366, line: 103, baseType: !337, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1365, file: !1366, line: 104, baseType: !134, size: 128, offset: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1365, file: !1366, line: 105, baseType: !1371, size: 64, offset: 192)
!1371 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1366, line: 21, baseType: !1372)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{null, !1375}
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !299, file: !279, line: 557, baseType: !461, size: 32, offset: 7232)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !296, file: !279, line: 565, baseType: !1378, offset: 7296)
!1378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, elements: !1379)
!1379 = !{!1380}
!1380 = !DISubrange(count: -1)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !278, file: !279, line: 333, baseType: !1382, size: 64, offset: 576)
!1382 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !268, line: 284, baseType: !1383)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !268, line: 284, size: 64, elements: !1384)
!1384 = !{!1385}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1383, file: !268, line: 284, baseType: !1386, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !327, line: 19, baseType: !238)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !278, file: !279, line: 334, baseType: !238, size: 64, offset: 640)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !278, file: !279, line: 343, baseType: !1389, size: 256, offset: 704)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !278, file: !279, line: 340, size: 256, elements: !1390)
!1390 = !{!1391, !1392}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1389, file: !279, line: 341, baseType: !286, size: 192, align: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1389, file: !279, line: 342, baseType: !238, size: 64, offset: 192)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !278, file: !279, line: 351, baseType: !134, size: 128, offset: 960)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !278, file: !279, line: 353, baseType: !1395, size: 64, offset: 1088)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !279, line: 353, flags: DIFlagFwdDecl)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !278, file: !279, line: 356, baseType: !1398, size: 64, offset: 1152)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1400)
!1400 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !279, line: 356, flags: DIFlagFwdDecl)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !278, file: !279, line: 359, baseType: !238, size: 64, offset: 1216)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !278, file: !279, line: 361, baseType: !266, size: 64, offset: 1280)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !278, file: !279, line: 362, baseType: !77, size: 64, offset: 1344)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !278, file: !279, line: 365, baseType: !337, size: 64, offset: 1408)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !278, file: !279, line: 373, baseType: !1406, offset: 1472)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !279, line: 296, elements: !161)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !245, file: !213, line: 90, baseType: !240, size: 64, offset: 192)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !245, file: !213, line: 91, baseType: !1409, size: 64, offset: 256)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !203, file: !127, line: 143, baseType: !1411, size: 64, offset: 256)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!1414, !140}
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1416)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1417)
!1417 = !{!1418, !1419, !1423, !1427, !1433, !1437}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1416, file: !18, line: 40, baseType: !17, size: 32)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1416, file: !18, line: 41, baseType: !1420, size: 64, offset: 64)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{!110}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1416, file: !18, line: 42, baseType: !1424, size: 64, offset: 128)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!77}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1416, file: !18, line: 43, baseType: !1428, size: 64, offset: 192)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{!119, !1431}
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1416, file: !18, line: 44, baseType: !1434, size: 64, offset: 256)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DISubroutineType(types: !1436)
!1436 = !{!119}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1416, file: !18, line: 45, baseType: !1438, size: 64, offset: 320)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{null, !77}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !203, file: !127, line: 144, baseType: !1442, size: 64, offset: 320)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!119, !140}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !203, file: !127, line: 145, baseType: !1446, size: 64, offset: 384)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{null, !140, !1449, !1456}
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1451, line: 23, baseType: !1452)
!1451 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1451, line: 21, size: 32, elements: !1453)
!1453 = !{!1454}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1452, file: !1451, line: 22, baseType: !1455, size: 32)
!1455 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !111, line: 32, baseType: !927)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1451, line: 28, baseType: !1458)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1451, line: 26, size: 32, elements: !1459)
!1459 = !{!1460}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1458, file: !1451, line: 27, baseType: !1461, size: 32)
!1461 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !111, line: 33, baseType: !1462)
!1462 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !221, line: 50, baseType: !7)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !126, file: !127, line: 70, baseType: !1464, size: 64, offset: 384)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1466, line: 123, size: 1024, elements: !1467)
!1466 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1467 = !{!1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1610, !1611, !1612, !1613, !1614}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1465, file: !1466, line: 124, baseType: !329, size: 32)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1465, file: !1466, line: 125, baseType: !329, size: 32, offset: 32)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1465, file: !1466, line: 135, baseType: !1464, size: 64, offset: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1465, file: !1466, line: 136, baseType: !130, size: 64, offset: 128)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1465, file: !1466, line: 138, baseType: !286, size: 192, align: 64, offset: 192)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1465, file: !1466, line: 140, baseType: !119, size: 64, offset: 384)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1465, file: !1466, line: 141, baseType: !7, size: 32, offset: 448)
!1475 = !DIDerivedType(tag: DW_TAG_member, scope: !1465, file: !1466, line: 142, baseType: !1476, size: 256, offset: 512)
!1476 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1465, file: !1466, line: 142, size: 256, elements: !1477)
!1477 = !{!1478, !1533, !1537}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1476, file: !1466, line: 143, baseType: !1479, size: 192)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1466, line: 91, size: 192, elements: !1480)
!1480 = !{!1481, !1482, !1483}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1479, file: !1466, line: 92, baseType: !238, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1479, file: !1466, line: 94, baseType: !303, size: 64, offset: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1479, file: !1466, line: 100, baseType: !1484, size: 64, offset: 128)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1466, line: 180, size: 704, elements: !1486)
!1486 = !{!1487, !1488, !1489, !1503, !1504, !1505, !1531, !1532}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1485, file: !1466, line: 182, baseType: !1464, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1485, file: !1466, line: 183, baseType: !7, size: 32, offset: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1485, file: !1466, line: 186, baseType: !1490, size: 192, offset: 128)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1491, line: 19, size: 192, elements: !1492)
!1491 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1492 = !{!1493, !1501, !1502}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1490, file: !1491, line: 20, baseType: !1494, size: 128)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1495, line: 292, size: 128, elements: !1496)
!1495 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1496 = !{!1497, !1498, !1500}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1494, file: !1495, line: 293, baseType: !147)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1494, file: !1495, line: 295, baseType: !1499, size: 32)
!1499 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !111, line: 148, baseType: !7)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1494, file: !1495, line: 296, baseType: !77, size: 64, offset: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1490, file: !1491, line: 21, baseType: !7, size: 32, offset: 128)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1490, file: !1491, line: 22, baseType: !7, size: 32, offset: 160)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1485, file: !1466, line: 187, baseType: !461, size: 32, offset: 320)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1485, file: !1466, line: 188, baseType: !461, size: 32, offset: 352)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1485, file: !1466, line: 189, baseType: !1506, size: 64, offset: 384)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1466, line: 168, size: 320, elements: !1508)
!1508 = !{!1509, !1515, !1519, !1523, !1527}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1507, file: !1466, line: 169, baseType: !1510, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!83, !1513, !1484}
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !268, line: 539, flags: DIFlagFwdDecl)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1507, file: !1466, line: 171, baseType: !1516, size: 64, offset: 64)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{!83, !1464, !130, !229}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1507, file: !1466, line: 173, baseType: !1520, size: 64, offset: 128)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!83, !1464}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1507, file: !1466, line: 174, baseType: !1524, size: 64, offset: 192)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{!83, !1464, !1464, !130}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1507, file: !1466, line: 176, baseType: !1528, size: 64, offset: 256)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{!83, !1513, !1464, !1484}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1485, file: !1466, line: 192, baseType: !134, size: 128, offset: 448)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1485, file: !1466, line: 194, baseType: !738, size: 128, offset: 576)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1476, file: !1466, line: 144, baseType: !1534, size: 64)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1466, line: 103, size: 64, elements: !1535)
!1535 = !{!1536}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1534, file: !1466, line: 104, baseType: !1464, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1476, file: !1466, line: 145, baseType: !1538, size: 256)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1466, line: 107, size: 256, elements: !1539)
!1539 = !{!1540, !1605, !1608, !1609}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1538, file: !1466, line: 108, baseType: !1541, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1543)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1466, line: 217, size: 768, elements: !1544)
!1544 = !{!1545, !1565, !1569, !1573, !1578, !1582, !1586, !1590, !1591, !1592, !1593, !1601}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1543, file: !1466, line: 222, baseType: !1546, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{!83, !1549}
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1466, line: 197, size: 1088, elements: !1551)
!1551 = !{!1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1550, file: !1466, line: 199, baseType: !1464, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1550, file: !1466, line: 200, baseType: !266, size: 64, offset: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1550, file: !1466, line: 201, baseType: !1513, size: 64, offset: 128)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1550, file: !1466, line: 202, baseType: !77, size: 64, offset: 192)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1550, file: !1466, line: 205, baseType: !406, size: 192, offset: 256)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1550, file: !1466, line: 206, baseType: !406, size: 192, offset: 448)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1550, file: !1466, line: 207, baseType: !83, size: 32, offset: 640)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1550, file: !1466, line: 208, baseType: !134, size: 128, offset: 704)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1550, file: !1466, line: 209, baseType: !188, size: 64, offset: 832)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1550, file: !1466, line: 211, baseType: !235, size: 64, offset: 896)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1550, file: !1466, line: 212, baseType: !110, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1550, file: !1466, line: 213, baseType: !110, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1550, file: !1466, line: 214, baseType: !1398, size: 64, offset: 1024)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1543, file: !1466, line: 223, baseType: !1566, size: 64, offset: 64)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{null, !1549}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1543, file: !1466, line: 236, baseType: !1570, size: 64, offset: 128)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{!83, !1513, !77}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1543, file: !1466, line: 238, baseType: !1574, size: 64, offset: 192)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{!77, !1513, !1577}
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1543, file: !1466, line: 239, baseType: !1579, size: 64, offset: 256)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!77, !1513, !77, !1577}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1543, file: !1466, line: 240, baseType: !1583, size: 64, offset: 320)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{null, !1513, !77}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1543, file: !1466, line: 242, baseType: !1587, size: 64, offset: 384)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{!219, !1549, !188, !235, !269}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1543, file: !1466, line: 252, baseType: !235, size: 64, offset: 448)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1543, file: !1466, line: 259, baseType: !110, size: 8, offset: 512)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1543, file: !1466, line: 260, baseType: !1587, size: 64, offset: 576)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1543, file: !1466, line: 263, baseType: !1594, size: 64, offset: 640)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!1597, !1549, !1599}
!1597 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1598, line: 52, baseType: !7)
!1598 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1466, line: 27, flags: DIFlagFwdDecl)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1543, file: !1466, line: 266, baseType: !1602, size: 64, offset: 704)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!83, !1549, !277}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1538, file: !1466, line: 109, baseType: !1606, size: 64, offset: 64)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1466, line: 31, flags: DIFlagFwdDecl)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1538, file: !1466, line: 110, baseType: !269, size: 64, offset: 128)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1538, file: !1466, line: 111, baseType: !1464, size: 64, offset: 192)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1465, file: !1466, line: 148, baseType: !77, size: 64, offset: 768)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1465, file: !1466, line: 154, baseType: !307, size: 64, offset: 832)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1465, file: !1466, line: 156, baseType: !230, size: 16, offset: 896)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1465, file: !1466, line: 157, baseType: !229, size: 16, offset: 912)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1465, file: !1466, line: 158, baseType: !1615, size: 64, offset: 960)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1466, line: 32, flags: DIFlagFwdDecl)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !126, file: !127, line: 71, baseType: !1618, size: 32, offset: 448)
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1619, line: 19, size: 32, elements: !1620)
!1619 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1620 = !{!1621}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1618, file: !1619, line: 20, baseType: !467, size: 32)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !126, file: !127, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !126, file: !127, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !126, file: !127, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !126, file: !127, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !126, file: !127, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !123, file: !30, line: 463, baseType: !1628, size: 64, offset: 512)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !123, file: !30, line: 465, baseType: !1630, size: 64, offset: 576)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !123, file: !30, line: 467, baseType: !130, size: 64, offset: 640)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !123, file: !30, line: 468, baseType: !1634, size: 64, offset: 704)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1636)
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1637)
!1637 = !{!1638, !1639, !1640, !1644, !1649, !1653}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1636, file: !30, line: 88, baseType: !130, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1636, file: !30, line: 89, baseType: !242, size: 64, offset: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1636, file: !30, line: 90, baseType: !1641, size: 64, offset: 128)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!83, !1628, !183}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1636, file: !30, line: 91, baseType: !1645, size: 64, offset: 192)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!188, !1628, !1648, !1449, !1456}
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1636, file: !30, line: 93, baseType: !1650, size: 64, offset: 256)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{null, !1628}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1636, file: !30, line: 95, baseType: !1654, size: 64, offset: 320)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1656)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1657)
!1657 = !{!1658, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1656, file: !37, line: 279, baseType: !1659, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{!83, !1628}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1656, file: !37, line: 280, baseType: !1650, size: 64, offset: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1656, file: !37, line: 281, baseType: !1659, size: 64, offset: 128)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1656, file: !37, line: 282, baseType: !1659, size: 64, offset: 192)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1656, file: !37, line: 283, baseType: !1659, size: 64, offset: 256)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1656, file: !37, line: 284, baseType: !1659, size: 64, offset: 320)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1656, file: !37, line: 285, baseType: !1659, size: 64, offset: 384)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1656, file: !37, line: 286, baseType: !1659, size: 64, offset: 448)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1656, file: !37, line: 287, baseType: !1659, size: 64, offset: 512)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1656, file: !37, line: 288, baseType: !1659, size: 64, offset: 576)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1656, file: !37, line: 289, baseType: !1659, size: 64, offset: 640)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1656, file: !37, line: 290, baseType: !1659, size: 64, offset: 704)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1656, file: !37, line: 291, baseType: !1659, size: 64, offset: 768)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1656, file: !37, line: 292, baseType: !1659, size: 64, offset: 832)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1656, file: !37, line: 293, baseType: !1659, size: 64, offset: 896)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1656, file: !37, line: 294, baseType: !1659, size: 64, offset: 960)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1656, file: !37, line: 295, baseType: !1659, size: 64, offset: 1024)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1656, file: !37, line: 296, baseType: !1659, size: 64, offset: 1088)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1656, file: !37, line: 297, baseType: !1659, size: 64, offset: 1152)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1656, file: !37, line: 298, baseType: !1659, size: 64, offset: 1216)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1656, file: !37, line: 299, baseType: !1659, size: 64, offset: 1280)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1656, file: !37, line: 300, baseType: !1659, size: 64, offset: 1344)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1656, file: !37, line: 301, baseType: !1659, size: 64, offset: 1408)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !123, file: !30, line: 470, baseType: !1685, size: 64, offset: 768)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1687, line: 82, size: 1408, elements: !1688)
!1687 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1688 = !{!1689, !1690, !1691, !1692, !1693, !1694, !1695, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1774, !1777, !1780}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1686, file: !1687, line: 83, baseType: !130, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1686, file: !1687, line: 84, baseType: !130, size: 64, offset: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1686, file: !1687, line: 85, baseType: !1628, size: 64, offset: 128)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1686, file: !1687, line: 86, baseType: !242, size: 64, offset: 192)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1686, file: !1687, line: 87, baseType: !242, size: 64, offset: 256)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1686, file: !1687, line: 88, baseType: !242, size: 64, offset: 320)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1686, file: !1687, line: 90, baseType: !1696, size: 64, offset: 384)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{!83, !1628, !1699}
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1701)
!1701 = !{!1702, !1703, !1704, !1708, !1709, !1710, !1711, !1725, !1738, !1739, !1740, !1741, !1742, !1750, !1751, !1752, !1753, !1754, !1755}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1700, file: !24, line: 96, baseType: !130, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1700, file: !24, line: 97, baseType: !1685, size: 64, offset: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1700, file: !24, line: 99, baseType: !1705, size: 64, offset: 128)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1707, line: 76, flags: DIFlagFwdDecl)
!1707 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1700, file: !24, line: 100, baseType: !130, size: 64, offset: 192)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1700, file: !24, line: 102, baseType: !110, size: 8, offset: 256)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1700, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1700, file: !24, line: 105, baseType: !1712, size: 64, offset: 320)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1714)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1715, line: 262, size: 1600, elements: !1716)
!1715 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1716 = !{!1717, !1719, !1720, !1724}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1714, file: !1715, line: 263, baseType: !1718, size: 256)
!1718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 256, elements: !1261)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1714, file: !1715, line: 264, baseType: !1718, size: 256, offset: 256)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1714, file: !1715, line: 265, baseType: !1721, size: 1024, offset: 512)
!1721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 1024, elements: !1722)
!1722 = !{!1723}
!1723 = !DISubrange(count: 128)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1714, file: !1715, line: 266, baseType: !119, size: 64, offset: 1536)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1700, file: !24, line: 106, baseType: !1726, size: 64, offset: 384)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1728)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1715, line: 210, size: 256, elements: !1729)
!1729 = !{!1730, !1734, !1736, !1737}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1728, file: !1715, line: 211, baseType: !1731, size: 72)
!1731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !599, size: 72, elements: !1732)
!1732 = !{!1733}
!1733 = !DISubrange(count: 9)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1728, file: !1715, line: 212, baseType: !1735, size: 64, offset: 128)
!1735 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1715, line: 14, baseType: !238)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1728, file: !1715, line: 213, baseType: !462, size: 32, offset: 192)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1728, file: !1715, line: 214, baseType: !462, size: 32, offset: 224)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1700, file: !24, line: 108, baseType: !1659, size: 64, offset: 448)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1700, file: !24, line: 109, baseType: !1650, size: 64, offset: 512)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1700, file: !24, line: 110, baseType: !1659, size: 64, offset: 576)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1700, file: !24, line: 111, baseType: !1650, size: 64, offset: 640)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1700, file: !24, line: 112, baseType: !1743, size: 64, offset: 704)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{!83, !1628, !1746}
!1746 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1747)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1748)
!1748 = !{!1749}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1747, file: !37, line: 51, baseType: !83, size: 32)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1700, file: !24, line: 113, baseType: !1659, size: 64, offset: 768)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1700, file: !24, line: 114, baseType: !242, size: 64, offset: 832)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1700, file: !24, line: 115, baseType: !242, size: 64, offset: 896)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1700, file: !24, line: 117, baseType: !1654, size: 64, offset: 960)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1700, file: !24, line: 118, baseType: !1650, size: 64, offset: 1024)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1700, file: !24, line: 120, baseType: !1756, size: 64, offset: 1088)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1686, file: !1687, line: 91, baseType: !1641, size: 64, offset: 448)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1686, file: !1687, line: 92, baseType: !1659, size: 64, offset: 512)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1686, file: !1687, line: 93, baseType: !1650, size: 64, offset: 576)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1686, file: !1687, line: 94, baseType: !1659, size: 64, offset: 640)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1686, file: !1687, line: 95, baseType: !1650, size: 64, offset: 704)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1686, file: !1687, line: 97, baseType: !1659, size: 64, offset: 768)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1686, file: !1687, line: 98, baseType: !1659, size: 64, offset: 832)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1686, file: !1687, line: 100, baseType: !1743, size: 64, offset: 896)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1686, file: !1687, line: 101, baseType: !1659, size: 64, offset: 960)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1686, file: !1687, line: 103, baseType: !1659, size: 64, offset: 1024)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1686, file: !1687, line: 105, baseType: !1659, size: 64, offset: 1088)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1686, file: !1687, line: 107, baseType: !1654, size: 64, offset: 1152)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1686, file: !1687, line: 109, baseType: !1771, size: 64, offset: 1216)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1773)
!1773 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1687, line: 109, flags: DIFlagFwdDecl)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1686, file: !1687, line: 111, baseType: !1775, size: 64, offset: 1280)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1687, line: 111, flags: DIFlagFwdDecl)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1686, file: !1687, line: 112, baseType: !1778, offset: 1344)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1779, line: 187, elements: !161)
!1779 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1686, file: !1687, line: 114, baseType: !110, size: 8, offset: 1344)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !123, file: !30, line: 471, baseType: !1699, size: 64, offset: 832)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !123, file: !30, line: 473, baseType: !77, size: 64, offset: 896)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !123, file: !30, line: 475, baseType: !77, size: 64, offset: 960)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !123, file: !30, line: 480, baseType: !406, size: 192, offset: 1024)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !123, file: !30, line: 484, baseType: !1786, size: 576, offset: 1216)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1787)
!1787 = !{!1788, !1789, !1790, !1791, !1792, !1793}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1786, file: !30, line: 362, baseType: !134, size: 128)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1786, file: !30, line: 363, baseType: !134, size: 128, offset: 128)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1786, file: !30, line: 364, baseType: !134, size: 128, offset: 256)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1786, file: !30, line: 365, baseType: !134, size: 128, offset: 384)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1786, file: !30, line: 366, baseType: !110, size: 8, offset: 512)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1786, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !123, file: !30, line: 485, baseType: !1795, size: 2304, offset: 1792)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1796)
!1796 = !{!1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1892, !1896}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1795, file: !37, line: 566, baseType: !1746, size: 32)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1795, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1795, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1795, file: !37, line: 569, baseType: !110, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1795, file: !37, line: 570, baseType: !110, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1795, file: !37, line: 571, baseType: !110, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1795, file: !37, line: 572, baseType: !110, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1795, file: !37, line: 573, baseType: !110, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1795, file: !37, line: 574, baseType: !110, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1795, file: !37, line: 575, baseType: !110, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1795, file: !37, line: 576, baseType: !110, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1795, file: !37, line: 577, baseType: !461, size: 32, offset: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1795, file: !37, line: 578, baseType: !147, offset: 96)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1795, file: !37, line: 580, baseType: !134, size: 128, offset: 128)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1795, file: !37, line: 581, baseType: !767, size: 192, offset: 256)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1795, file: !37, line: 582, baseType: !1813, size: 64, offset: 448)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1815, line: 43, size: 1472, elements: !1816)
!1815 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1816 = !{!1817, !1818, !1819, !1820, !1821, !1824, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1814, file: !1815, line: 44, baseType: !130, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1814, file: !1815, line: 45, baseType: !83, size: 32, offset: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1814, file: !1815, line: 46, baseType: !134, size: 128, offset: 128)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1814, file: !1815, line: 47, baseType: !147, offset: 256)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1814, file: !1815, line: 48, baseType: !1822, size: 64, offset: 256)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1814, file: !1815, line: 49, baseType: !1825, size: 320, offset: 320)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1826, line: 11, size: 320, elements: !1827)
!1826 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1827 = !{!1828, !1829, !1830, !1835}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1825, file: !1826, line: 16, baseType: !731, size: 128)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1825, file: !1826, line: 17, baseType: !238, size: 64, offset: 128)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1825, file: !1826, line: 18, baseType: !1831, size: 64, offset: 192)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{null, !1834}
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1825, file: !1826, line: 19, baseType: !461, size: 32, offset: 256)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1814, file: !1815, line: 50, baseType: !238, size: 64, offset: 640)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1814, file: !1815, line: 51, baseType: !537, size: 64, offset: 704)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1814, file: !1815, line: 52, baseType: !537, size: 64, offset: 768)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1814, file: !1815, line: 53, baseType: !537, size: 64, offset: 832)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1814, file: !1815, line: 54, baseType: !537, size: 64, offset: 896)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1814, file: !1815, line: 55, baseType: !537, size: 64, offset: 960)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1814, file: !1815, line: 56, baseType: !238, size: 64, offset: 1024)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1814, file: !1815, line: 57, baseType: !238, size: 64, offset: 1088)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1814, file: !1815, line: 58, baseType: !238, size: 64, offset: 1152)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1814, file: !1815, line: 59, baseType: !238, size: 64, offset: 1216)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1814, file: !1815, line: 60, baseType: !238, size: 64, offset: 1280)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1814, file: !1815, line: 61, baseType: !1628, size: 64, offset: 1344)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1814, file: !1815, line: 62, baseType: !110, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1814, file: !1815, line: 63, baseType: !110, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1795, file: !37, line: 583, baseType: !110, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1795, file: !37, line: 584, baseType: !110, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1795, file: !37, line: 585, baseType: !110, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1795, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1795, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1795, file: !37, line: 592, baseType: !529, size: 512, offset: 576)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1795, file: !37, line: 593, baseType: !307, size: 64, offset: 1088)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1795, file: !37, line: 594, baseType: !1365, size: 256, offset: 1152)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1795, file: !37, line: 595, baseType: !738, size: 128, offset: 1408)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1795, file: !37, line: 596, baseType: !1822, size: 64, offset: 1536)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1795, file: !37, line: 597, baseType: !329, size: 32, offset: 1600)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1795, file: !37, line: 598, baseType: !329, size: 32, offset: 1632)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1795, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1795, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1795, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1795, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1795, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1795, file: !37, line: 604, baseType: !110, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1795, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1795, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1795, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1795, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1795, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1795, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1795, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1795, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1795, file: !37, line: 613, baseType: !83, size: 32, offset: 1792)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1795, file: !37, line: 614, baseType: !83, size: 32, offset: 1824)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1795, file: !37, line: 615, baseType: !307, size: 64, offset: 1856)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1795, file: !37, line: 616, baseType: !307, size: 64, offset: 1920)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1795, file: !37, line: 617, baseType: !307, size: 64, offset: 1984)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1795, file: !37, line: 618, baseType: !307, size: 64, offset: 2048)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1795, file: !37, line: 620, baseType: !1883, size: 64, offset: 2112)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1885)
!1885 = !{!1886, !1887, !1888, !1889}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1884, file: !37, line: 537, baseType: !147)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1884, file: !37, line: 538, baseType: !7, size: 32)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1884, file: !37, line: 540, baseType: !134, size: 128, offset: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1884, file: !37, line: 543, baseType: !1890, size: 64, offset: 192)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1795, file: !37, line: 621, baseType: !1893, size: 64, offset: 2176)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{null, !1628, !691}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1795, file: !37, line: 622, baseType: !1897, size: 64, offset: 2240)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !123, file: !30, line: 486, baseType: !1900, size: 64, offset: 4096)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1902)
!1902 = !{!1903, !1904, !1905, !1909, !1910, !1911}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1901, file: !37, line: 643, baseType: !1656, size: 1472)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1901, file: !37, line: 644, baseType: !1659, size: 64, offset: 1472)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1901, file: !37, line: 645, baseType: !1906, size: 64, offset: 1536)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{null, !1628, !110}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1901, file: !37, line: 646, baseType: !1659, size: 64, offset: 1600)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1901, file: !37, line: 647, baseType: !1650, size: 64, offset: 1664)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1901, file: !37, line: 648, baseType: !1650, size: 64, offset: 1728)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !123, file: !30, line: 493, baseType: !1913, size: 64, offset: 4160)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !51, line: 162, size: 1088, elements: !1915)
!1915 = !{!1916, !1917, !1918, !2003, !2004, !2005, !2006, !2007, !2008, !2011, !2012, !2013, !2014, !2015, !2016, !2017}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1914, file: !51, line: 163, baseType: !134, size: 128)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1914, file: !51, line: 164, baseType: !130, size: 64, offset: 128)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1914, file: !51, line: 165, baseType: !1919, size: 64, offset: 192)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1921)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !51, line: 105, size: 640, elements: !1922)
!1922 = !{!1923, !1952, !1963, !1968, !1972, !1980, !1984, !1988, !1995, !1999}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1921, file: !51, line: 106, baseType: !1924, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{!83, !1913, !1927, !50}
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1929, line: 51, size: 1344, elements: !1930)
!1929 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!1930 = !{!1931, !1932, !1934, !1935, !1936, !1945, !1946, !1947, !1948, !1949, !1950, !1951}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1928, file: !1929, line: 52, baseType: !130, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1928, file: !1929, line: 53, baseType: !1933, size: 32, offset: 64)
!1933 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1929, line: 28, baseType: !461)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1928, file: !1929, line: 54, baseType: !130, size: 64, offset: 128)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1928, file: !1929, line: 55, baseType: !88, size: 192, offset: 192)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1928, file: !1929, line: 57, baseType: !1937, size: 64, offset: 384)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1929, line: 31, size: 704, elements: !1939)
!1939 = !{!1940, !1941, !1942, !1943, !1944}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1938, file: !1929, line: 32, baseType: !188, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1938, file: !1929, line: 33, baseType: !83, size: 32, offset: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1938, file: !1929, line: 34, baseType: !77, size: 64, offset: 128)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1938, file: !1929, line: 35, baseType: !1937, size: 64, offset: 192)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1938, file: !1929, line: 43, baseType: !257, size: 448, offset: 256)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1928, file: !1929, line: 58, baseType: !1937, size: 64, offset: 448)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1928, file: !1929, line: 59, baseType: !1927, size: 64, offset: 512)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1928, file: !1929, line: 60, baseType: !1927, size: 64, offset: 576)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1928, file: !1929, line: 61, baseType: !1927, size: 64, offset: 640)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1928, file: !1929, line: 63, baseType: !126, size: 512, offset: 704)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1928, file: !1929, line: 65, baseType: !238, size: 64, offset: 1216)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1928, file: !1929, line: 66, baseType: !77, size: 64, offset: 1280)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !1921, file: !51, line: 108, baseType: !1953, size: 64, offset: 64)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!83, !1913, !1956, !50}
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !51, line: 63, size: 640, elements: !1958)
!1958 = !{!1959, !1960, !1961}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1957, file: !51, line: 64, baseType: !92, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !1957, file: !51, line: 65, baseType: !83, size: 32, offset: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !1957, file: !51, line: 66, baseType: !1962, size: 512, offset: 96)
!1962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !461, size: 512, elements: !823)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1921, file: !51, line: 110, baseType: !1964, size: 64, offset: 128)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{!83, !1913, !7, !1967}
!1967 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !111, line: 164, baseType: !238)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !1921, file: !51, line: 111, baseType: !1969, size: 64, offset: 192)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{null, !1913, !7}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !1921, file: !51, line: 112, baseType: !1973, size: 64, offset: 256)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!83, !1913, !1927, !1976, !7, !1978, !1979}
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !461)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1921, file: !51, line: 117, baseType: !1981, size: 64, offset: 320)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{!83, !1913, !7, !7, !77}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1921, file: !51, line: 119, baseType: !1985, size: 64, offset: 384)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DISubroutineType(types: !1987)
!1987 = !{null, !1913, !7, !7}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1921, file: !51, line: 121, baseType: !1989, size: 64, offset: 448)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{!83, !1913, !1992, !110}
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !1994, line: 11, flags: DIFlagFwdDecl)
!1994 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !1921, file: !51, line: 122, baseType: !1996, size: 64, offset: 512)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{null, !1913, !1992}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !1921, file: !51, line: 123, baseType: !2000, size: 64, offset: 576)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!83, !1913, !1956, !1978, !1979}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !1914, file: !51, line: 166, baseType: !77, size: 64, offset: 256)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1914, file: !51, line: 167, baseType: !7, size: 32, offset: 320)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !1914, file: !51, line: 168, baseType: !7, size: 32, offset: 352)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1914, file: !51, line: 171, baseType: !92, size: 64, offset: 384)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !1914, file: !51, line: 172, baseType: !50, size: 32, offset: 448)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !1914, file: !51, line: 173, baseType: !2009, size: 64, offset: 512)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !51, line: 134, flags: DIFlagFwdDecl)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1914, file: !51, line: 175, baseType: !1913, size: 64, offset: 576)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !1914, file: !51, line: 182, baseType: !1967, size: 64, offset: 640)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !1914, file: !51, line: 183, baseType: !7, size: 32, offset: 704)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !1914, file: !51, line: 184, baseType: !7, size: 32, offset: 736)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !1914, file: !51, line: 185, baseType: !1494, size: 128, offset: 768)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !1914, file: !51, line: 186, baseType: !406, size: 192, offset: 896)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !1914, file: !51, line: 187, baseType: !2018, offset: 1088)
!2018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !1379)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !123, file: !30, line: 499, baseType: !134, size: 128, offset: 4224)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !123, file: !30, line: 502, baseType: !2021, size: 64, offset: 4352)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2023)
!2023 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !123, file: !30, line: 504, baseType: !2025, size: 64, offset: 4416)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !123, file: !30, line: 505, baseType: !307, size: 64, offset: 4480)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !123, file: !30, line: 510, baseType: !307, size: 64, offset: 4544)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !123, file: !30, line: 511, baseType: !2029, size: 64, offset: 4608)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2031)
!2031 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !123, file: !30, line: 513, baseType: !2033, size: 64, offset: 4672)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !2035)
!2035 = !{!2036, !2037}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2034, file: !30, line: 293, baseType: !7, size: 32)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2034, file: !30, line: 294, baseType: !238, size: 64, offset: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !123, file: !30, line: 515, baseType: !134, size: 128, offset: 4736)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !123, file: !30, line: 526, baseType: !2040, offset: 4864)
!2040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2041, line: 5, elements: !161)
!2041 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !123, file: !30, line: 528, baseType: !1927, size: 64, offset: 4864)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !123, file: !30, line: 529, baseType: !92, size: 64, offset: 4928)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !123, file: !30, line: 534, baseType: !2045, size: 32, offset: 4992)
!2045 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !111, line: 16, baseType: !2046)
!2046 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !111, line: 13, baseType: !461)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !123, file: !30, line: 535, baseType: !461, size: 32, offset: 5024)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !123, file: !30, line: 537, baseType: !147, offset: 5056)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !123, file: !30, line: 538, baseType: !134, size: 128, offset: 5056)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !123, file: !30, line: 540, baseType: !2051, size: 64, offset: 5184)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2053, line: 54, size: 960, elements: !2054)
!2053 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2054 = !{!2055, !2056, !2057, !2058, !2059, !2060, !2061, !2065, !2069, !2070, !2071, !2072, !2076, !2080, !2081}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2052, file: !2053, line: 55, baseType: !130, size: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2052, file: !2053, line: 56, baseType: !1705, size: 64, offset: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2052, file: !2053, line: 58, baseType: !242, size: 64, offset: 128)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2052, file: !2053, line: 59, baseType: !242, size: 64, offset: 192)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2052, file: !2053, line: 60, baseType: !140, size: 64, offset: 256)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2052, file: !2053, line: 62, baseType: !1641, size: 64, offset: 320)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2052, file: !2053, line: 63, baseType: !2062, size: 64, offset: 384)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!188, !1628, !1648}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2052, file: !2053, line: 65, baseType: !2066, size: 64, offset: 448)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{null, !2051}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2052, file: !2053, line: 66, baseType: !1650, size: 64, offset: 512)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2052, file: !2053, line: 68, baseType: !1659, size: 64, offset: 576)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2052, file: !2053, line: 70, baseType: !1414, size: 64, offset: 640)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2052, file: !2053, line: 71, baseType: !2073, size: 64, offset: 704)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{!119, !1628}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2052, file: !2053, line: 73, baseType: !2077, size: 64, offset: 768)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{null, !1628, !1449, !1456}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2052, file: !2053, line: 75, baseType: !1654, size: 64, offset: 832)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2052, file: !2053, line: 77, baseType: !1775, size: 64, offset: 896)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !123, file: !30, line: 541, baseType: !242, size: 64, offset: 5248)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !123, file: !30, line: 543, baseType: !1650, size: 64, offset: 5312)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !123, file: !30, line: 544, baseType: !2085, size: 64, offset: 5376)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !123, file: !30, line: 545, baseType: !2088, size: 64, offset: 5440)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !123, file: !30, line: 547, baseType: !110, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !123, file: !30, line: 548, baseType: !110, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !123, file: !30, line: 549, baseType: !110, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !123, file: !30, line: 550, baseType: !110, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !96, file: !89, line: 116, baseType: !2095, size: 64, offset: 256)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DISubroutineType(types: !2097)
!2097 = !{!110, !113, !130}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !96, file: !89, line: 118, baseType: !2099, size: 64, offset: 320)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{!83, !113, !130, !7, !77, !235}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !96, file: !89, line: 123, baseType: !2103, size: 64, offset: 384)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{!83, !113, !130, !2106, !235}
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !96, file: !89, line: 126, baseType: !2108, size: 64, offset: 448)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!130, !113}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !96, file: !89, line: 127, baseType: !2108, size: 64, offset: 512)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !96, file: !89, line: 128, baseType: !2113, size: 64, offset: 576)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{!92, !113}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !96, file: !89, line: 130, baseType: !2117, size: 64, offset: 640)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!92, !113, !92}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !96, file: !89, line: 133, baseType: !2121, size: 64, offset: 704)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!92, !113, !130}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !96, file: !89, line: 135, baseType: !2125, size: 64, offset: 768)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!83, !113, !130, !130, !7, !7, !2128}
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !89, line: 43, size: 640, elements: !2130)
!2130 = !{!2131, !2132, !2133}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2129, file: !89, line: 44, baseType: !92, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2129, file: !89, line: 45, baseType: !7, size: 32, offset: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2129, file: !89, line: 46, baseType: !2134, size: 512, offset: 128)
!2134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 512, elements: !567)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !96, file: !89, line: 140, baseType: !2117, size: 64, offset: 832)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !96, file: !89, line: 143, baseType: !2113, size: 64, offset: 896)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !96, file: !89, line: 145, baseType: !99, size: 64, offset: 960)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !96, file: !89, line: 146, baseType: !2139, size: 64, offset: 1024)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{!83, !113, !2142}
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !89, line: 29, size: 128, elements: !2144)
!2144 = !{!2145, !2146, !2147}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2143, file: !89, line: 30, baseType: !7, size: 32)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2143, file: !89, line: 31, baseType: !7, size: 32, offset: 32)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2143, file: !89, line: 32, baseType: !113, size: 64, offset: 64)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !96, file: !89, line: 148, baseType: !2149, size: 64, offset: 1088)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{!83, !113, !1628}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !88, file: !89, line: 20, baseType: !1628, size: 64, offset: 128)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !79, file: !80, line: 355, baseType: !78, size: 64, offset: 320)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !79, file: !80, line: 356, baseType: !134, size: 128, offset: 384)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !79, file: !80, line: 357, baseType: !134, size: 128, offset: 512)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !79, file: !80, line: 358, baseType: !134, size: 128, offset: 640)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !79, file: !80, line: 359, baseType: !134, size: 128, offset: 768)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !79, file: !80, line: 360, baseType: !2159, size: 32, offset: 896)
!2159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !80, line: 179, size: 32, elements: !2160)
!2160 = !{!2161, !2162, !2163, !2164, !2165, !2166}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !2159, file: !80, line: 180, baseType: !461, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2159, file: !80, line: 181, baseType: !461, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !2159, file: !80, line: 182, baseType: !461, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !2159, file: !80, line: 183, baseType: !461, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !2159, file: !80, line: 184, baseType: !461, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2159, file: !80, line: 185, baseType: !461, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !79, file: !80, line: 361, baseType: !2168, size: 32, offset: 928)
!2168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !80, line: 190, size: 32, elements: !2169)
!2169 = !{!2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !2168, file: !80, line: 191, baseType: !461, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2168, file: !80, line: 192, baseType: !461, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !2168, file: !80, line: 193, baseType: !461, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !2168, file: !80, line: 194, baseType: !461, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !2168, file: !80, line: 195, baseType: !461, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !2168, file: !80, line: 196, baseType: !461, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !2168, file: !80, line: 197, baseType: !461, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !2168, file: !80, line: 198, baseType: !461, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !2168, file: !80, line: 199, baseType: !461, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !2168, file: !80, line: 200, baseType: !461, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !2168, file: !80, line: 201, baseType: !461, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !2168, file: !80, line: 202, baseType: !461, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !2168, file: !80, line: 203, baseType: !461, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2168, file: !80, line: 204, baseType: !461, size: 19, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !79, file: !80, line: 362, baseType: !2185, size: 960, offset: 960)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !80, line: 234, size: 960, elements: !2186)
!2186 = !{!2187, !2189, !2196, !2198, !2199, !2200, !2205, !2208}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !2185, file: !80, line: 235, baseType: !2188, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !80, line: 217, baseType: !968)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2185, file: !80, line: 236, baseType: !2190, size: 32, offset: 64)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !80, line: 227, size: 32, elements: !2191)
!2191 = !{!2192, !2193, !2194, !2195}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !2190, file: !80, line: 228, baseType: !461, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !2190, file: !80, line: 229, baseType: !461, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !2190, file: !80, line: 230, baseType: !461, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2190, file: !80, line: 231, baseType: !461, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !2185, file: !80, line: 237, baseType: !2197, size: 64, offset: 128)
!2197 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !80, line: 218, baseType: !307)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !2185, file: !80, line: 238, baseType: !188, size: 64, offset: 192)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2185, file: !80, line: 239, baseType: !134, size: 128, offset: 256)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !2185, file: !80, line: 240, baseType: !2201, size: 320, offset: 384)
!2201 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !80, line: 219, baseType: !2202)
!2202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 320, elements: !2203)
!2203 = !{!2204}
!2204 = !DISubrange(count: 40)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !2185, file: !80, line: 241, baseType: !2206, size: 160, offset: 704)
!2206 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !80, line: 220, baseType: !2207)
!2207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 160, elements: !1232)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !2185, file: !80, line: 242, baseType: !2209, size: 64, offset: 896)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !86, line: 899, size: 192, elements: !2211)
!2211 = !{!2212, !2214, !2219, !2225, !2232, !2238, !2244, !2252}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2210, file: !86, line: 900, baseType: !2213, size: 32)
!2213 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !86, line: 635, baseType: !461)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !2210, file: !86, line: 904, baseType: !2215, size: 128)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2210, file: !86, line: 901, size: 128, elements: !2216)
!2216 = !{!2217, !2218}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2215, file: !86, line: 902, baseType: !2213, size: 32)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2215, file: !86, line: 903, baseType: !307, size: 64, offset: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2210, file: !86, line: 910, baseType: !2220, size: 128)
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2210, file: !86, line: 906, size: 128, elements: !2221)
!2221 = !{!2222, !2223, !2224}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2220, file: !86, line: 907, baseType: !2213, size: 32)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2220, file: !86, line: 908, baseType: !461, size: 32, offset: 32)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2220, file: !86, line: 909, baseType: !188, size: 64, offset: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2210, file: !86, line: 916, baseType: !2226, size: 128)
!2226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2210, file: !86, line: 912, size: 128, elements: !2227)
!2227 = !{!2228, !2229, !2230}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2226, file: !86, line: 913, baseType: !2213, size: 32)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2226, file: !86, line: 914, baseType: !461, size: 32, offset: 32)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2226, file: !86, line: 915, baseType: !2231, size: 64, offset: 64)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !2210, file: !86, line: 922, baseType: !2233, size: 128)
!2233 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2210, file: !86, line: 918, size: 128, elements: !2234)
!2234 = !{!2235, !2236, !2237}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2233, file: !86, line: 919, baseType: !2213, size: 32)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2233, file: !86, line: 920, baseType: !461, size: 32, offset: 32)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !2233, file: !86, line: 921, baseType: !2209, size: 64, offset: 64)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !2210, file: !86, line: 928, baseType: !2239, size: 128)
!2239 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2210, file: !86, line: 924, size: 128, elements: !2240)
!2240 = !{!2241, !2242, !2243}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2239, file: !86, line: 925, baseType: !2213, size: 32)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !2239, file: !86, line: 926, baseType: !2213, size: 32, offset: 32)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !2239, file: !86, line: 927, baseType: !85, size: 64, offset: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !2210, file: !86, line: 935, baseType: !2245, size: 192)
!2245 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2210, file: !86, line: 930, size: 192, elements: !2246)
!2246 = !{!2247, !2248, !2249, !2251}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2245, file: !86, line: 931, baseType: !2213, size: 32)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !2245, file: !86, line: 932, baseType: !461, size: 32, offset: 32)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !2245, file: !86, line: 933, baseType: !2250, size: 64, offset: 64)
!2250 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !86, line: 128, baseType: !307)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !2245, file: !86, line: 934, baseType: !461, size: 32, offset: 128)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !2210, file: !86, line: 941, baseType: !2253, size: 96)
!2253 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2210, file: !86, line: 937, size: 96, elements: !2254)
!2254 = !{!2255, !2256, !2257}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2253, file: !86, line: 938, baseType: !2213, size: 32)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !2253, file: !86, line: 939, baseType: !461, size: 32, offset: 32)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !2253, file: !86, line: 940, baseType: !461, size: 32, offset: 64)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !79, file: !80, line: 363, baseType: !2259, size: 1344, offset: 1920)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !80, line: 275, size: 1344, elements: !2260)
!2260 = !{!2261, !2262, !2272}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2259, file: !80, line: 276, baseType: !83, size: 32)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2259, file: !80, line: 277, baseType: !2263, size: 32, offset: 32)
!2263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !80, line: 254, size: 32, elements: !2264)
!2264 = !{!2265, !2266, !2267, !2268, !2269, !2270, !2271}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !2263, file: !80, line: 255, baseType: !461, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !2263, file: !80, line: 256, baseType: !461, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !2263, file: !80, line: 257, baseType: !461, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !2263, file: !80, line: 258, baseType: !461, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !2263, file: !80, line: 259, baseType: !461, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !2263, file: !80, line: 260, baseType: !461, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2263, file: !80, line: 261, baseType: !461, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2259, file: !80, line: 278, baseType: !2273, size: 1280, offset: 64)
!2273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2274, size: 1280, elements: !2285)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !80, line: 264, size: 256, elements: !2275)
!2275 = !{!2276, !2282, !2283, !2284}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2274, file: !80, line: 269, baseType: !2277, size: 8)
!2277 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2274, file: !80, line: 265, size: 8, elements: !2278)
!2278 = !{!2279, !2280, !2281}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2277, file: !80, line: 266, baseType: !598, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !2277, file: !80, line: 267, baseType: !598, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2277, file: !80, line: 268, baseType: !598, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2274, file: !80, line: 270, baseType: !83, size: 32, offset: 32)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !2274, file: !80, line: 271, baseType: !83, size: 32, offset: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !2274, file: !80, line: 272, baseType: !134, size: 128, offset: 128)
!2285 = !{!2286}
!2286 = !DISubrange(count: 5)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !79, file: !80, line: 364, baseType: !2288, size: 640, offset: 3264)
!2288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !80, line: 315, size: 640, elements: !2289)
!2289 = !{!2290, !2291, !2292, !2293, !2294, !2299, !2308, !2309, !2310}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !2288, file: !80, line: 316, baseType: !85, size: 64)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !2288, file: !80, line: 317, baseType: !307, size: 64, offset: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !2288, file: !80, line: 318, baseType: !307, size: 64, offset: 128)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !2288, file: !80, line: 319, baseType: !134, size: 128, offset: 192)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2288, file: !80, line: 320, baseType: !2295, size: 8, offset: 320)
!2295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !80, line: 305, size: 8, elements: !2296)
!2296 = !{!2297, !2298}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2295, file: !80, line: 306, baseType: !598, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !2295, file: !80, line: 307, baseType: !598, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2288, file: !80, line: 321, baseType: !2300, size: 128, offset: 384)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !80, line: 310, size: 128, elements: !2301)
!2301 = !{!2302, !2307}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2300, file: !80, line: 311, baseType: !2303, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DISubroutineType(types: !2305)
!2305 = !{null, !2306}
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2300, file: !80, line: 312, baseType: !1628, size: 64, offset: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !2288, file: !80, line: 322, baseType: !1813, size: 64, offset: 512)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !2288, file: !80, line: 323, baseType: !83, size: 32, offset: 576)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !2288, file: !80, line: 324, baseType: !83, size: 32, offset: 608)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !79, file: !80, line: 365, baseType: !2312, size: 192, offset: 3904)
!2312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !80, line: 297, size: 192, elements: !2313)
!2313 = !{!2314, !2315, !2319, !2320}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2312, file: !80, line: 298, baseType: !83, size: 32)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2312, file: !80, line: 299, baseType: !2316, size: 8, offset: 32)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !80, line: 283, size: 8, elements: !2317)
!2317 = !{!2318}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2316, file: !80, line: 284, baseType: !598, size: 8, flags: DIFlagBitField, extraData: i64 0)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !2312, file: !80, line: 300, baseType: !83, size: 32, offset: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2312, file: !80, line: 301, baseType: !2321, size: 64, offset: 128)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !80, line: 287, size: 64, elements: !2323)
!2323 = !{!2324, !2329, !2330, !2331}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2322, file: !80, line: 291, baseType: !2325, size: 8)
!2325 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2322, file: !80, line: 288, size: 8, elements: !2326)
!2326 = !{!2327, !2328}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2325, file: !80, line: 289, baseType: !598, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2325, file: !80, line: 290, baseType: !598, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2322, file: !80, line: 292, baseType: !598, size: 8, offset: 8)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !2322, file: !80, line: 293, baseType: !598, size: 8, offset: 16)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !2322, file: !80, line: 294, baseType: !83, size: 32, offset: 32)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !79, file: !80, line: 366, baseType: !2333, size: 64, offset: 4096)
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !80, line: 209, size: 64, elements: !2334)
!2334 = !{!2335}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2333, file: !80, line: 210, baseType: !2336, size: 64)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !80, line: 84, flags: DIFlagFwdDecl)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !79, file: !80, line: 367, baseType: !2339, size: 384, offset: 4160)
!2339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !80, line: 341, size: 384, elements: !2340)
!2340 = !{!2341, !2344, !2345, !2346}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2339, file: !80, line: 342, baseType: !2342, size: 64)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2210)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2339, file: !80, line: 343, baseType: !134, size: 128, offset: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !2339, file: !80, line: 344, baseType: !2342, size: 64, offset: 192)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !2339, file: !80, line: 345, baseType: !134, size: 128, offset: 256)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !79, file: !80, line: 368, baseType: !2348, size: 64, offset: 4544)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !80, line: 122, size: 1216, elements: !2350)
!2350 = !{!2351, !2352, !2353, !2358, !2362, !2366, !2367, !2368}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2349, file: !80, line: 123, baseType: !1726, size: 64)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !2349, file: !80, line: 124, baseType: !134, size: 128, offset: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2349, file: !80, line: 125, baseType: !2354, size: 64, offset: 192)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!110, !130, !2357}
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !2349, file: !80, line: 126, baseType: !2359, size: 64, offset: 256)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{!83, !78, !1726}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2349, file: !80, line: 127, baseType: !2363, size: 64, offset: 320)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{null, !78}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !2349, file: !80, line: 128, baseType: !1650, size: 64, offset: 384)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !2349, file: !80, line: 129, baseType: !1650, size: 64, offset: 448)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !2349, file: !80, line: 130, baseType: !2369, size: 704, offset: 512)
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !80, line: 108, size: 704, elements: !2370)
!2370 = !{!2371, !2372, !2376, !2377, !2378}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2369, file: !80, line: 109, baseType: !126, size: 512)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !2369, file: !80, line: 110, baseType: !2373, size: 64, offset: 512)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!83, !78}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !2369, file: !80, line: 111, baseType: !2363, size: 64, offset: 576)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2369, file: !80, line: 112, baseType: !110, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !2369, file: !80, line: 113, baseType: !110, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !79, file: !80, line: 369, baseType: !2380, size: 64, offset: 4608)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !80, line: 138, size: 256, elements: !2382)
!2382 = !{!2383, !2384, !2388, !2392}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !2381, file: !80, line: 139, baseType: !78, size: 64)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2381, file: !80, line: 140, baseType: !2385, size: 64, offset: 64)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!83, !78, !461}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2381, file: !80, line: 141, baseType: !2389, size: 64, offset: 128)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{null, !78, !461}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2381, file: !80, line: 142, baseType: !2363, size: 64, offset: 192)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !79, file: !80, line: 370, baseType: !2394, size: 64, offset: 4672)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_driver", file: !80, line: 162, size: 2816, elements: !2396)
!2396 = !{!2397, !2401, !2402, !2403, !2404, !2413, !2414}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2395, file: !80, line: 163, baseType: !2398, size: 640)
!2398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 640, elements: !2399)
!2399 = !{!2400}
!2400 = !DISubrange(count: 80)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2395, file: !80, line: 164, baseType: !2398, size: 640, offset: 640)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2395, file: !80, line: 165, baseType: !1726, size: 64, offset: 1280)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2395, file: !80, line: 166, baseType: !7, size: 32, offset: 1344)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2395, file: !80, line: 167, baseType: !2405, size: 192, offset: 1408)
!2405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_ops", file: !80, line: 154, size: 192, elements: !2406)
!2406 = !{!2407, !2409, !2411}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !2405, file: !80, line: 155, baseType: !2408, size: 64)
!2408 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_add", file: !80, line: 150, baseType: !2373)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2405, file: !80, line: 156, baseType: !2410, size: 64, offset: 64)
!2410 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_remove", file: !80, line: 151, baseType: !2373)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2405, file: !80, line: 157, baseType: !2412, size: 64, offset: 128)
!2412 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_notify", file: !80, line: 152, baseType: !2389)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !2395, file: !80, line: 168, baseType: !1700, size: 1152, offset: 1600)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2395, file: !80, line: 169, baseType: !1705, size: 64, offset: 2752)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !79, file: !80, line: 371, baseType: !2416, size: 64, offset: 4736)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2418)
!2418 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !80, line: 348, flags: DIFlagFwdDecl)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !79, file: !80, line: 372, baseType: !77, size: 64, offset: 4800)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !79, file: !80, line: 373, baseType: !123, size: 5568, offset: 4864)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !79, file: !80, line: 374, baseType: !7, size: 32, offset: 10432)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !79, file: !80, line: 375, baseType: !7, size: 32, offset: 10464)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !79, file: !80, line: 376, baseType: !134, size: 128, offset: 10496)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !79, file: !80, line: 377, baseType: !406, size: 192, offset: 10624)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !79, file: !80, line: 378, baseType: !2363, size: 64, offset: 10816)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_wakeup_handler", file: !3, line: 15, size: 256, elements: !2428)
!2428 = !{!2429, !2430, !2434}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !2427, file: !3, line: 16, baseType: !134, size: 128)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2427, file: !3, line: 17, baseType: !2431, size: 64, offset: 128)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!110, !77}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2427, file: !3, line: 18, baseType: !77, size: 64, offset: 192)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !137)
!2437 = !{!0, !2438}
!2438 = !DIGlobalVariableExpression(var: !2439, expr: !DIExpression())
!2439 = distinct !DIGlobalVariable(name: "acpi_wakeup_handler_head", scope: !2, file: !3, line: 21, type: !134, isLocal: true, isDefinition: true)
!2440 = !{i32 7, !"Dwarf Version", i32 4}
!2441 = !{i32 2, !"Debug Info Version", i32 3}
!2442 = !{i32 1, !"wchar_size", i32 2}
!2443 = !{i32 1, !"Code Model", i32 2}
!2444 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2445 = distinct !DISubprogram(name: "acpi_enable_wakeup_devices", scope: !3, file: !3, line: 38, type: !2446, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !161)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{null, !598}
!2448 = !DILocalVariable(name: "sleep_state", arg: 1, scope: !2445, file: !3, line: 38, type: !598)
!2449 = !DILocation(line: 38, column: 36, scope: !2445)
!2450 = !DILocalVariable(name: "dev", scope: !2445, file: !3, line: 40, type: !78)
!2451 = !DILocation(line: 40, column: 22, scope: !2445)
!2452 = !DILocalVariable(name: "tmp", scope: !2445, file: !3, line: 40, type: !78)
!2453 = !DILocation(line: 40, column: 28, scope: !2445)
!2454 = !DILocalVariable(name: "__mptr", scope: !2455, file: !3, line: 42, type: !77)
!2455 = distinct !DILexicalBlock(scope: !2456, file: !3, line: 42, column: 2)
!2456 = distinct !DILexicalBlock(scope: !2445, file: !3, line: 42, column: 2)
!2457 = !DILocation(line: 42, column: 2, scope: !2455)
!2458 = !DILocation(line: 42, column: 2, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2455, file: !3, line: 42, column: 2)
!2460 = !DILocation(line: 42, column: 2, scope: !2456)
!2461 = !DILocalVariable(name: "__mptr", scope: !2462, file: !3, line: 42, type: !77)
!2462 = distinct !DILexicalBlock(scope: !2456, file: !3, line: 42, column: 2)
!2463 = !DILocation(line: 42, column: 2, scope: !2462)
!2464 = !DILocation(line: 42, column: 2, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2462, file: !3, line: 42, column: 2)
!2466 = !DILocation(line: 42, column: 2, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2456, file: !3, line: 42, column: 2)
!2468 = !DILocation(line: 44, column: 8, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2470, file: !3, line: 44, column: 7)
!2470 = distinct !DILexicalBlock(scope: !2467, file: !3, line: 43, column: 19)
!2471 = !DILocation(line: 44, column: 13, scope: !2469)
!2472 = !DILocation(line: 44, column: 20, scope: !2469)
!2473 = !DILocation(line: 44, column: 26, scope: !2469)
!2474 = !DILocation(line: 45, column: 7, scope: !2469)
!2475 = !DILocation(line: 45, column: 10, scope: !2469)
!2476 = !DILocation(line: 45, column: 30, scope: !2469)
!2477 = !DILocation(line: 45, column: 35, scope: !2469)
!2478 = !DILocation(line: 45, column: 42, scope: !2469)
!2479 = !DILocation(line: 45, column: 24, scope: !2469)
!2480 = !DILocation(line: 45, column: 22, scope: !2469)
!2481 = !DILocation(line: 46, column: 7, scope: !2469)
!2482 = !DILocation(line: 46, column: 31, scope: !2469)
!2483 = !DILocation(line: 46, column: 36, scope: !2469)
!2484 = !DILocation(line: 46, column: 12, scope: !2469)
!2485 = !DILocation(line: 47, column: 5, scope: !2469)
!2486 = !DILocation(line: 47, column: 8, scope: !2469)
!2487 = !DILocation(line: 47, column: 13, scope: !2469)
!2488 = !DILocation(line: 47, column: 20, scope: !2469)
!2489 = !DILocation(line: 44, column: 7, scope: !2470)
!2490 = !DILocation(line: 48, column: 4, scope: !2469)
!2491 = !DILocation(line: 50, column: 26, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2470, file: !3, line: 50, column: 7)
!2493 = !DILocation(line: 50, column: 31, scope: !2492)
!2494 = !DILocation(line: 50, column: 7, scope: !2492)
!2495 = !DILocation(line: 50, column: 7, scope: !2470)
!2496 = !DILocation(line: 51, column: 36, scope: !2492)
!2497 = !DILocation(line: 51, column: 41, scope: !2492)
!2498 = !DILocation(line: 51, column: 4, scope: !2492)
!2499 = !DILocation(line: 54, column: 26, scope: !2470)
!2500 = !DILocation(line: 54, column: 31, scope: !2470)
!2501 = !DILocation(line: 54, column: 38, scope: !2470)
!2502 = !DILocation(line: 54, column: 50, scope: !2470)
!2503 = !DILocation(line: 54, column: 55, scope: !2470)
!2504 = !DILocation(line: 54, column: 62, scope: !2470)
!2505 = !DILocation(line: 54, column: 3, scope: !2470)
!2506 = !DILocation(line: 56, column: 2, scope: !2470)
!2507 = !DILocalVariable(name: "__mptr", scope: !2508, file: !3, line: 42, type: !77)
!2508 = distinct !DILexicalBlock(scope: !2467, file: !3, line: 42, column: 2)
!2509 = !DILocation(line: 42, column: 2, scope: !2508)
!2510 = !DILocation(line: 42, column: 2, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 42, column: 2)
!2512 = distinct !{!2512, !2460, !2513}
!2513 = !DILocation(line: 56, column: 2, scope: !2456)
!2514 = !DILocation(line: 57, column: 1, scope: !2445)
!2515 = distinct !DISubprogram(name: "device_may_wakeup", scope: !1815, file: !1815, line: 82, type: !2516, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !161)
!2516 = !DISubroutineType(types: !2517)
!2517 = !{!110, !1628}
!2518 = !DILocalVariable(name: "dev", arg: 1, scope: !2515, file: !1815, line: 82, type: !1628)
!2519 = !DILocation(line: 82, column: 53, scope: !2515)
!2520 = !DILocation(line: 84, column: 9, scope: !2515)
!2521 = !DILocation(line: 84, column: 14, scope: !2515)
!2522 = !DILocation(line: 84, column: 20, scope: !2515)
!2523 = !DILocation(line: 84, column: 31, scope: !2515)
!2524 = !DILocation(line: 84, column: 36, scope: !2515)
!2525 = !DILocation(line: 84, column: 41, scope: !2515)
!2526 = !DILocation(line: 84, column: 47, scope: !2515)
!2527 = !DILocation(line: 84, column: 35, scope: !2515)
!2528 = !DILocation(line: 84, column: 34, scope: !2515)
!2529 = !DILocation(line: 0, scope: !2515)
!2530 = !DILocation(line: 84, column: 2, scope: !2515)
!2531 = distinct !DISubprogram(name: "acpi_disable_wakeup_devices", scope: !3, file: !3, line: 63, type: !2446, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !161)
!2532 = !DILocalVariable(name: "sleep_state", arg: 1, scope: !2531, file: !3, line: 63, type: !598)
!2533 = !DILocation(line: 63, column: 37, scope: !2531)
!2534 = !DILocalVariable(name: "dev", scope: !2531, file: !3, line: 65, type: !78)
!2535 = !DILocation(line: 65, column: 22, scope: !2531)
!2536 = !DILocalVariable(name: "tmp", scope: !2531, file: !3, line: 65, type: !78)
!2537 = !DILocation(line: 65, column: 28, scope: !2531)
!2538 = !DILocalVariable(name: "__mptr", scope: !2539, file: !3, line: 67, type: !77)
!2539 = distinct !DILexicalBlock(scope: !2540, file: !3, line: 67, column: 2)
!2540 = distinct !DILexicalBlock(scope: !2531, file: !3, line: 67, column: 2)
!2541 = !DILocation(line: 67, column: 2, scope: !2539)
!2542 = !DILocation(line: 67, column: 2, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2539, file: !3, line: 67, column: 2)
!2544 = !DILocation(line: 67, column: 2, scope: !2540)
!2545 = !DILocalVariable(name: "__mptr", scope: !2546, file: !3, line: 67, type: !77)
!2546 = distinct !DILexicalBlock(scope: !2540, file: !3, line: 67, column: 2)
!2547 = !DILocation(line: 67, column: 2, scope: !2546)
!2548 = !DILocation(line: 67, column: 2, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2546, file: !3, line: 67, column: 2)
!2550 = !DILocation(line: 67, column: 2, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2540, file: !3, line: 67, column: 2)
!2552 = !DILocation(line: 69, column: 8, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2554, file: !3, line: 69, column: 7)
!2554 = distinct !DILexicalBlock(scope: !2551, file: !3, line: 68, column: 19)
!2555 = !DILocation(line: 69, column: 13, scope: !2553)
!2556 = !DILocation(line: 69, column: 20, scope: !2553)
!2557 = !DILocation(line: 69, column: 26, scope: !2553)
!2558 = !DILocation(line: 70, column: 7, scope: !2553)
!2559 = !DILocation(line: 70, column: 10, scope: !2553)
!2560 = !DILocation(line: 70, column: 30, scope: !2553)
!2561 = !DILocation(line: 70, column: 35, scope: !2553)
!2562 = !DILocation(line: 70, column: 42, scope: !2553)
!2563 = !DILocation(line: 70, column: 24, scope: !2553)
!2564 = !DILocation(line: 70, column: 22, scope: !2553)
!2565 = !DILocation(line: 71, column: 7, scope: !2553)
!2566 = !DILocation(line: 71, column: 31, scope: !2553)
!2567 = !DILocation(line: 71, column: 36, scope: !2553)
!2568 = !DILocation(line: 71, column: 12, scope: !2553)
!2569 = !DILocation(line: 72, column: 5, scope: !2553)
!2570 = !DILocation(line: 72, column: 8, scope: !2553)
!2571 = !DILocation(line: 72, column: 13, scope: !2553)
!2572 = !DILocation(line: 72, column: 20, scope: !2553)
!2573 = !DILocation(line: 69, column: 7, scope: !2554)
!2574 = !DILocation(line: 73, column: 4, scope: !2553)
!2575 = !DILocation(line: 75, column: 26, scope: !2554)
!2576 = !DILocation(line: 75, column: 31, scope: !2554)
!2577 = !DILocation(line: 75, column: 38, scope: !2554)
!2578 = !DILocation(line: 75, column: 50, scope: !2554)
!2579 = !DILocation(line: 75, column: 55, scope: !2554)
!2580 = !DILocation(line: 75, column: 62, scope: !2554)
!2581 = !DILocation(line: 75, column: 3, scope: !2554)
!2582 = !DILocation(line: 78, column: 26, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2554, file: !3, line: 78, column: 7)
!2584 = !DILocation(line: 78, column: 31, scope: !2583)
!2585 = !DILocation(line: 78, column: 7, scope: !2583)
!2586 = !DILocation(line: 78, column: 7, scope: !2554)
!2587 = !DILocation(line: 79, column: 37, scope: !2583)
!2588 = !DILocation(line: 79, column: 4, scope: !2583)
!2589 = !DILocation(line: 80, column: 2, scope: !2554)
!2590 = !DILocalVariable(name: "__mptr", scope: !2591, file: !3, line: 67, type: !77)
!2591 = distinct !DILexicalBlock(scope: !2551, file: !3, line: 67, column: 2)
!2592 = !DILocation(line: 67, column: 2, scope: !2591)
!2593 = !DILocation(line: 67, column: 2, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2591, file: !3, line: 67, column: 2)
!2595 = distinct !{!2595, !2544, !2596}
!2596 = !DILocation(line: 80, column: 2, scope: !2540)
!2597 = !DILocation(line: 81, column: 1, scope: !2531)
!2598 = distinct !DISubprogram(name: "acpi_wakeup_device_init", scope: !3, file: !3, line: 83, type: !2599, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !161)
!2599 = !DISubroutineType(types: !2600)
!2600 = !{!83}
!2601 = !DILocalVariable(name: "dev", scope: !2598, file: !3, line: 85, type: !78)
!2602 = !DILocation(line: 85, column: 22, scope: !2598)
!2603 = !DILocalVariable(name: "tmp", scope: !2598, file: !3, line: 85, type: !78)
!2604 = !DILocation(line: 85, column: 28, scope: !2598)
!2605 = !DILocation(line: 87, column: 2, scope: !2598)
!2606 = !DILocalVariable(name: "__mptr", scope: !2607, file: !3, line: 88, type: !77)
!2607 = distinct !DILexicalBlock(scope: !2608, file: !3, line: 88, column: 2)
!2608 = distinct !DILexicalBlock(scope: !2598, file: !3, line: 88, column: 2)
!2609 = !DILocation(line: 88, column: 2, scope: !2607)
!2610 = !DILocation(line: 88, column: 2, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2607, file: !3, line: 88, column: 2)
!2612 = !DILocation(line: 88, column: 2, scope: !2608)
!2613 = !DILocalVariable(name: "__mptr", scope: !2614, file: !3, line: 88, type: !77)
!2614 = distinct !DILexicalBlock(scope: !2608, file: !3, line: 88, column: 2)
!2615 = !DILocation(line: 88, column: 2, scope: !2614)
!2616 = !DILocation(line: 88, column: 2, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2614, file: !3, line: 88, column: 2)
!2618 = !DILocation(line: 88, column: 2, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2608, file: !3, line: 88, column: 2)
!2620 = !DILocation(line: 90, column: 26, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2622, file: !3, line: 90, column: 7)
!2622 = distinct !DILexicalBlock(scope: !2619, file: !3, line: 89, column: 19)
!2623 = !DILocation(line: 90, column: 31, scope: !2621)
!2624 = !DILocation(line: 90, column: 7, scope: !2621)
!2625 = !DILocation(line: 90, column: 7, scope: !2622)
!2626 = !DILocation(line: 92, column: 20, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2621, file: !3, line: 90, column: 37)
!2628 = !DILocation(line: 92, column: 25, scope: !2627)
!2629 = !DILocation(line: 92, column: 32, scope: !2627)
!2630 = !DILocation(line: 93, column: 6, scope: !2627)
!2631 = !DILocation(line: 93, column: 11, scope: !2627)
!2632 = !DILocation(line: 93, column: 18, scope: !2627)
!2633 = !DILocation(line: 92, column: 4, scope: !2627)
!2634 = !DILocation(line: 94, column: 30, scope: !2627)
!2635 = !DILocation(line: 94, column: 35, scope: !2627)
!2636 = !DILocation(line: 94, column: 4, scope: !2627)
!2637 = !DILocation(line: 95, column: 3, scope: !2627)
!2638 = !DILocation(line: 96, column: 2, scope: !2622)
!2639 = !DILocalVariable(name: "__mptr", scope: !2640, file: !3, line: 88, type: !77)
!2640 = distinct !DILexicalBlock(scope: !2619, file: !3, line: 88, column: 2)
!2641 = !DILocation(line: 88, column: 2, scope: !2640)
!2642 = !DILocation(line: 88, column: 2, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2640, file: !3, line: 88, column: 2)
!2644 = distinct !{!2644, !2612, !2645}
!2645 = !DILocation(line: 96, column: 2, scope: !2608)
!2646 = !DILocation(line: 97, column: 2, scope: !2598)
!2647 = !DILocation(line: 98, column: 2, scope: !2598)
!2648 = distinct !DISubprogram(name: "device_can_wakeup", scope: !1815, file: !1815, line: 77, type: !2516, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !161)
!2649 = !DILocalVariable(name: "dev", arg: 1, scope: !2648, file: !1815, line: 77, type: !1628)
!2650 = !DILocation(line: 77, column: 53, scope: !2648)
!2651 = !DILocation(line: 79, column: 9, scope: !2648)
!2652 = !DILocation(line: 79, column: 14, scope: !2648)
!2653 = !DILocation(line: 79, column: 20, scope: !2648)
!2654 = !DILocation(line: 79, column: 2, scope: !2648)
!2655 = distinct !DISubprogram(name: "acpi_register_wakeup_handler", scope: !3, file: !3, line: 111, type: !2656, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !161)
!2656 = !DISubroutineType(types: !2657)
!2657 = !{!83, !83, !2431, !77}
!2658 = !DILocalVariable(name: "s", arg: 1, scope: !2659, file: !70, line: 445, type: !1079)
!2659 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !70, file: !70, line: 445, type: !2660, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !161)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{!77, !1079, !1499, !235}
!2662 = !DILocation(line: 445, column: 72, scope: !2659, inlinedAt: !2663)
!2663 = distinct !DILocation(line: 552, column: 10, scope: !2664, inlinedAt: !2669)
!2664 = distinct !DILexicalBlock(scope: !2665, file: !70, line: 540, column: 34)
!2665 = distinct !DILexicalBlock(scope: !2666, file: !70, line: 540, column: 6)
!2666 = distinct !DISubprogram(name: "kmalloc", scope: !70, file: !70, line: 538, type: !2667, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !161)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{!77, !235, !1499}
!2669 = distinct !DILocation(line: 123, column: 12, scope: !2655)
!2670 = !DILocalVariable(name: "flags", arg: 2, scope: !2659, file: !70, line: 446, type: !1499)
!2671 = !DILocation(line: 446, column: 9, scope: !2659, inlinedAt: !2663)
!2672 = !DILocalVariable(name: "size", arg: 3, scope: !2659, file: !70, line: 446, type: !235)
!2673 = !DILocation(line: 446, column: 23, scope: !2659, inlinedAt: !2663)
!2674 = !DILocalVariable(name: "ret", scope: !2659, file: !70, line: 448, type: !77)
!2675 = !DILocation(line: 448, column: 8, scope: !2659, inlinedAt: !2663)
!2676 = !DILocalVariable(name: "flags", arg: 1, scope: !2677, file: !70, line: 318, type: !1499)
!2677 = distinct !DISubprogram(name: "kmalloc_type", scope: !70, file: !70, line: 318, type: !2678, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !161)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{!69, !1499}
!2680 = !DILocation(line: 318, column: 67, scope: !2677, inlinedAt: !2681)
!2681 = distinct !DILocation(line: 553, column: 20, scope: !2664, inlinedAt: !2669)
!2682 = !DILocalVariable(name: "size", arg: 1, scope: !2683, file: !70, line: 346, type: !235)
!2683 = distinct !DISubprogram(name: "kmalloc_index", scope: !70, file: !70, line: 346, type: !2684, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !161)
!2684 = !DISubroutineType(types: !2685)
!2685 = !{!7, !235}
!2686 = !DILocation(line: 346, column: 58, scope: !2683, inlinedAt: !2687)
!2687 = distinct !DILocation(line: 547, column: 11, scope: !2664, inlinedAt: !2669)
!2688 = !DILocalVariable(name: "size", arg: 1, scope: !2689, file: !70, line: 472, type: !235)
!2689 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !70, file: !70, line: 472, type: !2690, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !161)
!2690 = !DISubroutineType(types: !2691)
!2691 = !{!77, !235, !1499, !7}
!2692 = !DILocation(line: 472, column: 28, scope: !2689, inlinedAt: !2693)
!2693 = distinct !DILocation(line: 481, column: 9, scope: !2694, inlinedAt: !2695)
!2694 = distinct !DISubprogram(name: "kmalloc_large", scope: !70, file: !70, line: 478, type: !2667, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !161)
!2695 = distinct !DILocation(line: 545, column: 11, scope: !2696, inlinedAt: !2669)
!2696 = distinct !DILexicalBlock(scope: !2664, file: !70, line: 544, column: 7)
!2697 = !DILocalVariable(name: "flags", arg: 2, scope: !2689, file: !70, line: 472, type: !1499)
!2698 = !DILocation(line: 472, column: 40, scope: !2689, inlinedAt: !2693)
!2699 = !DILocalVariable(name: "order", arg: 3, scope: !2689, file: !70, line: 472, type: !7)
!2700 = !DILocation(line: 472, column: 60, scope: !2689, inlinedAt: !2693)
!2701 = !DILocalVariable(name: "size", arg: 1, scope: !2694, file: !70, line: 478, type: !235)
!2702 = !DILocation(line: 478, column: 51, scope: !2694, inlinedAt: !2695)
!2703 = !DILocalVariable(name: "flags", arg: 2, scope: !2694, file: !70, line: 478, type: !1499)
!2704 = !DILocation(line: 478, column: 63, scope: !2694, inlinedAt: !2695)
!2705 = !DILocalVariable(name: "order", scope: !2694, file: !70, line: 480, type: !7)
!2706 = !DILocation(line: 480, column: 15, scope: !2694, inlinedAt: !2695)
!2707 = !DILocalVariable(name: "size", arg: 1, scope: !2666, file: !70, line: 538, type: !235)
!2708 = !DILocation(line: 538, column: 45, scope: !2666, inlinedAt: !2669)
!2709 = !DILocalVariable(name: "flags", arg: 2, scope: !2666, file: !70, line: 538, type: !1499)
!2710 = !DILocation(line: 538, column: 57, scope: !2666, inlinedAt: !2669)
!2711 = !DILocalVariable(name: "index", scope: !2664, file: !70, line: 542, type: !7)
!2712 = !DILocation(line: 542, column: 16, scope: !2664, inlinedAt: !2669)
!2713 = !DILocalVariable(name: "wake_irq", arg: 1, scope: !2655, file: !3, line: 111, type: !83)
!2714 = !DILocation(line: 111, column: 38, scope: !2655)
!2715 = !DILocalVariable(name: "wakeup", arg: 2, scope: !2655, file: !3, line: 111, type: !2431)
!2716 = !DILocation(line: 111, column: 55, scope: !2655)
!2717 = !DILocalVariable(name: "context", arg: 3, scope: !2655, file: !3, line: 112, type: !77)
!2718 = !DILocation(line: 112, column: 12, scope: !2655)
!2719 = !DILocalVariable(name: "handler", scope: !2655, file: !3, line: 114, type: !2426)
!2720 = !DILocation(line: 114, column: 30, scope: !2655)
!2721 = !DILocation(line: 120, column: 7, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2655, file: !3, line: 120, column: 6)
!2723 = !DILocation(line: 120, column: 28, scope: !2722)
!2724 = !DILocation(line: 120, column: 31, scope: !2722)
!2725 = !DILocation(line: 120, column: 43, scope: !2722)
!2726 = !DILocation(line: 120, column: 40, scope: !2722)
!2727 = !DILocation(line: 120, column: 6, scope: !2655)
!2728 = !DILocation(line: 121, column: 3, scope: !2722)
!2729 = !DILocation(line: 540, column: 27, scope: !2665, inlinedAt: !2669)
!2730 = !DILocation(line: 540, column: 6, scope: !2665, inlinedAt: !2669)
!2731 = !DILocation(line: 540, column: 6, scope: !2666, inlinedAt: !2669)
!2732 = !DILocation(line: 544, column: 7, scope: !2696, inlinedAt: !2669)
!2733 = !DILocation(line: 544, column: 12, scope: !2696, inlinedAt: !2669)
!2734 = !DILocation(line: 544, column: 7, scope: !2664, inlinedAt: !2669)
!2735 = !DILocation(line: 545, column: 25, scope: !2696, inlinedAt: !2669)
!2736 = !DILocation(line: 545, column: 31, scope: !2696, inlinedAt: !2669)
!2737 = !DILocation(line: 480, column: 33, scope: !2694, inlinedAt: !2695)
!2738 = !DILocation(line: 480, column: 23, scope: !2694, inlinedAt: !2695)
!2739 = !DILocation(line: 481, column: 29, scope: !2694, inlinedAt: !2695)
!2740 = !DILocation(line: 481, column: 35, scope: !2694, inlinedAt: !2695)
!2741 = !DILocation(line: 481, column: 42, scope: !2694, inlinedAt: !2695)
!2742 = !DILocation(line: 474, column: 23, scope: !2689, inlinedAt: !2693)
!2743 = !DILocation(line: 474, column: 29, scope: !2689, inlinedAt: !2693)
!2744 = !DILocation(line: 474, column: 36, scope: !2689, inlinedAt: !2693)
!2745 = !DILocation(line: 474, column: 9, scope: !2689, inlinedAt: !2693)
!2746 = !DILocation(line: 545, column: 4, scope: !2696, inlinedAt: !2669)
!2747 = !DILocation(line: 547, column: 25, scope: !2664, inlinedAt: !2669)
!2748 = !DILocation(line: 348, column: 7, scope: !2749, inlinedAt: !2687)
!2749 = distinct !DILexicalBlock(scope: !2683, file: !70, line: 348, column: 6)
!2750 = !DILocation(line: 348, column: 6, scope: !2683, inlinedAt: !2687)
!2751 = !DILocation(line: 349, column: 3, scope: !2749, inlinedAt: !2687)
!2752 = !DILocation(line: 351, column: 6, scope: !2753, inlinedAt: !2687)
!2753 = distinct !DILexicalBlock(scope: !2683, file: !70, line: 351, column: 6)
!2754 = !DILocation(line: 351, column: 11, scope: !2753, inlinedAt: !2687)
!2755 = !DILocation(line: 351, column: 6, scope: !2683, inlinedAt: !2687)
!2756 = !DILocation(line: 352, column: 3, scope: !2753, inlinedAt: !2687)
!2757 = !DILocation(line: 354, column: 32, scope: !2758, inlinedAt: !2687)
!2758 = distinct !DILexicalBlock(scope: !2683, file: !70, line: 354, column: 6)
!2759 = !DILocation(line: 354, column: 37, scope: !2758, inlinedAt: !2687)
!2760 = !DILocation(line: 354, column: 42, scope: !2758, inlinedAt: !2687)
!2761 = !DILocation(line: 354, column: 45, scope: !2758, inlinedAt: !2687)
!2762 = !DILocation(line: 354, column: 50, scope: !2758, inlinedAt: !2687)
!2763 = !DILocation(line: 354, column: 6, scope: !2683, inlinedAt: !2687)
!2764 = !DILocation(line: 355, column: 3, scope: !2758, inlinedAt: !2687)
!2765 = !DILocation(line: 356, column: 32, scope: !2766, inlinedAt: !2687)
!2766 = distinct !DILexicalBlock(scope: !2683, file: !70, line: 356, column: 6)
!2767 = !DILocation(line: 356, column: 37, scope: !2766, inlinedAt: !2687)
!2768 = !DILocation(line: 356, column: 43, scope: !2766, inlinedAt: !2687)
!2769 = !DILocation(line: 356, column: 46, scope: !2766, inlinedAt: !2687)
!2770 = !DILocation(line: 356, column: 51, scope: !2766, inlinedAt: !2687)
!2771 = !DILocation(line: 356, column: 6, scope: !2683, inlinedAt: !2687)
!2772 = !DILocation(line: 357, column: 3, scope: !2766, inlinedAt: !2687)
!2773 = !DILocation(line: 358, column: 6, scope: !2774, inlinedAt: !2687)
!2774 = distinct !DILexicalBlock(scope: !2683, file: !70, line: 358, column: 6)
!2775 = !DILocation(line: 358, column: 11, scope: !2774, inlinedAt: !2687)
!2776 = !DILocation(line: 358, column: 6, scope: !2683, inlinedAt: !2687)
!2777 = !DILocation(line: 358, column: 26, scope: !2774, inlinedAt: !2687)
!2778 = !DILocation(line: 359, column: 6, scope: !2779, inlinedAt: !2687)
!2779 = distinct !DILexicalBlock(scope: !2683, file: !70, line: 359, column: 6)
!2780 = !DILocation(line: 359, column: 11, scope: !2779, inlinedAt: !2687)
!2781 = !DILocation(line: 359, column: 6, scope: !2683, inlinedAt: !2687)
!2782 = !DILocation(line: 359, column: 26, scope: !2779, inlinedAt: !2687)
!2783 = !DILocation(line: 360, column: 6, scope: !2784, inlinedAt: !2687)
!2784 = distinct !DILexicalBlock(scope: !2683, file: !70, line: 360, column: 6)
!2785 = !DILocation(line: 360, column: 11, scope: !2784, inlinedAt: !2687)
!2786 = !DILocation(line: 360, column: 6, scope: !2683, inlinedAt: !2687)
!2787 = !DILocation(line: 360, column: 26, scope: !2784, inlinedAt: !2687)
!2788 = !DILocation(line: 361, column: 6, scope: !2789, inlinedAt: !2687)
!2789 = distinct !DILexicalBlock(scope: !2683, file: !70, line: 361, column: 6)
!2790 = !DILocation(line: 361, column: 11, scope: !2789, inlinedAt: !2687)
!2791 = !DILocation(line: 361, column: 6, scope: !2683, inlinedAt: !2687)
!2792 = !DILocation(line: 361, column: 26, scope: !2789, inlinedAt: !2687)
!2793 = !DILocation(line: 362, column: 6, scope: !2794, inlinedAt: !2687)
!2794 = distinct !DILexicalBlock(scope: !2683, file: !70, line: 362, column: 6)
!2795 = !DILocation(line: 362, column: 11, scope: !2794, inlinedAt: !2687)
!2796 = !DILocation(line: 362, column: 6, scope: !2683, inlinedAt: !2687)
!2797 = !DILocation(line: 362, column: 26, scope: !2794, inlinedAt: !2687)
!2798 = !DILocation(line: 363, column: 6, scope: !2799, inlinedAt: !2687)
!2799 = distinct !DILexicalBlock(scope: !2683, file: !70, line: 363, column: 6)
!2800 = !DILocation(line: 363, column: 11, scope: !2799, inlinedAt: !2687)
!2801 = !DILocation(line: 363, column: 6, scope: !2683, inlinedAt: !2687)
!2802 = !DILocation(line: 363, column: 26, scope: !2799, inlinedAt: !2687)
!2803 = !DILocation(line: 364, column: 6, scope: !2804, inlinedAt: !2687)
!2804 = distinct !DILexicalBlock(scope: !2683, file: !70, line: 364, column: 6)
!2805 = !DILocation(line: 364, column: 11, scope: !2804, inlinedAt: !2687)
!2806 = !DILocation(line: 364, column: 6, scope: !2683, inlinedAt: !2687)
!2807 = !DILocation(line: 364, column: 26, scope: !2804, inlinedAt: !2687)
!2808 = !DILocation(line: 365, column: 6, scope: !2809, inlinedAt: !2687)
!2809 = distinct !DILexicalBlock(scope: !2683, file: !70, line: 365, column: 6)
!2810 = !DILocation(line: 365, column: 11, scope: !2809, inlinedAt: !2687)
!2811 = !DILocation(line: 365, column: 6, scope: !2683, inlinedAt: !2687)
!2812 = !DILocation(line: 365, column: 26, scope: !2809, inlinedAt: !2687)
!2813 = !DILocation(line: 366, column: 6, scope: !2814, inlinedAt: !2687)
!2814 = distinct !DILexicalBlock(scope: !2683, file: !70, line: 366, column: 6)
!2815 = !DILocation(line: 366, column: 11, scope: !2814, inlinedAt: !2687)
!2816 = !DILocation(line: 366, column: 6, scope: !2683, inlinedAt: !2687)
!2817 = !DILocation(line: 366, column: 26, scope: !2814, inlinedAt: !2687)
!2818 = !DILocation(line: 367, column: 6, scope: !2819, inlinedAt: !2687)
!2819 = distinct !DILexicalBlock(scope: !2683, file: !70, line: 367, column: 6)
!2820 = !DILocation(line: 367, column: 11, scope: !2819, inlinedAt: !2687)
!2821 = !DILocation(line: 367, column: 6, scope: !2683, inlinedAt: !2687)
!2822 = !DILocation(line: 367, column: 26, scope: !2819, inlinedAt: !2687)
!2823 = !DILocation(line: 368, column: 6, scope: !2824, inlinedAt: !2687)
!2824 = distinct !DILexicalBlock(scope: !2683, file: !70, line: 368, column: 6)
!2825 = !DILocation(line: 368, column: 11, scope: !2824, inlinedAt: !2687)
!2826 = !DILocation(line: 368, column: 6, scope: !2683, inlinedAt: !2687)
!2827 = !DILocation(line: 368, column: 26, scope: !2824, inlinedAt: !2687)
!2828 = !DILocation(line: 369, column: 6, scope: !2829, inlinedAt: !2687)
!2829 = distinct !DILexicalBlock(scope: !2683, file: !70, line: 369, column: 6)
!2830 = !DILocation(line: 369, column: 11, scope: !2829, inlinedAt: !2687)
!2831 = !DILocation(line: 369, column: 6, scope: !2683, inlinedAt: !2687)
!2832 = !DILocation(line: 369, column: 26, scope: !2829, inlinedAt: !2687)
!2833 = !DILocation(line: 370, column: 6, scope: !2834, inlinedAt: !2687)
!2834 = distinct !DILexicalBlock(scope: !2683, file: !70, line: 370, column: 6)
!2835 = !DILocation(line: 370, column: 11, scope: !2834, inlinedAt: !2687)
!2836 = !DILocation(line: 370, column: 6, scope: !2683, inlinedAt: !2687)
!2837 = !DILocation(line: 370, column: 26, scope: !2834, inlinedAt: !2687)
!2838 = !DILocation(line: 371, column: 6, scope: !2839, inlinedAt: !2687)
!2839 = distinct !DILexicalBlock(scope: !2683, file: !70, line: 371, column: 6)
!2840 = !DILocation(line: 371, column: 11, scope: !2839, inlinedAt: !2687)
!2841 = !DILocation(line: 371, column: 6, scope: !2683, inlinedAt: !2687)
!2842 = !DILocation(line: 371, column: 26, scope: !2839, inlinedAt: !2687)
!2843 = !DILocation(line: 372, column: 6, scope: !2844, inlinedAt: !2687)
!2844 = distinct !DILexicalBlock(scope: !2683, file: !70, line: 372, column: 6)
!2845 = !DILocation(line: 372, column: 11, scope: !2844, inlinedAt: !2687)
!2846 = !DILocation(line: 372, column: 6, scope: !2683, inlinedAt: !2687)
!2847 = !DILocation(line: 372, column: 26, scope: !2844, inlinedAt: !2687)
!2848 = !DILocation(line: 373, column: 6, scope: !2849, inlinedAt: !2687)
!2849 = distinct !DILexicalBlock(scope: !2683, file: !70, line: 373, column: 6)
!2850 = !DILocation(line: 373, column: 11, scope: !2849, inlinedAt: !2687)
!2851 = !DILocation(line: 373, column: 6, scope: !2683, inlinedAt: !2687)
!2852 = !DILocation(line: 373, column: 26, scope: !2849, inlinedAt: !2687)
!2853 = !DILocation(line: 374, column: 6, scope: !2854, inlinedAt: !2687)
!2854 = distinct !DILexicalBlock(scope: !2683, file: !70, line: 374, column: 6)
!2855 = !DILocation(line: 374, column: 11, scope: !2854, inlinedAt: !2687)
!2856 = !DILocation(line: 374, column: 6, scope: !2683, inlinedAt: !2687)
!2857 = !DILocation(line: 374, column: 26, scope: !2854, inlinedAt: !2687)
!2858 = !DILocation(line: 375, column: 6, scope: !2859, inlinedAt: !2687)
!2859 = distinct !DILexicalBlock(scope: !2683, file: !70, line: 375, column: 6)
!2860 = !DILocation(line: 375, column: 11, scope: !2859, inlinedAt: !2687)
!2861 = !DILocation(line: 375, column: 6, scope: !2683, inlinedAt: !2687)
!2862 = !DILocation(line: 375, column: 27, scope: !2859, inlinedAt: !2687)
!2863 = !DILocation(line: 376, column: 6, scope: !2864, inlinedAt: !2687)
!2864 = distinct !DILexicalBlock(scope: !2683, file: !70, line: 376, column: 6)
!2865 = !DILocation(line: 376, column: 11, scope: !2864, inlinedAt: !2687)
!2866 = !DILocation(line: 376, column: 6, scope: !2683, inlinedAt: !2687)
!2867 = !DILocation(line: 376, column: 32, scope: !2864, inlinedAt: !2687)
!2868 = !DILocation(line: 377, column: 6, scope: !2869, inlinedAt: !2687)
!2869 = distinct !DILexicalBlock(scope: !2683, file: !70, line: 377, column: 6)
!2870 = !DILocation(line: 377, column: 11, scope: !2869, inlinedAt: !2687)
!2871 = !DILocation(line: 377, column: 6, scope: !2683, inlinedAt: !2687)
!2872 = !DILocation(line: 377, column: 32, scope: !2869, inlinedAt: !2687)
!2873 = !DILocation(line: 378, column: 6, scope: !2874, inlinedAt: !2687)
!2874 = distinct !DILexicalBlock(scope: !2683, file: !70, line: 378, column: 6)
!2875 = !DILocation(line: 378, column: 11, scope: !2874, inlinedAt: !2687)
!2876 = !DILocation(line: 378, column: 6, scope: !2683, inlinedAt: !2687)
!2877 = !DILocation(line: 378, column: 32, scope: !2874, inlinedAt: !2687)
!2878 = !DILocation(line: 379, column: 6, scope: !2879, inlinedAt: !2687)
!2879 = distinct !DILexicalBlock(scope: !2683, file: !70, line: 379, column: 6)
!2880 = !DILocation(line: 379, column: 11, scope: !2879, inlinedAt: !2687)
!2881 = !DILocation(line: 379, column: 6, scope: !2683, inlinedAt: !2687)
!2882 = !DILocation(line: 379, column: 33, scope: !2879, inlinedAt: !2687)
!2883 = !DILocation(line: 380, column: 6, scope: !2884, inlinedAt: !2687)
!2884 = distinct !DILexicalBlock(scope: !2683, file: !70, line: 380, column: 6)
!2885 = !DILocation(line: 380, column: 11, scope: !2884, inlinedAt: !2687)
!2886 = !DILocation(line: 380, column: 6, scope: !2683, inlinedAt: !2687)
!2887 = !DILocation(line: 380, column: 33, scope: !2884, inlinedAt: !2687)
!2888 = !DILocation(line: 381, column: 6, scope: !2889, inlinedAt: !2687)
!2889 = distinct !DILexicalBlock(scope: !2683, file: !70, line: 381, column: 6)
!2890 = !DILocation(line: 381, column: 11, scope: !2889, inlinedAt: !2687)
!2891 = !DILocation(line: 381, column: 6, scope: !2683, inlinedAt: !2687)
!2892 = !DILocation(line: 381, column: 33, scope: !2889, inlinedAt: !2687)
!2893 = !DILocation(line: 382, column: 2, scope: !2894, inlinedAt: !2687)
!2894 = distinct !DILexicalBlock(scope: !2895, file: !70, line: 382, column: 2)
!2895 = distinct !DILexicalBlock(scope: !2683, file: !70, line: 382, column: 2)
!2896 = !{i32 -2144219300, i32 -2144219271, i32 -2144219225, i32 -2144219167, i32 -2144219113, i32 -2144219059, i32 -2144219004, i32 -2144218973}
!2897 = !DILocation(line: 382, column: 2, scope: !2898, inlinedAt: !2687)
!2898 = distinct !DILexicalBlock(scope: !2899, file: !70, line: 382, column: 2)
!2899 = distinct !DILexicalBlock(scope: !2895, file: !70, line: 382, column: 2)
!2900 = !{i32 -2144218530, i32 -2144218523, i32 -2144218469, i32 -2144218438, i32 -2144218408}
!2901 = !DILocation(line: 382, column: 2, scope: !2899, inlinedAt: !2687)
!2902 = !DILocation(line: 386, column: 1, scope: !2683, inlinedAt: !2687)
!2903 = !DILocation(line: 547, column: 9, scope: !2664, inlinedAt: !2669)
!2904 = !DILocation(line: 549, column: 8, scope: !2905, inlinedAt: !2669)
!2905 = distinct !DILexicalBlock(scope: !2664, file: !70, line: 549, column: 7)
!2906 = !DILocation(line: 549, column: 7, scope: !2664, inlinedAt: !2669)
!2907 = !DILocation(line: 550, column: 4, scope: !2905, inlinedAt: !2669)
!2908 = !DILocation(line: 553, column: 33, scope: !2664, inlinedAt: !2669)
!2909 = !DILocation(line: 325, column: 6, scope: !2910, inlinedAt: !2681)
!2910 = distinct !DILexicalBlock(scope: !2677, file: !70, line: 325, column: 6)
!2911 = !DILocation(line: 325, column: 6, scope: !2677, inlinedAt: !2681)
!2912 = !DILocation(line: 326, column: 3, scope: !2910, inlinedAt: !2681)
!2913 = !DILocation(line: 332, column: 9, scope: !2677, inlinedAt: !2681)
!2914 = !DILocation(line: 332, column: 15, scope: !2677, inlinedAt: !2681)
!2915 = !DILocation(line: 332, column: 2, scope: !2677, inlinedAt: !2681)
!2916 = !DILocation(line: 336, column: 1, scope: !2677, inlinedAt: !2681)
!2917 = !DILocation(line: 553, column: 5, scope: !2664, inlinedAt: !2669)
!2918 = !DILocation(line: 553, column: 41, scope: !2664, inlinedAt: !2669)
!2919 = !DILocation(line: 554, column: 5, scope: !2664, inlinedAt: !2669)
!2920 = !DILocation(line: 554, column: 12, scope: !2664, inlinedAt: !2669)
!2921 = !DILocation(line: 448, column: 31, scope: !2659, inlinedAt: !2663)
!2922 = !DILocation(line: 448, column: 34, scope: !2659, inlinedAt: !2663)
!2923 = !DILocation(line: 448, column: 14, scope: !2659, inlinedAt: !2663)
!2924 = !DILocation(line: 450, column: 22, scope: !2659, inlinedAt: !2663)
!2925 = !DILocation(line: 450, column: 25, scope: !2659, inlinedAt: !2663)
!2926 = !DILocation(line: 450, column: 30, scope: !2659, inlinedAt: !2663)
!2927 = !DILocation(line: 450, column: 36, scope: !2659, inlinedAt: !2663)
!2928 = !DILocation(line: 450, column: 8, scope: !2659, inlinedAt: !2663)
!2929 = !DILocation(line: 450, column: 6, scope: !2659, inlinedAt: !2663)
!2930 = !DILocation(line: 451, column: 9, scope: !2659, inlinedAt: !2663)
!2931 = !DILocation(line: 552, column: 3, scope: !2664, inlinedAt: !2669)
!2932 = !DILocation(line: 557, column: 19, scope: !2666, inlinedAt: !2669)
!2933 = !DILocation(line: 557, column: 25, scope: !2666, inlinedAt: !2669)
!2934 = !DILocation(line: 557, column: 9, scope: !2666, inlinedAt: !2669)
!2935 = !DILocation(line: 557, column: 2, scope: !2666, inlinedAt: !2669)
!2936 = !DILocation(line: 558, column: 1, scope: !2666, inlinedAt: !2669)
!2937 = !DILocation(line: 123, column: 12, scope: !2655)
!2938 = !DILocation(line: 123, column: 10, scope: !2655)
!2939 = !DILocation(line: 124, column: 7, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2655, file: !3, line: 124, column: 6)
!2941 = !DILocation(line: 124, column: 6, scope: !2655)
!2942 = !DILocation(line: 125, column: 3, scope: !2940)
!2943 = !DILocation(line: 127, column: 20, scope: !2655)
!2944 = !DILocation(line: 127, column: 2, scope: !2655)
!2945 = !DILocation(line: 127, column: 11, scope: !2655)
!2946 = !DILocation(line: 127, column: 18, scope: !2655)
!2947 = !DILocation(line: 128, column: 21, scope: !2655)
!2948 = !DILocation(line: 128, column: 2, scope: !2655)
!2949 = !DILocation(line: 128, column: 11, scope: !2655)
!2950 = !DILocation(line: 128, column: 19, scope: !2655)
!2951 = !DILocation(line: 130, column: 2, scope: !2655)
!2952 = !DILocation(line: 131, column: 12, scope: !2655)
!2953 = !DILocation(line: 131, column: 21, scope: !2655)
!2954 = !DILocation(line: 131, column: 2, scope: !2655)
!2955 = !DILocation(line: 132, column: 2, scope: !2655)
!2956 = !DILocation(line: 134, column: 2, scope: !2655)
!2957 = !DILocation(line: 135, column: 1, scope: !2655)
!2958 = distinct !DISubprogram(name: "acpi_sci_irq_valid", scope: !2959, file: !2959, line: 318, type: !1421, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !161)
!2959 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/lizy2001/genbc/linux")
!2960 = !DILocation(line: 320, column: 9, scope: !2958)
!2961 = !DILocation(line: 320, column: 22, scope: !2958)
!2962 = !DILocation(line: 320, column: 2, scope: !2958)
!2963 = distinct !DISubprogram(name: "list_add", scope: !2964, file: !2964, line: 84, type: !2965, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !161)
!2964 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!2965 = !DISubroutineType(types: !2966)
!2966 = !{null, !137, !137}
!2967 = !DILocalVariable(name: "new", arg: 1, scope: !2963, file: !2964, line: 84, type: !137)
!2968 = !DILocation(line: 84, column: 47, scope: !2963)
!2969 = !DILocalVariable(name: "head", arg: 2, scope: !2963, file: !2964, line: 84, type: !137)
!2970 = !DILocation(line: 84, column: 70, scope: !2963)
!2971 = !DILocation(line: 86, column: 13, scope: !2963)
!2972 = !DILocation(line: 86, column: 18, scope: !2963)
!2973 = !DILocation(line: 86, column: 24, scope: !2963)
!2974 = !DILocation(line: 86, column: 30, scope: !2963)
!2975 = !DILocation(line: 86, column: 2, scope: !2963)
!2976 = !DILocation(line: 87, column: 1, scope: !2963)
!2977 = distinct !DISubprogram(name: "acpi_unregister_wakeup_handler", scope: !3, file: !3, line: 143, type: !2978, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !161)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{null, !2431, !77}
!2980 = !DILocalVariable(name: "wakeup", arg: 1, scope: !2977, file: !3, line: 143, type: !2431)
!2981 = !DILocation(line: 143, column: 44, scope: !2977)
!2982 = !DILocalVariable(name: "context", arg: 2, scope: !2977, file: !3, line: 144, type: !77)
!2983 = !DILocation(line: 144, column: 15, scope: !2977)
!2984 = !DILocalVariable(name: "handler", scope: !2977, file: !3, line: 146, type: !2426)
!2985 = !DILocation(line: 146, column: 30, scope: !2977)
!2986 = !DILocation(line: 148, column: 2, scope: !2977)
!2987 = !DILocalVariable(name: "__mptr", scope: !2988, file: !3, line: 149, type: !77)
!2988 = distinct !DILexicalBlock(scope: !2989, file: !3, line: 149, column: 2)
!2989 = distinct !DILexicalBlock(scope: !2977, file: !3, line: 149, column: 2)
!2990 = !DILocation(line: 149, column: 2, scope: !2988)
!2991 = !DILocation(line: 149, column: 2, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2988, file: !3, line: 149, column: 2)
!2993 = !DILocation(line: 149, column: 2, scope: !2989)
!2994 = !DILocation(line: 149, column: 2, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2989, file: !3, line: 149, column: 2)
!2996 = !DILocation(line: 150, column: 7, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2998, file: !3, line: 150, column: 7)
!2998 = distinct !DILexicalBlock(scope: !2995, file: !3, line: 149, column: 69)
!2999 = !DILocation(line: 150, column: 16, scope: !2997)
!3000 = !DILocation(line: 150, column: 26, scope: !2997)
!3001 = !DILocation(line: 150, column: 23, scope: !2997)
!3002 = !DILocation(line: 150, column: 33, scope: !2997)
!3003 = !DILocation(line: 150, column: 36, scope: !2997)
!3004 = !DILocation(line: 150, column: 45, scope: !2997)
!3005 = !DILocation(line: 150, column: 56, scope: !2997)
!3006 = !DILocation(line: 150, column: 53, scope: !2997)
!3007 = !DILocation(line: 150, column: 7, scope: !2998)
!3008 = !DILocation(line: 151, column: 14, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !2997, file: !3, line: 150, column: 65)
!3010 = !DILocation(line: 151, column: 23, scope: !3009)
!3011 = !DILocation(line: 151, column: 4, scope: !3009)
!3012 = !DILocation(line: 152, column: 10, scope: !3009)
!3013 = !DILocation(line: 152, column: 4, scope: !3009)
!3014 = !DILocation(line: 153, column: 4, scope: !3009)
!3015 = !DILocation(line: 155, column: 2, scope: !2998)
!3016 = !DILocalVariable(name: "__mptr", scope: !3017, file: !3, line: 149, type: !77)
!3017 = distinct !DILexicalBlock(scope: !2995, file: !3, line: 149, column: 2)
!3018 = !DILocation(line: 149, column: 2, scope: !3017)
!3019 = !DILocation(line: 149, column: 2, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !3017, file: !3, line: 149, column: 2)
!3021 = distinct !{!3021, !2993, !3022}
!3022 = !DILocation(line: 155, column: 2, scope: !2989)
!3023 = !DILocation(line: 156, column: 2, scope: !2977)
!3024 = !DILocation(line: 157, column: 1, scope: !2977)
!3025 = distinct !DISubprogram(name: "list_del", scope: !2964, file: !2964, line: 144, type: !3026, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !161)
!3026 = !DISubroutineType(types: !3027)
!3027 = !{null, !137}
!3028 = !DILocalVariable(name: "entry", arg: 1, scope: !3025, file: !2964, line: 144, type: !137)
!3029 = !DILocation(line: 144, column: 47, scope: !3025)
!3030 = !DILocation(line: 146, column: 19, scope: !3025)
!3031 = !DILocation(line: 146, column: 2, scope: !3025)
!3032 = !DILocation(line: 147, column: 2, scope: !3025)
!3033 = !DILocation(line: 147, column: 9, scope: !3025)
!3034 = !DILocation(line: 147, column: 14, scope: !3025)
!3035 = !DILocation(line: 148, column: 2, scope: !3025)
!3036 = !DILocation(line: 148, column: 9, scope: !3025)
!3037 = !DILocation(line: 148, column: 14, scope: !3025)
!3038 = !DILocation(line: 149, column: 1, scope: !3025)
!3039 = distinct !DISubprogram(name: "acpi_check_wakeup_handlers", scope: !3, file: !3, line: 160, type: !1421, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !161)
!3040 = !DILocalVariable(name: "handler", scope: !3039, file: !3, line: 162, type: !2426)
!3041 = !DILocation(line: 162, column: 30, scope: !3039)
!3042 = !DILocalVariable(name: "__mptr", scope: !3043, file: !3, line: 165, type: !77)
!3043 = distinct !DILexicalBlock(scope: !3044, file: !3, line: 165, column: 2)
!3044 = distinct !DILexicalBlock(scope: !3039, file: !3, line: 165, column: 2)
!3045 = !DILocation(line: 165, column: 2, scope: !3043)
!3046 = !DILocation(line: 165, column: 2, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3043, file: !3, line: 165, column: 2)
!3048 = !DILocation(line: 165, column: 2, scope: !3044)
!3049 = !DILocation(line: 165, column: 2, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3044, file: !3, line: 165, column: 2)
!3051 = !DILocation(line: 166, column: 7, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !3053, file: !3, line: 166, column: 7)
!3053 = distinct !DILexicalBlock(scope: !3050, file: !3, line: 165, column: 69)
!3054 = !DILocation(line: 166, column: 16, scope: !3052)
!3055 = !DILocation(line: 166, column: 23, scope: !3052)
!3056 = !DILocation(line: 166, column: 32, scope: !3052)
!3057 = !DILocation(line: 166, column: 7, scope: !3053)
!3058 = !DILocation(line: 167, column: 4, scope: !3052)
!3059 = !DILocation(line: 168, column: 2, scope: !3053)
!3060 = !DILocalVariable(name: "__mptr", scope: !3061, file: !3, line: 165, type: !77)
!3061 = distinct !DILexicalBlock(scope: !3050, file: !3, line: 165, column: 2)
!3062 = !DILocation(line: 165, column: 2, scope: !3061)
!3063 = !DILocation(line: 165, column: 2, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !3061, file: !3, line: 165, column: 2)
!3065 = distinct !{!3065, !3048, !3066}
!3066 = !DILocation(line: 168, column: 2, scope: !3044)
!3067 = !DILocation(line: 170, column: 2, scope: !3039)
!3068 = !DILocation(line: 171, column: 1, scope: !3039)
!3069 = distinct !DISubprogram(name: "get_order", scope: !3070, file: !3070, line: 29, type: !3071, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !161)
!3070 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!3071 = !DISubroutineType(types: !3072)
!3072 = !{!83, !238}
!3073 = !DILocalVariable(name: "x", arg: 1, scope: !3074, file: !3075, line: 366, type: !309)
!3074 = distinct !DISubprogram(name: "fls64", scope: !3075, file: !3075, line: 366, type: !3076, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !161)
!3075 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!3076 = !DISubroutineType(types: !3077)
!3077 = !{!83, !309}
!3078 = !DILocation(line: 366, column: 40, scope: !3074, inlinedAt: !3079)
!3079 = distinct !DILocation(line: 46, column: 9, scope: !3069)
!3080 = !DILocalVariable(name: "bitpos", scope: !3074, file: !3075, line: 368, type: !83)
!3081 = !DILocation(line: 368, column: 6, scope: !3074, inlinedAt: !3079)
!3082 = !DILocalVariable(name: "size", arg: 1, scope: !3069, file: !3070, line: 29, type: !238)
!3083 = !DILocation(line: 29, column: 63, scope: !3069)
!3084 = !DILocation(line: 31, column: 27, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3069, file: !3070, line: 31, column: 6)
!3086 = !DILocation(line: 31, column: 6, scope: !3085)
!3087 = !DILocation(line: 31, column: 6, scope: !3069)
!3088 = !DILocation(line: 32, column: 8, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3090, file: !3070, line: 32, column: 7)
!3090 = distinct !DILexicalBlock(scope: !3085, file: !3070, line: 31, column: 34)
!3091 = !DILocation(line: 32, column: 7, scope: !3090)
!3092 = !DILocation(line: 33, column: 4, scope: !3089)
!3093 = !DILocation(line: 35, column: 7, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3090, file: !3070, line: 35, column: 7)
!3095 = !DILocation(line: 35, column: 12, scope: !3094)
!3096 = !DILocation(line: 35, column: 7, scope: !3090)
!3097 = !DILocation(line: 36, column: 4, scope: !3094)
!3098 = !DILocation(line: 38, column: 10, scope: !3090)
!3099 = !DILocation(line: 38, column: 28, scope: !3090)
!3100 = !DILocation(line: 38, column: 41, scope: !3090)
!3101 = !DILocation(line: 38, column: 3, scope: !3090)
!3102 = !DILocation(line: 41, column: 6, scope: !3069)
!3103 = !DILocation(line: 42, column: 7, scope: !3069)
!3104 = !DILocation(line: 46, column: 15, scope: !3069)
!3105 = !DILocation(line: 374, column: 2, scope: !3074, inlinedAt: !3079)
!3106 = !DILocation(line: 376, column: 14, scope: !3074, inlinedAt: !3079)
!3107 = !{i32 326297}
!3108 = !DILocation(line: 377, column: 9, scope: !3074, inlinedAt: !3079)
!3109 = !DILocation(line: 377, column: 16, scope: !3074, inlinedAt: !3079)
!3110 = !DILocation(line: 46, column: 2, scope: !3069)
!3111 = !DILocation(line: 48, column: 1, scope: !3069)
!3112 = distinct !DISubprogram(name: "__ilog2_u64", scope: !3113, file: !3113, line: 30, type: !3114, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !161)
!3113 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!3114 = !DISubroutineType(types: !3115)
!3115 = !{!83, !307}
!3116 = !DILocation(line: 366, column: 40, scope: !3074, inlinedAt: !3117)
!3117 = distinct !DILocation(line: 32, column: 9, scope: !3112)
!3118 = !DILocation(line: 368, column: 6, scope: !3074, inlinedAt: !3117)
!3119 = !DILocalVariable(name: "n", arg: 1, scope: !3112, file: !3113, line: 30, type: !307)
!3120 = !DILocation(line: 30, column: 21, scope: !3112)
!3121 = !DILocation(line: 32, column: 15, scope: !3112)
!3122 = !DILocation(line: 374, column: 2, scope: !3074, inlinedAt: !3117)
!3123 = !DILocation(line: 376, column: 14, scope: !3074, inlinedAt: !3117)
!3124 = !DILocation(line: 377, column: 9, scope: !3074, inlinedAt: !3117)
!3125 = !DILocation(line: 377, column: 16, scope: !3074, inlinedAt: !3117)
!3126 = !DILocation(line: 32, column: 18, scope: !3112)
!3127 = !DILocation(line: 32, column: 2, scope: !3112)
!3128 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !3129, file: !3129, line: 137, type: !3130, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !161)
!3129 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!3130 = !DISubroutineType(types: !3131)
!3131 = !{!77, !1079, !119, !235, !1499}
!3132 = !DILocalVariable(name: "s", arg: 1, scope: !3128, file: !3129, line: 137, type: !1079)
!3133 = !DILocation(line: 137, column: 54, scope: !3128)
!3134 = !DILocalVariable(name: "object", arg: 2, scope: !3128, file: !3129, line: 137, type: !119)
!3135 = !DILocation(line: 137, column: 69, scope: !3128)
!3136 = !DILocalVariable(name: "size", arg: 3, scope: !3128, file: !3129, line: 138, type: !235)
!3137 = !DILocation(line: 138, column: 12, scope: !3128)
!3138 = !DILocalVariable(name: "flags", arg: 4, scope: !3128, file: !3129, line: 138, type: !1499)
!3139 = !DILocation(line: 138, column: 24, scope: !3128)
!3140 = !DILocation(line: 140, column: 17, scope: !3128)
!3141 = !DILocation(line: 140, column: 2, scope: !3128)
!3142 = distinct !DISubprogram(name: "__list_add", scope: !2964, file: !2964, line: 63, type: !3143, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !161)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{null, !137, !137, !137}
!3145 = !DILocalVariable(name: "new", arg: 1, scope: !3142, file: !2964, line: 63, type: !137)
!3146 = !DILocation(line: 63, column: 49, scope: !3142)
!3147 = !DILocalVariable(name: "prev", arg: 2, scope: !3142, file: !2964, line: 64, type: !137)
!3148 = !DILocation(line: 64, column: 28, scope: !3142)
!3149 = !DILocalVariable(name: "next", arg: 3, scope: !3142, file: !2964, line: 65, type: !137)
!3150 = !DILocation(line: 65, column: 28, scope: !3142)
!3151 = !DILocation(line: 67, column: 24, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3142, file: !2964, line: 67, column: 6)
!3153 = !DILocation(line: 67, column: 29, scope: !3152)
!3154 = !DILocation(line: 67, column: 35, scope: !3152)
!3155 = !DILocation(line: 67, column: 7, scope: !3152)
!3156 = !DILocation(line: 67, column: 6, scope: !3142)
!3157 = !DILocation(line: 68, column: 3, scope: !3152)
!3158 = !DILocation(line: 70, column: 15, scope: !3142)
!3159 = !DILocation(line: 70, column: 2, scope: !3142)
!3160 = !DILocation(line: 70, column: 8, scope: !3142)
!3161 = !DILocation(line: 70, column: 13, scope: !3142)
!3162 = !DILocation(line: 71, column: 14, scope: !3142)
!3163 = !DILocation(line: 71, column: 2, scope: !3142)
!3164 = !DILocation(line: 71, column: 7, scope: !3142)
!3165 = !DILocation(line: 71, column: 12, scope: !3142)
!3166 = !DILocation(line: 72, column: 14, scope: !3142)
!3167 = !DILocation(line: 72, column: 2, scope: !3142)
!3168 = !DILocation(line: 72, column: 7, scope: !3142)
!3169 = !DILocation(line: 72, column: 12, scope: !3142)
!3170 = !DILocation(line: 73, column: 2, scope: !3142)
!3171 = !DILocation(line: 73, column: 2, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3142, file: !2964, line: 73, column: 2)
!3173 = !DILocation(line: 73, column: 2, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3172, file: !2964, line: 73, column: 2)
!3175 = !DILocation(line: 73, column: 2, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3172, file: !2964, line: 73, column: 2)
!3177 = !DILocation(line: 74, column: 1, scope: !3142)
!3178 = distinct !DISubprogram(name: "__list_add_valid", scope: !2964, file: !2964, line: 45, type: !3179, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !161)
!3179 = !DISubroutineType(types: !3180)
!3180 = !{!110, !137, !137, !137}
!3181 = !DILocalVariable(name: "new", arg: 1, scope: !3178, file: !2964, line: 45, type: !137)
!3182 = !DILocation(line: 45, column: 55, scope: !3178)
!3183 = !DILocalVariable(name: "prev", arg: 2, scope: !3178, file: !2964, line: 46, type: !137)
!3184 = !DILocation(line: 46, column: 23, scope: !3178)
!3185 = !DILocalVariable(name: "next", arg: 3, scope: !3178, file: !2964, line: 47, type: !137)
!3186 = !DILocation(line: 47, column: 23, scope: !3178)
!3187 = !DILocation(line: 49, column: 2, scope: !3178)
!3188 = distinct !DISubprogram(name: "__list_del_entry", scope: !2964, file: !2964, line: 130, type: !3026, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !161)
!3189 = !DILocalVariable(name: "entry", arg: 1, scope: !3188, file: !2964, line: 130, type: !137)
!3190 = !DILocation(line: 130, column: 55, scope: !3188)
!3191 = !DILocation(line: 132, column: 30, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !3188, file: !2964, line: 132, column: 6)
!3193 = !DILocation(line: 132, column: 7, scope: !3192)
!3194 = !DILocation(line: 132, column: 6, scope: !3188)
!3195 = !DILocation(line: 133, column: 3, scope: !3192)
!3196 = !DILocation(line: 135, column: 13, scope: !3188)
!3197 = !DILocation(line: 135, column: 20, scope: !3188)
!3198 = !DILocation(line: 135, column: 26, scope: !3188)
!3199 = !DILocation(line: 135, column: 33, scope: !3188)
!3200 = !DILocation(line: 135, column: 2, scope: !3188)
!3201 = !DILocation(line: 136, column: 1, scope: !3188)
!3202 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !2964, file: !2964, line: 51, type: !3203, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !161)
!3203 = !DISubroutineType(types: !3204)
!3204 = !{!110, !137}
!3205 = !DILocalVariable(name: "entry", arg: 1, scope: !3202, file: !2964, line: 51, type: !137)
!3206 = !DILocation(line: 51, column: 61, scope: !3202)
!3207 = !DILocation(line: 53, column: 2, scope: !3202)
!3208 = distinct !DISubprogram(name: "__list_del", scope: !2964, file: !2964, line: 110, type: !2965, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !161)
!3209 = !DILocalVariable(name: "prev", arg: 1, scope: !3208, file: !2964, line: 110, type: !137)
!3210 = !DILocation(line: 110, column: 50, scope: !3208)
!3211 = !DILocalVariable(name: "next", arg: 2, scope: !3208, file: !2964, line: 110, type: !137)
!3212 = !DILocation(line: 110, column: 75, scope: !3208)
!3213 = !DILocation(line: 112, column: 15, scope: !3208)
!3214 = !DILocation(line: 112, column: 2, scope: !3208)
!3215 = !DILocation(line: 112, column: 8, scope: !3208)
!3216 = !DILocation(line: 112, column: 13, scope: !3208)
!3217 = !DILocation(line: 113, column: 2, scope: !3208)
!3218 = !DILocation(line: 113, column: 2, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !3208, file: !2964, line: 113, column: 2)
!3220 = !DILocation(line: 113, column: 2, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3219, file: !2964, line: 113, column: 2)
!3222 = !DILocation(line: 113, column: 2, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !3219, file: !2964, line: 113, column: 2)
!3224 = !DILocation(line: 114, column: 1, scope: !3208)
