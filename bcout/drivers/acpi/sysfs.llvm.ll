; ModuleID = '../bcout/drivers/acpi/sysfs.llvm.bc'
source_filename = "drivers/acpi/sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon }
%struct.module = type opaque
%union.anon = type { i8* }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.file = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.38, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
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
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.vdso_image = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.19, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.2 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.kernel_siginfo = type { %struct.anon.7 }
%struct.anon.7 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.11 }
%struct.anon.11 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.rseq = type { i32, i32, %union.anon.18, i32, [12 x i8] }
%union.anon.18 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.19 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.20, %union.anon.33, %struct.atomic_t, [8 x i8] }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type opaque
%union.anon.33 = type { %struct.atomic_t }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.34, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.37 }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { i64, i64 }
%union.anon.37 = type { [12 x i32] }
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
%struct.anon.38 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type opaque
%struct.atomic64_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.0, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.0 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.seq_file = type opaque
%struct.poll_table_struct = type opaque
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }
%struct.event_counter = type { i32, i32 }
%struct.kobj_attribute = type { %struct.attribute, i64 (%struct.kobject*, %struct.kobj_attribute*, i8*)*, i64 (%struct.kobject*, %struct.kobj_attribute*, i8*, i64)* }
%struct.kmem_cache = type opaque
%struct.acpi_data_obj = type { i8*, i32 (i8*, %struct.acpi_data_attr*)* }
%struct.acpi_data_attr = type { %struct.bin_attribute, i64 }
%struct.acpi_table_fadt = type <{ %struct.acpi_table_header, i32, i32, i8, i8, i16, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i16, i8, i32, %struct.acpi_generic_address, i8, i16, i8, i64, i64, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, i64 }>
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.acpi_generic_address = type <{ i8, i8, i8, i8, i64 }>
%struct.acpi_table_attr = type { %struct.bin_attribute, [4 x i8], i32, [8 x i8], %struct.list_head }
%struct.acpi_hotplug_profile = type { %struct.kobject, i32 (%struct.acpi_device*)*, void (%struct.acpi_device*)*, i8 }
%struct.acpi_device = type { i32, i8*, %struct.fwnode_handle, %struct.acpi_device*, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.acpi_device_status, %struct.acpi_device_flags, %struct.acpi_device_pnp, %struct.acpi_device_power, %struct.acpi_device_wakeup, %struct.acpi_device_perf, %struct.acpi_device_dir, %struct.acpi_device_data, %struct.acpi_scan_handler*, %struct.acpi_hotplug_context*, %struct.acpi_driver*, %struct.acpi_gpio_mapping*, i8*, %struct.device, i32, i32, %struct.list_head, %struct.mutex, void (%struct.acpi_device*)* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.acpi_device_status = type { i32 }
%struct.acpi_device_flags = type { i32 }
%struct.acpi_device_pnp = type { [8 x i8], %struct.acpi_pnp_type, i64, i8*, %struct.list_head, [40 x i8], [20 x i8], %union.acpi_object* }
%struct.acpi_pnp_type = type { i32 }
%union.acpi_object = type { %struct.anon.44 }
%struct.anon.44 = type { i32, i32, i64, i32 }
%struct.acpi_device_power = type { i32, %struct.acpi_device_power_flags, [5 x %struct.acpi_device_power_state] }
%struct.acpi_device_power_flags = type { i32 }
%struct.acpi_device_power_state = type { %struct.anon.46, i32, i32, %struct.list_head }
%struct.anon.46 = type { i8 }
%struct.acpi_device_wakeup = type { i8*, i64, i64, %struct.list_head, %struct.acpi_device_wakeup_flags, %struct.acpi_device_wakeup_context, %struct.wakeup_source*, i32, i32 }
%struct.acpi_device_wakeup_flags = type { i8 }
%struct.acpi_device_wakeup_context = type { void (%struct.acpi_device_wakeup_context*)*, %struct.device* }
%struct.wakeup_source = type { i8*, i32, %struct.list_head, %struct.spinlock, %struct.wake_irq*, %struct.timer_list, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.device*, i8 }
%struct.wake_irq = type opaque
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.acpi_device_perf = type { i32, %struct.acpi_device_perf_flags, i32, %struct.acpi_device_perf_state* }
%struct.acpi_device_perf_flags = type { i8 }
%struct.acpi_device_perf_state = type { %struct.anon.47, i8, i8, i32 }
%struct.anon.47 = type { i8 }
%struct.acpi_device_dir = type { %struct.proc_dir_entry* }
%struct.proc_dir_entry = type opaque
%struct.acpi_device_data = type { %union.acpi_object*, %struct.list_head, %union.acpi_object*, %struct.list_head }
%struct.acpi_scan_handler = type { %struct.acpi_device_id*, %struct.list_head, i1 (i8*, %struct.acpi_device_id**)*, i32 (%struct.acpi_device*, %struct.acpi_device_id*)*, void (%struct.acpi_device*)*, void (%struct.device*)*, void (%struct.device*)*, %struct.acpi_hotplug_profile }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.acpi_hotplug_context = type { %struct.acpi_device*, i32 (%struct.acpi_device*, i32)*, void (%struct.acpi_device*, i32)*, void (%struct.acpi_device*)* }
%struct.acpi_driver = type { [80 x i8], [80 x i8], %struct.acpi_device_id*, i32, %struct.acpi_device_ops, %struct.device_driver, %struct.module* }
%struct.acpi_device_ops = type { {}*, {}*, void (%struct.acpi_device*, i32)* }
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.driver_private = type opaque
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
%struct.acpi_table_bert = type { %struct.acpi_table_header, i32, i64 }

@__param_str_aml_debug_output = internal constant [22 x i8] c"acpi.aml_debug_output\00", align 16, !dbg !0
@param_ops_byte = external dso_local constant %struct.kernel_param_ops, align 8
@acpi_gbl_enable_aml_debug_object = external dso_local global i8, align 1
@__param_aml_debug_output = internal constant %struct.kernel_param { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__param_str_aml_debug_output, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_byte, i16 420, i8 -1, i8 0, %union.anon { i8* @acpi_gbl_enable_aml_debug_object } }, section "__param", align 8, !dbg !2460
@__UNIQUE_ID_aml_debug_outputtype169 = internal constant [36 x i8] c"acpi.parmtype=aml_debug_output:byte\00", section ".modinfo", align 1, !dbg !2512
@__UNIQUE_ID_aml_debug_output170 = internal constant [75 x i8] c"acpi.parm=aml_debug_output:To enable/disable the ACPI Debug Object output.\00", section ".modinfo", align 1, !dbg !2517
@__param_str_acpica_version = internal constant [20 x i8] c"acpi.acpica_version\00", align 16, !dbg !2573
@__param_ops_acpica_version = internal constant %struct.kernel_param_ops { i32 0, i32 (i8*, %struct.kernel_param*)* null, i32 (i8*, %struct.kernel_param*)* @param_get_acpica_version, void (i8*)* null }, align 8, !dbg !2576
@__param_acpica_version = internal constant %struct.kernel_param { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__param_str_acpica_version, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @__param_ops_acpica_version, i16 292, i8 -1, i8 0, %union.anon zeroinitializer }, section "__param", align 8, !dbg !2522
@dynamic_tables_kobj = internal global %struct.kobject* null, align 8, !dbg !2535
@acpi_table_attr_list = internal global %struct.list_head { %struct.list_head* @acpi_table_attr_list, %struct.list_head* @acpi_table_attr_list }, align 8, !dbg !2578
@__setup_str_acpi_gpe_set_masked_gpes = internal constant [15 x i8] c"acpi_mask_gpe=\00", section ".init.rodata", align 1, !dbg !2580
@__setup_acpi_gpe_set_masked_gpes = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__setup_str_acpi_gpe_set_masked_gpes, i32 0, i32 0), i32 (i8*)* @acpi_gpe_set_masked_gpes, i32 0 }, section ".init.setup", align 8, !dbg !2524
@acpi_masked_gpes_map = internal global [4 x i64] zeroinitializer, section ".init.data", align 16, !dbg !2570
@.str = private unnamed_addr constant [27 x i8] c"\016ACPI: Masking GPE 0x%x.\0A\00", align 1
@all_counters = internal global %struct.event_counter* null, align 8, !dbg !2543
@acpi_current_gpe_count = external dso_local global i32, align 4
@num_gpes = internal global i32 0, align 4, !dbg !2550
@num_counters = internal global i32 0, align 4, !dbg !2552
@all_attrs = internal global %struct.attribute** null, align 8, !dbg !2554
@counter_attrs = internal global %struct.kobj_attribute* null, align 8, !dbg !2556
@.str.1 = private unnamed_addr constant [8 x i8] c"gpe%02X\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"ff_pmtimer\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"ff_gbl_lock\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"ff_pwr_btn\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"ff_slp_btn\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"ff_rt_clk\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"gpe_all\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"sci\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"sci_not\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"bug%02X\00", align 1
@interrupt_stats_attr_group = internal global %struct.attribute_group { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0), i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** null, %struct.bin_attribute** null }, align 8, !dbg !2590
@acpi_kobj = external dso_local global %struct.kobject*, align 8
@hotplug_kobj = internal global %struct.kobject* null, align 8, !dbg !2537
@acpi_hotplug_profile_ktype = internal global %struct.kobj_type { void (%struct.kobject*)* null, %struct.sysfs_ops* @kobj_sysfs_ops, %struct.attribute** getelementptr inbounds ([2 x %struct.attribute*], [2 x %struct.attribute*]* @hotplug_profile_attrs, i32 0, i32 0), %struct.attribute_group** null, %struct.kobj_ns_type_operations* (%struct.kobject*)* null, i8* (%struct.kobject*)* null, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* null }, align 8, !dbg !2592
@.str.12 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"\013ACPI: ACPI: Unable to add hotplug profile '%s'\0A\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"hotplug\00", align 1
@force_remove_attr = internal constant %struct.kobj_attribute { %struct.attribute { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.44, i32 0, i32 0), i16 420 }, i64 (%struct.kobject*, %struct.kobj_attribute*, i8*)* @force_remove_show, i64 (%struct.kobject*, %struct.kobj_attribute*, i8*, i64)* @force_remove_store }, align 8, !dbg !2613
@pm_profile_attr = internal constant %struct.kobj_attribute { %struct.attribute { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i16 292 }, i64 (%struct.kobject*, %struct.kobj_attribute*, i8*)* @acpi_show_profile, i64 (%struct.kobject*, %struct.kobj_attribute*, i8*, i64)* null }, align 8, !dbg !2616
@acpi_irq_handled = dso_local global i32 0, align 4, !dbg !2539
@acpi_irq_not_handled = dso_local global i32 0, align 4, !dbg !2541
@.str.15 = private unnamed_addr constant [4 x i8] c"%x\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.16 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"\014ACPI: %4.4s: too many table instances\0A\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@acpi_gpe_count = internal global i32 0, align 4, !dbg !2585
@.str.19 = private unnamed_addr constant [4 x i8] c"%8u\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"  EN\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c" STS\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c" invalid     \00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c" enabled     \00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c" wake_enabled\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c" disabled    \00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c" masked  \00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c" unmasked\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_acpi_module_name = internal constant [6 x i8] c"sysfs\00", align 1, !dbg !2587
@.str.30 = private unnamed_addr constant [17 x i8] c"Invalid GPE 0x%x\00", align 1
@.str.31 = private unnamed_addr constant [55 x i8] c"\014ACPI: Can not change Invalid GPE/Fixed Event status\0A\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"disable\0A\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"enable\0A\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"clear\0A\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"mask\0A\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"unmask\0A\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"interrupts\00", align 1
@kobj_sysfs_ops = external dso_local constant %struct.sysfs_ops, align 8
@hotplug_profile_attrs = internal global [2 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.kobj_attribute, %struct.kobj_attribute* @hotplug_enabled_attr, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !2594
@hotplug_enabled_attr = internal global %struct.kobj_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), i16 420 }, i64 (%struct.kobject*, %struct.kobj_attribute*, i8*)* @hotplug_enabled_show, i64 (%struct.kobject*, %struct.kobj_attribute*, i8*, i64)* @hotplug_enabled_store }, align 8, !dbg !2597
@.str.38 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"tables\00", align 1
@tables_kobj = internal global %struct.kobject* null, align 8, !dbg !2599
@.str.41 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@tables_data_kobj = internal global %struct.kobject* null, align 8, !dbg !2601
@.str.42 = private unnamed_addr constant [8 x i8] c"dynamic\00", align 1
@acpi_data_objs = internal global [1 x %struct.acpi_data_obj] [%struct.acpi_data_obj { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i32 (i8*, %struct.acpi_data_attr*)* @acpi_bert_data_init }], align 16, !dbg !2603
@.str.43 = private unnamed_addr constant [5 x i8] c"BERT\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"force_remove\00", align 1
@.str.45 = private unnamed_addr constant [137 x i8] c"\013ACPI: Enabling force_remove is not supported anymore. Please report to linux-acpi@vger.kernel.org if you depend on this functionality\0A\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"pm_profile\00", align 1
@acpi_gbl_FADT = external dso_local global %struct.acpi_table_fadt, align 1
@llvm.used = appending global [6 x i8*] [i8* bitcast (%struct.kernel_param* @__param_aml_debug_output to i8*), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__UNIQUE_ID_aml_debug_outputtype169, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @__UNIQUE_ID_aml_debug_output170, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_acpica_version to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_acpi_gpe_set_masked_gpes to i8*), i8* bitcast (void ()* @interrupt_stats_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_sysfs_table_handler(i32 %event, i8* %table, i8* %context) #0 !dbg !2626 {
entry:
  %retval = alloca i32, align 4
  %event.addr = alloca i32, align 4
  %table.addr = alloca i8*, align 8
  %context.addr = alloca i8*, align 8
  %table_attr = alloca %struct.acpi_table_attr*, align 8
  store i32 %event, i32* %event.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %event.addr, metadata !2629, metadata !DIExpression()), !dbg !2630
  store i8* %table, i8** %table.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %table.addr, metadata !2631, metadata !DIExpression()), !dbg !2632
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !2633, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.declare(metadata %struct.acpi_table_attr** %table_attr, metadata !2635, metadata !DIExpression()), !dbg !2636
  %0 = load i32, i32* %event.addr, align 4, !dbg !2637
  switch i32 %0, label %sw.default [
    i32 2, label %sw.bb
    i32 0, label %sw.bb5
    i32 1, label %sw.bb5
    i32 3, label %sw.bb5
  ], !dbg !2638

sw.bb:                                            ; preds = %entry
  %call = call i8* @kzalloc(i64 88, i32 3264) #8, !dbg !2639
  %1 = bitcast i8* %call to %struct.acpi_table_attr*, !dbg !2639
  store %struct.acpi_table_attr* %1, %struct.acpi_table_attr** %table_attr, align 8, !dbg !2641
  %2 = load %struct.acpi_table_attr*, %struct.acpi_table_attr** %table_attr, align 8, !dbg !2642
  %tobool = icmp ne %struct.acpi_table_attr* %2, null, !dbg !2642
  br i1 %tobool, label %if.end, label %if.then, !dbg !2644

if.then:                                          ; preds = %sw.bb
  store i32 4, i32* %retval, align 4, !dbg !2645
  br label %return, !dbg !2645

if.end:                                           ; preds = %sw.bb
  %3 = load %struct.kobject*, %struct.kobject** @dynamic_tables_kobj, align 8, !dbg !2646
  %4 = load %struct.acpi_table_attr*, %struct.acpi_table_attr** %table_attr, align 8, !dbg !2648
  %5 = load i8*, i8** %table.addr, align 8, !dbg !2649
  %6 = bitcast i8* %5 to %struct.acpi_table_header*, !dbg !2649
  %call1 = call i32 @acpi_table_attr_init(%struct.kobject* %3, %struct.acpi_table_attr* %4, %struct.acpi_table_header* %6) #8, !dbg !2650
  %tobool2 = icmp ne i32 %call1, 0, !dbg !2650
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !2651

if.then3:                                         ; preds = %if.end
  %7 = load %struct.acpi_table_attr*, %struct.acpi_table_attr** %table_attr, align 8, !dbg !2652
  %8 = bitcast %struct.acpi_table_attr* %7 to i8*, !dbg !2652
  call void @kfree(i8* %8) #8, !dbg !2654
  store i32 1, i32* %retval, align 4, !dbg !2655
  br label %return, !dbg !2655

if.end4:                                          ; preds = %if.end
  %9 = load %struct.acpi_table_attr*, %struct.acpi_table_attr** %table_attr, align 8, !dbg !2656
  %node = getelementptr inbounds %struct.acpi_table_attr, %struct.acpi_table_attr* %9, i32 0, i32 4, !dbg !2657
  call void @list_add_tail(%struct.list_head* %node, %struct.list_head* @acpi_table_attr_list) #8, !dbg !2658
  br label %sw.epilog, !dbg !2659

sw.bb5:                                           ; preds = %entry, %entry, %entry
  br label %sw.epilog, !dbg !2660

sw.default:                                       ; preds = %entry
  store i32 4097, i32* %retval, align 4, !dbg !2661
  br label %return, !dbg !2661

sw.epilog:                                        ; preds = %sw.bb5, %if.end4
  store i32 0, i32* %retval, align 4, !dbg !2662
  br label %return, !dbg !2662

return:                                           ; preds = %sw.epilog, %sw.default, %if.then3, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !2663
  ret i32 %10, !dbg !2663
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !2664 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2667, metadata !DIExpression()), !dbg !2671
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2677, metadata !DIExpression()), !dbg !2678
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2679, metadata !DIExpression()), !dbg !2680
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2681, metadata !DIExpression()), !dbg !2682
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2683, metadata !DIExpression()), !dbg !2687
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2689, metadata !DIExpression()), !dbg !2693
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2695, metadata !DIExpression()), !dbg !2699
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !2704, metadata !DIExpression()), !dbg !2705
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !2706, metadata !DIExpression()), !dbg !2707
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2708, metadata !DIExpression()), !dbg !2709
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !2710, metadata !DIExpression()), !dbg !2711
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !2712, metadata !DIExpression()), !dbg !2713
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2714, metadata !DIExpression()), !dbg !2715
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !2716, metadata !DIExpression()), !dbg !2717
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !2718, metadata !DIExpression()), !dbg !2719
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2720, metadata !DIExpression()), !dbg !2721
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2722, metadata !DIExpression()), !dbg !2723
  %0 = load i64, i64* %size.addr, align 8, !dbg !2724
  %1 = load i32, i32* %flags.addr, align 4, !dbg !2725
  %or = or i32 %1, 256, !dbg !2726
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !2727
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #9, !dbg !2728
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !2729

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !2730
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !2731
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !2732

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !2733
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !2734
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !2735
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !2736
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !2713
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !2737
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !2738
  %10 = load i32, i32* %order.i.i, align 4, !dbg !2739
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !2740
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !2741
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !2742
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !2743
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !2743
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !2743
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !2743
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !2743
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !2744
  br label %kmalloc.exit, !dbg !2744

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !2745
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2746
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !2746
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !2748

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !2749
  br label %kmalloc_index.exit.i, !dbg !2749

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2750
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !2752
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !2753

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2754
  br label %kmalloc_index.exit.i, !dbg !2754

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2755
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !2757
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !2758

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2759
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !2760
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !2761

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !2762
  br label %kmalloc_index.exit.i, !dbg !2762

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2763
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !2765
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !2766

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2767
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !2768
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !2769

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !2770
  br label %kmalloc_index.exit.i, !dbg !2770

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2771
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !2773
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !2774

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2775
  br label %kmalloc_index.exit.i, !dbg !2775

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2776
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !2778
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !2779

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !2780
  br label %kmalloc_index.exit.i, !dbg !2780

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2781
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !2783
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !2784

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !2785
  br label %kmalloc_index.exit.i, !dbg !2785

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2786
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !2788
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !2789

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !2790
  br label %kmalloc_index.exit.i, !dbg !2790

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2791
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !2793
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !2794

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !2795
  br label %kmalloc_index.exit.i, !dbg !2795

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2796
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !2798
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !2799

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !2800
  br label %kmalloc_index.exit.i, !dbg !2800

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2801
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !2803
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !2804

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !2805
  br label %kmalloc_index.exit.i, !dbg !2805

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2806
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !2808
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !2809

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !2810
  br label %kmalloc_index.exit.i, !dbg !2810

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2811
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !2813
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !2814

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !2815
  br label %kmalloc_index.exit.i, !dbg !2815

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2816
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !2818
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !2819

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !2820
  br label %kmalloc_index.exit.i, !dbg !2820

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2821
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !2823
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !2824

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !2825
  br label %kmalloc_index.exit.i, !dbg !2825

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2826
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !2828
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !2829

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !2830
  br label %kmalloc_index.exit.i, !dbg !2830

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2831
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !2833
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !2834

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !2835
  br label %kmalloc_index.exit.i, !dbg !2835

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2836
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !2838
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !2839

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !2840
  br label %kmalloc_index.exit.i, !dbg !2840

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2841
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !2843
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !2844

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !2845
  br label %kmalloc_index.exit.i, !dbg !2845

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2846
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !2848
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !2849

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !2850
  br label %kmalloc_index.exit.i, !dbg !2850

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2851
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !2853
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !2854

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !2855
  br label %kmalloc_index.exit.i, !dbg !2855

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2856
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !2858
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !2859

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !2860
  br label %kmalloc_index.exit.i, !dbg !2860

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2861
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !2863
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !2864

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !2865
  br label %kmalloc_index.exit.i, !dbg !2865

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2866
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !2868
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !2869

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !2870
  br label %kmalloc_index.exit.i, !dbg !2870

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2871
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !2873
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !2874

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !2875
  br label %kmalloc_index.exit.i, !dbg !2875

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2876
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !2878
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !2879

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !2880
  br label %kmalloc_index.exit.i, !dbg !2880

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2881
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !2883
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !2884

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !2885
  br label %kmalloc_index.exit.i, !dbg !2885

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2886
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !2888
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !2889

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !2890
  br label %kmalloc_index.exit.i, !dbg !2890

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !2891, !srcloc !2894
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 102) #9, !dbg !2895, !srcloc !2898
  unreachable, !dbg !2899

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !2900
  store i32 %45, i32* %index.i, align 4, !dbg !2901
  %46 = load i32, i32* %index.i, align 4, !dbg !2902
  %tobool.i = icmp ne i32 %46, 0, !dbg !2902
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !2904

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !2905
  br label %kmalloc.exit, !dbg !2905

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !2906
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2907
  %and.i.i = and i32 %48, 17, !dbg !2907
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !2907
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !2907
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !2907
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !2907
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !2909

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !2910
  br label %kmalloc_type.exit.i, !dbg !2910

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2911
  %and2.i.i = and i32 %49, 1, !dbg !2912
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !2911
  %50 = zext i1 %tobool3.i.i to i64, !dbg !2911
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !2911
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !2913
  br label %kmalloc_type.exit.i, !dbg !2913

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !2914
  %idxprom.i = zext i32 %51 to i64, !dbg !2915
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !2915
  %52 = load i32, i32* %index.i, align 4, !dbg !2916
  %idxprom6.i = zext i32 %52 to i64, !dbg !2915
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !2915
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !2915
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !2917
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !2918
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2919
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2920
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !2921
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !2921
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !2921
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !2921
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !2921
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !2682
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2922
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !2923
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !2924
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2925
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !2926
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !2927
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !2928
  store i8* %62, i8** %retval.i, align 8, !dbg !2929
  br label %kmalloc.exit, !dbg !2929

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !2930
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !2931
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !2932
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !2932
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !2932
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !2932
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !2932
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !2933
  br label %kmalloc.exit, !dbg !2933

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !2934
  ret i8* %65, !dbg !2935
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_table_attr_init(%struct.kobject* %tables_obj, %struct.acpi_table_attr* %table_attr, %struct.acpi_table_header* %table_header) #0 !dbg !2936 {
entry:
  %retval = alloca i32, align 4
  %tables_obj.addr = alloca %struct.kobject*, align 8
  %table_attr.addr = alloca %struct.acpi_table_attr*, align 8
  %table_header.addr = alloca %struct.acpi_table_header*, align 8
  %header = alloca %struct.acpi_table_header*, align 8
  %attr = alloca %struct.acpi_table_attr*, align 8
  %instance_str = alloca [4 x i8], align 1
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_table_attr*, align 8
  %__mptr15 = alloca i8*, align 8
  %tmp19 = alloca %struct.acpi_table_attr*, align 8
  store %struct.kobject* %tables_obj, %struct.kobject** %tables_obj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %tables_obj.addr, metadata !2953, metadata !DIExpression()), !dbg !2954
  store %struct.acpi_table_attr* %table_attr, %struct.acpi_table_attr** %table_attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_table_attr** %table_attr.addr, metadata !2955, metadata !DIExpression()), !dbg !2956
  store %struct.acpi_table_header* %table_header, %struct.acpi_table_header** %table_header.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_table_header** %table_header.addr, metadata !2957, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.declare(metadata %struct.acpi_table_header** %header, metadata !2959, metadata !DIExpression()), !dbg !2960
  store %struct.acpi_table_header* null, %struct.acpi_table_header** %header, align 8, !dbg !2960
  call void @llvm.dbg.declare(metadata %struct.acpi_table_attr** %attr, metadata !2961, metadata !DIExpression()), !dbg !2962
  store %struct.acpi_table_attr* null, %struct.acpi_table_attr** %attr, align 8, !dbg !2962
  call void @llvm.dbg.declare(metadata [4 x i8]* %instance_str, metadata !2963, metadata !DIExpression()), !dbg !2964
  br label %do.body, !dbg !2965

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2966

do.end:                                           ; preds = %do.body
  %0 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table_header.addr, align 8, !dbg !2968
  %signature = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %0, i32 0, i32 0, !dbg !2968
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %signature, i64 0, i64 0, !dbg !2968
  %1 = bitcast i8* %arraydecay to i32*, !dbg !2968
  %2 = load i32, i32* %1, align 4, !dbg !2968
  %3 = load %struct.acpi_table_attr*, %struct.acpi_table_attr** %table_attr.addr, align 8, !dbg !2968
  %name = getelementptr inbounds %struct.acpi_table_attr, %struct.acpi_table_attr* %3, i32 0, i32 1, !dbg !2968
  %arraydecay1 = getelementptr inbounds [4 x i8], [4 x i8]* %name, i64 0, i64 0, !dbg !2968
  %4 = bitcast i8* %arraydecay1 to i32*, !dbg !2968
  store i32 %2, i32* %4, align 4, !dbg !2968
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2969, metadata !DIExpression()), !dbg !2972
  %5 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @acpi_table_attr_list, i32 0, i32 0), align 8, !dbg !2972
  %6 = bitcast %struct.list_head* %5 to i8*, !dbg !2972
  store i8* %6, i8** %__mptr, align 8, !dbg !2972
  br label %do.body2, !dbg !2972

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !2973

do.end3:                                          ; preds = %do.body2
  %7 = load i8*, i8** %__mptr, align 8, !dbg !2972
  %add.ptr = getelementptr i8, i8* %7, i64 -72, !dbg !2972
  %8 = bitcast i8* %add.ptr to %struct.acpi_table_attr*, !dbg !2972
  store %struct.acpi_table_attr* %8, %struct.acpi_table_attr** %tmp, align 8, !dbg !2973
  %9 = load %struct.acpi_table_attr*, %struct.acpi_table_attr** %tmp, align 8, !dbg !2972
  store %struct.acpi_table_attr* %9, %struct.acpi_table_attr** %attr, align 8, !dbg !2975
  br label %for.cond, !dbg !2975

for.cond:                                         ; preds = %do.end18, %do.end3
  %10 = load %struct.acpi_table_attr*, %struct.acpi_table_attr** %attr, align 8, !dbg !2976
  %node = getelementptr inbounds %struct.acpi_table_attr, %struct.acpi_table_attr* %10, i32 0, i32 4, !dbg !2976
  %cmp = icmp eq %struct.list_head* %node, @acpi_table_attr_list, !dbg !2976
  %lnot = xor i1 %cmp, true, !dbg !2976
  br i1 %lnot, label %for.body, label %for.end, !dbg !2975

for.body:                                         ; preds = %for.cond
  %11 = load %struct.acpi_table_attr*, %struct.acpi_table_attr** %table_attr.addr, align 8, !dbg !2978
  %name4 = getelementptr inbounds %struct.acpi_table_attr, %struct.acpi_table_attr* %11, i32 0, i32 1, !dbg !2978
  %arraydecay5 = getelementptr inbounds [4 x i8], [4 x i8]* %name4, i64 0, i64 0, !dbg !2978
  %12 = bitcast i8* %arraydecay5 to i32*, !dbg !2978
  %13 = load i32, i32* %12, align 4, !dbg !2978
  %14 = load %struct.acpi_table_attr*, %struct.acpi_table_attr** %attr, align 8, !dbg !2978
  %name6 = getelementptr inbounds %struct.acpi_table_attr, %struct.acpi_table_attr* %14, i32 0, i32 1, !dbg !2978
  %arraydecay7 = getelementptr inbounds [4 x i8], [4 x i8]* %name6, i64 0, i64 0, !dbg !2978
  %15 = bitcast i8* %arraydecay7 to i32*, !dbg !2978
  %16 = load i32, i32* %15, align 4, !dbg !2978
  %cmp8 = icmp eq i32 %13, %16, !dbg !2978
  br i1 %cmp8, label %if.then, label %if.end14, !dbg !2981

if.then:                                          ; preds = %for.body
  %17 = load %struct.acpi_table_attr*, %struct.acpi_table_attr** %table_attr.addr, align 8, !dbg !2982
  %instance = getelementptr inbounds %struct.acpi_table_attr, %struct.acpi_table_attr* %17, i32 0, i32 2, !dbg !2984
  %18 = load i32, i32* %instance, align 4, !dbg !2984
  %19 = load %struct.acpi_table_attr*, %struct.acpi_table_attr** %attr, align 8, !dbg !2985
  %instance9 = getelementptr inbounds %struct.acpi_table_attr, %struct.acpi_table_attr* %19, i32 0, i32 2, !dbg !2986
  %20 = load i32, i32* %instance9, align 4, !dbg !2986
  %cmp10 = icmp slt i32 %18, %20, !dbg !2987
  br i1 %cmp10, label %if.then11, label %if.end, !dbg !2988

if.then11:                                        ; preds = %if.then
  %21 = load %struct.acpi_table_attr*, %struct.acpi_table_attr** %attr, align 8, !dbg !2989
  %instance12 = getelementptr inbounds %struct.acpi_table_attr, %struct.acpi_table_attr* %21, i32 0, i32 2, !dbg !2990
  %22 = load i32, i32* %instance12, align 4, !dbg !2990
  %23 = load %struct.acpi_table_attr*, %struct.acpi_table_attr** %table_attr.addr, align 8, !dbg !2991
  %instance13 = getelementptr inbounds %struct.acpi_table_attr, %struct.acpi_table_attr* %23, i32 0, i32 2, !dbg !2992
  store i32 %22, i32* %instance13, align 4, !dbg !2993
  br label %if.end, !dbg !2991

if.end:                                           ; preds = %if.then11, %if.then
  br label %if.end14, !dbg !2986

if.end14:                                         ; preds = %if.end, %for.body
  br label %for.inc, !dbg !2994

for.inc:                                          ; preds = %if.end14
  call void @llvm.dbg.declare(metadata i8** %__mptr15, metadata !2995, metadata !DIExpression()), !dbg !2997
  %24 = load %struct.acpi_table_attr*, %struct.acpi_table_attr** %attr, align 8, !dbg !2997
  %node16 = getelementptr inbounds %struct.acpi_table_attr, %struct.acpi_table_attr* %24, i32 0, i32 4, !dbg !2997
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %node16, i32 0, i32 0, !dbg !2997
  %25 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2997
  %26 = bitcast %struct.list_head* %25 to i8*, !dbg !2997
  store i8* %26, i8** %__mptr15, align 8, !dbg !2997
  br label %do.body17, !dbg !2997

do.body17:                                        ; preds = %for.inc
  br label %do.end18, !dbg !2998

do.end18:                                         ; preds = %do.body17
  %27 = load i8*, i8** %__mptr15, align 8, !dbg !2997
  %add.ptr20 = getelementptr i8, i8* %27, i64 -72, !dbg !2997
  %28 = bitcast i8* %add.ptr20 to %struct.acpi_table_attr*, !dbg !2997
  store %struct.acpi_table_attr* %28, %struct.acpi_table_attr** %tmp19, align 8, !dbg !2998
  %29 = load %struct.acpi_table_attr*, %struct.acpi_table_attr** %tmp19, align 8, !dbg !2997
  store %struct.acpi_table_attr* %29, %struct.acpi_table_attr** %attr, align 8, !dbg !2976
  br label %for.cond, !dbg !2976, !llvm.loop !3000

for.end:                                          ; preds = %for.cond
  %30 = load %struct.acpi_table_attr*, %struct.acpi_table_attr** %table_attr.addr, align 8, !dbg !3002
  %instance21 = getelementptr inbounds %struct.acpi_table_attr, %struct.acpi_table_attr* %30, i32 0, i32 2, !dbg !3003
  %31 = load i32, i32* %instance21, align 4, !dbg !3004
  %inc = add i32 %31, 1, !dbg !3004
  store i32 %inc, i32* %instance21, align 4, !dbg !3004
  %32 = load %struct.acpi_table_attr*, %struct.acpi_table_attr** %table_attr.addr, align 8, !dbg !3005
  %instance22 = getelementptr inbounds %struct.acpi_table_attr, %struct.acpi_table_attr* %32, i32 0, i32 2, !dbg !3007
  %33 = load i32, i32* %instance22, align 4, !dbg !3007
  %cmp23 = icmp sgt i32 %33, 999, !dbg !3008
  br i1 %cmp23, label %if.then24, label %if.end27, !dbg !3009

if.then24:                                        ; preds = %for.end
  %34 = load %struct.acpi_table_attr*, %struct.acpi_table_attr** %table_attr.addr, align 8, !dbg !3010
  %name25 = getelementptr inbounds %struct.acpi_table_attr, %struct.acpi_table_attr* %34, i32 0, i32 1, !dbg !3010
  %arraydecay26 = getelementptr inbounds [4 x i8], [4 x i8]* %name25, i64 0, i64 0, !dbg !3010
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i64 0, i64 0), i8* %arraydecay26) #12, !dbg !3010
  store i32 -34, i32* %retval, align 4, !dbg !3012
  br label %return, !dbg !3012

if.end27:                                         ; preds = %for.end
  %35 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table_header.addr, align 8, !dbg !3013
  %signature28 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %35, i32 0, i32 0, !dbg !3013
  %arraydecay29 = getelementptr inbounds [4 x i8], [4 x i8]* %signature28, i64 0, i64 0, !dbg !3013
  %36 = bitcast i8* %arraydecay29 to i32*, !dbg !3013
  %37 = load i32, i32* %36, align 4, !dbg !3013
  %38 = load %struct.acpi_table_attr*, %struct.acpi_table_attr** %table_attr.addr, align 8, !dbg !3013
  %filename = getelementptr inbounds %struct.acpi_table_attr, %struct.acpi_table_attr* %38, i32 0, i32 3, !dbg !3013
  %arraydecay30 = getelementptr inbounds [8 x i8], [8 x i8]* %filename, i64 0, i64 0, !dbg !3013
  %39 = bitcast i8* %arraydecay30 to i32*, !dbg !3013
  store i32 %37, i32* %39, align 4, !dbg !3013
  %40 = load %struct.acpi_table_attr*, %struct.acpi_table_attr** %table_attr.addr, align 8, !dbg !3014
  %filename31 = getelementptr inbounds %struct.acpi_table_attr, %struct.acpi_table_attr* %40, i32 0, i32 3, !dbg !3015
  %arrayidx = getelementptr [8 x i8], [8 x i8]* %filename31, i64 0, i64 4, !dbg !3014
  store i8 0, i8* %arrayidx, align 4, !dbg !3016
  %41 = load %struct.acpi_table_attr*, %struct.acpi_table_attr** %table_attr.addr, align 8, !dbg !3017
  %instance32 = getelementptr inbounds %struct.acpi_table_attr, %struct.acpi_table_attr* %41, i32 0, i32 2, !dbg !3019
  %42 = load i32, i32* %instance32, align 4, !dbg !3019
  %cmp33 = icmp sgt i32 %42, 1, !dbg !3020
  br i1 %cmp33, label %if.then39, label %lor.lhs.false, !dbg !3021

lor.lhs.false:                                    ; preds = %if.end27
  %43 = load %struct.acpi_table_attr*, %struct.acpi_table_attr** %table_attr.addr, align 8, !dbg !3022
  %instance34 = getelementptr inbounds %struct.acpi_table_attr, %struct.acpi_table_attr* %43, i32 0, i32 2, !dbg !3023
  %44 = load i32, i32* %instance34, align 4, !dbg !3023
  %cmp35 = icmp eq i32 %44, 1, !dbg !3024
  br i1 %cmp35, label %land.lhs.true, label %if.end47, !dbg !3025

land.lhs.true:                                    ; preds = %lor.lhs.false
  %45 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table_header.addr, align 8, !dbg !3026
  %signature36 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %45, i32 0, i32 0, !dbg !3027
  %arraydecay37 = getelementptr inbounds [4 x i8], [4 x i8]* %signature36, i64 0, i64 0, !dbg !3026
  %call38 = call i32 @acpi_get_table(i8* %arraydecay37, i32 2, %struct.acpi_table_header** %header) #8, !dbg !3028
  %tobool = icmp ne i32 %call38, 0, !dbg !3028
  br i1 %tobool, label %if.end47, label %if.then39, !dbg !3029

if.then39:                                        ; preds = %land.lhs.true, %if.end27
  %arraydecay40 = getelementptr inbounds [4 x i8], [4 x i8]* %instance_str, i64 0, i64 0, !dbg !3030
  %46 = load %struct.acpi_table_attr*, %struct.acpi_table_attr** %table_attr.addr, align 8, !dbg !3032
  %instance41 = getelementptr inbounds %struct.acpi_table_attr, %struct.acpi_table_attr* %46, i32 0, i32 2, !dbg !3033
  %47 = load i32, i32* %instance41, align 4, !dbg !3033
  %call42 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay40, i64 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i32 %47) #8, !dbg !3034
  %48 = load %struct.acpi_table_attr*, %struct.acpi_table_attr** %table_attr.addr, align 8, !dbg !3035
  %filename43 = getelementptr inbounds %struct.acpi_table_attr, %struct.acpi_table_attr* %48, i32 0, i32 3, !dbg !3036
  %arraydecay44 = getelementptr inbounds [8 x i8], [8 x i8]* %filename43, i64 0, i64 0, !dbg !3035
  %arraydecay45 = getelementptr inbounds [4 x i8], [4 x i8]* %instance_str, i64 0, i64 0, !dbg !3037
  %call46 = call i8* @strcat(i8* %arraydecay44, i8* %arraydecay45) #8, !dbg !3038
  br label %if.end47, !dbg !3039

if.end47:                                         ; preds = %if.then39, %land.lhs.true, %lor.lhs.false
  %49 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table_header.addr, align 8, !dbg !3040
  %length = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %49, i32 0, i32 1, !dbg !3041
  %50 = load i32, i32* %length, align 1, !dbg !3041
  %conv = zext i32 %50 to i64, !dbg !3040
  %51 = load %struct.acpi_table_attr*, %struct.acpi_table_attr** %table_attr.addr, align 8, !dbg !3042
  %attr48 = getelementptr inbounds %struct.acpi_table_attr, %struct.acpi_table_attr* %51, i32 0, i32 0, !dbg !3043
  %size = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %attr48, i32 0, i32 1, !dbg !3044
  store i64 %conv, i64* %size, align 8, !dbg !3045
  %52 = load %struct.acpi_table_attr*, %struct.acpi_table_attr** %table_attr.addr, align 8, !dbg !3046
  %attr49 = getelementptr inbounds %struct.acpi_table_attr, %struct.acpi_table_attr* %52, i32 0, i32 0, !dbg !3047
  %read = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %attr49, i32 0, i32 3, !dbg !3048
  store i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @acpi_table_show, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)** %read, align 8, !dbg !3049
  %53 = load %struct.acpi_table_attr*, %struct.acpi_table_attr** %table_attr.addr, align 8, !dbg !3050
  %filename50 = getelementptr inbounds %struct.acpi_table_attr, %struct.acpi_table_attr* %53, i32 0, i32 3, !dbg !3051
  %arraydecay51 = getelementptr inbounds [8 x i8], [8 x i8]* %filename50, i64 0, i64 0, !dbg !3050
  %54 = load %struct.acpi_table_attr*, %struct.acpi_table_attr** %table_attr.addr, align 8, !dbg !3052
  %attr52 = getelementptr inbounds %struct.acpi_table_attr, %struct.acpi_table_attr* %54, i32 0, i32 0, !dbg !3053
  %attr53 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %attr52, i32 0, i32 0, !dbg !3054
  %name54 = getelementptr inbounds %struct.attribute, %struct.attribute* %attr53, i32 0, i32 0, !dbg !3055
  store i8* %arraydecay51, i8** %name54, align 8, !dbg !3056
  %55 = load %struct.acpi_table_attr*, %struct.acpi_table_attr** %table_attr.addr, align 8, !dbg !3057
  %attr55 = getelementptr inbounds %struct.acpi_table_attr, %struct.acpi_table_attr* %55, i32 0, i32 0, !dbg !3058
  %attr56 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %attr55, i32 0, i32 0, !dbg !3059
  %mode = getelementptr inbounds %struct.attribute, %struct.attribute* %attr56, i32 0, i32 1, !dbg !3060
  store i16 256, i16* %mode, align 8, !dbg !3061
  %56 = load %struct.kobject*, %struct.kobject** %tables_obj.addr, align 8, !dbg !3062
  %57 = load %struct.acpi_table_attr*, %struct.acpi_table_attr** %table_attr.addr, align 8, !dbg !3063
  %attr57 = getelementptr inbounds %struct.acpi_table_attr, %struct.acpi_table_attr* %57, i32 0, i32 0, !dbg !3064
  %call58 = call i32 @sysfs_create_bin_file(%struct.kobject* %56, %struct.bin_attribute* %attr57) #8, !dbg !3065
  store i32 %call58, i32* %retval, align 4, !dbg !3066
  br label %return, !dbg !3066

return:                                           ; preds = %if.end47, %if.then24
  %58 = load i32, i32* %retval, align 4, !dbg !3067
  ret i32 %58, !dbg !3067
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !3068 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !3072, metadata !DIExpression()), !dbg !3073
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !3074, metadata !DIExpression()), !dbg !3075
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3076
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !3077
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !3078
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !3078
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !3079
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #8, !dbg !3080
  ret void, !dbg !3081
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_gpe_set_masked_gpes(i8* %val) #3 section ".init.text" !dbg !3082 {
entry:
  %retval = alloca i32, align 4
  %val.addr = alloca i8*, align 8
  %gpe = alloca i8, align 1
  store i8* %val, i8** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %val.addr, metadata !3083, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.declare(metadata i8* %gpe, metadata !3085, metadata !DIExpression()), !dbg !3086
  %0 = load i8*, i8** %val.addr, align 8, !dbg !3087
  %call = call i32 @kstrtou8(i8* %0, i32 0, i8* %gpe) #8, !dbg !3089
  %tobool = icmp ne i32 %call, 0, !dbg !3089
  br i1 %tobool, label %if.then, label %if.end, !dbg !3090

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !3091
  br label %return, !dbg !3091

if.end:                                           ; preds = %entry
  %1 = load i8, i8* %gpe, align 1, !dbg !3092
  %conv = zext i8 %1 to i64, !dbg !3092
  call void @set_bit(i64 %conv, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @acpi_masked_gpes_map, i64 0, i64 0)) #8, !dbg !3093
  store i32 1, i32* %retval, align 4, !dbg !3094
  br label %return, !dbg !3094

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !3095
  ret i32 %2, !dbg !3095
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_gpe_apply_masked_gpes() #3 section ".init.text" !dbg !3096 {
entry:
  %handle = alloca i8*, align 8
  %status = alloca i32, align 4
  %gpe = alloca i16, align 2
  call void @llvm.dbg.declare(metadata i8** %handle, metadata !3099, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3101, metadata !DIExpression()), !dbg !3102
  call void @llvm.dbg.declare(metadata i16* %gpe, metadata !3103, metadata !DIExpression()), !dbg !3104
  %call = call i64 @find_first_bit(i64* getelementptr inbounds ([4 x i64], [4 x i64]* @acpi_masked_gpes_map, i64 0, i64 0), i64 256) #8, !dbg !3105
  %conv = trunc i64 %call to i16, !dbg !3105
  store i16 %conv, i16* %gpe, align 2, !dbg !3105
  br label %for.cond, !dbg !3105

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i16, i16* %gpe, align 2, !dbg !3107
  %conv1 = zext i16 %0 to i32, !dbg !3107
  %cmp = icmp slt i32 %conv1, 256, !dbg !3107
  br i1 %cmp, label %for.body, label %for.end, !dbg !3105

for.body:                                         ; preds = %for.cond
  %1 = load i16, i16* %gpe, align 2, !dbg !3109
  %conv3 = zext i16 %1 to i32, !dbg !3109
  %call4 = call i32 @acpi_get_gpe_device(i32 %conv3, i8** %handle) #8, !dbg !3111
  store i32 %call4, i32* %status, align 4, !dbg !3112
  %2 = load i32, i32* %status, align 4, !dbg !3113
  %tobool = icmp ne i32 %2, 0, !dbg !3113
  br i1 %tobool, label %if.end, label %if.then, !dbg !3115

if.then:                                          ; preds = %for.body
  %3 = load i16, i16* %gpe, align 2, !dbg !3116
  %conv5 = zext i16 %3 to i32, !dbg !3116
  %call6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %conv5) #12, !dbg !3116
  %4 = load i8*, i8** %handle, align 8, !dbg !3118
  %5 = load i16, i16* %gpe, align 2, !dbg !3119
  %conv7 = zext i16 %5 to i32, !dbg !3119
  %call8 = call i32 @acpi_mask_gpe(i8* %4, i32 %conv7, i8 zeroext 1) #8, !dbg !3120
  br label %if.end, !dbg !3121

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !3122

for.inc:                                          ; preds = %if.end
  %6 = load i16, i16* %gpe, align 2, !dbg !3107
  %conv9 = zext i16 %6 to i32, !dbg !3107
  %add = add i32 %conv9, 1, !dbg !3107
  %conv10 = sext i32 %add to i64, !dbg !3107
  %call11 = call i64 @find_next_bit(i64* getelementptr inbounds ([4 x i64], [4 x i64]* @acpi_masked_gpes_map, i64 0, i64 0), i64 256, i64 %conv10) #8, !dbg !3107
  %conv12 = trunc i64 %call11 to i16, !dbg !3107
  store i16 %conv12, i16* %gpe, align 2, !dbg !3107
  br label %for.cond, !dbg !3107, !llvm.loop !3123

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3125
}

; Function Attrs: noredzone
declare dso_local i64 @find_first_bit(i64*, i64) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_get_gpe_device(i32, i8**) #2

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

; Function Attrs: noredzone
declare dso_local i32 @acpi_mask_gpe(i8*, i32, i8 zeroext) #2

; Function Attrs: noredzone
declare dso_local i64 @find_next_bit(i64*, i64, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_irq_stats_init() #0 !dbg !3126 {
entry:
  %status = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [12 x i8], align 1
  %name = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3127, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3129, metadata !DIExpression()), !dbg !3130
  %0 = load %struct.event_counter*, %struct.event_counter** @all_counters, align 8, !dbg !3131
  %tobool = icmp ne %struct.event_counter* %0, null, !dbg !3131
  br i1 %tobool, label %if.then, label %if.end, !dbg !3133

if.then:                                          ; preds = %entry
  br label %return, !dbg !3134

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @acpi_current_gpe_count, align 4, !dbg !3135
  store i32 %1, i32* @num_gpes, align 4, !dbg !3136
  %2 = load i32, i32* @num_gpes, align 4, !dbg !3137
  %add = add i32 %2, 4, !dbg !3138
  %add1 = add i32 %add, 1, !dbg !3139
  %add2 = add i32 %add1, 4, !dbg !3140
  store i32 %add2, i32* @num_counters, align 4, !dbg !3141
  %3 = load i32, i32* @num_counters, align 4, !dbg !3142
  %add3 = add i32 %3, 1, !dbg !3143
  %conv = zext i32 %add3 to i64, !dbg !3142
  %call = call i8* @kcalloc(i64 %conv, i64 8, i32 3264) #8, !dbg !3144
  %4 = bitcast i8* %call to %struct.attribute**, !dbg !3144
  store %struct.attribute** %4, %struct.attribute*** @all_attrs, align 8, !dbg !3145
  %5 = load %struct.attribute**, %struct.attribute*** @all_attrs, align 8, !dbg !3146
  %cmp = icmp eq %struct.attribute** %5, null, !dbg !3148
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !3149

if.then5:                                         ; preds = %if.end
  br label %return, !dbg !3150

if.end6:                                          ; preds = %if.end
  %6 = load i32, i32* @num_counters, align 4, !dbg !3151
  %conv7 = zext i32 %6 to i64, !dbg !3151
  %call8 = call i8* @kcalloc(i64 %conv7, i64 8, i32 3264) #8, !dbg !3152
  %7 = bitcast i8* %call8 to %struct.event_counter*, !dbg !3152
  store %struct.event_counter* %7, %struct.event_counter** @all_counters, align 8, !dbg !3153
  %8 = load %struct.event_counter*, %struct.event_counter** @all_counters, align 8, !dbg !3154
  %cmp9 = icmp eq %struct.event_counter* %8, null, !dbg !3156
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !3157

if.then11:                                        ; preds = %if.end6
  br label %fail, !dbg !3158

if.end12:                                         ; preds = %if.end6
  %call13 = call i32 @acpi_install_global_event_handler(void (i32, i8*, i32, i8*)* @acpi_global_event_handler, i8* null) #8, !dbg !3159
  store i32 %call13, i32* %status, align 4, !dbg !3160
  %9 = load i32, i32* %status, align 4, !dbg !3161
  %tobool14 = icmp ne i32 %9, 0, !dbg !3161
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !3163

if.then15:                                        ; preds = %if.end12
  br label %fail, !dbg !3164

if.end16:                                         ; preds = %if.end12
  %10 = load i32, i32* @num_counters, align 4, !dbg !3165
  %conv17 = zext i32 %10 to i64, !dbg !3165
  %call18 = call i8* @kcalloc(i64 %conv17, i64 32, i32 3264) #8, !dbg !3166
  %11 = bitcast i8* %call18 to %struct.kobj_attribute*, !dbg !3166
  store %struct.kobj_attribute* %11, %struct.kobj_attribute** @counter_attrs, align 8, !dbg !3167
  %12 = load %struct.kobj_attribute*, %struct.kobj_attribute** @counter_attrs, align 8, !dbg !3168
  %cmp19 = icmp eq %struct.kobj_attribute* %12, null, !dbg !3170
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !3171

if.then21:                                        ; preds = %if.end16
  br label %fail, !dbg !3172

if.end22:                                         ; preds = %if.end16
  store i32 0, i32* %i, align 4, !dbg !3173
  br label %for.cond, !dbg !3175

for.cond:                                         ; preds = %for.inc, %if.end22
  %13 = load i32, i32* %i, align 4, !dbg !3176
  %14 = load i32, i32* @num_counters, align 4, !dbg !3178
  %cmp23 = icmp ult i32 %13, %14, !dbg !3179
  br i1 %cmp23, label %for.body, label %for.end, !dbg !3180

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata [12 x i8]* %buffer, metadata !3181, metadata !DIExpression()), !dbg !3184
  call void @llvm.dbg.declare(metadata i8** %name, metadata !3185, metadata !DIExpression()), !dbg !3186
  %15 = load i32, i32* %i, align 4, !dbg !3187
  %16 = load i32, i32* @num_gpes, align 4, !dbg !3189
  %cmp25 = icmp ult i32 %15, %16, !dbg !3190
  br i1 %cmp25, label %if.then27, label %if.else, !dbg !3191

if.then27:                                        ; preds = %for.body
  %arraydecay = getelementptr inbounds [12 x i8], [12 x i8]* %buffer, i64 0, i64 0, !dbg !3192
  %17 = load i32, i32* %i, align 4, !dbg !3193
  %call28 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %17) #8, !dbg !3194
  br label %if.end111, !dbg !3194

if.else:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !3195
  %19 = load i32, i32* @num_gpes, align 4, !dbg !3197
  %add29 = add i32 %19, 0, !dbg !3198
  %cmp30 = icmp eq i32 %18, %add29, !dbg !3199
  br i1 %cmp30, label %if.then32, label %if.else35, !dbg !3200

if.then32:                                        ; preds = %if.else
  %arraydecay33 = getelementptr inbounds [12 x i8], [12 x i8]* %buffer, i64 0, i64 0, !dbg !3201
  %call34 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !3202
  br label %if.end110, !dbg !3202

if.else35:                                        ; preds = %if.else
  %20 = load i32, i32* %i, align 4, !dbg !3203
  %21 = load i32, i32* @num_gpes, align 4, !dbg !3205
  %add36 = add i32 %21, 1, !dbg !3206
  %cmp37 = icmp eq i32 %20, %add36, !dbg !3207
  br i1 %cmp37, label %if.then39, label %if.else42, !dbg !3208

if.then39:                                        ; preds = %if.else35
  %arraydecay40 = getelementptr inbounds [12 x i8], [12 x i8]* %buffer, i64 0, i64 0, !dbg !3209
  %call41 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !3210
  br label %if.end109, !dbg !3210

if.else42:                                        ; preds = %if.else35
  %22 = load i32, i32* %i, align 4, !dbg !3211
  %23 = load i32, i32* @num_gpes, align 4, !dbg !3213
  %add43 = add i32 %23, 2, !dbg !3214
  %cmp44 = icmp eq i32 %22, %add43, !dbg !3215
  br i1 %cmp44, label %if.then46, label %if.else49, !dbg !3216

if.then46:                                        ; preds = %if.else42
  %arraydecay47 = getelementptr inbounds [12 x i8], [12 x i8]* %buffer, i64 0, i64 0, !dbg !3217
  %call48 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !3218
  br label %if.end108, !dbg !3218

if.else49:                                        ; preds = %if.else42
  %24 = load i32, i32* %i, align 4, !dbg !3219
  %25 = load i32, i32* @num_gpes, align 4, !dbg !3221
  %add50 = add i32 %25, 3, !dbg !3222
  %cmp51 = icmp eq i32 %24, %add50, !dbg !3223
  br i1 %cmp51, label %if.then53, label %if.else56, !dbg !3224

if.then53:                                        ; preds = %if.else49
  %arraydecay54 = getelementptr inbounds [12 x i8], [12 x i8]* %buffer, i64 0, i64 0, !dbg !3225
  %call55 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !3226
  br label %if.end107, !dbg !3226

if.else56:                                        ; preds = %if.else49
  %26 = load i32, i32* %i, align 4, !dbg !3227
  %27 = load i32, i32* @num_gpes, align 4, !dbg !3229
  %add57 = add i32 %27, 4, !dbg !3230
  %cmp58 = icmp eq i32 %26, %add57, !dbg !3231
  br i1 %cmp58, label %if.then60, label %if.else63, !dbg !3232

if.then60:                                        ; preds = %if.else56
  %arraydecay61 = getelementptr inbounds [12 x i8], [12 x i8]* %buffer, i64 0, i64 0, !dbg !3233
  %call62 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)) #8, !dbg !3234
  br label %if.end106, !dbg !3234

if.else63:                                        ; preds = %if.else56
  %28 = load i32, i32* %i, align 4, !dbg !3235
  %29 = load i32, i32* @num_gpes, align 4, !dbg !3237
  %add64 = add i32 %29, 4, !dbg !3238
  %add65 = add i32 %add64, 1, !dbg !3239
  %add66 = add i32 %add65, 0, !dbg !3240
  %cmp67 = icmp eq i32 %28, %add66, !dbg !3241
  br i1 %cmp67, label %if.then69, label %if.else72, !dbg !3242

if.then69:                                        ; preds = %if.else63
  %arraydecay70 = getelementptr inbounds [12 x i8], [12 x i8]* %buffer, i64 0, i64 0, !dbg !3243
  %call71 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)) #8, !dbg !3244
  br label %if.end105, !dbg !3244

if.else72:                                        ; preds = %if.else63
  %30 = load i32, i32* %i, align 4, !dbg !3245
  %31 = load i32, i32* @num_gpes, align 4, !dbg !3247
  %add73 = add i32 %31, 4, !dbg !3248
  %add74 = add i32 %add73, 1, !dbg !3249
  %add75 = add i32 %add74, 1, !dbg !3250
  %cmp76 = icmp eq i32 %30, %add75, !dbg !3251
  br i1 %cmp76, label %if.then78, label %if.else81, !dbg !3252

if.then78:                                        ; preds = %if.else72
  %arraydecay79 = getelementptr inbounds [12 x i8], [12 x i8]* %buffer, i64 0, i64 0, !dbg !3253
  %call80 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #8, !dbg !3254
  br label %if.end104, !dbg !3254

if.else81:                                        ; preds = %if.else72
  %32 = load i32, i32* %i, align 4, !dbg !3255
  %33 = load i32, i32* @num_gpes, align 4, !dbg !3257
  %add82 = add i32 %33, 4, !dbg !3258
  %add83 = add i32 %add82, 1, !dbg !3259
  %add84 = add i32 %add83, 2, !dbg !3260
  %cmp85 = icmp eq i32 %32, %add84, !dbg !3261
  br i1 %cmp85, label %if.then87, label %if.else90, !dbg !3262

if.then87:                                        ; preds = %if.else81
  %arraydecay88 = getelementptr inbounds [12 x i8], [12 x i8]* %buffer, i64 0, i64 0, !dbg !3263
  %call89 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay88, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)) #8, !dbg !3264
  br label %if.end103, !dbg !3264

if.else90:                                        ; preds = %if.else81
  %34 = load i32, i32* %i, align 4, !dbg !3265
  %35 = load i32, i32* @num_gpes, align 4, !dbg !3267
  %add91 = add i32 %35, 4, !dbg !3268
  %add92 = add i32 %add91, 1, !dbg !3269
  %add93 = add i32 %add92, 3, !dbg !3270
  %cmp94 = icmp eq i32 %34, %add93, !dbg !3271
  br i1 %cmp94, label %if.then96, label %if.else99, !dbg !3272

if.then96:                                        ; preds = %if.else90
  %arraydecay97 = getelementptr inbounds [12 x i8], [12 x i8]* %buffer, i64 0, i64 0, !dbg !3273
  %call98 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay97, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0)) #8, !dbg !3274
  br label %if.end102, !dbg !3274

if.else99:                                        ; preds = %if.else90
  %arraydecay100 = getelementptr inbounds [12 x i8], [12 x i8]* %buffer, i64 0, i64 0, !dbg !3275
  %36 = load i32, i32* %i, align 4, !dbg !3276
  %call101 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %36) #8, !dbg !3277
  br label %if.end102

if.end102:                                        ; preds = %if.else99, %if.then96
  br label %if.end103

if.end103:                                        ; preds = %if.end102, %if.then87
  br label %if.end104

if.end104:                                        ; preds = %if.end103, %if.then78
  br label %if.end105

if.end105:                                        ; preds = %if.end104, %if.then69
  br label %if.end106

if.end106:                                        ; preds = %if.end105, %if.then60
  br label %if.end107

if.end107:                                        ; preds = %if.end106, %if.then53
  br label %if.end108

if.end108:                                        ; preds = %if.end107, %if.then46
  br label %if.end109

if.end109:                                        ; preds = %if.end108, %if.then39
  br label %if.end110

if.end110:                                        ; preds = %if.end109, %if.then32
  br label %if.end111

if.end111:                                        ; preds = %if.end110, %if.then27
  %arraydecay112 = getelementptr inbounds [12 x i8], [12 x i8]* %buffer, i64 0, i64 0, !dbg !3278
  %call113 = call noalias i8* @kstrdup(i8* %arraydecay112, i32 3264) #8, !dbg !3279
  store i8* %call113, i8** %name, align 8, !dbg !3280
  %37 = load i8*, i8** %name, align 8, !dbg !3281
  %cmp114 = icmp eq i8* %37, null, !dbg !3283
  br i1 %cmp114, label %if.then116, label %if.end117, !dbg !3284

if.then116:                                       ; preds = %if.end111
  br label %fail, !dbg !3285

if.end117:                                        ; preds = %if.end111
  br label %do.body, !dbg !3286

do.body:                                          ; preds = %if.end117
  br label %do.end, !dbg !3287

do.end:                                           ; preds = %do.body
  %38 = load i8*, i8** %name, align 8, !dbg !3289
  %39 = load %struct.kobj_attribute*, %struct.kobj_attribute** @counter_attrs, align 8, !dbg !3290
  %40 = load i32, i32* %i, align 4, !dbg !3291
  %idxprom = sext i32 %40 to i64, !dbg !3290
  %arrayidx = getelementptr %struct.kobj_attribute, %struct.kobj_attribute* %39, i64 %idxprom, !dbg !3290
  %attr = getelementptr inbounds %struct.kobj_attribute, %struct.kobj_attribute* %arrayidx, i32 0, i32 0, !dbg !3292
  %name118 = getelementptr inbounds %struct.attribute, %struct.attribute* %attr, i32 0, i32 0, !dbg !3293
  store i8* %38, i8** %name118, align 8, !dbg !3294
  %41 = load %struct.kobj_attribute*, %struct.kobj_attribute** @counter_attrs, align 8, !dbg !3295
  %42 = load i32, i32* %i, align 4, !dbg !3296
  %idxprom119 = sext i32 %42 to i64, !dbg !3295
  %arrayidx120 = getelementptr %struct.kobj_attribute, %struct.kobj_attribute* %41, i64 %idxprom119, !dbg !3295
  %attr121 = getelementptr inbounds %struct.kobj_attribute, %struct.kobj_attribute* %arrayidx120, i32 0, i32 0, !dbg !3297
  %mode = getelementptr inbounds %struct.attribute, %struct.attribute* %attr121, i32 0, i32 1, !dbg !3298
  store i16 420, i16* %mode, align 8, !dbg !3299
  %43 = load %struct.kobj_attribute*, %struct.kobj_attribute** @counter_attrs, align 8, !dbg !3300
  %44 = load i32, i32* %i, align 4, !dbg !3301
  %idxprom122 = sext i32 %44 to i64, !dbg !3300
  %arrayidx123 = getelementptr %struct.kobj_attribute, %struct.kobj_attribute* %43, i64 %idxprom122, !dbg !3300
  %show = getelementptr inbounds %struct.kobj_attribute, %struct.kobj_attribute* %arrayidx123, i32 0, i32 1, !dbg !3302
  store i64 (%struct.kobject*, %struct.kobj_attribute*, i8*)* @counter_show, i64 (%struct.kobject*, %struct.kobj_attribute*, i8*)** %show, align 8, !dbg !3303
  %45 = load %struct.kobj_attribute*, %struct.kobj_attribute** @counter_attrs, align 8, !dbg !3304
  %46 = load i32, i32* %i, align 4, !dbg !3305
  %idxprom124 = sext i32 %46 to i64, !dbg !3304
  %arrayidx125 = getelementptr %struct.kobj_attribute, %struct.kobj_attribute* %45, i64 %idxprom124, !dbg !3304
  %store = getelementptr inbounds %struct.kobj_attribute, %struct.kobj_attribute* %arrayidx125, i32 0, i32 2, !dbg !3306
  store i64 (%struct.kobject*, %struct.kobj_attribute*, i8*, i64)* @counter_set, i64 (%struct.kobject*, %struct.kobj_attribute*, i8*, i64)** %store, align 8, !dbg !3307
  %47 = load %struct.kobj_attribute*, %struct.kobj_attribute** @counter_attrs, align 8, !dbg !3308
  %48 = load i32, i32* %i, align 4, !dbg !3309
  %idxprom126 = sext i32 %48 to i64, !dbg !3308
  %arrayidx127 = getelementptr %struct.kobj_attribute, %struct.kobj_attribute* %47, i64 %idxprom126, !dbg !3308
  %attr128 = getelementptr inbounds %struct.kobj_attribute, %struct.kobj_attribute* %arrayidx127, i32 0, i32 0, !dbg !3310
  %49 = load %struct.attribute**, %struct.attribute*** @all_attrs, align 8, !dbg !3311
  %50 = load i32, i32* %i, align 4, !dbg !3312
  %idxprom129 = sext i32 %50 to i64, !dbg !3311
  %arrayidx130 = getelementptr %struct.attribute*, %struct.attribute** %49, i64 %idxprom129, !dbg !3311
  store %struct.attribute* %attr128, %struct.attribute** %arrayidx130, align 8, !dbg !3313
  br label %for.inc, !dbg !3314

for.inc:                                          ; preds = %do.end
  %51 = load i32, i32* %i, align 4, !dbg !3315
  %inc = add i32 %51, 1, !dbg !3315
  store i32 %inc, i32* %i, align 4, !dbg !3315
  br label %for.cond, !dbg !3316, !llvm.loop !3317

for.end:                                          ; preds = %for.cond
  %52 = load %struct.attribute**, %struct.attribute*** @all_attrs, align 8, !dbg !3319
  store %struct.attribute** %52, %struct.attribute*** getelementptr inbounds (%struct.attribute_group, %struct.attribute_group* @interrupt_stats_attr_group, i32 0, i32 3), align 8, !dbg !3320
  %53 = load %struct.kobject*, %struct.kobject** @acpi_kobj, align 8, !dbg !3321
  %call131 = call i32 @sysfs_create_group(%struct.kobject* %53, %struct.attribute_group* @interrupt_stats_attr_group) #8, !dbg !3323
  %tobool132 = icmp ne i32 %call131, 0, !dbg !3323
  br i1 %tobool132, label %if.end134, label %if.then133, !dbg !3324

if.then133:                                       ; preds = %for.end
  br label %return, !dbg !3325

if.end134:                                        ; preds = %for.end
  br label %fail, !dbg !3326

fail:                                             ; preds = %if.end134, %if.then116, %if.then21, %if.then15, %if.then11
  call void @llvm.dbg.label(metadata !3327), !dbg !3328
  call void @delete_gpe_attr_array() #8, !dbg !3329
  br label %return, !dbg !3330

return:                                           ; preds = %fail, %if.then133, %if.then5, %if.then
  ret void, !dbg !3331
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kcalloc(i64 %n, i64 %size, i32 %flags) #0 !dbg !3332 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3335, metadata !DIExpression()), !dbg !3336
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3337, metadata !DIExpression()), !dbg !3338
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3339, metadata !DIExpression()), !dbg !3340
  %0 = load i64, i64* %n.addr, align 8, !dbg !3341
  %1 = load i64, i64* %size.addr, align 8, !dbg !3342
  %2 = load i32, i32* %flags.addr, align 4, !dbg !3343
  %or = or i32 %2, 256, !dbg !3344
  %call = call i8* @kmalloc_array(i64 %0, i64 %1, i32 %or) #8, !dbg !3345
  ret i8* %call, !dbg !3346
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_install_global_event_handler(void (i32, i8*, i32, i8*)*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_global_event_handler(i32 %event_type, i8* %device, i32 %event_number, i8* %context) #0 !dbg !3347 {
entry:
  %event_type.addr = alloca i32, align 4
  %device.addr = alloca i8*, align 8
  %event_number.addr = alloca i32, align 4
  %context.addr = alloca i8*, align 8
  %tmp = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %tmp5 = alloca i32, align 4
  store i32 %event_type, i32* %event_type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %event_type.addr, metadata !3350, metadata !DIExpression()), !dbg !3351
  store i8* %device, i8** %device.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %device.addr, metadata !3352, metadata !DIExpression()), !dbg !3353
  store i32 %event_number, i32* %event_number.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %event_number.addr, metadata !3354, metadata !DIExpression()), !dbg !3355
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !3356, metadata !DIExpression()), !dbg !3357
  %0 = load i32, i32* %event_type.addr, align 4, !dbg !3358
  %cmp = icmp eq i32 %0, 0, !dbg !3360
  br i1 %cmp, label %if.then, label %if.else, !dbg !3361

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %event_number.addr, align 4, !dbg !3362
  call void @gpe_count(i32 %1) #8, !dbg !3364
  store i32 0, i32* %tmp, align 4, !dbg !3365
  %2 = load i32, i32* %tmp, align 4, !dbg !3368
  br label %if.end6, !dbg !3369

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %event_type.addr, align 4, !dbg !3370
  %cmp1 = icmp eq i32 %3, 1, !dbg !3372
  br i1 %cmp1, label %if.then2, label %if.else4, !dbg !3373

if.then2:                                         ; preds = %if.else
  %4 = load i32, i32* %event_number.addr, align 4, !dbg !3374
  call void @fixed_event_count(i32 %4) #8, !dbg !3376
  store i32 0, i32* %tmp3, align 4, !dbg !3377
  %5 = load i32, i32* %tmp3, align 4, !dbg !3380
  br label %if.end, !dbg !3381

if.else4:                                         ; preds = %if.else
  store i32 0, i32* %tmp5, align 4, !dbg !3382
  %6 = load i32, i32* %tmp5, align 4, !dbg !3386
  br label %if.end

if.end:                                           ; preds = %if.else4, %if.then2
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  ret void, !dbg !3387
}

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kstrdup(i8*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @counter_show(%struct.kobject* %kobj, %struct.kobj_attribute* %attr, i8* %buf) #0 !dbg !3388 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  %attr.addr = alloca %struct.kobj_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %index = alloca i32, align 4
  %size = alloca i32, align 4
  %handle = alloca i8*, align 8
  %status = alloca i32, align 4
  %result = alloca i32, align 4
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !3389, metadata !DIExpression()), !dbg !3390
  store %struct.kobj_attribute* %attr, %struct.kobj_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobj_attribute** %attr.addr, metadata !3391, metadata !DIExpression()), !dbg !3392
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3393, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.declare(metadata i32* %index, metadata !3395, metadata !DIExpression()), !dbg !3396
  %0 = load %struct.kobj_attribute*, %struct.kobj_attribute** %attr.addr, align 8, !dbg !3397
  %1 = load %struct.kobj_attribute*, %struct.kobj_attribute** @counter_attrs, align 8, !dbg !3398
  %sub.ptr.lhs.cast = ptrtoint %struct.kobj_attribute* %0 to i64, !dbg !3399
  %sub.ptr.rhs.cast = ptrtoint %struct.kobj_attribute* %1 to i64, !dbg !3399
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3399
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 32, !dbg !3399
  %conv = trunc i64 %sub.ptr.div to i32, !dbg !3397
  store i32 %conv, i32* %index, align 4, !dbg !3396
  call void @llvm.dbg.declare(metadata i32* %size, metadata !3400, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.declare(metadata i8** %handle, metadata !3402, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3404, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.declare(metadata i32* %result, metadata !3406, metadata !DIExpression()), !dbg !3407
  store i32 0, i32* %result, align 4, !dbg !3407
  %2 = load i32, i32* @acpi_irq_handled, align 4, !dbg !3408
  %3 = load %struct.event_counter*, %struct.event_counter** @all_counters, align 8, !dbg !3409
  %4 = load i32, i32* @num_gpes, align 4, !dbg !3410
  %add = add i32 %4, 4, !dbg !3411
  %add1 = add i32 %add, 1, !dbg !3412
  %add2 = add i32 %add1, 1, !dbg !3413
  %idxprom = zext i32 %add2 to i64, !dbg !3409
  %arrayidx = getelementptr %struct.event_counter, %struct.event_counter* %3, i64 %idxprom, !dbg !3409
  %count = getelementptr inbounds %struct.event_counter, %struct.event_counter* %arrayidx, i32 0, i32 0, !dbg !3414
  store i32 %2, i32* %count, align 4, !dbg !3415
  %5 = load i32, i32* @acpi_irq_not_handled, align 4, !dbg !3416
  %6 = load %struct.event_counter*, %struct.event_counter** @all_counters, align 8, !dbg !3417
  %7 = load i32, i32* @num_gpes, align 4, !dbg !3418
  %add3 = add i32 %7, 4, !dbg !3419
  %add4 = add i32 %add3, 1, !dbg !3420
  %add5 = add i32 %add4, 2, !dbg !3421
  %idxprom6 = zext i32 %add5 to i64, !dbg !3417
  %arrayidx7 = getelementptr %struct.event_counter, %struct.event_counter* %6, i64 %idxprom6, !dbg !3417
  %count8 = getelementptr inbounds %struct.event_counter, %struct.event_counter* %arrayidx7, i32 0, i32 0, !dbg !3422
  store i32 %5, i32* %count8, align 4, !dbg !3423
  %8 = load i32, i32* @acpi_gpe_count, align 4, !dbg !3424
  %9 = load %struct.event_counter*, %struct.event_counter** @all_counters, align 8, !dbg !3425
  %10 = load i32, i32* @num_gpes, align 4, !dbg !3426
  %add9 = add i32 %10, 4, !dbg !3427
  %add10 = add i32 %add9, 1, !dbg !3428
  %add11 = add i32 %add10, 0, !dbg !3429
  %idxprom12 = zext i32 %add11 to i64, !dbg !3425
  %arrayidx13 = getelementptr %struct.event_counter, %struct.event_counter* %9, i64 %idxprom12, !dbg !3425
  %count14 = getelementptr inbounds %struct.event_counter, %struct.event_counter* %arrayidx13, i32 0, i32 0, !dbg !3430
  store i32 %8, i32* %count14, align 4, !dbg !3431
  %11 = load i8*, i8** %buf.addr, align 8, !dbg !3432
  %12 = load %struct.event_counter*, %struct.event_counter** @all_counters, align 8, !dbg !3433
  %13 = load i32, i32* %index, align 4, !dbg !3434
  %idxprom15 = sext i32 %13 to i64, !dbg !3433
  %arrayidx16 = getelementptr %struct.event_counter, %struct.event_counter* %12, i64 %idxprom15, !dbg !3433
  %count17 = getelementptr inbounds %struct.event_counter, %struct.event_counter* %arrayidx16, i32 0, i32 0, !dbg !3435
  %14 = load i32, i32* %count17, align 4, !dbg !3435
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i32 %14) #8, !dbg !3436
  store i32 %call, i32* %size, align 4, !dbg !3437
  %15 = load i32, i32* %index, align 4, !dbg !3438
  %16 = load i32, i32* @num_gpes, align 4, !dbg !3440
  %add18 = add i32 %16, 4, !dbg !3441
  %add19 = add i32 %add18, 1, !dbg !3442
  %cmp = icmp uge i32 %15, %add19, !dbg !3443
  br i1 %cmp, label %if.then, label %if.end, !dbg !3444

if.then:                                          ; preds = %entry
  br label %end, !dbg !3445

if.end:                                           ; preds = %entry
  %17 = load i32, i32* %index, align 4, !dbg !3446
  %call21 = call i32 @get_status(i32 %17, i32* %status, i8** %handle) #8, !dbg !3447
  store i32 %call21, i32* %result, align 4, !dbg !3448
  %18 = load i32, i32* %result, align 4, !dbg !3449
  %tobool = icmp ne i32 %18, 0, !dbg !3449
  br i1 %tobool, label %if.then22, label %if.end23, !dbg !3451

if.then22:                                        ; preds = %if.end
  br label %end, !dbg !3452

if.end23:                                         ; preds = %if.end
  %19 = load i32, i32* %status, align 4, !dbg !3453
  %and = and i32 %19, 8, !dbg !3455
  %tobool24 = icmp ne i32 %and, 0, !dbg !3455
  br i1 %tobool24, label %if.then25, label %if.else, !dbg !3456

if.then25:                                        ; preds = %if.end23
  %20 = load i8*, i8** %buf.addr, align 8, !dbg !3457
  %21 = load i32, i32* %size, align 4, !dbg !3458
  %idx.ext = sext i32 %21 to i64, !dbg !3459
  %add.ptr = getelementptr i8, i8* %20, i64 %idx.ext, !dbg !3459
  %call26 = call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0)) #8, !dbg !3460
  %22 = load i32, i32* %size, align 4, !dbg !3461
  %add27 = add i32 %22, %call26, !dbg !3461
  store i32 %add27, i32* %size, align 4, !dbg !3461
  br label %if.end32, !dbg !3462

if.else:                                          ; preds = %if.end23
  %23 = load i8*, i8** %buf.addr, align 8, !dbg !3463
  %24 = load i32, i32* %size, align 4, !dbg !3464
  %idx.ext28 = sext i32 %24 to i64, !dbg !3465
  %add.ptr29 = getelementptr i8, i8* %23, i64 %idx.ext28, !dbg !3465
  %call30 = call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0)) #8, !dbg !3466
  %25 = load i32, i32* %size, align 4, !dbg !3467
  %add31 = add i32 %25, %call30, !dbg !3467
  store i32 %add31, i32* %size, align 4, !dbg !3467
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then25
  %26 = load i32, i32* %status, align 4, !dbg !3468
  %and33 = and i32 %26, 4, !dbg !3470
  %tobool34 = icmp ne i32 %and33, 0, !dbg !3470
  br i1 %tobool34, label %if.then35, label %if.else40, !dbg !3471

if.then35:                                        ; preds = %if.end32
  %27 = load i8*, i8** %buf.addr, align 8, !dbg !3472
  %28 = load i32, i32* %size, align 4, !dbg !3473
  %idx.ext36 = sext i32 %28 to i64, !dbg !3474
  %add.ptr37 = getelementptr i8, i8* %27, i64 %idx.ext36, !dbg !3474
  %call38 = call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0)) #8, !dbg !3475
  %29 = load i32, i32* %size, align 4, !dbg !3476
  %add39 = add i32 %29, %call38, !dbg !3476
  store i32 %add39, i32* %size, align 4, !dbg !3476
  br label %if.end45, !dbg !3477

if.else40:                                        ; preds = %if.end32
  %30 = load i8*, i8** %buf.addr, align 8, !dbg !3478
  %31 = load i32, i32* %size, align 4, !dbg !3479
  %idx.ext41 = sext i32 %31 to i64, !dbg !3480
  %add.ptr42 = getelementptr i8, i8* %30, i64 %idx.ext41, !dbg !3480
  %call43 = call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0)) #8, !dbg !3481
  %32 = load i32, i32* %size, align 4, !dbg !3482
  %add44 = add i32 %32, %call43, !dbg !3482
  store i32 %add44, i32* %size, align 4, !dbg !3482
  br label %if.end45

if.end45:                                         ; preds = %if.else40, %if.then35
  %33 = load i32, i32* %status, align 4, !dbg !3483
  %and46 = and i32 %33, 16, !dbg !3485
  %tobool47 = icmp ne i32 %and46, 0, !dbg !3485
  br i1 %tobool47, label %if.else53, label %if.then48, !dbg !3486

if.then48:                                        ; preds = %if.end45
  %34 = load i8*, i8** %buf.addr, align 8, !dbg !3487
  %35 = load i32, i32* %size, align 4, !dbg !3488
  %idx.ext49 = sext i32 %35 to i64, !dbg !3489
  %add.ptr50 = getelementptr i8, i8* %34, i64 %idx.ext49, !dbg !3489
  %call51 = call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0)) #8, !dbg !3490
  %36 = load i32, i32* %size, align 4, !dbg !3491
  %add52 = add i32 %36, %call51, !dbg !3491
  store i32 %add52, i32* %size, align 4, !dbg !3491
  br label %if.end76, !dbg !3492

if.else53:                                        ; preds = %if.end45
  %37 = load i32, i32* %status, align 4, !dbg !3493
  %and54 = and i32 %37, 1, !dbg !3495
  %tobool55 = icmp ne i32 %and54, 0, !dbg !3495
  br i1 %tobool55, label %if.then56, label %if.else61, !dbg !3496

if.then56:                                        ; preds = %if.else53
  %38 = load i8*, i8** %buf.addr, align 8, !dbg !3497
  %39 = load i32, i32* %size, align 4, !dbg !3498
  %idx.ext57 = sext i32 %39 to i64, !dbg !3499
  %add.ptr58 = getelementptr i8, i8* %38, i64 %idx.ext57, !dbg !3499
  %call59 = call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0)) #8, !dbg !3500
  %40 = load i32, i32* %size, align 4, !dbg !3501
  %add60 = add i32 %40, %call59, !dbg !3501
  store i32 %add60, i32* %size, align 4, !dbg !3501
  br label %if.end75, !dbg !3502

if.else61:                                        ; preds = %if.else53
  %41 = load i32, i32* %status, align 4, !dbg !3503
  %and62 = and i32 %41, 2, !dbg !3505
  %tobool63 = icmp ne i32 %and62, 0, !dbg !3505
  br i1 %tobool63, label %if.then64, label %if.else69, !dbg !3506

if.then64:                                        ; preds = %if.else61
  %42 = load i8*, i8** %buf.addr, align 8, !dbg !3507
  %43 = load i32, i32* %size, align 4, !dbg !3508
  %idx.ext65 = sext i32 %43 to i64, !dbg !3509
  %add.ptr66 = getelementptr i8, i8* %42, i64 %idx.ext65, !dbg !3509
  %call67 = call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr66, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0)) #8, !dbg !3510
  %44 = load i32, i32* %size, align 4, !dbg !3511
  %add68 = add i32 %44, %call67, !dbg !3511
  store i32 %add68, i32* %size, align 4, !dbg !3511
  br label %if.end74, !dbg !3512

if.else69:                                        ; preds = %if.else61
  %45 = load i8*, i8** %buf.addr, align 8, !dbg !3513
  %46 = load i32, i32* %size, align 4, !dbg !3514
  %idx.ext70 = sext i32 %46 to i64, !dbg !3515
  %add.ptr71 = getelementptr i8, i8* %45, i64 %idx.ext70, !dbg !3515
  %call72 = call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr71, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0)) #8, !dbg !3516
  %47 = load i32, i32* %size, align 4, !dbg !3517
  %add73 = add i32 %47, %call72, !dbg !3517
  store i32 %add73, i32* %size, align 4, !dbg !3517
  br label %if.end74

if.end74:                                         ; preds = %if.else69, %if.then64
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.then56
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %if.then48
  %48 = load i32, i32* %status, align 4, !dbg !3518
  %and77 = and i32 %48, 32, !dbg !3520
  %tobool78 = icmp ne i32 %and77, 0, !dbg !3520
  br i1 %tobool78, label %if.then79, label %if.else84, !dbg !3521

if.then79:                                        ; preds = %if.end76
  %49 = load i8*, i8** %buf.addr, align 8, !dbg !3522
  %50 = load i32, i32* %size, align 4, !dbg !3523
  %idx.ext80 = sext i32 %50 to i64, !dbg !3524
  %add.ptr81 = getelementptr i8, i8* %49, i64 %idx.ext80, !dbg !3524
  %call82 = call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr81, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0)) #8, !dbg !3525
  %51 = load i32, i32* %size, align 4, !dbg !3526
  %add83 = add i32 %51, %call82, !dbg !3526
  store i32 %add83, i32* %size, align 4, !dbg !3526
  br label %if.end89, !dbg !3527

if.else84:                                        ; preds = %if.end76
  %52 = load i8*, i8** %buf.addr, align 8, !dbg !3528
  %53 = load i32, i32* %size, align 4, !dbg !3529
  %idx.ext85 = sext i32 %53 to i64, !dbg !3530
  %add.ptr86 = getelementptr i8, i8* %52, i64 %idx.ext85, !dbg !3530
  %call87 = call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr86, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0)) #8, !dbg !3531
  %54 = load i32, i32* %size, align 4, !dbg !3532
  %add88 = add i32 %54, %call87, !dbg !3532
  store i32 %add88, i32* %size, align 4, !dbg !3532
  br label %if.end89

if.end89:                                         ; preds = %if.else84, %if.then79
  br label %end, !dbg !3533

end:                                              ; preds = %if.end89, %if.then22, %if.then
  call void @llvm.dbg.label(metadata !3534), !dbg !3535
  %55 = load i8*, i8** %buf.addr, align 8, !dbg !3536
  %56 = load i32, i32* %size, align 4, !dbg !3537
  %idx.ext90 = sext i32 %56 to i64, !dbg !3538
  %add.ptr91 = getelementptr i8, i8* %55, i64 %idx.ext90, !dbg !3538
  %call92 = call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr91, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0)) #8, !dbg !3539
  %57 = load i32, i32* %size, align 4, !dbg !3540
  %add93 = add i32 %57, %call92, !dbg !3540
  store i32 %add93, i32* %size, align 4, !dbg !3540
  %58 = load i32, i32* %result, align 4, !dbg !3541
  %tobool94 = icmp ne i32 %58, 0, !dbg !3541
  br i1 %tobool94, label %cond.true, label %cond.false, !dbg !3541

cond.true:                                        ; preds = %end
  %59 = load i32, i32* %result, align 4, !dbg !3542
  br label %cond.end, !dbg !3541

cond.false:                                       ; preds = %end
  %60 = load i32, i32* %size, align 4, !dbg !3543
  br label %cond.end, !dbg !3541

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %59, %cond.true ], [ %60, %cond.false ], !dbg !3541
  %conv95 = sext i32 %cond to i64, !dbg !3541
  ret i64 %conv95, !dbg !3544
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @counter_set(%struct.kobject* %kobj, %struct.kobj_attribute* %attr, i8* %buf, i64 %size) #0 !dbg !3545 {
entry:
  %retval = alloca i64, align 8
  %kobj.addr = alloca %struct.kobject*, align 8
  %attr.addr = alloca %struct.kobj_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %index = alloca i32, align 4
  %status = alloca i32, align 4
  %handle = alloca i8*, align 8
  %result = alloca i32, align 4
  %tmp = alloca i64, align 8
  %i = alloca i32, align 4
  %event = alloca i32, align 4
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !3546, metadata !DIExpression()), !dbg !3547
  store %struct.kobj_attribute* %attr, %struct.kobj_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobj_attribute** %attr.addr, metadata !3548, metadata !DIExpression()), !dbg !3549
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3550, metadata !DIExpression()), !dbg !3551
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3552, metadata !DIExpression()), !dbg !3553
  call void @llvm.dbg.declare(metadata i32* %index, metadata !3554, metadata !DIExpression()), !dbg !3555
  %0 = load %struct.kobj_attribute*, %struct.kobj_attribute** %attr.addr, align 8, !dbg !3556
  %1 = load %struct.kobj_attribute*, %struct.kobj_attribute** @counter_attrs, align 8, !dbg !3557
  %sub.ptr.lhs.cast = ptrtoint %struct.kobj_attribute* %0 to i64, !dbg !3558
  %sub.ptr.rhs.cast = ptrtoint %struct.kobj_attribute* %1 to i64, !dbg !3558
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3558
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 32, !dbg !3558
  %conv = trunc i64 %sub.ptr.div to i32, !dbg !3556
  store i32 %conv, i32* %index, align 4, !dbg !3555
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3559, metadata !DIExpression()), !dbg !3560
  call void @llvm.dbg.declare(metadata i8** %handle, metadata !3561, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.declare(metadata i32* %result, metadata !3563, metadata !DIExpression()), !dbg !3564
  store i32 0, i32* %result, align 4, !dbg !3564
  call void @llvm.dbg.declare(metadata i64* %tmp, metadata !3565, metadata !DIExpression()), !dbg !3566
  %2 = load i32, i32* %index, align 4, !dbg !3567
  %3 = load i32, i32* @num_gpes, align 4, !dbg !3569
  %add = add i32 %3, 4, !dbg !3570
  %add1 = add i32 %add, 1, !dbg !3571
  %add2 = add i32 %add1, 1, !dbg !3572
  %cmp = icmp eq i32 %2, %add2, !dbg !3573
  br i1 %cmp, label %if.then, label %if.end, !dbg !3574

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3575, metadata !DIExpression()), !dbg !3577
  store i32 0, i32* %i, align 4, !dbg !3578
  br label %for.cond, !dbg !3580

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4, !dbg !3581
  %5 = load i32, i32* @num_counters, align 4, !dbg !3583
  %cmp4 = icmp ult i32 %4, %5, !dbg !3584
  br i1 %cmp4, label %for.body, label %for.end, !dbg !3585

for.body:                                         ; preds = %for.cond
  %6 = load %struct.event_counter*, %struct.event_counter** @all_counters, align 8, !dbg !3586
  %7 = load i32, i32* %i, align 4, !dbg !3587
  %idxprom = sext i32 %7 to i64, !dbg !3586
  %arrayidx = getelementptr %struct.event_counter, %struct.event_counter* %6, i64 %idxprom, !dbg !3586
  %count = getelementptr inbounds %struct.event_counter, %struct.event_counter* %arrayidx, i32 0, i32 0, !dbg !3588
  store i32 0, i32* %count, align 4, !dbg !3589
  br label %for.inc, !dbg !3586

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !3590
  %inc = add i32 %8, 1, !dbg !3590
  store i32 %inc, i32* %i, align 4, !dbg !3590
  br label %for.cond, !dbg !3591, !llvm.loop !3592

for.end:                                          ; preds = %for.cond
  store i32 0, i32* @acpi_gpe_count, align 4, !dbg !3594
  store i32 0, i32* @acpi_irq_handled, align 4, !dbg !3595
  store i32 0, i32* @acpi_irq_not_handled, align 4, !dbg !3596
  br label %end, !dbg !3597

if.end:                                           ; preds = %entry
  %9 = load i32, i32* %index, align 4, !dbg !3598
  %call = call i32 @get_status(i32 %9, i32* %status, i8** %handle) #8, !dbg !3599
  store i32 %call, i32* %result, align 4, !dbg !3600
  %10 = load i32, i32* %result, align 4, !dbg !3601
  %tobool = icmp ne i32 %10, 0, !dbg !3601
  br i1 %tobool, label %if.then6, label %if.end7, !dbg !3603

if.then6:                                         ; preds = %if.end
  br label %end, !dbg !3604

if.end7:                                          ; preds = %if.end
  %11 = load i32, i32* %status, align 4, !dbg !3605
  %and = and i32 %11, 16, !dbg !3607
  %tobool8 = icmp ne i32 %and, 0, !dbg !3607
  br i1 %tobool8, label %if.end11, label %if.then9, !dbg !3608

if.then9:                                         ; preds = %if.end7
  %call10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.31, i64 0, i64 0)) #12, !dbg !3609
  store i64 -22, i64* %retval, align 8, !dbg !3611
  br label %return, !dbg !3611

if.end11:                                         ; preds = %if.end7
  %12 = load i32, i32* %index, align 4, !dbg !3612
  %13 = load i32, i32* @num_gpes, align 4, !dbg !3614
  %cmp12 = icmp ult i32 %12, %13, !dbg !3615
  br i1 %cmp12, label %if.then14, label %if.else61, !dbg !3616

if.then14:                                        ; preds = %if.end11
  %14 = load i8*, i8** %buf.addr, align 8, !dbg !3617
  %call15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i64 0, i64 0)) #8, !dbg !3620
  %tobool16 = icmp ne i32 %call15, 0, !dbg !3620
  br i1 %tobool16, label %if.else, label %land.lhs.true, !dbg !3621

land.lhs.true:                                    ; preds = %if.then14
  %15 = load i32, i32* %status, align 4, !dbg !3622
  %and17 = and i32 %15, 1, !dbg !3623
  %tobool18 = icmp ne i32 %and17, 0, !dbg !3623
  br i1 %tobool18, label %if.then19, label %if.else, !dbg !3624

if.then19:                                        ; preds = %land.lhs.true
  %16 = load i8*, i8** %handle, align 8, !dbg !3625
  %17 = load i32, i32* %index, align 4, !dbg !3626
  %call20 = call i32 @acpi_disable_gpe(i8* %16, i32 %17) #8, !dbg !3627
  store i32 %call20, i32* %result, align 4, !dbg !3628
  br label %if.end60, !dbg !3629

if.else:                                          ; preds = %land.lhs.true, %if.then14
  %18 = load i8*, i8** %buf.addr, align 8, !dbg !3630
  %call21 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i64 0, i64 0)) #8, !dbg !3632
  %tobool22 = icmp ne i32 %call21, 0, !dbg !3632
  br i1 %tobool22, label %if.else28, label %land.lhs.true23, !dbg !3633

land.lhs.true23:                                  ; preds = %if.else
  %19 = load i32, i32* %status, align 4, !dbg !3634
  %and24 = and i32 %19, 1, !dbg !3635
  %tobool25 = icmp ne i32 %and24, 0, !dbg !3635
  br i1 %tobool25, label %if.else28, label %if.then26, !dbg !3636

if.then26:                                        ; preds = %land.lhs.true23
  %20 = load i8*, i8** %handle, align 8, !dbg !3637
  %21 = load i32, i32* %index, align 4, !dbg !3638
  %call27 = call i32 @acpi_enable_gpe(i8* %20, i32 %21) #8, !dbg !3639
  store i32 %call27, i32* %result, align 4, !dbg !3640
  br label %if.end59, !dbg !3641

if.else28:                                        ; preds = %land.lhs.true23, %if.else
  %22 = load i8*, i8** %buf.addr, align 8, !dbg !3642
  %call29 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0)) #8, !dbg !3644
  %tobool30 = icmp ne i32 %call29, 0, !dbg !3644
  br i1 %tobool30, label %if.else36, label %land.lhs.true31, !dbg !3645

land.lhs.true31:                                  ; preds = %if.else28
  %23 = load i32, i32* %status, align 4, !dbg !3646
  %and32 = and i32 %23, 4, !dbg !3647
  %tobool33 = icmp ne i32 %and32, 0, !dbg !3647
  br i1 %tobool33, label %if.then34, label %if.else36, !dbg !3648

if.then34:                                        ; preds = %land.lhs.true31
  %24 = load i8*, i8** %handle, align 8, !dbg !3649
  %25 = load i32, i32* %index, align 4, !dbg !3650
  %call35 = call i32 @acpi_clear_gpe(i8* %24, i32 %25) #8, !dbg !3651
  store i32 %call35, i32* %result, align 4, !dbg !3652
  br label %if.end58, !dbg !3653

if.else36:                                        ; preds = %land.lhs.true31, %if.else28
  %26 = load i8*, i8** %buf.addr, align 8, !dbg !3654
  %call37 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0)) #8, !dbg !3656
  %tobool38 = icmp ne i32 %call37, 0, !dbg !3656
  br i1 %tobool38, label %if.else41, label %if.then39, !dbg !3657

if.then39:                                        ; preds = %if.else36
  %27 = load i8*, i8** %handle, align 8, !dbg !3658
  %28 = load i32, i32* %index, align 4, !dbg !3659
  %call40 = call i32 @acpi_mask_gpe(i8* %27, i32 %28, i8 zeroext 1) #8, !dbg !3660
  store i32 %call40, i32* %result, align 4, !dbg !3661
  br label %if.end57, !dbg !3662

if.else41:                                        ; preds = %if.else36
  %29 = load i8*, i8** %buf.addr, align 8, !dbg !3663
  %call42 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i64 0, i64 0)) #8, !dbg !3665
  %tobool43 = icmp ne i32 %call42, 0, !dbg !3665
  br i1 %tobool43, label %if.else46, label %if.then44, !dbg !3666

if.then44:                                        ; preds = %if.else41
  %30 = load i8*, i8** %handle, align 8, !dbg !3667
  %31 = load i32, i32* %index, align 4, !dbg !3668
  %call45 = call i32 @acpi_mask_gpe(i8* %30, i32 %31, i8 zeroext 0) #8, !dbg !3669
  store i32 %call45, i32* %result, align 4, !dbg !3670
  br label %if.end56, !dbg !3671

if.else46:                                        ; preds = %if.else41
  %32 = load i8*, i8** %buf.addr, align 8, !dbg !3672
  %call47 = call i32 @kstrtoul(i8* %32, i32 0, i64* %tmp) #8, !dbg !3674
  %tobool48 = icmp ne i32 %call47, 0, !dbg !3674
  br i1 %tobool48, label %if.else54, label %if.then49, !dbg !3675

if.then49:                                        ; preds = %if.else46
  %33 = load i64, i64* %tmp, align 8, !dbg !3676
  %conv50 = trunc i64 %33 to i32, !dbg !3676
  %34 = load %struct.event_counter*, %struct.event_counter** @all_counters, align 8, !dbg !3677
  %35 = load i32, i32* %index, align 4, !dbg !3678
  %idxprom51 = sext i32 %35 to i64, !dbg !3677
  %arrayidx52 = getelementptr %struct.event_counter, %struct.event_counter* %34, i64 %idxprom51, !dbg !3677
  %count53 = getelementptr inbounds %struct.event_counter, %struct.event_counter* %arrayidx52, i32 0, i32 0, !dbg !3679
  store i32 %conv50, i32* %count53, align 4, !dbg !3680
  br label %if.end55, !dbg !3677

if.else54:                                        ; preds = %if.else46
  store i32 -22, i32* %result, align 4, !dbg !3681
  br label %if.end55

if.end55:                                         ; preds = %if.else54, %if.then49
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.then44
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.then39
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.then34
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.then26
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.then19
  br label %if.end110, !dbg !3682

if.else61:                                        ; preds = %if.end11
  %36 = load i32, i32* %index, align 4, !dbg !3683
  %37 = load i32, i32* @num_gpes, align 4, !dbg !3685
  %add62 = add i32 %37, 4, !dbg !3686
  %add63 = add i32 %add62, 1, !dbg !3687
  %cmp64 = icmp ult i32 %36, %add63, !dbg !3688
  br i1 %cmp64, label %if.then66, label %if.else103, !dbg !3689

if.then66:                                        ; preds = %if.else61
  call void @llvm.dbg.declare(metadata i32* %event, metadata !3690, metadata !DIExpression()), !dbg !3692
  %38 = load i32, i32* %index, align 4, !dbg !3693
  %39 = load i32, i32* @num_gpes, align 4, !dbg !3694
  %sub = sub i32 %38, %39, !dbg !3695
  store i32 %sub, i32* %event, align 4, !dbg !3692
  %40 = load i8*, i8** %buf.addr, align 8, !dbg !3696
  %call67 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i64 0, i64 0)) #8, !dbg !3698
  %tobool68 = icmp ne i32 %call67, 0, !dbg !3698
  br i1 %tobool68, label %if.else74, label %land.lhs.true69, !dbg !3699

land.lhs.true69:                                  ; preds = %if.then66
  %41 = load i32, i32* %status, align 4, !dbg !3700
  %and70 = and i32 %41, 8, !dbg !3701
  %tobool71 = icmp ne i32 %and70, 0, !dbg !3701
  br i1 %tobool71, label %if.then72, label %if.else74, !dbg !3702

if.then72:                                        ; preds = %land.lhs.true69
  %42 = load i32, i32* %event, align 4, !dbg !3703
  %call73 = call i32 @acpi_disable_event(i32 %42, i32 1) #8, !dbg !3704
  store i32 %call73, i32* %result, align 4, !dbg !3705
  br label %if.end102, !dbg !3706

if.else74:                                        ; preds = %land.lhs.true69, %if.then66
  %43 = load i8*, i8** %buf.addr, align 8, !dbg !3707
  %call75 = call i32 @strcmp(i8* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i64 0, i64 0)) #8, !dbg !3709
  %tobool76 = icmp ne i32 %call75, 0, !dbg !3709
  br i1 %tobool76, label %if.else82, label %land.lhs.true77, !dbg !3710

land.lhs.true77:                                  ; preds = %if.else74
  %44 = load i32, i32* %status, align 4, !dbg !3711
  %and78 = and i32 %44, 8, !dbg !3712
  %tobool79 = icmp ne i32 %and78, 0, !dbg !3712
  br i1 %tobool79, label %if.else82, label %if.then80, !dbg !3713

if.then80:                                        ; preds = %land.lhs.true77
  %45 = load i32, i32* %event, align 4, !dbg !3714
  %call81 = call i32 @acpi_enable_event(i32 %45, i32 1) #8, !dbg !3715
  store i32 %call81, i32* %result, align 4, !dbg !3716
  br label %if.end101, !dbg !3717

if.else82:                                        ; preds = %land.lhs.true77, %if.else74
  %46 = load i8*, i8** %buf.addr, align 8, !dbg !3718
  %call83 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0)) #8, !dbg !3720
  %tobool84 = icmp ne i32 %call83, 0, !dbg !3720
  br i1 %tobool84, label %if.else90, label %land.lhs.true85, !dbg !3721

land.lhs.true85:                                  ; preds = %if.else82
  %47 = load i32, i32* %status, align 4, !dbg !3722
  %and86 = and i32 %47, 4, !dbg !3723
  %tobool87 = icmp ne i32 %and86, 0, !dbg !3723
  br i1 %tobool87, label %if.then88, label %if.else90, !dbg !3724

if.then88:                                        ; preds = %land.lhs.true85
  %48 = load i32, i32* %event, align 4, !dbg !3725
  %call89 = call i32 @acpi_clear_event(i32 %48) #8, !dbg !3726
  store i32 %call89, i32* %result, align 4, !dbg !3727
  br label %if.end100, !dbg !3728

if.else90:                                        ; preds = %land.lhs.true85, %if.else82
  %49 = load i8*, i8** %buf.addr, align 8, !dbg !3729
  %call91 = call i32 @kstrtoul(i8* %49, i32 0, i64* %tmp) #8, !dbg !3731
  %tobool92 = icmp ne i32 %call91, 0, !dbg !3731
  br i1 %tobool92, label %if.else98, label %if.then93, !dbg !3732

if.then93:                                        ; preds = %if.else90
  %50 = load i64, i64* %tmp, align 8, !dbg !3733
  %conv94 = trunc i64 %50 to i32, !dbg !3733
  %51 = load %struct.event_counter*, %struct.event_counter** @all_counters, align 8, !dbg !3734
  %52 = load i32, i32* %index, align 4, !dbg !3735
  %idxprom95 = sext i32 %52 to i64, !dbg !3734
  %arrayidx96 = getelementptr %struct.event_counter, %struct.event_counter* %51, i64 %idxprom95, !dbg !3734
  %count97 = getelementptr inbounds %struct.event_counter, %struct.event_counter* %arrayidx96, i32 0, i32 0, !dbg !3736
  store i32 %conv94, i32* %count97, align 4, !dbg !3737
  br label %if.end99, !dbg !3734

if.else98:                                        ; preds = %if.else90
  store i32 -22, i32* %result, align 4, !dbg !3738
  br label %if.end99

if.end99:                                         ; preds = %if.else98, %if.then93
  br label %if.end100

if.end100:                                        ; preds = %if.end99, %if.then88
  br label %if.end101

if.end101:                                        ; preds = %if.end100, %if.then80
  br label %if.end102

if.end102:                                        ; preds = %if.end101, %if.then72
  br label %if.end109, !dbg !3739

if.else103:                                       ; preds = %if.else61
  %53 = load i8*, i8** %buf.addr, align 8, !dbg !3740
  %call104 = call i64 @simple_strtoul(i8* %53, i8** null, i32 0) #8, !dbg !3741
  %conv105 = trunc i64 %call104 to i32, !dbg !3741
  %54 = load %struct.event_counter*, %struct.event_counter** @all_counters, align 8, !dbg !3742
  %55 = load i32, i32* %index, align 4, !dbg !3743
  %idxprom106 = sext i32 %55 to i64, !dbg !3742
  %arrayidx107 = getelementptr %struct.event_counter, %struct.event_counter* %54, i64 %idxprom106, !dbg !3742
  %count108 = getelementptr inbounds %struct.event_counter, %struct.event_counter* %arrayidx107, i32 0, i32 0, !dbg !3744
  store i32 %conv105, i32* %count108, align 4, !dbg !3745
  br label %if.end109

if.end109:                                        ; preds = %if.else103, %if.end102
  br label %if.end110

if.end110:                                        ; preds = %if.end109, %if.end60
  %56 = load i32, i32* %result, align 4, !dbg !3746
  %tobool111 = icmp ne i32 %56, 0, !dbg !3746
  br i1 %tobool111, label %if.then112, label %if.end113, !dbg !3748

if.then112:                                       ; preds = %if.end110
  store i32 -22, i32* %result, align 4, !dbg !3749
  br label %if.end113, !dbg !3750

if.end113:                                        ; preds = %if.then112, %if.end110
  br label %end, !dbg !3746

end:                                              ; preds = %if.end113, %if.then6, %for.end
  call void @llvm.dbg.label(metadata !3751), !dbg !3752
  %57 = load i32, i32* %result, align 4, !dbg !3753
  %tobool114 = icmp ne i32 %57, 0, !dbg !3753
  br i1 %tobool114, label %cond.true, label %cond.false, !dbg !3753

cond.true:                                        ; preds = %end
  %58 = load i32, i32* %result, align 4, !dbg !3754
  %conv115 = sext i32 %58 to i64, !dbg !3754
  br label %cond.end, !dbg !3753

cond.false:                                       ; preds = %end
  %59 = load i64, i64* %size.addr, align 8, !dbg !3755
  br label %cond.end, !dbg !3753

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv115, %cond.true ], [ %59, %cond.false ], !dbg !3753
  store i64 %cond, i64* %retval, align 8, !dbg !3756
  br label %return, !dbg !3756

return:                                           ; preds = %cond.end, %if.then9
  %60 = load i64, i64* %retval, align 8, !dbg !3757
  ret i64 %60, !dbg !3757
}

; Function Attrs: noredzone
declare dso_local i32 @sysfs_create_group(%struct.kobject*, %struct.attribute_group*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @delete_gpe_attr_array() #0 !dbg !3758 {
entry:
  %tmp = alloca %struct.event_counter*, align 8
  %i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.event_counter** %tmp, metadata !3759, metadata !DIExpression()), !dbg !3760
  %0 = load %struct.event_counter*, %struct.event_counter** @all_counters, align 8, !dbg !3761
  store %struct.event_counter* %0, %struct.event_counter** %tmp, align 8, !dbg !3760
  store %struct.event_counter* null, %struct.event_counter** @all_counters, align 8, !dbg !3762
  %1 = load %struct.event_counter*, %struct.event_counter** %tmp, align 8, !dbg !3763
  %2 = bitcast %struct.event_counter* %1 to i8*, !dbg !3763
  call void @kfree(i8* %2) #8, !dbg !3764
  %3 = load %struct.kobj_attribute*, %struct.kobj_attribute** @counter_attrs, align 8, !dbg !3765
  %tobool = icmp ne %struct.kobj_attribute* %3, null, !dbg !3765
  br i1 %tobool, label %if.then, label %if.end, !dbg !3767

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3768, metadata !DIExpression()), !dbg !3770
  store i32 0, i32* %i, align 4, !dbg !3771
  br label %for.cond, !dbg !3773

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4, !dbg !3774
  %5 = load i32, i32* @num_gpes, align 4, !dbg !3776
  %cmp = icmp ult i32 %4, %5, !dbg !3777
  br i1 %cmp, label %for.body, label %for.end, !dbg !3778

for.body:                                         ; preds = %for.cond
  %6 = load %struct.kobj_attribute*, %struct.kobj_attribute** @counter_attrs, align 8, !dbg !3779
  %7 = load i32, i32* %i, align 4, !dbg !3780
  %idxprom = sext i32 %7 to i64, !dbg !3779
  %arrayidx = getelementptr %struct.kobj_attribute, %struct.kobj_attribute* %6, i64 %idxprom, !dbg !3779
  %attr = getelementptr inbounds %struct.kobj_attribute, %struct.kobj_attribute* %arrayidx, i32 0, i32 0, !dbg !3781
  %name = getelementptr inbounds %struct.attribute, %struct.attribute* %attr, i32 0, i32 0, !dbg !3782
  %8 = load i8*, i8** %name, align 8, !dbg !3782
  call void @kfree(i8* %8) #8, !dbg !3783
  br label %for.inc, !dbg !3783

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !3784
  %inc = add i32 %9, 1, !dbg !3784
  store i32 %inc, i32* %i, align 4, !dbg !3784
  br label %for.cond, !dbg !3785, !llvm.loop !3786

for.end:                                          ; preds = %for.cond
  %10 = load %struct.kobj_attribute*, %struct.kobj_attribute** @counter_attrs, align 8, !dbg !3788
  %11 = bitcast %struct.kobj_attribute* %10 to i8*, !dbg !3788
  call void @kfree(i8* %11) #8, !dbg !3789
  br label %if.end, !dbg !3790

if.end:                                           ; preds = %for.end, %entry
  %12 = load %struct.attribute**, %struct.attribute*** @all_attrs, align 8, !dbg !3791
  %13 = bitcast %struct.attribute** %12 to i8*, !dbg !3791
  call void @kfree(i8* %13) #8, !dbg !3792
  ret void, !dbg !3793
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @interrupt_stats_exit() #3 section ".exit.text" !dbg !3794 {
entry:
  %0 = load %struct.kobject*, %struct.kobject** @acpi_kobj, align 8, !dbg !3795
  call void @sysfs_remove_group(%struct.kobject* %0, %struct.attribute_group* @interrupt_stats_attr_group) #8, !dbg !3796
  call void @delete_gpe_attr_array() #8, !dbg !3797
  ret void, !dbg !3798
}

; Function Attrs: noredzone
declare dso_local void @sysfs_remove_group(%struct.kobject*, %struct.attribute_group*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_sysfs_add_hotplug_profile(%struct.acpi_hotplug_profile* %hotplug, i8* %name) #0 !dbg !3799 {
entry:
  %hotplug.addr = alloca %struct.acpi_hotplug_profile*, align 8
  %name.addr = alloca i8*, align 8
  %error = alloca i32, align 4
  store %struct.acpi_hotplug_profile* %hotplug, %struct.acpi_hotplug_profile** %hotplug.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_hotplug_profile** %hotplug.addr, metadata !3802, metadata !DIExpression()), !dbg !3803
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !3804, metadata !DIExpression()), !dbg !3805
  call void @llvm.dbg.declare(metadata i32* %error, metadata !3806, metadata !DIExpression()), !dbg !3807
  %0 = load %struct.kobject*, %struct.kobject** @hotplug_kobj, align 8, !dbg !3808
  %tobool = icmp ne %struct.kobject* %0, null, !dbg !3808
  br i1 %tobool, label %if.end, label %if.then, !dbg !3810

if.then:                                          ; preds = %entry
  br label %err_out, !dbg !3811

if.end:                                           ; preds = %entry
  %1 = load %struct.acpi_hotplug_profile*, %struct.acpi_hotplug_profile** %hotplug.addr, align 8, !dbg !3812
  %kobj = getelementptr inbounds %struct.acpi_hotplug_profile, %struct.acpi_hotplug_profile* %1, i32 0, i32 0, !dbg !3813
  %2 = load %struct.kobject*, %struct.kobject** @hotplug_kobj, align 8, !dbg !3814
  %3 = load i8*, i8** %name.addr, align 8, !dbg !3815
  %call = call i32 (%struct.kobject*, %struct.kobj_type*, %struct.kobject*, i8*, ...) @kobject_init_and_add(%struct.kobject* %kobj, %struct.kobj_type* @acpi_hotplug_profile_ktype, %struct.kobject* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* %3) #8, !dbg !3816
  store i32 %call, i32* %error, align 4, !dbg !3817
  %4 = load i32, i32* %error, align 4, !dbg !3818
  %tobool1 = icmp ne i32 %4, 0, !dbg !3818
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !3820

if.then2:                                         ; preds = %if.end
  %5 = load %struct.acpi_hotplug_profile*, %struct.acpi_hotplug_profile** %hotplug.addr, align 8, !dbg !3821
  %kobj3 = getelementptr inbounds %struct.acpi_hotplug_profile, %struct.acpi_hotplug_profile* %5, i32 0, i32 0, !dbg !3823
  call void @kobject_put(%struct.kobject* %kobj3) #8, !dbg !3824
  br label %err_out, !dbg !3825

if.end4:                                          ; preds = %if.end
  %6 = load %struct.acpi_hotplug_profile*, %struct.acpi_hotplug_profile** %hotplug.addr, align 8, !dbg !3826
  %kobj5 = getelementptr inbounds %struct.acpi_hotplug_profile, %struct.acpi_hotplug_profile* %6, i32 0, i32 0, !dbg !3827
  %call6 = call i32 @kobject_uevent(%struct.kobject* %kobj5, i32 0) #8, !dbg !3828
  br label %return, !dbg !3829

err_out:                                          ; preds = %if.then2, %if.then
  call void @llvm.dbg.label(metadata !3830), !dbg !3831
  %7 = load i8*, i8** %name.addr, align 8, !dbg !3832
  %call7 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i64 0, i64 0), i8* %7) #12, !dbg !3832
  br label %return, !dbg !3833

return:                                           ; preds = %err_out, %if.end4
  ret void, !dbg !3833
}

; Function Attrs: noredzone
declare dso_local i32 @kobject_init_and_add(%struct.kobject*, %struct.kobj_type*, %struct.kobject*, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local void @kobject_put(%struct.kobject*) #2

; Function Attrs: noredzone
declare dso_local i32 @kobject_uevent(%struct.kobject*, i32) #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_sysfs_init() #3 section ".init.text" !dbg !3834 {
entry:
  %retval = alloca i32, align 4
  %result = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %result, metadata !3837, metadata !DIExpression()), !dbg !3838
  %call = call i32 @acpi_tables_sysfs_init() #8, !dbg !3839
  store i32 %call, i32* %result, align 4, !dbg !3840
  %0 = load i32, i32* %result, align 4, !dbg !3841
  %tobool = icmp ne i32 %0, 0, !dbg !3841
  br i1 %tobool, label %if.then, label %if.end, !dbg !3843

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %result, align 4, !dbg !3844
  store i32 %1, i32* %retval, align 4, !dbg !3845
  br label %return, !dbg !3845

if.end:                                           ; preds = %entry
  %2 = load %struct.kobject*, %struct.kobject** @acpi_kobj, align 8, !dbg !3846
  %call1 = call %struct.kobject* @kobject_create_and_add(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), %struct.kobject* %2) #8, !dbg !3847
  store %struct.kobject* %call1, %struct.kobject** @hotplug_kobj, align 8, !dbg !3848
  %3 = load %struct.kobject*, %struct.kobject** @hotplug_kobj, align 8, !dbg !3849
  %tobool2 = icmp ne %struct.kobject* %3, null, !dbg !3849
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !3851

if.then3:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !3852
  br label %return, !dbg !3852

if.end4:                                          ; preds = %if.end
  %4 = load %struct.kobject*, %struct.kobject** @hotplug_kobj, align 8, !dbg !3853
  %call5 = call i32 @sysfs_create_file(%struct.kobject* %4, %struct.attribute* getelementptr inbounds (%struct.kobj_attribute, %struct.kobj_attribute* @force_remove_attr, i32 0, i32 0)) #8, !dbg !3854
  store i32 %call5, i32* %result, align 4, !dbg !3855
  %5 = load i32, i32* %result, align 4, !dbg !3856
  %tobool6 = icmp ne i32 %5, 0, !dbg !3856
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !3858

if.then7:                                         ; preds = %if.end4
  %6 = load i32, i32* %result, align 4, !dbg !3859
  store i32 %6, i32* %retval, align 4, !dbg !3860
  br label %return, !dbg !3860

if.end8:                                          ; preds = %if.end4
  %7 = load %struct.kobject*, %struct.kobject** @acpi_kobj, align 8, !dbg !3861
  %call9 = call i32 @sysfs_create_file(%struct.kobject* %7, %struct.attribute* getelementptr inbounds (%struct.kobj_attribute, %struct.kobj_attribute* @pm_profile_attr, i32 0, i32 0)) #8, !dbg !3862
  store i32 %call9, i32* %result, align 4, !dbg !3863
  %8 = load i32, i32* %result, align 4, !dbg !3864
  store i32 %8, i32* %retval, align 4, !dbg !3865
  br label %return, !dbg !3865

return:                                           ; preds = %if.end8, %if.then7, %if.then3, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !3866
  ret i32 %9, !dbg !3866
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_tables_sysfs_init() #0 !dbg !3867 {
entry:
  %retval = alloca i32, align 4
  %table_attr = alloca %struct.acpi_table_attr*, align 8
  %table_header = alloca %struct.acpi_table_header*, align 8
  %table_index = alloca i32, align 4
  %status = alloca i32, align 4
  %ret = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.acpi_table_attr** %table_attr, metadata !3868, metadata !DIExpression()), !dbg !3869
  call void @llvm.dbg.declare(metadata %struct.acpi_table_header** %table_header, metadata !3870, metadata !DIExpression()), !dbg !3871
  store %struct.acpi_table_header* null, %struct.acpi_table_header** %table_header, align 8, !dbg !3871
  call void @llvm.dbg.declare(metadata i32* %table_index, metadata !3872, metadata !DIExpression()), !dbg !3873
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3874, metadata !DIExpression()), !dbg !3875
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3876, metadata !DIExpression()), !dbg !3877
  %0 = load %struct.kobject*, %struct.kobject** @acpi_kobj, align 8, !dbg !3878
  %call = call %struct.kobject* @kobject_create_and_add(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0), %struct.kobject* %0) #8, !dbg !3879
  store %struct.kobject* %call, %struct.kobject** @tables_kobj, align 8, !dbg !3880
  %1 = load %struct.kobject*, %struct.kobject** @tables_kobj, align 8, !dbg !3881
  %tobool = icmp ne %struct.kobject* %1, null, !dbg !3881
  br i1 %tobool, label %if.end, label %if.then, !dbg !3883

if.then:                                          ; preds = %entry
  br label %err, !dbg !3884

if.end:                                           ; preds = %entry
  %2 = load %struct.kobject*, %struct.kobject** @tables_kobj, align 8, !dbg !3885
  %call1 = call %struct.kobject* @kobject_create_and_add(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0), %struct.kobject* %2) #8, !dbg !3886
  store %struct.kobject* %call1, %struct.kobject** @tables_data_kobj, align 8, !dbg !3887
  %3 = load %struct.kobject*, %struct.kobject** @tables_data_kobj, align 8, !dbg !3888
  %tobool2 = icmp ne %struct.kobject* %3, null, !dbg !3888
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !3890

if.then3:                                         ; preds = %if.end
  br label %err_tables_data, !dbg !3891

if.end4:                                          ; preds = %if.end
  %4 = load %struct.kobject*, %struct.kobject** @tables_kobj, align 8, !dbg !3892
  %call5 = call %struct.kobject* @kobject_create_and_add(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i64 0, i64 0), %struct.kobject* %4) #8, !dbg !3893
  store %struct.kobject* %call5, %struct.kobject** @dynamic_tables_kobj, align 8, !dbg !3894
  %5 = load %struct.kobject*, %struct.kobject** @dynamic_tables_kobj, align 8, !dbg !3895
  %tobool6 = icmp ne %struct.kobject* %5, null, !dbg !3895
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !3897

if.then7:                                         ; preds = %if.end4
  br label %err_dynamic_tables, !dbg !3898

if.end8:                                          ; preds = %if.end4
  store i32 0, i32* %table_index, align 4, !dbg !3899
  br label %for.cond, !dbg !3901

for.cond:                                         ; preds = %for.inc, %if.end8
  %6 = load i32, i32* %table_index, align 4, !dbg !3902
  %call9 = call i32 @acpi_get_table_by_index(i32 %6, %struct.acpi_table_header** %table_header) #8, !dbg !3905
  store i32 %call9, i32* %status, align 4, !dbg !3906
  %7 = load i32, i32* %status, align 4, !dbg !3907
  %cmp = icmp eq i32 %7, 4097, !dbg !3909
  br i1 %cmp, label %if.then10, label %if.end11, !dbg !3910

if.then10:                                        ; preds = %for.cond
  br label %for.end, !dbg !3911

if.end11:                                         ; preds = %for.cond
  %8 = load i32, i32* %status, align 4, !dbg !3912
  %tobool12 = icmp ne i32 %8, 0, !dbg !3912
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !3914

if.then13:                                        ; preds = %if.end11
  br label %for.inc, !dbg !3915

if.end14:                                         ; preds = %if.end11
  %call15 = call i8* @kzalloc(i64 88, i32 3264) #8, !dbg !3916
  %9 = bitcast i8* %call15 to %struct.acpi_table_attr*, !dbg !3916
  store %struct.acpi_table_attr* %9, %struct.acpi_table_attr** %table_attr, align 8, !dbg !3917
  %10 = load %struct.acpi_table_attr*, %struct.acpi_table_attr** %table_attr, align 8, !dbg !3918
  %tobool16 = icmp ne %struct.acpi_table_attr* %10, null, !dbg !3918
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !3920

if.then17:                                        ; preds = %if.end14
  store i32 -12, i32* %retval, align 4, !dbg !3921
  br label %return, !dbg !3921

if.end18:                                         ; preds = %if.end14
  %11 = load %struct.kobject*, %struct.kobject** @tables_kobj, align 8, !dbg !3922
  %12 = load %struct.acpi_table_attr*, %struct.acpi_table_attr** %table_attr, align 8, !dbg !3923
  %13 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table_header, align 8, !dbg !3924
  %call19 = call i32 @acpi_table_attr_init(%struct.kobject* %11, %struct.acpi_table_attr* %12, %struct.acpi_table_header* %13) #8, !dbg !3925
  store i32 %call19, i32* %ret, align 4, !dbg !3926
  %14 = load i32, i32* %ret, align 4, !dbg !3927
  %tobool20 = icmp ne i32 %14, 0, !dbg !3927
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !3929

if.then21:                                        ; preds = %if.end18
  %15 = load %struct.acpi_table_attr*, %struct.acpi_table_attr** %table_attr, align 8, !dbg !3930
  %16 = bitcast %struct.acpi_table_attr* %15 to i8*, !dbg !3930
  call void @kfree(i8* %16) #8, !dbg !3932
  %17 = load i32, i32* %ret, align 4, !dbg !3933
  store i32 %17, i32* %retval, align 4, !dbg !3934
  br label %return, !dbg !3934

if.end22:                                         ; preds = %if.end18
  %18 = load %struct.acpi_table_attr*, %struct.acpi_table_attr** %table_attr, align 8, !dbg !3935
  %node = getelementptr inbounds %struct.acpi_table_attr, %struct.acpi_table_attr* %18, i32 0, i32 4, !dbg !3936
  call void @list_add_tail(%struct.list_head* %node, %struct.list_head* @acpi_table_attr_list) #8, !dbg !3937
  %19 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table_header, align 8, !dbg !3938
  %call23 = call i32 @acpi_table_data_init(%struct.acpi_table_header* %19) #8, !dbg !3939
  br label %for.inc, !dbg !3940

for.inc:                                          ; preds = %if.end22, %if.then13
  %20 = load i32, i32* %table_index, align 4, !dbg !3941
  %inc = add i32 %20, 1, !dbg !3941
  store i32 %inc, i32* %table_index, align 4, !dbg !3941
  br label %for.cond, !dbg !3942, !llvm.loop !3943

for.end:                                          ; preds = %if.then10
  %21 = load %struct.kobject*, %struct.kobject** @tables_kobj, align 8, !dbg !3946
  %call24 = call i32 @kobject_uevent(%struct.kobject* %21, i32 0) #8, !dbg !3947
  %22 = load %struct.kobject*, %struct.kobject** @tables_data_kobj, align 8, !dbg !3948
  %call25 = call i32 @kobject_uevent(%struct.kobject* %22, i32 0) #8, !dbg !3949
  %23 = load %struct.kobject*, %struct.kobject** @dynamic_tables_kobj, align 8, !dbg !3950
  %call26 = call i32 @kobject_uevent(%struct.kobject* %23, i32 0) #8, !dbg !3951
  store i32 0, i32* %retval, align 4, !dbg !3952
  br label %return, !dbg !3952

err_dynamic_tables:                               ; preds = %if.then7
  call void @llvm.dbg.label(metadata !3953), !dbg !3954
  %24 = load %struct.kobject*, %struct.kobject** @tables_data_kobj, align 8, !dbg !3955
  call void @kobject_put(%struct.kobject* %24) #8, !dbg !3956
  br label %err_tables_data, !dbg !3956

err_tables_data:                                  ; preds = %err_dynamic_tables, %if.then3
  call void @llvm.dbg.label(metadata !3957), !dbg !3958
  %25 = load %struct.kobject*, %struct.kobject** @tables_kobj, align 8, !dbg !3959
  call void @kobject_put(%struct.kobject* %25) #8, !dbg !3960
  br label %err, !dbg !3960

err:                                              ; preds = %err_tables_data, %if.then
  call void @llvm.dbg.label(metadata !3961), !dbg !3962
  store i32 -12, i32* %retval, align 4, !dbg !3963
  br label %return, !dbg !3963

return:                                           ; preds = %err, %for.end, %if.then21, %if.then17
  %26 = load i32, i32* %retval, align 4, !dbg !3964
  ret i32 %26, !dbg !3964
}

; Function Attrs: noredzone
declare dso_local %struct.kobject* @kobject_create_and_add(i8*, %struct.kobject*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sysfs_create_file(%struct.kobject* %kobj, %struct.attribute* %attr) #0 !dbg !3965 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  %attr.addr = alloca %struct.attribute*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !3970, metadata !DIExpression()), !dbg !3971
  store %struct.attribute* %attr, %struct.attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute** %attr.addr, metadata !3972, metadata !DIExpression()), !dbg !3973
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !3974
  %1 = load %struct.attribute*, %struct.attribute** %attr.addr, align 8, !dbg !3975
  %call = call i32 @sysfs_create_file_ns(%struct.kobject* %0, %struct.attribute* %1, i8* null) #8, !dbg !3976
  ret i32 %call, !dbg !3977
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @param_get_acpica_version(i8* %buffer, %struct.kernel_param* %kp) #0 !dbg !3978 {
entry:
  %buffer.addr = alloca i8*, align 8
  %kp.addr = alloca %struct.kernel_param*, align 8
  %result = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !3979, metadata !DIExpression()), !dbg !3980
  store %struct.kernel_param* %kp, %struct.kernel_param** %kp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kernel_param** %kp.addr, metadata !3981, metadata !DIExpression()), !dbg !3982
  call void @llvm.dbg.declare(metadata i32* %result, metadata !3983, metadata !DIExpression()), !dbg !3984
  %0 = load i8*, i8** %buffer.addr, align 8, !dbg !3985
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i32 538970405) #8, !dbg !3986
  store i32 %call, i32* %result, align 4, !dbg !3987
  %1 = load i32, i32* %result, align 4, !dbg !3988
  ret i32 %1, !dbg !3989
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !3990 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3994, metadata !DIExpression()), !dbg !3999
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4001, metadata !DIExpression()), !dbg !4002
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4003, metadata !DIExpression()), !dbg !4004
  %0 = load i64, i64* %size.addr, align 8, !dbg !4005
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4007
  br i1 %1, label %if.then, label %if.end447, !dbg !4008

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4009
  %tobool = icmp ne i64 %2, 0, !dbg !4009
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4012

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4013
  br label %return, !dbg !4013

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4014
  %cmp = icmp ult i64 %3, 4096, !dbg !4016
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4017

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4018
  br label %return, !dbg !4018

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub = sub i64 %4, 1, !dbg !4019
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4019
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4019

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub4 = sub i64 %6, 1, !dbg !4019
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4019
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4019

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub6 = sub i64 %8, 1, !dbg !4019
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4019
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4019

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4019

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub9 = sub i64 %9, 1, !dbg !4019
  %and = and i64 %sub9, -9223372036854775808, !dbg !4019
  %tobool10 = icmp ne i64 %and, 0, !dbg !4019
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4019

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4019

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub13 = sub i64 %10, 1, !dbg !4019
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4019
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4019
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4019

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4019

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub18 = sub i64 %11, 1, !dbg !4019
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4019
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4019
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4019

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4019

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub23 = sub i64 %12, 1, !dbg !4019
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4019
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4019
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4019

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4019

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub28 = sub i64 %13, 1, !dbg !4019
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4019
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4019
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4019

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4019

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub33 = sub i64 %14, 1, !dbg !4019
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4019
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4019
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4019

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4019

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub38 = sub i64 %15, 1, !dbg !4019
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4019
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4019
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4019

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4019

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub43 = sub i64 %16, 1, !dbg !4019
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4019
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4019
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4019

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4019

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub48 = sub i64 %17, 1, !dbg !4019
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4019
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4019
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4019

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4019

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub53 = sub i64 %18, 1, !dbg !4019
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4019
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4019
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4019

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4019

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub58 = sub i64 %19, 1, !dbg !4019
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4019
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4019
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4019

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4019

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub63 = sub i64 %20, 1, !dbg !4019
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4019
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4019
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4019

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4019

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub68 = sub i64 %21, 1, !dbg !4019
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4019
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4019
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4019

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4019

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub73 = sub i64 %22, 1, !dbg !4019
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4019
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4019
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4019

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4019

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub78 = sub i64 %23, 1, !dbg !4019
  %and79 = and i64 %sub78, 562949953421312, !dbg !4019
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4019
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4019

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4019

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub83 = sub i64 %24, 1, !dbg !4019
  %and84 = and i64 %sub83, 281474976710656, !dbg !4019
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4019
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4019

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4019

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub88 = sub i64 %25, 1, !dbg !4019
  %and89 = and i64 %sub88, 140737488355328, !dbg !4019
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4019
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4019

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4019

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub93 = sub i64 %26, 1, !dbg !4019
  %and94 = and i64 %sub93, 70368744177664, !dbg !4019
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4019
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4019

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4019

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub98 = sub i64 %27, 1, !dbg !4019
  %and99 = and i64 %sub98, 35184372088832, !dbg !4019
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4019
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4019

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4019

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub103 = sub i64 %28, 1, !dbg !4019
  %and104 = and i64 %sub103, 17592186044416, !dbg !4019
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4019
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4019

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4019

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub108 = sub i64 %29, 1, !dbg !4019
  %and109 = and i64 %sub108, 8796093022208, !dbg !4019
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4019
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4019

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4019

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub113 = sub i64 %30, 1, !dbg !4019
  %and114 = and i64 %sub113, 4398046511104, !dbg !4019
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4019
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4019

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4019

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub118 = sub i64 %31, 1, !dbg !4019
  %and119 = and i64 %sub118, 2199023255552, !dbg !4019
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4019
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4019

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4019

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub123 = sub i64 %32, 1, !dbg !4019
  %and124 = and i64 %sub123, 1099511627776, !dbg !4019
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4019
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4019

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4019

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub128 = sub i64 %33, 1, !dbg !4019
  %and129 = and i64 %sub128, 549755813888, !dbg !4019
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4019
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4019

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4019

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub133 = sub i64 %34, 1, !dbg !4019
  %and134 = and i64 %sub133, 274877906944, !dbg !4019
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4019
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4019

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4019

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub138 = sub i64 %35, 1, !dbg !4019
  %and139 = and i64 %sub138, 137438953472, !dbg !4019
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4019
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4019

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4019

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub143 = sub i64 %36, 1, !dbg !4019
  %and144 = and i64 %sub143, 68719476736, !dbg !4019
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4019
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4019

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4019

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub148 = sub i64 %37, 1, !dbg !4019
  %and149 = and i64 %sub148, 34359738368, !dbg !4019
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4019
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4019

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4019

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub153 = sub i64 %38, 1, !dbg !4019
  %and154 = and i64 %sub153, 17179869184, !dbg !4019
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4019
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4019

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4019

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub158 = sub i64 %39, 1, !dbg !4019
  %and159 = and i64 %sub158, 8589934592, !dbg !4019
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4019
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4019

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4019

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub163 = sub i64 %40, 1, !dbg !4019
  %and164 = and i64 %sub163, 4294967296, !dbg !4019
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4019
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4019

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4019

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub168 = sub i64 %41, 1, !dbg !4019
  %and169 = and i64 %sub168, 2147483648, !dbg !4019
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4019
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4019

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4019

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub173 = sub i64 %42, 1, !dbg !4019
  %and174 = and i64 %sub173, 1073741824, !dbg !4019
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4019
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4019

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4019

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub178 = sub i64 %43, 1, !dbg !4019
  %and179 = and i64 %sub178, 536870912, !dbg !4019
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4019
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4019

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4019

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub183 = sub i64 %44, 1, !dbg !4019
  %and184 = and i64 %sub183, 268435456, !dbg !4019
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4019
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4019

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4019

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub188 = sub i64 %45, 1, !dbg !4019
  %and189 = and i64 %sub188, 134217728, !dbg !4019
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4019
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4019

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4019

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub193 = sub i64 %46, 1, !dbg !4019
  %and194 = and i64 %sub193, 67108864, !dbg !4019
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4019
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4019

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4019

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub198 = sub i64 %47, 1, !dbg !4019
  %and199 = and i64 %sub198, 33554432, !dbg !4019
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4019
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4019

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4019

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub203 = sub i64 %48, 1, !dbg !4019
  %and204 = and i64 %sub203, 16777216, !dbg !4019
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4019
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4019

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4019

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub208 = sub i64 %49, 1, !dbg !4019
  %and209 = and i64 %sub208, 8388608, !dbg !4019
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4019
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4019

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4019

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub213 = sub i64 %50, 1, !dbg !4019
  %and214 = and i64 %sub213, 4194304, !dbg !4019
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4019
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4019

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4019

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub218 = sub i64 %51, 1, !dbg !4019
  %and219 = and i64 %sub218, 2097152, !dbg !4019
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4019
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4019

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4019

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub223 = sub i64 %52, 1, !dbg !4019
  %and224 = and i64 %sub223, 1048576, !dbg !4019
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4019
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4019

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4019

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub228 = sub i64 %53, 1, !dbg !4019
  %and229 = and i64 %sub228, 524288, !dbg !4019
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4019
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4019

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4019

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub233 = sub i64 %54, 1, !dbg !4019
  %and234 = and i64 %sub233, 262144, !dbg !4019
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4019
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4019

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4019

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub238 = sub i64 %55, 1, !dbg !4019
  %and239 = and i64 %sub238, 131072, !dbg !4019
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4019
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4019

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4019

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub243 = sub i64 %56, 1, !dbg !4019
  %and244 = and i64 %sub243, 65536, !dbg !4019
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4019
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4019

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4019

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub248 = sub i64 %57, 1, !dbg !4019
  %and249 = and i64 %sub248, 32768, !dbg !4019
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4019
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4019

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4019

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub253 = sub i64 %58, 1, !dbg !4019
  %and254 = and i64 %sub253, 16384, !dbg !4019
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4019
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4019

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4019

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub258 = sub i64 %59, 1, !dbg !4019
  %and259 = and i64 %sub258, 8192, !dbg !4019
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4019
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4019

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4019

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub263 = sub i64 %60, 1, !dbg !4019
  %and264 = and i64 %sub263, 4096, !dbg !4019
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4019
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4019

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4019

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub268 = sub i64 %61, 1, !dbg !4019
  %and269 = and i64 %sub268, 2048, !dbg !4019
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4019
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4019

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4019

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub273 = sub i64 %62, 1, !dbg !4019
  %and274 = and i64 %sub273, 1024, !dbg !4019
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4019
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4019

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4019

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub278 = sub i64 %63, 1, !dbg !4019
  %and279 = and i64 %sub278, 512, !dbg !4019
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4019
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4019

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4019

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub283 = sub i64 %64, 1, !dbg !4019
  %and284 = and i64 %sub283, 256, !dbg !4019
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4019
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4019

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4019

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub288 = sub i64 %65, 1, !dbg !4019
  %and289 = and i64 %sub288, 128, !dbg !4019
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4019
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4019

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4019

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub293 = sub i64 %66, 1, !dbg !4019
  %and294 = and i64 %sub293, 64, !dbg !4019
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4019
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4019

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4019

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub298 = sub i64 %67, 1, !dbg !4019
  %and299 = and i64 %sub298, 32, !dbg !4019
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4019
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4019

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4019

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub303 = sub i64 %68, 1, !dbg !4019
  %and304 = and i64 %sub303, 16, !dbg !4019
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4019
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4019

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4019

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub308 = sub i64 %69, 1, !dbg !4019
  %and309 = and i64 %sub308, 8, !dbg !4019
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4019
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4019

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4019

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub313 = sub i64 %70, 1, !dbg !4019
  %and314 = and i64 %sub313, 4, !dbg !4019
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4019
  %71 = zext i1 %tobool315 to i64, !dbg !4019
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4019
  br label %cond.end, !dbg !4019

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4019
  br label %cond.end317, !dbg !4019

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4019
  br label %cond.end319, !dbg !4019

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4019
  br label %cond.end321, !dbg !4019

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4019
  br label %cond.end323, !dbg !4019

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4019
  br label %cond.end325, !dbg !4019

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4019
  br label %cond.end327, !dbg !4019

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4019
  br label %cond.end329, !dbg !4019

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4019
  br label %cond.end331, !dbg !4019

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4019
  br label %cond.end333, !dbg !4019

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4019
  br label %cond.end335, !dbg !4019

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4019
  br label %cond.end337, !dbg !4019

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4019
  br label %cond.end339, !dbg !4019

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4019
  br label %cond.end341, !dbg !4019

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4019
  br label %cond.end343, !dbg !4019

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4019
  br label %cond.end345, !dbg !4019

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4019
  br label %cond.end347, !dbg !4019

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4019
  br label %cond.end349, !dbg !4019

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4019
  br label %cond.end351, !dbg !4019

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4019
  br label %cond.end353, !dbg !4019

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4019
  br label %cond.end355, !dbg !4019

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4019
  br label %cond.end357, !dbg !4019

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4019
  br label %cond.end359, !dbg !4019

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4019
  br label %cond.end361, !dbg !4019

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4019
  br label %cond.end363, !dbg !4019

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4019
  br label %cond.end365, !dbg !4019

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4019
  br label %cond.end367, !dbg !4019

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4019
  br label %cond.end369, !dbg !4019

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4019
  br label %cond.end371, !dbg !4019

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4019
  br label %cond.end373, !dbg !4019

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4019
  br label %cond.end375, !dbg !4019

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4019
  br label %cond.end377, !dbg !4019

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4019
  br label %cond.end379, !dbg !4019

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4019
  br label %cond.end381, !dbg !4019

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4019
  br label %cond.end383, !dbg !4019

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4019
  br label %cond.end385, !dbg !4019

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4019
  br label %cond.end387, !dbg !4019

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4019
  br label %cond.end389, !dbg !4019

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4019
  br label %cond.end391, !dbg !4019

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4019
  br label %cond.end393, !dbg !4019

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4019
  br label %cond.end395, !dbg !4019

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4019
  br label %cond.end397, !dbg !4019

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4019
  br label %cond.end399, !dbg !4019

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4019
  br label %cond.end401, !dbg !4019

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4019
  br label %cond.end403, !dbg !4019

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4019
  br label %cond.end405, !dbg !4019

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4019
  br label %cond.end407, !dbg !4019

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4019
  br label %cond.end409, !dbg !4019

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4019
  br label %cond.end411, !dbg !4019

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4019
  br label %cond.end413, !dbg !4019

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4019
  br label %cond.end415, !dbg !4019

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4019
  br label %cond.end417, !dbg !4019

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4019
  br label %cond.end419, !dbg !4019

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4019
  br label %cond.end421, !dbg !4019

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4019
  br label %cond.end423, !dbg !4019

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4019
  br label %cond.end425, !dbg !4019

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4019
  br label %cond.end427, !dbg !4019

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4019
  br label %cond.end429, !dbg !4019

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4019
  br label %cond.end431, !dbg !4019

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4019
  br label %cond.end433, !dbg !4019

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4019
  br label %cond.end435, !dbg !4019

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4019
  br label %cond.end437, !dbg !4019

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4019
  br label %cond.end440, !dbg !4019

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4019

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4019
  br label %cond.end444, !dbg !4019

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4019
  %sub443 = sub i64 %72, 1, !dbg !4019
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !4019
  br label %cond.end444, !dbg !4019

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4019
  %sub446 = sub i32 %cond445, 12, !dbg !4020
  %add = add i32 %sub446, 1, !dbg !4021
  store i32 %add, i32* %retval, align 4, !dbg !4022
  br label %return, !dbg !4022

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4023
  %dec = add i64 %73, -1, !dbg !4023
  store i64 %dec, i64* %size.addr, align 8, !dbg !4023
  %74 = load i64, i64* %size.addr, align 8, !dbg !4024
  %shr = lshr i64 %74, 12, !dbg !4024
  store i64 %shr, i64* %size.addr, align 8, !dbg !4024
  %75 = load i64, i64* %size.addr, align 8, !dbg !4025
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4002
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4026
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4027
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !4026, !srcloc !4028
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4026
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4029
  %add.i = add i32 %79, 1, !dbg !4030
  store i32 %add.i, i32* %retval, align 4, !dbg !4031
  br label %return, !dbg !4031

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4032
  ret i32 %80, !dbg !4032
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !4033 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3994, metadata !DIExpression()), !dbg !4037
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4001, metadata !DIExpression()), !dbg !4039
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4040, metadata !DIExpression()), !dbg !4041
  %0 = load i64, i64* %n.addr, align 8, !dbg !4042
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4039
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4043
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4044
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !4043, !srcloc !4028
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4043
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4045
  %add.i = add i32 %4, 1, !dbg !4046
  %sub = sub i32 %add.i, 1, !dbg !4047
  ret i32 %sub, !dbg !4048
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !4049 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4053, metadata !DIExpression()), !dbg !4054
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4055, metadata !DIExpression()), !dbg !4056
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4057, metadata !DIExpression()), !dbg !4058
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4059, metadata !DIExpression()), !dbg !4060
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4061
  ret i8* %0, !dbg !4062
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_get_table(i8*, i32, %struct.acpi_table_header**) #2

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i8* @strcat(i8*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @acpi_table_show(%struct.file* %filp, %struct.kobject* %kobj, %struct.bin_attribute* %bin_attr, i8* %buf, i64 %offset, i64 %count) #0 !dbg !4063 {
entry:
  %retval = alloca i64, align 8
  %filp.addr = alloca %struct.file*, align 8
  %kobj.addr = alloca %struct.kobject*, align 8
  %bin_attr.addr = alloca %struct.bin_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %offset.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  %table_attr = alloca %struct.acpi_table_attr*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_table_attr*, align 8
  %table_header = alloca %struct.acpi_table_header*, align 8
  %status = alloca i32, align 4
  %rc = alloca i64, align 8
  store %struct.file* %filp, %struct.file** %filp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %filp.addr, metadata !4064, metadata !DIExpression()), !dbg !4065
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !4066, metadata !DIExpression()), !dbg !4067
  store %struct.bin_attribute* %bin_attr, %struct.bin_attribute** %bin_attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bin_attribute** %bin_attr.addr, metadata !4068, metadata !DIExpression()), !dbg !4069
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4070, metadata !DIExpression()), !dbg !4071
  store i64 %offset, i64* %offset.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %offset.addr, metadata !4072, metadata !DIExpression()), !dbg !4073
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !4074, metadata !DIExpression()), !dbg !4075
  call void @llvm.dbg.declare(metadata %struct.acpi_table_attr** %table_attr, metadata !4076, metadata !DIExpression()), !dbg !4077
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4078, metadata !DIExpression()), !dbg !4080
  %0 = load %struct.bin_attribute*, %struct.bin_attribute** %bin_attr.addr, align 8, !dbg !4080
  %1 = bitcast %struct.bin_attribute* %0 to i8*, !dbg !4080
  store i8* %1, i8** %__mptr, align 8, !dbg !4080
  br label %do.body, !dbg !4080

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4081

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4080
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !4080
  %3 = bitcast i8* %add.ptr to %struct.acpi_table_attr*, !dbg !4080
  store %struct.acpi_table_attr* %3, %struct.acpi_table_attr** %tmp, align 8, !dbg !4081
  %4 = load %struct.acpi_table_attr*, %struct.acpi_table_attr** %tmp, align 8, !dbg !4080
  store %struct.acpi_table_attr* %4, %struct.acpi_table_attr** %table_attr, align 8, !dbg !4077
  call void @llvm.dbg.declare(metadata %struct.acpi_table_header** %table_header, metadata !4083, metadata !DIExpression()), !dbg !4084
  store %struct.acpi_table_header* null, %struct.acpi_table_header** %table_header, align 8, !dbg !4084
  call void @llvm.dbg.declare(metadata i32* %status, metadata !4085, metadata !DIExpression()), !dbg !4086
  call void @llvm.dbg.declare(metadata i64* %rc, metadata !4087, metadata !DIExpression()), !dbg !4088
  %5 = load %struct.acpi_table_attr*, %struct.acpi_table_attr** %table_attr, align 8, !dbg !4089
  %name = getelementptr inbounds %struct.acpi_table_attr, %struct.acpi_table_attr* %5, i32 0, i32 1, !dbg !4090
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %name, i64 0, i64 0, !dbg !4089
  %6 = load %struct.acpi_table_attr*, %struct.acpi_table_attr** %table_attr, align 8, !dbg !4091
  %instance = getelementptr inbounds %struct.acpi_table_attr, %struct.acpi_table_attr* %6, i32 0, i32 2, !dbg !4092
  %7 = load i32, i32* %instance, align 4, !dbg !4092
  %call = call i32 @acpi_get_table(i8* %arraydecay, i32 %7, %struct.acpi_table_header** %table_header) #8, !dbg !4093
  store i32 %call, i32* %status, align 4, !dbg !4094
  %8 = load i32, i32* %status, align 4, !dbg !4095
  %tobool = icmp ne i32 %8, 0, !dbg !4095
  br i1 %tobool, label %if.then, label %if.end, !dbg !4097

if.then:                                          ; preds = %do.end
  store i64 -19, i64* %retval, align 8, !dbg !4098
  br label %return, !dbg !4098

if.end:                                           ; preds = %do.end
  %9 = load i8*, i8** %buf.addr, align 8, !dbg !4099
  %10 = load i64, i64* %count.addr, align 8, !dbg !4100
  %11 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table_header, align 8, !dbg !4101
  %12 = bitcast %struct.acpi_table_header* %11 to i8*, !dbg !4101
  %13 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table_header, align 8, !dbg !4102
  %length = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %13, i32 0, i32 1, !dbg !4103
  %14 = load i32, i32* %length, align 1, !dbg !4103
  %conv = zext i32 %14 to i64, !dbg !4102
  %call1 = call i64 @memory_read_from_buffer(i8* %9, i64 %10, i64* %offset.addr, i8* %12, i64 %conv) #8, !dbg !4104
  store i64 %call1, i64* %rc, align 8, !dbg !4105
  %15 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table_header, align 8, !dbg !4106
  call void @acpi_put_table(%struct.acpi_table_header* %15) #8, !dbg !4107
  %16 = load i64, i64* %rc, align 8, !dbg !4108
  store i64 %16, i64* %retval, align 8, !dbg !4109
  br label %return, !dbg !4109

return:                                           ; preds = %if.end, %if.then
  %17 = load i64, i64* %retval, align 8, !dbg !4110
  ret i64 %17, !dbg !4110
}

; Function Attrs: noredzone
declare dso_local i32 @sysfs_create_bin_file(%struct.kobject*, %struct.bin_attribute*) #2

; Function Attrs: noredzone
declare dso_local i64 @memory_read_from_buffer(i8*, i64, i64*, i8*, i64) #2

; Function Attrs: noredzone
declare dso_local void @acpi_put_table(%struct.acpi_table_header*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !4111 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4114, metadata !DIExpression()), !dbg !4115
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !4116, metadata !DIExpression()), !dbg !4117
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !4118, metadata !DIExpression()), !dbg !4119
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4120
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4122
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4123
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #8, !dbg !4124
  br i1 %call, label %if.end, label %if.then, !dbg !4125

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !4126

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4127
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4128
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !4129
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !4130
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4131
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4132
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !4133
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !4134
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4135
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4136
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !4137
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !4138
  br label %do.body, !dbg !4139

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !4140

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !4142

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !4140

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4144
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4144
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !4144
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !4144
  br label %do.end7, !dbg !4144

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !4140

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !4146
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !4147 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4150, metadata !DIExpression()), !dbg !4151
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !4152, metadata !DIExpression()), !dbg !4153
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !4154, metadata !DIExpression()), !dbg !4155
  ret i1 true, !dbg !4156
}

; Function Attrs: noredzone
declare dso_local i32 @kstrtou8(i8*, i32, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_bit(i64 %nr, i64* %addr) #0 !dbg !4157 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !4163, metadata !DIExpression()), !dbg !4165
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !4167, metadata !DIExpression()), !dbg !4168
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !4169, metadata !DIExpression()), !dbg !4177
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4179, metadata !DIExpression()), !dbg !4180
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !4181, metadata !DIExpression()), !dbg !4182
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !4183, metadata !DIExpression()), !dbg !4184
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !4185
  %1 = load i64, i64* %nr.addr, align 8, !dbg !4186
  %div = sdiv i64 %1, 64, !dbg !4186
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !4187
  %2 = bitcast i64* %add.ptr to i8*, !dbg !4185
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !4188
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4189
  %conv.i = trunc i64 %4 to i32, !dbg !4189
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #11, !dbg !4190
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !4191
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !4191
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #11, !dbg !4191
  %7 = load i64, i64* %nr.addr, align 8, !dbg !4192
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !4193
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !4194
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #9, !dbg !4196
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !4197

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !4198
  %12 = bitcast i64* %11 to i8*, !dbg !4198
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !4198
  %shr.i = ashr i64 %13, 3, !dbg !4198
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !4198
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !4200
  %and.i = and i64 %14, 7, !dbg !4200
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !4200
  %shl.i = shl i32 1, %sh_prom.i, !dbg !4200
  call void asm sideeffect "orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %shl.i, i8* %add.ptr.i) #9, !dbg !4201, !srcloc !4202
  br label %arch_set_bit.exit, !dbg !4203

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !4204
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !4206
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #9, !dbg !4207, !srcloc !4208
  br label %arch_set_bit.exit

arch_set_bit.exit:                                ; preds = %if.then.i, %if.else.i
  ret void, !dbg !4209
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !4210 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !4214, metadata !DIExpression()), !dbg !4215
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !4216, metadata !DIExpression()), !dbg !4217
  ret i1 true, !dbg !4218
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !4219 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4223, metadata !DIExpression()), !dbg !4224
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4225, metadata !DIExpression()), !dbg !4226
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !4227, metadata !DIExpression()), !dbg !4228
  ret void, !dbg !4229
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kmalloc_array(i64 %n, i64 %size, i32 %flags) #0 !dbg !4230 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2667, metadata !DIExpression()), !dbg !4231
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2677, metadata !DIExpression()), !dbg !4235
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2679, metadata !DIExpression()), !dbg !4236
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2681, metadata !DIExpression()), !dbg !4237
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2683, metadata !DIExpression()), !dbg !4238
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2689, metadata !DIExpression()), !dbg !4240
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2695, metadata !DIExpression()), !dbg !4242
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !2704, metadata !DIExpression()), !dbg !4245
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !2706, metadata !DIExpression()), !dbg !4246
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2708, metadata !DIExpression()), !dbg !4247
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !2710, metadata !DIExpression()), !dbg !4248
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !2712, metadata !DIExpression()), !dbg !4249
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2714, metadata !DIExpression()), !dbg !4250
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !2716, metadata !DIExpression()), !dbg !4251
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !2718, metadata !DIExpression()), !dbg !4252
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
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4253, metadata !DIExpression()), !dbg !4254
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4255, metadata !DIExpression()), !dbg !4256
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4257, metadata !DIExpression()), !dbg !4258
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !4259, metadata !DIExpression()), !dbg !4260
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !4261, metadata !DIExpression()), !dbg !4264
  %0 = load i64, i64* %n.addr, align 8, !dbg !4264
  store i64 %0, i64* %__a, align 8, !dbg !4264
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !4265, metadata !DIExpression()), !dbg !4264
  %1 = load i64, i64* %size.addr, align 8, !dbg !4264
  store i64 %1, i64* %__b, align 8, !dbg !4264
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !4266, metadata !DIExpression()), !dbg !4264
  store i64* %bytes, i64** %__d, align 8, !dbg !4264
  %cmp = icmp eq i64* %__a, %__b, !dbg !4264
  %conv = zext i1 %cmp to i32, !dbg !4264
  %2 = load i64*, i64** %__d, align 8, !dbg !4264
  %cmp1 = icmp eq i64* %__a, %2, !dbg !4264
  %conv2 = zext i1 %cmp1 to i32, !dbg !4264
  %3 = load i64, i64* %__a, align 8, !dbg !4264
  %4 = load i64, i64* %__b, align 8, !dbg !4264
  %5 = load i64*, i64** %__d, align 8, !dbg !4264
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !4264
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4264
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !4264
  store i64 %8, i64* %5, align 8, !dbg !4264
  %frombool = zext i1 %7 to i8, !dbg !4264
  store i8 %frombool, i8* %tmp, align 1, !dbg !4264
  %9 = load i8, i8* %tmp, align 1, !dbg !4264
  %tobool = trunc i8 %9 to i1, !dbg !4264
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #8, !dbg !4268
  %lnot = xor i1 %call, true, !dbg !4268
  %lnot3 = xor i1 %lnot, true, !dbg !4268
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !4268
  %conv4 = sext i32 %lnot.ext to i64, !dbg !4268
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !4268
  br i1 %tobool5, label %if.then, label %if.end, !dbg !4269

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !4270
  br label %return, !dbg !4270

if.end:                                           ; preds = %entry
  %10 = load i64, i64* %n.addr, align 8, !dbg !4271
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !4272
  br i1 %11, label %land.lhs.true, label %if.end8, !dbg !4273

land.lhs.true:                                    ; preds = %if.end
  %12 = load i64, i64* %size.addr, align 8, !dbg !4274
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !4275
  br i1 %13, label %if.then6, label %if.end8, !dbg !4276

if.then6:                                         ; preds = %land.lhs.true
  %14 = load i64, i64* %bytes, align 8, !dbg !4277
  %15 = load i32, i32* %flags.addr, align 4, !dbg !4278
  store i64 %14, i64* %size.addr.i, align 8
  store i32 %15, i32* %flags.addr.i, align 4
  %16 = load i64, i64* %size.addr.i, align 8, !dbg !4279
  %17 = call i1 @llvm.is.constant.i64(i64 %16) #9, !dbg !4280
  br i1 %17, label %if.then.i, label %if.end9.i, !dbg !4281

if.then.i:                                        ; preds = %if.then6
  %18 = load i64, i64* %size.addr.i, align 8, !dbg !4282
  %cmp.i = icmp ugt i64 %18, 8192, !dbg !4283
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4284

if.then1.i:                                       ; preds = %if.then.i
  %19 = load i64, i64* %size.addr.i, align 8, !dbg !4285
  %20 = load i32, i32* %flags.addr.i, align 4, !dbg !4286
  store i64 %19, i64* %size.addr.i.i, align 8
  store i32 %20, i32* %flags.addr.i.i, align 4
  %21 = load i64, i64* %size.addr.i.i, align 8, !dbg !4287
  %call.i.i = call i32 @get_order(i64 %21) #10, !dbg !4288
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4249
  %22 = load i64, i64* %size.addr.i.i, align 8, !dbg !4289
  %23 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4290
  %24 = load i32, i32* %order.i.i, align 4, !dbg !4291
  store i64 %22, i64* %size.addr.i.i.i, align 8
  store i32 %23, i32* %flags.addr.i.i.i, align 4
  store i32 %24, i32* %order.addr.i.i.i, align 4
  %25 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4292
  %26 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4293
  %27 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4294
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %25, i32 %26, i32 %27) #11, !dbg !4295
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4295
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4295
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4295
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !4295
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4296
  br label %kmalloc.exit, !dbg !4296

if.end.i:                                         ; preds = %if.then.i
  %28 = load i64, i64* %size.addr.i, align 8, !dbg !4297
  store i64 %28, i64* %size.addr.i11.i, align 8
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4298
  %tobool.i.i = icmp ne i64 %29, 0, !dbg !4298
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4299

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4300
  br label %kmalloc_index.exit.i, !dbg !4300

if.end.i.i:                                       ; preds = %if.end.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4301
  %cmp.i.i = icmp ule i64 %30, 8, !dbg !4302
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4303

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4304
  br label %kmalloc_index.exit.i, !dbg !4304

if.end2.i.i:                                      ; preds = %if.end.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4305
  %cmp3.i.i = icmp ugt i64 %31, 64, !dbg !4306
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4307

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4308
  %cmp4.i.i = icmp ule i64 %32, 96, !dbg !4309
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4310

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4311
  br label %kmalloc_index.exit.i, !dbg !4311

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4312
  %cmp7.i.i = icmp ugt i64 %33, 128, !dbg !4313
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4314

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4315
  %cmp9.i.i = icmp ule i64 %34, 192, !dbg !4316
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4317

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4318
  br label %kmalloc_index.exit.i, !dbg !4318

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4319
  %cmp12.i.i = icmp ule i64 %35, 8, !dbg !4320
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4321

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4322
  br label %kmalloc_index.exit.i, !dbg !4322

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4323
  %cmp15.i.i = icmp ule i64 %36, 16, !dbg !4324
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4325

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4326
  br label %kmalloc_index.exit.i, !dbg !4326

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4327
  %cmp18.i.i = icmp ule i64 %37, 32, !dbg !4328
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4329

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4330
  br label %kmalloc_index.exit.i, !dbg !4330

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4331
  %cmp21.i.i = icmp ule i64 %38, 64, !dbg !4332
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4333

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4334
  br label %kmalloc_index.exit.i, !dbg !4334

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4335
  %cmp24.i.i = icmp ule i64 %39, 128, !dbg !4336
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4337

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4338
  br label %kmalloc_index.exit.i, !dbg !4338

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4339
  %cmp27.i.i = icmp ule i64 %40, 256, !dbg !4340
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4341

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4342
  br label %kmalloc_index.exit.i, !dbg !4342

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4343
  %cmp30.i.i = icmp ule i64 %41, 512, !dbg !4344
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4345

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4346
  br label %kmalloc_index.exit.i, !dbg !4346

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4347
  %cmp33.i.i = icmp ule i64 %42, 1024, !dbg !4348
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4349

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4350
  br label %kmalloc_index.exit.i, !dbg !4350

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4351
  %cmp36.i.i = icmp ule i64 %43, 2048, !dbg !4352
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4353

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4354
  br label %kmalloc_index.exit.i, !dbg !4354

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4355
  %cmp39.i.i = icmp ule i64 %44, 4096, !dbg !4356
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4357

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4358
  br label %kmalloc_index.exit.i, !dbg !4358

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4359
  %cmp42.i.i = icmp ule i64 %45, 8192, !dbg !4360
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4361

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4362
  br label %kmalloc_index.exit.i, !dbg !4362

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4363
  %cmp45.i.i = icmp ule i64 %46, 16384, !dbg !4364
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4365

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4366
  br label %kmalloc_index.exit.i, !dbg !4366

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4367
  %cmp48.i.i = icmp ule i64 %47, 32768, !dbg !4368
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4369

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4370
  br label %kmalloc_index.exit.i, !dbg !4370

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4371
  %cmp51.i.i = icmp ule i64 %48, 65536, !dbg !4372
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4373

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4374
  br label %kmalloc_index.exit.i, !dbg !4374

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4375
  %cmp54.i.i = icmp ule i64 %49, 131072, !dbg !4376
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4377

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4378
  br label %kmalloc_index.exit.i, !dbg !4378

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4379
  %cmp57.i.i = icmp ule i64 %50, 262144, !dbg !4380
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4381

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4382
  br label %kmalloc_index.exit.i, !dbg !4382

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4383
  %cmp60.i.i = icmp ule i64 %51, 524288, !dbg !4384
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4385

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4386
  br label %kmalloc_index.exit.i, !dbg !4386

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4387
  %cmp63.i.i = icmp ule i64 %52, 1048576, !dbg !4388
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4389

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4390
  br label %kmalloc_index.exit.i, !dbg !4390

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4391
  %cmp66.i.i = icmp ule i64 %53, 2097152, !dbg !4392
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4393

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4394
  br label %kmalloc_index.exit.i, !dbg !4394

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4395
  %cmp69.i.i = icmp ule i64 %54, 4194304, !dbg !4396
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4397

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4398
  br label %kmalloc_index.exit.i, !dbg !4398

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4399
  %cmp72.i.i = icmp ule i64 %55, 8388608, !dbg !4400
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4401

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4402
  br label %kmalloc_index.exit.i, !dbg !4402

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4403
  %cmp75.i.i = icmp ule i64 %56, 16777216, !dbg !4404
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4405

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4406
  br label %kmalloc_index.exit.i, !dbg !4406

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4407
  %cmp78.i.i = icmp ule i64 %57, 33554432, !dbg !4408
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4409

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4410
  br label %kmalloc_index.exit.i, !dbg !4410

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4411
  %cmp81.i.i = icmp ule i64 %58, 67108864, !dbg !4412
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4413

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4414
  br label %kmalloc_index.exit.i, !dbg !4414

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !4415, !srcloc !2894
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 102) #9, !dbg !4416, !srcloc !2898
  unreachable, !dbg !4417

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %59 = load i32, i32* %retval.i.i, align 4, !dbg !4418
  store i32 %59, i32* %index.i, align 4, !dbg !4419
  %60 = load i32, i32* %index.i, align 4, !dbg !4420
  %tobool.i = icmp ne i32 %60, 0, !dbg !4420
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4421

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4422
  br label %kmalloc.exit, !dbg !4422

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %61 = load i32, i32* %flags.addr.i, align 4, !dbg !4423
  store i32 %61, i32* %flags.addr.i13.i, align 4
  %62 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4424
  %and.i.i = and i32 %62, 17, !dbg !4424
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4424
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4424
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4424
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4424
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4425

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4426
  br label %kmalloc_type.exit.i, !dbg !4426

if.end.i16.i:                                     ; preds = %if.end4.i
  %63 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4427
  %and2.i.i = and i32 %63, 1, !dbg !4428
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4427
  %64 = zext i1 %tobool3.i.i to i64, !dbg !4427
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4427
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4429
  br label %kmalloc_type.exit.i, !dbg !4429

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %65 = load i32, i32* %retval.i12.i, align 4, !dbg !4430
  %idxprom.i = zext i32 %65 to i64, !dbg !4431
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4431
  %66 = load i32, i32* %index.i, align 4, !dbg !4432
  %idxprom6.i = zext i32 %66 to i64, !dbg !4431
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4431
  %67 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4431
  %68 = load i32, i32* %flags.addr.i, align 4, !dbg !4433
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !4434
  store %struct.kmem_cache* %67, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %68, i32* %flags.addr.i17.i, align 4
  store i64 %69, i64* %size.addr.i18.i, align 8
  %70 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4435
  %71 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4436
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %70, i32 %71) #11, !dbg !4437
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4437
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4437
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4437
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !4437
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4237
  %72 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4438
  %73 = load i8*, i8** %ret.i.i, align 8, !dbg !4439
  %74 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4440
  %75 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4441
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %72, i8* %73, i64 %74, i32 %75) #11, !dbg !4442
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4443
  %76 = load i8*, i8** %ret.i.i, align 8, !dbg !4444
  store i8* %76, i8** %retval.i, align 8, !dbg !4445
  br label %kmalloc.exit, !dbg !4445

if.end9.i:                                        ; preds = %if.then6
  %77 = load i64, i64* %size.addr.i, align 8, !dbg !4446
  %78 = load i32, i32* %flags.addr.i, align 4, !dbg !4447
  %call10.i = call noalias i8* @__kmalloc(i64 %77, i32 %78) #11, !dbg !4448
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4448
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4448
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4448
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !4448
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4449
  br label %kmalloc.exit, !dbg !4449

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %79 = load i8*, i8** %retval.i, align 8, !dbg !4450
  store i8* %79, i8** %retval, align 8, !dbg !4451
  br label %return, !dbg !4451

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %80 = load i64, i64* %bytes, align 8, !dbg !4452
  %81 = load i32, i32* %flags.addr, align 4, !dbg !4453
  %call9 = call noalias i8* @__kmalloc(i64 %80, i32 %81) #8, !dbg !4454
  %ptrint = ptrtoint i8* %call9 to i64, !dbg !4454
  %maskedptr = and i64 %ptrint, 7, !dbg !4454
  %maskcond = icmp eq i64 %maskedptr, 0, !dbg !4454
  call void @llvm.assume(i1 %maskcond), !dbg !4454
  store i8* %call9, i8** %retval, align 8, !dbg !4455
  br label %return, !dbg !4455

return:                                           ; preds = %if.end8, %kmalloc.exit, %if.then
  %82 = load i8*, i8** %retval, align 8, !dbg !4456
  ret i8* %82, !dbg !4456
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #0 !dbg !4457 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !4461, metadata !DIExpression()), !dbg !4462
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !4463
  %tobool = trunc i8 %0 to i1, !dbg !4463
  %lnot = xor i1 %tobool, true, !dbg !4463
  %lnot1 = xor i1 %lnot, true, !dbg !4463
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4463
  %conv = sext i32 %lnot.ext to i64, !dbg !4463
  %tobool2 = icmp ne i64 %conv, 0, !dbg !4463
  ret i1 %tobool2, !dbg !4464
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gpe_count(i32 %gpe_number) #0 !dbg !4465 {
entry:
  %gpe_number.addr = alloca i32, align 4
  store i32 %gpe_number, i32* %gpe_number.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gpe_number.addr, metadata !4468, metadata !DIExpression()), !dbg !4469
  %0 = load i32, i32* @acpi_gpe_count, align 4, !dbg !4470
  %inc = add i32 %0, 1, !dbg !4470
  store i32 %inc, i32* @acpi_gpe_count, align 4, !dbg !4470
  %1 = load %struct.event_counter*, %struct.event_counter** @all_counters, align 8, !dbg !4471
  %tobool = icmp ne %struct.event_counter* %1, null, !dbg !4471
  br i1 %tobool, label %if.end, label %if.then, !dbg !4473

if.then:                                          ; preds = %entry
  br label %return, !dbg !4474

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %gpe_number.addr, align 4, !dbg !4475
  %3 = load i32, i32* @num_gpes, align 4, !dbg !4477
  %cmp = icmp ult i32 %2, %3, !dbg !4478
  br i1 %cmp, label %if.then1, label %if.else, !dbg !4479

if.then1:                                         ; preds = %if.end
  %4 = load %struct.event_counter*, %struct.event_counter** @all_counters, align 8, !dbg !4480
  %5 = load i32, i32* %gpe_number.addr, align 4, !dbg !4481
  %idxprom = zext i32 %5 to i64, !dbg !4480
  %arrayidx = getelementptr %struct.event_counter, %struct.event_counter* %4, i64 %idxprom, !dbg !4480
  %count = getelementptr inbounds %struct.event_counter, %struct.event_counter* %arrayidx, i32 0, i32 0, !dbg !4482
  %6 = load i32, i32* %count, align 4, !dbg !4483
  %inc2 = add i32 %6, 1, !dbg !4483
  store i32 %inc2, i32* %count, align 4, !dbg !4483
  br label %if.end9, !dbg !4480

if.else:                                          ; preds = %if.end
  %7 = load %struct.event_counter*, %struct.event_counter** @all_counters, align 8, !dbg !4484
  %8 = load i32, i32* @num_gpes, align 4, !dbg !4485
  %add = add i32 %8, 4, !dbg !4486
  %add3 = add i32 %add, 1, !dbg !4487
  %add4 = add i32 %add3, 3, !dbg !4488
  %idxprom5 = zext i32 %add4 to i64, !dbg !4484
  %arrayidx6 = getelementptr %struct.event_counter, %struct.event_counter* %7, i64 %idxprom5, !dbg !4484
  %count7 = getelementptr inbounds %struct.event_counter, %struct.event_counter* %arrayidx6, i32 0, i32 0, !dbg !4489
  %9 = load i32, i32* %count7, align 4, !dbg !4490
  %inc8 = add i32 %9, 1, !dbg !4490
  store i32 %inc8, i32* %count7, align 4, !dbg !4490
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then1
  br label %return, !dbg !4491

return:                                           ; preds = %if.end9, %if.then
  ret void, !dbg !4492
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @fixed_event_count(i32 %event_number) #0 !dbg !4493 {
entry:
  %event_number.addr = alloca i32, align 4
  store i32 %event_number, i32* %event_number.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %event_number.addr, metadata !4494, metadata !DIExpression()), !dbg !4495
  %0 = load %struct.event_counter*, %struct.event_counter** @all_counters, align 8, !dbg !4496
  %tobool = icmp ne %struct.event_counter* %0, null, !dbg !4496
  br i1 %tobool, label %if.end, label %if.then, !dbg !4498

if.then:                                          ; preds = %entry
  br label %return, !dbg !4499

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %event_number.addr, align 4, !dbg !4500
  %cmp = icmp ult i32 %1, 5, !dbg !4502
  br i1 %cmp, label %if.then1, label %if.else, !dbg !4503

if.then1:                                         ; preds = %if.end
  %2 = load %struct.event_counter*, %struct.event_counter** @all_counters, align 8, !dbg !4504
  %3 = load i32, i32* @num_gpes, align 4, !dbg !4505
  %4 = load i32, i32* %event_number.addr, align 4, !dbg !4506
  %add = add i32 %3, %4, !dbg !4507
  %idxprom = zext i32 %add to i64, !dbg !4504
  %arrayidx = getelementptr %struct.event_counter, %struct.event_counter* %2, i64 %idxprom, !dbg !4504
  %count = getelementptr inbounds %struct.event_counter, %struct.event_counter* %arrayidx, i32 0, i32 0, !dbg !4508
  %5 = load i32, i32* %count, align 4, !dbg !4509
  %inc = add i32 %5, 1, !dbg !4509
  store i32 %inc, i32* %count, align 4, !dbg !4509
  br label %if.end9, !dbg !4504

if.else:                                          ; preds = %if.end
  %6 = load %struct.event_counter*, %struct.event_counter** @all_counters, align 8, !dbg !4510
  %7 = load i32, i32* @num_gpes, align 4, !dbg !4511
  %add2 = add i32 %7, 4, !dbg !4512
  %add3 = add i32 %add2, 1, !dbg !4513
  %add4 = add i32 %add3, 3, !dbg !4514
  %idxprom5 = zext i32 %add4 to i64, !dbg !4510
  %arrayidx6 = getelementptr %struct.event_counter, %struct.event_counter* %6, i64 %idxprom5, !dbg !4510
  %count7 = getelementptr inbounds %struct.event_counter, %struct.event_counter* %arrayidx6, i32 0, i32 0, !dbg !4515
  %8 = load i32, i32* %count7, align 4, !dbg !4516
  %inc8 = add i32 %8, 1, !dbg !4516
  store i32 %inc8, i32* %count7, align 4, !dbg !4516
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then1
  br label %return, !dbg !4517

return:                                           ; preds = %if.end9, %if.then
  ret void, !dbg !4518
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @get_status(i32 %index, i32* %ret, i8** %handle) #0 !dbg !4519 {
entry:
  %retval = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %ret.addr = alloca i32*, align 8
  %handle.addr = alloca i8**, align 8
  %status = alloca i32, align 4
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !4524, metadata !DIExpression()), !dbg !4525
  store i32* %ret, i32** %ret.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ret.addr, metadata !4526, metadata !DIExpression()), !dbg !4527
  store i8** %handle, i8*** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %handle.addr, metadata !4528, metadata !DIExpression()), !dbg !4529
  call void @llvm.dbg.declare(metadata i32* %status, metadata !4530, metadata !DIExpression()), !dbg !4531
  %0 = load i32, i32* %index.addr, align 4, !dbg !4532
  %1 = load i32, i32* @num_gpes, align 4, !dbg !4534
  %add = add i32 %1, 4, !dbg !4535
  %add1 = add i32 %add, 1, !dbg !4536
  %cmp = icmp uge i32 %0, %add1, !dbg !4537
  br i1 %cmp, label %if.then, label %if.end, !dbg !4538

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4539
  br label %return, !dbg !4539

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %index.addr, align 4, !dbg !4540
  %3 = load i32, i32* @num_gpes, align 4, !dbg !4542
  %cmp2 = icmp ult i32 %2, %3, !dbg !4543
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !4544

if.then3:                                         ; preds = %if.end
  %4 = load i32, i32* %index.addr, align 4, !dbg !4545
  %5 = load i8**, i8*** %handle.addr, align 8, !dbg !4547
  %call = call i32 @acpi_get_gpe_device(i32 %4, i8** %5) #8, !dbg !4548
  store i32 %call, i32* %status, align 4, !dbg !4549
  %6 = load i32, i32* %status, align 4, !dbg !4550
  %tobool = icmp ne i32 %6, 0, !dbg !4550
  br i1 %tobool, label %if.then4, label %if.end5, !dbg !4552

if.then4:                                         ; preds = %if.then3
  %7 = load i32, i32* %index.addr, align 4, !dbg !4553
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @_acpi_module_name, i64 0, i64 0), i32 662, i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i64 0, i64 0), i32 %7) #8, !dbg !4553
  store i32 -6, i32* %retval, align 4, !dbg !4555
  br label %return, !dbg !4555

if.end5:                                          ; preds = %if.then3
  %8 = load i8**, i8*** %handle.addr, align 8, !dbg !4556
  %9 = load i8*, i8** %8, align 8, !dbg !4557
  %10 = load i32, i32* %index.addr, align 4, !dbg !4558
  %11 = load i32*, i32** %ret.addr, align 8, !dbg !4559
  %call6 = call i32 @acpi_get_gpe_status(i8* %9, i32 %10, i32* %11) #8, !dbg !4560
  store i32 %call6, i32* %status, align 4, !dbg !4561
  br label %if.end8, !dbg !4562

if.else:                                          ; preds = %if.end
  %12 = load i32, i32* %index.addr, align 4, !dbg !4563
  %13 = load i32, i32* @num_gpes, align 4, !dbg !4565
  %sub = sub i32 %12, %13, !dbg !4566
  %14 = load i32*, i32** %ret.addr, align 8, !dbg !4567
  %call7 = call i32 @acpi_get_event_status(i32 %sub, i32* %14) #8, !dbg !4568
  store i32 %call7, i32* %status, align 4, !dbg !4569
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.end5
  %15 = load i32, i32* %status, align 4, !dbg !4570
  %tobool9 = icmp ne i32 %15, 0, !dbg !4570
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !4572

if.then10:                                        ; preds = %if.end8
  store i32 -5, i32* %retval, align 4, !dbg !4573
  br label %return, !dbg !4573

if.end11:                                         ; preds = %if.end8
  store i32 0, i32* %retval, align 4, !dbg !4574
  br label %return, !dbg !4574

return:                                           ; preds = %if.end11, %if.then10, %if.then4, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !4575
  ret i32 %16, !dbg !4575
}

; Function Attrs: noredzone
declare dso_local void @acpi_exception(i8*, i32, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_get_gpe_status(i8*, i32, i32*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_get_event_status(i32, i32*) #2

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_disable_gpe(i8*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_enable_gpe(i8*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_clear_gpe(i8*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @kstrtoul(i8* %s, i32 %base, i64* %res) #0 !dbg !4576 {
entry:
  %s.addr = alloca i8*, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca i64*, align 8
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !4580, metadata !DIExpression()), !dbg !4581
  store i32 %base, i32* %base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %base.addr, metadata !4582, metadata !DIExpression()), !dbg !4583
  store i64* %res, i64** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %res.addr, metadata !4584, metadata !DIExpression()), !dbg !4585
  %0 = load i8*, i8** %s.addr, align 8, !dbg !4586
  %1 = load i32, i32* %base.addr, align 4, !dbg !4588
  %2 = load i64*, i64** %res.addr, align 8, !dbg !4589
  %call = call i32 @kstrtoull(i8* %0, i32 %1, i64* %2) #8, !dbg !4590
  ret i32 %call, !dbg !4591
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_disable_event(i32, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_enable_event(i32, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_clear_event(i32) #2

; Function Attrs: noredzone
declare dso_local i64 @simple_strtoul(i8*, i8**, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @kstrtoull(i8*, i32, i64*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @hotplug_enabled_show(%struct.kobject* %kobj, %struct.kobj_attribute* %attr, i8* %buf) #0 !dbg !4592 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  %attr.addr = alloca %struct.kobj_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %hotplug = alloca %struct.acpi_hotplug_profile*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !4593, metadata !DIExpression()), !dbg !4594
  store %struct.kobj_attribute* %attr, %struct.kobj_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobj_attribute** %attr.addr, metadata !4595, metadata !DIExpression()), !dbg !4596
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4597, metadata !DIExpression()), !dbg !4598
  call void @llvm.dbg.declare(metadata %struct.acpi_hotplug_profile** %hotplug, metadata !4599, metadata !DIExpression()), !dbg !4600
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !4601
  %call = call %struct.acpi_hotplug_profile* @to_acpi_hotplug_profile(%struct.kobject* %0) #8, !dbg !4602
  store %struct.acpi_hotplug_profile* %call, %struct.acpi_hotplug_profile** %hotplug, align 8, !dbg !4600
  %1 = load i8*, i8** %buf.addr, align 8, !dbg !4603
  %2 = load %struct.acpi_hotplug_profile*, %struct.acpi_hotplug_profile** %hotplug, align 8, !dbg !4604
  %enabled = getelementptr inbounds %struct.acpi_hotplug_profile, %struct.acpi_hotplug_profile* %2, i32 0, i32 3, !dbg !4605
  %bf.load = load i8, i8* %enabled, align 8, !dbg !4605
  %bf.clear = and i8 %bf.load, 1, !dbg !4605
  %bf.cast = trunc i8 %bf.clear to i1, !dbg !4605
  %conv = zext i1 %bf.cast to i32, !dbg !4604
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0), i32 %conv) #8, !dbg !4606
  %conv2 = sext i32 %call1 to i64, !dbg !4606
  ret i64 %conv2, !dbg !4607
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @hotplug_enabled_store(%struct.kobject* %kobj, %struct.kobj_attribute* %attr, i8* %buf, i64 %size) #0 !dbg !4608 {
entry:
  %retval = alloca i64, align 8
  %kobj.addr = alloca %struct.kobject*, align 8
  %attr.addr = alloca %struct.kobj_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %hotplug = alloca %struct.acpi_hotplug_profile*, align 8
  %val = alloca i32, align 4
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !4609, metadata !DIExpression()), !dbg !4610
  store %struct.kobj_attribute* %attr, %struct.kobj_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobj_attribute** %attr.addr, metadata !4611, metadata !DIExpression()), !dbg !4612
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4613, metadata !DIExpression()), !dbg !4614
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4615, metadata !DIExpression()), !dbg !4616
  call void @llvm.dbg.declare(metadata %struct.acpi_hotplug_profile** %hotplug, metadata !4617, metadata !DIExpression()), !dbg !4618
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !4619
  %call = call %struct.acpi_hotplug_profile* @to_acpi_hotplug_profile(%struct.kobject* %0) #8, !dbg !4620
  store %struct.acpi_hotplug_profile* %call, %struct.acpi_hotplug_profile** %hotplug, align 8, !dbg !4618
  call void @llvm.dbg.declare(metadata i32* %val, metadata !4621, metadata !DIExpression()), !dbg !4622
  %1 = load i8*, i8** %buf.addr, align 8, !dbg !4623
  %call1 = call i32 @kstrtouint(i8* %1, i32 10, i32* %val) #8, !dbg !4625
  %tobool = icmp ne i32 %call1, 0, !dbg !4625
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !4626

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %val, align 4, !dbg !4627
  %cmp = icmp ugt i32 %2, 1, !dbg !4628
  br i1 %cmp, label %if.then, label %if.end, !dbg !4629

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 -22, i64* %retval, align 8, !dbg !4630
  br label %return, !dbg !4630

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.acpi_hotplug_profile*, %struct.acpi_hotplug_profile** %hotplug, align 8, !dbg !4631
  %4 = load i32, i32* %val, align 4, !dbg !4632
  %tobool2 = icmp ne i32 %4, 0, !dbg !4632
  call void @acpi_scan_hotplug_enabled(%struct.acpi_hotplug_profile* %3, i1 zeroext %tobool2) #8, !dbg !4633
  %5 = load i64, i64* %size.addr, align 8, !dbg !4634
  store i64 %5, i64* %retval, align 8, !dbg !4635
  br label %return, !dbg !4635

return:                                           ; preds = %if.end, %if.then
  %6 = load i64, i64* %retval, align 8, !dbg !4636
  ret i64 %6, !dbg !4636
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.acpi_hotplug_profile* @to_acpi_hotplug_profile(%struct.kobject* %kobj) #0 !dbg !4637 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_hotplug_profile*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !4640, metadata !DIExpression()), !dbg !4641
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4642, metadata !DIExpression()), !dbg !4644
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !4644
  %1 = bitcast %struct.kobject* %0 to i8*, !dbg !4644
  store i8* %1, i8** %__mptr, align 8, !dbg !4644
  br label %do.body, !dbg !4644

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4645

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4644
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !4644
  %3 = bitcast i8* %add.ptr to %struct.acpi_hotplug_profile*, !dbg !4644
  store %struct.acpi_hotplug_profile* %3, %struct.acpi_hotplug_profile** %tmp, align 8, !dbg !4645
  %4 = load %struct.acpi_hotplug_profile*, %struct.acpi_hotplug_profile** %tmp, align 8, !dbg !4644
  ret %struct.acpi_hotplug_profile* %4, !dbg !4647
}

; Function Attrs: noredzone
declare dso_local i32 @kstrtouint(i8*, i32, i32*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_scan_hotplug_enabled(%struct.acpi_hotplug_profile*, i1 zeroext) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_get_table_by_index(i32, %struct.acpi_table_header**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_table_data_init(%struct.acpi_table_header* %th) #0 !dbg !4648 {
entry:
  %retval = alloca i32, align 4
  %th.addr = alloca %struct.acpi_table_header*, align 8
  %data_attr = alloca %struct.acpi_data_attr*, align 8
  %i = alloca i32, align 4
  store %struct.acpi_table_header* %th, %struct.acpi_table_header** %th.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_table_header** %th.addr, metadata !4651, metadata !DIExpression()), !dbg !4652
  call void @llvm.dbg.declare(metadata %struct.acpi_data_attr** %data_attr, metadata !4653, metadata !DIExpression()), !dbg !4654
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4655, metadata !DIExpression()), !dbg !4656
  store i32 0, i32* %i, align 4, !dbg !4657
  br label %for.cond, !dbg !4659

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !4660
  %conv = sext i32 %0 to i64, !dbg !4660
  %cmp = icmp ult i64 %conv, 1, !dbg !4662
  br i1 %cmp, label %for.body, label %for.end, !dbg !4663

for.body:                                         ; preds = %for.cond
  %1 = load %struct.acpi_table_header*, %struct.acpi_table_header** %th.addr, align 8, !dbg !4664
  %signature = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %1, i32 0, i32 0, !dbg !4664
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %signature, i64 0, i64 0, !dbg !4664
  %2 = bitcast i8* %arraydecay to i32*, !dbg !4664
  %3 = load i32, i32* %2, align 4, !dbg !4664
  %4 = load i32, i32* %i, align 4, !dbg !4664
  %idxprom = sext i32 %4 to i64, !dbg !4664
  %arrayidx = getelementptr [1 x %struct.acpi_data_obj], [1 x %struct.acpi_data_obj]* @acpi_data_objs, i64 0, i64 %idxprom, !dbg !4664
  %name = getelementptr inbounds %struct.acpi_data_obj, %struct.acpi_data_obj* %arrayidx, i32 0, i32 0, !dbg !4664
  %5 = load i8*, i8** %name, align 16, !dbg !4664
  %6 = bitcast i8* %5 to i32*, !dbg !4664
  %7 = load i32, i32* %6, align 4, !dbg !4664
  %cmp2 = icmp eq i32 %3, %7, !dbg !4664
  br i1 %cmp2, label %if.then, label %if.end10, !dbg !4667

if.then:                                          ; preds = %for.body
  %call = call i8* @kzalloc(i64 64, i32 3264) #8, !dbg !4668
  %8 = bitcast i8* %call to %struct.acpi_data_attr*, !dbg !4668
  store %struct.acpi_data_attr* %8, %struct.acpi_data_attr** %data_attr, align 8, !dbg !4670
  %9 = load %struct.acpi_data_attr*, %struct.acpi_data_attr** %data_attr, align 8, !dbg !4671
  %tobool = icmp ne %struct.acpi_data_attr* %9, null, !dbg !4671
  br i1 %tobool, label %if.end, label %if.then4, !dbg !4673

if.then4:                                         ; preds = %if.then
  store i32 -12, i32* %retval, align 4, !dbg !4674
  br label %return, !dbg !4674

if.end:                                           ; preds = %if.then
  br label %do.body, !dbg !4675

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !4676

do.end:                                           ; preds = %do.body
  %10 = load %struct.acpi_data_attr*, %struct.acpi_data_attr** %data_attr, align 8, !dbg !4678
  %attr = getelementptr inbounds %struct.acpi_data_attr, %struct.acpi_data_attr* %10, i32 0, i32 0, !dbg !4679
  %read = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %attr, i32 0, i32 3, !dbg !4680
  store i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @acpi_data_show, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)** %read, align 8, !dbg !4681
  %11 = load %struct.acpi_data_attr*, %struct.acpi_data_attr** %data_attr, align 8, !dbg !4682
  %attr5 = getelementptr inbounds %struct.acpi_data_attr, %struct.acpi_data_attr* %11, i32 0, i32 0, !dbg !4683
  %attr6 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %attr5, i32 0, i32 0, !dbg !4684
  %mode = getelementptr inbounds %struct.attribute, %struct.attribute* %attr6, i32 0, i32 1, !dbg !4685
  store i16 256, i16* %mode, align 8, !dbg !4686
  %12 = load i32, i32* %i, align 4, !dbg !4687
  %idxprom7 = sext i32 %12 to i64, !dbg !4688
  %arrayidx8 = getelementptr [1 x %struct.acpi_data_obj], [1 x %struct.acpi_data_obj]* @acpi_data_objs, i64 0, i64 %idxprom7, !dbg !4688
  %fn = getelementptr inbounds %struct.acpi_data_obj, %struct.acpi_data_obj* %arrayidx8, i32 0, i32 1, !dbg !4689
  %13 = load i32 (i8*, %struct.acpi_data_attr*)*, i32 (i8*, %struct.acpi_data_attr*)** %fn, align 8, !dbg !4689
  %14 = load %struct.acpi_table_header*, %struct.acpi_table_header** %th.addr, align 8, !dbg !4690
  %15 = bitcast %struct.acpi_table_header* %14 to i8*, !dbg !4690
  %16 = load %struct.acpi_data_attr*, %struct.acpi_data_attr** %data_attr, align 8, !dbg !4691
  %call9 = call i32 %13(i8* %15, %struct.acpi_data_attr* %16) #8, !dbg !4688
  store i32 %call9, i32* %retval, align 4, !dbg !4692
  br label %return, !dbg !4692

if.end10:                                         ; preds = %for.body
  br label %for.inc, !dbg !4693

for.inc:                                          ; preds = %if.end10
  %17 = load i32, i32* %i, align 4, !dbg !4694
  %inc = add i32 %17, 1, !dbg !4694
  store i32 %inc, i32* %i, align 4, !dbg !4694
  br label %for.cond, !dbg !4695, !llvm.loop !4696

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !4698
  br label %return, !dbg !4698

return:                                           ; preds = %for.end, %do.end, %if.then4
  %18 = load i32, i32* %retval, align 4, !dbg !4699
  ret i32 %18, !dbg !4699
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @acpi_data_show(%struct.file* %filp, %struct.kobject* %kobj, %struct.bin_attribute* %bin_attr, i8* %buf, i64 %offset, i64 %count) #0 !dbg !4700 {
entry:
  %retval = alloca i64, align 8
  %filp.addr = alloca %struct.file*, align 8
  %kobj.addr = alloca %struct.kobject*, align 8
  %bin_attr.addr = alloca %struct.bin_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %offset.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  %data_attr = alloca %struct.acpi_data_attr*, align 8
  %base = alloca i8*, align 8
  %rc = alloca i64, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_data_attr*, align 8
  store %struct.file* %filp, %struct.file** %filp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %filp.addr, metadata !4701, metadata !DIExpression()), !dbg !4702
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !4703, metadata !DIExpression()), !dbg !4704
  store %struct.bin_attribute* %bin_attr, %struct.bin_attribute** %bin_attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bin_attribute** %bin_attr.addr, metadata !4705, metadata !DIExpression()), !dbg !4706
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4707, metadata !DIExpression()), !dbg !4708
  store i64 %offset, i64* %offset.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %offset.addr, metadata !4709, metadata !DIExpression()), !dbg !4710
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !4711, metadata !DIExpression()), !dbg !4712
  call void @llvm.dbg.declare(metadata %struct.acpi_data_attr** %data_attr, metadata !4713, metadata !DIExpression()), !dbg !4714
  call void @llvm.dbg.declare(metadata i8** %base, metadata !4715, metadata !DIExpression()), !dbg !4716
  call void @llvm.dbg.declare(metadata i64* %rc, metadata !4717, metadata !DIExpression()), !dbg !4718
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4719, metadata !DIExpression()), !dbg !4721
  %0 = load %struct.bin_attribute*, %struct.bin_attribute** %bin_attr.addr, align 8, !dbg !4721
  %1 = bitcast %struct.bin_attribute* %0 to i8*, !dbg !4721
  store i8* %1, i8** %__mptr, align 8, !dbg !4721
  br label %do.body, !dbg !4721

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4722

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4721
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !4721
  %3 = bitcast i8* %add.ptr to %struct.acpi_data_attr*, !dbg !4721
  store %struct.acpi_data_attr* %3, %struct.acpi_data_attr** %tmp, align 8, !dbg !4722
  %4 = load %struct.acpi_data_attr*, %struct.acpi_data_attr** %tmp, align 8, !dbg !4721
  store %struct.acpi_data_attr* %4, %struct.acpi_data_attr** %data_attr, align 8, !dbg !4724
  %5 = load %struct.acpi_data_attr*, %struct.acpi_data_attr** %data_attr, align 8, !dbg !4725
  %addr = getelementptr inbounds %struct.acpi_data_attr, %struct.acpi_data_attr* %5, i32 0, i32 1, !dbg !4726
  %6 = load i64, i64* %addr, align 8, !dbg !4726
  %7 = load %struct.acpi_data_attr*, %struct.acpi_data_attr** %data_attr, align 8, !dbg !4727
  %attr = getelementptr inbounds %struct.acpi_data_attr, %struct.acpi_data_attr* %7, i32 0, i32 0, !dbg !4728
  %size = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %attr, i32 0, i32 1, !dbg !4729
  %8 = load i64, i64* %size, align 8, !dbg !4729
  %call = call i8* @acpi_os_map_memory(i64 %6, i64 %8) #8, !dbg !4730
  store i8* %call, i8** %base, align 8, !dbg !4731
  %9 = load i8*, i8** %base, align 8, !dbg !4732
  %tobool = icmp ne i8* %9, null, !dbg !4732
  br i1 %tobool, label %if.end, label %if.then, !dbg !4734

if.then:                                          ; preds = %do.end
  store i64 -12, i64* %retval, align 8, !dbg !4735
  br label %return, !dbg !4735

if.end:                                           ; preds = %do.end
  %10 = load i8*, i8** %buf.addr, align 8, !dbg !4736
  %11 = load i64, i64* %count.addr, align 8, !dbg !4737
  %12 = load i8*, i8** %base, align 8, !dbg !4738
  %13 = load %struct.acpi_data_attr*, %struct.acpi_data_attr** %data_attr, align 8, !dbg !4739
  %attr1 = getelementptr inbounds %struct.acpi_data_attr, %struct.acpi_data_attr* %13, i32 0, i32 0, !dbg !4740
  %size2 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %attr1, i32 0, i32 1, !dbg !4741
  %14 = load i64, i64* %size2, align 8, !dbg !4741
  %call3 = call i64 @memory_read_from_buffer(i8* %10, i64 %11, i64* %offset.addr, i8* %12, i64 %14) #8, !dbg !4742
  store i64 %call3, i64* %rc, align 8, !dbg !4743
  %15 = load i8*, i8** %base, align 8, !dbg !4744
  %16 = load %struct.acpi_data_attr*, %struct.acpi_data_attr** %data_attr, align 8, !dbg !4745
  %attr4 = getelementptr inbounds %struct.acpi_data_attr, %struct.acpi_data_attr* %16, i32 0, i32 0, !dbg !4746
  %size5 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %attr4, i32 0, i32 1, !dbg !4747
  %17 = load i64, i64* %size5, align 8, !dbg !4747
  call void @acpi_os_unmap_memory(i8* %15, i64 %17) #8, !dbg !4748
  %18 = load i64, i64* %rc, align 8, !dbg !4749
  store i64 %18, i64* %retval, align 8, !dbg !4750
  br label %return, !dbg !4750

return:                                           ; preds = %if.end, %if.then
  %19 = load i64, i64* %retval, align 8, !dbg !4751
  ret i64 %19, !dbg !4751
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_bert_data_init(i8* %th, %struct.acpi_data_attr* %data_attr) #0 !dbg !4752 {
entry:
  %retval = alloca i32, align 4
  %th.addr = alloca i8*, align 8
  %data_attr.addr = alloca %struct.acpi_data_attr*, align 8
  %bert = alloca %struct.acpi_table_bert*, align 8
  store i8* %th, i8** %th.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %th.addr, metadata !4753, metadata !DIExpression()), !dbg !4754
  store %struct.acpi_data_attr* %data_attr, %struct.acpi_data_attr** %data_attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_data_attr** %data_attr.addr, metadata !4755, metadata !DIExpression()), !dbg !4756
  call void @llvm.dbg.declare(metadata %struct.acpi_table_bert** %bert, metadata !4757, metadata !DIExpression()), !dbg !4765
  %0 = load i8*, i8** %th.addr, align 8, !dbg !4766
  %1 = bitcast i8* %0 to %struct.acpi_table_bert*, !dbg !4766
  store %struct.acpi_table_bert* %1, %struct.acpi_table_bert** %bert, align 8, !dbg !4765
  %2 = load %struct.acpi_table_bert*, %struct.acpi_table_bert** %bert, align 8, !dbg !4767
  %header = getelementptr inbounds %struct.acpi_table_bert, %struct.acpi_table_bert* %2, i32 0, i32 0, !dbg !4769
  %length = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %header, i32 0, i32 1, !dbg !4770
  %3 = load i32, i32* %length, align 1, !dbg !4770
  %conv = zext i32 %3 to i64, !dbg !4767
  %cmp = icmp ult i64 %conv, 48, !dbg !4771
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4772

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.acpi_table_bert*, %struct.acpi_table_bert** %bert, align 8, !dbg !4773
  %region_length = getelementptr inbounds %struct.acpi_table_bert, %struct.acpi_table_bert* %4, i32 0, i32 1, !dbg !4774
  %5 = load i32, i32* %region_length, align 1, !dbg !4774
  %conv2 = zext i32 %5 to i64, !dbg !4773
  %cmp3 = icmp ult i64 %conv2, 20, !dbg !4775
  br i1 %cmp3, label %if.then, label %if.end, !dbg !4776

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load %struct.acpi_data_attr*, %struct.acpi_data_attr** %data_attr.addr, align 8, !dbg !4777
  %7 = bitcast %struct.acpi_data_attr* %6 to i8*, !dbg !4777
  call void @kfree(i8* %7) #8, !dbg !4779
  store i32 -22, i32* %retval, align 4, !dbg !4780
  br label %return, !dbg !4780

if.end:                                           ; preds = %lor.lhs.false
  %8 = load %struct.acpi_table_bert*, %struct.acpi_table_bert** %bert, align 8, !dbg !4781
  %address = getelementptr inbounds %struct.acpi_table_bert, %struct.acpi_table_bert* %8, i32 0, i32 2, !dbg !4782
  %9 = load i64, i64* %address, align 1, !dbg !4782
  %10 = load %struct.acpi_data_attr*, %struct.acpi_data_attr** %data_attr.addr, align 8, !dbg !4783
  %addr = getelementptr inbounds %struct.acpi_data_attr, %struct.acpi_data_attr* %10, i32 0, i32 1, !dbg !4784
  store i64 %9, i64* %addr, align 8, !dbg !4785
  %11 = load %struct.acpi_table_bert*, %struct.acpi_table_bert** %bert, align 8, !dbg !4786
  %region_length5 = getelementptr inbounds %struct.acpi_table_bert, %struct.acpi_table_bert* %11, i32 0, i32 1, !dbg !4787
  %12 = load i32, i32* %region_length5, align 1, !dbg !4787
  %conv6 = zext i32 %12 to i64, !dbg !4786
  %13 = load %struct.acpi_data_attr*, %struct.acpi_data_attr** %data_attr.addr, align 8, !dbg !4788
  %attr = getelementptr inbounds %struct.acpi_data_attr, %struct.acpi_data_attr* %13, i32 0, i32 0, !dbg !4789
  %size = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %attr, i32 0, i32 1, !dbg !4790
  store i64 %conv6, i64* %size, align 8, !dbg !4791
  %14 = load %struct.acpi_data_attr*, %struct.acpi_data_attr** %data_attr.addr, align 8, !dbg !4792
  %attr7 = getelementptr inbounds %struct.acpi_data_attr, %struct.acpi_data_attr* %14, i32 0, i32 0, !dbg !4793
  %attr8 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %attr7, i32 0, i32 0, !dbg !4794
  %name = getelementptr inbounds %struct.attribute, %struct.attribute* %attr8, i32 0, i32 0, !dbg !4795
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0), i8** %name, align 8, !dbg !4796
  %15 = load %struct.kobject*, %struct.kobject** @tables_data_kobj, align 8, !dbg !4797
  %16 = load %struct.acpi_data_attr*, %struct.acpi_data_attr** %data_attr.addr, align 8, !dbg !4798
  %attr9 = getelementptr inbounds %struct.acpi_data_attr, %struct.acpi_data_attr* %16, i32 0, i32 0, !dbg !4799
  %call = call i32 @sysfs_create_bin_file(%struct.kobject* %15, %struct.bin_attribute* %attr9) #8, !dbg !4800
  store i32 %call, i32* %retval, align 4, !dbg !4801
  br label %return, !dbg !4801

return:                                           ; preds = %if.end, %if.then
  %17 = load i32, i32* %retval, align 4, !dbg !4802
  ret i32 %17, !dbg !4802
}

; Function Attrs: noredzone
declare dso_local i8* @acpi_os_map_memory(i64, i64) #2

; Function Attrs: noredzone
declare dso_local void @acpi_os_unmap_memory(i8*, i64) #2

; Function Attrs: noredzone
declare dso_local i32 @sysfs_create_file_ns(%struct.kobject*, %struct.attribute*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @force_remove_show(%struct.kobject* %kobj, %struct.kobj_attribute* %attr, i8* %buf) #0 !dbg !4803 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  %attr.addr = alloca %struct.kobj_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !4804, metadata !DIExpression()), !dbg !4805
  store %struct.kobj_attribute* %attr, %struct.kobj_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobj_attribute** %attr.addr, metadata !4806, metadata !DIExpression()), !dbg !4807
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4808, metadata !DIExpression()), !dbg !4809
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !4810
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0), i32 0) #8, !dbg !4811
  %conv = sext i32 %call to i64, !dbg !4811
  ret i64 %conv, !dbg !4812
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @force_remove_store(%struct.kobject* %kobj, %struct.kobj_attribute* %attr, i8* %buf, i64 %size) #0 !dbg !4813 {
entry:
  %retval = alloca i64, align 8
  %kobj.addr = alloca %struct.kobject*, align 8
  %attr.addr = alloca %struct.kobj_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i8, align 1
  %ret = alloca i32, align 4
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !4814, metadata !DIExpression()), !dbg !4815
  store %struct.kobj_attribute* %attr, %struct.kobj_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobj_attribute** %attr.addr, metadata !4816, metadata !DIExpression()), !dbg !4817
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4818, metadata !DIExpression()), !dbg !4819
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4820, metadata !DIExpression()), !dbg !4821
  call void @llvm.dbg.declare(metadata i8* %val, metadata !4822, metadata !DIExpression()), !dbg !4823
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4824, metadata !DIExpression()), !dbg !4825
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !4826
  %call = call i32 @strtobool(i8* %0, i8* %val) #8, !dbg !4827
  store i32 %call, i32* %ret, align 4, !dbg !4828
  %1 = load i32, i32* %ret, align 4, !dbg !4829
  %cmp = icmp slt i32 %1, 0, !dbg !4831
  br i1 %cmp, label %if.then, label %if.end, !dbg !4832

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4, !dbg !4833
  %conv = sext i32 %2 to i64, !dbg !4833
  store i64 %conv, i64* %retval, align 8, !dbg !4834
  br label %return, !dbg !4834

if.end:                                           ; preds = %entry
  %3 = load i8, i8* %val, align 1, !dbg !4835
  %tobool = trunc i8 %3 to i1, !dbg !4835
  br i1 %tobool, label %if.then1, label %if.end3, !dbg !4837

if.then1:                                         ; preds = %if.end
  %call2 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.45, i64 0, i64 0)) #12, !dbg !4838
  store i64 -22, i64* %retval, align 8, !dbg !4840
  br label %return, !dbg !4840

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4841
  store i64 %4, i64* %retval, align 8, !dbg !4842
  br label %return, !dbg !4842

return:                                           ; preds = %if.end3, %if.then1, %if.then
  %5 = load i64, i64* %retval, align 8, !dbg !4843
  ret i64 %5, !dbg !4843
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @strtobool(i8* %s, i8* %res) #0 !dbg !4844 {
entry:
  %s.addr = alloca i8*, align 8
  %res.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !4849, metadata !DIExpression()), !dbg !4850
  store i8* %res, i8** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %res.addr, metadata !4851, metadata !DIExpression()), !dbg !4852
  %0 = load i8*, i8** %s.addr, align 8, !dbg !4853
  %1 = load i8*, i8** %res.addr, align 8, !dbg !4854
  %call = call i32 @kstrtobool(i8* %0, i8* %1) #8, !dbg !4855
  ret i32 %call, !dbg !4856
}

; Function Attrs: noredzone
declare dso_local i32 @kstrtobool(i8*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @acpi_show_profile(%struct.kobject* %kobj, %struct.kobj_attribute* %attr, i8* %buf) #0 !dbg !4857 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  %attr.addr = alloca %struct.kobj_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !4858, metadata !DIExpression()), !dbg !4859
  store %struct.kobj_attribute* %attr, %struct.kobj_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobj_attribute** %attr.addr, metadata !4860, metadata !DIExpression()), !dbg !4861
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4862, metadata !DIExpression()), !dbg !4863
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !4864
  %1 = load i8, i8* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 4), align 1, !dbg !4865
  %conv = zext i8 %1 to i32, !dbg !4866
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0), i32 %conv) #8, !dbg !4867
  %conv1 = sext i32 %call to i64, !dbg !4867
  ret i64 %conv1, !dbg !4868
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noredzone }
attributes #9 = { nounwind }
attributes #10 = { noredzone nounwind readnone }
attributes #11 = { noredzone nounwind }
attributes #12 = { cold noredzone }
attributes #13 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2621, !2622, !2623, !2624}
!llvm.ident = !{!2625}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_aml_debug_output", scope: !2, file: !3, line: 294, type: !2618, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !87, globals: !2459, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/sysfs.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !12, !17, !23, !29, !36, !44, !50, !64, !75, !82}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !6, line: 26, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !13, line: 65, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!14 = !{!15, !16}
!15 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!16 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !18, line: 16, baseType: !7, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!19 = !{!20, !21, !22}
!20 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!21 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!22 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
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
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobject_action", file: !65, line: 53, baseType: !7, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!66 = !{!67, !68, !69, !70, !71, !72, !73, !74}
!67 = !DIEnumerator(name: "KOBJ_ADD", value: 0, isUnsigned: true)
!68 = !DIEnumerator(name: "KOBJ_REMOVE", value: 1, isUnsigned: true)
!69 = !DIEnumerator(name: "KOBJ_CHANGE", value: 2, isUnsigned: true)
!70 = !DIEnumerator(name: "KOBJ_MOVE", value: 3, isUnsigned: true)
!71 = !DIEnumerator(name: "KOBJ_ONLINE", value: 4, isUnsigned: true)
!72 = !DIEnumerator(name: "KOBJ_OFFLINE", value: 5, isUnsigned: true)
!73 = !DIEnumerator(name: "KOBJ_BIND", value: 6, isUnsigned: true)
!74 = !DIEnumerator(name: "KOBJ_UNBIND", value: 7, isUnsigned: true)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !76, line: 305, baseType: !7, size: 32, elements: !77)
!76 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!77 = !{!78, !79, !80, !81}
!78 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!79 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!80 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!81 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!82 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !83, line: 10, baseType: !7, size: 32, elements: !84)
!83 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!84 = !{!85, !86}
!85 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!86 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!87 = !{!88, !90, !96, !97, !98, !1606, !1608, !1610, !1611, !1612, !1613, !176, !2454}
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !89, line: 148, baseType: !7)
!89 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !91, line: 421, baseType: !92)
!91 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !93, line: 21, baseType: !94)
!93 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !95, line: 27, baseType: !7)
!95 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_attr", file: !3, line: 328, size: 704, elements: !100)
!100 = !{!101, !1601, !1603, !1604, !1605}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !99, file: !3, line: 329, baseType: !102, size: 448)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !103, line: 168, size: 448, elements: !104)
!103 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!104 = !{!105, !115, !121, !122, !1596, !1597}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !102, file: !103, line: 169, baseType: !106, size: 128)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !103, line: 30, size: 128, elements: !107)
!107 = !{!108, !112}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !106, file: !103, line: 31, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!111 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !106, file: !103, line: 32, baseType: !113, size: 16, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !89, line: 19, baseType: !114)
!114 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !102, file: !103, line: 170, baseType: !116, size: 64, offset: 128)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !89, line: 55, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !118, line: 72, baseType: !119)
!118 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !118, line: 16, baseType: !120)
!120 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !102, file: !103, line: 171, baseType: !96, size: 64, offset: 192)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !102, file: !103, line: 172, baseType: !123, size: 64, offset: 256)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DISubroutineType(types: !125)
!125 = !{!126, !130, !133, !244, !192, !459, !116}
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !89, line: 60, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !118, line: 73, baseType: !128)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !118, line: 15, baseType: !129)
!129 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !132, line: 526, flags: DIFlagFwdDecl)
!132 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !65, line: 64, size: 512, elements: !135)
!135 = !{!136, !137, !143, !144, !205, !306, !1586, !1591, !1592, !1593, !1594, !1595}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !134, file: !65, line: 65, baseType: !109, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !134, file: !65, line: 66, baseType: !138, size: 128, offset: 64)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !89, line: 178, size: 128, elements: !139)
!139 = !{!140, !142}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !138, file: !89, line: 179, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !138, file: !89, line: 179, baseType: !141, size: 64, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !134, file: !65, line: 67, baseType: !133, size: 64, offset: 192)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !134, file: !65, line: 68, baseType: !145, size: 64, offset: 256)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !65, line: 192, size: 704, elements: !147)
!147 = !{!148, !149, !165, !166}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !146, file: !65, line: 193, baseType: !138, size: 128)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !146, file: !65, line: 194, baseType: !150, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !151, line: 83, baseType: !152)
!151 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !151, line: 71, elements: !153)
!153 = !{!154}
!154 = !DIDerivedType(tag: DW_TAG_member, scope: !152, file: !151, line: 72, baseType: !155)
!155 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !152, file: !151, line: 72, elements: !156)
!156 = !{!157}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !155, file: !151, line: 73, baseType: !158)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !151, line: 20, elements: !159)
!159 = !{!160}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !158, file: !151, line: 21, baseType: !161)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !162, line: 25, baseType: !163)
!162 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !162, line: 25, elements: !164)
!164 = !{}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !146, file: !65, line: 195, baseType: !134, size: 512, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !146, file: !65, line: 196, baseType: !167, size: 64, offset: 640)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !169)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !65, line: 156, size: 192, elements: !170)
!170 = !{!171, !177, !182}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !169, file: !65, line: 157, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{!176, !145, !133}
!176 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !169, file: !65, line: 158, baseType: !178, size: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DISubroutineType(types: !181)
!181 = !{!109, !145, !133}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !169, file: !65, line: 159, baseType: !183, size: 64, offset: 128)
!183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DISubroutineType(types: !186)
!186 = !{!176, !145, !133, !187}
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !65, line: 148, size: 20736, elements: !189)
!189 = !{!190, !195, !199, !200, !204}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !188, file: !65, line: 149, baseType: !191, size: 192)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 192, elements: !193)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!193 = !{!194}
!194 = !DISubrange(count: 3)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !188, file: !65, line: 150, baseType: !196, size: 4096, offset: 192)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 4096, elements: !197)
!197 = !{!198}
!198 = !DISubrange(count: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !188, file: !65, line: 151, baseType: !176, size: 32, offset: 4288)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !188, file: !65, line: 152, baseType: !201, size: 16384, offset: 4320)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 16384, elements: !202)
!202 = !{!203}
!203 = !DISubrange(count: 2048)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !188, file: !65, line: 153, baseType: !176, size: 32, offset: 20704)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !134, file: !65, line: 69, baseType: !206, size: 64, offset: 320)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !65, line: 138, size: 448, elements: !208)
!208 = !{!209, !213, !227, !229, !248, !283, !287}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !207, file: !65, line: 139, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{null, !133}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !207, file: !65, line: 140, baseType: !214, size: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !103, line: 230, size: 128, elements: !217)
!217 = !{!218, !223}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !216, file: !103, line: 231, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{!126, !133, !222, !192}
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !216, file: !103, line: 232, baseType: !224, size: 64, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{!126, !133, !222, !109, !116}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !207, file: !65, line: 141, baseType: !228, size: 64, offset: 128)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !207, file: !65, line: 142, baseType: !230, size: 64, offset: 192)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !103, line: 84, size: 320, elements: !234)
!234 = !{!235, !236, !240, !245, !246}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !233, file: !103, line: 85, baseType: !109, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !233, file: !103, line: 86, baseType: !237, size: 64, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{!113, !133, !222, !176}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !233, file: !103, line: 88, baseType: !241, size: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{!113, !133, !244, !176}
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !233, file: !103, line: 90, baseType: !228, size: 64, offset: 192)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !233, file: !103, line: 91, baseType: !247, size: 64, offset: 256)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !207, file: !65, line: 143, baseType: !249, size: 64, offset: 256)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{!252, !133}
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !254)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !255)
!255 = !{!256, !257, !263, !267, !275, !279}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !254, file: !6, line: 40, baseType: !5, size: 32)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !254, file: !6, line: 41, baseType: !258, size: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!261}
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !89, line: 30, baseType: !262)
!262 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !254, file: !6, line: 42, baseType: !264, size: 64, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!96}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !254, file: !6, line: 43, baseType: !268, size: 64, offset: 192)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{!271, !273}
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !254, file: !6, line: 44, baseType: !276, size: 64, offset: 256)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!271}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !254, file: !6, line: 45, baseType: !280, size: 64, offset: 320)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{null, !96}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !207, file: !65, line: 144, baseType: !284, size: 64, offset: 320)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{!271, !133}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !207, file: !65, line: 145, baseType: !288, size: 64, offset: 384)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{null, !133, !291, !299}
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !293, line: 23, baseType: !294)
!293 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !293, line: 21, size: 32, elements: !295)
!295 = !{!296}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !294, file: !293, line: 22, baseType: !297, size: 32)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !89, line: 32, baseType: !298)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !118, line: 49, baseType: !7)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !293, line: 28, baseType: !301)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !293, line: 26, size: 32, elements: !302)
!302 = !{!303}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !301, file: !293, line: 27, baseType: !304, size: 32)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !89, line: 33, baseType: !305)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !118, line: 50, baseType: !7)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !134, file: !65, line: 70, baseType: !307, size: 64, offset: 384)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !309, line: 123, size: 1024, elements: !310)
!309 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!310 = !{!311, !316, !317, !318, !319, !327, !328, !329, !1579, !1580, !1581, !1582, !1583}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !308, file: !309, line: 124, baseType: !312, size: 32)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !89, line: 168, baseType: !313)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !89, line: 166, size: 32, elements: !314)
!314 = !{!315}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !313, file: !89, line: 167, baseType: !176, size: 32)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !308, file: !309, line: 125, baseType: !312, size: 32, offset: 32)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !308, file: !309, line: 135, baseType: !307, size: 64, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !308, file: !309, line: 136, baseType: !109, size: 64, offset: 128)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !308, file: !309, line: 138, baseType: !320, size: 192, align: 64, offset: 192)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !321, line: 24, size: 192, align: 64, elements: !322)
!321 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!322 = !{!323, !324, !326}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !320, file: !321, line: 25, baseType: !120, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !320, file: !321, line: 26, baseType: !325, size: 64, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !320, file: !321, line: 27, baseType: !325, size: 64, offset: 128)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !308, file: !309, line: 140, baseType: !271, size: 64, offset: 384)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !308, file: !309, line: 141, baseType: !7, size: 32, offset: 448)
!329 = !DIDerivedType(tag: DW_TAG_member, scope: !308, file: !309, line: 142, baseType: !330, size: 256, offset: 512)
!330 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !308, file: !309, line: 142, size: 256, elements: !331)
!331 = !{!332, !395, !399}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !330, file: !309, line: 143, baseType: !333, size: 192)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !309, line: 91, size: 192, elements: !334)
!334 = !{!335, !336, !340}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !333, file: !309, line: 92, baseType: !120, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !333, file: !309, line: 94, baseType: !337, size: 64, offset: 64)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !321, line: 31, size: 64, elements: !338)
!338 = !{!339}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !337, file: !321, line: 32, baseType: !325, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !333, file: !309, line: 100, baseType: !341, size: 64, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !309, line: 180, size: 704, elements: !343)
!343 = !{!344, !345, !346, !359, !360, !361, !387, !388}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !342, file: !309, line: 182, baseType: !307, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !342, file: !309, line: 183, baseType: !7, size: 32, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !342, file: !309, line: 186, baseType: !347, size: 192, offset: 128)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !348, line: 19, size: 192, elements: !349)
!348 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!349 = !{!350, !357, !358}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !347, file: !348, line: 20, baseType: !351, size: 128)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !352, line: 292, size: 128, elements: !353)
!352 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!353 = !{!354, !355, !356}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !351, file: !352, line: 293, baseType: !150)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !351, file: !352, line: 295, baseType: !88, size: 32)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !351, file: !352, line: 296, baseType: !96, size: 64, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !347, file: !348, line: 21, baseType: !7, size: 32, offset: 128)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !347, file: !348, line: 22, baseType: !7, size: 32, offset: 160)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !342, file: !309, line: 187, baseType: !92, size: 32, offset: 320)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !342, file: !309, line: 188, baseType: !92, size: 32, offset: 352)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !342, file: !309, line: 189, baseType: !362, size: 64, offset: 384)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !309, line: 168, size: 320, elements: !364)
!364 = !{!365, !371, !375, !379, !383}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !363, file: !309, line: 169, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DISubroutineType(types: !368)
!368 = !{!176, !369, !341}
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !132, line: 539, flags: DIFlagFwdDecl)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !363, file: !309, line: 171, baseType: !372, size: 64, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{!176, !307, !109, !113}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !363, file: !309, line: 173, baseType: !376, size: 64, offset: 128)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{!176, !307}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !363, file: !309, line: 174, baseType: !380, size: 64, offset: 192)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DISubroutineType(types: !382)
!382 = !{!176, !307, !307, !109}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !363, file: !309, line: 176, baseType: !384, size: 64, offset: 256)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DISubroutineType(types: !386)
!386 = !{!176, !369, !307, !341}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !342, file: !309, line: 192, baseType: !138, size: 128, offset: 448)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !342, file: !309, line: 194, baseType: !389, size: 128, offset: 576)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !390, line: 40, baseType: !391)
!390 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !390, line: 36, size: 128, elements: !392)
!392 = !{!393, !394}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !391, file: !390, line: 37, baseType: !150)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !391, file: !390, line: 38, baseType: !138, size: 128)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !330, file: !309, line: 144, baseType: !396, size: 64)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !309, line: 103, size: 64, elements: !397)
!397 = !{!398}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !396, file: !309, line: 104, baseType: !307, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !330, file: !309, line: 145, baseType: !400, size: 256)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !309, line: 107, size: 256, elements: !401)
!401 = !{!402, !1574, !1577, !1578}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !400, file: !309, line: 108, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !405)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !309, line: 217, size: 768, elements: !406)
!406 = !{!407, !446, !450, !454, !461, !465, !469, !473, !474, !475, !476, !484}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !405, file: !309, line: 222, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DISubroutineType(types: !410)
!410 = !{!176, !411}
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !309, line: 197, size: 1088, elements: !413)
!413 = !{!414, !415, !416, !417, !418, !434, !435, !436, !437, !438, !439, !440, !441}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !412, file: !309, line: 199, baseType: !307, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !412, file: !309, line: 200, baseType: !130, size: 64, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !412, file: !309, line: 201, baseType: !369, size: 64, offset: 128)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !412, file: !309, line: 202, baseType: !96, size: 64, offset: 192)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !412, file: !309, line: 205, baseType: !419, size: 192, offset: 256)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !420, line: 53, size: 192, elements: !421)
!420 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!421 = !{!422, !432, !433}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !419, file: !420, line: 54, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !424, line: 13, baseType: !425)
!424 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !89, line: 175, baseType: !426)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !89, line: 173, size: 64, elements: !427)
!427 = !{!428}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !426, file: !89, line: 174, baseType: !429, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !93, line: 22, baseType: !430)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !95, line: 30, baseType: !431)
!431 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !419, file: !420, line: 55, baseType: !150, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !419, file: !420, line: 59, baseType: !138, size: 128, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !412, file: !309, line: 206, baseType: !419, size: 192, offset: 448)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !412, file: !309, line: 207, baseType: !176, size: 32, offset: 640)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !412, file: !309, line: 208, baseType: !138, size: 128, offset: 704)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !412, file: !309, line: 209, baseType: !192, size: 64, offset: 832)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !412, file: !309, line: 211, baseType: !116, size: 64, offset: 896)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !412, file: !309, line: 212, baseType: !261, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !412, file: !309, line: 213, baseType: !261, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !412, file: !309, line: 214, baseType: !442, size: 64, offset: 1024)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !444)
!444 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !445, line: 356, flags: DIFlagFwdDecl)
!445 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!446 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !405, file: !309, line: 223, baseType: !447, size: 64, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DISubroutineType(types: !449)
!449 = !{null, !411}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !405, file: !309, line: 236, baseType: !451, size: 64, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!176, !369, !96}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !405, file: !309, line: 238, baseType: !455, size: 64, offset: 192)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{!96, !369, !458}
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !89, line: 46, baseType: !460)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !118, line: 88, baseType: !431)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !405, file: !309, line: 239, baseType: !462, size: 64, offset: 256)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{!96, !369, !96, !458}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !405, file: !309, line: 240, baseType: !466, size: 64, offset: 320)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{null, !369, !96}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !405, file: !309, line: 242, baseType: !470, size: 64, offset: 384)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!126, !411, !192, !116, !459}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !405, file: !309, line: 252, baseType: !116, size: 64, offset: 448)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !405, file: !309, line: 259, baseType: !261, size: 8, offset: 512)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !405, file: !309, line: 260, baseType: !470, size: 64, offset: 576)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !405, file: !309, line: 263, baseType: !477, size: 64, offset: 640)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{!480, !411, !482}
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !481, line: 52, baseType: !7)
!481 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !309, line: 27, flags: DIFlagFwdDecl)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !405, file: !309, line: 266, baseType: !485, size: 64, offset: 704)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!176, !411, !488}
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !445, line: 305, size: 1472, elements: !490)
!490 = !{!491, !492, !493, !494, !495, !496, !497, !1551, !1557, !1558, !1563, !1564, !1567, !1568, !1569, !1570, !1571, !1572}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !489, file: !445, line: 308, baseType: !120, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !489, file: !445, line: 309, baseType: !120, size: 64, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !489, file: !445, line: 313, baseType: !488, size: 64, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !489, file: !445, line: 313, baseType: !488, size: 64, offset: 192)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !489, file: !445, line: 315, baseType: !320, size: 192, align: 64, offset: 256)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !489, file: !445, line: 323, baseType: !120, size: 64, offset: 448)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !489, file: !445, line: 327, baseType: !498, size: 64, offset: 512)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !445, line: 388, size: 7296, elements: !500)
!500 = !{!501, !1547}
!501 = !DIDerivedType(tag: DW_TAG_member, scope: !499, file: !445, line: 389, baseType: !502, size: 7296)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !499, file: !445, line: 389, size: 7296, elements: !503)
!503 = !{!504, !505, !506, !510, !514, !515, !516, !517, !518, !526, !527, !528, !529, !530, !531, !532, !533, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !568, !576, !579, !621, !622, !1518, !1519, !1522, !1525, !1526, !1529, !1530, !1531, !1534, !1546}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !502, file: !445, line: 390, baseType: !488, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !502, file: !445, line: 391, baseType: !337, size: 64, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !502, file: !445, line: 392, baseType: !507, size: 64, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !93, line: 23, baseType: !508)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !95, line: 31, baseType: !509)
!509 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !502, file: !445, line: 394, baseType: !511, size: 64, offset: 192)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DISubroutineType(types: !513)
!513 = !{!120, !130, !120, !120, !120, !120}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !502, file: !445, line: 398, baseType: !120, size: 64, offset: 256)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !502, file: !445, line: 399, baseType: !120, size: 64, offset: 320)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !502, file: !445, line: 405, baseType: !120, size: 64, offset: 384)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !502, file: !445, line: 406, baseType: !120, size: 64, offset: 448)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !502, file: !445, line: 407, baseType: !519, size: 64, offset: 512)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !132, line: 286, baseType: !521)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !132, line: 286, size: 64, elements: !522)
!522 = !{!523}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !521, file: !132, line: 286, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !525, line: 18, baseType: !120)
!525 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!526 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !502, file: !445, line: 416, baseType: !312, size: 32, offset: 576)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !502, file: !445, line: 428, baseType: !312, size: 32, offset: 608)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !502, file: !445, line: 437, baseType: !312, size: 32, offset: 640)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !502, file: !445, line: 447, baseType: !312, size: 32, offset: 672)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !502, file: !445, line: 450, baseType: !423, size: 64, offset: 704)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !502, file: !445, line: 452, baseType: !176, size: 32, offset: 768)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !502, file: !445, line: 454, baseType: !150, offset: 800)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !502, file: !445, line: 457, baseType: !534, size: 256, offset: 832)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !535, line: 35, size: 256, elements: !536)
!535 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!536 = !{!537, !538, !539, !541}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !534, file: !535, line: 36, baseType: !423, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !534, file: !535, line: 42, baseType: !423, size: 64, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !534, file: !535, line: 46, baseType: !540, offset: 128)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !151, line: 29, baseType: !158)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !534, file: !535, line: 47, baseType: !138, size: 128, offset: 128)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !502, file: !445, line: 459, baseType: !138, size: 128, offset: 1088)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !502, file: !445, line: 466, baseType: !120, size: 64, offset: 1216)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !502, file: !445, line: 467, baseType: !120, size: 64, offset: 1280)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !502, file: !445, line: 469, baseType: !120, size: 64, offset: 1344)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !502, file: !445, line: 470, baseType: !120, size: 64, offset: 1408)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !502, file: !445, line: 471, baseType: !425, size: 64, offset: 1472)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !502, file: !445, line: 472, baseType: !120, size: 64, offset: 1536)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !502, file: !445, line: 473, baseType: !120, size: 64, offset: 1600)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !502, file: !445, line: 474, baseType: !120, size: 64, offset: 1664)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !502, file: !445, line: 475, baseType: !120, size: 64, offset: 1728)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !502, file: !445, line: 477, baseType: !150, offset: 1792)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !502, file: !445, line: 478, baseType: !120, size: 64, offset: 1792)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !502, file: !445, line: 478, baseType: !120, size: 64, offset: 1856)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !502, file: !445, line: 478, baseType: !120, size: 64, offset: 1920)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !502, file: !445, line: 478, baseType: !120, size: 64, offset: 1984)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !502, file: !445, line: 479, baseType: !120, size: 64, offset: 2048)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !502, file: !445, line: 479, baseType: !120, size: 64, offset: 2112)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !502, file: !445, line: 479, baseType: !120, size: 64, offset: 2176)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !502, file: !445, line: 480, baseType: !120, size: 64, offset: 2240)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !502, file: !445, line: 480, baseType: !120, size: 64, offset: 2304)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !502, file: !445, line: 480, baseType: !120, size: 64, offset: 2368)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !502, file: !445, line: 480, baseType: !120, size: 64, offset: 2432)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !502, file: !445, line: 482, baseType: !565, size: 2816, offset: 2496)
!565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 2816, elements: !566)
!566 = !{!567}
!567 = !DISubrange(count: 44)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !502, file: !445, line: 488, baseType: !569, size: 256, offset: 5312)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !570, line: 60, size: 256, elements: !571)
!570 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!571 = !{!572}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !569, file: !570, line: 61, baseType: !573, size: 256)
!573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 256, elements: !574)
!574 = !{!575}
!575 = !DISubrange(count: 4)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !502, file: !445, line: 490, baseType: !577, size: 64, offset: 5568)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !445, line: 490, flags: DIFlagFwdDecl)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !502, file: !445, line: 493, baseType: !580, size: 896, offset: 5632)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !581, line: 53, baseType: !582)
!581 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !581, line: 13, size: 896, elements: !583)
!583 = !{!584, !585, !586, !587, !590, !591, !592, !593, !613, !614, !617}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !582, file: !581, line: 18, baseType: !507, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !582, file: !581, line: 28, baseType: !425, size: 64, offset: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !582, file: !581, line: 31, baseType: !534, size: 256, offset: 128)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !582, file: !581, line: 32, baseType: !588, size: 64, offset: 384)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !581, line: 32, flags: DIFlagFwdDecl)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !582, file: !581, line: 37, baseType: !114, size: 16, offset: 448)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !582, file: !581, line: 40, baseType: !419, size: 192, offset: 512)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !582, file: !581, line: 41, baseType: !96, size: 64, offset: 704)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !582, file: !581, line: 42, baseType: !594, size: 64, offset: 768)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !596)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !597, line: 13, size: 896, elements: !598)
!597 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!598 = !{!599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !596, file: !597, line: 14, baseType: !96, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !596, file: !597, line: 15, baseType: !120, size: 64, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !596, file: !597, line: 17, baseType: !120, size: 64, offset: 128)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !596, file: !597, line: 17, baseType: !120, size: 64, offset: 192)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !596, file: !597, line: 19, baseType: !129, size: 64, offset: 256)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !596, file: !597, line: 21, baseType: !129, size: 64, offset: 320)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !596, file: !597, line: 22, baseType: !129, size: 64, offset: 384)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !596, file: !597, line: 23, baseType: !129, size: 64, offset: 448)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !596, file: !597, line: 24, baseType: !129, size: 64, offset: 512)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !596, file: !597, line: 25, baseType: !129, size: 64, offset: 576)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !596, file: !597, line: 26, baseType: !129, size: 64, offset: 640)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !596, file: !597, line: 27, baseType: !129, size: 64, offset: 704)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !596, file: !597, line: 28, baseType: !129, size: 64, offset: 768)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !596, file: !597, line: 29, baseType: !129, size: 64, offset: 832)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !582, file: !581, line: 44, baseType: !312, size: 32, offset: 832)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !582, file: !581, line: 50, baseType: !615, size: 16, offset: 864)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !93, line: 19, baseType: !616)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !95, line: 24, baseType: !114)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !582, file: !581, line: 51, baseType: !618, size: 16, offset: 880)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !93, line: 18, baseType: !619)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !95, line: 23, baseType: !620)
!620 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !502, file: !445, line: 495, baseType: !120, size: 64, offset: 6528)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !502, file: !445, line: 497, baseType: !623, size: 64, offset: 6592)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !445, line: 381, size: 384, elements: !625)
!625 = !{!626, !627, !1517}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !624, file: !445, line: 382, baseType: !312, size: 32)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !624, file: !445, line: 383, baseType: !628, size: 128, offset: 64)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !445, line: 376, size: 128, elements: !629)
!629 = !{!630, !1515}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !628, file: !445, line: 377, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !633, line: 640, size: 48640, elements: !634)
!633 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!634 = !{!635, !641, !643, !644, !650, !651, !652, !653, !654, !655, !656, !657, !661, !679, !690, !785, !786, !787, !798, !799, !801, !802, !803, !804, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !882, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !932, !934, !935, !936, !948, !950, !951, !952, !953, !954, !960, !961, !962, !963, !964, !965, !966, !978, !983, !987, !988, !989, !992, !996, !999, !1002, !1005, !1008, !1011, !1014, !1017, !1023, !1024, !1025, !1031, !1032, !1033, !1034, !1035, !1044, !1045, !1046, !1047, !1048, !1053, !1054, !1055, !1058, !1059, !1062, !1065, !1068, !1071, !1074, !1077, !1078, !1157, !1160, !1163, !1164, !1167, !1168, !1169, !1175, !1176, !1177, !1190, !1191, !1192, !1202, !1207, !1210, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !632, file: !633, line: 646, baseType: !636, size: 128)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !637, line: 56, size: 128, elements: !638)
!637 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!638 = !{!639, !640}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !636, file: !637, line: 57, baseType: !120, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !636, file: !637, line: 58, baseType: !92, size: 32, offset: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !632, file: !633, line: 649, baseType: !642, size: 64, offset: 128)
!642 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !129)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !632, file: !633, line: 657, baseType: !96, size: 64, offset: 192)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !632, file: !633, line: 658, baseType: !645, size: 32, offset: 256)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !646, line: 113, baseType: !647)
!646 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !646, line: 111, size: 32, elements: !648)
!648 = !{!649}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !647, file: !646, line: 112, baseType: !312, size: 32)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !632, file: !633, line: 660, baseType: !7, size: 32, offset: 288)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !632, file: !633, line: 661, baseType: !7, size: 32, offset: 320)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !632, file: !633, line: 684, baseType: !176, size: 32, offset: 352)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !632, file: !633, line: 686, baseType: !176, size: 32, offset: 384)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !632, file: !633, line: 687, baseType: !176, size: 32, offset: 416)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !632, file: !633, line: 688, baseType: !176, size: 32, offset: 448)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !632, file: !633, line: 689, baseType: !7, size: 32, offset: 480)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !632, file: !633, line: 691, baseType: !658, size: 64, offset: 512)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !660)
!660 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !633, line: 691, flags: DIFlagFwdDecl)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !632, file: !633, line: 692, baseType: !662, size: 832, offset: 576)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !633, line: 451, size: 832, elements: !663)
!663 = !{!664, !669, !670, !671, !672, !673, !674, !675, !676, !677}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !662, file: !633, line: 453, baseType: !665, size: 128)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !633, line: 325, size: 128, elements: !666)
!666 = !{!667, !668}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !665, file: !633, line: 326, baseType: !120, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !665, file: !633, line: 327, baseType: !92, size: 32, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !662, file: !633, line: 454, baseType: !320, size: 192, align: 64, offset: 128)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !662, file: !633, line: 455, baseType: !138, size: 128, offset: 320)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !662, file: !633, line: 456, baseType: !7, size: 32, offset: 448)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !662, file: !633, line: 458, baseType: !507, size: 64, offset: 512)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !662, file: !633, line: 459, baseType: !507, size: 64, offset: 576)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !662, file: !633, line: 460, baseType: !507, size: 64, offset: 640)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !662, file: !633, line: 461, baseType: !507, size: 64, offset: 704)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !662, file: !633, line: 463, baseType: !507, size: 64, offset: 768)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !662, file: !633, line: 465, baseType: !678, offset: 832)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !633, line: 415, elements: !164)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !632, file: !633, line: 693, baseType: !680, size: 384, offset: 1408)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !633, line: 489, size: 384, elements: !681)
!681 = !{!682, !683, !684, !685, !686, !687, !688}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !680, file: !633, line: 490, baseType: !138, size: 128)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !680, file: !633, line: 491, baseType: !120, size: 64, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !680, file: !633, line: 492, baseType: !120, size: 64, offset: 192)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !680, file: !633, line: 493, baseType: !7, size: 32, offset: 256)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !680, file: !633, line: 494, baseType: !114, size: 16, offset: 288)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !680, file: !633, line: 495, baseType: !114, size: 16, offset: 304)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !680, file: !633, line: 497, baseType: !689, size: 64, offset: 320)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !632, file: !633, line: 697, baseType: !691, size: 1792, offset: 1792)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !633, line: 507, size: 1792, elements: !692)
!692 = !{!693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !782, !783}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !691, file: !633, line: 508, baseType: !320, size: 192, align: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !691, file: !633, line: 515, baseType: !507, size: 64, offset: 192)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !691, file: !633, line: 516, baseType: !507, size: 64, offset: 256)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !691, file: !633, line: 517, baseType: !507, size: 64, offset: 320)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !691, file: !633, line: 518, baseType: !507, size: 64, offset: 384)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !691, file: !633, line: 519, baseType: !507, size: 64, offset: 448)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !691, file: !633, line: 526, baseType: !429, size: 64, offset: 512)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !691, file: !633, line: 527, baseType: !507, size: 64, offset: 576)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !691, file: !633, line: 528, baseType: !7, size: 32, offset: 640)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !691, file: !633, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !691, file: !633, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !691, file: !633, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !691, file: !633, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !691, file: !633, line: 563, baseType: !707, size: 512, offset: 704)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !13, line: 118, size: 512, elements: !708)
!708 = !{!709, !717, !718, !723, !775, !779, !780, !781}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !707, file: !13, line: 119, baseType: !710, size: 256)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !711, line: 9, size: 256, elements: !712)
!711 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!712 = !{!713, !714}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !710, file: !711, line: 10, baseType: !320, size: 192, align: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !710, file: !711, line: 11, baseType: !715, size: 64, offset: 192)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !716, line: 29, baseType: !429)
!716 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!717 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !707, file: !13, line: 120, baseType: !715, size: 64, offset: 256)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !707, file: !13, line: 121, baseType: !719, size: 64, offset: 320)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{!12, !722}
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !707, file: !13, line: 122, baseType: !724, size: 64, offset: 384)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !13, line: 159, size: 512, align: 512, elements: !726)
!726 = !{!727, !747, !748, !751, !761, !762, !770, !774}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !725, file: !13, line: 160, baseType: !728, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !13, line: 214, size: 4608, align: 512, elements: !730)
!730 = !{!731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !729, file: !13, line: 215, baseType: !540)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !729, file: !13, line: 216, baseType: !7, size: 32)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !729, file: !13, line: 217, baseType: !7, size: 32, offset: 32)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !729, file: !13, line: 218, baseType: !7, size: 32, offset: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !729, file: !13, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !729, file: !13, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !729, file: !13, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !729, file: !13, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !729, file: !13, line: 233, baseType: !715, size: 64, offset: 128)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !729, file: !13, line: 234, baseType: !722, size: 64, offset: 192)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !729, file: !13, line: 235, baseType: !715, size: 64, offset: 256)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !729, file: !13, line: 236, baseType: !722, size: 64, offset: 320)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !729, file: !13, line: 237, baseType: !744, size: 4096, offset: 512)
!744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !725, size: 4096, elements: !745)
!745 = !{!746}
!746 = !DISubrange(count: 8)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !725, file: !13, line: 161, baseType: !7, size: 32, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !725, file: !13, line: 162, baseType: !749, size: 32, offset: 96)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !89, line: 27, baseType: !750)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !118, line: 96, baseType: !176)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !725, file: !13, line: 163, baseType: !752, size: 32, offset: 128)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !753, line: 276, baseType: !754)
!753 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !753, line: 276, size: 32, elements: !755)
!755 = !{!756}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !754, file: !753, line: 276, baseType: !757, size: 32)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !753, line: 70, baseType: !758)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !753, line: 65, size: 32, elements: !759)
!759 = !{!760}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !758, file: !753, line: 66, baseType: !7, size: 32)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !725, file: !13, line: 164, baseType: !722, size: 64, offset: 192)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !725, file: !13, line: 165, baseType: !763, size: 128, offset: 256)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !711, line: 14, size: 128, elements: !764)
!764 = !{!765}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !763, file: !711, line: 15, baseType: !766, size: 128)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !321, line: 125, size: 128, elements: !767)
!767 = !{!768, !769}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !766, file: !321, line: 126, baseType: !337, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !766, file: !321, line: 127, baseType: !325, size: 64, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !725, file: !13, line: 166, baseType: !771, size: 64, offset: 384)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DISubroutineType(types: !773)
!773 = !{!715}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !725, file: !13, line: 167, baseType: !715, size: 64, offset: 448)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !707, file: !13, line: 123, baseType: !776, size: 8, offset: 448)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !93, line: 17, baseType: !777)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !95, line: 21, baseType: !778)
!778 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !707, file: !13, line: 124, baseType: !776, size: 8, offset: 456)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !707, file: !13, line: 125, baseType: !776, size: 8, offset: 464)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !707, file: !13, line: 126, baseType: !776, size: 8, offset: 472)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !691, file: !633, line: 572, baseType: !707, size: 512, offset: 1216)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !691, file: !633, line: 580, baseType: !784, size: 64, offset: 1728)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !632, file: !633, line: 721, baseType: !7, size: 32, offset: 3584)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !632, file: !633, line: 722, baseType: !176, size: 32, offset: 3616)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !632, file: !633, line: 723, baseType: !788, size: 64, offset: 3648)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !790)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !791, line: 17, baseType: !792)
!791 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !791, line: 17, size: 64, elements: !793)
!793 = !{!794}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !792, file: !791, line: 17, baseType: !795, size: 64)
!795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 64, elements: !796)
!796 = !{!797}
!797 = !DISubrange(count: 1)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !632, file: !633, line: 724, baseType: !790, size: 64, offset: 3712)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !632, file: !633, line: 749, baseType: !800, offset: 3776)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !633, line: 290, elements: !164)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !632, file: !633, line: 751, baseType: !138, size: 128, offset: 3776)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !632, file: !633, line: 757, baseType: !498, size: 64, offset: 3904)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !632, file: !633, line: 758, baseType: !498, size: 64, offset: 3968)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !632, file: !633, line: 761, baseType: !805, size: 320, offset: 4032)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !570, line: 34, size: 320, elements: !806)
!806 = !{!807, !808}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !805, file: !570, line: 35, baseType: !507, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !805, file: !570, line: 36, baseType: !809, size: 256, offset: 64)
!809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !488, size: 256, elements: !574)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !632, file: !633, line: 766, baseType: !176, size: 32, offset: 4352)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !632, file: !633, line: 767, baseType: !176, size: 32, offset: 4384)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !632, file: !633, line: 768, baseType: !176, size: 32, offset: 4416)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !632, file: !633, line: 770, baseType: !176, size: 32, offset: 4448)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !632, file: !633, line: 772, baseType: !120, size: 64, offset: 4480)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !632, file: !633, line: 775, baseType: !7, size: 32, offset: 4544)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !632, file: !633, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !632, file: !633, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !632, file: !633, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !632, file: !633, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !632, file: !633, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !632, file: !633, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !632, file: !633, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !632, file: !633, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !632, file: !633, line: 831, baseType: !120, size: 64, offset: 4672)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !632, file: !633, line: 833, baseType: !826, size: 384, offset: 4736)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !18, line: 25, size: 384, elements: !827)
!827 = !{!828, !833}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !826, file: !18, line: 26, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{!129, !832}
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, scope: !826, file: !18, line: 27, baseType: !834, size: 320, offset: 64)
!834 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !826, file: !18, line: 27, size: 320, elements: !835)
!835 = !{!836, !845, !872}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !834, file: !18, line: 36, baseType: !837, size: 320)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !834, file: !18, line: 29, size: 320, elements: !838)
!838 = !{!839, !840, !841, !842, !843, !844}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !837, file: !18, line: 30, baseType: !97, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !837, file: !18, line: 31, baseType: !92, size: 32, offset: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !837, file: !18, line: 32, baseType: !92, size: 32, offset: 96)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !837, file: !18, line: 33, baseType: !92, size: 32, offset: 128)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !837, file: !18, line: 34, baseType: !507, size: 64, offset: 192)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !837, file: !18, line: 35, baseType: !97, size: 64, offset: 256)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !834, file: !18, line: 46, baseType: !846, size: 192)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !834, file: !18, line: 38, size: 192, elements: !847)
!847 = !{!848, !849, !850, !871}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !846, file: !18, line: 39, baseType: !749, size: 32)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !846, file: !18, line: 40, baseType: !17, size: 32, offset: 32)
!850 = !DIDerivedType(tag: DW_TAG_member, scope: !846, file: !18, line: 41, baseType: !851, size: 64, offset: 64)
!851 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !846, file: !18, line: 41, size: 64, elements: !852)
!852 = !{!853, !861}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !851, file: !18, line: 42, baseType: !854, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !856, line: 7, size: 128, elements: !857)
!856 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!857 = !{!858, !860}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !855, file: !856, line: 8, baseType: !859, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !118, line: 93, baseType: !431)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !855, file: !856, line: 9, baseType: !431, size: 64, offset: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !851, file: !18, line: 43, baseType: !862, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !864, line: 7, size: 64, elements: !865)
!864 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!865 = !{!866, !870}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !863, file: !864, line: 8, baseType: !867, size: 32)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !864, line: 5, baseType: !868)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !93, line: 20, baseType: !869)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !95, line: 26, baseType: !176)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !863, file: !864, line: 9, baseType: !868, size: 32, offset: 32)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !846, file: !18, line: 45, baseType: !507, size: 64, offset: 128)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !834, file: !18, line: 54, baseType: !873, size: 256)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !834, file: !18, line: 48, size: 256, elements: !874)
!874 = !{!875, !878, !879, !880, !881}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !873, file: !18, line: 49, baseType: !876, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !18, line: 14, flags: DIFlagFwdDecl)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !873, file: !18, line: 50, baseType: !176, size: 32, offset: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !873, file: !18, line: 51, baseType: !176, size: 32, offset: 96)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !873, file: !18, line: 52, baseType: !120, size: 64, offset: 128)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !873, file: !18, line: 53, baseType: !120, size: 64, offset: 192)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !632, file: !633, line: 835, baseType: !883, size: 32, offset: 5120)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !89, line: 22, baseType: !884)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !118, line: 28, baseType: !176)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !632, file: !633, line: 836, baseType: !883, size: 32, offset: 5152)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !632, file: !633, line: 840, baseType: !120, size: 64, offset: 5184)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !632, file: !633, line: 849, baseType: !631, size: 64, offset: 5248)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !632, file: !633, line: 852, baseType: !631, size: 64, offset: 5312)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !632, file: !633, line: 857, baseType: !138, size: 128, offset: 5376)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !632, file: !633, line: 858, baseType: !138, size: 128, offset: 5504)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !632, file: !633, line: 859, baseType: !631, size: 64, offset: 5632)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !632, file: !633, line: 867, baseType: !138, size: 128, offset: 5696)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !632, file: !633, line: 868, baseType: !138, size: 128, offset: 5824)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !632, file: !633, line: 871, baseType: !895, size: 64, offset: 5952)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !897, line: 59, size: 768, elements: !898)
!897 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!898 = !{!899, !900, !901, !902, !913, !914, !915, !924}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !896, file: !897, line: 61, baseType: !645, size: 32)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !896, file: !897, line: 62, baseType: !7, size: 32, offset: 32)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !896, file: !897, line: 63, baseType: !150, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !896, file: !897, line: 65, baseType: !903, size: 256, offset: 64)
!903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !904, size: 256, elements: !574)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !89, line: 182, size: 64, elements: !905)
!905 = !{!906}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !904, file: !89, line: 183, baseType: !907, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !89, line: 186, size: 128, elements: !909)
!909 = !{!910, !911}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !908, file: !89, line: 187, baseType: !907, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !908, file: !89, line: 187, baseType: !912, size: 64, offset: 64)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !896, file: !897, line: 66, baseType: !904, size: 64, offset: 320)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !896, file: !897, line: 68, baseType: !389, size: 128, offset: 384)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !896, file: !897, line: 69, baseType: !916, size: 128, align: 64, offset: 512)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !89, line: 216, size: 128, align: 64, elements: !917)
!917 = !{!918, !920}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !916, file: !89, line: 217, baseType: !919, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !916, file: !89, line: 218, baseType: !921, size: 64, offset: 64)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DISubroutineType(types: !923)
!923 = !{null, !919}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !896, file: !897, line: 70, baseType: !925, size: 128, offset: 640)
!925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !926, size: 128, elements: !796)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !897, line: 54, size: 128, elements: !927)
!927 = !{!928, !929}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !926, file: !897, line: 55, baseType: !176, size: 32)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !926, file: !897, line: 56, baseType: !930, size: 64, offset: 64)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !897, line: 56, flags: DIFlagFwdDecl)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !632, file: !633, line: 872, baseType: !933, size: 512, offset: 6016)
!933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !908, size: 512, elements: !574)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !632, file: !633, line: 873, baseType: !138, size: 128, offset: 6528)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !632, file: !633, line: 874, baseType: !138, size: 128, offset: 6656)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !632, file: !633, line: 876, baseType: !937, size: 64, offset: 6784)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !939, line: 26, size: 192, elements: !940)
!939 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!940 = !{!941, !942}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !938, file: !939, line: 27, baseType: !7, size: 32)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !938, file: !939, line: 28, baseType: !943, size: 128, offset: 64)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !944, line: 43, size: 128, elements: !945)
!944 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!945 = !{!946, !947}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !943, file: !944, line: 44, baseType: !540)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !943, file: !944, line: 45, baseType: !138, size: 128)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !632, file: !633, line: 879, baseType: !949, size: 64, offset: 6848)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !632, file: !633, line: 882, baseType: !949, size: 64, offset: 6912)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !632, file: !633, line: 884, baseType: !507, size: 64, offset: 6976)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !632, file: !633, line: 885, baseType: !507, size: 64, offset: 7040)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !632, file: !633, line: 890, baseType: !507, size: 64, offset: 7104)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !632, file: !633, line: 891, baseType: !955, size: 128, offset: 7168)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !633, line: 242, size: 128, elements: !956)
!956 = !{!957, !958, !959}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !955, file: !633, line: 244, baseType: !507, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !955, file: !633, line: 245, baseType: !507, size: 64, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !955, file: !633, line: 246, baseType: !540, offset: 128)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !632, file: !633, line: 900, baseType: !120, size: 64, offset: 7296)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !632, file: !633, line: 901, baseType: !120, size: 64, offset: 7360)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !632, file: !633, line: 904, baseType: !507, size: 64, offset: 7424)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !632, file: !633, line: 907, baseType: !507, size: 64, offset: 7488)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !632, file: !633, line: 910, baseType: !120, size: 64, offset: 7552)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !632, file: !633, line: 911, baseType: !120, size: 64, offset: 7616)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !632, file: !633, line: 914, baseType: !967, size: 640, offset: 7680)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !968, line: 123, size: 640, elements: !969)
!968 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!969 = !{!970, !976, !977}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !967, file: !968, line: 124, baseType: !971, size: 576)
!971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !972, size: 576, elements: !193)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !968, line: 108, size: 192, elements: !973)
!973 = !{!974, !975}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !972, file: !968, line: 109, baseType: !507, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !972, file: !968, line: 110, baseType: !763, size: 128, offset: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !967, file: !968, line: 125, baseType: !7, size: 32, offset: 576)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !967, file: !968, line: 126, baseType: !7, size: 32, offset: 608)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !632, file: !633, line: 917, baseType: !979, size: 192, offset: 8320)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !968, line: 134, size: 192, elements: !980)
!980 = !{!981, !982}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !979, file: !968, line: 135, baseType: !916, size: 128, align: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !979, file: !968, line: 136, baseType: !7, size: 32, offset: 128)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !632, file: !633, line: 923, baseType: !984, size: 64, offset: 8512)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !986)
!986 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !633, line: 923, flags: DIFlagFwdDecl)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !632, file: !633, line: 926, baseType: !984, size: 64, offset: 8576)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !632, file: !633, line: 929, baseType: !984, size: 64, offset: 8640)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !632, file: !633, line: 933, baseType: !990, size: 64, offset: 8704)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !633, line: 933, flags: DIFlagFwdDecl)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !632, file: !633, line: 943, baseType: !993, size: 128, offset: 8768)
!993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 128, elements: !994)
!994 = !{!995}
!995 = !DISubrange(count: 16)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !632, file: !633, line: 945, baseType: !997, size: 64, offset: 8896)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !633, line: 49, flags: DIFlagFwdDecl)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !632, file: !633, line: 956, baseType: !1000, size: 64, offset: 8960)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !633, line: 45, flags: DIFlagFwdDecl)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !632, file: !633, line: 959, baseType: !1003, size: 64, offset: 9024)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !633, line: 959, flags: DIFlagFwdDecl)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !632, file: !633, line: 962, baseType: !1006, size: 64, offset: 9088)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !633, line: 66, flags: DIFlagFwdDecl)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !632, file: !633, line: 966, baseType: !1009, size: 64, offset: 9152)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !633, line: 50, flags: DIFlagFwdDecl)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !632, file: !633, line: 969, baseType: !1012, size: 64, offset: 9216)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !968, line: 223, flags: DIFlagFwdDecl)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !632, file: !633, line: 970, baseType: !1015, size: 64, offset: 9280)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !633, line: 62, flags: DIFlagFwdDecl)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !632, file: !633, line: 971, baseType: !1018, size: 64, offset: 9344)
!1018 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1019, line: 25, baseType: !1020)
!1019 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1019, line: 23, size: 64, elements: !1021)
!1021 = !{!1022}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1020, file: !1019, line: 24, baseType: !795, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !632, file: !633, line: 972, baseType: !1018, size: 64, offset: 9408)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !632, file: !633, line: 974, baseType: !1018, size: 64, offset: 9472)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !632, file: !633, line: 975, baseType: !1026, size: 192, offset: 9536)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1027, line: 30, size: 192, elements: !1028)
!1027 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1028 = !{!1029, !1030}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1026, file: !1027, line: 31, baseType: !138, size: 128)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1026, file: !1027, line: 32, baseType: !1018, size: 64, offset: 128)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !632, file: !633, line: 976, baseType: !120, size: 64, offset: 9728)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !632, file: !633, line: 977, baseType: !116, size: 64, offset: 9792)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !632, file: !633, line: 978, baseType: !7, size: 32, offset: 9856)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !632, file: !633, line: 980, baseType: !919, size: 64, offset: 9920)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !632, file: !633, line: 989, baseType: !1036, size: 128, offset: 9984)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1037, line: 35, size: 128, elements: !1038)
!1037 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1038 = !{!1039, !1040, !1041}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1036, file: !1037, line: 36, baseType: !176, size: 32)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1036, file: !1037, line: 37, baseType: !312, size: 32, offset: 32)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1036, file: !1037, line: 38, baseType: !1042, size: 64, offset: 64)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1037, line: 23, flags: DIFlagFwdDecl)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !632, file: !633, line: 992, baseType: !507, size: 64, offset: 10112)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !632, file: !633, line: 993, baseType: !507, size: 64, offset: 10176)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !632, file: !633, line: 996, baseType: !150, offset: 10240)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !632, file: !633, line: 999, baseType: !540, offset: 10240)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !632, file: !633, line: 1001, baseType: !1049, size: 64, offset: 10240)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !633, line: 636, size: 64, elements: !1050)
!1050 = !{!1051}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1049, file: !633, line: 637, baseType: !1052, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !632, file: !633, line: 1005, baseType: !766, size: 128, offset: 10304)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !632, file: !633, line: 1007, baseType: !631, size: 64, offset: 10432)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !632, file: !633, line: 1009, baseType: !1056, size: 64, offset: 10496)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !633, line: 1009, flags: DIFlagFwdDecl)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !632, file: !633, line: 1043, baseType: !96, size: 64, offset: 10560)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !632, file: !633, line: 1046, baseType: !1060, size: 64, offset: 10624)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !633, line: 41, flags: DIFlagFwdDecl)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !632, file: !633, line: 1050, baseType: !1063, size: 64, offset: 10688)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !633, line: 42, flags: DIFlagFwdDecl)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !632, file: !633, line: 1054, baseType: !1066, size: 64, offset: 10752)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !633, line: 55, flags: DIFlagFwdDecl)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !632, file: !633, line: 1056, baseType: !1069, size: 64, offset: 10816)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !633, line: 40, flags: DIFlagFwdDecl)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !632, file: !633, line: 1058, baseType: !1072, size: 64, offset: 10880)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !633, line: 47, flags: DIFlagFwdDecl)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !632, file: !633, line: 1061, baseType: !1075, size: 64, offset: 10944)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !633, line: 43, flags: DIFlagFwdDecl)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !632, file: !633, line: 1064, baseType: !120, size: 64, offset: 11008)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !632, file: !633, line: 1065, baseType: !1079, size: 64, offset: 11072)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1027, line: 14, baseType: !1081)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1027, line: 12, size: 384, elements: !1082)
!1082 = !{!1083}
!1083 = !DIDerivedType(tag: DW_TAG_member, scope: !1081, file: !1027, line: 13, baseType: !1084, size: 384)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1081, file: !1027, line: 13, size: 384, elements: !1085)
!1085 = !{!1086, !1087, !1088, !1089}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1084, file: !1027, line: 13, baseType: !176, size: 32)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1084, file: !1027, line: 13, baseType: !176, size: 32, offset: 32)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1084, file: !1027, line: 13, baseType: !176, size: 32, offset: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1084, file: !1027, line: 13, baseType: !1090, size: 256, offset: 128)
!1090 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1091, line: 32, size: 256, elements: !1092)
!1091 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1092 = !{!1093, !1098, !1111, !1117, !1126, !1146, !1151}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1090, file: !1091, line: 37, baseType: !1094, size: 64)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1090, file: !1091, line: 34, size: 64, elements: !1095)
!1095 = !{!1096, !1097}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1094, file: !1091, line: 35, baseType: !884, size: 32)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1094, file: !1091, line: 36, baseType: !298, size: 32, offset: 32)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1090, file: !1091, line: 45, baseType: !1099, size: 192)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1090, file: !1091, line: 40, size: 192, elements: !1100)
!1100 = !{!1101, !1103, !1104, !1110}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1099, file: !1091, line: 41, baseType: !1102, size: 32)
!1102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !118, line: 95, baseType: !176)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1099, file: !1091, line: 42, baseType: !176, size: 32, offset: 32)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1099, file: !1091, line: 43, baseType: !1105, size: 64, offset: 64)
!1105 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1091, line: 11, baseType: !1106)
!1106 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1091, line: 8, size: 64, elements: !1107)
!1107 = !{!1108, !1109}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1106, file: !1091, line: 9, baseType: !176, size: 32)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1106, file: !1091, line: 10, baseType: !96, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1099, file: !1091, line: 44, baseType: !176, size: 32, offset: 128)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1090, file: !1091, line: 52, baseType: !1112, size: 128)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1090, file: !1091, line: 48, size: 128, elements: !1113)
!1113 = !{!1114, !1115, !1116}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1112, file: !1091, line: 49, baseType: !884, size: 32)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1112, file: !1091, line: 50, baseType: !298, size: 32, offset: 32)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1112, file: !1091, line: 51, baseType: !1105, size: 64, offset: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1090, file: !1091, line: 61, baseType: !1118, size: 256)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1090, file: !1091, line: 55, size: 256, elements: !1119)
!1119 = !{!1120, !1121, !1122, !1123, !1125}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1118, file: !1091, line: 56, baseType: !884, size: 32)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1118, file: !1091, line: 57, baseType: !298, size: 32, offset: 32)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1118, file: !1091, line: 58, baseType: !176, size: 32, offset: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1118, file: !1091, line: 59, baseType: !1124, size: 64, offset: 128)
!1124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !118, line: 94, baseType: !128)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1118, file: !1091, line: 60, baseType: !1124, size: 64, offset: 192)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1090, file: !1091, line: 95, baseType: !1127, size: 256)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1090, file: !1091, line: 64, size: 256, elements: !1128)
!1128 = !{!1129, !1130}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1127, file: !1091, line: 65, baseType: !96, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, scope: !1127, file: !1091, line: 77, baseType: !1131, size: 192, offset: 64)
!1131 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1127, file: !1091, line: 77, size: 192, elements: !1132)
!1132 = !{!1133, !1134, !1141}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1131, file: !1091, line: 82, baseType: !620, size: 16)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1131, file: !1091, line: 88, baseType: !1135, size: 192)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1131, file: !1091, line: 84, size: 192, elements: !1136)
!1136 = !{!1137, !1139, !1140}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1135, file: !1091, line: 85, baseType: !1138, size: 64)
!1138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 64, elements: !745)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1135, file: !1091, line: 86, baseType: !96, size: 64, offset: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1135, file: !1091, line: 87, baseType: !96, size: 64, offset: 128)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1131, file: !1091, line: 93, baseType: !1142, size: 96)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1131, file: !1091, line: 90, size: 96, elements: !1143)
!1143 = !{!1144, !1145}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1142, file: !1091, line: 91, baseType: !1138, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1142, file: !1091, line: 92, baseType: !94, size: 32, offset: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1090, file: !1091, line: 101, baseType: !1147, size: 128)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1090, file: !1091, line: 98, size: 128, elements: !1148)
!1148 = !{!1149, !1150}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1147, file: !1091, line: 99, baseType: !129, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1147, file: !1091, line: 100, baseType: !176, size: 32, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1090, file: !1091, line: 108, baseType: !1152, size: 128)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1090, file: !1091, line: 104, size: 128, elements: !1153)
!1153 = !{!1154, !1155, !1156}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1152, file: !1091, line: 105, baseType: !96, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1152, file: !1091, line: 106, baseType: !176, size: 32, offset: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1152, file: !1091, line: 107, baseType: !7, size: 32, offset: 96)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !632, file: !633, line: 1067, baseType: !1158, offset: 11136)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1159, line: 12, elements: !164)
!1159 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !632, file: !633, line: 1099, baseType: !1161, size: 64, offset: 11136)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !633, line: 56, flags: DIFlagFwdDecl)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !632, file: !633, line: 1103, baseType: !138, size: 128, offset: 11200)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !632, file: !633, line: 1104, baseType: !1165, size: 64, offset: 11328)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !633, line: 46, flags: DIFlagFwdDecl)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !632, file: !633, line: 1105, baseType: !419, size: 192, offset: 11392)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !632, file: !633, line: 1106, baseType: !7, size: 32, offset: 11584)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !632, file: !633, line: 1109, baseType: !1170, size: 128, offset: 11648)
!1170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1171, size: 128, elements: !1173)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !633, line: 51, flags: DIFlagFwdDecl)
!1173 = !{!1174}
!1174 = !DISubrange(count: 2)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !632, file: !633, line: 1110, baseType: !419, size: 192, offset: 11776)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !632, file: !633, line: 1111, baseType: !138, size: 128, offset: 11968)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !632, file: !633, line: 1173, baseType: !1178, size: 64, offset: 12096)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1180, line: 62, size: 256, align: 256, elements: !1181)
!1180 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1181 = !{!1182, !1183, !1184, !1189}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1179, file: !1180, line: 75, baseType: !94, size: 32)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1179, file: !1180, line: 90, baseType: !94, size: 32, offset: 32)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1179, file: !1180, line: 124, baseType: !1185, size: 64, offset: 64)
!1185 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1179, file: !1180, line: 109, size: 64, elements: !1186)
!1186 = !{!1187, !1188}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1185, file: !1180, line: 110, baseType: !508, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1185, file: !1180, line: 112, baseType: !508, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1179, file: !1180, line: 144, baseType: !94, size: 32, offset: 128)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !632, file: !633, line: 1174, baseType: !92, size: 32, offset: 12160)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !632, file: !633, line: 1179, baseType: !120, size: 64, offset: 12224)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !632, file: !633, line: 1182, baseType: !1193, size: 128, offset: 12288)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !570, line: 76, size: 128, elements: !1194)
!1194 = !{!1195, !1200, !1201}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1193, file: !570, line: 85, baseType: !1196, size: 64)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1197, line: 7, size: 64, elements: !1198)
!1197 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1198 = !{!1199}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1196, file: !1197, line: 12, baseType: !792, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1193, file: !570, line: 88, baseType: !261, size: 8, offset: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1193, file: !570, line: 95, baseType: !261, size: 8, offset: 72)
!1202 = !DIDerivedType(tag: DW_TAG_member, scope: !632, file: !633, line: 1184, baseType: !1203, size: 128, offset: 12416)
!1203 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !632, file: !633, line: 1184, size: 128, elements: !1204)
!1204 = !{!1205, !1206}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1203, file: !633, line: 1185, baseType: !645, size: 32)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1203, file: !633, line: 1186, baseType: !916, size: 128, align: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !632, file: !633, line: 1190, baseType: !1208, size: 64, offset: 12544)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !633, line: 53, flags: DIFlagFwdDecl)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !632, file: !633, line: 1192, baseType: !1211, size: 128, offset: 12608)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !570, line: 64, size: 128, elements: !1212)
!1212 = !{!1213, !1306, !1307}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1211, file: !570, line: 65, baseType: !1214, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !445, line: 68, size: 512, align: 128, elements: !1216)
!1216 = !{!1217, !1218, !1298, !1305}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1215, file: !445, line: 69, baseType: !120, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, scope: !1215, file: !445, line: 77, baseType: !1219, size: 320, offset: 64)
!1219 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1215, file: !445, line: 77, size: 320, elements: !1220)
!1220 = !{!1221, !1230, !1235, !1263, !1271, !1277, !1290, !1297}
!1221 = !DIDerivedType(tag: DW_TAG_member, scope: !1219, file: !445, line: 78, baseType: !1222, size: 320)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1219, file: !445, line: 78, size: 320, elements: !1223)
!1223 = !{!1224, !1225, !1228, !1229}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1222, file: !445, line: 84, baseType: !138, size: 128)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1222, file: !445, line: 86, baseType: !1226, size: 64, offset: 128)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !445, line: 26, flags: DIFlagFwdDecl)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1222, file: !445, line: 87, baseType: !120, size: 64, offset: 192)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1222, file: !445, line: 94, baseType: !120, size: 64, offset: 256)
!1230 = !DIDerivedType(tag: DW_TAG_member, scope: !1219, file: !445, line: 96, baseType: !1231, size: 64)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1219, file: !445, line: 96, size: 64, elements: !1232)
!1232 = !{!1233}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1231, file: !445, line: 101, baseType: !1234, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !89, line: 143, baseType: !507)
!1235 = !DIDerivedType(tag: DW_TAG_member, scope: !1219, file: !445, line: 103, baseType: !1236, size: 320)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1219, file: !445, line: 103, size: 320, elements: !1237)
!1237 = !{!1238, !1248, !1251, !1252}
!1238 = !DIDerivedType(tag: DW_TAG_member, scope: !1236, file: !445, line: 104, baseType: !1239, size: 128)
!1239 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1236, file: !445, line: 104, size: 128, elements: !1240)
!1240 = !{!1241, !1242}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1239, file: !445, line: 105, baseType: !138, size: 128)
!1242 = !DIDerivedType(tag: DW_TAG_member, scope: !1239, file: !445, line: 106, baseType: !1243, size: 128)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1239, file: !445, line: 106, size: 128, elements: !1244)
!1244 = !{!1245, !1246, !1247}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1243, file: !445, line: 107, baseType: !1214, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1243, file: !445, line: 109, baseType: !176, size: 32, offset: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1243, file: !445, line: 110, baseType: !176, size: 32, offset: 96)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1236, file: !445, line: 117, baseType: !1249, size: 64, offset: 128)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !445, line: 117, flags: DIFlagFwdDecl)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1236, file: !445, line: 119, baseType: !96, size: 64, offset: 192)
!1252 = !DIDerivedType(tag: DW_TAG_member, scope: !1236, file: !445, line: 120, baseType: !1253, size: 64, offset: 256)
!1253 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1236, file: !445, line: 120, size: 64, elements: !1254)
!1254 = !{!1255, !1256, !1257}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1253, file: !445, line: 121, baseType: !96, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1253, file: !445, line: 122, baseType: !120, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, scope: !1253, file: !445, line: 123, baseType: !1258, size: 32)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1253, file: !445, line: 123, size: 32, elements: !1259)
!1259 = !{!1260, !1261, !1262}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1258, file: !445, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1258, file: !445, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1258, file: !445, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1263 = !DIDerivedType(tag: DW_TAG_member, scope: !1219, file: !445, line: 130, baseType: !1264, size: 192)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1219, file: !445, line: 130, size: 192, elements: !1265)
!1265 = !{!1266, !1267, !1268, !1269, !1270}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1264, file: !445, line: 131, baseType: !120, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1264, file: !445, line: 134, baseType: !778, size: 8, offset: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1264, file: !445, line: 135, baseType: !778, size: 8, offset: 72)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1264, file: !445, line: 136, baseType: !312, size: 32, offset: 96)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1264, file: !445, line: 137, baseType: !7, size: 32, offset: 128)
!1271 = !DIDerivedType(tag: DW_TAG_member, scope: !1219, file: !445, line: 139, baseType: !1272, size: 256)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1219, file: !445, line: 139, size: 256, elements: !1273)
!1273 = !{!1274, !1275, !1276}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1272, file: !445, line: 140, baseType: !120, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1272, file: !445, line: 141, baseType: !312, size: 32, offset: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1272, file: !445, line: 143, baseType: !138, size: 128, offset: 128)
!1277 = !DIDerivedType(tag: DW_TAG_member, scope: !1219, file: !445, line: 145, baseType: !1278, size: 256)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1219, file: !445, line: 145, size: 256, elements: !1279)
!1279 = !{!1280, !1281, !1283, !1284, !1289}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1278, file: !445, line: 146, baseType: !120, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1278, file: !445, line: 147, baseType: !1282, size: 64, offset: 64)
!1282 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !132, line: 509, baseType: !1214)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1278, file: !445, line: 148, baseType: !120, size: 64, offset: 128)
!1284 = !DIDerivedType(tag: DW_TAG_member, scope: !1278, file: !445, line: 149, baseType: !1285, size: 64, offset: 192)
!1285 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1278, file: !445, line: 149, size: 64, elements: !1286)
!1286 = !{!1287, !1288}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1285, file: !445, line: 150, baseType: !498, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1285, file: !445, line: 151, baseType: !312, size: 32)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1278, file: !445, line: 156, baseType: !150, offset: 256)
!1290 = !DIDerivedType(tag: DW_TAG_member, scope: !1219, file: !445, line: 159, baseType: !1291, size: 128)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1219, file: !445, line: 159, size: 128, elements: !1292)
!1292 = !{!1293, !1296}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1291, file: !445, line: 161, baseType: !1294, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !445, line: 161, flags: DIFlagFwdDecl)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1291, file: !445, line: 162, baseType: !96, size: 64, offset: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1219, file: !445, line: 176, baseType: !916, size: 128, align: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, scope: !1215, file: !445, line: 179, baseType: !1299, size: 32, offset: 384)
!1299 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1215, file: !445, line: 179, size: 32, elements: !1300)
!1300 = !{!1301, !1302, !1303, !1304}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1299, file: !445, line: 184, baseType: !312, size: 32)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1299, file: !445, line: 192, baseType: !7, size: 32)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1299, file: !445, line: 194, baseType: !7, size: 32)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1299, file: !445, line: 195, baseType: !176, size: 32)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1215, file: !445, line: 199, baseType: !312, size: 32, offset: 416)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1211, file: !570, line: 67, baseType: !94, size: 32, offset: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1211, file: !570, line: 68, baseType: !94, size: 32, offset: 96)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !632, file: !633, line: 1206, baseType: !176, size: 32, offset: 12736)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !632, file: !633, line: 1207, baseType: !176, size: 32, offset: 12768)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !632, file: !633, line: 1209, baseType: !120, size: 64, offset: 12800)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !632, file: !633, line: 1219, baseType: !507, size: 64, offset: 12864)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !632, file: !633, line: 1220, baseType: !507, size: 64, offset: 12928)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !632, file: !633, line: 1317, baseType: !176, size: 32, offset: 12992)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !632, file: !633, line: 1319, baseType: !631, size: 64, offset: 13056)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !632, file: !633, line: 1322, baseType: !1316, size: 64, offset: 13120)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1318, line: 56, size: 512, elements: !1319)
!1318 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1319 = !{!1320, !1321, !1322, !1323, !1324, !1326, !1327, !1329}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1317, file: !1318, line: 57, baseType: !1316, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1317, file: !1318, line: 58, baseType: !96, size: 64, offset: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1317, file: !1318, line: 59, baseType: !120, size: 64, offset: 128)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1317, file: !1318, line: 60, baseType: !120, size: 64, offset: 192)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1317, file: !1318, line: 61, baseType: !1325, size: 64, offset: 256)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1317, file: !1318, line: 62, baseType: !7, size: 32, offset: 320)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1317, file: !1318, line: 63, baseType: !1328, size: 64, offset: 384)
!1328 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !89, line: 153, baseType: !507)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1317, file: !1318, line: 64, baseType: !271, size: 64, offset: 448)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !632, file: !633, line: 1326, baseType: !645, size: 32, offset: 13184)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !632, file: !633, line: 1342, baseType: !96, size: 64, offset: 13248)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !632, file: !633, line: 1343, baseType: !508, size: 64, offset: 13312)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !632, file: !633, line: 1344, baseType: !507, size: 64, offset: 13376)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !632, file: !633, line: 1345, baseType: !508, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !632, file: !633, line: 1346, baseType: !508, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !632, file: !633, line: 1347, baseType: !508, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !632, file: !633, line: 1348, baseType: !916, size: 128, align: 64, offset: 13504)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !632, file: !633, line: 1358, baseType: !1339, size: 34816, offset: 13824)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1340, line: 485, size: 34816, elements: !1341)
!1340 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1341 = !{!1342, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1371, !1372, !1373, !1374, !1375, !1376, !1379, !1380, !1381}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1339, file: !1340, line: 487, baseType: !1343, size: 192)
!1343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1344, size: 192, elements: !193)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1345, line: 16, size: 64, elements: !1346)
!1345 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1346 = !{!1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1344, file: !1345, line: 17, baseType: !615, size: 16)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1344, file: !1345, line: 18, baseType: !615, size: 16, offset: 16)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1344, file: !1345, line: 19, baseType: !615, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1344, file: !1345, line: 19, baseType: !615, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1344, file: !1345, line: 19, baseType: !615, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1344, file: !1345, line: 19, baseType: !615, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1344, file: !1345, line: 19, baseType: !615, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1344, file: !1345, line: 20, baseType: !615, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1344, file: !1345, line: 20, baseType: !615, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1344, file: !1345, line: 20, baseType: !615, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1344, file: !1345, line: 20, baseType: !615, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1344, file: !1345, line: 20, baseType: !615, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1344, file: !1345, line: 20, baseType: !615, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1339, file: !1340, line: 491, baseType: !120, size: 64, offset: 192)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1339, file: !1340, line: 495, baseType: !114, size: 16, offset: 256)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1339, file: !1340, line: 496, baseType: !114, size: 16, offset: 272)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1339, file: !1340, line: 497, baseType: !114, size: 16, offset: 288)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1339, file: !1340, line: 498, baseType: !114, size: 16, offset: 304)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1339, file: !1340, line: 502, baseType: !120, size: 64, offset: 320)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1339, file: !1340, line: 503, baseType: !120, size: 64, offset: 384)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1339, file: !1340, line: 514, baseType: !1368, size: 256, offset: 448)
!1368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1369, size: 256, elements: !574)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1340, line: 483, flags: DIFlagFwdDecl)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1339, file: !1340, line: 516, baseType: !120, size: 64, offset: 704)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1339, file: !1340, line: 518, baseType: !120, size: 64, offset: 768)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1339, file: !1340, line: 520, baseType: !120, size: 64, offset: 832)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1339, file: !1340, line: 521, baseType: !120, size: 64, offset: 896)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1339, file: !1340, line: 522, baseType: !120, size: 64, offset: 960)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1339, file: !1340, line: 528, baseType: !1377, size: 64, offset: 1024)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1340, line: 10, flags: DIFlagFwdDecl)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1339, file: !1340, line: 535, baseType: !120, size: 64, offset: 1088)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1339, file: !1340, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1339, file: !1340, line: 540, baseType: !1382, size: 33280, offset: 1536)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1383, line: 317, size: 33280, elements: !1384)
!1383 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1384 = !{!1385, !1386, !1387}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1382, file: !1383, line: 330, baseType: !7, size: 32)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1382, file: !1383, line: 337, baseType: !120, size: 64, offset: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1382, file: !1383, line: 348, baseType: !1388, size: 32768, offset: 512)
!1388 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1383, line: 304, size: 32768, elements: !1389)
!1389 = !{!1390, !1405, !1444, !1494, !1511}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1388, file: !1383, line: 305, baseType: !1391, size: 896)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1383, line: 12, size: 896, elements: !1392)
!1392 = !{!1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1404}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1391, file: !1383, line: 13, baseType: !92, size: 32)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1391, file: !1383, line: 14, baseType: !92, size: 32, offset: 32)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1391, file: !1383, line: 15, baseType: !92, size: 32, offset: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1391, file: !1383, line: 16, baseType: !92, size: 32, offset: 96)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1391, file: !1383, line: 17, baseType: !92, size: 32, offset: 128)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1391, file: !1383, line: 18, baseType: !92, size: 32, offset: 160)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1391, file: !1383, line: 19, baseType: !92, size: 32, offset: 192)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1391, file: !1383, line: 22, baseType: !1401, size: 640, offset: 224)
!1401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 640, elements: !1402)
!1402 = !{!1403}
!1403 = !DISubrange(count: 20)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1391, file: !1383, line: 25, baseType: !92, size: 32, offset: 864)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1388, file: !1383, line: 306, baseType: !1406, size: 4096, align: 128)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1383, line: 34, size: 4096, align: 128, elements: !1407)
!1407 = !{!1408, !1409, !1410, !1411, !1412, !1427, !1428, !1429, !1433, !1435, !1439}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1406, file: !1383, line: 35, baseType: !615, size: 16)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1406, file: !1383, line: 36, baseType: !615, size: 16, offset: 16)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1406, file: !1383, line: 37, baseType: !615, size: 16, offset: 32)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1406, file: !1383, line: 38, baseType: !615, size: 16, offset: 48)
!1412 = !DIDerivedType(tag: DW_TAG_member, scope: !1406, file: !1383, line: 39, baseType: !1413, size: 128, offset: 64)
!1413 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1406, file: !1383, line: 39, size: 128, elements: !1414)
!1414 = !{!1415, !1420}
!1415 = !DIDerivedType(tag: DW_TAG_member, scope: !1413, file: !1383, line: 40, baseType: !1416, size: 128)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1413, file: !1383, line: 40, size: 128, elements: !1417)
!1417 = !{!1418, !1419}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1416, file: !1383, line: 41, baseType: !507, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1416, file: !1383, line: 42, baseType: !507, size: 64, offset: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, scope: !1413, file: !1383, line: 44, baseType: !1421, size: 128)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1413, file: !1383, line: 44, size: 128, elements: !1422)
!1422 = !{!1423, !1424, !1425, !1426}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1421, file: !1383, line: 45, baseType: !92, size: 32)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1421, file: !1383, line: 46, baseType: !92, size: 32, offset: 32)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1421, file: !1383, line: 47, baseType: !92, size: 32, offset: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1421, file: !1383, line: 48, baseType: !92, size: 32, offset: 96)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1406, file: !1383, line: 51, baseType: !92, size: 32, offset: 192)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1406, file: !1383, line: 52, baseType: !92, size: 32, offset: 224)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1406, file: !1383, line: 55, baseType: !1430, size: 1024, offset: 256)
!1430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 1024, elements: !1431)
!1431 = !{!1432}
!1432 = !DISubrange(count: 32)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1406, file: !1383, line: 58, baseType: !1434, size: 2048, offset: 1280)
!1434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 2048, elements: !197)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1406, file: !1383, line: 60, baseType: !1436, size: 384, offset: 3328)
!1436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 384, elements: !1437)
!1437 = !{!1438}
!1438 = !DISubrange(count: 12)
!1439 = !DIDerivedType(tag: DW_TAG_member, scope: !1406, file: !1383, line: 62, baseType: !1440, size: 384, offset: 3712)
!1440 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1406, file: !1383, line: 62, size: 384, elements: !1441)
!1441 = !{!1442, !1443}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1440, file: !1383, line: 63, baseType: !1436, size: 384)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1440, file: !1383, line: 64, baseType: !1436, size: 384)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1388, file: !1383, line: 307, baseType: !1445, size: 1088)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1383, line: 79, size: 1088, elements: !1446)
!1446 = !{!1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1493}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1445, file: !1383, line: 80, baseType: !92, size: 32)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1445, file: !1383, line: 81, baseType: !92, size: 32, offset: 32)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1445, file: !1383, line: 82, baseType: !92, size: 32, offset: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1445, file: !1383, line: 83, baseType: !92, size: 32, offset: 96)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1445, file: !1383, line: 84, baseType: !92, size: 32, offset: 128)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1445, file: !1383, line: 85, baseType: !92, size: 32, offset: 160)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1445, file: !1383, line: 86, baseType: !92, size: 32, offset: 192)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1445, file: !1383, line: 88, baseType: !1401, size: 640, offset: 224)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1445, file: !1383, line: 89, baseType: !776, size: 8, offset: 864)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1445, file: !1383, line: 90, baseType: !776, size: 8, offset: 872)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1445, file: !1383, line: 91, baseType: !776, size: 8, offset: 880)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1445, file: !1383, line: 92, baseType: !776, size: 8, offset: 888)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1445, file: !1383, line: 93, baseType: !776, size: 8, offset: 896)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1445, file: !1383, line: 94, baseType: !776, size: 8, offset: 904)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1445, file: !1383, line: 95, baseType: !1462, size: 64, offset: 960)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1464, line: 11, size: 128, elements: !1465)
!1464 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1465 = !{!1466, !1467}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1463, file: !1464, line: 12, baseType: !129, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1463, file: !1464, line: 13, baseType: !1468, size: 64, offset: 64)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1470, line: 56, size: 1344, elements: !1471)
!1470 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1471 = !{!1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1469, file: !1470, line: 61, baseType: !120, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1469, file: !1470, line: 62, baseType: !120, size: 64, offset: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1469, file: !1470, line: 63, baseType: !120, size: 64, offset: 128)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1469, file: !1470, line: 64, baseType: !120, size: 64, offset: 192)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1469, file: !1470, line: 65, baseType: !120, size: 64, offset: 256)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1469, file: !1470, line: 66, baseType: !120, size: 64, offset: 320)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1469, file: !1470, line: 68, baseType: !120, size: 64, offset: 384)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1469, file: !1470, line: 69, baseType: !120, size: 64, offset: 448)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1469, file: !1470, line: 70, baseType: !120, size: 64, offset: 512)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1469, file: !1470, line: 71, baseType: !120, size: 64, offset: 576)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1469, file: !1470, line: 72, baseType: !120, size: 64, offset: 640)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1469, file: !1470, line: 73, baseType: !120, size: 64, offset: 704)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1469, file: !1470, line: 74, baseType: !120, size: 64, offset: 768)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1469, file: !1470, line: 75, baseType: !120, size: 64, offset: 832)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1469, file: !1470, line: 76, baseType: !120, size: 64, offset: 896)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1469, file: !1470, line: 81, baseType: !120, size: 64, offset: 960)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1469, file: !1470, line: 83, baseType: !120, size: 64, offset: 1024)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1469, file: !1470, line: 84, baseType: !120, size: 64, offset: 1088)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1469, file: !1470, line: 85, baseType: !120, size: 64, offset: 1152)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1469, file: !1470, line: 86, baseType: !120, size: 64, offset: 1216)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1469, file: !1470, line: 87, baseType: !120, size: 64, offset: 1280)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1445, file: !1383, line: 96, baseType: !92, size: 32, offset: 1024)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1388, file: !1383, line: 308, baseType: !1495, size: 4608, align: 512)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1383, line: 289, size: 4608, align: 512, elements: !1496)
!1496 = !{!1497, !1498, !1507}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1495, file: !1383, line: 290, baseType: !1406, size: 4096, align: 128)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1495, file: !1383, line: 291, baseType: !1499, size: 512, offset: 4096)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1383, line: 268, size: 512, elements: !1500)
!1500 = !{!1501, !1502, !1503}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1499, file: !1383, line: 269, baseType: !507, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1499, file: !1383, line: 270, baseType: !507, size: 64, offset: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1499, file: !1383, line: 271, baseType: !1504, size: 384, offset: 128)
!1504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !507, size: 384, elements: !1505)
!1505 = !{!1506}
!1506 = !DISubrange(count: 6)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1495, file: !1383, line: 292, baseType: !1508, offset: 4608)
!1508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !776, elements: !1509)
!1509 = !{!1510}
!1510 = !DISubrange(count: 0)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1388, file: !1383, line: 309, baseType: !1512, size: 32768)
!1512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !776, size: 32768, elements: !1513)
!1513 = !{!1514}
!1514 = !DISubrange(count: 4096)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !628, file: !445, line: 378, baseType: !1516, size: 64, offset: 64)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !624, file: !445, line: 384, baseType: !938, size: 192, offset: 192)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !502, file: !445, line: 500, baseType: !150, offset: 6656)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !502, file: !445, line: 501, baseType: !1520, size: 64, offset: 6656)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !445, line: 387, flags: DIFlagFwdDecl)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !502, file: !445, line: 516, baseType: !1523, size: 64, offset: 6720)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !445, line: 516, flags: DIFlagFwdDecl)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !502, file: !445, line: 519, baseType: !130, size: 64, offset: 6784)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !502, file: !445, line: 521, baseType: !1527, size: 64, offset: 6848)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !445, line: 521, flags: DIFlagFwdDecl)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !502, file: !445, line: 545, baseType: !312, size: 32, offset: 6912)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !502, file: !445, line: 548, baseType: !261, size: 8, offset: 6944)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !502, file: !445, line: 550, baseType: !1532, offset: 6952)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1533, line: 142, elements: !164)
!1533 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !502, file: !445, line: 554, baseType: !1535, size: 256, offset: 6976)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1536, line: 102, size: 256, elements: !1537)
!1536 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1537 = !{!1538, !1539, !1540}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1535, file: !1536, line: 103, baseType: !423, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1535, file: !1536, line: 104, baseType: !138, size: 128, offset: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1535, file: !1536, line: 105, baseType: !1541, size: 64, offset: 192)
!1541 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1536, line: 21, baseType: !1542)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{null, !1545}
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !502, file: !445, line: 557, baseType: !92, size: 32, offset: 7232)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !499, file: !445, line: 565, baseType: !1548, offset: 7296)
!1548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, elements: !1549)
!1549 = !{!1550}
!1550 = !DISubrange(count: -1)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !489, file: !445, line: 333, baseType: !1552, size: 64, offset: 576)
!1552 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !132, line: 284, baseType: !1553)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !132, line: 284, size: 64, elements: !1554)
!1554 = !{!1555}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1553, file: !132, line: 284, baseType: !1556, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !525, line: 19, baseType: !120)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !489, file: !445, line: 334, baseType: !120, size: 64, offset: 640)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !489, file: !445, line: 343, baseType: !1559, size: 256, offset: 704)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !489, file: !445, line: 340, size: 256, elements: !1560)
!1560 = !{!1561, !1562}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1559, file: !445, line: 341, baseType: !320, size: 192, align: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1559, file: !445, line: 342, baseType: !120, size: 64, offset: 192)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !489, file: !445, line: 351, baseType: !138, size: 128, offset: 960)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !489, file: !445, line: 353, baseType: !1565, size: 64, offset: 1088)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !445, line: 353, flags: DIFlagFwdDecl)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !489, file: !445, line: 356, baseType: !442, size: 64, offset: 1152)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !489, file: !445, line: 359, baseType: !120, size: 64, offset: 1216)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !489, file: !445, line: 361, baseType: !130, size: 64, offset: 1280)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !489, file: !445, line: 362, baseType: !96, size: 64, offset: 1344)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !489, file: !445, line: 365, baseType: !423, size: 64, offset: 1408)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !489, file: !445, line: 373, baseType: !1573, offset: 1472)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !445, line: 296, elements: !164)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !400, file: !309, line: 109, baseType: !1575, size: 64, offset: 64)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !309, line: 31, flags: DIFlagFwdDecl)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !400, file: !309, line: 110, baseType: !459, size: 64, offset: 128)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !400, file: !309, line: 111, baseType: !307, size: 64, offset: 192)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !308, file: !309, line: 148, baseType: !96, size: 64, offset: 768)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !308, file: !309, line: 154, baseType: !507, size: 64, offset: 832)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !308, file: !309, line: 156, baseType: !114, size: 16, offset: 896)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !308, file: !309, line: 157, baseType: !113, size: 16, offset: 912)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !308, file: !309, line: 158, baseType: !1584, size: 64, offset: 960)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !309, line: 32, flags: DIFlagFwdDecl)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !134, file: !65, line: 71, baseType: !1587, size: 32, offset: 448)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1588, line: 19, size: 32, elements: !1589)
!1588 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1589 = !{!1590}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1587, file: !1588, line: 20, baseType: !645, size: 32)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !134, file: !65, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !134, file: !65, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !134, file: !65, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !134, file: !65, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !134, file: !65, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !102, file: !103, line: 174, baseType: !123, size: 64, offset: 320)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !102, file: !103, line: 176, baseType: !1598, size: 64, offset: 384)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!176, !130, !133, !244, !488}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !99, file: !3, line: 330, baseType: !1602, size: 32, offset: 448)
!1602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 32, elements: !574)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "instance", scope: !99, file: !3, line: 331, baseType: !176, size: 32, offset: 480)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !99, file: !3, line: 332, baseType: !1138, size: 64, offset: 512)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !99, file: !3, line: 333, baseType: !138, size: 128, offset: 576)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !141)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !111)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_event_status", file: !91, line: 738, baseType: !92)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !1615, line: 108, size: 704, elements: !1616)
!1615 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/lizy2001/genbc/linux")
!1616 = !{!1617, !1618, !2451, !2452, !2453}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1614, file: !1615, line: 109, baseType: !134, size: 512)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !1614, file: !1615, line: 110, baseType: !1619, size: 64, offset: 512)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!176, !1622}
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !1615, line: 351, size: 10880, elements: !1624)
!1624 = !{!1625, !1626, !1628, !2188, !2189, !2190, !2191, !2192, !2193, !2202, !2219, !2293, !2322, !2346, !2367, !2373, !2382, !2404, !2418, !2440, !2444, !2445, !2446, !2447, !2448, !2449, !2450}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !1623, file: !1615, line: 352, baseType: !176, size: 32)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !1623, file: !1615, line: 353, baseType: !1627, size: 64, offset: 64)
!1627 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !91, line: 424, baseType: !96)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1623, file: !1615, line: 354, baseType: !1629, size: 192, offset: 128)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1630, line: 17, size: 192, elements: !1631)
!1630 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!1631 = !{!1632, !1634, !2187}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1629, file: !1630, line: 18, baseType: !1633, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1629, file: !1630, line: 19, baseType: !1635, size: 64, offset: 64)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1637)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1630, line: 110, size: 1152, elements: !1638)
!1638 = !{!1639, !1643, !1647, !1653, !2129, !2133, !2137, !2142, !2146, !2147, !2151, !2155, !2159, !2170, !2171, !2172, !2173, !2183}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1637, file: !1630, line: 111, baseType: !1640, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{!1633, !1633}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1637, file: !1630, line: 112, baseType: !1644, size: 64, offset: 64)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{null, !1633}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1637, file: !1630, line: 113, baseType: !1648, size: 64, offset: 128)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{!261, !1651}
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1629)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1637, file: !1630, line: 114, baseType: !1654, size: 64, offset: 192)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!271, !1651, !1657}
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1659)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !1660)
!1660 = !{!1661, !1662, !1664, !1667, !1668, !1719, !1816, !1817, !1818, !1819, !1820, !1829, !1934, !1947, !2054, !2055, !2059, !2061, !2062, !2063, !2067, !2073, !2074, !2077, !2078, !2079, !2082, !2083, !2084, !2085, !2117, !2118, !2119, !2122, !2125, !2126, !2127, !2128}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1659, file: !30, line: 462, baseType: !134, size: 512)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1659, file: !30, line: 463, baseType: !1663, size: 64, offset: 512)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1659, file: !30, line: 465, baseType: !1665, size: 64, offset: 576)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !1659, file: !30, line: 467, baseType: !109, size: 64, offset: 640)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1659, file: !30, line: 468, baseType: !1669, size: 64, offset: 704)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1671)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1672)
!1672 = !{!1673, !1674, !1675, !1679, !1684, !1688}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1671, file: !30, line: 88, baseType: !109, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1671, file: !30, line: 89, baseType: !230, size: 64, offset: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1671, file: !30, line: 90, baseType: !1676, size: 64, offset: 128)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!176, !1663, !187}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1671, file: !30, line: 91, baseType: !1680, size: 64, offset: 192)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!192, !1663, !1683, !291, !299}
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1671, file: !30, line: 93, baseType: !1685, size: 64, offset: 256)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{null, !1663}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1671, file: !30, line: 95, baseType: !1689, size: 64, offset: 320)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1691)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1692)
!1692 = !{!1693, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1691, file: !37, line: 279, baseType: !1694, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!176, !1663}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1691, file: !37, line: 280, baseType: !1685, size: 64, offset: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1691, file: !37, line: 281, baseType: !1694, size: 64, offset: 128)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1691, file: !37, line: 282, baseType: !1694, size: 64, offset: 192)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1691, file: !37, line: 283, baseType: !1694, size: 64, offset: 256)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1691, file: !37, line: 284, baseType: !1694, size: 64, offset: 320)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1691, file: !37, line: 285, baseType: !1694, size: 64, offset: 384)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1691, file: !37, line: 286, baseType: !1694, size: 64, offset: 448)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1691, file: !37, line: 287, baseType: !1694, size: 64, offset: 512)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1691, file: !37, line: 288, baseType: !1694, size: 64, offset: 576)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1691, file: !37, line: 289, baseType: !1694, size: 64, offset: 640)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1691, file: !37, line: 290, baseType: !1694, size: 64, offset: 704)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1691, file: !37, line: 291, baseType: !1694, size: 64, offset: 768)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1691, file: !37, line: 292, baseType: !1694, size: 64, offset: 832)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1691, file: !37, line: 293, baseType: !1694, size: 64, offset: 896)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1691, file: !37, line: 294, baseType: !1694, size: 64, offset: 960)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1691, file: !37, line: 295, baseType: !1694, size: 64, offset: 1024)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1691, file: !37, line: 296, baseType: !1694, size: 64, offset: 1088)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1691, file: !37, line: 297, baseType: !1694, size: 64, offset: 1152)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1691, file: !37, line: 298, baseType: !1694, size: 64, offset: 1216)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1691, file: !37, line: 299, baseType: !1694, size: 64, offset: 1280)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1691, file: !37, line: 300, baseType: !1694, size: 64, offset: 1344)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1691, file: !37, line: 301, baseType: !1694, size: 64, offset: 1408)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1659, file: !30, line: 470, baseType: !1720, size: 64, offset: 768)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1722, line: 82, size: 1408, elements: !1723)
!1722 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1723 = !{!1724, !1725, !1726, !1727, !1728, !1729, !1730, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1809, !1812, !1815}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1721, file: !1722, line: 83, baseType: !109, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1721, file: !1722, line: 84, baseType: !109, size: 64, offset: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1721, file: !1722, line: 85, baseType: !1663, size: 64, offset: 128)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1721, file: !1722, line: 86, baseType: !230, size: 64, offset: 192)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1721, file: !1722, line: 87, baseType: !230, size: 64, offset: 256)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1721, file: !1722, line: 88, baseType: !230, size: 64, offset: 320)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1721, file: !1722, line: 90, baseType: !1731, size: 64, offset: 384)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{!176, !1663, !1734}
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1736)
!1736 = !{!1737, !1738, !1739, !1743, !1744, !1745, !1746, !1760, !1773, !1774, !1775, !1776, !1777, !1785, !1786, !1787, !1788, !1789, !1790}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1735, file: !24, line: 96, baseType: !109, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1735, file: !24, line: 97, baseType: !1720, size: 64, offset: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1735, file: !24, line: 99, baseType: !1740, size: 64, offset: 128)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1742, line: 76, flags: DIFlagFwdDecl)
!1742 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1735, file: !24, line: 100, baseType: !109, size: 64, offset: 192)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1735, file: !24, line: 102, baseType: !261, size: 8, offset: 256)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1735, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1735, file: !24, line: 105, baseType: !1747, size: 64, offset: 320)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1749)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1750, line: 262, size: 1600, elements: !1751)
!1750 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1751 = !{!1752, !1754, !1755, !1759}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1749, file: !1750, line: 263, baseType: !1753, size: 256)
!1753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 256, elements: !1431)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1749, file: !1750, line: 264, baseType: !1753, size: 256, offset: 256)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1749, file: !1750, line: 265, baseType: !1756, size: 1024, offset: 512)
!1756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 1024, elements: !1757)
!1757 = !{!1758}
!1758 = !DISubrange(count: 128)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1749, file: !1750, line: 266, baseType: !271, size: 64, offset: 1536)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1735, file: !24, line: 106, baseType: !1761, size: 64, offset: 384)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1763)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1750, line: 210, size: 256, elements: !1764)
!1764 = !{!1765, !1769, !1771, !1772}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1763, file: !1750, line: 211, baseType: !1766, size: 72)
!1766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !777, size: 72, elements: !1767)
!1767 = !{!1768}
!1768 = !DISubrange(count: 9)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1763, file: !1750, line: 212, baseType: !1770, size: 64, offset: 128)
!1770 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1750, line: 14, baseType: !120)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1763, file: !1750, line: 213, baseType: !94, size: 32, offset: 192)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1763, file: !1750, line: 214, baseType: !94, size: 32, offset: 224)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1735, file: !24, line: 108, baseType: !1694, size: 64, offset: 448)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1735, file: !24, line: 109, baseType: !1685, size: 64, offset: 512)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1735, file: !24, line: 110, baseType: !1694, size: 64, offset: 576)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1735, file: !24, line: 111, baseType: !1685, size: 64, offset: 640)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1735, file: !24, line: 112, baseType: !1778, size: 64, offset: 704)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!176, !1663, !1781}
!1781 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1782)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1783)
!1783 = !{!1784}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1782, file: !37, line: 51, baseType: !176, size: 32)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1735, file: !24, line: 113, baseType: !1694, size: 64, offset: 768)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1735, file: !24, line: 114, baseType: !230, size: 64, offset: 832)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1735, file: !24, line: 115, baseType: !230, size: 64, offset: 896)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1735, file: !24, line: 117, baseType: !1689, size: 64, offset: 960)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1735, file: !24, line: 118, baseType: !1685, size: 64, offset: 1024)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1735, file: !24, line: 120, baseType: !1791, size: 64, offset: 1088)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1721, file: !1722, line: 91, baseType: !1676, size: 64, offset: 448)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1721, file: !1722, line: 92, baseType: !1694, size: 64, offset: 512)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1721, file: !1722, line: 93, baseType: !1685, size: 64, offset: 576)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1721, file: !1722, line: 94, baseType: !1694, size: 64, offset: 640)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1721, file: !1722, line: 95, baseType: !1685, size: 64, offset: 704)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1721, file: !1722, line: 97, baseType: !1694, size: 64, offset: 768)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1721, file: !1722, line: 98, baseType: !1694, size: 64, offset: 832)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1721, file: !1722, line: 100, baseType: !1778, size: 64, offset: 896)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1721, file: !1722, line: 101, baseType: !1694, size: 64, offset: 960)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1721, file: !1722, line: 103, baseType: !1694, size: 64, offset: 1024)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1721, file: !1722, line: 105, baseType: !1694, size: 64, offset: 1088)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1721, file: !1722, line: 107, baseType: !1689, size: 64, offset: 1152)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1721, file: !1722, line: 109, baseType: !1806, size: 64, offset: 1216)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1808)
!1808 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1722, line: 109, flags: DIFlagFwdDecl)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1721, file: !1722, line: 111, baseType: !1810, size: 64, offset: 1280)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1722, line: 111, flags: DIFlagFwdDecl)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1721, file: !1722, line: 112, baseType: !1813, offset: 1344)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1814, line: 187, elements: !164)
!1814 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1721, file: !1722, line: 114, baseType: !261, size: 8, offset: 1344)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1659, file: !30, line: 471, baseType: !1734, size: 64, offset: 832)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !1659, file: !30, line: 473, baseType: !96, size: 64, offset: 896)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1659, file: !30, line: 475, baseType: !96, size: 64, offset: 960)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1659, file: !30, line: 480, baseType: !419, size: 192, offset: 1024)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !1659, file: !30, line: 484, baseType: !1821, size: 576, offset: 1216)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1822)
!1822 = !{!1823, !1824, !1825, !1826, !1827, !1828}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1821, file: !30, line: 362, baseType: !138, size: 128)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1821, file: !30, line: 363, baseType: !138, size: 128, offset: 128)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1821, file: !30, line: 364, baseType: !138, size: 128, offset: 256)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1821, file: !30, line: 365, baseType: !138, size: 128, offset: 384)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1821, file: !30, line: 366, baseType: !261, size: 8, offset: 512)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1821, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1659, file: !30, line: 485, baseType: !1830, size: 2304, offset: 1792)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1831)
!1831 = !{!1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1927, !1931}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1830, file: !37, line: 566, baseType: !1781, size: 32)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1830, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1830, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1830, file: !37, line: 569, baseType: !261, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1830, file: !37, line: 570, baseType: !261, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1830, file: !37, line: 571, baseType: !261, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1830, file: !37, line: 572, baseType: !261, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1830, file: !37, line: 573, baseType: !261, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1830, file: !37, line: 574, baseType: !261, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1830, file: !37, line: 575, baseType: !261, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1830, file: !37, line: 576, baseType: !261, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1830, file: !37, line: 577, baseType: !92, size: 32, offset: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1830, file: !37, line: 578, baseType: !150, offset: 96)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1830, file: !37, line: 580, baseType: !138, size: 128, offset: 128)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1830, file: !37, line: 581, baseType: !938, size: 192, offset: 256)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1830, file: !37, line: 582, baseType: !1848, size: 64, offset: 448)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1850, line: 43, size: 1472, elements: !1851)
!1850 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1851 = !{!1852, !1853, !1854, !1855, !1856, !1859, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1849, file: !1850, line: 44, baseType: !109, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1849, file: !1850, line: 45, baseType: !176, size: 32, offset: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1849, file: !1850, line: 46, baseType: !138, size: 128, offset: 128)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1849, file: !1850, line: 47, baseType: !150, offset: 256)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1849, file: !1850, line: 48, baseType: !1857, size: 64, offset: 256)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1849, file: !1850, line: 49, baseType: !1860, size: 320, offset: 320)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1861, line: 11, size: 320, elements: !1862)
!1861 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1862 = !{!1863, !1864, !1865, !1870}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1860, file: !1861, line: 16, baseType: !908, size: 128)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1860, file: !1861, line: 17, baseType: !120, size: 64, offset: 128)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1860, file: !1861, line: 18, baseType: !1866, size: 64, offset: 192)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{null, !1869}
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1860, file: !1861, line: 19, baseType: !92, size: 32, offset: 256)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1849, file: !1850, line: 50, baseType: !120, size: 64, offset: 640)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1849, file: !1850, line: 51, baseType: !715, size: 64, offset: 704)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1849, file: !1850, line: 52, baseType: !715, size: 64, offset: 768)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1849, file: !1850, line: 53, baseType: !715, size: 64, offset: 832)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1849, file: !1850, line: 54, baseType: !715, size: 64, offset: 896)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1849, file: !1850, line: 55, baseType: !715, size: 64, offset: 960)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1849, file: !1850, line: 56, baseType: !120, size: 64, offset: 1024)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1849, file: !1850, line: 57, baseType: !120, size: 64, offset: 1088)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1849, file: !1850, line: 58, baseType: !120, size: 64, offset: 1152)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1849, file: !1850, line: 59, baseType: !120, size: 64, offset: 1216)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1849, file: !1850, line: 60, baseType: !120, size: 64, offset: 1280)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1849, file: !1850, line: 61, baseType: !1663, size: 64, offset: 1344)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1849, file: !1850, line: 62, baseType: !261, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1849, file: !1850, line: 63, baseType: !261, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1830, file: !37, line: 583, baseType: !261, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1830, file: !37, line: 584, baseType: !261, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1830, file: !37, line: 585, baseType: !261, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1830, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1830, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1830, file: !37, line: 592, baseType: !707, size: 512, offset: 576)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1830, file: !37, line: 593, baseType: !507, size: 64, offset: 1088)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1830, file: !37, line: 594, baseType: !1535, size: 256, offset: 1152)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1830, file: !37, line: 595, baseType: !389, size: 128, offset: 1408)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1830, file: !37, line: 596, baseType: !1857, size: 64, offset: 1536)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1830, file: !37, line: 597, baseType: !312, size: 32, offset: 1600)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1830, file: !37, line: 598, baseType: !312, size: 32, offset: 1632)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1830, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1830, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1830, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1830, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1830, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1830, file: !37, line: 604, baseType: !261, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1830, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1830, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1830, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1830, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1830, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1830, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1830, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1830, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1830, file: !37, line: 613, baseType: !176, size: 32, offset: 1792)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1830, file: !37, line: 614, baseType: !176, size: 32, offset: 1824)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1830, file: !37, line: 615, baseType: !507, size: 64, offset: 1856)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1830, file: !37, line: 616, baseType: !507, size: 64, offset: 1920)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1830, file: !37, line: 617, baseType: !507, size: 64, offset: 1984)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1830, file: !37, line: 618, baseType: !507, size: 64, offset: 2048)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1830, file: !37, line: 620, baseType: !1918, size: 64, offset: 2112)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1920)
!1920 = !{!1921, !1922, !1923, !1924}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1919, file: !37, line: 537, baseType: !150)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1919, file: !37, line: 538, baseType: !7, size: 32)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1919, file: !37, line: 540, baseType: !138, size: 128, offset: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1919, file: !37, line: 543, baseType: !1925, size: 64, offset: 192)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1830, file: !37, line: 621, baseType: !1928, size: 64, offset: 2176)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{null, !1663, !868}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1830, file: !37, line: 622, baseType: !1932, size: 64, offset: 2240)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !1659, file: !30, line: 486, baseType: !1935, size: 64, offset: 4096)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1937)
!1937 = !{!1938, !1939, !1940, !1944, !1945, !1946}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1936, file: !37, line: 643, baseType: !1691, size: 1472)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1936, file: !37, line: 644, baseType: !1694, size: 64, offset: 1472)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1936, file: !37, line: 645, baseType: !1941, size: 64, offset: 1536)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{null, !1663, !261}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1936, file: !37, line: 646, baseType: !1694, size: 64, offset: 1600)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1936, file: !37, line: 647, baseType: !1685, size: 64, offset: 1664)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1936, file: !37, line: 648, baseType: !1685, size: 64, offset: 1728)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !1659, file: !30, line: 493, baseType: !1948, size: 64, offset: 4160)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !51, line: 162, size: 1088, elements: !1950)
!1950 = !{!1951, !1952, !1953, !2038, !2039, !2040, !2041, !2042, !2043, !2046, !2047, !2048, !2049, !2050, !2051, !2052}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1949, file: !51, line: 163, baseType: !138, size: 128)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1949, file: !51, line: 164, baseType: !109, size: 64, offset: 128)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1949, file: !51, line: 165, baseType: !1954, size: 64, offset: 192)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1956)
!1956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !51, line: 105, size: 640, elements: !1957)
!1957 = !{!1958, !1987, !1998, !2003, !2007, !2015, !2019, !2023, !2030, !2034}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1956, file: !51, line: 106, baseType: !1959, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!176, !1948, !1962, !50}
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1964, line: 51, size: 1344, elements: !1965)
!1964 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!1965 = !{!1966, !1967, !1969, !1970, !1971, !1980, !1981, !1982, !1983, !1984, !1985, !1986}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1963, file: !1964, line: 52, baseType: !109, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1963, file: !1964, line: 53, baseType: !1968, size: 32, offset: 64)
!1968 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1964, line: 28, baseType: !92)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1963, file: !1964, line: 54, baseType: !109, size: 64, offset: 128)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1963, file: !1964, line: 55, baseType: !1629, size: 192, offset: 192)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1963, file: !1964, line: 57, baseType: !1972, size: 64, offset: 384)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1964, line: 31, size: 704, elements: !1974)
!1974 = !{!1975, !1976, !1977, !1978, !1979}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1973, file: !1964, line: 32, baseType: !192, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1973, file: !1964, line: 33, baseType: !176, size: 32, offset: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1973, file: !1964, line: 34, baseType: !96, size: 64, offset: 128)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1973, file: !1964, line: 35, baseType: !1972, size: 64, offset: 192)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1973, file: !1964, line: 43, baseType: !102, size: 448, offset: 256)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1963, file: !1964, line: 58, baseType: !1972, size: 64, offset: 448)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1963, file: !1964, line: 59, baseType: !1962, size: 64, offset: 512)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1963, file: !1964, line: 60, baseType: !1962, size: 64, offset: 576)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1963, file: !1964, line: 61, baseType: !1962, size: 64, offset: 640)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1963, file: !1964, line: 63, baseType: !134, size: 512, offset: 704)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1963, file: !1964, line: 65, baseType: !120, size: 64, offset: 1216)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1963, file: !1964, line: 66, baseType: !96, size: 64, offset: 1280)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !1956, file: !51, line: 108, baseType: !1988, size: 64, offset: 64)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{!176, !1948, !1991, !50}
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !51, line: 63, size: 640, elements: !1993)
!1993 = !{!1994, !1995, !1996}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1992, file: !51, line: 64, baseType: !1633, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !1992, file: !51, line: 65, baseType: !176, size: 32, offset: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !1992, file: !51, line: 66, baseType: !1997, size: 512, offset: 96)
!1997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 512, elements: !994)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1956, file: !51, line: 110, baseType: !1999, size: 64, offset: 128)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!176, !1948, !7, !2002}
!2002 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !89, line: 164, baseType: !120)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !1956, file: !51, line: 111, baseType: !2004, size: 64, offset: 192)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{null, !1948, !7}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !1956, file: !51, line: 112, baseType: !2008, size: 64, offset: 256)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!176, !1948, !1962, !2011, !7, !2013, !2014}
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1956, file: !51, line: 117, baseType: !2016, size: 64, offset: 320)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{!176, !1948, !7, !7, !96}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1956, file: !51, line: 119, baseType: !2020, size: 64, offset: 384)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{null, !1948, !7, !7}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1956, file: !51, line: 121, baseType: !2024, size: 64, offset: 448)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!176, !1948, !2027, !261}
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !2029, line: 11, flags: DIFlagFwdDecl)
!2029 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !1956, file: !51, line: 122, baseType: !2031, size: 64, offset: 512)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{null, !1948, !2027}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !1956, file: !51, line: 123, baseType: !2035, size: 64, offset: 576)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DISubroutineType(types: !2037)
!2037 = !{!176, !1948, !1991, !2013, !2014}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !1949, file: !51, line: 166, baseType: !96, size: 64, offset: 256)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1949, file: !51, line: 167, baseType: !7, size: 32, offset: 320)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !1949, file: !51, line: 168, baseType: !7, size: 32, offset: 352)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1949, file: !51, line: 171, baseType: !1633, size: 64, offset: 384)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !1949, file: !51, line: 172, baseType: !50, size: 32, offset: 448)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !1949, file: !51, line: 173, baseType: !2044, size: 64, offset: 512)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !51, line: 134, flags: DIFlagFwdDecl)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1949, file: !51, line: 175, baseType: !1948, size: 64, offset: 576)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !1949, file: !51, line: 182, baseType: !2002, size: 64, offset: 640)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !1949, file: !51, line: 183, baseType: !7, size: 32, offset: 704)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !1949, file: !51, line: 184, baseType: !7, size: 32, offset: 736)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !1949, file: !51, line: 185, baseType: !351, size: 128, offset: 768)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !1949, file: !51, line: 186, baseType: !419, size: 192, offset: 896)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !1949, file: !51, line: 187, baseType: !2053, offset: 1088)
!2053 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !1549)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !1659, file: !30, line: 499, baseType: !138, size: 128, offset: 4224)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !1659, file: !30, line: 502, baseType: !2056, size: 64, offset: 4352)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2058)
!2058 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !1659, file: !30, line: 504, baseType: !2060, size: 64, offset: 4416)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !1659, file: !30, line: 505, baseType: !507, size: 64, offset: 4480)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !1659, file: !30, line: 510, baseType: !507, size: 64, offset: 4544)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !1659, file: !30, line: 511, baseType: !2064, size: 64, offset: 4608)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2066)
!2066 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !1659, file: !30, line: 513, baseType: !2068, size: 64, offset: 4672)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !2070)
!2070 = !{!2071, !2072}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2069, file: !30, line: 293, baseType: !7, size: 32)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2069, file: !30, line: 294, baseType: !120, size: 64, offset: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !1659, file: !30, line: 515, baseType: !138, size: 128, offset: 4736)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !1659, file: !30, line: 526, baseType: !2075, offset: 4864)
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2076, line: 5, elements: !164)
!2076 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !1659, file: !30, line: 528, baseType: !1962, size: 64, offset: 4864)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1659, file: !30, line: 529, baseType: !1633, size: 64, offset: 4928)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !1659, file: !30, line: 534, baseType: !2080, size: 32, offset: 4992)
!2080 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !89, line: 16, baseType: !2081)
!2081 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !89, line: 13, baseType: !92)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1659, file: !30, line: 535, baseType: !92, size: 32, offset: 5024)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !1659, file: !30, line: 537, baseType: !150, offset: 5056)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !1659, file: !30, line: 538, baseType: !138, size: 128, offset: 5056)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1659, file: !30, line: 540, baseType: !2086, size: 64, offset: 5184)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2088, line: 54, size: 960, elements: !2089)
!2088 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2089 = !{!2090, !2091, !2092, !2093, !2094, !2095, !2096, !2100, !2104, !2105, !2106, !2107, !2111, !2115, !2116}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2087, file: !2088, line: 55, baseType: !109, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2087, file: !2088, line: 56, baseType: !1740, size: 64, offset: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2087, file: !2088, line: 58, baseType: !230, size: 64, offset: 128)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2087, file: !2088, line: 59, baseType: !230, size: 64, offset: 192)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2087, file: !2088, line: 60, baseType: !133, size: 64, offset: 256)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2087, file: !2088, line: 62, baseType: !1676, size: 64, offset: 320)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2087, file: !2088, line: 63, baseType: !2097, size: 64, offset: 384)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!192, !1663, !1683}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2087, file: !2088, line: 65, baseType: !2101, size: 64, offset: 448)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{null, !2086}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2087, file: !2088, line: 66, baseType: !1685, size: 64, offset: 512)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2087, file: !2088, line: 68, baseType: !1694, size: 64, offset: 576)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2087, file: !2088, line: 70, baseType: !252, size: 64, offset: 640)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2087, file: !2088, line: 71, baseType: !2108, size: 64, offset: 704)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!271, !1663}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2087, file: !2088, line: 73, baseType: !2112, size: 64, offset: 768)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{null, !1663, !291, !299}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2087, file: !2088, line: 75, baseType: !1689, size: 64, offset: 832)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2087, file: !2088, line: 77, baseType: !1810, size: 64, offset: 896)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1659, file: !30, line: 541, baseType: !230, size: 64, offset: 5248)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1659, file: !30, line: 543, baseType: !1685, size: 64, offset: 5312)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !1659, file: !30, line: 544, baseType: !2120, size: 64, offset: 5376)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !1659, file: !30, line: 545, baseType: !2123, size: 64, offset: 5440)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !1659, file: !30, line: 547, baseType: !261, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1659, file: !30, line: 548, baseType: !261, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !1659, file: !30, line: 549, baseType: !261, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !1659, file: !30, line: 550, baseType: !261, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1637, file: !1630, line: 116, baseType: !2130, size: 64, offset: 256)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!261, !1651, !109}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1637, file: !1630, line: 118, baseType: !2134, size: 64, offset: 320)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!176, !1651, !109, !7, !96, !116}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1637, file: !1630, line: 123, baseType: !2138, size: 64, offset: 384)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{!176, !1651, !109, !2141, !116}
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1637, file: !1630, line: 126, baseType: !2143, size: 64, offset: 448)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!109, !1651}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1637, file: !1630, line: 127, baseType: !2143, size: 64, offset: 512)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1637, file: !1630, line: 128, baseType: !2148, size: 64, offset: 576)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{!1633, !1651}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1637, file: !1630, line: 130, baseType: !2152, size: 64, offset: 640)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{!1633, !1651, !1633}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1637, file: !1630, line: 133, baseType: !2156, size: 64, offset: 704)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!1633, !1651, !109}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1637, file: !1630, line: 135, baseType: !2160, size: 64, offset: 768)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!176, !1651, !109, !109, !7, !7, !2163}
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1630, line: 43, size: 640, elements: !2165)
!2165 = !{!2166, !2167, !2168}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2164, file: !1630, line: 44, baseType: !1633, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2164, file: !1630, line: 45, baseType: !7, size: 32, offset: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2164, file: !1630, line: 46, baseType: !2169, size: 512, offset: 128)
!2169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !507, size: 512, elements: !745)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1637, file: !1630, line: 140, baseType: !2152, size: 64, offset: 832)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1637, file: !1630, line: 143, baseType: !2148, size: 64, offset: 896)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1637, file: !1630, line: 145, baseType: !1640, size: 64, offset: 960)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1637, file: !1630, line: 146, baseType: !2174, size: 64, offset: 1024)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{!176, !1651, !2177}
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1630, line: 29, size: 128, elements: !2179)
!2179 = !{!2180, !2181, !2182}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2178, file: !1630, line: 30, baseType: !7, size: 32)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2178, file: !1630, line: 31, baseType: !7, size: 32, offset: 32)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2178, file: !1630, line: 32, baseType: !1651, size: 64, offset: 64)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1637, file: !1630, line: 148, baseType: !2184, size: 64, offset: 1088)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{!176, !1651, !1663}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1629, file: !1630, line: 20, baseType: !1663, size: 64, offset: 128)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1623, file: !1615, line: 355, baseType: !1622, size: 64, offset: 320)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1623, file: !1615, line: 356, baseType: !138, size: 128, offset: 384)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1623, file: !1615, line: 357, baseType: !138, size: 128, offset: 512)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !1623, file: !1615, line: 358, baseType: !138, size: 128, offset: 640)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !1623, file: !1615, line: 359, baseType: !138, size: 128, offset: 768)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1623, file: !1615, line: 360, baseType: !2194, size: 32, offset: 896)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !1615, line: 179, size: 32, elements: !2195)
!2195 = !{!2196, !2197, !2198, !2199, !2200, !2201}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !2194, file: !1615, line: 180, baseType: !92, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2194, file: !1615, line: 181, baseType: !92, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !2194, file: !1615, line: 182, baseType: !92, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !2194, file: !1615, line: 183, baseType: !92, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !2194, file: !1615, line: 184, baseType: !92, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2194, file: !1615, line: 185, baseType: !92, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1623, file: !1615, line: 361, baseType: !2203, size: 32, offset: 928)
!2203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !1615, line: 190, size: 32, elements: !2204)
!2204 = !{!2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !2203, file: !1615, line: 191, baseType: !92, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2203, file: !1615, line: 192, baseType: !92, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !2203, file: !1615, line: 193, baseType: !92, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !2203, file: !1615, line: 194, baseType: !92, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !2203, file: !1615, line: 195, baseType: !92, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !2203, file: !1615, line: 196, baseType: !92, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !2203, file: !1615, line: 197, baseType: !92, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !2203, file: !1615, line: 198, baseType: !92, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !2203, file: !1615, line: 199, baseType: !92, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !2203, file: !1615, line: 200, baseType: !92, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !2203, file: !1615, line: 201, baseType: !92, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !2203, file: !1615, line: 202, baseType: !92, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !2203, file: !1615, line: 203, baseType: !92, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2203, file: !1615, line: 204, baseType: !92, size: 19, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !1623, file: !1615, line: 362, baseType: !2220, size: 960, offset: 960)
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !1615, line: 234, size: 960, elements: !2221)
!2221 = !{!2222, !2224, !2231, !2233, !2234, !2235, !2240, !2243}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !2220, file: !1615, line: 235, baseType: !2223, size: 64)
!2223 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !1615, line: 217, baseType: !1138)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2220, file: !1615, line: 236, baseType: !2225, size: 32, offset: 64)
!2225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !1615, line: 227, size: 32, elements: !2226)
!2226 = !{!2227, !2228, !2229, !2230}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !2225, file: !1615, line: 228, baseType: !92, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !2225, file: !1615, line: 229, baseType: !92, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !2225, file: !1615, line: 230, baseType: !92, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2225, file: !1615, line: 231, baseType: !92, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !2220, file: !1615, line: 237, baseType: !2232, size: 64, offset: 128)
!2232 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !1615, line: 218, baseType: !507)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !2220, file: !1615, line: 238, baseType: !192, size: 64, offset: 192)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2220, file: !1615, line: 239, baseType: !138, size: 128, offset: 256)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !2220, file: !1615, line: 240, baseType: !2236, size: 320, offset: 384)
!2236 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !1615, line: 219, baseType: !2237)
!2237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 320, elements: !2238)
!2238 = !{!2239}
!2239 = !DISubrange(count: 40)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !2220, file: !1615, line: 241, baseType: !2241, size: 160, offset: 704)
!2241 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !1615, line: 220, baseType: !2242)
!2242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 160, elements: !1402)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !2220, file: !1615, line: 242, baseType: !2244, size: 64, offset: 896)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !91, line: 899, size: 192, elements: !2246)
!2246 = !{!2247, !2249, !2254, !2260, !2267, !2273, !2279, !2287}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2245, file: !91, line: 900, baseType: !2248, size: 32)
!2248 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !91, line: 635, baseType: !92)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !2245, file: !91, line: 904, baseType: !2250, size: 128)
!2250 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2245, file: !91, line: 901, size: 128, elements: !2251)
!2251 = !{!2252, !2253}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2250, file: !91, line: 902, baseType: !2248, size: 32)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2250, file: !91, line: 903, baseType: !507, size: 64, offset: 64)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2245, file: !91, line: 910, baseType: !2255, size: 128)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2245, file: !91, line: 906, size: 128, elements: !2256)
!2256 = !{!2257, !2258, !2259}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2255, file: !91, line: 907, baseType: !2248, size: 32)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2255, file: !91, line: 908, baseType: !92, size: 32, offset: 32)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2255, file: !91, line: 909, baseType: !192, size: 64, offset: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2245, file: !91, line: 916, baseType: !2261, size: 128)
!2261 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2245, file: !91, line: 912, size: 128, elements: !2262)
!2262 = !{!2263, !2264, !2265}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2261, file: !91, line: 913, baseType: !2248, size: 32)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2261, file: !91, line: 914, baseType: !92, size: 32, offset: 32)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2261, file: !91, line: 915, baseType: !2266, size: 64, offset: 64)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !2245, file: !91, line: 922, baseType: !2268, size: 128)
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2245, file: !91, line: 918, size: 128, elements: !2269)
!2269 = !{!2270, !2271, !2272}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2268, file: !91, line: 919, baseType: !2248, size: 32)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2268, file: !91, line: 920, baseType: !92, size: 32, offset: 32)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !2268, file: !91, line: 921, baseType: !2244, size: 64, offset: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !2245, file: !91, line: 928, baseType: !2274, size: 128)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2245, file: !91, line: 924, size: 128, elements: !2275)
!2275 = !{!2276, !2277, !2278}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2274, file: !91, line: 925, baseType: !2248, size: 32)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !2274, file: !91, line: 926, baseType: !2248, size: 32, offset: 32)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !2274, file: !91, line: 927, baseType: !1627, size: 64, offset: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !2245, file: !91, line: 935, baseType: !2280, size: 192)
!2280 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2245, file: !91, line: 930, size: 192, elements: !2281)
!2281 = !{!2282, !2283, !2284, !2286}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2280, file: !91, line: 931, baseType: !2248, size: 32)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !2280, file: !91, line: 932, baseType: !92, size: 32, offset: 32)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !2280, file: !91, line: 933, baseType: !2285, size: 64, offset: 64)
!2285 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !91, line: 128, baseType: !507)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !2280, file: !91, line: 934, baseType: !92, size: 32, offset: 128)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !2245, file: !91, line: 941, baseType: !2288, size: 96)
!2288 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2245, file: !91, line: 937, size: 96, elements: !2289)
!2289 = !{!2290, !2291, !2292}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2288, file: !91, line: 938, baseType: !2248, size: 32)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !2288, file: !91, line: 939, baseType: !92, size: 32, offset: 32)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !2288, file: !91, line: 940, baseType: !92, size: 32, offset: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1623, file: !1615, line: 363, baseType: !2294, size: 1344, offset: 1920)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !1615, line: 275, size: 1344, elements: !2295)
!2295 = !{!2296, !2297, !2307}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2294, file: !1615, line: 276, baseType: !176, size: 32)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2294, file: !1615, line: 277, baseType: !2298, size: 32, offset: 32)
!2298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !1615, line: 254, size: 32, elements: !2299)
!2299 = !{!2300, !2301, !2302, !2303, !2304, !2305, !2306}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !2298, file: !1615, line: 255, baseType: !92, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !2298, file: !1615, line: 256, baseType: !92, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !2298, file: !1615, line: 257, baseType: !92, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !2298, file: !1615, line: 258, baseType: !92, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !2298, file: !1615, line: 259, baseType: !92, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !2298, file: !1615, line: 260, baseType: !92, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2298, file: !1615, line: 261, baseType: !92, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2294, file: !1615, line: 278, baseType: !2308, size: 1280, offset: 64)
!2308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2309, size: 1280, elements: !2320)
!2309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !1615, line: 264, size: 256, elements: !2310)
!2310 = !{!2311, !2317, !2318, !2319}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2309, file: !1615, line: 269, baseType: !2312, size: 8)
!2312 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2309, file: !1615, line: 265, size: 8, elements: !2313)
!2313 = !{!2314, !2315, !2316}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2312, file: !1615, line: 266, baseType: !776, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !2312, file: !1615, line: 267, baseType: !776, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2312, file: !1615, line: 268, baseType: !776, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2309, file: !1615, line: 270, baseType: !176, size: 32, offset: 32)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !2309, file: !1615, line: 271, baseType: !176, size: 32, offset: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !2309, file: !1615, line: 272, baseType: !138, size: 128, offset: 128)
!2320 = !{!2321}
!2321 = !DISubrange(count: 5)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1623, file: !1615, line: 364, baseType: !2323, size: 640, offset: 3264)
!2323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !1615, line: 315, size: 640, elements: !2324)
!2324 = !{!2325, !2326, !2327, !2328, !2329, !2334, !2343, !2344, !2345}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !2323, file: !1615, line: 316, baseType: !1627, size: 64)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !2323, file: !1615, line: 317, baseType: !507, size: 64, offset: 64)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !2323, file: !1615, line: 318, baseType: !507, size: 64, offset: 128)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !2323, file: !1615, line: 319, baseType: !138, size: 128, offset: 192)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2323, file: !1615, line: 320, baseType: !2330, size: 8, offset: 320)
!2330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !1615, line: 305, size: 8, elements: !2331)
!2331 = !{!2332, !2333}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2330, file: !1615, line: 306, baseType: !776, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !2330, file: !1615, line: 307, baseType: !776, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2323, file: !1615, line: 321, baseType: !2335, size: 128, offset: 384)
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !1615, line: 310, size: 128, elements: !2336)
!2336 = !{!2337, !2342}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2335, file: !1615, line: 311, baseType: !2338, size: 64)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{null, !2341}
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2335, file: !1615, line: 312, baseType: !1663, size: 64, offset: 64)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !2323, file: !1615, line: 322, baseType: !1848, size: 64, offset: 512)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !2323, file: !1615, line: 323, baseType: !176, size: 32, offset: 576)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !2323, file: !1615, line: 324, baseType: !176, size: 32, offset: 608)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !1623, file: !1615, line: 365, baseType: !2347, size: 192, offset: 3904)
!2347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !1615, line: 297, size: 192, elements: !2348)
!2348 = !{!2349, !2350, !2354, !2355}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2347, file: !1615, line: 298, baseType: !176, size: 32)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2347, file: !1615, line: 299, baseType: !2351, size: 8, offset: 32)
!2351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !1615, line: 283, size: 8, elements: !2352)
!2352 = !{!2353}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2351, file: !1615, line: 284, baseType: !776, size: 8, flags: DIFlagBitField, extraData: i64 0)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !2347, file: !1615, line: 300, baseType: !176, size: 32, offset: 64)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2347, file: !1615, line: 301, baseType: !2356, size: 64, offset: 128)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !1615, line: 287, size: 64, elements: !2358)
!2358 = !{!2359, !2364, !2365, !2366}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2357, file: !1615, line: 291, baseType: !2360, size: 8)
!2360 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2357, file: !1615, line: 288, size: 8, elements: !2361)
!2361 = !{!2362, !2363}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2360, file: !1615, line: 289, baseType: !776, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2360, file: !1615, line: 290, baseType: !776, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2357, file: !1615, line: 292, baseType: !776, size: 8, offset: 8)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !2357, file: !1615, line: 293, baseType: !776, size: 8, offset: 16)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !2357, file: !1615, line: 294, baseType: !176, size: 32, offset: 32)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1623, file: !1615, line: 366, baseType: !2368, size: 64, offset: 4096)
!2368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !1615, line: 209, size: 64, elements: !2369)
!2369 = !{!2370}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2368, file: !1615, line: 210, baseType: !2371, size: 64)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !1615, line: 84, flags: DIFlagFwdDecl)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1623, file: !1615, line: 367, baseType: !2374, size: 384, offset: 4160)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !1615, line: 341, size: 384, elements: !2375)
!2375 = !{!2376, !2379, !2380, !2381}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2374, file: !1615, line: 342, baseType: !2377, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2245)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2374, file: !1615, line: 343, baseType: !138, size: 128, offset: 64)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !2374, file: !1615, line: 344, baseType: !2377, size: 64, offset: 192)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !2374, file: !1615, line: 345, baseType: !138, size: 128, offset: 256)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1623, file: !1615, line: 368, baseType: !2383, size: 64, offset: 4544)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !1615, line: 122, size: 1216, elements: !2385)
!2385 = !{!2386, !2387, !2388, !2393, !2397, !2401, !2402, !2403}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2384, file: !1615, line: 123, baseType: !1761, size: 64)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !2384, file: !1615, line: 124, baseType: !138, size: 128, offset: 64)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2384, file: !1615, line: 125, baseType: !2389, size: 64, offset: 192)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{!261, !109, !2392}
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !2384, file: !1615, line: 126, baseType: !2394, size: 64, offset: 256)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!176, !1622, !1761}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2384, file: !1615, line: 127, baseType: !2398, size: 64, offset: 320)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{null, !1622}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !2384, file: !1615, line: 128, baseType: !1685, size: 64, offset: 384)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !2384, file: !1615, line: 129, baseType: !1685, size: 64, offset: 448)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !2384, file: !1615, line: 130, baseType: !1614, size: 704, offset: 512)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !1623, file: !1615, line: 369, baseType: !2405, size: 64, offset: 4608)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !1615, line: 138, size: 256, elements: !2407)
!2407 = !{!2408, !2409, !2413, !2417}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !2406, file: !1615, line: 139, baseType: !1622, size: 64)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2406, file: !1615, line: 140, baseType: !2410, size: 64, offset: 64)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!176, !1622, !92}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2406, file: !1615, line: 141, baseType: !2414, size: 64, offset: 128)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{null, !1622, !92}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2406, file: !1615, line: 142, baseType: !2398, size: 64, offset: 192)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1623, file: !1615, line: 370, baseType: !2419, size: 64, offset: 4672)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_driver", file: !1615, line: 162, size: 2816, elements: !2421)
!2421 = !{!2422, !2426, !2427, !2428, !2429, !2438, !2439}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2420, file: !1615, line: 163, baseType: !2423, size: 640)
!2423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 640, elements: !2424)
!2424 = !{!2425}
!2425 = !DISubrange(count: 80)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2420, file: !1615, line: 164, baseType: !2423, size: 640, offset: 640)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2420, file: !1615, line: 165, baseType: !1761, size: 64, offset: 1280)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2420, file: !1615, line: 166, baseType: !7, size: 32, offset: 1344)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2420, file: !1615, line: 167, baseType: !2430, size: 192, offset: 1408)
!2430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_ops", file: !1615, line: 154, size: 192, elements: !2431)
!2431 = !{!2432, !2434, !2436}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !2430, file: !1615, line: 155, baseType: !2433, size: 64)
!2433 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_add", file: !1615, line: 150, baseType: !1619)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2430, file: !1615, line: 156, baseType: !2435, size: 64, offset: 64)
!2435 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_remove", file: !1615, line: 151, baseType: !1619)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2430, file: !1615, line: 157, baseType: !2437, size: 64, offset: 128)
!2437 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_notify", file: !1615, line: 152, baseType: !2414)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !2420, file: !1615, line: 168, baseType: !1735, size: 1152, offset: 1600)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2420, file: !1615, line: 169, baseType: !1740, size: 64, offset: 2752)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !1623, file: !1615, line: 371, baseType: !2441, size: 64, offset: 4736)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2443)
!2443 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !1615, line: 348, flags: DIFlagFwdDecl)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1623, file: !1615, line: 372, baseType: !96, size: 64, offset: 4800)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1623, file: !1615, line: 373, baseType: !1659, size: 5568, offset: 4864)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !1623, file: !1615, line: 374, baseType: !7, size: 32, offset: 10432)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !1623, file: !1615, line: 375, baseType: !7, size: 32, offset: 10464)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !1623, file: !1615, line: 376, baseType: !138, size: 128, offset: 10496)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !1623, file: !1615, line: 377, baseType: !419, size: 192, offset: 10624)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1623, file: !1615, line: 378, baseType: !2398, size: 64, offset: 10816)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !1614, file: !1615, line: 111, baseType: !2398, size: 64, offset: 576)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !1614, file: !1615, line: 112, baseType: !261, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !1614, file: !1615, line: 113, baseType: !261, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_data_attr", file: !3, line: 336, size: 512, elements: !2456)
!2456 = !{!2457, !2458}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2455, file: !3, line: 337, baseType: !102, size: 448)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2455, file: !3, line: 338, baseType: !507, size: 64, offset: 448)
!2459 = !{!2460, !2512, !2517, !2522, !2524, !2535, !2537, !2539, !2541, !2543, !2550, !2552, !2554, !2556, !2570, !0, !2573, !2576, !2578, !2580, !2585, !2587, !2590, !2592, !2594, !2597, !2599, !2601, !2603, !2613, !2616}
!2460 = !DIGlobalVariableExpression(var: !2461, expr: !DIExpression())
!2461 = distinct !DIGlobalVariable(name: "__param_aml_debug_output", scope: !2, file: !3, line: 294, type: !2462, isLocal: true, isDefinition: true, align: 64)
!2462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2463)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2464, line: 69, size: 320, elements: !2465)
!2464 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!2465 = !{!2466, !2467, !2468, !2484, !2486, !2490, !2491}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2463, file: !2464, line: 70, baseType: !109, size: 64)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2463, file: !2464, line: 71, baseType: !1740, size: 64, offset: 64)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2463, file: !2464, line: 72, baseType: !2469, size: 64, offset: 128)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2471)
!2471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2464, line: 47, size: 256, elements: !2472)
!2472 = !{!2473, !2474, !2479, !2483}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2471, file: !2464, line: 49, baseType: !7, size: 32)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2471, file: !2464, line: 51, baseType: !2475, size: 64, offset: 64)
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!176, !109, !2478}
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2471, file: !2464, line: 53, baseType: !2480, size: 64, offset: 128)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!176, !192, !2478}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2471, file: !2464, line: 55, baseType: !280, size: 64, offset: 192)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2463, file: !2464, line: 73, baseType: !2485, size: 16, offset: 192)
!2485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !615)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2463, file: !2464, line: 74, baseType: !2487, size: 8, offset: 208)
!2487 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !93, line: 16, baseType: !2488)
!2488 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !95, line: 20, baseType: !2489)
!2489 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2463, file: !2464, line: 75, baseType: !776, size: 8, offset: 216)
!2491 = !DIDerivedType(tag: DW_TAG_member, scope: !2463, file: !2464, line: 76, baseType: !2492, size: 64, offset: 256)
!2492 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2463, file: !2464, line: 76, size: 64, elements: !2493)
!2493 = !{!2494, !2495, !2502}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2492, file: !2464, line: 77, baseType: !96, size: 64)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2492, file: !2464, line: 78, baseType: !2496, size: 64)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2498)
!2498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2464, line: 86, size: 128, elements: !2499)
!2499 = !{!2500, !2501}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2498, file: !2464, line: 87, baseType: !7, size: 32)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2498, file: !2464, line: 88, baseType: !192, size: 64, offset: 64)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2492, file: !2464, line: 79, baseType: !2503, size: 64)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2505)
!2505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2464, line: 92, size: 256, elements: !2506)
!2506 = !{!2507, !2508, !2509, !2510, !2511}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2505, file: !2464, line: 94, baseType: !7, size: 32)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2505, file: !2464, line: 95, baseType: !7, size: 32, offset: 32)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2505, file: !2464, line: 96, baseType: !2014, size: 64, offset: 64)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2505, file: !2464, line: 97, baseType: !2469, size: 64, offset: 128)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2505, file: !2464, line: 98, baseType: !96, size: 64, offset: 192)
!2512 = !DIGlobalVariableExpression(var: !2513, expr: !DIExpression())
!2513 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_aml_debug_outputtype169", scope: !2, file: !3, line: 294, type: !2514, isLocal: true, isDefinition: true, align: 8)
!2514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 288, elements: !2515)
!2515 = !{!2516}
!2516 = !DISubrange(count: 36)
!2517 = !DIGlobalVariableExpression(var: !2518, expr: !DIExpression())
!2518 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_aml_debug_output170", scope: !2, file: !3, line: 296, type: !2519, isLocal: true, isDefinition: true, align: 8)
!2519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 600, elements: !2520)
!2520 = !{!2521}
!2521 = !DISubrange(count: 75)
!2522 = !DIGlobalVariableExpression(var: !2523, expr: !DIExpression())
!2523 = distinct !DIGlobalVariable(name: "__param_acpica_version", scope: !2, file: !3, line: 310, type: !2462, isLocal: true, isDefinition: true, align: 64)
!2524 = !DIGlobalVariableExpression(var: !2525, expr: !DIExpression())
!2525 = distinct !DIGlobalVariable(name: "__setup_acpi_gpe_set_masked_gpes", scope: !2, file: !3, line: 835, type: !2526, isLocal: true, isDefinition: true, align: 64)
!2526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !2527, line: 241, size: 192, elements: !2528)
!2527 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!2528 = !{!2529, !2530, !2534}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2526, file: !2527, line: 242, baseType: !109, size: 64)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !2526, file: !2527, line: 243, baseType: !2531, size: 64, offset: 64)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!176, !192}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !2526, file: !2527, line: 244, baseType: !176, size: 32, offset: 128)
!2535 = !DIGlobalVariableExpression(var: !2536, expr: !DIExpression())
!2536 = distinct !DIGlobalVariable(name: "dynamic_tables_kobj", scope: !2, file: !3, line: 322, type: !133, isLocal: true, isDefinition: true)
!2537 = !DIGlobalVariableExpression(var: !2538, expr: !DIExpression())
!2538 = distinct !DIGlobalVariable(name: "hotplug_kobj", scope: !2, file: !3, line: 323, type: !133, isLocal: true, isDefinition: true)
!2539 = !DIGlobalVariableExpression(var: !2540, expr: !DIExpression())
!2540 = distinct !DIGlobalVariable(name: "acpi_irq_handled", scope: !2, file: !3, line: 561, type: !92, isLocal: false, isDefinition: true)
!2541 = !DIGlobalVariableExpression(var: !2542, expr: !DIExpression())
!2542 = distinct !DIGlobalVariable(name: "acpi_irq_not_handled", scope: !2, file: !3, line: 562, type: !92, isLocal: false, isDefinition: true)
!2543 = !DIGlobalVariableExpression(var: !2544, expr: !DIExpression())
!2544 = distinct !DIGlobalVariable(name: "all_counters", scope: !2, file: !3, line: 575, type: !2545, isLocal: true, isDefinition: true)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "event_counter", file: !3, line: 570, size: 64, elements: !2547)
!2547 = !{!2548, !2549}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2546, file: !3, line: 571, baseType: !92, size: 32)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2546, file: !3, line: 572, baseType: !92, size: 32, offset: 32)
!2550 = !DIGlobalVariableExpression(var: !2551, expr: !DIExpression())
!2551 = distinct !DIGlobalVariable(name: "num_gpes", scope: !2, file: !3, line: 576, type: !92, isLocal: true, isDefinition: true)
!2552 = !DIGlobalVariableExpression(var: !2553, expr: !DIExpression())
!2553 = distinct !DIGlobalVariable(name: "num_counters", scope: !2, file: !3, line: 577, type: !92, isLocal: true, isDefinition: true)
!2554 = !DIGlobalVariableExpression(var: !2555, expr: !DIExpression())
!2555 = distinct !DIGlobalVariable(name: "all_attrs", scope: !2, file: !3, line: 578, type: !228, isLocal: true, isDefinition: true)
!2556 = !DIGlobalVariableExpression(var: !2557, expr: !DIExpression())
!2557 = distinct !DIGlobalVariable(name: "counter_attrs", scope: !2, file: !3, line: 585, type: !2558, isLocal: true, isDefinition: true)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_attribute", file: !65, line: 163, size: 256, elements: !2560)
!2560 = !{!2561, !2562, !2566}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2559, file: !65, line: 164, baseType: !106, size: 128)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2559, file: !65, line: 165, baseType: !2563, size: 64, offset: 128)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = !DISubroutineType(types: !2565)
!2565 = !{!126, !133, !2558, !192}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2559, file: !65, line: 167, baseType: !2567, size: 64, offset: 192)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{!126, !133, !2558, !109, !116}
!2570 = !DIGlobalVariableExpression(var: !2571, expr: !DIExpression())
!2571 = distinct !DIGlobalVariable(name: "acpi_masked_gpes_map", scope: !2, file: !3, line: 823, type: !2572, isLocal: true, isDefinition: true)
!2572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 256, elements: !574)
!2573 = !DIGlobalVariableExpression(var: !2574, expr: !DIExpression())
!2574 = distinct !DIGlobalVariable(name: "__param_str_acpica_version", scope: !2, file: !3, line: 310, type: !2575, isLocal: true, isDefinition: true)
!2575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 160, elements: !1402)
!2576 = !DIGlobalVariableExpression(var: !2577, expr: !DIExpression())
!2577 = distinct !DIGlobalVariable(name: "__param_ops_acpica_version", scope: !2, file: !3, line: 310, type: !2470, isLocal: true, isDefinition: true)
!2578 = !DIGlobalVariableExpression(var: !2579, expr: !DIExpression())
!2579 = distinct !DIGlobalVariable(name: "acpi_table_attr_list", scope: !2, file: !3, line: 319, type: !138, isLocal: true, isDefinition: true)
!2580 = !DIGlobalVariableExpression(var: !2581, expr: !DIExpression())
!2581 = distinct !DIGlobalVariable(name: "__setup_str_acpi_gpe_set_masked_gpes", scope: !2, file: !3, line: 835, type: !2582, isLocal: true, isDefinition: true, align: 8)
!2582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 120, elements: !2583)
!2583 = !{!2584}
!2584 = !DISubrange(count: 15)
!2585 = !DIGlobalVariableExpression(var: !2586, expr: !DIExpression())
!2586 = distinct !DIGlobalVariable(name: "acpi_gpe_count", scope: !2, file: !3, line: 579, type: !92, isLocal: true, isDefinition: true)
!2587 = !DIGlobalVariableExpression(var: !2588, expr: !DIExpression())
!2588 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 16, type: !2589, isLocal: true, isDefinition: true)
!2589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 48, elements: !1505)
!2590 = !DIGlobalVariableExpression(var: !2591, expr: !DIExpression())
!2591 = distinct !DIGlobalVariable(name: "interrupt_stats_attr_group", scope: !2, file: !3, line: 581, type: !233, isLocal: true, isDefinition: true)
!2592 = !DIGlobalVariableExpression(var: !2593, expr: !DIExpression())
!2593 = distinct !DIGlobalVariable(name: "acpi_hotplug_profile_ktype", scope: !2, file: !3, line: 981, type: !207, isLocal: true, isDefinition: true)
!2594 = !DIGlobalVariableExpression(var: !2595, expr: !DIExpression())
!2595 = distinct !DIGlobalVariable(name: "hotplug_profile_attrs", scope: !2, file: !3, line: 976, type: !2596, isLocal: true, isDefinition: true)
!2596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 128, elements: !1173)
!2597 = !DIGlobalVariableExpression(var: !2598, expr: !DIExpression())
!2598 = distinct !DIGlobalVariable(name: "hotplug_enabled_attr", scope: !2, file: !3, line: 972, type: !2559, isLocal: true, isDefinition: true)
!2599 = !DIGlobalVariableExpression(var: !2600, expr: !DIExpression())
!2600 = distinct !DIGlobalVariable(name: "tables_kobj", scope: !2, file: !3, line: 320, type: !133, isLocal: true, isDefinition: true)
!2601 = !DIGlobalVariableExpression(var: !2602, expr: !DIExpression())
!2602 = distinct !DIGlobalVariable(name: "tables_data_kobj", scope: !2, file: !3, line: 321, type: !133, isLocal: true, isDefinition: true)
!2603 = !DIGlobalVariableExpression(var: !2604, expr: !DIExpression())
!2604 = distinct !DIGlobalVariable(name: "acpi_data_objs", scope: !2, file: !3, line: 475, type: !2605, isLocal: true, isDefinition: true)
!2605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2606, size: 128, elements: !796)
!2606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_data_obj", file: !3, line: 472, size: 128, elements: !2607)
!2607 = !{!2608, !2609}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2606, file: !3, line: 473, baseType: !192, size: 64)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2606, file: !3, line: 474, baseType: !2610, size: 64, offset: 64)
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2611 = !DISubroutineType(types: !2612)
!2612 = !{!176, !96, !2454}
!2613 = !DIGlobalVariableExpression(var: !2614, expr: !DIExpression())
!2614 = distinct !DIGlobalVariable(name: "force_remove_attr", scope: !2, file: !3, line: 1032, type: !2615, isLocal: true, isDefinition: true)
!2615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2559)
!2616 = !DIGlobalVariableExpression(var: !2617, expr: !DIExpression())
!2617 = distinct !DIGlobalVariable(name: "pm_profile_attr", scope: !2, file: !3, line: 947, type: !2615, isLocal: true, isDefinition: true)
!2618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 176, elements: !2619)
!2619 = !{!2620}
!2620 = !DISubrange(count: 22)
!2621 = !{i32 7, !"Dwarf Version", i32 4}
!2622 = !{i32 2, !"Debug Info Version", i32 3}
!2623 = !{i32 1, !"wchar_size", i32 2}
!2624 = !{i32 1, !"Code Model", i32 2}
!2625 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2626 = distinct !DISubprogram(name: "acpi_sysfs_table_handler", scope: !3, file: !3, line: 403, type: !2627, scopeLine: 404, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !164)
!2627 = !DISubroutineType(types: !2628)
!2628 = !{!90, !92, !96, !96}
!2629 = !DILocalVariable(name: "event", arg: 1, scope: !2626, file: !3, line: 403, type: !92)
!2630 = !DILocation(line: 403, column: 42, scope: !2626)
!2631 = !DILocalVariable(name: "table", arg: 2, scope: !2626, file: !3, line: 403, type: !96)
!2632 = !DILocation(line: 403, column: 55, scope: !2626)
!2633 = !DILocalVariable(name: "context", arg: 3, scope: !2626, file: !3, line: 403, type: !96)
!2634 = !DILocation(line: 403, column: 68, scope: !2626)
!2635 = !DILocalVariable(name: "table_attr", scope: !2626, file: !3, line: 405, type: !98)
!2636 = !DILocation(line: 405, column: 26, scope: !2626)
!2637 = !DILocation(line: 407, column: 10, scope: !2626)
!2638 = !DILocation(line: 407, column: 2, scope: !2626)
!2639 = !DILocation(line: 410, column: 7, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2626, file: !3, line: 407, column: 17)
!2641 = !DILocation(line: 409, column: 14, scope: !2640)
!2642 = !DILocation(line: 411, column: 8, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2640, file: !3, line: 411, column: 7)
!2644 = !DILocation(line: 411, column: 7, scope: !2640)
!2645 = !DILocation(line: 412, column: 4, scope: !2643)
!2646 = !DILocation(line: 414, column: 28, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2640, file: !3, line: 414, column: 7)
!2648 = !DILocation(line: 415, column: 7, scope: !2647)
!2649 = !DILocation(line: 415, column: 19, scope: !2647)
!2650 = !DILocation(line: 414, column: 7, scope: !2647)
!2651 = !DILocation(line: 414, column: 7, scope: !2640)
!2652 = !DILocation(line: 416, column: 10, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2647, file: !3, line: 415, column: 27)
!2654 = !DILocation(line: 416, column: 4, scope: !2653)
!2655 = !DILocation(line: 417, column: 4, scope: !2653)
!2656 = !DILocation(line: 419, column: 18, scope: !2640)
!2657 = !DILocation(line: 419, column: 30, scope: !2640)
!2658 = !DILocation(line: 419, column: 3, scope: !2640)
!2659 = !DILocation(line: 420, column: 3, scope: !2640)
!2660 = !DILocation(line: 429, column: 3, scope: !2640)
!2661 = !DILocation(line: 431, column: 3, scope: !2640)
!2662 = !DILocation(line: 433, column: 2, scope: !2626)
!2663 = !DILocation(line: 434, column: 1, scope: !2626)
!2664 = distinct !DISubprogram(name: "kzalloc", scope: !76, file: !76, line: 662, type: !2665, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!2665 = !DISubroutineType(types: !2666)
!2666 = !{!96, !116, !88}
!2667 = !DILocalVariable(name: "s", arg: 1, scope: !2668, file: !76, line: 445, type: !1249)
!2668 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !76, file: !76, line: 445, type: !2669, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!2669 = !DISubroutineType(types: !2670)
!2670 = !{!96, !1249, !88, !116}
!2671 = !DILocation(line: 445, column: 72, scope: !2668, inlinedAt: !2672)
!2672 = distinct !DILocation(line: 552, column: 10, scope: !2673, inlinedAt: !2676)
!2673 = distinct !DILexicalBlock(scope: !2674, file: !76, line: 540, column: 34)
!2674 = distinct !DILexicalBlock(scope: !2675, file: !76, line: 540, column: 6)
!2675 = distinct !DISubprogram(name: "kmalloc", scope: !76, file: !76, line: 538, type: !2665, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!2676 = distinct !DILocation(line: 664, column: 9, scope: !2664)
!2677 = !DILocalVariable(name: "flags", arg: 2, scope: !2668, file: !76, line: 446, type: !88)
!2678 = !DILocation(line: 446, column: 9, scope: !2668, inlinedAt: !2672)
!2679 = !DILocalVariable(name: "size", arg: 3, scope: !2668, file: !76, line: 446, type: !116)
!2680 = !DILocation(line: 446, column: 23, scope: !2668, inlinedAt: !2672)
!2681 = !DILocalVariable(name: "ret", scope: !2668, file: !76, line: 448, type: !96)
!2682 = !DILocation(line: 448, column: 8, scope: !2668, inlinedAt: !2672)
!2683 = !DILocalVariable(name: "flags", arg: 1, scope: !2684, file: !76, line: 318, type: !88)
!2684 = distinct !DISubprogram(name: "kmalloc_type", scope: !76, file: !76, line: 318, type: !2685, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{!75, !88}
!2687 = !DILocation(line: 318, column: 67, scope: !2684, inlinedAt: !2688)
!2688 = distinct !DILocation(line: 553, column: 20, scope: !2673, inlinedAt: !2676)
!2689 = !DILocalVariable(name: "size", arg: 1, scope: !2690, file: !76, line: 346, type: !116)
!2690 = distinct !DISubprogram(name: "kmalloc_index", scope: !76, file: !76, line: 346, type: !2691, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!7, !116}
!2693 = !DILocation(line: 346, column: 58, scope: !2690, inlinedAt: !2694)
!2694 = distinct !DILocation(line: 547, column: 11, scope: !2673, inlinedAt: !2676)
!2695 = !DILocalVariable(name: "size", arg: 1, scope: !2696, file: !76, line: 472, type: !116)
!2696 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !76, file: !76, line: 472, type: !2697, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!2697 = !DISubroutineType(types: !2698)
!2698 = !{!96, !116, !88, !7}
!2699 = !DILocation(line: 472, column: 28, scope: !2696, inlinedAt: !2700)
!2700 = distinct !DILocation(line: 481, column: 9, scope: !2701, inlinedAt: !2702)
!2701 = distinct !DISubprogram(name: "kmalloc_large", scope: !76, file: !76, line: 478, type: !2665, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!2702 = distinct !DILocation(line: 545, column: 11, scope: !2703, inlinedAt: !2676)
!2703 = distinct !DILexicalBlock(scope: !2673, file: !76, line: 544, column: 7)
!2704 = !DILocalVariable(name: "flags", arg: 2, scope: !2696, file: !76, line: 472, type: !88)
!2705 = !DILocation(line: 472, column: 40, scope: !2696, inlinedAt: !2700)
!2706 = !DILocalVariable(name: "order", arg: 3, scope: !2696, file: !76, line: 472, type: !7)
!2707 = !DILocation(line: 472, column: 60, scope: !2696, inlinedAt: !2700)
!2708 = !DILocalVariable(name: "size", arg: 1, scope: !2701, file: !76, line: 478, type: !116)
!2709 = !DILocation(line: 478, column: 51, scope: !2701, inlinedAt: !2702)
!2710 = !DILocalVariable(name: "flags", arg: 2, scope: !2701, file: !76, line: 478, type: !88)
!2711 = !DILocation(line: 478, column: 63, scope: !2701, inlinedAt: !2702)
!2712 = !DILocalVariable(name: "order", scope: !2701, file: !76, line: 480, type: !7)
!2713 = !DILocation(line: 480, column: 15, scope: !2701, inlinedAt: !2702)
!2714 = !DILocalVariable(name: "size", arg: 1, scope: !2675, file: !76, line: 538, type: !116)
!2715 = !DILocation(line: 538, column: 45, scope: !2675, inlinedAt: !2676)
!2716 = !DILocalVariable(name: "flags", arg: 2, scope: !2675, file: !76, line: 538, type: !88)
!2717 = !DILocation(line: 538, column: 57, scope: !2675, inlinedAt: !2676)
!2718 = !DILocalVariable(name: "index", scope: !2673, file: !76, line: 542, type: !7)
!2719 = !DILocation(line: 542, column: 16, scope: !2673, inlinedAt: !2676)
!2720 = !DILocalVariable(name: "size", arg: 1, scope: !2664, file: !76, line: 662, type: !116)
!2721 = !DILocation(line: 662, column: 36, scope: !2664)
!2722 = !DILocalVariable(name: "flags", arg: 2, scope: !2664, file: !76, line: 662, type: !88)
!2723 = !DILocation(line: 662, column: 48, scope: !2664)
!2724 = !DILocation(line: 664, column: 17, scope: !2664)
!2725 = !DILocation(line: 664, column: 23, scope: !2664)
!2726 = !DILocation(line: 664, column: 29, scope: !2664)
!2727 = !DILocation(line: 540, column: 27, scope: !2674, inlinedAt: !2676)
!2728 = !DILocation(line: 540, column: 6, scope: !2674, inlinedAt: !2676)
!2729 = !DILocation(line: 540, column: 6, scope: !2675, inlinedAt: !2676)
!2730 = !DILocation(line: 544, column: 7, scope: !2703, inlinedAt: !2676)
!2731 = !DILocation(line: 544, column: 12, scope: !2703, inlinedAt: !2676)
!2732 = !DILocation(line: 544, column: 7, scope: !2673, inlinedAt: !2676)
!2733 = !DILocation(line: 545, column: 25, scope: !2703, inlinedAt: !2676)
!2734 = !DILocation(line: 545, column: 31, scope: !2703, inlinedAt: !2676)
!2735 = !DILocation(line: 480, column: 33, scope: !2701, inlinedAt: !2702)
!2736 = !DILocation(line: 480, column: 23, scope: !2701, inlinedAt: !2702)
!2737 = !DILocation(line: 481, column: 29, scope: !2701, inlinedAt: !2702)
!2738 = !DILocation(line: 481, column: 35, scope: !2701, inlinedAt: !2702)
!2739 = !DILocation(line: 481, column: 42, scope: !2701, inlinedAt: !2702)
!2740 = !DILocation(line: 474, column: 23, scope: !2696, inlinedAt: !2700)
!2741 = !DILocation(line: 474, column: 29, scope: !2696, inlinedAt: !2700)
!2742 = !DILocation(line: 474, column: 36, scope: !2696, inlinedAt: !2700)
!2743 = !DILocation(line: 474, column: 9, scope: !2696, inlinedAt: !2700)
!2744 = !DILocation(line: 545, column: 4, scope: !2703, inlinedAt: !2676)
!2745 = !DILocation(line: 547, column: 25, scope: !2673, inlinedAt: !2676)
!2746 = !DILocation(line: 348, column: 7, scope: !2747, inlinedAt: !2694)
!2747 = distinct !DILexicalBlock(scope: !2690, file: !76, line: 348, column: 6)
!2748 = !DILocation(line: 348, column: 6, scope: !2690, inlinedAt: !2694)
!2749 = !DILocation(line: 349, column: 3, scope: !2747, inlinedAt: !2694)
!2750 = !DILocation(line: 351, column: 6, scope: !2751, inlinedAt: !2694)
!2751 = distinct !DILexicalBlock(scope: !2690, file: !76, line: 351, column: 6)
!2752 = !DILocation(line: 351, column: 11, scope: !2751, inlinedAt: !2694)
!2753 = !DILocation(line: 351, column: 6, scope: !2690, inlinedAt: !2694)
!2754 = !DILocation(line: 352, column: 3, scope: !2751, inlinedAt: !2694)
!2755 = !DILocation(line: 354, column: 32, scope: !2756, inlinedAt: !2694)
!2756 = distinct !DILexicalBlock(scope: !2690, file: !76, line: 354, column: 6)
!2757 = !DILocation(line: 354, column: 37, scope: !2756, inlinedAt: !2694)
!2758 = !DILocation(line: 354, column: 42, scope: !2756, inlinedAt: !2694)
!2759 = !DILocation(line: 354, column: 45, scope: !2756, inlinedAt: !2694)
!2760 = !DILocation(line: 354, column: 50, scope: !2756, inlinedAt: !2694)
!2761 = !DILocation(line: 354, column: 6, scope: !2690, inlinedAt: !2694)
!2762 = !DILocation(line: 355, column: 3, scope: !2756, inlinedAt: !2694)
!2763 = !DILocation(line: 356, column: 32, scope: !2764, inlinedAt: !2694)
!2764 = distinct !DILexicalBlock(scope: !2690, file: !76, line: 356, column: 6)
!2765 = !DILocation(line: 356, column: 37, scope: !2764, inlinedAt: !2694)
!2766 = !DILocation(line: 356, column: 43, scope: !2764, inlinedAt: !2694)
!2767 = !DILocation(line: 356, column: 46, scope: !2764, inlinedAt: !2694)
!2768 = !DILocation(line: 356, column: 51, scope: !2764, inlinedAt: !2694)
!2769 = !DILocation(line: 356, column: 6, scope: !2690, inlinedAt: !2694)
!2770 = !DILocation(line: 357, column: 3, scope: !2764, inlinedAt: !2694)
!2771 = !DILocation(line: 358, column: 6, scope: !2772, inlinedAt: !2694)
!2772 = distinct !DILexicalBlock(scope: !2690, file: !76, line: 358, column: 6)
!2773 = !DILocation(line: 358, column: 11, scope: !2772, inlinedAt: !2694)
!2774 = !DILocation(line: 358, column: 6, scope: !2690, inlinedAt: !2694)
!2775 = !DILocation(line: 358, column: 26, scope: !2772, inlinedAt: !2694)
!2776 = !DILocation(line: 359, column: 6, scope: !2777, inlinedAt: !2694)
!2777 = distinct !DILexicalBlock(scope: !2690, file: !76, line: 359, column: 6)
!2778 = !DILocation(line: 359, column: 11, scope: !2777, inlinedAt: !2694)
!2779 = !DILocation(line: 359, column: 6, scope: !2690, inlinedAt: !2694)
!2780 = !DILocation(line: 359, column: 26, scope: !2777, inlinedAt: !2694)
!2781 = !DILocation(line: 360, column: 6, scope: !2782, inlinedAt: !2694)
!2782 = distinct !DILexicalBlock(scope: !2690, file: !76, line: 360, column: 6)
!2783 = !DILocation(line: 360, column: 11, scope: !2782, inlinedAt: !2694)
!2784 = !DILocation(line: 360, column: 6, scope: !2690, inlinedAt: !2694)
!2785 = !DILocation(line: 360, column: 26, scope: !2782, inlinedAt: !2694)
!2786 = !DILocation(line: 361, column: 6, scope: !2787, inlinedAt: !2694)
!2787 = distinct !DILexicalBlock(scope: !2690, file: !76, line: 361, column: 6)
!2788 = !DILocation(line: 361, column: 11, scope: !2787, inlinedAt: !2694)
!2789 = !DILocation(line: 361, column: 6, scope: !2690, inlinedAt: !2694)
!2790 = !DILocation(line: 361, column: 26, scope: !2787, inlinedAt: !2694)
!2791 = !DILocation(line: 362, column: 6, scope: !2792, inlinedAt: !2694)
!2792 = distinct !DILexicalBlock(scope: !2690, file: !76, line: 362, column: 6)
!2793 = !DILocation(line: 362, column: 11, scope: !2792, inlinedAt: !2694)
!2794 = !DILocation(line: 362, column: 6, scope: !2690, inlinedAt: !2694)
!2795 = !DILocation(line: 362, column: 26, scope: !2792, inlinedAt: !2694)
!2796 = !DILocation(line: 363, column: 6, scope: !2797, inlinedAt: !2694)
!2797 = distinct !DILexicalBlock(scope: !2690, file: !76, line: 363, column: 6)
!2798 = !DILocation(line: 363, column: 11, scope: !2797, inlinedAt: !2694)
!2799 = !DILocation(line: 363, column: 6, scope: !2690, inlinedAt: !2694)
!2800 = !DILocation(line: 363, column: 26, scope: !2797, inlinedAt: !2694)
!2801 = !DILocation(line: 364, column: 6, scope: !2802, inlinedAt: !2694)
!2802 = distinct !DILexicalBlock(scope: !2690, file: !76, line: 364, column: 6)
!2803 = !DILocation(line: 364, column: 11, scope: !2802, inlinedAt: !2694)
!2804 = !DILocation(line: 364, column: 6, scope: !2690, inlinedAt: !2694)
!2805 = !DILocation(line: 364, column: 26, scope: !2802, inlinedAt: !2694)
!2806 = !DILocation(line: 365, column: 6, scope: !2807, inlinedAt: !2694)
!2807 = distinct !DILexicalBlock(scope: !2690, file: !76, line: 365, column: 6)
!2808 = !DILocation(line: 365, column: 11, scope: !2807, inlinedAt: !2694)
!2809 = !DILocation(line: 365, column: 6, scope: !2690, inlinedAt: !2694)
!2810 = !DILocation(line: 365, column: 26, scope: !2807, inlinedAt: !2694)
!2811 = !DILocation(line: 366, column: 6, scope: !2812, inlinedAt: !2694)
!2812 = distinct !DILexicalBlock(scope: !2690, file: !76, line: 366, column: 6)
!2813 = !DILocation(line: 366, column: 11, scope: !2812, inlinedAt: !2694)
!2814 = !DILocation(line: 366, column: 6, scope: !2690, inlinedAt: !2694)
!2815 = !DILocation(line: 366, column: 26, scope: !2812, inlinedAt: !2694)
!2816 = !DILocation(line: 367, column: 6, scope: !2817, inlinedAt: !2694)
!2817 = distinct !DILexicalBlock(scope: !2690, file: !76, line: 367, column: 6)
!2818 = !DILocation(line: 367, column: 11, scope: !2817, inlinedAt: !2694)
!2819 = !DILocation(line: 367, column: 6, scope: !2690, inlinedAt: !2694)
!2820 = !DILocation(line: 367, column: 26, scope: !2817, inlinedAt: !2694)
!2821 = !DILocation(line: 368, column: 6, scope: !2822, inlinedAt: !2694)
!2822 = distinct !DILexicalBlock(scope: !2690, file: !76, line: 368, column: 6)
!2823 = !DILocation(line: 368, column: 11, scope: !2822, inlinedAt: !2694)
!2824 = !DILocation(line: 368, column: 6, scope: !2690, inlinedAt: !2694)
!2825 = !DILocation(line: 368, column: 26, scope: !2822, inlinedAt: !2694)
!2826 = !DILocation(line: 369, column: 6, scope: !2827, inlinedAt: !2694)
!2827 = distinct !DILexicalBlock(scope: !2690, file: !76, line: 369, column: 6)
!2828 = !DILocation(line: 369, column: 11, scope: !2827, inlinedAt: !2694)
!2829 = !DILocation(line: 369, column: 6, scope: !2690, inlinedAt: !2694)
!2830 = !DILocation(line: 369, column: 26, scope: !2827, inlinedAt: !2694)
!2831 = !DILocation(line: 370, column: 6, scope: !2832, inlinedAt: !2694)
!2832 = distinct !DILexicalBlock(scope: !2690, file: !76, line: 370, column: 6)
!2833 = !DILocation(line: 370, column: 11, scope: !2832, inlinedAt: !2694)
!2834 = !DILocation(line: 370, column: 6, scope: !2690, inlinedAt: !2694)
!2835 = !DILocation(line: 370, column: 26, scope: !2832, inlinedAt: !2694)
!2836 = !DILocation(line: 371, column: 6, scope: !2837, inlinedAt: !2694)
!2837 = distinct !DILexicalBlock(scope: !2690, file: !76, line: 371, column: 6)
!2838 = !DILocation(line: 371, column: 11, scope: !2837, inlinedAt: !2694)
!2839 = !DILocation(line: 371, column: 6, scope: !2690, inlinedAt: !2694)
!2840 = !DILocation(line: 371, column: 26, scope: !2837, inlinedAt: !2694)
!2841 = !DILocation(line: 372, column: 6, scope: !2842, inlinedAt: !2694)
!2842 = distinct !DILexicalBlock(scope: !2690, file: !76, line: 372, column: 6)
!2843 = !DILocation(line: 372, column: 11, scope: !2842, inlinedAt: !2694)
!2844 = !DILocation(line: 372, column: 6, scope: !2690, inlinedAt: !2694)
!2845 = !DILocation(line: 372, column: 26, scope: !2842, inlinedAt: !2694)
!2846 = !DILocation(line: 373, column: 6, scope: !2847, inlinedAt: !2694)
!2847 = distinct !DILexicalBlock(scope: !2690, file: !76, line: 373, column: 6)
!2848 = !DILocation(line: 373, column: 11, scope: !2847, inlinedAt: !2694)
!2849 = !DILocation(line: 373, column: 6, scope: !2690, inlinedAt: !2694)
!2850 = !DILocation(line: 373, column: 26, scope: !2847, inlinedAt: !2694)
!2851 = !DILocation(line: 374, column: 6, scope: !2852, inlinedAt: !2694)
!2852 = distinct !DILexicalBlock(scope: !2690, file: !76, line: 374, column: 6)
!2853 = !DILocation(line: 374, column: 11, scope: !2852, inlinedAt: !2694)
!2854 = !DILocation(line: 374, column: 6, scope: !2690, inlinedAt: !2694)
!2855 = !DILocation(line: 374, column: 26, scope: !2852, inlinedAt: !2694)
!2856 = !DILocation(line: 375, column: 6, scope: !2857, inlinedAt: !2694)
!2857 = distinct !DILexicalBlock(scope: !2690, file: !76, line: 375, column: 6)
!2858 = !DILocation(line: 375, column: 11, scope: !2857, inlinedAt: !2694)
!2859 = !DILocation(line: 375, column: 6, scope: !2690, inlinedAt: !2694)
!2860 = !DILocation(line: 375, column: 27, scope: !2857, inlinedAt: !2694)
!2861 = !DILocation(line: 376, column: 6, scope: !2862, inlinedAt: !2694)
!2862 = distinct !DILexicalBlock(scope: !2690, file: !76, line: 376, column: 6)
!2863 = !DILocation(line: 376, column: 11, scope: !2862, inlinedAt: !2694)
!2864 = !DILocation(line: 376, column: 6, scope: !2690, inlinedAt: !2694)
!2865 = !DILocation(line: 376, column: 32, scope: !2862, inlinedAt: !2694)
!2866 = !DILocation(line: 377, column: 6, scope: !2867, inlinedAt: !2694)
!2867 = distinct !DILexicalBlock(scope: !2690, file: !76, line: 377, column: 6)
!2868 = !DILocation(line: 377, column: 11, scope: !2867, inlinedAt: !2694)
!2869 = !DILocation(line: 377, column: 6, scope: !2690, inlinedAt: !2694)
!2870 = !DILocation(line: 377, column: 32, scope: !2867, inlinedAt: !2694)
!2871 = !DILocation(line: 378, column: 6, scope: !2872, inlinedAt: !2694)
!2872 = distinct !DILexicalBlock(scope: !2690, file: !76, line: 378, column: 6)
!2873 = !DILocation(line: 378, column: 11, scope: !2872, inlinedAt: !2694)
!2874 = !DILocation(line: 378, column: 6, scope: !2690, inlinedAt: !2694)
!2875 = !DILocation(line: 378, column: 32, scope: !2872, inlinedAt: !2694)
!2876 = !DILocation(line: 379, column: 6, scope: !2877, inlinedAt: !2694)
!2877 = distinct !DILexicalBlock(scope: !2690, file: !76, line: 379, column: 6)
!2878 = !DILocation(line: 379, column: 11, scope: !2877, inlinedAt: !2694)
!2879 = !DILocation(line: 379, column: 6, scope: !2690, inlinedAt: !2694)
!2880 = !DILocation(line: 379, column: 33, scope: !2877, inlinedAt: !2694)
!2881 = !DILocation(line: 380, column: 6, scope: !2882, inlinedAt: !2694)
!2882 = distinct !DILexicalBlock(scope: !2690, file: !76, line: 380, column: 6)
!2883 = !DILocation(line: 380, column: 11, scope: !2882, inlinedAt: !2694)
!2884 = !DILocation(line: 380, column: 6, scope: !2690, inlinedAt: !2694)
!2885 = !DILocation(line: 380, column: 33, scope: !2882, inlinedAt: !2694)
!2886 = !DILocation(line: 381, column: 6, scope: !2887, inlinedAt: !2694)
!2887 = distinct !DILexicalBlock(scope: !2690, file: !76, line: 381, column: 6)
!2888 = !DILocation(line: 381, column: 11, scope: !2887, inlinedAt: !2694)
!2889 = !DILocation(line: 381, column: 6, scope: !2690, inlinedAt: !2694)
!2890 = !DILocation(line: 381, column: 33, scope: !2887, inlinedAt: !2694)
!2891 = !DILocation(line: 382, column: 2, scope: !2892, inlinedAt: !2694)
!2892 = distinct !DILexicalBlock(scope: !2893, file: !76, line: 382, column: 2)
!2893 = distinct !DILexicalBlock(scope: !2690, file: !76, line: 382, column: 2)
!2894 = !{i32 -2144173407, i32 -2144173378, i32 -2144173332, i32 -2144173274, i32 -2144173220, i32 -2144173166, i32 -2144173111, i32 -2144173080}
!2895 = !DILocation(line: 382, column: 2, scope: !2896, inlinedAt: !2694)
!2896 = distinct !DILexicalBlock(scope: !2897, file: !76, line: 382, column: 2)
!2897 = distinct !DILexicalBlock(scope: !2893, file: !76, line: 382, column: 2)
!2898 = !{i32 -2144172637, i32 -2144172630, i32 -2144172576, i32 -2144172545, i32 -2144172515}
!2899 = !DILocation(line: 382, column: 2, scope: !2897, inlinedAt: !2694)
!2900 = !DILocation(line: 386, column: 1, scope: !2690, inlinedAt: !2694)
!2901 = !DILocation(line: 547, column: 9, scope: !2673, inlinedAt: !2676)
!2902 = !DILocation(line: 549, column: 8, scope: !2903, inlinedAt: !2676)
!2903 = distinct !DILexicalBlock(scope: !2673, file: !76, line: 549, column: 7)
!2904 = !DILocation(line: 549, column: 7, scope: !2673, inlinedAt: !2676)
!2905 = !DILocation(line: 550, column: 4, scope: !2903, inlinedAt: !2676)
!2906 = !DILocation(line: 553, column: 33, scope: !2673, inlinedAt: !2676)
!2907 = !DILocation(line: 325, column: 6, scope: !2908, inlinedAt: !2688)
!2908 = distinct !DILexicalBlock(scope: !2684, file: !76, line: 325, column: 6)
!2909 = !DILocation(line: 325, column: 6, scope: !2684, inlinedAt: !2688)
!2910 = !DILocation(line: 326, column: 3, scope: !2908, inlinedAt: !2688)
!2911 = !DILocation(line: 332, column: 9, scope: !2684, inlinedAt: !2688)
!2912 = !DILocation(line: 332, column: 15, scope: !2684, inlinedAt: !2688)
!2913 = !DILocation(line: 332, column: 2, scope: !2684, inlinedAt: !2688)
!2914 = !DILocation(line: 336, column: 1, scope: !2684, inlinedAt: !2688)
!2915 = !DILocation(line: 553, column: 5, scope: !2673, inlinedAt: !2676)
!2916 = !DILocation(line: 553, column: 41, scope: !2673, inlinedAt: !2676)
!2917 = !DILocation(line: 554, column: 5, scope: !2673, inlinedAt: !2676)
!2918 = !DILocation(line: 554, column: 12, scope: !2673, inlinedAt: !2676)
!2919 = !DILocation(line: 448, column: 31, scope: !2668, inlinedAt: !2672)
!2920 = !DILocation(line: 448, column: 34, scope: !2668, inlinedAt: !2672)
!2921 = !DILocation(line: 448, column: 14, scope: !2668, inlinedAt: !2672)
!2922 = !DILocation(line: 450, column: 22, scope: !2668, inlinedAt: !2672)
!2923 = !DILocation(line: 450, column: 25, scope: !2668, inlinedAt: !2672)
!2924 = !DILocation(line: 450, column: 30, scope: !2668, inlinedAt: !2672)
!2925 = !DILocation(line: 450, column: 36, scope: !2668, inlinedAt: !2672)
!2926 = !DILocation(line: 450, column: 8, scope: !2668, inlinedAt: !2672)
!2927 = !DILocation(line: 450, column: 6, scope: !2668, inlinedAt: !2672)
!2928 = !DILocation(line: 451, column: 9, scope: !2668, inlinedAt: !2672)
!2929 = !DILocation(line: 552, column: 3, scope: !2673, inlinedAt: !2676)
!2930 = !DILocation(line: 557, column: 19, scope: !2675, inlinedAt: !2676)
!2931 = !DILocation(line: 557, column: 25, scope: !2675, inlinedAt: !2676)
!2932 = !DILocation(line: 557, column: 9, scope: !2675, inlinedAt: !2676)
!2933 = !DILocation(line: 557, column: 2, scope: !2675, inlinedAt: !2676)
!2934 = !DILocation(line: 558, column: 1, scope: !2675, inlinedAt: !2676)
!2935 = !DILocation(line: 664, column: 2, scope: !2664)
!2936 = distinct !DISubprogram(name: "acpi_table_attr_init", scope: !3, file: !3, line: 362, type: !2937, scopeLine: 365, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!2937 = !DISubroutineType(types: !2938)
!2938 = !{!176, !133, !98, !2939}
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2940, size: 64)
!2940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_header", file: !2941, line: 68, size: 288, elements: !2942)
!2941 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!2942 = !{!2943, !2944, !2945, !2946, !2947, !2949, !2950, !2951, !2952}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !2940, file: !2941, line: 69, baseType: !1602, size: 32)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2940, file: !2941, line: 70, baseType: !92, size: 32, offset: 32)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !2940, file: !2941, line: 71, baseType: !776, size: 8, offset: 64)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !2940, file: !2941, line: 72, baseType: !776, size: 8, offset: 72)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !2940, file: !2941, line: 73, baseType: !2948, size: 48, offset: 80)
!2948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 48, elements: !1505)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !2940, file: !2941, line: 74, baseType: !1138, size: 64, offset: 128)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "oem_revision", scope: !2940, file: !2941, line: 75, baseType: !92, size: 32, offset: 192)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_id", scope: !2940, file: !2941, line: 76, baseType: !1602, size: 32, offset: 224)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_revision", scope: !2940, file: !2941, line: 77, baseType: !92, size: 32, offset: 256)
!2953 = !DILocalVariable(name: "tables_obj", arg: 1, scope: !2936, file: !3, line: 362, type: !133)
!2954 = !DILocation(line: 362, column: 49, scope: !2936)
!2955 = !DILocalVariable(name: "table_attr", arg: 2, scope: !2936, file: !3, line: 363, type: !98)
!2956 = !DILocation(line: 363, column: 29, scope: !2936)
!2957 = !DILocalVariable(name: "table_header", arg: 3, scope: !2936, file: !3, line: 364, type: !2939)
!2958 = !DILocation(line: 364, column: 31, scope: !2936)
!2959 = !DILocalVariable(name: "header", scope: !2936, file: !3, line: 366, type: !2939)
!2960 = !DILocation(line: 366, column: 28, scope: !2936)
!2961 = !DILocalVariable(name: "attr", scope: !2936, file: !3, line: 367, type: !98)
!2962 = !DILocation(line: 367, column: 26, scope: !2936)
!2963 = !DILocalVariable(name: "instance_str", scope: !2936, file: !3, line: 368, type: !1602)
!2964 = !DILocation(line: 368, column: 7, scope: !2936)
!2965 = !DILocation(line: 370, column: 2, scope: !2936)
!2966 = !DILocation(line: 370, column: 2, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2936, file: !3, line: 370, column: 2)
!2968 = !DILocation(line: 371, column: 2, scope: !2936)
!2969 = !DILocalVariable(name: "__mptr", scope: !2970, file: !3, line: 373, type: !96)
!2970 = distinct !DILexicalBlock(scope: !2971, file: !3, line: 373, column: 2)
!2971 = distinct !DILexicalBlock(scope: !2936, file: !3, line: 373, column: 2)
!2972 = !DILocation(line: 373, column: 2, scope: !2970)
!2973 = !DILocation(line: 373, column: 2, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2970, file: !3, line: 373, column: 2)
!2975 = !DILocation(line: 373, column: 2, scope: !2971)
!2976 = !DILocation(line: 373, column: 2, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2971, file: !3, line: 373, column: 2)
!2978 = !DILocation(line: 374, column: 7, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2980, file: !3, line: 374, column: 7)
!2980 = distinct !DILexicalBlock(scope: !2977, file: !3, line: 373, column: 57)
!2981 = !DILocation(line: 374, column: 7, scope: !2980)
!2982 = !DILocation(line: 375, column: 8, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2979, file: !3, line: 375, column: 8)
!2984 = !DILocation(line: 375, column: 20, scope: !2983)
!2985 = !DILocation(line: 375, column: 31, scope: !2983)
!2986 = !DILocation(line: 375, column: 37, scope: !2983)
!2987 = !DILocation(line: 375, column: 29, scope: !2983)
!2988 = !DILocation(line: 375, column: 8, scope: !2979)
!2989 = !DILocation(line: 376, column: 28, scope: !2983)
!2990 = !DILocation(line: 376, column: 34, scope: !2983)
!2991 = !DILocation(line: 376, column: 5, scope: !2983)
!2992 = !DILocation(line: 376, column: 17, scope: !2983)
!2993 = !DILocation(line: 376, column: 26, scope: !2983)
!2994 = !DILocation(line: 377, column: 2, scope: !2980)
!2995 = !DILocalVariable(name: "__mptr", scope: !2996, file: !3, line: 373, type: !96)
!2996 = distinct !DILexicalBlock(scope: !2977, file: !3, line: 373, column: 2)
!2997 = !DILocation(line: 373, column: 2, scope: !2996)
!2998 = !DILocation(line: 373, column: 2, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2996, file: !3, line: 373, column: 2)
!3000 = distinct !{!3000, !2975, !3001}
!3001 = !DILocation(line: 377, column: 2, scope: !2971)
!3002 = !DILocation(line: 378, column: 2, scope: !2936)
!3003 = !DILocation(line: 378, column: 14, scope: !2936)
!3004 = !DILocation(line: 378, column: 22, scope: !2936)
!3005 = !DILocation(line: 379, column: 6, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !2936, file: !3, line: 379, column: 6)
!3007 = !DILocation(line: 379, column: 18, scope: !3006)
!3008 = !DILocation(line: 379, column: 27, scope: !3006)
!3009 = !DILocation(line: 379, column: 6, scope: !2936)
!3010 = !DILocation(line: 380, column: 3, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !3006, file: !3, line: 379, column: 55)
!3012 = !DILocation(line: 382, column: 3, scope: !3011)
!3013 = !DILocation(line: 385, column: 2, scope: !2936)
!3014 = !DILocation(line: 386, column: 2, scope: !2936)
!3015 = !DILocation(line: 386, column: 14, scope: !2936)
!3016 = !DILocation(line: 386, column: 42, scope: !2936)
!3017 = !DILocation(line: 387, column: 6, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !2936, file: !3, line: 387, column: 6)
!3019 = !DILocation(line: 387, column: 18, scope: !3018)
!3020 = !DILocation(line: 387, column: 27, scope: !3018)
!3021 = !DILocation(line: 387, column: 31, scope: !3018)
!3022 = !DILocation(line: 387, column: 35, scope: !3018)
!3023 = !DILocation(line: 387, column: 47, scope: !3018)
!3024 = !DILocation(line: 387, column: 56, scope: !3018)
!3025 = !DILocation(line: 387, column: 61, scope: !3018)
!3026 = !DILocation(line: 389, column: 8, scope: !3018)
!3027 = !DILocation(line: 389, column: 22, scope: !3018)
!3028 = !DILocation(line: 388, column: 8, scope: !3018)
!3029 = !DILocation(line: 387, column: 6, scope: !2936)
!3030 = !DILocation(line: 390, column: 12, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !3018, file: !3, line: 389, column: 47)
!3032 = !DILocation(line: 391, column: 5, scope: !3031)
!3033 = !DILocation(line: 391, column: 17, scope: !3031)
!3034 = !DILocation(line: 390, column: 3, scope: !3031)
!3035 = !DILocation(line: 392, column: 10, scope: !3031)
!3036 = !DILocation(line: 392, column: 22, scope: !3031)
!3037 = !DILocation(line: 392, column: 32, scope: !3031)
!3038 = !DILocation(line: 392, column: 3, scope: !3031)
!3039 = !DILocation(line: 393, column: 2, scope: !3031)
!3040 = !DILocation(line: 395, column: 26, scope: !2936)
!3041 = !DILocation(line: 395, column: 40, scope: !2936)
!3042 = !DILocation(line: 395, column: 2, scope: !2936)
!3043 = !DILocation(line: 395, column: 14, scope: !2936)
!3044 = !DILocation(line: 395, column: 19, scope: !2936)
!3045 = !DILocation(line: 395, column: 24, scope: !2936)
!3046 = !DILocation(line: 396, column: 2, scope: !2936)
!3047 = !DILocation(line: 396, column: 14, scope: !2936)
!3048 = !DILocation(line: 396, column: 19, scope: !2936)
!3049 = !DILocation(line: 396, column: 24, scope: !2936)
!3050 = !DILocation(line: 397, column: 31, scope: !2936)
!3051 = !DILocation(line: 397, column: 43, scope: !2936)
!3052 = !DILocation(line: 397, column: 2, scope: !2936)
!3053 = !DILocation(line: 397, column: 14, scope: !2936)
!3054 = !DILocation(line: 397, column: 19, scope: !2936)
!3055 = !DILocation(line: 397, column: 24, scope: !2936)
!3056 = !DILocation(line: 397, column: 29, scope: !2936)
!3057 = !DILocation(line: 398, column: 2, scope: !2936)
!3058 = !DILocation(line: 398, column: 14, scope: !2936)
!3059 = !DILocation(line: 398, column: 19, scope: !2936)
!3060 = !DILocation(line: 398, column: 24, scope: !2936)
!3061 = !DILocation(line: 398, column: 29, scope: !2936)
!3062 = !DILocation(line: 400, column: 31, scope: !2936)
!3063 = !DILocation(line: 400, column: 44, scope: !2936)
!3064 = !DILocation(line: 400, column: 56, scope: !2936)
!3065 = !DILocation(line: 400, column: 9, scope: !2936)
!3066 = !DILocation(line: 400, column: 2, scope: !2936)
!3067 = !DILocation(line: 401, column: 1, scope: !2936)
!3068 = distinct !DISubprogram(name: "list_add_tail", scope: !3069, file: !3069, line: 98, type: !3070, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3069 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!3070 = !DISubroutineType(types: !3071)
!3071 = !{null, !141, !141}
!3072 = !DILocalVariable(name: "new", arg: 1, scope: !3068, file: !3069, line: 98, type: !141)
!3073 = !DILocation(line: 98, column: 52, scope: !3068)
!3074 = !DILocalVariable(name: "head", arg: 2, scope: !3068, file: !3069, line: 98, type: !141)
!3075 = !DILocation(line: 98, column: 75, scope: !3068)
!3076 = !DILocation(line: 100, column: 13, scope: !3068)
!3077 = !DILocation(line: 100, column: 18, scope: !3068)
!3078 = !DILocation(line: 100, column: 24, scope: !3068)
!3079 = !DILocation(line: 100, column: 30, scope: !3068)
!3080 = !DILocation(line: 100, column: 2, scope: !3068)
!3081 = !DILocation(line: 101, column: 1, scope: !3068)
!3082 = distinct !DISubprogram(name: "acpi_gpe_set_masked_gpes", scope: !3, file: !3, line: 825, type: !2532, scopeLine: 826, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3083 = !DILocalVariable(name: "val", arg: 1, scope: !3082, file: !3, line: 825, type: !192)
!3084 = !DILocation(line: 825, column: 50, scope: !3082)
!3085 = !DILocalVariable(name: "gpe", scope: !3082, file: !3, line: 827, type: !776)
!3086 = !DILocation(line: 827, column: 5, scope: !3082)
!3087 = !DILocation(line: 829, column: 15, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3082, file: !3, line: 829, column: 6)
!3089 = !DILocation(line: 829, column: 6, scope: !3088)
!3090 = !DILocation(line: 829, column: 6, scope: !3082)
!3091 = !DILocation(line: 830, column: 3, scope: !3088)
!3092 = !DILocation(line: 831, column: 10, scope: !3082)
!3093 = !DILocation(line: 831, column: 2, scope: !3082)
!3094 = !DILocation(line: 833, column: 2, scope: !3082)
!3095 = !DILocation(line: 834, column: 1, scope: !3082)
!3096 = distinct !DISubprogram(name: "acpi_gpe_apply_masked_gpes", scope: !3, file: !3, line: 837, type: !3097, scopeLine: 838, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3097 = !DISubroutineType(types: !3098)
!3098 = !{null}
!3099 = !DILocalVariable(name: "handle", scope: !3096, file: !3, line: 839, type: !1627)
!3100 = !DILocation(line: 839, column: 14, scope: !3096)
!3101 = !DILocalVariable(name: "status", scope: !3096, file: !3, line: 840, type: !90)
!3102 = !DILocation(line: 840, column: 14, scope: !3096)
!3103 = !DILocalVariable(name: "gpe", scope: !3096, file: !3, line: 841, type: !615)
!3104 = !DILocation(line: 841, column: 6, scope: !3096)
!3105 = !DILocation(line: 843, column: 2, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3096, file: !3, line: 843, column: 2)
!3107 = !DILocation(line: 843, column: 2, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !3106, file: !3, line: 843, column: 2)
!3109 = !DILocation(line: 844, column: 32, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3108, file: !3, line: 843, column: 69)
!3111 = !DILocation(line: 844, column: 12, scope: !3110)
!3112 = !DILocation(line: 844, column: 10, scope: !3110)
!3113 = !DILocation(line: 845, column: 7, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3110, file: !3, line: 845, column: 7)
!3115 = !DILocation(line: 845, column: 7, scope: !3110)
!3116 = !DILocation(line: 846, column: 4, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3114, file: !3, line: 845, column: 29)
!3118 = !DILocation(line: 847, column: 24, scope: !3117)
!3119 = !DILocation(line: 847, column: 32, scope: !3117)
!3120 = !DILocation(line: 847, column: 10, scope: !3117)
!3121 = !DILocation(line: 848, column: 3, scope: !3117)
!3122 = !DILocation(line: 849, column: 2, scope: !3110)
!3123 = distinct !{!3123, !3105, !3124}
!3124 = !DILocation(line: 849, column: 2, scope: !3106)
!3125 = !DILocation(line: 850, column: 1, scope: !3096)
!3126 = distinct !DISubprogram(name: "acpi_irq_stats_init", scope: !3, file: !3, line: 852, type: !3097, scopeLine: 853, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3127 = !DILocalVariable(name: "status", scope: !3126, file: !3, line: 854, type: !90)
!3128 = !DILocation(line: 854, column: 14, scope: !3126)
!3129 = !DILocalVariable(name: "i", scope: !3126, file: !3, line: 855, type: !176)
!3130 = !DILocation(line: 855, column: 6, scope: !3126)
!3131 = !DILocation(line: 857, column: 6, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3126, file: !3, line: 857, column: 6)
!3133 = !DILocation(line: 857, column: 6, scope: !3126)
!3134 = !DILocation(line: 858, column: 3, scope: !3132)
!3135 = !DILocation(line: 860, column: 13, scope: !3126)
!3136 = !DILocation(line: 860, column: 11, scope: !3126)
!3137 = !DILocation(line: 861, column: 17, scope: !3126)
!3138 = !DILocation(line: 861, column: 26, scope: !3126)
!3139 = !DILocation(line: 861, column: 28, scope: !3126)
!3140 = !DILocation(line: 861, column: 50, scope: !3126)
!3141 = !DILocation(line: 861, column: 15, scope: !3126)
!3142 = !DILocation(line: 863, column: 22, scope: !3126)
!3143 = !DILocation(line: 863, column: 35, scope: !3126)
!3144 = !DILocation(line: 863, column: 14, scope: !3126)
!3145 = !DILocation(line: 863, column: 12, scope: !3126)
!3146 = !DILocation(line: 865, column: 6, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3126, file: !3, line: 865, column: 6)
!3148 = !DILocation(line: 865, column: 16, scope: !3147)
!3149 = !DILocation(line: 865, column: 6, scope: !3126)
!3150 = !DILocation(line: 866, column: 3, scope: !3147)
!3151 = !DILocation(line: 868, column: 25, scope: !3126)
!3152 = !DILocation(line: 868, column: 17, scope: !3126)
!3153 = !DILocation(line: 868, column: 15, scope: !3126)
!3154 = !DILocation(line: 870, column: 6, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3126, file: !3, line: 870, column: 6)
!3156 = !DILocation(line: 870, column: 19, scope: !3155)
!3157 = !DILocation(line: 870, column: 6, scope: !3126)
!3158 = !DILocation(line: 871, column: 3, scope: !3155)
!3159 = !DILocation(line: 873, column: 11, scope: !3126)
!3160 = !DILocation(line: 873, column: 9, scope: !3126)
!3161 = !DILocation(line: 874, column: 6, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !3126, file: !3, line: 874, column: 6)
!3163 = !DILocation(line: 874, column: 6, scope: !3126)
!3164 = !DILocation(line: 875, column: 3, scope: !3162)
!3165 = !DILocation(line: 877, column: 26, scope: !3126)
!3166 = !DILocation(line: 877, column: 18, scope: !3126)
!3167 = !DILocation(line: 877, column: 16, scope: !3126)
!3168 = !DILocation(line: 879, column: 6, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !3126, file: !3, line: 879, column: 6)
!3170 = !DILocation(line: 879, column: 20, scope: !3169)
!3171 = !DILocation(line: 879, column: 6, scope: !3126)
!3172 = !DILocation(line: 880, column: 3, scope: !3169)
!3173 = !DILocation(line: 882, column: 9, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3126, file: !3, line: 882, column: 2)
!3175 = !DILocation(line: 882, column: 7, scope: !3174)
!3176 = !DILocation(line: 882, column: 14, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3174, file: !3, line: 882, column: 2)
!3178 = !DILocation(line: 882, column: 18, scope: !3177)
!3179 = !DILocation(line: 882, column: 16, scope: !3177)
!3180 = !DILocation(line: 882, column: 2, scope: !3174)
!3181 = !DILocalVariable(name: "buffer", scope: !3182, file: !3, line: 883, type: !3183)
!3182 = distinct !DILexicalBlock(scope: !3177, file: !3, line: 882, column: 37)
!3183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 96, elements: !1437)
!3184 = !DILocation(line: 883, column: 8, scope: !3182)
!3185 = !DILocalVariable(name: "name", scope: !3182, file: !3, line: 884, type: !192)
!3186 = !DILocation(line: 884, column: 9, scope: !3182)
!3187 = !DILocation(line: 886, column: 7, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3182, file: !3, line: 886, column: 7)
!3189 = !DILocation(line: 886, column: 11, scope: !3188)
!3190 = !DILocation(line: 886, column: 9, scope: !3188)
!3191 = !DILocation(line: 886, column: 7, scope: !3182)
!3192 = !DILocation(line: 887, column: 12, scope: !3188)
!3193 = !DILocation(line: 887, column: 31, scope: !3188)
!3194 = !DILocation(line: 887, column: 4, scope: !3188)
!3195 = !DILocation(line: 888, column: 12, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3188, file: !3, line: 888, column: 12)
!3197 = !DILocation(line: 888, column: 17, scope: !3196)
!3198 = !DILocation(line: 888, column: 26, scope: !3196)
!3199 = !DILocation(line: 888, column: 14, scope: !3196)
!3200 = !DILocation(line: 888, column: 12, scope: !3188)
!3201 = !DILocation(line: 889, column: 12, scope: !3196)
!3202 = !DILocation(line: 889, column: 4, scope: !3196)
!3203 = !DILocation(line: 890, column: 12, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3196, file: !3, line: 890, column: 12)
!3205 = !DILocation(line: 890, column: 17, scope: !3204)
!3206 = !DILocation(line: 890, column: 26, scope: !3204)
!3207 = !DILocation(line: 890, column: 14, scope: !3204)
!3208 = !DILocation(line: 890, column: 12, scope: !3196)
!3209 = !DILocation(line: 891, column: 12, scope: !3204)
!3210 = !DILocation(line: 891, column: 4, scope: !3204)
!3211 = !DILocation(line: 892, column: 12, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3204, file: !3, line: 892, column: 12)
!3213 = !DILocation(line: 892, column: 17, scope: !3212)
!3214 = !DILocation(line: 892, column: 26, scope: !3212)
!3215 = !DILocation(line: 892, column: 14, scope: !3212)
!3216 = !DILocation(line: 892, column: 12, scope: !3204)
!3217 = !DILocation(line: 893, column: 12, scope: !3212)
!3218 = !DILocation(line: 893, column: 4, scope: !3212)
!3219 = !DILocation(line: 894, column: 12, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3212, file: !3, line: 894, column: 12)
!3221 = !DILocation(line: 894, column: 17, scope: !3220)
!3222 = !DILocation(line: 894, column: 26, scope: !3220)
!3223 = !DILocation(line: 894, column: 14, scope: !3220)
!3224 = !DILocation(line: 894, column: 12, scope: !3212)
!3225 = !DILocation(line: 895, column: 12, scope: !3220)
!3226 = !DILocation(line: 895, column: 4, scope: !3220)
!3227 = !DILocation(line: 896, column: 12, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !3220, file: !3, line: 896, column: 12)
!3229 = !DILocation(line: 896, column: 17, scope: !3228)
!3230 = !DILocation(line: 896, column: 26, scope: !3228)
!3231 = !DILocation(line: 896, column: 14, scope: !3228)
!3232 = !DILocation(line: 896, column: 12, scope: !3220)
!3233 = !DILocation(line: 897, column: 12, scope: !3228)
!3234 = !DILocation(line: 897, column: 4, scope: !3228)
!3235 = !DILocation(line: 898, column: 12, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3228, file: !3, line: 898, column: 12)
!3237 = !DILocation(line: 898, column: 17, scope: !3236)
!3238 = !DILocation(line: 898, column: 26, scope: !3236)
!3239 = !DILocation(line: 898, column: 28, scope: !3236)
!3240 = !DILocation(line: 898, column: 50, scope: !3236)
!3241 = !DILocation(line: 898, column: 14, scope: !3236)
!3242 = !DILocation(line: 898, column: 12, scope: !3228)
!3243 = !DILocation(line: 899, column: 12, scope: !3236)
!3244 = !DILocation(line: 899, column: 4, scope: !3236)
!3245 = !DILocation(line: 900, column: 12, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3236, file: !3, line: 900, column: 12)
!3247 = !DILocation(line: 900, column: 17, scope: !3246)
!3248 = !DILocation(line: 900, column: 26, scope: !3246)
!3249 = !DILocation(line: 900, column: 28, scope: !3246)
!3250 = !DILocation(line: 900, column: 50, scope: !3246)
!3251 = !DILocation(line: 900, column: 14, scope: !3246)
!3252 = !DILocation(line: 900, column: 12, scope: !3236)
!3253 = !DILocation(line: 901, column: 12, scope: !3246)
!3254 = !DILocation(line: 901, column: 4, scope: !3246)
!3255 = !DILocation(line: 902, column: 12, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3246, file: !3, line: 902, column: 12)
!3257 = !DILocation(line: 902, column: 17, scope: !3256)
!3258 = !DILocation(line: 902, column: 26, scope: !3256)
!3259 = !DILocation(line: 902, column: 28, scope: !3256)
!3260 = !DILocation(line: 902, column: 50, scope: !3256)
!3261 = !DILocation(line: 902, column: 14, scope: !3256)
!3262 = !DILocation(line: 902, column: 12, scope: !3246)
!3263 = !DILocation(line: 903, column: 12, scope: !3256)
!3264 = !DILocation(line: 903, column: 4, scope: !3256)
!3265 = !DILocation(line: 904, column: 12, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3256, file: !3, line: 904, column: 12)
!3267 = !DILocation(line: 904, column: 17, scope: !3266)
!3268 = !DILocation(line: 904, column: 26, scope: !3266)
!3269 = !DILocation(line: 904, column: 28, scope: !3266)
!3270 = !DILocation(line: 904, column: 50, scope: !3266)
!3271 = !DILocation(line: 904, column: 14, scope: !3266)
!3272 = !DILocation(line: 904, column: 12, scope: !3256)
!3273 = !DILocation(line: 905, column: 12, scope: !3266)
!3274 = !DILocation(line: 905, column: 4, scope: !3266)
!3275 = !DILocation(line: 907, column: 12, scope: !3266)
!3276 = !DILocation(line: 907, column: 31, scope: !3266)
!3277 = !DILocation(line: 907, column: 4, scope: !3266)
!3278 = !DILocation(line: 909, column: 18, scope: !3182)
!3279 = !DILocation(line: 909, column: 10, scope: !3182)
!3280 = !DILocation(line: 909, column: 8, scope: !3182)
!3281 = !DILocation(line: 910, column: 7, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3182, file: !3, line: 910, column: 7)
!3283 = !DILocation(line: 910, column: 12, scope: !3282)
!3284 = !DILocation(line: 910, column: 7, scope: !3182)
!3285 = !DILocation(line: 911, column: 4, scope: !3282)
!3286 = !DILocation(line: 913, column: 3, scope: !3182)
!3287 = !DILocation(line: 913, column: 3, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !3182, file: !3, line: 913, column: 3)
!3289 = !DILocation(line: 914, column: 32, scope: !3182)
!3290 = !DILocation(line: 914, column: 3, scope: !3182)
!3291 = !DILocation(line: 914, column: 17, scope: !3182)
!3292 = !DILocation(line: 914, column: 20, scope: !3182)
!3293 = !DILocation(line: 914, column: 25, scope: !3182)
!3294 = !DILocation(line: 914, column: 30, scope: !3182)
!3295 = !DILocation(line: 915, column: 3, scope: !3182)
!3296 = !DILocation(line: 915, column: 17, scope: !3182)
!3297 = !DILocation(line: 915, column: 20, scope: !3182)
!3298 = !DILocation(line: 915, column: 25, scope: !3182)
!3299 = !DILocation(line: 915, column: 30, scope: !3182)
!3300 = !DILocation(line: 916, column: 3, scope: !3182)
!3301 = !DILocation(line: 916, column: 17, scope: !3182)
!3302 = !DILocation(line: 916, column: 20, scope: !3182)
!3303 = !DILocation(line: 916, column: 25, scope: !3182)
!3304 = !DILocation(line: 917, column: 3, scope: !3182)
!3305 = !DILocation(line: 917, column: 17, scope: !3182)
!3306 = !DILocation(line: 917, column: 20, scope: !3182)
!3307 = !DILocation(line: 917, column: 26, scope: !3182)
!3308 = !DILocation(line: 919, column: 19, scope: !3182)
!3309 = !DILocation(line: 919, column: 33, scope: !3182)
!3310 = !DILocation(line: 919, column: 36, scope: !3182)
!3311 = !DILocation(line: 919, column: 3, scope: !3182)
!3312 = !DILocation(line: 919, column: 13, scope: !3182)
!3313 = !DILocation(line: 919, column: 16, scope: !3182)
!3314 = !DILocation(line: 920, column: 2, scope: !3182)
!3315 = !DILocation(line: 882, column: 32, scope: !3177)
!3316 = !DILocation(line: 882, column: 2, scope: !3177)
!3317 = distinct !{!3317, !3180, !3318}
!3318 = !DILocation(line: 920, column: 2, scope: !3174)
!3319 = !DILocation(line: 922, column: 37, scope: !3126)
!3320 = !DILocation(line: 922, column: 35, scope: !3126)
!3321 = !DILocation(line: 923, column: 26, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3126, file: !3, line: 923, column: 6)
!3323 = !DILocation(line: 923, column: 7, scope: !3322)
!3324 = !DILocation(line: 923, column: 6, scope: !3126)
!3325 = !DILocation(line: 924, column: 3, scope: !3322)
!3326 = !DILocation(line: 923, column: 64, scope: !3322)
!3327 = !DILabel(scope: !3126, name: "fail", file: !3, line: 926)
!3328 = !DILocation(line: 926, column: 1, scope: !3126)
!3329 = !DILocation(line: 927, column: 2, scope: !3126)
!3330 = !DILocation(line: 928, column: 2, scope: !3126)
!3331 = !DILocation(line: 929, column: 1, scope: !3126)
!3332 = distinct !DISubprogram(name: "kcalloc", scope: !76, file: !76, line: 601, type: !3333, scopeLine: 602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3333 = !DISubroutineType(types: !3334)
!3334 = !{!96, !116, !116, !88}
!3335 = !DILocalVariable(name: "n", arg: 1, scope: !3332, file: !76, line: 601, type: !116)
!3336 = !DILocation(line: 601, column: 36, scope: !3332)
!3337 = !DILocalVariable(name: "size", arg: 2, scope: !3332, file: !76, line: 601, type: !116)
!3338 = !DILocation(line: 601, column: 46, scope: !3332)
!3339 = !DILocalVariable(name: "flags", arg: 3, scope: !3332, file: !76, line: 601, type: !88)
!3340 = !DILocation(line: 601, column: 58, scope: !3332)
!3341 = !DILocation(line: 603, column: 23, scope: !3332)
!3342 = !DILocation(line: 603, column: 26, scope: !3332)
!3343 = !DILocation(line: 603, column: 32, scope: !3332)
!3344 = !DILocation(line: 603, column: 38, scope: !3332)
!3345 = !DILocation(line: 603, column: 9, scope: !3332)
!3346 = !DILocation(line: 603, column: 2, scope: !3332)
!3347 = distinct !DISubprogram(name: "acpi_global_event_handler", scope: !3, file: !3, line: 637, type: !3348, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{null, !92, !1627, !92, !96}
!3350 = !DILocalVariable(name: "event_type", arg: 1, scope: !3347, file: !3, line: 637, type: !92)
!3351 = !DILocation(line: 637, column: 43, scope: !3347)
!3352 = !DILocalVariable(name: "device", arg: 2, scope: !3347, file: !3, line: 637, type: !1627)
!3353 = !DILocation(line: 637, column: 67, scope: !3347)
!3354 = !DILocalVariable(name: "event_number", arg: 3, scope: !3347, file: !3, line: 638, type: !92)
!3355 = !DILocation(line: 638, column: 6, scope: !3347)
!3356 = !DILocalVariable(name: "context", arg: 4, scope: !3347, file: !3, line: 638, type: !96)
!3357 = !DILocation(line: 638, column: 26, scope: !3347)
!3358 = !DILocation(line: 640, column: 6, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3347, file: !3, line: 640, column: 6)
!3360 = !DILocation(line: 640, column: 17, scope: !3359)
!3361 = !DILocation(line: 640, column: 6, scope: !3347)
!3362 = !DILocation(line: 641, column: 13, scope: !3363)
!3363 = distinct !DILexicalBlock(scope: !3359, file: !3, line: 640, column: 41)
!3364 = !DILocation(line: 641, column: 3, scope: !3363)
!3365 = !DILocation(line: 642, column: 3, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !3367, file: !3, line: 642, column: 3)
!3367 = distinct !DILexicalBlock(scope: !3363, file: !3, line: 642, column: 3)
!3368 = !DILocation(line: 642, column: 3, scope: !3367)
!3369 = !DILocation(line: 643, column: 2, scope: !3363)
!3370 = !DILocation(line: 643, column: 13, scope: !3371)
!3371 = distinct !DILexicalBlock(scope: !3359, file: !3, line: 643, column: 13)
!3372 = !DILocation(line: 643, column: 24, scope: !3371)
!3373 = !DILocation(line: 643, column: 13, scope: !3359)
!3374 = !DILocation(line: 644, column: 21, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3371, file: !3, line: 643, column: 50)
!3376 = !DILocation(line: 644, column: 3, scope: !3375)
!3377 = !DILocation(line: 645, column: 3, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3379, file: !3, line: 645, column: 3)
!3379 = distinct !DILexicalBlock(scope: !3375, file: !3, line: 645, column: 3)
!3380 = !DILocation(line: 645, column: 3, scope: !3379)
!3381 = !DILocation(line: 646, column: 2, scope: !3375)
!3382 = !DILocation(line: 647, column: 3, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !3384, file: !3, line: 647, column: 3)
!3384 = distinct !DILexicalBlock(scope: !3385, file: !3, line: 647, column: 3)
!3385 = distinct !DILexicalBlock(scope: !3371, file: !3, line: 646, column: 9)
!3386 = !DILocation(line: 647, column: 3, scope: !3384)
!3387 = !DILocation(line: 649, column: 1, scope: !3347)
!3388 = distinct !DISubprogram(name: "counter_show", scope: !3, file: !3, line: 676, type: !2564, scopeLine: 678, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3389 = !DILocalVariable(name: "kobj", arg: 1, scope: !3388, file: !3, line: 676, type: !133)
!3390 = !DILocation(line: 676, column: 45, scope: !3388)
!3391 = !DILocalVariable(name: "attr", arg: 2, scope: !3388, file: !3, line: 677, type: !2558)
!3392 = !DILocation(line: 677, column: 31, scope: !3388)
!3393 = !DILocalVariable(name: "buf", arg: 3, scope: !3388, file: !3, line: 677, type: !192)
!3394 = !DILocation(line: 677, column: 43, scope: !3388)
!3395 = !DILocalVariable(name: "index", scope: !3388, file: !3, line: 679, type: !176)
!3396 = !DILocation(line: 679, column: 6, scope: !3388)
!3397 = !DILocation(line: 679, column: 14, scope: !3388)
!3398 = !DILocation(line: 679, column: 21, scope: !3388)
!3399 = !DILocation(line: 679, column: 19, scope: !3388)
!3400 = !DILocalVariable(name: "size", scope: !3388, file: !3, line: 680, type: !176)
!3401 = !DILocation(line: 680, column: 6, scope: !3388)
!3402 = !DILocalVariable(name: "handle", scope: !3388, file: !3, line: 681, type: !1627)
!3403 = !DILocation(line: 681, column: 14, scope: !3388)
!3404 = !DILocalVariable(name: "status", scope: !3388, file: !3, line: 682, type: !1611)
!3405 = !DILocation(line: 682, column: 20, scope: !3388)
!3406 = !DILocalVariable(name: "result", scope: !3388, file: !3, line: 683, type: !176)
!3407 = !DILocation(line: 683, column: 6, scope: !3388)
!3408 = !DILocation(line: 686, column: 6, scope: !3388)
!3409 = !DILocation(line: 685, column: 2, scope: !3388)
!3410 = !DILocation(line: 685, column: 15, scope: !3388)
!3411 = !DILocation(line: 685, column: 24, scope: !3388)
!3412 = !DILocation(line: 685, column: 26, scope: !3388)
!3413 = !DILocation(line: 685, column: 48, scope: !3388)
!3414 = !DILocation(line: 685, column: 61, scope: !3388)
!3415 = !DILocation(line: 685, column: 67, scope: !3388)
!3416 = !DILocation(line: 688, column: 6, scope: !3388)
!3417 = !DILocation(line: 687, column: 2, scope: !3388)
!3418 = !DILocation(line: 687, column: 15, scope: !3388)
!3419 = !DILocation(line: 687, column: 24, scope: !3388)
!3420 = !DILocation(line: 687, column: 26, scope: !3388)
!3421 = !DILocation(line: 687, column: 48, scope: !3388)
!3422 = !DILocation(line: 687, column: 65, scope: !3388)
!3423 = !DILocation(line: 687, column: 71, scope: !3388)
!3424 = !DILocation(line: 690, column: 6, scope: !3388)
!3425 = !DILocation(line: 689, column: 2, scope: !3388)
!3426 = !DILocation(line: 689, column: 15, scope: !3388)
!3427 = !DILocation(line: 689, column: 24, scope: !3388)
!3428 = !DILocation(line: 689, column: 26, scope: !3388)
!3429 = !DILocation(line: 689, column: 48, scope: !3388)
!3430 = !DILocation(line: 689, column: 61, scope: !3388)
!3431 = !DILocation(line: 689, column: 67, scope: !3388)
!3432 = !DILocation(line: 691, column: 17, scope: !3388)
!3433 = !DILocation(line: 691, column: 29, scope: !3388)
!3434 = !DILocation(line: 691, column: 42, scope: !3388)
!3435 = !DILocation(line: 691, column: 49, scope: !3388)
!3436 = !DILocation(line: 691, column: 9, scope: !3388)
!3437 = !DILocation(line: 691, column: 7, scope: !3388)
!3438 = !DILocation(line: 694, column: 6, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3388, file: !3, line: 694, column: 6)
!3440 = !DILocation(line: 694, column: 15, scope: !3439)
!3441 = !DILocation(line: 694, column: 24, scope: !3439)
!3442 = !DILocation(line: 694, column: 26, scope: !3439)
!3443 = !DILocation(line: 694, column: 12, scope: !3439)
!3444 = !DILocation(line: 694, column: 6, scope: !3388)
!3445 = !DILocation(line: 695, column: 3, scope: !3439)
!3446 = !DILocation(line: 697, column: 22, scope: !3388)
!3447 = !DILocation(line: 697, column: 11, scope: !3388)
!3448 = !DILocation(line: 697, column: 9, scope: !3388)
!3449 = !DILocation(line: 698, column: 6, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !3388, file: !3, line: 698, column: 6)
!3451 = !DILocation(line: 698, column: 6, scope: !3388)
!3452 = !DILocation(line: 699, column: 3, scope: !3450)
!3453 = !DILocation(line: 701, column: 6, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !3388, file: !3, line: 701, column: 6)
!3455 = !DILocation(line: 701, column: 13, scope: !3454)
!3456 = !DILocation(line: 701, column: 6, scope: !3388)
!3457 = !DILocation(line: 702, column: 19, scope: !3454)
!3458 = !DILocation(line: 702, column: 25, scope: !3454)
!3459 = !DILocation(line: 702, column: 23, scope: !3454)
!3460 = !DILocation(line: 702, column: 11, scope: !3454)
!3461 = !DILocation(line: 702, column: 8, scope: !3454)
!3462 = !DILocation(line: 702, column: 3, scope: !3454)
!3463 = !DILocation(line: 704, column: 19, scope: !3454)
!3464 = !DILocation(line: 704, column: 25, scope: !3454)
!3465 = !DILocation(line: 704, column: 23, scope: !3454)
!3466 = !DILocation(line: 704, column: 11, scope: !3454)
!3467 = !DILocation(line: 704, column: 8, scope: !3454)
!3468 = !DILocation(line: 705, column: 6, scope: !3469)
!3469 = distinct !DILexicalBlock(scope: !3388, file: !3, line: 705, column: 6)
!3470 = !DILocation(line: 705, column: 13, scope: !3469)
!3471 = !DILocation(line: 705, column: 6, scope: !3388)
!3472 = !DILocation(line: 706, column: 19, scope: !3469)
!3473 = !DILocation(line: 706, column: 25, scope: !3469)
!3474 = !DILocation(line: 706, column: 23, scope: !3469)
!3475 = !DILocation(line: 706, column: 11, scope: !3469)
!3476 = !DILocation(line: 706, column: 8, scope: !3469)
!3477 = !DILocation(line: 706, column: 3, scope: !3469)
!3478 = !DILocation(line: 708, column: 19, scope: !3469)
!3479 = !DILocation(line: 708, column: 25, scope: !3469)
!3480 = !DILocation(line: 708, column: 23, scope: !3469)
!3481 = !DILocation(line: 708, column: 11, scope: !3469)
!3482 = !DILocation(line: 708, column: 8, scope: !3469)
!3483 = !DILocation(line: 710, column: 8, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3388, file: !3, line: 710, column: 6)
!3485 = !DILocation(line: 710, column: 15, scope: !3484)
!3486 = !DILocation(line: 710, column: 6, scope: !3388)
!3487 = !DILocation(line: 711, column: 19, scope: !3484)
!3488 = !DILocation(line: 711, column: 25, scope: !3484)
!3489 = !DILocation(line: 711, column: 23, scope: !3484)
!3490 = !DILocation(line: 711, column: 11, scope: !3484)
!3491 = !DILocation(line: 711, column: 8, scope: !3484)
!3492 = !DILocation(line: 711, column: 3, scope: !3484)
!3493 = !DILocation(line: 712, column: 11, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !3484, file: !3, line: 712, column: 11)
!3495 = !DILocation(line: 712, column: 18, scope: !3494)
!3496 = !DILocation(line: 712, column: 11, scope: !3484)
!3497 = !DILocation(line: 713, column: 19, scope: !3494)
!3498 = !DILocation(line: 713, column: 25, scope: !3494)
!3499 = !DILocation(line: 713, column: 23, scope: !3494)
!3500 = !DILocation(line: 713, column: 11, scope: !3494)
!3501 = !DILocation(line: 713, column: 8, scope: !3494)
!3502 = !DILocation(line: 713, column: 3, scope: !3494)
!3503 = !DILocation(line: 714, column: 11, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3494, file: !3, line: 714, column: 11)
!3505 = !DILocation(line: 714, column: 18, scope: !3504)
!3506 = !DILocation(line: 714, column: 11, scope: !3494)
!3507 = !DILocation(line: 715, column: 19, scope: !3504)
!3508 = !DILocation(line: 715, column: 25, scope: !3504)
!3509 = !DILocation(line: 715, column: 23, scope: !3504)
!3510 = !DILocation(line: 715, column: 11, scope: !3504)
!3511 = !DILocation(line: 715, column: 8, scope: !3504)
!3512 = !DILocation(line: 715, column: 3, scope: !3504)
!3513 = !DILocation(line: 717, column: 19, scope: !3504)
!3514 = !DILocation(line: 717, column: 25, scope: !3504)
!3515 = !DILocation(line: 717, column: 23, scope: !3504)
!3516 = !DILocation(line: 717, column: 11, scope: !3504)
!3517 = !DILocation(line: 717, column: 8, scope: !3504)
!3518 = !DILocation(line: 718, column: 6, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !3388, file: !3, line: 718, column: 6)
!3520 = !DILocation(line: 718, column: 13, scope: !3519)
!3521 = !DILocation(line: 718, column: 6, scope: !3388)
!3522 = !DILocation(line: 719, column: 19, scope: !3519)
!3523 = !DILocation(line: 719, column: 25, scope: !3519)
!3524 = !DILocation(line: 719, column: 23, scope: !3519)
!3525 = !DILocation(line: 719, column: 11, scope: !3519)
!3526 = !DILocation(line: 719, column: 8, scope: !3519)
!3527 = !DILocation(line: 719, column: 3, scope: !3519)
!3528 = !DILocation(line: 721, column: 19, scope: !3519)
!3529 = !DILocation(line: 721, column: 25, scope: !3519)
!3530 = !DILocation(line: 721, column: 23, scope: !3519)
!3531 = !DILocation(line: 721, column: 11, scope: !3519)
!3532 = !DILocation(line: 721, column: 8, scope: !3519)
!3533 = !DILocation(line: 718, column: 15, scope: !3519)
!3534 = !DILabel(scope: !3388, name: "end", file: !3, line: 723)
!3535 = !DILocation(line: 723, column: 1, scope: !3388)
!3536 = !DILocation(line: 724, column: 18, scope: !3388)
!3537 = !DILocation(line: 724, column: 24, scope: !3388)
!3538 = !DILocation(line: 724, column: 22, scope: !3388)
!3539 = !DILocation(line: 724, column: 10, scope: !3388)
!3540 = !DILocation(line: 724, column: 7, scope: !3388)
!3541 = !DILocation(line: 725, column: 9, scope: !3388)
!3542 = !DILocation(line: 725, column: 18, scope: !3388)
!3543 = !DILocation(line: 725, column: 27, scope: !3388)
!3544 = !DILocation(line: 725, column: 2, scope: !3388)
!3545 = distinct !DISubprogram(name: "counter_set", scope: !3, file: !3, line: 733, type: !2568, scopeLine: 736, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3546 = !DILocalVariable(name: "kobj", arg: 1, scope: !3545, file: !3, line: 733, type: !133)
!3547 = !DILocation(line: 733, column: 44, scope: !3545)
!3548 = !DILocalVariable(name: "attr", arg: 2, scope: !3545, file: !3, line: 734, type: !2558)
!3549 = !DILocation(line: 734, column: 30, scope: !3545)
!3550 = !DILocalVariable(name: "buf", arg: 3, scope: !3545, file: !3, line: 734, type: !109)
!3551 = !DILocation(line: 734, column: 48, scope: !3545)
!3552 = !DILocalVariable(name: "size", arg: 4, scope: !3545, file: !3, line: 735, type: !116)
!3553 = !DILocation(line: 735, column: 14, scope: !3545)
!3554 = !DILocalVariable(name: "index", scope: !3545, file: !3, line: 737, type: !176)
!3555 = !DILocation(line: 737, column: 6, scope: !3545)
!3556 = !DILocation(line: 737, column: 14, scope: !3545)
!3557 = !DILocation(line: 737, column: 21, scope: !3545)
!3558 = !DILocation(line: 737, column: 19, scope: !3545)
!3559 = !DILocalVariable(name: "status", scope: !3545, file: !3, line: 738, type: !1611)
!3560 = !DILocation(line: 738, column: 20, scope: !3545)
!3561 = !DILocalVariable(name: "handle", scope: !3545, file: !3, line: 739, type: !1627)
!3562 = !DILocation(line: 739, column: 14, scope: !3545)
!3563 = !DILocalVariable(name: "result", scope: !3545, file: !3, line: 740, type: !176)
!3564 = !DILocation(line: 740, column: 6, scope: !3545)
!3565 = !DILocalVariable(name: "tmp", scope: !3545, file: !3, line: 741, type: !120)
!3566 = !DILocation(line: 741, column: 16, scope: !3545)
!3567 = !DILocation(line: 743, column: 6, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3545, file: !3, line: 743, column: 6)
!3569 = !DILocation(line: 743, column: 15, scope: !3568)
!3570 = !DILocation(line: 743, column: 24, scope: !3568)
!3571 = !DILocation(line: 743, column: 26, scope: !3568)
!3572 = !DILocation(line: 743, column: 48, scope: !3568)
!3573 = !DILocation(line: 743, column: 12, scope: !3568)
!3574 = !DILocation(line: 743, column: 6, scope: !3545)
!3575 = !DILocalVariable(name: "i", scope: !3576, file: !3, line: 744, type: !176)
!3576 = distinct !DILexicalBlock(scope: !3568, file: !3, line: 743, column: 61)
!3577 = !DILocation(line: 744, column: 7, scope: !3576)
!3578 = !DILocation(line: 745, column: 10, scope: !3579)
!3579 = distinct !DILexicalBlock(scope: !3576, file: !3, line: 745, column: 3)
!3580 = !DILocation(line: 745, column: 8, scope: !3579)
!3581 = !DILocation(line: 745, column: 15, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !3579, file: !3, line: 745, column: 3)
!3583 = !DILocation(line: 745, column: 19, scope: !3582)
!3584 = !DILocation(line: 745, column: 17, scope: !3582)
!3585 = !DILocation(line: 745, column: 3, scope: !3579)
!3586 = !DILocation(line: 746, column: 4, scope: !3582)
!3587 = !DILocation(line: 746, column: 17, scope: !3582)
!3588 = !DILocation(line: 746, column: 20, scope: !3582)
!3589 = !DILocation(line: 746, column: 26, scope: !3582)
!3590 = !DILocation(line: 745, column: 33, scope: !3582)
!3591 = !DILocation(line: 745, column: 3, scope: !3582)
!3592 = distinct !{!3592, !3585, !3593}
!3593 = !DILocation(line: 746, column: 28, scope: !3579)
!3594 = !DILocation(line: 747, column: 18, scope: !3576)
!3595 = !DILocation(line: 748, column: 20, scope: !3576)
!3596 = !DILocation(line: 749, column: 24, scope: !3576)
!3597 = !DILocation(line: 750, column: 3, scope: !3576)
!3598 = !DILocation(line: 754, column: 22, scope: !3545)
!3599 = !DILocation(line: 754, column: 11, scope: !3545)
!3600 = !DILocation(line: 754, column: 9, scope: !3545)
!3601 = !DILocation(line: 755, column: 6, scope: !3602)
!3602 = distinct !DILexicalBlock(scope: !3545, file: !3, line: 755, column: 6)
!3603 = !DILocation(line: 755, column: 6, scope: !3545)
!3604 = !DILocation(line: 756, column: 3, scope: !3602)
!3605 = !DILocation(line: 758, column: 8, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3545, file: !3, line: 758, column: 6)
!3607 = !DILocation(line: 758, column: 15, scope: !3606)
!3608 = !DILocation(line: 758, column: 6, scope: !3545)
!3609 = !DILocation(line: 759, column: 3, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3606, file: !3, line: 758, column: 47)
!3611 = !DILocation(line: 761, column: 3, scope: !3610)
!3612 = !DILocation(line: 764, column: 6, scope: !3613)
!3613 = distinct !DILexicalBlock(scope: !3545, file: !3, line: 764, column: 6)
!3614 = !DILocation(line: 764, column: 14, scope: !3613)
!3615 = !DILocation(line: 764, column: 12, scope: !3613)
!3616 = !DILocation(line: 764, column: 6, scope: !3545)
!3617 = !DILocation(line: 765, column: 15, scope: !3618)
!3618 = distinct !DILexicalBlock(scope: !3619, file: !3, line: 765, column: 7)
!3619 = distinct !DILexicalBlock(scope: !3613, file: !3, line: 764, column: 24)
!3620 = !DILocation(line: 765, column: 8, scope: !3618)
!3621 = !DILocation(line: 765, column: 33, scope: !3618)
!3622 = !DILocation(line: 766, column: 8, scope: !3618)
!3623 = !DILocation(line: 766, column: 15, scope: !3618)
!3624 = !DILocation(line: 765, column: 7, scope: !3619)
!3625 = !DILocation(line: 767, column: 30, scope: !3618)
!3626 = !DILocation(line: 767, column: 38, scope: !3618)
!3627 = !DILocation(line: 767, column: 13, scope: !3618)
!3628 = !DILocation(line: 767, column: 11, scope: !3618)
!3629 = !DILocation(line: 767, column: 4, scope: !3618)
!3630 = !DILocation(line: 768, column: 20, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !3618, file: !3, line: 768, column: 12)
!3632 = !DILocation(line: 768, column: 13, scope: !3631)
!3633 = !DILocation(line: 768, column: 37, scope: !3631)
!3634 = !DILocation(line: 769, column: 7, scope: !3631)
!3635 = !DILocation(line: 769, column: 14, scope: !3631)
!3636 = !DILocation(line: 768, column: 12, scope: !3618)
!3637 = !DILocation(line: 770, column: 29, scope: !3631)
!3638 = !DILocation(line: 770, column: 37, scope: !3631)
!3639 = !DILocation(line: 770, column: 13, scope: !3631)
!3640 = !DILocation(line: 770, column: 11, scope: !3631)
!3641 = !DILocation(line: 770, column: 4, scope: !3631)
!3642 = !DILocation(line: 771, column: 20, scope: !3643)
!3643 = distinct !DILexicalBlock(scope: !3631, file: !3, line: 771, column: 12)
!3644 = !DILocation(line: 771, column: 13, scope: !3643)
!3645 = !DILocation(line: 771, column: 36, scope: !3643)
!3646 = !DILocation(line: 772, column: 6, scope: !3643)
!3647 = !DILocation(line: 772, column: 13, scope: !3643)
!3648 = !DILocation(line: 771, column: 12, scope: !3631)
!3649 = !DILocation(line: 773, column: 28, scope: !3643)
!3650 = !DILocation(line: 773, column: 36, scope: !3643)
!3651 = !DILocation(line: 773, column: 13, scope: !3643)
!3652 = !DILocation(line: 773, column: 11, scope: !3643)
!3653 = !DILocation(line: 773, column: 4, scope: !3643)
!3654 = !DILocation(line: 774, column: 20, scope: !3655)
!3655 = distinct !DILexicalBlock(scope: !3643, file: !3, line: 774, column: 12)
!3656 = !DILocation(line: 774, column: 13, scope: !3655)
!3657 = !DILocation(line: 774, column: 12, scope: !3643)
!3658 = !DILocation(line: 775, column: 27, scope: !3655)
!3659 = !DILocation(line: 775, column: 35, scope: !3655)
!3660 = !DILocation(line: 775, column: 13, scope: !3655)
!3661 = !DILocation(line: 775, column: 11, scope: !3655)
!3662 = !DILocation(line: 775, column: 4, scope: !3655)
!3663 = !DILocation(line: 776, column: 20, scope: !3664)
!3664 = distinct !DILexicalBlock(scope: !3655, file: !3, line: 776, column: 12)
!3665 = !DILocation(line: 776, column: 13, scope: !3664)
!3666 = !DILocation(line: 776, column: 12, scope: !3655)
!3667 = !DILocation(line: 777, column: 27, scope: !3664)
!3668 = !DILocation(line: 777, column: 35, scope: !3664)
!3669 = !DILocation(line: 777, column: 13, scope: !3664)
!3670 = !DILocation(line: 777, column: 11, scope: !3664)
!3671 = !DILocation(line: 777, column: 4, scope: !3664)
!3672 = !DILocation(line: 778, column: 22, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3664, file: !3, line: 778, column: 12)
!3674 = !DILocation(line: 778, column: 13, scope: !3673)
!3675 = !DILocation(line: 778, column: 12, scope: !3664)
!3676 = !DILocation(line: 779, column: 32, scope: !3673)
!3677 = !DILocation(line: 779, column: 4, scope: !3673)
!3678 = !DILocation(line: 779, column: 17, scope: !3673)
!3679 = !DILocation(line: 779, column: 24, scope: !3673)
!3680 = !DILocation(line: 779, column: 30, scope: !3673)
!3681 = !DILocation(line: 781, column: 11, scope: !3673)
!3682 = !DILocation(line: 782, column: 2, scope: !3619)
!3683 = !DILocation(line: 782, column: 13, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !3613, file: !3, line: 782, column: 13)
!3685 = !DILocation(line: 782, column: 21, scope: !3684)
!3686 = !DILocation(line: 782, column: 30, scope: !3684)
!3687 = !DILocation(line: 782, column: 32, scope: !3684)
!3688 = !DILocation(line: 782, column: 19, scope: !3684)
!3689 = !DILocation(line: 782, column: 13, scope: !3613)
!3690 = !DILocalVariable(name: "event", scope: !3691, file: !3, line: 783, type: !176)
!3691 = distinct !DILexicalBlock(scope: !3684, file: !3, line: 782, column: 55)
!3692 = !DILocation(line: 783, column: 7, scope: !3691)
!3693 = !DILocation(line: 783, column: 15, scope: !3691)
!3694 = !DILocation(line: 783, column: 23, scope: !3691)
!3695 = !DILocation(line: 783, column: 21, scope: !3691)
!3696 = !DILocation(line: 784, column: 15, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3691, file: !3, line: 784, column: 7)
!3698 = !DILocation(line: 784, column: 8, scope: !3697)
!3699 = !DILocation(line: 784, column: 33, scope: !3697)
!3700 = !DILocation(line: 785, column: 8, scope: !3697)
!3701 = !DILocation(line: 785, column: 15, scope: !3697)
!3702 = !DILocation(line: 784, column: 7, scope: !3691)
!3703 = !DILocation(line: 786, column: 32, scope: !3697)
!3704 = !DILocation(line: 786, column: 13, scope: !3697)
!3705 = !DILocation(line: 786, column: 11, scope: !3697)
!3706 = !DILocation(line: 786, column: 4, scope: !3697)
!3707 = !DILocation(line: 787, column: 20, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !3697, file: !3, line: 787, column: 12)
!3709 = !DILocation(line: 787, column: 13, scope: !3708)
!3710 = !DILocation(line: 787, column: 37, scope: !3708)
!3711 = !DILocation(line: 788, column: 7, scope: !3708)
!3712 = !DILocation(line: 788, column: 14, scope: !3708)
!3713 = !DILocation(line: 787, column: 12, scope: !3697)
!3714 = !DILocation(line: 789, column: 31, scope: !3708)
!3715 = !DILocation(line: 789, column: 13, scope: !3708)
!3716 = !DILocation(line: 789, column: 11, scope: !3708)
!3717 = !DILocation(line: 789, column: 4, scope: !3708)
!3718 = !DILocation(line: 790, column: 20, scope: !3719)
!3719 = distinct !DILexicalBlock(scope: !3708, file: !3, line: 790, column: 12)
!3720 = !DILocation(line: 790, column: 13, scope: !3719)
!3721 = !DILocation(line: 790, column: 36, scope: !3719)
!3722 = !DILocation(line: 791, column: 6, scope: !3719)
!3723 = !DILocation(line: 791, column: 13, scope: !3719)
!3724 = !DILocation(line: 790, column: 12, scope: !3708)
!3725 = !DILocation(line: 792, column: 30, scope: !3719)
!3726 = !DILocation(line: 792, column: 13, scope: !3719)
!3727 = !DILocation(line: 792, column: 11, scope: !3719)
!3728 = !DILocation(line: 792, column: 4, scope: !3719)
!3729 = !DILocation(line: 793, column: 22, scope: !3730)
!3730 = distinct !DILexicalBlock(scope: !3719, file: !3, line: 793, column: 12)
!3731 = !DILocation(line: 793, column: 13, scope: !3730)
!3732 = !DILocation(line: 793, column: 12, scope: !3719)
!3733 = !DILocation(line: 794, column: 32, scope: !3730)
!3734 = !DILocation(line: 794, column: 4, scope: !3730)
!3735 = !DILocation(line: 794, column: 17, scope: !3730)
!3736 = !DILocation(line: 794, column: 24, scope: !3730)
!3737 = !DILocation(line: 794, column: 30, scope: !3730)
!3738 = !DILocation(line: 796, column: 11, scope: !3730)
!3739 = !DILocation(line: 797, column: 2, scope: !3691)
!3740 = !DILocation(line: 798, column: 39, scope: !3684)
!3741 = !DILocation(line: 798, column: 31, scope: !3684)
!3742 = !DILocation(line: 798, column: 3, scope: !3684)
!3743 = !DILocation(line: 798, column: 16, scope: !3684)
!3744 = !DILocation(line: 798, column: 23, scope: !3684)
!3745 = !DILocation(line: 798, column: 29, scope: !3684)
!3746 = !DILocation(line: 800, column: 6, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !3545, file: !3, line: 800, column: 6)
!3748 = !DILocation(line: 800, column: 6, scope: !3545)
!3749 = !DILocation(line: 801, column: 10, scope: !3747)
!3750 = !DILocation(line: 801, column: 3, scope: !3747)
!3751 = !DILabel(scope: !3545, name: "end", file: !3, line: 802)
!3752 = !DILocation(line: 802, column: 1, scope: !3545)
!3753 = !DILocation(line: 803, column: 9, scope: !3545)
!3754 = !DILocation(line: 803, column: 18, scope: !3545)
!3755 = !DILocation(line: 803, column: 27, scope: !3545)
!3756 = !DILocation(line: 803, column: 2, scope: !3545)
!3757 = !DILocation(line: 804, column: 1, scope: !3545)
!3758 = distinct !DISubprogram(name: "delete_gpe_attr_array", scope: !3, file: !3, line: 587, type: !3097, scopeLine: 588, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3759 = !DILocalVariable(name: "tmp", scope: !3758, file: !3, line: 589, type: !2545)
!3760 = !DILocation(line: 589, column: 24, scope: !3758)
!3761 = !DILocation(line: 589, column: 30, scope: !3758)
!3762 = !DILocation(line: 591, column: 15, scope: !3758)
!3763 = !DILocation(line: 592, column: 8, scope: !3758)
!3764 = !DILocation(line: 592, column: 2, scope: !3758)
!3765 = !DILocation(line: 594, column: 6, scope: !3766)
!3766 = distinct !DILexicalBlock(scope: !3758, file: !3, line: 594, column: 6)
!3767 = !DILocation(line: 594, column: 6, scope: !3758)
!3768 = !DILocalVariable(name: "i", scope: !3769, file: !3, line: 595, type: !176)
!3769 = distinct !DILexicalBlock(scope: !3766, file: !3, line: 594, column: 21)
!3770 = !DILocation(line: 595, column: 7, scope: !3769)
!3771 = !DILocation(line: 597, column: 10, scope: !3772)
!3772 = distinct !DILexicalBlock(scope: !3769, file: !3, line: 597, column: 3)
!3773 = !DILocation(line: 597, column: 8, scope: !3772)
!3774 = !DILocation(line: 597, column: 15, scope: !3775)
!3775 = distinct !DILexicalBlock(scope: !3772, file: !3, line: 597, column: 3)
!3776 = !DILocation(line: 597, column: 19, scope: !3775)
!3777 = !DILocation(line: 597, column: 17, scope: !3775)
!3778 = !DILocation(line: 597, column: 3, scope: !3772)
!3779 = !DILocation(line: 598, column: 10, scope: !3775)
!3780 = !DILocation(line: 598, column: 24, scope: !3775)
!3781 = !DILocation(line: 598, column: 27, scope: !3775)
!3782 = !DILocation(line: 598, column: 32, scope: !3775)
!3783 = !DILocation(line: 598, column: 4, scope: !3775)
!3784 = !DILocation(line: 597, column: 30, scope: !3775)
!3785 = !DILocation(line: 597, column: 3, scope: !3775)
!3786 = distinct !{!3786, !3778, !3787}
!3787 = !DILocation(line: 598, column: 36, scope: !3772)
!3788 = !DILocation(line: 600, column: 9, scope: !3769)
!3789 = !DILocation(line: 600, column: 3, scope: !3769)
!3790 = !DILocation(line: 601, column: 2, scope: !3769)
!3791 = !DILocation(line: 602, column: 8, scope: !3758)
!3792 = !DILocation(line: 602, column: 2, scope: !3758)
!3793 = !DILocation(line: 604, column: 2, scope: !3758)
!3794 = distinct !DISubprogram(name: "interrupt_stats_exit", scope: !3, file: !3, line: 931, type: !3097, scopeLine: 932, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3795 = !DILocation(line: 933, column: 21, scope: !3794)
!3796 = !DILocation(line: 933, column: 2, scope: !3794)
!3797 = !DILocation(line: 935, column: 2, scope: !3794)
!3798 = !DILocation(line: 937, column: 2, scope: !3794)
!3799 = distinct !DISubprogram(name: "acpi_sysfs_add_hotplug_profile", scope: !3, file: !3, line: 986, type: !3800, scopeLine: 988, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{null, !1613, !109}
!3802 = !DILocalVariable(name: "hotplug", arg: 1, scope: !3799, file: !3, line: 986, type: !1613)
!3803 = !DILocation(line: 986, column: 66, scope: !3799)
!3804 = !DILocalVariable(name: "name", arg: 2, scope: !3799, file: !3, line: 987, type: !109)
!3805 = !DILocation(line: 987, column: 21, scope: !3799)
!3806 = !DILocalVariable(name: "error", scope: !3799, file: !3, line: 989, type: !176)
!3807 = !DILocation(line: 989, column: 6, scope: !3799)
!3808 = !DILocation(line: 991, column: 7, scope: !3809)
!3809 = distinct !DILexicalBlock(scope: !3799, file: !3, line: 991, column: 6)
!3810 = !DILocation(line: 991, column: 6, scope: !3799)
!3811 = !DILocation(line: 992, column: 3, scope: !3809)
!3812 = !DILocation(line: 994, column: 32, scope: !3799)
!3813 = !DILocation(line: 994, column: 41, scope: !3799)
!3814 = !DILocation(line: 995, column: 32, scope: !3799)
!3815 = !DILocation(line: 995, column: 52, scope: !3799)
!3816 = !DILocation(line: 994, column: 10, scope: !3799)
!3817 = !DILocation(line: 994, column: 8, scope: !3799)
!3818 = !DILocation(line: 996, column: 6, scope: !3819)
!3819 = distinct !DILexicalBlock(scope: !3799, file: !3, line: 996, column: 6)
!3820 = !DILocation(line: 996, column: 6, scope: !3799)
!3821 = !DILocation(line: 997, column: 16, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !3819, file: !3, line: 996, column: 13)
!3823 = !DILocation(line: 997, column: 25, scope: !3822)
!3824 = !DILocation(line: 997, column: 3, scope: !3822)
!3825 = !DILocation(line: 998, column: 3, scope: !3822)
!3826 = !DILocation(line: 1001, column: 18, scope: !3799)
!3827 = !DILocation(line: 1001, column: 27, scope: !3799)
!3828 = !DILocation(line: 1001, column: 2, scope: !3799)
!3829 = !DILocation(line: 1002, column: 2, scope: !3799)
!3830 = !DILabel(scope: !3799, name: "err_out", file: !3, line: 1004)
!3831 = !DILocation(line: 1004, column: 2, scope: !3799)
!3832 = !DILocation(line: 1005, column: 2, scope: !3799)
!3833 = !DILocation(line: 1006, column: 1, scope: !3799)
!3834 = distinct !DISubprogram(name: "acpi_sysfs_init", scope: !3, file: !3, line: 1036, type: !3835, scopeLine: 1037, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3835 = !DISubroutineType(types: !3836)
!3836 = !{!176}
!3837 = !DILocalVariable(name: "result", scope: !3834, file: !3, line: 1038, type: !176)
!3838 = !DILocation(line: 1038, column: 6, scope: !3834)
!3839 = !DILocation(line: 1040, column: 11, scope: !3834)
!3840 = !DILocation(line: 1040, column: 9, scope: !3834)
!3841 = !DILocation(line: 1041, column: 6, scope: !3842)
!3842 = distinct !DILexicalBlock(scope: !3834, file: !3, line: 1041, column: 6)
!3843 = !DILocation(line: 1041, column: 6, scope: !3834)
!3844 = !DILocation(line: 1042, column: 10, scope: !3842)
!3845 = !DILocation(line: 1042, column: 3, scope: !3842)
!3846 = !DILocation(line: 1044, column: 51, scope: !3834)
!3847 = !DILocation(line: 1044, column: 17, scope: !3834)
!3848 = !DILocation(line: 1044, column: 15, scope: !3834)
!3849 = !DILocation(line: 1045, column: 7, scope: !3850)
!3850 = distinct !DILexicalBlock(scope: !3834, file: !3, line: 1045, column: 6)
!3851 = !DILocation(line: 1045, column: 6, scope: !3834)
!3852 = !DILocation(line: 1046, column: 3, scope: !3850)
!3853 = !DILocation(line: 1048, column: 29, scope: !3834)
!3854 = !DILocation(line: 1048, column: 11, scope: !3834)
!3855 = !DILocation(line: 1048, column: 9, scope: !3834)
!3856 = !DILocation(line: 1049, column: 6, scope: !3857)
!3857 = distinct !DILexicalBlock(scope: !3834, file: !3, line: 1049, column: 6)
!3858 = !DILocation(line: 1049, column: 6, scope: !3834)
!3859 = !DILocation(line: 1050, column: 10, scope: !3857)
!3860 = !DILocation(line: 1050, column: 3, scope: !3857)
!3861 = !DILocation(line: 1052, column: 29, scope: !3834)
!3862 = !DILocation(line: 1052, column: 11, scope: !3834)
!3863 = !DILocation(line: 1052, column: 9, scope: !3834)
!3864 = !DILocation(line: 1053, column: 9, scope: !3834)
!3865 = !DILocation(line: 1053, column: 2, scope: !3834)
!3866 = !DILocation(line: 1054, column: 1, scope: !3834)
!3867 = distinct !DISubprogram(name: "acpi_tables_sysfs_init", scope: !3, file: !3, line: 500, type: !3835, scopeLine: 501, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3868 = !DILocalVariable(name: "table_attr", scope: !3867, file: !3, line: 502, type: !98)
!3869 = !DILocation(line: 502, column: 26, scope: !3867)
!3870 = !DILocalVariable(name: "table_header", scope: !3867, file: !3, line: 503, type: !2939)
!3871 = !DILocation(line: 503, column: 28, scope: !3867)
!3872 = !DILocalVariable(name: "table_index", scope: !3867, file: !3, line: 504, type: !176)
!3873 = !DILocation(line: 504, column: 6, scope: !3867)
!3874 = !DILocalVariable(name: "status", scope: !3867, file: !3, line: 505, type: !90)
!3875 = !DILocation(line: 505, column: 14, scope: !3867)
!3876 = !DILocalVariable(name: "ret", scope: !3867, file: !3, line: 506, type: !176)
!3877 = !DILocation(line: 506, column: 6, scope: !3867)
!3878 = !DILocation(line: 508, column: 49, scope: !3867)
!3879 = !DILocation(line: 508, column: 16, scope: !3867)
!3880 = !DILocation(line: 508, column: 14, scope: !3867)
!3881 = !DILocation(line: 509, column: 7, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3867, file: !3, line: 509, column: 6)
!3883 = !DILocation(line: 509, column: 6, scope: !3867)
!3884 = !DILocation(line: 510, column: 3, scope: !3882)
!3885 = !DILocation(line: 512, column: 52, scope: !3867)
!3886 = !DILocation(line: 512, column: 21, scope: !3867)
!3887 = !DILocation(line: 512, column: 19, scope: !3867)
!3888 = !DILocation(line: 513, column: 7, scope: !3889)
!3889 = distinct !DILexicalBlock(scope: !3867, file: !3, line: 513, column: 6)
!3890 = !DILocation(line: 513, column: 6, scope: !3867)
!3891 = !DILocation(line: 514, column: 3, scope: !3889)
!3892 = !DILocation(line: 516, column: 58, scope: !3867)
!3893 = !DILocation(line: 516, column: 24, scope: !3867)
!3894 = !DILocation(line: 516, column: 22, scope: !3867)
!3895 = !DILocation(line: 517, column: 7, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3867, file: !3, line: 517, column: 6)
!3897 = !DILocation(line: 517, column: 6, scope: !3867)
!3898 = !DILocation(line: 518, column: 3, scope: !3896)
!3899 = !DILocation(line: 520, column: 19, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3867, file: !3, line: 520, column: 2)
!3901 = !DILocation(line: 520, column: 7, scope: !3900)
!3902 = !DILocation(line: 521, column: 36, scope: !3903)
!3903 = distinct !DILexicalBlock(scope: !3904, file: !3, line: 520, column: 40)
!3904 = distinct !DILexicalBlock(scope: !3900, file: !3, line: 520, column: 2)
!3905 = !DILocation(line: 521, column: 12, scope: !3903)
!3906 = !DILocation(line: 521, column: 10, scope: !3903)
!3907 = !DILocation(line: 523, column: 7, scope: !3908)
!3908 = distinct !DILexicalBlock(scope: !3903, file: !3, line: 523, column: 7)
!3909 = !DILocation(line: 523, column: 14, scope: !3908)
!3910 = !DILocation(line: 523, column: 7, scope: !3903)
!3911 = !DILocation(line: 524, column: 4, scope: !3908)
!3912 = !DILocation(line: 526, column: 7, scope: !3913)
!3913 = distinct !DILexicalBlock(scope: !3903, file: !3, line: 526, column: 7)
!3914 = !DILocation(line: 526, column: 7, scope: !3903)
!3915 = !DILocation(line: 527, column: 4, scope: !3913)
!3916 = !DILocation(line: 529, column: 16, scope: !3903)
!3917 = !DILocation(line: 529, column: 14, scope: !3903)
!3918 = !DILocation(line: 530, column: 8, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3903, file: !3, line: 530, column: 7)
!3920 = !DILocation(line: 530, column: 7, scope: !3903)
!3921 = !DILocation(line: 531, column: 4, scope: !3919)
!3922 = !DILocation(line: 533, column: 30, scope: !3903)
!3923 = !DILocation(line: 534, column: 9, scope: !3903)
!3924 = !DILocation(line: 534, column: 21, scope: !3903)
!3925 = !DILocation(line: 533, column: 9, scope: !3903)
!3926 = !DILocation(line: 533, column: 7, scope: !3903)
!3927 = !DILocation(line: 535, column: 7, scope: !3928)
!3928 = distinct !DILexicalBlock(scope: !3903, file: !3, line: 535, column: 7)
!3929 = !DILocation(line: 535, column: 7, scope: !3903)
!3930 = !DILocation(line: 536, column: 10, scope: !3931)
!3931 = distinct !DILexicalBlock(scope: !3928, file: !3, line: 535, column: 12)
!3932 = !DILocation(line: 536, column: 4, scope: !3931)
!3933 = !DILocation(line: 537, column: 11, scope: !3931)
!3934 = !DILocation(line: 537, column: 4, scope: !3931)
!3935 = !DILocation(line: 539, column: 18, scope: !3903)
!3936 = !DILocation(line: 539, column: 30, scope: !3903)
!3937 = !DILocation(line: 539, column: 3, scope: !3903)
!3938 = !DILocation(line: 540, column: 24, scope: !3903)
!3939 = !DILocation(line: 540, column: 3, scope: !3903)
!3940 = !DILocation(line: 541, column: 2, scope: !3903)
!3941 = !DILocation(line: 520, column: 36, scope: !3904)
!3942 = !DILocation(line: 520, column: 2, scope: !3904)
!3943 = distinct !{!3943, !3944, !3945}
!3944 = !DILocation(line: 520, column: 2, scope: !3900)
!3945 = !DILocation(line: 541, column: 2, scope: !3900)
!3946 = !DILocation(line: 543, column: 17, scope: !3867)
!3947 = !DILocation(line: 543, column: 2, scope: !3867)
!3948 = !DILocation(line: 544, column: 17, scope: !3867)
!3949 = !DILocation(line: 544, column: 2, scope: !3867)
!3950 = !DILocation(line: 545, column: 17, scope: !3867)
!3951 = !DILocation(line: 545, column: 2, scope: !3867)
!3952 = !DILocation(line: 547, column: 2, scope: !3867)
!3953 = !DILabel(scope: !3867, name: "err_dynamic_tables", file: !3, line: 548)
!3954 = !DILocation(line: 548, column: 1, scope: !3867)
!3955 = !DILocation(line: 549, column: 14, scope: !3867)
!3956 = !DILocation(line: 549, column: 2, scope: !3867)
!3957 = !DILabel(scope: !3867, name: "err_tables_data", file: !3, line: 550)
!3958 = !DILocation(line: 550, column: 1, scope: !3867)
!3959 = !DILocation(line: 551, column: 14, scope: !3867)
!3960 = !DILocation(line: 551, column: 2, scope: !3867)
!3961 = !DILabel(scope: !3867, name: "err", file: !3, line: 552)
!3962 = !DILocation(line: 552, column: 1, scope: !3867)
!3963 = !DILocation(line: 553, column: 2, scope: !3867)
!3964 = !DILocation(line: 554, column: 1, scope: !3867)
!3965 = distinct !DISubprogram(name: "sysfs_create_file", scope: !103, file: !103, line: 596, type: !3966, scopeLine: 598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3966 = !DISubroutineType(types: !3967)
!3967 = !{!176, !133, !3968}
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !106)
!3970 = !DILocalVariable(name: "kobj", arg: 1, scope: !3965, file: !103, line: 596, type: !133)
!3971 = !DILocation(line: 596, column: 66, scope: !3965)
!3972 = !DILocalVariable(name: "attr", arg: 2, scope: !3965, file: !103, line: 597, type: !3968)
!3973 = !DILocation(line: 597, column: 32, scope: !3965)
!3974 = !DILocation(line: 599, column: 30, scope: !3965)
!3975 = !DILocation(line: 599, column: 36, scope: !3965)
!3976 = !DILocation(line: 599, column: 9, scope: !3965)
!3977 = !DILocation(line: 599, column: 2, scope: !3965)
!3978 = distinct !DISubprogram(name: "param_get_acpica_version", scope: !3, file: !3, line: 300, type: !2481, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3979 = !DILocalVariable(name: "buffer", arg: 1, scope: !3978, file: !3, line: 300, type: !192)
!3980 = !DILocation(line: 300, column: 43, scope: !3978)
!3981 = !DILocalVariable(name: "kp", arg: 2, scope: !3978, file: !3, line: 301, type: !2478)
!3982 = !DILocation(line: 301, column: 36, scope: !3978)
!3983 = !DILocalVariable(name: "result", scope: !3978, file: !3, line: 303, type: !176)
!3984 = !DILocation(line: 303, column: 6, scope: !3978)
!3985 = !DILocation(line: 305, column: 19, scope: !3978)
!3986 = !DILocation(line: 305, column: 11, scope: !3978)
!3987 = !DILocation(line: 305, column: 9, scope: !3978)
!3988 = !DILocation(line: 307, column: 9, scope: !3978)
!3989 = !DILocation(line: 307, column: 2, scope: !3978)
!3990 = distinct !DISubprogram(name: "get_order", scope: !3991, file: !3991, line: 29, type: !3992, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3991 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!3992 = !DISubroutineType(types: !3993)
!3993 = !{!176, !120}
!3994 = !DILocalVariable(name: "x", arg: 1, scope: !3995, file: !3996, line: 366, type: !508)
!3995 = distinct !DISubprogram(name: "fls64", scope: !3996, file: !3996, line: 366, type: !3997, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3996 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!3997 = !DISubroutineType(types: !3998)
!3998 = !{!176, !508}
!3999 = !DILocation(line: 366, column: 40, scope: !3995, inlinedAt: !4000)
!4000 = distinct !DILocation(line: 46, column: 9, scope: !3990)
!4001 = !DILocalVariable(name: "bitpos", scope: !3995, file: !3996, line: 368, type: !176)
!4002 = !DILocation(line: 368, column: 6, scope: !3995, inlinedAt: !4000)
!4003 = !DILocalVariable(name: "size", arg: 1, scope: !3990, file: !3991, line: 29, type: !120)
!4004 = !DILocation(line: 29, column: 63, scope: !3990)
!4005 = !DILocation(line: 31, column: 27, scope: !4006)
!4006 = distinct !DILexicalBlock(scope: !3990, file: !3991, line: 31, column: 6)
!4007 = !DILocation(line: 31, column: 6, scope: !4006)
!4008 = !DILocation(line: 31, column: 6, scope: !3990)
!4009 = !DILocation(line: 32, column: 8, scope: !4010)
!4010 = distinct !DILexicalBlock(scope: !4011, file: !3991, line: 32, column: 7)
!4011 = distinct !DILexicalBlock(scope: !4006, file: !3991, line: 31, column: 34)
!4012 = !DILocation(line: 32, column: 7, scope: !4011)
!4013 = !DILocation(line: 33, column: 4, scope: !4010)
!4014 = !DILocation(line: 35, column: 7, scope: !4015)
!4015 = distinct !DILexicalBlock(scope: !4011, file: !3991, line: 35, column: 7)
!4016 = !DILocation(line: 35, column: 12, scope: !4015)
!4017 = !DILocation(line: 35, column: 7, scope: !4011)
!4018 = !DILocation(line: 36, column: 4, scope: !4015)
!4019 = !DILocation(line: 38, column: 10, scope: !4011)
!4020 = !DILocation(line: 38, column: 28, scope: !4011)
!4021 = !DILocation(line: 38, column: 41, scope: !4011)
!4022 = !DILocation(line: 38, column: 3, scope: !4011)
!4023 = !DILocation(line: 41, column: 6, scope: !3990)
!4024 = !DILocation(line: 42, column: 7, scope: !3990)
!4025 = !DILocation(line: 46, column: 15, scope: !3990)
!4026 = !DILocation(line: 374, column: 2, scope: !3995, inlinedAt: !4000)
!4027 = !DILocation(line: 376, column: 14, scope: !3995, inlinedAt: !4000)
!4028 = !{i32 277508}
!4029 = !DILocation(line: 377, column: 9, scope: !3995, inlinedAt: !4000)
!4030 = !DILocation(line: 377, column: 16, scope: !3995, inlinedAt: !4000)
!4031 = !DILocation(line: 46, column: 2, scope: !3990)
!4032 = !DILocation(line: 48, column: 1, scope: !3990)
!4033 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4034, file: !4034, line: 30, type: !4035, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!4034 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4035 = !DISubroutineType(types: !4036)
!4036 = !{!176, !507}
!4037 = !DILocation(line: 366, column: 40, scope: !3995, inlinedAt: !4038)
!4038 = distinct !DILocation(line: 32, column: 9, scope: !4033)
!4039 = !DILocation(line: 368, column: 6, scope: !3995, inlinedAt: !4038)
!4040 = !DILocalVariable(name: "n", arg: 1, scope: !4033, file: !4034, line: 30, type: !507)
!4041 = !DILocation(line: 30, column: 21, scope: !4033)
!4042 = !DILocation(line: 32, column: 15, scope: !4033)
!4043 = !DILocation(line: 374, column: 2, scope: !3995, inlinedAt: !4038)
!4044 = !DILocation(line: 376, column: 14, scope: !3995, inlinedAt: !4038)
!4045 = !DILocation(line: 377, column: 9, scope: !3995, inlinedAt: !4038)
!4046 = !DILocation(line: 377, column: 16, scope: !3995, inlinedAt: !4038)
!4047 = !DILocation(line: 32, column: 18, scope: !4033)
!4048 = !DILocation(line: 32, column: 2, scope: !4033)
!4049 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !4050, file: !4050, line: 137, type: !4051, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!4050 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!4051 = !DISubroutineType(types: !4052)
!4052 = !{!96, !1249, !271, !116, !88}
!4053 = !DILocalVariable(name: "s", arg: 1, scope: !4049, file: !4050, line: 137, type: !1249)
!4054 = !DILocation(line: 137, column: 54, scope: !4049)
!4055 = !DILocalVariable(name: "object", arg: 2, scope: !4049, file: !4050, line: 137, type: !271)
!4056 = !DILocation(line: 137, column: 69, scope: !4049)
!4057 = !DILocalVariable(name: "size", arg: 3, scope: !4049, file: !4050, line: 138, type: !116)
!4058 = !DILocation(line: 138, column: 12, scope: !4049)
!4059 = !DILocalVariable(name: "flags", arg: 4, scope: !4049, file: !4050, line: 138, type: !88)
!4060 = !DILocation(line: 138, column: 24, scope: !4049)
!4061 = !DILocation(line: 140, column: 17, scope: !4049)
!4062 = !DILocation(line: 140, column: 2, scope: !4049)
!4063 = distinct !DISubprogram(name: "acpi_table_show", scope: !3, file: !3, line: 341, type: !124, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!4064 = !DILocalVariable(name: "filp", arg: 1, scope: !4063, file: !3, line: 341, type: !130)
!4065 = !DILocation(line: 341, column: 45, scope: !4063)
!4066 = !DILocalVariable(name: "kobj", arg: 2, scope: !4063, file: !3, line: 341, type: !133)
!4067 = !DILocation(line: 341, column: 67, scope: !4063)
!4068 = !DILocalVariable(name: "bin_attr", arg: 3, scope: !4063, file: !3, line: 342, type: !244)
!4069 = !DILocation(line: 342, column: 33, scope: !4063)
!4070 = !DILocalVariable(name: "buf", arg: 4, scope: !4063, file: !3, line: 342, type: !192)
!4071 = !DILocation(line: 342, column: 49, scope: !4063)
!4072 = !DILocalVariable(name: "offset", arg: 5, scope: !4063, file: !3, line: 343, type: !459)
!4073 = !DILocation(line: 343, column: 18, scope: !4063)
!4074 = !DILocalVariable(name: "count", arg: 6, scope: !4063, file: !3, line: 343, type: !116)
!4075 = !DILocation(line: 343, column: 33, scope: !4063)
!4076 = !DILocalVariable(name: "table_attr", scope: !4063, file: !3, line: 345, type: !98)
!4077 = !DILocation(line: 345, column: 26, scope: !4063)
!4078 = !DILocalVariable(name: "__mptr", scope: !4079, file: !3, line: 346, type: !96)
!4079 = distinct !DILexicalBlock(scope: !4063, file: !3, line: 346, column: 6)
!4080 = !DILocation(line: 346, column: 6, scope: !4079)
!4081 = !DILocation(line: 346, column: 6, scope: !4082)
!4082 = distinct !DILexicalBlock(scope: !4079, file: !3, line: 346, column: 6)
!4083 = !DILocalVariable(name: "table_header", scope: !4063, file: !3, line: 347, type: !2939)
!4084 = !DILocation(line: 347, column: 28, scope: !4063)
!4085 = !DILocalVariable(name: "status", scope: !4063, file: !3, line: 348, type: !90)
!4086 = !DILocation(line: 348, column: 14, scope: !4063)
!4087 = !DILocalVariable(name: "rc", scope: !4063, file: !3, line: 349, type: !126)
!4088 = !DILocation(line: 349, column: 10, scope: !4063)
!4089 = !DILocation(line: 351, column: 26, scope: !4063)
!4090 = !DILocation(line: 351, column: 38, scope: !4063)
!4091 = !DILocation(line: 351, column: 44, scope: !4063)
!4092 = !DILocation(line: 351, column: 56, scope: !4063)
!4093 = !DILocation(line: 351, column: 11, scope: !4063)
!4094 = !DILocation(line: 351, column: 9, scope: !4063)
!4095 = !DILocation(line: 353, column: 6, scope: !4096)
!4096 = distinct !DILexicalBlock(scope: !4063, file: !3, line: 353, column: 6)
!4097 = !DILocation(line: 353, column: 6, scope: !4063)
!4098 = !DILocation(line: 354, column: 3, scope: !4096)
!4099 = !DILocation(line: 356, column: 31, scope: !4063)
!4100 = !DILocation(line: 356, column: 36, scope: !4063)
!4101 = !DILocation(line: 356, column: 52, scope: !4063)
!4102 = !DILocation(line: 357, column: 4, scope: !4063)
!4103 = !DILocation(line: 357, column: 18, scope: !4063)
!4104 = !DILocation(line: 356, column: 7, scope: !4063)
!4105 = !DILocation(line: 356, column: 5, scope: !4063)
!4106 = !DILocation(line: 358, column: 17, scope: !4063)
!4107 = !DILocation(line: 358, column: 2, scope: !4063)
!4108 = !DILocation(line: 359, column: 9, scope: !4063)
!4109 = !DILocation(line: 359, column: 2, scope: !4063)
!4110 = !DILocation(line: 360, column: 1, scope: !4063)
!4111 = distinct !DISubprogram(name: "__list_add", scope: !3069, file: !3069, line: 63, type: !4112, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!4112 = !DISubroutineType(types: !4113)
!4113 = !{null, !141, !141, !141}
!4114 = !DILocalVariable(name: "new", arg: 1, scope: !4111, file: !3069, line: 63, type: !141)
!4115 = !DILocation(line: 63, column: 49, scope: !4111)
!4116 = !DILocalVariable(name: "prev", arg: 2, scope: !4111, file: !3069, line: 64, type: !141)
!4117 = !DILocation(line: 64, column: 28, scope: !4111)
!4118 = !DILocalVariable(name: "next", arg: 3, scope: !4111, file: !3069, line: 65, type: !141)
!4119 = !DILocation(line: 65, column: 28, scope: !4111)
!4120 = !DILocation(line: 67, column: 24, scope: !4121)
!4121 = distinct !DILexicalBlock(scope: !4111, file: !3069, line: 67, column: 6)
!4122 = !DILocation(line: 67, column: 29, scope: !4121)
!4123 = !DILocation(line: 67, column: 35, scope: !4121)
!4124 = !DILocation(line: 67, column: 7, scope: !4121)
!4125 = !DILocation(line: 67, column: 6, scope: !4111)
!4126 = !DILocation(line: 68, column: 3, scope: !4121)
!4127 = !DILocation(line: 70, column: 15, scope: !4111)
!4128 = !DILocation(line: 70, column: 2, scope: !4111)
!4129 = !DILocation(line: 70, column: 8, scope: !4111)
!4130 = !DILocation(line: 70, column: 13, scope: !4111)
!4131 = !DILocation(line: 71, column: 14, scope: !4111)
!4132 = !DILocation(line: 71, column: 2, scope: !4111)
!4133 = !DILocation(line: 71, column: 7, scope: !4111)
!4134 = !DILocation(line: 71, column: 12, scope: !4111)
!4135 = !DILocation(line: 72, column: 14, scope: !4111)
!4136 = !DILocation(line: 72, column: 2, scope: !4111)
!4137 = !DILocation(line: 72, column: 7, scope: !4111)
!4138 = !DILocation(line: 72, column: 12, scope: !4111)
!4139 = !DILocation(line: 73, column: 2, scope: !4111)
!4140 = !DILocation(line: 73, column: 2, scope: !4141)
!4141 = distinct !DILexicalBlock(scope: !4111, file: !3069, line: 73, column: 2)
!4142 = !DILocation(line: 73, column: 2, scope: !4143)
!4143 = distinct !DILexicalBlock(scope: !4141, file: !3069, line: 73, column: 2)
!4144 = !DILocation(line: 73, column: 2, scope: !4145)
!4145 = distinct !DILexicalBlock(scope: !4141, file: !3069, line: 73, column: 2)
!4146 = !DILocation(line: 74, column: 1, scope: !4111)
!4147 = distinct !DISubprogram(name: "__list_add_valid", scope: !3069, file: !3069, line: 45, type: !4148, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!4148 = !DISubroutineType(types: !4149)
!4149 = !{!261, !141, !141, !141}
!4150 = !DILocalVariable(name: "new", arg: 1, scope: !4147, file: !3069, line: 45, type: !141)
!4151 = !DILocation(line: 45, column: 55, scope: !4147)
!4152 = !DILocalVariable(name: "prev", arg: 2, scope: !4147, file: !3069, line: 46, type: !141)
!4153 = !DILocation(line: 46, column: 23, scope: !4147)
!4154 = !DILocalVariable(name: "next", arg: 3, scope: !4147, file: !3069, line: 47, type: !141)
!4155 = !DILocation(line: 47, column: 23, scope: !4147)
!4156 = !DILocation(line: 49, column: 2, scope: !4147)
!4157 = distinct !DISubprogram(name: "set_bit", scope: !4158, file: !4158, line: 26, type: !4159, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!4158 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/lizy2001/genbc/linux")
!4159 = !DISubroutineType(types: !4160)
!4160 = !{null, !129, !4161}
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !120)
!4163 = !DILocalVariable(name: "nr", arg: 1, scope: !4164, file: !3996, line: 52, type: !129)
!4164 = distinct !DISubprogram(name: "arch_set_bit", scope: !3996, file: !3996, line: 52, type: !4159, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!4165 = !DILocation(line: 52, column: 19, scope: !4164, inlinedAt: !4166)
!4166 = distinct !DILocation(line: 29, column: 2, scope: !4157)
!4167 = !DILocalVariable(name: "addr", arg: 2, scope: !4164, file: !3996, line: 52, type: !4161)
!4168 = !DILocation(line: 52, column: 47, scope: !4164, inlinedAt: !4166)
!4169 = !DILocalVariable(name: "v", arg: 1, scope: !4170, file: !4171, line: 84, type: !4174)
!4170 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !4171, file: !4171, line: 84, type: !4172, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!4171 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!4172 = !DISubroutineType(types: !4173)
!4173 = !{null, !4174, !116}
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4176)
!4176 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4177 = !DILocation(line: 84, column: 74, scope: !4170, inlinedAt: !4178)
!4178 = distinct !DILocation(line: 28, column: 2, scope: !4157)
!4179 = !DILocalVariable(name: "size", arg: 2, scope: !4170, file: !4171, line: 84, type: !116)
!4180 = !DILocation(line: 84, column: 84, scope: !4170, inlinedAt: !4178)
!4181 = !DILocalVariable(name: "nr", arg: 1, scope: !4157, file: !4158, line: 26, type: !129)
!4182 = !DILocation(line: 26, column: 33, scope: !4157)
!4183 = !DILocalVariable(name: "addr", arg: 2, scope: !4157, file: !4158, line: 26, type: !4161)
!4184 = !DILocation(line: 26, column: 61, scope: !4157)
!4185 = !DILocation(line: 28, column: 26, scope: !4157)
!4186 = !DILocation(line: 28, column: 33, scope: !4157)
!4187 = !DILocation(line: 28, column: 31, scope: !4157)
!4188 = !DILocation(line: 86, column: 20, scope: !4170, inlinedAt: !4178)
!4189 = !DILocation(line: 86, column: 23, scope: !4170, inlinedAt: !4178)
!4190 = !DILocation(line: 86, column: 2, scope: !4170, inlinedAt: !4178)
!4191 = !DILocation(line: 87, column: 2, scope: !4170, inlinedAt: !4178)
!4192 = !DILocation(line: 29, column: 15, scope: !4157)
!4193 = !DILocation(line: 29, column: 19, scope: !4157)
!4194 = !DILocation(line: 54, column: 27, scope: !4195, inlinedAt: !4166)
!4195 = distinct !DILexicalBlock(scope: !4164, file: !3996, line: 54, column: 6)
!4196 = !DILocation(line: 54, column: 6, scope: !4195, inlinedAt: !4166)
!4197 = !DILocation(line: 54, column: 6, scope: !4164, inlinedAt: !4166)
!4198 = !DILocation(line: 56, column: 6, scope: !4199, inlinedAt: !4166)
!4199 = distinct !DILexicalBlock(scope: !4195, file: !3996, line: 54, column: 32)
!4200 = !DILocation(line: 57, column: 12, scope: !4199, inlinedAt: !4166)
!4201 = !DILocation(line: 55, column: 3, scope: !4199, inlinedAt: !4166)
!4202 = !{i32 -2147174713}
!4203 = !DILocation(line: 59, column: 2, scope: !4199, inlinedAt: !4166)
!4204 = !DILocation(line: 61, column: 8, scope: !4205, inlinedAt: !4166)
!4205 = distinct !DILexicalBlock(scope: !4195, file: !3996, line: 59, column: 9)
!4206 = !DILocation(line: 61, column: 32, scope: !4205, inlinedAt: !4166)
!4207 = !DILocation(line: 60, column: 3, scope: !4205, inlinedAt: !4166)
!4208 = !{i32 -2147174581}
!4209 = !DILocation(line: 30, column: 1, scope: !4157)
!4210 = distinct !DISubprogram(name: "kasan_check_write", scope: !4211, file: !4211, line: 38, type: !4212, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!4211 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!4212 = !DISubroutineType(types: !4213)
!4213 = !{!261, !4174, !7}
!4214 = !DILocalVariable(name: "p", arg: 1, scope: !4210, file: !4211, line: 38, type: !4174)
!4215 = !DILocation(line: 38, column: 59, scope: !4210)
!4216 = !DILocalVariable(name: "size", arg: 2, scope: !4210, file: !4211, line: 38, type: !7)
!4217 = !DILocation(line: 38, column: 75, scope: !4210)
!4218 = !DILocation(line: 40, column: 2, scope: !4210)
!4219 = distinct !DISubprogram(name: "kcsan_check_access", scope: !4220, file: !4220, line: 178, type: !4221, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!4220 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!4221 = !DISubroutineType(types: !4222)
!4222 = !{null, !4174, !116, !176}
!4223 = !DILocalVariable(name: "ptr", arg: 1, scope: !4219, file: !4220, line: 178, type: !4174)
!4224 = !DILocation(line: 178, column: 60, scope: !4219)
!4225 = !DILocalVariable(name: "size", arg: 2, scope: !4219, file: !4220, line: 178, type: !116)
!4226 = !DILocation(line: 178, column: 72, scope: !4219)
!4227 = !DILocalVariable(name: "type", arg: 3, scope: !4219, file: !4220, line: 179, type: !176)
!4228 = !DILocation(line: 179, column: 15, scope: !4219)
!4229 = !DILocation(line: 179, column: 23, scope: !4219)
!4230 = distinct !DISubprogram(name: "kmalloc_array", scope: !76, file: !76, line: 584, type: !3333, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!4231 = !DILocation(line: 445, column: 72, scope: !2668, inlinedAt: !4232)
!4232 = distinct !DILocation(line: 552, column: 10, scope: !2673, inlinedAt: !4233)
!4233 = distinct !DILocation(line: 591, column: 10, scope: !4234)
!4234 = distinct !DILexicalBlock(scope: !4230, file: !76, line: 590, column: 6)
!4235 = !DILocation(line: 446, column: 9, scope: !2668, inlinedAt: !4232)
!4236 = !DILocation(line: 446, column: 23, scope: !2668, inlinedAt: !4232)
!4237 = !DILocation(line: 448, column: 8, scope: !2668, inlinedAt: !4232)
!4238 = !DILocation(line: 318, column: 67, scope: !2684, inlinedAt: !4239)
!4239 = distinct !DILocation(line: 553, column: 20, scope: !2673, inlinedAt: !4233)
!4240 = !DILocation(line: 346, column: 58, scope: !2690, inlinedAt: !4241)
!4241 = distinct !DILocation(line: 547, column: 11, scope: !2673, inlinedAt: !4233)
!4242 = !DILocation(line: 472, column: 28, scope: !2696, inlinedAt: !4243)
!4243 = distinct !DILocation(line: 481, column: 9, scope: !2701, inlinedAt: !4244)
!4244 = distinct !DILocation(line: 545, column: 11, scope: !2703, inlinedAt: !4233)
!4245 = !DILocation(line: 472, column: 40, scope: !2696, inlinedAt: !4243)
!4246 = !DILocation(line: 472, column: 60, scope: !2696, inlinedAt: !4243)
!4247 = !DILocation(line: 478, column: 51, scope: !2701, inlinedAt: !4244)
!4248 = !DILocation(line: 478, column: 63, scope: !2701, inlinedAt: !4244)
!4249 = !DILocation(line: 480, column: 15, scope: !2701, inlinedAt: !4244)
!4250 = !DILocation(line: 538, column: 45, scope: !2675, inlinedAt: !4233)
!4251 = !DILocation(line: 538, column: 57, scope: !2675, inlinedAt: !4233)
!4252 = !DILocation(line: 542, column: 16, scope: !2673, inlinedAt: !4233)
!4253 = !DILocalVariable(name: "n", arg: 1, scope: !4230, file: !76, line: 584, type: !116)
!4254 = !DILocation(line: 584, column: 42, scope: !4230)
!4255 = !DILocalVariable(name: "size", arg: 2, scope: !4230, file: !76, line: 584, type: !116)
!4256 = !DILocation(line: 584, column: 52, scope: !4230)
!4257 = !DILocalVariable(name: "flags", arg: 3, scope: !4230, file: !76, line: 584, type: !88)
!4258 = !DILocation(line: 584, column: 64, scope: !4230)
!4259 = !DILocalVariable(name: "bytes", scope: !4230, file: !76, line: 586, type: !116)
!4260 = !DILocation(line: 586, column: 9, scope: !4230)
!4261 = !DILocalVariable(name: "__a", scope: !4262, file: !76, line: 588, type: !116)
!4262 = distinct !DILexicalBlock(scope: !4263, file: !76, line: 588, column: 6)
!4263 = distinct !DILexicalBlock(scope: !4230, file: !76, line: 588, column: 6)
!4264 = !DILocation(line: 588, column: 6, scope: !4262)
!4265 = !DILocalVariable(name: "__b", scope: !4262, file: !76, line: 588, type: !116)
!4266 = !DILocalVariable(name: "__d", scope: !4262, file: !76, line: 588, type: !4267)
!4267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!4268 = !DILocation(line: 588, column: 6, scope: !4263)
!4269 = !DILocation(line: 588, column: 6, scope: !4230)
!4270 = !DILocation(line: 589, column: 3, scope: !4263)
!4271 = !DILocation(line: 590, column: 27, scope: !4234)
!4272 = !DILocation(line: 590, column: 6, scope: !4234)
!4273 = !DILocation(line: 590, column: 30, scope: !4234)
!4274 = !DILocation(line: 590, column: 54, scope: !4234)
!4275 = !DILocation(line: 590, column: 33, scope: !4234)
!4276 = !DILocation(line: 590, column: 6, scope: !4230)
!4277 = !DILocation(line: 591, column: 18, scope: !4234)
!4278 = !DILocation(line: 591, column: 25, scope: !4234)
!4279 = !DILocation(line: 540, column: 27, scope: !2674, inlinedAt: !4233)
!4280 = !DILocation(line: 540, column: 6, scope: !2674, inlinedAt: !4233)
!4281 = !DILocation(line: 540, column: 6, scope: !2675, inlinedAt: !4233)
!4282 = !DILocation(line: 544, column: 7, scope: !2703, inlinedAt: !4233)
!4283 = !DILocation(line: 544, column: 12, scope: !2703, inlinedAt: !4233)
!4284 = !DILocation(line: 544, column: 7, scope: !2673, inlinedAt: !4233)
!4285 = !DILocation(line: 545, column: 25, scope: !2703, inlinedAt: !4233)
!4286 = !DILocation(line: 545, column: 31, scope: !2703, inlinedAt: !4233)
!4287 = !DILocation(line: 480, column: 33, scope: !2701, inlinedAt: !4244)
!4288 = !DILocation(line: 480, column: 23, scope: !2701, inlinedAt: !4244)
!4289 = !DILocation(line: 481, column: 29, scope: !2701, inlinedAt: !4244)
!4290 = !DILocation(line: 481, column: 35, scope: !2701, inlinedAt: !4244)
!4291 = !DILocation(line: 481, column: 42, scope: !2701, inlinedAt: !4244)
!4292 = !DILocation(line: 474, column: 23, scope: !2696, inlinedAt: !4243)
!4293 = !DILocation(line: 474, column: 29, scope: !2696, inlinedAt: !4243)
!4294 = !DILocation(line: 474, column: 36, scope: !2696, inlinedAt: !4243)
!4295 = !DILocation(line: 474, column: 9, scope: !2696, inlinedAt: !4243)
!4296 = !DILocation(line: 545, column: 4, scope: !2703, inlinedAt: !4233)
!4297 = !DILocation(line: 547, column: 25, scope: !2673, inlinedAt: !4233)
!4298 = !DILocation(line: 348, column: 7, scope: !2747, inlinedAt: !4241)
!4299 = !DILocation(line: 348, column: 6, scope: !2690, inlinedAt: !4241)
!4300 = !DILocation(line: 349, column: 3, scope: !2747, inlinedAt: !4241)
!4301 = !DILocation(line: 351, column: 6, scope: !2751, inlinedAt: !4241)
!4302 = !DILocation(line: 351, column: 11, scope: !2751, inlinedAt: !4241)
!4303 = !DILocation(line: 351, column: 6, scope: !2690, inlinedAt: !4241)
!4304 = !DILocation(line: 352, column: 3, scope: !2751, inlinedAt: !4241)
!4305 = !DILocation(line: 354, column: 32, scope: !2756, inlinedAt: !4241)
!4306 = !DILocation(line: 354, column: 37, scope: !2756, inlinedAt: !4241)
!4307 = !DILocation(line: 354, column: 42, scope: !2756, inlinedAt: !4241)
!4308 = !DILocation(line: 354, column: 45, scope: !2756, inlinedAt: !4241)
!4309 = !DILocation(line: 354, column: 50, scope: !2756, inlinedAt: !4241)
!4310 = !DILocation(line: 354, column: 6, scope: !2690, inlinedAt: !4241)
!4311 = !DILocation(line: 355, column: 3, scope: !2756, inlinedAt: !4241)
!4312 = !DILocation(line: 356, column: 32, scope: !2764, inlinedAt: !4241)
!4313 = !DILocation(line: 356, column: 37, scope: !2764, inlinedAt: !4241)
!4314 = !DILocation(line: 356, column: 43, scope: !2764, inlinedAt: !4241)
!4315 = !DILocation(line: 356, column: 46, scope: !2764, inlinedAt: !4241)
!4316 = !DILocation(line: 356, column: 51, scope: !2764, inlinedAt: !4241)
!4317 = !DILocation(line: 356, column: 6, scope: !2690, inlinedAt: !4241)
!4318 = !DILocation(line: 357, column: 3, scope: !2764, inlinedAt: !4241)
!4319 = !DILocation(line: 358, column: 6, scope: !2772, inlinedAt: !4241)
!4320 = !DILocation(line: 358, column: 11, scope: !2772, inlinedAt: !4241)
!4321 = !DILocation(line: 358, column: 6, scope: !2690, inlinedAt: !4241)
!4322 = !DILocation(line: 358, column: 26, scope: !2772, inlinedAt: !4241)
!4323 = !DILocation(line: 359, column: 6, scope: !2777, inlinedAt: !4241)
!4324 = !DILocation(line: 359, column: 11, scope: !2777, inlinedAt: !4241)
!4325 = !DILocation(line: 359, column: 6, scope: !2690, inlinedAt: !4241)
!4326 = !DILocation(line: 359, column: 26, scope: !2777, inlinedAt: !4241)
!4327 = !DILocation(line: 360, column: 6, scope: !2782, inlinedAt: !4241)
!4328 = !DILocation(line: 360, column: 11, scope: !2782, inlinedAt: !4241)
!4329 = !DILocation(line: 360, column: 6, scope: !2690, inlinedAt: !4241)
!4330 = !DILocation(line: 360, column: 26, scope: !2782, inlinedAt: !4241)
!4331 = !DILocation(line: 361, column: 6, scope: !2787, inlinedAt: !4241)
!4332 = !DILocation(line: 361, column: 11, scope: !2787, inlinedAt: !4241)
!4333 = !DILocation(line: 361, column: 6, scope: !2690, inlinedAt: !4241)
!4334 = !DILocation(line: 361, column: 26, scope: !2787, inlinedAt: !4241)
!4335 = !DILocation(line: 362, column: 6, scope: !2792, inlinedAt: !4241)
!4336 = !DILocation(line: 362, column: 11, scope: !2792, inlinedAt: !4241)
!4337 = !DILocation(line: 362, column: 6, scope: !2690, inlinedAt: !4241)
!4338 = !DILocation(line: 362, column: 26, scope: !2792, inlinedAt: !4241)
!4339 = !DILocation(line: 363, column: 6, scope: !2797, inlinedAt: !4241)
!4340 = !DILocation(line: 363, column: 11, scope: !2797, inlinedAt: !4241)
!4341 = !DILocation(line: 363, column: 6, scope: !2690, inlinedAt: !4241)
!4342 = !DILocation(line: 363, column: 26, scope: !2797, inlinedAt: !4241)
!4343 = !DILocation(line: 364, column: 6, scope: !2802, inlinedAt: !4241)
!4344 = !DILocation(line: 364, column: 11, scope: !2802, inlinedAt: !4241)
!4345 = !DILocation(line: 364, column: 6, scope: !2690, inlinedAt: !4241)
!4346 = !DILocation(line: 364, column: 26, scope: !2802, inlinedAt: !4241)
!4347 = !DILocation(line: 365, column: 6, scope: !2807, inlinedAt: !4241)
!4348 = !DILocation(line: 365, column: 11, scope: !2807, inlinedAt: !4241)
!4349 = !DILocation(line: 365, column: 6, scope: !2690, inlinedAt: !4241)
!4350 = !DILocation(line: 365, column: 26, scope: !2807, inlinedAt: !4241)
!4351 = !DILocation(line: 366, column: 6, scope: !2812, inlinedAt: !4241)
!4352 = !DILocation(line: 366, column: 11, scope: !2812, inlinedAt: !4241)
!4353 = !DILocation(line: 366, column: 6, scope: !2690, inlinedAt: !4241)
!4354 = !DILocation(line: 366, column: 26, scope: !2812, inlinedAt: !4241)
!4355 = !DILocation(line: 367, column: 6, scope: !2817, inlinedAt: !4241)
!4356 = !DILocation(line: 367, column: 11, scope: !2817, inlinedAt: !4241)
!4357 = !DILocation(line: 367, column: 6, scope: !2690, inlinedAt: !4241)
!4358 = !DILocation(line: 367, column: 26, scope: !2817, inlinedAt: !4241)
!4359 = !DILocation(line: 368, column: 6, scope: !2822, inlinedAt: !4241)
!4360 = !DILocation(line: 368, column: 11, scope: !2822, inlinedAt: !4241)
!4361 = !DILocation(line: 368, column: 6, scope: !2690, inlinedAt: !4241)
!4362 = !DILocation(line: 368, column: 26, scope: !2822, inlinedAt: !4241)
!4363 = !DILocation(line: 369, column: 6, scope: !2827, inlinedAt: !4241)
!4364 = !DILocation(line: 369, column: 11, scope: !2827, inlinedAt: !4241)
!4365 = !DILocation(line: 369, column: 6, scope: !2690, inlinedAt: !4241)
!4366 = !DILocation(line: 369, column: 26, scope: !2827, inlinedAt: !4241)
!4367 = !DILocation(line: 370, column: 6, scope: !2832, inlinedAt: !4241)
!4368 = !DILocation(line: 370, column: 11, scope: !2832, inlinedAt: !4241)
!4369 = !DILocation(line: 370, column: 6, scope: !2690, inlinedAt: !4241)
!4370 = !DILocation(line: 370, column: 26, scope: !2832, inlinedAt: !4241)
!4371 = !DILocation(line: 371, column: 6, scope: !2837, inlinedAt: !4241)
!4372 = !DILocation(line: 371, column: 11, scope: !2837, inlinedAt: !4241)
!4373 = !DILocation(line: 371, column: 6, scope: !2690, inlinedAt: !4241)
!4374 = !DILocation(line: 371, column: 26, scope: !2837, inlinedAt: !4241)
!4375 = !DILocation(line: 372, column: 6, scope: !2842, inlinedAt: !4241)
!4376 = !DILocation(line: 372, column: 11, scope: !2842, inlinedAt: !4241)
!4377 = !DILocation(line: 372, column: 6, scope: !2690, inlinedAt: !4241)
!4378 = !DILocation(line: 372, column: 26, scope: !2842, inlinedAt: !4241)
!4379 = !DILocation(line: 373, column: 6, scope: !2847, inlinedAt: !4241)
!4380 = !DILocation(line: 373, column: 11, scope: !2847, inlinedAt: !4241)
!4381 = !DILocation(line: 373, column: 6, scope: !2690, inlinedAt: !4241)
!4382 = !DILocation(line: 373, column: 26, scope: !2847, inlinedAt: !4241)
!4383 = !DILocation(line: 374, column: 6, scope: !2852, inlinedAt: !4241)
!4384 = !DILocation(line: 374, column: 11, scope: !2852, inlinedAt: !4241)
!4385 = !DILocation(line: 374, column: 6, scope: !2690, inlinedAt: !4241)
!4386 = !DILocation(line: 374, column: 26, scope: !2852, inlinedAt: !4241)
!4387 = !DILocation(line: 375, column: 6, scope: !2857, inlinedAt: !4241)
!4388 = !DILocation(line: 375, column: 11, scope: !2857, inlinedAt: !4241)
!4389 = !DILocation(line: 375, column: 6, scope: !2690, inlinedAt: !4241)
!4390 = !DILocation(line: 375, column: 27, scope: !2857, inlinedAt: !4241)
!4391 = !DILocation(line: 376, column: 6, scope: !2862, inlinedAt: !4241)
!4392 = !DILocation(line: 376, column: 11, scope: !2862, inlinedAt: !4241)
!4393 = !DILocation(line: 376, column: 6, scope: !2690, inlinedAt: !4241)
!4394 = !DILocation(line: 376, column: 32, scope: !2862, inlinedAt: !4241)
!4395 = !DILocation(line: 377, column: 6, scope: !2867, inlinedAt: !4241)
!4396 = !DILocation(line: 377, column: 11, scope: !2867, inlinedAt: !4241)
!4397 = !DILocation(line: 377, column: 6, scope: !2690, inlinedAt: !4241)
!4398 = !DILocation(line: 377, column: 32, scope: !2867, inlinedAt: !4241)
!4399 = !DILocation(line: 378, column: 6, scope: !2872, inlinedAt: !4241)
!4400 = !DILocation(line: 378, column: 11, scope: !2872, inlinedAt: !4241)
!4401 = !DILocation(line: 378, column: 6, scope: !2690, inlinedAt: !4241)
!4402 = !DILocation(line: 378, column: 32, scope: !2872, inlinedAt: !4241)
!4403 = !DILocation(line: 379, column: 6, scope: !2877, inlinedAt: !4241)
!4404 = !DILocation(line: 379, column: 11, scope: !2877, inlinedAt: !4241)
!4405 = !DILocation(line: 379, column: 6, scope: !2690, inlinedAt: !4241)
!4406 = !DILocation(line: 379, column: 33, scope: !2877, inlinedAt: !4241)
!4407 = !DILocation(line: 380, column: 6, scope: !2882, inlinedAt: !4241)
!4408 = !DILocation(line: 380, column: 11, scope: !2882, inlinedAt: !4241)
!4409 = !DILocation(line: 380, column: 6, scope: !2690, inlinedAt: !4241)
!4410 = !DILocation(line: 380, column: 33, scope: !2882, inlinedAt: !4241)
!4411 = !DILocation(line: 381, column: 6, scope: !2887, inlinedAt: !4241)
!4412 = !DILocation(line: 381, column: 11, scope: !2887, inlinedAt: !4241)
!4413 = !DILocation(line: 381, column: 6, scope: !2690, inlinedAt: !4241)
!4414 = !DILocation(line: 381, column: 33, scope: !2887, inlinedAt: !4241)
!4415 = !DILocation(line: 382, column: 2, scope: !2892, inlinedAt: !4241)
!4416 = !DILocation(line: 382, column: 2, scope: !2896, inlinedAt: !4241)
!4417 = !DILocation(line: 382, column: 2, scope: !2897, inlinedAt: !4241)
!4418 = !DILocation(line: 386, column: 1, scope: !2690, inlinedAt: !4241)
!4419 = !DILocation(line: 547, column: 9, scope: !2673, inlinedAt: !4233)
!4420 = !DILocation(line: 549, column: 8, scope: !2903, inlinedAt: !4233)
!4421 = !DILocation(line: 549, column: 7, scope: !2673, inlinedAt: !4233)
!4422 = !DILocation(line: 550, column: 4, scope: !2903, inlinedAt: !4233)
!4423 = !DILocation(line: 553, column: 33, scope: !2673, inlinedAt: !4233)
!4424 = !DILocation(line: 325, column: 6, scope: !2908, inlinedAt: !4239)
!4425 = !DILocation(line: 325, column: 6, scope: !2684, inlinedAt: !4239)
!4426 = !DILocation(line: 326, column: 3, scope: !2908, inlinedAt: !4239)
!4427 = !DILocation(line: 332, column: 9, scope: !2684, inlinedAt: !4239)
!4428 = !DILocation(line: 332, column: 15, scope: !2684, inlinedAt: !4239)
!4429 = !DILocation(line: 332, column: 2, scope: !2684, inlinedAt: !4239)
!4430 = !DILocation(line: 336, column: 1, scope: !2684, inlinedAt: !4239)
!4431 = !DILocation(line: 553, column: 5, scope: !2673, inlinedAt: !4233)
!4432 = !DILocation(line: 553, column: 41, scope: !2673, inlinedAt: !4233)
!4433 = !DILocation(line: 554, column: 5, scope: !2673, inlinedAt: !4233)
!4434 = !DILocation(line: 554, column: 12, scope: !2673, inlinedAt: !4233)
!4435 = !DILocation(line: 448, column: 31, scope: !2668, inlinedAt: !4232)
!4436 = !DILocation(line: 448, column: 34, scope: !2668, inlinedAt: !4232)
!4437 = !DILocation(line: 448, column: 14, scope: !2668, inlinedAt: !4232)
!4438 = !DILocation(line: 450, column: 22, scope: !2668, inlinedAt: !4232)
!4439 = !DILocation(line: 450, column: 25, scope: !2668, inlinedAt: !4232)
!4440 = !DILocation(line: 450, column: 30, scope: !2668, inlinedAt: !4232)
!4441 = !DILocation(line: 450, column: 36, scope: !2668, inlinedAt: !4232)
!4442 = !DILocation(line: 450, column: 8, scope: !2668, inlinedAt: !4232)
!4443 = !DILocation(line: 450, column: 6, scope: !2668, inlinedAt: !4232)
!4444 = !DILocation(line: 451, column: 9, scope: !2668, inlinedAt: !4232)
!4445 = !DILocation(line: 552, column: 3, scope: !2673, inlinedAt: !4233)
!4446 = !DILocation(line: 557, column: 19, scope: !2675, inlinedAt: !4233)
!4447 = !DILocation(line: 557, column: 25, scope: !2675, inlinedAt: !4233)
!4448 = !DILocation(line: 557, column: 9, scope: !2675, inlinedAt: !4233)
!4449 = !DILocation(line: 557, column: 2, scope: !2675, inlinedAt: !4233)
!4450 = !DILocation(line: 558, column: 1, scope: !2675, inlinedAt: !4233)
!4451 = !DILocation(line: 591, column: 3, scope: !4234)
!4452 = !DILocation(line: 592, column: 19, scope: !4230)
!4453 = !DILocation(line: 592, column: 26, scope: !4230)
!4454 = !DILocation(line: 592, column: 9, scope: !4230)
!4455 = !DILocation(line: 592, column: 2, scope: !4230)
!4456 = !DILocation(line: 593, column: 1, scope: !4230)
!4457 = distinct !DISubprogram(name: "__must_check_overflow", scope: !4458, file: !4458, line: 52, type: !4459, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!4458 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!4459 = !DISubroutineType(types: !4460)
!4460 = !{!261, !261}
!4461 = !DILocalVariable(name: "overflow", arg: 1, scope: !4457, file: !4458, line: 52, type: !261)
!4462 = !DILocation(line: 52, column: 60, scope: !4457)
!4463 = !DILocation(line: 54, column: 9, scope: !4457)
!4464 = !DILocation(line: 54, column: 2, scope: !4457)
!4465 = distinct !DISubprogram(name: "gpe_count", scope: !3, file: !3, line: 607, type: !4466, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!4466 = !DISubroutineType(types: !4467)
!4467 = !{null, !92}
!4468 = !DILocalVariable(name: "gpe_number", arg: 1, scope: !4465, file: !3, line: 607, type: !92)
!4469 = !DILocation(line: 607, column: 27, scope: !4465)
!4470 = !DILocation(line: 609, column: 16, scope: !4465)
!4471 = !DILocation(line: 611, column: 7, scope: !4472)
!4472 = distinct !DILexicalBlock(scope: !4465, file: !3, line: 611, column: 6)
!4473 = !DILocation(line: 611, column: 6, scope: !4465)
!4474 = !DILocation(line: 612, column: 3, scope: !4472)
!4475 = !DILocation(line: 614, column: 6, scope: !4476)
!4476 = distinct !DILexicalBlock(scope: !4465, file: !3, line: 614, column: 6)
!4477 = !DILocation(line: 614, column: 19, scope: !4476)
!4478 = !DILocation(line: 614, column: 17, scope: !4476)
!4479 = !DILocation(line: 614, column: 6, scope: !4465)
!4480 = !DILocation(line: 615, column: 3, scope: !4476)
!4481 = !DILocation(line: 615, column: 16, scope: !4476)
!4482 = !DILocation(line: 615, column: 28, scope: !4476)
!4483 = !DILocation(line: 615, column: 33, scope: !4476)
!4484 = !DILocation(line: 617, column: 3, scope: !4476)
!4485 = !DILocation(line: 617, column: 16, scope: !4476)
!4486 = !DILocation(line: 617, column: 25, scope: !4476)
!4487 = !DILocation(line: 617, column: 27, scope: !4476)
!4488 = !DILocation(line: 617, column: 49, scope: !4476)
!4489 = !DILocation(line: 618, column: 22, scope: !4476)
!4490 = !DILocation(line: 618, column: 27, scope: !4476)
!4491 = !DILocation(line: 620, column: 2, scope: !4465)
!4492 = !DILocation(line: 621, column: 1, scope: !4465)
!4493 = distinct !DISubprogram(name: "fixed_event_count", scope: !3, file: !3, line: 623, type: !4466, scopeLine: 624, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!4494 = !DILocalVariable(name: "event_number", arg: 1, scope: !4493, file: !3, line: 623, type: !92)
!4495 = !DILocation(line: 623, column: 35, scope: !4493)
!4496 = !DILocation(line: 625, column: 7, scope: !4497)
!4497 = distinct !DILexicalBlock(scope: !4493, file: !3, line: 625, column: 6)
!4498 = !DILocation(line: 625, column: 6, scope: !4493)
!4499 = !DILocation(line: 626, column: 3, scope: !4497)
!4500 = !DILocation(line: 628, column: 6, scope: !4501)
!4501 = distinct !DILexicalBlock(scope: !4493, file: !3, line: 628, column: 6)
!4502 = !DILocation(line: 628, column: 19, scope: !4501)
!4503 = !DILocation(line: 628, column: 6, scope: !4493)
!4504 = !DILocation(line: 629, column: 3, scope: !4501)
!4505 = !DILocation(line: 629, column: 16, scope: !4501)
!4506 = !DILocation(line: 629, column: 27, scope: !4501)
!4507 = !DILocation(line: 629, column: 25, scope: !4501)
!4508 = !DILocation(line: 629, column: 41, scope: !4501)
!4509 = !DILocation(line: 629, column: 46, scope: !4501)
!4510 = !DILocation(line: 631, column: 3, scope: !4501)
!4511 = !DILocation(line: 631, column: 16, scope: !4501)
!4512 = !DILocation(line: 631, column: 25, scope: !4501)
!4513 = !DILocation(line: 631, column: 27, scope: !4501)
!4514 = !DILocation(line: 631, column: 49, scope: !4501)
!4515 = !DILocation(line: 632, column: 22, scope: !4501)
!4516 = !DILocation(line: 632, column: 27, scope: !4501)
!4517 = !DILocation(line: 634, column: 2, scope: !4493)
!4518 = !DILocation(line: 635, column: 1, scope: !4493)
!4519 = distinct !DISubprogram(name: "get_status", scope: !3, file: !3, line: 651, type: !4520, scopeLine: 653, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!4520 = !DISubroutineType(types: !4521)
!4521 = !{!176, !92, !4522, !4523}
!4522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!4523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!4524 = !DILocalVariable(name: "index", arg: 1, scope: !4519, file: !3, line: 651, type: !92)
!4525 = !DILocation(line: 651, column: 27, scope: !4519)
!4526 = !DILocalVariable(name: "ret", arg: 2, scope: !4519, file: !3, line: 651, type: !4522)
!4527 = !DILocation(line: 651, column: 53, scope: !4519)
!4528 = !DILocalVariable(name: "handle", arg: 3, scope: !4519, file: !3, line: 652, type: !4523)
!4529 = !DILocation(line: 652, column: 22, scope: !4519)
!4530 = !DILocalVariable(name: "status", scope: !4519, file: !3, line: 654, type: !90)
!4531 = !DILocation(line: 654, column: 14, scope: !4519)
!4532 = !DILocation(line: 656, column: 6, scope: !4533)
!4533 = distinct !DILexicalBlock(scope: !4519, file: !3, line: 656, column: 6)
!4534 = !DILocation(line: 656, column: 15, scope: !4533)
!4535 = !DILocation(line: 656, column: 24, scope: !4533)
!4536 = !DILocation(line: 656, column: 26, scope: !4533)
!4537 = !DILocation(line: 656, column: 12, scope: !4533)
!4538 = !DILocation(line: 656, column: 6, scope: !4519)
!4539 = !DILocation(line: 657, column: 3, scope: !4533)
!4540 = !DILocation(line: 659, column: 6, scope: !4541)
!4541 = distinct !DILexicalBlock(scope: !4519, file: !3, line: 659, column: 6)
!4542 = !DILocation(line: 659, column: 14, scope: !4541)
!4543 = !DILocation(line: 659, column: 12, scope: !4541)
!4544 = !DILocation(line: 659, column: 6, scope: !4519)
!4545 = !DILocation(line: 660, column: 32, scope: !4546)
!4546 = distinct !DILexicalBlock(scope: !4541, file: !3, line: 659, column: 24)
!4547 = !DILocation(line: 660, column: 39, scope: !4546)
!4548 = !DILocation(line: 660, column: 12, scope: !4546)
!4549 = !DILocation(line: 660, column: 10, scope: !4546)
!4550 = !DILocation(line: 661, column: 7, scope: !4551)
!4551 = distinct !DILexicalBlock(scope: !4546, file: !3, line: 661, column: 7)
!4552 = !DILocation(line: 661, column: 7, scope: !4546)
!4553 = !DILocation(line: 662, column: 4, scope: !4554)
!4554 = distinct !DILexicalBlock(scope: !4551, file: !3, line: 661, column: 29)
!4555 = !DILocation(line: 664, column: 4, scope: !4554)
!4556 = !DILocation(line: 666, column: 33, scope: !4546)
!4557 = !DILocation(line: 666, column: 32, scope: !4546)
!4558 = !DILocation(line: 666, column: 41, scope: !4546)
!4559 = !DILocation(line: 666, column: 48, scope: !4546)
!4560 = !DILocation(line: 666, column: 12, scope: !4546)
!4561 = !DILocation(line: 666, column: 10, scope: !4546)
!4562 = !DILocation(line: 667, column: 2, scope: !4546)
!4563 = !DILocation(line: 668, column: 34, scope: !4564)
!4564 = distinct !DILexicalBlock(scope: !4541, file: !3, line: 667, column: 9)
!4565 = !DILocation(line: 668, column: 42, scope: !4564)
!4566 = !DILocation(line: 668, column: 40, scope: !4564)
!4567 = !DILocation(line: 668, column: 52, scope: !4564)
!4568 = !DILocation(line: 668, column: 12, scope: !4564)
!4569 = !DILocation(line: 668, column: 10, scope: !4564)
!4570 = !DILocation(line: 670, column: 6, scope: !4571)
!4571 = distinct !DILexicalBlock(scope: !4519, file: !3, line: 670, column: 6)
!4572 = !DILocation(line: 670, column: 6, scope: !4519)
!4573 = !DILocation(line: 671, column: 3, scope: !4571)
!4574 = !DILocation(line: 673, column: 2, scope: !4519)
!4575 = !DILocation(line: 674, column: 1, scope: !4519)
!4576 = distinct !DISubprogram(name: "kstrtoul", scope: !4577, file: !4577, line: 351, type: !4578, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!4577 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/lizy2001/genbc/linux")
!4578 = !DISubroutineType(types: !4579)
!4579 = !{!176, !109, !7, !2013}
!4580 = !DILocalVariable(name: "s", arg: 1, scope: !4576, file: !4577, line: 351, type: !109)
!4581 = !DILocation(line: 351, column: 53, scope: !4576)
!4582 = !DILocalVariable(name: "base", arg: 2, scope: !4576, file: !4577, line: 351, type: !7)
!4583 = !DILocation(line: 351, column: 69, scope: !4576)
!4584 = !DILocalVariable(name: "res", arg: 3, scope: !4576, file: !4577, line: 351, type: !2013)
!4585 = !DILocation(line: 351, column: 90, scope: !4576)
!4586 = !DILocation(line: 359, column: 20, scope: !4587)
!4587 = distinct !DILexicalBlock(scope: !4576, file: !4577, line: 357, column: 6)
!4588 = !DILocation(line: 359, column: 23, scope: !4587)
!4589 = !DILocation(line: 359, column: 51, scope: !4587)
!4590 = !DILocation(line: 359, column: 10, scope: !4587)
!4591 = !DILocation(line: 359, column: 3, scope: !4587)
!4592 = distinct !DISubprogram(name: "hotplug_enabled_show", scope: !3, file: !3, line: 950, type: !2564, scopeLine: 952, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!4593 = !DILocalVariable(name: "kobj", arg: 1, scope: !4592, file: !3, line: 950, type: !133)
!4594 = !DILocation(line: 950, column: 53, scope: !4592)
!4595 = !DILocalVariable(name: "attr", arg: 2, scope: !4592, file: !3, line: 951, type: !2558)
!4596 = !DILocation(line: 951, column: 32, scope: !4592)
!4597 = !DILocalVariable(name: "buf", arg: 3, scope: !4592, file: !3, line: 951, type: !192)
!4598 = !DILocation(line: 951, column: 44, scope: !4592)
!4599 = !DILocalVariable(name: "hotplug", scope: !4592, file: !3, line: 953, type: !1613)
!4600 = !DILocation(line: 953, column: 31, scope: !4592)
!4601 = !DILocation(line: 953, column: 65, scope: !4592)
!4602 = !DILocation(line: 953, column: 41, scope: !4592)
!4603 = !DILocation(line: 955, column: 17, scope: !4592)
!4604 = !DILocation(line: 955, column: 30, scope: !4592)
!4605 = !DILocation(line: 955, column: 39, scope: !4592)
!4606 = !DILocation(line: 955, column: 9, scope: !4592)
!4607 = !DILocation(line: 955, column: 2, scope: !4592)
!4608 = distinct !DISubprogram(name: "hotplug_enabled_store", scope: !3, file: !3, line: 958, type: !2568, scopeLine: 961, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!4609 = !DILocalVariable(name: "kobj", arg: 1, scope: !4608, file: !3, line: 958, type: !133)
!4610 = !DILocation(line: 958, column: 54, scope: !4608)
!4611 = !DILocalVariable(name: "attr", arg: 2, scope: !4608, file: !3, line: 959, type: !2558)
!4612 = !DILocation(line: 959, column: 33, scope: !4608)
!4613 = !DILocalVariable(name: "buf", arg: 3, scope: !4608, file: !3, line: 960, type: !109)
!4614 = !DILocation(line: 960, column: 22, scope: !4608)
!4615 = !DILocalVariable(name: "size", arg: 4, scope: !4608, file: !3, line: 960, type: !116)
!4616 = !DILocation(line: 960, column: 34, scope: !4608)
!4617 = !DILocalVariable(name: "hotplug", scope: !4608, file: !3, line: 962, type: !1613)
!4618 = !DILocation(line: 962, column: 31, scope: !4608)
!4619 = !DILocation(line: 962, column: 65, scope: !4608)
!4620 = !DILocation(line: 962, column: 41, scope: !4608)
!4621 = !DILocalVariable(name: "val", scope: !4608, file: !3, line: 963, type: !7)
!4622 = !DILocation(line: 963, column: 15, scope: !4608)
!4623 = !DILocation(line: 965, column: 17, scope: !4624)
!4624 = distinct !DILexicalBlock(scope: !4608, file: !3, line: 965, column: 6)
!4625 = !DILocation(line: 965, column: 6, scope: !4624)
!4626 = !DILocation(line: 965, column: 32, scope: !4624)
!4627 = !DILocation(line: 965, column: 35, scope: !4624)
!4628 = !DILocation(line: 965, column: 39, scope: !4624)
!4629 = !DILocation(line: 965, column: 6, scope: !4608)
!4630 = !DILocation(line: 966, column: 3, scope: !4624)
!4631 = !DILocation(line: 968, column: 28, scope: !4608)
!4632 = !DILocation(line: 968, column: 37, scope: !4608)
!4633 = !DILocation(line: 968, column: 2, scope: !4608)
!4634 = !DILocation(line: 969, column: 9, scope: !4608)
!4635 = !DILocation(line: 969, column: 2, scope: !4608)
!4636 = !DILocation(line: 970, column: 1, scope: !4608)
!4637 = distinct !DISubprogram(name: "to_acpi_hotplug_profile", scope: !1615, file: !1615, line: 116, type: !4638, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!4638 = !DISubroutineType(types: !4639)
!4639 = !{!1613, !133}
!4640 = !DILocalVariable(name: "kobj", arg: 1, scope: !4637, file: !1615, line: 117, type: !133)
!4641 = !DILocation(line: 117, column: 23, scope: !4637)
!4642 = !DILocalVariable(name: "__mptr", scope: !4643, file: !1615, line: 119, type: !96)
!4643 = distinct !DILexicalBlock(scope: !4637, file: !1615, line: 119, column: 9)
!4644 = !DILocation(line: 119, column: 9, scope: !4643)
!4645 = !DILocation(line: 119, column: 9, scope: !4646)
!4646 = distinct !DILexicalBlock(scope: !4643, file: !1615, line: 119, column: 9)
!4647 = !DILocation(line: 119, column: 2, scope: !4637)
!4648 = distinct !DISubprogram(name: "acpi_table_data_init", scope: !3, file: !3, line: 481, type: !4649, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!4649 = !DISubroutineType(types: !4650)
!4650 = !{!176, !2939}
!4651 = !DILocalVariable(name: "th", arg: 1, scope: !4648, file: !3, line: 481, type: !2939)
!4652 = !DILocation(line: 481, column: 59, scope: !4648)
!4653 = !DILocalVariable(name: "data_attr", scope: !4648, file: !3, line: 483, type: !2454)
!4654 = !DILocation(line: 483, column: 25, scope: !4648)
!4655 = !DILocalVariable(name: "i", scope: !4648, file: !3, line: 484, type: !176)
!4656 = !DILocation(line: 484, column: 6, scope: !4648)
!4657 = !DILocation(line: 486, column: 9, scope: !4658)
!4658 = distinct !DILexicalBlock(scope: !4648, file: !3, line: 486, column: 2)
!4659 = !DILocation(line: 486, column: 7, scope: !4658)
!4660 = !DILocation(line: 486, column: 14, scope: !4661)
!4661 = distinct !DILexicalBlock(scope: !4658, file: !3, line: 486, column: 2)
!4662 = !DILocation(line: 486, column: 16, scope: !4661)
!4663 = !DILocation(line: 486, column: 2, scope: !4658)
!4664 = !DILocation(line: 487, column: 7, scope: !4665)
!4665 = distinct !DILexicalBlock(scope: !4666, file: !3, line: 487, column: 7)
!4666 = distinct !DILexicalBlock(scope: !4661, file: !3, line: 486, column: 43)
!4667 = !DILocation(line: 487, column: 7, scope: !4666)
!4668 = !DILocation(line: 488, column: 16, scope: !4669)
!4669 = distinct !DILexicalBlock(scope: !4665, file: !3, line: 487, column: 68)
!4670 = !DILocation(line: 488, column: 14, scope: !4669)
!4671 = !DILocation(line: 489, column: 9, scope: !4672)
!4672 = distinct !DILexicalBlock(scope: !4669, file: !3, line: 489, column: 8)
!4673 = !DILocation(line: 489, column: 8, scope: !4669)
!4674 = !DILocation(line: 490, column: 5, scope: !4672)
!4675 = !DILocation(line: 491, column: 4, scope: !4669)
!4676 = !DILocation(line: 491, column: 4, scope: !4677)
!4677 = distinct !DILexicalBlock(scope: !4669, file: !3, line: 491, column: 4)
!4678 = !DILocation(line: 492, column: 4, scope: !4669)
!4679 = !DILocation(line: 492, column: 15, scope: !4669)
!4680 = !DILocation(line: 492, column: 20, scope: !4669)
!4681 = !DILocation(line: 492, column: 25, scope: !4669)
!4682 = !DILocation(line: 493, column: 4, scope: !4669)
!4683 = !DILocation(line: 493, column: 15, scope: !4669)
!4684 = !DILocation(line: 493, column: 20, scope: !4669)
!4685 = !DILocation(line: 493, column: 25, scope: !4669)
!4686 = !DILocation(line: 493, column: 30, scope: !4669)
!4687 = !DILocation(line: 494, column: 26, scope: !4669)
!4688 = !DILocation(line: 494, column: 11, scope: !4669)
!4689 = !DILocation(line: 494, column: 29, scope: !4669)
!4690 = !DILocation(line: 494, column: 32, scope: !4669)
!4691 = !DILocation(line: 494, column: 36, scope: !4669)
!4692 = !DILocation(line: 494, column: 4, scope: !4669)
!4693 = !DILocation(line: 496, column: 2, scope: !4666)
!4694 = !DILocation(line: 486, column: 39, scope: !4661)
!4695 = !DILocation(line: 486, column: 2, scope: !4661)
!4696 = distinct !{!4696, !4663, !4697}
!4697 = !DILocation(line: 496, column: 2, scope: !4658)
!4698 = !DILocation(line: 497, column: 2, scope: !4648)
!4699 = !DILocation(line: 498, column: 1, scope: !4648)
!4700 = distinct !DISubprogram(name: "acpi_data_show", scope: !3, file: !3, line: 436, type: !124, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!4701 = !DILocalVariable(name: "filp", arg: 1, scope: !4700, file: !3, line: 436, type: !130)
!4702 = !DILocation(line: 436, column: 44, scope: !4700)
!4703 = !DILocalVariable(name: "kobj", arg: 2, scope: !4700, file: !3, line: 436, type: !133)
!4704 = !DILocation(line: 436, column: 66, scope: !4700)
!4705 = !DILocalVariable(name: "bin_attr", arg: 3, scope: !4700, file: !3, line: 437, type: !244)
!4706 = !DILocation(line: 437, column: 32, scope: !4700)
!4707 = !DILocalVariable(name: "buf", arg: 4, scope: !4700, file: !3, line: 437, type: !192)
!4708 = !DILocation(line: 437, column: 48, scope: !4700)
!4709 = !DILocalVariable(name: "offset", arg: 5, scope: !4700, file: !3, line: 438, type: !459)
!4710 = !DILocation(line: 438, column: 17, scope: !4700)
!4711 = !DILocalVariable(name: "count", arg: 6, scope: !4700, file: !3, line: 438, type: !116)
!4712 = !DILocation(line: 438, column: 32, scope: !4700)
!4713 = !DILocalVariable(name: "data_attr", scope: !4700, file: !3, line: 440, type: !2454)
!4714 = !DILocation(line: 440, column: 25, scope: !4700)
!4715 = !DILocalVariable(name: "base", scope: !4700, file: !3, line: 441, type: !96)
!4716 = !DILocation(line: 441, column: 16, scope: !4700)
!4717 = !DILocalVariable(name: "rc", scope: !4700, file: !3, line: 442, type: !126)
!4718 = !DILocation(line: 442, column: 10, scope: !4700)
!4719 = !DILocalVariable(name: "__mptr", scope: !4720, file: !3, line: 444, type: !96)
!4720 = distinct !DILexicalBlock(scope: !4700, file: !3, line: 444, column: 14)
!4721 = !DILocation(line: 444, column: 14, scope: !4720)
!4722 = !DILocation(line: 444, column: 14, scope: !4723)
!4723 = distinct !DILexicalBlock(scope: !4720, file: !3, line: 444, column: 14)
!4724 = !DILocation(line: 444, column: 12, scope: !4700)
!4725 = !DILocation(line: 446, column: 28, scope: !4700)
!4726 = !DILocation(line: 446, column: 39, scope: !4700)
!4727 = !DILocation(line: 446, column: 45, scope: !4700)
!4728 = !DILocation(line: 446, column: 56, scope: !4700)
!4729 = !DILocation(line: 446, column: 61, scope: !4700)
!4730 = !DILocation(line: 446, column: 9, scope: !4700)
!4731 = !DILocation(line: 446, column: 7, scope: !4700)
!4732 = !DILocation(line: 447, column: 7, scope: !4733)
!4733 = distinct !DILexicalBlock(scope: !4700, file: !3, line: 447, column: 6)
!4734 = !DILocation(line: 447, column: 6, scope: !4700)
!4735 = !DILocation(line: 448, column: 3, scope: !4733)
!4736 = !DILocation(line: 449, column: 31, scope: !4700)
!4737 = !DILocation(line: 449, column: 36, scope: !4700)
!4738 = !DILocation(line: 449, column: 52, scope: !4700)
!4739 = !DILocation(line: 450, column: 10, scope: !4700)
!4740 = !DILocation(line: 450, column: 21, scope: !4700)
!4741 = !DILocation(line: 450, column: 26, scope: !4700)
!4742 = !DILocation(line: 449, column: 7, scope: !4700)
!4743 = !DILocation(line: 449, column: 5, scope: !4700)
!4744 = !DILocation(line: 451, column: 23, scope: !4700)
!4745 = !DILocation(line: 451, column: 29, scope: !4700)
!4746 = !DILocation(line: 451, column: 40, scope: !4700)
!4747 = !DILocation(line: 451, column: 45, scope: !4700)
!4748 = !DILocation(line: 451, column: 2, scope: !4700)
!4749 = !DILocation(line: 453, column: 9, scope: !4700)
!4750 = !DILocation(line: 453, column: 2, scope: !4700)
!4751 = !DILocation(line: 454, column: 1, scope: !4700)
!4752 = distinct !DISubprogram(name: "acpi_bert_data_init", scope: !3, file: !3, line: 456, type: !2611, scopeLine: 457, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!4753 = !DILocalVariable(name: "th", arg: 1, scope: !4752, file: !3, line: 456, type: !96)
!4754 = !DILocation(line: 456, column: 38, scope: !4752)
!4755 = !DILocalVariable(name: "data_attr", arg: 2, scope: !4752, file: !3, line: 456, type: !2454)
!4756 = !DILocation(line: 456, column: 65, scope: !4752)
!4757 = !DILocalVariable(name: "bert", scope: !4752, file: !3, line: 458, type: !4758)
!4758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4759, size: 64)
!4759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_bert", file: !4760, line: 228, size: 384, elements: !4761)
!4760 = !DIFile(filename: "./include/acpi/actbl1.h", directory: "/home/lizy2001/genbc/linux")
!4761 = !{!4762, !4763, !4764}
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4759, file: !4760, line: 229, baseType: !2940, size: 288)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "region_length", scope: !4759, file: !4760, line: 230, baseType: !92, size: 32, offset: 288)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !4759, file: !4760, line: 231, baseType: !507, size: 64, offset: 320)
!4765 = !DILocation(line: 458, column: 26, scope: !4752)
!4766 = !DILocation(line: 458, column: 33, scope: !4752)
!4767 = !DILocation(line: 460, column: 6, scope: !4768)
!4768 = distinct !DILexicalBlock(scope: !4752, file: !3, line: 460, column: 6)
!4769 = !DILocation(line: 460, column: 12, scope: !4768)
!4770 = !DILocation(line: 460, column: 19, scope: !4768)
!4771 = !DILocation(line: 460, column: 26, scope: !4768)
!4772 = !DILocation(line: 460, column: 59, scope: !4768)
!4773 = !DILocation(line: 461, column: 6, scope: !4768)
!4774 = !DILocation(line: 461, column: 12, scope: !4768)
!4775 = !DILocation(line: 461, column: 26, scope: !4768)
!4776 = !DILocation(line: 460, column: 6, scope: !4752)
!4777 = !DILocation(line: 462, column: 9, scope: !4778)
!4778 = distinct !DILexicalBlock(scope: !4768, file: !3, line: 461, column: 69)
!4779 = !DILocation(line: 462, column: 3, scope: !4778)
!4780 = !DILocation(line: 463, column: 3, scope: !4778)
!4781 = !DILocation(line: 465, column: 20, scope: !4752)
!4782 = !DILocation(line: 465, column: 26, scope: !4752)
!4783 = !DILocation(line: 465, column: 2, scope: !4752)
!4784 = !DILocation(line: 465, column: 13, scope: !4752)
!4785 = !DILocation(line: 465, column: 18, scope: !4752)
!4786 = !DILocation(line: 466, column: 25, scope: !4752)
!4787 = !DILocation(line: 466, column: 31, scope: !4752)
!4788 = !DILocation(line: 466, column: 2, scope: !4752)
!4789 = !DILocation(line: 466, column: 13, scope: !4752)
!4790 = !DILocation(line: 466, column: 18, scope: !4752)
!4791 = !DILocation(line: 466, column: 23, scope: !4752)
!4792 = !DILocation(line: 467, column: 2, scope: !4752)
!4793 = !DILocation(line: 467, column: 13, scope: !4752)
!4794 = !DILocation(line: 467, column: 18, scope: !4752)
!4795 = !DILocation(line: 467, column: 23, scope: !4752)
!4796 = !DILocation(line: 467, column: 28, scope: !4752)
!4797 = !DILocation(line: 469, column: 31, scope: !4752)
!4798 = !DILocation(line: 469, column: 50, scope: !4752)
!4799 = !DILocation(line: 469, column: 61, scope: !4752)
!4800 = !DILocation(line: 469, column: 9, scope: !4752)
!4801 = !DILocation(line: 469, column: 2, scope: !4752)
!4802 = !DILocation(line: 470, column: 1, scope: !4752)
!4803 = distinct !DISubprogram(name: "force_remove_show", scope: !3, file: !3, line: 1008, type: !2564, scopeLine: 1010, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!4804 = !DILocalVariable(name: "kobj", arg: 1, scope: !4803, file: !3, line: 1008, type: !133)
!4805 = !DILocation(line: 1008, column: 50, scope: !4803)
!4806 = !DILocalVariable(name: "attr", arg: 2, scope: !4803, file: !3, line: 1009, type: !2558)
!4807 = !DILocation(line: 1009, column: 29, scope: !4803)
!4808 = !DILocalVariable(name: "buf", arg: 3, scope: !4803, file: !3, line: 1009, type: !192)
!4809 = !DILocation(line: 1009, column: 41, scope: !4803)
!4810 = !DILocation(line: 1011, column: 17, scope: !4803)
!4811 = !DILocation(line: 1011, column: 9, scope: !4803)
!4812 = !DILocation(line: 1011, column: 2, scope: !4803)
!4813 = distinct !DISubprogram(name: "force_remove_store", scope: !3, file: !3, line: 1014, type: !2568, scopeLine: 1017, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!4814 = !DILocalVariable(name: "kobj", arg: 1, scope: !4813, file: !3, line: 1014, type: !133)
!4815 = !DILocation(line: 1014, column: 51, scope: !4813)
!4816 = !DILocalVariable(name: "attr", arg: 2, scope: !4813, file: !3, line: 1015, type: !2558)
!4817 = !DILocation(line: 1015, column: 30, scope: !4813)
!4818 = !DILocalVariable(name: "buf", arg: 3, scope: !4813, file: !3, line: 1016, type: !109)
!4819 = !DILocation(line: 1016, column: 19, scope: !4813)
!4820 = !DILocalVariable(name: "size", arg: 4, scope: !4813, file: !3, line: 1016, type: !116)
!4821 = !DILocation(line: 1016, column: 31, scope: !4813)
!4822 = !DILocalVariable(name: "val", scope: !4813, file: !3, line: 1018, type: !261)
!4823 = !DILocation(line: 1018, column: 7, scope: !4813)
!4824 = !DILocalVariable(name: "ret", scope: !4813, file: !3, line: 1019, type: !176)
!4825 = !DILocation(line: 1019, column: 6, scope: !4813)
!4826 = !DILocation(line: 1021, column: 18, scope: !4813)
!4827 = !DILocation(line: 1021, column: 8, scope: !4813)
!4828 = !DILocation(line: 1021, column: 6, scope: !4813)
!4829 = !DILocation(line: 1022, column: 6, scope: !4830)
!4830 = distinct !DILexicalBlock(scope: !4813, file: !3, line: 1022, column: 6)
!4831 = !DILocation(line: 1022, column: 10, scope: !4830)
!4832 = !DILocation(line: 1022, column: 6, scope: !4813)
!4833 = !DILocation(line: 1023, column: 10, scope: !4830)
!4834 = !DILocation(line: 1023, column: 3, scope: !4830)
!4835 = !DILocation(line: 1025, column: 6, scope: !4836)
!4836 = distinct !DILexicalBlock(scope: !4813, file: !3, line: 1025, column: 6)
!4837 = !DILocation(line: 1025, column: 6, scope: !4813)
!4838 = !DILocation(line: 1026, column: 3, scope: !4839)
!4839 = distinct !DILexicalBlock(scope: !4836, file: !3, line: 1025, column: 11)
!4840 = !DILocation(line: 1027, column: 3, scope: !4839)
!4841 = !DILocation(line: 1029, column: 9, scope: !4813)
!4842 = !DILocation(line: 1029, column: 2, scope: !4813)
!4843 = !DILocation(line: 1030, column: 1, scope: !4813)
!4844 = distinct !DISubprogram(name: "strtobool", scope: !4845, file: !4845, line: 187, type: !4846, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!4845 = !DIFile(filename: "./include/linux/string.h", directory: "/home/lizy2001/genbc/linux")
!4846 = !DISubroutineType(types: !4847)
!4847 = !{!176, !109, !4848}
!4848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!4849 = !DILocalVariable(name: "s", arg: 1, scope: !4844, file: !4845, line: 187, type: !109)
!4850 = !DILocation(line: 187, column: 41, scope: !4844)
!4851 = !DILocalVariable(name: "res", arg: 2, scope: !4844, file: !4845, line: 187, type: !4848)
!4852 = !DILocation(line: 187, column: 50, scope: !4844)
!4853 = !DILocation(line: 189, column: 20, scope: !4844)
!4854 = !DILocation(line: 189, column: 23, scope: !4844)
!4855 = !DILocation(line: 189, column: 9, scope: !4844)
!4856 = !DILocation(line: 189, column: 2, scope: !4844)
!4857 = distinct !DISubprogram(name: "acpi_show_profile", scope: !3, file: !3, line: 941, type: !2564, scopeLine: 943, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!4858 = !DILocalVariable(name: "kobj", arg: 1, scope: !4857, file: !3, line: 941, type: !133)
!4859 = !DILocation(line: 941, column: 35, scope: !4857)
!4860 = !DILocalVariable(name: "attr", arg: 2, scope: !4857, file: !3, line: 941, type: !2558)
!4861 = !DILocation(line: 941, column: 64, scope: !4857)
!4862 = !DILocalVariable(name: "buf", arg: 3, scope: !4857, file: !3, line: 942, type: !192)
!4863 = !DILocation(line: 942, column: 11, scope: !4857)
!4864 = !DILocation(line: 944, column: 17, scope: !4857)
!4865 = !DILocation(line: 944, column: 44, scope: !4857)
!4866 = !DILocation(line: 944, column: 30, scope: !4857)
!4867 = !DILocation(line: 944, column: 9, scope: !4857)
!4868 = !DILocation(line: 944, column: 2, scope: !4857)
