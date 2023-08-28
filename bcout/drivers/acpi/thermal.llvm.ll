; ModuleID = '../bcout/drivers/acpi/thermal.llvm.bc'
source_filename = "drivers/acpi/thermal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_acpi_thermal_init6:\09\09\09"
module asm ".long\09acpi_thermal_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon }
%struct.module = type opaque
%union.anon = type { i8* }
%struct.acpi_driver = type { [80 x i8], [80 x i8], %struct.acpi_device_id*, i32, %struct.acpi_device_ops, %struct.device_driver, %struct.module* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.acpi_device_ops = type { i32 (%struct.acpi_device*)*, i32 (%struct.acpi_device*)*, void (%struct.acpi_device*, i32)* }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.wake_irq = type opaque
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.acpi_device_perf = type { i32, %struct.acpi_device_perf_flags, i32, %struct.acpi_device_perf_state* }
%struct.acpi_device_perf_flags = type { i8 }
%struct.acpi_device_perf_state = type { %struct.anon.47, i8, i8, i32 }
%struct.anon.47 = type { i8 }
%struct.acpi_device_dir = type { %struct.proc_dir_entry* }
%struct.proc_dir_entry = type opaque
%struct.acpi_device_data = type { %union.acpi_object*, %struct.list_head, %union.acpi_object*, %struct.list_head }
%struct.acpi_scan_handler = type { %struct.acpi_device_id*, %struct.list_head, i1 (i8*, %struct.acpi_device_id**)*, i32 (%struct.acpi_device*, %struct.acpi_device_id*)*, void (%struct.acpi_device*)*, void (%struct.device*)*, void (%struct.device*)*, %struct.acpi_hotplug_profile }
%struct.acpi_hotplug_profile = type { %struct.kobject, {}*, void (%struct.acpi_device*)*, i8 }
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
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.37, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
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
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.18, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.1 }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.kernel_siginfo = type { %struct.anon.6 }
%struct.anon.6 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.10 }
%struct.anon.10 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.rseq = type { i32, i32, %union.anon.17, i32, [12 x i8] }
%union.anon.17 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.18 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.19, %union.anon.32, %struct.atomic_t, [8 x i8] }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type opaque
%union.anon.32 = type { %struct.atomic_t }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.33, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.36 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { i64, i64 }
%union.anon.36 = type { [12 x i32] }
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
%struct.anon.37 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type opaque
%struct.atomic64_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.38, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.38 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.seq_file = type opaque
%struct.poll_table_struct = type opaque
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.acpi_hotplug_context = type { %struct.acpi_device*, i32 (%struct.acpi_device*, i32)*, void (%struct.acpi_device*, i32)*, void (%struct.acpi_device*)* }
%struct.acpi_gpio_mapping = type opaque
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
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
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.driver_private = type opaque
%struct.workqueue_struct = type opaque
%struct.kmem_cache = type opaque
%struct.thermal_zone_device_ops = type { i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)*, i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)*, i32 (%struct.thermal_zone_device*, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32)*, i32 (%struct.thermal_zone_device*, i32)*, i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32)*, i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32)*, i32 (%struct.thermal_zone_device*, i32*)*, i32 (%struct.thermal_zone_device*, i32)*, i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32)* }
%struct.thermal_zone_device = type { i32, [20 x i8], %struct.device, %struct.attribute_group, %struct.thermal_attr*, %struct.thermal_attr*, %struct.thermal_attr*, i32, i8*, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.thermal_zone_device_ops*, %struct.thermal_zone_params*, %struct.thermal_governor*, i8*, %struct.list_head, %struct.ida, %struct.mutex, %struct.list_head, %struct.delayed_work, i32 }
%struct.thermal_attr = type opaque
%struct.thermal_zone_params = type { [20 x i8], i8, i32, %struct.thermal_bind_params*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thermal_bind_params = type { %struct.thermal_cooling_device*, i32, i32, i64*, i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)* }
%struct.thermal_governor = type { [20 x i8], i32 (%struct.thermal_zone_device*)*, void (%struct.thermal_zone_device*)*, i32 (%struct.thermal_zone_device*, i32)*, %struct.list_head }
%struct.ida = type { %struct.xarray }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.thermal_cooling_device = type { i32, [20 x i8], %struct.device, %struct.device_node*, i8*, i8*, %struct.thermal_cooling_device_ops*, i8, %struct.mutex, %struct.list_head, %struct.list_head }
%struct.thermal_cooling_device_ops = type { i32 (%struct.thermal_cooling_device*, i64*)*, i32 (%struct.thermal_cooling_device*, i64*)*, i32 (%struct.thermal_cooling_device*, i64)*, i32 (%struct.thermal_cooling_device*, i32*)*, i32 (%struct.thermal_cooling_device*, i64, i32*)*, i32 (%struct.thermal_cooling_device*, i32, i64*)* }
%struct.dmi_system_id = type { {}*, i8*, [4 x %struct.dmi_strmatch], i8* }
%struct.dmi_strmatch = type { i8, [79 x i8] }
%struct.acpi_thermal = type { %struct.acpi_device*, [8 x i8], i64, i64, i64, i8, %struct.acpi_thermal_flags, %struct.acpi_thermal_state, %struct.acpi_thermal_trips, %struct.acpi_handle_list, %struct.thermal_zone_device*, i32, %struct.work_struct }
%struct.acpi_thermal_flags = type { i8 }
%struct.acpi_thermal_state = type { i8, i32 }
%struct.acpi_thermal_trips = type { %struct.acpi_thermal_critical, %struct.acpi_thermal_hot, %struct.acpi_thermal_passive, [10 x %struct.acpi_thermal_active] }
%struct.acpi_thermal_critical = type { %struct.acpi_thermal_state_flags, i64 }
%struct.acpi_thermal_state_flags = type { i8 }
%struct.acpi_thermal_hot = type { %struct.acpi_thermal_state_flags, i64 }
%struct.acpi_thermal_passive = type { %struct.acpi_thermal_state_flags, i64, i64, i64, i64, %struct.acpi_handle_list }
%struct.acpi_thermal_active = type { %struct.acpi_thermal_state_flags, i64, %struct.acpi_handle_list }
%struct.acpi_handle_list = type { i32, [10 x i8*] }
%struct.acpi_object_list = type { i32, %union.acpi_object* }

@__UNIQUE_ID_author173 = internal constant [32 x i8] c"thermal.author=Paul Diefenbaugh\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_description174 = internal constant [45 x i8] c"thermal.description=ACPI Thermal Zone Driver\00", section ".modinfo", align 1, !dbg !2748
@__UNIQUE_ID_file175 = internal constant [34 x i8] c"thermal.file=drivers/acpi/thermal\00", section ".modinfo", align 1, !dbg !2753
@__UNIQUE_ID_license176 = internal constant [20 x i8] c"thermal.license=GPL\00", section ".modinfo", align 1, !dbg !2758
@__param_str_act = internal constant [12 x i8] c"thermal.act\00", align 1, !dbg !2894
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@act = internal global i32 0, align 4, !dbg !2880
@__param_act = internal constant %struct.kernel_param { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__param_str_act, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @act to i8*) } }, section "__param", align 8, !dbg !2761
@__UNIQUE_ID_acttype177 = internal constant [25 x i8] c"thermal.parmtype=act:int\00", section ".modinfo", align 1, !dbg !2813
@__UNIQUE_ID_act178 = internal constant [68 x i8] c"thermal.parm=act:Disable or override all lowest active trip points.\00", section ".modinfo", align 1, !dbg !2818
@__param_str_crt = internal constant [12 x i8] c"thermal.crt\00", align 1, !dbg !2897
@crt = internal global i32 0, align 4, !dbg !2882
@__param_crt = internal constant %struct.kernel_param { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__param_str_crt, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @crt to i8*) } }, section "__param", align 8, !dbg !2823
@__UNIQUE_ID_crttype179 = internal constant [25 x i8] c"thermal.parmtype=crt:int\00", section ".modinfo", align 1, !dbg !2825
@__UNIQUE_ID_crt180 = internal constant [60 x i8] c"thermal.parm=crt:Disable or lower all critical trip points.\00", section ".modinfo", align 1, !dbg !2827
@__param_str_tzp = internal constant [12 x i8] c"thermal.tzp\00", align 1, !dbg !2899
@tzp = internal global i32 0, align 4, !dbg !2884
@__param_tzp = internal constant %struct.kernel_param { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__param_str_tzp, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 292, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @tzp to i8*) } }, section "__param", align 8, !dbg !2832
@__UNIQUE_ID_tzptype181 = internal constant [25 x i8] c"thermal.parmtype=tzp:int\00", section ".modinfo", align 1, !dbg !2834
@__UNIQUE_ID_tzp182 = internal constant [66 x i8] c"thermal.parm=tzp:Thermal zone polling frequency, in 1/10 seconds.\00", section ".modinfo", align 1, !dbg !2836
@__param_str_nocrt = internal constant [14 x i8] c"thermal.nocrt\00", align 1, !dbg !2901
@nocrt = internal global i32 0, align 4, !dbg !2886
@__param_nocrt = internal constant %struct.kernel_param { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__param_str_nocrt, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 0, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @nocrt to i8*) } }, section "__param", align 8, !dbg !2841
@__UNIQUE_ID_nocrttype183 = internal constant [27 x i8] c"thermal.parmtype=nocrt:int\00", section ".modinfo", align 1, !dbg !2843
@__UNIQUE_ID_nocrt184 = internal constant [87 x i8] c"thermal.parm=nocrt:Set to take no action upon ACPI thermal zone critical trips points.\00", section ".modinfo", align 1, !dbg !2848
@__param_str_off = internal constant [12 x i8] c"thermal.off\00", align 1, !dbg !2906
@off = internal global i32 0, align 4, !dbg !2888
@__param_off = internal constant %struct.kernel_param { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__param_str_off, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 0, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @off to i8*) } }, section "__param", align 8, !dbg !2853
@__UNIQUE_ID_offtype185 = internal constant [25 x i8] c"thermal.parmtype=off:int\00", section ".modinfo", align 1, !dbg !2855
@__UNIQUE_ID_off186 = internal constant [54 x i8] c"thermal.parm=off:Set to disable ACPI thermal support.\00", section ".modinfo", align 1, !dbg !2857
@__param_str_psv = internal constant [12 x i8] c"thermal.psv\00", align 1, !dbg !2908
@psv = internal global i32 0, align 4, !dbg !2890
@__param_psv = internal constant %struct.kernel_param { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__param_str_psv, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @psv to i8*) } }, section "__param", align 8, !dbg !2862
@__UNIQUE_ID_psvtype187 = internal constant [25 x i8] c"thermal.parmtype=psv:int\00", section ".modinfo", align 1, !dbg !2864
@__UNIQUE_ID_psv188 = internal constant [62 x i8] c"thermal.parm=psv:Disable or override all passive trip points.\00", section ".modinfo", align 1, !dbg !2866
@acpi_thermal_driver = internal global %struct.acpi_driver { [80 x i8] c"thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"thermal_zone\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.acpi_device_id* getelementptr inbounds ([2 x %struct.acpi_device_id], [2 x %struct.acpi_device_id]* @thermal_device_ids, i32 0, i32 0), i32 0, %struct.acpi_device_ops { i32 (%struct.acpi_device*)* @acpi_thermal_add, i32 (%struct.acpi_device*)* @acpi_thermal_remove, void (%struct.acpi_device*, i32)* @acpi_thermal_notify }, %struct.device_driver { i8* null, %struct.bus_type* null, %struct.module* null, i8* null, i8 0, i32 0, %struct.of_device_id* null, %struct.acpi_device_id* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* @acpi_thermal_pm, void (%struct.device*)* null, %struct.driver_private* null }, %struct.module* null }, align 8, !dbg !2910
@acpi_thermal_pm_queue = internal global %struct.workqueue_struct* null, align 8, !dbg !2892
@__UNIQUE_ID___addressable_acpi_thermal_init191 = internal global i8* bitcast (i32 ()* @acpi_thermal_init to i8*), section ".discard.addressable", align 8, !dbg !2871
@__exitcall_acpi_thermal_exit = internal global void ()* @acpi_thermal_exit, section ".exitcall.exit", align 8, !dbg !2873
@thermal_device_ids = internal constant [2 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"LNXTHERM\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], align 16, !dbg !2912
@acpi_thermal_pm = internal constant %struct.dev_pm_ops { i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* @acpi_thermal_suspend, i32 (%struct.device*)* @acpi_thermal_resume, i32 (%struct.device*)* @acpi_thermal_suspend, i32 (%struct.device*)* @acpi_thermal_resume, i32 (%struct.device*)* @acpi_thermal_suspend, i32 (%struct.device*)* @acpi_thermal_resume, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null }, align 8, !dbg !2920
@.str = private unnamed_addr constant [13 x i8] c"Thermal Zone\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"thermal_zone\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"\016ACPI: %s [%s] (%ld C)\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"_CRT\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"_HOT\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"_PSV\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"_TMP\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"\014[Firmware Bug]: No valid trip found\0A\00", align 1
@.str.9 = private unnamed_addr constant [53 x i8] c"\014[Firmware Bug]: Invalid critical threshold (%llu)\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"\014ACPI: Critical threshold %d C\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"_TC1\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"_TC2\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"_TSP\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"_PSL\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"\014ACPI: Invalid passive threshold\0A\00", align 1
@_acpi_module_name = internal constant [8 x i8] c"thermal\00", align 1, !dbg !2915
@.str.16 = private unnamed_addr constant [86 x i8] c"ACPI thermal trip point %s changed\0APlease send acpidump to linux-acpi@vger.kernel.org\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"\014ACPI: Invalid active%d threshold\0A\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"_TZD\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"_SCP\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"_TZP\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"acpitz\00", align 1
@acpi_thermal_zone_ops = internal global %struct.thermal_zone_device_ops { i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)* @acpi_thermal_bind_cooling_device, i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)* @acpi_thermal_unbind_cooling_device, i32 (%struct.thermal_zone_device*, i32*)* @thermal_get_temp, i32 (%struct.thermal_zone_device*, i32, i32)* null, i32 (%struct.thermal_zone_device*, i32)* null, i32 (%struct.thermal_zone_device*, i32, i32*)* @thermal_get_trip_type, i32 (%struct.thermal_zone_device*, i32, i32*)* @thermal_get_trip_temp, i32 (%struct.thermal_zone_device*, i32, i32)* null, i32 (%struct.thermal_zone_device*, i32, i32*)* null, i32 (%struct.thermal_zone_device*, i32, i32)* null, i32 (%struct.thermal_zone_device*, i32*)* @thermal_get_crit_temp, i32 (%struct.thermal_zone_device*, i32)* null, i32 (%struct.thermal_zone_device*, i32, i32*)* @thermal_get_trend, i32 (%struct.thermal_zone_device*, i32, i32)* @thermal_notify }, align 8, !dbg !2918
@.str.24 = private unnamed_addr constant [30 x i8] c"registered as thermal_zone%d\0A\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"\015ACPI: thermal control disabled\0A\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"acpi_thermal_pm\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"AOpen i915GMm-HFS\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"Gigabyte GA-7ZX\00", align 1
@thermal_dmi_table = internal constant [5 x { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* }] [{ i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } { i32 (%struct.dmi_system_id*)* @thermal_act, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i32 0, i32 0), [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 13, [79 x i8] c"AOpen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"i915GMm-HFS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* null }, { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } { i32 (%struct.dmi_system_id*)* @thermal_psv, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i32 0, i32 0), [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 13, [79 x i8] c"AOpen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"i915GMm-HFS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* null }, { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } { i32 (%struct.dmi_system_id*)* @thermal_tzp, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i32 0, i32 0), [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 13, [79 x i8] c"AOpen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"i915GMm-HFS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* null }, { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } { i32 (%struct.dmi_system_id*)* @thermal_nocrt, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0), [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 13, [79 x i8] c"Gigabyte Technology Co., Ltd.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"7ZX\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* null }, { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } zeroinitializer], section ".init.rodata", align 16, !dbg !2922
@.str.30 = private unnamed_addr constant [63 x i8] c"\015ACPI: %s detected: disabling all active thermal trip points\0A\00", align 1
@.str.31 = private unnamed_addr constant [64 x i8] c"\015ACPI: %s detected: disabling all passive thermal trip points\0A\00", align 1
@.str.32 = private unnamed_addr constant [52 x i8] c"\015ACPI: %s detected: enabling thermal zone polling\0A\00", align 1
@.str.33 = private unnamed_addr constant [73 x i8] c"\015ACPI: %s detected: disabling all critical thermal trip point actions.\0A\00", align 1
@llvm.used = appending global [25 x i8*] [i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__UNIQUE_ID_author173, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__UNIQUE_ID_description174, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__UNIQUE_ID_file175, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__UNIQUE_ID_license176, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_act to i8*), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__UNIQUE_ID_acttype177, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__UNIQUE_ID_act178, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_crt to i8*), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__UNIQUE_ID_crttype179, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__UNIQUE_ID_crt180, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_tzp to i8*), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__UNIQUE_ID_tzptype181, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @__UNIQUE_ID_tzp182, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_nocrt to i8*), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__UNIQUE_ID_nocrttype183, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @__UNIQUE_ID_nocrt184, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_off to i8*), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__UNIQUE_ID_offtype185, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__UNIQUE_ID_off186, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_psv to i8*), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__UNIQUE_ID_psvtype187, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__UNIQUE_ID_psv188, i32 0, i32 0), i8* bitcast (void ()* @acpi_thermal_exit to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_acpi_thermal_init191 to i8*), i8* bitcast (void ()** @__exitcall_acpi_thermal_exit to i8*)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @acpi_thermal_exit() #0 section ".exit.text" !dbg !2951 {
entry:
  call void @acpi_bus_unregister_driver(%struct.acpi_driver* @acpi_thermal_driver) #9, !dbg !2952
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @acpi_thermal_pm_queue, align 8, !dbg !2953
  call void @destroy_workqueue(%struct.workqueue_struct* %0) #9, !dbg !2954
  ret void, !dbg !2955
}

; Function Attrs: noredzone
declare dso_local void @acpi_bus_unregister_driver(%struct.acpi_driver*) #1

; Function Attrs: noredzone
declare dso_local void @destroy_workqueue(%struct.workqueue_struct*) #1

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_thermal_init() #0 section ".init.text" !dbg !2956 {
entry:
  %retval = alloca i32, align 4
  %result = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %result, metadata !2959, metadata !DIExpression()), !dbg !2960
  store i32 0, i32* %result, align 4, !dbg !2960
  %call = call i32 @dmi_check_system(%struct.dmi_system_id* getelementptr inbounds ([5 x %struct.dmi_system_id], [5 x %struct.dmi_system_id]* bitcast ([5 x { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* }]* @thermal_dmi_table to [5 x %struct.dmi_system_id]*), i64 0, i64 0)) #9, !dbg !2961
  %0 = load i32, i32* @off, align 4, !dbg !2962
  %tobool = icmp ne i32 %0, 0, !dbg !2962
  br i1 %tobool, label %if.then, label %if.end, !dbg !2964

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.25, i64 0, i64 0)) #10, !dbg !2965
  store i32 -19, i32* %retval, align 4, !dbg !2967
  br label %return, !dbg !2967

if.end:                                           ; preds = %entry
  %call2 = call %struct.workqueue_struct* (i8*, i32, i32, ...) @alloc_workqueue(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i64 0, i64 0), i32 24, i32 0) #9, !dbg !2968
  store %struct.workqueue_struct* %call2, %struct.workqueue_struct** @acpi_thermal_pm_queue, align 8, !dbg !2969
  %1 = load %struct.workqueue_struct*, %struct.workqueue_struct** @acpi_thermal_pm_queue, align 8, !dbg !2970
  %tobool3 = icmp ne %struct.workqueue_struct* %1, null, !dbg !2970
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !2972

if.then4:                                         ; preds = %if.end
  store i32 -19, i32* %retval, align 4, !dbg !2973
  br label %return, !dbg !2973

if.end5:                                          ; preds = %if.end
  %call6 = call i32 @acpi_bus_register_driver(%struct.acpi_driver* @acpi_thermal_driver) #9, !dbg !2974
  store i32 %call6, i32* %result, align 4, !dbg !2975
  %2 = load i32, i32* %result, align 4, !dbg !2976
  %cmp = icmp slt i32 %2, 0, !dbg !2978
  br i1 %cmp, label %if.then7, label %if.end8, !dbg !2979

if.then7:                                         ; preds = %if.end5
  %3 = load %struct.workqueue_struct*, %struct.workqueue_struct** @acpi_thermal_pm_queue, align 8, !dbg !2980
  call void @destroy_workqueue(%struct.workqueue_struct* %3) #9, !dbg !2982
  store i32 -19, i32* %retval, align 4, !dbg !2983
  br label %return, !dbg !2983

if.end8:                                          ; preds = %if.end5
  store i32 0, i32* %retval, align 4, !dbg !2984
  br label %return, !dbg !2984

return:                                           ; preds = %if.end8, %if.then7, %if.then4, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !2985
  ret i32 %4, !dbg !2985
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_thermal_add(%struct.acpi_device* %device) #2 !dbg !2986 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca %struct.acpi_device*, align 8
  %result = alloca i32, align 4
  %tz = alloca %struct.acpi_thermal*, align 8
  %.compoundliteral = alloca %struct.atomic64_t, align 8
  store %struct.acpi_device* %device, %struct.acpi_device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device.addr, metadata !2987, metadata !DIExpression()), !dbg !2988
  call void @llvm.dbg.declare(metadata i32* %result, metadata !2989, metadata !DIExpression()), !dbg !2990
  store i32 0, i32* %result, align 4, !dbg !2990
  call void @llvm.dbg.declare(metadata %struct.acpi_thermal** %tz, metadata !2991, metadata !DIExpression()), !dbg !2992
  store %struct.acpi_thermal* null, %struct.acpi_thermal** %tz, align 8, !dbg !2992
  %0 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !2993
  %tobool = icmp ne %struct.acpi_device* %0, null, !dbg !2993
  br i1 %tobool, label %if.end, label %if.then, !dbg !2995

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !2996
  br label %return, !dbg !2996

if.end:                                           ; preds = %entry
  %call = call i8* @kzalloc(i64 1392, i32 3264) #9, !dbg !2997
  %1 = bitcast i8* %call to %struct.acpi_thermal*, !dbg !2997
  store %struct.acpi_thermal* %1, %struct.acpi_thermal** %tz, align 8, !dbg !2998
  %2 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !2999
  %tobool1 = icmp ne %struct.acpi_thermal* %2, null, !dbg !2999
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !3001

if.then2:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !3002
  br label %return, !dbg !3002

if.end3:                                          ; preds = %if.end
  %3 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3003
  %4 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !3004
  %device4 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %4, i32 0, i32 0, !dbg !3005
  store %struct.acpi_device* %3, %struct.acpi_device** %device4, align 8, !dbg !3006
  %5 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !3007
  %name = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %5, i32 0, i32 1, !dbg !3008
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %name, i64 0, i64 0, !dbg !3007
  %6 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3009
  %pnp = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %6, i32 0, i32 10, !dbg !3010
  %bus_id = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp, i32 0, i32 0, !dbg !3011
  %arraydecay5 = getelementptr inbounds [8 x i8], [8 x i8]* %bus_id, i64 0, i64 0, !dbg !3009
  %call6 = call i8* @strcpy(i8* %arraydecay, i8* %arraydecay5) #9, !dbg !3012
  %7 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3013
  %pnp7 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %7, i32 0, i32 10, !dbg !3013
  %device_name = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp7, i32 0, i32 5, !dbg !3013
  %arraydecay8 = getelementptr inbounds [40 x i8], [40 x i8]* %device_name, i64 0, i64 0, !dbg !3013
  %call9 = call i8* @strcpy(i8* %arraydecay8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0)) #9, !dbg !3014
  %8 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3015
  %pnp10 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %8, i32 0, i32 10, !dbg !3015
  %device_class = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp10, i32 0, i32 6, !dbg !3015
  %arraydecay11 = getelementptr inbounds [20 x i8], [20 x i8]* %device_class, i64 0, i64 0, !dbg !3015
  %call12 = call i8* @strcpy(i8* %arraydecay11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !3016
  %9 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !3017
  %10 = bitcast %struct.acpi_thermal* %9 to i8*, !dbg !3017
  %11 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3018
  %driver_data = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %11, i32 0, i32 20, !dbg !3019
  store i8* %10, i8** %driver_data, align 8, !dbg !3020
  %12 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !3021
  %call13 = call i32 @acpi_thermal_get_info(%struct.acpi_thermal* %12) #9, !dbg !3022
  store i32 %call13, i32* %result, align 4, !dbg !3023
  %13 = load i32, i32* %result, align 4, !dbg !3024
  %tobool14 = icmp ne i32 %13, 0, !dbg !3024
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !3026

if.then15:                                        ; preds = %if.end3
  br label %free_memory, !dbg !3027

if.end16:                                         ; preds = %if.end3
  %14 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !3028
  call void @acpi_thermal_guess_offset(%struct.acpi_thermal* %14) #9, !dbg !3029
  %15 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !3030
  %call17 = call i32 @acpi_thermal_register_thermal_zone(%struct.acpi_thermal* %15) #9, !dbg !3031
  store i32 %call17, i32* %result, align 4, !dbg !3032
  %16 = load i32, i32* %result, align 4, !dbg !3033
  %tobool18 = icmp ne i32 %16, 0, !dbg !3033
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !3035

if.then19:                                        ; preds = %if.end16
  br label %free_memory, !dbg !3036

if.end20:                                         ; preds = %if.end16
  br label %do.body, !dbg !3037

do.body:                                          ; preds = %if.end20
  %17 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !3038
  %thermal_check_work = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %17, i32 0, i32 12, !dbg !3038
  call void @__init_work(%struct.work_struct* %thermal_check_work, i32 0) #9, !dbg !3038
  %18 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !3038
  %thermal_check_work21 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %18, i32 0, i32 12, !dbg !3038
  %data = getelementptr inbounds %struct.work_struct, %struct.work_struct* %thermal_check_work21, i32 0, i32 0, !dbg !3038
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %.compoundliteral, i32 0, i32 0, !dbg !3038
  store i64 68719476704, i64* %counter, align 8, !dbg !3038
  %19 = bitcast %struct.atomic64_t* %data to i8*, !dbg !3038
  %20 = bitcast %struct.atomic64_t* %.compoundliteral to i8*, !dbg !3038
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 8, i1 false), !dbg !3038
  %21 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !3038
  %thermal_check_work22 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %21, i32 0, i32 12, !dbg !3038
  %entry23 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %thermal_check_work22, i32 0, i32 1, !dbg !3038
  call void @INIT_LIST_HEAD(%struct.list_head* %entry23) #9, !dbg !3038
  %22 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !3038
  %thermal_check_work24 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %22, i32 0, i32 12, !dbg !3038
  %func = getelementptr inbounds %struct.work_struct, %struct.work_struct* %thermal_check_work24, i32 0, i32 2, !dbg !3038
  store void (%struct.work_struct*)* @acpi_thermal_check_fn, void (%struct.work_struct*)** %func, align 8, !dbg !3038
  br label %do.end, !dbg !3038

do.end:                                           ; preds = %do.body
  %23 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3040
  %pnp25 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %23, i32 0, i32 10, !dbg !3040
  %device_name26 = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp25, i32 0, i32 5, !dbg !3040
  %arraydecay27 = getelementptr inbounds [40 x i8], [40 x i8]* %device_name26, i64 0, i64 0, !dbg !3040
  %24 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3040
  %pnp28 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %24, i32 0, i32 10, !dbg !3040
  %bus_id29 = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp28, i32 0, i32 0, !dbg !3040
  %arraydecay30 = getelementptr inbounds [8 x i8], [8 x i8]* %bus_id29, i64 0, i64 0, !dbg !3040
  %25 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !3040
  %temperature = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %25, i32 0, i32 2, !dbg !3040
  %26 = load i64, i64* %temperature, align 8, !dbg !3040
  %call31 = call i64 @deci_kelvin_to_celsius(i64 %26) #9, !dbg !3040
  %call32 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %arraydecay27, i8* %arraydecay30, i64 %call31) #10, !dbg !3040
  br label %end, !dbg !3041

free_memory:                                      ; preds = %if.then19, %if.then15
  call void @llvm.dbg.label(metadata !3042), !dbg !3043
  %27 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !3044
  %28 = bitcast %struct.acpi_thermal* %27 to i8*, !dbg !3044
  call void @kfree(i8* %28) #9, !dbg !3045
  br label %end, !dbg !3045

end:                                              ; preds = %free_memory, %do.end
  call void @llvm.dbg.label(metadata !3046), !dbg !3047
  %29 = load i32, i32* %result, align 4, !dbg !3048
  store i32 %29, i32* %retval, align 4, !dbg !3049
  br label %return, !dbg !3049

return:                                           ; preds = %end, %if.then2, %if.then
  %30 = load i32, i32* %retval, align 4, !dbg !3050
  ret i32 %30, !dbg !3050
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_thermal_remove(%struct.acpi_device* %device) #2 !dbg !3051 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca %struct.acpi_device*, align 8
  %tz = alloca %struct.acpi_thermal*, align 8
  store %struct.acpi_device* %device, %struct.acpi_device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device.addr, metadata !3052, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.declare(metadata %struct.acpi_thermal** %tz, metadata !3054, metadata !DIExpression()), !dbg !3055
  store %struct.acpi_thermal* null, %struct.acpi_thermal** %tz, align 8, !dbg !3055
  %0 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3056
  %tobool = icmp ne %struct.acpi_device* %0, null, !dbg !3056
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3058

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3059
  %call = call i8* @acpi_driver_data(%struct.acpi_device* %1) #9, !dbg !3060
  %tobool1 = icmp ne i8* %call, null, !dbg !3060
  br i1 %tobool1, label %if.end, label %if.then, !dbg !3061

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !3062
  br label %return, !dbg !3062

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.workqueue_struct*, %struct.workqueue_struct** @acpi_thermal_pm_queue, align 8, !dbg !3063
  call void @flush_workqueue(%struct.workqueue_struct* %2) #9, !dbg !3064
  %3 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3065
  %call2 = call i8* @acpi_driver_data(%struct.acpi_device* %3) #9, !dbg !3066
  %4 = bitcast i8* %call2 to %struct.acpi_thermal*, !dbg !3066
  store %struct.acpi_thermal* %4, %struct.acpi_thermal** %tz, align 8, !dbg !3067
  %5 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !3068
  call void @acpi_thermal_unregister_thermal_zone(%struct.acpi_thermal* %5) #9, !dbg !3069
  %6 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !3070
  %7 = bitcast %struct.acpi_thermal* %6 to i8*, !dbg !3070
  call void @kfree(i8* %7) #9, !dbg !3071
  store i32 0, i32* %retval, align 4, !dbg !3072
  br label %return, !dbg !3072

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !3073
  ret i32 %8, !dbg !3073
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_thermal_notify(%struct.acpi_device* %device, i32 %event) #2 !dbg !3074 {
entry:
  %device.addr = alloca %struct.acpi_device*, align 8
  %event.addr = alloca i32, align 4
  %tz = alloca %struct.acpi_thermal*, align 8
  store %struct.acpi_device* %device, %struct.acpi_device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device.addr, metadata !3075, metadata !DIExpression()), !dbg !3076
  store i32 %event, i32* %event.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %event.addr, metadata !3077, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.declare(metadata %struct.acpi_thermal** %tz, metadata !3079, metadata !DIExpression()), !dbg !3080
  %0 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3081
  %call = call i8* @acpi_driver_data(%struct.acpi_device* %0) #9, !dbg !3082
  %1 = bitcast i8* %call to %struct.acpi_thermal*, !dbg !3082
  store %struct.acpi_thermal* %1, %struct.acpi_thermal** %tz, align 8, !dbg !3080
  %2 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !3083
  %tobool = icmp ne %struct.acpi_thermal* %2, null, !dbg !3083
  br i1 %tobool, label %if.end, label %if.then, !dbg !3085

if.then:                                          ; preds = %entry
  br label %sw.epilog, !dbg !3086

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %event.addr, align 4, !dbg !3087
  switch i32 %3, label %sw.default [
    i32 128, label %sw.bb
    i32 129, label %sw.bb1
    i32 130, label %sw.bb5
  ], !dbg !3088

sw.bb:                                            ; preds = %if.end
  %4 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !3089
  %5 = bitcast %struct.acpi_thermal* %4 to i8*, !dbg !3089
  call void @acpi_thermal_check(i8* %5) #9, !dbg !3091
  br label %sw.epilog, !dbg !3092

sw.bb1:                                           ; preds = %if.end
  %6 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !3093
  %call2 = call i32 @acpi_thermal_trips_update(%struct.acpi_thermal* %6, i32 12) #9, !dbg !3094
  %7 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !3095
  %8 = bitcast %struct.acpi_thermal* %7 to i8*, !dbg !3095
  call void @acpi_thermal_check(i8* %8) #9, !dbg !3096
  %9 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3097
  %pnp = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %9, i32 0, i32 10, !dbg !3098
  %device_class = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp, i32 0, i32 6, !dbg !3099
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %device_class, i64 0, i64 0, !dbg !3097
  %10 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3100
  %dev = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %10, i32 0, i32 21, !dbg !3101
  %call3 = call i8* @dev_name(%struct.device* %dev) #9, !dbg !3102
  %11 = load i32, i32* %event.addr, align 4, !dbg !3103
  %conv = trunc i32 %11 to i8, !dbg !3103
  %call4 = call i32 @acpi_bus_generate_netlink_event(i8* %arraydecay, i8* %call3, i8 zeroext %conv, i32 0) #9, !dbg !3104
  br label %sw.epilog, !dbg !3105

sw.bb5:                                           ; preds = %if.end
  %12 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !3106
  %call6 = call i32 @acpi_thermal_trips_update(%struct.acpi_thermal* %12, i32 16) #9, !dbg !3107
  %13 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !3108
  %14 = bitcast %struct.acpi_thermal* %13 to i8*, !dbg !3108
  call void @acpi_thermal_check(i8* %14) #9, !dbg !3109
  %15 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3110
  %pnp7 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %15, i32 0, i32 10, !dbg !3111
  %device_class8 = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp7, i32 0, i32 6, !dbg !3112
  %arraydecay9 = getelementptr inbounds [20 x i8], [20 x i8]* %device_class8, i64 0, i64 0, !dbg !3110
  %16 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3113
  %dev10 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %16, i32 0, i32 21, !dbg !3114
  %call11 = call i8* @dev_name(%struct.device* %dev10) #9, !dbg !3115
  %17 = load i32, i32* %event.addr, align 4, !dbg !3116
  %conv12 = trunc i32 %17 to i8, !dbg !3116
  %call13 = call i32 @acpi_bus_generate_netlink_event(i8* %arraydecay9, i8* %call11, i8 zeroext %conv12, i32 0) #9, !dbg !3117
  br label %sw.epilog, !dbg !3118

sw.default:                                       ; preds = %if.end
  br label %sw.epilog, !dbg !3119

sw.epilog:                                        ; preds = %if.then, %sw.default, %sw.bb5, %sw.bb1, %sw.bb
  ret void, !dbg !3120
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #2 !dbg !3121 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3124, metadata !DIExpression()), !dbg !3128
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3134, metadata !DIExpression()), !dbg !3135
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3136, metadata !DIExpression()), !dbg !3137
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3138, metadata !DIExpression()), !dbg !3139
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3140, metadata !DIExpression()), !dbg !3144
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3146, metadata !DIExpression()), !dbg !3150
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3152, metadata !DIExpression()), !dbg !3156
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !3161, metadata !DIExpression()), !dbg !3162
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !3163, metadata !DIExpression()), !dbg !3164
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3165, metadata !DIExpression()), !dbg !3166
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !3167, metadata !DIExpression()), !dbg !3168
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !3169, metadata !DIExpression()), !dbg !3170
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3171, metadata !DIExpression()), !dbg !3172
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !3173, metadata !DIExpression()), !dbg !3174
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3175, metadata !DIExpression()), !dbg !3176
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3177, metadata !DIExpression()), !dbg !3178
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3179, metadata !DIExpression()), !dbg !3180
  %0 = load i64, i64* %size.addr, align 8, !dbg !3181
  %1 = load i32, i32* %flags.addr, align 4, !dbg !3182
  %or = or i32 %1, 256, !dbg !3183
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !3184
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #11, !dbg !3185
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !3186

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !3187
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !3188
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !3189

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !3190
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !3191
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !3192
  %call.i.i = call i32 @get_order(i64 %7) #12, !dbg !3193
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !3170
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !3194
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !3195
  %10 = load i32, i32* %order.i.i, align 4, !dbg !3196
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !3197
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !3198
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !3199
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #13, !dbg !3200
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !3200
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !3200
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !3200
  call void @llvm.assume(i1 %maskcond.i.i.i) #11, !dbg !3200
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !3201
  br label %kmalloc.exit, !dbg !3201

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !3202
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3203
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !3203
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !3205

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !3206
  br label %kmalloc_index.exit.i, !dbg !3206

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3207
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !3209
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !3210

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3211
  br label %kmalloc_index.exit.i, !dbg !3211

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3212
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !3214
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !3215

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3216
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !3217
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !3218

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !3219
  br label %kmalloc_index.exit.i, !dbg !3219

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3220
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !3222
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !3223

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3224
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !3225
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !3226

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !3227
  br label %kmalloc_index.exit.i, !dbg !3227

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3228
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !3230
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !3231

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3232
  br label %kmalloc_index.exit.i, !dbg !3232

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3233
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !3235
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !3236

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !3237
  br label %kmalloc_index.exit.i, !dbg !3237

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3238
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !3240
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !3241

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !3242
  br label %kmalloc_index.exit.i, !dbg !3242

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3243
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !3245
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !3246

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !3247
  br label %kmalloc_index.exit.i, !dbg !3247

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3248
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !3250
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !3251

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !3252
  br label %kmalloc_index.exit.i, !dbg !3252

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3253
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !3255
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !3256

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !3257
  br label %kmalloc_index.exit.i, !dbg !3257

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3258
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !3260
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !3261

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !3262
  br label %kmalloc_index.exit.i, !dbg !3262

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3263
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !3265
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !3266

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !3267
  br label %kmalloc_index.exit.i, !dbg !3267

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3268
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !3270
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !3271

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !3272
  br label %kmalloc_index.exit.i, !dbg !3272

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3273
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !3275
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !3276

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !3277
  br label %kmalloc_index.exit.i, !dbg !3277

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3278
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !3280
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !3281

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !3282
  br label %kmalloc_index.exit.i, !dbg !3282

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3283
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !3285
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !3286

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !3287
  br label %kmalloc_index.exit.i, !dbg !3287

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3288
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !3290
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !3291

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !3292
  br label %kmalloc_index.exit.i, !dbg !3292

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3293
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !3295
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !3296

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !3297
  br label %kmalloc_index.exit.i, !dbg !3297

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3298
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !3300
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !3301

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !3302
  br label %kmalloc_index.exit.i, !dbg !3302

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3303
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !3305
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !3306

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !3307
  br label %kmalloc_index.exit.i, !dbg !3307

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3308
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !3310
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !3311

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !3312
  br label %kmalloc_index.exit.i, !dbg !3312

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3313
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !3315
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !3316

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !3317
  br label %kmalloc_index.exit.i, !dbg !3317

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3318
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !3320
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !3321

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !3322
  br label %kmalloc_index.exit.i, !dbg !3322

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3323
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !3325
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !3326

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !3327
  br label %kmalloc_index.exit.i, !dbg !3327

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3328
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !3330
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !3331

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !3332
  br label %kmalloc_index.exit.i, !dbg !3332

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3333
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !3335
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !3336

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !3337
  br label %kmalloc_index.exit.i, !dbg !3337

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3338
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !3340
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !3341

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !3342
  br label %kmalloc_index.exit.i, !dbg !3342

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3343
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !3345
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !3346

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !3347
  br label %kmalloc_index.exit.i, !dbg !3347

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 382, i32 0, i64 12) #11, !dbg !3348, !srcloc !3351
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #11, !dbg !3352, !srcloc !3355
  unreachable, !dbg !3356

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !3357
  store i32 %45, i32* %index.i, align 4, !dbg !3358
  %46 = load i32, i32* %index.i, align 4, !dbg !3359
  %tobool.i = icmp ne i32 %46, 0, !dbg !3359
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !3361

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !3362
  br label %kmalloc.exit, !dbg !3362

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !3363
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3364
  %and.i.i = and i32 %48, 17, !dbg !3364
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !3364
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !3364
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !3364
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !3364
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !3366

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !3367
  br label %kmalloc_type.exit.i, !dbg !3367

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3368
  %and2.i.i = and i32 %49, 1, !dbg !3369
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !3368
  %50 = zext i1 %tobool3.i.i to i64, !dbg !3368
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !3368
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !3370
  br label %kmalloc_type.exit.i, !dbg !3370

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !3371
  %idxprom.i = zext i32 %51 to i64, !dbg !3372
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !3372
  %52 = load i32, i32* %index.i, align 4, !dbg !3373
  %idxprom6.i = zext i32 %52 to i64, !dbg !3372
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !3372
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !3372
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !3374
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !3375
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3376
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3377
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #13, !dbg !3378
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !3378
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !3378
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !3378
  call void @llvm.assume(i1 %maskcond.i.i) #11, !dbg !3378
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !3139
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3379
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !3380
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !3381
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3382
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #13, !dbg !3383
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !3384
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !3385
  store i8* %62, i8** %retval.i, align 8, !dbg !3386
  br label %kmalloc.exit, !dbg !3386

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !3387
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !3388
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #13, !dbg !3389
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !3389
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !3389
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !3389
  call void @llvm.assume(i1 %maskcond.i) #11, !dbg !3389
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !3390
  br label %kmalloc.exit, !dbg !3390

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !3391
  ret i8* %65, !dbg !3392
}

; Function Attrs: noredzone
declare dso_local i8* @strcpy(i8*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_thermal_get_info(%struct.acpi_thermal* %tz) #2 !dbg !3393 {
entry:
  %retval = alloca i32, align 4
  %tz.addr = alloca %struct.acpi_thermal*, align 8
  %result = alloca i32, align 4
  store %struct.acpi_thermal* %tz, %struct.acpi_thermal** %tz.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_thermal** %tz.addr, metadata !3396, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.declare(metadata i32* %result, metadata !3398, metadata !DIExpression()), !dbg !3399
  store i32 0, i32* %result, align 4, !dbg !3399
  %0 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3400
  %tobool = icmp ne %struct.acpi_thermal* %0, null, !dbg !3400
  br i1 %tobool, label %if.end, label %if.then, !dbg !3402

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !3403
  br label %return, !dbg !3403

if.end:                                           ; preds = %entry
  %1 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3404
  call void @acpi_thermal_aml_dependency_fix(%struct.acpi_thermal* %1) #9, !dbg !3405
  %2 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3406
  %call = call i32 @acpi_thermal_get_trip_points(%struct.acpi_thermal* %2) #9, !dbg !3407
  store i32 %call, i32* %result, align 4, !dbg !3408
  %3 = load i32, i32* %result, align 4, !dbg !3409
  %tobool1 = icmp ne i32 %3, 0, !dbg !3409
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !3411

if.then2:                                         ; preds = %if.end
  %4 = load i32, i32* %result, align 4, !dbg !3412
  store i32 %4, i32* %retval, align 4, !dbg !3413
  br label %return, !dbg !3413

if.end3:                                          ; preds = %if.end
  %5 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3414
  %call4 = call i32 @acpi_thermal_get_temperature(%struct.acpi_thermal* %5) #9, !dbg !3415
  store i32 %call4, i32* %result, align 4, !dbg !3416
  %6 = load i32, i32* %result, align 4, !dbg !3417
  %tobool5 = icmp ne i32 %6, 0, !dbg !3417
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !3419

if.then6:                                         ; preds = %if.end3
  %7 = load i32, i32* %result, align 4, !dbg !3420
  store i32 %7, i32* %retval, align 4, !dbg !3421
  br label %return, !dbg !3421

if.end7:                                          ; preds = %if.end3
  %8 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3422
  %call8 = call i32 @acpi_thermal_set_cooling_mode(%struct.acpi_thermal* %8, i32 0) #9, !dbg !3423
  store i32 %call8, i32* %result, align 4, !dbg !3424
  %9 = load i32, i32* %result, align 4, !dbg !3425
  %tobool9 = icmp ne i32 %9, 0, !dbg !3425
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !3427

if.then10:                                        ; preds = %if.end7
  %10 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3428
  %flags = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %10, i32 0, i32 6, !dbg !3429
  %11 = bitcast %struct.acpi_thermal_flags* %flags to i8*, !dbg !3430
  %bf.load = load i8, i8* %11, align 1, !dbg !3431
  %bf.clear = and i8 %bf.load, -2, !dbg !3431
  %bf.set = or i8 %bf.clear, 1, !dbg !3431
  store i8 %bf.set, i8* %11, align 1, !dbg !3431
  br label %if.end11, !dbg !3428

if.end11:                                         ; preds = %if.then10, %if.end7
  %12 = load i32, i32* @tzp, align 4, !dbg !3432
  %tobool12 = icmp ne i32 %12, 0, !dbg !3432
  br i1 %tobool12, label %if.then13, label %if.else, !dbg !3434

if.then13:                                        ; preds = %if.end11
  %13 = load i32, i32* @tzp, align 4, !dbg !3435
  %conv = sext i32 %13 to i64, !dbg !3435
  %14 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3436
  %polling_frequency = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %14, i32 0, i32 4, !dbg !3437
  store i64 %conv, i64* %polling_frequency, align 8, !dbg !3438
  br label %if.end15, !dbg !3436

if.else:                                          ; preds = %if.end11
  %15 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3439
  %call14 = call i32 @acpi_thermal_get_polling_frequency(%struct.acpi_thermal* %15) #9, !dbg !3440
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then13
  store i32 0, i32* %retval, align 4, !dbg !3441
  br label %return, !dbg !3441

return:                                           ; preds = %if.end15, %if.then6, %if.then2, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !3442
  ret i32 %16, !dbg !3442
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_thermal_guess_offset(%struct.acpi_thermal* %tz) #2 !dbg !3443 {
entry:
  %tz.addr = alloca %struct.acpi_thermal*, align 8
  store %struct.acpi_thermal* %tz, %struct.acpi_thermal** %tz.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_thermal** %tz.addr, metadata !3446, metadata !DIExpression()), !dbg !3447
  %0 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3448
  %trips = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %0, i32 0, i32 8, !dbg !3450
  %critical = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips, i32 0, i32 0, !dbg !3451
  %flags = getelementptr inbounds %struct.acpi_thermal_critical, %struct.acpi_thermal_critical* %critical, i32 0, i32 0, !dbg !3452
  %1 = bitcast %struct.acpi_thermal_state_flags* %flags to i8*, !dbg !3453
  %bf.load = load i8, i8* %1, align 8, !dbg !3453
  %bf.clear = and i8 %bf.load, 1, !dbg !3453
  %conv = zext i8 %bf.clear to i32, !dbg !3448
  %tobool = icmp ne i32 %conv, 0, !dbg !3448
  br i1 %tobool, label %land.lhs.true, label %if.else, !dbg !3454

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3455
  %trips1 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %2, i32 0, i32 8, !dbg !3456
  %critical2 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips1, i32 0, i32 0, !dbg !3457
  %temperature = getelementptr inbounds %struct.acpi_thermal_critical, %struct.acpi_thermal_critical* %critical2, i32 0, i32 1, !dbg !3458
  %3 = load i64, i64* %temperature, align 8, !dbg !3458
  %rem = urem i64 %3, 5, !dbg !3459
  %cmp = icmp eq i64 %rem, 1, !dbg !3460
  br i1 %cmp, label %if.then, label %if.else, !dbg !3461

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3462
  %kelvin_offset = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %4, i32 0, i32 11, !dbg !3463
  store i32 273100, i32* %kelvin_offset, align 8, !dbg !3464
  br label %if.end, !dbg !3462

if.else:                                          ; preds = %land.lhs.true, %entry
  %5 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3465
  %kelvin_offset4 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %5, i32 0, i32 11, !dbg !3466
  store i32 273200, i32* %kelvin_offset4, align 8, !dbg !3467
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !3468
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_thermal_register_thermal_zone(%struct.acpi_thermal* %tz) #2 !dbg !3469 {
entry:
  %retval = alloca i32, align 4
  %tz.addr = alloca %struct.acpi_thermal*, align 8
  %trips = alloca i32, align 4
  %result = alloca i32, align 4
  %status = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.acpi_thermal* %tz, %struct.acpi_thermal** %tz.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_thermal** %tz.addr, metadata !3470, metadata !DIExpression()), !dbg !3471
  call void @llvm.dbg.declare(metadata i32* %trips, metadata !3472, metadata !DIExpression()), !dbg !3473
  store i32 0, i32* %trips, align 4, !dbg !3473
  call void @llvm.dbg.declare(metadata i32* %result, metadata !3474, metadata !DIExpression()), !dbg !3475
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3476, metadata !DIExpression()), !dbg !3477
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3478, metadata !DIExpression()), !dbg !3479
  %0 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3480
  %trips1 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %0, i32 0, i32 8, !dbg !3482
  %critical = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips1, i32 0, i32 0, !dbg !3483
  %flags = getelementptr inbounds %struct.acpi_thermal_critical, %struct.acpi_thermal_critical* %critical, i32 0, i32 0, !dbg !3484
  %1 = bitcast %struct.acpi_thermal_state_flags* %flags to i8*, !dbg !3485
  %bf.load = load i8, i8* %1, align 8, !dbg !3485
  %bf.clear = and i8 %bf.load, 1, !dbg !3485
  %tobool = icmp ne i8 %bf.clear, 0, !dbg !3480
  br i1 %tobool, label %if.then, label %if.end, !dbg !3486

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %trips, align 4, !dbg !3487
  %inc = add i32 %2, 1, !dbg !3487
  store i32 %inc, i32* %trips, align 4, !dbg !3487
  br label %if.end, !dbg !3488

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3489
  %trips2 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %3, i32 0, i32 8, !dbg !3491
  %hot = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips2, i32 0, i32 1, !dbg !3492
  %flags3 = getelementptr inbounds %struct.acpi_thermal_hot, %struct.acpi_thermal_hot* %hot, i32 0, i32 0, !dbg !3493
  %4 = bitcast %struct.acpi_thermal_state_flags* %flags3 to i8*, !dbg !3494
  %bf.load4 = load i8, i8* %4, align 8, !dbg !3494
  %bf.clear5 = and i8 %bf.load4, 1, !dbg !3494
  %tobool6 = icmp ne i8 %bf.clear5, 0, !dbg !3489
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !3495

if.then7:                                         ; preds = %if.end
  %5 = load i32, i32* %trips, align 4, !dbg !3496
  %inc8 = add i32 %5, 1, !dbg !3496
  store i32 %inc8, i32* %trips, align 4, !dbg !3496
  br label %if.end9, !dbg !3497

if.end9:                                          ; preds = %if.then7, %if.end
  %6 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3498
  %trips10 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %6, i32 0, i32 8, !dbg !3500
  %passive = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips10, i32 0, i32 2, !dbg !3501
  %flags11 = getelementptr inbounds %struct.acpi_thermal_passive, %struct.acpi_thermal_passive* %passive, i32 0, i32 0, !dbg !3502
  %7 = bitcast %struct.acpi_thermal_state_flags* %flags11 to i8*, !dbg !3503
  %bf.load12 = load i8, i8* %7, align 8, !dbg !3503
  %bf.clear13 = and i8 %bf.load12, 1, !dbg !3503
  %tobool14 = icmp ne i8 %bf.clear13, 0, !dbg !3498
  br i1 %tobool14, label %if.then15, label %if.end17, !dbg !3504

if.then15:                                        ; preds = %if.end9
  %8 = load i32, i32* %trips, align 4, !dbg !3505
  %inc16 = add i32 %8, 1, !dbg !3505
  store i32 %inc16, i32* %trips, align 4, !dbg !3505
  br label %if.end17, !dbg !3506

if.end17:                                         ; preds = %if.then15, %if.end9
  store i32 0, i32* %i, align 4, !dbg !3507
  br label %for.cond, !dbg !3509

for.cond:                                         ; preds = %for.inc, %if.end17
  %9 = load i32, i32* %i, align 4, !dbg !3510
  %cmp = icmp slt i32 %9, 10, !dbg !3512
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3513

land.rhs:                                         ; preds = %for.cond
  %10 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3514
  %trips18 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %10, i32 0, i32 8, !dbg !3515
  %active = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips18, i32 0, i32 3, !dbg !3516
  %11 = load i32, i32* %i, align 4, !dbg !3517
  %idxprom = sext i32 %11 to i64, !dbg !3514
  %arrayidx = getelementptr [10 x %struct.acpi_thermal_active], [10 x %struct.acpi_thermal_active]* %active, i64 0, i64 %idxprom, !dbg !3514
  %flags19 = getelementptr inbounds %struct.acpi_thermal_active, %struct.acpi_thermal_active* %arrayidx, i32 0, i32 0, !dbg !3518
  %12 = bitcast %struct.acpi_thermal_state_flags* %flags19 to i8*, !dbg !3519
  %bf.load20 = load i8, i8* %12, align 8, !dbg !3519
  %bf.clear21 = and i8 %bf.load20, 1, !dbg !3519
  %conv = zext i8 %bf.clear21 to i32, !dbg !3514
  %tobool22 = icmp ne i32 %conv, 0, !dbg !3513
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %13 = phi i1 [ false, %for.cond ], [ %tobool22, %land.rhs ], !dbg !3520
  br i1 %13, label %for.body, label %for.end, !dbg !3521

for.body:                                         ; preds = %land.end
  br label %for.inc, !dbg !3521

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !dbg !3522
  %inc23 = add i32 %14, 1, !dbg !3522
  store i32 %inc23, i32* %i, align 4, !dbg !3522
  %15 = load i32, i32* %trips, align 4, !dbg !3523
  %inc24 = add i32 %15, 1, !dbg !3523
  store i32 %inc24, i32* %trips, align 4, !dbg !3523
  br label %for.cond, !dbg !3524, !llvm.loop !3525

for.end:                                          ; preds = %land.end
  %16 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3527
  %trips25 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %16, i32 0, i32 8, !dbg !3529
  %passive26 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips25, i32 0, i32 2, !dbg !3530
  %flags27 = getelementptr inbounds %struct.acpi_thermal_passive, %struct.acpi_thermal_passive* %passive26, i32 0, i32 0, !dbg !3531
  %17 = bitcast %struct.acpi_thermal_state_flags* %flags27 to i8*, !dbg !3532
  %bf.load28 = load i8, i8* %17, align 8, !dbg !3532
  %bf.clear29 = and i8 %bf.load28, 1, !dbg !3532
  %tobool30 = icmp ne i8 %bf.clear29, 0, !dbg !3527
  br i1 %tobool30, label %if.then31, label %if.else, !dbg !3533

if.then31:                                        ; preds = %for.end
  %18 = load i32, i32* %trips, align 4, !dbg !3534
  %19 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3535
  %20 = bitcast %struct.acpi_thermal* %19 to i8*, !dbg !3535
  %21 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3536
  %trips32 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %21, i32 0, i32 8, !dbg !3537
  %passive33 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips32, i32 0, i32 2, !dbg !3538
  %tsp = getelementptr inbounds %struct.acpi_thermal_passive, %struct.acpi_thermal_passive* %passive33, i32 0, i32 4, !dbg !3539
  %22 = load i64, i64* %tsp, align 8, !dbg !3539
  %mul = mul i64 %22, 100, !dbg !3540
  %conv34 = trunc i64 %mul to i32, !dbg !3536
  %23 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3541
  %polling_frequency = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %23, i32 0, i32 4, !dbg !3542
  %24 = load i64, i64* %polling_frequency, align 8, !dbg !3542
  %mul35 = mul i64 %24, 100, !dbg !3543
  %conv36 = trunc i64 %mul35 to i32, !dbg !3541
  %call = call %struct.thermal_zone_device* @thermal_zone_device_register(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i32 %18, i32 0, i8* %20, %struct.thermal_zone_device_ops* @acpi_thermal_zone_ops, %struct.thermal_zone_params* null, i32 %conv34, i32 %conv36) #9, !dbg !3544
  %25 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3545
  %thermal_zone = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %25, i32 0, i32 10, !dbg !3546
  store %struct.thermal_zone_device* %call, %struct.thermal_zone_device** %thermal_zone, align 8, !dbg !3547
  br label %if.end42, !dbg !3545

if.else:                                          ; preds = %for.end
  %26 = load i32, i32* %trips, align 4, !dbg !3548
  %27 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3549
  %28 = bitcast %struct.acpi_thermal* %27 to i8*, !dbg !3549
  %29 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3550
  %polling_frequency37 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %29, i32 0, i32 4, !dbg !3551
  %30 = load i64, i64* %polling_frequency37, align 8, !dbg !3551
  %mul38 = mul i64 %30, 100, !dbg !3552
  %conv39 = trunc i64 %mul38 to i32, !dbg !3550
  %call40 = call %struct.thermal_zone_device* @thermal_zone_device_register(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i32 %26, i32 0, i8* %28, %struct.thermal_zone_device_ops* @acpi_thermal_zone_ops, %struct.thermal_zone_params* null, i32 0, i32 %conv39) #9, !dbg !3553
  %31 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3554
  %thermal_zone41 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %31, i32 0, i32 10, !dbg !3555
  store %struct.thermal_zone_device* %call40, %struct.thermal_zone_device** %thermal_zone41, align 8, !dbg !3556
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.then31
  %32 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3557
  %thermal_zone43 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %32, i32 0, i32 10, !dbg !3559
  %33 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %thermal_zone43, align 8, !dbg !3559
  %34 = bitcast %struct.thermal_zone_device* %33 to i8*, !dbg !3557
  %call44 = call zeroext i1 @IS_ERR(i8* %34) #9, !dbg !3560
  br i1 %call44, label %if.then45, label %if.end46, !dbg !3561

if.then45:                                        ; preds = %if.end42
  store i32 -19, i32* %retval, align 4, !dbg !3562
  br label %return, !dbg !3562

if.end46:                                         ; preds = %if.end42
  %35 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3563
  %device = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %35, i32 0, i32 0, !dbg !3564
  %36 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !3564
  %dev = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %36, i32 0, i32 21, !dbg !3565
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 0, !dbg !3566
  %37 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3567
  %thermal_zone47 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %37, i32 0, i32 10, !dbg !3568
  %38 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %thermal_zone47, align 8, !dbg !3568
  %device48 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %38, i32 0, i32 2, !dbg !3569
  %kobj49 = getelementptr inbounds %struct.device, %struct.device* %device48, i32 0, i32 0, !dbg !3570
  %call50 = call i32 @sysfs_create_link(%struct.kobject* %kobj, %struct.kobject* %kobj49, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !3571
  store i32 %call50, i32* %result, align 4, !dbg !3572
  %39 = load i32, i32* %result, align 4, !dbg !3573
  %tobool51 = icmp ne i32 %39, 0, !dbg !3573
  br i1 %tobool51, label %if.then52, label %if.end53, !dbg !3575

if.then52:                                        ; preds = %if.end46
  br label %unregister_tzd, !dbg !3576

if.end53:                                         ; preds = %if.end46
  %40 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3577
  %thermal_zone54 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %40, i32 0, i32 10, !dbg !3578
  %41 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %thermal_zone54, align 8, !dbg !3578
  %device55 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %41, i32 0, i32 2, !dbg !3579
  %kobj56 = getelementptr inbounds %struct.device, %struct.device* %device55, i32 0, i32 0, !dbg !3580
  %42 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3581
  %device57 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %42, i32 0, i32 0, !dbg !3582
  %43 = load %struct.acpi_device*, %struct.acpi_device** %device57, align 8, !dbg !3582
  %dev58 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %43, i32 0, i32 21, !dbg !3583
  %kobj59 = getelementptr inbounds %struct.device, %struct.device* %dev58, i32 0, i32 0, !dbg !3584
  %call60 = call i32 @sysfs_create_link(%struct.kobject* %kobj56, %struct.kobject* %kobj59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0)) #9, !dbg !3585
  store i32 %call60, i32* %result, align 4, !dbg !3586
  %44 = load i32, i32* %result, align 4, !dbg !3587
  %tobool61 = icmp ne i32 %44, 0, !dbg !3587
  br i1 %tobool61, label %if.then62, label %if.end63, !dbg !3589

if.then62:                                        ; preds = %if.end53
  br label %remove_tz_link, !dbg !3590

if.end63:                                         ; preds = %if.end53
  %45 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3591
  %device64 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %45, i32 0, i32 0, !dbg !3592
  %46 = load %struct.acpi_device*, %struct.acpi_device** %device64, align 8, !dbg !3592
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %46, i32 0, i32 1, !dbg !3593
  %47 = load i8*, i8** %handle, align 8, !dbg !3593
  %48 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3594
  %thermal_zone65 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %48, i32 0, i32 10, !dbg !3595
  %49 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %thermal_zone65, align 8, !dbg !3595
  %50 = bitcast %struct.thermal_zone_device* %49 to i8*, !dbg !3594
  %call66 = call i32 @acpi_bus_attach_private_data(i8* %47, i8* %50) #9, !dbg !3596
  store i32 %call66, i32* %status, align 4, !dbg !3597
  %51 = load i32, i32* %status, align 4, !dbg !3598
  %tobool67 = icmp ne i32 %51, 0, !dbg !3598
  br i1 %tobool67, label %if.then68, label %if.end69, !dbg !3600

if.then68:                                        ; preds = %if.end63
  store i32 -19, i32* %result, align 4, !dbg !3601
  br label %remove_dev_link, !dbg !3603

if.end69:                                         ; preds = %if.end63
  %52 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3604
  %thermal_zone70 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %52, i32 0, i32 10, !dbg !3605
  %53 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %thermal_zone70, align 8, !dbg !3605
  %call71 = call i32 @thermal_zone_device_enable(%struct.thermal_zone_device* %53) #9, !dbg !3606
  store i32 %call71, i32* %result, align 4, !dbg !3607
  %54 = load i32, i32* %result, align 4, !dbg !3608
  %tobool72 = icmp ne i32 %54, 0, !dbg !3608
  br i1 %tobool72, label %if.then73, label %if.end74, !dbg !3610

if.then73:                                        ; preds = %if.end69
  br label %acpi_bus_detach, !dbg !3611

if.end74:                                         ; preds = %if.end69
  %55 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3612
  %device75 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %55, i32 0, i32 0, !dbg !3612
  %56 = load %struct.acpi_device*, %struct.acpi_device** %device75, align 8, !dbg !3612
  %dev76 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %56, i32 0, i32 21, !dbg !3612
  %57 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3612
  %thermal_zone77 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %57, i32 0, i32 10, !dbg !3612
  %58 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %thermal_zone77, align 8, !dbg !3612
  %id = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %58, i32 0, i32 0, !dbg !3612
  %59 = load i32, i32* %id, align 8, !dbg !3612
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev76, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.24, i64 0, i64 0), i32 %59) #10, !dbg !3612
  store i32 0, i32* %retval, align 4, !dbg !3613
  br label %return, !dbg !3613

acpi_bus_detach:                                  ; preds = %if.then73
  call void @llvm.dbg.label(metadata !3614), !dbg !3615
  %60 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3616
  %device78 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %60, i32 0, i32 0, !dbg !3617
  %61 = load %struct.acpi_device*, %struct.acpi_device** %device78, align 8, !dbg !3617
  %handle79 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %61, i32 0, i32 1, !dbg !3618
  %62 = load i8*, i8** %handle79, align 8, !dbg !3618
  call void @acpi_bus_detach_private_data(i8* %62) #9, !dbg !3619
  br label %remove_dev_link, !dbg !3619

remove_dev_link:                                  ; preds = %acpi_bus_detach, %if.then68
  call void @llvm.dbg.label(metadata !3620), !dbg !3621
  %63 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3622
  %thermal_zone80 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %63, i32 0, i32 10, !dbg !3623
  %64 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %thermal_zone80, align 8, !dbg !3623
  %device81 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %64, i32 0, i32 2, !dbg !3624
  %kobj82 = getelementptr inbounds %struct.device, %struct.device* %device81, i32 0, i32 0, !dbg !3625
  call void @sysfs_remove_link(%struct.kobject* %kobj82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0)) #9, !dbg !3626
  br label %remove_tz_link, !dbg !3626

remove_tz_link:                                   ; preds = %remove_dev_link, %if.then62
  call void @llvm.dbg.label(metadata !3627), !dbg !3628
  %65 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3629
  %device83 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %65, i32 0, i32 0, !dbg !3630
  %66 = load %struct.acpi_device*, %struct.acpi_device** %device83, align 8, !dbg !3630
  %dev84 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %66, i32 0, i32 21, !dbg !3631
  %kobj85 = getelementptr inbounds %struct.device, %struct.device* %dev84, i32 0, i32 0, !dbg !3632
  call void @sysfs_remove_link(%struct.kobject* %kobj85, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !3633
  br label %unregister_tzd, !dbg !3633

unregister_tzd:                                   ; preds = %remove_tz_link, %if.then52
  call void @llvm.dbg.label(metadata !3634), !dbg !3635
  %67 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3636
  %thermal_zone86 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %67, i32 0, i32 10, !dbg !3637
  %68 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %thermal_zone86, align 8, !dbg !3637
  call void @thermal_zone_device_unregister(%struct.thermal_zone_device* %68) #9, !dbg !3638
  %69 = load i32, i32* %result, align 4, !dbg !3639
  store i32 %69, i32* %retval, align 4, !dbg !3640
  br label %return, !dbg !3640

return:                                           ; preds = %unregister_tzd, %if.end74, %if.then45
  %70 = load i32, i32* %retval, align 4, !dbg !3641
  ret i32 %70, !dbg !3641
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__init_work(%struct.work_struct* %work, i32 %onstack) #2 !dbg !3642 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  %onstack.addr = alloca i32, align 4
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !3645, metadata !DIExpression()), !dbg !3646
  store i32 %onstack, i32* %onstack.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %onstack.addr, metadata !3647, metadata !DIExpression()), !dbg !3648
  ret void, !dbg !3649
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #2 !dbg !3650 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !3654, metadata !DIExpression()), !dbg !3655
  br label %do.body, !dbg !3656

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !3657

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !3659

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !3657

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3661
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3661
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !3661
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !3661
  br label %do.end3, !dbg !3661

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !3657

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3663
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3664
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !3665
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !3666
  ret void, !dbg !3667
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_thermal_check_fn(%struct.work_struct* %work) #2 !dbg !3668 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  %tz = alloca %struct.acpi_thermal*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_thermal*, align 8
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !3669, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.declare(metadata %struct.acpi_thermal** %tz, metadata !3671, metadata !DIExpression()), !dbg !3672
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3673, metadata !DIExpression()), !dbg !3675
  %0 = load %struct.work_struct*, %struct.work_struct** %work.addr, align 8, !dbg !3675
  %1 = bitcast %struct.work_struct* %0 to i8*, !dbg !3675
  store i8* %1, i8** %__mptr, align 8, !dbg !3675
  br label %do.body, !dbg !3675

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3676

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3675
  %add.ptr = getelementptr i8, i8* %2, i64 -1360, !dbg !3675
  %3 = bitcast i8* %add.ptr to %struct.acpi_thermal*, !dbg !3675
  store %struct.acpi_thermal* %3, %struct.acpi_thermal** %tmp, align 8, !dbg !3676
  %4 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tmp, align 8, !dbg !3675
  store %struct.acpi_thermal* %4, %struct.acpi_thermal** %tz, align 8, !dbg !3672
  %5 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !3678
  %6 = bitcast %struct.acpi_thermal* %5 to i8*, !dbg !3678
  call void @acpi_thermal_check(i8* %6) #9, !dbg !3679
  ret void, !dbg !3680
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @deci_kelvin_to_celsius(i64 %t) #2 !dbg !3681 {
entry:
  %t.addr = alloca i64, align 8
  %__x = alloca i64, align 8
  %__d = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i64 %t, i64* %t.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %t.addr, metadata !3685, metadata !DIExpression()), !dbg !3686
  %0 = load i64, i64* %t.addr, align 8, !dbg !3687
  %mul = mul i64 %0, 100, !dbg !3688
  %call = call i64 @milli_kelvin_to_millicelsius(i64 %mul) #9, !dbg !3689
  store i64 %call, i64* %t.addr, align 8, !dbg !3690
  call void @llvm.dbg.declare(metadata i64* %__x, metadata !3691, metadata !DIExpression()), !dbg !3693
  %1 = load i64, i64* %t.addr, align 8, !dbg !3693
  store i64 %1, i64* %__x, align 8, !dbg !3693
  call void @llvm.dbg.declare(metadata i32* %__d, metadata !3694, metadata !DIExpression()), !dbg !3693
  store i32 1000, i32* %__d, align 4, !dbg !3693
  %2 = load i64, i64* %__x, align 8, !dbg !3693
  %cmp = icmp sgt i64 %2, 0, !dbg !3693
  %conv = zext i1 %cmp to i32, !dbg !3693
  %3 = load i32, i32* %__d, align 4, !dbg !3693
  %cmp1 = icmp sgt i32 %3, 0, !dbg !3693
  %conv2 = zext i1 %cmp1 to i32, !dbg !3693
  %cmp3 = icmp eq i32 %conv, %conv2, !dbg !3693
  br i1 %cmp3, label %cond.true, label %cond.false, !dbg !3693

cond.true:                                        ; preds = %entry
  %4 = load i64, i64* %__x, align 8, !dbg !3693
  %5 = load i32, i32* %__d, align 4, !dbg !3693
  %div = sdiv i32 %5, 2, !dbg !3693
  %conv5 = sext i32 %div to i64, !dbg !3693
  %add = add i64 %4, %conv5, !dbg !3693
  %6 = load i32, i32* %__d, align 4, !dbg !3693
  %conv6 = sext i32 %6 to i64, !dbg !3693
  %div7 = sdiv i64 %add, %conv6, !dbg !3693
  br label %cond.end, !dbg !3693

cond.false:                                       ; preds = %entry
  %7 = load i64, i64* %__x, align 8, !dbg !3693
  %8 = load i32, i32* %__d, align 4, !dbg !3693
  %div8 = sdiv i32 %8, 2, !dbg !3693
  %conv9 = sext i32 %div8 to i64, !dbg !3693
  %sub = sub i64 %7, %conv9, !dbg !3693
  %9 = load i32, i32* %__d, align 4, !dbg !3693
  %conv10 = sext i32 %9 to i64, !dbg !3693
  %div11 = sdiv i64 %sub, %conv10, !dbg !3693
  br label %cond.end, !dbg !3693

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %div7, %cond.true ], [ %div11, %cond.false ], !dbg !3693
  store i64 %cond, i64* %tmp, align 8, !dbg !3693
  %10 = load i64, i64* %tmp, align 8, !dbg !3693
  ret i64 %10, !dbg !3695
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #1

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #7

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #8 !dbg !3696 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3700, metadata !DIExpression()), !dbg !3705
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3707, metadata !DIExpression()), !dbg !3708
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3709, metadata !DIExpression()), !dbg !3710
  %0 = load i64, i64* %size.addr, align 8, !dbg !3711
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3713
  br i1 %1, label %if.then, label %if.end447, !dbg !3714

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !3715
  %tobool = icmp ne i64 %2, 0, !dbg !3715
  br i1 %tobool, label %if.end, label %if.then1, !dbg !3718

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !3719
  br label %return, !dbg !3719

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !3720
  %cmp = icmp ult i64 %3, 4096, !dbg !3722
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3723

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3724
  br label %return, !dbg !3724

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub = sub i64 %4, 1, !dbg !3725
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !3725
  br i1 %5, label %cond.true, label %cond.false442, !dbg !3725

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub4 = sub i64 %6, 1, !dbg !3725
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !3725
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !3725

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub6 = sub i64 %8, 1, !dbg !3725
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !3725
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !3725

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !3725

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub9 = sub i64 %9, 1, !dbg !3725
  %and = and i64 %sub9, -9223372036854775808, !dbg !3725
  %tobool10 = icmp ne i64 %and, 0, !dbg !3725
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !3725

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !3725

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub13 = sub i64 %10, 1, !dbg !3725
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !3725
  %tobool15 = icmp ne i64 %and14, 0, !dbg !3725
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !3725

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !3725

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub18 = sub i64 %11, 1, !dbg !3725
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !3725
  %tobool20 = icmp ne i64 %and19, 0, !dbg !3725
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !3725

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !3725

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub23 = sub i64 %12, 1, !dbg !3725
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !3725
  %tobool25 = icmp ne i64 %and24, 0, !dbg !3725
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !3725

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !3725

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub28 = sub i64 %13, 1, !dbg !3725
  %and29 = and i64 %sub28, 576460752303423488, !dbg !3725
  %tobool30 = icmp ne i64 %and29, 0, !dbg !3725
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !3725

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !3725

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub33 = sub i64 %14, 1, !dbg !3725
  %and34 = and i64 %sub33, 288230376151711744, !dbg !3725
  %tobool35 = icmp ne i64 %and34, 0, !dbg !3725
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !3725

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !3725

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub38 = sub i64 %15, 1, !dbg !3725
  %and39 = and i64 %sub38, 144115188075855872, !dbg !3725
  %tobool40 = icmp ne i64 %and39, 0, !dbg !3725
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !3725

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !3725

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub43 = sub i64 %16, 1, !dbg !3725
  %and44 = and i64 %sub43, 72057594037927936, !dbg !3725
  %tobool45 = icmp ne i64 %and44, 0, !dbg !3725
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !3725

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !3725

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub48 = sub i64 %17, 1, !dbg !3725
  %and49 = and i64 %sub48, 36028797018963968, !dbg !3725
  %tobool50 = icmp ne i64 %and49, 0, !dbg !3725
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !3725

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !3725

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub53 = sub i64 %18, 1, !dbg !3725
  %and54 = and i64 %sub53, 18014398509481984, !dbg !3725
  %tobool55 = icmp ne i64 %and54, 0, !dbg !3725
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !3725

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !3725

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub58 = sub i64 %19, 1, !dbg !3725
  %and59 = and i64 %sub58, 9007199254740992, !dbg !3725
  %tobool60 = icmp ne i64 %and59, 0, !dbg !3725
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !3725

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !3725

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub63 = sub i64 %20, 1, !dbg !3725
  %and64 = and i64 %sub63, 4503599627370496, !dbg !3725
  %tobool65 = icmp ne i64 %and64, 0, !dbg !3725
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !3725

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !3725

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub68 = sub i64 %21, 1, !dbg !3725
  %and69 = and i64 %sub68, 2251799813685248, !dbg !3725
  %tobool70 = icmp ne i64 %and69, 0, !dbg !3725
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !3725

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !3725

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub73 = sub i64 %22, 1, !dbg !3725
  %and74 = and i64 %sub73, 1125899906842624, !dbg !3725
  %tobool75 = icmp ne i64 %and74, 0, !dbg !3725
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !3725

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !3725

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub78 = sub i64 %23, 1, !dbg !3725
  %and79 = and i64 %sub78, 562949953421312, !dbg !3725
  %tobool80 = icmp ne i64 %and79, 0, !dbg !3725
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !3725

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !3725

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub83 = sub i64 %24, 1, !dbg !3725
  %and84 = and i64 %sub83, 281474976710656, !dbg !3725
  %tobool85 = icmp ne i64 %and84, 0, !dbg !3725
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !3725

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !3725

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub88 = sub i64 %25, 1, !dbg !3725
  %and89 = and i64 %sub88, 140737488355328, !dbg !3725
  %tobool90 = icmp ne i64 %and89, 0, !dbg !3725
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !3725

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !3725

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub93 = sub i64 %26, 1, !dbg !3725
  %and94 = and i64 %sub93, 70368744177664, !dbg !3725
  %tobool95 = icmp ne i64 %and94, 0, !dbg !3725
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !3725

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !3725

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub98 = sub i64 %27, 1, !dbg !3725
  %and99 = and i64 %sub98, 35184372088832, !dbg !3725
  %tobool100 = icmp ne i64 %and99, 0, !dbg !3725
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !3725

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !3725

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub103 = sub i64 %28, 1, !dbg !3725
  %and104 = and i64 %sub103, 17592186044416, !dbg !3725
  %tobool105 = icmp ne i64 %and104, 0, !dbg !3725
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !3725

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !3725

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub108 = sub i64 %29, 1, !dbg !3725
  %and109 = and i64 %sub108, 8796093022208, !dbg !3725
  %tobool110 = icmp ne i64 %and109, 0, !dbg !3725
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !3725

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !3725

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub113 = sub i64 %30, 1, !dbg !3725
  %and114 = and i64 %sub113, 4398046511104, !dbg !3725
  %tobool115 = icmp ne i64 %and114, 0, !dbg !3725
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !3725

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !3725

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub118 = sub i64 %31, 1, !dbg !3725
  %and119 = and i64 %sub118, 2199023255552, !dbg !3725
  %tobool120 = icmp ne i64 %and119, 0, !dbg !3725
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !3725

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !3725

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub123 = sub i64 %32, 1, !dbg !3725
  %and124 = and i64 %sub123, 1099511627776, !dbg !3725
  %tobool125 = icmp ne i64 %and124, 0, !dbg !3725
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !3725

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !3725

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub128 = sub i64 %33, 1, !dbg !3725
  %and129 = and i64 %sub128, 549755813888, !dbg !3725
  %tobool130 = icmp ne i64 %and129, 0, !dbg !3725
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !3725

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !3725

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub133 = sub i64 %34, 1, !dbg !3725
  %and134 = and i64 %sub133, 274877906944, !dbg !3725
  %tobool135 = icmp ne i64 %and134, 0, !dbg !3725
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !3725

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !3725

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub138 = sub i64 %35, 1, !dbg !3725
  %and139 = and i64 %sub138, 137438953472, !dbg !3725
  %tobool140 = icmp ne i64 %and139, 0, !dbg !3725
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !3725

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !3725

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub143 = sub i64 %36, 1, !dbg !3725
  %and144 = and i64 %sub143, 68719476736, !dbg !3725
  %tobool145 = icmp ne i64 %and144, 0, !dbg !3725
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !3725

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !3725

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub148 = sub i64 %37, 1, !dbg !3725
  %and149 = and i64 %sub148, 34359738368, !dbg !3725
  %tobool150 = icmp ne i64 %and149, 0, !dbg !3725
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !3725

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !3725

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub153 = sub i64 %38, 1, !dbg !3725
  %and154 = and i64 %sub153, 17179869184, !dbg !3725
  %tobool155 = icmp ne i64 %and154, 0, !dbg !3725
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !3725

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !3725

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub158 = sub i64 %39, 1, !dbg !3725
  %and159 = and i64 %sub158, 8589934592, !dbg !3725
  %tobool160 = icmp ne i64 %and159, 0, !dbg !3725
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !3725

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !3725

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub163 = sub i64 %40, 1, !dbg !3725
  %and164 = and i64 %sub163, 4294967296, !dbg !3725
  %tobool165 = icmp ne i64 %and164, 0, !dbg !3725
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !3725

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !3725

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub168 = sub i64 %41, 1, !dbg !3725
  %and169 = and i64 %sub168, 2147483648, !dbg !3725
  %tobool170 = icmp ne i64 %and169, 0, !dbg !3725
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !3725

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !3725

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub173 = sub i64 %42, 1, !dbg !3725
  %and174 = and i64 %sub173, 1073741824, !dbg !3725
  %tobool175 = icmp ne i64 %and174, 0, !dbg !3725
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !3725

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !3725

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub178 = sub i64 %43, 1, !dbg !3725
  %and179 = and i64 %sub178, 536870912, !dbg !3725
  %tobool180 = icmp ne i64 %and179, 0, !dbg !3725
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !3725

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !3725

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub183 = sub i64 %44, 1, !dbg !3725
  %and184 = and i64 %sub183, 268435456, !dbg !3725
  %tobool185 = icmp ne i64 %and184, 0, !dbg !3725
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !3725

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !3725

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub188 = sub i64 %45, 1, !dbg !3725
  %and189 = and i64 %sub188, 134217728, !dbg !3725
  %tobool190 = icmp ne i64 %and189, 0, !dbg !3725
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !3725

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !3725

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub193 = sub i64 %46, 1, !dbg !3725
  %and194 = and i64 %sub193, 67108864, !dbg !3725
  %tobool195 = icmp ne i64 %and194, 0, !dbg !3725
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !3725

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !3725

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub198 = sub i64 %47, 1, !dbg !3725
  %and199 = and i64 %sub198, 33554432, !dbg !3725
  %tobool200 = icmp ne i64 %and199, 0, !dbg !3725
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !3725

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !3725

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub203 = sub i64 %48, 1, !dbg !3725
  %and204 = and i64 %sub203, 16777216, !dbg !3725
  %tobool205 = icmp ne i64 %and204, 0, !dbg !3725
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !3725

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !3725

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub208 = sub i64 %49, 1, !dbg !3725
  %and209 = and i64 %sub208, 8388608, !dbg !3725
  %tobool210 = icmp ne i64 %and209, 0, !dbg !3725
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !3725

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !3725

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub213 = sub i64 %50, 1, !dbg !3725
  %and214 = and i64 %sub213, 4194304, !dbg !3725
  %tobool215 = icmp ne i64 %and214, 0, !dbg !3725
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !3725

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !3725

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub218 = sub i64 %51, 1, !dbg !3725
  %and219 = and i64 %sub218, 2097152, !dbg !3725
  %tobool220 = icmp ne i64 %and219, 0, !dbg !3725
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !3725

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !3725

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub223 = sub i64 %52, 1, !dbg !3725
  %and224 = and i64 %sub223, 1048576, !dbg !3725
  %tobool225 = icmp ne i64 %and224, 0, !dbg !3725
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !3725

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !3725

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub228 = sub i64 %53, 1, !dbg !3725
  %and229 = and i64 %sub228, 524288, !dbg !3725
  %tobool230 = icmp ne i64 %and229, 0, !dbg !3725
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !3725

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !3725

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub233 = sub i64 %54, 1, !dbg !3725
  %and234 = and i64 %sub233, 262144, !dbg !3725
  %tobool235 = icmp ne i64 %and234, 0, !dbg !3725
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !3725

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !3725

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub238 = sub i64 %55, 1, !dbg !3725
  %and239 = and i64 %sub238, 131072, !dbg !3725
  %tobool240 = icmp ne i64 %and239, 0, !dbg !3725
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !3725

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !3725

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub243 = sub i64 %56, 1, !dbg !3725
  %and244 = and i64 %sub243, 65536, !dbg !3725
  %tobool245 = icmp ne i64 %and244, 0, !dbg !3725
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !3725

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !3725

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub248 = sub i64 %57, 1, !dbg !3725
  %and249 = and i64 %sub248, 32768, !dbg !3725
  %tobool250 = icmp ne i64 %and249, 0, !dbg !3725
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !3725

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !3725

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub253 = sub i64 %58, 1, !dbg !3725
  %and254 = and i64 %sub253, 16384, !dbg !3725
  %tobool255 = icmp ne i64 %and254, 0, !dbg !3725
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !3725

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !3725

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub258 = sub i64 %59, 1, !dbg !3725
  %and259 = and i64 %sub258, 8192, !dbg !3725
  %tobool260 = icmp ne i64 %and259, 0, !dbg !3725
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !3725

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !3725

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub263 = sub i64 %60, 1, !dbg !3725
  %and264 = and i64 %sub263, 4096, !dbg !3725
  %tobool265 = icmp ne i64 %and264, 0, !dbg !3725
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !3725

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !3725

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub268 = sub i64 %61, 1, !dbg !3725
  %and269 = and i64 %sub268, 2048, !dbg !3725
  %tobool270 = icmp ne i64 %and269, 0, !dbg !3725
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !3725

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !3725

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub273 = sub i64 %62, 1, !dbg !3725
  %and274 = and i64 %sub273, 1024, !dbg !3725
  %tobool275 = icmp ne i64 %and274, 0, !dbg !3725
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !3725

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !3725

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub278 = sub i64 %63, 1, !dbg !3725
  %and279 = and i64 %sub278, 512, !dbg !3725
  %tobool280 = icmp ne i64 %and279, 0, !dbg !3725
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !3725

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !3725

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub283 = sub i64 %64, 1, !dbg !3725
  %and284 = and i64 %sub283, 256, !dbg !3725
  %tobool285 = icmp ne i64 %and284, 0, !dbg !3725
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !3725

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !3725

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub288 = sub i64 %65, 1, !dbg !3725
  %and289 = and i64 %sub288, 128, !dbg !3725
  %tobool290 = icmp ne i64 %and289, 0, !dbg !3725
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !3725

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !3725

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub293 = sub i64 %66, 1, !dbg !3725
  %and294 = and i64 %sub293, 64, !dbg !3725
  %tobool295 = icmp ne i64 %and294, 0, !dbg !3725
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !3725

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !3725

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub298 = sub i64 %67, 1, !dbg !3725
  %and299 = and i64 %sub298, 32, !dbg !3725
  %tobool300 = icmp ne i64 %and299, 0, !dbg !3725
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !3725

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !3725

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub303 = sub i64 %68, 1, !dbg !3725
  %and304 = and i64 %sub303, 16, !dbg !3725
  %tobool305 = icmp ne i64 %and304, 0, !dbg !3725
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !3725

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !3725

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub308 = sub i64 %69, 1, !dbg !3725
  %and309 = and i64 %sub308, 8, !dbg !3725
  %tobool310 = icmp ne i64 %and309, 0, !dbg !3725
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !3725

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !3725

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub313 = sub i64 %70, 1, !dbg !3725
  %and314 = and i64 %sub313, 4, !dbg !3725
  %tobool315 = icmp ne i64 %and314, 0, !dbg !3725
  %71 = zext i1 %tobool315 to i64, !dbg !3725
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !3725
  br label %cond.end, !dbg !3725

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !3725
  br label %cond.end317, !dbg !3725

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !3725
  br label %cond.end319, !dbg !3725

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !3725
  br label %cond.end321, !dbg !3725

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !3725
  br label %cond.end323, !dbg !3725

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !3725
  br label %cond.end325, !dbg !3725

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !3725
  br label %cond.end327, !dbg !3725

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !3725
  br label %cond.end329, !dbg !3725

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !3725
  br label %cond.end331, !dbg !3725

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !3725
  br label %cond.end333, !dbg !3725

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !3725
  br label %cond.end335, !dbg !3725

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !3725
  br label %cond.end337, !dbg !3725

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !3725
  br label %cond.end339, !dbg !3725

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !3725
  br label %cond.end341, !dbg !3725

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !3725
  br label %cond.end343, !dbg !3725

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !3725
  br label %cond.end345, !dbg !3725

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !3725
  br label %cond.end347, !dbg !3725

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !3725
  br label %cond.end349, !dbg !3725

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !3725
  br label %cond.end351, !dbg !3725

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !3725
  br label %cond.end353, !dbg !3725

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !3725
  br label %cond.end355, !dbg !3725

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !3725
  br label %cond.end357, !dbg !3725

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !3725
  br label %cond.end359, !dbg !3725

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !3725
  br label %cond.end361, !dbg !3725

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !3725
  br label %cond.end363, !dbg !3725

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !3725
  br label %cond.end365, !dbg !3725

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !3725
  br label %cond.end367, !dbg !3725

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !3725
  br label %cond.end369, !dbg !3725

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !3725
  br label %cond.end371, !dbg !3725

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !3725
  br label %cond.end373, !dbg !3725

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !3725
  br label %cond.end375, !dbg !3725

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !3725
  br label %cond.end377, !dbg !3725

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !3725
  br label %cond.end379, !dbg !3725

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !3725
  br label %cond.end381, !dbg !3725

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !3725
  br label %cond.end383, !dbg !3725

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !3725
  br label %cond.end385, !dbg !3725

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !3725
  br label %cond.end387, !dbg !3725

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !3725
  br label %cond.end389, !dbg !3725

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !3725
  br label %cond.end391, !dbg !3725

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !3725
  br label %cond.end393, !dbg !3725

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !3725
  br label %cond.end395, !dbg !3725

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !3725
  br label %cond.end397, !dbg !3725

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !3725
  br label %cond.end399, !dbg !3725

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !3725
  br label %cond.end401, !dbg !3725

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !3725
  br label %cond.end403, !dbg !3725

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !3725
  br label %cond.end405, !dbg !3725

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !3725
  br label %cond.end407, !dbg !3725

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !3725
  br label %cond.end409, !dbg !3725

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !3725
  br label %cond.end411, !dbg !3725

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !3725
  br label %cond.end413, !dbg !3725

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !3725
  br label %cond.end415, !dbg !3725

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !3725
  br label %cond.end417, !dbg !3725

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !3725
  br label %cond.end419, !dbg !3725

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !3725
  br label %cond.end421, !dbg !3725

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !3725
  br label %cond.end423, !dbg !3725

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !3725
  br label %cond.end425, !dbg !3725

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !3725
  br label %cond.end427, !dbg !3725

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !3725
  br label %cond.end429, !dbg !3725

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !3725
  br label %cond.end431, !dbg !3725

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !3725
  br label %cond.end433, !dbg !3725

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !3725
  br label %cond.end435, !dbg !3725

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !3725
  br label %cond.end437, !dbg !3725

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !3725
  br label %cond.end440, !dbg !3725

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !3725

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !3725
  br label %cond.end444, !dbg !3725

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !3725
  %sub443 = sub i64 %72, 1, !dbg !3725
  %call = call i32 @__ilog2_u64(i64 %sub443) #12, !dbg !3725
  br label %cond.end444, !dbg !3725

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !3725
  %sub446 = sub i32 %cond445, 12, !dbg !3726
  %add = add i32 %sub446, 1, !dbg !3727
  store i32 %add, i32* %retval, align 4, !dbg !3728
  br label %return, !dbg !3728

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !3729
  %dec = add i64 %73, -1, !dbg !3729
  store i64 %dec, i64* %size.addr, align 8, !dbg !3729
  %74 = load i64, i64* %size.addr, align 8, !dbg !3730
  %shr = lshr i64 %74, 12, !dbg !3730
  store i64 %shr, i64* %size.addr, align 8, !dbg !3730
  %75 = load i64, i64* %size.addr, align 8, !dbg !3731
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3708
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !3732
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !3733
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #14, !dbg !3732, !srcloc !3734
  store i32 %78, i32* %bitpos.i, align 4, !dbg !3732
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !3735
  %add.i = add i32 %79, 1, !dbg !3736
  store i32 %add.i, i32* %retval, align 4, !dbg !3737
  br label %return, !dbg !3737

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !3738
  ret i32 %80, !dbg !3738
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #8 !dbg !3739 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3700, metadata !DIExpression()), !dbg !3743
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3707, metadata !DIExpression()), !dbg !3745
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3746, metadata !DIExpression()), !dbg !3747
  %0 = load i64, i64* %n.addr, align 8, !dbg !3748
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3745
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !3749
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !3750
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #14, !dbg !3749, !srcloc !3734
  store i32 %3, i32* %bitpos.i, align 4, !dbg !3749
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !3751
  %add.i = add i32 %4, 1, !dbg !3752
  %sub = sub i32 %add.i, 1, !dbg !3753
  ret i32 %sub, !dbg !3754
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #2 !dbg !3755 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !3759, metadata !DIExpression()), !dbg !3760
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !3761, metadata !DIExpression()), !dbg !3762
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3763, metadata !DIExpression()), !dbg !3764
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3765, metadata !DIExpression()), !dbg !3766
  %0 = load i8*, i8** %object.addr, align 8, !dbg !3767
  ret i8* %0, !dbg !3768
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_thermal_aml_dependency_fix(%struct.acpi_thermal* %tz) #2 !dbg !3769 {
entry:
  %tz.addr = alloca %struct.acpi_thermal*, align 8
  %handle = alloca i8*, align 8
  %value = alloca i64, align 8
  %i = alloca i32, align 4
  %name = alloca [5 x i8], align 1
  %status = alloca i32, align 4
  store %struct.acpi_thermal* %tz, %struct.acpi_thermal** %tz.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_thermal** %tz.addr, metadata !3770, metadata !DIExpression()), !dbg !3771
  call void @llvm.dbg.declare(metadata i8** %handle, metadata !3772, metadata !DIExpression()), !dbg !3773
  %0 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3774
  %device = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %0, i32 0, i32 0, !dbg !3775
  %1 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !3775
  %handle1 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %1, i32 0, i32 1, !dbg !3776
  %2 = load i8*, i8** %handle1, align 8, !dbg !3776
  store i8* %2, i8** %handle, align 8, !dbg !3773
  call void @llvm.dbg.declare(metadata i64* %value, metadata !3777, metadata !DIExpression()), !dbg !3778
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3779, metadata !DIExpression()), !dbg !3780
  %3 = load i8*, i8** %handle, align 8, !dbg !3781
  %call = call i32 @acpi_evaluate_integer(i8* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %struct.acpi_object_list* null, i64* %value) #9, !dbg !3782
  %4 = load i8*, i8** %handle, align 8, !dbg !3783
  %call2 = call i32 @acpi_evaluate_integer(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), %struct.acpi_object_list* null, i64* %value) #9, !dbg !3784
  %5 = load i8*, i8** %handle, align 8, !dbg !3785
  %call3 = call i32 @acpi_evaluate_integer(i8* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), %struct.acpi_object_list* null, i64* %value) #9, !dbg !3786
  store i32 0, i32* %i, align 4, !dbg !3787
  br label %for.cond, !dbg !3789

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4, !dbg !3790
  %cmp = icmp slt i32 %6, 10, !dbg !3792
  br i1 %cmp, label %for.body, label %for.end, !dbg !3793

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata [5 x i8]* %name, metadata !3794, metadata !DIExpression()), !dbg !3797
  %arrayinit.begin = getelementptr inbounds [5 x i8], [5 x i8]* %name, i64 0, i64 0, !dbg !3798
  store i8 95, i8* %arrayinit.begin, align 1, !dbg !3798
  %arrayinit.element = getelementptr inbounds i8, i8* %arrayinit.begin, i64 1, !dbg !3798
  store i8 65, i8* %arrayinit.element, align 1, !dbg !3798
  %arrayinit.element4 = getelementptr inbounds i8, i8* %arrayinit.element, i64 1, !dbg !3798
  store i8 67, i8* %arrayinit.element4, align 1, !dbg !3798
  %arrayinit.element5 = getelementptr inbounds i8, i8* %arrayinit.element4, i64 1, !dbg !3798
  %7 = load i32, i32* %i, align 4, !dbg !3799
  %add = add i32 48, %7, !dbg !3800
  %conv = trunc i32 %add to i8, !dbg !3801
  store i8 %conv, i8* %arrayinit.element5, align 1, !dbg !3798
  %arrayinit.element6 = getelementptr inbounds i8, i8* %arrayinit.element5, i64 1, !dbg !3798
  store i8 0, i8* %arrayinit.element6, align 1, !dbg !3798
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3802, metadata !DIExpression()), !dbg !3803
  %8 = load i8*, i8** %handle, align 8, !dbg !3804
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %name, i64 0, i64 0, !dbg !3805
  %call7 = call i32 @acpi_evaluate_integer(i8* %8, i8* %arraydecay, %struct.acpi_object_list* null, i64* %value) #9, !dbg !3806
  store i32 %call7, i32* %status, align 4, !dbg !3807
  %9 = load i32, i32* %status, align 4, !dbg !3808
  %cmp8 = icmp eq i32 %9, 5, !dbg !3810
  br i1 %cmp8, label %if.then, label %if.end, !dbg !3811

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !3812

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !3813

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4, !dbg !3814
  %inc = add i32 %10, 1, !dbg !3814
  store i32 %inc, i32* %i, align 4, !dbg !3814
  br label %for.cond, !dbg !3815, !llvm.loop !3816

for.end:                                          ; preds = %if.then, %for.cond
  %11 = load i8*, i8** %handle, align 8, !dbg !3818
  %call10 = call i32 @acpi_evaluate_integer(i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), %struct.acpi_object_list* null, i64* %value) #9, !dbg !3819
  ret void, !dbg !3820
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_thermal_get_trip_points(%struct.acpi_thermal* %tz) #2 !dbg !3821 {
entry:
  %retval = alloca i32, align 4
  %tz.addr = alloca %struct.acpi_thermal*, align 8
  %i = alloca i32, align 4
  %valid = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.acpi_thermal* %tz, %struct.acpi_thermal** %tz.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_thermal** %tz.addr, metadata !3822, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3824, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.declare(metadata i32* %valid, metadata !3826, metadata !DIExpression()), !dbg !3827
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3828, metadata !DIExpression()), !dbg !3829
  %0 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3830
  %call = call i32 @acpi_thermal_trips_update(%struct.acpi_thermal* %0, i32 31) #9, !dbg !3831
  store i32 %call, i32* %ret, align 4, !dbg !3829
  %1 = load i32, i32* %ret, align 4, !dbg !3832
  %tobool = icmp ne i32 %1, 0, !dbg !3832
  br i1 %tobool, label %if.then, label %if.end, !dbg !3834

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4, !dbg !3835
  store i32 %2, i32* %retval, align 4, !dbg !3836
  br label %return, !dbg !3836

if.end:                                           ; preds = %entry
  %3 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3837
  %trips = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %3, i32 0, i32 8, !dbg !3838
  %critical = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips, i32 0, i32 0, !dbg !3839
  %flags = getelementptr inbounds %struct.acpi_thermal_critical, %struct.acpi_thermal_critical* %critical, i32 0, i32 0, !dbg !3840
  %4 = bitcast %struct.acpi_thermal_state_flags* %flags to i8*, !dbg !3841
  %bf.load = load i8, i8* %4, align 8, !dbg !3841
  %bf.clear = and i8 %bf.load, 1, !dbg !3841
  %conv = zext i8 %bf.clear to i32, !dbg !3837
  %5 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3842
  %trips1 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %5, i32 0, i32 8, !dbg !3843
  %hot = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips1, i32 0, i32 1, !dbg !3844
  %flags2 = getelementptr inbounds %struct.acpi_thermal_hot, %struct.acpi_thermal_hot* %hot, i32 0, i32 0, !dbg !3845
  %6 = bitcast %struct.acpi_thermal_state_flags* %flags2 to i8*, !dbg !3846
  %bf.load3 = load i8, i8* %6, align 8, !dbg !3846
  %bf.clear4 = and i8 %bf.load3, 1, !dbg !3846
  %conv5 = zext i8 %bf.clear4 to i32, !dbg !3842
  %or = or i32 %conv, %conv5, !dbg !3847
  %7 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3848
  %trips6 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %7, i32 0, i32 8, !dbg !3849
  %passive = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips6, i32 0, i32 2, !dbg !3850
  %flags7 = getelementptr inbounds %struct.acpi_thermal_passive, %struct.acpi_thermal_passive* %passive, i32 0, i32 0, !dbg !3851
  %8 = bitcast %struct.acpi_thermal_state_flags* %flags7 to i8*, !dbg !3852
  %bf.load8 = load i8, i8* %8, align 8, !dbg !3852
  %bf.clear9 = and i8 %bf.load8, 1, !dbg !3852
  %conv10 = zext i8 %bf.clear9 to i32, !dbg !3848
  %or11 = or i32 %or, %conv10, !dbg !3853
  store i32 %or11, i32* %valid, align 4, !dbg !3854
  store i32 0, i32* %i, align 4, !dbg !3855
  br label %for.cond, !dbg !3857

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %i, align 4, !dbg !3858
  %cmp = icmp slt i32 %9, 10, !dbg !3860
  br i1 %cmp, label %for.body, label %for.end, !dbg !3861

for.body:                                         ; preds = %for.cond
  %10 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3862
  %trips13 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %10, i32 0, i32 8, !dbg !3863
  %active = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips13, i32 0, i32 3, !dbg !3864
  %11 = load i32, i32* %i, align 4, !dbg !3865
  %idxprom = sext i32 %11 to i64, !dbg !3862
  %arrayidx = getelementptr [10 x %struct.acpi_thermal_active], [10 x %struct.acpi_thermal_active]* %active, i64 0, i64 %idxprom, !dbg !3862
  %flags14 = getelementptr inbounds %struct.acpi_thermal_active, %struct.acpi_thermal_active* %arrayidx, i32 0, i32 0, !dbg !3866
  %12 = bitcast %struct.acpi_thermal_state_flags* %flags14 to i8*, !dbg !3867
  %bf.load15 = load i8, i8* %12, align 8, !dbg !3867
  %bf.clear16 = and i8 %bf.load15, 1, !dbg !3867
  %conv17 = zext i8 %bf.clear16 to i32, !dbg !3862
  %13 = load i32, i32* %valid, align 4, !dbg !3868
  %or18 = or i32 %13, %conv17, !dbg !3868
  store i32 %or18, i32* %valid, align 4, !dbg !3868
  br label %for.inc, !dbg !3869

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !dbg !3870
  %inc = add i32 %14, 1, !dbg !3870
  store i32 %inc, i32* %i, align 4, !dbg !3870
  br label %for.cond, !dbg !3871, !llvm.loop !3872

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %valid, align 4, !dbg !3874
  %tobool19 = icmp ne i32 %15, 0, !dbg !3874
  br i1 %tobool19, label %if.end22, label %if.then20, !dbg !3876

if.then20:                                        ; preds = %for.end
  %call21 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !3877
  store i32 -19, i32* %retval, align 4, !dbg !3879
  br label %return, !dbg !3879

if.end22:                                         ; preds = %for.end
  store i32 0, i32* %retval, align 4, !dbg !3880
  br label %return, !dbg !3880

return:                                           ; preds = %if.end22, %if.then20, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !3881
  ret i32 %16, !dbg !3881
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_thermal_get_temperature(%struct.acpi_thermal* %tz) #2 !dbg !3882 {
entry:
  %retval = alloca i32, align 4
  %tz.addr = alloca %struct.acpi_thermal*, align 8
  %status = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.acpi_thermal* %tz, %struct.acpi_thermal** %tz.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_thermal** %tz.addr, metadata !3883, metadata !DIExpression()), !dbg !3884
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3885, metadata !DIExpression()), !dbg !3886
  store i32 0, i32* %status, align 4, !dbg !3886
  call void @llvm.dbg.declare(metadata i64* %tmp, metadata !3887, metadata !DIExpression()), !dbg !3888
  %0 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3889
  %tobool = icmp ne %struct.acpi_thermal* %0, null, !dbg !3889
  br i1 %tobool, label %if.end, label %if.then, !dbg !3891

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !3892
  br label %return, !dbg !3892

if.end:                                           ; preds = %entry
  %1 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3893
  %temperature = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %1, i32 0, i32 2, !dbg !3894
  %2 = load i64, i64* %temperature, align 8, !dbg !3894
  %3 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3895
  %last_temperature = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %3, i32 0, i32 3, !dbg !3896
  store i64 %2, i64* %last_temperature, align 8, !dbg !3897
  %4 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3898
  %device = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %4, i32 0, i32 0, !dbg !3899
  %5 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !3899
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %5, i32 0, i32 1, !dbg !3900
  %6 = load i8*, i8** %handle, align 8, !dbg !3900
  %call = call i32 @acpi_evaluate_integer(i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), %struct.acpi_object_list* null, i64* %tmp) #9, !dbg !3901
  store i32 %call, i32* %status, align 4, !dbg !3902
  %7 = load i32, i32* %status, align 4, !dbg !3903
  %tobool1 = icmp ne i32 %7, 0, !dbg !3903
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !3905

if.then2:                                         ; preds = %if.end
  store i32 -19, i32* %retval, align 4, !dbg !3906
  br label %return, !dbg !3906

if.end3:                                          ; preds = %if.end
  %8 = load i64, i64* %tmp, align 8, !dbg !3907
  %9 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3908
  %temperature4 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %9, i32 0, i32 2, !dbg !3909
  store i64 %8, i64* %temperature4, align 8, !dbg !3910
  store i32 0, i32* %retval, align 4, !dbg !3911
  br label %return, !dbg !3911

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !3912
  ret i32 %10, !dbg !3912
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_thermal_set_cooling_mode(%struct.acpi_thermal* %tz, i32 %mode) #2 !dbg !3913 {
entry:
  %retval = alloca i32, align 4
  %tz.addr = alloca %struct.acpi_thermal*, align 8
  %mode.addr = alloca i32, align 4
  store %struct.acpi_thermal* %tz, %struct.acpi_thermal** %tz.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_thermal** %tz.addr, metadata !3916, metadata !DIExpression()), !dbg !3917
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !3918, metadata !DIExpression()), !dbg !3919
  %0 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3920
  %tobool = icmp ne %struct.acpi_thermal* %0, null, !dbg !3920
  br i1 %tobool, label %if.end, label %if.then, !dbg !3922

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !3923
  br label %return, !dbg !3923

if.end:                                           ; preds = %entry
  %1 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3924
  %device = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %1, i32 0, i32 0, !dbg !3924
  %2 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !3924
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %2, i32 0, i32 1, !dbg !3924
  %3 = load i8*, i8** %handle, align 8, !dbg !3924
  %4 = load i32, i32* %mode.addr, align 4, !dbg !3924
  %conv = sext i32 %4 to i64, !dbg !3924
  %call = call i32 @acpi_execute_simple_method(i8* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i64 %conv) #9, !dbg !3924
  %tobool1 = icmp ne i32 %call, 0, !dbg !3924
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !3926

if.then2:                                         ; preds = %if.end
  store i32 -19, i32* %retval, align 4, !dbg !3927
  br label %return, !dbg !3927

if.end3:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3928
  br label %return, !dbg !3928

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !3929
  ret i32 %5, !dbg !3929
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_thermal_get_polling_frequency(%struct.acpi_thermal* %tz) #2 !dbg !3930 {
entry:
  %retval = alloca i32, align 4
  %tz.addr = alloca %struct.acpi_thermal*, align 8
  %status = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.acpi_thermal* %tz, %struct.acpi_thermal** %tz.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_thermal** %tz.addr, metadata !3931, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3933, metadata !DIExpression()), !dbg !3934
  store i32 0, i32* %status, align 4, !dbg !3934
  call void @llvm.dbg.declare(metadata i64* %tmp, metadata !3935, metadata !DIExpression()), !dbg !3936
  %0 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3937
  %tobool = icmp ne %struct.acpi_thermal* %0, null, !dbg !3937
  br i1 %tobool, label %if.end, label %if.then, !dbg !3939

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !3940
  br label %return, !dbg !3940

if.end:                                           ; preds = %entry
  %1 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3941
  %device = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %1, i32 0, i32 0, !dbg !3942
  %2 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !3942
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %2, i32 0, i32 1, !dbg !3943
  %3 = load i8*, i8** %handle, align 8, !dbg !3943
  %call = call i32 @acpi_evaluate_integer(i8* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), %struct.acpi_object_list* null, i64* %tmp) #9, !dbg !3944
  store i32 %call, i32* %status, align 4, !dbg !3945
  %4 = load i32, i32* %status, align 4, !dbg !3946
  %tobool1 = icmp ne i32 %4, 0, !dbg !3946
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !3948

if.then2:                                         ; preds = %if.end
  store i32 -19, i32* %retval, align 4, !dbg !3949
  br label %return, !dbg !3949

if.end3:                                          ; preds = %if.end
  %5 = load i64, i64* %tmp, align 8, !dbg !3950
  %6 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3951
  %polling_frequency = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %6, i32 0, i32 4, !dbg !3952
  store i64 %5, i64* %polling_frequency, align 8, !dbg !3953
  store i32 0, i32* %retval, align 4, !dbg !3954
  br label %return, !dbg !3954

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !3955
  ret i32 %7, !dbg !3955
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_evaluate_integer(i8*, i8*, %struct.acpi_object_list*, i64*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_thermal_trips_update(%struct.acpi_thermal* %tz, i32 %flag) #2 !dbg !3956 {
entry:
  %tz.addr = alloca %struct.acpi_thermal*, align 8
  %flag.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %tmp = alloca i64, align 8
  %devices = alloca %struct.acpi_handle_list, align 8
  %valid = alloca i32, align 4
  %i = alloca i32, align 4
  %crt_k = alloca i64, align 8
  %name = alloca [5 x i8], align 1
  store %struct.acpi_thermal* %tz, %struct.acpi_thermal** %tz.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_thermal** %tz.addr, metadata !3957, metadata !DIExpression()), !dbg !3958
  store i32 %flag, i32* %flag.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flag.addr, metadata !3959, metadata !DIExpression()), !dbg !3960
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3961, metadata !DIExpression()), !dbg !3962
  store i32 0, i32* %status, align 4, !dbg !3962
  call void @llvm.dbg.declare(metadata i64* %tmp, metadata !3963, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.declare(metadata %struct.acpi_handle_list* %devices, metadata !3965, metadata !DIExpression()), !dbg !3966
  call void @llvm.dbg.declare(metadata i32* %valid, metadata !3967, metadata !DIExpression()), !dbg !3968
  store i32 0, i32* %valid, align 4, !dbg !3968
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3969, metadata !DIExpression()), !dbg !3970
  %0 = load i32, i32* %flag.addr, align 4, !dbg !3971
  %and = and i32 %0, 1, !dbg !3973
  %tobool = icmp ne i32 %and, 0, !dbg !3973
  br i1 %tobool, label %if.then, label %if.end55, !dbg !3974

if.then:                                          ; preds = %entry
  %1 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3975
  %device = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %1, i32 0, i32 0, !dbg !3977
  %2 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !3977
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %2, i32 0, i32 1, !dbg !3978
  %3 = load i8*, i8** %handle, align 8, !dbg !3978
  %call = call i32 @acpi_evaluate_integer(i8* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %struct.acpi_object_list* null, i64* %tmp) #9, !dbg !3979
  store i32 %call, i32* %status, align 4, !dbg !3980
  %4 = load i64, i64* %tmp, align 8, !dbg !3981
  %5 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3982
  %trips = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %5, i32 0, i32 8, !dbg !3983
  %critical = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips, i32 0, i32 0, !dbg !3984
  %temperature = getelementptr inbounds %struct.acpi_thermal_critical, %struct.acpi_thermal_critical* %critical, i32 0, i32 1, !dbg !3985
  store i64 %4, i64* %temperature, align 8, !dbg !3986
  %6 = load i32, i32* %status, align 4, !dbg !3987
  %tobool1 = icmp ne i32 %6, 0, !dbg !3987
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !3989

if.then2:                                         ; preds = %if.then
  %7 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !3990
  %trips3 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %7, i32 0, i32 8, !dbg !3992
  %critical4 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips3, i32 0, i32 0, !dbg !3993
  %flags = getelementptr inbounds %struct.acpi_thermal_critical, %struct.acpi_thermal_critical* %critical4, i32 0, i32 0, !dbg !3994
  %8 = bitcast %struct.acpi_thermal_state_flags* %flags to i8*, !dbg !3995
  %bf.load = load i8, i8* %8, align 8, !dbg !3996
  %bf.clear = and i8 %bf.load, -2, !dbg !3996
  store i8 %bf.clear, i8* %8, align 8, !dbg !3996
  br label %if.end18, !dbg !3997

if.else:                                          ; preds = %if.then
  %9 = load i64, i64* %tmp, align 8, !dbg !3998
  %cmp = icmp ule i64 %9, 2732, !dbg !4000
  br i1 %cmp, label %if.then5, label %if.else12, !dbg !4001

if.then5:                                         ; preds = %if.else
  %10 = load i64, i64* %tmp, align 8, !dbg !4002
  %call6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.9, i64 0, i64 0), i64 %10) #10, !dbg !4002
  %11 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !4004
  %trips7 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %11, i32 0, i32 8, !dbg !4005
  %critical8 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips7, i32 0, i32 0, !dbg !4006
  %flags9 = getelementptr inbounds %struct.acpi_thermal_critical, %struct.acpi_thermal_critical* %critical8, i32 0, i32 0, !dbg !4007
  %12 = bitcast %struct.acpi_thermal_state_flags* %flags9 to i8*, !dbg !4008
  %bf.load10 = load i8, i8* %12, align 8, !dbg !4009
  %bf.clear11 = and i8 %bf.load10, -2, !dbg !4009
  store i8 %bf.clear11, i8* %12, align 8, !dbg !4009
  br label %if.end, !dbg !4010

if.else12:                                        ; preds = %if.else
  %13 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !4011
  %trips13 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %13, i32 0, i32 8, !dbg !4013
  %critical14 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips13, i32 0, i32 0, !dbg !4014
  %flags15 = getelementptr inbounds %struct.acpi_thermal_critical, %struct.acpi_thermal_critical* %critical14, i32 0, i32 0, !dbg !4015
  %14 = bitcast %struct.acpi_thermal_state_flags* %flags15 to i8*, !dbg !4016
  %bf.load16 = load i8, i8* %14, align 8, !dbg !4017
  %bf.clear17 = and i8 %bf.load16, -2, !dbg !4017
  %bf.set = or i8 %bf.clear17, 1, !dbg !4017
  store i8 %bf.set, i8* %14, align 8, !dbg !4017
  br label %if.end

if.end:                                           ; preds = %if.else12, %if.then5
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then2
  %15 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !4018
  %trips19 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %15, i32 0, i32 8, !dbg !4020
  %critical20 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips19, i32 0, i32 0, !dbg !4021
  %flags21 = getelementptr inbounds %struct.acpi_thermal_critical, %struct.acpi_thermal_critical* %critical20, i32 0, i32 0, !dbg !4022
  %16 = bitcast %struct.acpi_thermal_state_flags* %flags21 to i8*, !dbg !4023
  %bf.load22 = load i8, i8* %16, align 8, !dbg !4023
  %bf.clear23 = and i8 %bf.load22, 1, !dbg !4023
  %conv = zext i8 %bf.clear23 to i32, !dbg !4018
  %cmp24 = icmp eq i32 %conv, 1, !dbg !4024
  br i1 %cmp24, label %if.then26, label %if.end54, !dbg !4025

if.then26:                                        ; preds = %if.end18
  %17 = load i32, i32* @crt, align 4, !dbg !4026
  %cmp27 = icmp eq i32 %17, -1, !dbg !4029
  br i1 %cmp27, label %if.then29, label %if.else35, !dbg !4030

if.then29:                                        ; preds = %if.then26
  %18 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !4031
  %trips30 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %18, i32 0, i32 8, !dbg !4033
  %critical31 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips30, i32 0, i32 0, !dbg !4034
  %flags32 = getelementptr inbounds %struct.acpi_thermal_critical, %struct.acpi_thermal_critical* %critical31, i32 0, i32 0, !dbg !4035
  %19 = bitcast %struct.acpi_thermal_state_flags* %flags32 to i8*, !dbg !4036
  %bf.load33 = load i8, i8* %19, align 8, !dbg !4037
  %bf.clear34 = and i8 %bf.load33, -2, !dbg !4037
  store i8 %bf.clear34, i8* %19, align 8, !dbg !4037
  br label %if.end53, !dbg !4038

if.else35:                                        ; preds = %if.then26
  %20 = load i32, i32* @crt, align 4, !dbg !4039
  %cmp36 = icmp sgt i32 %20, 0, !dbg !4041
  br i1 %cmp36, label %if.then38, label %if.end52, !dbg !4042

if.then38:                                        ; preds = %if.else35
  call void @llvm.dbg.declare(metadata i64* %crt_k, metadata !4043, metadata !DIExpression()), !dbg !4045
  %21 = load i32, i32* @crt, align 4, !dbg !4046
  %conv39 = sext i32 %21 to i64, !dbg !4046
  %call40 = call i64 @celsius_to_deci_kelvin(i64 %conv39) #9, !dbg !4047
  store i64 %call40, i64* %crt_k, align 8, !dbg !4045
  %22 = load i64, i64* %crt_k, align 8, !dbg !4048
  %23 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !4050
  %trips41 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %23, i32 0, i32 8, !dbg !4051
  %critical42 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips41, i32 0, i32 0, !dbg !4052
  %temperature43 = getelementptr inbounds %struct.acpi_thermal_critical, %struct.acpi_thermal_critical* %critical42, i32 0, i32 1, !dbg !4053
  %24 = load i64, i64* %temperature43, align 8, !dbg !4053
  %cmp44 = icmp ugt i64 %22, %24, !dbg !4054
  br i1 %cmp44, label %if.then46, label %if.end48, !dbg !4055

if.then46:                                        ; preds = %if.then38
  %25 = load i32, i32* @crt, align 4, !dbg !4056
  %call47 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 %25) #10, !dbg !4056
  br label %if.end48, !dbg !4056

if.end48:                                         ; preds = %if.then46, %if.then38
  %26 = load i64, i64* %crt_k, align 8, !dbg !4057
  %27 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !4058
  %trips49 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %27, i32 0, i32 8, !dbg !4059
  %critical50 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips49, i32 0, i32 0, !dbg !4060
  %temperature51 = getelementptr inbounds %struct.acpi_thermal_critical, %struct.acpi_thermal_critical* %critical50, i32 0, i32 1, !dbg !4061
  store i64 %26, i64* %temperature51, align 8, !dbg !4062
  br label %if.end52, !dbg !4063

if.end52:                                         ; preds = %if.end48, %if.else35
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then29
  br label %if.end54, !dbg !4064

if.end54:                                         ; preds = %if.end53, %if.end18
  br label %if.end55, !dbg !4065

if.end55:                                         ; preds = %if.end54, %entry
  %28 = load i32, i32* %flag.addr, align 4, !dbg !4066
  %and56 = and i32 %28, 2, !dbg !4068
  %tobool57 = icmp ne i32 %and56, 0, !dbg !4068
  br i1 %tobool57, label %if.then58, label %if.end79, !dbg !4069

if.then58:                                        ; preds = %if.end55
  %29 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !4070
  %device59 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %29, i32 0, i32 0, !dbg !4072
  %30 = load %struct.acpi_device*, %struct.acpi_device** %device59, align 8, !dbg !4072
  %handle60 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %30, i32 0, i32 1, !dbg !4073
  %31 = load i8*, i8** %handle60, align 8, !dbg !4073
  %call61 = call i32 @acpi_evaluate_integer(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), %struct.acpi_object_list* null, i64* %tmp) #9, !dbg !4074
  store i32 %call61, i32* %status, align 4, !dbg !4075
  %32 = load i32, i32* %status, align 4, !dbg !4076
  %tobool62 = icmp ne i32 %32, 0, !dbg !4076
  br i1 %tobool62, label %if.then63, label %if.else68, !dbg !4078

if.then63:                                        ; preds = %if.then58
  %33 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !4079
  %trips64 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %33, i32 0, i32 8, !dbg !4081
  %hot = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips64, i32 0, i32 1, !dbg !4082
  %flags65 = getelementptr inbounds %struct.acpi_thermal_hot, %struct.acpi_thermal_hot* %hot, i32 0, i32 0, !dbg !4083
  %34 = bitcast %struct.acpi_thermal_state_flags* %flags65 to i8*, !dbg !4084
  %bf.load66 = load i8, i8* %34, align 8, !dbg !4085
  %bf.clear67 = and i8 %bf.load66, -2, !dbg !4085
  store i8 %bf.clear67, i8* %34, align 8, !dbg !4085
  br label %if.end78, !dbg !4086

if.else68:                                        ; preds = %if.then58
  %35 = load i64, i64* %tmp, align 8, !dbg !4087
  %36 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !4089
  %trips69 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %36, i32 0, i32 8, !dbg !4090
  %hot70 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips69, i32 0, i32 1, !dbg !4091
  %temperature71 = getelementptr inbounds %struct.acpi_thermal_hot, %struct.acpi_thermal_hot* %hot70, i32 0, i32 1, !dbg !4092
  store i64 %35, i64* %temperature71, align 8, !dbg !4093
  %37 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !4094
  %trips72 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %37, i32 0, i32 8, !dbg !4095
  %hot73 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips72, i32 0, i32 1, !dbg !4096
  %flags74 = getelementptr inbounds %struct.acpi_thermal_hot, %struct.acpi_thermal_hot* %hot73, i32 0, i32 0, !dbg !4097
  %38 = bitcast %struct.acpi_thermal_state_flags* %flags74 to i8*, !dbg !4098
  %bf.load75 = load i8, i8* %38, align 8, !dbg !4099
  %bf.clear76 = and i8 %bf.load75, -2, !dbg !4099
  %bf.set77 = or i8 %bf.clear76, 1, !dbg !4099
  store i8 %bf.set77, i8* %38, align 8, !dbg !4099
  br label %if.end78

if.end78:                                         ; preds = %if.else68, %if.then63
  br label %if.end79, !dbg !4100

if.end79:                                         ; preds = %if.end78, %if.end55
  %39 = load i32, i32* %flag.addr, align 4, !dbg !4101
  %and80 = and i32 %39, 4, !dbg !4103
  %tobool81 = icmp ne i32 %and80, 0, !dbg !4103
  br i1 %tobool81, label %land.lhs.true, label %lor.lhs.false, !dbg !4104

land.lhs.true:                                    ; preds = %if.end79
  %40 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !4105
  %trips82 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %40, i32 0, i32 8, !dbg !4106
  %passive = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips82, i32 0, i32 2, !dbg !4107
  %flags83 = getelementptr inbounds %struct.acpi_thermal_passive, %struct.acpi_thermal_passive* %passive, i32 0, i32 0, !dbg !4108
  %41 = bitcast %struct.acpi_thermal_state_flags* %flags83 to i8*, !dbg !4109
  %bf.load84 = load i8, i8* %41, align 8, !dbg !4109
  %bf.clear85 = and i8 %bf.load84, 1, !dbg !4109
  %conv86 = zext i8 %bf.clear85 to i32, !dbg !4105
  %tobool87 = icmp ne i32 %conv86, 0, !dbg !4105
  br i1 %tobool87, label %if.then90, label %lor.lhs.false, !dbg !4110

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end79
  %42 = load i32, i32* %flag.addr, align 4, !dbg !4111
  %cmp88 = icmp eq i32 %42, 31, !dbg !4112
  br i1 %cmp88, label %if.then90, label %if.end176, !dbg !4113

if.then90:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %43 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !4114
  %trips91 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %43, i32 0, i32 8, !dbg !4116
  %passive92 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips91, i32 0, i32 2, !dbg !4117
  %flags93 = getelementptr inbounds %struct.acpi_thermal_passive, %struct.acpi_thermal_passive* %passive92, i32 0, i32 0, !dbg !4118
  %44 = bitcast %struct.acpi_thermal_state_flags* %flags93 to i8*, !dbg !4119
  %bf.load94 = load i8, i8* %44, align 8, !dbg !4119
  %bf.clear95 = and i8 %bf.load94, 1, !dbg !4119
  %conv96 = zext i8 %bf.clear95 to i32, !dbg !4114
  store i32 %conv96, i32* %valid, align 4, !dbg !4120
  %45 = load i32, i32* @psv, align 4, !dbg !4121
  %cmp97 = icmp eq i32 %45, -1, !dbg !4123
  br i1 %cmp97, label %if.then99, label %if.else100, !dbg !4124

if.then99:                                        ; preds = %if.then90
  store i32 15, i32* %status, align 4, !dbg !4125
  br label %if.end111, !dbg !4127

if.else100:                                       ; preds = %if.then90
  %46 = load i32, i32* @psv, align 4, !dbg !4128
  %cmp101 = icmp sgt i32 %46, 0, !dbg !4130
  br i1 %cmp101, label %if.then103, label %if.else106, !dbg !4131

if.then103:                                       ; preds = %if.else100
  %47 = load i32, i32* @psv, align 4, !dbg !4132
  %conv104 = sext i32 %47 to i64, !dbg !4132
  %call105 = call i64 @celsius_to_deci_kelvin(i64 %conv104) #9, !dbg !4134
  store i64 %call105, i64* %tmp, align 8, !dbg !4135
  store i32 0, i32* %status, align 4, !dbg !4136
  br label %if.end110, !dbg !4137

if.else106:                                       ; preds = %if.else100
  %48 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !4138
  %device107 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %48, i32 0, i32 0, !dbg !4140
  %49 = load %struct.acpi_device*, %struct.acpi_device** %device107, align 8, !dbg !4140
  %handle108 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %49, i32 0, i32 1, !dbg !4141
  %50 = load i8*, i8** %handle108, align 8, !dbg !4141
  %call109 = call i32 @acpi_evaluate_integer(i8* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), %struct.acpi_object_list* null, i64* %tmp) #9, !dbg !4142
  store i32 %call109, i32* %status, align 4, !dbg !4143
  br label %if.end110

if.end110:                                        ; preds = %if.else106, %if.then103
  br label %if.end111

if.end111:                                        ; preds = %if.end110, %if.then99
  %51 = load i32, i32* %status, align 4, !dbg !4144
  %tobool112 = icmp ne i32 %51, 0, !dbg !4144
  br i1 %tobool112, label %if.then113, label %if.else119, !dbg !4146

if.then113:                                       ; preds = %if.end111
  %52 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !4147
  %trips114 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %52, i32 0, i32 8, !dbg !4148
  %passive115 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips114, i32 0, i32 2, !dbg !4149
  %flags116 = getelementptr inbounds %struct.acpi_thermal_passive, %struct.acpi_thermal_passive* %passive115, i32 0, i32 0, !dbg !4150
  %53 = bitcast %struct.acpi_thermal_state_flags* %flags116 to i8*, !dbg !4151
  %bf.load117 = load i8, i8* %53, align 8, !dbg !4152
  %bf.clear118 = and i8 %bf.load117, -2, !dbg !4152
  store i8 %bf.clear118, i8* %53, align 8, !dbg !4152
  br label %if.end175, !dbg !4147

if.else119:                                       ; preds = %if.end111
  %54 = load i64, i64* %tmp, align 8, !dbg !4153
  %55 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !4155
  %trips120 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %55, i32 0, i32 8, !dbg !4156
  %passive121 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips120, i32 0, i32 2, !dbg !4157
  %temperature122 = getelementptr inbounds %struct.acpi_thermal_passive, %struct.acpi_thermal_passive* %passive121, i32 0, i32 1, !dbg !4158
  store i64 %54, i64* %temperature122, align 8, !dbg !4159
  %56 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !4160
  %trips123 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %56, i32 0, i32 8, !dbg !4161
  %passive124 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips123, i32 0, i32 2, !dbg !4162
  %flags125 = getelementptr inbounds %struct.acpi_thermal_passive, %struct.acpi_thermal_passive* %passive124, i32 0, i32 0, !dbg !4163
  %57 = bitcast %struct.acpi_thermal_state_flags* %flags125 to i8*, !dbg !4164
  %bf.load126 = load i8, i8* %57, align 8, !dbg !4165
  %bf.clear127 = and i8 %bf.load126, -2, !dbg !4165
  %bf.set128 = or i8 %bf.clear127, 1, !dbg !4165
  store i8 %bf.set128, i8* %57, align 8, !dbg !4165
  %58 = load i32, i32* %flag.addr, align 4, !dbg !4166
  %cmp129 = icmp eq i32 %58, 31, !dbg !4168
  br i1 %cmp129, label %if.then131, label %if.end174, !dbg !4169

if.then131:                                       ; preds = %if.else119
  %59 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !4170
  %device132 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %59, i32 0, i32 0, !dbg !4172
  %60 = load %struct.acpi_device*, %struct.acpi_device** %device132, align 8, !dbg !4172
  %handle133 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %60, i32 0, i32 1, !dbg !4173
  %61 = load i8*, i8** %handle133, align 8, !dbg !4173
  %call134 = call i32 @acpi_evaluate_integer(i8* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), %struct.acpi_object_list* null, i64* %tmp) #9, !dbg !4174
  store i32 %call134, i32* %status, align 4, !dbg !4175
  %62 = load i32, i32* %status, align 4, !dbg !4176
  %tobool135 = icmp ne i32 %62, 0, !dbg !4176
  br i1 %tobool135, label %if.then136, label %if.else142, !dbg !4178

if.then136:                                       ; preds = %if.then131
  %63 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !4179
  %trips137 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %63, i32 0, i32 8, !dbg !4180
  %passive138 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips137, i32 0, i32 2, !dbg !4181
  %flags139 = getelementptr inbounds %struct.acpi_thermal_passive, %struct.acpi_thermal_passive* %passive138, i32 0, i32 0, !dbg !4182
  %64 = bitcast %struct.acpi_thermal_state_flags* %flags139 to i8*, !dbg !4183
  %bf.load140 = load i8, i8* %64, align 8, !dbg !4184
  %bf.clear141 = and i8 %bf.load140, -2, !dbg !4184
  store i8 %bf.clear141, i8* %64, align 8, !dbg !4184
  br label %if.end145, !dbg !4179

if.else142:                                       ; preds = %if.then131
  %65 = load i64, i64* %tmp, align 8, !dbg !4185
  %66 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !4186
  %trips143 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %66, i32 0, i32 8, !dbg !4187
  %passive144 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips143, i32 0, i32 2, !dbg !4188
  %tc1 = getelementptr inbounds %struct.acpi_thermal_passive, %struct.acpi_thermal_passive* %passive144, i32 0, i32 2, !dbg !4189
  store i64 %65, i64* %tc1, align 8, !dbg !4190
  br label %if.end145

if.end145:                                        ; preds = %if.else142, %if.then136
  %67 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !4191
  %device146 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %67, i32 0, i32 0, !dbg !4192
  %68 = load %struct.acpi_device*, %struct.acpi_device** %device146, align 8, !dbg !4192
  %handle147 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %68, i32 0, i32 1, !dbg !4193
  %69 = load i8*, i8** %handle147, align 8, !dbg !4193
  %call148 = call i32 @acpi_evaluate_integer(i8* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), %struct.acpi_object_list* null, i64* %tmp) #9, !dbg !4194
  store i32 %call148, i32* %status, align 4, !dbg !4195
  %70 = load i32, i32* %status, align 4, !dbg !4196
  %tobool149 = icmp ne i32 %70, 0, !dbg !4196
  br i1 %tobool149, label %if.then150, label %if.else156, !dbg !4198

if.then150:                                       ; preds = %if.end145
  %71 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !4199
  %trips151 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %71, i32 0, i32 8, !dbg !4200
  %passive152 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips151, i32 0, i32 2, !dbg !4201
  %flags153 = getelementptr inbounds %struct.acpi_thermal_passive, %struct.acpi_thermal_passive* %passive152, i32 0, i32 0, !dbg !4202
  %72 = bitcast %struct.acpi_thermal_state_flags* %flags153 to i8*, !dbg !4203
  %bf.load154 = load i8, i8* %72, align 8, !dbg !4204
  %bf.clear155 = and i8 %bf.load154, -2, !dbg !4204
  store i8 %bf.clear155, i8* %72, align 8, !dbg !4204
  br label %if.end159, !dbg !4199

if.else156:                                       ; preds = %if.end145
  %73 = load i64, i64* %tmp, align 8, !dbg !4205
  %74 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !4206
  %trips157 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %74, i32 0, i32 8, !dbg !4207
  %passive158 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips157, i32 0, i32 2, !dbg !4208
  %tc2 = getelementptr inbounds %struct.acpi_thermal_passive, %struct.acpi_thermal_passive* %passive158, i32 0, i32 3, !dbg !4209
  store i64 %73, i64* %tc2, align 8, !dbg !4210
  br label %if.end159

if.end159:                                        ; preds = %if.else156, %if.then150
  %75 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !4211
  %device160 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %75, i32 0, i32 0, !dbg !4212
  %76 = load %struct.acpi_device*, %struct.acpi_device** %device160, align 8, !dbg !4212
  %handle161 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %76, i32 0, i32 1, !dbg !4213
  %77 = load i8*, i8** %handle161, align 8, !dbg !4213
  %call162 = call i32 @acpi_evaluate_integer(i8* %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), %struct.acpi_object_list* null, i64* %tmp) #9, !dbg !4214
  store i32 %call162, i32* %status, align 4, !dbg !4215
  %78 = load i32, i32* %status, align 4, !dbg !4216
  %tobool163 = icmp ne i32 %78, 0, !dbg !4216
  br i1 %tobool163, label %if.then164, label %if.else170, !dbg !4218

if.then164:                                       ; preds = %if.end159
  %79 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !4219
  %trips165 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %79, i32 0, i32 8, !dbg !4220
  %passive166 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips165, i32 0, i32 2, !dbg !4221
  %flags167 = getelementptr inbounds %struct.acpi_thermal_passive, %struct.acpi_thermal_passive* %passive166, i32 0, i32 0, !dbg !4222
  %80 = bitcast %struct.acpi_thermal_state_flags* %flags167 to i8*, !dbg !4223
  %bf.load168 = load i8, i8* %80, align 8, !dbg !4224
  %bf.clear169 = and i8 %bf.load168, -2, !dbg !4224
  store i8 %bf.clear169, i8* %80, align 8, !dbg !4224
  br label %if.end173, !dbg !4219

if.else170:                                       ; preds = %if.end159
  %81 = load i64, i64* %tmp, align 8, !dbg !4225
  %82 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !4226
  %trips171 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %82, i32 0, i32 8, !dbg !4227
  %passive172 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips171, i32 0, i32 2, !dbg !4228
  %tsp = getelementptr inbounds %struct.acpi_thermal_passive, %struct.acpi_thermal_passive* %passive172, i32 0, i32 4, !dbg !4229
  store i64 %81, i64* %tsp, align 8, !dbg !4230
  br label %if.end173

if.end173:                                        ; preds = %if.else170, %if.then164
  br label %if.end174, !dbg !4231

if.end174:                                        ; preds = %if.end173, %if.else119
  br label %if.end175

if.end175:                                        ; preds = %if.end174, %if.then113
  br label %if.end176, !dbg !4232

if.end176:                                        ; preds = %if.end175, %lor.lhs.false
  %83 = load i32, i32* %flag.addr, align 4, !dbg !4233
  %and177 = and i32 %83, 16, !dbg !4235
  %tobool178 = icmp ne i32 %and177, 0, !dbg !4235
  br i1 %tobool178, label %land.lhs.true179, label %if.end221, !dbg !4236

land.lhs.true179:                                 ; preds = %if.end176
  %84 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !4237
  %trips180 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %84, i32 0, i32 8, !dbg !4238
  %passive181 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips180, i32 0, i32 2, !dbg !4239
  %flags182 = getelementptr inbounds %struct.acpi_thermal_passive, %struct.acpi_thermal_passive* %passive181, i32 0, i32 0, !dbg !4240
  %85 = bitcast %struct.acpi_thermal_state_flags* %flags182 to i8*, !dbg !4241
  %bf.load183 = load i8, i8* %85, align 8, !dbg !4241
  %bf.clear184 = and i8 %bf.load183, 1, !dbg !4241
  %conv185 = zext i8 %bf.clear184 to i32, !dbg !4237
  %tobool186 = icmp ne i32 %conv185, 0, !dbg !4237
  br i1 %tobool186, label %if.then187, label %if.end221, !dbg !4242

if.then187:                                       ; preds = %land.lhs.true179
  %86 = bitcast %struct.acpi_handle_list* %devices to i8*, !dbg !4243
  call void @llvm.memset.p0i8.i64(i8* align 8 %86, i8 0, i64 88, i1 false), !dbg !4243
  %87 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !4245
  %device188 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %87, i32 0, i32 0, !dbg !4246
  %88 = load %struct.acpi_device*, %struct.acpi_device** %device188, align 8, !dbg !4246
  %handle189 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %88, i32 0, i32 1, !dbg !4247
  %89 = load i8*, i8** %handle189, align 8, !dbg !4247
  %call190 = call i32 @acpi_evaluate_reference(i8* %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), %struct.acpi_object_list* null, %struct.acpi_handle_list* %devices) #9, !dbg !4248
  store i32 %call190, i32* %status, align 4, !dbg !4249
  %90 = load i32, i32* %status, align 4, !dbg !4250
  %tobool191 = icmp ne i32 %90, 0, !dbg !4250
  br i1 %tobool191, label %if.then192, label %if.else199, !dbg !4252

if.then192:                                       ; preds = %if.then187
  %call193 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0)) #10, !dbg !4253
  %91 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !4255
  %trips194 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %91, i32 0, i32 8, !dbg !4256
  %passive195 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips194, i32 0, i32 2, !dbg !4257
  %flags196 = getelementptr inbounds %struct.acpi_thermal_passive, %struct.acpi_thermal_passive* %passive195, i32 0, i32 0, !dbg !4258
  %92 = bitcast %struct.acpi_thermal_state_flags* %flags196 to i8*, !dbg !4259
  %bf.load197 = load i8, i8* %92, align 8, !dbg !4260
  %bf.clear198 = and i8 %bf.load197, -2, !dbg !4260
  store i8 %bf.clear198, i8* %92, align 8, !dbg !4260
  br label %if.end206, !dbg !4261

if.else199:                                       ; preds = %if.then187
  %93 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !4262
  %trips200 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %93, i32 0, i32 8, !dbg !4263
  %passive201 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips200, i32 0, i32 2, !dbg !4264
  %flags202 = getelementptr inbounds %struct.acpi_thermal_passive, %struct.acpi_thermal_passive* %passive201, i32 0, i32 0, !dbg !4265
  %94 = bitcast %struct.acpi_thermal_state_flags* %flags202 to i8*, !dbg !4266
  %bf.load203 = load i8, i8* %94, align 8, !dbg !4267
  %bf.clear204 = and i8 %bf.load203, -2, !dbg !4267
  %bf.set205 = or i8 %bf.clear204, 1, !dbg !4267
  store i8 %bf.set205, i8* %94, align 8, !dbg !4267
  br label %if.end206

if.end206:                                        ; preds = %if.else199, %if.then192
  %95 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !4268
  %trips207 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %95, i32 0, i32 8, !dbg !4270
  %passive208 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips207, i32 0, i32 2, !dbg !4271
  %devices209 = getelementptr inbounds %struct.acpi_thermal_passive, %struct.acpi_thermal_passive* %passive208, i32 0, i32 5, !dbg !4272
  %96 = bitcast %struct.acpi_handle_list* %devices209 to i8*, !dbg !4273
  %97 = bitcast %struct.acpi_handle_list* %devices to i8*, !dbg !4274
  %call210 = call i32 @memcmp(i8* %96, i8* %97, i64 88) #9, !dbg !4275
  %tobool211 = icmp ne i32 %call210, 0, !dbg !4275
  br i1 %tobool211, label %if.then212, label %if.end220, !dbg !4276

if.then212:                                       ; preds = %if.end206
  %98 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !4277
  %trips213 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %98, i32 0, i32 8, !dbg !4279
  %passive214 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips213, i32 0, i32 2, !dbg !4280
  %devices215 = getelementptr inbounds %struct.acpi_thermal_passive, %struct.acpi_thermal_passive* %passive214, i32 0, i32 5, !dbg !4281
  %99 = bitcast %struct.acpi_handle_list* %devices215 to i8*, !dbg !4282
  %100 = bitcast %struct.acpi_handle_list* %devices to i8*, !dbg !4282
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %99, i8* align 8 %100, i64 88, i1 false), !dbg !4282
  br label %do.body, !dbg !4283

do.body:                                          ; preds = %if.then212
  %101 = load i32, i32* %flag.addr, align 4, !dbg !4284
  %cmp216 = icmp ne i32 %101, 31, !dbg !4284
  br i1 %cmp216, label %if.then218, label %if.end219, !dbg !4287

if.then218:                                       ; preds = %do.body
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 389, i32 1, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0)) #9, !dbg !4284
  br label %if.end219, !dbg !4284

if.end219:                                        ; preds = %if.then218, %do.body
  br label %do.end, !dbg !4287

do.end:                                           ; preds = %if.end219
  br label %if.end220, !dbg !4288

if.end220:                                        ; preds = %do.end, %if.end206
  br label %if.end221, !dbg !4289

if.end221:                                        ; preds = %if.end220, %land.lhs.true179, %if.end176
  %102 = load i32, i32* %flag.addr, align 4, !dbg !4290
  %and222 = and i32 %102, 4, !dbg !4292
  %tobool223 = icmp ne i32 %and222, 0, !dbg !4292
  br i1 %tobool223, label %if.then227, label %lor.lhs.false224, !dbg !4293

lor.lhs.false224:                                 ; preds = %if.end221
  %103 = load i32, i32* %flag.addr, align 4, !dbg !4294
  %and225 = and i32 %103, 16, !dbg !4295
  %tobool226 = icmp ne i32 %and225, 0, !dbg !4295
  br i1 %tobool226, label %if.then227, label %if.end244, !dbg !4296

if.then227:                                       ; preds = %lor.lhs.false224, %if.end221
  %104 = load i32, i32* %valid, align 4, !dbg !4297
  %105 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !4300
  %trips228 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %105, i32 0, i32 8, !dbg !4301
  %passive229 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips228, i32 0, i32 2, !dbg !4302
  %flags230 = getelementptr inbounds %struct.acpi_thermal_passive, %struct.acpi_thermal_passive* %passive229, i32 0, i32 0, !dbg !4303
  %106 = bitcast %struct.acpi_thermal_state_flags* %flags230 to i8*, !dbg !4304
  %bf.load231 = load i8, i8* %106, align 8, !dbg !4304
  %bf.clear232 = and i8 %bf.load231, 1, !dbg !4304
  %conv233 = zext i8 %bf.clear232 to i32, !dbg !4300
  %cmp234 = icmp ne i32 %104, %conv233, !dbg !4305
  br i1 %cmp234, label %if.then236, label %if.end243, !dbg !4306

if.then236:                                       ; preds = %if.then227
  br label %do.body237, !dbg !4307

do.body237:                                       ; preds = %if.then236
  %107 = load i32, i32* %flag.addr, align 4, !dbg !4308
  %cmp238 = icmp ne i32 %107, 31, !dbg !4308
  br i1 %cmp238, label %if.then240, label %if.end241, !dbg !4311

if.then240:                                       ; preds = %do.body237
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 394, i32 1, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0)) #9, !dbg !4308
  br label %if.end241, !dbg !4308

if.end241:                                        ; preds = %if.then240, %do.body237
  br label %do.end242, !dbg !4311

do.end242:                                        ; preds = %if.end241
  br label %if.end243, !dbg !4311

if.end243:                                        ; preds = %do.end242, %if.then227
  br label %if.end244, !dbg !4312

if.end244:                                        ; preds = %if.end243, %lor.lhs.false224
  store i32 0, i32* %i, align 4, !dbg !4313
  br label %for.cond, !dbg !4315

for.cond:                                         ; preds = %for.inc, %if.end244
  %108 = load i32, i32* %i, align 4, !dbg !4316
  %cmp245 = icmp slt i32 %108, 10, !dbg !4318
  br i1 %cmp245, label %for.body, label %for.end, !dbg !4319

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata [5 x i8]* %name, metadata !4320, metadata !DIExpression()), !dbg !4322
  %arrayinit.begin = getelementptr inbounds [5 x i8], [5 x i8]* %name, i64 0, i64 0, !dbg !4323
  store i8 95, i8* %arrayinit.begin, align 1, !dbg !4323
  %arrayinit.element = getelementptr inbounds i8, i8* %arrayinit.begin, i64 1, !dbg !4323
  store i8 65, i8* %arrayinit.element, align 1, !dbg !4323
  %arrayinit.element247 = getelementptr inbounds i8, i8* %arrayinit.element, i64 1, !dbg !4323
  store i8 67, i8* %arrayinit.element247, align 1, !dbg !4323
  %arrayinit.element248 = getelementptr inbounds i8, i8* %arrayinit.element247, i64 1, !dbg !4323
  %109 = load i32, i32* %i, align 4, !dbg !4324
  %add = add i32 48, %109, !dbg !4325
  %conv249 = trunc i32 %add to i8, !dbg !4326
  store i8 %conv249, i8* %arrayinit.element248, align 1, !dbg !4323
  %arrayinit.element250 = getelementptr inbounds i8, i8* %arrayinit.element248, i64 1, !dbg !4323
  store i8 0, i8* %arrayinit.element250, align 1, !dbg !4323
  %110 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !4327
  %trips251 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %110, i32 0, i32 8, !dbg !4328
  %active = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips251, i32 0, i32 3, !dbg !4329
  %111 = load i32, i32* %i, align 4, !dbg !4330
  %idxprom = sext i32 %111 to i64, !dbg !4327
  %arrayidx = getelementptr [10 x %struct.acpi_thermal_active], [10 x %struct.acpi_thermal_active]* %active, i64 0, i64 %idxprom, !dbg !4327
  %flags252 = getelementptr inbounds %struct.acpi_thermal_active, %struct.acpi_thermal_active* %arrayidx, i32 0, i32 0, !dbg !4331
  %112 = bitcast %struct.acpi_thermal_state_flags* %flags252 to i8*, !dbg !4332
  %bf.load253 = load i8, i8* %112, align 8, !dbg !4332
  %bf.clear254 = and i8 %bf.load253, 1, !dbg !4332
  %conv255 = zext i8 %bf.clear254 to i32, !dbg !4327
  store i32 %conv255, i32* %valid, align 4, !dbg !4333
  %113 = load i32, i32* @act, align 4, !dbg !4334
  %cmp256 = icmp eq i32 %113, -1, !dbg !4336
  br i1 %cmp256, label %if.then258, label %if.end259, !dbg !4337

if.then258:                                       ; preds = %for.body
  br label %for.end, !dbg !4338

if.end259:                                        ; preds = %for.body
  %114 = load i32, i32* %flag.addr, align 4, !dbg !4339
  %cmp260 = icmp eq i32 %114, 31, !dbg !4341
  br i1 %cmp260, label %if.then275, label %lor.lhs.false262, !dbg !4342

lor.lhs.false262:                                 ; preds = %if.end259
  %115 = load i32, i32* %flag.addr, align 4, !dbg !4343
  %and263 = and i32 %115, 8, !dbg !4344
  %tobool264 = icmp ne i32 %and263, 0, !dbg !4344
  br i1 %tobool264, label %land.lhs.true265, label %if.end345, !dbg !4345

land.lhs.true265:                                 ; preds = %lor.lhs.false262
  %116 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !4346
  %trips266 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %116, i32 0, i32 8, !dbg !4347
  %active267 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips266, i32 0, i32 3, !dbg !4348
  %117 = load i32, i32* %i, align 4, !dbg !4349
  %idxprom268 = sext i32 %117 to i64, !dbg !4346
  %arrayidx269 = getelementptr [10 x %struct.acpi_thermal_active], [10 x %struct.acpi_thermal_active]* %active267, i64 0, i64 %idxprom268, !dbg !4346
  %flags270 = getelementptr inbounds %struct.acpi_thermal_active, %struct.acpi_thermal_active* %arrayidx269, i32 0, i32 0, !dbg !4350
  %118 = bitcast %struct.acpi_thermal_state_flags* %flags270 to i8*, !dbg !4351
  %bf.load271 = load i8, i8* %118, align 8, !dbg !4351
  %bf.clear272 = and i8 %bf.load271, 1, !dbg !4351
  %conv273 = zext i8 %bf.clear272 to i32, !dbg !4346
  %tobool274 = icmp ne i32 %conv273, 0, !dbg !4346
  br i1 %tobool274, label %if.then275, label %if.end345, !dbg !4352

if.then275:                                       ; preds = %land.lhs.true265, %if.end259
  %119 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !4353
  %device276 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %119, i32 0, i32 0, !dbg !4355
  %120 = load %struct.acpi_device*, %struct.acpi_device** %device276, align 8, !dbg !4355
  %handle277 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %120, i32 0, i32 1, !dbg !4356
  %121 = load i8*, i8** %handle277, align 8, !dbg !4356
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %name, i64 0, i64 0, !dbg !4357
  %call278 = call i32 @acpi_evaluate_integer(i8* %121, i8* %arraydecay, %struct.acpi_object_list* null, i64* %tmp) #9, !dbg !4358
  store i32 %call278, i32* %status, align 4, !dbg !4359
  %122 = load i32, i32* %status, align 4, !dbg !4360
  %tobool279 = icmp ne i32 %122, 0, !dbg !4360
  br i1 %tobool279, label %if.then280, label %if.else330, !dbg !4362

if.then280:                                       ; preds = %if.then275
  %123 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !4363
  %trips281 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %123, i32 0, i32 8, !dbg !4365
  %active282 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips281, i32 0, i32 3, !dbg !4366
  %124 = load i32, i32* %i, align 4, !dbg !4367
  %idxprom283 = sext i32 %124 to i64, !dbg !4363
  %arrayidx284 = getelementptr [10 x %struct.acpi_thermal_active], [10 x %struct.acpi_thermal_active]* %active282, i64 0, i64 %idxprom283, !dbg !4363
  %flags285 = getelementptr inbounds %struct.acpi_thermal_active, %struct.acpi_thermal_active* %arrayidx284, i32 0, i32 0, !dbg !4368
  %125 = bitcast %struct.acpi_thermal_state_flags* %flags285 to i8*, !dbg !4369
  %bf.load286 = load i8, i8* %125, align 8, !dbg !4370
  %bf.clear287 = and i8 %bf.load286, -2, !dbg !4370
  store i8 %bf.clear287, i8* %125, align 8, !dbg !4370
  %126 = load i32, i32* %i, align 4, !dbg !4371
  %cmp288 = icmp eq i32 %126, 0, !dbg !4373
  br i1 %cmp288, label %if.then290, label %if.end291, !dbg !4374

if.then290:                                       ; preds = %if.then280
  br label %for.end, !dbg !4375

if.end291:                                        ; preds = %if.then280
  %127 = load i32, i32* @act, align 4, !dbg !4376
  %cmp292 = icmp sle i32 %127, 0, !dbg !4378
  br i1 %cmp292, label %if.then294, label %if.end295, !dbg !4379

if.then294:                                       ; preds = %if.end291
  br label %for.end, !dbg !4380

if.end295:                                        ; preds = %if.end291
  %128 = load i32, i32* %i, align 4, !dbg !4381
  %cmp296 = icmp eq i32 %128, 1, !dbg !4383
  br i1 %cmp296, label %if.then298, label %if.else305, !dbg !4384

if.then298:                                       ; preds = %if.end295
  %129 = load i32, i32* @act, align 4, !dbg !4385
  %conv299 = sext i32 %129 to i64, !dbg !4385
  %call300 = call i64 @celsius_to_deci_kelvin(i64 %conv299) #9, !dbg !4386
  %130 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !4387
  %trips301 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %130, i32 0, i32 8, !dbg !4388
  %active302 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips301, i32 0, i32 3, !dbg !4389
  %arrayidx303 = getelementptr [10 x %struct.acpi_thermal_active], [10 x %struct.acpi_thermal_active]* %active302, i64 0, i64 0, !dbg !4387
  %temperature304 = getelementptr inbounds %struct.acpi_thermal_active, %struct.acpi_thermal_active* %arrayidx303, i32 0, i32 1, !dbg !4390
  store i64 %call300, i64* %temperature304, align 8, !dbg !4391
  br label %if.end329, !dbg !4387

if.else305:                                       ; preds = %if.end295
  %131 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !4392
  %trips306 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %131, i32 0, i32 8, !dbg !4393
  %active307 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips306, i32 0, i32 3, !dbg !4394
  %132 = load i32, i32* %i, align 4, !dbg !4395
  %sub = sub i32 %132, 2, !dbg !4396
  %idxprom308 = sext i32 %sub to i64, !dbg !4392
  %arrayidx309 = getelementptr [10 x %struct.acpi_thermal_active], [10 x %struct.acpi_thermal_active]* %active307, i64 0, i64 %idxprom308, !dbg !4392
  %temperature310 = getelementptr inbounds %struct.acpi_thermal_active, %struct.acpi_thermal_active* %arrayidx309, i32 0, i32 1, !dbg !4397
  %133 = load i64, i64* %temperature310, align 8, !dbg !4397
  %134 = load i32, i32* @act, align 4, !dbg !4398
  %conv311 = sext i32 %134 to i64, !dbg !4398
  %call312 = call i64 @celsius_to_deci_kelvin(i64 %conv311) #9, !dbg !4399
  %cmp313 = icmp ult i64 %133, %call312, !dbg !4400
  br i1 %cmp313, label %cond.true, label %cond.false, !dbg !4392

cond.true:                                        ; preds = %if.else305
  %135 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !4401
  %trips315 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %135, i32 0, i32 8, !dbg !4402
  %active316 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips315, i32 0, i32 3, !dbg !4403
  %136 = load i32, i32* %i, align 4, !dbg !4404
  %sub317 = sub i32 %136, 2, !dbg !4405
  %idxprom318 = sext i32 %sub317 to i64, !dbg !4401
  %arrayidx319 = getelementptr [10 x %struct.acpi_thermal_active], [10 x %struct.acpi_thermal_active]* %active316, i64 0, i64 %idxprom318, !dbg !4401
  %temperature320 = getelementptr inbounds %struct.acpi_thermal_active, %struct.acpi_thermal_active* %arrayidx319, i32 0, i32 1, !dbg !4406
  %137 = load i64, i64* %temperature320, align 8, !dbg !4406
  br label %cond.end, !dbg !4392

cond.false:                                       ; preds = %if.else305
  %138 = load i32, i32* @act, align 4, !dbg !4407
  %conv321 = sext i32 %138 to i64, !dbg !4407
  %call322 = call i64 @celsius_to_deci_kelvin(i64 %conv321) #9, !dbg !4408
  br label %cond.end, !dbg !4392

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %137, %cond.true ], [ %call322, %cond.false ], !dbg !4392
  %139 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !4409
  %trips323 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %139, i32 0, i32 8, !dbg !4410
  %active324 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips323, i32 0, i32 3, !dbg !4411
  %140 = load i32, i32* %i, align 4, !dbg !4412
  %sub325 = sub i32 %140, 1, !dbg !4413
  %idxprom326 = sext i32 %sub325 to i64, !dbg !4409
  %arrayidx327 = getelementptr [10 x %struct.acpi_thermal_active], [10 x %struct.acpi_thermal_active]* %active324, i64 0, i64 %idxprom326, !dbg !4409
  %temperature328 = getelementptr inbounds %struct.acpi_thermal_active, %struct.acpi_thermal_active* %arrayidx327, i32 0, i32 1, !dbg !4414
  store i64 %cond, i64* %temperature328, align 8, !dbg !4415
  br label %if.end329

if.end329:                                        ; preds = %cond.end, %if.then298
  br label %for.end, !dbg !4416

if.else330:                                       ; preds = %if.then275
  %141 = load i64, i64* %tmp, align 8, !dbg !4417
  %142 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !4419
  %trips331 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %142, i32 0, i32 8, !dbg !4420
  %active332 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips331, i32 0, i32 3, !dbg !4421
  %143 = load i32, i32* %i, align 4, !dbg !4422
  %idxprom333 = sext i32 %143 to i64, !dbg !4419
  %arrayidx334 = getelementptr [10 x %struct.acpi_thermal_active], [10 x %struct.acpi_thermal_active]* %active332, i64 0, i64 %idxprom333, !dbg !4419
  %temperature335 = getelementptr inbounds %struct.acpi_thermal_active, %struct.acpi_thermal_active* %arrayidx334, i32 0, i32 1, !dbg !4423
  store i64 %141, i64* %temperature335, align 8, !dbg !4424
  %144 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !4425
  %trips336 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %144, i32 0, i32 8, !dbg !4426
  %active337 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips336, i32 0, i32 3, !dbg !4427
  %145 = load i32, i32* %i, align 4, !dbg !4428
  %idxprom338 = sext i32 %145 to i64, !dbg !4425
  %arrayidx339 = getelementptr [10 x %struct.acpi_thermal_active], [10 x %struct.acpi_thermal_active]* %active337, i64 0, i64 %idxprom338, !dbg !4425
  %flags340 = getelementptr inbounds %struct.acpi_thermal_active, %struct.acpi_thermal_active* %arrayidx339, i32 0, i32 0, !dbg !4429
  %146 = bitcast %struct.acpi_thermal_state_flags* %flags340 to i8*, !dbg !4430
  %bf.load341 = load i8, i8* %146, align 8, !dbg !4431
  %bf.clear342 = and i8 %bf.load341, -2, !dbg !4431
  %bf.set343 = or i8 %bf.clear342, 1, !dbg !4431
  store i8 %bf.set343, i8* %146, align 8, !dbg !4431
  br label %if.end344

if.end344:                                        ; preds = %if.else330
  br label %if.end345, !dbg !4432

if.end345:                                        ; preds = %if.end344, %land.lhs.true265, %lor.lhs.false262
  %arrayidx346 = getelementptr [5 x i8], [5 x i8]* %name, i64 0, i64 2, !dbg !4433
  store i8 76, i8* %arrayidx346, align 1, !dbg !4434
  %147 = load i32, i32* %flag.addr, align 4, !dbg !4435
  %and347 = and i32 %147, 16, !dbg !4437
  %tobool348 = icmp ne i32 %and347, 0, !dbg !4437
  br i1 %tobool348, label %land.lhs.true349, label %if.end404, !dbg !4438

land.lhs.true349:                                 ; preds = %if.end345
  %148 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !4439
  %trips350 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %148, i32 0, i32 8, !dbg !4440
  %active351 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips350, i32 0, i32 3, !dbg !4441
  %149 = load i32, i32* %i, align 4, !dbg !4442
  %idxprom352 = sext i32 %149 to i64, !dbg !4439
  %arrayidx353 = getelementptr [10 x %struct.acpi_thermal_active], [10 x %struct.acpi_thermal_active]* %active351, i64 0, i64 %idxprom352, !dbg !4439
  %flags354 = getelementptr inbounds %struct.acpi_thermal_active, %struct.acpi_thermal_active* %arrayidx353, i32 0, i32 0, !dbg !4443
  %150 = bitcast %struct.acpi_thermal_state_flags* %flags354 to i8*, !dbg !4444
  %bf.load355 = load i8, i8* %150, align 8, !dbg !4444
  %bf.clear356 = and i8 %bf.load355, 1, !dbg !4444
  %conv357 = zext i8 %bf.clear356 to i32, !dbg !4439
  %tobool358 = icmp ne i32 %conv357, 0, !dbg !4439
  br i1 %tobool358, label %if.then359, label %if.end404, !dbg !4445

if.then359:                                       ; preds = %land.lhs.true349
  %151 = bitcast %struct.acpi_handle_list* %devices to i8*, !dbg !4446
  call void @llvm.memset.p0i8.i64(i8* align 8 %151, i8 0, i64 88, i1 false), !dbg !4446
  %152 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !4448
  %device360 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %152, i32 0, i32 0, !dbg !4449
  %153 = load %struct.acpi_device*, %struct.acpi_device** %device360, align 8, !dbg !4449
  %handle361 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %153, i32 0, i32 1, !dbg !4450
  %154 = load i8*, i8** %handle361, align 8, !dbg !4450
  %arraydecay362 = getelementptr inbounds [5 x i8], [5 x i8]* %name, i64 0, i64 0, !dbg !4451
  %call363 = call i32 @acpi_evaluate_reference(i8* %154, i8* %arraydecay362, %struct.acpi_object_list* null, %struct.acpi_handle_list* %devices) #9, !dbg !4452
  store i32 %call363, i32* %status, align 4, !dbg !4453
  %155 = load i32, i32* %status, align 4, !dbg !4454
  %tobool364 = icmp ne i32 %155, 0, !dbg !4454
  br i1 %tobool364, label %if.then365, label %if.else374, !dbg !4456

if.then365:                                       ; preds = %if.then359
  %156 = load i32, i32* %i, align 4, !dbg !4457
  %call366 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i64 0, i64 0), i32 %156) #10, !dbg !4457
  %157 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !4459
  %trips367 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %157, i32 0, i32 8, !dbg !4460
  %active368 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips367, i32 0, i32 3, !dbg !4461
  %158 = load i32, i32* %i, align 4, !dbg !4462
  %idxprom369 = sext i32 %158 to i64, !dbg !4459
  %arrayidx370 = getelementptr [10 x %struct.acpi_thermal_active], [10 x %struct.acpi_thermal_active]* %active368, i64 0, i64 %idxprom369, !dbg !4459
  %flags371 = getelementptr inbounds %struct.acpi_thermal_active, %struct.acpi_thermal_active* %arrayidx370, i32 0, i32 0, !dbg !4463
  %159 = bitcast %struct.acpi_thermal_state_flags* %flags371 to i8*, !dbg !4464
  %bf.load372 = load i8, i8* %159, align 8, !dbg !4465
  %bf.clear373 = and i8 %bf.load372, -2, !dbg !4465
  store i8 %bf.clear373, i8* %159, align 8, !dbg !4465
  br label %if.end383, !dbg !4466

if.else374:                                       ; preds = %if.then359
  %160 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !4467
  %trips375 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %160, i32 0, i32 8, !dbg !4468
  %active376 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips375, i32 0, i32 3, !dbg !4469
  %161 = load i32, i32* %i, align 4, !dbg !4470
  %idxprom377 = sext i32 %161 to i64, !dbg !4467
  %arrayidx378 = getelementptr [10 x %struct.acpi_thermal_active], [10 x %struct.acpi_thermal_active]* %active376, i64 0, i64 %idxprom377, !dbg !4467
  %flags379 = getelementptr inbounds %struct.acpi_thermal_active, %struct.acpi_thermal_active* %arrayidx378, i32 0, i32 0, !dbg !4471
  %162 = bitcast %struct.acpi_thermal_state_flags* %flags379 to i8*, !dbg !4472
  %bf.load380 = load i8, i8* %162, align 8, !dbg !4473
  %bf.clear381 = and i8 %bf.load380, -2, !dbg !4473
  %bf.set382 = or i8 %bf.clear381, 1, !dbg !4473
  store i8 %bf.set382, i8* %162, align 8, !dbg !4473
  br label %if.end383

if.end383:                                        ; preds = %if.else374, %if.then365
  %163 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !4474
  %trips384 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %163, i32 0, i32 8, !dbg !4476
  %active385 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips384, i32 0, i32 3, !dbg !4477
  %164 = load i32, i32* %i, align 4, !dbg !4478
  %idxprom386 = sext i32 %164 to i64, !dbg !4474
  %arrayidx387 = getelementptr [10 x %struct.acpi_thermal_active], [10 x %struct.acpi_thermal_active]* %active385, i64 0, i64 %idxprom386, !dbg !4474
  %devices388 = getelementptr inbounds %struct.acpi_thermal_active, %struct.acpi_thermal_active* %arrayidx387, i32 0, i32 2, !dbg !4479
  %165 = bitcast %struct.acpi_handle_list* %devices388 to i8*, !dbg !4480
  %166 = bitcast %struct.acpi_handle_list* %devices to i8*, !dbg !4481
  %call389 = call i32 @memcmp(i8* %165, i8* %166, i64 88) #9, !dbg !4482
  %tobool390 = icmp ne i32 %call389, 0, !dbg !4482
  br i1 %tobool390, label %if.then391, label %if.end403, !dbg !4483

if.then391:                                       ; preds = %if.end383
  %167 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !4484
  %trips392 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %167, i32 0, i32 8, !dbg !4486
  %active393 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips392, i32 0, i32 3, !dbg !4487
  %168 = load i32, i32* %i, align 4, !dbg !4488
  %idxprom394 = sext i32 %168 to i64, !dbg !4484
  %arrayidx395 = getelementptr [10 x %struct.acpi_thermal_active], [10 x %struct.acpi_thermal_active]* %active393, i64 0, i64 %idxprom394, !dbg !4484
  %devices396 = getelementptr inbounds %struct.acpi_thermal_active, %struct.acpi_thermal_active* %arrayidx395, i32 0, i32 2, !dbg !4489
  %169 = bitcast %struct.acpi_handle_list* %devices396 to i8*, !dbg !4490
  %170 = bitcast %struct.acpi_handle_list* %devices to i8*, !dbg !4490
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %169, i8* align 8 %170, i64 88, i1 false), !dbg !4490
  br label %do.body397, !dbg !4491

do.body397:                                       ; preds = %if.then391
  %171 = load i32, i32* %flag.addr, align 4, !dbg !4492
  %cmp398 = icmp ne i32 %171, 31, !dbg !4492
  br i1 %cmp398, label %if.then400, label %if.end401, !dbg !4495

if.then400:                                       ; preds = %do.body397
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 452, i32 1, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0)) #9, !dbg !4492
  br label %if.end401, !dbg !4492

if.end401:                                        ; preds = %if.then400, %do.body397
  br label %do.end402, !dbg !4495

do.end402:                                        ; preds = %if.end401
  br label %if.end403, !dbg !4496

if.end403:                                        ; preds = %do.end402, %if.end383
  br label %if.end404, !dbg !4497

if.end404:                                        ; preds = %if.end403, %land.lhs.true349, %if.end345
  %172 = load i32, i32* %flag.addr, align 4, !dbg !4498
  %and405 = and i32 %172, 8, !dbg !4500
  %tobool406 = icmp ne i32 %and405, 0, !dbg !4500
  br i1 %tobool406, label %if.then410, label %lor.lhs.false407, !dbg !4501

lor.lhs.false407:                                 ; preds = %if.end404
  %173 = load i32, i32* %flag.addr, align 4, !dbg !4502
  %and408 = and i32 %173, 16, !dbg !4503
  %tobool409 = icmp ne i32 %and408, 0, !dbg !4503
  br i1 %tobool409, label %if.then410, label %if.end429, !dbg !4504

if.then410:                                       ; preds = %lor.lhs.false407, %if.end404
  %174 = load i32, i32* %valid, align 4, !dbg !4505
  %175 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !4507
  %trips411 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %175, i32 0, i32 8, !dbg !4508
  %active412 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips411, i32 0, i32 3, !dbg !4509
  %176 = load i32, i32* %i, align 4, !dbg !4510
  %idxprom413 = sext i32 %176 to i64, !dbg !4507
  %arrayidx414 = getelementptr [10 x %struct.acpi_thermal_active], [10 x %struct.acpi_thermal_active]* %active412, i64 0, i64 %idxprom413, !dbg !4507
  %flags415 = getelementptr inbounds %struct.acpi_thermal_active, %struct.acpi_thermal_active* %arrayidx414, i32 0, i32 0, !dbg !4511
  %177 = bitcast %struct.acpi_thermal_state_flags* %flags415 to i8*, !dbg !4512
  %bf.load416 = load i8, i8* %177, align 8, !dbg !4512
  %bf.clear417 = and i8 %bf.load416, 1, !dbg !4512
  %conv418 = zext i8 %bf.clear417 to i32, !dbg !4507
  %cmp419 = icmp ne i32 %174, %conv418, !dbg !4513
  br i1 %cmp419, label %if.then421, label %if.end428, !dbg !4514

if.then421:                                       ; preds = %if.then410
  br label %do.body422, !dbg !4515

do.body422:                                       ; preds = %if.then421
  %178 = load i32, i32* %flag.addr, align 4, !dbg !4516
  %cmp423 = icmp ne i32 %178, 31, !dbg !4516
  br i1 %cmp423, label %if.then425, label %if.end426, !dbg !4519

if.then425:                                       ; preds = %do.body422
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 457, i32 1, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0)) #9, !dbg !4516
  br label %if.end426, !dbg !4516

if.end426:                                        ; preds = %if.then425, %do.body422
  br label %do.end427, !dbg !4519

do.end427:                                        ; preds = %if.end426
  br label %if.end428, !dbg !4519

if.end428:                                        ; preds = %do.end427, %if.then410
  br label %if.end429, !dbg !4512

if.end429:                                        ; preds = %if.end428, %lor.lhs.false407
  %179 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !4520
  %trips430 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %179, i32 0, i32 8, !dbg !4522
  %active431 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips430, i32 0, i32 3, !dbg !4523
  %180 = load i32, i32* %i, align 4, !dbg !4524
  %idxprom432 = sext i32 %180 to i64, !dbg !4520
  %arrayidx433 = getelementptr [10 x %struct.acpi_thermal_active], [10 x %struct.acpi_thermal_active]* %active431, i64 0, i64 %idxprom432, !dbg !4520
  %flags434 = getelementptr inbounds %struct.acpi_thermal_active, %struct.acpi_thermal_active* %arrayidx433, i32 0, i32 0, !dbg !4525
  %181 = bitcast %struct.acpi_thermal_state_flags* %flags434 to i8*, !dbg !4526
  %bf.load435 = load i8, i8* %181, align 8, !dbg !4526
  %bf.clear436 = and i8 %bf.load435, 1, !dbg !4526
  %tobool437 = icmp ne i8 %bf.clear436, 0, !dbg !4520
  br i1 %tobool437, label %if.end439, label %if.then438, !dbg !4527

if.then438:                                       ; preds = %if.end429
  br label %for.end, !dbg !4528

if.end439:                                        ; preds = %if.end429
  br label %for.inc, !dbg !4529

for.inc:                                          ; preds = %if.end439
  %182 = load i32, i32* %i, align 4, !dbg !4530
  %inc = add i32 %182, 1, !dbg !4530
  store i32 %inc, i32* %i, align 4, !dbg !4530
  br label %for.cond, !dbg !4531, !llvm.loop !4532

for.end:                                          ; preds = %if.then438, %if.end329, %if.then294, %if.then290, %if.then258, %for.cond
  %183 = load i32, i32* %flag.addr, align 4, !dbg !4534
  %and440 = and i32 %183, 16, !dbg !4536
  %tobool441 = icmp ne i32 %and440, 0, !dbg !4536
  br i1 %tobool441, label %if.then442, label %if.end460, !dbg !4537

if.then442:                                       ; preds = %for.end
  %184 = bitcast %struct.acpi_handle_list* %devices to i8*, !dbg !4538
  call void @llvm.memset.p0i8.i64(i8* align 8 %184, i8 0, i64 88, i1 false), !dbg !4538
  %185 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !4540
  %device443 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %185, i32 0, i32 0, !dbg !4541
  %186 = load %struct.acpi_device*, %struct.acpi_device** %device443, align 8, !dbg !4541
  %handle444 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %186, i32 0, i32 1, !dbg !4542
  %187 = load i8*, i8** %handle444, align 8, !dbg !4542
  %call445 = call i32 @acpi_evaluate_reference(i8* %187, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), %struct.acpi_object_list* null, %struct.acpi_handle_list* %devices) #9, !dbg !4543
  store i32 %call445, i32* %status, align 4, !dbg !4544
  %188 = load i32, i32* %status, align 4, !dbg !4545
  %tobool446 = icmp ne i32 %188, 0, !dbg !4545
  br i1 %tobool446, label %if.end459, label %land.lhs.true447, !dbg !4547

land.lhs.true447:                                 ; preds = %if.then442
  %189 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !4548
  %devices448 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %189, i32 0, i32 9, !dbg !4549
  %190 = bitcast %struct.acpi_handle_list* %devices448 to i8*, !dbg !4550
  %191 = bitcast %struct.acpi_handle_list* %devices to i8*, !dbg !4551
  %call449 = call i32 @memcmp(i8* %190, i8* %191, i64 88) #9, !dbg !4552
  %tobool450 = icmp ne i32 %call449, 0, !dbg !4552
  br i1 %tobool450, label %if.then451, label %if.end459, !dbg !4553

if.then451:                                       ; preds = %land.lhs.true447
  %192 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !4554
  %devices452 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %192, i32 0, i32 9, !dbg !4556
  %193 = bitcast %struct.acpi_handle_list* %devices452 to i8*, !dbg !4557
  %194 = bitcast %struct.acpi_handle_list* %devices to i8*, !dbg !4557
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %193, i8* align 8 %194, i64 88, i1 false), !dbg !4557
  br label %do.body453, !dbg !4558

do.body453:                                       ; preds = %if.then451
  %195 = load i32, i32* %flag.addr, align 4, !dbg !4559
  %cmp454 = icmp ne i32 %195, 31, !dbg !4559
  br i1 %cmp454, label %if.then456, label %if.end457, !dbg !4562

if.then456:                                       ; preds = %do.body453
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 470, i32 1, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0)) #9, !dbg !4559
  br label %if.end457, !dbg !4559

if.end457:                                        ; preds = %if.then456, %do.body453
  br label %do.end458, !dbg !4562

do.end458:                                        ; preds = %if.end457
  br label %if.end459, !dbg !4563

if.end459:                                        ; preds = %do.end458, %land.lhs.true447, %if.then442
  br label %if.end460, !dbg !4564

if.end460:                                        ; preds = %if.end459, %for.end
  ret i32 0, !dbg !4565
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @celsius_to_deci_kelvin(i64 %t) #2 !dbg !4566 {
entry:
  %t.addr = alloca i64, align 8
  %__x = alloca i64, align 8
  %__d = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i64 %t, i64* %t.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %t.addr, metadata !4567, metadata !DIExpression()), !dbg !4568
  %0 = load i64, i64* %t.addr, align 8, !dbg !4569
  %mul = mul i64 %0, 1000, !dbg !4570
  %call = call i64 @millicelsius_to_milli_kelvin(i64 %mul) #9, !dbg !4571
  store i64 %call, i64* %t.addr, align 8, !dbg !4572
  call void @llvm.dbg.declare(metadata i64* %__x, metadata !4573, metadata !DIExpression()), !dbg !4575
  %1 = load i64, i64* %t.addr, align 8, !dbg !4575
  store i64 %1, i64* %__x, align 8, !dbg !4575
  call void @llvm.dbg.declare(metadata i32* %__d, metadata !4576, metadata !DIExpression()), !dbg !4575
  store i32 100, i32* %__d, align 4, !dbg !4575
  %2 = load i64, i64* %__x, align 8, !dbg !4575
  %cmp = icmp sgt i64 %2, 0, !dbg !4575
  %conv = zext i1 %cmp to i32, !dbg !4575
  %3 = load i32, i32* %__d, align 4, !dbg !4575
  %cmp1 = icmp sgt i32 %3, 0, !dbg !4575
  %conv2 = zext i1 %cmp1 to i32, !dbg !4575
  %cmp3 = icmp eq i32 %conv, %conv2, !dbg !4575
  br i1 %cmp3, label %cond.true, label %cond.false, !dbg !4575

cond.true:                                        ; preds = %entry
  %4 = load i64, i64* %__x, align 8, !dbg !4575
  %5 = load i32, i32* %__d, align 4, !dbg !4575
  %div = sdiv i32 %5, 2, !dbg !4575
  %conv5 = sext i32 %div to i64, !dbg !4575
  %add = add i64 %4, %conv5, !dbg !4575
  %6 = load i32, i32* %__d, align 4, !dbg !4575
  %conv6 = sext i32 %6 to i64, !dbg !4575
  %div7 = sdiv i64 %add, %conv6, !dbg !4575
  br label %cond.end, !dbg !4575

cond.false:                                       ; preds = %entry
  %7 = load i64, i64* %__x, align 8, !dbg !4575
  %8 = load i32, i32* %__d, align 4, !dbg !4575
  %div8 = sdiv i32 %8, 2, !dbg !4575
  %conv9 = sext i32 %div8 to i64, !dbg !4575
  %sub = sub i64 %7, %conv9, !dbg !4575
  %9 = load i32, i32* %__d, align 4, !dbg !4575
  %conv10 = sext i32 %9 to i64, !dbg !4575
  %div11 = sdiv i64 %sub, %conv10, !dbg !4575
  br label %cond.end, !dbg !4575

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %div7, %cond.true ], [ %div11, %cond.false ], !dbg !4575
  store i64 %cond, i64* %tmp, align 8, !dbg !4575
  %10 = load i64, i64* %tmp, align 8, !dbg !4575
  ret i64 %10, !dbg !4577
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noredzone
declare dso_local i32 @acpi_evaluate_reference(i8*, i8*, %struct.acpi_object_list*, %struct.acpi_handle_list*) #1

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) #1

; Function Attrs: noredzone
declare dso_local void @acpi_exception(i8*, i32, i32, i8*, ...) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @millicelsius_to_milli_kelvin(i64 %t) #2 !dbg !4578 {
entry:
  %t.addr = alloca i64, align 8
  store i64 %t, i64* %t.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %t.addr, metadata !4579, metadata !DIExpression()), !dbg !4580
  %0 = load i64, i64* %t.addr, align 8, !dbg !4581
  %sub = sub i64 %0, -273150, !dbg !4582
  ret i64 %sub, !dbg !4583
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_execute_simple_method(i8*, i8*, i64) #1

; Function Attrs: noredzone
declare dso_local %struct.thermal_zone_device* @thermal_zone_device_register(i8*, i32, i32, i8*, %struct.thermal_zone_device_ops*, %struct.thermal_zone_params*, i32, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #2 !dbg !4584 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4588, metadata !DIExpression()), !dbg !4589
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4590
  %1 = ptrtoint i8* %0 to i64, !dbg !4590
  %2 = inttoptr i64 %1 to i8*, !dbg !4590
  %3 = ptrtoint i8* %2 to i64, !dbg !4590
  %cmp = icmp uge i64 %3, -4095, !dbg !4590
  %lnot = xor i1 %cmp, true, !dbg !4590
  %lnot1 = xor i1 %lnot, true, !dbg !4590
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4590
  %conv = sext i32 %lnot.ext to i64, !dbg !4590
  %tobool = icmp ne i64 %conv, 0, !dbg !4590
  ret i1 %tobool, !dbg !4591
}

; Function Attrs: noredzone
declare dso_local i32 @sysfs_create_link(%struct.kobject*, %struct.kobject*, i8*) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_bus_attach_private_data(i8*, i8*) #1

; Function Attrs: noredzone
declare dso_local i32 @thermal_zone_device_enable(%struct.thermal_zone_device*) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #5

; Function Attrs: noredzone
declare dso_local void @acpi_bus_detach_private_data(i8*) #1

; Function Attrs: noredzone
declare dso_local void @sysfs_remove_link(%struct.kobject*, i8*) #1

; Function Attrs: noredzone
declare dso_local void @thermal_zone_device_unregister(%struct.thermal_zone_device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_thermal_bind_cooling_device(%struct.thermal_zone_device* %thermal, %struct.thermal_cooling_device* %cdev) #2 !dbg !4592 {
entry:
  %thermal.addr = alloca %struct.thermal_zone_device*, align 8
  %cdev.addr = alloca %struct.thermal_cooling_device*, align 8
  store %struct.thermal_zone_device* %thermal, %struct.thermal_zone_device** %thermal.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %thermal.addr, metadata !4593, metadata !DIExpression()), !dbg !4594
  store %struct.thermal_cooling_device* %cdev, %struct.thermal_cooling_device** %cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_cooling_device** %cdev.addr, metadata !4595, metadata !DIExpression()), !dbg !4596
  %0 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %thermal.addr, align 8, !dbg !4597
  %1 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %cdev.addr, align 8, !dbg !4598
  %call = call i32 @acpi_thermal_cooling_device_cb(%struct.thermal_zone_device* %0, %struct.thermal_cooling_device* %1, i1 zeroext true) #9, !dbg !4599
  ret i32 %call, !dbg !4600
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_thermal_unbind_cooling_device(%struct.thermal_zone_device* %thermal, %struct.thermal_cooling_device* %cdev) #2 !dbg !4601 {
entry:
  %thermal.addr = alloca %struct.thermal_zone_device*, align 8
  %cdev.addr = alloca %struct.thermal_cooling_device*, align 8
  store %struct.thermal_zone_device* %thermal, %struct.thermal_zone_device** %thermal.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %thermal.addr, metadata !4602, metadata !DIExpression()), !dbg !4603
  store %struct.thermal_cooling_device* %cdev, %struct.thermal_cooling_device** %cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_cooling_device** %cdev.addr, metadata !4604, metadata !DIExpression()), !dbg !4605
  %0 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %thermal.addr, align 8, !dbg !4606
  %1 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %cdev.addr, align 8, !dbg !4607
  %call = call i32 @acpi_thermal_cooling_device_cb(%struct.thermal_zone_device* %0, %struct.thermal_cooling_device* %1, i1 zeroext false) #9, !dbg !4608
  ret i32 %call, !dbg !4609
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @thermal_get_temp(%struct.thermal_zone_device* %thermal, i32* %temp) #2 !dbg !4610 {
entry:
  %retval = alloca i32, align 4
  %thermal.addr = alloca %struct.thermal_zone_device*, align 8
  %temp.addr = alloca i32*, align 8
  %tz = alloca %struct.acpi_thermal*, align 8
  %result = alloca i32, align 4
  store %struct.thermal_zone_device* %thermal, %struct.thermal_zone_device** %thermal.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %thermal.addr, metadata !4611, metadata !DIExpression()), !dbg !4612
  store i32* %temp, i32** %temp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %temp.addr, metadata !4613, metadata !DIExpression()), !dbg !4614
  call void @llvm.dbg.declare(metadata %struct.acpi_thermal** %tz, metadata !4615, metadata !DIExpression()), !dbg !4616
  %0 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %thermal.addr, align 8, !dbg !4617
  %devdata = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %0, i32 0, i32 8, !dbg !4618
  %1 = load i8*, i8** %devdata, align 8, !dbg !4618
  %2 = bitcast i8* %1 to %struct.acpi_thermal*, !dbg !4617
  store %struct.acpi_thermal* %2, %struct.acpi_thermal** %tz, align 8, !dbg !4616
  call void @llvm.dbg.declare(metadata i32* %result, metadata !4619, metadata !DIExpression()), !dbg !4620
  %3 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !4621
  %tobool = icmp ne %struct.acpi_thermal* %3, null, !dbg !4621
  br i1 %tobool, label %if.end, label %if.then, !dbg !4623

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4624
  br label %return, !dbg !4624

if.end:                                           ; preds = %entry
  %4 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !4625
  %call = call i32 @acpi_thermal_get_temperature(%struct.acpi_thermal* %4) #9, !dbg !4626
  store i32 %call, i32* %result, align 4, !dbg !4627
  %5 = load i32, i32* %result, align 4, !dbg !4628
  %tobool1 = icmp ne i32 %5, 0, !dbg !4628
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !4630

if.then2:                                         ; preds = %if.end
  %6 = load i32, i32* %result, align 4, !dbg !4631
  store i32 %6, i32* %retval, align 4, !dbg !4632
  br label %return, !dbg !4632

if.end3:                                          ; preds = %if.end
  %7 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !4633
  %temperature = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %7, i32 0, i32 2, !dbg !4634
  %8 = load i64, i64* %temperature, align 8, !dbg !4634
  %9 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !4635
  %kelvin_offset = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %9, i32 0, i32 11, !dbg !4636
  %10 = load i32, i32* %kelvin_offset, align 8, !dbg !4636
  %conv = sext i32 %10 to i64, !dbg !4635
  %call4 = call i64 @deci_kelvin_to_millicelsius_with_offset(i64 %8, i64 %conv) #9, !dbg !4637
  %conv5 = trunc i64 %call4 to i32, !dbg !4637
  %11 = load i32*, i32** %temp.addr, align 8, !dbg !4638
  store i32 %conv5, i32* %11, align 4, !dbg !4639
  store i32 0, i32* %retval, align 4, !dbg !4640
  br label %return, !dbg !4640

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !4641
  ret i32 %12, !dbg !4641
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @thermal_get_trip_type(%struct.thermal_zone_device* %thermal, i32 %trip, i32* %type) #2 !dbg !4642 {
entry:
  %retval = alloca i32, align 4
  %thermal.addr = alloca %struct.thermal_zone_device*, align 8
  %trip.addr = alloca i32, align 4
  %type.addr = alloca i32*, align 8
  %tz = alloca %struct.acpi_thermal*, align 8
  %i = alloca i32, align 4
  store %struct.thermal_zone_device* %thermal, %struct.thermal_zone_device** %thermal.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %thermal.addr, metadata !4643, metadata !DIExpression()), !dbg !4644
  store i32 %trip, i32* %trip.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %trip.addr, metadata !4645, metadata !DIExpression()), !dbg !4646
  store i32* %type, i32** %type.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %type.addr, metadata !4647, metadata !DIExpression()), !dbg !4648
  call void @llvm.dbg.declare(metadata %struct.acpi_thermal** %tz, metadata !4649, metadata !DIExpression()), !dbg !4650
  %0 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %thermal.addr, align 8, !dbg !4651
  %devdata = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %0, i32 0, i32 8, !dbg !4652
  %1 = load i8*, i8** %devdata, align 8, !dbg !4652
  %2 = bitcast i8* %1 to %struct.acpi_thermal*, !dbg !4651
  store %struct.acpi_thermal* %2, %struct.acpi_thermal** %tz, align 8, !dbg !4650
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4653, metadata !DIExpression()), !dbg !4654
  %3 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !4655
  %tobool = icmp ne %struct.acpi_thermal* %3, null, !dbg !4655
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4657

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %trip.addr, align 4, !dbg !4658
  %cmp = icmp slt i32 %4, 0, !dbg !4659
  br i1 %cmp, label %if.then, label %if.end, !dbg !4660

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !4661
  br label %return, !dbg !4661

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !4662
  %trips = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %5, i32 0, i32 8, !dbg !4664
  %critical = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips, i32 0, i32 0, !dbg !4665
  %flags = getelementptr inbounds %struct.acpi_thermal_critical, %struct.acpi_thermal_critical* %critical, i32 0, i32 0, !dbg !4666
  %6 = bitcast %struct.acpi_thermal_state_flags* %flags to i8*, !dbg !4667
  %bf.load = load i8, i8* %6, align 8, !dbg !4667
  %bf.clear = and i8 %bf.load, 1, !dbg !4667
  %tobool1 = icmp ne i8 %bf.clear, 0, !dbg !4662
  br i1 %tobool1, label %if.then2, label %if.end6, !dbg !4668

if.then2:                                         ; preds = %if.end
  %7 = load i32, i32* %trip.addr, align 4, !dbg !4669
  %tobool3 = icmp ne i32 %7, 0, !dbg !4669
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !4672

if.then4:                                         ; preds = %if.then2
  %8 = load i32*, i32** %type.addr, align 8, !dbg !4673
  store i32 3, i32* %8, align 4, !dbg !4675
  store i32 0, i32* %retval, align 4, !dbg !4676
  br label %return, !dbg !4676

if.end5:                                          ; preds = %if.then2
  %9 = load i32, i32* %trip.addr, align 4, !dbg !4677
  %dec = add i32 %9, -1, !dbg !4677
  store i32 %dec, i32* %trip.addr, align 4, !dbg !4677
  br label %if.end6, !dbg !4678

if.end6:                                          ; preds = %if.end5, %if.end
  %10 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !4679
  %trips7 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %10, i32 0, i32 8, !dbg !4681
  %hot = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips7, i32 0, i32 1, !dbg !4682
  %flags8 = getelementptr inbounds %struct.acpi_thermal_hot, %struct.acpi_thermal_hot* %hot, i32 0, i32 0, !dbg !4683
  %11 = bitcast %struct.acpi_thermal_state_flags* %flags8 to i8*, !dbg !4684
  %bf.load9 = load i8, i8* %11, align 8, !dbg !4684
  %bf.clear10 = and i8 %bf.load9, 1, !dbg !4684
  %tobool11 = icmp ne i8 %bf.clear10, 0, !dbg !4679
  br i1 %tobool11, label %if.then12, label %if.end17, !dbg !4685

if.then12:                                        ; preds = %if.end6
  %12 = load i32, i32* %trip.addr, align 4, !dbg !4686
  %tobool13 = icmp ne i32 %12, 0, !dbg !4686
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !4689

if.then14:                                        ; preds = %if.then12
  %13 = load i32*, i32** %type.addr, align 8, !dbg !4690
  store i32 2, i32* %13, align 4, !dbg !4692
  store i32 0, i32* %retval, align 4, !dbg !4693
  br label %return, !dbg !4693

if.end15:                                         ; preds = %if.then12
  %14 = load i32, i32* %trip.addr, align 4, !dbg !4694
  %dec16 = add i32 %14, -1, !dbg !4694
  store i32 %dec16, i32* %trip.addr, align 4, !dbg !4694
  br label %if.end17, !dbg !4695

if.end17:                                         ; preds = %if.end15, %if.end6
  %15 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !4696
  %trips18 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %15, i32 0, i32 8, !dbg !4698
  %passive = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips18, i32 0, i32 2, !dbg !4699
  %flags19 = getelementptr inbounds %struct.acpi_thermal_passive, %struct.acpi_thermal_passive* %passive, i32 0, i32 0, !dbg !4700
  %16 = bitcast %struct.acpi_thermal_state_flags* %flags19 to i8*, !dbg !4701
  %bf.load20 = load i8, i8* %16, align 8, !dbg !4701
  %bf.clear21 = and i8 %bf.load20, 1, !dbg !4701
  %tobool22 = icmp ne i8 %bf.clear21, 0, !dbg !4696
  br i1 %tobool22, label %if.then23, label %if.end28, !dbg !4702

if.then23:                                        ; preds = %if.end17
  %17 = load i32, i32* %trip.addr, align 4, !dbg !4703
  %tobool24 = icmp ne i32 %17, 0, !dbg !4703
  br i1 %tobool24, label %if.end26, label %if.then25, !dbg !4706

if.then25:                                        ; preds = %if.then23
  %18 = load i32*, i32** %type.addr, align 8, !dbg !4707
  store i32 1, i32* %18, align 4, !dbg !4709
  store i32 0, i32* %retval, align 4, !dbg !4710
  br label %return, !dbg !4710

if.end26:                                         ; preds = %if.then23
  %19 = load i32, i32* %trip.addr, align 4, !dbg !4711
  %dec27 = add i32 %19, -1, !dbg !4711
  store i32 %dec27, i32* %trip.addr, align 4, !dbg !4711
  br label %if.end28, !dbg !4712

if.end28:                                         ; preds = %if.end26, %if.end17
  store i32 0, i32* %i, align 4, !dbg !4713
  br label %for.cond, !dbg !4715

for.cond:                                         ; preds = %for.inc, %if.end28
  %20 = load i32, i32* %i, align 4, !dbg !4716
  %cmp29 = icmp slt i32 %20, 10, !dbg !4718
  br i1 %cmp29, label %land.rhs, label %land.end, !dbg !4719

land.rhs:                                         ; preds = %for.cond
  %21 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !4720
  %trips30 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %21, i32 0, i32 8, !dbg !4721
  %active = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips30, i32 0, i32 3, !dbg !4722
  %22 = load i32, i32* %i, align 4, !dbg !4723
  %idxprom = sext i32 %22 to i64, !dbg !4720
  %arrayidx = getelementptr [10 x %struct.acpi_thermal_active], [10 x %struct.acpi_thermal_active]* %active, i64 0, i64 %idxprom, !dbg !4720
  %flags31 = getelementptr inbounds %struct.acpi_thermal_active, %struct.acpi_thermal_active* %arrayidx, i32 0, i32 0, !dbg !4724
  %23 = bitcast %struct.acpi_thermal_state_flags* %flags31 to i8*, !dbg !4725
  %bf.load32 = load i8, i8* %23, align 8, !dbg !4725
  %bf.clear33 = and i8 %bf.load32, 1, !dbg !4725
  %conv = zext i8 %bf.clear33 to i32, !dbg !4720
  %tobool34 = icmp ne i32 %conv, 0, !dbg !4719
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %24 = phi i1 [ false, %for.cond ], [ %tobool34, %land.rhs ], !dbg !4726
  br i1 %24, label %for.body, label %for.end, !dbg !4727

for.body:                                         ; preds = %land.end
  %25 = load i32, i32* %trip.addr, align 4, !dbg !4728
  %tobool35 = icmp ne i32 %25, 0, !dbg !4728
  br i1 %tobool35, label %if.end37, label %if.then36, !dbg !4731

if.then36:                                        ; preds = %for.body
  %26 = load i32*, i32** %type.addr, align 8, !dbg !4732
  store i32 0, i32* %26, align 4, !dbg !4734
  store i32 0, i32* %retval, align 4, !dbg !4735
  br label %return, !dbg !4735

if.end37:                                         ; preds = %for.body
  %27 = load i32, i32* %trip.addr, align 4, !dbg !4736
  %dec38 = add i32 %27, -1, !dbg !4736
  store i32 %dec38, i32* %trip.addr, align 4, !dbg !4736
  br label %for.inc, !dbg !4737

for.inc:                                          ; preds = %if.end37
  %28 = load i32, i32* %i, align 4, !dbg !4738
  %inc = add i32 %28, 1, !dbg !4738
  store i32 %inc, i32* %i, align 4, !dbg !4738
  br label %for.cond, !dbg !4739, !llvm.loop !4740

for.end:                                          ; preds = %land.end
  store i32 -22, i32* %retval, align 4, !dbg !4742
  br label %return, !dbg !4742

return:                                           ; preds = %for.end, %if.then36, %if.then25, %if.then14, %if.then4, %if.then
  %29 = load i32, i32* %retval, align 4, !dbg !4743
  ret i32 %29, !dbg !4743
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @thermal_get_trip_temp(%struct.thermal_zone_device* %thermal, i32 %trip, i32* %temp) #2 !dbg !4744 {
entry:
  %retval = alloca i32, align 4
  %thermal.addr = alloca %struct.thermal_zone_device*, align 8
  %trip.addr = alloca i32, align 4
  %temp.addr = alloca i32*, align 8
  %tz = alloca %struct.acpi_thermal*, align 8
  %i = alloca i32, align 4
  store %struct.thermal_zone_device* %thermal, %struct.thermal_zone_device** %thermal.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %thermal.addr, metadata !4745, metadata !DIExpression()), !dbg !4746
  store i32 %trip, i32* %trip.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %trip.addr, metadata !4747, metadata !DIExpression()), !dbg !4748
  store i32* %temp, i32** %temp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %temp.addr, metadata !4749, metadata !DIExpression()), !dbg !4750
  call void @llvm.dbg.declare(metadata %struct.acpi_thermal** %tz, metadata !4751, metadata !DIExpression()), !dbg !4752
  %0 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %thermal.addr, align 8, !dbg !4753
  %devdata = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %0, i32 0, i32 8, !dbg !4754
  %1 = load i8*, i8** %devdata, align 8, !dbg !4754
  %2 = bitcast i8* %1 to %struct.acpi_thermal*, !dbg !4753
  store %struct.acpi_thermal* %2, %struct.acpi_thermal** %tz, align 8, !dbg !4752
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4755, metadata !DIExpression()), !dbg !4756
  %3 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !4757
  %tobool = icmp ne %struct.acpi_thermal* %3, null, !dbg !4757
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4759

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %trip.addr, align 4, !dbg !4760
  %cmp = icmp slt i32 %4, 0, !dbg !4761
  br i1 %cmp, label %if.then, label %if.end, !dbg !4762

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !4763
  br label %return, !dbg !4763

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !4764
  %trips = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %5, i32 0, i32 8, !dbg !4766
  %critical = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips, i32 0, i32 0, !dbg !4767
  %flags = getelementptr inbounds %struct.acpi_thermal_critical, %struct.acpi_thermal_critical* %critical, i32 0, i32 0, !dbg !4768
  %6 = bitcast %struct.acpi_thermal_state_flags* %flags to i8*, !dbg !4769
  %bf.load = load i8, i8* %6, align 8, !dbg !4769
  %bf.clear = and i8 %bf.load, 1, !dbg !4769
  %tobool1 = icmp ne i8 %bf.clear, 0, !dbg !4764
  br i1 %tobool1, label %if.then2, label %if.end9, !dbg !4770

if.then2:                                         ; preds = %if.end
  %7 = load i32, i32* %trip.addr, align 4, !dbg !4771
  %tobool3 = icmp ne i32 %7, 0, !dbg !4771
  br i1 %tobool3, label %if.end8, label %if.then4, !dbg !4774

if.then4:                                         ; preds = %if.then2
  %8 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !4775
  %trips5 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %8, i32 0, i32 8, !dbg !4777
  %critical6 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips5, i32 0, i32 0, !dbg !4778
  %temperature = getelementptr inbounds %struct.acpi_thermal_critical, %struct.acpi_thermal_critical* %critical6, i32 0, i32 1, !dbg !4779
  %9 = load i64, i64* %temperature, align 8, !dbg !4779
  %10 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !4780
  %kelvin_offset = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %10, i32 0, i32 11, !dbg !4781
  %11 = load i32, i32* %kelvin_offset, align 8, !dbg !4781
  %conv = sext i32 %11 to i64, !dbg !4780
  %call = call i64 @deci_kelvin_to_millicelsius_with_offset(i64 %9, i64 %conv) #9, !dbg !4782
  %conv7 = trunc i64 %call to i32, !dbg !4782
  %12 = load i32*, i32** %temp.addr, align 8, !dbg !4783
  store i32 %conv7, i32* %12, align 4, !dbg !4784
  store i32 0, i32* %retval, align 4, !dbg !4785
  br label %return, !dbg !4785

if.end8:                                          ; preds = %if.then2
  %13 = load i32, i32* %trip.addr, align 4, !dbg !4786
  %dec = add i32 %13, -1, !dbg !4786
  store i32 %dec, i32* %trip.addr, align 4, !dbg !4786
  br label %if.end9, !dbg !4787

if.end9:                                          ; preds = %if.end8, %if.end
  %14 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !4788
  %trips10 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %14, i32 0, i32 8, !dbg !4790
  %hot = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips10, i32 0, i32 1, !dbg !4791
  %flags11 = getelementptr inbounds %struct.acpi_thermal_hot, %struct.acpi_thermal_hot* %hot, i32 0, i32 0, !dbg !4792
  %15 = bitcast %struct.acpi_thermal_state_flags* %flags11 to i8*, !dbg !4793
  %bf.load12 = load i8, i8* %15, align 8, !dbg !4793
  %bf.clear13 = and i8 %bf.load12, 1, !dbg !4793
  %tobool14 = icmp ne i8 %bf.clear13, 0, !dbg !4788
  br i1 %tobool14, label %if.then15, label %if.end27, !dbg !4794

if.then15:                                        ; preds = %if.end9
  %16 = load i32, i32* %trip.addr, align 4, !dbg !4795
  %tobool16 = icmp ne i32 %16, 0, !dbg !4795
  br i1 %tobool16, label %if.end25, label %if.then17, !dbg !4798

if.then17:                                        ; preds = %if.then15
  %17 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !4799
  %trips18 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %17, i32 0, i32 8, !dbg !4801
  %hot19 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips18, i32 0, i32 1, !dbg !4802
  %temperature20 = getelementptr inbounds %struct.acpi_thermal_hot, %struct.acpi_thermal_hot* %hot19, i32 0, i32 1, !dbg !4803
  %18 = load i64, i64* %temperature20, align 8, !dbg !4803
  %19 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !4804
  %kelvin_offset21 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %19, i32 0, i32 11, !dbg !4805
  %20 = load i32, i32* %kelvin_offset21, align 8, !dbg !4805
  %conv22 = sext i32 %20 to i64, !dbg !4804
  %call23 = call i64 @deci_kelvin_to_millicelsius_with_offset(i64 %18, i64 %conv22) #9, !dbg !4806
  %conv24 = trunc i64 %call23 to i32, !dbg !4806
  %21 = load i32*, i32** %temp.addr, align 8, !dbg !4807
  store i32 %conv24, i32* %21, align 4, !dbg !4808
  store i32 0, i32* %retval, align 4, !dbg !4809
  br label %return, !dbg !4809

if.end25:                                         ; preds = %if.then15
  %22 = load i32, i32* %trip.addr, align 4, !dbg !4810
  %dec26 = add i32 %22, -1, !dbg !4810
  store i32 %dec26, i32* %trip.addr, align 4, !dbg !4810
  br label %if.end27, !dbg !4811

if.end27:                                         ; preds = %if.end25, %if.end9
  %23 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !4812
  %trips28 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %23, i32 0, i32 8, !dbg !4814
  %passive = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips28, i32 0, i32 2, !dbg !4815
  %flags29 = getelementptr inbounds %struct.acpi_thermal_passive, %struct.acpi_thermal_passive* %passive, i32 0, i32 0, !dbg !4816
  %24 = bitcast %struct.acpi_thermal_state_flags* %flags29 to i8*, !dbg !4817
  %bf.load30 = load i8, i8* %24, align 8, !dbg !4817
  %bf.clear31 = and i8 %bf.load30, 1, !dbg !4817
  %tobool32 = icmp ne i8 %bf.clear31, 0, !dbg !4812
  br i1 %tobool32, label %if.then33, label %if.end45, !dbg !4818

if.then33:                                        ; preds = %if.end27
  %25 = load i32, i32* %trip.addr, align 4, !dbg !4819
  %tobool34 = icmp ne i32 %25, 0, !dbg !4819
  br i1 %tobool34, label %if.end43, label %if.then35, !dbg !4822

if.then35:                                        ; preds = %if.then33
  %26 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !4823
  %trips36 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %26, i32 0, i32 8, !dbg !4825
  %passive37 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips36, i32 0, i32 2, !dbg !4826
  %temperature38 = getelementptr inbounds %struct.acpi_thermal_passive, %struct.acpi_thermal_passive* %passive37, i32 0, i32 1, !dbg !4827
  %27 = load i64, i64* %temperature38, align 8, !dbg !4827
  %28 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !4828
  %kelvin_offset39 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %28, i32 0, i32 11, !dbg !4829
  %29 = load i32, i32* %kelvin_offset39, align 8, !dbg !4829
  %conv40 = sext i32 %29 to i64, !dbg !4828
  %call41 = call i64 @deci_kelvin_to_millicelsius_with_offset(i64 %27, i64 %conv40) #9, !dbg !4830
  %conv42 = trunc i64 %call41 to i32, !dbg !4830
  %30 = load i32*, i32** %temp.addr, align 8, !dbg !4831
  store i32 %conv42, i32* %30, align 4, !dbg !4832
  store i32 0, i32* %retval, align 4, !dbg !4833
  br label %return, !dbg !4833

if.end43:                                         ; preds = %if.then33
  %31 = load i32, i32* %trip.addr, align 4, !dbg !4834
  %dec44 = add i32 %31, -1, !dbg !4834
  store i32 %dec44, i32* %trip.addr, align 4, !dbg !4834
  br label %if.end45, !dbg !4835

if.end45:                                         ; preds = %if.end43, %if.end27
  store i32 0, i32* %i, align 4, !dbg !4836
  br label %for.cond, !dbg !4838

for.cond:                                         ; preds = %for.inc, %if.end45
  %32 = load i32, i32* %i, align 4, !dbg !4839
  %cmp46 = icmp slt i32 %32, 10, !dbg !4841
  br i1 %cmp46, label %land.rhs, label %land.end, !dbg !4842

land.rhs:                                         ; preds = %for.cond
  %33 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !4843
  %trips48 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %33, i32 0, i32 8, !dbg !4844
  %active = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips48, i32 0, i32 3, !dbg !4845
  %34 = load i32, i32* %i, align 4, !dbg !4846
  %idxprom = sext i32 %34 to i64, !dbg !4843
  %arrayidx = getelementptr [10 x %struct.acpi_thermal_active], [10 x %struct.acpi_thermal_active]* %active, i64 0, i64 %idxprom, !dbg !4843
  %flags49 = getelementptr inbounds %struct.acpi_thermal_active, %struct.acpi_thermal_active* %arrayidx, i32 0, i32 0, !dbg !4847
  %35 = bitcast %struct.acpi_thermal_state_flags* %flags49 to i8*, !dbg !4848
  %bf.load50 = load i8, i8* %35, align 8, !dbg !4848
  %bf.clear51 = and i8 %bf.load50, 1, !dbg !4848
  %conv52 = zext i8 %bf.clear51 to i32, !dbg !4843
  %tobool53 = icmp ne i32 %conv52, 0, !dbg !4842
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %36 = phi i1 [ false, %for.cond ], [ %tobool53, %land.rhs ], !dbg !4849
  br i1 %36, label %for.body, label %for.end, !dbg !4850

for.body:                                         ; preds = %land.end
  %37 = load i32, i32* %trip.addr, align 4, !dbg !4851
  %tobool54 = icmp ne i32 %37, 0, !dbg !4851
  br i1 %tobool54, label %if.end65, label %if.then55, !dbg !4854

if.then55:                                        ; preds = %for.body
  %38 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !4855
  %trips56 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %38, i32 0, i32 8, !dbg !4857
  %active57 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips56, i32 0, i32 3, !dbg !4858
  %39 = load i32, i32* %i, align 4, !dbg !4859
  %idxprom58 = sext i32 %39 to i64, !dbg !4855
  %arrayidx59 = getelementptr [10 x %struct.acpi_thermal_active], [10 x %struct.acpi_thermal_active]* %active57, i64 0, i64 %idxprom58, !dbg !4855
  %temperature60 = getelementptr inbounds %struct.acpi_thermal_active, %struct.acpi_thermal_active* %arrayidx59, i32 0, i32 1, !dbg !4860
  %40 = load i64, i64* %temperature60, align 8, !dbg !4860
  %41 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !4861
  %kelvin_offset61 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %41, i32 0, i32 11, !dbg !4862
  %42 = load i32, i32* %kelvin_offset61, align 8, !dbg !4862
  %conv62 = sext i32 %42 to i64, !dbg !4861
  %call63 = call i64 @deci_kelvin_to_millicelsius_with_offset(i64 %40, i64 %conv62) #9, !dbg !4863
  %conv64 = trunc i64 %call63 to i32, !dbg !4863
  %43 = load i32*, i32** %temp.addr, align 8, !dbg !4864
  store i32 %conv64, i32* %43, align 4, !dbg !4865
  store i32 0, i32* %retval, align 4, !dbg !4866
  br label %return, !dbg !4866

if.end65:                                         ; preds = %for.body
  %44 = load i32, i32* %trip.addr, align 4, !dbg !4867
  %dec66 = add i32 %44, -1, !dbg !4867
  store i32 %dec66, i32* %trip.addr, align 4, !dbg !4867
  br label %for.inc, !dbg !4868

for.inc:                                          ; preds = %if.end65
  %45 = load i32, i32* %i, align 4, !dbg !4869
  %inc = add i32 %45, 1, !dbg !4869
  store i32 %inc, i32* %i, align 4, !dbg !4869
  br label %for.cond, !dbg !4870, !llvm.loop !4871

for.end:                                          ; preds = %land.end
  store i32 -22, i32* %retval, align 4, !dbg !4873
  br label %return, !dbg !4873

return:                                           ; preds = %for.end, %if.then55, %if.then35, %if.then17, %if.then4, %if.then
  %46 = load i32, i32* %retval, align 4, !dbg !4874
  ret i32 %46, !dbg !4874
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @thermal_get_crit_temp(%struct.thermal_zone_device* %thermal, i32* %temperature) #2 !dbg !4875 {
entry:
  %retval = alloca i32, align 4
  %thermal.addr = alloca %struct.thermal_zone_device*, align 8
  %temperature.addr = alloca i32*, align 8
  %tz = alloca %struct.acpi_thermal*, align 8
  store %struct.thermal_zone_device* %thermal, %struct.thermal_zone_device** %thermal.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %thermal.addr, metadata !4876, metadata !DIExpression()), !dbg !4877
  store i32* %temperature, i32** %temperature.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %temperature.addr, metadata !4878, metadata !DIExpression()), !dbg !4879
  call void @llvm.dbg.declare(metadata %struct.acpi_thermal** %tz, metadata !4880, metadata !DIExpression()), !dbg !4881
  %0 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %thermal.addr, align 8, !dbg !4882
  %devdata = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %0, i32 0, i32 8, !dbg !4883
  %1 = load i8*, i8** %devdata, align 8, !dbg !4883
  %2 = bitcast i8* %1 to %struct.acpi_thermal*, !dbg !4882
  store %struct.acpi_thermal* %2, %struct.acpi_thermal** %tz, align 8, !dbg !4881
  %3 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !4884
  %trips = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %3, i32 0, i32 8, !dbg !4886
  %critical = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips, i32 0, i32 0, !dbg !4887
  %flags = getelementptr inbounds %struct.acpi_thermal_critical, %struct.acpi_thermal_critical* %critical, i32 0, i32 0, !dbg !4888
  %4 = bitcast %struct.acpi_thermal_state_flags* %flags to i8*, !dbg !4889
  %bf.load = load i8, i8* %4, align 8, !dbg !4889
  %bf.clear = and i8 %bf.load, 1, !dbg !4889
  %tobool = icmp ne i8 %bf.clear, 0, !dbg !4884
  br i1 %tobool, label %if.then, label %if.else, !dbg !4890

if.then:                                          ; preds = %entry
  %5 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !4891
  %trips1 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %5, i32 0, i32 8, !dbg !4893
  %critical2 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips1, i32 0, i32 0, !dbg !4894
  %temperature3 = getelementptr inbounds %struct.acpi_thermal_critical, %struct.acpi_thermal_critical* %critical2, i32 0, i32 1, !dbg !4895
  %6 = load i64, i64* %temperature3, align 8, !dbg !4895
  %7 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !4896
  %kelvin_offset = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %7, i32 0, i32 11, !dbg !4897
  %8 = load i32, i32* %kelvin_offset, align 8, !dbg !4897
  %conv = sext i32 %8 to i64, !dbg !4896
  %call = call i64 @deci_kelvin_to_millicelsius_with_offset(i64 %6, i64 %conv) #9, !dbg !4898
  %conv4 = trunc i64 %call to i32, !dbg !4898
  %9 = load i32*, i32** %temperature.addr, align 8, !dbg !4899
  store i32 %conv4, i32* %9, align 4, !dbg !4900
  store i32 0, i32* %retval, align 4, !dbg !4901
  br label %return, !dbg !4901

if.else:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4902
  br label %return, !dbg !4902

return:                                           ; preds = %if.else, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !4903
  ret i32 %10, !dbg !4903
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @thermal_get_trend(%struct.thermal_zone_device* %thermal, i32 %trip, i32* %trend) #2 !dbg !4904 {
entry:
  %retval = alloca i32, align 4
  %thermal.addr = alloca %struct.thermal_zone_device*, align 8
  %trip.addr = alloca i32, align 4
  %trend.addr = alloca i32*, align 8
  %tz = alloca %struct.acpi_thermal*, align 8
  %type = alloca i32, align 4
  %i = alloca i32, align 4
  %trip_temp = alloca i32, align 4
  %temp = alloca i32, align 4
  store %struct.thermal_zone_device* %thermal, %struct.thermal_zone_device** %thermal.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %thermal.addr, metadata !4905, metadata !DIExpression()), !dbg !4906
  store i32 %trip, i32* %trip.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %trip.addr, metadata !4907, metadata !DIExpression()), !dbg !4908
  store i32* %trend, i32** %trend.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %trend.addr, metadata !4909, metadata !DIExpression()), !dbg !4910
  call void @llvm.dbg.declare(metadata %struct.acpi_thermal** %tz, metadata !4911, metadata !DIExpression()), !dbg !4912
  %0 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %thermal.addr, align 8, !dbg !4913
  %devdata = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %0, i32 0, i32 8, !dbg !4914
  %1 = load i8*, i8** %devdata, align 8, !dbg !4914
  %2 = bitcast i8* %1 to %struct.acpi_thermal*, !dbg !4913
  store %struct.acpi_thermal* %2, %struct.acpi_thermal** %tz, align 8, !dbg !4912
  call void @llvm.dbg.declare(metadata i32* %type, metadata !4915, metadata !DIExpression()), !dbg !4916
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4917, metadata !DIExpression()), !dbg !4918
  %3 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %thermal.addr, align 8, !dbg !4919
  %4 = load i32, i32* %trip.addr, align 4, !dbg !4921
  %call = call i32 @thermal_get_trip_type(%struct.thermal_zone_device* %3, i32 %4, i32* %type) #9, !dbg !4922
  %tobool = icmp ne i32 %call, 0, !dbg !4922
  br i1 %tobool, label %if.then, label %if.end, !dbg !4923

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4924
  br label %return, !dbg !4924

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %type, align 4, !dbg !4925
  %cmp = icmp eq i32 %5, 0, !dbg !4927
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !4928

if.then1:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %trip_temp, metadata !4929, metadata !DIExpression()), !dbg !4931
  call void @llvm.dbg.declare(metadata i32* %temp, metadata !4932, metadata !DIExpression()), !dbg !4933
  %6 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !4934
  %temperature = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %6, i32 0, i32 2, !dbg !4935
  %7 = load i64, i64* %temperature, align 8, !dbg !4935
  %8 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !4936
  %kelvin_offset = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %8, i32 0, i32 11, !dbg !4937
  %9 = load i32, i32* %kelvin_offset, align 8, !dbg !4937
  %conv = sext i32 %9 to i64, !dbg !4936
  %call2 = call i64 @deci_kelvin_to_millicelsius_with_offset(i64 %7, i64 %conv) #9, !dbg !4938
  %conv3 = trunc i64 %call2 to i32, !dbg !4938
  store i32 %conv3, i32* %temp, align 4, !dbg !4933
  %10 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %thermal.addr, align 8, !dbg !4939
  %11 = load i32, i32* %trip.addr, align 4, !dbg !4941
  %call4 = call i32 @thermal_get_trip_temp(%struct.thermal_zone_device* %10, i32 %11, i32* %trip_temp) #9, !dbg !4942
  %tobool5 = icmp ne i32 %call4, 0, !dbg !4942
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !4943

if.then6:                                         ; preds = %if.then1
  store i32 -22, i32* %retval, align 4, !dbg !4944
  br label %return, !dbg !4944

if.end7:                                          ; preds = %if.then1
  %12 = load i32, i32* %temp, align 4, !dbg !4945
  %13 = load i32, i32* %trip_temp, align 4, !dbg !4947
  %cmp8 = icmp sgt i32 %12, %13, !dbg !4948
  br i1 %cmp8, label %if.then10, label %if.else, !dbg !4949

if.then10:                                        ; preds = %if.end7
  %14 = load i32*, i32** %trend.addr, align 8, !dbg !4950
  store i32 1, i32* %14, align 4, !dbg !4952
  store i32 0, i32* %retval, align 4, !dbg !4953
  br label %return, !dbg !4953

if.else:                                          ; preds = %if.end7
  store i32 -22, i32* %retval, align 4, !dbg !4954
  br label %return, !dbg !4954

if.end11:                                         ; preds = %if.end
  %15 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !4956
  %trips = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %15, i32 0, i32 8, !dbg !4957
  %passive = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips, i32 0, i32 2, !dbg !4958
  %tc1 = getelementptr inbounds %struct.acpi_thermal_passive, %struct.acpi_thermal_passive* %passive, i32 0, i32 2, !dbg !4959
  %16 = load i64, i64* %tc1, align 8, !dbg !4959
  %17 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !4960
  %temperature12 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %17, i32 0, i32 2, !dbg !4961
  %18 = load i64, i64* %temperature12, align 8, !dbg !4961
  %19 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !4962
  %last_temperature = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %19, i32 0, i32 3, !dbg !4963
  %20 = load i64, i64* %last_temperature, align 8, !dbg !4963
  %sub = sub i64 %18, %20, !dbg !4964
  %mul = mul i64 %16, %sub, !dbg !4965
  %21 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !4966
  %trips13 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %21, i32 0, i32 8, !dbg !4967
  %passive14 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips13, i32 0, i32 2, !dbg !4968
  %tc2 = getelementptr inbounds %struct.acpi_thermal_passive, %struct.acpi_thermal_passive* %passive14, i32 0, i32 3, !dbg !4969
  %22 = load i64, i64* %tc2, align 8, !dbg !4969
  %23 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !4970
  %temperature15 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %23, i32 0, i32 2, !dbg !4971
  %24 = load i64, i64* %temperature15, align 8, !dbg !4971
  %25 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !4972
  %trips16 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %25, i32 0, i32 8, !dbg !4973
  %passive17 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips16, i32 0, i32 2, !dbg !4974
  %temperature18 = getelementptr inbounds %struct.acpi_thermal_passive, %struct.acpi_thermal_passive* %passive17, i32 0, i32 1, !dbg !4975
  %26 = load i64, i64* %temperature18, align 8, !dbg !4975
  %sub19 = sub i64 %24, %26, !dbg !4976
  %mul20 = mul i64 %22, %sub19, !dbg !4977
  %add = add i64 %mul, %mul20, !dbg !4978
  %conv21 = trunc i64 %add to i32, !dbg !4979
  store i32 %conv21, i32* %i, align 4, !dbg !4980
  %27 = load i32, i32* %i, align 4, !dbg !4981
  %cmp22 = icmp sgt i32 %27, 0, !dbg !4983
  br i1 %cmp22, label %if.then24, label %if.else25, !dbg !4984

if.then24:                                        ; preds = %if.end11
  %28 = load i32*, i32** %trend.addr, align 8, !dbg !4985
  store i32 1, i32* %28, align 4, !dbg !4986
  br label %if.end31, !dbg !4987

if.else25:                                        ; preds = %if.end11
  %29 = load i32, i32* %i, align 4, !dbg !4988
  %cmp26 = icmp slt i32 %29, 0, !dbg !4990
  br i1 %cmp26, label %if.then28, label %if.else29, !dbg !4991

if.then28:                                        ; preds = %if.else25
  %30 = load i32*, i32** %trend.addr, align 8, !dbg !4992
  store i32 2, i32* %30, align 4, !dbg !4993
  br label %if.end30, !dbg !4994

if.else29:                                        ; preds = %if.else25
  %31 = load i32*, i32** %trend.addr, align 8, !dbg !4995
  store i32 0, i32* %31, align 4, !dbg !4996
  br label %if.end30

if.end30:                                         ; preds = %if.else29, %if.then28
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then24
  store i32 0, i32* %retval, align 4, !dbg !4997
  br label %return, !dbg !4997

return:                                           ; preds = %if.end31, %if.else, %if.then10, %if.then6, %if.then
  %32 = load i32, i32* %retval, align 4, !dbg !4998
  ret i32 %32, !dbg !4998
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @thermal_notify(%struct.thermal_zone_device* %thermal, i32 %trip, i32 %trip_type) #2 !dbg !4999 {
entry:
  %retval = alloca i32, align 4
  %thermal.addr = alloca %struct.thermal_zone_device*, align 8
  %trip.addr = alloca i32, align 4
  %trip_type.addr = alloca i32, align 4
  %type = alloca i8, align 1
  %tz = alloca %struct.acpi_thermal*, align 8
  store %struct.thermal_zone_device* %thermal, %struct.thermal_zone_device** %thermal.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %thermal.addr, metadata !5000, metadata !DIExpression()), !dbg !5001
  store i32 %trip, i32* %trip.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %trip.addr, metadata !5002, metadata !DIExpression()), !dbg !5003
  store i32 %trip_type, i32* %trip_type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %trip_type.addr, metadata !5004, metadata !DIExpression()), !dbg !5005
  call void @llvm.dbg.declare(metadata i8* %type, metadata !5006, metadata !DIExpression()), !dbg !5007
  store i8 0, i8* %type, align 1, !dbg !5007
  call void @llvm.dbg.declare(metadata %struct.acpi_thermal** %tz, metadata !5008, metadata !DIExpression()), !dbg !5009
  %0 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %thermal.addr, align 8, !dbg !5010
  %devdata = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %0, i32 0, i32 8, !dbg !5011
  %1 = load i8*, i8** %devdata, align 8, !dbg !5011
  %2 = bitcast i8* %1 to %struct.acpi_thermal*, !dbg !5010
  store %struct.acpi_thermal* %2, %struct.acpi_thermal** %tz, align 8, !dbg !5009
  %3 = load i32, i32* %trip_type.addr, align 4, !dbg !5012
  %cmp = icmp eq i32 %3, 3, !dbg !5014
  br i1 %cmp, label %if.then, label %if.else, !dbg !5015

if.then:                                          ; preds = %entry
  store i8 -16, i8* %type, align 1, !dbg !5016
  br label %if.end4, !dbg !5017

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %trip_type.addr, align 4, !dbg !5018
  %cmp1 = icmp eq i32 %4, 2, !dbg !5020
  br i1 %cmp1, label %if.then2, label %if.else3, !dbg !5021

if.then2:                                         ; preds = %if.else
  store i8 -15, i8* %type, align 1, !dbg !5022
  br label %if.end, !dbg !5023

if.else3:                                         ; preds = %if.else
  store i32 0, i32* %retval, align 4, !dbg !5024
  br label %return, !dbg !5024

if.end:                                           ; preds = %if.then2
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  %5 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !5025
  %device = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %5, i32 0, i32 0, !dbg !5026
  %6 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !5026
  %pnp = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %6, i32 0, i32 10, !dbg !5027
  %device_class = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp, i32 0, i32 6, !dbg !5028
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %device_class, i64 0, i64 0, !dbg !5025
  %7 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !5029
  %device5 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %7, i32 0, i32 0, !dbg !5030
  %8 = load %struct.acpi_device*, %struct.acpi_device** %device5, align 8, !dbg !5030
  %dev = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %8, i32 0, i32 21, !dbg !5031
  %call = call i8* @dev_name(%struct.device* %dev) #9, !dbg !5032
  %9 = load i8, i8* %type, align 1, !dbg !5033
  %call6 = call i32 @acpi_bus_generate_netlink_event(i8* %arraydecay, i8* %call, i8 zeroext %9, i32 1) #9, !dbg !5034
  %10 = load i32, i32* %trip_type.addr, align 4, !dbg !5035
  %cmp7 = icmp eq i32 %10, 3, !dbg !5037
  br i1 %cmp7, label %land.lhs.true, label %if.end9, !dbg !5038

land.lhs.true:                                    ; preds = %if.end4
  %11 = load i32, i32* @nocrt, align 4, !dbg !5039
  %tobool = icmp ne i32 %11, 0, !dbg !5039
  br i1 %tobool, label %if.then8, label %if.end9, !dbg !5040

if.then8:                                         ; preds = %land.lhs.true
  store i32 1, i32* %retval, align 4, !dbg !5041
  br label %return, !dbg !5041

if.end9:                                          ; preds = %land.lhs.true, %if.end4
  store i32 0, i32* %retval, align 4, !dbg !5042
  br label %return, !dbg !5042

return:                                           ; preds = %if.end9, %if.then8, %if.else3
  %12 = load i32, i32* %retval, align 4, !dbg !5043
  ret i32 %12, !dbg !5043
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_thermal_cooling_device_cb(%struct.thermal_zone_device* %thermal, %struct.thermal_cooling_device* %cdev, i1 zeroext %bind) #2 !dbg !5044 {
entry:
  %thermal.addr = alloca %struct.thermal_zone_device*, align 8
  %cdev.addr = alloca %struct.thermal_cooling_device*, align 8
  %bind.addr = alloca i8, align 1
  %device = alloca %struct.acpi_device*, align 8
  %tz = alloca %struct.acpi_thermal*, align 8
  %dev = alloca %struct.acpi_device*, align 8
  %status = alloca i32, align 4
  %handle = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %trip = alloca i32, align 4
  %result = alloca i32, align 4
  store %struct.thermal_zone_device* %thermal, %struct.thermal_zone_device** %thermal.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %thermal.addr, metadata !5047, metadata !DIExpression()), !dbg !5048
  store %struct.thermal_cooling_device* %cdev, %struct.thermal_cooling_device** %cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_cooling_device** %cdev.addr, metadata !5049, metadata !DIExpression()), !dbg !5050
  %frombool = zext i1 %bind to i8
  store i8 %frombool, i8* %bind.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %bind.addr, metadata !5051, metadata !DIExpression()), !dbg !5052
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device, metadata !5053, metadata !DIExpression()), !dbg !5054
  %0 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %cdev.addr, align 8, !dbg !5055
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %0, i32 0, i32 4, !dbg !5056
  %1 = load i8*, i8** %devdata, align 8, !dbg !5056
  %2 = bitcast i8* %1 to %struct.acpi_device*, !dbg !5055
  store %struct.acpi_device* %2, %struct.acpi_device** %device, align 8, !dbg !5054
  call void @llvm.dbg.declare(metadata %struct.acpi_thermal** %tz, metadata !5057, metadata !DIExpression()), !dbg !5058
  %3 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %thermal.addr, align 8, !dbg !5059
  %devdata1 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %3, i32 0, i32 8, !dbg !5060
  %4 = load i8*, i8** %devdata1, align 8, !dbg !5060
  %5 = bitcast i8* %4 to %struct.acpi_thermal*, !dbg !5059
  store %struct.acpi_thermal* %5, %struct.acpi_thermal** %tz, align 8, !dbg !5058
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %dev, metadata !5061, metadata !DIExpression()), !dbg !5062
  call void @llvm.dbg.declare(metadata i32* %status, metadata !5063, metadata !DIExpression()), !dbg !5064
  call void @llvm.dbg.declare(metadata i8** %handle, metadata !5065, metadata !DIExpression()), !dbg !5066
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5067, metadata !DIExpression()), !dbg !5068
  call void @llvm.dbg.declare(metadata i32* %j, metadata !5069, metadata !DIExpression()), !dbg !5070
  call void @llvm.dbg.declare(metadata i32* %trip, metadata !5071, metadata !DIExpression()), !dbg !5072
  store i32 -1, i32* %trip, align 4, !dbg !5072
  call void @llvm.dbg.declare(metadata i32* %result, metadata !5073, metadata !DIExpression()), !dbg !5074
  store i32 0, i32* %result, align 4, !dbg !5074
  %6 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !5075
  %trips = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %6, i32 0, i32 8, !dbg !5077
  %critical = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips, i32 0, i32 0, !dbg !5078
  %flags = getelementptr inbounds %struct.acpi_thermal_critical, %struct.acpi_thermal_critical* %critical, i32 0, i32 0, !dbg !5079
  %7 = bitcast %struct.acpi_thermal_state_flags* %flags to i8*, !dbg !5080
  %bf.load = load i8, i8* %7, align 8, !dbg !5080
  %bf.clear = and i8 %bf.load, 1, !dbg !5080
  %tobool = icmp ne i8 %bf.clear, 0, !dbg !5075
  br i1 %tobool, label %if.then, label %if.end, !dbg !5081

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %trip, align 4, !dbg !5082
  %inc = add i32 %8, 1, !dbg !5082
  store i32 %inc, i32* %trip, align 4, !dbg !5082
  br label %if.end, !dbg !5083

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !5084
  %trips2 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %9, i32 0, i32 8, !dbg !5086
  %hot = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips2, i32 0, i32 1, !dbg !5087
  %flags3 = getelementptr inbounds %struct.acpi_thermal_hot, %struct.acpi_thermal_hot* %hot, i32 0, i32 0, !dbg !5088
  %10 = bitcast %struct.acpi_thermal_state_flags* %flags3 to i8*, !dbg !5089
  %bf.load4 = load i8, i8* %10, align 8, !dbg !5089
  %bf.clear5 = and i8 %bf.load4, 1, !dbg !5089
  %tobool6 = icmp ne i8 %bf.clear5, 0, !dbg !5084
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !5090

if.then7:                                         ; preds = %if.end
  %11 = load i32, i32* %trip, align 4, !dbg !5091
  %inc8 = add i32 %11, 1, !dbg !5091
  store i32 %inc8, i32* %trip, align 4, !dbg !5091
  br label %if.end9, !dbg !5092

if.end9:                                          ; preds = %if.then7, %if.end
  %12 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !5093
  %trips10 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %12, i32 0, i32 8, !dbg !5095
  %passive = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips10, i32 0, i32 2, !dbg !5096
  %flags11 = getelementptr inbounds %struct.acpi_thermal_passive, %struct.acpi_thermal_passive* %passive, i32 0, i32 0, !dbg !5097
  %13 = bitcast %struct.acpi_thermal_state_flags* %flags11 to i8*, !dbg !5098
  %bf.load12 = load i8, i8* %13, align 8, !dbg !5098
  %bf.clear13 = and i8 %bf.load12, 1, !dbg !5098
  %tobool14 = icmp ne i8 %bf.clear13, 0, !dbg !5093
  br i1 %tobool14, label %if.then15, label %if.end35, !dbg !5099

if.then15:                                        ; preds = %if.end9
  %14 = load i32, i32* %trip, align 4, !dbg !5100
  %inc16 = add i32 %14, 1, !dbg !5100
  store i32 %inc16, i32* %trip, align 4, !dbg !5100
  store i32 0, i32* %i, align 4, !dbg !5102
  br label %for.cond, !dbg !5104

for.cond:                                         ; preds = %for.inc, %if.then15
  %15 = load i32, i32* %i, align 4, !dbg !5105
  %16 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !5107
  %trips17 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %16, i32 0, i32 8, !dbg !5108
  %passive18 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips17, i32 0, i32 2, !dbg !5109
  %devices = getelementptr inbounds %struct.acpi_thermal_passive, %struct.acpi_thermal_passive* %passive18, i32 0, i32 5, !dbg !5110
  %count = getelementptr inbounds %struct.acpi_handle_list, %struct.acpi_handle_list* %devices, i32 0, i32 0, !dbg !5111
  %17 = load i32, i32* %count, align 8, !dbg !5111
  %cmp = icmp ult i32 %15, %17, !dbg !5112
  br i1 %cmp, label %for.body, label %for.end, !dbg !5113

for.body:                                         ; preds = %for.cond
  %18 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !5114
  %trips19 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %18, i32 0, i32 8, !dbg !5116
  %passive20 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips19, i32 0, i32 2, !dbg !5117
  %devices21 = getelementptr inbounds %struct.acpi_thermal_passive, %struct.acpi_thermal_passive* %passive20, i32 0, i32 5, !dbg !5118
  %handles = getelementptr inbounds %struct.acpi_handle_list, %struct.acpi_handle_list* %devices21, i32 0, i32 1, !dbg !5119
  %19 = load i32, i32* %i, align 4, !dbg !5120
  %idxprom = sext i32 %19 to i64, !dbg !5114
  %arrayidx = getelementptr [10 x i8*], [10 x i8*]* %handles, i64 0, i64 %idxprom, !dbg !5114
  %20 = load i8*, i8** %arrayidx, align 8, !dbg !5114
  store i8* %20, i8** %handle, align 8, !dbg !5121
  %21 = load i8*, i8** %handle, align 8, !dbg !5122
  %call = call i32 @acpi_bus_get_device(i8* %21, %struct.acpi_device** %dev) #9, !dbg !5123
  store i32 %call, i32* %status, align 4, !dbg !5124
  %22 = load i32, i32* %status, align 4, !dbg !5125
  %tobool22 = icmp ne i32 %22, 0, !dbg !5125
  br i1 %tobool22, label %if.then24, label %lor.lhs.false, !dbg !5127

lor.lhs.false:                                    ; preds = %for.body
  %23 = load %struct.acpi_device*, %struct.acpi_device** %dev, align 8, !dbg !5128
  %24 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !5129
  %cmp23 = icmp ne %struct.acpi_device* %23, %24, !dbg !5130
  br i1 %cmp23, label %if.then24, label %if.end25, !dbg !5131

if.then24:                                        ; preds = %lor.lhs.false, %for.body
  br label %for.inc, !dbg !5132

if.end25:                                         ; preds = %lor.lhs.false
  %25 = load i8, i8* %bind.addr, align 1, !dbg !5133
  %tobool26 = trunc i8 %25 to i1, !dbg !5133
  br i1 %tobool26, label %if.then27, label %if.else, !dbg !5135

if.then27:                                        ; preds = %if.end25
  %26 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %thermal.addr, align 8, !dbg !5136
  %27 = load i32, i32* %trip, align 4, !dbg !5137
  %28 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %cdev.addr, align 8, !dbg !5138
  %call28 = call i32 @thermal_zone_bind_cooling_device(%struct.thermal_zone_device* %26, i32 %27, %struct.thermal_cooling_device* %28, i64 4294967295, i64 4294967295, i32 0) #9, !dbg !5139
  store i32 %call28, i32* %result, align 4, !dbg !5140
  br label %if.end30, !dbg !5141

if.else:                                          ; preds = %if.end25
  %29 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %thermal.addr, align 8, !dbg !5142
  %30 = load i32, i32* %trip, align 4, !dbg !5143
  %31 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %cdev.addr, align 8, !dbg !5144
  %call29 = call i32 @thermal_zone_unbind_cooling_device(%struct.thermal_zone_device* %29, i32 %30, %struct.thermal_cooling_device* %31) #9, !dbg !5145
  store i32 %call29, i32* %result, align 4, !dbg !5146
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then27
  %32 = load i32, i32* %result, align 4, !dbg !5147
  %tobool31 = icmp ne i32 %32, 0, !dbg !5147
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !5149

if.then32:                                        ; preds = %if.end30
  br label %failed, !dbg !5150

if.end33:                                         ; preds = %if.end30
  br label %for.inc, !dbg !5151

for.inc:                                          ; preds = %if.end33, %if.then24
  %33 = load i32, i32* %i, align 4, !dbg !5152
  %inc34 = add i32 %33, 1, !dbg !5152
  store i32 %inc34, i32* %i, align 4, !dbg !5152
  br label %for.cond, !dbg !5153, !llvm.loop !5154

for.end:                                          ; preds = %for.cond
  br label %if.end35, !dbg !5156

if.end35:                                         ; preds = %for.end, %if.end9
  store i32 0, i32* %i, align 4, !dbg !5157
  br label %for.cond36, !dbg !5159

for.cond36:                                       ; preds = %for.inc84, %if.end35
  %34 = load i32, i32* %i, align 4, !dbg !5160
  %cmp37 = icmp slt i32 %34, 10, !dbg !5162
  br i1 %cmp37, label %for.body38, label %for.end86, !dbg !5163

for.body38:                                       ; preds = %for.cond36
  %35 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !5164
  %trips39 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %35, i32 0, i32 8, !dbg !5167
  %active = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips39, i32 0, i32 3, !dbg !5168
  %36 = load i32, i32* %i, align 4, !dbg !5169
  %idxprom40 = sext i32 %36 to i64, !dbg !5164
  %arrayidx41 = getelementptr [10 x %struct.acpi_thermal_active], [10 x %struct.acpi_thermal_active]* %active, i64 0, i64 %idxprom40, !dbg !5164
  %flags42 = getelementptr inbounds %struct.acpi_thermal_active, %struct.acpi_thermal_active* %arrayidx41, i32 0, i32 0, !dbg !5170
  %37 = bitcast %struct.acpi_thermal_state_flags* %flags42 to i8*, !dbg !5171
  %bf.load43 = load i8, i8* %37, align 8, !dbg !5171
  %bf.clear44 = and i8 %bf.load43, 1, !dbg !5171
  %tobool45 = icmp ne i8 %bf.clear44, 0, !dbg !5164
  br i1 %tobool45, label %if.end47, label %if.then46, !dbg !5172

if.then46:                                        ; preds = %for.body38
  br label %for.end86, !dbg !5173

if.end47:                                         ; preds = %for.body38
  %38 = load i32, i32* %trip, align 4, !dbg !5174
  %inc48 = add i32 %38, 1, !dbg !5174
  store i32 %inc48, i32* %trip, align 4, !dbg !5174
  store i32 0, i32* %j, align 4, !dbg !5175
  br label %for.cond49, !dbg !5177

for.cond49:                                       ; preds = %for.inc81, %if.end47
  %39 = load i32, i32* %j, align 4, !dbg !5178
  %40 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !5180
  %trips50 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %40, i32 0, i32 8, !dbg !5181
  %active51 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips50, i32 0, i32 3, !dbg !5182
  %41 = load i32, i32* %i, align 4, !dbg !5183
  %idxprom52 = sext i32 %41 to i64, !dbg !5180
  %arrayidx53 = getelementptr [10 x %struct.acpi_thermal_active], [10 x %struct.acpi_thermal_active]* %active51, i64 0, i64 %idxprom52, !dbg !5180
  %devices54 = getelementptr inbounds %struct.acpi_thermal_active, %struct.acpi_thermal_active* %arrayidx53, i32 0, i32 2, !dbg !5184
  %count55 = getelementptr inbounds %struct.acpi_handle_list, %struct.acpi_handle_list* %devices54, i32 0, i32 0, !dbg !5185
  %42 = load i32, i32* %count55, align 8, !dbg !5185
  %cmp56 = icmp ult i32 %39, %42, !dbg !5186
  br i1 %cmp56, label %for.body57, label %for.end83, !dbg !5187

for.body57:                                       ; preds = %for.cond49
  %43 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !5188
  %trips58 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %43, i32 0, i32 8, !dbg !5190
  %active59 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips58, i32 0, i32 3, !dbg !5191
  %44 = load i32, i32* %i, align 4, !dbg !5192
  %idxprom60 = sext i32 %44 to i64, !dbg !5188
  %arrayidx61 = getelementptr [10 x %struct.acpi_thermal_active], [10 x %struct.acpi_thermal_active]* %active59, i64 0, i64 %idxprom60, !dbg !5188
  %devices62 = getelementptr inbounds %struct.acpi_thermal_active, %struct.acpi_thermal_active* %arrayidx61, i32 0, i32 2, !dbg !5193
  %handles63 = getelementptr inbounds %struct.acpi_handle_list, %struct.acpi_handle_list* %devices62, i32 0, i32 1, !dbg !5194
  %45 = load i32, i32* %j, align 4, !dbg !5195
  %idxprom64 = sext i32 %45 to i64, !dbg !5188
  %arrayidx65 = getelementptr [10 x i8*], [10 x i8*]* %handles63, i64 0, i64 %idxprom64, !dbg !5188
  %46 = load i8*, i8** %arrayidx65, align 8, !dbg !5188
  store i8* %46, i8** %handle, align 8, !dbg !5196
  %47 = load i8*, i8** %handle, align 8, !dbg !5197
  %call66 = call i32 @acpi_bus_get_device(i8* %47, %struct.acpi_device** %dev) #9, !dbg !5198
  store i32 %call66, i32* %status, align 4, !dbg !5199
  %48 = load i32, i32* %status, align 4, !dbg !5200
  %tobool67 = icmp ne i32 %48, 0, !dbg !5200
  br i1 %tobool67, label %if.then70, label %lor.lhs.false68, !dbg !5202

lor.lhs.false68:                                  ; preds = %for.body57
  %49 = load %struct.acpi_device*, %struct.acpi_device** %dev, align 8, !dbg !5203
  %50 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !5204
  %cmp69 = icmp ne %struct.acpi_device* %49, %50, !dbg !5205
  br i1 %cmp69, label %if.then70, label %if.end71, !dbg !5206

if.then70:                                        ; preds = %lor.lhs.false68, %for.body57
  br label %for.inc81, !dbg !5207

if.end71:                                         ; preds = %lor.lhs.false68
  %51 = load i8, i8* %bind.addr, align 1, !dbg !5208
  %tobool72 = trunc i8 %51 to i1, !dbg !5208
  br i1 %tobool72, label %if.then73, label %if.else75, !dbg !5210

if.then73:                                        ; preds = %if.end71
  %52 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %thermal.addr, align 8, !dbg !5211
  %53 = load i32, i32* %trip, align 4, !dbg !5212
  %54 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %cdev.addr, align 8, !dbg !5213
  %call74 = call i32 @thermal_zone_bind_cooling_device(%struct.thermal_zone_device* %52, i32 %53, %struct.thermal_cooling_device* %54, i64 4294967295, i64 4294967295, i32 0) #9, !dbg !5214
  store i32 %call74, i32* %result, align 4, !dbg !5215
  br label %if.end77, !dbg !5216

if.else75:                                        ; preds = %if.end71
  %55 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %thermal.addr, align 8, !dbg !5217
  %56 = load i32, i32* %trip, align 4, !dbg !5218
  %57 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %cdev.addr, align 8, !dbg !5219
  %call76 = call i32 @thermal_zone_unbind_cooling_device(%struct.thermal_zone_device* %55, i32 %56, %struct.thermal_cooling_device* %57) #9, !dbg !5220
  store i32 %call76, i32* %result, align 4, !dbg !5221
  br label %if.end77

if.end77:                                         ; preds = %if.else75, %if.then73
  %58 = load i32, i32* %result, align 4, !dbg !5222
  %tobool78 = icmp ne i32 %58, 0, !dbg !5222
  br i1 %tobool78, label %if.then79, label %if.end80, !dbg !5224

if.then79:                                        ; preds = %if.end77
  br label %failed, !dbg !5225

if.end80:                                         ; preds = %if.end77
  br label %for.inc81, !dbg !5226

for.inc81:                                        ; preds = %if.end80, %if.then70
  %59 = load i32, i32* %j, align 4, !dbg !5227
  %inc82 = add i32 %59, 1, !dbg !5227
  store i32 %inc82, i32* %j, align 4, !dbg !5227
  br label %for.cond49, !dbg !5228, !llvm.loop !5229

for.end83:                                        ; preds = %for.cond49
  br label %for.inc84, !dbg !5231

for.inc84:                                        ; preds = %for.end83
  %60 = load i32, i32* %i, align 4, !dbg !5232
  %inc85 = add i32 %60, 1, !dbg !5232
  store i32 %inc85, i32* %i, align 4, !dbg !5232
  br label %for.cond36, !dbg !5233, !llvm.loop !5234

for.end86:                                        ; preds = %if.then46, %for.cond36
  store i32 0, i32* %i, align 4, !dbg !5236
  br label %for.cond87, !dbg !5238

for.cond87:                                       ; preds = %for.inc110, %for.end86
  %61 = load i32, i32* %i, align 4, !dbg !5239
  %62 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !5241
  %devices88 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %62, i32 0, i32 9, !dbg !5242
  %count89 = getelementptr inbounds %struct.acpi_handle_list, %struct.acpi_handle_list* %devices88, i32 0, i32 0, !dbg !5243
  %63 = load i32, i32* %count89, align 8, !dbg !5243
  %cmp90 = icmp ult i32 %61, %63, !dbg !5244
  br i1 %cmp90, label %for.body91, label %for.end112, !dbg !5245

for.body91:                                       ; preds = %for.cond87
  %64 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !5246
  %devices92 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %64, i32 0, i32 9, !dbg !5248
  %handles93 = getelementptr inbounds %struct.acpi_handle_list, %struct.acpi_handle_list* %devices92, i32 0, i32 1, !dbg !5249
  %65 = load i32, i32* %i, align 4, !dbg !5250
  %idxprom94 = sext i32 %65 to i64, !dbg !5246
  %arrayidx95 = getelementptr [10 x i8*], [10 x i8*]* %handles93, i64 0, i64 %idxprom94, !dbg !5246
  %66 = load i8*, i8** %arrayidx95, align 8, !dbg !5246
  store i8* %66, i8** %handle, align 8, !dbg !5251
  %67 = load i8*, i8** %handle, align 8, !dbg !5252
  %call96 = call i32 @acpi_bus_get_device(i8* %67, %struct.acpi_device** %dev) #9, !dbg !5253
  store i32 %call96, i32* %status, align 4, !dbg !5254
  %68 = load i32, i32* %status, align 4, !dbg !5255
  %tobool97 = icmp ne i32 %68, 0, !dbg !5255
  br i1 %tobool97, label %if.end109, label %land.lhs.true, !dbg !5257

land.lhs.true:                                    ; preds = %for.body91
  %69 = load %struct.acpi_device*, %struct.acpi_device** %dev, align 8, !dbg !5258
  %70 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !5259
  %cmp98 = icmp eq %struct.acpi_device* %69, %70, !dbg !5260
  br i1 %cmp98, label %if.then99, label %if.end109, !dbg !5261

if.then99:                                        ; preds = %land.lhs.true
  %71 = load i8, i8* %bind.addr, align 1, !dbg !5262
  %tobool100 = trunc i8 %71 to i1, !dbg !5262
  br i1 %tobool100, label %if.then101, label %if.else103, !dbg !5265

if.then101:                                       ; preds = %if.then99
  %72 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %thermal.addr, align 8, !dbg !5266
  %73 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %cdev.addr, align 8, !dbg !5267
  %call102 = call i32 @thermal_zone_bind_cooling_device(%struct.thermal_zone_device* %72, i32 -1, %struct.thermal_cooling_device* %73, i64 4294967295, i64 4294967295, i32 0) #9, !dbg !5268
  store i32 %call102, i32* %result, align 4, !dbg !5269
  br label %if.end105, !dbg !5270

if.else103:                                       ; preds = %if.then99
  %74 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %thermal.addr, align 8, !dbg !5271
  %75 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %cdev.addr, align 8, !dbg !5272
  %call104 = call i32 @thermal_zone_unbind_cooling_device(%struct.thermal_zone_device* %74, i32 -1, %struct.thermal_cooling_device* %75) #9, !dbg !5273
  store i32 %call104, i32* %result, align 4, !dbg !5274
  br label %if.end105

if.end105:                                        ; preds = %if.else103, %if.then101
  %76 = load i32, i32* %result, align 4, !dbg !5275
  %tobool106 = icmp ne i32 %76, 0, !dbg !5275
  br i1 %tobool106, label %if.then107, label %if.end108, !dbg !5277

if.then107:                                       ; preds = %if.end105
  br label %failed, !dbg !5278

if.end108:                                        ; preds = %if.end105
  br label %if.end109, !dbg !5279

if.end109:                                        ; preds = %if.end108, %land.lhs.true, %for.body91
  br label %for.inc110, !dbg !5280

for.inc110:                                       ; preds = %if.end109
  %77 = load i32, i32* %i, align 4, !dbg !5281
  %inc111 = add i32 %77, 1, !dbg !5281
  store i32 %inc111, i32* %i, align 4, !dbg !5281
  br label %for.cond87, !dbg !5282, !llvm.loop !5283

for.end112:                                       ; preds = %for.cond87
  br label %failed, !dbg !5284

failed:                                           ; preds = %for.end112, %if.then107, %if.then79, %if.then32
  call void @llvm.dbg.label(metadata !5285), !dbg !5286
  %78 = load i32, i32* %result, align 4, !dbg !5287
  ret i32 %78, !dbg !5288
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_bus_get_device(i8*, %struct.acpi_device**) #1

; Function Attrs: noredzone
declare dso_local i32 @thermal_zone_bind_cooling_device(%struct.thermal_zone_device*, i32, %struct.thermal_cooling_device*, i64, i64, i32) #1

; Function Attrs: noredzone
declare dso_local i32 @thermal_zone_unbind_cooling_device(%struct.thermal_zone_device*, i32, %struct.thermal_cooling_device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @deci_kelvin_to_millicelsius_with_offset(i64 %t, i64 %offset) #2 !dbg !5289 {
entry:
  %t.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  store i64 %t, i64* %t.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %t.addr, metadata !5292, metadata !DIExpression()), !dbg !5293
  store i64 %offset, i64* %offset.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %offset.addr, metadata !5294, metadata !DIExpression()), !dbg !5295
  %0 = load i64, i64* %t.addr, align 8, !dbg !5296
  %mul = mul i64 %0, 100, !dbg !5297
  %1 = load i64, i64* %offset.addr, align 8, !dbg !5298
  %sub = sub i64 %mul, %1, !dbg !5299
  ret i64 %sub, !dbg !5300
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_bus_generate_netlink_event(i8*, i8*, i8 zeroext, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_name(%struct.device* %dev) #2 !dbg !5301 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5304, metadata !DIExpression()), !dbg !5305
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5306
  %init_name = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 3, !dbg !5308
  %1 = load i8*, i8** %init_name, align 8, !dbg !5308
  %tobool = icmp ne i8* %1, null, !dbg !5306
  br i1 %tobool, label %if.then, label %if.end, !dbg !5309

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5310
  %init_name1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 3, !dbg !5311
  %3 = load i8*, i8** %init_name1, align 8, !dbg !5311
  store i8* %3, i8** %retval, align 8, !dbg !5312
  br label %return, !dbg !5312

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5313
  %kobj = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0, !dbg !5314
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #9, !dbg !5315
  store i8* %call, i8** %retval, align 8, !dbg !5316
  br label %return, !dbg !5316

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !5317
  ret i8* %5, !dbg !5317
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #2 !dbg !5318 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !5323, metadata !DIExpression()), !dbg !5324
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !5325
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !5326
  %1 = load i8*, i8** %name, align 8, !dbg !5326
  ret i8* %1, !dbg !5327
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_thermal_check(i8* %data) #2 !dbg !5328 {
entry:
  %data.addr = alloca i8*, align 8
  %tz = alloca %struct.acpi_thermal*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5329, metadata !DIExpression()), !dbg !5330
  call void @llvm.dbg.declare(metadata %struct.acpi_thermal** %tz, metadata !5331, metadata !DIExpression()), !dbg !5332
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5333
  %1 = bitcast i8* %0 to %struct.acpi_thermal*, !dbg !5333
  store %struct.acpi_thermal* %1, %struct.acpi_thermal** %tz, align 8, !dbg !5332
  %2 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !5334
  %thermal_zone = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %2, i32 0, i32 10, !dbg !5335
  %3 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %thermal_zone, align 8, !dbg !5335
  call void @thermal_zone_device_update(%struct.thermal_zone_device* %3, i32 0) #9, !dbg !5336
  ret void, !dbg !5337
}

; Function Attrs: noredzone
declare dso_local void @thermal_zone_device_update(%struct.thermal_zone_device*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @milli_kelvin_to_millicelsius(i64 %t) #2 !dbg !5338 {
entry:
  %t.addr = alloca i64, align 8
  store i64 %t, i64* %t.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %t.addr, metadata !5339, metadata !DIExpression()), !dbg !5340
  %0 = load i64, i64* %t.addr, align 8, !dbg !5341
  %add = add i64 %0, -273150, !dbg !5342
  ret i64 %add, !dbg !5343
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_driver_data(%struct.acpi_device* %d) #2 !dbg !5344 {
entry:
  %d.addr = alloca %struct.acpi_device*, align 8
  store %struct.acpi_device* %d, %struct.acpi_device** %d.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %d.addr, metadata !5347, metadata !DIExpression()), !dbg !5348
  %0 = load %struct.acpi_device*, %struct.acpi_device** %d.addr, align 8, !dbg !5349
  %driver_data = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %0, i32 0, i32 20, !dbg !5350
  %1 = load i8*, i8** %driver_data, align 8, !dbg !5350
  ret i8* %1, !dbg !5351
}

; Function Attrs: noredzone
declare dso_local void @flush_workqueue(%struct.workqueue_struct*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_thermal_unregister_thermal_zone(%struct.acpi_thermal* %tz) #2 !dbg !5352 {
entry:
  %tz.addr = alloca %struct.acpi_thermal*, align 8
  store %struct.acpi_thermal* %tz, %struct.acpi_thermal** %tz.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_thermal** %tz.addr, metadata !5353, metadata !DIExpression()), !dbg !5354
  %0 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !5355
  %device = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %0, i32 0, i32 0, !dbg !5356
  %1 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !5356
  %dev = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %1, i32 0, i32 21, !dbg !5357
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 0, !dbg !5358
  call void @sysfs_remove_link(%struct.kobject* %kobj, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !5359
  %2 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !5360
  %thermal_zone = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %2, i32 0, i32 10, !dbg !5361
  %3 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %thermal_zone, align 8, !dbg !5361
  %device1 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %3, i32 0, i32 2, !dbg !5362
  %kobj2 = getelementptr inbounds %struct.device, %struct.device* %device1, i32 0, i32 0, !dbg !5363
  call void @sysfs_remove_link(%struct.kobject* %kobj2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0)) #9, !dbg !5364
  %4 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !5365
  %thermal_zone3 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %4, i32 0, i32 10, !dbg !5366
  %5 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %thermal_zone3, align 8, !dbg !5366
  call void @thermal_zone_device_unregister(%struct.thermal_zone_device* %5) #9, !dbg !5367
  %6 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !5368
  %thermal_zone4 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %6, i32 0, i32 10, !dbg !5369
  store %struct.thermal_zone_device* null, %struct.thermal_zone_device** %thermal_zone4, align 8, !dbg !5370
  %7 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz.addr, align 8, !dbg !5371
  %device5 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %7, i32 0, i32 0, !dbg !5372
  %8 = load %struct.acpi_device*, %struct.acpi_device** %device5, align 8, !dbg !5372
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %8, i32 0, i32 1, !dbg !5373
  %9 = load i8*, i8** %handle, align 8, !dbg !5373
  call void @acpi_bus_detach_private_data(i8* %9) #9, !dbg !5374
  ret void, !dbg !5375
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_thermal_suspend(%struct.device* %dev) #2 !dbg !5376 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5377, metadata !DIExpression()), !dbg !5378
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @acpi_thermal_pm_queue, align 8, !dbg !5379
  call void @flush_workqueue(%struct.workqueue_struct* %0) #9, !dbg !5380
  ret i32 0, !dbg !5381
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_thermal_resume(%struct.device* %dev) #2 !dbg !5382 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %tz = alloca %struct.acpi_thermal*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %power_state = alloca i32, align 4
  %result = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5383, metadata !DIExpression()), !dbg !5384
  call void @llvm.dbg.declare(metadata %struct.acpi_thermal** %tz, metadata !5385, metadata !DIExpression()), !dbg !5386
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5387, metadata !DIExpression()), !dbg !5388
  call void @llvm.dbg.declare(metadata i32* %j, metadata !5389, metadata !DIExpression()), !dbg !5390
  call void @llvm.dbg.declare(metadata i32* %power_state, metadata !5391, metadata !DIExpression()), !dbg !5392
  call void @llvm.dbg.declare(metadata i32* %result, metadata !5393, metadata !DIExpression()), !dbg !5394
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5395
  %tobool = icmp ne %struct.device* %0, null, !dbg !5395
  br i1 %tobool, label %if.end, label %if.then, !dbg !5397

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5398
  br label %return, !dbg !5398

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5399, metadata !DIExpression()), !dbg !5401
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5401
  %2 = bitcast %struct.device* %1 to i8*, !dbg !5401
  store i8* %2, i8** %__mptr, align 8, !dbg !5401
  br label %do.body, !dbg !5401

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !5402

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !5401
  %add.ptr = getelementptr i8, i8* %3, i64 -608, !dbg !5401
  %4 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !5401
  store %struct.acpi_device* %4, %struct.acpi_device** %tmp, align 8, !dbg !5402
  %5 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !5401
  %call = call i8* @acpi_driver_data(%struct.acpi_device* %5) #9, !dbg !5404
  %6 = bitcast i8* %call to %struct.acpi_thermal*, !dbg !5404
  store %struct.acpi_thermal* %6, %struct.acpi_thermal** %tz, align 8, !dbg !5405
  %7 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !5406
  %tobool1 = icmp ne %struct.acpi_thermal* %7, null, !dbg !5406
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !5408

if.then2:                                         ; preds = %do.end
  store i32 -22, i32* %retval, align 4, !dbg !5409
  br label %return, !dbg !5409

if.end3:                                          ; preds = %do.end
  store i32 0, i32* %i, align 4, !dbg !5410
  br label %for.cond, !dbg !5412

for.cond:                                         ; preds = %for.inc62, %if.end3
  %8 = load i32, i32* %i, align 4, !dbg !5413
  %cmp = icmp slt i32 %8, 10, !dbg !5415
  br i1 %cmp, label %for.body, label %for.end64, !dbg !5416

for.body:                                         ; preds = %for.cond
  %9 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !5417
  %trips = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %9, i32 0, i32 8, !dbg !5420
  %active = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips, i32 0, i32 3, !dbg !5421
  %10 = load i32, i32* %i, align 4, !dbg !5422
  %idxprom = sext i32 %10 to i64, !dbg !5417
  %arrayidx = getelementptr [10 x %struct.acpi_thermal_active], [10 x %struct.acpi_thermal_active]* %active, i64 0, i64 %idxprom, !dbg !5417
  %tobool4 = icmp ne %struct.acpi_thermal_active* %arrayidx, null, !dbg !5423
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !5424

if.then5:                                         ; preds = %for.body
  br label %for.end64, !dbg !5425

if.end6:                                          ; preds = %for.body
  %11 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !5426
  %trips7 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %11, i32 0, i32 8, !dbg !5428
  %active8 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips7, i32 0, i32 3, !dbg !5429
  %12 = load i32, i32* %i, align 4, !dbg !5430
  %idxprom9 = sext i32 %12 to i64, !dbg !5426
  %arrayidx10 = getelementptr [10 x %struct.acpi_thermal_active], [10 x %struct.acpi_thermal_active]* %active8, i64 0, i64 %idxprom9, !dbg !5426
  %flags = getelementptr inbounds %struct.acpi_thermal_active, %struct.acpi_thermal_active* %arrayidx10, i32 0, i32 0, !dbg !5431
  %13 = bitcast %struct.acpi_thermal_state_flags* %flags to i8*, !dbg !5432
  %bf.load = load i8, i8* %13, align 8, !dbg !5432
  %bf.clear = and i8 %bf.load, 1, !dbg !5432
  %tobool11 = icmp ne i8 %bf.clear, 0, !dbg !5426
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !5433

if.then12:                                        ; preds = %if.end6
  br label %for.end64, !dbg !5434

if.end13:                                         ; preds = %if.end6
  %14 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !5435
  %trips14 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %14, i32 0, i32 8, !dbg !5436
  %active15 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips14, i32 0, i32 3, !dbg !5437
  %15 = load i32, i32* %i, align 4, !dbg !5438
  %idxprom16 = sext i32 %15 to i64, !dbg !5435
  %arrayidx17 = getelementptr [10 x %struct.acpi_thermal_active], [10 x %struct.acpi_thermal_active]* %active15, i64 0, i64 %idxprom16, !dbg !5435
  %flags18 = getelementptr inbounds %struct.acpi_thermal_active, %struct.acpi_thermal_active* %arrayidx17, i32 0, i32 0, !dbg !5439
  %16 = bitcast %struct.acpi_thermal_state_flags* %flags18 to i8*, !dbg !5440
  %bf.load19 = load i8, i8* %16, align 8, !dbg !5441
  %bf.clear20 = and i8 %bf.load19, -3, !dbg !5441
  %bf.set = or i8 %bf.clear20, 2, !dbg !5441
  store i8 %bf.set, i8* %16, align 8, !dbg !5441
  store i32 0, i32* %j, align 4, !dbg !5442
  br label %for.cond21, !dbg !5444

for.cond21:                                       ; preds = %for.inc, %if.end13
  %17 = load i32, i32* %j, align 4, !dbg !5445
  %18 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !5447
  %trips22 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %18, i32 0, i32 8, !dbg !5448
  %active23 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips22, i32 0, i32 3, !dbg !5449
  %19 = load i32, i32* %i, align 4, !dbg !5450
  %idxprom24 = sext i32 %19 to i64, !dbg !5447
  %arrayidx25 = getelementptr [10 x %struct.acpi_thermal_active], [10 x %struct.acpi_thermal_active]* %active23, i64 0, i64 %idxprom24, !dbg !5447
  %devices = getelementptr inbounds %struct.acpi_thermal_active, %struct.acpi_thermal_active* %arrayidx25, i32 0, i32 2, !dbg !5451
  %count = getelementptr inbounds %struct.acpi_handle_list, %struct.acpi_handle_list* %devices, i32 0, i32 0, !dbg !5452
  %20 = load i32, i32* %count, align 8, !dbg !5452
  %cmp26 = icmp ult i32 %17, %20, !dbg !5453
  br i1 %cmp26, label %for.body27, label %for.end, !dbg !5454

for.body27:                                       ; preds = %for.cond21
  %21 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !5455
  %trips28 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %21, i32 0, i32 8, !dbg !5457
  %active29 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips28, i32 0, i32 3, !dbg !5458
  %22 = load i32, i32* %i, align 4, !dbg !5459
  %idxprom30 = sext i32 %22 to i64, !dbg !5455
  %arrayidx31 = getelementptr [10 x %struct.acpi_thermal_active], [10 x %struct.acpi_thermal_active]* %active29, i64 0, i64 %idxprom30, !dbg !5455
  %devices32 = getelementptr inbounds %struct.acpi_thermal_active, %struct.acpi_thermal_active* %arrayidx31, i32 0, i32 2, !dbg !5460
  %handles = getelementptr inbounds %struct.acpi_handle_list, %struct.acpi_handle_list* %devices32, i32 0, i32 1, !dbg !5461
  %23 = load i32, i32* %j, align 4, !dbg !5462
  %idxprom33 = sext i32 %23 to i64, !dbg !5455
  %arrayidx34 = getelementptr [10 x i8*], [10 x i8*]* %handles, i64 0, i64 %idxprom33, !dbg !5455
  %24 = load i8*, i8** %arrayidx34, align 8, !dbg !5455
  %call35 = call i32 @acpi_bus_update_power(i8* %24, i32* %power_state) #9, !dbg !5463
  store i32 %call35, i32* %result, align 4, !dbg !5464
  %25 = load i32, i32* %result, align 4, !dbg !5465
  %tobool36 = icmp ne i32 %25, 0, !dbg !5465
  br i1 %tobool36, label %if.then38, label %lor.lhs.false, !dbg !5467

lor.lhs.false:                                    ; preds = %for.body27
  %26 = load i32, i32* %power_state, align 4, !dbg !5468
  %cmp37 = icmp ne i32 %26, 0, !dbg !5469
  br i1 %cmp37, label %if.then38, label %if.end46, !dbg !5470

if.then38:                                        ; preds = %lor.lhs.false, %for.body27
  %27 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !5471
  %trips39 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %27, i32 0, i32 8, !dbg !5473
  %active40 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips39, i32 0, i32 3, !dbg !5474
  %28 = load i32, i32* %i, align 4, !dbg !5475
  %idxprom41 = sext i32 %28 to i64, !dbg !5471
  %arrayidx42 = getelementptr [10 x %struct.acpi_thermal_active], [10 x %struct.acpi_thermal_active]* %active40, i64 0, i64 %idxprom41, !dbg !5471
  %flags43 = getelementptr inbounds %struct.acpi_thermal_active, %struct.acpi_thermal_active* %arrayidx42, i32 0, i32 0, !dbg !5476
  %29 = bitcast %struct.acpi_thermal_state_flags* %flags43 to i8*, !dbg !5477
  %bf.load44 = load i8, i8* %29, align 8, !dbg !5478
  %bf.clear45 = and i8 %bf.load44, -3, !dbg !5478
  store i8 %bf.clear45, i8* %29, align 8, !dbg !5478
  br label %for.end, !dbg !5479

if.end46:                                         ; preds = %lor.lhs.false
  br label %for.inc, !dbg !5480

for.inc:                                          ; preds = %if.end46
  %30 = load i32, i32* %j, align 4, !dbg !5481
  %inc = add i32 %30, 1, !dbg !5481
  store i32 %inc, i32* %j, align 4, !dbg !5481
  br label %for.cond21, !dbg !5482, !llvm.loop !5483

for.end:                                          ; preds = %if.then38, %for.cond21
  %31 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !5485
  %trips47 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %31, i32 0, i32 8, !dbg !5486
  %active48 = getelementptr inbounds %struct.acpi_thermal_trips, %struct.acpi_thermal_trips* %trips47, i32 0, i32 3, !dbg !5487
  %32 = load i32, i32* %i, align 4, !dbg !5488
  %idxprom49 = sext i32 %32 to i64, !dbg !5485
  %arrayidx50 = getelementptr [10 x %struct.acpi_thermal_active], [10 x %struct.acpi_thermal_active]* %active48, i64 0, i64 %idxprom49, !dbg !5485
  %flags51 = getelementptr inbounds %struct.acpi_thermal_active, %struct.acpi_thermal_active* %arrayidx50, i32 0, i32 0, !dbg !5489
  %33 = bitcast %struct.acpi_thermal_state_flags* %flags51 to i8*, !dbg !5490
  %bf.load52 = load i8, i8* %33, align 8, !dbg !5490
  %bf.lshr = lshr i8 %bf.load52, 1, !dbg !5490
  %bf.clear53 = and i8 %bf.lshr, 1, !dbg !5490
  %conv = zext i8 %bf.clear53 to i32, !dbg !5485
  %34 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !5491
  %state = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %34, i32 0, i32 7, !dbg !5492
  %35 = bitcast %struct.acpi_thermal_state* %state to i8*, !dbg !5493
  %bf.load54 = load i8, i8* %35, align 4, !dbg !5494
  %bf.lshr55 = lshr i8 %bf.load54, 3, !dbg !5494
  %bf.clear56 = and i8 %bf.lshr55, 1, !dbg !5494
  %conv57 = zext i8 %bf.clear56 to i32, !dbg !5494
  %or = or i32 %conv57, %conv, !dbg !5494
  %conv58 = trunc i32 %or to i8, !dbg !5494
  %bf.load59 = load i8, i8* %35, align 4, !dbg !5494
  %bf.value = and i8 %conv58, 1, !dbg !5494
  %bf.shl = shl i8 %bf.value, 3, !dbg !5494
  %bf.clear60 = and i8 %bf.load59, -9, !dbg !5494
  %bf.set61 = or i8 %bf.clear60, %bf.shl, !dbg !5494
  store i8 %bf.set61, i8* %35, align 4, !dbg !5494
  br label %for.inc62, !dbg !5495

for.inc62:                                        ; preds = %for.end
  %36 = load i32, i32* %i, align 4, !dbg !5496
  %inc63 = add i32 %36, 1, !dbg !5496
  store i32 %inc63, i32* %i, align 4, !dbg !5496
  br label %for.cond, !dbg !5497, !llvm.loop !5498

for.end64:                                        ; preds = %if.then12, %if.then5, %for.cond
  %37 = load %struct.workqueue_struct*, %struct.workqueue_struct** @acpi_thermal_pm_queue, align 8, !dbg !5500
  %38 = load %struct.acpi_thermal*, %struct.acpi_thermal** %tz, align 8, !dbg !5501
  %thermal_check_work = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %38, i32 0, i32 12, !dbg !5502
  %call65 = call zeroext i1 @queue_work(%struct.workqueue_struct* %37, %struct.work_struct* %thermal_check_work) #9, !dbg !5503
  store i32 0, i32* %retval, align 4, !dbg !5504
  br label %return, !dbg !5504

return:                                           ; preds = %for.end64, %if.then2, %if.then
  %39 = load i32, i32* %retval, align 4, !dbg !5505
  ret i32 %39, !dbg !5505
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_bus_update_power(i8*, i32*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @queue_work(%struct.workqueue_struct* %wq, %struct.work_struct* %work) #2 !dbg !5506 {
entry:
  %wq.addr = alloca %struct.workqueue_struct*, align 8
  %work.addr = alloca %struct.work_struct*, align 8
  store %struct.workqueue_struct* %wq, %struct.workqueue_struct** %wq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.workqueue_struct** %wq.addr, metadata !5509, metadata !DIExpression()), !dbg !5510
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !5511, metadata !DIExpression()), !dbg !5512
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** %wq.addr, align 8, !dbg !5513
  %1 = load %struct.work_struct*, %struct.work_struct** %work.addr, align 8, !dbg !5514
  %call = call zeroext i1 @queue_work_on(i32 1, %struct.workqueue_struct* %0, %struct.work_struct* %1) #9, !dbg !5515
  ret i1 %call, !dbg !5516
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @queue_work_on(i32, %struct.workqueue_struct*, %struct.work_struct*) #1

; Function Attrs: noredzone
declare dso_local i32 @dmi_check_system(%struct.dmi_system_id*) #1

; Function Attrs: noredzone
declare dso_local %struct.workqueue_struct* @alloc_workqueue(i8*, i32, i32, ...) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_bus_register_driver(%struct.acpi_driver*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @thermal_act(%struct.dmi_system_id* %d) #2 !dbg !5517 {
entry:
  %d.addr = alloca %struct.dmi_system_id*, align 8
  store %struct.dmi_system_id* %d, %struct.dmi_system_id** %d.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dmi_system_id** %d.addr, metadata !5518, metadata !DIExpression()), !dbg !5519
  %0 = load i32, i32* @act, align 4, !dbg !5520
  %cmp = icmp eq i32 %0, 0, !dbg !5522
  br i1 %cmp, label %if.then, label %if.end, !dbg !5523

if.then:                                          ; preds = %entry
  %1 = load %struct.dmi_system_id*, %struct.dmi_system_id** %d.addr, align 8, !dbg !5524
  %ident = getelementptr inbounds %struct.dmi_system_id, %struct.dmi_system_id* %1, i32 0, i32 1, !dbg !5524
  %2 = load i8*, i8** %ident, align 8, !dbg !5524
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.30, i64 0, i64 0), i8* %2) #10, !dbg !5524
  store i32 -1, i32* @act, align 4, !dbg !5526
  br label %if.end, !dbg !5527

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !5528
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @thermal_psv(%struct.dmi_system_id* %d) #2 !dbg !5529 {
entry:
  %d.addr = alloca %struct.dmi_system_id*, align 8
  store %struct.dmi_system_id* %d, %struct.dmi_system_id** %d.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dmi_system_id** %d.addr, metadata !5530, metadata !DIExpression()), !dbg !5531
  %0 = load i32, i32* @psv, align 4, !dbg !5532
  %cmp = icmp eq i32 %0, 0, !dbg !5534
  br i1 %cmp, label %if.then, label %if.end, !dbg !5535

if.then:                                          ; preds = %entry
  %1 = load %struct.dmi_system_id*, %struct.dmi_system_id** %d.addr, align 8, !dbg !5536
  %ident = getelementptr inbounds %struct.dmi_system_id, %struct.dmi_system_id* %1, i32 0, i32 1, !dbg !5536
  %2 = load i8*, i8** %ident, align 8, !dbg !5536
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.31, i64 0, i64 0), i8* %2) #10, !dbg !5536
  store i32 -1, i32* @psv, align 4, !dbg !5538
  br label %if.end, !dbg !5539

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !5540
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @thermal_tzp(%struct.dmi_system_id* %d) #2 !dbg !5541 {
entry:
  %d.addr = alloca %struct.dmi_system_id*, align 8
  store %struct.dmi_system_id* %d, %struct.dmi_system_id** %d.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dmi_system_id** %d.addr, metadata !5542, metadata !DIExpression()), !dbg !5543
  %0 = load i32, i32* @tzp, align 4, !dbg !5544
  %cmp = icmp eq i32 %0, 0, !dbg !5546
  br i1 %cmp, label %if.then, label %if.end, !dbg !5547

if.then:                                          ; preds = %entry
  %1 = load %struct.dmi_system_id*, %struct.dmi_system_id** %d.addr, align 8, !dbg !5548
  %ident = getelementptr inbounds %struct.dmi_system_id, %struct.dmi_system_id* %1, i32 0, i32 1, !dbg !5548
  %2 = load i8*, i8** %ident, align 8, !dbg !5548
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.32, i64 0, i64 0), i8* %2) #10, !dbg !5548
  store i32 300, i32* @tzp, align 4, !dbg !5550
  br label %if.end, !dbg !5551

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !5552
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @thermal_nocrt(%struct.dmi_system_id* %d) #2 !dbg !5553 {
entry:
  %d.addr = alloca %struct.dmi_system_id*, align 8
  store %struct.dmi_system_id* %d, %struct.dmi_system_id** %d.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dmi_system_id** %d.addr, metadata !5554, metadata !DIExpression()), !dbg !5555
  %0 = load %struct.dmi_system_id*, %struct.dmi_system_id** %d.addr, align 8, !dbg !5556
  %ident = getelementptr inbounds %struct.dmi_system_id, %struct.dmi_system_id* %0, i32 0, i32 1, !dbg !5556
  %1 = load i8*, i8** %ident, align 8, !dbg !5556
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.33, i64 0, i64 0), i8* %1) #10, !dbg !5556
  store i32 1, i32* @nocrt, align 4, !dbg !5557
  ret i32 0, !dbg !5558
}

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { nounwind willreturn }
attributes #8 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noredzone }
attributes #10 = { cold noredzone }
attributes #11 = { nounwind }
attributes #12 = { noredzone nounwind readnone }
attributes #13 = { noredzone nounwind }
attributes #14 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2946, !2947, !2948, !2949}
!llvm.ident = !{!2950}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author173", scope: !2, file: !3, line: 49, type: !2945, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !155, globals: !2747, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/thermal.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !64, !69, !75, !83, !94, !127, !134, !139}
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
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !95, line: 30, baseType: !96, size: 64, elements: !97)
!95 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!96 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!97 = !{!98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126}
!98 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!99 = !DIEnumerator(name: "WORK_STRUCT_DELAYED_BIT", value: 1)
!100 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!101 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!102 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!103 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!104 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!105 = !DIEnumerator(name: "WORK_STRUCT_DELAYED", value: 2)
!106 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!107 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!108 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!109 = !DIEnumerator(name: "WORK_NR_COLORS", value: 15)
!110 = !DIEnumerator(name: "WORK_NO_COLOR", value: 15)
!111 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 1)
!112 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!113 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!114 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!115 = !DIEnumerator(name: "WORK_OFFQ_CANCELING", value: 16)
!116 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!117 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!118 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!119 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!120 = !DIEnumerator(name: "WORK_OFFQ_POOL_NONE", value: 2147483647)
!121 = !DIEnumerator(name: "WORK_STRUCT_FLAG_MASK", value: 255)
!122 = !DIEnumerator(name: "WORK_STRUCT_WQ_DATA_MASK", value: -256)
!123 = !DIEnumerator(name: "WORK_STRUCT_NO_POOL", value: 68719476704)
!124 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!125 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!126 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 24)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !128, line: 305, baseType: !7, size: 32, elements: !129)
!128 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!129 = !{!130, !131, !132, !133}
!130 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!131 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!132 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!133 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !135, line: 10, baseType: !7, size: 32, elements: !136)
!135 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!136 = !{!137, !138}
!137 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!138 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!139 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !95, line: 308, baseType: !7, size: 32, elements: !140)
!140 = !{!141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154}
!141 = !DIEnumerator(name: "WQ_UNBOUND", value: 2, isUnsigned: true)
!142 = !DIEnumerator(name: "WQ_FREEZABLE", value: 4, isUnsigned: true)
!143 = !DIEnumerator(name: "WQ_MEM_RECLAIM", value: 8, isUnsigned: true)
!144 = !DIEnumerator(name: "WQ_HIGHPRI", value: 16, isUnsigned: true)
!145 = !DIEnumerator(name: "WQ_CPU_INTENSIVE", value: 32, isUnsigned: true)
!146 = !DIEnumerator(name: "WQ_SYSFS", value: 64, isUnsigned: true)
!147 = !DIEnumerator(name: "WQ_POWER_EFFICIENT", value: 128, isUnsigned: true)
!148 = !DIEnumerator(name: "__WQ_DRAINING", value: 65536, isUnsigned: true)
!149 = !DIEnumerator(name: "__WQ_ORDERED", value: 131072, isUnsigned: true)
!150 = !DIEnumerator(name: "__WQ_LEGACY", value: 262144, isUnsigned: true)
!151 = !DIEnumerator(name: "__WQ_ORDERED_EXPLICIT", value: 524288, isUnsigned: true)
!152 = !DIEnumerator(name: "WQ_MAX_ACTIVE", value: 512, isUnsigned: true)
!153 = !DIEnumerator(name: "WQ_MAX_UNBOUND_PER_CPU", value: 4, isUnsigned: true)
!154 = !DIEnumerator(name: "WQ_DFL_ACTIVE", value: 256, isUnsigned: true)
!155 = !{!156, !158, !159, !160, !162, !166, !173, !177, !684}
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !157, line: 148, baseType: !7)
!157 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!158 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !161, line: 421, baseType: !162)
!161 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !163, line: 21, baseType: !164)
!163 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !165, line: 27, baseType: !7)
!165 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !168)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !157, line: 178, size: 128, elements: !170)
!170 = !{!171, !172}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !169, file: !157, line: 179, baseType: !168, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !169, file: !157, line: 179, baseType: !168, size: 64, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thermal", file: !3, line: 163, size: 11136, elements: !175)
!175 = !{!176, !2512, !2513, !2514, !2515, !2516, !2518, !2524, !2533, !2574, !2575, !2745, !2746}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !174, file: !3, line: 164, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !179, line: 351, size: 10880, elements: !180)
!179 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/lizy2001/genbc/linux")
!180 = !{!181, !183, !185, !2239, !2240, !2241, !2242, !2243, !2244, !2253, !2270, !2344, !2373, !2397, !2418, !2424, !2433, !2465, !2479, !2501, !2505, !2506, !2507, !2508, !2509, !2510, !2511}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !178, file: !179, line: 352, baseType: !182, size: 32)
!182 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !178, file: !179, line: 353, baseType: !184, size: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !161, line: 424, baseType: !159)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !178, file: !179, line: 354, baseType: !186, size: 192, offset: 128)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !187, line: 17, size: 192, elements: !188)
!187 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!188 = !{!189, !191, !2238}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !186, file: !187, line: 18, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !186, file: !187, line: 19, baseType: !192, size: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !194)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !187, line: 110, size: 1152, elements: !195)
!195 = !{!196, !200, !204, !212, !2180, !2184, !2188, !2193, !2197, !2198, !2202, !2206, !2210, !2221, !2222, !2223, !2224, !2234}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !194, file: !187, line: 111, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!190, !190}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !194, file: !187, line: 112, baseType: !201, size: 64, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{null, !190}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !194, file: !187, line: 113, baseType: !205, size: 64, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{!208, !210}
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !157, line: 30, baseType: !209)
!209 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !186)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !194, file: !187, line: 114, baseType: !213, size: 64, offset: 192)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{!216, !210, !218}
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !221)
!221 = !{!222, !1713, !1715, !1718, !1719, !1770, !1867, !1868, !1869, !1870, !1871, !1880, !1985, !1998, !2105, !2106, !2110, !2112, !2113, !2114, !2118, !2124, !2125, !2128, !2129, !2130, !2133, !2134, !2135, !2136, !2168, !2169, !2170, !2173, !2176, !2177, !2178, !2179}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !220, file: !30, line: 462, baseType: !223, size: 512)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !224, line: 64, size: 512, elements: !225)
!224 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!225 = !{!226, !230, !231, !233, !293, !1550, !1703, !1708, !1709, !1710, !1711, !1712}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !223, file: !224, line: 65, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !229)
!229 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !223, file: !224, line: 66, baseType: !169, size: 128, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !223, file: !224, line: 67, baseType: !232, size: 64, offset: 192)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !223, file: !224, line: 68, baseType: !234, size: 64, offset: 256)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !224, line: 192, size: 704, elements: !236)
!236 = !{!237, !238, !254, !255}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !235, file: !224, line: 193, baseType: !169, size: 128)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !235, file: !224, line: 194, baseType: !239, offset: 128)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !240, line: 83, baseType: !241)
!240 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !240, line: 71, elements: !242)
!242 = !{!243}
!243 = !DIDerivedType(tag: DW_TAG_member, scope: !241, file: !240, line: 72, baseType: !244)
!244 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !241, file: !240, line: 72, elements: !245)
!245 = !{!246}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !244, file: !240, line: 73, baseType: !247)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !240, line: 20, elements: !248)
!248 = !{!249}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !247, file: !240, line: 21, baseType: !250)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !251, line: 25, baseType: !252)
!251 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !251, line: 25, elements: !253)
!253 = !{}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !235, file: !224, line: 195, baseType: !223, size: 512, offset: 128)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !235, file: !224, line: 196, baseType: !256, size: 64, offset: 640)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !258)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !224, line: 156, size: 192, elements: !259)
!259 = !{!260, !265, !270}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !258, file: !224, line: 157, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{!182, !234, !232}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !258, file: !224, line: 158, baseType: !266, size: 64, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{!227, !234, !232}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !258, file: !224, line: 159, baseType: !271, size: 64, offset: 128)
!271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{!182, !234, !232, !275}
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !224, line: 148, size: 20736, elements: !277)
!277 = !{!278, !283, !287, !288, !292}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !276, file: !224, line: 149, baseType: !279, size: 192)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !280, size: 192, elements: !281)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!281 = !{!282}
!282 = !DISubrange(count: 3)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !276, file: !224, line: 150, baseType: !284, size: 4096, offset: 192)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !280, size: 4096, elements: !285)
!285 = !{!286}
!286 = !DISubrange(count: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !276, file: !224, line: 151, baseType: !182, size: 32, offset: 4288)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !276, file: !224, line: 152, baseType: !289, size: 16384, offset: 4320)
!289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 16384, elements: !290)
!290 = !{!291}
!291 = !DISubrange(count: 2048)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !276, file: !224, line: 153, baseType: !182, size: 32, offset: 20704)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !223, file: !224, line: 69, baseType: !294, size: 64, offset: 320)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !224, line: 138, size: 448, elements: !296)
!296 = !{!297, !301, !329, !331, !1498, !1529, !1533}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !295, file: !224, line: 139, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{null, !232}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !295, file: !224, line: 140, baseType: !302, size: 64, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !304)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !305, line: 230, size: 128, elements: !306)
!305 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!306 = !{!307, !322}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !304, file: !305, line: 231, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{!311, !232, !315, !280}
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !157, line: 60, baseType: !312)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !313, line: 73, baseType: !314)
!313 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !313, line: 15, baseType: !96)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !305, line: 30, size: 128, elements: !317)
!317 = !{!318, !319}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !316, file: !305, line: 31, baseType: !227, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !316, file: !305, line: 32, baseType: !320, size: 16, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !157, line: 19, baseType: !321)
!321 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !304, file: !305, line: 232, baseType: !323, size: 64, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!311, !232, !315, !227, !326}
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !157, line: 55, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !313, line: 72, baseType: !328)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !313, line: 16, baseType: !158)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !295, file: !224, line: 141, baseType: !330, size: 64, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !295, file: !224, line: 142, baseType: !332, size: 64, offset: 192)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !335)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !305, line: 84, size: 320, elements: !336)
!336 = !{!337, !338, !342, !1495, !1496}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !335, file: !305, line: 85, baseType: !227, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !335, file: !305, line: 86, baseType: !339, size: 64, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{!320, !232, !315, !182}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !335, file: !305, line: 88, baseType: !343, size: 64, offset: 128)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{!320, !232, !346, !182}
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !305, line: 168, size: 448, elements: !348)
!348 = !{!349, !350, !351, !352, !362, !363}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !347, file: !305, line: 169, baseType: !316, size: 128)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !347, file: !305, line: 170, baseType: !326, size: 64, offset: 128)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !347, file: !305, line: 171, baseType: !159, size: 64, offset: 192)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !347, file: !305, line: 172, baseType: !353, size: 64, offset: 256)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{!311, !356, !232, !346, !280, !359, !326}
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !358, line: 526, flags: DIFlagFwdDecl)
!358 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !157, line: 46, baseType: !360)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !313, line: 88, baseType: !361)
!361 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !347, file: !305, line: 174, baseType: !353, size: 64, offset: 320)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !347, file: !305, line: 176, baseType: !364, size: 64, offset: 384)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{!182, !356, !232, !346, !367}
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !369, line: 305, size: 1472, elements: !370)
!369 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!370 = !{!371, !372, !373, !374, !375, !383, !384, !1469, !1475, !1476, !1481, !1482, !1485, !1489, !1490, !1491, !1492, !1493}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !368, file: !369, line: 308, baseType: !158, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !368, file: !369, line: 309, baseType: !158, size: 64, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !368, file: !369, line: 313, baseType: !367, size: 64, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !368, file: !369, line: 313, baseType: !367, size: 64, offset: 192)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !368, file: !369, line: 315, baseType: !376, size: 192, align: 64, offset: 256)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !377, line: 24, size: 192, align: 64, elements: !378)
!377 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!378 = !{!379, !380, !382}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !376, file: !377, line: 25, baseType: !158, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !376, file: !377, line: 26, baseType: !381, size: 64, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !376, file: !377, line: 27, baseType: !381, size: 64, offset: 128)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !368, file: !369, line: 323, baseType: !158, size: 64, offset: 448)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !368, file: !369, line: 327, baseType: !385, size: 64, offset: 512)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !369, line: 388, size: 7296, elements: !387)
!387 = !{!388, !1465}
!388 = !DIDerivedType(tag: DW_TAG_member, scope: !386, file: !369, line: 389, baseType: !389, size: 7296)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !386, file: !369, line: 389, size: 7296, elements: !390)
!390 = !{!391, !392, !396, !400, !404, !405, !406, !407, !408, !416, !421, !422, !423, !424, !433, !434, !435, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !470, !478, !481, !529, !530, !1436, !1437, !1440, !1444, !1445, !1448, !1449, !1450, !1453, !1464}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !389, file: !369, line: 390, baseType: !367, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !389, file: !369, line: 391, baseType: !393, size: 64, offset: 64)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !377, line: 31, size: 64, elements: !394)
!394 = !{!395}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !393, file: !377, line: 32, baseType: !381, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !389, file: !369, line: 392, baseType: !397, size: 64, offset: 128)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !163, line: 23, baseType: !398)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !165, line: 31, baseType: !399)
!399 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !389, file: !369, line: 394, baseType: !401, size: 64, offset: 192)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DISubroutineType(types: !403)
!403 = !{!158, !356, !158, !158, !158, !158}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !389, file: !369, line: 398, baseType: !158, size: 64, offset: 256)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !389, file: !369, line: 399, baseType: !158, size: 64, offset: 320)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !389, file: !369, line: 405, baseType: !158, size: 64, offset: 384)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !389, file: !369, line: 406, baseType: !158, size: 64, offset: 448)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !389, file: !369, line: 407, baseType: !409, size: 64, offset: 512)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !358, line: 286, baseType: !411)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !358, line: 286, size: 64, elements: !412)
!412 = !{!413}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !411, file: !358, line: 286, baseType: !414, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !415, line: 18, baseType: !158)
!415 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!416 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !389, file: !369, line: 416, baseType: !417, size: 32, offset: 576)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !157, line: 168, baseType: !418)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !157, line: 166, size: 32, elements: !419)
!419 = !{!420}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !418, file: !157, line: 167, baseType: !182, size: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !389, file: !369, line: 428, baseType: !417, size: 32, offset: 608)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !389, file: !369, line: 437, baseType: !417, size: 32, offset: 640)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !389, file: !369, line: 447, baseType: !417, size: 32, offset: 672)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !389, file: !369, line: 450, baseType: !425, size: 64, offset: 704)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !426, line: 13, baseType: !427)
!426 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !157, line: 175, baseType: !428)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !157, line: 173, size: 64, elements: !429)
!429 = !{!430}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !428, file: !157, line: 174, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !163, line: 22, baseType: !432)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !165, line: 30, baseType: !361)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !389, file: !369, line: 452, baseType: !182, size: 32, offset: 768)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !389, file: !369, line: 454, baseType: !239, offset: 800)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !389, file: !369, line: 457, baseType: !436, size: 256, offset: 832)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !437, line: 35, size: 256, elements: !438)
!437 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!438 = !{!439, !440, !441, !443}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !436, file: !437, line: 36, baseType: !425, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !436, file: !437, line: 42, baseType: !425, size: 64, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !436, file: !437, line: 46, baseType: !442, offset: 128)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !240, line: 29, baseType: !247)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !436, file: !437, line: 47, baseType: !169, size: 128, offset: 128)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !389, file: !369, line: 459, baseType: !169, size: 128, offset: 1088)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !389, file: !369, line: 466, baseType: !158, size: 64, offset: 1216)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !389, file: !369, line: 467, baseType: !158, size: 64, offset: 1280)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !389, file: !369, line: 469, baseType: !158, size: 64, offset: 1344)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !389, file: !369, line: 470, baseType: !158, size: 64, offset: 1408)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !389, file: !369, line: 471, baseType: !427, size: 64, offset: 1472)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !389, file: !369, line: 472, baseType: !158, size: 64, offset: 1536)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !389, file: !369, line: 473, baseType: !158, size: 64, offset: 1600)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !389, file: !369, line: 474, baseType: !158, size: 64, offset: 1664)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !389, file: !369, line: 475, baseType: !158, size: 64, offset: 1728)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !389, file: !369, line: 477, baseType: !239, offset: 1792)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !389, file: !369, line: 478, baseType: !158, size: 64, offset: 1792)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !389, file: !369, line: 478, baseType: !158, size: 64, offset: 1856)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !389, file: !369, line: 478, baseType: !158, size: 64, offset: 1920)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !389, file: !369, line: 478, baseType: !158, size: 64, offset: 1984)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !389, file: !369, line: 479, baseType: !158, size: 64, offset: 2048)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !389, file: !369, line: 479, baseType: !158, size: 64, offset: 2112)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !389, file: !369, line: 479, baseType: !158, size: 64, offset: 2176)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !389, file: !369, line: 480, baseType: !158, size: 64, offset: 2240)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !389, file: !369, line: 480, baseType: !158, size: 64, offset: 2304)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !389, file: !369, line: 480, baseType: !158, size: 64, offset: 2368)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !389, file: !369, line: 480, baseType: !158, size: 64, offset: 2432)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !389, file: !369, line: 482, baseType: !467, size: 2816, offset: 2496)
!467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 2816, elements: !468)
!468 = !{!469}
!469 = !DISubrange(count: 44)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !389, file: !369, line: 488, baseType: !471, size: 256, offset: 5312)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !472, line: 60, size: 256, elements: !473)
!472 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!473 = !{!474}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !471, file: !472, line: 61, baseType: !475, size: 256)
!475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 256, elements: !476)
!476 = !{!477}
!477 = !DISubrange(count: 4)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !389, file: !369, line: 490, baseType: !479, size: 64, offset: 5568)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !369, line: 490, flags: DIFlagFwdDecl)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !389, file: !369, line: 493, baseType: !482, size: 896, offset: 5632)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !483, line: 53, baseType: !484)
!483 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !483, line: 13, size: 896, elements: !485)
!485 = !{!486, !487, !488, !489, !492, !493, !500, !501, !521, !522, !525}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !484, file: !483, line: 18, baseType: !397, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !484, file: !483, line: 28, baseType: !427, size: 64, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !484, file: !483, line: 31, baseType: !436, size: 256, offset: 128)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !484, file: !483, line: 32, baseType: !490, size: 64, offset: 384)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !483, line: 32, flags: DIFlagFwdDecl)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !484, file: !483, line: 37, baseType: !321, size: 16, offset: 448)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !484, file: !483, line: 40, baseType: !494, size: 192, offset: 512)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !495, line: 53, size: 192, elements: !496)
!495 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!496 = !{!497, !498, !499}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !494, file: !495, line: 54, baseType: !425, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !494, file: !495, line: 55, baseType: !239, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !494, file: !495, line: 59, baseType: !169, size: 128, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !484, file: !483, line: 41, baseType: !159, size: 64, offset: 704)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !484, file: !483, line: 42, baseType: !502, size: 64, offset: 768)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !504)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !505, line: 13, size: 896, elements: !506)
!505 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!506 = !{!507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !504, file: !505, line: 14, baseType: !159, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !504, file: !505, line: 15, baseType: !158, size: 64, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !504, file: !505, line: 17, baseType: !158, size: 64, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !504, file: !505, line: 17, baseType: !158, size: 64, offset: 192)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !504, file: !505, line: 19, baseType: !96, size: 64, offset: 256)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !504, file: !505, line: 21, baseType: !96, size: 64, offset: 320)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !504, file: !505, line: 22, baseType: !96, size: 64, offset: 384)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !504, file: !505, line: 23, baseType: !96, size: 64, offset: 448)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !504, file: !505, line: 24, baseType: !96, size: 64, offset: 512)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !504, file: !505, line: 25, baseType: !96, size: 64, offset: 576)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !504, file: !505, line: 26, baseType: !96, size: 64, offset: 640)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !504, file: !505, line: 27, baseType: !96, size: 64, offset: 704)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !504, file: !505, line: 28, baseType: !96, size: 64, offset: 768)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !504, file: !505, line: 29, baseType: !96, size: 64, offset: 832)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !484, file: !483, line: 44, baseType: !417, size: 32, offset: 832)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !484, file: !483, line: 50, baseType: !523, size: 16, offset: 864)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !163, line: 19, baseType: !524)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !165, line: 24, baseType: !321)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !484, file: !483, line: 51, baseType: !526, size: 16, offset: 880)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !163, line: 18, baseType: !527)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !165, line: 23, baseType: !528)
!528 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !389, file: !369, line: 495, baseType: !158, size: 64, offset: 6528)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !389, file: !369, line: 497, baseType: !531, size: 64, offset: 6592)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !369, line: 381, size: 384, elements: !533)
!533 = !{!534, !535, !1435}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !532, file: !369, line: 382, baseType: !417, size: 32)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !532, file: !369, line: 383, baseType: !536, size: 128, offset: 64)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !369, line: 376, size: 128, elements: !537)
!537 = !{!538, !1433}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !536, file: !369, line: 377, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !541, line: 640, size: 48640, elements: !542)
!541 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!542 = !{!543, !549, !551, !552, !558, !559, !560, !561, !562, !563, !564, !565, !569, !587, !598, !693, !694, !695, !706, !707, !709, !710, !711, !712, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !791, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !847, !849, !850, !851, !863, !865, !866, !867, !868, !869, !875, !876, !877, !878, !879, !880, !881, !893, !898, !903, !904, !905, !908, !912, !915, !918, !921, !924, !928, !931, !934, !940, !941, !942, !948, !949, !950, !951, !952, !961, !962, !963, !964, !965, !970, !971, !972, !975, !976, !979, !982, !985, !988, !991, !994, !995, !1075, !1078, !1081, !1082, !1085, !1086, !1087, !1093, !1094, !1095, !1108, !1109, !1110, !1120, !1125, !1128, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !540, file: !541, line: 646, baseType: !544, size: 128)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !545, line: 56, size: 128, elements: !546)
!545 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!546 = !{!547, !548}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !544, file: !545, line: 57, baseType: !158, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !544, file: !545, line: 58, baseType: !162, size: 32, offset: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !540, file: !541, line: 649, baseType: !550, size: 64, offset: 128)
!550 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !96)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !540, file: !541, line: 657, baseType: !159, size: 64, offset: 192)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !540, file: !541, line: 658, baseType: !553, size: 32, offset: 256)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !554, line: 113, baseType: !555)
!554 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !554, line: 111, size: 32, elements: !556)
!556 = !{!557}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !555, file: !554, line: 112, baseType: !417, size: 32)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !540, file: !541, line: 660, baseType: !7, size: 32, offset: 288)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !540, file: !541, line: 661, baseType: !7, size: 32, offset: 320)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !540, file: !541, line: 684, baseType: !182, size: 32, offset: 352)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !540, file: !541, line: 686, baseType: !182, size: 32, offset: 384)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !540, file: !541, line: 687, baseType: !182, size: 32, offset: 416)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !540, file: !541, line: 688, baseType: !182, size: 32, offset: 448)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !540, file: !541, line: 689, baseType: !7, size: 32, offset: 480)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !540, file: !541, line: 691, baseType: !566, size: 64, offset: 512)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !568)
!568 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !541, line: 691, flags: DIFlagFwdDecl)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !540, file: !541, line: 692, baseType: !570, size: 832, offset: 576)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !541, line: 451, size: 832, elements: !571)
!571 = !{!572, !577, !578, !579, !580, !581, !582, !583, !584, !585}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !570, file: !541, line: 453, baseType: !573, size: 128)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !541, line: 325, size: 128, elements: !574)
!574 = !{!575, !576}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !573, file: !541, line: 326, baseType: !158, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !573, file: !541, line: 327, baseType: !162, size: 32, offset: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !570, file: !541, line: 454, baseType: !376, size: 192, align: 64, offset: 128)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !570, file: !541, line: 455, baseType: !169, size: 128, offset: 320)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !570, file: !541, line: 456, baseType: !7, size: 32, offset: 448)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !570, file: !541, line: 458, baseType: !397, size: 64, offset: 512)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !570, file: !541, line: 459, baseType: !397, size: 64, offset: 576)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !570, file: !541, line: 460, baseType: !397, size: 64, offset: 640)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !570, file: !541, line: 461, baseType: !397, size: 64, offset: 704)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !570, file: !541, line: 463, baseType: !397, size: 64, offset: 768)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !570, file: !541, line: 465, baseType: !586, offset: 832)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !541, line: 415, elements: !253)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !540, file: !541, line: 693, baseType: !588, size: 384, offset: 1408)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !541, line: 489, size: 384, elements: !589)
!589 = !{!590, !591, !592, !593, !594, !595, !596}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !588, file: !541, line: 490, baseType: !169, size: 128)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !588, file: !541, line: 491, baseType: !158, size: 64, offset: 128)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !588, file: !541, line: 492, baseType: !158, size: 64, offset: 192)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !588, file: !541, line: 493, baseType: !7, size: 32, offset: 256)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !588, file: !541, line: 494, baseType: !321, size: 16, offset: 288)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !588, file: !541, line: 495, baseType: !321, size: 16, offset: 304)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !588, file: !541, line: 497, baseType: !597, size: 64, offset: 320)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !540, file: !541, line: 697, baseType: !599, size: 1792, offset: 1792)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !541, line: 507, size: 1792, elements: !600)
!600 = !{!601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !690, !691}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !599, file: !541, line: 508, baseType: !376, size: 192, align: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !599, file: !541, line: 515, baseType: !397, size: 64, offset: 192)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !599, file: !541, line: 516, baseType: !397, size: 64, offset: 256)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !599, file: !541, line: 517, baseType: !397, size: 64, offset: 320)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !599, file: !541, line: 518, baseType: !397, size: 64, offset: 384)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !599, file: !541, line: 519, baseType: !397, size: 64, offset: 448)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !599, file: !541, line: 526, baseType: !431, size: 64, offset: 512)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !599, file: !541, line: 527, baseType: !397, size: 64, offset: 576)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !599, file: !541, line: 528, baseType: !7, size: 32, offset: 640)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !599, file: !541, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !599, file: !541, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !599, file: !541, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !599, file: !541, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !599, file: !541, line: 563, baseType: !615, size: 512, offset: 704)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !616)
!616 = !{!617, !625, !626, !631, !683, !687, !688, !689}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !615, file: !6, line: 119, baseType: !618, size: 256)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !619, line: 9, size: 256, elements: !620)
!619 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!620 = !{!621, !622}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !618, file: !619, line: 10, baseType: !376, size: 192, align: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !618, file: !619, line: 11, baseType: !623, size: 64, offset: 192)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !624, line: 29, baseType: !431)
!624 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!625 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !615, file: !6, line: 120, baseType: !623, size: 64, offset: 256)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !615, file: !6, line: 121, baseType: !627, size: 64, offset: 320)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!5, !630}
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !615, file: !6, line: 122, baseType: !632, size: 64, offset: 384)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !634)
!634 = !{!635, !655, !656, !659, !669, !670, !678, !682}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !633, file: !6, line: 160, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !638)
!638 = !{!639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !637, file: !6, line: 215, baseType: !442)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !637, file: !6, line: 216, baseType: !7, size: 32)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !637, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !637, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !637, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !637, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !637, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !637, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !637, file: !6, line: 233, baseType: !623, size: 64, offset: 128)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !637, file: !6, line: 234, baseType: !630, size: 64, offset: 192)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !637, file: !6, line: 235, baseType: !623, size: 64, offset: 256)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !637, file: !6, line: 236, baseType: !630, size: 64, offset: 320)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !637, file: !6, line: 237, baseType: !652, size: 4096, offset: 512)
!652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !633, size: 4096, elements: !653)
!653 = !{!654}
!654 = !DISubrange(count: 8)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !633, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !633, file: !6, line: 162, baseType: !657, size: 32, offset: 96)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !157, line: 27, baseType: !658)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !313, line: 96, baseType: !182)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !633, file: !6, line: 163, baseType: !660, size: 32, offset: 128)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !661, line: 276, baseType: !662)
!661 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !661, line: 276, size: 32, elements: !663)
!663 = !{!664}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !662, file: !661, line: 276, baseType: !665, size: 32)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !661, line: 70, baseType: !666)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !661, line: 65, size: 32, elements: !667)
!667 = !{!668}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !666, file: !661, line: 66, baseType: !7, size: 32)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !633, file: !6, line: 164, baseType: !630, size: 64, offset: 192)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !633, file: !6, line: 165, baseType: !671, size: 128, offset: 256)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !619, line: 14, size: 128, elements: !672)
!672 = !{!673}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !671, file: !619, line: 15, baseType: !674, size: 128)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !377, line: 125, size: 128, elements: !675)
!675 = !{!676, !677}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !674, file: !377, line: 126, baseType: !393, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !674, file: !377, line: 127, baseType: !381, size: 64, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !633, file: !6, line: 166, baseType: !679, size: 64, offset: 384)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DISubroutineType(types: !681)
!681 = !{!623}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !633, file: !6, line: 167, baseType: !623, size: 64, offset: 448)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !615, file: !6, line: 123, baseType: !684, size: 8, offset: 448)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !163, line: 17, baseType: !685)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !165, line: 21, baseType: !686)
!686 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !615, file: !6, line: 124, baseType: !684, size: 8, offset: 456)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !615, file: !6, line: 125, baseType: !684, size: 8, offset: 464)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !615, file: !6, line: 126, baseType: !684, size: 8, offset: 472)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !599, file: !541, line: 572, baseType: !615, size: 512, offset: 1216)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !599, file: !541, line: 580, baseType: !692, size: 64, offset: 1728)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !540, file: !541, line: 721, baseType: !7, size: 32, offset: 3584)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !540, file: !541, line: 722, baseType: !182, size: 32, offset: 3616)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !540, file: !541, line: 723, baseType: !696, size: 64, offset: 3648)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !698)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !699, line: 17, baseType: !700)
!699 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !699, line: 17, size: 64, elements: !701)
!701 = !{!702}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !700, file: !699, line: 17, baseType: !703, size: 64)
!703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 64, elements: !704)
!704 = !{!705}
!705 = !DISubrange(count: 1)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !540, file: !541, line: 724, baseType: !698, size: 64, offset: 3712)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !540, file: !541, line: 749, baseType: !708, offset: 3776)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !541, line: 290, elements: !253)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !540, file: !541, line: 751, baseType: !169, size: 128, offset: 3776)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !540, file: !541, line: 757, baseType: !385, size: 64, offset: 3904)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !540, file: !541, line: 758, baseType: !385, size: 64, offset: 3968)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !540, file: !541, line: 761, baseType: !713, size: 320, offset: 4032)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !472, line: 34, size: 320, elements: !714)
!714 = !{!715, !716}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !713, file: !472, line: 35, baseType: !397, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !713, file: !472, line: 36, baseType: !717, size: 256, offset: 64)
!717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !367, size: 256, elements: !476)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !540, file: !541, line: 766, baseType: !182, size: 32, offset: 4352)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !540, file: !541, line: 767, baseType: !182, size: 32, offset: 4384)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !540, file: !541, line: 768, baseType: !182, size: 32, offset: 4416)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !540, file: !541, line: 770, baseType: !182, size: 32, offset: 4448)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !540, file: !541, line: 772, baseType: !158, size: 64, offset: 4480)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !540, file: !541, line: 775, baseType: !7, size: 32, offset: 4544)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !540, file: !541, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !540, file: !541, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !540, file: !541, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !540, file: !541, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !540, file: !541, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !540, file: !541, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !540, file: !541, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !540, file: !541, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !540, file: !541, line: 831, baseType: !158, size: 64, offset: 4672)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !540, file: !541, line: 833, baseType: !734, size: 384, offset: 4736)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !735)
!735 = !{!736, !741}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !734, file: !12, line: 26, baseType: !737, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{!96, !740}
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, scope: !734, file: !12, line: 27, baseType: !742, size: 320, offset: 64)
!742 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !734, file: !12, line: 27, size: 320, elements: !743)
!743 = !{!744, !754, !781}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !742, file: !12, line: 36, baseType: !745, size: 320)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !742, file: !12, line: 29, size: 320, elements: !746)
!746 = !{!747, !749, !750, !751, !752, !753}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !745, file: !12, line: 30, baseType: !748, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !745, file: !12, line: 31, baseType: !162, size: 32, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !745, file: !12, line: 32, baseType: !162, size: 32, offset: 96)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !745, file: !12, line: 33, baseType: !162, size: 32, offset: 128)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !745, file: !12, line: 34, baseType: !397, size: 64, offset: 192)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !745, file: !12, line: 35, baseType: !748, size: 64, offset: 256)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !742, file: !12, line: 46, baseType: !755, size: 192)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !742, file: !12, line: 38, size: 192, elements: !756)
!756 = !{!757, !758, !759, !780}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !755, file: !12, line: 39, baseType: !657, size: 32)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !755, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!759 = !DIDerivedType(tag: DW_TAG_member, scope: !755, file: !12, line: 41, baseType: !760, size: 64, offset: 64)
!760 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !755, file: !12, line: 41, size: 64, elements: !761)
!761 = !{!762, !770}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !760, file: !12, line: 42, baseType: !763, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !765, line: 7, size: 128, elements: !766)
!765 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!766 = !{!767, !769}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !764, file: !765, line: 8, baseType: !768, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !313, line: 93, baseType: !361)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !764, file: !765, line: 9, baseType: !361, size: 64, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !760, file: !12, line: 43, baseType: !771, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !773, line: 7, size: 64, elements: !774)
!773 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!774 = !{!775, !779}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !772, file: !773, line: 8, baseType: !776, size: 32)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !773, line: 5, baseType: !777)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !163, line: 20, baseType: !778)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !165, line: 26, baseType: !182)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !772, file: !773, line: 9, baseType: !777, size: 32, offset: 32)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !755, file: !12, line: 45, baseType: !397, size: 64, offset: 128)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !742, file: !12, line: 54, baseType: !782, size: 256)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !742, file: !12, line: 48, size: 256, elements: !783)
!783 = !{!784, !787, !788, !789, !790}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !782, file: !12, line: 49, baseType: !785, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !782, file: !12, line: 50, baseType: !182, size: 32, offset: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !782, file: !12, line: 51, baseType: !182, size: 32, offset: 96)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !782, file: !12, line: 52, baseType: !158, size: 64, offset: 128)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !782, file: !12, line: 53, baseType: !158, size: 64, offset: 192)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !540, file: !541, line: 835, baseType: !792, size: 32, offset: 5120)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !157, line: 22, baseType: !793)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !313, line: 28, baseType: !182)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !540, file: !541, line: 836, baseType: !792, size: 32, offset: 5152)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !540, file: !541, line: 840, baseType: !158, size: 64, offset: 5184)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !540, file: !541, line: 849, baseType: !539, size: 64, offset: 5248)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !540, file: !541, line: 852, baseType: !539, size: 64, offset: 5312)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !540, file: !541, line: 857, baseType: !169, size: 128, offset: 5376)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !540, file: !541, line: 858, baseType: !169, size: 128, offset: 5504)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !540, file: !541, line: 859, baseType: !539, size: 64, offset: 5632)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !540, file: !541, line: 867, baseType: !169, size: 128, offset: 5696)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !540, file: !541, line: 868, baseType: !169, size: 128, offset: 5824)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !540, file: !541, line: 871, baseType: !804, size: 64, offset: 5952)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !806, line: 59, size: 768, elements: !807)
!806 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!807 = !{!808, !809, !810, !811, !822, !823, !830, !839}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !805, file: !806, line: 61, baseType: !553, size: 32)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !805, file: !806, line: 62, baseType: !7, size: 32, offset: 32)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !805, file: !806, line: 63, baseType: !239, offset: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !805, file: !806, line: 65, baseType: !812, size: 256, offset: 64)
!812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !813, size: 256, elements: !476)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !157, line: 182, size: 64, elements: !814)
!814 = !{!815}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !813, file: !157, line: 183, baseType: !816, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !157, line: 186, size: 128, elements: !818)
!818 = !{!819, !820}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !817, file: !157, line: 187, baseType: !816, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !817, file: !157, line: 187, baseType: !821, size: 64, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !805, file: !806, line: 66, baseType: !813, size: 64, offset: 320)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !805, file: !806, line: 68, baseType: !824, size: 128, offset: 384)
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !825, line: 40, baseType: !826)
!825 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !825, line: 36, size: 128, elements: !827)
!827 = !{!828, !829}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !826, file: !825, line: 37, baseType: !239)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !826, file: !825, line: 38, baseType: !169, size: 128)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !805, file: !806, line: 69, baseType: !831, size: 128, align: 64, offset: 512)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !157, line: 216, size: 128, align: 64, elements: !832)
!832 = !{!833, !835}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !831, file: !157, line: 217, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !831, file: !157, line: 218, baseType: !836, size: 64, offset: 64)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{null, !834}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !805, file: !806, line: 70, baseType: !840, size: 128, offset: 640)
!840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !841, size: 128, elements: !704)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !806, line: 54, size: 128, elements: !842)
!842 = !{!843, !844}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !841, file: !806, line: 55, baseType: !182, size: 32)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !841, file: !806, line: 56, baseType: !845, size: 64, offset: 64)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !806, line: 56, flags: DIFlagFwdDecl)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !540, file: !541, line: 872, baseType: !848, size: 512, offset: 6016)
!848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !817, size: 512, elements: !476)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !540, file: !541, line: 873, baseType: !169, size: 128, offset: 6528)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !540, file: !541, line: 874, baseType: !169, size: 128, offset: 6656)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !540, file: !541, line: 876, baseType: !852, size: 64, offset: 6784)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !854, line: 26, size: 192, elements: !855)
!854 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!855 = !{!856, !857}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !853, file: !854, line: 27, baseType: !7, size: 32)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !853, file: !854, line: 28, baseType: !858, size: 128, offset: 64)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !859, line: 43, size: 128, elements: !860)
!859 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!860 = !{!861, !862}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !858, file: !859, line: 44, baseType: !442)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !858, file: !859, line: 45, baseType: !169, size: 128)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !540, file: !541, line: 879, baseType: !864, size: 64, offset: 6848)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !540, file: !541, line: 882, baseType: !864, size: 64, offset: 6912)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !540, file: !541, line: 884, baseType: !397, size: 64, offset: 6976)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !540, file: !541, line: 885, baseType: !397, size: 64, offset: 7040)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !540, file: !541, line: 890, baseType: !397, size: 64, offset: 7104)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !540, file: !541, line: 891, baseType: !870, size: 128, offset: 7168)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !541, line: 242, size: 128, elements: !871)
!871 = !{!872, !873, !874}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !870, file: !541, line: 244, baseType: !397, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !870, file: !541, line: 245, baseType: !397, size: 64, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !870, file: !541, line: 246, baseType: !442, offset: 128)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !540, file: !541, line: 900, baseType: !158, size: 64, offset: 7296)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !540, file: !541, line: 901, baseType: !158, size: 64, offset: 7360)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !540, file: !541, line: 904, baseType: !397, size: 64, offset: 7424)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !540, file: !541, line: 907, baseType: !397, size: 64, offset: 7488)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !540, file: !541, line: 910, baseType: !158, size: 64, offset: 7552)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !540, file: !541, line: 911, baseType: !158, size: 64, offset: 7616)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !540, file: !541, line: 914, baseType: !882, size: 640, offset: 7680)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !883, line: 123, size: 640, elements: !884)
!883 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!884 = !{!885, !891, !892}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !882, file: !883, line: 124, baseType: !886, size: 576)
!886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !887, size: 576, elements: !281)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !883, line: 108, size: 192, elements: !888)
!888 = !{!889, !890}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !887, file: !883, line: 109, baseType: !397, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !887, file: !883, line: 110, baseType: !671, size: 128, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !882, file: !883, line: 125, baseType: !7, size: 32, offset: 576)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !882, file: !883, line: 126, baseType: !7, size: 32, offset: 608)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !540, file: !541, line: 917, baseType: !894, size: 192, offset: 8320)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !883, line: 134, size: 192, elements: !895)
!895 = !{!896, !897}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !894, file: !883, line: 135, baseType: !831, size: 128, align: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !894, file: !883, line: 136, baseType: !7, size: 32, offset: 128)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !540, file: !541, line: 923, baseType: !899, size: 64, offset: 8512)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !901)
!901 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !902, line: 11, flags: DIFlagFwdDecl)
!902 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/lizy2001/genbc/linux")
!903 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !540, file: !541, line: 926, baseType: !899, size: 64, offset: 8576)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !540, file: !541, line: 929, baseType: !899, size: 64, offset: 8640)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !540, file: !541, line: 933, baseType: !906, size: 64, offset: 8704)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !541, line: 933, flags: DIFlagFwdDecl)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !540, file: !541, line: 943, baseType: !909, size: 128, offset: 8768)
!909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 128, elements: !910)
!910 = !{!911}
!911 = !DISubrange(count: 16)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !540, file: !541, line: 945, baseType: !913, size: 64, offset: 8896)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !541, line: 49, flags: DIFlagFwdDecl)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !540, file: !541, line: 956, baseType: !916, size: 64, offset: 8960)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !541, line: 45, flags: DIFlagFwdDecl)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !540, file: !541, line: 959, baseType: !919, size: 64, offset: 9024)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !541, line: 959, flags: DIFlagFwdDecl)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !540, file: !541, line: 962, baseType: !922, size: 64, offset: 9088)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !541, line: 66, flags: DIFlagFwdDecl)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !540, file: !541, line: 966, baseType: !925, size: 64, offset: 9152)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !927, line: 35, flags: DIFlagFwdDecl)
!927 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!928 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !540, file: !541, line: 969, baseType: !929, size: 64, offset: 9216)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !883, line: 223, flags: DIFlagFwdDecl)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !540, file: !541, line: 970, baseType: !932, size: 64, offset: 9280)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !541, line: 62, flags: DIFlagFwdDecl)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !540, file: !541, line: 971, baseType: !935, size: 64, offset: 9344)
!935 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !936, line: 25, baseType: !937)
!936 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !936, line: 23, size: 64, elements: !938)
!938 = !{!939}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !937, file: !936, line: 24, baseType: !703, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !540, file: !541, line: 972, baseType: !935, size: 64, offset: 9408)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !540, file: !541, line: 974, baseType: !935, size: 64, offset: 9472)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !540, file: !541, line: 975, baseType: !943, size: 192, offset: 9536)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !944, line: 30, size: 192, elements: !945)
!944 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!945 = !{!946, !947}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !943, file: !944, line: 31, baseType: !169, size: 128)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !943, file: !944, line: 32, baseType: !935, size: 64, offset: 128)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !540, file: !541, line: 976, baseType: !158, size: 64, offset: 9728)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !540, file: !541, line: 977, baseType: !326, size: 64, offset: 9792)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !540, file: !541, line: 978, baseType: !7, size: 32, offset: 9856)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !540, file: !541, line: 980, baseType: !834, size: 64, offset: 9920)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !540, file: !541, line: 989, baseType: !953, size: 128, offset: 9984)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !954, line: 35, size: 128, elements: !955)
!954 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!955 = !{!956, !957, !958}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !953, file: !954, line: 36, baseType: !182, size: 32)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !953, file: !954, line: 37, baseType: !417, size: 32, offset: 32)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !953, file: !954, line: 38, baseType: !959, size: 64, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !954, line: 23, flags: DIFlagFwdDecl)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !540, file: !541, line: 992, baseType: !397, size: 64, offset: 10112)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !540, file: !541, line: 993, baseType: !397, size: 64, offset: 10176)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !540, file: !541, line: 996, baseType: !239, offset: 10240)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !540, file: !541, line: 999, baseType: !442, offset: 10240)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !540, file: !541, line: 1001, baseType: !966, size: 64, offset: 10240)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !541, line: 636, size: 64, elements: !967)
!967 = !{!968}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !966, file: !541, line: 637, baseType: !969, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !540, file: !541, line: 1005, baseType: !674, size: 128, offset: 10304)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !540, file: !541, line: 1007, baseType: !539, size: 64, offset: 10432)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !540, file: !541, line: 1009, baseType: !973, size: 64, offset: 10496)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !541, line: 1009, flags: DIFlagFwdDecl)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !540, file: !541, line: 1043, baseType: !159, size: 64, offset: 10560)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !540, file: !541, line: 1046, baseType: !977, size: 64, offset: 10624)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !541, line: 41, flags: DIFlagFwdDecl)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !540, file: !541, line: 1050, baseType: !980, size: 64, offset: 10688)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !541, line: 42, flags: DIFlagFwdDecl)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !540, file: !541, line: 1054, baseType: !983, size: 64, offset: 10752)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !541, line: 55, flags: DIFlagFwdDecl)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !540, file: !541, line: 1056, baseType: !986, size: 64, offset: 10816)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !541, line: 40, flags: DIFlagFwdDecl)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !540, file: !541, line: 1058, baseType: !989, size: 64, offset: 10880)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !541, line: 47, flags: DIFlagFwdDecl)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !540, file: !541, line: 1061, baseType: !992, size: 64, offset: 10944)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !541, line: 43, flags: DIFlagFwdDecl)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !540, file: !541, line: 1064, baseType: !158, size: 64, offset: 11008)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !540, file: !541, line: 1065, baseType: !996, size: 64, offset: 11072)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !944, line: 14, baseType: !998)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !944, line: 12, size: 384, elements: !999)
!999 = !{!1000}
!1000 = !DIDerivedType(tag: DW_TAG_member, scope: !998, file: !944, line: 13, baseType: !1001, size: 384)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !998, file: !944, line: 13, size: 384, elements: !1002)
!1002 = !{!1003, !1004, !1005, !1006}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1001, file: !944, line: 13, baseType: !182, size: 32)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1001, file: !944, line: 13, baseType: !182, size: 32, offset: 32)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1001, file: !944, line: 13, baseType: !182, size: 32, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1001, file: !944, line: 13, baseType: !1007, size: 256, offset: 128)
!1007 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1008, line: 32, size: 256, elements: !1009)
!1008 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1009 = !{!1010, !1016, !1029, !1035, !1044, !1064, !1069}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1007, file: !1008, line: 37, baseType: !1011, size: 64)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1007, file: !1008, line: 34, size: 64, elements: !1012)
!1012 = !{!1013, !1014}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1011, file: !1008, line: 35, baseType: !793, size: 32)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1011, file: !1008, line: 36, baseType: !1015, size: 32, offset: 32)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !313, line: 49, baseType: !7)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1007, file: !1008, line: 45, baseType: !1017, size: 192)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1007, file: !1008, line: 40, size: 192, elements: !1018)
!1018 = !{!1019, !1021, !1022, !1028}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1017, file: !1008, line: 41, baseType: !1020, size: 32)
!1020 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !313, line: 95, baseType: !182)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1017, file: !1008, line: 42, baseType: !182, size: 32, offset: 32)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1017, file: !1008, line: 43, baseType: !1023, size: 64, offset: 64)
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1008, line: 11, baseType: !1024)
!1024 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1008, line: 8, size: 64, elements: !1025)
!1025 = !{!1026, !1027}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1024, file: !1008, line: 9, baseType: !182, size: 32)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1024, file: !1008, line: 10, baseType: !159, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1017, file: !1008, line: 44, baseType: !182, size: 32, offset: 128)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1007, file: !1008, line: 52, baseType: !1030, size: 128)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1007, file: !1008, line: 48, size: 128, elements: !1031)
!1031 = !{!1032, !1033, !1034}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1030, file: !1008, line: 49, baseType: !793, size: 32)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1030, file: !1008, line: 50, baseType: !1015, size: 32, offset: 32)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1030, file: !1008, line: 51, baseType: !1023, size: 64, offset: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1007, file: !1008, line: 61, baseType: !1036, size: 256)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1007, file: !1008, line: 55, size: 256, elements: !1037)
!1037 = !{!1038, !1039, !1040, !1041, !1043}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1036, file: !1008, line: 56, baseType: !793, size: 32)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1036, file: !1008, line: 57, baseType: !1015, size: 32, offset: 32)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1036, file: !1008, line: 58, baseType: !182, size: 32, offset: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1036, file: !1008, line: 59, baseType: !1042, size: 64, offset: 128)
!1042 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !313, line: 94, baseType: !314)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1036, file: !1008, line: 60, baseType: !1042, size: 64, offset: 192)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1007, file: !1008, line: 95, baseType: !1045, size: 256)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1007, file: !1008, line: 64, size: 256, elements: !1046)
!1046 = !{!1047, !1048}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1045, file: !1008, line: 65, baseType: !159, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, scope: !1045, file: !1008, line: 77, baseType: !1049, size: 192, offset: 64)
!1049 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1045, file: !1008, line: 77, size: 192, elements: !1050)
!1050 = !{!1051, !1052, !1059}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1049, file: !1008, line: 82, baseType: !528, size: 16)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1049, file: !1008, line: 88, baseType: !1053, size: 192)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1049, file: !1008, line: 84, size: 192, elements: !1054)
!1054 = !{!1055, !1057, !1058}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1053, file: !1008, line: 85, baseType: !1056, size: 64)
!1056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 64, elements: !653)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1053, file: !1008, line: 86, baseType: !159, size: 64, offset: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1053, file: !1008, line: 87, baseType: !159, size: 64, offset: 128)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1049, file: !1008, line: 93, baseType: !1060, size: 96)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1049, file: !1008, line: 90, size: 96, elements: !1061)
!1061 = !{!1062, !1063}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1060, file: !1008, line: 91, baseType: !1056, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1060, file: !1008, line: 92, baseType: !164, size: 32, offset: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1007, file: !1008, line: 101, baseType: !1065, size: 128)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1007, file: !1008, line: 98, size: 128, elements: !1066)
!1066 = !{!1067, !1068}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1065, file: !1008, line: 99, baseType: !96, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1065, file: !1008, line: 100, baseType: !182, size: 32, offset: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1007, file: !1008, line: 108, baseType: !1070, size: 128)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1007, file: !1008, line: 104, size: 128, elements: !1071)
!1071 = !{!1072, !1073, !1074}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1070, file: !1008, line: 105, baseType: !159, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1070, file: !1008, line: 106, baseType: !182, size: 32, offset: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1070, file: !1008, line: 107, baseType: !7, size: 32, offset: 96)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !540, file: !541, line: 1067, baseType: !1076, offset: 11136)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1077, line: 12, elements: !253)
!1077 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !540, file: !541, line: 1099, baseType: !1079, size: 64, offset: 11136)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !541, line: 56, flags: DIFlagFwdDecl)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !540, file: !541, line: 1103, baseType: !169, size: 128, offset: 11200)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !540, file: !541, line: 1104, baseType: !1083, size: 64, offset: 11328)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !541, line: 46, flags: DIFlagFwdDecl)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !540, file: !541, line: 1105, baseType: !494, size: 192, offset: 11392)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !540, file: !541, line: 1106, baseType: !7, size: 32, offset: 11584)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !540, file: !541, line: 1109, baseType: !1088, size: 128, offset: 11648)
!1088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1089, size: 128, elements: !1091)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !541, line: 51, flags: DIFlagFwdDecl)
!1091 = !{!1092}
!1092 = !DISubrange(count: 2)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !540, file: !541, line: 1110, baseType: !494, size: 192, offset: 11776)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !540, file: !541, line: 1111, baseType: !169, size: 128, offset: 11968)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !540, file: !541, line: 1173, baseType: !1096, size: 64, offset: 12096)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1098, line: 62, size: 256, align: 256, elements: !1099)
!1098 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1099 = !{!1100, !1101, !1102, !1107}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1097, file: !1098, line: 75, baseType: !164, size: 32)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1097, file: !1098, line: 90, baseType: !164, size: 32, offset: 32)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1097, file: !1098, line: 124, baseType: !1103, size: 64, offset: 64)
!1103 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1097, file: !1098, line: 109, size: 64, elements: !1104)
!1104 = !{!1105, !1106}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1103, file: !1098, line: 110, baseType: !398, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1103, file: !1098, line: 112, baseType: !398, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1097, file: !1098, line: 144, baseType: !164, size: 32, offset: 128)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !540, file: !541, line: 1174, baseType: !162, size: 32, offset: 12160)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !540, file: !541, line: 1179, baseType: !158, size: 64, offset: 12224)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !540, file: !541, line: 1182, baseType: !1111, size: 128, offset: 12288)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !472, line: 76, size: 128, elements: !1112)
!1112 = !{!1113, !1118, !1119}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1111, file: !472, line: 85, baseType: !1114, size: 64)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1115, line: 7, size: 64, elements: !1116)
!1115 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1116 = !{!1117}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1114, file: !1115, line: 12, baseType: !700, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1111, file: !472, line: 88, baseType: !208, size: 8, offset: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1111, file: !472, line: 95, baseType: !208, size: 8, offset: 72)
!1120 = !DIDerivedType(tag: DW_TAG_member, scope: !540, file: !541, line: 1184, baseType: !1121, size: 128, offset: 12416)
!1121 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !540, file: !541, line: 1184, size: 128, elements: !1122)
!1122 = !{!1123, !1124}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1121, file: !541, line: 1185, baseType: !553, size: 32)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1121, file: !541, line: 1186, baseType: !831, size: 128, align: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !540, file: !541, line: 1190, baseType: !1126, size: 64, offset: 12544)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !541, line: 53, flags: DIFlagFwdDecl)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !540, file: !541, line: 1192, baseType: !1129, size: 128, offset: 12608)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !472, line: 64, size: 128, elements: !1130)
!1130 = !{!1131, !1224, !1225}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1129, file: !472, line: 65, baseType: !1132, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !369, line: 68, size: 512, align: 128, elements: !1134)
!1134 = !{!1135, !1136, !1216, !1223}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1133, file: !369, line: 69, baseType: !158, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, scope: !1133, file: !369, line: 77, baseType: !1137, size: 320, offset: 64)
!1137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1133, file: !369, line: 77, size: 320, elements: !1138)
!1138 = !{!1139, !1148, !1153, !1181, !1189, !1195, !1208, !1215}
!1139 = !DIDerivedType(tag: DW_TAG_member, scope: !1137, file: !369, line: 78, baseType: !1140, size: 320)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1137, file: !369, line: 78, size: 320, elements: !1141)
!1141 = !{!1142, !1143, !1146, !1147}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1140, file: !369, line: 84, baseType: !169, size: 128)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1140, file: !369, line: 86, baseType: !1144, size: 64, offset: 128)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !369, line: 26, flags: DIFlagFwdDecl)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1140, file: !369, line: 87, baseType: !158, size: 64, offset: 192)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1140, file: !369, line: 94, baseType: !158, size: 64, offset: 256)
!1148 = !DIDerivedType(tag: DW_TAG_member, scope: !1137, file: !369, line: 96, baseType: !1149, size: 64)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1137, file: !369, line: 96, size: 64, elements: !1150)
!1150 = !{!1151}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1149, file: !369, line: 101, baseType: !1152, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !157, line: 143, baseType: !397)
!1153 = !DIDerivedType(tag: DW_TAG_member, scope: !1137, file: !369, line: 103, baseType: !1154, size: 320)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1137, file: !369, line: 103, size: 320, elements: !1155)
!1155 = !{!1156, !1166, !1169, !1170}
!1156 = !DIDerivedType(tag: DW_TAG_member, scope: !1154, file: !369, line: 104, baseType: !1157, size: 128)
!1157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1154, file: !369, line: 104, size: 128, elements: !1158)
!1158 = !{!1159, !1160}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1157, file: !369, line: 105, baseType: !169, size: 128)
!1160 = !DIDerivedType(tag: DW_TAG_member, scope: !1157, file: !369, line: 106, baseType: !1161, size: 128)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1157, file: !369, line: 106, size: 128, elements: !1162)
!1162 = !{!1163, !1164, !1165}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1161, file: !369, line: 107, baseType: !1132, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1161, file: !369, line: 109, baseType: !182, size: 32, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1161, file: !369, line: 110, baseType: !182, size: 32, offset: 96)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1154, file: !369, line: 117, baseType: !1167, size: 64, offset: 128)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !369, line: 117, flags: DIFlagFwdDecl)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1154, file: !369, line: 119, baseType: !159, size: 64, offset: 192)
!1170 = !DIDerivedType(tag: DW_TAG_member, scope: !1154, file: !369, line: 120, baseType: !1171, size: 64, offset: 256)
!1171 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1154, file: !369, line: 120, size: 64, elements: !1172)
!1172 = !{!1173, !1174, !1175}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1171, file: !369, line: 121, baseType: !159, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1171, file: !369, line: 122, baseType: !158, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, scope: !1171, file: !369, line: 123, baseType: !1176, size: 32)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1171, file: !369, line: 123, size: 32, elements: !1177)
!1177 = !{!1178, !1179, !1180}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1176, file: !369, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1176, file: !369, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1176, file: !369, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1181 = !DIDerivedType(tag: DW_TAG_member, scope: !1137, file: !369, line: 130, baseType: !1182, size: 192)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1137, file: !369, line: 130, size: 192, elements: !1183)
!1183 = !{!1184, !1185, !1186, !1187, !1188}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1182, file: !369, line: 131, baseType: !158, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1182, file: !369, line: 134, baseType: !686, size: 8, offset: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1182, file: !369, line: 135, baseType: !686, size: 8, offset: 72)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1182, file: !369, line: 136, baseType: !417, size: 32, offset: 96)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1182, file: !369, line: 137, baseType: !7, size: 32, offset: 128)
!1189 = !DIDerivedType(tag: DW_TAG_member, scope: !1137, file: !369, line: 139, baseType: !1190, size: 256)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1137, file: !369, line: 139, size: 256, elements: !1191)
!1191 = !{!1192, !1193, !1194}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1190, file: !369, line: 140, baseType: !158, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1190, file: !369, line: 141, baseType: !417, size: 32, offset: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1190, file: !369, line: 143, baseType: !169, size: 128, offset: 128)
!1195 = !DIDerivedType(tag: DW_TAG_member, scope: !1137, file: !369, line: 145, baseType: !1196, size: 256)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1137, file: !369, line: 145, size: 256, elements: !1197)
!1197 = !{!1198, !1199, !1201, !1202, !1207}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1196, file: !369, line: 146, baseType: !158, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1196, file: !369, line: 147, baseType: !1200, size: 64, offset: 64)
!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !358, line: 509, baseType: !1132)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1196, file: !369, line: 148, baseType: !158, size: 64, offset: 128)
!1202 = !DIDerivedType(tag: DW_TAG_member, scope: !1196, file: !369, line: 149, baseType: !1203, size: 64, offset: 192)
!1203 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1196, file: !369, line: 149, size: 64, elements: !1204)
!1204 = !{!1205, !1206}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1203, file: !369, line: 150, baseType: !385, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1203, file: !369, line: 151, baseType: !417, size: 32)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1196, file: !369, line: 156, baseType: !239, offset: 256)
!1208 = !DIDerivedType(tag: DW_TAG_member, scope: !1137, file: !369, line: 159, baseType: !1209, size: 128)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1137, file: !369, line: 159, size: 128, elements: !1210)
!1210 = !{!1211, !1214}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1209, file: !369, line: 161, baseType: !1212, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !369, line: 161, flags: DIFlagFwdDecl)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1209, file: !369, line: 162, baseType: !159, size: 64, offset: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1137, file: !369, line: 176, baseType: !831, size: 128, align: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, scope: !1133, file: !369, line: 179, baseType: !1217, size: 32, offset: 384)
!1217 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1133, file: !369, line: 179, size: 32, elements: !1218)
!1218 = !{!1219, !1220, !1221, !1222}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1217, file: !369, line: 184, baseType: !417, size: 32)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1217, file: !369, line: 192, baseType: !7, size: 32)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1217, file: !369, line: 194, baseType: !7, size: 32)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1217, file: !369, line: 195, baseType: !182, size: 32)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1133, file: !369, line: 199, baseType: !417, size: 32, offset: 416)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1129, file: !472, line: 67, baseType: !164, size: 32, offset: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1129, file: !472, line: 68, baseType: !164, size: 32, offset: 96)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !540, file: !541, line: 1206, baseType: !182, size: 32, offset: 12736)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !540, file: !541, line: 1207, baseType: !182, size: 32, offset: 12768)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !540, file: !541, line: 1209, baseType: !158, size: 64, offset: 12800)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !540, file: !541, line: 1219, baseType: !397, size: 64, offset: 12864)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !540, file: !541, line: 1220, baseType: !397, size: 64, offset: 12928)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !540, file: !541, line: 1317, baseType: !182, size: 32, offset: 12992)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !540, file: !541, line: 1319, baseType: !539, size: 64, offset: 13056)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !540, file: !541, line: 1322, baseType: !1234, size: 64, offset: 13120)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1236, line: 56, size: 512, elements: !1237)
!1236 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1237 = !{!1238, !1239, !1240, !1241, !1242, !1244, !1245, !1247}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1235, file: !1236, line: 57, baseType: !1234, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1235, file: !1236, line: 58, baseType: !159, size: 64, offset: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1235, file: !1236, line: 59, baseType: !158, size: 64, offset: 128)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1235, file: !1236, line: 60, baseType: !158, size: 64, offset: 192)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1235, file: !1236, line: 61, baseType: !1243, size: 64, offset: 256)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1235, file: !1236, line: 62, baseType: !7, size: 32, offset: 320)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1235, file: !1236, line: 63, baseType: !1246, size: 64, offset: 384)
!1246 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !157, line: 153, baseType: !397)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1235, file: !1236, line: 64, baseType: !216, size: 64, offset: 448)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !540, file: !541, line: 1326, baseType: !553, size: 32, offset: 13184)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !540, file: !541, line: 1342, baseType: !159, size: 64, offset: 13248)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !540, file: !541, line: 1343, baseType: !398, size: 64, offset: 13312)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !540, file: !541, line: 1344, baseType: !397, size: 64, offset: 13376)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !540, file: !541, line: 1345, baseType: !398, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !540, file: !541, line: 1346, baseType: !398, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !540, file: !541, line: 1347, baseType: !398, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !540, file: !541, line: 1348, baseType: !831, size: 128, align: 64, offset: 13504)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !540, file: !541, line: 1358, baseType: !1257, size: 34816, offset: 13824)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1258, line: 485, size: 34816, elements: !1259)
!1258 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1259 = !{!1260, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1289, !1290, !1291, !1292, !1293, !1294, !1297, !1298, !1299}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1257, file: !1258, line: 487, baseType: !1261, size: 192)
!1261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1262, size: 192, elements: !281)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1263, line: 16, size: 64, elements: !1264)
!1263 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1264 = !{!1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1262, file: !1263, line: 17, baseType: !523, size: 16)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1262, file: !1263, line: 18, baseType: !523, size: 16, offset: 16)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1262, file: !1263, line: 19, baseType: !523, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1262, file: !1263, line: 19, baseType: !523, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1262, file: !1263, line: 19, baseType: !523, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1262, file: !1263, line: 19, baseType: !523, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1262, file: !1263, line: 19, baseType: !523, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1262, file: !1263, line: 20, baseType: !523, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1262, file: !1263, line: 20, baseType: !523, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1262, file: !1263, line: 20, baseType: !523, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1262, file: !1263, line: 20, baseType: !523, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1262, file: !1263, line: 20, baseType: !523, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1262, file: !1263, line: 20, baseType: !523, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1257, file: !1258, line: 491, baseType: !158, size: 64, offset: 192)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1257, file: !1258, line: 495, baseType: !321, size: 16, offset: 256)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1257, file: !1258, line: 496, baseType: !321, size: 16, offset: 272)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1257, file: !1258, line: 497, baseType: !321, size: 16, offset: 288)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1257, file: !1258, line: 498, baseType: !321, size: 16, offset: 304)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1257, file: !1258, line: 502, baseType: !158, size: 64, offset: 320)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1257, file: !1258, line: 503, baseType: !158, size: 64, offset: 384)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1257, file: !1258, line: 514, baseType: !1286, size: 256, offset: 448)
!1286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1287, size: 256, elements: !476)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1258, line: 483, flags: DIFlagFwdDecl)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1257, file: !1258, line: 516, baseType: !158, size: 64, offset: 704)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1257, file: !1258, line: 518, baseType: !158, size: 64, offset: 768)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1257, file: !1258, line: 520, baseType: !158, size: 64, offset: 832)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1257, file: !1258, line: 521, baseType: !158, size: 64, offset: 896)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1257, file: !1258, line: 522, baseType: !158, size: 64, offset: 960)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1257, file: !1258, line: 528, baseType: !1295, size: 64, offset: 1024)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1258, line: 10, flags: DIFlagFwdDecl)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1257, file: !1258, line: 535, baseType: !158, size: 64, offset: 1088)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1257, file: !1258, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1257, file: !1258, line: 540, baseType: !1300, size: 33280, offset: 1536)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1301, line: 317, size: 33280, elements: !1302)
!1301 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1302 = !{!1303, !1304, !1305}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1300, file: !1301, line: 330, baseType: !7, size: 32)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1300, file: !1301, line: 337, baseType: !158, size: 64, offset: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1300, file: !1301, line: 348, baseType: !1306, size: 32768, offset: 512)
!1306 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1301, line: 304, size: 32768, elements: !1307)
!1307 = !{!1308, !1323, !1362, !1412, !1429}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1306, file: !1301, line: 305, baseType: !1309, size: 896)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1301, line: 12, size: 896, elements: !1310)
!1310 = !{!1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1322}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1309, file: !1301, line: 13, baseType: !162, size: 32)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1309, file: !1301, line: 14, baseType: !162, size: 32, offset: 32)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1309, file: !1301, line: 15, baseType: !162, size: 32, offset: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1309, file: !1301, line: 16, baseType: !162, size: 32, offset: 96)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1309, file: !1301, line: 17, baseType: !162, size: 32, offset: 128)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1309, file: !1301, line: 18, baseType: !162, size: 32, offset: 160)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1309, file: !1301, line: 19, baseType: !162, size: 32, offset: 192)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1309, file: !1301, line: 22, baseType: !1319, size: 640, offset: 224)
!1319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 640, elements: !1320)
!1320 = !{!1321}
!1321 = !DISubrange(count: 20)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1309, file: !1301, line: 25, baseType: !162, size: 32, offset: 864)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1306, file: !1301, line: 306, baseType: !1324, size: 4096, align: 128)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1301, line: 34, size: 4096, align: 128, elements: !1325)
!1325 = !{!1326, !1327, !1328, !1329, !1330, !1345, !1346, !1347, !1351, !1353, !1357}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1324, file: !1301, line: 35, baseType: !523, size: 16)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1324, file: !1301, line: 36, baseType: !523, size: 16, offset: 16)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1324, file: !1301, line: 37, baseType: !523, size: 16, offset: 32)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1324, file: !1301, line: 38, baseType: !523, size: 16, offset: 48)
!1330 = !DIDerivedType(tag: DW_TAG_member, scope: !1324, file: !1301, line: 39, baseType: !1331, size: 128, offset: 64)
!1331 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1324, file: !1301, line: 39, size: 128, elements: !1332)
!1332 = !{!1333, !1338}
!1333 = !DIDerivedType(tag: DW_TAG_member, scope: !1331, file: !1301, line: 40, baseType: !1334, size: 128)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1331, file: !1301, line: 40, size: 128, elements: !1335)
!1335 = !{!1336, !1337}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1334, file: !1301, line: 41, baseType: !397, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1334, file: !1301, line: 42, baseType: !397, size: 64, offset: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, scope: !1331, file: !1301, line: 44, baseType: !1339, size: 128)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1331, file: !1301, line: 44, size: 128, elements: !1340)
!1340 = !{!1341, !1342, !1343, !1344}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1339, file: !1301, line: 45, baseType: !162, size: 32)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1339, file: !1301, line: 46, baseType: !162, size: 32, offset: 32)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1339, file: !1301, line: 47, baseType: !162, size: 32, offset: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1339, file: !1301, line: 48, baseType: !162, size: 32, offset: 96)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1324, file: !1301, line: 51, baseType: !162, size: 32, offset: 192)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1324, file: !1301, line: 52, baseType: !162, size: 32, offset: 224)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1324, file: !1301, line: 55, baseType: !1348, size: 1024, offset: 256)
!1348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 1024, elements: !1349)
!1349 = !{!1350}
!1350 = !DISubrange(count: 32)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1324, file: !1301, line: 58, baseType: !1352, size: 2048, offset: 1280)
!1352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 2048, elements: !285)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1324, file: !1301, line: 60, baseType: !1354, size: 384, offset: 3328)
!1354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 384, elements: !1355)
!1355 = !{!1356}
!1356 = !DISubrange(count: 12)
!1357 = !DIDerivedType(tag: DW_TAG_member, scope: !1324, file: !1301, line: 62, baseType: !1358, size: 384, offset: 3712)
!1358 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1324, file: !1301, line: 62, size: 384, elements: !1359)
!1359 = !{!1360, !1361}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1358, file: !1301, line: 63, baseType: !1354, size: 384)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1358, file: !1301, line: 64, baseType: !1354, size: 384)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1306, file: !1301, line: 307, baseType: !1363, size: 1088)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1301, line: 79, size: 1088, elements: !1364)
!1364 = !{!1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1411}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1363, file: !1301, line: 80, baseType: !162, size: 32)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1363, file: !1301, line: 81, baseType: !162, size: 32, offset: 32)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1363, file: !1301, line: 82, baseType: !162, size: 32, offset: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1363, file: !1301, line: 83, baseType: !162, size: 32, offset: 96)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1363, file: !1301, line: 84, baseType: !162, size: 32, offset: 128)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1363, file: !1301, line: 85, baseType: !162, size: 32, offset: 160)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1363, file: !1301, line: 86, baseType: !162, size: 32, offset: 192)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1363, file: !1301, line: 88, baseType: !1319, size: 640, offset: 224)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1363, file: !1301, line: 89, baseType: !684, size: 8, offset: 864)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1363, file: !1301, line: 90, baseType: !684, size: 8, offset: 872)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1363, file: !1301, line: 91, baseType: !684, size: 8, offset: 880)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1363, file: !1301, line: 92, baseType: !684, size: 8, offset: 888)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1363, file: !1301, line: 93, baseType: !684, size: 8, offset: 896)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1363, file: !1301, line: 94, baseType: !684, size: 8, offset: 904)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1363, file: !1301, line: 95, baseType: !1380, size: 64, offset: 960)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1382, line: 11, size: 128, elements: !1383)
!1382 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1383 = !{!1384, !1385}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1381, file: !1382, line: 12, baseType: !96, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1381, file: !1382, line: 13, baseType: !1386, size: 64, offset: 64)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1388, line: 56, size: 1344, elements: !1389)
!1388 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1389 = !{!1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1387, file: !1388, line: 61, baseType: !158, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1387, file: !1388, line: 62, baseType: !158, size: 64, offset: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1387, file: !1388, line: 63, baseType: !158, size: 64, offset: 128)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1387, file: !1388, line: 64, baseType: !158, size: 64, offset: 192)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1387, file: !1388, line: 65, baseType: !158, size: 64, offset: 256)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1387, file: !1388, line: 66, baseType: !158, size: 64, offset: 320)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1387, file: !1388, line: 68, baseType: !158, size: 64, offset: 384)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1387, file: !1388, line: 69, baseType: !158, size: 64, offset: 448)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1387, file: !1388, line: 70, baseType: !158, size: 64, offset: 512)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1387, file: !1388, line: 71, baseType: !158, size: 64, offset: 576)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1387, file: !1388, line: 72, baseType: !158, size: 64, offset: 640)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1387, file: !1388, line: 73, baseType: !158, size: 64, offset: 704)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1387, file: !1388, line: 74, baseType: !158, size: 64, offset: 768)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1387, file: !1388, line: 75, baseType: !158, size: 64, offset: 832)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1387, file: !1388, line: 76, baseType: !158, size: 64, offset: 896)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1387, file: !1388, line: 81, baseType: !158, size: 64, offset: 960)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1387, file: !1388, line: 83, baseType: !158, size: 64, offset: 1024)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1387, file: !1388, line: 84, baseType: !158, size: 64, offset: 1088)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1387, file: !1388, line: 85, baseType: !158, size: 64, offset: 1152)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1387, file: !1388, line: 86, baseType: !158, size: 64, offset: 1216)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1387, file: !1388, line: 87, baseType: !158, size: 64, offset: 1280)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1363, file: !1301, line: 96, baseType: !162, size: 32, offset: 1024)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1306, file: !1301, line: 308, baseType: !1413, size: 4608, align: 512)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1301, line: 289, size: 4608, align: 512, elements: !1414)
!1414 = !{!1415, !1416, !1425}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1413, file: !1301, line: 290, baseType: !1324, size: 4096, align: 128)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1413, file: !1301, line: 291, baseType: !1417, size: 512, offset: 4096)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1301, line: 268, size: 512, elements: !1418)
!1418 = !{!1419, !1420, !1421}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1417, file: !1301, line: 269, baseType: !397, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1417, file: !1301, line: 270, baseType: !397, size: 64, offset: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1417, file: !1301, line: 271, baseType: !1422, size: 384, offset: 128)
!1422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 384, elements: !1423)
!1423 = !{!1424}
!1424 = !DISubrange(count: 6)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1413, file: !1301, line: 292, baseType: !1426, offset: 4608)
!1426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !684, elements: !1427)
!1427 = !{!1428}
!1428 = !DISubrange(count: 0)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1306, file: !1301, line: 309, baseType: !1430, size: 32768)
!1430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !684, size: 32768, elements: !1431)
!1431 = !{!1432}
!1432 = !DISubrange(count: 4096)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !536, file: !369, line: 378, baseType: !1434, size: 64, offset: 64)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !532, file: !369, line: 384, baseType: !853, size: 192, offset: 192)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !389, file: !369, line: 500, baseType: !239, offset: 6656)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !389, file: !369, line: 501, baseType: !1438, size: 64, offset: 6656)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !369, line: 387, flags: DIFlagFwdDecl)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !389, file: !369, line: 516, baseType: !1441, size: 64, offset: 6720)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1443, line: 18, flags: DIFlagFwdDecl)
!1443 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !389, file: !369, line: 519, baseType: !356, size: 64, offset: 6784)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !389, file: !369, line: 521, baseType: !1446, size: 64, offset: 6848)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !369, line: 521, flags: DIFlagFwdDecl)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !389, file: !369, line: 545, baseType: !417, size: 32, offset: 6912)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !389, file: !369, line: 548, baseType: !208, size: 8, offset: 6944)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !389, file: !369, line: 550, baseType: !1451, offset: 6952)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1452, line: 142, elements: !253)
!1452 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !389, file: !369, line: 554, baseType: !1454, size: 256, offset: 6976)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !95, line: 102, size: 256, elements: !1455)
!1455 = !{!1456, !1457, !1458}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1454, file: !95, line: 103, baseType: !425, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1454, file: !95, line: 104, baseType: !169, size: 128, offset: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1454, file: !95, line: 105, baseType: !1459, size: 64, offset: 192)
!1459 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !95, line: 21, baseType: !1460)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = !DISubroutineType(types: !1462)
!1462 = !{null, !1463}
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !389, file: !369, line: 557, baseType: !162, size: 32, offset: 7232)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !386, file: !369, line: 565, baseType: !1466, offset: 7296)
!1466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, elements: !1467)
!1467 = !{!1468}
!1468 = !DISubrange(count: -1)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !368, file: !369, line: 333, baseType: !1470, size: 64, offset: 576)
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !358, line: 284, baseType: !1471)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !358, line: 284, size: 64, elements: !1472)
!1472 = !{!1473}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1471, file: !358, line: 284, baseType: !1474, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !415, line: 19, baseType: !158)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !368, file: !369, line: 334, baseType: !158, size: 64, offset: 640)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !368, file: !369, line: 343, baseType: !1477, size: 256, offset: 704)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !368, file: !369, line: 340, size: 256, elements: !1478)
!1478 = !{!1479, !1480}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1477, file: !369, line: 341, baseType: !376, size: 192, align: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1477, file: !369, line: 342, baseType: !158, size: 64, offset: 192)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !368, file: !369, line: 351, baseType: !169, size: 128, offset: 960)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !368, file: !369, line: 353, baseType: !1483, size: 64, offset: 1088)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !369, line: 353, flags: DIFlagFwdDecl)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !368, file: !369, line: 356, baseType: !1486, size: 64, offset: 1152)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1488)
!1488 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !369, line: 356, flags: DIFlagFwdDecl)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !368, file: !369, line: 359, baseType: !158, size: 64, offset: 1216)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !368, file: !369, line: 361, baseType: !356, size: 64, offset: 1280)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !368, file: !369, line: 362, baseType: !159, size: 64, offset: 1344)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !368, file: !369, line: 365, baseType: !425, size: 64, offset: 1408)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !368, file: !369, line: 373, baseType: !1494, offset: 1472)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !369, line: 296, elements: !253)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !335, file: !305, line: 90, baseType: !330, size: 64, offset: 192)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !335, file: !305, line: 91, baseType: !1497, size: 64, offset: 256)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !295, file: !224, line: 143, baseType: !1499, size: 64, offset: 256)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!1502, !232}
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1504)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1505)
!1505 = !{!1506, !1507, !1511, !1515, !1521, !1525}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1504, file: !18, line: 40, baseType: !17, size: 32)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1504, file: !18, line: 41, baseType: !1508, size: 64, offset: 64)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{!208}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1504, file: !18, line: 42, baseType: !1512, size: 64, offset: 128)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{!159}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1504, file: !18, line: 43, baseType: !1516, size: 64, offset: 192)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{!216, !1519}
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1504, file: !18, line: 44, baseType: !1522, size: 64, offset: 256)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!216}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1504, file: !18, line: 45, baseType: !1526, size: 64, offset: 320)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{null, !159}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !295, file: !224, line: 144, baseType: !1530, size: 64, offset: 320)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{!216, !232}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !295, file: !224, line: 145, baseType: !1534, size: 64, offset: 384)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{null, !232, !1537, !1543}
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1443, line: 23, baseType: !1539)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1443, line: 21, size: 32, elements: !1540)
!1540 = !{!1541}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1539, file: !1443, line: 22, baseType: !1542, size: 32)
!1542 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !157, line: 32, baseType: !1015)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1443, line: 28, baseType: !1545)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1443, line: 26, size: 32, elements: !1546)
!1546 = !{!1547}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1545, file: !1443, line: 27, baseType: !1548, size: 32)
!1548 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !157, line: 33, baseType: !1549)
!1549 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !313, line: 50, baseType: !7)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !223, file: !224, line: 70, baseType: !1551, size: 64, offset: 384)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1553, line: 123, size: 1024, elements: !1554)
!1553 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1554 = !{!1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1696, !1697, !1698, !1699, !1700}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1552, file: !1553, line: 124, baseType: !417, size: 32)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1552, file: !1553, line: 125, baseType: !417, size: 32, offset: 32)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1552, file: !1553, line: 135, baseType: !1551, size: 64, offset: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1552, file: !1553, line: 136, baseType: !227, size: 64, offset: 128)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1552, file: !1553, line: 138, baseType: !376, size: 192, align: 64, offset: 192)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1552, file: !1553, line: 140, baseType: !216, size: 64, offset: 384)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1552, file: !1553, line: 141, baseType: !7, size: 32, offset: 448)
!1562 = !DIDerivedType(tag: DW_TAG_member, scope: !1552, file: !1553, line: 142, baseType: !1563, size: 256, offset: 512)
!1563 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1552, file: !1553, line: 142, size: 256, elements: !1564)
!1564 = !{!1565, !1619, !1623}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1563, file: !1553, line: 143, baseType: !1566, size: 192)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1553, line: 91, size: 192, elements: !1567)
!1567 = !{!1568, !1569, !1570}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1566, file: !1553, line: 92, baseType: !158, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1566, file: !1553, line: 94, baseType: !393, size: 64, offset: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1566, file: !1553, line: 100, baseType: !1571, size: 64, offset: 128)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1553, line: 180, size: 704, elements: !1573)
!1573 = !{!1574, !1575, !1576, !1589, !1590, !1591, !1617, !1618}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1572, file: !1553, line: 182, baseType: !1551, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1572, file: !1553, line: 183, baseType: !7, size: 32, offset: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1572, file: !1553, line: 186, baseType: !1577, size: 192, offset: 128)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1578, line: 19, size: 192, elements: !1579)
!1578 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1579 = !{!1580, !1587, !1588}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1577, file: !1578, line: 20, baseType: !1581, size: 128)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1582, line: 292, size: 128, elements: !1583)
!1582 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1583 = !{!1584, !1585, !1586}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1581, file: !1582, line: 293, baseType: !239)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1581, file: !1582, line: 295, baseType: !156, size: 32)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1581, file: !1582, line: 296, baseType: !159, size: 64, offset: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1577, file: !1578, line: 21, baseType: !7, size: 32, offset: 128)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1577, file: !1578, line: 22, baseType: !7, size: 32, offset: 160)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1572, file: !1553, line: 187, baseType: !162, size: 32, offset: 320)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1572, file: !1553, line: 188, baseType: !162, size: 32, offset: 352)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1572, file: !1553, line: 189, baseType: !1592, size: 64, offset: 384)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1553, line: 168, size: 320, elements: !1594)
!1594 = !{!1595, !1601, !1605, !1609, !1613}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1593, file: !1553, line: 169, baseType: !1596, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!182, !1599, !1571}
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !358, line: 539, flags: DIFlagFwdDecl)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1593, file: !1553, line: 171, baseType: !1602, size: 64, offset: 64)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!182, !1551, !227, !320}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1593, file: !1553, line: 173, baseType: !1606, size: 64, offset: 128)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{!182, !1551}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1593, file: !1553, line: 174, baseType: !1610, size: 64, offset: 192)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{!182, !1551, !1551, !227}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1593, file: !1553, line: 176, baseType: !1614, size: 64, offset: 256)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!182, !1599, !1551, !1571}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1572, file: !1553, line: 192, baseType: !169, size: 128, offset: 448)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1572, file: !1553, line: 194, baseType: !824, size: 128, offset: 576)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1563, file: !1553, line: 144, baseType: !1620, size: 64)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1553, line: 103, size: 64, elements: !1621)
!1621 = !{!1622}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1620, file: !1553, line: 104, baseType: !1551, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1563, file: !1553, line: 145, baseType: !1624, size: 256)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1553, line: 107, size: 256, elements: !1625)
!1625 = !{!1626, !1691, !1694, !1695}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1624, file: !1553, line: 108, baseType: !1627, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1629)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1553, line: 217, size: 768, elements: !1630)
!1630 = !{!1631, !1651, !1655, !1659, !1664, !1668, !1672, !1676, !1677, !1678, !1679, !1687}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1629, file: !1553, line: 222, baseType: !1632, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{!182, !1635}
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1553, line: 197, size: 1088, elements: !1637)
!1637 = !{!1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1636, file: !1553, line: 199, baseType: !1551, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1636, file: !1553, line: 200, baseType: !356, size: 64, offset: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1636, file: !1553, line: 201, baseType: !1599, size: 64, offset: 128)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1636, file: !1553, line: 202, baseType: !159, size: 64, offset: 192)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1636, file: !1553, line: 205, baseType: !494, size: 192, offset: 256)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1636, file: !1553, line: 206, baseType: !494, size: 192, offset: 448)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1636, file: !1553, line: 207, baseType: !182, size: 32, offset: 640)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1636, file: !1553, line: 208, baseType: !169, size: 128, offset: 704)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1636, file: !1553, line: 209, baseType: !280, size: 64, offset: 832)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1636, file: !1553, line: 211, baseType: !326, size: 64, offset: 896)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1636, file: !1553, line: 212, baseType: !208, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1636, file: !1553, line: 213, baseType: !208, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1636, file: !1553, line: 214, baseType: !1486, size: 64, offset: 1024)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1629, file: !1553, line: 223, baseType: !1652, size: 64, offset: 64)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{null, !1635}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1629, file: !1553, line: 236, baseType: !1656, size: 64, offset: 128)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{!182, !1599, !159}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1629, file: !1553, line: 238, baseType: !1660, size: 64, offset: 192)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{!159, !1599, !1663}
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1629, file: !1553, line: 239, baseType: !1665, size: 64, offset: 256)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{!159, !1599, !159, !1663}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1629, file: !1553, line: 240, baseType: !1669, size: 64, offset: 320)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{null, !1599, !159}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1629, file: !1553, line: 242, baseType: !1673, size: 64, offset: 384)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!311, !1635, !280, !326, !359}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1629, file: !1553, line: 252, baseType: !326, size: 64, offset: 448)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1629, file: !1553, line: 259, baseType: !208, size: 8, offset: 512)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1629, file: !1553, line: 260, baseType: !1673, size: 64, offset: 576)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1629, file: !1553, line: 263, baseType: !1680, size: 64, offset: 640)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!1683, !1635, !1685}
!1683 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1684, line: 52, baseType: !7)
!1684 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1553, line: 27, flags: DIFlagFwdDecl)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1629, file: !1553, line: 266, baseType: !1688, size: 64, offset: 704)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{!182, !1635, !367}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1624, file: !1553, line: 109, baseType: !1692, size: 64, offset: 64)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1553, line: 31, flags: DIFlagFwdDecl)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1624, file: !1553, line: 110, baseType: !359, size: 64, offset: 128)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1624, file: !1553, line: 111, baseType: !1551, size: 64, offset: 192)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1552, file: !1553, line: 148, baseType: !159, size: 64, offset: 768)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1552, file: !1553, line: 154, baseType: !397, size: 64, offset: 832)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1552, file: !1553, line: 156, baseType: !321, size: 16, offset: 896)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1552, file: !1553, line: 157, baseType: !320, size: 16, offset: 912)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1552, file: !1553, line: 158, baseType: !1701, size: 64, offset: 960)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1553, line: 32, flags: DIFlagFwdDecl)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !223, file: !224, line: 71, baseType: !1704, size: 32, offset: 448)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1705, line: 19, size: 32, elements: !1706)
!1705 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1706 = !{!1707}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1704, file: !1705, line: 20, baseType: !553, size: 32)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !223, file: !224, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !223, file: !224, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !223, file: !224, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !223, file: !224, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !223, file: !224, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !220, file: !30, line: 463, baseType: !1714, size: 64, offset: 512)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !220, file: !30, line: 465, baseType: !1716, size: 64, offset: 576)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !220, file: !30, line: 467, baseType: !227, size: 64, offset: 640)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !220, file: !30, line: 468, baseType: !1720, size: 64, offset: 704)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1722)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1723)
!1723 = !{!1724, !1725, !1726, !1730, !1735, !1739}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1722, file: !30, line: 88, baseType: !227, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1722, file: !30, line: 89, baseType: !332, size: 64, offset: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1722, file: !30, line: 90, baseType: !1727, size: 64, offset: 128)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{!182, !1714, !275}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1722, file: !30, line: 91, baseType: !1731, size: 64, offset: 192)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{!280, !1714, !1734, !1537, !1543}
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1722, file: !30, line: 93, baseType: !1736, size: 64, offset: 256)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{null, !1714}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1722, file: !30, line: 95, baseType: !1740, size: 64, offset: 320)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1742)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1743)
!1743 = !{!1744, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1742, file: !37, line: 279, baseType: !1745, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!182, !1714}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1742, file: !37, line: 280, baseType: !1736, size: 64, offset: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1742, file: !37, line: 281, baseType: !1745, size: 64, offset: 128)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1742, file: !37, line: 282, baseType: !1745, size: 64, offset: 192)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1742, file: !37, line: 283, baseType: !1745, size: 64, offset: 256)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1742, file: !37, line: 284, baseType: !1745, size: 64, offset: 320)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1742, file: !37, line: 285, baseType: !1745, size: 64, offset: 384)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1742, file: !37, line: 286, baseType: !1745, size: 64, offset: 448)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1742, file: !37, line: 287, baseType: !1745, size: 64, offset: 512)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1742, file: !37, line: 288, baseType: !1745, size: 64, offset: 576)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1742, file: !37, line: 289, baseType: !1745, size: 64, offset: 640)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1742, file: !37, line: 290, baseType: !1745, size: 64, offset: 704)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1742, file: !37, line: 291, baseType: !1745, size: 64, offset: 768)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1742, file: !37, line: 292, baseType: !1745, size: 64, offset: 832)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1742, file: !37, line: 293, baseType: !1745, size: 64, offset: 896)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1742, file: !37, line: 294, baseType: !1745, size: 64, offset: 960)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1742, file: !37, line: 295, baseType: !1745, size: 64, offset: 1024)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1742, file: !37, line: 296, baseType: !1745, size: 64, offset: 1088)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1742, file: !37, line: 297, baseType: !1745, size: 64, offset: 1152)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1742, file: !37, line: 298, baseType: !1745, size: 64, offset: 1216)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1742, file: !37, line: 299, baseType: !1745, size: 64, offset: 1280)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1742, file: !37, line: 300, baseType: !1745, size: 64, offset: 1344)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1742, file: !37, line: 301, baseType: !1745, size: 64, offset: 1408)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !220, file: !30, line: 470, baseType: !1771, size: 64, offset: 768)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1773, line: 82, size: 1408, elements: !1774)
!1773 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1774 = !{!1775, !1776, !1777, !1778, !1779, !1780, !1781, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1860, !1863, !1866}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1772, file: !1773, line: 83, baseType: !227, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1772, file: !1773, line: 84, baseType: !227, size: 64, offset: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1772, file: !1773, line: 85, baseType: !1714, size: 64, offset: 128)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1772, file: !1773, line: 86, baseType: !332, size: 64, offset: 192)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1772, file: !1773, line: 87, baseType: !332, size: 64, offset: 256)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1772, file: !1773, line: 88, baseType: !332, size: 64, offset: 320)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1772, file: !1773, line: 90, baseType: !1782, size: 64, offset: 384)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{!182, !1714, !1785}
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1787)
!1787 = !{!1788, !1789, !1790, !1794, !1795, !1796, !1797, !1811, !1824, !1825, !1826, !1827, !1828, !1836, !1837, !1838, !1839, !1840, !1841}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1786, file: !24, line: 96, baseType: !227, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1786, file: !24, line: 97, baseType: !1771, size: 64, offset: 64)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1786, file: !24, line: 99, baseType: !1791, size: 64, offset: 128)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1793, line: 76, flags: DIFlagFwdDecl)
!1793 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1786, file: !24, line: 100, baseType: !227, size: 64, offset: 192)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1786, file: !24, line: 102, baseType: !208, size: 8, offset: 256)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1786, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1786, file: !24, line: 105, baseType: !1798, size: 64, offset: 320)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1800)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1801, line: 262, size: 1600, elements: !1802)
!1801 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1802 = !{!1803, !1805, !1806, !1810}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1800, file: !1801, line: 263, baseType: !1804, size: 256)
!1804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 256, elements: !1349)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1800, file: !1801, line: 264, baseType: !1804, size: 256, offset: 256)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1800, file: !1801, line: 265, baseType: !1807, size: 1024, offset: 512)
!1807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 1024, elements: !1808)
!1808 = !{!1809}
!1809 = !DISubrange(count: 128)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1800, file: !1801, line: 266, baseType: !216, size: 64, offset: 1536)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1786, file: !24, line: 106, baseType: !1812, size: 64, offset: 384)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1814)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1801, line: 210, size: 256, elements: !1815)
!1815 = !{!1816, !1820, !1822, !1823}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1814, file: !1801, line: 211, baseType: !1817, size: 72)
!1817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !685, size: 72, elements: !1818)
!1818 = !{!1819}
!1819 = !DISubrange(count: 9)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1814, file: !1801, line: 212, baseType: !1821, size: 64, offset: 128)
!1821 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1801, line: 14, baseType: !158)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1814, file: !1801, line: 213, baseType: !164, size: 32, offset: 192)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1814, file: !1801, line: 214, baseType: !164, size: 32, offset: 224)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1786, file: !24, line: 108, baseType: !1745, size: 64, offset: 448)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1786, file: !24, line: 109, baseType: !1736, size: 64, offset: 512)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1786, file: !24, line: 110, baseType: !1745, size: 64, offset: 576)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1786, file: !24, line: 111, baseType: !1736, size: 64, offset: 640)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1786, file: !24, line: 112, baseType: !1829, size: 64, offset: 704)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{!182, !1714, !1832}
!1832 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1833)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1834)
!1834 = !{!1835}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1833, file: !37, line: 51, baseType: !182, size: 32)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1786, file: !24, line: 113, baseType: !1745, size: 64, offset: 768)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1786, file: !24, line: 114, baseType: !332, size: 64, offset: 832)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1786, file: !24, line: 115, baseType: !332, size: 64, offset: 896)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1786, file: !24, line: 117, baseType: !1740, size: 64, offset: 960)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1786, file: !24, line: 118, baseType: !1736, size: 64, offset: 1024)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1786, file: !24, line: 120, baseType: !1842, size: 64, offset: 1088)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1772, file: !1773, line: 91, baseType: !1727, size: 64, offset: 448)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1772, file: !1773, line: 92, baseType: !1745, size: 64, offset: 512)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1772, file: !1773, line: 93, baseType: !1736, size: 64, offset: 576)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1772, file: !1773, line: 94, baseType: !1745, size: 64, offset: 640)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1772, file: !1773, line: 95, baseType: !1736, size: 64, offset: 704)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1772, file: !1773, line: 97, baseType: !1745, size: 64, offset: 768)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1772, file: !1773, line: 98, baseType: !1745, size: 64, offset: 832)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1772, file: !1773, line: 100, baseType: !1829, size: 64, offset: 896)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1772, file: !1773, line: 101, baseType: !1745, size: 64, offset: 960)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1772, file: !1773, line: 103, baseType: !1745, size: 64, offset: 1024)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1772, file: !1773, line: 105, baseType: !1745, size: 64, offset: 1088)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1772, file: !1773, line: 107, baseType: !1740, size: 64, offset: 1152)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1772, file: !1773, line: 109, baseType: !1857, size: 64, offset: 1216)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1859)
!1859 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1773, line: 109, flags: DIFlagFwdDecl)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1772, file: !1773, line: 111, baseType: !1861, size: 64, offset: 1280)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1773, line: 111, flags: DIFlagFwdDecl)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1772, file: !1773, line: 112, baseType: !1864, offset: 1344)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1865, line: 187, elements: !253)
!1865 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1772, file: !1773, line: 114, baseType: !208, size: 8, offset: 1344)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !220, file: !30, line: 471, baseType: !1785, size: 64, offset: 832)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !220, file: !30, line: 473, baseType: !159, size: 64, offset: 896)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !220, file: !30, line: 475, baseType: !159, size: 64, offset: 960)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !220, file: !30, line: 480, baseType: !494, size: 192, offset: 1024)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !220, file: !30, line: 484, baseType: !1872, size: 576, offset: 1216)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1873)
!1873 = !{!1874, !1875, !1876, !1877, !1878, !1879}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1872, file: !30, line: 362, baseType: !169, size: 128)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1872, file: !30, line: 363, baseType: !169, size: 128, offset: 128)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1872, file: !30, line: 364, baseType: !169, size: 128, offset: 256)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1872, file: !30, line: 365, baseType: !169, size: 128, offset: 384)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1872, file: !30, line: 366, baseType: !208, size: 8, offset: 512)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1872, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !220, file: !30, line: 485, baseType: !1881, size: 2304, offset: 1792)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1882)
!1882 = !{!1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1978, !1982}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1881, file: !37, line: 566, baseType: !1832, size: 32)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1881, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1881, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1881, file: !37, line: 569, baseType: !208, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1881, file: !37, line: 570, baseType: !208, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1881, file: !37, line: 571, baseType: !208, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1881, file: !37, line: 572, baseType: !208, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1881, file: !37, line: 573, baseType: !208, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1881, file: !37, line: 574, baseType: !208, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1881, file: !37, line: 575, baseType: !208, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1881, file: !37, line: 576, baseType: !208, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1881, file: !37, line: 577, baseType: !162, size: 32, offset: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1881, file: !37, line: 578, baseType: !239, offset: 96)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1881, file: !37, line: 580, baseType: !169, size: 128, offset: 128)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1881, file: !37, line: 581, baseType: !853, size: 192, offset: 256)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1881, file: !37, line: 582, baseType: !1899, size: 64, offset: 448)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1901, line: 43, size: 1472, elements: !1902)
!1901 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1902 = !{!1903, !1904, !1905, !1906, !1907, !1910, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1900, file: !1901, line: 44, baseType: !227, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1900, file: !1901, line: 45, baseType: !182, size: 32, offset: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1900, file: !1901, line: 46, baseType: !169, size: 128, offset: 128)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1900, file: !1901, line: 47, baseType: !239, offset: 256)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1900, file: !1901, line: 48, baseType: !1908, size: 64, offset: 256)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1900, file: !1901, line: 49, baseType: !1911, size: 320, offset: 320)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1912, line: 11, size: 320, elements: !1913)
!1912 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1913 = !{!1914, !1915, !1916, !1921}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1911, file: !1912, line: 16, baseType: !817, size: 128)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1911, file: !1912, line: 17, baseType: !158, size: 64, offset: 128)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1911, file: !1912, line: 18, baseType: !1917, size: 64, offset: 192)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{null, !1920}
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1911, file: !1912, line: 19, baseType: !162, size: 32, offset: 256)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1900, file: !1901, line: 50, baseType: !158, size: 64, offset: 640)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1900, file: !1901, line: 51, baseType: !623, size: 64, offset: 704)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1900, file: !1901, line: 52, baseType: !623, size: 64, offset: 768)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1900, file: !1901, line: 53, baseType: !623, size: 64, offset: 832)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1900, file: !1901, line: 54, baseType: !623, size: 64, offset: 896)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1900, file: !1901, line: 55, baseType: !623, size: 64, offset: 960)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1900, file: !1901, line: 56, baseType: !158, size: 64, offset: 1024)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1900, file: !1901, line: 57, baseType: !158, size: 64, offset: 1088)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1900, file: !1901, line: 58, baseType: !158, size: 64, offset: 1152)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1900, file: !1901, line: 59, baseType: !158, size: 64, offset: 1216)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1900, file: !1901, line: 60, baseType: !158, size: 64, offset: 1280)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1900, file: !1901, line: 61, baseType: !1714, size: 64, offset: 1344)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1900, file: !1901, line: 62, baseType: !208, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1900, file: !1901, line: 63, baseType: !208, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1881, file: !37, line: 583, baseType: !208, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1881, file: !37, line: 584, baseType: !208, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1881, file: !37, line: 585, baseType: !208, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1881, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1881, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1881, file: !37, line: 592, baseType: !615, size: 512, offset: 576)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1881, file: !37, line: 593, baseType: !397, size: 64, offset: 1088)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1881, file: !37, line: 594, baseType: !1454, size: 256, offset: 1152)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1881, file: !37, line: 595, baseType: !824, size: 128, offset: 1408)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1881, file: !37, line: 596, baseType: !1908, size: 64, offset: 1536)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1881, file: !37, line: 597, baseType: !417, size: 32, offset: 1600)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1881, file: !37, line: 598, baseType: !417, size: 32, offset: 1632)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1881, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1881, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1881, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1881, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1881, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1881, file: !37, line: 604, baseType: !208, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1881, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1881, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1881, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1881, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1881, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1881, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1881, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1881, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1881, file: !37, line: 613, baseType: !182, size: 32, offset: 1792)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1881, file: !37, line: 614, baseType: !182, size: 32, offset: 1824)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1881, file: !37, line: 615, baseType: !397, size: 64, offset: 1856)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1881, file: !37, line: 616, baseType: !397, size: 64, offset: 1920)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1881, file: !37, line: 617, baseType: !397, size: 64, offset: 1984)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1881, file: !37, line: 618, baseType: !397, size: 64, offset: 2048)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1881, file: !37, line: 620, baseType: !1969, size: 64, offset: 2112)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1971)
!1971 = !{!1972, !1973, !1974, !1975}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1970, file: !37, line: 537, baseType: !239)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1970, file: !37, line: 538, baseType: !7, size: 32)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1970, file: !37, line: 540, baseType: !169, size: 128, offset: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1970, file: !37, line: 543, baseType: !1976, size: 64, offset: 192)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1881, file: !37, line: 621, baseType: !1979, size: 64, offset: 2176)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{null, !1714, !777}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1881, file: !37, line: 622, baseType: !1983, size: 64, offset: 2240)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !220, file: !30, line: 486, baseType: !1986, size: 64, offset: 4096)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1988)
!1988 = !{!1989, !1990, !1991, !1995, !1996, !1997}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1987, file: !37, line: 643, baseType: !1742, size: 1472)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1987, file: !37, line: 644, baseType: !1745, size: 64, offset: 1472)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1987, file: !37, line: 645, baseType: !1992, size: 64, offset: 1536)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{null, !1714, !208}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1987, file: !37, line: 646, baseType: !1745, size: 64, offset: 1600)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1987, file: !37, line: 647, baseType: !1736, size: 64, offset: 1664)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1987, file: !37, line: 648, baseType: !1736, size: 64, offset: 1728)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !220, file: !30, line: 493, baseType: !1999, size: 64, offset: 4160)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !51, line: 162, size: 1088, elements: !2001)
!2001 = !{!2002, !2003, !2004, !2089, !2090, !2091, !2092, !2093, !2094, !2097, !2098, !2099, !2100, !2101, !2102, !2103}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2000, file: !51, line: 163, baseType: !169, size: 128)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2000, file: !51, line: 164, baseType: !227, size: 64, offset: 128)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2000, file: !51, line: 165, baseType: !2005, size: 64, offset: 192)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2007)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !51, line: 105, size: 640, elements: !2008)
!2008 = !{!2009, !2038, !2049, !2054, !2058, !2066, !2070, !2074, !2081, !2085}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2007, file: !51, line: 106, baseType: !2010, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!182, !1999, !2013, !50}
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2015, line: 51, size: 1344, elements: !2016)
!2015 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!2016 = !{!2017, !2018, !2020, !2021, !2022, !2031, !2032, !2033, !2034, !2035, !2036, !2037}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2014, file: !2015, line: 52, baseType: !227, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !2014, file: !2015, line: 53, baseType: !2019, size: 32, offset: 64)
!2019 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !2015, line: 28, baseType: !162)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !2014, file: !2015, line: 54, baseType: !227, size: 64, offset: 128)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2014, file: !2015, line: 55, baseType: !186, size: 192, offset: 192)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2014, file: !2015, line: 57, baseType: !2023, size: 64, offset: 384)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !2015, line: 31, size: 704, elements: !2025)
!2025 = !{!2026, !2027, !2028, !2029, !2030}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2024, file: !2015, line: 32, baseType: !280, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2024, file: !2015, line: 33, baseType: !182, size: 32, offset: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2024, file: !2015, line: 34, baseType: !159, size: 64, offset: 128)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2024, file: !2015, line: 35, baseType: !2023, size: 64, offset: 192)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2024, file: !2015, line: 43, baseType: !347, size: 448, offset: 256)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !2014, file: !2015, line: 58, baseType: !2023, size: 64, offset: 448)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2014, file: !2015, line: 59, baseType: !2013, size: 64, offset: 512)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2014, file: !2015, line: 60, baseType: !2013, size: 64, offset: 576)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2014, file: !2015, line: 61, baseType: !2013, size: 64, offset: 640)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2014, file: !2015, line: 63, baseType: !223, size: 512, offset: 704)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2014, file: !2015, line: 65, baseType: !158, size: 64, offset: 1216)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2014, file: !2015, line: 66, baseType: !159, size: 64, offset: 1280)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !2007, file: !51, line: 108, baseType: !2039, size: 64, offset: 64)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!182, !1999, !2042, !50}
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !51, line: 63, size: 640, elements: !2044)
!2044 = !{!2045, !2046, !2047}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2043, file: !51, line: 64, baseType: !190, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !2043, file: !51, line: 65, baseType: !182, size: 32, offset: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !2043, file: !51, line: 66, baseType: !2048, size: 512, offset: 96)
!2048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 512, elements: !910)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !2007, file: !51, line: 110, baseType: !2050, size: 64, offset: 128)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{!182, !1999, !7, !2053}
!2053 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !157, line: 164, baseType: !158)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !2007, file: !51, line: 111, baseType: !2055, size: 64, offset: 192)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{null, !1999, !7}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !2007, file: !51, line: 112, baseType: !2059, size: 64, offset: 256)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!182, !1999, !2013, !2062, !7, !2064, !2065}
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !162)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2007, file: !51, line: 117, baseType: !2067, size: 64, offset: 320)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!182, !1999, !7, !7, !159}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2007, file: !51, line: 119, baseType: !2071, size: 64, offset: 384)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{null, !1999, !7, !7}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2007, file: !51, line: 121, baseType: !2075, size: 64, offset: 448)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{!182, !1999, !2078, !208}
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !2080, line: 11, flags: DIFlagFwdDecl)
!2080 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !2007, file: !51, line: 122, baseType: !2082, size: 64, offset: 512)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{null, !1999, !2078}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !2007, file: !51, line: 123, baseType: !2086, size: 64, offset: 576)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{!182, !1999, !2042, !2064, !2065}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !2000, file: !51, line: 166, baseType: !159, size: 64, offset: 256)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2000, file: !51, line: 167, baseType: !7, size: 32, offset: 320)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !2000, file: !51, line: 168, baseType: !7, size: 32, offset: 352)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2000, file: !51, line: 171, baseType: !190, size: 64, offset: 384)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !2000, file: !51, line: 172, baseType: !50, size: 32, offset: 448)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !2000, file: !51, line: 173, baseType: !2095, size: 64, offset: 512)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !51, line: 134, flags: DIFlagFwdDecl)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2000, file: !51, line: 175, baseType: !1999, size: 64, offset: 576)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !2000, file: !51, line: 182, baseType: !2053, size: 64, offset: 640)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !2000, file: !51, line: 183, baseType: !7, size: 32, offset: 704)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !2000, file: !51, line: 184, baseType: !7, size: 32, offset: 736)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !2000, file: !51, line: 185, baseType: !1581, size: 128, offset: 768)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !2000, file: !51, line: 186, baseType: !494, size: 192, offset: 896)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !2000, file: !51, line: 187, baseType: !2104, offset: 1088)
!2104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !1467)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !220, file: !30, line: 499, baseType: !169, size: 128, offset: 4224)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !220, file: !30, line: 502, baseType: !2107, size: 64, offset: 4352)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2109)
!2109 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !220, file: !30, line: 504, baseType: !2111, size: 64, offset: 4416)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !220, file: !30, line: 505, baseType: !397, size: 64, offset: 4480)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !220, file: !30, line: 510, baseType: !397, size: 64, offset: 4544)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !220, file: !30, line: 511, baseType: !2115, size: 64, offset: 4608)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2117)
!2117 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !220, file: !30, line: 513, baseType: !2119, size: 64, offset: 4672)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !2121)
!2121 = !{!2122, !2123}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2120, file: !30, line: 293, baseType: !7, size: 32)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2120, file: !30, line: 294, baseType: !158, size: 64, offset: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !220, file: !30, line: 515, baseType: !169, size: 128, offset: 4736)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !220, file: !30, line: 526, baseType: !2126, offset: 4864)
!2126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2127, line: 5, elements: !253)
!2127 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !220, file: !30, line: 528, baseType: !2013, size: 64, offset: 4864)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !220, file: !30, line: 529, baseType: !190, size: 64, offset: 4928)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !220, file: !30, line: 534, baseType: !2131, size: 32, offset: 4992)
!2131 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !157, line: 16, baseType: !2132)
!2132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !157, line: 13, baseType: !162)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !220, file: !30, line: 535, baseType: !162, size: 32, offset: 5024)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !220, file: !30, line: 537, baseType: !239, offset: 5056)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !220, file: !30, line: 538, baseType: !169, size: 128, offset: 5056)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !220, file: !30, line: 540, baseType: !2137, size: 64, offset: 5184)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2139, line: 54, size: 960, elements: !2140)
!2139 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2140 = !{!2141, !2142, !2143, !2144, !2145, !2146, !2147, !2151, !2155, !2156, !2157, !2158, !2162, !2166, !2167}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2138, file: !2139, line: 55, baseType: !227, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2138, file: !2139, line: 56, baseType: !1791, size: 64, offset: 64)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2138, file: !2139, line: 58, baseType: !332, size: 64, offset: 128)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2138, file: !2139, line: 59, baseType: !332, size: 64, offset: 192)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2138, file: !2139, line: 60, baseType: !232, size: 64, offset: 256)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2138, file: !2139, line: 62, baseType: !1727, size: 64, offset: 320)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2138, file: !2139, line: 63, baseType: !2148, size: 64, offset: 384)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{!280, !1714, !1734}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2138, file: !2139, line: 65, baseType: !2152, size: 64, offset: 448)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{null, !2137}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2138, file: !2139, line: 66, baseType: !1736, size: 64, offset: 512)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2138, file: !2139, line: 68, baseType: !1745, size: 64, offset: 576)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2138, file: !2139, line: 70, baseType: !1502, size: 64, offset: 640)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2138, file: !2139, line: 71, baseType: !2159, size: 64, offset: 704)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!216, !1714}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2138, file: !2139, line: 73, baseType: !2163, size: 64, offset: 768)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{null, !1714, !1537, !1543}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2138, file: !2139, line: 75, baseType: !1740, size: 64, offset: 832)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2138, file: !2139, line: 77, baseType: !1861, size: 64, offset: 896)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !220, file: !30, line: 541, baseType: !332, size: 64, offset: 5248)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !220, file: !30, line: 543, baseType: !1736, size: 64, offset: 5312)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !220, file: !30, line: 544, baseType: !2171, size: 64, offset: 5376)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !220, file: !30, line: 545, baseType: !2174, size: 64, offset: 5440)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !220, file: !30, line: 547, baseType: !208, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !220, file: !30, line: 548, baseType: !208, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !220, file: !30, line: 549, baseType: !208, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !220, file: !30, line: 550, baseType: !208, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !194, file: !187, line: 116, baseType: !2181, size: 64, offset: 256)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{!208, !210, !227}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !194, file: !187, line: 118, baseType: !2185, size: 64, offset: 320)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{!182, !210, !227, !7, !159, !326}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !194, file: !187, line: 123, baseType: !2189, size: 64, offset: 384)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{!182, !210, !227, !2192, !326}
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !194, file: !187, line: 126, baseType: !2194, size: 64, offset: 448)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{!227, !210}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !194, file: !187, line: 127, baseType: !2194, size: 64, offset: 512)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !194, file: !187, line: 128, baseType: !2199, size: 64, offset: 576)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{!190, !210}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !194, file: !187, line: 130, baseType: !2203, size: 64, offset: 640)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{!190, !210, !190}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !194, file: !187, line: 133, baseType: !2207, size: 64, offset: 704)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{!190, !210, !227}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !194, file: !187, line: 135, baseType: !2211, size: 64, offset: 768)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{!182, !210, !227, !227, !7, !7, !2214}
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !187, line: 43, size: 640, elements: !2216)
!2216 = !{!2217, !2218, !2219}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2215, file: !187, line: 44, baseType: !190, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2215, file: !187, line: 45, baseType: !7, size: 32, offset: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2215, file: !187, line: 46, baseType: !2220, size: 512, offset: 128)
!2220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 512, elements: !653)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !194, file: !187, line: 140, baseType: !2203, size: 64, offset: 832)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !194, file: !187, line: 143, baseType: !2199, size: 64, offset: 896)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !194, file: !187, line: 145, baseType: !197, size: 64, offset: 960)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !194, file: !187, line: 146, baseType: !2225, size: 64, offset: 1024)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{!182, !210, !2228}
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !187, line: 29, size: 128, elements: !2230)
!2230 = !{!2231, !2232, !2233}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2229, file: !187, line: 30, baseType: !7, size: 32)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2229, file: !187, line: 31, baseType: !7, size: 32, offset: 32)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2229, file: !187, line: 32, baseType: !210, size: 64, offset: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !194, file: !187, line: 148, baseType: !2235, size: 64, offset: 1088)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = !DISubroutineType(types: !2237)
!2237 = !{!182, !210, !1714}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !186, file: !187, line: 20, baseType: !1714, size: 64, offset: 128)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !178, file: !179, line: 355, baseType: !177, size: 64, offset: 320)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !178, file: !179, line: 356, baseType: !169, size: 128, offset: 384)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !178, file: !179, line: 357, baseType: !169, size: 128, offset: 512)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !178, file: !179, line: 358, baseType: !169, size: 128, offset: 640)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !178, file: !179, line: 359, baseType: !169, size: 128, offset: 768)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !178, file: !179, line: 360, baseType: !2245, size: 32, offset: 896)
!2245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !179, line: 179, size: 32, elements: !2246)
!2246 = !{!2247, !2248, !2249, !2250, !2251, !2252}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !2245, file: !179, line: 180, baseType: !162, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2245, file: !179, line: 181, baseType: !162, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !2245, file: !179, line: 182, baseType: !162, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !2245, file: !179, line: 183, baseType: !162, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !2245, file: !179, line: 184, baseType: !162, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2245, file: !179, line: 185, baseType: !162, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !178, file: !179, line: 361, baseType: !2254, size: 32, offset: 928)
!2254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !179, line: 190, size: 32, elements: !2255)
!2255 = !{!2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !2254, file: !179, line: 191, baseType: !162, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2254, file: !179, line: 192, baseType: !162, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !2254, file: !179, line: 193, baseType: !162, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !2254, file: !179, line: 194, baseType: !162, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !2254, file: !179, line: 195, baseType: !162, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !2254, file: !179, line: 196, baseType: !162, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !2254, file: !179, line: 197, baseType: !162, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !2254, file: !179, line: 198, baseType: !162, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !2254, file: !179, line: 199, baseType: !162, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !2254, file: !179, line: 200, baseType: !162, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !2254, file: !179, line: 201, baseType: !162, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !2254, file: !179, line: 202, baseType: !162, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !2254, file: !179, line: 203, baseType: !162, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2254, file: !179, line: 204, baseType: !162, size: 19, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !178, file: !179, line: 362, baseType: !2271, size: 960, offset: 960)
!2271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !179, line: 234, size: 960, elements: !2272)
!2272 = !{!2273, !2275, !2282, !2284, !2285, !2286, !2291, !2294}
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !2271, file: !179, line: 235, baseType: !2274, size: 64)
!2274 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !179, line: 217, baseType: !1056)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2271, file: !179, line: 236, baseType: !2276, size: 32, offset: 64)
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !179, line: 227, size: 32, elements: !2277)
!2277 = !{!2278, !2279, !2280, !2281}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !2276, file: !179, line: 228, baseType: !162, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !2276, file: !179, line: 229, baseType: !162, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !2276, file: !179, line: 230, baseType: !162, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2276, file: !179, line: 231, baseType: !162, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !2271, file: !179, line: 237, baseType: !2283, size: 64, offset: 128)
!2283 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !179, line: 218, baseType: !397)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !2271, file: !179, line: 238, baseType: !280, size: 64, offset: 192)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2271, file: !179, line: 239, baseType: !169, size: 128, offset: 256)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !2271, file: !179, line: 240, baseType: !2287, size: 320, offset: 384)
!2287 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !179, line: 219, baseType: !2288)
!2288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 320, elements: !2289)
!2289 = !{!2290}
!2290 = !DISubrange(count: 40)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !2271, file: !179, line: 241, baseType: !2292, size: 160, offset: 704)
!2292 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !179, line: 220, baseType: !2293)
!2293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 160, elements: !1320)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !2271, file: !179, line: 242, baseType: !2295, size: 64, offset: 896)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !161, line: 899, size: 192, elements: !2297)
!2297 = !{!2298, !2300, !2305, !2311, !2318, !2324, !2330, !2338}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2296, file: !161, line: 900, baseType: !2299, size: 32)
!2299 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !161, line: 635, baseType: !162)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !2296, file: !161, line: 904, baseType: !2301, size: 128)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2296, file: !161, line: 901, size: 128, elements: !2302)
!2302 = !{!2303, !2304}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2301, file: !161, line: 902, baseType: !2299, size: 32)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2301, file: !161, line: 903, baseType: !397, size: 64, offset: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2296, file: !161, line: 910, baseType: !2306, size: 128)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2296, file: !161, line: 906, size: 128, elements: !2307)
!2307 = !{!2308, !2309, !2310}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2306, file: !161, line: 907, baseType: !2299, size: 32)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2306, file: !161, line: 908, baseType: !162, size: 32, offset: 32)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2306, file: !161, line: 909, baseType: !280, size: 64, offset: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2296, file: !161, line: 916, baseType: !2312, size: 128)
!2312 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2296, file: !161, line: 912, size: 128, elements: !2313)
!2313 = !{!2314, !2315, !2316}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2312, file: !161, line: 913, baseType: !2299, size: 32)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2312, file: !161, line: 914, baseType: !162, size: 32, offset: 32)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2312, file: !161, line: 915, baseType: !2317, size: 64, offset: 64)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !2296, file: !161, line: 922, baseType: !2319, size: 128)
!2319 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2296, file: !161, line: 918, size: 128, elements: !2320)
!2320 = !{!2321, !2322, !2323}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2319, file: !161, line: 919, baseType: !2299, size: 32)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2319, file: !161, line: 920, baseType: !162, size: 32, offset: 32)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !2319, file: !161, line: 921, baseType: !2295, size: 64, offset: 64)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !2296, file: !161, line: 928, baseType: !2325, size: 128)
!2325 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2296, file: !161, line: 924, size: 128, elements: !2326)
!2326 = !{!2327, !2328, !2329}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2325, file: !161, line: 925, baseType: !2299, size: 32)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !2325, file: !161, line: 926, baseType: !2299, size: 32, offset: 32)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !2325, file: !161, line: 927, baseType: !184, size: 64, offset: 64)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !2296, file: !161, line: 935, baseType: !2331, size: 192)
!2331 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2296, file: !161, line: 930, size: 192, elements: !2332)
!2332 = !{!2333, !2334, !2335, !2337}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2331, file: !161, line: 931, baseType: !2299, size: 32)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !2331, file: !161, line: 932, baseType: !162, size: 32, offset: 32)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !2331, file: !161, line: 933, baseType: !2336, size: 64, offset: 64)
!2336 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !161, line: 128, baseType: !397)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !2331, file: !161, line: 934, baseType: !162, size: 32, offset: 128)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !2296, file: !161, line: 941, baseType: !2339, size: 96)
!2339 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2296, file: !161, line: 937, size: 96, elements: !2340)
!2340 = !{!2341, !2342, !2343}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2339, file: !161, line: 938, baseType: !2299, size: 32)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !2339, file: !161, line: 939, baseType: !162, size: 32, offset: 32)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !2339, file: !161, line: 940, baseType: !162, size: 32, offset: 64)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !178, file: !179, line: 363, baseType: !2345, size: 1344, offset: 1920)
!2345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !179, line: 275, size: 1344, elements: !2346)
!2346 = !{!2347, !2348, !2358}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2345, file: !179, line: 276, baseType: !182, size: 32)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2345, file: !179, line: 277, baseType: !2349, size: 32, offset: 32)
!2349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !179, line: 254, size: 32, elements: !2350)
!2350 = !{!2351, !2352, !2353, !2354, !2355, !2356, !2357}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !2349, file: !179, line: 255, baseType: !162, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !2349, file: !179, line: 256, baseType: !162, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !2349, file: !179, line: 257, baseType: !162, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !2349, file: !179, line: 258, baseType: !162, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !2349, file: !179, line: 259, baseType: !162, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !2349, file: !179, line: 260, baseType: !162, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2349, file: !179, line: 261, baseType: !162, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2345, file: !179, line: 278, baseType: !2359, size: 1280, offset: 64)
!2359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2360, size: 1280, elements: !2371)
!2360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !179, line: 264, size: 256, elements: !2361)
!2361 = !{!2362, !2368, !2369, !2370}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2360, file: !179, line: 269, baseType: !2363, size: 8)
!2363 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2360, file: !179, line: 265, size: 8, elements: !2364)
!2364 = !{!2365, !2366, !2367}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2363, file: !179, line: 266, baseType: !684, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !2363, file: !179, line: 267, baseType: !684, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2363, file: !179, line: 268, baseType: !684, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2360, file: !179, line: 270, baseType: !182, size: 32, offset: 32)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !2360, file: !179, line: 271, baseType: !182, size: 32, offset: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !2360, file: !179, line: 272, baseType: !169, size: 128, offset: 128)
!2371 = !{!2372}
!2372 = !DISubrange(count: 5)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !178, file: !179, line: 364, baseType: !2374, size: 640, offset: 3264)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !179, line: 315, size: 640, elements: !2375)
!2375 = !{!2376, !2377, !2378, !2379, !2380, !2385, !2394, !2395, !2396}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !2374, file: !179, line: 316, baseType: !184, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !2374, file: !179, line: 317, baseType: !397, size: 64, offset: 64)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !2374, file: !179, line: 318, baseType: !397, size: 64, offset: 128)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !2374, file: !179, line: 319, baseType: !169, size: 128, offset: 192)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2374, file: !179, line: 320, baseType: !2381, size: 8, offset: 320)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !179, line: 305, size: 8, elements: !2382)
!2382 = !{!2383, !2384}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2381, file: !179, line: 306, baseType: !684, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !2381, file: !179, line: 307, baseType: !684, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2374, file: !179, line: 321, baseType: !2386, size: 128, offset: 384)
!2386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !179, line: 310, size: 128, elements: !2387)
!2387 = !{!2388, !2393}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2386, file: !179, line: 311, baseType: !2389, size: 64)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{null, !2392}
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2386, file: !179, line: 312, baseType: !1714, size: 64, offset: 64)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !2374, file: !179, line: 322, baseType: !1899, size: 64, offset: 512)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !2374, file: !179, line: 323, baseType: !182, size: 32, offset: 576)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !2374, file: !179, line: 324, baseType: !182, size: 32, offset: 608)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !178, file: !179, line: 365, baseType: !2398, size: 192, offset: 3904)
!2398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !179, line: 297, size: 192, elements: !2399)
!2399 = !{!2400, !2401, !2405, !2406}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2398, file: !179, line: 298, baseType: !182, size: 32)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2398, file: !179, line: 299, baseType: !2402, size: 8, offset: 32)
!2402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !179, line: 283, size: 8, elements: !2403)
!2403 = !{!2404}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2402, file: !179, line: 284, baseType: !684, size: 8, flags: DIFlagBitField, extraData: i64 0)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !2398, file: !179, line: 300, baseType: !182, size: 32, offset: 64)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2398, file: !179, line: 301, baseType: !2407, size: 64, offset: 128)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !179, line: 287, size: 64, elements: !2409)
!2409 = !{!2410, !2415, !2416, !2417}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2408, file: !179, line: 291, baseType: !2411, size: 8)
!2411 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2408, file: !179, line: 288, size: 8, elements: !2412)
!2412 = !{!2413, !2414}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2411, file: !179, line: 289, baseType: !684, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2411, file: !179, line: 290, baseType: !684, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2408, file: !179, line: 292, baseType: !684, size: 8, offset: 8)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !2408, file: !179, line: 293, baseType: !684, size: 8, offset: 16)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !2408, file: !179, line: 294, baseType: !182, size: 32, offset: 32)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !178, file: !179, line: 366, baseType: !2419, size: 64, offset: 4096)
!2419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !179, line: 209, size: 64, elements: !2420)
!2420 = !{!2421}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2419, file: !179, line: 210, baseType: !2422, size: 64)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !179, line: 84, flags: DIFlagFwdDecl)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !178, file: !179, line: 367, baseType: !2425, size: 384, offset: 4160)
!2425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !179, line: 341, size: 384, elements: !2426)
!2426 = !{!2427, !2430, !2431, !2432}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2425, file: !179, line: 342, baseType: !2428, size: 64)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2296)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2425, file: !179, line: 343, baseType: !169, size: 128, offset: 64)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !2425, file: !179, line: 344, baseType: !2428, size: 64, offset: 192)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !2425, file: !179, line: 345, baseType: !169, size: 128, offset: 256)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !178, file: !179, line: 368, baseType: !2434, size: 64, offset: 4544)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !179, line: 122, size: 1216, elements: !2436)
!2436 = !{!2437, !2438, !2439, !2444, !2448, !2452, !2453, !2454}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2435, file: !179, line: 123, baseType: !1812, size: 64)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !2435, file: !179, line: 124, baseType: !169, size: 128, offset: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2435, file: !179, line: 125, baseType: !2440, size: 64, offset: 192)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!208, !227, !2443}
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !2435, file: !179, line: 126, baseType: !2445, size: 64, offset: 256)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{!182, !177, !1812}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2435, file: !179, line: 127, baseType: !2449, size: 64, offset: 320)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{null, !177}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !2435, file: !179, line: 128, baseType: !1736, size: 64, offset: 384)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !2435, file: !179, line: 129, baseType: !1736, size: 64, offset: 448)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !2435, file: !179, line: 130, baseType: !2455, size: 704, offset: 512)
!2455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !179, line: 108, size: 704, elements: !2456)
!2456 = !{!2457, !2458, !2462, !2463, !2464}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2455, file: !179, line: 109, baseType: !223, size: 512)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !2455, file: !179, line: 110, baseType: !2459, size: 64, offset: 512)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{!182, !177}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !2455, file: !179, line: 111, baseType: !2449, size: 64, offset: 576)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2455, file: !179, line: 112, baseType: !208, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !2455, file: !179, line: 113, baseType: !208, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !178, file: !179, line: 369, baseType: !2466, size: 64, offset: 4608)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !179, line: 138, size: 256, elements: !2468)
!2468 = !{!2469, !2470, !2474, !2478}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !2467, file: !179, line: 139, baseType: !177, size: 64)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2467, file: !179, line: 140, baseType: !2471, size: 64, offset: 64)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{!182, !177, !162}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2467, file: !179, line: 141, baseType: !2475, size: 64, offset: 128)
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{null, !177, !162}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2467, file: !179, line: 142, baseType: !2449, size: 64, offset: 192)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !178, file: !179, line: 370, baseType: !2480, size: 64, offset: 4672)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_driver", file: !179, line: 162, size: 2816, elements: !2482)
!2482 = !{!2483, !2487, !2488, !2489, !2490, !2499, !2500}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2481, file: !179, line: 163, baseType: !2484, size: 640)
!2484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 640, elements: !2485)
!2485 = !{!2486}
!2486 = !DISubrange(count: 80)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2481, file: !179, line: 164, baseType: !2484, size: 640, offset: 640)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2481, file: !179, line: 165, baseType: !1812, size: 64, offset: 1280)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2481, file: !179, line: 166, baseType: !7, size: 32, offset: 1344)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2481, file: !179, line: 167, baseType: !2491, size: 192, offset: 1408)
!2491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_ops", file: !179, line: 154, size: 192, elements: !2492)
!2492 = !{!2493, !2495, !2497}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !2491, file: !179, line: 155, baseType: !2494, size: 64)
!2494 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_add", file: !179, line: 150, baseType: !2459)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2491, file: !179, line: 156, baseType: !2496, size: 64, offset: 64)
!2496 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_remove", file: !179, line: 151, baseType: !2459)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2491, file: !179, line: 157, baseType: !2498, size: 64, offset: 128)
!2498 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_notify", file: !179, line: 152, baseType: !2475)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !2481, file: !179, line: 168, baseType: !1786, size: 1152, offset: 1600)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2481, file: !179, line: 169, baseType: !1791, size: 64, offset: 2752)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !178, file: !179, line: 371, baseType: !2502, size: 64, offset: 4736)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2504)
!2504 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !179, line: 348, flags: DIFlagFwdDecl)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !178, file: !179, line: 372, baseType: !159, size: 64, offset: 4800)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !178, file: !179, line: 373, baseType: !220, size: 5568, offset: 4864)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !178, file: !179, line: 374, baseType: !7, size: 32, offset: 10432)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !178, file: !179, line: 375, baseType: !7, size: 32, offset: 10464)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !178, file: !179, line: 376, baseType: !169, size: 128, offset: 10496)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !178, file: !179, line: 377, baseType: !494, size: 192, offset: 10624)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !178, file: !179, line: 378, baseType: !2449, size: 64, offset: 10816)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !174, file: !3, line: 165, baseType: !2274, size: 64, offset: 64)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "temperature", scope: !174, file: !3, line: 166, baseType: !158, size: 64, offset: 128)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "last_temperature", scope: !174, file: !3, line: 167, baseType: !158, size: 64, offset: 192)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "polling_frequency", scope: !174, file: !3, line: 168, baseType: !158, size: 64, offset: 256)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "zombie", scope: !174, file: !3, line: 169, baseType: !2517, size: 8, offset: 320)
!2517 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !684)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !174, file: !3, line: 170, baseType: !2519, size: 8, offset: 328)
!2519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thermal_flags", file: !3, line: 157, size: 8, elements: !2520)
!2520 = !{!2521, !2522, !2523}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "cooling_mode", scope: !2519, file: !3, line: 158, baseType: !684, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !2519, file: !3, line: 159, baseType: !684, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2519, file: !3, line: 160, baseType: !684, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !174, file: !3, line: 171, baseType: !2525, size: 64, offset: 352)
!2525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thermal_state", file: !3, line: 110, size: 64, elements: !2526)
!2526 = !{!2527, !2528, !2529, !2530, !2531, !2532}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "critical", scope: !2525, file: !3, line: 111, baseType: !684, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "hot", scope: !2525, file: !3, line: 112, baseType: !684, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "passive", scope: !2525, file: !3, line: 113, baseType: !684, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2525, file: !3, line: 114, baseType: !684, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2525, file: !3, line: 115, baseType: !684, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "active_index", scope: !2525, file: !3, line: 116, baseType: !182, size: 32, offset: 32)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "trips", scope: !174, file: !3, line: 172, baseType: !2534, size: 9600, offset: 448)
!2534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thermal_trips", file: !3, line: 150, size: 9600, elements: !2535)
!2535 = !{!2536, !2546, !2551, !2567}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "critical", scope: !2534, file: !3, line: 151, baseType: !2537, size: 128)
!2537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thermal_critical", file: !3, line: 125, size: 128, elements: !2538)
!2538 = !{!2539, !2545}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2537, file: !3, line: 126, baseType: !2540, size: 8)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thermal_state_flags", file: !3, line: 119, size: 8, elements: !2541)
!2541 = !{!2542, !2543, !2544}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2540, file: !3, line: 120, baseType: !684, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2540, file: !3, line: 121, baseType: !684, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2540, file: !3, line: 122, baseType: !684, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "temperature", scope: !2537, file: !3, line: 127, baseType: !158, size: 64, offset: 64)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "hot", scope: !2534, file: !3, line: 152, baseType: !2547, size: 128, offset: 128)
!2547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thermal_hot", file: !3, line: 130, size: 128, elements: !2548)
!2548 = !{!2549, !2550}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2547, file: !3, line: 131, baseType: !2540, size: 8)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "temperature", scope: !2547, file: !3, line: 132, baseType: !158, size: 64, offset: 64)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "passive", scope: !2534, file: !3, line: 153, baseType: !2552, size: 1024, offset: 256)
!2552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thermal_passive", file: !3, line: 135, size: 1024, elements: !2553)
!2553 = !{!2554, !2555, !2556, !2557, !2558, !2559}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2552, file: !3, line: 136, baseType: !2540, size: 8)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "temperature", scope: !2552, file: !3, line: 137, baseType: !158, size: 64, offset: 64)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "tc1", scope: !2552, file: !3, line: 138, baseType: !158, size: 64, offset: 128)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "tc2", scope: !2552, file: !3, line: 139, baseType: !158, size: 64, offset: 192)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "tsp", scope: !2552, file: !3, line: 140, baseType: !158, size: 64, offset: 256)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !2552, file: !3, line: 141, baseType: !2560, size: 704, offset: 320)
!2560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_handle_list", file: !179, line: 17, size: 704, elements: !2561)
!2561 = !{!2562, !2563}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2560, file: !179, line: 18, baseType: !162, size: 32)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "handles", scope: !2560, file: !179, line: 19, baseType: !2564, size: 640, offset: 64)
!2564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 640, elements: !2565)
!2565 = !{!2566}
!2566 = !DISubrange(count: 10)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2534, file: !3, line: 154, baseType: !2568, size: 8320, offset: 1280)
!2568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2569, size: 8320, elements: !2565)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thermal_active", file: !3, line: 144, size: 832, elements: !2570)
!2570 = !{!2571, !2572, !2573}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2569, file: !3, line: 145, baseType: !2540, size: 8)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "temperature", scope: !2569, file: !3, line: 146, baseType: !158, size: 64, offset: 64)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !2569, file: !3, line: 147, baseType: !2560, size: 704, offset: 128)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !174, file: !3, line: 173, baseType: !2560, size: 704, offset: 10048)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !174, file: !3, line: 174, baseType: !2576, size: 64, offset: 10752)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_device", file: !76, line: 150, size: 8448, elements: !2578)
!2578 = !{!2579, !2580, !2581, !2582, !2583, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2688, !2712, !2727, !2728, !2729, !2733, !2734, !2735, !2744}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2577, file: !76, line: 151, baseType: !182, size: 32)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2577, file: !76, line: 152, baseType: !2293, size: 160, offset: 32)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !2577, file: !76, line: 153, baseType: !220, size: 5568, offset: 192)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "trips_attribute_group", scope: !2577, file: !76, line: 154, baseType: !335, size: 320, offset: 5760)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "trip_temp_attrs", scope: !2577, file: !76, line: 155, baseType: !2584, size: 64, offset: 6080)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_attr", file: !76, line: 38, flags: DIFlagFwdDecl)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "trip_type_attrs", scope: !2577, file: !76, line: 156, baseType: !2584, size: 64, offset: 6144)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "trip_hyst_attrs", scope: !2577, file: !76, line: 157, baseType: !2584, size: 64, offset: 6208)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2577, file: !76, line: 158, baseType: !64, size: 32, offset: 6272)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "devdata", scope: !2577, file: !76, line: 159, baseType: !159, size: 64, offset: 6336)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "trips", scope: !2577, file: !76, line: 160, baseType: !182, size: 32, offset: 6400)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "trips_disabled", scope: !2577, file: !76, line: 161, baseType: !158, size: 64, offset: 6464)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "passive_delay", scope: !2577, file: !76, line: 162, baseType: !182, size: 32, offset: 6528)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "polling_delay", scope: !2577, file: !76, line: 163, baseType: !182, size: 32, offset: 6560)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "temperature", scope: !2577, file: !76, line: 164, baseType: !182, size: 32, offset: 6592)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "last_temperature", scope: !2577, file: !76, line: 165, baseType: !182, size: 32, offset: 6624)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "emul_temperature", scope: !2577, file: !76, line: 166, baseType: !182, size: 32, offset: 6656)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "passive", scope: !2577, file: !76, line: 167, baseType: !182, size: 32, offset: 6688)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "prev_low_trip", scope: !2577, file: !76, line: 168, baseType: !182, size: 32, offset: 6720)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "prev_high_trip", scope: !2577, file: !76, line: 169, baseType: !182, size: 32, offset: 6752)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "forced_passive", scope: !2577, file: !76, line: 170, baseType: !7, size: 32, offset: 6784)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "need_update", scope: !2577, file: !76, line: 171, baseType: !417, size: 32, offset: 6816)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2577, file: !76, line: 172, baseType: !2603, size: 64, offset: 6848)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_device_ops", file: !76, line: 61, size: 896, elements: !2605)
!2605 = !{!2606, !2649, !2650, !2654, !2658, !2662, !2667, !2671, !2672, !2673, !2674, !2675, !2679, !2684}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !2604, file: !76, line: 62, baseType: !2607, size: 64)
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = !DISubroutineType(types: !2609)
!2609 = !{!182, !2576, !2610}
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device", file: !76, line: 93, size: 6528, elements: !2612)
!2612 = !{!2613, !2614, !2615, !2616, !2617, !2618, !2619, !2645, !2646, !2647, !2648}
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2611, file: !76, line: 94, baseType: !182, size: 32)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2611, file: !76, line: 95, baseType: !2293, size: 160, offset: 32)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !2611, file: !76, line: 96, baseType: !220, size: 5568, offset: 192)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !2611, file: !76, line: 97, baseType: !2013, size: 64, offset: 5760)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "devdata", scope: !2611, file: !76, line: 98, baseType: !159, size: 64, offset: 5824)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2611, file: !76, line: 99, baseType: !159, size: 64, offset: 5888)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2611, file: !76, line: 100, baseType: !2620, size: 64, offset: 5952)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2622)
!2622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device_ops", file: !76, line: 84, size: 384, elements: !2623)
!2623 = !{!2624, !2628, !2629, !2633, !2637, !2641}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "get_max_state", scope: !2622, file: !76, line: 85, baseType: !2625, size: 64)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{!182, !2610, !2064}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "get_cur_state", scope: !2622, file: !76, line: 86, baseType: !2625, size: 64, offset: 64)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "set_cur_state", scope: !2622, file: !76, line: 87, baseType: !2630, size: 64, offset: 128)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!182, !2610, !158}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "get_requested_power", scope: !2622, file: !76, line: 88, baseType: !2634, size: 64, offset: 192)
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 64)
!2635 = !DISubroutineType(types: !2636)
!2636 = !{!182, !2610, !748}
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "state2power", scope: !2622, file: !76, line: 89, baseType: !2638, size: 64, offset: 256)
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = !DISubroutineType(types: !2640)
!2640 = !{!182, !2610, !158, !748}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "power2state", scope: !2622, file: !76, line: 90, baseType: !2642, size: 64, offset: 320)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2643 = !DISubroutineType(types: !2644)
!2644 = !{!182, !2610, !162, !2064}
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "updated", scope: !2611, file: !76, line: 101, baseType: !208, size: 8, offset: 6016)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2611, file: !76, line: 102, baseType: !494, size: 192, offset: 6080)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_instances", scope: !2611, file: !76, line: 103, baseType: !169, size: 128, offset: 6272)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2611, file: !76, line: 104, baseType: !169, size: 128, offset: 6400)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !2604, file: !76, line: 64, baseType: !2607, size: 64, offset: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "get_temp", scope: !2604, file: !76, line: 66, baseType: !2651, size: 64, offset: 128)
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = !DISubroutineType(types: !2653)
!2653 = !{!182, !2576, !864}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "set_trips", scope: !2604, file: !76, line: 67, baseType: !2655, size: 64, offset: 192)
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2656 = !DISubroutineType(types: !2657)
!2657 = !{!182, !2576, !182, !182}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "change_mode", scope: !2604, file: !76, line: 68, baseType: !2659, size: 64, offset: 256)
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{!182, !2576, !64}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "get_trip_type", scope: !2604, file: !76, line: 70, baseType: !2663, size: 64, offset: 320)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = !DISubroutineType(types: !2665)
!2665 = !{!182, !2576, !182, !2666}
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "get_trip_temp", scope: !2604, file: !76, line: 72, baseType: !2668, size: 64, offset: 384)
!2668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2669, size: 64)
!2669 = !DISubroutineType(types: !2670)
!2670 = !{!182, !2576, !182, !864}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "set_trip_temp", scope: !2604, file: !76, line: 73, baseType: !2655, size: 64, offset: 448)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "get_trip_hyst", scope: !2604, file: !76, line: 74, baseType: !2668, size: 64, offset: 512)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "set_trip_hyst", scope: !2604, file: !76, line: 75, baseType: !2655, size: 64, offset: 576)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "get_crit_temp", scope: !2604, file: !76, line: 76, baseType: !2651, size: 64, offset: 640)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "set_emul_temp", scope: !2604, file: !76, line: 77, baseType: !2676, size: 64, offset: 704)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{!182, !2576, !182}
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "get_trend", scope: !2604, file: !76, line: 78, baseType: !2680, size: 64, offset: 768)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = !DISubroutineType(types: !2682)
!2682 = !{!182, !2576, !182, !2683}
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2604, file: !76, line: 80, baseType: !2685, size: 64, offset: 832)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{!182, !2576, !182, !69}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "tzp", scope: !2577, file: !76, line: 173, baseType: !2689, size: 64, offset: 6912)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_params", file: !76, line: 240, size: 576, elements: !2691)
!2691 = !{!2692, !2693, !2694, !2695, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "governor_name", scope: !2690, file: !76, line: 241, baseType: !2293, size: 160)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "no_hwmon", scope: !2690, file: !76, line: 248, baseType: !208, size: 8, offset: 160)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "num_tbps", scope: !2690, file: !76, line: 250, baseType: !182, size: 32, offset: 192)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "tbp", scope: !2690, file: !76, line: 251, baseType: !2696, size: 64, offset: 256)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_bind_params", file: !76, line: 205, size: 256, elements: !2698)
!2698 = !{!2699, !2700, !2701, !2702, !2703}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !2697, file: !76, line: 206, baseType: !2610, size: 64)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2697, file: !76, line: 217, baseType: !182, size: 32, offset: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "trip_mask", scope: !2697, file: !76, line: 224, baseType: !182, size: 32, offset: 96)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "binding_limits", scope: !2697, file: !76, line: 234, baseType: !2064, size: 64, offset: 128)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2697, file: !76, line: 235, baseType: !2607, size: 64, offset: 192)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "sustainable_power", scope: !2690, file: !76, line: 257, baseType: !162, size: 32, offset: 320)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "k_po", scope: !2690, file: !76, line: 263, baseType: !777, size: 32, offset: 352)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "k_pu", scope: !2690, file: !76, line: 269, baseType: !777, size: 32, offset: 384)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "k_i", scope: !2690, file: !76, line: 272, baseType: !777, size: 32, offset: 416)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "k_d", scope: !2690, file: !76, line: 275, baseType: !777, size: 32, offset: 448)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "integral_cutoff", scope: !2690, file: !76, line: 278, baseType: !777, size: 32, offset: 480)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "slope", scope: !2690, file: !76, line: 284, baseType: !182, size: 32, offset: 512)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2690, file: !76, line: 289, baseType: !182, size: 32, offset: 544)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "governor", scope: !2577, file: !76, line: 174, baseType: !2713, size: 64, offset: 6976)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_governor", file: !76, line: 196, size: 512, elements: !2715)
!2715 = !{!2716, !2717, !2721, !2725, !2726}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2714, file: !76, line: 197, baseType: !2293, size: 160)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "bind_to_tz", scope: !2714, file: !76, line: 198, baseType: !2718, size: 64, offset: 192)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DISubroutineType(types: !2720)
!2720 = !{!182, !2576}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "unbind_from_tz", scope: !2714, file: !76, line: 199, baseType: !2722, size: 64, offset: 256)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{null, !2576}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !2714, file: !76, line: 200, baseType: !2676, size: 64, offset: 320)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "governor_list", scope: !2714, file: !76, line: 201, baseType: !169, size: 128, offset: 384)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "governor_data", scope: !2577, file: !76, line: 175, baseType: !159, size: 64, offset: 7040)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_instances", scope: !2577, file: !76, line: 176, baseType: !169, size: 128, offset: 7104)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "ida", scope: !2577, file: !76, line: 177, baseType: !2730, size: 128, offset: 7232)
!2730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !1578, line: 244, size: 128, elements: !2731)
!2731 = !{!2732}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !2730, file: !1578, line: 245, baseType: !1581, size: 128)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2577, file: !76, line: 178, baseType: !494, size: 192, offset: 7360)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2577, file: !76, line: 179, baseType: !169, size: 128, offset: 7552)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "poll_queue", scope: !2577, file: !76, line: 180, baseType: !2736, size: 704, offset: 7680)
!2736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !95, line: 115, size: 704, elements: !2737)
!2737 = !{!2738, !2739, !2740, !2743}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2736, file: !95, line: 116, baseType: !1454, size: 256)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2736, file: !95, line: 117, baseType: !1911, size: 320, offset: 256)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2736, file: !95, line: 120, baseType: !2741, size: 64, offset: 576)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !95, line: 18, flags: DIFlagFwdDecl)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2736, file: !95, line: 121, baseType: !182, size: 32, offset: 640)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "notify_event", scope: !2577, file: !76, line: 181, baseType: !83, size: 32, offset: 8384)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "kelvin_offset", scope: !174, file: !3, line: 175, baseType: !182, size: 32, offset: 10816)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_check_work", scope: !174, file: !3, line: 176, baseType: !1454, size: 256, offset: 10880)
!2747 = !{!0, !2748, !2753, !2758, !2761, !2813, !2818, !2823, !2825, !2827, !2832, !2834, !2836, !2841, !2843, !2848, !2853, !2855, !2857, !2862, !2864, !2866, !2871, !2873, !2880, !2882, !2884, !2886, !2888, !2890, !2892, !2894, !2897, !2899, !2901, !2906, !2908, !2910, !2912, !2915, !2918, !2920, !2922}
!2748 = !DIGlobalVariableExpression(var: !2749, expr: !DIExpression())
!2749 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description174", scope: !2, file: !3, line: 50, type: !2750, isLocal: true, isDefinition: true, align: 8)
!2750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 360, elements: !2751)
!2751 = !{!2752}
!2752 = !DISubrange(count: 45)
!2753 = !DIGlobalVariableExpression(var: !2754, expr: !DIExpression())
!2754 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file175", scope: !2, file: !3, line: 51, type: !2755, isLocal: true, isDefinition: true, align: 8)
!2755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 272, elements: !2756)
!2756 = !{!2757}
!2757 = !DISubrange(count: 34)
!2758 = !DIGlobalVariableExpression(var: !2759, expr: !DIExpression())
!2759 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license176", scope: !2, file: !3, line: 51, type: !2760, isLocal: true, isDefinition: true, align: 8)
!2760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 160, elements: !1320)
!2761 = !DIGlobalVariableExpression(var: !2762, expr: !DIExpression())
!2762 = distinct !DIGlobalVariable(name: "__param_act", scope: !2, file: !3, line: 54, type: !2763, isLocal: true, isDefinition: true, align: 64)
!2763 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2764)
!2764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2765, line: 69, size: 320, elements: !2766)
!2765 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!2766 = !{!2767, !2768, !2769, !2785, !2787, !2791, !2792}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2764, file: !2765, line: 70, baseType: !227, size: 64)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2764, file: !2765, line: 71, baseType: !1791, size: 64, offset: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2764, file: !2765, line: 72, baseType: !2770, size: 64, offset: 128)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2772)
!2772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2765, line: 47, size: 256, elements: !2773)
!2773 = !{!2774, !2775, !2780, !2784}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2772, file: !2765, line: 49, baseType: !7, size: 32)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2772, file: !2765, line: 51, baseType: !2776, size: 64, offset: 64)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DISubroutineType(types: !2778)
!2778 = !{!182, !227, !2779}
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2772, file: !2765, line: 53, baseType: !2781, size: 64, offset: 128)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!182, !280, !2779}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2772, file: !2765, line: 55, baseType: !1526, size: 64, offset: 192)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2764, file: !2765, line: 73, baseType: !2786, size: 16, offset: 192)
!2786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !523)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2764, file: !2765, line: 74, baseType: !2788, size: 8, offset: 208)
!2788 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !163, line: 16, baseType: !2789)
!2789 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !165, line: 20, baseType: !2790)
!2790 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2764, file: !2765, line: 75, baseType: !684, size: 8, offset: 216)
!2792 = !DIDerivedType(tag: DW_TAG_member, scope: !2764, file: !2765, line: 76, baseType: !2793, size: 64, offset: 256)
!2793 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2764, file: !2765, line: 76, size: 64, elements: !2794)
!2794 = !{!2795, !2796, !2803}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2793, file: !2765, line: 77, baseType: !159, size: 64)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2793, file: !2765, line: 78, baseType: !2797, size: 64)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2799)
!2799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2765, line: 86, size: 128, elements: !2800)
!2800 = !{!2801, !2802}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2799, file: !2765, line: 87, baseType: !7, size: 32)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2799, file: !2765, line: 88, baseType: !280, size: 64, offset: 64)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2793, file: !2765, line: 79, baseType: !2804, size: 64)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2806)
!2806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2765, line: 92, size: 256, elements: !2807)
!2807 = !{!2808, !2809, !2810, !2811, !2812}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2806, file: !2765, line: 94, baseType: !7, size: 32)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2806, file: !2765, line: 95, baseType: !7, size: 32, offset: 32)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2806, file: !2765, line: 96, baseType: !2065, size: 64, offset: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2806, file: !2765, line: 97, baseType: !2770, size: 64, offset: 128)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2806, file: !2765, line: 98, baseType: !159, size: 64, offset: 192)
!2813 = !DIGlobalVariableExpression(var: !2814, expr: !DIExpression())
!2814 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_acttype177", scope: !2, file: !3, line: 54, type: !2815, isLocal: true, isDefinition: true, align: 8)
!2815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 200, elements: !2816)
!2816 = !{!2817}
!2817 = !DISubrange(count: 25)
!2818 = !DIGlobalVariableExpression(var: !2819, expr: !DIExpression())
!2819 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_act178", scope: !2, file: !3, line: 55, type: !2820, isLocal: true, isDefinition: true, align: 8)
!2820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 544, elements: !2821)
!2821 = !{!2822}
!2822 = !DISubrange(count: 68)
!2823 = !DIGlobalVariableExpression(var: !2824, expr: !DIExpression())
!2824 = distinct !DIGlobalVariable(name: "__param_crt", scope: !2, file: !3, line: 58, type: !2763, isLocal: true, isDefinition: true, align: 64)
!2825 = !DIGlobalVariableExpression(var: !2826, expr: !DIExpression())
!2826 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_crttype179", scope: !2, file: !3, line: 58, type: !2815, isLocal: true, isDefinition: true, align: 8)
!2827 = !DIGlobalVariableExpression(var: !2828, expr: !DIExpression())
!2828 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_crt180", scope: !2, file: !3, line: 59, type: !2829, isLocal: true, isDefinition: true, align: 8)
!2829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 480, elements: !2830)
!2830 = !{!2831}
!2831 = !DISubrange(count: 60)
!2832 = !DIGlobalVariableExpression(var: !2833, expr: !DIExpression())
!2833 = distinct !DIGlobalVariable(name: "__param_tzp", scope: !2, file: !3, line: 62, type: !2763, isLocal: true, isDefinition: true, align: 64)
!2834 = !DIGlobalVariableExpression(var: !2835, expr: !DIExpression())
!2835 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_tzptype181", scope: !2, file: !3, line: 62, type: !2815, isLocal: true, isDefinition: true, align: 8)
!2836 = !DIGlobalVariableExpression(var: !2837, expr: !DIExpression())
!2837 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_tzp182", scope: !2, file: !3, line: 63, type: !2838, isLocal: true, isDefinition: true, align: 8)
!2838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 528, elements: !2839)
!2839 = !{!2840}
!2840 = !DISubrange(count: 66)
!2841 = !DIGlobalVariableExpression(var: !2842, expr: !DIExpression())
!2842 = distinct !DIGlobalVariable(name: "__param_nocrt", scope: !2, file: !3, line: 66, type: !2763, isLocal: true, isDefinition: true, align: 64)
!2843 = !DIGlobalVariableExpression(var: !2844, expr: !DIExpression())
!2844 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_nocrttype183", scope: !2, file: !3, line: 66, type: !2845, isLocal: true, isDefinition: true, align: 8)
!2845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 216, elements: !2846)
!2846 = !{!2847}
!2847 = !DISubrange(count: 27)
!2848 = !DIGlobalVariableExpression(var: !2849, expr: !DIExpression())
!2849 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_nocrt184", scope: !2, file: !3, line: 67, type: !2850, isLocal: true, isDefinition: true, align: 8)
!2850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 696, elements: !2851)
!2851 = !{!2852}
!2852 = !DISubrange(count: 87)
!2853 = !DIGlobalVariableExpression(var: !2854, expr: !DIExpression())
!2854 = distinct !DIGlobalVariable(name: "__param_off", scope: !2, file: !3, line: 70, type: !2763, isLocal: true, isDefinition: true, align: 64)
!2855 = !DIGlobalVariableExpression(var: !2856, expr: !DIExpression())
!2856 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_offtype185", scope: !2, file: !3, line: 70, type: !2815, isLocal: true, isDefinition: true, align: 8)
!2857 = !DIGlobalVariableExpression(var: !2858, expr: !DIExpression())
!2858 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_off186", scope: !2, file: !3, line: 71, type: !2859, isLocal: true, isDefinition: true, align: 8)
!2859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 432, elements: !2860)
!2860 = !{!2861}
!2861 = !DISubrange(count: 54)
!2862 = !DIGlobalVariableExpression(var: !2863, expr: !DIExpression())
!2863 = distinct !DIGlobalVariable(name: "__param_psv", scope: !2, file: !3, line: 74, type: !2763, isLocal: true, isDefinition: true, align: 64)
!2864 = !DIGlobalVariableExpression(var: !2865, expr: !DIExpression())
!2865 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_psvtype187", scope: !2, file: !3, line: 74, type: !2815, isLocal: true, isDefinition: true, align: 8)
!2866 = !DIGlobalVariableExpression(var: !2867, expr: !DIExpression())
!2867 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_psv188", scope: !2, file: !3, line: 75, type: !2868, isLocal: true, isDefinition: true, align: 8)
!2868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 496, elements: !2869)
!2869 = !{!2870}
!2870 = !DISubrange(count: 62)
!2871 = !DIGlobalVariableExpression(var: !2872, expr: !DIExpression())
!2872 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_thermal_init191", scope: !2, file: !3, line: 1234, type: !159, isLocal: true, isDefinition: true)
!2873 = !DIGlobalVariableExpression(var: !2874, expr: !DIExpression())
!2874 = distinct !DIGlobalVariable(name: "__exitcall_acpi_thermal_exit", scope: !2, file: !3, line: 1235, type: !2875, isLocal: true, isDefinition: true)
!2875 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !2876, line: 117, baseType: !2877)
!2876 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2878 = !DISubroutineType(types: !2879)
!2879 = !{null}
!2880 = !DIGlobalVariableExpression(var: !2881, expr: !DIExpression())
!2881 = distinct !DIGlobalVariable(name: "act", scope: !2, file: !3, line: 53, type: !182, isLocal: true, isDefinition: true)
!2882 = !DIGlobalVariableExpression(var: !2883, expr: !DIExpression())
!2883 = distinct !DIGlobalVariable(name: "crt", scope: !2, file: !3, line: 57, type: !182, isLocal: true, isDefinition: true)
!2884 = !DIGlobalVariableExpression(var: !2885, expr: !DIExpression())
!2885 = distinct !DIGlobalVariable(name: "tzp", scope: !2, file: !3, line: 61, type: !182, isLocal: true, isDefinition: true)
!2886 = !DIGlobalVariableExpression(var: !2887, expr: !DIExpression())
!2887 = distinct !DIGlobalVariable(name: "nocrt", scope: !2, file: !3, line: 65, type: !182, isLocal: true, isDefinition: true)
!2888 = !DIGlobalVariableExpression(var: !2889, expr: !DIExpression())
!2889 = distinct !DIGlobalVariable(name: "off", scope: !2, file: !3, line: 69, type: !182, isLocal: true, isDefinition: true)
!2890 = !DIGlobalVariableExpression(var: !2891, expr: !DIExpression())
!2891 = distinct !DIGlobalVariable(name: "psv", scope: !2, file: !3, line: 73, type: !182, isLocal: true, isDefinition: true)
!2892 = !DIGlobalVariableExpression(var: !2893, expr: !DIExpression())
!2893 = distinct !DIGlobalVariable(name: "acpi_thermal_pm_queue", scope: !2, file: !3, line: 77, type: !2741, isLocal: true, isDefinition: true)
!2894 = !DIGlobalVariableExpression(var: !2895, expr: !DIExpression())
!2895 = distinct !DIGlobalVariable(name: "__param_str_act", scope: !2, file: !3, line: 54, type: !2896, isLocal: true, isDefinition: true)
!2896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 96, elements: !1355)
!2897 = !DIGlobalVariableExpression(var: !2898, expr: !DIExpression())
!2898 = distinct !DIGlobalVariable(name: "__param_str_crt", scope: !2, file: !3, line: 58, type: !2896, isLocal: true, isDefinition: true)
!2899 = !DIGlobalVariableExpression(var: !2900, expr: !DIExpression())
!2900 = distinct !DIGlobalVariable(name: "__param_str_tzp", scope: !2, file: !3, line: 62, type: !2896, isLocal: true, isDefinition: true)
!2901 = !DIGlobalVariableExpression(var: !2902, expr: !DIExpression())
!2902 = distinct !DIGlobalVariable(name: "__param_str_nocrt", scope: !2, file: !3, line: 66, type: !2903, isLocal: true, isDefinition: true)
!2903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 112, elements: !2904)
!2904 = !{!2905}
!2905 = !DISubrange(count: 14)
!2906 = !DIGlobalVariableExpression(var: !2907, expr: !DIExpression())
!2907 = distinct !DIGlobalVariable(name: "__param_str_off", scope: !2, file: !3, line: 70, type: !2896, isLocal: true, isDefinition: true)
!2908 = !DIGlobalVariableExpression(var: !2909, expr: !DIExpression())
!2909 = distinct !DIGlobalVariable(name: "__param_str_psv", scope: !2, file: !3, line: 74, type: !2896, isLocal: true, isDefinition: true)
!2910 = !DIGlobalVariableExpression(var: !2911, expr: !DIExpression())
!2911 = distinct !DIGlobalVariable(name: "acpi_thermal_driver", scope: !2, file: !3, line: 98, type: !2481, isLocal: true, isDefinition: true)
!2912 = !DIGlobalVariableExpression(var: !2913, expr: !DIExpression())
!2913 = distinct !DIGlobalVariable(name: "thermal_device_ids", scope: !2, file: !3, line: 83, type: !2914, isLocal: true, isDefinition: true)
!2914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1813, size: 512, elements: !1091)
!2915 = !DIGlobalVariableExpression(var: !2916, expr: !DIExpression())
!2916 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 47, type: !2917, isLocal: true, isDefinition: true)
!2917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 64, elements: !653)
!2918 = !DIGlobalVariableExpression(var: !2919, expr: !DIExpression())
!2919 = distinct !DIGlobalVariable(name: "acpi_thermal_zone_ops", scope: !2, file: !3, line: 807, type: !2604, isLocal: true, isDefinition: true)
!2920 = !DIGlobalVariableExpression(var: !2921, expr: !DIExpression())
!2921 = distinct !DIGlobalVariable(name: "acpi_thermal_pm", scope: !2, file: !3, line: 96, type: !1741, isLocal: true, isDefinition: true)
!2922 = !DIGlobalVariableExpression(var: !2923, expr: !DIExpression())
!2923 = distinct !DIGlobalVariable(name: "thermal_dmi_table", scope: !2, file: !3, line: 1161, type: !2924, isLocal: true, isDefinition: true)
!2924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2925, size: 13760, elements: !2371)
!2925 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2926)
!2926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_system_id", file: !1801, line: 566, size: 2752, elements: !2927)
!2927 = !{!2928, !2933, !2934, !2944}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !2926, file: !1801, line: 567, baseType: !2929, size: 64)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{!182, !2932}
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !2926, file: !1801, line: 568, baseType: !227, size: 64, offset: 64)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "matches", scope: !2926, file: !1801, line: 569, baseType: !2935, size: 2560, offset: 128)
!2935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2936, size: 2560, elements: !476)
!2936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_strmatch", file: !1801, line: 560, size: 640, elements: !2937)
!2937 = !{!2938, !2939, !2940}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !2936, file: !1801, line: 561, baseType: !686, size: 7, flags: DIFlagBitField, extraData: i64 0)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "exact_match", scope: !2936, file: !1801, line: 562, baseType: !686, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "substr", scope: !2936, file: !1801, line: 563, baseType: !2941, size: 632, offset: 8)
!2941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 632, elements: !2942)
!2942 = !{!2943}
!2943 = !DISubrange(count: 79)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2926, file: !1801, line: 570, baseType: !159, size: 64, offset: 2688)
!2945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 256, elements: !1349)
!2946 = !{i32 7, !"Dwarf Version", i32 4}
!2947 = !{i32 2, !"Debug Info Version", i32 3}
!2948 = !{i32 1, !"wchar_size", i32 2}
!2949 = !{i32 1, !"Code Model", i32 2}
!2950 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2951 = distinct !DISubprogram(name: "acpi_thermal_exit", scope: !3, file: !3, line: 1226, type: !2878, scopeLine: 1227, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!2952 = !DILocation(line: 1228, column: 2, scope: !2951)
!2953 = !DILocation(line: 1229, column: 20, scope: !2951)
!2954 = !DILocation(line: 1229, column: 2, scope: !2951)
!2955 = !DILocation(line: 1231, column: 2, scope: !2951)
!2956 = distinct !DISubprogram(name: "acpi_thermal_init", scope: !3, file: !3, line: 1201, type: !2957, scopeLine: 1202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!2957 = !DISubroutineType(types: !2958)
!2958 = !{!182}
!2959 = !DILocalVariable(name: "result", scope: !2956, file: !3, line: 1203, type: !182)
!2960 = !DILocation(line: 1203, column: 6, scope: !2956)
!2961 = !DILocation(line: 1205, column: 2, scope: !2956)
!2962 = !DILocation(line: 1207, column: 6, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !2956, file: !3, line: 1207, column: 6)
!2964 = !DILocation(line: 1207, column: 6, scope: !2956)
!2965 = !DILocation(line: 1208, column: 3, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2963, file: !3, line: 1207, column: 11)
!2967 = !DILocation(line: 1209, column: 3, scope: !2966)
!2968 = !DILocation(line: 1212, column: 26, scope: !2956)
!2969 = !DILocation(line: 1212, column: 24, scope: !2956)
!2970 = !DILocation(line: 1214, column: 7, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2956, file: !3, line: 1214, column: 6)
!2972 = !DILocation(line: 1214, column: 6, scope: !2956)
!2973 = !DILocation(line: 1215, column: 3, scope: !2971)
!2974 = !DILocation(line: 1217, column: 11, scope: !2956)
!2975 = !DILocation(line: 1217, column: 9, scope: !2956)
!2976 = !DILocation(line: 1218, column: 6, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2956, file: !3, line: 1218, column: 6)
!2978 = !DILocation(line: 1218, column: 13, scope: !2977)
!2979 = !DILocation(line: 1218, column: 6, scope: !2956)
!2980 = !DILocation(line: 1219, column: 21, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2977, file: !3, line: 1218, column: 18)
!2982 = !DILocation(line: 1219, column: 3, scope: !2981)
!2983 = !DILocation(line: 1220, column: 3, scope: !2981)
!2984 = !DILocation(line: 1223, column: 2, scope: !2956)
!2985 = !DILocation(line: 1224, column: 1, scope: !2956)
!2986 = distinct !DISubprogram(name: "acpi_thermal_add", scope: !3, file: !3, line: 1026, type: !2460, scopeLine: 1027, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!2987 = !DILocalVariable(name: "device", arg: 1, scope: !2986, file: !3, line: 1026, type: !177)
!2988 = !DILocation(line: 1026, column: 49, scope: !2986)
!2989 = !DILocalVariable(name: "result", scope: !2986, file: !3, line: 1028, type: !182)
!2990 = !DILocation(line: 1028, column: 6, scope: !2986)
!2991 = !DILocalVariable(name: "tz", scope: !2986, file: !3, line: 1029, type: !173)
!2992 = !DILocation(line: 1029, column: 23, scope: !2986)
!2993 = !DILocation(line: 1032, column: 7, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2986, file: !3, line: 1032, column: 6)
!2995 = !DILocation(line: 1032, column: 6, scope: !2986)
!2996 = !DILocation(line: 1033, column: 3, scope: !2994)
!2997 = !DILocation(line: 1035, column: 7, scope: !2986)
!2998 = !DILocation(line: 1035, column: 5, scope: !2986)
!2999 = !DILocation(line: 1036, column: 7, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !2986, file: !3, line: 1036, column: 6)
!3001 = !DILocation(line: 1036, column: 6, scope: !2986)
!3002 = !DILocation(line: 1037, column: 3, scope: !3000)
!3003 = !DILocation(line: 1039, column: 15, scope: !2986)
!3004 = !DILocation(line: 1039, column: 2, scope: !2986)
!3005 = !DILocation(line: 1039, column: 6, scope: !2986)
!3006 = !DILocation(line: 1039, column: 13, scope: !2986)
!3007 = !DILocation(line: 1040, column: 9, scope: !2986)
!3008 = !DILocation(line: 1040, column: 13, scope: !2986)
!3009 = !DILocation(line: 1040, column: 19, scope: !2986)
!3010 = !DILocation(line: 1040, column: 27, scope: !2986)
!3011 = !DILocation(line: 1040, column: 31, scope: !2986)
!3012 = !DILocation(line: 1040, column: 2, scope: !2986)
!3013 = !DILocation(line: 1041, column: 9, scope: !2986)
!3014 = !DILocation(line: 1041, column: 2, scope: !2986)
!3015 = !DILocation(line: 1042, column: 9, scope: !2986)
!3016 = !DILocation(line: 1042, column: 2, scope: !2986)
!3017 = !DILocation(line: 1043, column: 24, scope: !2986)
!3018 = !DILocation(line: 1043, column: 2, scope: !2986)
!3019 = !DILocation(line: 1043, column: 10, scope: !2986)
!3020 = !DILocation(line: 1043, column: 22, scope: !2986)
!3021 = !DILocation(line: 1045, column: 33, scope: !2986)
!3022 = !DILocation(line: 1045, column: 11, scope: !2986)
!3023 = !DILocation(line: 1045, column: 9, scope: !2986)
!3024 = !DILocation(line: 1046, column: 6, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !2986, file: !3, line: 1046, column: 6)
!3026 = !DILocation(line: 1046, column: 6, scope: !2986)
!3027 = !DILocation(line: 1047, column: 3, scope: !3025)
!3028 = !DILocation(line: 1049, column: 28, scope: !2986)
!3029 = !DILocation(line: 1049, column: 2, scope: !2986)
!3030 = !DILocation(line: 1051, column: 46, scope: !2986)
!3031 = !DILocation(line: 1051, column: 11, scope: !2986)
!3032 = !DILocation(line: 1051, column: 9, scope: !2986)
!3033 = !DILocation(line: 1052, column: 6, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !2986, file: !3, line: 1052, column: 6)
!3035 = !DILocation(line: 1052, column: 6, scope: !2986)
!3036 = !DILocation(line: 1053, column: 3, scope: !3034)
!3037 = !DILocation(line: 1055, column: 2, scope: !2986)
!3038 = !DILocation(line: 1055, column: 2, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !2986, file: !3, line: 1055, column: 2)
!3040 = !DILocation(line: 1057, column: 2, scope: !2986)
!3041 = !DILocation(line: 1059, column: 2, scope: !2986)
!3042 = !DILabel(scope: !2986, name: "free_memory", file: !3, line: 1061)
!3043 = !DILocation(line: 1061, column: 1, scope: !2986)
!3044 = !DILocation(line: 1062, column: 8, scope: !2986)
!3045 = !DILocation(line: 1062, column: 2, scope: !2986)
!3046 = !DILabel(scope: !2986, name: "end", file: !3, line: 1063)
!3047 = !DILocation(line: 1063, column: 1, scope: !2986)
!3048 = !DILocation(line: 1064, column: 9, scope: !2986)
!3049 = !DILocation(line: 1064, column: 2, scope: !2986)
!3050 = !DILocation(line: 1065, column: 1, scope: !2986)
!3051 = distinct !DISubprogram(name: "acpi_thermal_remove", scope: !3, file: !3, line: 1067, type: !2460, scopeLine: 1068, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!3052 = !DILocalVariable(name: "device", arg: 1, scope: !3051, file: !3, line: 1067, type: !177)
!3053 = !DILocation(line: 1067, column: 52, scope: !3051)
!3054 = !DILocalVariable(name: "tz", scope: !3051, file: !3, line: 1069, type: !173)
!3055 = !DILocation(line: 1069, column: 23, scope: !3051)
!3056 = !DILocation(line: 1071, column: 7, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3051, file: !3, line: 1071, column: 6)
!3058 = !DILocation(line: 1071, column: 14, scope: !3057)
!3059 = !DILocation(line: 1071, column: 35, scope: !3057)
!3060 = !DILocation(line: 1071, column: 18, scope: !3057)
!3061 = !DILocation(line: 1071, column: 6, scope: !3051)
!3062 = !DILocation(line: 1072, column: 3, scope: !3057)
!3063 = !DILocation(line: 1074, column: 18, scope: !3051)
!3064 = !DILocation(line: 1074, column: 2, scope: !3051)
!3065 = !DILocation(line: 1075, column: 24, scope: !3051)
!3066 = !DILocation(line: 1075, column: 7, scope: !3051)
!3067 = !DILocation(line: 1075, column: 5, scope: !3051)
!3068 = !DILocation(line: 1077, column: 39, scope: !3051)
!3069 = !DILocation(line: 1077, column: 2, scope: !3051)
!3070 = !DILocation(line: 1078, column: 8, scope: !3051)
!3071 = !DILocation(line: 1078, column: 2, scope: !3051)
!3072 = !DILocation(line: 1079, column: 2, scope: !3051)
!3073 = !DILocation(line: 1080, column: 1, scope: !3051)
!3074 = distinct !DISubprogram(name: "acpi_thermal_notify", scope: !3, file: !3, line: 903, type: !2476, scopeLine: 904, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!3075 = !DILocalVariable(name: "device", arg: 1, scope: !3074, file: !3, line: 903, type: !177)
!3076 = !DILocation(line: 903, column: 53, scope: !3074)
!3077 = !DILocalVariable(name: "event", arg: 2, scope: !3074, file: !3, line: 903, type: !162)
!3078 = !DILocation(line: 903, column: 65, scope: !3074)
!3079 = !DILocalVariable(name: "tz", scope: !3074, file: !3, line: 905, type: !173)
!3080 = !DILocation(line: 905, column: 23, scope: !3074)
!3081 = !DILocation(line: 905, column: 45, scope: !3074)
!3082 = !DILocation(line: 905, column: 28, scope: !3074)
!3083 = !DILocation(line: 908, column: 7, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3074, file: !3, line: 908, column: 6)
!3085 = !DILocation(line: 908, column: 6, scope: !3074)
!3086 = !DILocation(line: 909, column: 3, scope: !3084)
!3087 = !DILocation(line: 911, column: 10, scope: !3074)
!3088 = !DILocation(line: 911, column: 2, scope: !3074)
!3089 = !DILocation(line: 913, column: 22, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3074, file: !3, line: 911, column: 17)
!3091 = !DILocation(line: 913, column: 3, scope: !3090)
!3092 = !DILocation(line: 914, column: 3, scope: !3090)
!3093 = !DILocation(line: 916, column: 29, scope: !3090)
!3094 = !DILocation(line: 916, column: 3, scope: !3090)
!3095 = !DILocation(line: 917, column: 22, scope: !3090)
!3096 = !DILocation(line: 917, column: 3, scope: !3090)
!3097 = !DILocation(line: 918, column: 35, scope: !3090)
!3098 = !DILocation(line: 918, column: 43, scope: !3090)
!3099 = !DILocation(line: 918, column: 47, scope: !3090)
!3100 = !DILocation(line: 919, column: 19, scope: !3090)
!3101 = !DILocation(line: 919, column: 27, scope: !3090)
!3102 = !DILocation(line: 919, column: 9, scope: !3090)
!3103 = !DILocation(line: 919, column: 33, scope: !3090)
!3104 = !DILocation(line: 918, column: 3, scope: !3090)
!3105 = !DILocation(line: 920, column: 3, scope: !3090)
!3106 = !DILocation(line: 922, column: 29, scope: !3090)
!3107 = !DILocation(line: 922, column: 3, scope: !3090)
!3108 = !DILocation(line: 923, column: 22, scope: !3090)
!3109 = !DILocation(line: 923, column: 3, scope: !3090)
!3110 = !DILocation(line: 924, column: 35, scope: !3090)
!3111 = !DILocation(line: 924, column: 43, scope: !3090)
!3112 = !DILocation(line: 924, column: 47, scope: !3090)
!3113 = !DILocation(line: 925, column: 19, scope: !3090)
!3114 = !DILocation(line: 925, column: 27, scope: !3090)
!3115 = !DILocation(line: 925, column: 9, scope: !3090)
!3116 = !DILocation(line: 925, column: 33, scope: !3090)
!3117 = !DILocation(line: 924, column: 3, scope: !3090)
!3118 = !DILocation(line: 926, column: 3, scope: !3090)
!3119 = !DILocation(line: 930, column: 3, scope: !3090)
!3120 = !DILocation(line: 932, column: 1, scope: !3074)
!3121 = distinct !DISubprogram(name: "kzalloc", scope: !128, file: !128, line: 662, type: !3122, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{!159, !326, !156}
!3124 = !DILocalVariable(name: "s", arg: 1, scope: !3125, file: !128, line: 445, type: !1167)
!3125 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !128, file: !128, line: 445, type: !3126, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{!159, !1167, !156, !326}
!3128 = !DILocation(line: 445, column: 72, scope: !3125, inlinedAt: !3129)
!3129 = distinct !DILocation(line: 552, column: 10, scope: !3130, inlinedAt: !3133)
!3130 = distinct !DILexicalBlock(scope: !3131, file: !128, line: 540, column: 34)
!3131 = distinct !DILexicalBlock(scope: !3132, file: !128, line: 540, column: 6)
!3132 = distinct !DISubprogram(name: "kmalloc", scope: !128, file: !128, line: 538, type: !3122, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!3133 = distinct !DILocation(line: 664, column: 9, scope: !3121)
!3134 = !DILocalVariable(name: "flags", arg: 2, scope: !3125, file: !128, line: 446, type: !156)
!3135 = !DILocation(line: 446, column: 9, scope: !3125, inlinedAt: !3129)
!3136 = !DILocalVariable(name: "size", arg: 3, scope: !3125, file: !128, line: 446, type: !326)
!3137 = !DILocation(line: 446, column: 23, scope: !3125, inlinedAt: !3129)
!3138 = !DILocalVariable(name: "ret", scope: !3125, file: !128, line: 448, type: !159)
!3139 = !DILocation(line: 448, column: 8, scope: !3125, inlinedAt: !3129)
!3140 = !DILocalVariable(name: "flags", arg: 1, scope: !3141, file: !128, line: 318, type: !156)
!3141 = distinct !DISubprogram(name: "kmalloc_type", scope: !128, file: !128, line: 318, type: !3142, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{!127, !156}
!3144 = !DILocation(line: 318, column: 67, scope: !3141, inlinedAt: !3145)
!3145 = distinct !DILocation(line: 553, column: 20, scope: !3130, inlinedAt: !3133)
!3146 = !DILocalVariable(name: "size", arg: 1, scope: !3147, file: !128, line: 346, type: !326)
!3147 = distinct !DISubprogram(name: "kmalloc_index", scope: !128, file: !128, line: 346, type: !3148, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{!7, !326}
!3150 = !DILocation(line: 346, column: 58, scope: !3147, inlinedAt: !3151)
!3151 = distinct !DILocation(line: 547, column: 11, scope: !3130, inlinedAt: !3133)
!3152 = !DILocalVariable(name: "size", arg: 1, scope: !3153, file: !128, line: 472, type: !326)
!3153 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !128, file: !128, line: 472, type: !3154, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{!159, !326, !156, !7}
!3156 = !DILocation(line: 472, column: 28, scope: !3153, inlinedAt: !3157)
!3157 = distinct !DILocation(line: 481, column: 9, scope: !3158, inlinedAt: !3159)
!3158 = distinct !DISubprogram(name: "kmalloc_large", scope: !128, file: !128, line: 478, type: !3122, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!3159 = distinct !DILocation(line: 545, column: 11, scope: !3160, inlinedAt: !3133)
!3160 = distinct !DILexicalBlock(scope: !3130, file: !128, line: 544, column: 7)
!3161 = !DILocalVariable(name: "flags", arg: 2, scope: !3153, file: !128, line: 472, type: !156)
!3162 = !DILocation(line: 472, column: 40, scope: !3153, inlinedAt: !3157)
!3163 = !DILocalVariable(name: "order", arg: 3, scope: !3153, file: !128, line: 472, type: !7)
!3164 = !DILocation(line: 472, column: 60, scope: !3153, inlinedAt: !3157)
!3165 = !DILocalVariable(name: "size", arg: 1, scope: !3158, file: !128, line: 478, type: !326)
!3166 = !DILocation(line: 478, column: 51, scope: !3158, inlinedAt: !3159)
!3167 = !DILocalVariable(name: "flags", arg: 2, scope: !3158, file: !128, line: 478, type: !156)
!3168 = !DILocation(line: 478, column: 63, scope: !3158, inlinedAt: !3159)
!3169 = !DILocalVariable(name: "order", scope: !3158, file: !128, line: 480, type: !7)
!3170 = !DILocation(line: 480, column: 15, scope: !3158, inlinedAt: !3159)
!3171 = !DILocalVariable(name: "size", arg: 1, scope: !3132, file: !128, line: 538, type: !326)
!3172 = !DILocation(line: 538, column: 45, scope: !3132, inlinedAt: !3133)
!3173 = !DILocalVariable(name: "flags", arg: 2, scope: !3132, file: !128, line: 538, type: !156)
!3174 = !DILocation(line: 538, column: 57, scope: !3132, inlinedAt: !3133)
!3175 = !DILocalVariable(name: "index", scope: !3130, file: !128, line: 542, type: !7)
!3176 = !DILocation(line: 542, column: 16, scope: !3130, inlinedAt: !3133)
!3177 = !DILocalVariable(name: "size", arg: 1, scope: !3121, file: !128, line: 662, type: !326)
!3178 = !DILocation(line: 662, column: 36, scope: !3121)
!3179 = !DILocalVariable(name: "flags", arg: 2, scope: !3121, file: !128, line: 662, type: !156)
!3180 = !DILocation(line: 662, column: 48, scope: !3121)
!3181 = !DILocation(line: 664, column: 17, scope: !3121)
!3182 = !DILocation(line: 664, column: 23, scope: !3121)
!3183 = !DILocation(line: 664, column: 29, scope: !3121)
!3184 = !DILocation(line: 540, column: 27, scope: !3131, inlinedAt: !3133)
!3185 = !DILocation(line: 540, column: 6, scope: !3131, inlinedAt: !3133)
!3186 = !DILocation(line: 540, column: 6, scope: !3132, inlinedAt: !3133)
!3187 = !DILocation(line: 544, column: 7, scope: !3160, inlinedAt: !3133)
!3188 = !DILocation(line: 544, column: 12, scope: !3160, inlinedAt: !3133)
!3189 = !DILocation(line: 544, column: 7, scope: !3130, inlinedAt: !3133)
!3190 = !DILocation(line: 545, column: 25, scope: !3160, inlinedAt: !3133)
!3191 = !DILocation(line: 545, column: 31, scope: !3160, inlinedAt: !3133)
!3192 = !DILocation(line: 480, column: 33, scope: !3158, inlinedAt: !3159)
!3193 = !DILocation(line: 480, column: 23, scope: !3158, inlinedAt: !3159)
!3194 = !DILocation(line: 481, column: 29, scope: !3158, inlinedAt: !3159)
!3195 = !DILocation(line: 481, column: 35, scope: !3158, inlinedAt: !3159)
!3196 = !DILocation(line: 481, column: 42, scope: !3158, inlinedAt: !3159)
!3197 = !DILocation(line: 474, column: 23, scope: !3153, inlinedAt: !3157)
!3198 = !DILocation(line: 474, column: 29, scope: !3153, inlinedAt: !3157)
!3199 = !DILocation(line: 474, column: 36, scope: !3153, inlinedAt: !3157)
!3200 = !DILocation(line: 474, column: 9, scope: !3153, inlinedAt: !3157)
!3201 = !DILocation(line: 545, column: 4, scope: !3160, inlinedAt: !3133)
!3202 = !DILocation(line: 547, column: 25, scope: !3130, inlinedAt: !3133)
!3203 = !DILocation(line: 348, column: 7, scope: !3204, inlinedAt: !3151)
!3204 = distinct !DILexicalBlock(scope: !3147, file: !128, line: 348, column: 6)
!3205 = !DILocation(line: 348, column: 6, scope: !3147, inlinedAt: !3151)
!3206 = !DILocation(line: 349, column: 3, scope: !3204, inlinedAt: !3151)
!3207 = !DILocation(line: 351, column: 6, scope: !3208, inlinedAt: !3151)
!3208 = distinct !DILexicalBlock(scope: !3147, file: !128, line: 351, column: 6)
!3209 = !DILocation(line: 351, column: 11, scope: !3208, inlinedAt: !3151)
!3210 = !DILocation(line: 351, column: 6, scope: !3147, inlinedAt: !3151)
!3211 = !DILocation(line: 352, column: 3, scope: !3208, inlinedAt: !3151)
!3212 = !DILocation(line: 354, column: 32, scope: !3213, inlinedAt: !3151)
!3213 = distinct !DILexicalBlock(scope: !3147, file: !128, line: 354, column: 6)
!3214 = !DILocation(line: 354, column: 37, scope: !3213, inlinedAt: !3151)
!3215 = !DILocation(line: 354, column: 42, scope: !3213, inlinedAt: !3151)
!3216 = !DILocation(line: 354, column: 45, scope: !3213, inlinedAt: !3151)
!3217 = !DILocation(line: 354, column: 50, scope: !3213, inlinedAt: !3151)
!3218 = !DILocation(line: 354, column: 6, scope: !3147, inlinedAt: !3151)
!3219 = !DILocation(line: 355, column: 3, scope: !3213, inlinedAt: !3151)
!3220 = !DILocation(line: 356, column: 32, scope: !3221, inlinedAt: !3151)
!3221 = distinct !DILexicalBlock(scope: !3147, file: !128, line: 356, column: 6)
!3222 = !DILocation(line: 356, column: 37, scope: !3221, inlinedAt: !3151)
!3223 = !DILocation(line: 356, column: 43, scope: !3221, inlinedAt: !3151)
!3224 = !DILocation(line: 356, column: 46, scope: !3221, inlinedAt: !3151)
!3225 = !DILocation(line: 356, column: 51, scope: !3221, inlinedAt: !3151)
!3226 = !DILocation(line: 356, column: 6, scope: !3147, inlinedAt: !3151)
!3227 = !DILocation(line: 357, column: 3, scope: !3221, inlinedAt: !3151)
!3228 = !DILocation(line: 358, column: 6, scope: !3229, inlinedAt: !3151)
!3229 = distinct !DILexicalBlock(scope: !3147, file: !128, line: 358, column: 6)
!3230 = !DILocation(line: 358, column: 11, scope: !3229, inlinedAt: !3151)
!3231 = !DILocation(line: 358, column: 6, scope: !3147, inlinedAt: !3151)
!3232 = !DILocation(line: 358, column: 26, scope: !3229, inlinedAt: !3151)
!3233 = !DILocation(line: 359, column: 6, scope: !3234, inlinedAt: !3151)
!3234 = distinct !DILexicalBlock(scope: !3147, file: !128, line: 359, column: 6)
!3235 = !DILocation(line: 359, column: 11, scope: !3234, inlinedAt: !3151)
!3236 = !DILocation(line: 359, column: 6, scope: !3147, inlinedAt: !3151)
!3237 = !DILocation(line: 359, column: 26, scope: !3234, inlinedAt: !3151)
!3238 = !DILocation(line: 360, column: 6, scope: !3239, inlinedAt: !3151)
!3239 = distinct !DILexicalBlock(scope: !3147, file: !128, line: 360, column: 6)
!3240 = !DILocation(line: 360, column: 11, scope: !3239, inlinedAt: !3151)
!3241 = !DILocation(line: 360, column: 6, scope: !3147, inlinedAt: !3151)
!3242 = !DILocation(line: 360, column: 26, scope: !3239, inlinedAt: !3151)
!3243 = !DILocation(line: 361, column: 6, scope: !3244, inlinedAt: !3151)
!3244 = distinct !DILexicalBlock(scope: !3147, file: !128, line: 361, column: 6)
!3245 = !DILocation(line: 361, column: 11, scope: !3244, inlinedAt: !3151)
!3246 = !DILocation(line: 361, column: 6, scope: !3147, inlinedAt: !3151)
!3247 = !DILocation(line: 361, column: 26, scope: !3244, inlinedAt: !3151)
!3248 = !DILocation(line: 362, column: 6, scope: !3249, inlinedAt: !3151)
!3249 = distinct !DILexicalBlock(scope: !3147, file: !128, line: 362, column: 6)
!3250 = !DILocation(line: 362, column: 11, scope: !3249, inlinedAt: !3151)
!3251 = !DILocation(line: 362, column: 6, scope: !3147, inlinedAt: !3151)
!3252 = !DILocation(line: 362, column: 26, scope: !3249, inlinedAt: !3151)
!3253 = !DILocation(line: 363, column: 6, scope: !3254, inlinedAt: !3151)
!3254 = distinct !DILexicalBlock(scope: !3147, file: !128, line: 363, column: 6)
!3255 = !DILocation(line: 363, column: 11, scope: !3254, inlinedAt: !3151)
!3256 = !DILocation(line: 363, column: 6, scope: !3147, inlinedAt: !3151)
!3257 = !DILocation(line: 363, column: 26, scope: !3254, inlinedAt: !3151)
!3258 = !DILocation(line: 364, column: 6, scope: !3259, inlinedAt: !3151)
!3259 = distinct !DILexicalBlock(scope: !3147, file: !128, line: 364, column: 6)
!3260 = !DILocation(line: 364, column: 11, scope: !3259, inlinedAt: !3151)
!3261 = !DILocation(line: 364, column: 6, scope: !3147, inlinedAt: !3151)
!3262 = !DILocation(line: 364, column: 26, scope: !3259, inlinedAt: !3151)
!3263 = !DILocation(line: 365, column: 6, scope: !3264, inlinedAt: !3151)
!3264 = distinct !DILexicalBlock(scope: !3147, file: !128, line: 365, column: 6)
!3265 = !DILocation(line: 365, column: 11, scope: !3264, inlinedAt: !3151)
!3266 = !DILocation(line: 365, column: 6, scope: !3147, inlinedAt: !3151)
!3267 = !DILocation(line: 365, column: 26, scope: !3264, inlinedAt: !3151)
!3268 = !DILocation(line: 366, column: 6, scope: !3269, inlinedAt: !3151)
!3269 = distinct !DILexicalBlock(scope: !3147, file: !128, line: 366, column: 6)
!3270 = !DILocation(line: 366, column: 11, scope: !3269, inlinedAt: !3151)
!3271 = !DILocation(line: 366, column: 6, scope: !3147, inlinedAt: !3151)
!3272 = !DILocation(line: 366, column: 26, scope: !3269, inlinedAt: !3151)
!3273 = !DILocation(line: 367, column: 6, scope: !3274, inlinedAt: !3151)
!3274 = distinct !DILexicalBlock(scope: !3147, file: !128, line: 367, column: 6)
!3275 = !DILocation(line: 367, column: 11, scope: !3274, inlinedAt: !3151)
!3276 = !DILocation(line: 367, column: 6, scope: !3147, inlinedAt: !3151)
!3277 = !DILocation(line: 367, column: 26, scope: !3274, inlinedAt: !3151)
!3278 = !DILocation(line: 368, column: 6, scope: !3279, inlinedAt: !3151)
!3279 = distinct !DILexicalBlock(scope: !3147, file: !128, line: 368, column: 6)
!3280 = !DILocation(line: 368, column: 11, scope: !3279, inlinedAt: !3151)
!3281 = !DILocation(line: 368, column: 6, scope: !3147, inlinedAt: !3151)
!3282 = !DILocation(line: 368, column: 26, scope: !3279, inlinedAt: !3151)
!3283 = !DILocation(line: 369, column: 6, scope: !3284, inlinedAt: !3151)
!3284 = distinct !DILexicalBlock(scope: !3147, file: !128, line: 369, column: 6)
!3285 = !DILocation(line: 369, column: 11, scope: !3284, inlinedAt: !3151)
!3286 = !DILocation(line: 369, column: 6, scope: !3147, inlinedAt: !3151)
!3287 = !DILocation(line: 369, column: 26, scope: !3284, inlinedAt: !3151)
!3288 = !DILocation(line: 370, column: 6, scope: !3289, inlinedAt: !3151)
!3289 = distinct !DILexicalBlock(scope: !3147, file: !128, line: 370, column: 6)
!3290 = !DILocation(line: 370, column: 11, scope: !3289, inlinedAt: !3151)
!3291 = !DILocation(line: 370, column: 6, scope: !3147, inlinedAt: !3151)
!3292 = !DILocation(line: 370, column: 26, scope: !3289, inlinedAt: !3151)
!3293 = !DILocation(line: 371, column: 6, scope: !3294, inlinedAt: !3151)
!3294 = distinct !DILexicalBlock(scope: !3147, file: !128, line: 371, column: 6)
!3295 = !DILocation(line: 371, column: 11, scope: !3294, inlinedAt: !3151)
!3296 = !DILocation(line: 371, column: 6, scope: !3147, inlinedAt: !3151)
!3297 = !DILocation(line: 371, column: 26, scope: !3294, inlinedAt: !3151)
!3298 = !DILocation(line: 372, column: 6, scope: !3299, inlinedAt: !3151)
!3299 = distinct !DILexicalBlock(scope: !3147, file: !128, line: 372, column: 6)
!3300 = !DILocation(line: 372, column: 11, scope: !3299, inlinedAt: !3151)
!3301 = !DILocation(line: 372, column: 6, scope: !3147, inlinedAt: !3151)
!3302 = !DILocation(line: 372, column: 26, scope: !3299, inlinedAt: !3151)
!3303 = !DILocation(line: 373, column: 6, scope: !3304, inlinedAt: !3151)
!3304 = distinct !DILexicalBlock(scope: !3147, file: !128, line: 373, column: 6)
!3305 = !DILocation(line: 373, column: 11, scope: !3304, inlinedAt: !3151)
!3306 = !DILocation(line: 373, column: 6, scope: !3147, inlinedAt: !3151)
!3307 = !DILocation(line: 373, column: 26, scope: !3304, inlinedAt: !3151)
!3308 = !DILocation(line: 374, column: 6, scope: !3309, inlinedAt: !3151)
!3309 = distinct !DILexicalBlock(scope: !3147, file: !128, line: 374, column: 6)
!3310 = !DILocation(line: 374, column: 11, scope: !3309, inlinedAt: !3151)
!3311 = !DILocation(line: 374, column: 6, scope: !3147, inlinedAt: !3151)
!3312 = !DILocation(line: 374, column: 26, scope: !3309, inlinedAt: !3151)
!3313 = !DILocation(line: 375, column: 6, scope: !3314, inlinedAt: !3151)
!3314 = distinct !DILexicalBlock(scope: !3147, file: !128, line: 375, column: 6)
!3315 = !DILocation(line: 375, column: 11, scope: !3314, inlinedAt: !3151)
!3316 = !DILocation(line: 375, column: 6, scope: !3147, inlinedAt: !3151)
!3317 = !DILocation(line: 375, column: 27, scope: !3314, inlinedAt: !3151)
!3318 = !DILocation(line: 376, column: 6, scope: !3319, inlinedAt: !3151)
!3319 = distinct !DILexicalBlock(scope: !3147, file: !128, line: 376, column: 6)
!3320 = !DILocation(line: 376, column: 11, scope: !3319, inlinedAt: !3151)
!3321 = !DILocation(line: 376, column: 6, scope: !3147, inlinedAt: !3151)
!3322 = !DILocation(line: 376, column: 32, scope: !3319, inlinedAt: !3151)
!3323 = !DILocation(line: 377, column: 6, scope: !3324, inlinedAt: !3151)
!3324 = distinct !DILexicalBlock(scope: !3147, file: !128, line: 377, column: 6)
!3325 = !DILocation(line: 377, column: 11, scope: !3324, inlinedAt: !3151)
!3326 = !DILocation(line: 377, column: 6, scope: !3147, inlinedAt: !3151)
!3327 = !DILocation(line: 377, column: 32, scope: !3324, inlinedAt: !3151)
!3328 = !DILocation(line: 378, column: 6, scope: !3329, inlinedAt: !3151)
!3329 = distinct !DILexicalBlock(scope: !3147, file: !128, line: 378, column: 6)
!3330 = !DILocation(line: 378, column: 11, scope: !3329, inlinedAt: !3151)
!3331 = !DILocation(line: 378, column: 6, scope: !3147, inlinedAt: !3151)
!3332 = !DILocation(line: 378, column: 32, scope: !3329, inlinedAt: !3151)
!3333 = !DILocation(line: 379, column: 6, scope: !3334, inlinedAt: !3151)
!3334 = distinct !DILexicalBlock(scope: !3147, file: !128, line: 379, column: 6)
!3335 = !DILocation(line: 379, column: 11, scope: !3334, inlinedAt: !3151)
!3336 = !DILocation(line: 379, column: 6, scope: !3147, inlinedAt: !3151)
!3337 = !DILocation(line: 379, column: 33, scope: !3334, inlinedAt: !3151)
!3338 = !DILocation(line: 380, column: 6, scope: !3339, inlinedAt: !3151)
!3339 = distinct !DILexicalBlock(scope: !3147, file: !128, line: 380, column: 6)
!3340 = !DILocation(line: 380, column: 11, scope: !3339, inlinedAt: !3151)
!3341 = !DILocation(line: 380, column: 6, scope: !3147, inlinedAt: !3151)
!3342 = !DILocation(line: 380, column: 33, scope: !3339, inlinedAt: !3151)
!3343 = !DILocation(line: 381, column: 6, scope: !3344, inlinedAt: !3151)
!3344 = distinct !DILexicalBlock(scope: !3147, file: !128, line: 381, column: 6)
!3345 = !DILocation(line: 381, column: 11, scope: !3344, inlinedAt: !3151)
!3346 = !DILocation(line: 381, column: 6, scope: !3147, inlinedAt: !3151)
!3347 = !DILocation(line: 381, column: 33, scope: !3344, inlinedAt: !3151)
!3348 = !DILocation(line: 382, column: 2, scope: !3349, inlinedAt: !3151)
!3349 = distinct !DILexicalBlock(scope: !3350, file: !128, line: 382, column: 2)
!3350 = distinct !DILexicalBlock(scope: !3147, file: !128, line: 382, column: 2)
!3351 = !{i32 -2144183661, i32 -2144183632, i32 -2144183586, i32 -2144183528, i32 -2144183474, i32 -2144183420, i32 -2144183365, i32 -2144183334}
!3352 = !DILocation(line: 382, column: 2, scope: !3353, inlinedAt: !3151)
!3353 = distinct !DILexicalBlock(scope: !3354, file: !128, line: 382, column: 2)
!3354 = distinct !DILexicalBlock(scope: !3350, file: !128, line: 382, column: 2)
!3355 = !{i32 -2144182891, i32 -2144182884, i32 -2144182830, i32 -2144182799, i32 -2144182769}
!3356 = !DILocation(line: 382, column: 2, scope: !3354, inlinedAt: !3151)
!3357 = !DILocation(line: 386, column: 1, scope: !3147, inlinedAt: !3151)
!3358 = !DILocation(line: 547, column: 9, scope: !3130, inlinedAt: !3133)
!3359 = !DILocation(line: 549, column: 8, scope: !3360, inlinedAt: !3133)
!3360 = distinct !DILexicalBlock(scope: !3130, file: !128, line: 549, column: 7)
!3361 = !DILocation(line: 549, column: 7, scope: !3130, inlinedAt: !3133)
!3362 = !DILocation(line: 550, column: 4, scope: !3360, inlinedAt: !3133)
!3363 = !DILocation(line: 553, column: 33, scope: !3130, inlinedAt: !3133)
!3364 = !DILocation(line: 325, column: 6, scope: !3365, inlinedAt: !3145)
!3365 = distinct !DILexicalBlock(scope: !3141, file: !128, line: 325, column: 6)
!3366 = !DILocation(line: 325, column: 6, scope: !3141, inlinedAt: !3145)
!3367 = !DILocation(line: 326, column: 3, scope: !3365, inlinedAt: !3145)
!3368 = !DILocation(line: 332, column: 9, scope: !3141, inlinedAt: !3145)
!3369 = !DILocation(line: 332, column: 15, scope: !3141, inlinedAt: !3145)
!3370 = !DILocation(line: 332, column: 2, scope: !3141, inlinedAt: !3145)
!3371 = !DILocation(line: 336, column: 1, scope: !3141, inlinedAt: !3145)
!3372 = !DILocation(line: 553, column: 5, scope: !3130, inlinedAt: !3133)
!3373 = !DILocation(line: 553, column: 41, scope: !3130, inlinedAt: !3133)
!3374 = !DILocation(line: 554, column: 5, scope: !3130, inlinedAt: !3133)
!3375 = !DILocation(line: 554, column: 12, scope: !3130, inlinedAt: !3133)
!3376 = !DILocation(line: 448, column: 31, scope: !3125, inlinedAt: !3129)
!3377 = !DILocation(line: 448, column: 34, scope: !3125, inlinedAt: !3129)
!3378 = !DILocation(line: 448, column: 14, scope: !3125, inlinedAt: !3129)
!3379 = !DILocation(line: 450, column: 22, scope: !3125, inlinedAt: !3129)
!3380 = !DILocation(line: 450, column: 25, scope: !3125, inlinedAt: !3129)
!3381 = !DILocation(line: 450, column: 30, scope: !3125, inlinedAt: !3129)
!3382 = !DILocation(line: 450, column: 36, scope: !3125, inlinedAt: !3129)
!3383 = !DILocation(line: 450, column: 8, scope: !3125, inlinedAt: !3129)
!3384 = !DILocation(line: 450, column: 6, scope: !3125, inlinedAt: !3129)
!3385 = !DILocation(line: 451, column: 9, scope: !3125, inlinedAt: !3129)
!3386 = !DILocation(line: 552, column: 3, scope: !3130, inlinedAt: !3133)
!3387 = !DILocation(line: 557, column: 19, scope: !3132, inlinedAt: !3133)
!3388 = !DILocation(line: 557, column: 25, scope: !3132, inlinedAt: !3133)
!3389 = !DILocation(line: 557, column: 9, scope: !3132, inlinedAt: !3133)
!3390 = !DILocation(line: 557, column: 2, scope: !3132, inlinedAt: !3133)
!3391 = !DILocation(line: 558, column: 1, scope: !3132, inlinedAt: !3133)
!3392 = !DILocation(line: 664, column: 2, scope: !3121)
!3393 = distinct !DISubprogram(name: "acpi_thermal_get_info", scope: !3, file: !3, line: 966, type: !3394, scopeLine: 967, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!3394 = !DISubroutineType(types: !3395)
!3395 = !{!182, !173}
!3396 = !DILocalVariable(name: "tz", arg: 1, scope: !3393, file: !3, line: 966, type: !173)
!3397 = !DILocation(line: 966, column: 55, scope: !3393)
!3398 = !DILocalVariable(name: "result", scope: !3393, file: !3, line: 968, type: !182)
!3399 = !DILocation(line: 968, column: 6, scope: !3393)
!3400 = !DILocation(line: 971, column: 7, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3393, file: !3, line: 971, column: 6)
!3402 = !DILocation(line: 971, column: 6, scope: !3393)
!3403 = !DILocation(line: 972, column: 3, scope: !3401)
!3404 = !DILocation(line: 974, column: 34, scope: !3393)
!3405 = !DILocation(line: 974, column: 2, scope: !3393)
!3406 = !DILocation(line: 977, column: 40, scope: !3393)
!3407 = !DILocation(line: 977, column: 11, scope: !3393)
!3408 = !DILocation(line: 977, column: 9, scope: !3393)
!3409 = !DILocation(line: 978, column: 6, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !3393, file: !3, line: 978, column: 6)
!3411 = !DILocation(line: 978, column: 6, scope: !3393)
!3412 = !DILocation(line: 979, column: 10, scope: !3410)
!3413 = !DILocation(line: 979, column: 3, scope: !3410)
!3414 = !DILocation(line: 982, column: 40, scope: !3393)
!3415 = !DILocation(line: 982, column: 11, scope: !3393)
!3416 = !DILocation(line: 982, column: 9, scope: !3393)
!3417 = !DILocation(line: 983, column: 6, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3393, file: !3, line: 983, column: 6)
!3419 = !DILocation(line: 983, column: 6, scope: !3393)
!3420 = !DILocation(line: 984, column: 10, scope: !3418)
!3421 = !DILocation(line: 984, column: 3, scope: !3418)
!3422 = !DILocation(line: 987, column: 41, scope: !3393)
!3423 = !DILocation(line: 987, column: 11, scope: !3393)
!3424 = !DILocation(line: 987, column: 9, scope: !3393)
!3425 = !DILocation(line: 988, column: 7, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3393, file: !3, line: 988, column: 6)
!3427 = !DILocation(line: 988, column: 6, scope: !3393)
!3428 = !DILocation(line: 989, column: 3, scope: !3426)
!3429 = !DILocation(line: 989, column: 7, scope: !3426)
!3430 = !DILocation(line: 989, column: 13, scope: !3426)
!3431 = !DILocation(line: 989, column: 26, scope: !3426)
!3432 = !DILocation(line: 992, column: 6, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3393, file: !3, line: 992, column: 6)
!3434 = !DILocation(line: 992, column: 6, scope: !3393)
!3435 = !DILocation(line: 993, column: 27, scope: !3433)
!3436 = !DILocation(line: 993, column: 3, scope: !3433)
!3437 = !DILocation(line: 993, column: 7, scope: !3433)
!3438 = !DILocation(line: 993, column: 25, scope: !3433)
!3439 = !DILocation(line: 995, column: 38, scope: !3433)
!3440 = !DILocation(line: 995, column: 3, scope: !3433)
!3441 = !DILocation(line: 997, column: 2, scope: !3393)
!3442 = !DILocation(line: 998, column: 1, scope: !3393)
!3443 = distinct !DISubprogram(name: "acpi_thermal_guess_offset", scope: !3, file: !3, line: 1010, type: !3444, scopeLine: 1011, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!3444 = !DISubroutineType(types: !3445)
!3445 = !{null, !173}
!3446 = !DILocalVariable(name: "tz", arg: 1, scope: !3443, file: !3, line: 1010, type: !173)
!3447 = !DILocation(line: 1010, column: 60, scope: !3443)
!3448 = !DILocation(line: 1012, column: 6, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3443, file: !3, line: 1012, column: 6)
!3450 = !DILocation(line: 1012, column: 10, scope: !3449)
!3451 = !DILocation(line: 1012, column: 16, scope: !3449)
!3452 = !DILocation(line: 1012, column: 25, scope: !3449)
!3453 = !DILocation(line: 1012, column: 31, scope: !3449)
!3454 = !DILocation(line: 1012, column: 37, scope: !3449)
!3455 = !DILocation(line: 1013, column: 7, scope: !3449)
!3456 = !DILocation(line: 1013, column: 11, scope: !3449)
!3457 = !DILocation(line: 1013, column: 17, scope: !3449)
!3458 = !DILocation(line: 1013, column: 26, scope: !3449)
!3459 = !DILocation(line: 1013, column: 38, scope: !3449)
!3460 = !DILocation(line: 1013, column: 43, scope: !3449)
!3461 = !DILocation(line: 1012, column: 6, scope: !3443)
!3462 = !DILocation(line: 1014, column: 3, scope: !3449)
!3463 = !DILocation(line: 1014, column: 7, scope: !3449)
!3464 = !DILocation(line: 1014, column: 21, scope: !3449)
!3465 = !DILocation(line: 1016, column: 3, scope: !3449)
!3466 = !DILocation(line: 1016, column: 7, scope: !3449)
!3467 = !DILocation(line: 1016, column: 21, scope: !3449)
!3468 = !DILocation(line: 1017, column: 1, scope: !3443)
!3469 = distinct !DISubprogram(name: "acpi_thermal_register_thermal_zone", scope: !3, file: !3, line: 818, type: !3394, scopeLine: 819, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!3470 = !DILocalVariable(name: "tz", arg: 1, scope: !3469, file: !3, line: 818, type: !173)
!3471 = !DILocation(line: 818, column: 68, scope: !3469)
!3472 = !DILocalVariable(name: "trips", scope: !3469, file: !3, line: 820, type: !182)
!3473 = !DILocation(line: 820, column: 6, scope: !3469)
!3474 = !DILocalVariable(name: "result", scope: !3469, file: !3, line: 821, type: !182)
!3475 = !DILocation(line: 821, column: 6, scope: !3469)
!3476 = !DILocalVariable(name: "status", scope: !3469, file: !3, line: 822, type: !160)
!3477 = !DILocation(line: 822, column: 14, scope: !3469)
!3478 = !DILocalVariable(name: "i", scope: !3469, file: !3, line: 823, type: !182)
!3479 = !DILocation(line: 823, column: 6, scope: !3469)
!3480 = !DILocation(line: 825, column: 6, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3469, file: !3, line: 825, column: 6)
!3482 = !DILocation(line: 825, column: 10, scope: !3481)
!3483 = !DILocation(line: 825, column: 16, scope: !3481)
!3484 = !DILocation(line: 825, column: 25, scope: !3481)
!3485 = !DILocation(line: 825, column: 31, scope: !3481)
!3486 = !DILocation(line: 825, column: 6, scope: !3469)
!3487 = !DILocation(line: 826, column: 8, scope: !3481)
!3488 = !DILocation(line: 826, column: 3, scope: !3481)
!3489 = !DILocation(line: 828, column: 6, scope: !3490)
!3490 = distinct !DILexicalBlock(scope: !3469, file: !3, line: 828, column: 6)
!3491 = !DILocation(line: 828, column: 10, scope: !3490)
!3492 = !DILocation(line: 828, column: 16, scope: !3490)
!3493 = !DILocation(line: 828, column: 20, scope: !3490)
!3494 = !DILocation(line: 828, column: 26, scope: !3490)
!3495 = !DILocation(line: 828, column: 6, scope: !3469)
!3496 = !DILocation(line: 829, column: 8, scope: !3490)
!3497 = !DILocation(line: 829, column: 3, scope: !3490)
!3498 = !DILocation(line: 831, column: 6, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3469, file: !3, line: 831, column: 6)
!3500 = !DILocation(line: 831, column: 10, scope: !3499)
!3501 = !DILocation(line: 831, column: 16, scope: !3499)
!3502 = !DILocation(line: 831, column: 24, scope: !3499)
!3503 = !DILocation(line: 831, column: 30, scope: !3499)
!3504 = !DILocation(line: 831, column: 6, scope: !3469)
!3505 = !DILocation(line: 832, column: 8, scope: !3499)
!3506 = !DILocation(line: 832, column: 3, scope: !3499)
!3507 = !DILocation(line: 834, column: 9, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3469, file: !3, line: 834, column: 2)
!3509 = !DILocation(line: 834, column: 7, scope: !3508)
!3510 = !DILocation(line: 834, column: 14, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3508, file: !3, line: 834, column: 2)
!3512 = !DILocation(line: 834, column: 16, scope: !3511)
!3513 = !DILocation(line: 834, column: 42, scope: !3511)
!3514 = !DILocation(line: 835, column: 4, scope: !3511)
!3515 = !DILocation(line: 835, column: 8, scope: !3511)
!3516 = !DILocation(line: 835, column: 14, scope: !3511)
!3517 = !DILocation(line: 835, column: 21, scope: !3511)
!3518 = !DILocation(line: 835, column: 24, scope: !3511)
!3519 = !DILocation(line: 835, column: 30, scope: !3511)
!3520 = !DILocation(line: 0, scope: !3511)
!3521 = !DILocation(line: 834, column: 2, scope: !3508)
!3522 = !DILocation(line: 835, column: 38, scope: !3511)
!3523 = !DILocation(line: 835, column: 47, scope: !3511)
!3524 = !DILocation(line: 834, column: 2, scope: !3511)
!3525 = distinct !{!3525, !3521, !3526}
!3526 = !DILocation(line: 835, column: 50, scope: !3508)
!3527 = !DILocation(line: 837, column: 6, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3469, file: !3, line: 837, column: 6)
!3529 = !DILocation(line: 837, column: 10, scope: !3528)
!3530 = !DILocation(line: 837, column: 16, scope: !3528)
!3531 = !DILocation(line: 837, column: 24, scope: !3528)
!3532 = !DILocation(line: 837, column: 30, scope: !3528)
!3533 = !DILocation(line: 837, column: 6, scope: !3469)
!3534 = !DILocation(line: 839, column: 43, scope: !3528)
!3535 = !DILocation(line: 839, column: 53, scope: !3528)
!3536 = !DILocation(line: 841, column: 12, scope: !3528)
!3537 = !DILocation(line: 841, column: 16, scope: !3528)
!3538 = !DILocation(line: 841, column: 22, scope: !3528)
!3539 = !DILocation(line: 841, column: 30, scope: !3528)
!3540 = !DILocation(line: 841, column: 33, scope: !3528)
!3541 = !DILocation(line: 842, column: 12, scope: !3528)
!3542 = !DILocation(line: 842, column: 16, scope: !3528)
!3543 = !DILocation(line: 842, column: 33, scope: !3528)
!3544 = !DILocation(line: 839, column: 4, scope: !3528)
!3545 = !DILocation(line: 838, column: 3, scope: !3528)
!3546 = !DILocation(line: 838, column: 7, scope: !3528)
!3547 = !DILocation(line: 838, column: 20, scope: !3528)
!3548 = !DILocation(line: 845, column: 43, scope: !3528)
!3549 = !DILocation(line: 845, column: 53, scope: !3528)
!3550 = !DILocation(line: 847, column: 10, scope: !3528)
!3551 = !DILocation(line: 847, column: 14, scope: !3528)
!3552 = !DILocation(line: 847, column: 31, scope: !3528)
!3553 = !DILocation(line: 845, column: 4, scope: !3528)
!3554 = !DILocation(line: 844, column: 3, scope: !3528)
!3555 = !DILocation(line: 844, column: 7, scope: !3528)
!3556 = !DILocation(line: 844, column: 20, scope: !3528)
!3557 = !DILocation(line: 848, column: 13, scope: !3558)
!3558 = distinct !DILexicalBlock(scope: !3469, file: !3, line: 848, column: 6)
!3559 = !DILocation(line: 848, column: 17, scope: !3558)
!3560 = !DILocation(line: 848, column: 6, scope: !3558)
!3561 = !DILocation(line: 848, column: 6, scope: !3469)
!3562 = !DILocation(line: 849, column: 3, scope: !3558)
!3563 = !DILocation(line: 851, column: 30, scope: !3469)
!3564 = !DILocation(line: 851, column: 34, scope: !3469)
!3565 = !DILocation(line: 851, column: 42, scope: !3469)
!3566 = !DILocation(line: 851, column: 46, scope: !3469)
!3567 = !DILocation(line: 852, column: 9, scope: !3469)
!3568 = !DILocation(line: 852, column: 13, scope: !3469)
!3569 = !DILocation(line: 852, column: 27, scope: !3469)
!3570 = !DILocation(line: 852, column: 34, scope: !3469)
!3571 = !DILocation(line: 851, column: 11, scope: !3469)
!3572 = !DILocation(line: 851, column: 9, scope: !3469)
!3573 = !DILocation(line: 853, column: 6, scope: !3574)
!3574 = distinct !DILexicalBlock(scope: !3469, file: !3, line: 853, column: 6)
!3575 = !DILocation(line: 853, column: 6, scope: !3469)
!3576 = !DILocation(line: 854, column: 3, scope: !3574)
!3577 = !DILocation(line: 856, column: 30, scope: !3469)
!3578 = !DILocation(line: 856, column: 34, scope: !3469)
!3579 = !DILocation(line: 856, column: 48, scope: !3469)
!3580 = !DILocation(line: 856, column: 55, scope: !3469)
!3581 = !DILocation(line: 857, column: 9, scope: !3469)
!3582 = !DILocation(line: 857, column: 13, scope: !3469)
!3583 = !DILocation(line: 857, column: 21, scope: !3469)
!3584 = !DILocation(line: 857, column: 25, scope: !3469)
!3585 = !DILocation(line: 856, column: 11, scope: !3469)
!3586 = !DILocation(line: 856, column: 9, scope: !3469)
!3587 = !DILocation(line: 858, column: 6, scope: !3588)
!3588 = distinct !DILexicalBlock(scope: !3469, file: !3, line: 858, column: 6)
!3589 = !DILocation(line: 858, column: 6, scope: !3469)
!3590 = !DILocation(line: 859, column: 3, scope: !3588)
!3591 = !DILocation(line: 861, column: 41, scope: !3469)
!3592 = !DILocation(line: 861, column: 45, scope: !3469)
!3593 = !DILocation(line: 861, column: 53, scope: !3469)
!3594 = !DILocation(line: 862, column: 13, scope: !3469)
!3595 = !DILocation(line: 862, column: 17, scope: !3469)
!3596 = !DILocation(line: 861, column: 12, scope: !3469)
!3597 = !DILocation(line: 861, column: 9, scope: !3469)
!3598 = !DILocation(line: 863, column: 6, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3469, file: !3, line: 863, column: 6)
!3600 = !DILocation(line: 863, column: 6, scope: !3469)
!3601 = !DILocation(line: 864, column: 10, scope: !3602)
!3602 = distinct !DILexicalBlock(scope: !3599, file: !3, line: 863, column: 28)
!3603 = !DILocation(line: 865, column: 3, scope: !3602)
!3604 = !DILocation(line: 868, column: 38, scope: !3469)
!3605 = !DILocation(line: 868, column: 42, scope: !3469)
!3606 = !DILocation(line: 868, column: 11, scope: !3469)
!3607 = !DILocation(line: 868, column: 9, scope: !3469)
!3608 = !DILocation(line: 869, column: 6, scope: !3609)
!3609 = distinct !DILexicalBlock(scope: !3469, file: !3, line: 869, column: 6)
!3610 = !DILocation(line: 869, column: 6, scope: !3469)
!3611 = !DILocation(line: 870, column: 3, scope: !3609)
!3612 = !DILocation(line: 872, column: 2, scope: !3469)
!3613 = !DILocation(line: 875, column: 2, scope: !3469)
!3614 = !DILabel(scope: !3469, name: "acpi_bus_detach", file: !3, line: 877)
!3615 = !DILocation(line: 877, column: 1, scope: !3469)
!3616 = !DILocation(line: 878, column: 31, scope: !3469)
!3617 = !DILocation(line: 878, column: 35, scope: !3469)
!3618 = !DILocation(line: 878, column: 43, scope: !3469)
!3619 = !DILocation(line: 878, column: 2, scope: !3469)
!3620 = !DILabel(scope: !3469, name: "remove_dev_link", file: !3, line: 879)
!3621 = !DILocation(line: 879, column: 1, scope: !3469)
!3622 = !DILocation(line: 880, column: 21, scope: !3469)
!3623 = !DILocation(line: 880, column: 25, scope: !3469)
!3624 = !DILocation(line: 880, column: 39, scope: !3469)
!3625 = !DILocation(line: 880, column: 46, scope: !3469)
!3626 = !DILocation(line: 880, column: 2, scope: !3469)
!3627 = !DILabel(scope: !3469, name: "remove_tz_link", file: !3, line: 881)
!3628 = !DILocation(line: 881, column: 1, scope: !3469)
!3629 = !DILocation(line: 882, column: 21, scope: !3469)
!3630 = !DILocation(line: 882, column: 25, scope: !3469)
!3631 = !DILocation(line: 882, column: 33, scope: !3469)
!3632 = !DILocation(line: 882, column: 37, scope: !3469)
!3633 = !DILocation(line: 882, column: 2, scope: !3469)
!3634 = !DILabel(scope: !3469, name: "unregister_tzd", file: !3, line: 883)
!3635 = !DILocation(line: 883, column: 1, scope: !3469)
!3636 = !DILocation(line: 884, column: 33, scope: !3469)
!3637 = !DILocation(line: 884, column: 37, scope: !3469)
!3638 = !DILocation(line: 884, column: 2, scope: !3469)
!3639 = !DILocation(line: 886, column: 9, scope: !3469)
!3640 = !DILocation(line: 886, column: 2, scope: !3469)
!3641 = !DILocation(line: 887, column: 1, scope: !3469)
!3642 = distinct !DISubprogram(name: "__init_work", scope: !95, file: !95, line: 215, type: !3643, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{null, !1463, !182}
!3645 = !DILocalVariable(name: "work", arg: 1, scope: !3642, file: !95, line: 215, type: !1463)
!3646 = !DILocation(line: 215, column: 52, scope: !3642)
!3647 = !DILocalVariable(name: "onstack", arg: 2, scope: !3642, file: !95, line: 215, type: !182)
!3648 = !DILocation(line: 215, column: 62, scope: !3642)
!3649 = !DILocation(line: 215, column: 73, scope: !3642)
!3650 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !3651, file: !3651, line: 33, type: !3652, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!3651 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!3652 = !DISubroutineType(types: !3653)
!3653 = !{null, !168}
!3654 = !DILocalVariable(name: "list", arg: 1, scope: !3650, file: !3651, line: 33, type: !168)
!3655 = !DILocation(line: 33, column: 53, scope: !3650)
!3656 = !DILocation(line: 35, column: 2, scope: !3650)
!3657 = !DILocation(line: 35, column: 2, scope: !3658)
!3658 = distinct !DILexicalBlock(scope: !3650, file: !3651, line: 35, column: 2)
!3659 = !DILocation(line: 35, column: 2, scope: !3660)
!3660 = distinct !DILexicalBlock(scope: !3658, file: !3651, line: 35, column: 2)
!3661 = !DILocation(line: 35, column: 2, scope: !3662)
!3662 = distinct !DILexicalBlock(scope: !3658, file: !3651, line: 35, column: 2)
!3663 = !DILocation(line: 36, column: 15, scope: !3650)
!3664 = !DILocation(line: 36, column: 2, scope: !3650)
!3665 = !DILocation(line: 36, column: 8, scope: !3650)
!3666 = !DILocation(line: 36, column: 13, scope: !3650)
!3667 = !DILocation(line: 37, column: 1, scope: !3650)
!3668 = distinct !DISubprogram(name: "acpi_thermal_check_fn", scope: !3, file: !3, line: 1019, type: !1461, scopeLine: 1020, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!3669 = !DILocalVariable(name: "work", arg: 1, scope: !3668, file: !3, line: 1019, type: !1463)
!3670 = !DILocation(line: 1019, column: 55, scope: !3668)
!3671 = !DILocalVariable(name: "tz", scope: !3668, file: !3, line: 1021, type: !173)
!3672 = !DILocation(line: 1021, column: 23, scope: !3668)
!3673 = !DILocalVariable(name: "__mptr", scope: !3674, file: !3, line: 1021, type: !159)
!3674 = distinct !DILexicalBlock(scope: !3668, file: !3, line: 1021, column: 28)
!3675 = !DILocation(line: 1021, column: 28, scope: !3674)
!3676 = !DILocation(line: 1021, column: 28, scope: !3677)
!3677 = distinct !DILexicalBlock(scope: !3674, file: !3, line: 1021, column: 28)
!3678 = !DILocation(line: 1023, column: 21, scope: !3668)
!3679 = !DILocation(line: 1023, column: 2, scope: !3668)
!3680 = !DILocation(line: 1024, column: 1, scope: !3668)
!3681 = distinct !DISubprogram(name: "deci_kelvin_to_celsius", scope: !3682, file: !3682, line: 34, type: !3683, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!3682 = !DIFile(filename: "./include/linux/units.h", directory: "/home/lizy2001/genbc/linux")
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!96, !96}
!3685 = !DILocalVariable(name: "t", arg: 1, scope: !3681, file: !3682, line: 34, type: !96)
!3686 = !DILocation(line: 34, column: 48, scope: !3681)
!3687 = !DILocation(line: 36, column: 35, scope: !3681)
!3688 = !DILocation(line: 36, column: 37, scope: !3681)
!3689 = !DILocation(line: 36, column: 6, scope: !3681)
!3690 = !DILocation(line: 36, column: 4, scope: !3681)
!3691 = !DILocalVariable(name: "__x", scope: !3692, file: !3682, line: 38, type: !96)
!3692 = distinct !DILexicalBlock(scope: !3681, file: !3682, line: 38, column: 9)
!3693 = !DILocation(line: 38, column: 9, scope: !3692)
!3694 = !DILocalVariable(name: "__d", scope: !3692, file: !3682, line: 38, type: !182)
!3695 = !DILocation(line: 38, column: 2, scope: !3681)
!3696 = distinct !DISubprogram(name: "get_order", scope: !3697, file: !3697, line: 29, type: !3698, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!3697 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!3698 = !DISubroutineType(types: !3699)
!3699 = !{!182, !158}
!3700 = !DILocalVariable(name: "x", arg: 1, scope: !3701, file: !3702, line: 366, type: !398)
!3701 = distinct !DISubprogram(name: "fls64", scope: !3702, file: !3702, line: 366, type: !3703, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!3702 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!3703 = !DISubroutineType(types: !3704)
!3704 = !{!182, !398}
!3705 = !DILocation(line: 366, column: 40, scope: !3701, inlinedAt: !3706)
!3706 = distinct !DILocation(line: 46, column: 9, scope: !3696)
!3707 = !DILocalVariable(name: "bitpos", scope: !3701, file: !3702, line: 368, type: !182)
!3708 = !DILocation(line: 368, column: 6, scope: !3701, inlinedAt: !3706)
!3709 = !DILocalVariable(name: "size", arg: 1, scope: !3696, file: !3697, line: 29, type: !158)
!3710 = !DILocation(line: 29, column: 63, scope: !3696)
!3711 = !DILocation(line: 31, column: 27, scope: !3712)
!3712 = distinct !DILexicalBlock(scope: !3696, file: !3697, line: 31, column: 6)
!3713 = !DILocation(line: 31, column: 6, scope: !3712)
!3714 = !DILocation(line: 31, column: 6, scope: !3696)
!3715 = !DILocation(line: 32, column: 8, scope: !3716)
!3716 = distinct !DILexicalBlock(scope: !3717, file: !3697, line: 32, column: 7)
!3717 = distinct !DILexicalBlock(scope: !3712, file: !3697, line: 31, column: 34)
!3718 = !DILocation(line: 32, column: 7, scope: !3717)
!3719 = !DILocation(line: 33, column: 4, scope: !3716)
!3720 = !DILocation(line: 35, column: 7, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3717, file: !3697, line: 35, column: 7)
!3722 = !DILocation(line: 35, column: 12, scope: !3721)
!3723 = !DILocation(line: 35, column: 7, scope: !3717)
!3724 = !DILocation(line: 36, column: 4, scope: !3721)
!3725 = !DILocation(line: 38, column: 10, scope: !3717)
!3726 = !DILocation(line: 38, column: 28, scope: !3717)
!3727 = !DILocation(line: 38, column: 41, scope: !3717)
!3728 = !DILocation(line: 38, column: 3, scope: !3717)
!3729 = !DILocation(line: 41, column: 6, scope: !3696)
!3730 = !DILocation(line: 42, column: 7, scope: !3696)
!3731 = !DILocation(line: 46, column: 15, scope: !3696)
!3732 = !DILocation(line: 374, column: 2, scope: !3701, inlinedAt: !3706)
!3733 = !DILocation(line: 376, column: 14, scope: !3701, inlinedAt: !3706)
!3734 = !{i32 270351}
!3735 = !DILocation(line: 377, column: 9, scope: !3701, inlinedAt: !3706)
!3736 = !DILocation(line: 377, column: 16, scope: !3701, inlinedAt: !3706)
!3737 = !DILocation(line: 46, column: 2, scope: !3696)
!3738 = !DILocation(line: 48, column: 1, scope: !3696)
!3739 = distinct !DISubprogram(name: "__ilog2_u64", scope: !3740, file: !3740, line: 30, type: !3741, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!3740 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!3741 = !DISubroutineType(types: !3742)
!3742 = !{!182, !397}
!3743 = !DILocation(line: 366, column: 40, scope: !3701, inlinedAt: !3744)
!3744 = distinct !DILocation(line: 32, column: 9, scope: !3739)
!3745 = !DILocation(line: 368, column: 6, scope: !3701, inlinedAt: !3744)
!3746 = !DILocalVariable(name: "n", arg: 1, scope: !3739, file: !3740, line: 30, type: !397)
!3747 = !DILocation(line: 30, column: 21, scope: !3739)
!3748 = !DILocation(line: 32, column: 15, scope: !3739)
!3749 = !DILocation(line: 374, column: 2, scope: !3701, inlinedAt: !3744)
!3750 = !DILocation(line: 376, column: 14, scope: !3701, inlinedAt: !3744)
!3751 = !DILocation(line: 377, column: 9, scope: !3701, inlinedAt: !3744)
!3752 = !DILocation(line: 377, column: 16, scope: !3701, inlinedAt: !3744)
!3753 = !DILocation(line: 32, column: 18, scope: !3739)
!3754 = !DILocation(line: 32, column: 2, scope: !3739)
!3755 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !3756, file: !3756, line: 137, type: !3757, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!3756 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!3757 = !DISubroutineType(types: !3758)
!3758 = !{!159, !1167, !216, !326, !156}
!3759 = !DILocalVariable(name: "s", arg: 1, scope: !3755, file: !3756, line: 137, type: !1167)
!3760 = !DILocation(line: 137, column: 54, scope: !3755)
!3761 = !DILocalVariable(name: "object", arg: 2, scope: !3755, file: !3756, line: 137, type: !216)
!3762 = !DILocation(line: 137, column: 69, scope: !3755)
!3763 = !DILocalVariable(name: "size", arg: 3, scope: !3755, file: !3756, line: 138, type: !326)
!3764 = !DILocation(line: 138, column: 12, scope: !3755)
!3765 = !DILocalVariable(name: "flags", arg: 4, scope: !3755, file: !3756, line: 138, type: !156)
!3766 = !DILocation(line: 138, column: 24, scope: !3755)
!3767 = !DILocation(line: 140, column: 17, scope: !3755)
!3768 = !DILocation(line: 140, column: 2, scope: !3755)
!3769 = distinct !DISubprogram(name: "acpi_thermal_aml_dependency_fix", scope: !3, file: !3, line: 946, type: !3444, scopeLine: 947, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!3770 = !DILocalVariable(name: "tz", arg: 1, scope: !3769, file: !3, line: 946, type: !173)
!3771 = !DILocation(line: 946, column: 66, scope: !3769)
!3772 = !DILocalVariable(name: "handle", scope: !3769, file: !3, line: 948, type: !184)
!3773 = !DILocation(line: 948, column: 14, scope: !3769)
!3774 = !DILocation(line: 948, column: 23, scope: !3769)
!3775 = !DILocation(line: 948, column: 27, scope: !3769)
!3776 = !DILocation(line: 948, column: 35, scope: !3769)
!3777 = !DILocalVariable(name: "value", scope: !3769, file: !3, line: 949, type: !399)
!3778 = !DILocation(line: 949, column: 21, scope: !3769)
!3779 = !DILocalVariable(name: "i", scope: !3769, file: !3, line: 950, type: !182)
!3780 = !DILocation(line: 950, column: 6, scope: !3769)
!3781 = !DILocation(line: 952, column: 24, scope: !3769)
!3782 = !DILocation(line: 952, column: 2, scope: !3769)
!3783 = !DILocation(line: 953, column: 24, scope: !3769)
!3784 = !DILocation(line: 953, column: 2, scope: !3769)
!3785 = !DILocation(line: 954, column: 24, scope: !3769)
!3786 = !DILocation(line: 954, column: 2, scope: !3769)
!3787 = !DILocation(line: 955, column: 9, scope: !3788)
!3788 = distinct !DILexicalBlock(scope: !3769, file: !3, line: 955, column: 2)
!3789 = !DILocation(line: 955, column: 7, scope: !3788)
!3790 = !DILocation(line: 955, column: 14, scope: !3791)
!3791 = distinct !DILexicalBlock(scope: !3788, file: !3, line: 955, column: 2)
!3792 = !DILocation(line: 955, column: 16, scope: !3791)
!3793 = !DILocation(line: 955, column: 2, scope: !3788)
!3794 = !DILocalVariable(name: "name", scope: !3795, file: !3, line: 956, type: !3796)
!3795 = distinct !DILexicalBlock(scope: !3791, file: !3, line: 955, column: 48)
!3796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 40, elements: !2371)
!3797 = !DILocation(line: 956, column: 8, scope: !3795)
!3798 = !DILocation(line: 956, column: 18, scope: !3795)
!3799 = !DILocation(line: 956, column: 42, scope: !3795)
!3800 = !DILocation(line: 956, column: 40, scope: !3795)
!3801 = !DILocation(line: 956, column: 35, scope: !3795)
!3802 = !DILocalVariable(name: "status", scope: !3795, file: !3, line: 957, type: !160)
!3803 = !DILocation(line: 957, column: 15, scope: !3795)
!3804 = !DILocation(line: 959, column: 34, scope: !3795)
!3805 = !DILocation(line: 959, column: 42, scope: !3795)
!3806 = !DILocation(line: 959, column: 12, scope: !3795)
!3807 = !DILocation(line: 959, column: 10, scope: !3795)
!3808 = !DILocation(line: 960, column: 7, scope: !3809)
!3809 = distinct !DILexicalBlock(scope: !3795, file: !3, line: 960, column: 7)
!3810 = !DILocation(line: 960, column: 14, scope: !3809)
!3811 = !DILocation(line: 960, column: 7, scope: !3795)
!3812 = !DILocation(line: 961, column: 4, scope: !3809)
!3813 = !DILocation(line: 962, column: 2, scope: !3795)
!3814 = !DILocation(line: 955, column: 44, scope: !3791)
!3815 = !DILocation(line: 955, column: 2, scope: !3791)
!3816 = distinct !{!3816, !3793, !3817}
!3817 = !DILocation(line: 962, column: 2, scope: !3788)
!3818 = !DILocation(line: 963, column: 24, scope: !3769)
!3819 = !DILocation(line: 963, column: 2, scope: !3769)
!3820 = !DILocation(line: 964, column: 1, scope: !3769)
!3821 = distinct !DISubprogram(name: "acpi_thermal_get_trip_points", scope: !3, file: !3, line: 477, type: !3394, scopeLine: 478, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!3822 = !DILocalVariable(name: "tz", arg: 1, scope: !3821, file: !3, line: 477, type: !173)
!3823 = !DILocation(line: 477, column: 62, scope: !3821)
!3824 = !DILocalVariable(name: "i", scope: !3821, file: !3, line: 479, type: !182)
!3825 = !DILocation(line: 479, column: 6, scope: !3821)
!3826 = !DILocalVariable(name: "valid", scope: !3821, file: !3, line: 479, type: !182)
!3827 = !DILocation(line: 479, column: 9, scope: !3821)
!3828 = !DILocalVariable(name: "ret", scope: !3821, file: !3, line: 479, type: !182)
!3829 = !DILocation(line: 479, column: 16, scope: !3821)
!3830 = !DILocation(line: 479, column: 48, scope: !3821)
!3831 = !DILocation(line: 479, column: 22, scope: !3821)
!3832 = !DILocation(line: 481, column: 6, scope: !3833)
!3833 = distinct !DILexicalBlock(scope: !3821, file: !3, line: 481, column: 6)
!3834 = !DILocation(line: 481, column: 6, scope: !3821)
!3835 = !DILocation(line: 482, column: 10, scope: !3833)
!3836 = !DILocation(line: 482, column: 3, scope: !3833)
!3837 = !DILocation(line: 484, column: 10, scope: !3821)
!3838 = !DILocation(line: 484, column: 14, scope: !3821)
!3839 = !DILocation(line: 484, column: 20, scope: !3821)
!3840 = !DILocation(line: 484, column: 29, scope: !3821)
!3841 = !DILocation(line: 484, column: 35, scope: !3821)
!3842 = !DILocation(line: 485, column: 3, scope: !3821)
!3843 = !DILocation(line: 485, column: 7, scope: !3821)
!3844 = !DILocation(line: 485, column: 13, scope: !3821)
!3845 = !DILocation(line: 485, column: 17, scope: !3821)
!3846 = !DILocation(line: 485, column: 23, scope: !3821)
!3847 = !DILocation(line: 484, column: 41, scope: !3821)
!3848 = !DILocation(line: 486, column: 3, scope: !3821)
!3849 = !DILocation(line: 486, column: 7, scope: !3821)
!3850 = !DILocation(line: 486, column: 13, scope: !3821)
!3851 = !DILocation(line: 486, column: 21, scope: !3821)
!3852 = !DILocation(line: 486, column: 27, scope: !3821)
!3853 = !DILocation(line: 485, column: 29, scope: !3821)
!3854 = !DILocation(line: 484, column: 8, scope: !3821)
!3855 = !DILocation(line: 488, column: 9, scope: !3856)
!3856 = distinct !DILexicalBlock(scope: !3821, file: !3, line: 488, column: 2)
!3857 = !DILocation(line: 488, column: 7, scope: !3856)
!3858 = !DILocation(line: 488, column: 14, scope: !3859)
!3859 = distinct !DILexicalBlock(scope: !3856, file: !3, line: 488, column: 2)
!3860 = !DILocation(line: 488, column: 16, scope: !3859)
!3861 = !DILocation(line: 488, column: 2, scope: !3856)
!3862 = !DILocation(line: 489, column: 12, scope: !3859)
!3863 = !DILocation(line: 489, column: 16, scope: !3859)
!3864 = !DILocation(line: 489, column: 22, scope: !3859)
!3865 = !DILocation(line: 489, column: 29, scope: !3859)
!3866 = !DILocation(line: 489, column: 32, scope: !3859)
!3867 = !DILocation(line: 489, column: 38, scope: !3859)
!3868 = !DILocation(line: 489, column: 9, scope: !3859)
!3869 = !DILocation(line: 489, column: 3, scope: !3859)
!3870 = !DILocation(line: 488, column: 44, scope: !3859)
!3871 = !DILocation(line: 488, column: 2, scope: !3859)
!3872 = distinct !{!3872, !3861, !3873}
!3873 = !DILocation(line: 489, column: 38, scope: !3856)
!3874 = !DILocation(line: 491, column: 7, scope: !3875)
!3875 = distinct !DILexicalBlock(scope: !3821, file: !3, line: 491, column: 6)
!3876 = !DILocation(line: 491, column: 6, scope: !3821)
!3877 = !DILocation(line: 492, column: 3, scope: !3878)
!3878 = distinct !DILexicalBlock(scope: !3875, file: !3, line: 491, column: 14)
!3879 = !DILocation(line: 493, column: 3, scope: !3878)
!3880 = !DILocation(line: 495, column: 2, scope: !3821)
!3881 = !DILocation(line: 496, column: 1, scope: !3821)
!3882 = distinct !DISubprogram(name: "acpi_thermal_get_temperature", scope: !3, file: !3, line: 183, type: !3394, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!3883 = !DILocalVariable(name: "tz", arg: 1, scope: !3882, file: !3, line: 183, type: !173)
!3884 = !DILocation(line: 183, column: 62, scope: !3882)
!3885 = !DILocalVariable(name: "status", scope: !3882, file: !3, line: 185, type: !160)
!3886 = !DILocation(line: 185, column: 14, scope: !3882)
!3887 = !DILocalVariable(name: "tmp", scope: !3882, file: !3, line: 186, type: !399)
!3888 = !DILocation(line: 186, column: 21, scope: !3882)
!3889 = !DILocation(line: 188, column: 7, scope: !3890)
!3890 = distinct !DILexicalBlock(scope: !3882, file: !3, line: 188, column: 6)
!3891 = !DILocation(line: 188, column: 6, scope: !3882)
!3892 = !DILocation(line: 189, column: 3, scope: !3890)
!3893 = !DILocation(line: 191, column: 25, scope: !3882)
!3894 = !DILocation(line: 191, column: 29, scope: !3882)
!3895 = !DILocation(line: 191, column: 2, scope: !3882)
!3896 = !DILocation(line: 191, column: 6, scope: !3882)
!3897 = !DILocation(line: 191, column: 23, scope: !3882)
!3898 = !DILocation(line: 193, column: 33, scope: !3882)
!3899 = !DILocation(line: 193, column: 37, scope: !3882)
!3900 = !DILocation(line: 193, column: 45, scope: !3882)
!3901 = !DILocation(line: 193, column: 11, scope: !3882)
!3902 = !DILocation(line: 193, column: 9, scope: !3882)
!3903 = !DILocation(line: 194, column: 6, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3882, file: !3, line: 194, column: 6)
!3905 = !DILocation(line: 194, column: 6, scope: !3882)
!3906 = !DILocation(line: 195, column: 3, scope: !3904)
!3907 = !DILocation(line: 197, column: 20, scope: !3882)
!3908 = !DILocation(line: 197, column: 2, scope: !3882)
!3909 = !DILocation(line: 197, column: 6, scope: !3882)
!3910 = !DILocation(line: 197, column: 18, scope: !3882)
!3911 = !DILocation(line: 201, column: 2, scope: !3882)
!3912 = !DILocation(line: 202, column: 1, scope: !3882)
!3913 = distinct !DISubprogram(name: "acpi_thermal_set_cooling_mode", scope: !3, file: !3, line: 223, type: !3914, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!3914 = !DISubroutineType(types: !3915)
!3915 = !{!182, !173, !182}
!3916 = !DILocalVariable(name: "tz", arg: 1, scope: !3913, file: !3, line: 223, type: !173)
!3917 = !DILocation(line: 223, column: 63, scope: !3913)
!3918 = !DILocalVariable(name: "mode", arg: 2, scope: !3913, file: !3, line: 223, type: !182)
!3919 = !DILocation(line: 223, column: 71, scope: !3913)
!3920 = !DILocation(line: 225, column: 7, scope: !3921)
!3921 = distinct !DILexicalBlock(scope: !3913, file: !3, line: 225, column: 6)
!3922 = !DILocation(line: 225, column: 6, scope: !3913)
!3923 = !DILocation(line: 226, column: 3, scope: !3921)
!3924 = !DILocation(line: 228, column: 6, scope: !3925)
!3925 = distinct !DILexicalBlock(scope: !3913, file: !3, line: 228, column: 6)
!3926 = !DILocation(line: 228, column: 6, scope: !3913)
!3927 = !DILocation(line: 230, column: 3, scope: !3925)
!3928 = !DILocation(line: 232, column: 2, scope: !3913)
!3929 = !DILocation(line: 233, column: 1, scope: !3913)
!3930 = distinct !DISubprogram(name: "acpi_thermal_get_polling_frequency", scope: !3, file: !3, line: 204, type: !3394, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!3931 = !DILocalVariable(name: "tz", arg: 1, scope: !3930, file: !3, line: 204, type: !173)
!3932 = !DILocation(line: 204, column: 68, scope: !3930)
!3933 = !DILocalVariable(name: "status", scope: !3930, file: !3, line: 206, type: !160)
!3934 = !DILocation(line: 206, column: 14, scope: !3930)
!3935 = !DILocalVariable(name: "tmp", scope: !3930, file: !3, line: 207, type: !399)
!3936 = !DILocation(line: 207, column: 21, scope: !3930)
!3937 = !DILocation(line: 209, column: 7, scope: !3938)
!3938 = distinct !DILexicalBlock(scope: !3930, file: !3, line: 209, column: 6)
!3939 = !DILocation(line: 209, column: 6, scope: !3930)
!3940 = !DILocation(line: 210, column: 3, scope: !3938)
!3941 = !DILocation(line: 212, column: 33, scope: !3930)
!3942 = !DILocation(line: 212, column: 37, scope: !3930)
!3943 = !DILocation(line: 212, column: 45, scope: !3930)
!3944 = !DILocation(line: 212, column: 11, scope: !3930)
!3945 = !DILocation(line: 212, column: 9, scope: !3930)
!3946 = !DILocation(line: 213, column: 6, scope: !3947)
!3947 = distinct !DILexicalBlock(scope: !3930, file: !3, line: 213, column: 6)
!3948 = !DILocation(line: 213, column: 6, scope: !3930)
!3949 = !DILocation(line: 214, column: 3, scope: !3947)
!3950 = !DILocation(line: 216, column: 26, scope: !3930)
!3951 = !DILocation(line: 216, column: 2, scope: !3930)
!3952 = !DILocation(line: 216, column: 6, scope: !3930)
!3953 = !DILocation(line: 216, column: 24, scope: !3930)
!3954 = !DILocation(line: 220, column: 2, scope: !3930)
!3955 = !DILocation(line: 221, column: 1, scope: !3930)
!3956 = distinct !DISubprogram(name: "acpi_thermal_trips_update", scope: !3, file: !3, line: 263, type: !3914, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!3957 = !DILocalVariable(name: "tz", arg: 1, scope: !3956, file: !3, line: 263, type: !173)
!3958 = !DILocation(line: 263, column: 59, scope: !3956)
!3959 = !DILocalVariable(name: "flag", arg: 2, scope: !3956, file: !3, line: 263, type: !182)
!3960 = !DILocation(line: 263, column: 67, scope: !3956)
!3961 = !DILocalVariable(name: "status", scope: !3956, file: !3, line: 265, type: !160)
!3962 = !DILocation(line: 265, column: 14, scope: !3956)
!3963 = !DILocalVariable(name: "tmp", scope: !3956, file: !3, line: 266, type: !399)
!3964 = !DILocation(line: 266, column: 21, scope: !3956)
!3965 = !DILocalVariable(name: "devices", scope: !3956, file: !3, line: 267, type: !2560)
!3966 = !DILocation(line: 267, column: 26, scope: !3956)
!3967 = !DILocalVariable(name: "valid", scope: !3956, file: !3, line: 268, type: !182)
!3968 = !DILocation(line: 268, column: 6, scope: !3956)
!3969 = !DILocalVariable(name: "i", scope: !3956, file: !3, line: 269, type: !182)
!3970 = !DILocation(line: 269, column: 6, scope: !3956)
!3971 = !DILocation(line: 272, column: 6, scope: !3972)
!3972 = distinct !DILexicalBlock(scope: !3956, file: !3, line: 272, column: 6)
!3973 = !DILocation(line: 272, column: 11, scope: !3972)
!3974 = !DILocation(line: 272, column: 6, scope: !3956)
!3975 = !DILocation(line: 273, column: 34, scope: !3976)
!3976 = distinct !DILexicalBlock(scope: !3972, file: !3, line: 272, column: 34)
!3977 = !DILocation(line: 273, column: 38, scope: !3976)
!3978 = !DILocation(line: 273, column: 46, scope: !3976)
!3979 = !DILocation(line: 273, column: 12, scope: !3976)
!3980 = !DILocation(line: 273, column: 10, scope: !3976)
!3981 = !DILocation(line: 275, column: 36, scope: !3976)
!3982 = !DILocation(line: 275, column: 3, scope: !3976)
!3983 = !DILocation(line: 275, column: 7, scope: !3976)
!3984 = !DILocation(line: 275, column: 13, scope: !3976)
!3985 = !DILocation(line: 275, column: 22, scope: !3976)
!3986 = !DILocation(line: 275, column: 34, scope: !3976)
!3987 = !DILocation(line: 282, column: 7, scope: !3988)
!3988 = distinct !DILexicalBlock(scope: !3976, file: !3, line: 282, column: 7)
!3989 = !DILocation(line: 282, column: 7, scope: !3976)
!3990 = !DILocation(line: 283, column: 4, scope: !3991)
!3991 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 282, column: 29)
!3992 = !DILocation(line: 283, column: 8, scope: !3991)
!3993 = !DILocation(line: 283, column: 14, scope: !3991)
!3994 = !DILocation(line: 283, column: 23, scope: !3991)
!3995 = !DILocation(line: 283, column: 29, scope: !3991)
!3996 = !DILocation(line: 283, column: 35, scope: !3991)
!3997 = !DILocation(line: 286, column: 3, scope: !3991)
!3998 = !DILocation(line: 286, column: 14, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 286, column: 14)
!4000 = !DILocation(line: 286, column: 18, scope: !3999)
!4001 = !DILocation(line: 286, column: 14, scope: !3988)
!4002 = !DILocation(line: 287, column: 4, scope: !4003)
!4003 = distinct !DILexicalBlock(scope: !3999, file: !3, line: 286, column: 27)
!4004 = !DILocation(line: 289, column: 4, scope: !4003)
!4005 = !DILocation(line: 289, column: 8, scope: !4003)
!4006 = !DILocation(line: 289, column: 14, scope: !4003)
!4007 = !DILocation(line: 289, column: 23, scope: !4003)
!4008 = !DILocation(line: 289, column: 29, scope: !4003)
!4009 = !DILocation(line: 289, column: 35, scope: !4003)
!4010 = !DILocation(line: 290, column: 3, scope: !4003)
!4011 = !DILocation(line: 291, column: 4, scope: !4012)
!4012 = distinct !DILexicalBlock(scope: !3999, file: !3, line: 290, column: 10)
!4013 = !DILocation(line: 291, column: 8, scope: !4012)
!4014 = !DILocation(line: 291, column: 14, scope: !4012)
!4015 = !DILocation(line: 291, column: 23, scope: !4012)
!4016 = !DILocation(line: 291, column: 29, scope: !4012)
!4017 = !DILocation(line: 291, column: 35, scope: !4012)
!4018 = !DILocation(line: 296, column: 7, scope: !4019)
!4019 = distinct !DILexicalBlock(scope: !3976, file: !3, line: 296, column: 7)
!4020 = !DILocation(line: 296, column: 11, scope: !4019)
!4021 = !DILocation(line: 296, column: 17, scope: !4019)
!4022 = !DILocation(line: 296, column: 26, scope: !4019)
!4023 = !DILocation(line: 296, column: 32, scope: !4019)
!4024 = !DILocation(line: 296, column: 38, scope: !4019)
!4025 = !DILocation(line: 296, column: 7, scope: !3976)
!4026 = !DILocation(line: 297, column: 8, scope: !4027)
!4027 = distinct !DILexicalBlock(scope: !4028, file: !3, line: 297, column: 8)
!4028 = distinct !DILexicalBlock(scope: !4019, file: !3, line: 296, column: 44)
!4029 = !DILocation(line: 297, column: 12, scope: !4027)
!4030 = !DILocation(line: 297, column: 8, scope: !4028)
!4031 = !DILocation(line: 298, column: 5, scope: !4032)
!4032 = distinct !DILexicalBlock(scope: !4027, file: !3, line: 297, column: 19)
!4033 = !DILocation(line: 298, column: 9, scope: !4032)
!4034 = !DILocation(line: 298, column: 15, scope: !4032)
!4035 = !DILocation(line: 298, column: 24, scope: !4032)
!4036 = !DILocation(line: 298, column: 30, scope: !4032)
!4037 = !DILocation(line: 298, column: 36, scope: !4032)
!4038 = !DILocation(line: 299, column: 4, scope: !4032)
!4039 = !DILocation(line: 299, column: 15, scope: !4040)
!4040 = distinct !DILexicalBlock(scope: !4027, file: !3, line: 299, column: 15)
!4041 = !DILocation(line: 299, column: 19, scope: !4040)
!4042 = !DILocation(line: 299, column: 15, scope: !4027)
!4043 = !DILocalVariable(name: "crt_k", scope: !4044, file: !3, line: 300, type: !158)
!4044 = distinct !DILexicalBlock(scope: !4040, file: !3, line: 299, column: 24)
!4045 = !DILocation(line: 300, column: 19, scope: !4044)
!4046 = !DILocation(line: 300, column: 50, scope: !4044)
!4047 = !DILocation(line: 300, column: 27, scope: !4044)
!4048 = !DILocation(line: 305, column: 9, scope: !4049)
!4049 = distinct !DILexicalBlock(scope: !4044, file: !3, line: 305, column: 9)
!4050 = !DILocation(line: 305, column: 17, scope: !4049)
!4051 = !DILocation(line: 305, column: 21, scope: !4049)
!4052 = !DILocation(line: 305, column: 27, scope: !4049)
!4053 = !DILocation(line: 305, column: 36, scope: !4049)
!4054 = !DILocation(line: 305, column: 15, scope: !4049)
!4055 = !DILocation(line: 305, column: 9, scope: !4044)
!4056 = !DILocation(line: 306, column: 6, scope: !4049)
!4057 = !DILocation(line: 308, column: 38, scope: !4044)
!4058 = !DILocation(line: 308, column: 5, scope: !4044)
!4059 = !DILocation(line: 308, column: 9, scope: !4044)
!4060 = !DILocation(line: 308, column: 15, scope: !4044)
!4061 = !DILocation(line: 308, column: 24, scope: !4044)
!4062 = !DILocation(line: 308, column: 36, scope: !4044)
!4063 = !DILocation(line: 309, column: 4, scope: !4044)
!4064 = !DILocation(line: 310, column: 3, scope: !4028)
!4065 = !DILocation(line: 311, column: 2, scope: !3976)
!4066 = !DILocation(line: 314, column: 6, scope: !4067)
!4067 = distinct !DILexicalBlock(scope: !3956, file: !3, line: 314, column: 6)
!4068 = !DILocation(line: 314, column: 11, scope: !4067)
!4069 = !DILocation(line: 314, column: 6, scope: !3956)
!4070 = !DILocation(line: 315, column: 34, scope: !4071)
!4071 = distinct !DILexicalBlock(scope: !4067, file: !3, line: 314, column: 29)
!4072 = !DILocation(line: 315, column: 38, scope: !4071)
!4073 = !DILocation(line: 315, column: 46, scope: !4071)
!4074 = !DILocation(line: 315, column: 12, scope: !4071)
!4075 = !DILocation(line: 315, column: 10, scope: !4071)
!4076 = !DILocation(line: 317, column: 7, scope: !4077)
!4077 = distinct !DILexicalBlock(scope: !4071, file: !3, line: 317, column: 7)
!4078 = !DILocation(line: 317, column: 7, scope: !4071)
!4079 = !DILocation(line: 318, column: 4, scope: !4080)
!4080 = distinct !DILexicalBlock(scope: !4077, file: !3, line: 317, column: 29)
!4081 = !DILocation(line: 318, column: 8, scope: !4080)
!4082 = !DILocation(line: 318, column: 14, scope: !4080)
!4083 = !DILocation(line: 318, column: 18, scope: !4080)
!4084 = !DILocation(line: 318, column: 24, scope: !4080)
!4085 = !DILocation(line: 318, column: 30, scope: !4080)
!4086 = !DILocation(line: 321, column: 3, scope: !4080)
!4087 = !DILocation(line: 322, column: 32, scope: !4088)
!4088 = distinct !DILexicalBlock(scope: !4077, file: !3, line: 321, column: 10)
!4089 = !DILocation(line: 322, column: 4, scope: !4088)
!4090 = !DILocation(line: 322, column: 8, scope: !4088)
!4091 = !DILocation(line: 322, column: 14, scope: !4088)
!4092 = !DILocation(line: 322, column: 18, scope: !4088)
!4093 = !DILocation(line: 322, column: 30, scope: !4088)
!4094 = !DILocation(line: 323, column: 4, scope: !4088)
!4095 = !DILocation(line: 323, column: 8, scope: !4088)
!4096 = !DILocation(line: 323, column: 14, scope: !4088)
!4097 = !DILocation(line: 323, column: 18, scope: !4088)
!4098 = !DILocation(line: 323, column: 24, scope: !4088)
!4099 = !DILocation(line: 323, column: 30, scope: !4088)
!4100 = !DILocation(line: 328, column: 2, scope: !4071)
!4101 = !DILocation(line: 331, column: 8, scope: !4102)
!4102 = distinct !DILexicalBlock(scope: !3956, file: !3, line: 331, column: 6)
!4103 = !DILocation(line: 331, column: 13, scope: !4102)
!4104 = !DILocation(line: 331, column: 35, scope: !4102)
!4105 = !DILocation(line: 331, column: 38, scope: !4102)
!4106 = !DILocation(line: 331, column: 42, scope: !4102)
!4107 = !DILocation(line: 331, column: 48, scope: !4102)
!4108 = !DILocation(line: 331, column: 56, scope: !4102)
!4109 = !DILocation(line: 331, column: 62, scope: !4102)
!4110 = !DILocation(line: 331, column: 69, scope: !4102)
!4111 = !DILocation(line: 332, column: 4, scope: !4102)
!4112 = !DILocation(line: 332, column: 9, scope: !4102)
!4113 = !DILocation(line: 331, column: 6, scope: !3956)
!4114 = !DILocation(line: 333, column: 11, scope: !4115)
!4115 = distinct !DILexicalBlock(scope: !4102, file: !3, line: 332, column: 30)
!4116 = !DILocation(line: 333, column: 15, scope: !4115)
!4117 = !DILocation(line: 333, column: 21, scope: !4115)
!4118 = !DILocation(line: 333, column: 29, scope: !4115)
!4119 = !DILocation(line: 333, column: 35, scope: !4115)
!4120 = !DILocation(line: 333, column: 9, scope: !4115)
!4121 = !DILocation(line: 334, column: 7, scope: !4122)
!4122 = distinct !DILexicalBlock(scope: !4115, file: !3, line: 334, column: 7)
!4123 = !DILocation(line: 334, column: 11, scope: !4122)
!4124 = !DILocation(line: 334, column: 7, scope: !4115)
!4125 = !DILocation(line: 335, column: 11, scope: !4126)
!4126 = distinct !DILexicalBlock(scope: !4122, file: !3, line: 334, column: 18)
!4127 = !DILocation(line: 336, column: 3, scope: !4126)
!4128 = !DILocation(line: 336, column: 14, scope: !4129)
!4129 = distinct !DILexicalBlock(scope: !4122, file: !3, line: 336, column: 14)
!4130 = !DILocation(line: 336, column: 18, scope: !4129)
!4131 = !DILocation(line: 336, column: 14, scope: !4122)
!4132 = !DILocation(line: 337, column: 33, scope: !4133)
!4133 = distinct !DILexicalBlock(scope: !4129, file: !3, line: 336, column: 23)
!4134 = !DILocation(line: 337, column: 10, scope: !4133)
!4135 = !DILocation(line: 337, column: 8, scope: !4133)
!4136 = !DILocation(line: 338, column: 11, scope: !4133)
!4137 = !DILocation(line: 339, column: 3, scope: !4133)
!4138 = !DILocation(line: 340, column: 35, scope: !4139)
!4139 = distinct !DILexicalBlock(scope: !4129, file: !3, line: 339, column: 10)
!4140 = !DILocation(line: 340, column: 39, scope: !4139)
!4141 = !DILocation(line: 340, column: 47, scope: !4139)
!4142 = !DILocation(line: 340, column: 13, scope: !4139)
!4143 = !DILocation(line: 340, column: 11, scope: !4139)
!4144 = !DILocation(line: 344, column: 7, scope: !4145)
!4145 = distinct !DILexicalBlock(scope: !4115, file: !3, line: 344, column: 7)
!4146 = !DILocation(line: 344, column: 7, scope: !4115)
!4147 = !DILocation(line: 345, column: 4, scope: !4145)
!4148 = !DILocation(line: 345, column: 8, scope: !4145)
!4149 = !DILocation(line: 345, column: 14, scope: !4145)
!4150 = !DILocation(line: 345, column: 22, scope: !4145)
!4151 = !DILocation(line: 345, column: 28, scope: !4145)
!4152 = !DILocation(line: 345, column: 34, scope: !4145)
!4153 = !DILocation(line: 347, column: 36, scope: !4154)
!4154 = distinct !DILexicalBlock(scope: !4145, file: !3, line: 346, column: 8)
!4155 = !DILocation(line: 347, column: 4, scope: !4154)
!4156 = !DILocation(line: 347, column: 8, scope: !4154)
!4157 = !DILocation(line: 347, column: 14, scope: !4154)
!4158 = !DILocation(line: 347, column: 22, scope: !4154)
!4159 = !DILocation(line: 347, column: 34, scope: !4154)
!4160 = !DILocation(line: 348, column: 4, scope: !4154)
!4161 = !DILocation(line: 348, column: 8, scope: !4154)
!4162 = !DILocation(line: 348, column: 14, scope: !4154)
!4163 = !DILocation(line: 348, column: 22, scope: !4154)
!4164 = !DILocation(line: 348, column: 28, scope: !4154)
!4165 = !DILocation(line: 348, column: 34, scope: !4154)
!4166 = !DILocation(line: 349, column: 8, scope: !4167)
!4167 = distinct !DILexicalBlock(scope: !4154, file: !3, line: 349, column: 8)
!4168 = !DILocation(line: 349, column: 13, scope: !4167)
!4169 = !DILocation(line: 349, column: 8, scope: !4154)
!4170 = !DILocation(line: 351, column: 7, scope: !4171)
!4171 = distinct !DILexicalBlock(scope: !4167, file: !3, line: 349, column: 33)
!4172 = !DILocation(line: 351, column: 11, scope: !4171)
!4173 = !DILocation(line: 351, column: 19, scope: !4171)
!4174 = !DILocation(line: 350, column: 14, scope: !4171)
!4175 = !DILocation(line: 350, column: 12, scope: !4171)
!4176 = !DILocation(line: 353, column: 9, scope: !4177)
!4177 = distinct !DILexicalBlock(scope: !4171, file: !3, line: 353, column: 9)
!4178 = !DILocation(line: 353, column: 9, scope: !4171)
!4179 = !DILocation(line: 354, column: 6, scope: !4177)
!4180 = !DILocation(line: 354, column: 10, scope: !4177)
!4181 = !DILocation(line: 354, column: 16, scope: !4177)
!4182 = !DILocation(line: 354, column: 24, scope: !4177)
!4183 = !DILocation(line: 354, column: 30, scope: !4177)
!4184 = !DILocation(line: 354, column: 36, scope: !4177)
!4185 = !DILocation(line: 356, column: 30, scope: !4177)
!4186 = !DILocation(line: 356, column: 6, scope: !4177)
!4187 = !DILocation(line: 356, column: 10, scope: !4177)
!4188 = !DILocation(line: 356, column: 16, scope: !4177)
!4189 = !DILocation(line: 356, column: 24, scope: !4177)
!4190 = !DILocation(line: 356, column: 28, scope: !4177)
!4191 = !DILocation(line: 358, column: 7, scope: !4171)
!4192 = !DILocation(line: 358, column: 11, scope: !4171)
!4193 = !DILocation(line: 358, column: 19, scope: !4171)
!4194 = !DILocation(line: 357, column: 14, scope: !4171)
!4195 = !DILocation(line: 357, column: 12, scope: !4171)
!4196 = !DILocation(line: 360, column: 9, scope: !4197)
!4197 = distinct !DILexicalBlock(scope: !4171, file: !3, line: 360, column: 9)
!4198 = !DILocation(line: 360, column: 9, scope: !4171)
!4199 = !DILocation(line: 361, column: 6, scope: !4197)
!4200 = !DILocation(line: 361, column: 10, scope: !4197)
!4201 = !DILocation(line: 361, column: 16, scope: !4197)
!4202 = !DILocation(line: 361, column: 24, scope: !4197)
!4203 = !DILocation(line: 361, column: 30, scope: !4197)
!4204 = !DILocation(line: 361, column: 36, scope: !4197)
!4205 = !DILocation(line: 363, column: 30, scope: !4197)
!4206 = !DILocation(line: 363, column: 6, scope: !4197)
!4207 = !DILocation(line: 363, column: 10, scope: !4197)
!4208 = !DILocation(line: 363, column: 16, scope: !4197)
!4209 = !DILocation(line: 363, column: 24, scope: !4197)
!4210 = !DILocation(line: 363, column: 28, scope: !4197)
!4211 = !DILocation(line: 365, column: 7, scope: !4171)
!4212 = !DILocation(line: 365, column: 11, scope: !4171)
!4213 = !DILocation(line: 365, column: 19, scope: !4171)
!4214 = !DILocation(line: 364, column: 14, scope: !4171)
!4215 = !DILocation(line: 364, column: 12, scope: !4171)
!4216 = !DILocation(line: 367, column: 9, scope: !4217)
!4217 = distinct !DILexicalBlock(scope: !4171, file: !3, line: 367, column: 9)
!4218 = !DILocation(line: 367, column: 9, scope: !4171)
!4219 = !DILocation(line: 368, column: 6, scope: !4217)
!4220 = !DILocation(line: 368, column: 10, scope: !4217)
!4221 = !DILocation(line: 368, column: 16, scope: !4217)
!4222 = !DILocation(line: 368, column: 24, scope: !4217)
!4223 = !DILocation(line: 368, column: 30, scope: !4217)
!4224 = !DILocation(line: 368, column: 36, scope: !4217)
!4225 = !DILocation(line: 370, column: 30, scope: !4217)
!4226 = !DILocation(line: 370, column: 6, scope: !4217)
!4227 = !DILocation(line: 370, column: 10, scope: !4217)
!4228 = !DILocation(line: 370, column: 16, scope: !4217)
!4229 = !DILocation(line: 370, column: 24, scope: !4217)
!4230 = !DILocation(line: 370, column: 28, scope: !4217)
!4231 = !DILocation(line: 371, column: 4, scope: !4171)
!4232 = !DILocation(line: 373, column: 2, scope: !4115)
!4233 = !DILocation(line: 374, column: 7, scope: !4234)
!4234 = distinct !DILexicalBlock(scope: !3956, file: !3, line: 374, column: 6)
!4235 = !DILocation(line: 374, column: 12, scope: !4234)
!4236 = !DILocation(line: 374, column: 34, scope: !4234)
!4237 = !DILocation(line: 374, column: 37, scope: !4234)
!4238 = !DILocation(line: 374, column: 41, scope: !4234)
!4239 = !DILocation(line: 374, column: 47, scope: !4234)
!4240 = !DILocation(line: 374, column: 55, scope: !4234)
!4241 = !DILocation(line: 374, column: 61, scope: !4234)
!4242 = !DILocation(line: 374, column: 6, scope: !3956)
!4243 = !DILocation(line: 375, column: 3, scope: !4244)
!4244 = distinct !DILexicalBlock(scope: !4234, file: !3, line: 374, column: 68)
!4245 = !DILocation(line: 376, column: 36, scope: !4244)
!4246 = !DILocation(line: 376, column: 40, scope: !4244)
!4247 = !DILocation(line: 376, column: 48, scope: !4244)
!4248 = !DILocation(line: 376, column: 12, scope: !4244)
!4249 = !DILocation(line: 376, column: 10, scope: !4244)
!4250 = !DILocation(line: 378, column: 7, scope: !4251)
!4251 = distinct !DILexicalBlock(scope: !4244, file: !3, line: 378, column: 7)
!4252 = !DILocation(line: 378, column: 7, scope: !4244)
!4253 = !DILocation(line: 379, column: 4, scope: !4254)
!4254 = distinct !DILexicalBlock(scope: !4251, file: !3, line: 378, column: 29)
!4255 = !DILocation(line: 380, column: 4, scope: !4254)
!4256 = !DILocation(line: 380, column: 8, scope: !4254)
!4257 = !DILocation(line: 380, column: 14, scope: !4254)
!4258 = !DILocation(line: 380, column: 22, scope: !4254)
!4259 = !DILocation(line: 380, column: 28, scope: !4254)
!4260 = !DILocation(line: 380, column: 34, scope: !4254)
!4261 = !DILocation(line: 381, column: 3, scope: !4254)
!4262 = !DILocation(line: 383, column: 4, scope: !4251)
!4263 = !DILocation(line: 383, column: 8, scope: !4251)
!4264 = !DILocation(line: 383, column: 14, scope: !4251)
!4265 = !DILocation(line: 383, column: 22, scope: !4251)
!4266 = !DILocation(line: 383, column: 28, scope: !4251)
!4267 = !DILocation(line: 383, column: 34, scope: !4251)
!4268 = !DILocation(line: 385, column: 15, scope: !4269)
!4269 = distinct !DILexicalBlock(scope: !4244, file: !3, line: 385, column: 7)
!4270 = !DILocation(line: 385, column: 19, scope: !4269)
!4271 = !DILocation(line: 385, column: 25, scope: !4269)
!4272 = !DILocation(line: 385, column: 33, scope: !4269)
!4273 = !DILocation(line: 385, column: 14, scope: !4269)
!4274 = !DILocation(line: 385, column: 42, scope: !4269)
!4275 = !DILocation(line: 385, column: 7, scope: !4269)
!4276 = !DILocation(line: 385, column: 7, scope: !4244)
!4277 = !DILocation(line: 387, column: 12, scope: !4278)
!4278 = distinct !DILexicalBlock(scope: !4269, file: !3, line: 386, column: 39)
!4279 = !DILocation(line: 387, column: 16, scope: !4278)
!4280 = !DILocation(line: 387, column: 22, scope: !4278)
!4281 = !DILocation(line: 387, column: 30, scope: !4278)
!4282 = !DILocation(line: 387, column: 4, scope: !4278)
!4283 = !DILocation(line: 389, column: 4, scope: !4278)
!4284 = !DILocation(line: 389, column: 4, scope: !4285)
!4285 = distinct !DILexicalBlock(scope: !4286, file: !3, line: 389, column: 4)
!4286 = distinct !DILexicalBlock(scope: !4278, file: !3, line: 389, column: 4)
!4287 = !DILocation(line: 389, column: 4, scope: !4286)
!4288 = !DILocation(line: 390, column: 3, scope: !4278)
!4289 = !DILocation(line: 391, column: 2, scope: !4244)
!4290 = !DILocation(line: 392, column: 7, scope: !4291)
!4291 = distinct !DILexicalBlock(scope: !3956, file: !3, line: 392, column: 6)
!4292 = !DILocation(line: 392, column: 12, scope: !4291)
!4293 = !DILocation(line: 392, column: 34, scope: !4291)
!4294 = !DILocation(line: 392, column: 38, scope: !4291)
!4295 = !DILocation(line: 392, column: 43, scope: !4291)
!4296 = !DILocation(line: 392, column: 6, scope: !3956)
!4297 = !DILocation(line: 393, column: 7, scope: !4298)
!4298 = distinct !DILexicalBlock(scope: !4299, file: !3, line: 393, column: 7)
!4299 = distinct !DILexicalBlock(scope: !4291, file: !3, line: 392, column: 66)
!4300 = !DILocation(line: 393, column: 16, scope: !4298)
!4301 = !DILocation(line: 393, column: 20, scope: !4298)
!4302 = !DILocation(line: 393, column: 26, scope: !4298)
!4303 = !DILocation(line: 393, column: 34, scope: !4298)
!4304 = !DILocation(line: 393, column: 40, scope: !4298)
!4305 = !DILocation(line: 393, column: 13, scope: !4298)
!4306 = !DILocation(line: 393, column: 7, scope: !4299)
!4307 = !DILocation(line: 394, column: 5, scope: !4298)
!4308 = !DILocation(line: 394, column: 5, scope: !4309)
!4309 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 394, column: 5)
!4310 = distinct !DILexicalBlock(scope: !4298, file: !3, line: 394, column: 5)
!4311 = !DILocation(line: 394, column: 5, scope: !4310)
!4312 = !DILocation(line: 395, column: 2, scope: !4299)
!4313 = !DILocation(line: 398, column: 9, scope: !4314)
!4314 = distinct !DILexicalBlock(scope: !3956, file: !3, line: 398, column: 2)
!4315 = !DILocation(line: 398, column: 7, scope: !4314)
!4316 = !DILocation(line: 398, column: 14, scope: !4317)
!4317 = distinct !DILexicalBlock(scope: !4314, file: !3, line: 398, column: 2)
!4318 = !DILocation(line: 398, column: 16, scope: !4317)
!4319 = !DILocation(line: 398, column: 2, scope: !4314)
!4320 = !DILocalVariable(name: "name", scope: !4321, file: !3, line: 399, type: !3796)
!4321 = distinct !DILexicalBlock(scope: !4317, file: !3, line: 398, column: 48)
!4322 = !DILocation(line: 399, column: 8, scope: !4321)
!4323 = !DILocation(line: 399, column: 18, scope: !4321)
!4324 = !DILocation(line: 399, column: 42, scope: !4321)
!4325 = !DILocation(line: 399, column: 40, scope: !4321)
!4326 = !DILocation(line: 399, column: 35, scope: !4321)
!4327 = !DILocation(line: 400, column: 11, scope: !4321)
!4328 = !DILocation(line: 400, column: 15, scope: !4321)
!4329 = !DILocation(line: 400, column: 21, scope: !4321)
!4330 = !DILocation(line: 400, column: 28, scope: !4321)
!4331 = !DILocation(line: 400, column: 31, scope: !4321)
!4332 = !DILocation(line: 400, column: 37, scope: !4321)
!4333 = !DILocation(line: 400, column: 9, scope: !4321)
!4334 = !DILocation(line: 402, column: 7, scope: !4335)
!4335 = distinct !DILexicalBlock(scope: !4321, file: !3, line: 402, column: 7)
!4336 = !DILocation(line: 402, column: 11, scope: !4335)
!4337 = !DILocation(line: 402, column: 7, scope: !4321)
!4338 = !DILocation(line: 403, column: 4, scope: !4335)
!4339 = !DILocation(line: 405, column: 8, scope: !4340)
!4340 = distinct !DILexicalBlock(scope: !4321, file: !3, line: 405, column: 7)
!4341 = !DILocation(line: 405, column: 13, scope: !4340)
!4342 = !DILocation(line: 405, column: 33, scope: !4340)
!4343 = !DILocation(line: 405, column: 38, scope: !4340)
!4344 = !DILocation(line: 405, column: 43, scope: !4340)
!4345 = !DILocation(line: 405, column: 64, scope: !4340)
!4346 = !DILocation(line: 406, column: 4, scope: !4340)
!4347 = !DILocation(line: 406, column: 8, scope: !4340)
!4348 = !DILocation(line: 406, column: 14, scope: !4340)
!4349 = !DILocation(line: 406, column: 21, scope: !4340)
!4350 = !DILocation(line: 406, column: 24, scope: !4340)
!4351 = !DILocation(line: 406, column: 30, scope: !4340)
!4352 = !DILocation(line: 405, column: 7, scope: !4321)
!4353 = !DILocation(line: 407, column: 35, scope: !4354)
!4354 = distinct !DILexicalBlock(scope: !4340, file: !3, line: 406, column: 38)
!4355 = !DILocation(line: 407, column: 39, scope: !4354)
!4356 = !DILocation(line: 407, column: 47, scope: !4354)
!4357 = !DILocation(line: 408, column: 8, scope: !4354)
!4358 = !DILocation(line: 407, column: 13, scope: !4354)
!4359 = !DILocation(line: 407, column: 11, scope: !4354)
!4360 = !DILocation(line: 409, column: 8, scope: !4361)
!4361 = distinct !DILexicalBlock(scope: !4354, file: !3, line: 409, column: 8)
!4362 = !DILocation(line: 409, column: 8, scope: !4354)
!4363 = !DILocation(line: 410, column: 5, scope: !4364)
!4364 = distinct !DILexicalBlock(scope: !4361, file: !3, line: 409, column: 30)
!4365 = !DILocation(line: 410, column: 9, scope: !4364)
!4366 = !DILocation(line: 410, column: 15, scope: !4364)
!4367 = !DILocation(line: 410, column: 22, scope: !4364)
!4368 = !DILocation(line: 410, column: 25, scope: !4364)
!4369 = !DILocation(line: 410, column: 31, scope: !4364)
!4370 = !DILocation(line: 410, column: 37, scope: !4364)
!4371 = !DILocation(line: 411, column: 9, scope: !4372)
!4372 = distinct !DILexicalBlock(scope: !4364, file: !3, line: 411, column: 9)
!4373 = !DILocation(line: 411, column: 11, scope: !4372)
!4374 = !DILocation(line: 411, column: 9, scope: !4364)
!4375 = !DILocation(line: 412, column: 6, scope: !4372)
!4376 = !DILocation(line: 413, column: 9, scope: !4377)
!4377 = distinct !DILexicalBlock(scope: !4364, file: !3, line: 413, column: 9)
!4378 = !DILocation(line: 413, column: 13, scope: !4377)
!4379 = !DILocation(line: 413, column: 9, scope: !4364)
!4380 = !DILocation(line: 414, column: 6, scope: !4377)
!4381 = !DILocation(line: 415, column: 9, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4364, file: !3, line: 415, column: 9)
!4383 = !DILocation(line: 415, column: 11, scope: !4382)
!4384 = !DILocation(line: 415, column: 9, scope: !4364)
!4385 = !DILocation(line: 417, column: 30, scope: !4382)
!4386 = !DILocation(line: 417, column: 7, scope: !4382)
!4387 = !DILocation(line: 416, column: 6, scope: !4382)
!4388 = !DILocation(line: 416, column: 10, scope: !4382)
!4389 = !DILocation(line: 416, column: 16, scope: !4382)
!4390 = !DILocation(line: 416, column: 26, scope: !4382)
!4391 = !DILocation(line: 416, column: 38, scope: !4382)
!4392 = !DILocation(line: 424, column: 8, scope: !4382)
!4393 = !DILocation(line: 424, column: 12, scope: !4382)
!4394 = !DILocation(line: 424, column: 18, scope: !4382)
!4395 = !DILocation(line: 424, column: 25, scope: !4382)
!4396 = !DILocation(line: 424, column: 27, scope: !4382)
!4397 = !DILocation(line: 424, column: 32, scope: !4382)
!4398 = !DILocation(line: 425, column: 30, scope: !4382)
!4399 = !DILocation(line: 425, column: 7, scope: !4382)
!4400 = !DILocation(line: 424, column: 44, scope: !4382)
!4401 = !DILocation(line: 426, column: 7, scope: !4382)
!4402 = !DILocation(line: 426, column: 11, scope: !4382)
!4403 = !DILocation(line: 426, column: 17, scope: !4382)
!4404 = !DILocation(line: 426, column: 24, scope: !4382)
!4405 = !DILocation(line: 426, column: 26, scope: !4382)
!4406 = !DILocation(line: 426, column: 31, scope: !4382)
!4407 = !DILocation(line: 427, column: 30, scope: !4382)
!4408 = !DILocation(line: 427, column: 7, scope: !4382)
!4409 = !DILocation(line: 423, column: 6, scope: !4382)
!4410 = !DILocation(line: 423, column: 10, scope: !4382)
!4411 = !DILocation(line: 423, column: 16, scope: !4382)
!4412 = !DILocation(line: 423, column: 23, scope: !4382)
!4413 = !DILocation(line: 423, column: 25, scope: !4382)
!4414 = !DILocation(line: 423, column: 30, scope: !4382)
!4415 = !DILocation(line: 423, column: 42, scope: !4382)
!4416 = !DILocation(line: 428, column: 5, scope: !4364)
!4417 = !DILocation(line: 430, column: 39, scope: !4418)
!4418 = distinct !DILexicalBlock(scope: !4361, file: !3, line: 429, column: 11)
!4419 = !DILocation(line: 430, column: 5, scope: !4418)
!4420 = !DILocation(line: 430, column: 9, scope: !4418)
!4421 = !DILocation(line: 430, column: 15, scope: !4418)
!4422 = !DILocation(line: 430, column: 22, scope: !4418)
!4423 = !DILocation(line: 430, column: 25, scope: !4418)
!4424 = !DILocation(line: 430, column: 37, scope: !4418)
!4425 = !DILocation(line: 431, column: 5, scope: !4418)
!4426 = !DILocation(line: 431, column: 9, scope: !4418)
!4427 = !DILocation(line: 431, column: 15, scope: !4418)
!4428 = !DILocation(line: 431, column: 22, scope: !4418)
!4429 = !DILocation(line: 431, column: 25, scope: !4418)
!4430 = !DILocation(line: 431, column: 31, scope: !4418)
!4431 = !DILocation(line: 431, column: 37, scope: !4418)
!4432 = !DILocation(line: 433, column: 3, scope: !4354)
!4433 = !DILocation(line: 435, column: 3, scope: !4321)
!4434 = !DILocation(line: 435, column: 11, scope: !4321)
!4435 = !DILocation(line: 436, column: 8, scope: !4436)
!4436 = distinct !DILexicalBlock(scope: !4321, file: !3, line: 436, column: 7)
!4437 = !DILocation(line: 436, column: 13, scope: !4436)
!4438 = !DILocation(line: 436, column: 35, scope: !4436)
!4439 = !DILocation(line: 436, column: 38, scope: !4436)
!4440 = !DILocation(line: 436, column: 42, scope: !4436)
!4441 = !DILocation(line: 436, column: 48, scope: !4436)
!4442 = !DILocation(line: 436, column: 55, scope: !4436)
!4443 = !DILocation(line: 436, column: 58, scope: !4436)
!4444 = !DILocation(line: 436, column: 64, scope: !4436)
!4445 = !DILocation(line: 436, column: 7, scope: !4321)
!4446 = !DILocation(line: 437, column: 4, scope: !4447)
!4447 = distinct !DILexicalBlock(scope: !4436, file: !3, line: 436, column: 72)
!4448 = !DILocation(line: 438, column: 37, scope: !4447)
!4449 = !DILocation(line: 438, column: 41, scope: !4447)
!4450 = !DILocation(line: 438, column: 49, scope: !4447)
!4451 = !DILocation(line: 439, column: 7, scope: !4447)
!4452 = !DILocation(line: 438, column: 13, scope: !4447)
!4453 = !DILocation(line: 438, column: 11, scope: !4447)
!4454 = !DILocation(line: 440, column: 8, scope: !4455)
!4455 = distinct !DILexicalBlock(scope: !4447, file: !3, line: 440, column: 8)
!4456 = !DILocation(line: 440, column: 8, scope: !4447)
!4457 = !DILocation(line: 441, column: 5, scope: !4458)
!4458 = distinct !DILexicalBlock(scope: !4455, file: !3, line: 440, column: 30)
!4459 = !DILocation(line: 443, column: 5, scope: !4458)
!4460 = !DILocation(line: 443, column: 9, scope: !4458)
!4461 = !DILocation(line: 443, column: 15, scope: !4458)
!4462 = !DILocation(line: 443, column: 22, scope: !4458)
!4463 = !DILocation(line: 443, column: 25, scope: !4458)
!4464 = !DILocation(line: 443, column: 31, scope: !4458)
!4465 = !DILocation(line: 443, column: 37, scope: !4458)
!4466 = !DILocation(line: 444, column: 4, scope: !4458)
!4467 = !DILocation(line: 446, column: 5, scope: !4455)
!4468 = !DILocation(line: 446, column: 9, scope: !4455)
!4469 = !DILocation(line: 446, column: 15, scope: !4455)
!4470 = !DILocation(line: 446, column: 22, scope: !4455)
!4471 = !DILocation(line: 446, column: 25, scope: !4455)
!4472 = !DILocation(line: 446, column: 31, scope: !4455)
!4473 = !DILocation(line: 446, column: 37, scope: !4455)
!4474 = !DILocation(line: 448, column: 16, scope: !4475)
!4475 = distinct !DILexicalBlock(scope: !4447, file: !3, line: 448, column: 8)
!4476 = !DILocation(line: 448, column: 20, scope: !4475)
!4477 = !DILocation(line: 448, column: 26, scope: !4475)
!4478 = !DILocation(line: 448, column: 33, scope: !4475)
!4479 = !DILocation(line: 448, column: 36, scope: !4475)
!4480 = !DILocation(line: 448, column: 15, scope: !4475)
!4481 = !DILocation(line: 448, column: 45, scope: !4475)
!4482 = !DILocation(line: 448, column: 8, scope: !4475)
!4483 = !DILocation(line: 448, column: 8, scope: !4447)
!4484 = !DILocation(line: 450, column: 13, scope: !4485)
!4485 = distinct !DILexicalBlock(scope: !4475, file: !3, line: 449, column: 40)
!4486 = !DILocation(line: 450, column: 17, scope: !4485)
!4487 = !DILocation(line: 450, column: 23, scope: !4485)
!4488 = !DILocation(line: 450, column: 30, scope: !4485)
!4489 = !DILocation(line: 450, column: 33, scope: !4485)
!4490 = !DILocation(line: 450, column: 5, scope: !4485)
!4491 = !DILocation(line: 452, column: 5, scope: !4485)
!4492 = !DILocation(line: 452, column: 5, scope: !4493)
!4493 = distinct !DILexicalBlock(scope: !4494, file: !3, line: 452, column: 5)
!4494 = distinct !DILexicalBlock(scope: !4485, file: !3, line: 452, column: 5)
!4495 = !DILocation(line: 452, column: 5, scope: !4494)
!4496 = !DILocation(line: 453, column: 4, scope: !4485)
!4497 = !DILocation(line: 454, column: 3, scope: !4447)
!4498 = !DILocation(line: 455, column: 8, scope: !4499)
!4499 = distinct !DILexicalBlock(scope: !4321, file: !3, line: 455, column: 7)
!4500 = !DILocation(line: 455, column: 13, scope: !4499)
!4501 = !DILocation(line: 455, column: 34, scope: !4499)
!4502 = !DILocation(line: 455, column: 38, scope: !4499)
!4503 = !DILocation(line: 455, column: 43, scope: !4499)
!4504 = !DILocation(line: 455, column: 7, scope: !4321)
!4505 = !DILocation(line: 456, column: 8, scope: !4506)
!4506 = distinct !DILexicalBlock(scope: !4499, file: !3, line: 456, column: 8)
!4507 = !DILocation(line: 456, column: 17, scope: !4506)
!4508 = !DILocation(line: 456, column: 21, scope: !4506)
!4509 = !DILocation(line: 456, column: 27, scope: !4506)
!4510 = !DILocation(line: 456, column: 34, scope: !4506)
!4511 = !DILocation(line: 456, column: 37, scope: !4506)
!4512 = !DILocation(line: 456, column: 43, scope: !4506)
!4513 = !DILocation(line: 456, column: 14, scope: !4506)
!4514 = !DILocation(line: 456, column: 8, scope: !4499)
!4515 = !DILocation(line: 457, column: 5, scope: !4506)
!4516 = !DILocation(line: 457, column: 5, scope: !4517)
!4517 = distinct !DILexicalBlock(scope: !4518, file: !3, line: 457, column: 5)
!4518 = distinct !DILexicalBlock(scope: !4506, file: !3, line: 457, column: 5)
!4519 = !DILocation(line: 457, column: 5, scope: !4518)
!4520 = !DILocation(line: 459, column: 8, scope: !4521)
!4521 = distinct !DILexicalBlock(scope: !4321, file: !3, line: 459, column: 7)
!4522 = !DILocation(line: 459, column: 12, scope: !4521)
!4523 = !DILocation(line: 459, column: 18, scope: !4521)
!4524 = !DILocation(line: 459, column: 25, scope: !4521)
!4525 = !DILocation(line: 459, column: 28, scope: !4521)
!4526 = !DILocation(line: 459, column: 34, scope: !4521)
!4527 = !DILocation(line: 459, column: 7, scope: !4321)
!4528 = !DILocation(line: 460, column: 4, scope: !4521)
!4529 = !DILocation(line: 461, column: 2, scope: !4321)
!4530 = !DILocation(line: 398, column: 44, scope: !4317)
!4531 = !DILocation(line: 398, column: 2, scope: !4317)
!4532 = distinct !{!4532, !4319, !4533}
!4533 = !DILocation(line: 461, column: 2, scope: !4314)
!4534 = !DILocation(line: 463, column: 6, scope: !4535)
!4535 = distinct !DILexicalBlock(scope: !3956, file: !3, line: 463, column: 6)
!4536 = !DILocation(line: 463, column: 11, scope: !4535)
!4537 = !DILocation(line: 463, column: 6, scope: !3956)
!4538 = !DILocation(line: 464, column: 3, scope: !4539)
!4539 = distinct !DILexicalBlock(scope: !4535, file: !3, line: 463, column: 33)
!4540 = !DILocation(line: 465, column: 36, scope: !4539)
!4541 = !DILocation(line: 465, column: 40, scope: !4539)
!4542 = !DILocation(line: 465, column: 48, scope: !4539)
!4543 = !DILocation(line: 465, column: 12, scope: !4539)
!4544 = !DILocation(line: 465, column: 10, scope: !4539)
!4545 = !DILocation(line: 467, column: 7, scope: !4546)
!4546 = distinct !DILexicalBlock(scope: !4539, file: !3, line: 467, column: 7)
!4547 = !DILocation(line: 468, column: 7, scope: !4546)
!4548 = !DILocation(line: 468, column: 18, scope: !4546)
!4549 = !DILocation(line: 468, column: 22, scope: !4546)
!4550 = !DILocation(line: 468, column: 17, scope: !4546)
!4551 = !DILocation(line: 468, column: 31, scope: !4546)
!4552 = !DILocation(line: 468, column: 10, scope: !4546)
!4553 = !DILocation(line: 467, column: 7, scope: !4539)
!4554 = !DILocation(line: 469, column: 4, scope: !4555)
!4555 = distinct !DILexicalBlock(scope: !4546, file: !3, line: 468, column: 59)
!4556 = !DILocation(line: 469, column: 8, scope: !4555)
!4557 = !DILocation(line: 469, column: 18, scope: !4555)
!4558 = !DILocation(line: 470, column: 4, scope: !4555)
!4559 = !DILocation(line: 470, column: 4, scope: !4560)
!4560 = distinct !DILexicalBlock(scope: !4561, file: !3, line: 470, column: 4)
!4561 = distinct !DILexicalBlock(scope: !4555, file: !3, line: 470, column: 4)
!4562 = !DILocation(line: 470, column: 4, scope: !4561)
!4563 = !DILocation(line: 471, column: 3, scope: !4555)
!4564 = !DILocation(line: 472, column: 2, scope: !4539)
!4565 = !DILocation(line: 474, column: 2, scope: !3956)
!4566 = distinct !DISubprogram(name: "celsius_to_deci_kelvin", scope: !3682, file: !3682, line: 41, type: !3683, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!4567 = !DILocalVariable(name: "t", arg: 1, scope: !4566, file: !3682, line: 41, type: !96)
!4568 = !DILocation(line: 41, column: 48, scope: !4566)
!4569 = !DILocation(line: 43, column: 35, scope: !4566)
!4570 = !DILocation(line: 43, column: 37, scope: !4566)
!4571 = !DILocation(line: 43, column: 6, scope: !4566)
!4572 = !DILocation(line: 43, column: 4, scope: !4566)
!4573 = !DILocalVariable(name: "__x", scope: !4574, file: !3682, line: 45, type: !96)
!4574 = distinct !DILexicalBlock(scope: !4566, file: !3682, line: 45, column: 9)
!4575 = !DILocation(line: 45, column: 9, scope: !4574)
!4576 = !DILocalVariable(name: "__d", scope: !4574, file: !3682, line: 45, type: !182)
!4577 = !DILocation(line: 45, column: 2, scope: !4566)
!4578 = distinct !DISubprogram(name: "millicelsius_to_milli_kelvin", scope: !3682, file: !3682, line: 14, type: !3683, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!4579 = !DILocalVariable(name: "t", arg: 1, scope: !4578, file: !3682, line: 14, type: !96)
!4580 = !DILocation(line: 14, column: 54, scope: !4578)
!4581 = !DILocation(line: 16, column: 9, scope: !4578)
!4582 = !DILocation(line: 16, column: 11, scope: !4578)
!4583 = !DILocation(line: 16, column: 2, scope: !4578)
!4584 = distinct !DISubprogram(name: "IS_ERR", scope: !4585, file: !4585, line: 34, type: !4586, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!4585 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!4586 = !DISubroutineType(types: !4587)
!4587 = !{!208, !216}
!4588 = !DILocalVariable(name: "ptr", arg: 1, scope: !4584, file: !4585, line: 34, type: !216)
!4589 = !DILocation(line: 34, column: 60, scope: !4584)
!4590 = !DILocation(line: 36, column: 9, scope: !4584)
!4591 = !DILocation(line: 36, column: 2, scope: !4584)
!4592 = distinct !DISubprogram(name: "acpi_thermal_bind_cooling_device", scope: !3, file: !3, line: 794, type: !2608, scopeLine: 796, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!4593 = !DILocalVariable(name: "thermal", arg: 1, scope: !4592, file: !3, line: 794, type: !2576)
!4594 = !DILocation(line: 794, column: 62, scope: !4592)
!4595 = !DILocalVariable(name: "cdev", arg: 2, scope: !4592, file: !3, line: 795, type: !2610)
!4596 = !DILocation(line: 795, column: 37, scope: !4592)
!4597 = !DILocation(line: 797, column: 40, scope: !4592)
!4598 = !DILocation(line: 797, column: 49, scope: !4592)
!4599 = !DILocation(line: 797, column: 9, scope: !4592)
!4600 = !DILocation(line: 797, column: 2, scope: !4592)
!4601 = distinct !DISubprogram(name: "acpi_thermal_unbind_cooling_device", scope: !3, file: !3, line: 801, type: !2608, scopeLine: 803, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!4602 = !DILocalVariable(name: "thermal", arg: 1, scope: !4601, file: !3, line: 801, type: !2576)
!4603 = !DILocation(line: 801, column: 64, scope: !4601)
!4604 = !DILocalVariable(name: "cdev", arg: 2, scope: !4601, file: !3, line: 802, type: !2610)
!4605 = !DILocation(line: 802, column: 37, scope: !4601)
!4606 = !DILocation(line: 804, column: 40, scope: !4601)
!4607 = !DILocation(line: 804, column: 49, scope: !4601)
!4608 = !DILocation(line: 804, column: 9, scope: !4601)
!4609 = !DILocation(line: 804, column: 2, scope: !4601)
!4610 = distinct !DISubprogram(name: "thermal_get_temp", scope: !3, file: !3, line: 508, type: !2652, scopeLine: 509, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!4611 = !DILocalVariable(name: "thermal", arg: 1, scope: !4610, file: !3, line: 508, type: !2576)
!4612 = !DILocation(line: 508, column: 57, scope: !4610)
!4613 = !DILocalVariable(name: "temp", arg: 2, scope: !4610, file: !3, line: 508, type: !864)
!4614 = !DILocation(line: 508, column: 71, scope: !4610)
!4615 = !DILocalVariable(name: "tz", scope: !4610, file: !3, line: 510, type: !173)
!4616 = !DILocation(line: 510, column: 23, scope: !4610)
!4617 = !DILocation(line: 510, column: 28, scope: !4610)
!4618 = !DILocation(line: 510, column: 37, scope: !4610)
!4619 = !DILocalVariable(name: "result", scope: !4610, file: !3, line: 511, type: !182)
!4620 = !DILocation(line: 511, column: 6, scope: !4610)
!4621 = !DILocation(line: 513, column: 7, scope: !4622)
!4622 = distinct !DILexicalBlock(scope: !4610, file: !3, line: 513, column: 6)
!4623 = !DILocation(line: 513, column: 6, scope: !4610)
!4624 = !DILocation(line: 514, column: 3, scope: !4622)
!4625 = !DILocation(line: 516, column: 40, scope: !4610)
!4626 = !DILocation(line: 516, column: 11, scope: !4610)
!4627 = !DILocation(line: 516, column: 9, scope: !4610)
!4628 = !DILocation(line: 517, column: 6, scope: !4629)
!4629 = distinct !DILexicalBlock(scope: !4610, file: !3, line: 517, column: 6)
!4630 = !DILocation(line: 517, column: 6, scope: !4610)
!4631 = !DILocation(line: 518, column: 10, scope: !4629)
!4632 = !DILocation(line: 518, column: 3, scope: !4629)
!4633 = !DILocation(line: 520, column: 50, scope: !4610)
!4634 = !DILocation(line: 520, column: 54, scope: !4610)
!4635 = !DILocation(line: 521, column: 8, scope: !4610)
!4636 = !DILocation(line: 521, column: 12, scope: !4610)
!4637 = !DILocation(line: 520, column: 10, scope: !4610)
!4638 = !DILocation(line: 520, column: 3, scope: !4610)
!4639 = !DILocation(line: 520, column: 8, scope: !4610)
!4640 = !DILocation(line: 522, column: 2, scope: !4610)
!4641 = !DILocation(line: 523, column: 1, scope: !4610)
!4642 = distinct !DISubprogram(name: "thermal_get_trip_type", scope: !3, file: !3, line: 525, type: !2664, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!4643 = !DILocalVariable(name: "thermal", arg: 1, scope: !4642, file: !3, line: 525, type: !2576)
!4644 = !DILocation(line: 525, column: 62, scope: !4642)
!4645 = !DILocalVariable(name: "trip", arg: 2, scope: !4642, file: !3, line: 526, type: !182)
!4646 = !DILocation(line: 526, column: 10, scope: !4642)
!4647 = !DILocalVariable(name: "type", arg: 3, scope: !4642, file: !3, line: 526, type: !2666)
!4648 = !DILocation(line: 526, column: 40, scope: !4642)
!4649 = !DILocalVariable(name: "tz", scope: !4642, file: !3, line: 528, type: !173)
!4650 = !DILocation(line: 528, column: 23, scope: !4642)
!4651 = !DILocation(line: 528, column: 28, scope: !4642)
!4652 = !DILocation(line: 528, column: 37, scope: !4642)
!4653 = !DILocalVariable(name: "i", scope: !4642, file: !3, line: 529, type: !182)
!4654 = !DILocation(line: 529, column: 6, scope: !4642)
!4655 = !DILocation(line: 531, column: 7, scope: !4656)
!4656 = distinct !DILexicalBlock(scope: !4642, file: !3, line: 531, column: 6)
!4657 = !DILocation(line: 531, column: 10, scope: !4656)
!4658 = !DILocation(line: 531, column: 13, scope: !4656)
!4659 = !DILocation(line: 531, column: 18, scope: !4656)
!4660 = !DILocation(line: 531, column: 6, scope: !4642)
!4661 = !DILocation(line: 532, column: 3, scope: !4656)
!4662 = !DILocation(line: 534, column: 6, scope: !4663)
!4663 = distinct !DILexicalBlock(scope: !4642, file: !3, line: 534, column: 6)
!4664 = !DILocation(line: 534, column: 10, scope: !4663)
!4665 = !DILocation(line: 534, column: 16, scope: !4663)
!4666 = !DILocation(line: 534, column: 25, scope: !4663)
!4667 = !DILocation(line: 534, column: 31, scope: !4663)
!4668 = !DILocation(line: 534, column: 6, scope: !4642)
!4669 = !DILocation(line: 535, column: 8, scope: !4670)
!4670 = distinct !DILexicalBlock(scope: !4671, file: !3, line: 535, column: 7)
!4671 = distinct !DILexicalBlock(scope: !4663, file: !3, line: 534, column: 38)
!4672 = !DILocation(line: 535, column: 7, scope: !4671)
!4673 = !DILocation(line: 536, column: 5, scope: !4674)
!4674 = distinct !DILexicalBlock(scope: !4670, file: !3, line: 535, column: 14)
!4675 = !DILocation(line: 536, column: 10, scope: !4674)
!4676 = !DILocation(line: 537, column: 4, scope: !4674)
!4677 = !DILocation(line: 539, column: 7, scope: !4671)
!4678 = !DILocation(line: 540, column: 2, scope: !4671)
!4679 = !DILocation(line: 542, column: 6, scope: !4680)
!4680 = distinct !DILexicalBlock(scope: !4642, file: !3, line: 542, column: 6)
!4681 = !DILocation(line: 542, column: 10, scope: !4680)
!4682 = !DILocation(line: 542, column: 16, scope: !4680)
!4683 = !DILocation(line: 542, column: 20, scope: !4680)
!4684 = !DILocation(line: 542, column: 26, scope: !4680)
!4685 = !DILocation(line: 542, column: 6, scope: !4642)
!4686 = !DILocation(line: 543, column: 8, scope: !4687)
!4687 = distinct !DILexicalBlock(scope: !4688, file: !3, line: 543, column: 7)
!4688 = distinct !DILexicalBlock(scope: !4680, file: !3, line: 542, column: 33)
!4689 = !DILocation(line: 543, column: 7, scope: !4688)
!4690 = !DILocation(line: 544, column: 5, scope: !4691)
!4691 = distinct !DILexicalBlock(scope: !4687, file: !3, line: 543, column: 14)
!4692 = !DILocation(line: 544, column: 10, scope: !4691)
!4693 = !DILocation(line: 545, column: 4, scope: !4691)
!4694 = !DILocation(line: 547, column: 7, scope: !4688)
!4695 = !DILocation(line: 548, column: 2, scope: !4688)
!4696 = !DILocation(line: 550, column: 6, scope: !4697)
!4697 = distinct !DILexicalBlock(scope: !4642, file: !3, line: 550, column: 6)
!4698 = !DILocation(line: 550, column: 10, scope: !4697)
!4699 = !DILocation(line: 550, column: 16, scope: !4697)
!4700 = !DILocation(line: 550, column: 24, scope: !4697)
!4701 = !DILocation(line: 550, column: 30, scope: !4697)
!4702 = !DILocation(line: 550, column: 6, scope: !4642)
!4703 = !DILocation(line: 551, column: 8, scope: !4704)
!4704 = distinct !DILexicalBlock(scope: !4705, file: !3, line: 551, column: 7)
!4705 = distinct !DILexicalBlock(scope: !4697, file: !3, line: 550, column: 37)
!4706 = !DILocation(line: 551, column: 7, scope: !4705)
!4707 = !DILocation(line: 552, column: 5, scope: !4708)
!4708 = distinct !DILexicalBlock(scope: !4704, file: !3, line: 551, column: 14)
!4709 = !DILocation(line: 552, column: 10, scope: !4708)
!4710 = !DILocation(line: 553, column: 4, scope: !4708)
!4711 = !DILocation(line: 555, column: 7, scope: !4705)
!4712 = !DILocation(line: 556, column: 2, scope: !4705)
!4713 = !DILocation(line: 558, column: 9, scope: !4714)
!4714 = distinct !DILexicalBlock(scope: !4642, file: !3, line: 558, column: 2)
!4715 = !DILocation(line: 558, column: 7, scope: !4714)
!4716 = !DILocation(line: 558, column: 14, scope: !4717)
!4717 = distinct !DILexicalBlock(scope: !4714, file: !3, line: 558, column: 2)
!4718 = !DILocation(line: 558, column: 16, scope: !4717)
!4719 = !DILocation(line: 558, column: 42, scope: !4717)
!4720 = !DILocation(line: 559, column: 3, scope: !4717)
!4721 = !DILocation(line: 559, column: 7, scope: !4717)
!4722 = !DILocation(line: 559, column: 13, scope: !4717)
!4723 = !DILocation(line: 559, column: 20, scope: !4717)
!4724 = !DILocation(line: 559, column: 23, scope: !4717)
!4725 = !DILocation(line: 559, column: 29, scope: !4717)
!4726 = !DILocation(line: 0, scope: !4717)
!4727 = !DILocation(line: 558, column: 2, scope: !4714)
!4728 = !DILocation(line: 560, column: 8, scope: !4729)
!4729 = distinct !DILexicalBlock(scope: !4730, file: !3, line: 560, column: 7)
!4730 = distinct !DILexicalBlock(scope: !4717, file: !3, line: 559, column: 41)
!4731 = !DILocation(line: 560, column: 7, scope: !4730)
!4732 = !DILocation(line: 561, column: 5, scope: !4733)
!4733 = distinct !DILexicalBlock(scope: !4729, file: !3, line: 560, column: 14)
!4734 = !DILocation(line: 561, column: 10, scope: !4733)
!4735 = !DILocation(line: 562, column: 4, scope: !4733)
!4736 = !DILocation(line: 564, column: 7, scope: !4730)
!4737 = !DILocation(line: 565, column: 2, scope: !4730)
!4738 = !DILocation(line: 559, column: 37, scope: !4717)
!4739 = !DILocation(line: 558, column: 2, scope: !4717)
!4740 = distinct !{!4740, !4727, !4741}
!4741 = !DILocation(line: 565, column: 2, scope: !4714)
!4742 = !DILocation(line: 567, column: 2, scope: !4642)
!4743 = !DILocation(line: 568, column: 1, scope: !4642)
!4744 = distinct !DISubprogram(name: "thermal_get_trip_temp", scope: !3, file: !3, line: 570, type: !2669, scopeLine: 572, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!4745 = !DILocalVariable(name: "thermal", arg: 1, scope: !4744, file: !3, line: 570, type: !2576)
!4746 = !DILocation(line: 570, column: 62, scope: !4744)
!4747 = !DILocalVariable(name: "trip", arg: 2, scope: !4744, file: !3, line: 571, type: !182)
!4748 = !DILocation(line: 571, column: 10, scope: !4744)
!4749 = !DILocalVariable(name: "temp", arg: 3, scope: !4744, file: !3, line: 571, type: !864)
!4750 = !DILocation(line: 571, column: 21, scope: !4744)
!4751 = !DILocalVariable(name: "tz", scope: !4744, file: !3, line: 573, type: !173)
!4752 = !DILocation(line: 573, column: 23, scope: !4744)
!4753 = !DILocation(line: 573, column: 28, scope: !4744)
!4754 = !DILocation(line: 573, column: 37, scope: !4744)
!4755 = !DILocalVariable(name: "i", scope: !4744, file: !3, line: 574, type: !182)
!4756 = !DILocation(line: 574, column: 6, scope: !4744)
!4757 = !DILocation(line: 576, column: 7, scope: !4758)
!4758 = distinct !DILexicalBlock(scope: !4744, file: !3, line: 576, column: 6)
!4759 = !DILocation(line: 576, column: 10, scope: !4758)
!4760 = !DILocation(line: 576, column: 13, scope: !4758)
!4761 = !DILocation(line: 576, column: 18, scope: !4758)
!4762 = !DILocation(line: 576, column: 6, scope: !4744)
!4763 = !DILocation(line: 577, column: 3, scope: !4758)
!4764 = !DILocation(line: 579, column: 6, scope: !4765)
!4765 = distinct !DILexicalBlock(scope: !4744, file: !3, line: 579, column: 6)
!4766 = !DILocation(line: 579, column: 10, scope: !4765)
!4767 = !DILocation(line: 579, column: 16, scope: !4765)
!4768 = !DILocation(line: 579, column: 25, scope: !4765)
!4769 = !DILocation(line: 579, column: 31, scope: !4765)
!4770 = !DILocation(line: 579, column: 6, scope: !4744)
!4771 = !DILocation(line: 580, column: 8, scope: !4772)
!4772 = distinct !DILexicalBlock(scope: !4773, file: !3, line: 580, column: 7)
!4773 = distinct !DILexicalBlock(scope: !4765, file: !3, line: 579, column: 38)
!4774 = !DILocation(line: 580, column: 7, scope: !4773)
!4775 = !DILocation(line: 582, column: 5, scope: !4776)
!4776 = distinct !DILexicalBlock(scope: !4772, file: !3, line: 580, column: 14)
!4777 = !DILocation(line: 582, column: 9, scope: !4776)
!4778 = !DILocation(line: 582, column: 15, scope: !4776)
!4779 = !DILocation(line: 582, column: 24, scope: !4776)
!4780 = !DILocation(line: 583, column: 5, scope: !4776)
!4781 = !DILocation(line: 583, column: 9, scope: !4776)
!4782 = !DILocation(line: 581, column: 12, scope: !4776)
!4783 = !DILocation(line: 581, column: 5, scope: !4776)
!4784 = !DILocation(line: 581, column: 10, scope: !4776)
!4785 = !DILocation(line: 584, column: 4, scope: !4776)
!4786 = !DILocation(line: 586, column: 7, scope: !4773)
!4787 = !DILocation(line: 587, column: 2, scope: !4773)
!4788 = !DILocation(line: 589, column: 6, scope: !4789)
!4789 = distinct !DILexicalBlock(scope: !4744, file: !3, line: 589, column: 6)
!4790 = !DILocation(line: 589, column: 10, scope: !4789)
!4791 = !DILocation(line: 589, column: 16, scope: !4789)
!4792 = !DILocation(line: 589, column: 20, scope: !4789)
!4793 = !DILocation(line: 589, column: 26, scope: !4789)
!4794 = !DILocation(line: 589, column: 6, scope: !4744)
!4795 = !DILocation(line: 590, column: 8, scope: !4796)
!4796 = distinct !DILexicalBlock(scope: !4797, file: !3, line: 590, column: 7)
!4797 = distinct !DILexicalBlock(scope: !4789, file: !3, line: 589, column: 33)
!4798 = !DILocation(line: 590, column: 7, scope: !4797)
!4799 = !DILocation(line: 592, column: 5, scope: !4800)
!4800 = distinct !DILexicalBlock(scope: !4796, file: !3, line: 590, column: 14)
!4801 = !DILocation(line: 592, column: 9, scope: !4800)
!4802 = !DILocation(line: 592, column: 15, scope: !4800)
!4803 = !DILocation(line: 592, column: 19, scope: !4800)
!4804 = !DILocation(line: 593, column: 5, scope: !4800)
!4805 = !DILocation(line: 593, column: 9, scope: !4800)
!4806 = !DILocation(line: 591, column: 12, scope: !4800)
!4807 = !DILocation(line: 591, column: 5, scope: !4800)
!4808 = !DILocation(line: 591, column: 10, scope: !4800)
!4809 = !DILocation(line: 594, column: 4, scope: !4800)
!4810 = !DILocation(line: 596, column: 7, scope: !4797)
!4811 = !DILocation(line: 597, column: 2, scope: !4797)
!4812 = !DILocation(line: 599, column: 6, scope: !4813)
!4813 = distinct !DILexicalBlock(scope: !4744, file: !3, line: 599, column: 6)
!4814 = !DILocation(line: 599, column: 10, scope: !4813)
!4815 = !DILocation(line: 599, column: 16, scope: !4813)
!4816 = !DILocation(line: 599, column: 24, scope: !4813)
!4817 = !DILocation(line: 599, column: 30, scope: !4813)
!4818 = !DILocation(line: 599, column: 6, scope: !4744)
!4819 = !DILocation(line: 600, column: 8, scope: !4820)
!4820 = distinct !DILexicalBlock(scope: !4821, file: !3, line: 600, column: 7)
!4821 = distinct !DILexicalBlock(scope: !4813, file: !3, line: 599, column: 37)
!4822 = !DILocation(line: 600, column: 7, scope: !4821)
!4823 = !DILocation(line: 602, column: 5, scope: !4824)
!4824 = distinct !DILexicalBlock(scope: !4820, file: !3, line: 600, column: 14)
!4825 = !DILocation(line: 602, column: 9, scope: !4824)
!4826 = !DILocation(line: 602, column: 15, scope: !4824)
!4827 = !DILocation(line: 602, column: 23, scope: !4824)
!4828 = !DILocation(line: 603, column: 5, scope: !4824)
!4829 = !DILocation(line: 603, column: 9, scope: !4824)
!4830 = !DILocation(line: 601, column: 12, scope: !4824)
!4831 = !DILocation(line: 601, column: 5, scope: !4824)
!4832 = !DILocation(line: 601, column: 10, scope: !4824)
!4833 = !DILocation(line: 604, column: 4, scope: !4824)
!4834 = !DILocation(line: 606, column: 7, scope: !4821)
!4835 = !DILocation(line: 607, column: 2, scope: !4821)
!4836 = !DILocation(line: 609, column: 9, scope: !4837)
!4837 = distinct !DILexicalBlock(scope: !4744, file: !3, line: 609, column: 2)
!4838 = !DILocation(line: 609, column: 7, scope: !4837)
!4839 = !DILocation(line: 609, column: 14, scope: !4840)
!4840 = distinct !DILexicalBlock(scope: !4837, file: !3, line: 609, column: 2)
!4841 = !DILocation(line: 609, column: 16, scope: !4840)
!4842 = !DILocation(line: 609, column: 42, scope: !4840)
!4843 = !DILocation(line: 610, column: 3, scope: !4840)
!4844 = !DILocation(line: 610, column: 7, scope: !4840)
!4845 = !DILocation(line: 610, column: 13, scope: !4840)
!4846 = !DILocation(line: 610, column: 20, scope: !4840)
!4847 = !DILocation(line: 610, column: 23, scope: !4840)
!4848 = !DILocation(line: 610, column: 29, scope: !4840)
!4849 = !DILocation(line: 0, scope: !4840)
!4850 = !DILocation(line: 609, column: 2, scope: !4837)
!4851 = !DILocation(line: 611, column: 8, scope: !4852)
!4852 = distinct !DILexicalBlock(scope: !4853, file: !3, line: 611, column: 7)
!4853 = distinct !DILexicalBlock(scope: !4840, file: !3, line: 610, column: 41)
!4854 = !DILocation(line: 611, column: 7, scope: !4853)
!4855 = !DILocation(line: 613, column: 5, scope: !4856)
!4856 = distinct !DILexicalBlock(scope: !4852, file: !3, line: 611, column: 14)
!4857 = !DILocation(line: 613, column: 9, scope: !4856)
!4858 = !DILocation(line: 613, column: 15, scope: !4856)
!4859 = !DILocation(line: 613, column: 22, scope: !4856)
!4860 = !DILocation(line: 613, column: 25, scope: !4856)
!4861 = !DILocation(line: 614, column: 5, scope: !4856)
!4862 = !DILocation(line: 614, column: 9, scope: !4856)
!4863 = !DILocation(line: 612, column: 12, scope: !4856)
!4864 = !DILocation(line: 612, column: 5, scope: !4856)
!4865 = !DILocation(line: 612, column: 10, scope: !4856)
!4866 = !DILocation(line: 615, column: 4, scope: !4856)
!4867 = !DILocation(line: 617, column: 7, scope: !4853)
!4868 = !DILocation(line: 618, column: 2, scope: !4853)
!4869 = !DILocation(line: 610, column: 37, scope: !4840)
!4870 = !DILocation(line: 609, column: 2, scope: !4840)
!4871 = distinct !{!4871, !4850, !4872}
!4872 = !DILocation(line: 618, column: 2, scope: !4837)
!4873 = !DILocation(line: 620, column: 2, scope: !4744)
!4874 = !DILocation(line: 621, column: 1, scope: !4744)
!4875 = distinct !DISubprogram(name: "thermal_get_crit_temp", scope: !3, file: !3, line: 623, type: !2652, scopeLine: 625, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!4876 = !DILocalVariable(name: "thermal", arg: 1, scope: !4875, file: !3, line: 623, type: !2576)
!4877 = !DILocation(line: 623, column: 62, scope: !4875)
!4878 = !DILocalVariable(name: "temperature", arg: 2, scope: !4875, file: !3, line: 624, type: !864)
!4879 = !DILocation(line: 624, column: 10, scope: !4875)
!4880 = !DILocalVariable(name: "tz", scope: !4875, file: !3, line: 626, type: !173)
!4881 = !DILocation(line: 626, column: 23, scope: !4875)
!4882 = !DILocation(line: 626, column: 28, scope: !4875)
!4883 = !DILocation(line: 626, column: 37, scope: !4875)
!4884 = !DILocation(line: 628, column: 6, scope: !4885)
!4885 = distinct !DILexicalBlock(scope: !4875, file: !3, line: 628, column: 6)
!4886 = !DILocation(line: 628, column: 10, scope: !4885)
!4887 = !DILocation(line: 628, column: 16, scope: !4885)
!4888 = !DILocation(line: 628, column: 25, scope: !4885)
!4889 = !DILocation(line: 628, column: 31, scope: !4885)
!4890 = !DILocation(line: 628, column: 6, scope: !4875)
!4891 = !DILocation(line: 630, column: 5, scope: !4892)
!4892 = distinct !DILexicalBlock(scope: !4885, file: !3, line: 628, column: 38)
!4893 = !DILocation(line: 630, column: 9, scope: !4892)
!4894 = !DILocation(line: 630, column: 15, scope: !4892)
!4895 = !DILocation(line: 630, column: 24, scope: !4892)
!4896 = !DILocation(line: 631, column: 5, scope: !4892)
!4897 = !DILocation(line: 631, column: 9, scope: !4892)
!4898 = !DILocation(line: 629, column: 18, scope: !4892)
!4899 = !DILocation(line: 629, column: 4, scope: !4892)
!4900 = !DILocation(line: 629, column: 16, scope: !4892)
!4901 = !DILocation(line: 632, column: 3, scope: !4892)
!4902 = !DILocation(line: 634, column: 3, scope: !4885)
!4903 = !DILocation(line: 635, column: 1, scope: !4875)
!4904 = distinct !DISubprogram(name: "thermal_get_trend", scope: !3, file: !3, line: 637, type: !2681, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!4905 = !DILocalVariable(name: "thermal", arg: 1, scope: !4904, file: !3, line: 637, type: !2576)
!4906 = !DILocation(line: 637, column: 58, scope: !4904)
!4907 = !DILocalVariable(name: "trip", arg: 2, scope: !4904, file: !3, line: 638, type: !182)
!4908 = !DILocation(line: 638, column: 9, scope: !4904)
!4909 = !DILocalVariable(name: "trend", arg: 3, scope: !4904, file: !3, line: 638, type: !2683)
!4910 = !DILocation(line: 638, column: 35, scope: !4904)
!4911 = !DILocalVariable(name: "tz", scope: !4904, file: !3, line: 640, type: !173)
!4912 = !DILocation(line: 640, column: 23, scope: !4904)
!4913 = !DILocation(line: 640, column: 28, scope: !4904)
!4914 = !DILocation(line: 640, column: 37, scope: !4904)
!4915 = !DILocalVariable(name: "type", scope: !4904, file: !3, line: 641, type: !69)
!4916 = !DILocation(line: 641, column: 25, scope: !4904)
!4917 = !DILocalVariable(name: "i", scope: !4904, file: !3, line: 642, type: !182)
!4918 = !DILocation(line: 642, column: 6, scope: !4904)
!4919 = !DILocation(line: 644, column: 28, scope: !4920)
!4920 = distinct !DILexicalBlock(scope: !4904, file: !3, line: 644, column: 6)
!4921 = !DILocation(line: 644, column: 37, scope: !4920)
!4922 = !DILocation(line: 644, column: 6, scope: !4920)
!4923 = !DILocation(line: 644, column: 6, scope: !4904)
!4924 = !DILocation(line: 645, column: 3, scope: !4920)
!4925 = !DILocation(line: 647, column: 6, scope: !4926)
!4926 = distinct !DILexicalBlock(scope: !4904, file: !3, line: 647, column: 6)
!4927 = !DILocation(line: 647, column: 11, scope: !4926)
!4928 = !DILocation(line: 647, column: 6, scope: !4904)
!4929 = !DILocalVariable(name: "trip_temp", scope: !4930, file: !3, line: 648, type: !182)
!4930 = distinct !DILexicalBlock(scope: !4926, file: !3, line: 647, column: 35)
!4931 = !DILocation(line: 648, column: 7, scope: !4930)
!4932 = !DILocalVariable(name: "temp", scope: !4930, file: !3, line: 649, type: !182)
!4933 = !DILocation(line: 649, column: 7, scope: !4930)
!4934 = !DILocation(line: 650, column: 6, scope: !4930)
!4935 = !DILocation(line: 650, column: 10, scope: !4930)
!4936 = !DILocation(line: 650, column: 23, scope: !4930)
!4937 = !DILocation(line: 650, column: 27, scope: !4930)
!4938 = !DILocation(line: 649, column: 14, scope: !4930)
!4939 = !DILocation(line: 651, column: 29, scope: !4940)
!4940 = distinct !DILexicalBlock(scope: !4930, file: !3, line: 651, column: 7)
!4941 = !DILocation(line: 651, column: 38, scope: !4940)
!4942 = !DILocation(line: 651, column: 7, scope: !4940)
!4943 = !DILocation(line: 651, column: 7, scope: !4930)
!4944 = !DILocation(line: 652, column: 4, scope: !4940)
!4945 = !DILocation(line: 654, column: 7, scope: !4946)
!4946 = distinct !DILexicalBlock(scope: !4930, file: !3, line: 654, column: 7)
!4947 = !DILocation(line: 654, column: 14, scope: !4946)
!4948 = !DILocation(line: 654, column: 12, scope: !4946)
!4949 = !DILocation(line: 654, column: 7, scope: !4930)
!4950 = !DILocation(line: 655, column: 5, scope: !4951)
!4951 = distinct !DILexicalBlock(scope: !4946, file: !3, line: 654, column: 25)
!4952 = !DILocation(line: 655, column: 11, scope: !4951)
!4953 = !DILocation(line: 656, column: 4, scope: !4951)
!4954 = !DILocation(line: 659, column: 4, scope: !4955)
!4955 = distinct !DILexicalBlock(scope: !4946, file: !3, line: 657, column: 10)
!4956 = !DILocation(line: 667, column: 7, scope: !4904)
!4957 = !DILocation(line: 667, column: 11, scope: !4904)
!4958 = !DILocation(line: 667, column: 17, scope: !4904)
!4959 = !DILocation(line: 667, column: 25, scope: !4904)
!4960 = !DILocation(line: 667, column: 32, scope: !4904)
!4961 = !DILocation(line: 667, column: 36, scope: !4904)
!4962 = !DILocation(line: 667, column: 50, scope: !4904)
!4963 = !DILocation(line: 667, column: 54, scope: !4904)
!4964 = !DILocation(line: 667, column: 48, scope: !4904)
!4965 = !DILocation(line: 667, column: 29, scope: !4904)
!4966 = !DILocation(line: 668, column: 6, scope: !4904)
!4967 = !DILocation(line: 668, column: 10, scope: !4904)
!4968 = !DILocation(line: 668, column: 16, scope: !4904)
!4969 = !DILocation(line: 668, column: 24, scope: !4904)
!4970 = !DILocation(line: 669, column: 6, scope: !4904)
!4971 = !DILocation(line: 669, column: 10, scope: !4904)
!4972 = !DILocation(line: 669, column: 24, scope: !4904)
!4973 = !DILocation(line: 669, column: 28, scope: !4904)
!4974 = !DILocation(line: 669, column: 34, scope: !4904)
!4975 = !DILocation(line: 669, column: 42, scope: !4904)
!4976 = !DILocation(line: 669, column: 22, scope: !4904)
!4977 = !DILocation(line: 669, column: 3, scope: !4904)
!4978 = !DILocation(line: 668, column: 3, scope: !4904)
!4979 = !DILocation(line: 667, column: 6, scope: !4904)
!4980 = !DILocation(line: 667, column: 4, scope: !4904)
!4981 = !DILocation(line: 671, column: 6, scope: !4982)
!4982 = distinct !DILexicalBlock(scope: !4904, file: !3, line: 671, column: 6)
!4983 = !DILocation(line: 671, column: 8, scope: !4982)
!4984 = !DILocation(line: 671, column: 6, scope: !4904)
!4985 = !DILocation(line: 672, column: 4, scope: !4982)
!4986 = !DILocation(line: 672, column: 10, scope: !4982)
!4987 = !DILocation(line: 672, column: 3, scope: !4982)
!4988 = !DILocation(line: 673, column: 11, scope: !4989)
!4989 = distinct !DILexicalBlock(scope: !4982, file: !3, line: 673, column: 11)
!4990 = !DILocation(line: 673, column: 13, scope: !4989)
!4991 = !DILocation(line: 673, column: 11, scope: !4982)
!4992 = !DILocation(line: 674, column: 4, scope: !4989)
!4993 = !DILocation(line: 674, column: 10, scope: !4989)
!4994 = !DILocation(line: 674, column: 3, scope: !4989)
!4995 = !DILocation(line: 676, column: 4, scope: !4989)
!4996 = !DILocation(line: 676, column: 10, scope: !4989)
!4997 = !DILocation(line: 677, column: 2, scope: !4904)
!4998 = !DILocation(line: 678, column: 1, scope: !4904)
!4999 = distinct !DISubprogram(name: "thermal_notify", scope: !3, file: !3, line: 681, type: !2686, scopeLine: 683, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5000 = !DILocalVariable(name: "thermal", arg: 1, scope: !4999, file: !3, line: 681, type: !2576)
!5001 = !DILocation(line: 681, column: 55, scope: !4999)
!5002 = !DILocalVariable(name: "trip", arg: 2, scope: !4999, file: !3, line: 681, type: !182)
!5003 = !DILocation(line: 681, column: 68, scope: !4999)
!5004 = !DILocalVariable(name: "trip_type", arg: 3, scope: !4999, file: !3, line: 682, type: !69)
!5005 = !DILocation(line: 682, column: 30, scope: !4999)
!5006 = !DILocalVariable(name: "type", scope: !4999, file: !3, line: 684, type: !684)
!5007 = !DILocation(line: 684, column: 5, scope: !4999)
!5008 = !DILocalVariable(name: "tz", scope: !4999, file: !3, line: 685, type: !173)
!5009 = !DILocation(line: 685, column: 23, scope: !4999)
!5010 = !DILocation(line: 685, column: 28, scope: !4999)
!5011 = !DILocation(line: 685, column: 37, scope: !4999)
!5012 = !DILocation(line: 687, column: 6, scope: !5013)
!5013 = distinct !DILexicalBlock(scope: !4999, file: !3, line: 687, column: 6)
!5014 = !DILocation(line: 687, column: 16, scope: !5013)
!5015 = !DILocation(line: 687, column: 6, scope: !4999)
!5016 = !DILocation(line: 688, column: 8, scope: !5013)
!5017 = !DILocation(line: 688, column: 3, scope: !5013)
!5018 = !DILocation(line: 689, column: 11, scope: !5019)
!5019 = distinct !DILexicalBlock(scope: !5013, file: !3, line: 689, column: 11)
!5020 = !DILocation(line: 689, column: 21, scope: !5019)
!5021 = !DILocation(line: 689, column: 11, scope: !5013)
!5022 = !DILocation(line: 690, column: 8, scope: !5019)
!5023 = !DILocation(line: 690, column: 3, scope: !5019)
!5024 = !DILocation(line: 692, column: 3, scope: !5019)
!5025 = !DILocation(line: 694, column: 34, scope: !4999)
!5026 = !DILocation(line: 694, column: 38, scope: !4999)
!5027 = !DILocation(line: 694, column: 46, scope: !4999)
!5028 = !DILocation(line: 694, column: 50, scope: !4999)
!5029 = !DILocation(line: 695, column: 16, scope: !4999)
!5030 = !DILocation(line: 695, column: 20, scope: !4999)
!5031 = !DILocation(line: 695, column: 28, scope: !4999)
!5032 = !DILocation(line: 695, column: 6, scope: !4999)
!5033 = !DILocation(line: 695, column: 34, scope: !4999)
!5034 = !DILocation(line: 694, column: 2, scope: !4999)
!5035 = !DILocation(line: 697, column: 6, scope: !5036)
!5036 = distinct !DILexicalBlock(scope: !4999, file: !3, line: 697, column: 6)
!5037 = !DILocation(line: 697, column: 16, scope: !5036)
!5038 = !DILocation(line: 697, column: 41, scope: !5036)
!5039 = !DILocation(line: 697, column: 44, scope: !5036)
!5040 = !DILocation(line: 697, column: 6, scope: !4999)
!5041 = !DILocation(line: 698, column: 3, scope: !5036)
!5042 = !DILocation(line: 700, column: 2, scope: !4999)
!5043 = !DILocation(line: 701, column: 1, scope: !4999)
!5044 = distinct !DISubprogram(name: "acpi_thermal_cooling_device_cb", scope: !3, file: !3, line: 703, type: !5045, scopeLine: 706, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5045 = !DISubroutineType(types: !5046)
!5046 = !{!182, !2576, !2610, !208}
!5047 = !DILocalVariable(name: "thermal", arg: 1, scope: !5044, file: !3, line: 703, type: !2576)
!5048 = !DILocation(line: 703, column: 71, scope: !5044)
!5049 = !DILocalVariable(name: "cdev", arg: 2, scope: !5044, file: !3, line: 704, type: !2610)
!5050 = !DILocation(line: 704, column: 37, scope: !5044)
!5051 = !DILocalVariable(name: "bind", arg: 3, scope: !5044, file: !3, line: 705, type: !208)
!5052 = !DILocation(line: 705, column: 11, scope: !5044)
!5053 = !DILocalVariable(name: "device", scope: !5044, file: !3, line: 707, type: !177)
!5054 = !DILocation(line: 707, column: 22, scope: !5044)
!5055 = !DILocation(line: 707, column: 31, scope: !5044)
!5056 = !DILocation(line: 707, column: 37, scope: !5044)
!5057 = !DILocalVariable(name: "tz", scope: !5044, file: !3, line: 708, type: !173)
!5058 = !DILocation(line: 708, column: 23, scope: !5044)
!5059 = !DILocation(line: 708, column: 28, scope: !5044)
!5060 = !DILocation(line: 708, column: 37, scope: !5044)
!5061 = !DILocalVariable(name: "dev", scope: !5044, file: !3, line: 709, type: !177)
!5062 = !DILocation(line: 709, column: 22, scope: !5044)
!5063 = !DILocalVariable(name: "status", scope: !5044, file: !3, line: 710, type: !160)
!5064 = !DILocation(line: 710, column: 14, scope: !5044)
!5065 = !DILocalVariable(name: "handle", scope: !5044, file: !3, line: 711, type: !184)
!5066 = !DILocation(line: 711, column: 14, scope: !5044)
!5067 = !DILocalVariable(name: "i", scope: !5044, file: !3, line: 712, type: !182)
!5068 = !DILocation(line: 712, column: 6, scope: !5044)
!5069 = !DILocalVariable(name: "j", scope: !5044, file: !3, line: 713, type: !182)
!5070 = !DILocation(line: 713, column: 6, scope: !5044)
!5071 = !DILocalVariable(name: "trip", scope: !5044, file: !3, line: 714, type: !182)
!5072 = !DILocation(line: 714, column: 6, scope: !5044)
!5073 = !DILocalVariable(name: "result", scope: !5044, file: !3, line: 715, type: !182)
!5074 = !DILocation(line: 715, column: 6, scope: !5044)
!5075 = !DILocation(line: 717, column: 6, scope: !5076)
!5076 = distinct !DILexicalBlock(scope: !5044, file: !3, line: 717, column: 6)
!5077 = !DILocation(line: 717, column: 10, scope: !5076)
!5078 = !DILocation(line: 717, column: 16, scope: !5076)
!5079 = !DILocation(line: 717, column: 25, scope: !5076)
!5080 = !DILocation(line: 717, column: 31, scope: !5076)
!5081 = !DILocation(line: 717, column: 6, scope: !5044)
!5082 = !DILocation(line: 718, column: 7, scope: !5076)
!5083 = !DILocation(line: 718, column: 3, scope: !5076)
!5084 = !DILocation(line: 720, column: 6, scope: !5085)
!5085 = distinct !DILexicalBlock(scope: !5044, file: !3, line: 720, column: 6)
!5086 = !DILocation(line: 720, column: 10, scope: !5085)
!5087 = !DILocation(line: 720, column: 16, scope: !5085)
!5088 = !DILocation(line: 720, column: 20, scope: !5085)
!5089 = !DILocation(line: 720, column: 26, scope: !5085)
!5090 = !DILocation(line: 720, column: 6, scope: !5044)
!5091 = !DILocation(line: 721, column: 7, scope: !5085)
!5092 = !DILocation(line: 721, column: 3, scope: !5085)
!5093 = !DILocation(line: 723, column: 6, scope: !5094)
!5094 = distinct !DILexicalBlock(scope: !5044, file: !3, line: 723, column: 6)
!5095 = !DILocation(line: 723, column: 10, scope: !5094)
!5096 = !DILocation(line: 723, column: 16, scope: !5094)
!5097 = !DILocation(line: 723, column: 24, scope: !5094)
!5098 = !DILocation(line: 723, column: 30, scope: !5094)
!5099 = !DILocation(line: 723, column: 6, scope: !5044)
!5100 = !DILocation(line: 724, column: 7, scope: !5101)
!5101 = distinct !DILexicalBlock(scope: !5094, file: !3, line: 723, column: 37)
!5102 = !DILocation(line: 725, column: 10, scope: !5103)
!5103 = distinct !DILexicalBlock(scope: !5101, file: !3, line: 725, column: 3)
!5104 = !DILocation(line: 725, column: 8, scope: !5103)
!5105 = !DILocation(line: 725, column: 15, scope: !5106)
!5106 = distinct !DILexicalBlock(scope: !5103, file: !3, line: 725, column: 3)
!5107 = !DILocation(line: 725, column: 19, scope: !5106)
!5108 = !DILocation(line: 725, column: 23, scope: !5106)
!5109 = !DILocation(line: 725, column: 29, scope: !5106)
!5110 = !DILocation(line: 725, column: 37, scope: !5106)
!5111 = !DILocation(line: 725, column: 45, scope: !5106)
!5112 = !DILocation(line: 725, column: 17, scope: !5106)
!5113 = !DILocation(line: 725, column: 3, scope: !5103)
!5114 = !DILocation(line: 727, column: 13, scope: !5115)
!5115 = distinct !DILexicalBlock(scope: !5106, file: !3, line: 726, column: 12)
!5116 = !DILocation(line: 727, column: 17, scope: !5115)
!5117 = !DILocation(line: 727, column: 23, scope: !5115)
!5118 = !DILocation(line: 727, column: 31, scope: !5115)
!5119 = !DILocation(line: 727, column: 39, scope: !5115)
!5120 = !DILocation(line: 727, column: 47, scope: !5115)
!5121 = !DILocation(line: 727, column: 11, scope: !5115)
!5122 = !DILocation(line: 728, column: 33, scope: !5115)
!5123 = !DILocation(line: 728, column: 13, scope: !5115)
!5124 = !DILocation(line: 728, column: 11, scope: !5115)
!5125 = !DILocation(line: 729, column: 8, scope: !5126)
!5126 = distinct !DILexicalBlock(scope: !5115, file: !3, line: 729, column: 8)
!5127 = !DILocation(line: 729, column: 29, scope: !5126)
!5128 = !DILocation(line: 729, column: 32, scope: !5126)
!5129 = !DILocation(line: 729, column: 39, scope: !5126)
!5130 = !DILocation(line: 729, column: 36, scope: !5126)
!5131 = !DILocation(line: 729, column: 8, scope: !5115)
!5132 = !DILocation(line: 730, column: 5, scope: !5126)
!5133 = !DILocation(line: 731, column: 8, scope: !5134)
!5134 = distinct !DILexicalBlock(scope: !5115, file: !3, line: 731, column: 8)
!5135 = !DILocation(line: 731, column: 8, scope: !5115)
!5136 = !DILocation(line: 734, column: 7, scope: !5134)
!5137 = !DILocation(line: 734, column: 16, scope: !5134)
!5138 = !DILocation(line: 734, column: 22, scope: !5134)
!5139 = !DILocation(line: 733, column: 6, scope: !5134)
!5140 = !DILocation(line: 732, column: 12, scope: !5134)
!5141 = !DILocation(line: 732, column: 5, scope: !5134)
!5142 = !DILocation(line: 740, column: 7, scope: !5134)
!5143 = !DILocation(line: 740, column: 16, scope: !5134)
!5144 = !DILocation(line: 740, column: 22, scope: !5134)
!5145 = !DILocation(line: 739, column: 6, scope: !5134)
!5146 = !DILocation(line: 738, column: 12, scope: !5134)
!5147 = !DILocation(line: 741, column: 8, scope: !5148)
!5148 = distinct !DILexicalBlock(scope: !5115, file: !3, line: 741, column: 8)
!5149 = !DILocation(line: 741, column: 8, scope: !5115)
!5150 = !DILocation(line: 742, column: 5, scope: !5148)
!5151 = !DILocation(line: 743, column: 3, scope: !5115)
!5152 = !DILocation(line: 726, column: 8, scope: !5106)
!5153 = !DILocation(line: 725, column: 3, scope: !5106)
!5154 = distinct !{!5154, !5113, !5155}
!5155 = !DILocation(line: 743, column: 3, scope: !5103)
!5156 = !DILocation(line: 744, column: 2, scope: !5101)
!5157 = !DILocation(line: 746, column: 9, scope: !5158)
!5158 = distinct !DILexicalBlock(scope: !5044, file: !3, line: 746, column: 2)
!5159 = !DILocation(line: 746, column: 7, scope: !5158)
!5160 = !DILocation(line: 746, column: 14, scope: !5161)
!5161 = distinct !DILexicalBlock(scope: !5158, file: !3, line: 746, column: 2)
!5162 = !DILocation(line: 746, column: 16, scope: !5161)
!5163 = !DILocation(line: 746, column: 2, scope: !5158)
!5164 = !DILocation(line: 747, column: 8, scope: !5165)
!5165 = distinct !DILexicalBlock(scope: !5166, file: !3, line: 747, column: 7)
!5166 = distinct !DILexicalBlock(scope: !5161, file: !3, line: 746, column: 48)
!5167 = !DILocation(line: 747, column: 12, scope: !5165)
!5168 = !DILocation(line: 747, column: 18, scope: !5165)
!5169 = !DILocation(line: 747, column: 25, scope: !5165)
!5170 = !DILocation(line: 747, column: 28, scope: !5165)
!5171 = !DILocation(line: 747, column: 34, scope: !5165)
!5172 = !DILocation(line: 747, column: 7, scope: !5166)
!5173 = !DILocation(line: 748, column: 4, scope: !5165)
!5174 = !DILocation(line: 749, column: 7, scope: !5166)
!5175 = !DILocation(line: 750, column: 10, scope: !5176)
!5176 = distinct !DILexicalBlock(scope: !5166, file: !3, line: 750, column: 3)
!5177 = !DILocation(line: 750, column: 8, scope: !5176)
!5178 = !DILocation(line: 751, column: 7, scope: !5179)
!5179 = distinct !DILexicalBlock(scope: !5176, file: !3, line: 750, column: 3)
!5180 = !DILocation(line: 751, column: 11, scope: !5179)
!5181 = !DILocation(line: 751, column: 15, scope: !5179)
!5182 = !DILocation(line: 751, column: 21, scope: !5179)
!5183 = !DILocation(line: 751, column: 28, scope: !5179)
!5184 = !DILocation(line: 751, column: 31, scope: !5179)
!5185 = !DILocation(line: 751, column: 39, scope: !5179)
!5186 = !DILocation(line: 751, column: 9, scope: !5179)
!5187 = !DILocation(line: 750, column: 3, scope: !5176)
!5188 = !DILocation(line: 753, column: 13, scope: !5189)
!5189 = distinct !DILexicalBlock(scope: !5179, file: !3, line: 752, column: 12)
!5190 = !DILocation(line: 753, column: 17, scope: !5189)
!5191 = !DILocation(line: 753, column: 23, scope: !5189)
!5192 = !DILocation(line: 753, column: 30, scope: !5189)
!5193 = !DILocation(line: 753, column: 33, scope: !5189)
!5194 = !DILocation(line: 753, column: 41, scope: !5189)
!5195 = !DILocation(line: 753, column: 49, scope: !5189)
!5196 = !DILocation(line: 753, column: 11, scope: !5189)
!5197 = !DILocation(line: 754, column: 33, scope: !5189)
!5198 = !DILocation(line: 754, column: 13, scope: !5189)
!5199 = !DILocation(line: 754, column: 11, scope: !5189)
!5200 = !DILocation(line: 755, column: 8, scope: !5201)
!5201 = distinct !DILexicalBlock(scope: !5189, file: !3, line: 755, column: 8)
!5202 = !DILocation(line: 755, column: 29, scope: !5201)
!5203 = !DILocation(line: 755, column: 32, scope: !5201)
!5204 = !DILocation(line: 755, column: 39, scope: !5201)
!5205 = !DILocation(line: 755, column: 36, scope: !5201)
!5206 = !DILocation(line: 755, column: 8, scope: !5189)
!5207 = !DILocation(line: 756, column: 5, scope: !5201)
!5208 = !DILocation(line: 757, column: 8, scope: !5209)
!5209 = distinct !DILexicalBlock(scope: !5189, file: !3, line: 757, column: 8)
!5210 = !DILocation(line: 757, column: 8, scope: !5189)
!5211 = !DILocation(line: 759, column: 7, scope: !5209)
!5212 = !DILocation(line: 759, column: 16, scope: !5209)
!5213 = !DILocation(line: 759, column: 22, scope: !5209)
!5214 = !DILocation(line: 758, column: 14, scope: !5209)
!5215 = !DILocation(line: 758, column: 12, scope: !5209)
!5216 = !DILocation(line: 758, column: 5, scope: !5209)
!5217 = !DILocation(line: 764, column: 7, scope: !5209)
!5218 = !DILocation(line: 764, column: 16, scope: !5209)
!5219 = !DILocation(line: 764, column: 22, scope: !5209)
!5220 = !DILocation(line: 763, column: 14, scope: !5209)
!5221 = !DILocation(line: 763, column: 12, scope: !5209)
!5222 = !DILocation(line: 765, column: 8, scope: !5223)
!5223 = distinct !DILexicalBlock(scope: !5189, file: !3, line: 765, column: 8)
!5224 = !DILocation(line: 765, column: 8, scope: !5189)
!5225 = !DILocation(line: 766, column: 5, scope: !5223)
!5226 = !DILocation(line: 767, column: 3, scope: !5189)
!5227 = !DILocation(line: 752, column: 8, scope: !5179)
!5228 = !DILocation(line: 750, column: 3, scope: !5179)
!5229 = distinct !{!5229, !5187, !5230}
!5230 = !DILocation(line: 767, column: 3, scope: !5176)
!5231 = !DILocation(line: 768, column: 2, scope: !5166)
!5232 = !DILocation(line: 746, column: 44, scope: !5161)
!5233 = !DILocation(line: 746, column: 2, scope: !5161)
!5234 = distinct !{!5234, !5163, !5235}
!5235 = !DILocation(line: 768, column: 2, scope: !5158)
!5236 = !DILocation(line: 770, column: 9, scope: !5237)
!5237 = distinct !DILexicalBlock(scope: !5044, file: !3, line: 770, column: 2)
!5238 = !DILocation(line: 770, column: 7, scope: !5237)
!5239 = !DILocation(line: 770, column: 14, scope: !5240)
!5240 = distinct !DILexicalBlock(scope: !5237, file: !3, line: 770, column: 2)
!5241 = !DILocation(line: 770, column: 18, scope: !5240)
!5242 = !DILocation(line: 770, column: 22, scope: !5240)
!5243 = !DILocation(line: 770, column: 30, scope: !5240)
!5244 = !DILocation(line: 770, column: 16, scope: !5240)
!5245 = !DILocation(line: 770, column: 2, scope: !5237)
!5246 = !DILocation(line: 771, column: 12, scope: !5247)
!5247 = distinct !DILexicalBlock(scope: !5240, file: !3, line: 770, column: 42)
!5248 = !DILocation(line: 771, column: 16, scope: !5247)
!5249 = !DILocation(line: 771, column: 24, scope: !5247)
!5250 = !DILocation(line: 771, column: 32, scope: !5247)
!5251 = !DILocation(line: 771, column: 10, scope: !5247)
!5252 = !DILocation(line: 772, column: 32, scope: !5247)
!5253 = !DILocation(line: 772, column: 12, scope: !5247)
!5254 = !DILocation(line: 772, column: 10, scope: !5247)
!5255 = !DILocation(line: 773, column: 7, scope: !5256)
!5256 = distinct !DILexicalBlock(scope: !5247, file: !3, line: 773, column: 7)
!5257 = !DILocation(line: 773, column: 28, scope: !5256)
!5258 = !DILocation(line: 773, column: 32, scope: !5256)
!5259 = !DILocation(line: 773, column: 39, scope: !5256)
!5260 = !DILocation(line: 773, column: 36, scope: !5256)
!5261 = !DILocation(line: 773, column: 7, scope: !5247)
!5262 = !DILocation(line: 774, column: 8, scope: !5263)
!5263 = distinct !DILexicalBlock(scope: !5264, file: !3, line: 774, column: 8)
!5264 = distinct !DILexicalBlock(scope: !5256, file: !3, line: 773, column: 48)
!5265 = !DILocation(line: 774, column: 8, scope: !5264)
!5266 = !DILocation(line: 776, column: 8, scope: !5263)
!5267 = !DILocation(line: 777, column: 8, scope: !5263)
!5268 = !DILocation(line: 775, column: 14, scope: !5263)
!5269 = !DILocation(line: 775, column: 12, scope: !5263)
!5270 = !DILocation(line: 775, column: 5, scope: !5263)
!5271 = !DILocation(line: 782, column: 8, scope: !5263)
!5272 = !DILocation(line: 783, column: 8, scope: !5263)
!5273 = !DILocation(line: 781, column: 14, scope: !5263)
!5274 = !DILocation(line: 781, column: 12, scope: !5263)
!5275 = !DILocation(line: 784, column: 8, scope: !5276)
!5276 = distinct !DILexicalBlock(scope: !5264, file: !3, line: 784, column: 8)
!5277 = !DILocation(line: 784, column: 8, scope: !5264)
!5278 = !DILocation(line: 785, column: 5, scope: !5276)
!5279 = !DILocation(line: 786, column: 3, scope: !5264)
!5280 = !DILocation(line: 787, column: 2, scope: !5247)
!5281 = !DILocation(line: 770, column: 38, scope: !5240)
!5282 = !DILocation(line: 770, column: 2, scope: !5240)
!5283 = distinct !{!5283, !5245, !5284}
!5284 = !DILocation(line: 787, column: 2, scope: !5237)
!5285 = !DILabel(scope: !5044, name: "failed", file: !3, line: 789)
!5286 = !DILocation(line: 789, column: 1, scope: !5044)
!5287 = !DILocation(line: 790, column: 9, scope: !5044)
!5288 = !DILocation(line: 790, column: 2, scope: !5044)
!5289 = distinct !DISubprogram(name: "deci_kelvin_to_millicelsius_with_offset", scope: !3682, file: !3682, line: 55, type: !5290, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5290 = !DISubroutineType(types: !5291)
!5291 = !{!96, !96, !96}
!5292 = !DILocalVariable(name: "t", arg: 1, scope: !5289, file: !3682, line: 55, type: !96)
!5293 = !DILocation(line: 55, column: 65, scope: !5289)
!5294 = !DILocalVariable(name: "offset", arg: 2, scope: !5289, file: !3682, line: 55, type: !96)
!5295 = !DILocation(line: 55, column: 73, scope: !5289)
!5296 = !DILocation(line: 57, column: 9, scope: !5289)
!5297 = !DILocation(line: 57, column: 11, scope: !5289)
!5298 = !DILocation(line: 57, column: 42, scope: !5289)
!5299 = !DILocation(line: 57, column: 40, scope: !5289)
!5300 = !DILocation(line: 57, column: 2, scope: !5289)
!5301 = distinct !DISubprogram(name: "dev_name", scope: !30, file: !30, line: 609, type: !5302, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5302 = !DISubroutineType(types: !5303)
!5303 = !{!227, !218}
!5304 = !DILocalVariable(name: "dev", arg: 1, scope: !5301, file: !30, line: 609, type: !218)
!5305 = !DILocation(line: 609, column: 57, scope: !5301)
!5306 = !DILocation(line: 612, column: 6, scope: !5307)
!5307 = distinct !DILexicalBlock(scope: !5301, file: !30, line: 612, column: 6)
!5308 = !DILocation(line: 612, column: 11, scope: !5307)
!5309 = !DILocation(line: 612, column: 6, scope: !5301)
!5310 = !DILocation(line: 613, column: 10, scope: !5307)
!5311 = !DILocation(line: 613, column: 15, scope: !5307)
!5312 = !DILocation(line: 613, column: 3, scope: !5307)
!5313 = !DILocation(line: 615, column: 23, scope: !5301)
!5314 = !DILocation(line: 615, column: 28, scope: !5301)
!5315 = !DILocation(line: 615, column: 9, scope: !5301)
!5316 = !DILocation(line: 615, column: 2, scope: !5301)
!5317 = !DILocation(line: 616, column: 1, scope: !5301)
!5318 = distinct !DISubprogram(name: "kobject_name", scope: !224, file: !224, line: 88, type: !5319, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5319 = !DISubroutineType(types: !5320)
!5320 = !{!227, !5321}
!5321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5322, size: 64)
!5322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !223)
!5323 = !DILocalVariable(name: "kobj", arg: 1, scope: !5318, file: !224, line: 88, type: !5321)
!5324 = !DILocation(line: 88, column: 62, scope: !5318)
!5325 = !DILocation(line: 90, column: 9, scope: !5318)
!5326 = !DILocation(line: 90, column: 15, scope: !5318)
!5327 = !DILocation(line: 90, column: 2, scope: !5318)
!5328 = distinct !DISubprogram(name: "acpi_thermal_check", scope: !3, file: !3, line: 498, type: !1527, scopeLine: 499, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5329 = !DILocalVariable(name: "data", arg: 1, scope: !5328, file: !3, line: 498, type: !159)
!5330 = !DILocation(line: 498, column: 38, scope: !5328)
!5331 = !DILocalVariable(name: "tz", scope: !5328, file: !3, line: 500, type: !173)
!5332 = !DILocation(line: 500, column: 23, scope: !5328)
!5333 = !DILocation(line: 500, column: 28, scope: !5328)
!5334 = !DILocation(line: 502, column: 29, scope: !5328)
!5335 = !DILocation(line: 502, column: 33, scope: !5328)
!5336 = !DILocation(line: 502, column: 2, scope: !5328)
!5337 = !DILocation(line: 504, column: 1, scope: !5328)
!5338 = distinct !DISubprogram(name: "milli_kelvin_to_millicelsius", scope: !3682, file: !3682, line: 9, type: !3683, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5339 = !DILocalVariable(name: "t", arg: 1, scope: !5338, file: !3682, line: 9, type: !96)
!5340 = !DILocation(line: 9, column: 54, scope: !5338)
!5341 = !DILocation(line: 11, column: 9, scope: !5338)
!5342 = !DILocation(line: 11, column: 11, scope: !5338)
!5343 = !DILocation(line: 11, column: 2, scope: !5338)
!5344 = distinct !DISubprogram(name: "acpi_driver_data", scope: !179, file: !179, line: 443, type: !5345, scopeLine: 444, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5345 = !DISubroutineType(types: !5346)
!5346 = !{!159, !177}
!5347 = !DILocalVariable(name: "d", arg: 1, scope: !5344, file: !179, line: 443, type: !177)
!5348 = !DILocation(line: 443, column: 58, scope: !5344)
!5349 = !DILocation(line: 445, column: 9, scope: !5344)
!5350 = !DILocation(line: 445, column: 12, scope: !5344)
!5351 = !DILocation(line: 445, column: 2, scope: !5344)
!5352 = distinct !DISubprogram(name: "acpi_thermal_unregister_thermal_zone", scope: !3, file: !3, line: 889, type: !3444, scopeLine: 890, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5353 = !DILocalVariable(name: "tz", arg: 1, scope: !5352, file: !3, line: 889, type: !173)
!5354 = !DILocation(line: 889, column: 71, scope: !5352)
!5355 = !DILocation(line: 891, column: 21, scope: !5352)
!5356 = !DILocation(line: 891, column: 25, scope: !5352)
!5357 = !DILocation(line: 891, column: 33, scope: !5352)
!5358 = !DILocation(line: 891, column: 37, scope: !5352)
!5359 = !DILocation(line: 891, column: 2, scope: !5352)
!5360 = !DILocation(line: 892, column: 21, scope: !5352)
!5361 = !DILocation(line: 892, column: 25, scope: !5352)
!5362 = !DILocation(line: 892, column: 39, scope: !5352)
!5363 = !DILocation(line: 892, column: 46, scope: !5352)
!5364 = !DILocation(line: 892, column: 2, scope: !5352)
!5365 = !DILocation(line: 893, column: 33, scope: !5352)
!5366 = !DILocation(line: 893, column: 37, scope: !5352)
!5367 = !DILocation(line: 893, column: 2, scope: !5352)
!5368 = !DILocation(line: 894, column: 2, scope: !5352)
!5369 = !DILocation(line: 894, column: 6, scope: !5352)
!5370 = !DILocation(line: 894, column: 19, scope: !5352)
!5371 = !DILocation(line: 895, column: 31, scope: !5352)
!5372 = !DILocation(line: 895, column: 35, scope: !5352)
!5373 = !DILocation(line: 895, column: 43, scope: !5352)
!5374 = !DILocation(line: 895, column: 2, scope: !5352)
!5375 = !DILocation(line: 896, column: 1, scope: !5352)
!5376 = distinct !DISubprogram(name: "acpi_thermal_suspend", scope: !3, file: !3, line: 1083, type: !1746, scopeLine: 1084, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5377 = !DILocalVariable(name: "dev", arg: 1, scope: !5376, file: !3, line: 1083, type: !1714)
!5378 = !DILocation(line: 1083, column: 48, scope: !5376)
!5379 = !DILocation(line: 1086, column: 18, scope: !5376)
!5380 = !DILocation(line: 1086, column: 2, scope: !5376)
!5381 = !DILocation(line: 1087, column: 2, scope: !5376)
!5382 = distinct !DISubprogram(name: "acpi_thermal_resume", scope: !3, file: !3, line: 1090, type: !1746, scopeLine: 1091, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5383 = !DILocalVariable(name: "dev", arg: 1, scope: !5382, file: !3, line: 1090, type: !1714)
!5384 = !DILocation(line: 1090, column: 47, scope: !5382)
!5385 = !DILocalVariable(name: "tz", scope: !5382, file: !3, line: 1092, type: !173)
!5386 = !DILocation(line: 1092, column: 23, scope: !5382)
!5387 = !DILocalVariable(name: "i", scope: !5382, file: !3, line: 1093, type: !182)
!5388 = !DILocation(line: 1093, column: 6, scope: !5382)
!5389 = !DILocalVariable(name: "j", scope: !5382, file: !3, line: 1093, type: !182)
!5390 = !DILocation(line: 1093, column: 9, scope: !5382)
!5391 = !DILocalVariable(name: "power_state", scope: !5382, file: !3, line: 1093, type: !182)
!5392 = !DILocation(line: 1093, column: 12, scope: !5382)
!5393 = !DILocalVariable(name: "result", scope: !5382, file: !3, line: 1093, type: !182)
!5394 = !DILocation(line: 1093, column: 25, scope: !5382)
!5395 = !DILocation(line: 1095, column: 7, scope: !5396)
!5396 = distinct !DILexicalBlock(scope: !5382, file: !3, line: 1095, column: 6)
!5397 = !DILocation(line: 1095, column: 6, scope: !5382)
!5398 = !DILocation(line: 1096, column: 3, scope: !5396)
!5399 = !DILocalVariable(name: "__mptr", scope: !5400, file: !3, line: 1098, type: !159)
!5400 = distinct !DILexicalBlock(scope: !5382, file: !3, line: 1098, column: 24)
!5401 = !DILocation(line: 1098, column: 24, scope: !5400)
!5402 = !DILocation(line: 1098, column: 24, scope: !5403)
!5403 = distinct !DILexicalBlock(scope: !5400, file: !3, line: 1098, column: 24)
!5404 = !DILocation(line: 1098, column: 7, scope: !5382)
!5405 = !DILocation(line: 1098, column: 5, scope: !5382)
!5406 = !DILocation(line: 1099, column: 7, scope: !5407)
!5407 = distinct !DILexicalBlock(scope: !5382, file: !3, line: 1099, column: 6)
!5408 = !DILocation(line: 1099, column: 6, scope: !5382)
!5409 = !DILocation(line: 1100, column: 3, scope: !5407)
!5410 = !DILocation(line: 1102, column: 9, scope: !5411)
!5411 = distinct !DILexicalBlock(scope: !5382, file: !3, line: 1102, column: 2)
!5412 = !DILocation(line: 1102, column: 7, scope: !5411)
!5413 = !DILocation(line: 1102, column: 14, scope: !5414)
!5414 = distinct !DILexicalBlock(scope: !5411, file: !3, line: 1102, column: 2)
!5415 = !DILocation(line: 1102, column: 16, scope: !5414)
!5416 = !DILocation(line: 1102, column: 2, scope: !5411)
!5417 = !DILocation(line: 1103, column: 10, scope: !5418)
!5418 = distinct !DILexicalBlock(scope: !5419, file: !3, line: 1103, column: 7)
!5419 = distinct !DILexicalBlock(scope: !5414, file: !3, line: 1102, column: 48)
!5420 = !DILocation(line: 1103, column: 14, scope: !5418)
!5421 = !DILocation(line: 1103, column: 20, scope: !5418)
!5422 = !DILocation(line: 1103, column: 27, scope: !5418)
!5423 = !DILocation(line: 1103, column: 9, scope: !5418)
!5424 = !DILocation(line: 1103, column: 7, scope: !5419)
!5425 = !DILocation(line: 1104, column: 4, scope: !5418)
!5426 = !DILocation(line: 1105, column: 8, scope: !5427)
!5427 = distinct !DILexicalBlock(scope: !5419, file: !3, line: 1105, column: 7)
!5428 = !DILocation(line: 1105, column: 12, scope: !5427)
!5429 = !DILocation(line: 1105, column: 18, scope: !5427)
!5430 = !DILocation(line: 1105, column: 25, scope: !5427)
!5431 = !DILocation(line: 1105, column: 28, scope: !5427)
!5432 = !DILocation(line: 1105, column: 34, scope: !5427)
!5433 = !DILocation(line: 1105, column: 7, scope: !5419)
!5434 = !DILocation(line: 1106, column: 4, scope: !5427)
!5435 = !DILocation(line: 1107, column: 3, scope: !5419)
!5436 = !DILocation(line: 1107, column: 7, scope: !5419)
!5437 = !DILocation(line: 1107, column: 13, scope: !5419)
!5438 = !DILocation(line: 1107, column: 20, scope: !5419)
!5439 = !DILocation(line: 1107, column: 23, scope: !5419)
!5440 = !DILocation(line: 1107, column: 29, scope: !5419)
!5441 = !DILocation(line: 1107, column: 37, scope: !5419)
!5442 = !DILocation(line: 1108, column: 10, scope: !5443)
!5443 = distinct !DILexicalBlock(scope: !5419, file: !3, line: 1108, column: 3)
!5444 = !DILocation(line: 1108, column: 8, scope: !5443)
!5445 = !DILocation(line: 1108, column: 15, scope: !5446)
!5446 = distinct !DILexicalBlock(scope: !5443, file: !3, line: 1108, column: 3)
!5447 = !DILocation(line: 1108, column: 19, scope: !5446)
!5448 = !DILocation(line: 1108, column: 23, scope: !5446)
!5449 = !DILocation(line: 1108, column: 29, scope: !5446)
!5450 = !DILocation(line: 1108, column: 36, scope: !5446)
!5451 = !DILocation(line: 1108, column: 39, scope: !5446)
!5452 = !DILocation(line: 1108, column: 47, scope: !5446)
!5453 = !DILocation(line: 1108, column: 17, scope: !5446)
!5454 = !DILocation(line: 1108, column: 3, scope: !5443)
!5455 = !DILocation(line: 1110, column: 6, scope: !5456)
!5456 = distinct !DILexicalBlock(scope: !5446, file: !3, line: 1108, column: 59)
!5457 = !DILocation(line: 1110, column: 10, scope: !5456)
!5458 = !DILocation(line: 1110, column: 16, scope: !5456)
!5459 = !DILocation(line: 1110, column: 23, scope: !5456)
!5460 = !DILocation(line: 1110, column: 26, scope: !5456)
!5461 = !DILocation(line: 1110, column: 34, scope: !5456)
!5462 = !DILocation(line: 1110, column: 42, scope: !5456)
!5463 = !DILocation(line: 1109, column: 13, scope: !5456)
!5464 = !DILocation(line: 1109, column: 11, scope: !5456)
!5465 = !DILocation(line: 1112, column: 8, scope: !5466)
!5466 = distinct !DILexicalBlock(scope: !5456, file: !3, line: 1112, column: 8)
!5467 = !DILocation(line: 1112, column: 15, scope: !5466)
!5468 = !DILocation(line: 1112, column: 19, scope: !5466)
!5469 = !DILocation(line: 1112, column: 31, scope: !5466)
!5470 = !DILocation(line: 1112, column: 8, scope: !5456)
!5471 = !DILocation(line: 1113, column: 5, scope: !5472)
!5472 = distinct !DILexicalBlock(scope: !5466, file: !3, line: 1112, column: 50)
!5473 = !DILocation(line: 1113, column: 9, scope: !5472)
!5474 = !DILocation(line: 1113, column: 15, scope: !5472)
!5475 = !DILocation(line: 1113, column: 22, scope: !5472)
!5476 = !DILocation(line: 1113, column: 25, scope: !5472)
!5477 = !DILocation(line: 1113, column: 31, scope: !5472)
!5478 = !DILocation(line: 1113, column: 39, scope: !5472)
!5479 = !DILocation(line: 1114, column: 5, scope: !5472)
!5480 = !DILocation(line: 1116, column: 3, scope: !5456)
!5481 = !DILocation(line: 1108, column: 55, scope: !5446)
!5482 = !DILocation(line: 1108, column: 3, scope: !5446)
!5483 = distinct !{!5483, !5454, !5484}
!5484 = !DILocation(line: 1116, column: 3, scope: !5443)
!5485 = !DILocation(line: 1117, column: 23, scope: !5419)
!5486 = !DILocation(line: 1117, column: 27, scope: !5419)
!5487 = !DILocation(line: 1117, column: 33, scope: !5419)
!5488 = !DILocation(line: 1117, column: 40, scope: !5419)
!5489 = !DILocation(line: 1117, column: 43, scope: !5419)
!5490 = !DILocation(line: 1117, column: 49, scope: !5419)
!5491 = !DILocation(line: 1117, column: 3, scope: !5419)
!5492 = !DILocation(line: 1117, column: 7, scope: !5419)
!5493 = !DILocation(line: 1117, column: 13, scope: !5419)
!5494 = !DILocation(line: 1117, column: 20, scope: !5419)
!5495 = !DILocation(line: 1118, column: 2, scope: !5419)
!5496 = !DILocation(line: 1102, column: 44, scope: !5414)
!5497 = !DILocation(line: 1102, column: 2, scope: !5414)
!5498 = distinct !{!5498, !5416, !5499}
!5499 = !DILocation(line: 1118, column: 2, scope: !5411)
!5500 = !DILocation(line: 1120, column: 13, scope: !5382)
!5501 = !DILocation(line: 1120, column: 37, scope: !5382)
!5502 = !DILocation(line: 1120, column: 41, scope: !5382)
!5503 = !DILocation(line: 1120, column: 2, scope: !5382)
!5504 = !DILocation(line: 1122, column: 2, scope: !5382)
!5505 = !DILocation(line: 1123, column: 1, scope: !5382)
!5506 = distinct !DISubprogram(name: "queue_work", scope: !95, file: !95, line: 504, type: !5507, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5507 = !DISubroutineType(types: !5508)
!5508 = !{!208, !2741, !1463}
!5509 = !DILocalVariable(name: "wq", arg: 1, scope: !5506, file: !95, line: 504, type: !2741)
!5510 = !DILocation(line: 504, column: 56, scope: !5506)
!5511 = !DILocalVariable(name: "work", arg: 2, scope: !5506, file: !95, line: 505, type: !1463)
!5512 = !DILocation(line: 505, column: 30, scope: !5506)
!5513 = !DILocation(line: 507, column: 41, scope: !5506)
!5514 = !DILocation(line: 507, column: 45, scope: !5506)
!5515 = !DILocation(line: 507, column: 9, scope: !5506)
!5516 = !DILocation(line: 507, column: 2, scope: !5506)
!5517 = distinct !DISubprogram(name: "thermal_act", scope: !3, file: !3, line: 1126, type: !2930, scopeLine: 1126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5518 = !DILocalVariable(name: "d", arg: 1, scope: !5517, file: !3, line: 1126, type: !2932)
!5519 = !DILocation(line: 1126, column: 52, scope: !5517)
!5520 = !DILocation(line: 1128, column: 6, scope: !5521)
!5521 = distinct !DILexicalBlock(scope: !5517, file: !3, line: 1128, column: 6)
!5522 = !DILocation(line: 1128, column: 10, scope: !5521)
!5523 = !DILocation(line: 1128, column: 6, scope: !5517)
!5524 = !DILocation(line: 1129, column: 3, scope: !5525)
!5525 = distinct !DILexicalBlock(scope: !5521, file: !3, line: 1128, column: 16)
!5526 = !DILocation(line: 1131, column: 7, scope: !5525)
!5527 = !DILocation(line: 1132, column: 2, scope: !5525)
!5528 = !DILocation(line: 1133, column: 2, scope: !5517)
!5529 = distinct !DISubprogram(name: "thermal_psv", scope: !3, file: !3, line: 1151, type: !2930, scopeLine: 1151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5530 = !DILocalVariable(name: "d", arg: 1, scope: !5529, file: !3, line: 1151, type: !2932)
!5531 = !DILocation(line: 1151, column: 52, scope: !5529)
!5532 = !DILocation(line: 1153, column: 6, scope: !5533)
!5533 = distinct !DILexicalBlock(scope: !5529, file: !3, line: 1153, column: 6)
!5534 = !DILocation(line: 1153, column: 10, scope: !5533)
!5535 = !DILocation(line: 1153, column: 6, scope: !5529)
!5536 = !DILocation(line: 1154, column: 3, scope: !5537)
!5537 = distinct !DILexicalBlock(scope: !5533, file: !3, line: 1153, column: 16)
!5538 = !DILocation(line: 1156, column: 7, scope: !5537)
!5539 = !DILocation(line: 1157, column: 2, scope: !5537)
!5540 = !DILocation(line: 1158, column: 2, scope: !5529)
!5541 = distinct !DISubprogram(name: "thermal_tzp", scope: !3, file: !3, line: 1142, type: !2930, scopeLine: 1142, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5542 = !DILocalVariable(name: "d", arg: 1, scope: !5541, file: !3, line: 1142, type: !2932)
!5543 = !DILocation(line: 1142, column: 52, scope: !5541)
!5544 = !DILocation(line: 1144, column: 6, scope: !5545)
!5545 = distinct !DILexicalBlock(scope: !5541, file: !3, line: 1144, column: 6)
!5546 = !DILocation(line: 1144, column: 10, scope: !5545)
!5547 = !DILocation(line: 1144, column: 6, scope: !5541)
!5548 = !DILocation(line: 1145, column: 3, scope: !5549)
!5549 = distinct !DILexicalBlock(scope: !5545, file: !3, line: 1144, column: 16)
!5550 = !DILocation(line: 1147, column: 7, scope: !5549)
!5551 = !DILocation(line: 1148, column: 2, scope: !5549)
!5552 = !DILocation(line: 1149, column: 2, scope: !5541)
!5553 = distinct !DISubprogram(name: "thermal_nocrt", scope: !3, file: !3, line: 1135, type: !2930, scopeLine: 1135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5554 = !DILocalVariable(name: "d", arg: 1, scope: !5553, file: !3, line: 1135, type: !2932)
!5555 = !DILocation(line: 1135, column: 54, scope: !5553)
!5556 = !DILocation(line: 1137, column: 2, scope: !5553)
!5557 = !DILocation(line: 1139, column: 8, scope: !5553)
!5558 = !DILocation(line: 1140, column: 2, scope: !5553)
