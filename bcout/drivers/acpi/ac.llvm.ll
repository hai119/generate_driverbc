; ModuleID = '../bcout/drivers/acpi/ac.llvm.bc'
source_filename = "drivers/acpi/ac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_acpi_ac_init6:\09\09\09"
module asm ".long\09acpi_ac_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

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
%struct.atomic64_t = type { i64 }
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
%struct.module = type opaque
%struct.kmem_cache = type opaque
%struct.acpi_ac_bl = type { i8*, i32 }
%struct.dmi_system_id = type { {}*, i8*, [4 x %struct.dmi_strmatch], i8* }
%struct.dmi_strmatch = type { i8, [79 x i8] }
%struct.power_supply_config = type { %struct.device_node*, %struct.fwnode_handle*, i8*, %struct.attribute_group**, i8**, i64 }
%struct.acpi_ac = type { %struct.power_supply*, %struct.power_supply_desc, %struct.acpi_device*, i64, %struct.notifier_block }
%struct.power_supply = type { %struct.power_supply_desc*, i8**, i64, i8**, i64, %struct.device_node*, i8*, %struct.device, %struct.work_struct, %struct.delayed_work, %struct.spinlock, i8, i8, i8, %struct.atomic_t, %struct.thermal_zone_device*, %struct.thermal_cooling_device* }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.workqueue_struct = type opaque
%struct.thermal_zone_device = type opaque
%struct.thermal_cooling_device = type opaque
%struct.power_supply_desc = type { i8*, i32, i32*, i64, i32*, i64, i32 (%struct.power_supply*, i32, %union.power_supply_propval*)*, i32 (%struct.power_supply*, i32, %union.power_supply_propval*)*, i32 (%struct.power_supply*, i32)*, void (%struct.power_supply*)*, void (%struct.power_supply*)*, i8, i32 }
%union.power_supply_propval = type { i8* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%struct.acpi_bus_event = type { %struct.list_head, [20 x i8], [8 x i8], i32, i32 }

@__UNIQUE_ID_author169 = internal constant [27 x i8] c"ac.author=Paul Diefenbaugh\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_description170 = internal constant [38 x i8] c"ac.description=ACPI AC Adapter Driver\00", section ".modinfo", align 1, !dbg !2640
@__UNIQUE_ID_file171 = internal constant [24 x i8] c"ac.file=drivers/acpi/ac\00", section ".modinfo", align 1, !dbg !2645
@__UNIQUE_ID_license172 = internal constant [15 x i8] c"ac.license=GPL\00", section ".modinfo", align 1, !dbg !2650
@acpi_ac_driver = internal global %struct.acpi_driver { [80 x i8] c"ac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"ac_adapter\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.acpi_device_id* getelementptr inbounds ([2 x %struct.acpi_device_id], [2 x %struct.acpi_device_id]* @ac_device_ids, i32 0, i32 0), i32 1, %struct.acpi_device_ops { i32 (%struct.acpi_device*)* @acpi_ac_add, i32 (%struct.acpi_device*)* @acpi_ac_remove, void (%struct.acpi_device*, i32)* @acpi_ac_notify }, %struct.device_driver { i8* null, %struct.bus_type* null, %struct.module* null, i8* null, i8 0, i32 0, %struct.of_device_id* null, %struct.acpi_device_id* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* @acpi_ac_pm, void (%struct.device*)* null, %struct.driver_private* null }, %struct.module* null }, align 8, !dbg !2664
@__UNIQUE_ID___addressable_acpi_ac_init175 = internal global i8* bitcast (i32 ()* @acpi_ac_init to i8*), section ".discard.addressable", align 8, !dbg !2655
@__exitcall_acpi_ac_exit = internal global void ()* @acpi_ac_exit, section ".exitcall.exit", align 8, !dbg !2657
@ac_device_ids = internal constant [2 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"ACPI0003\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], align 16, !dbg !2666
@acpi_ac_pm = internal constant %struct.dev_pm_ops { i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* @acpi_ac_resume, i32 (%struct.device*)* null, i32 (%struct.device*)* @acpi_ac_resume, i32 (%struct.device*)* null, i32 (%struct.device*)* @acpi_ac_resume, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null }, align 8, !dbg !2677
@.str = private unnamed_addr constant [11 x i8] c"AC Adapter\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"ac_adapter\00", align 1
@ac_props = internal global [1 x i32] [i32 4], align 4, !dbg !2672
@.str.2 = private unnamed_addr constant [22 x i8] c"\016ACPI: %s [%s] (%s)\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"on-line\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"off-line\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"_PSR\00", align 1
@_acpi_module_name = internal constant [3 x i8] c"ac\00", align 1, !dbg !2669
@.str.7 = private unnamed_addr constant [31 x i8] c"Error reading AC Adapter state\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"battery\00", align 1
@ac_sleep_before_get_state_ms = internal global i32 0, align 4, !dbg !2675
@acpi_disabled = external dso_local global i32, align 4
@ac_check_pmic = internal global i32 1, align 4, !dbg !2702
@acpi_ac_blacklist = internal constant [2 x %struct.acpi_ac_bl] [%struct.acpi_ac_bl { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i32 -1 }, %struct.acpi_ac_bl { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i32 3 }], align 16, !dbg !2704
@.str.9 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"\016ACPI: AC: found native %s PMIC, not loading\0A\00", align 1
@ac_dmi_table = internal constant [4 x { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* }] [{ i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } { i32 (%struct.dmi_system_id*)* @ac_do_not_check_pmic_quirk, i8* null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 7, [79 x i8] c"EF20EA\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* null }, { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } { i32 (%struct.dmi_system_id*)* @ac_do_not_check_pmic_quirk, i8* null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"LENOVO\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"80XF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 8, [79 x i8] c"Lenovo MIIX 320-10ICR\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer], i8* null }, { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } { i32 (%struct.dmi_system_id*)* @thinkpad_e530_quirk, i8* null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"LENOVO\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"32597CG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* null }, { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } zeroinitializer], section ".init.rodata", align 16, !dbg !2679
@.str.12 = private unnamed_addr constant [8 x i8] c"INT33F4\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"INT34D3\00", align 1
@llvm.used = appending global [7 x i8*] [i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__UNIQUE_ID_author169, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__UNIQUE_ID_description170, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__UNIQUE_ID_file171, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__UNIQUE_ID_license172, i32 0, i32 0), i8* bitcast (void ()* @acpi_ac_exit to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_acpi_ac_init175 to i8*), i8* bitcast (void ()** @__exitcall_acpi_ac_exit to i8*)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @acpi_ac_exit() #0 section ".exit.text" !dbg !2720 {
entry:
  call void @acpi_bus_unregister_driver(%struct.acpi_driver* @acpi_ac_driver) #9, !dbg !2721
  ret void, !dbg !2722
}

; Function Attrs: noredzone
declare dso_local void @acpi_bus_unregister_driver(%struct.acpi_driver*) #1

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ac_init() #0 section ".init.text" !dbg !2723 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %result = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2726, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.declare(metadata i32* %result, metadata !2728, metadata !DIExpression()), !dbg !2729
  %0 = load i32, i32* @acpi_disabled, align 4, !dbg !2730
  %tobool = icmp ne i32 %0, 0, !dbg !2730
  br i1 %tobool, label %if.then, label %if.end, !dbg !2732

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !2733
  br label %return, !dbg !2733

if.end:                                           ; preds = %entry
  %call = call i32 @dmi_check_system(%struct.dmi_system_id* getelementptr inbounds ([4 x %struct.dmi_system_id], [4 x %struct.dmi_system_id]* bitcast ([4 x { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* }]* @ac_dmi_table to [4 x %struct.dmi_system_id]*), i64 0, i64 0)) #9, !dbg !2734
  %1 = load i32, i32* @ac_check_pmic, align 4, !dbg !2735
  %tobool1 = icmp ne i32 %1, 0, !dbg !2735
  br i1 %tobool1, label %if.then2, label %if.end14, !dbg !2737

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4, !dbg !2738
  br label %for.cond, !dbg !2741

for.cond:                                         ; preds = %for.inc, %if.then2
  %2 = load i32, i32* %i, align 4, !dbg !2742
  %conv = zext i32 %2 to i64, !dbg !2742
  %cmp = icmp ult i64 %conv, 2, !dbg !2744
  br i1 %cmp, label %for.body, label %for.end, !dbg !2745

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !dbg !2746
  %idxprom = zext i32 %3 to i64, !dbg !2748
  %arrayidx = getelementptr [2 x %struct.acpi_ac_bl], [2 x %struct.acpi_ac_bl]* @acpi_ac_blacklist, i64 0, i64 %idxprom, !dbg !2748
  %hid = getelementptr inbounds %struct.acpi_ac_bl, %struct.acpi_ac_bl* %arrayidx, i32 0, i32 0, !dbg !2749
  %4 = load i8*, i8** %hid, align 16, !dbg !2749
  %5 = load i32, i32* %i, align 4, !dbg !2750
  %idxprom4 = zext i32 %5 to i64, !dbg !2751
  %arrayidx5 = getelementptr [2 x %struct.acpi_ac_bl], [2 x %struct.acpi_ac_bl]* @acpi_ac_blacklist, i64 0, i64 %idxprom4, !dbg !2751
  %hrv = getelementptr inbounds %struct.acpi_ac_bl, %struct.acpi_ac_bl* %arrayidx5, i32 0, i32 1, !dbg !2752
  %6 = load i32, i32* %hrv, align 8, !dbg !2752
  %conv6 = sext i32 %6 to i64, !dbg !2751
  %call7 = call zeroext i1 @acpi_dev_present(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i64 %conv6) #9, !dbg !2753
  br i1 %call7, label %if.then8, label %if.end13, !dbg !2754

if.then8:                                         ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !2755
  %idxprom9 = zext i32 %7 to i64, !dbg !2755
  %arrayidx10 = getelementptr [2 x %struct.acpi_ac_bl], [2 x %struct.acpi_ac_bl]* @acpi_ac_blacklist, i64 0, i64 %idxprom9, !dbg !2755
  %hid11 = getelementptr inbounds %struct.acpi_ac_bl, %struct.acpi_ac_bl* %arrayidx10, i32 0, i32 0, !dbg !2755
  %8 = load i8*, i8** %hid11, align 16, !dbg !2755
  %call12 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i64 0, i64 0), i8* %8) #10, !dbg !2755
  store i32 -19, i32* %retval, align 4, !dbg !2757
  br label %return, !dbg !2757

if.end13:                                         ; preds = %for.body
  br label %for.inc, !dbg !2758

for.inc:                                          ; preds = %if.end13
  %9 = load i32, i32* %i, align 4, !dbg !2759
  %inc = add i32 %9, 1, !dbg !2759
  store i32 %inc, i32* %i, align 4, !dbg !2759
  br label %for.cond, !dbg !2760, !llvm.loop !2761

for.end:                                          ; preds = %for.cond
  br label %if.end14, !dbg !2763

if.end14:                                         ; preds = %for.end, %if.end
  %call15 = call i32 @acpi_bus_register_driver(%struct.acpi_driver* @acpi_ac_driver) #9, !dbg !2764
  store i32 %call15, i32* %result, align 4, !dbg !2765
  %10 = load i32, i32* %result, align 4, !dbg !2766
  %cmp16 = icmp slt i32 %10, 0, !dbg !2768
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !2769

if.then18:                                        ; preds = %if.end14
  store i32 -19, i32* %retval, align 4, !dbg !2770
  br label %return, !dbg !2770

if.end19:                                         ; preds = %if.end14
  store i32 0, i32* %retval, align 4, !dbg !2772
  br label %return, !dbg !2772

return:                                           ; preds = %if.end19, %if.then18, %if.then8, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !2773
  ret i32 %11, !dbg !2773
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ac_add(%struct.acpi_device* %device) #2 !dbg !2774 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca %struct.acpi_device*, align 8
  %psy_cfg = alloca %struct.power_supply_config, align 8
  %result = alloca i32, align 4
  %ac = alloca %struct.acpi_ac*, align 8
  store %struct.acpi_device* %device, %struct.acpi_device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device.addr, metadata !2775, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.declare(metadata %struct.power_supply_config* %psy_cfg, metadata !2777, metadata !DIExpression()), !dbg !2786
  %0 = bitcast %struct.power_supply_config* %psy_cfg to i8*, !dbg !2786
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 48, i1 false), !dbg !2786
  call void @llvm.dbg.declare(metadata i32* %result, metadata !2787, metadata !DIExpression()), !dbg !2788
  store i32 0, i32* %result, align 4, !dbg !2788
  call void @llvm.dbg.declare(metadata %struct.acpi_ac** %ac, metadata !2789, metadata !DIExpression()), !dbg !2790
  store %struct.acpi_ac* null, %struct.acpi_ac** %ac, align 8, !dbg !2790
  %1 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !2791
  %tobool = icmp ne %struct.acpi_device* %1, null, !dbg !2791
  br i1 %tobool, label %if.end, label %if.then, !dbg !2793

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !2794
  br label %return, !dbg !2794

if.end:                                           ; preds = %entry
  %call = call i8* @kzalloc(i64 144, i32 3264) #9, !dbg !2795
  %2 = bitcast i8* %call to %struct.acpi_ac*, !dbg !2795
  store %struct.acpi_ac* %2, %struct.acpi_ac** %ac, align 8, !dbg !2796
  %3 = load %struct.acpi_ac*, %struct.acpi_ac** %ac, align 8, !dbg !2797
  %tobool1 = icmp ne %struct.acpi_ac* %3, null, !dbg !2797
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !2799

if.then2:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !2800
  br label %return, !dbg !2800

if.end3:                                          ; preds = %if.end
  %4 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !2801
  %5 = load %struct.acpi_ac*, %struct.acpi_ac** %ac, align 8, !dbg !2802
  %device4 = getelementptr inbounds %struct.acpi_ac, %struct.acpi_ac* %5, i32 0, i32 2, !dbg !2803
  store %struct.acpi_device* %4, %struct.acpi_device** %device4, align 8, !dbg !2804
  %6 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !2805
  %pnp = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %6, i32 0, i32 10, !dbg !2805
  %device_name = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp, i32 0, i32 5, !dbg !2805
  %arraydecay = getelementptr inbounds [40 x i8], [40 x i8]* %device_name, i64 0, i64 0, !dbg !2805
  %call5 = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0)) #9, !dbg !2806
  %7 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !2807
  %pnp6 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %7, i32 0, i32 10, !dbg !2807
  %device_class = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp6, i32 0, i32 6, !dbg !2807
  %arraydecay7 = getelementptr inbounds [20 x i8], [20 x i8]* %device_class, i64 0, i64 0, !dbg !2807
  %call8 = call i8* @strcpy(i8* %arraydecay7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !2808
  %8 = load %struct.acpi_ac*, %struct.acpi_ac** %ac, align 8, !dbg !2809
  %9 = bitcast %struct.acpi_ac* %8 to i8*, !dbg !2809
  %10 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !2810
  %driver_data = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %10, i32 0, i32 20, !dbg !2811
  store i8* %9, i8** %driver_data, align 8, !dbg !2812
  %11 = load %struct.acpi_ac*, %struct.acpi_ac** %ac, align 8, !dbg !2813
  %call9 = call i32 @acpi_ac_get_state(%struct.acpi_ac* %11) #9, !dbg !2814
  store i32 %call9, i32* %result, align 4, !dbg !2815
  %12 = load i32, i32* %result, align 4, !dbg !2816
  %tobool10 = icmp ne i32 %12, 0, !dbg !2816
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !2818

if.then11:                                        ; preds = %if.end3
  br label %end, !dbg !2819

if.end12:                                         ; preds = %if.end3
  %13 = load %struct.acpi_ac*, %struct.acpi_ac** %ac, align 8, !dbg !2820
  %14 = bitcast %struct.acpi_ac* %13 to i8*, !dbg !2820
  %drv_data = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %psy_cfg, i32 0, i32 2, !dbg !2821
  store i8* %14, i8** %drv_data, align 8, !dbg !2822
  %15 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !2823
  %pnp13 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %15, i32 0, i32 10, !dbg !2823
  %bus_id = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp13, i32 0, i32 0, !dbg !2823
  %arraydecay14 = getelementptr inbounds [8 x i8], [8 x i8]* %bus_id, i64 0, i64 0, !dbg !2823
  %16 = load %struct.acpi_ac*, %struct.acpi_ac** %ac, align 8, !dbg !2824
  %charger_desc = getelementptr inbounds %struct.acpi_ac, %struct.acpi_ac* %16, i32 0, i32 1, !dbg !2825
  %name = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %charger_desc, i32 0, i32 0, !dbg !2826
  store i8* %arraydecay14, i8** %name, align 8, !dbg !2827
  %17 = load %struct.acpi_ac*, %struct.acpi_ac** %ac, align 8, !dbg !2828
  %charger_desc15 = getelementptr inbounds %struct.acpi_ac, %struct.acpi_ac* %17, i32 0, i32 1, !dbg !2829
  %type = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %charger_desc15, i32 0, i32 1, !dbg !2830
  store i32 3, i32* %type, align 8, !dbg !2831
  %18 = load %struct.acpi_ac*, %struct.acpi_ac** %ac, align 8, !dbg !2832
  %charger_desc16 = getelementptr inbounds %struct.acpi_ac, %struct.acpi_ac* %18, i32 0, i32 1, !dbg !2833
  %properties = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %charger_desc16, i32 0, i32 4, !dbg !2834
  store i32* getelementptr inbounds ([1 x i32], [1 x i32]* @ac_props, i64 0, i64 0), i32** %properties, align 8, !dbg !2835
  %19 = load %struct.acpi_ac*, %struct.acpi_ac** %ac, align 8, !dbg !2836
  %charger_desc17 = getelementptr inbounds %struct.acpi_ac, %struct.acpi_ac* %19, i32 0, i32 1, !dbg !2837
  %num_properties = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %charger_desc17, i32 0, i32 5, !dbg !2838
  store i64 1, i64* %num_properties, align 8, !dbg !2839
  %20 = load %struct.acpi_ac*, %struct.acpi_ac** %ac, align 8, !dbg !2840
  %charger_desc18 = getelementptr inbounds %struct.acpi_ac, %struct.acpi_ac* %20, i32 0, i32 1, !dbg !2841
  %get_property = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %charger_desc18, i32 0, i32 6, !dbg !2842
  store i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @get_ac_property, i32 (%struct.power_supply*, i32, %union.power_supply_propval*)** %get_property, align 8, !dbg !2843
  %21 = load %struct.acpi_ac*, %struct.acpi_ac** %ac, align 8, !dbg !2844
  %device19 = getelementptr inbounds %struct.acpi_ac, %struct.acpi_ac* %21, i32 0, i32 2, !dbg !2845
  %22 = load %struct.acpi_device*, %struct.acpi_device** %device19, align 8, !dbg !2845
  %dev = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %22, i32 0, i32 21, !dbg !2846
  %23 = load %struct.acpi_ac*, %struct.acpi_ac** %ac, align 8, !dbg !2847
  %charger_desc20 = getelementptr inbounds %struct.acpi_ac, %struct.acpi_ac* %23, i32 0, i32 1, !dbg !2848
  %call21 = call %struct.power_supply* @power_supply_register(%struct.device* %dev, %struct.power_supply_desc* %charger_desc20, %struct.power_supply_config* %psy_cfg) #9, !dbg !2849
  %24 = load %struct.acpi_ac*, %struct.acpi_ac** %ac, align 8, !dbg !2850
  %charger = getelementptr inbounds %struct.acpi_ac, %struct.acpi_ac* %24, i32 0, i32 0, !dbg !2851
  store %struct.power_supply* %call21, %struct.power_supply** %charger, align 8, !dbg !2852
  %25 = load %struct.acpi_ac*, %struct.acpi_ac** %ac, align 8, !dbg !2853
  %charger22 = getelementptr inbounds %struct.acpi_ac, %struct.acpi_ac* %25, i32 0, i32 0, !dbg !2855
  %26 = load %struct.power_supply*, %struct.power_supply** %charger22, align 8, !dbg !2855
  %27 = bitcast %struct.power_supply* %26 to i8*, !dbg !2853
  %call23 = call zeroext i1 @IS_ERR(i8* %27) #9, !dbg !2856
  br i1 %call23, label %if.then24, label %if.end27, !dbg !2857

if.then24:                                        ; preds = %if.end12
  %28 = load %struct.acpi_ac*, %struct.acpi_ac** %ac, align 8, !dbg !2858
  %charger25 = getelementptr inbounds %struct.acpi_ac, %struct.acpi_ac* %28, i32 0, i32 0, !dbg !2860
  %29 = load %struct.power_supply*, %struct.power_supply** %charger25, align 8, !dbg !2860
  %30 = bitcast %struct.power_supply* %29 to i8*, !dbg !2858
  %call26 = call i64 @PTR_ERR(i8* %30) #9, !dbg !2861
  %conv = trunc i64 %call26 to i32, !dbg !2861
  store i32 %conv, i32* %result, align 4, !dbg !2862
  br label %end, !dbg !2863

if.end27:                                         ; preds = %if.end12
  %31 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !2864
  %pnp28 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %31, i32 0, i32 10, !dbg !2864
  %device_name29 = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp28, i32 0, i32 5, !dbg !2864
  %arraydecay30 = getelementptr inbounds [40 x i8], [40 x i8]* %device_name29, i64 0, i64 0, !dbg !2864
  %32 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !2865
  %pnp31 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %32, i32 0, i32 10, !dbg !2865
  %bus_id32 = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp31, i32 0, i32 0, !dbg !2865
  %arraydecay33 = getelementptr inbounds [8 x i8], [8 x i8]* %bus_id32, i64 0, i64 0, !dbg !2865
  %33 = load %struct.acpi_ac*, %struct.acpi_ac** %ac, align 8, !dbg !2866
  %state = getelementptr inbounds %struct.acpi_ac, %struct.acpi_ac* %33, i32 0, i32 3, !dbg !2867
  %34 = load i64, i64* %state, align 8, !dbg !2867
  %tobool34 = icmp ne i64 %34, 0, !dbg !2866
  %35 = zext i1 %tobool34 to i64, !dbg !2866
  %cond = select i1 %tobool34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), !dbg !2866
  %call35 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %arraydecay30, i8* %arraydecay33, i8* %cond) #10, !dbg !2868
  %36 = load %struct.acpi_ac*, %struct.acpi_ac** %ac, align 8, !dbg !2869
  %battery_nb = getelementptr inbounds %struct.acpi_ac, %struct.acpi_ac* %36, i32 0, i32 4, !dbg !2870
  %notifier_call = getelementptr inbounds %struct.notifier_block, %struct.notifier_block* %battery_nb, i32 0, i32 0, !dbg !2871
  store i32 (%struct.notifier_block*, i64, i8*)* @acpi_ac_battery_notify, i32 (%struct.notifier_block*, i64, i8*)** %notifier_call, align 8, !dbg !2872
  %37 = load %struct.acpi_ac*, %struct.acpi_ac** %ac, align 8, !dbg !2873
  %battery_nb36 = getelementptr inbounds %struct.acpi_ac, %struct.acpi_ac* %37, i32 0, i32 4, !dbg !2874
  %call37 = call i32 @register_acpi_notifier(%struct.notifier_block* %battery_nb36) #9, !dbg !2875
  br label %end, !dbg !2875

end:                                              ; preds = %if.end27, %if.then24, %if.then11
  call void @llvm.dbg.label(metadata !2876), !dbg !2877
  %38 = load i32, i32* %result, align 4, !dbg !2878
  %tobool38 = icmp ne i32 %38, 0, !dbg !2878
  br i1 %tobool38, label %if.then39, label %if.end40, !dbg !2880

if.then39:                                        ; preds = %end
  %39 = load %struct.acpi_ac*, %struct.acpi_ac** %ac, align 8, !dbg !2881
  %40 = bitcast %struct.acpi_ac* %39 to i8*, !dbg !2881
  call void @kfree(i8* %40) #9, !dbg !2883
  br label %if.end40, !dbg !2884

if.end40:                                         ; preds = %if.then39, %end
  %41 = load i32, i32* %result, align 4, !dbg !2885
  store i32 %41, i32* %retval, align 4, !dbg !2886
  br label %return, !dbg !2886

return:                                           ; preds = %if.end40, %if.then2, %if.then
  %42 = load i32, i32* %retval, align 4, !dbg !2887
  ret i32 %42, !dbg !2887
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ac_remove(%struct.acpi_device* %device) #2 !dbg !2888 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca %struct.acpi_device*, align 8
  %ac = alloca %struct.acpi_ac*, align 8
  store %struct.acpi_device* %device, %struct.acpi_device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device.addr, metadata !2889, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.declare(metadata %struct.acpi_ac** %ac, metadata !2891, metadata !DIExpression()), !dbg !2892
  store %struct.acpi_ac* null, %struct.acpi_ac** %ac, align 8, !dbg !2892
  %0 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !2893
  %tobool = icmp ne %struct.acpi_device* %0, null, !dbg !2893
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2895

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !2896
  %call = call i8* @acpi_driver_data(%struct.acpi_device* %1) #9, !dbg !2897
  %tobool1 = icmp ne i8* %call, null, !dbg !2897
  br i1 %tobool1, label %if.end, label %if.then, !dbg !2898

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !2899
  br label %return, !dbg !2899

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !2900
  %call2 = call i8* @acpi_driver_data(%struct.acpi_device* %2) #9, !dbg !2901
  %3 = bitcast i8* %call2 to %struct.acpi_ac*, !dbg !2901
  store %struct.acpi_ac* %3, %struct.acpi_ac** %ac, align 8, !dbg !2902
  %4 = load %struct.acpi_ac*, %struct.acpi_ac** %ac, align 8, !dbg !2903
  %charger = getelementptr inbounds %struct.acpi_ac, %struct.acpi_ac* %4, i32 0, i32 0, !dbg !2904
  %5 = load %struct.power_supply*, %struct.power_supply** %charger, align 8, !dbg !2904
  call void @power_supply_unregister(%struct.power_supply* %5) #9, !dbg !2905
  %6 = load %struct.acpi_ac*, %struct.acpi_ac** %ac, align 8, !dbg !2906
  %battery_nb = getelementptr inbounds %struct.acpi_ac, %struct.acpi_ac* %6, i32 0, i32 4, !dbg !2907
  %call3 = call i32 @unregister_acpi_notifier(%struct.notifier_block* %battery_nb) #9, !dbg !2908
  %7 = load %struct.acpi_ac*, %struct.acpi_ac** %ac, align 8, !dbg !2909
  %8 = bitcast %struct.acpi_ac* %7 to i8*, !dbg !2909
  call void @kfree(i8* %8) #9, !dbg !2910
  store i32 0, i32* %retval, align 4, !dbg !2911
  br label %return, !dbg !2911

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !2912
  ret i32 %9, !dbg !2912
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_ac_notify(%struct.acpi_device* %device, i32 %event) #2 !dbg !2913 {
entry:
  %device.addr = alloca %struct.acpi_device*, align 8
  %event.addr = alloca i32, align 4
  %ac = alloca %struct.acpi_ac*, align 8
  store %struct.acpi_device* %device, %struct.acpi_device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device.addr, metadata !2914, metadata !DIExpression()), !dbg !2915
  store i32 %event, i32* %event.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %event.addr, metadata !2916, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.declare(metadata %struct.acpi_ac** %ac, metadata !2918, metadata !DIExpression()), !dbg !2919
  %0 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !2920
  %call = call i8* @acpi_driver_data(%struct.acpi_device* %0) #9, !dbg !2921
  %1 = bitcast i8* %call to %struct.acpi_ac*, !dbg !2921
  store %struct.acpi_ac* %1, %struct.acpi_ac** %ac, align 8, !dbg !2919
  %2 = load %struct.acpi_ac*, %struct.acpi_ac** %ac, align 8, !dbg !2922
  %tobool = icmp ne %struct.acpi_ac* %2, null, !dbg !2922
  br i1 %tobool, label %if.end, label %if.then, !dbg !2924

if.then:                                          ; preds = %entry
  br label %return, !dbg !2925

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %event.addr, align 4, !dbg !2926
  switch i32 %3, label %sw.default [
    i32 128, label %sw.bb
    i32 0, label %sw.bb
    i32 1, label %sw.bb
  ], !dbg !2927

sw.default:                                       ; preds = %if.end
  br label %sw.bb, !dbg !2928

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %sw.default
  %4 = load i32, i32* @ac_sleep_before_get_state_ms, align 4, !dbg !2929
  %cmp = icmp sgt i32 %4, 0, !dbg !2932
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !2933

if.then1:                                         ; preds = %sw.bb
  %5 = load i32, i32* @ac_sleep_before_get_state_ms, align 4, !dbg !2934
  call void @msleep(i32 %5) #9, !dbg !2935
  br label %if.end2, !dbg !2935

if.end2:                                          ; preds = %if.then1, %sw.bb
  %6 = load %struct.acpi_ac*, %struct.acpi_ac** %ac, align 8, !dbg !2936
  %call3 = call i32 @acpi_ac_get_state(%struct.acpi_ac* %6) #9, !dbg !2937
  %7 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !2938
  %pnp = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %7, i32 0, i32 10, !dbg !2939
  %device_class = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp, i32 0, i32 6, !dbg !2940
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %device_class, i64 0, i64 0, !dbg !2938
  %8 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !2941
  %dev = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %8, i32 0, i32 21, !dbg !2942
  %call4 = call i8* @dev_name(%struct.device* %dev) #9, !dbg !2943
  %9 = load i32, i32* %event.addr, align 4, !dbg !2944
  %conv = trunc i32 %9 to i8, !dbg !2944
  %10 = load %struct.acpi_ac*, %struct.acpi_ac** %ac, align 8, !dbg !2945
  %state = getelementptr inbounds %struct.acpi_ac, %struct.acpi_ac* %10, i32 0, i32 3, !dbg !2946
  %11 = load i64, i64* %state, align 8, !dbg !2946
  %conv5 = trunc i64 %11 to i32, !dbg !2947
  %call6 = call i32 @acpi_bus_generate_netlink_event(i8* %arraydecay, i8* %call4, i8 zeroext %conv, i32 %conv5) #9, !dbg !2948
  %12 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !2949
  %13 = load i32, i32* %event.addr, align 4, !dbg !2950
  %14 = load %struct.acpi_ac*, %struct.acpi_ac** %ac, align 8, !dbg !2951
  %state7 = getelementptr inbounds %struct.acpi_ac, %struct.acpi_ac* %14, i32 0, i32 3, !dbg !2952
  %15 = load i64, i64* %state7, align 8, !dbg !2952
  %conv8 = trunc i64 %15 to i32, !dbg !2953
  %call9 = call i32 @acpi_notifier_call_chain(%struct.acpi_device* %12, i32 %13, i32 %conv8) #9, !dbg !2954
  %16 = load %struct.acpi_ac*, %struct.acpi_ac** %ac, align 8, !dbg !2955
  %charger = getelementptr inbounds %struct.acpi_ac, %struct.acpi_ac* %16, i32 0, i32 0, !dbg !2956
  %17 = load %struct.power_supply*, %struct.power_supply** %charger, align 8, !dbg !2956
  %dev10 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %17, i32 0, i32 7, !dbg !2957
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev10, i32 0, i32 0, !dbg !2958
  %call11 = call i32 @kobject_uevent(%struct.kobject* %kobj, i32 2) #9, !dbg !2959
  br label %sw.epilog, !dbg !2960

sw.epilog:                                        ; preds = %if.end2
  br label %return, !dbg !2961

return:                                           ; preds = %sw.epilog, %if.then
  ret void, !dbg !2962
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #2 !dbg !2963 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2966, metadata !DIExpression()), !dbg !2970
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2976, metadata !DIExpression()), !dbg !2977
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2978, metadata !DIExpression()), !dbg !2979
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2980, metadata !DIExpression()), !dbg !2981
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2982, metadata !DIExpression()), !dbg !2986
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2988, metadata !DIExpression()), !dbg !2992
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2994, metadata !DIExpression()), !dbg !2998
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !3003, metadata !DIExpression()), !dbg !3004
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !3005, metadata !DIExpression()), !dbg !3006
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3007, metadata !DIExpression()), !dbg !3008
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !3009, metadata !DIExpression()), !dbg !3010
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !3011, metadata !DIExpression()), !dbg !3012
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3013, metadata !DIExpression()), !dbg !3014
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !3015, metadata !DIExpression()), !dbg !3016
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3017, metadata !DIExpression()), !dbg !3018
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3019, metadata !DIExpression()), !dbg !3020
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3021, metadata !DIExpression()), !dbg !3022
  %0 = load i64, i64* %size.addr, align 8, !dbg !3023
  %1 = load i32, i32* %flags.addr, align 4, !dbg !3024
  %or = or i32 %1, 256, !dbg !3025
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !3026
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #11, !dbg !3027
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !3028

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !3029
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !3030
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !3031

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !3032
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !3033
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !3034
  %call.i.i = call i32 @get_order(i64 %7) #12, !dbg !3035
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !3012
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !3036
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !3037
  %10 = load i32, i32* %order.i.i, align 4, !dbg !3038
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !3039
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !3040
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !3041
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #13, !dbg !3042
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !3042
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !3042
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !3042
  call void @llvm.assume(i1 %maskcond.i.i.i) #11, !dbg !3042
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !3043
  br label %kmalloc.exit, !dbg !3043

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !3044
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3045
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !3045
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !3047

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !3048
  br label %kmalloc_index.exit.i, !dbg !3048

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3049
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !3051
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !3052

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3053
  br label %kmalloc_index.exit.i, !dbg !3053

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3054
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !3056
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !3057

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3058
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !3059
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !3060

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !3061
  br label %kmalloc_index.exit.i, !dbg !3061

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3062
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !3064
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !3065

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3066
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !3067
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !3068

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !3069
  br label %kmalloc_index.exit.i, !dbg !3069

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3070
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !3072
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !3073

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3074
  br label %kmalloc_index.exit.i, !dbg !3074

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3075
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !3077
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !3078

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !3079
  br label %kmalloc_index.exit.i, !dbg !3079

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3080
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !3082
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !3083

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !3084
  br label %kmalloc_index.exit.i, !dbg !3084

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3085
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !3087
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !3088

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !3089
  br label %kmalloc_index.exit.i, !dbg !3089

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3090
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !3092
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !3093

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !3094
  br label %kmalloc_index.exit.i, !dbg !3094

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3095
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !3097
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !3098

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !3099
  br label %kmalloc_index.exit.i, !dbg !3099

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3100
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !3102
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !3103

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !3104
  br label %kmalloc_index.exit.i, !dbg !3104

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3105
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !3107
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !3108

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !3109
  br label %kmalloc_index.exit.i, !dbg !3109

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3110
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !3112
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !3113

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !3114
  br label %kmalloc_index.exit.i, !dbg !3114

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3115
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !3117
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !3118

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !3119
  br label %kmalloc_index.exit.i, !dbg !3119

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3120
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !3122
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !3123

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !3124
  br label %kmalloc_index.exit.i, !dbg !3124

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3125
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !3127
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !3128

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !3129
  br label %kmalloc_index.exit.i, !dbg !3129

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3130
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !3132
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !3133

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !3134
  br label %kmalloc_index.exit.i, !dbg !3134

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3135
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !3137
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !3138

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !3139
  br label %kmalloc_index.exit.i, !dbg !3139

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3140
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !3142
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !3143

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !3144
  br label %kmalloc_index.exit.i, !dbg !3144

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3145
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !3147
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !3148

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !3149
  br label %kmalloc_index.exit.i, !dbg !3149

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3150
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !3152
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !3153

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !3154
  br label %kmalloc_index.exit.i, !dbg !3154

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3155
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !3157
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !3158

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !3159
  br label %kmalloc_index.exit.i, !dbg !3159

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3160
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !3162
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !3163

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !3164
  br label %kmalloc_index.exit.i, !dbg !3164

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3165
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !3167
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !3168

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !3169
  br label %kmalloc_index.exit.i, !dbg !3169

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3170
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !3172
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !3173

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !3174
  br label %kmalloc_index.exit.i, !dbg !3174

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3175
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !3177
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !3178

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !3179
  br label %kmalloc_index.exit.i, !dbg !3179

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3180
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !3182
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !3183

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !3184
  br label %kmalloc_index.exit.i, !dbg !3184

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3185
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !3187
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !3188

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !3189
  br label %kmalloc_index.exit.i, !dbg !3189

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 382, i32 0, i64 12) #11, !dbg !3190, !srcloc !3193
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #11, !dbg !3194, !srcloc !3197
  unreachable, !dbg !3198

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !3199
  store i32 %45, i32* %index.i, align 4, !dbg !3200
  %46 = load i32, i32* %index.i, align 4, !dbg !3201
  %tobool.i = icmp ne i32 %46, 0, !dbg !3201
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !3203

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !3204
  br label %kmalloc.exit, !dbg !3204

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !3205
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3206
  %and.i.i = and i32 %48, 17, !dbg !3206
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !3206
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !3206
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !3206
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !3206
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !3208

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !3209
  br label %kmalloc_type.exit.i, !dbg !3209

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3210
  %and2.i.i = and i32 %49, 1, !dbg !3211
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !3210
  %50 = zext i1 %tobool3.i.i to i64, !dbg !3210
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !3210
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !3212
  br label %kmalloc_type.exit.i, !dbg !3212

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !3213
  %idxprom.i = zext i32 %51 to i64, !dbg !3214
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !3214
  %52 = load i32, i32* %index.i, align 4, !dbg !3215
  %idxprom6.i = zext i32 %52 to i64, !dbg !3214
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !3214
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !3214
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !3216
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !3217
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3218
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3219
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #13, !dbg !3220
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !3220
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !3220
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !3220
  call void @llvm.assume(i1 %maskcond.i.i) #11, !dbg !3220
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !2981
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3221
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !3222
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !3223
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3224
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #13, !dbg !3225
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !3226
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !3227
  store i8* %62, i8** %retval.i, align 8, !dbg !3228
  br label %kmalloc.exit, !dbg !3228

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !3229
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !3230
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #13, !dbg !3231
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !3231
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !3231
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !3231
  call void @llvm.assume(i1 %maskcond.i) #11, !dbg !3231
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !3232
  br label %kmalloc.exit, !dbg !3232

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !3233
  ret i8* %65, !dbg !3234
}

; Function Attrs: noredzone
declare dso_local i8* @strcpy(i8*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ac_get_state(%struct.acpi_ac* %ac) #2 !dbg !3235 {
entry:
  %retval = alloca i32, align 4
  %ac.addr = alloca %struct.acpi_ac*, align 8
  %status = alloca i32, align 4
  store %struct.acpi_ac* %ac, %struct.acpi_ac** %ac.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_ac** %ac.addr, metadata !3238, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3240, metadata !DIExpression()), !dbg !3241
  store i32 0, i32* %status, align 4, !dbg !3241
  %0 = load %struct.acpi_ac*, %struct.acpi_ac** %ac.addr, align 8, !dbg !3242
  %tobool = icmp ne %struct.acpi_ac* %0, null, !dbg !3242
  br i1 %tobool, label %if.end, label %if.then, !dbg !3244

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !3245
  br label %return, !dbg !3245

if.end:                                           ; preds = %entry
  %1 = load %struct.acpi_ac*, %struct.acpi_ac** %ac.addr, align 8, !dbg !3246
  %device = getelementptr inbounds %struct.acpi_ac, %struct.acpi_ac* %1, i32 0, i32 2, !dbg !3247
  %2 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !3247
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %2, i32 0, i32 1, !dbg !3248
  %3 = load i8*, i8** %handle, align 8, !dbg !3248
  %4 = load %struct.acpi_ac*, %struct.acpi_ac** %ac.addr, align 8, !dbg !3249
  %state = getelementptr inbounds %struct.acpi_ac, %struct.acpi_ac* %4, i32 0, i32 3, !dbg !3250
  %call = call i32 @acpi_evaluate_integer(i8* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), %struct.acpi_object_list* null, i64* %state) #9, !dbg !3251
  store i32 %call, i32* %status, align 4, !dbg !3252
  %5 = load i32, i32* %status, align 4, !dbg !3253
  %tobool1 = icmp ne i32 %5, 0, !dbg !3253
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !3255

if.then2:                                         ; preds = %if.end
  %6 = load i32, i32* %status, align 4, !dbg !3256
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @_acpi_module_name, i64 0, i64 0), i32 105, i32 %6, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !3256
  %7 = load %struct.acpi_ac*, %struct.acpi_ac** %ac.addr, align 8, !dbg !3258
  %state3 = getelementptr inbounds %struct.acpi_ac, %struct.acpi_ac* %7, i32 0, i32 3, !dbg !3259
  store i64 255, i64* %state3, align 8, !dbg !3260
  store i32 -19, i32* %retval, align 4, !dbg !3261
  br label %return, !dbg !3261

if.end4:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3262
  br label %return, !dbg !3262

return:                                           ; preds = %if.end4, %if.then2, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !3263
  ret i32 %8, !dbg !3263
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @get_ac_property(%struct.power_supply* %psy, i32 %psp, %union.power_supply_propval* %val) #2 !dbg !3264 {
entry:
  %retval = alloca i32, align 4
  %psy.addr = alloca %struct.power_supply*, align 8
  %psp.addr = alloca i32, align 4
  %val.addr = alloca %union.power_supply_propval*, align 8
  %ac = alloca %struct.acpi_ac*, align 8
  store %struct.power_supply* %psy, %struct.power_supply** %psy.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.power_supply** %psy.addr, metadata !3265, metadata !DIExpression()), !dbg !3266
  store i32 %psp, i32* %psp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %psp.addr, metadata !3267, metadata !DIExpression()), !dbg !3268
  store %union.power_supply_propval* %val, %union.power_supply_propval** %val.addr, align 8
  call void @llvm.dbg.declare(metadata %union.power_supply_propval** %val.addr, metadata !3269, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.declare(metadata %struct.acpi_ac** %ac, metadata !3271, metadata !DIExpression()), !dbg !3272
  %0 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !3273
  %call = call i8* @power_supply_get_drvdata(%struct.power_supply* %0) #9, !dbg !3273
  %1 = bitcast i8* %call to %struct.acpi_ac*, !dbg !3273
  store %struct.acpi_ac* %1, %struct.acpi_ac** %ac, align 8, !dbg !3272
  %2 = load %struct.acpi_ac*, %struct.acpi_ac** %ac, align 8, !dbg !3274
  %tobool = icmp ne %struct.acpi_ac* %2, null, !dbg !3274
  br i1 %tobool, label %if.end, label %if.then, !dbg !3276

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !3277
  br label %return, !dbg !3277

if.end:                                           ; preds = %entry
  %3 = load %struct.acpi_ac*, %struct.acpi_ac** %ac, align 8, !dbg !3278
  %call1 = call i32 @acpi_ac_get_state(%struct.acpi_ac* %3) #9, !dbg !3280
  %tobool2 = icmp ne i32 %call1, 0, !dbg !3280
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !3281

if.then3:                                         ; preds = %if.end
  store i32 -19, i32* %retval, align 4, !dbg !3282
  br label %return, !dbg !3282

if.end4:                                          ; preds = %if.end
  %4 = load i32, i32* %psp.addr, align 4, !dbg !3283
  switch i32 %4, label %sw.default [
    i32 4, label %sw.bb
  ], !dbg !3284

sw.bb:                                            ; preds = %if.end4
  %5 = load %struct.acpi_ac*, %struct.acpi_ac** %ac, align 8, !dbg !3285
  %state = getelementptr inbounds %struct.acpi_ac, %struct.acpi_ac* %5, i32 0, i32 3, !dbg !3287
  %6 = load i64, i64* %state, align 8, !dbg !3287
  %conv = trunc i64 %6 to i32, !dbg !3285
  %7 = load %union.power_supply_propval*, %union.power_supply_propval** %val.addr, align 8, !dbg !3288
  %intval = bitcast %union.power_supply_propval* %7 to i32*, !dbg !3289
  store i32 %conv, i32* %intval, align 8, !dbg !3290
  br label %sw.epilog, !dbg !3291

sw.default:                                       ; preds = %if.end4
  store i32 -22, i32* %retval, align 4, !dbg !3292
  br label %return, !dbg !3292

sw.epilog:                                        ; preds = %sw.bb
  store i32 0, i32* %retval, align 4, !dbg !3293
  br label %return, !dbg !3293

return:                                           ; preds = %sw.epilog, %sw.default, %if.then3, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !3294
  ret i32 %8, !dbg !3294
}

; Function Attrs: noredzone
declare dso_local %struct.power_supply* @power_supply_register(%struct.device*, %struct.power_supply_desc*, %struct.power_supply_config*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #2 !dbg !3295 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3299, metadata !DIExpression()), !dbg !3300
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !3301
  %1 = ptrtoint i8* %0 to i64, !dbg !3301
  %2 = inttoptr i64 %1 to i8*, !dbg !3301
  %3 = ptrtoint i8* %2 to i64, !dbg !3301
  %cmp = icmp uge i64 %3, -4095, !dbg !3301
  %lnot = xor i1 %cmp, true, !dbg !3301
  %lnot1 = xor i1 %lnot, true, !dbg !3301
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3301
  %conv = sext i32 %lnot.ext to i64, !dbg !3301
  %tobool = icmp ne i64 %conv, 0, !dbg !3301
  ret i1 %tobool, !dbg !3302
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #2 !dbg !3303 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3306, metadata !DIExpression()), !dbg !3307
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !3308
  %1 = ptrtoint i8* %0 to i64, !dbg !3309
  ret i64 %1, !dbg !3310
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ac_battery_notify(%struct.notifier_block* %nb, i64 %action, i8* %data) #2 !dbg !3311 {
entry:
  %nb.addr = alloca %struct.notifier_block*, align 8
  %action.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %ac = alloca %struct.acpi_ac*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_ac*, align 8
  %event = alloca %struct.acpi_bus_event*, align 8
  store %struct.notifier_block* %nb, %struct.notifier_block** %nb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.notifier_block** %nb.addr, metadata !3312, metadata !DIExpression()), !dbg !3313
  store i64 %action, i64* %action.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %action.addr, metadata !3314, metadata !DIExpression()), !dbg !3315
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3316, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.declare(metadata %struct.acpi_ac** %ac, metadata !3318, metadata !DIExpression()), !dbg !3319
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3320, metadata !DIExpression()), !dbg !3322
  %0 = load %struct.notifier_block*, %struct.notifier_block** %nb.addr, align 8, !dbg !3322
  %1 = bitcast %struct.notifier_block* %0 to i8*, !dbg !3322
  store i8* %1, i8** %__mptr, align 8, !dbg !3322
  br label %do.body, !dbg !3322

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3323

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3322
  %add.ptr = getelementptr i8, i8* %2, i64 -120, !dbg !3322
  %3 = bitcast i8* %add.ptr to %struct.acpi_ac*, !dbg !3322
  store %struct.acpi_ac* %3, %struct.acpi_ac** %tmp, align 8, !dbg !3323
  %4 = load %struct.acpi_ac*, %struct.acpi_ac** %tmp, align 8, !dbg !3322
  store %struct.acpi_ac* %4, %struct.acpi_ac** %ac, align 8, !dbg !3319
  call void @llvm.dbg.declare(metadata %struct.acpi_bus_event** %event, metadata !3325, metadata !DIExpression()), !dbg !3326
  %5 = load i8*, i8** %data.addr, align 8, !dbg !3327
  %6 = bitcast i8* %5 to %struct.acpi_bus_event*, !dbg !3328
  store %struct.acpi_bus_event* %6, %struct.acpi_bus_event** %event, align 8, !dbg !3326
  %7 = load %struct.acpi_bus_event*, %struct.acpi_bus_event** %event, align 8, !dbg !3329
  %device_class = getelementptr inbounds %struct.acpi_bus_event, %struct.acpi_bus_event* %7, i32 0, i32 1, !dbg !3331
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %device_class, i64 0, i64 0, !dbg !3329
  %call = call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0)) #9, !dbg !3332
  %cmp = icmp eq i32 %call, 0, !dbg !3333
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !3334

land.lhs.true:                                    ; preds = %do.end
  %8 = load %struct.acpi_bus_event*, %struct.acpi_bus_event** %event, align 8, !dbg !3335
  %type = getelementptr inbounds %struct.acpi_bus_event, %struct.acpi_bus_event* %8, i32 0, i32 3, !dbg !3336
  %9 = load i32, i32* %type, align 4, !dbg !3336
  %cmp1 = icmp eq i32 %9, 128, !dbg !3337
  br i1 %cmp1, label %if.then, label %if.end, !dbg !3338

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct.acpi_ac*, %struct.acpi_ac** %ac, align 8, !dbg !3339
  %call2 = call i32 @acpi_ac_get_state(%struct.acpi_ac* %10) #9, !dbg !3340
  br label %if.end, !dbg !3340

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.end
  ret i32 1, !dbg !3341
}

; Function Attrs: noredzone
declare dso_local i32 @register_acpi_notifier(%struct.notifier_block*) #1

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
define internal i32 @get_order(i64 %size) #8 !dbg !3342 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3346, metadata !DIExpression()), !dbg !3351
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3353, metadata !DIExpression()), !dbg !3354
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3355, metadata !DIExpression()), !dbg !3356
  %0 = load i64, i64* %size.addr, align 8, !dbg !3357
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3359
  br i1 %1, label %if.then, label %if.end447, !dbg !3360

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !3361
  %tobool = icmp ne i64 %2, 0, !dbg !3361
  br i1 %tobool, label %if.end, label %if.then1, !dbg !3364

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !3365
  br label %return, !dbg !3365

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !3366
  %cmp = icmp ult i64 %3, 4096, !dbg !3368
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3369

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3370
  br label %return, !dbg !3370

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub = sub i64 %4, 1, !dbg !3371
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !3371
  br i1 %5, label %cond.true, label %cond.false442, !dbg !3371

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub4 = sub i64 %6, 1, !dbg !3371
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !3371
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !3371

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub6 = sub i64 %8, 1, !dbg !3371
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !3371
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !3371

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !3371

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub9 = sub i64 %9, 1, !dbg !3371
  %and = and i64 %sub9, -9223372036854775808, !dbg !3371
  %tobool10 = icmp ne i64 %and, 0, !dbg !3371
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !3371

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !3371

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub13 = sub i64 %10, 1, !dbg !3371
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !3371
  %tobool15 = icmp ne i64 %and14, 0, !dbg !3371
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !3371

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !3371

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub18 = sub i64 %11, 1, !dbg !3371
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !3371
  %tobool20 = icmp ne i64 %and19, 0, !dbg !3371
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !3371

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !3371

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub23 = sub i64 %12, 1, !dbg !3371
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !3371
  %tobool25 = icmp ne i64 %and24, 0, !dbg !3371
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !3371

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !3371

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub28 = sub i64 %13, 1, !dbg !3371
  %and29 = and i64 %sub28, 576460752303423488, !dbg !3371
  %tobool30 = icmp ne i64 %and29, 0, !dbg !3371
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !3371

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !3371

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub33 = sub i64 %14, 1, !dbg !3371
  %and34 = and i64 %sub33, 288230376151711744, !dbg !3371
  %tobool35 = icmp ne i64 %and34, 0, !dbg !3371
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !3371

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !3371

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub38 = sub i64 %15, 1, !dbg !3371
  %and39 = and i64 %sub38, 144115188075855872, !dbg !3371
  %tobool40 = icmp ne i64 %and39, 0, !dbg !3371
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !3371

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !3371

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub43 = sub i64 %16, 1, !dbg !3371
  %and44 = and i64 %sub43, 72057594037927936, !dbg !3371
  %tobool45 = icmp ne i64 %and44, 0, !dbg !3371
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !3371

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !3371

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub48 = sub i64 %17, 1, !dbg !3371
  %and49 = and i64 %sub48, 36028797018963968, !dbg !3371
  %tobool50 = icmp ne i64 %and49, 0, !dbg !3371
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !3371

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !3371

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub53 = sub i64 %18, 1, !dbg !3371
  %and54 = and i64 %sub53, 18014398509481984, !dbg !3371
  %tobool55 = icmp ne i64 %and54, 0, !dbg !3371
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !3371

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !3371

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub58 = sub i64 %19, 1, !dbg !3371
  %and59 = and i64 %sub58, 9007199254740992, !dbg !3371
  %tobool60 = icmp ne i64 %and59, 0, !dbg !3371
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !3371

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !3371

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub63 = sub i64 %20, 1, !dbg !3371
  %and64 = and i64 %sub63, 4503599627370496, !dbg !3371
  %tobool65 = icmp ne i64 %and64, 0, !dbg !3371
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !3371

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !3371

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub68 = sub i64 %21, 1, !dbg !3371
  %and69 = and i64 %sub68, 2251799813685248, !dbg !3371
  %tobool70 = icmp ne i64 %and69, 0, !dbg !3371
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !3371

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !3371

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub73 = sub i64 %22, 1, !dbg !3371
  %and74 = and i64 %sub73, 1125899906842624, !dbg !3371
  %tobool75 = icmp ne i64 %and74, 0, !dbg !3371
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !3371

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !3371

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub78 = sub i64 %23, 1, !dbg !3371
  %and79 = and i64 %sub78, 562949953421312, !dbg !3371
  %tobool80 = icmp ne i64 %and79, 0, !dbg !3371
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !3371

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !3371

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub83 = sub i64 %24, 1, !dbg !3371
  %and84 = and i64 %sub83, 281474976710656, !dbg !3371
  %tobool85 = icmp ne i64 %and84, 0, !dbg !3371
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !3371

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !3371

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub88 = sub i64 %25, 1, !dbg !3371
  %and89 = and i64 %sub88, 140737488355328, !dbg !3371
  %tobool90 = icmp ne i64 %and89, 0, !dbg !3371
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !3371

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !3371

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub93 = sub i64 %26, 1, !dbg !3371
  %and94 = and i64 %sub93, 70368744177664, !dbg !3371
  %tobool95 = icmp ne i64 %and94, 0, !dbg !3371
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !3371

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !3371

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub98 = sub i64 %27, 1, !dbg !3371
  %and99 = and i64 %sub98, 35184372088832, !dbg !3371
  %tobool100 = icmp ne i64 %and99, 0, !dbg !3371
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !3371

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !3371

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub103 = sub i64 %28, 1, !dbg !3371
  %and104 = and i64 %sub103, 17592186044416, !dbg !3371
  %tobool105 = icmp ne i64 %and104, 0, !dbg !3371
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !3371

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !3371

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub108 = sub i64 %29, 1, !dbg !3371
  %and109 = and i64 %sub108, 8796093022208, !dbg !3371
  %tobool110 = icmp ne i64 %and109, 0, !dbg !3371
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !3371

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !3371

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub113 = sub i64 %30, 1, !dbg !3371
  %and114 = and i64 %sub113, 4398046511104, !dbg !3371
  %tobool115 = icmp ne i64 %and114, 0, !dbg !3371
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !3371

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !3371

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub118 = sub i64 %31, 1, !dbg !3371
  %and119 = and i64 %sub118, 2199023255552, !dbg !3371
  %tobool120 = icmp ne i64 %and119, 0, !dbg !3371
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !3371

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !3371

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub123 = sub i64 %32, 1, !dbg !3371
  %and124 = and i64 %sub123, 1099511627776, !dbg !3371
  %tobool125 = icmp ne i64 %and124, 0, !dbg !3371
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !3371

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !3371

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub128 = sub i64 %33, 1, !dbg !3371
  %and129 = and i64 %sub128, 549755813888, !dbg !3371
  %tobool130 = icmp ne i64 %and129, 0, !dbg !3371
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !3371

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !3371

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub133 = sub i64 %34, 1, !dbg !3371
  %and134 = and i64 %sub133, 274877906944, !dbg !3371
  %tobool135 = icmp ne i64 %and134, 0, !dbg !3371
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !3371

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !3371

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub138 = sub i64 %35, 1, !dbg !3371
  %and139 = and i64 %sub138, 137438953472, !dbg !3371
  %tobool140 = icmp ne i64 %and139, 0, !dbg !3371
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !3371

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !3371

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub143 = sub i64 %36, 1, !dbg !3371
  %and144 = and i64 %sub143, 68719476736, !dbg !3371
  %tobool145 = icmp ne i64 %and144, 0, !dbg !3371
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !3371

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !3371

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub148 = sub i64 %37, 1, !dbg !3371
  %and149 = and i64 %sub148, 34359738368, !dbg !3371
  %tobool150 = icmp ne i64 %and149, 0, !dbg !3371
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !3371

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !3371

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub153 = sub i64 %38, 1, !dbg !3371
  %and154 = and i64 %sub153, 17179869184, !dbg !3371
  %tobool155 = icmp ne i64 %and154, 0, !dbg !3371
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !3371

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !3371

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub158 = sub i64 %39, 1, !dbg !3371
  %and159 = and i64 %sub158, 8589934592, !dbg !3371
  %tobool160 = icmp ne i64 %and159, 0, !dbg !3371
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !3371

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !3371

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub163 = sub i64 %40, 1, !dbg !3371
  %and164 = and i64 %sub163, 4294967296, !dbg !3371
  %tobool165 = icmp ne i64 %and164, 0, !dbg !3371
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !3371

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !3371

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub168 = sub i64 %41, 1, !dbg !3371
  %and169 = and i64 %sub168, 2147483648, !dbg !3371
  %tobool170 = icmp ne i64 %and169, 0, !dbg !3371
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !3371

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !3371

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub173 = sub i64 %42, 1, !dbg !3371
  %and174 = and i64 %sub173, 1073741824, !dbg !3371
  %tobool175 = icmp ne i64 %and174, 0, !dbg !3371
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !3371

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !3371

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub178 = sub i64 %43, 1, !dbg !3371
  %and179 = and i64 %sub178, 536870912, !dbg !3371
  %tobool180 = icmp ne i64 %and179, 0, !dbg !3371
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !3371

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !3371

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub183 = sub i64 %44, 1, !dbg !3371
  %and184 = and i64 %sub183, 268435456, !dbg !3371
  %tobool185 = icmp ne i64 %and184, 0, !dbg !3371
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !3371

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !3371

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub188 = sub i64 %45, 1, !dbg !3371
  %and189 = and i64 %sub188, 134217728, !dbg !3371
  %tobool190 = icmp ne i64 %and189, 0, !dbg !3371
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !3371

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !3371

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub193 = sub i64 %46, 1, !dbg !3371
  %and194 = and i64 %sub193, 67108864, !dbg !3371
  %tobool195 = icmp ne i64 %and194, 0, !dbg !3371
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !3371

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !3371

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub198 = sub i64 %47, 1, !dbg !3371
  %and199 = and i64 %sub198, 33554432, !dbg !3371
  %tobool200 = icmp ne i64 %and199, 0, !dbg !3371
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !3371

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !3371

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub203 = sub i64 %48, 1, !dbg !3371
  %and204 = and i64 %sub203, 16777216, !dbg !3371
  %tobool205 = icmp ne i64 %and204, 0, !dbg !3371
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !3371

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !3371

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub208 = sub i64 %49, 1, !dbg !3371
  %and209 = and i64 %sub208, 8388608, !dbg !3371
  %tobool210 = icmp ne i64 %and209, 0, !dbg !3371
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !3371

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !3371

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub213 = sub i64 %50, 1, !dbg !3371
  %and214 = and i64 %sub213, 4194304, !dbg !3371
  %tobool215 = icmp ne i64 %and214, 0, !dbg !3371
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !3371

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !3371

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub218 = sub i64 %51, 1, !dbg !3371
  %and219 = and i64 %sub218, 2097152, !dbg !3371
  %tobool220 = icmp ne i64 %and219, 0, !dbg !3371
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !3371

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !3371

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub223 = sub i64 %52, 1, !dbg !3371
  %and224 = and i64 %sub223, 1048576, !dbg !3371
  %tobool225 = icmp ne i64 %and224, 0, !dbg !3371
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !3371

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !3371

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub228 = sub i64 %53, 1, !dbg !3371
  %and229 = and i64 %sub228, 524288, !dbg !3371
  %tobool230 = icmp ne i64 %and229, 0, !dbg !3371
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !3371

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !3371

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub233 = sub i64 %54, 1, !dbg !3371
  %and234 = and i64 %sub233, 262144, !dbg !3371
  %tobool235 = icmp ne i64 %and234, 0, !dbg !3371
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !3371

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !3371

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub238 = sub i64 %55, 1, !dbg !3371
  %and239 = and i64 %sub238, 131072, !dbg !3371
  %tobool240 = icmp ne i64 %and239, 0, !dbg !3371
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !3371

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !3371

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub243 = sub i64 %56, 1, !dbg !3371
  %and244 = and i64 %sub243, 65536, !dbg !3371
  %tobool245 = icmp ne i64 %and244, 0, !dbg !3371
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !3371

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !3371

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub248 = sub i64 %57, 1, !dbg !3371
  %and249 = and i64 %sub248, 32768, !dbg !3371
  %tobool250 = icmp ne i64 %and249, 0, !dbg !3371
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !3371

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !3371

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub253 = sub i64 %58, 1, !dbg !3371
  %and254 = and i64 %sub253, 16384, !dbg !3371
  %tobool255 = icmp ne i64 %and254, 0, !dbg !3371
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !3371

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !3371

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub258 = sub i64 %59, 1, !dbg !3371
  %and259 = and i64 %sub258, 8192, !dbg !3371
  %tobool260 = icmp ne i64 %and259, 0, !dbg !3371
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !3371

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !3371

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub263 = sub i64 %60, 1, !dbg !3371
  %and264 = and i64 %sub263, 4096, !dbg !3371
  %tobool265 = icmp ne i64 %and264, 0, !dbg !3371
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !3371

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !3371

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub268 = sub i64 %61, 1, !dbg !3371
  %and269 = and i64 %sub268, 2048, !dbg !3371
  %tobool270 = icmp ne i64 %and269, 0, !dbg !3371
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !3371

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !3371

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub273 = sub i64 %62, 1, !dbg !3371
  %and274 = and i64 %sub273, 1024, !dbg !3371
  %tobool275 = icmp ne i64 %and274, 0, !dbg !3371
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !3371

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !3371

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub278 = sub i64 %63, 1, !dbg !3371
  %and279 = and i64 %sub278, 512, !dbg !3371
  %tobool280 = icmp ne i64 %and279, 0, !dbg !3371
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !3371

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !3371

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub283 = sub i64 %64, 1, !dbg !3371
  %and284 = and i64 %sub283, 256, !dbg !3371
  %tobool285 = icmp ne i64 %and284, 0, !dbg !3371
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !3371

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !3371

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub288 = sub i64 %65, 1, !dbg !3371
  %and289 = and i64 %sub288, 128, !dbg !3371
  %tobool290 = icmp ne i64 %and289, 0, !dbg !3371
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !3371

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !3371

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub293 = sub i64 %66, 1, !dbg !3371
  %and294 = and i64 %sub293, 64, !dbg !3371
  %tobool295 = icmp ne i64 %and294, 0, !dbg !3371
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !3371

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !3371

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub298 = sub i64 %67, 1, !dbg !3371
  %and299 = and i64 %sub298, 32, !dbg !3371
  %tobool300 = icmp ne i64 %and299, 0, !dbg !3371
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !3371

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !3371

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub303 = sub i64 %68, 1, !dbg !3371
  %and304 = and i64 %sub303, 16, !dbg !3371
  %tobool305 = icmp ne i64 %and304, 0, !dbg !3371
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !3371

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !3371

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub308 = sub i64 %69, 1, !dbg !3371
  %and309 = and i64 %sub308, 8, !dbg !3371
  %tobool310 = icmp ne i64 %and309, 0, !dbg !3371
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !3371

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !3371

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub313 = sub i64 %70, 1, !dbg !3371
  %and314 = and i64 %sub313, 4, !dbg !3371
  %tobool315 = icmp ne i64 %and314, 0, !dbg !3371
  %71 = zext i1 %tobool315 to i64, !dbg !3371
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !3371
  br label %cond.end, !dbg !3371

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !3371
  br label %cond.end317, !dbg !3371

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !3371
  br label %cond.end319, !dbg !3371

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !3371
  br label %cond.end321, !dbg !3371

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !3371
  br label %cond.end323, !dbg !3371

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !3371
  br label %cond.end325, !dbg !3371

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !3371
  br label %cond.end327, !dbg !3371

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !3371
  br label %cond.end329, !dbg !3371

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !3371
  br label %cond.end331, !dbg !3371

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !3371
  br label %cond.end333, !dbg !3371

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !3371
  br label %cond.end335, !dbg !3371

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !3371
  br label %cond.end337, !dbg !3371

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !3371
  br label %cond.end339, !dbg !3371

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !3371
  br label %cond.end341, !dbg !3371

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !3371
  br label %cond.end343, !dbg !3371

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !3371
  br label %cond.end345, !dbg !3371

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !3371
  br label %cond.end347, !dbg !3371

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !3371
  br label %cond.end349, !dbg !3371

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !3371
  br label %cond.end351, !dbg !3371

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !3371
  br label %cond.end353, !dbg !3371

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !3371
  br label %cond.end355, !dbg !3371

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !3371
  br label %cond.end357, !dbg !3371

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !3371
  br label %cond.end359, !dbg !3371

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !3371
  br label %cond.end361, !dbg !3371

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !3371
  br label %cond.end363, !dbg !3371

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !3371
  br label %cond.end365, !dbg !3371

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !3371
  br label %cond.end367, !dbg !3371

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !3371
  br label %cond.end369, !dbg !3371

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !3371
  br label %cond.end371, !dbg !3371

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !3371
  br label %cond.end373, !dbg !3371

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !3371
  br label %cond.end375, !dbg !3371

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !3371
  br label %cond.end377, !dbg !3371

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !3371
  br label %cond.end379, !dbg !3371

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !3371
  br label %cond.end381, !dbg !3371

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !3371
  br label %cond.end383, !dbg !3371

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !3371
  br label %cond.end385, !dbg !3371

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !3371
  br label %cond.end387, !dbg !3371

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !3371
  br label %cond.end389, !dbg !3371

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !3371
  br label %cond.end391, !dbg !3371

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !3371
  br label %cond.end393, !dbg !3371

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !3371
  br label %cond.end395, !dbg !3371

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !3371
  br label %cond.end397, !dbg !3371

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !3371
  br label %cond.end399, !dbg !3371

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !3371
  br label %cond.end401, !dbg !3371

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !3371
  br label %cond.end403, !dbg !3371

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !3371
  br label %cond.end405, !dbg !3371

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !3371
  br label %cond.end407, !dbg !3371

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !3371
  br label %cond.end409, !dbg !3371

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !3371
  br label %cond.end411, !dbg !3371

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !3371
  br label %cond.end413, !dbg !3371

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !3371
  br label %cond.end415, !dbg !3371

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !3371
  br label %cond.end417, !dbg !3371

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !3371
  br label %cond.end419, !dbg !3371

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !3371
  br label %cond.end421, !dbg !3371

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !3371
  br label %cond.end423, !dbg !3371

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !3371
  br label %cond.end425, !dbg !3371

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !3371
  br label %cond.end427, !dbg !3371

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !3371
  br label %cond.end429, !dbg !3371

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !3371
  br label %cond.end431, !dbg !3371

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !3371
  br label %cond.end433, !dbg !3371

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !3371
  br label %cond.end435, !dbg !3371

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !3371
  br label %cond.end437, !dbg !3371

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !3371
  br label %cond.end440, !dbg !3371

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !3371

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !3371
  br label %cond.end444, !dbg !3371

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !3371
  %sub443 = sub i64 %72, 1, !dbg !3371
  %call = call i32 @__ilog2_u64(i64 %sub443) #12, !dbg !3371
  br label %cond.end444, !dbg !3371

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !3371
  %sub446 = sub i32 %cond445, 12, !dbg !3372
  %add = add i32 %sub446, 1, !dbg !3373
  store i32 %add, i32* %retval, align 4, !dbg !3374
  br label %return, !dbg !3374

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !3375
  %dec = add i64 %73, -1, !dbg !3375
  store i64 %dec, i64* %size.addr, align 8, !dbg !3375
  %74 = load i64, i64* %size.addr, align 8, !dbg !3376
  %shr = lshr i64 %74, 12, !dbg !3376
  store i64 %shr, i64* %size.addr, align 8, !dbg !3376
  %75 = load i64, i64* %size.addr, align 8, !dbg !3377
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3354
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !3378
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !3379
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #14, !dbg !3378, !srcloc !3380
  store i32 %78, i32* %bitpos.i, align 4, !dbg !3378
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !3381
  %add.i = add i32 %79, 1, !dbg !3382
  store i32 %add.i, i32* %retval, align 4, !dbg !3383
  br label %return, !dbg !3383

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !3384
  ret i32 %80, !dbg !3384
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #8 !dbg !3385 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3346, metadata !DIExpression()), !dbg !3389
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3353, metadata !DIExpression()), !dbg !3391
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3392, metadata !DIExpression()), !dbg !3393
  %0 = load i64, i64* %n.addr, align 8, !dbg !3394
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3391
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !3395
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !3396
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #14, !dbg !3395, !srcloc !3380
  store i32 %3, i32* %bitpos.i, align 4, !dbg !3395
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !3397
  %add.i = add i32 %4, 1, !dbg !3398
  %sub = sub i32 %add.i, 1, !dbg !3399
  ret i32 %sub, !dbg !3400
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #2 !dbg !3401 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !3405, metadata !DIExpression()), !dbg !3406
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !3407, metadata !DIExpression()), !dbg !3408
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3409, metadata !DIExpression()), !dbg !3410
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3411, metadata !DIExpression()), !dbg !3412
  %0 = load i8*, i8** %object.addr, align 8, !dbg !3413
  ret i8* %0, !dbg !3414
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_evaluate_integer(i8*, i8*, %struct.acpi_object_list*, i64*) #1

; Function Attrs: noredzone
declare dso_local void @acpi_exception(i8*, i32, i32, i8*, ...) #1

; Function Attrs: noredzone
declare dso_local i8* @power_supply_get_drvdata(%struct.power_supply*) #1

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_driver_data(%struct.acpi_device* %d) #2 !dbg !3415 {
entry:
  %d.addr = alloca %struct.acpi_device*, align 8
  store %struct.acpi_device* %d, %struct.acpi_device** %d.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %d.addr, metadata !3418, metadata !DIExpression()), !dbg !3419
  %0 = load %struct.acpi_device*, %struct.acpi_device** %d.addr, align 8, !dbg !3420
  %driver_data = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %0, i32 0, i32 20, !dbg !3421
  %1 = load i8*, i8** %driver_data, align 8, !dbg !3421
  ret i8* %1, !dbg !3422
}

; Function Attrs: noredzone
declare dso_local void @power_supply_unregister(%struct.power_supply*) #1

; Function Attrs: noredzone
declare dso_local i32 @unregister_acpi_notifier(%struct.notifier_block*) #1

; Function Attrs: noredzone
declare dso_local void @msleep(i32) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_bus_generate_netlink_event(i8*, i8*, i8 zeroext, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_name(%struct.device* %dev) #2 !dbg !3423 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3426, metadata !DIExpression()), !dbg !3427
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3428
  %init_name = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 3, !dbg !3430
  %1 = load i8*, i8** %init_name, align 8, !dbg !3430
  %tobool = icmp ne i8* %1, null, !dbg !3428
  br i1 %tobool, label %if.then, label %if.end, !dbg !3431

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3432
  %init_name1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 3, !dbg !3433
  %3 = load i8*, i8** %init_name1, align 8, !dbg !3433
  store i8* %3, i8** %retval, align 8, !dbg !3434
  br label %return, !dbg !3434

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3435
  %kobj = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0, !dbg !3436
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #9, !dbg !3437
  store i8* %call, i8** %retval, align 8, !dbg !3438
  br label %return, !dbg !3438

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !3439
  ret i8* %5, !dbg !3439
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_notifier_call_chain(%struct.acpi_device*, i32, i32) #1

; Function Attrs: noredzone
declare dso_local i32 @kobject_uevent(%struct.kobject*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #2 !dbg !3440 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !3445, metadata !DIExpression()), !dbg !3446
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !3447
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !3448
  %1 = load i8*, i8** %name, align 8, !dbg !3448
  ret i8* %1, !dbg !3449
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ac_resume(%struct.device* %dev) #2 !dbg !3450 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %ac = alloca %struct.acpi_ac*, align 8
  %old_state = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3451, metadata !DIExpression()), !dbg !3452
  call void @llvm.dbg.declare(metadata %struct.acpi_ac** %ac, metadata !3453, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.declare(metadata i32* %old_state, metadata !3455, metadata !DIExpression()), !dbg !3456
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3457
  %tobool = icmp ne %struct.device* %0, null, !dbg !3457
  br i1 %tobool, label %if.end, label %if.then, !dbg !3459

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !3460
  br label %return, !dbg !3460

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3461, metadata !DIExpression()), !dbg !3463
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3463
  %2 = bitcast %struct.device* %1 to i8*, !dbg !3463
  store i8* %2, i8** %__mptr, align 8, !dbg !3463
  br label %do.body, !dbg !3463

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !3464

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !3463
  %add.ptr = getelementptr i8, i8* %3, i64 -608, !dbg !3463
  %4 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !3463
  store %struct.acpi_device* %4, %struct.acpi_device** %tmp, align 8, !dbg !3464
  %5 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !3463
  %call = call i8* @acpi_driver_data(%struct.acpi_device* %5) #9, !dbg !3466
  %6 = bitcast i8* %call to %struct.acpi_ac*, !dbg !3466
  store %struct.acpi_ac* %6, %struct.acpi_ac** %ac, align 8, !dbg !3467
  %7 = load %struct.acpi_ac*, %struct.acpi_ac** %ac, align 8, !dbg !3468
  %tobool1 = icmp ne %struct.acpi_ac* %7, null, !dbg !3468
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !3470

if.then2:                                         ; preds = %do.end
  store i32 -22, i32* %retval, align 4, !dbg !3471
  br label %return, !dbg !3471

if.end3:                                          ; preds = %do.end
  %8 = load %struct.acpi_ac*, %struct.acpi_ac** %ac, align 8, !dbg !3472
  %state = getelementptr inbounds %struct.acpi_ac, %struct.acpi_ac* %8, i32 0, i32 3, !dbg !3473
  %9 = load i64, i64* %state, align 8, !dbg !3473
  %conv = trunc i64 %9 to i32, !dbg !3472
  store i32 %conv, i32* %old_state, align 4, !dbg !3474
  %10 = load %struct.acpi_ac*, %struct.acpi_ac** %ac, align 8, !dbg !3475
  %call4 = call i32 @acpi_ac_get_state(%struct.acpi_ac* %10) #9, !dbg !3477
  %tobool5 = icmp ne i32 %call4, 0, !dbg !3477
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !3478

if.then6:                                         ; preds = %if.end3
  store i32 0, i32* %retval, align 4, !dbg !3479
  br label %return, !dbg !3479

if.end7:                                          ; preds = %if.end3
  %11 = load i32, i32* %old_state, align 4, !dbg !3480
  %conv8 = zext i32 %11 to i64, !dbg !3480
  %12 = load %struct.acpi_ac*, %struct.acpi_ac** %ac, align 8, !dbg !3482
  %state9 = getelementptr inbounds %struct.acpi_ac, %struct.acpi_ac* %12, i32 0, i32 3, !dbg !3483
  %13 = load i64, i64* %state9, align 8, !dbg !3483
  %cmp = icmp ne i64 %conv8, %13, !dbg !3484
  br i1 %cmp, label %if.then11, label %if.end14, !dbg !3485

if.then11:                                        ; preds = %if.end7
  %14 = load %struct.acpi_ac*, %struct.acpi_ac** %ac, align 8, !dbg !3486
  %charger = getelementptr inbounds %struct.acpi_ac, %struct.acpi_ac* %14, i32 0, i32 0, !dbg !3487
  %15 = load %struct.power_supply*, %struct.power_supply** %charger, align 8, !dbg !3487
  %dev12 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %15, i32 0, i32 7, !dbg !3488
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev12, i32 0, i32 0, !dbg !3489
  %call13 = call i32 @kobject_uevent(%struct.kobject* %kobj, i32 2) #9, !dbg !3490
  br label %if.end14, !dbg !3490

if.end14:                                         ; preds = %if.then11, %if.end7
  store i32 0, i32* %retval, align 4, !dbg !3491
  br label %return, !dbg !3491

return:                                           ; preds = %if.end14, %if.then6, %if.then2, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !3492
  ret i32 %16, !dbg !3492
}

; Function Attrs: noredzone
declare dso_local i32 @dmi_check_system(%struct.dmi_system_id*) #1

; Function Attrs: noredzone
declare dso_local zeroext i1 @acpi_dev_present(i8*, i8*, i64) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_bus_register_driver(%struct.acpi_driver*) #1

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @ac_do_not_check_pmic_quirk(%struct.dmi_system_id* %d) #0 section ".init.text" !dbg !3493 {
entry:
  %d.addr = alloca %struct.dmi_system_id*, align 8
  store %struct.dmi_system_id* %d, %struct.dmi_system_id** %d.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dmi_system_id** %d.addr, metadata !3494, metadata !DIExpression()), !dbg !3495
  store i32 0, i32* @ac_check_pmic, align 4, !dbg !3496
  ret i32 0, !dbg !3497
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @thinkpad_e530_quirk(%struct.dmi_system_id* %d) #0 section ".init.text" !dbg !3498 {
entry:
  %d.addr = alloca %struct.dmi_system_id*, align 8
  store %struct.dmi_system_id* %d, %struct.dmi_system_id** %d.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dmi_system_id** %d.addr, metadata !3499, metadata !DIExpression()), !dbg !3500
  store i32 1000, i32* @ac_sleep_before_get_state_ms, align 4, !dbg !3501
  ret i32 0, !dbg !3502
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
!llvm.module.flags = !{!2715, !2716, !2717, !2718}
!llvm.ident = !{!2719}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author169", scope: !2, file: !3, line: 34, type: !2712, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !187, globals: !2639, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/ac.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !64, !80, !92, !169, !176}
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
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "power_supply_type", file: !65, line: 176, baseType: !7, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/power_supply.h", directory: "/home/lizy2001/genbc/linux")
!66 = !{!67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79}
!67 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_UNKNOWN", value: 0, isUnsigned: true)
!68 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_BATTERY", value: 1, isUnsigned: true)
!69 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_UPS", value: 2, isUnsigned: true)
!70 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_MAINS", value: 3, isUnsigned: true)
!71 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_USB", value: 4, isUnsigned: true)
!72 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_USB_DCP", value: 5, isUnsigned: true)
!73 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_USB_CDP", value: 6, isUnsigned: true)
!74 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_USB_ACA", value: 7, isUnsigned: true)
!75 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_USB_TYPE_C", value: 8, isUnsigned: true)
!76 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_USB_PD", value: 9, isUnsigned: true)
!77 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_USB_PD_DRP", value: 10, isUnsigned: true)
!78 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_APPLE_BRICK_ID", value: 11, isUnsigned: true)
!79 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_WIRELESS", value: 12, isUnsigned: true)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "power_supply_usb_type", file: !65, line: 192, baseType: !7, size: 32, elements: !81)
!81 = !{!82, !83, !84, !85, !86, !87, !88, !89, !90, !91}
!82 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_UNKNOWN", value: 0, isUnsigned: true)
!83 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_SDP", value: 1, isUnsigned: true)
!84 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_DCP", value: 2, isUnsigned: true)
!85 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_CDP", value: 3, isUnsigned: true)
!86 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_ACA", value: 4, isUnsigned: true)
!87 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_C", value: 5, isUnsigned: true)
!88 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_PD", value: 6, isUnsigned: true)
!89 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_PD_DRP", value: 7, isUnsigned: true)
!90 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_PD_PPS", value: 8, isUnsigned: true)
!91 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_APPLE_BRICK_ID", value: 9, isUnsigned: true)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "power_supply_property", file: !65, line: 96, baseType: !7, size: 32, elements: !93)
!93 = !{!94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168}
!94 = !DIEnumerator(name: "POWER_SUPPLY_PROP_STATUS", value: 0, isUnsigned: true)
!95 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_TYPE", value: 1, isUnsigned: true)
!96 = !DIEnumerator(name: "POWER_SUPPLY_PROP_HEALTH", value: 2, isUnsigned: true)
!97 = !DIEnumerator(name: "POWER_SUPPLY_PROP_PRESENT", value: 3, isUnsigned: true)
!98 = !DIEnumerator(name: "POWER_SUPPLY_PROP_ONLINE", value: 4, isUnsigned: true)
!99 = !DIEnumerator(name: "POWER_SUPPLY_PROP_AUTHENTIC", value: 5, isUnsigned: true)
!100 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TECHNOLOGY", value: 6, isUnsigned: true)
!101 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CYCLE_COUNT", value: 7, isUnsigned: true)
!102 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_MAX", value: 8, isUnsigned: true)
!103 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_MIN", value: 9, isUnsigned: true)
!104 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_MAX_DESIGN", value: 10, isUnsigned: true)
!105 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_MIN_DESIGN", value: 11, isUnsigned: true)
!106 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_NOW", value: 12, isUnsigned: true)
!107 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_AVG", value: 13, isUnsigned: true)
!108 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_OCV", value: 14, isUnsigned: true)
!109 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_BOOT", value: 15, isUnsigned: true)
!110 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CURRENT_MAX", value: 16, isUnsigned: true)
!111 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CURRENT_NOW", value: 17, isUnsigned: true)
!112 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CURRENT_AVG", value: 18, isUnsigned: true)
!113 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CURRENT_BOOT", value: 19, isUnsigned: true)
!114 = !DIEnumerator(name: "POWER_SUPPLY_PROP_POWER_NOW", value: 20, isUnsigned: true)
!115 = !DIEnumerator(name: "POWER_SUPPLY_PROP_POWER_AVG", value: 21, isUnsigned: true)
!116 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_FULL_DESIGN", value: 22, isUnsigned: true)
!117 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_EMPTY_DESIGN", value: 23, isUnsigned: true)
!118 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_FULL", value: 24, isUnsigned: true)
!119 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_EMPTY", value: 25, isUnsigned: true)
!120 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_NOW", value: 26, isUnsigned: true)
!121 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_AVG", value: 27, isUnsigned: true)
!122 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_COUNTER", value: 28, isUnsigned: true)
!123 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT", value: 29, isUnsigned: true)
!124 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT_MAX", value: 30, isUnsigned: true)
!125 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CONSTANT_CHARGE_VOLTAGE", value: 31, isUnsigned: true)
!126 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CONSTANT_CHARGE_VOLTAGE_MAX", value: 32, isUnsigned: true)
!127 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_CONTROL_LIMIT", value: 33, isUnsigned: true)
!128 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_CONTROL_LIMIT_MAX", value: 34, isUnsigned: true)
!129 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_CONTROL_START_THRESHOLD", value: 35, isUnsigned: true)
!130 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_CONTROL_END_THRESHOLD", value: 36, isUnsigned: true)
!131 = !DIEnumerator(name: "POWER_SUPPLY_PROP_INPUT_CURRENT_LIMIT", value: 37, isUnsigned: true)
!132 = !DIEnumerator(name: "POWER_SUPPLY_PROP_INPUT_VOLTAGE_LIMIT", value: 38, isUnsigned: true)
!133 = !DIEnumerator(name: "POWER_SUPPLY_PROP_INPUT_POWER_LIMIT", value: 39, isUnsigned: true)
!134 = !DIEnumerator(name: "POWER_SUPPLY_PROP_ENERGY_FULL_DESIGN", value: 40, isUnsigned: true)
!135 = !DIEnumerator(name: "POWER_SUPPLY_PROP_ENERGY_EMPTY_DESIGN", value: 41, isUnsigned: true)
!136 = !DIEnumerator(name: "POWER_SUPPLY_PROP_ENERGY_FULL", value: 42, isUnsigned: true)
!137 = !DIEnumerator(name: "POWER_SUPPLY_PROP_ENERGY_EMPTY", value: 43, isUnsigned: true)
!138 = !DIEnumerator(name: "POWER_SUPPLY_PROP_ENERGY_NOW", value: 44, isUnsigned: true)
!139 = !DIEnumerator(name: "POWER_SUPPLY_PROP_ENERGY_AVG", value: 45, isUnsigned: true)
!140 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CAPACITY", value: 46, isUnsigned: true)
!141 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CAPACITY_ALERT_MIN", value: 47, isUnsigned: true)
!142 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CAPACITY_ALERT_MAX", value: 48, isUnsigned: true)
!143 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CAPACITY_ERROR_MARGIN", value: 49, isUnsigned: true)
!144 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CAPACITY_LEVEL", value: 50, isUnsigned: true)
!145 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP", value: 51, isUnsigned: true)
!146 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP_MAX", value: 52, isUnsigned: true)
!147 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP_MIN", value: 53, isUnsigned: true)
!148 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP_ALERT_MIN", value: 54, isUnsigned: true)
!149 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP_ALERT_MAX", value: 55, isUnsigned: true)
!150 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP_AMBIENT", value: 56, isUnsigned: true)
!151 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP_AMBIENT_ALERT_MIN", value: 57, isUnsigned: true)
!152 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP_AMBIENT_ALERT_MAX", value: 58, isUnsigned: true)
!153 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TIME_TO_EMPTY_NOW", value: 59, isUnsigned: true)
!154 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TIME_TO_EMPTY_AVG", value: 60, isUnsigned: true)
!155 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TIME_TO_FULL_NOW", value: 61, isUnsigned: true)
!156 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TIME_TO_FULL_AVG", value: 62, isUnsigned: true)
!157 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TYPE", value: 63, isUnsigned: true)
!158 = !DIEnumerator(name: "POWER_SUPPLY_PROP_USB_TYPE", value: 64, isUnsigned: true)
!159 = !DIEnumerator(name: "POWER_SUPPLY_PROP_SCOPE", value: 65, isUnsigned: true)
!160 = !DIEnumerator(name: "POWER_SUPPLY_PROP_PRECHARGE_CURRENT", value: 66, isUnsigned: true)
!161 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_TERM_CURRENT", value: 67, isUnsigned: true)
!162 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CALIBRATE", value: 68, isUnsigned: true)
!163 = !DIEnumerator(name: "POWER_SUPPLY_PROP_MANUFACTURE_YEAR", value: 69, isUnsigned: true)
!164 = !DIEnumerator(name: "POWER_SUPPLY_PROP_MANUFACTURE_MONTH", value: 70, isUnsigned: true)
!165 = !DIEnumerator(name: "POWER_SUPPLY_PROP_MANUFACTURE_DAY", value: 71, isUnsigned: true)
!166 = !DIEnumerator(name: "POWER_SUPPLY_PROP_MODEL_NAME", value: 72, isUnsigned: true)
!167 = !DIEnumerator(name: "POWER_SUPPLY_PROP_MANUFACTURER", value: 73, isUnsigned: true)
!168 = !DIEnumerator(name: "POWER_SUPPLY_PROP_SERIAL_NUMBER", value: 74, isUnsigned: true)
!169 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !170, line: 305, baseType: !7, size: 32, elements: !171)
!170 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!171 = !{!172, !173, !174, !175}
!172 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!173 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!174 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!175 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!176 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobject_action", file: !177, line: 53, baseType: !7, size: 32, elements: !178)
!177 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!178 = !{!179, !180, !181, !182, !183, !184, !185, !186}
!179 = !DIEnumerator(name: "KOBJ_ADD", value: 0, isUnsigned: true)
!180 = !DIEnumerator(name: "KOBJ_REMOVE", value: 1, isUnsigned: true)
!181 = !DIEnumerator(name: "KOBJ_CHANGE", value: 2, isUnsigned: true)
!182 = !DIEnumerator(name: "KOBJ_MOVE", value: 3, isUnsigned: true)
!183 = !DIEnumerator(name: "KOBJ_ONLINE", value: 4, isUnsigned: true)
!184 = !DIEnumerator(name: "KOBJ_OFFLINE", value: 5, isUnsigned: true)
!185 = !DIEnumerator(name: "KOBJ_BIND", value: 6, isUnsigned: true)
!186 = !DIEnumerator(name: "KOBJ_UNBIND", value: 7, isUnsigned: true)
!187 = !{!188, !190, !191, !192, !198, !199, !200, !2631, !194, !2337}
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !189, line: 148, baseType: !7)
!189 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!190 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !193, line: 421, baseType: !194)
!193 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !195, line: 21, baseType: !196)
!195 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !197, line: 27, baseType: !7)
!197 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!198 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!199 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_ac", file: !3, line: 81, size: 1152, elements: !202)
!202 = !{!203, !2335, !2336, !2618, !2619}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "charger", scope: !201, file: !3, line: 82, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "power_supply", file: !65, line: 273, size: 7168, elements: !206)
!206 = !{!207, !257, !260, !261, !262, !263, !2312, !2313, !2314, !2315, !2324, !2325, !2326, !2327, !2328, !2329, !2332}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !205, file: !65, line: 274, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "power_supply_desc", file: !65, line: 233, size: 768, elements: !211)
!211 = !{!212, !216, !217, !220, !225, !228, !229, !238, !244, !248, !252, !253, !256}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !210, file: !65, line: 234, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!215 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !210, file: !65, line: 235, baseType: !64, size: 32, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "usb_types", scope: !210, file: !65, line: 236, baseType: !218, size: 64, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "num_usb_types", scope: !210, file: !65, line: 237, baseType: !221, size: 64, offset: 192)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !189, line: 55, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !223, line: 72, baseType: !224)
!223 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !223, line: 16, baseType: !198)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !210, file: !65, line: 238, baseType: !226, size: 64, offset: 256)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "num_properties", scope: !210, file: !65, line: 239, baseType: !221, size: 64, offset: 320)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "get_property", scope: !210, file: !65, line: 247, baseType: !230, size: 64, offset: 384)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{!190, !204, !92, !233}
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "power_supply_propval", file: !65, line: 209, size: 64, elements: !235)
!235 = !{!236, !237}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "intval", scope: !234, file: !65, line: 210, baseType: !190, size: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "strval", scope: !234, file: !65, line: 211, baseType: !213, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !210, file: !65, line: 250, baseType: !239, size: 64, offset: 448)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!190, !204, !92, !242}
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "property_is_writeable", scope: !210, file: !65, line: 258, baseType: !245, size: 64, offset: 512)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{!190, !204, !92}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "external_power_changed", scope: !210, file: !65, line: 260, baseType: !249, size: 64, offset: 576)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{null, !204}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "set_charged", scope: !210, file: !65, line: 261, baseType: !249, size: 64, offset: 640)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "no_thermal", scope: !210, file: !65, line: 268, baseType: !254, size: 8, offset: 704)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !189, line: 30, baseType: !255)
!255 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "use_for_apm", scope: !210, file: !65, line: 270, baseType: !190, size: 32, offset: 736)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "supplied_to", scope: !205, file: !65, line: 276, baseType: !258, size: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "num_supplicants", scope: !205, file: !65, line: 277, baseType: !221, size: 64, offset: 128)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "supplied_from", scope: !205, file: !65, line: 279, baseType: !258, size: 64, offset: 192)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "num_supplies", scope: !205, file: !65, line: 280, baseType: !221, size: 64, offset: 256)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !205, file: !65, line: 281, baseType: !264, size: 64, offset: 320)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !266, line: 51, size: 1344, elements: !267)
!266 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!267 = !{!268, !269, !271, !272, !2296, !2305, !2306, !2307, !2308, !2309, !2310, !2311}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !265, file: !266, line: 52, baseType: !213, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !265, file: !266, line: 53, baseType: !270, size: 32, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !266, line: 28, baseType: !194)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !265, file: !266, line: 54, baseType: !213, size: 64, offset: 128)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !265, file: !266, line: 55, baseType: !273, size: 192, offset: 192)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !274, line: 17, size: 192, elements: !275)
!274 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!275 = !{!276, !278, !2295}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !273, file: !274, line: 18, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !273, file: !274, line: 19, baseType: !279, size: 64, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !274, line: 110, size: 1152, elements: !282)
!282 = !{!283, !287, !291, !297, !2237, !2241, !2245, !2250, !2254, !2255, !2259, !2263, !2267, !2278, !2279, !2280, !2281, !2291}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !281, file: !274, line: 111, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{!277, !277}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !281, file: !274, line: 112, baseType: !288, size: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{null, !277}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !281, file: !274, line: 113, baseType: !292, size: 64, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{!254, !295}
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !273)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !281, file: !274, line: 114, baseType: !298, size: 64, offset: 192)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{!301, !295, !303}
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !305)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !306)
!306 = !{!307, !1795, !1797, !1800, !1801, !1852, !1949, !1950, !1951, !1952, !1953, !1962, !2067, !2080, !2162, !2163, !2167, !2169, !2170, !2171, !2175, !2181, !2182, !2185, !2186, !2187, !2190, !2191, !2192, !2193, !2225, !2226, !2227, !2230, !2233, !2234, !2235, !2236}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !305, file: !30, line: 462, baseType: !308, size: 512)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !177, line: 64, size: 512, elements: !309)
!309 = !{!310, !311, !317, !319, !378, !1632, !1785, !1790, !1791, !1792, !1793, !1794}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !308, file: !177, line: 65, baseType: !213, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !308, file: !177, line: 66, baseType: !312, size: 128, offset: 64)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !189, line: 178, size: 128, elements: !313)
!313 = !{!314, !316}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !312, file: !189, line: 179, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !312, file: !189, line: 179, baseType: !315, size: 64, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !308, file: !177, line: 67, baseType: !318, size: 64, offset: 192)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !308, file: !177, line: 68, baseType: !320, size: 64, offset: 256)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !177, line: 192, size: 704, elements: !322)
!322 = !{!323, !324, !340, !341}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !321, file: !177, line: 193, baseType: !312, size: 128)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !321, file: !177, line: 194, baseType: !325, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !326, line: 83, baseType: !327)
!326 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !326, line: 71, elements: !328)
!328 = !{!329}
!329 = !DIDerivedType(tag: DW_TAG_member, scope: !327, file: !326, line: 72, baseType: !330)
!330 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !327, file: !326, line: 72, elements: !331)
!331 = !{!332}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !330, file: !326, line: 73, baseType: !333)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !326, line: 20, elements: !334)
!334 = !{!335}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !333, file: !326, line: 21, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !337, line: 25, baseType: !338)
!337 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !337, line: 25, elements: !339)
!339 = !{}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !321, file: !177, line: 195, baseType: !308, size: 512, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !321, file: !177, line: 196, baseType: !342, size: 64, offset: 640)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !344)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !177, line: 156, size: 192, elements: !345)
!345 = !{!346, !351, !356}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !344, file: !177, line: 157, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !348)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DISubroutineType(types: !350)
!350 = !{!190, !320, !318}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !344, file: !177, line: 158, baseType: !352, size: 64, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !353)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{!213, !320, !318}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !344, file: !177, line: 159, baseType: !357, size: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !358)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DISubroutineType(types: !360)
!360 = !{!190, !320, !318, !361}
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !177, line: 148, size: 20736, elements: !363)
!363 = !{!364, !368, !372, !373, !377}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !362, file: !177, line: 149, baseType: !365, size: 192)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 192, elements: !366)
!366 = !{!367}
!367 = !DISubrange(count: 3)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !362, file: !177, line: 150, baseType: !369, size: 4096, offset: 192)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 4096, elements: !370)
!370 = !{!371}
!371 = !DISubrange(count: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !362, file: !177, line: 151, baseType: !190, size: 32, offset: 4288)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !362, file: !177, line: 152, baseType: !374, size: 16384, offset: 4320)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 16384, elements: !375)
!375 = !{!376}
!376 = !DISubrange(count: 2048)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !362, file: !177, line: 153, baseType: !190, size: 32, offset: 20704)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !308, file: !177, line: 69, baseType: !379, size: 64, offset: 320)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !177, line: 138, size: 448, elements: !381)
!381 = !{!382, !386, !410, !412, !1580, !1611, !1615}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !380, file: !177, line: 139, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DISubroutineType(types: !385)
!385 = !{null, !318}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !380, file: !177, line: 140, baseType: !387, size: 64, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !389)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !390, line: 230, size: 128, elements: !391)
!390 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!391 = !{!392, !406}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !389, file: !390, line: 231, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DISubroutineType(types: !395)
!395 = !{!396, !318, !399, !259}
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !189, line: 60, baseType: !397)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !223, line: 73, baseType: !398)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !223, line: 15, baseType: !199)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !390, line: 30, size: 128, elements: !401)
!401 = !{!402, !403}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !400, file: !390, line: 31, baseType: !213, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !400, file: !390, line: 32, baseType: !404, size: 16, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !189, line: 19, baseType: !405)
!405 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !389, file: !390, line: 232, baseType: !407, size: 64, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DISubroutineType(types: !409)
!409 = !{!396, !318, !399, !213, !221}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !380, file: !177, line: 141, baseType: !411, size: 64, offset: 128)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !380, file: !177, line: 142, baseType: !413, size: 64, offset: 192)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !416)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !390, line: 84, size: 320, elements: !417)
!417 = !{!418, !419, !423, !1577, !1578}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !416, file: !390, line: 85, baseType: !213, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !416, file: !390, line: 86, baseType: !420, size: 64, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{!404, !318, !399, !190}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !416, file: !390, line: 88, baseType: !424, size: 64, offset: 128)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DISubroutineType(types: !426)
!426 = !{!404, !318, !427, !190}
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !390, line: 168, size: 448, elements: !429)
!429 = !{!430, !431, !432, !433, !443, !444}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !428, file: !390, line: 169, baseType: !400, size: 128)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !428, file: !390, line: 170, baseType: !221, size: 64, offset: 128)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !428, file: !390, line: 171, baseType: !191, size: 64, offset: 192)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !428, file: !390, line: 172, baseType: !434, size: 64, offset: 256)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DISubroutineType(types: !436)
!436 = !{!396, !437, !318, !427, !259, !440, !221}
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !439, line: 526, flags: DIFlagFwdDecl)
!439 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !189, line: 46, baseType: !441)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !223, line: 88, baseType: !442)
!442 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !428, file: !390, line: 174, baseType: !434, size: 64, offset: 320)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !428, file: !390, line: 176, baseType: !445, size: 64, offset: 384)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{!190, !437, !318, !427, !448}
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !450, line: 305, size: 1472, elements: !451)
!450 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!451 = !{!452, !453, !454, !455, !456, !464, !465, !1551, !1557, !1558, !1563, !1564, !1567, !1571, !1572, !1573, !1574, !1575}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !449, file: !450, line: 308, baseType: !198, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !449, file: !450, line: 309, baseType: !198, size: 64, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !449, file: !450, line: 313, baseType: !448, size: 64, offset: 128)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !449, file: !450, line: 313, baseType: !448, size: 64, offset: 192)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !449, file: !450, line: 315, baseType: !457, size: 192, align: 64, offset: 256)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !458, line: 24, size: 192, align: 64, elements: !459)
!458 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!459 = !{!460, !461, !463}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !457, file: !458, line: 25, baseType: !198, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !457, file: !458, line: 26, baseType: !462, size: 64, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !457, file: !458, line: 27, baseType: !462, size: 64, offset: 128)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !449, file: !450, line: 323, baseType: !198, size: 64, offset: 448)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !449, file: !450, line: 327, baseType: !466, size: 64, offset: 512)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !450, line: 388, size: 7296, elements: !468)
!468 = !{!469, !1547}
!469 = !DIDerivedType(tag: DW_TAG_member, scope: !467, file: !450, line: 389, baseType: !470, size: 7296)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !467, file: !450, line: 389, size: 7296, elements: !471)
!471 = !{!472, !473, !477, !481, !485, !486, !487, !488, !489, !497, !502, !503, !504, !505, !514, !515, !516, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !551, !559, !562, !610, !611, !1517, !1518, !1521, !1525, !1526, !1529, !1530, !1531, !1534, !1546}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !470, file: !450, line: 390, baseType: !448, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !470, file: !450, line: 391, baseType: !474, size: 64, offset: 64)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !458, line: 31, size: 64, elements: !475)
!475 = !{!476}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !474, file: !458, line: 32, baseType: !462, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !470, file: !450, line: 392, baseType: !478, size: 64, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !195, line: 23, baseType: !479)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !197, line: 31, baseType: !480)
!480 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !470, file: !450, line: 394, baseType: !482, size: 64, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!198, !437, !198, !198, !198, !198}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !470, file: !450, line: 398, baseType: !198, size: 64, offset: 256)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !470, file: !450, line: 399, baseType: !198, size: 64, offset: 320)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !470, file: !450, line: 405, baseType: !198, size: 64, offset: 384)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !470, file: !450, line: 406, baseType: !198, size: 64, offset: 448)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !470, file: !450, line: 407, baseType: !490, size: 64, offset: 512)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !439, line: 286, baseType: !492)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !439, line: 286, size: 64, elements: !493)
!493 = !{!494}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !492, file: !439, line: 286, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !496, line: 18, baseType: !198)
!496 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!497 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !470, file: !450, line: 416, baseType: !498, size: 32, offset: 576)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !189, line: 168, baseType: !499)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !189, line: 166, size: 32, elements: !500)
!500 = !{!501}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !499, file: !189, line: 167, baseType: !190, size: 32)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !470, file: !450, line: 428, baseType: !498, size: 32, offset: 608)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !470, file: !450, line: 437, baseType: !498, size: 32, offset: 640)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !470, file: !450, line: 447, baseType: !498, size: 32, offset: 672)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !470, file: !450, line: 450, baseType: !506, size: 64, offset: 704)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !507, line: 13, baseType: !508)
!507 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !189, line: 175, baseType: !509)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !189, line: 173, size: 64, elements: !510)
!510 = !{!511}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !509, file: !189, line: 174, baseType: !512, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !195, line: 22, baseType: !513)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !197, line: 30, baseType: !442)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !470, file: !450, line: 452, baseType: !190, size: 32, offset: 768)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !470, file: !450, line: 454, baseType: !325, offset: 800)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !470, file: !450, line: 457, baseType: !517, size: 256, offset: 832)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !518, line: 35, size: 256, elements: !519)
!518 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!519 = !{!520, !521, !522, !524}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !517, file: !518, line: 36, baseType: !506, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !517, file: !518, line: 42, baseType: !506, size: 64, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !517, file: !518, line: 46, baseType: !523, offset: 128)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !326, line: 29, baseType: !333)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !517, file: !518, line: 47, baseType: !312, size: 128, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !470, file: !450, line: 459, baseType: !312, size: 128, offset: 1088)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !470, file: !450, line: 466, baseType: !198, size: 64, offset: 1216)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !470, file: !450, line: 467, baseType: !198, size: 64, offset: 1280)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !470, file: !450, line: 469, baseType: !198, size: 64, offset: 1344)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !470, file: !450, line: 470, baseType: !198, size: 64, offset: 1408)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !470, file: !450, line: 471, baseType: !508, size: 64, offset: 1472)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !470, file: !450, line: 472, baseType: !198, size: 64, offset: 1536)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !470, file: !450, line: 473, baseType: !198, size: 64, offset: 1600)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !470, file: !450, line: 474, baseType: !198, size: 64, offset: 1664)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !470, file: !450, line: 475, baseType: !198, size: 64, offset: 1728)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !470, file: !450, line: 477, baseType: !325, offset: 1792)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !470, file: !450, line: 478, baseType: !198, size: 64, offset: 1792)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !470, file: !450, line: 478, baseType: !198, size: 64, offset: 1856)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !470, file: !450, line: 478, baseType: !198, size: 64, offset: 1920)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !470, file: !450, line: 478, baseType: !198, size: 64, offset: 1984)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !470, file: !450, line: 479, baseType: !198, size: 64, offset: 2048)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !470, file: !450, line: 479, baseType: !198, size: 64, offset: 2112)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !470, file: !450, line: 479, baseType: !198, size: 64, offset: 2176)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !470, file: !450, line: 480, baseType: !198, size: 64, offset: 2240)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !470, file: !450, line: 480, baseType: !198, size: 64, offset: 2304)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !470, file: !450, line: 480, baseType: !198, size: 64, offset: 2368)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !470, file: !450, line: 480, baseType: !198, size: 64, offset: 2432)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !470, file: !450, line: 482, baseType: !548, size: 2816, offset: 2496)
!548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 2816, elements: !549)
!549 = !{!550}
!550 = !DISubrange(count: 44)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !470, file: !450, line: 488, baseType: !552, size: 256, offset: 5312)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !553, line: 60, size: 256, elements: !554)
!553 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!554 = !{!555}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !552, file: !553, line: 61, baseType: !556, size: 256)
!556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !506, size: 256, elements: !557)
!557 = !{!558}
!558 = !DISubrange(count: 4)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !470, file: !450, line: 490, baseType: !560, size: 64, offset: 5568)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !450, line: 490, flags: DIFlagFwdDecl)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !470, file: !450, line: 493, baseType: !563, size: 896, offset: 5632)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !564, line: 53, baseType: !565)
!564 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !564, line: 13, size: 896, elements: !566)
!566 = !{!567, !568, !569, !570, !573, !574, !581, !582, !602, !603, !606}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !565, file: !564, line: 18, baseType: !478, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !565, file: !564, line: 28, baseType: !508, size: 64, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !565, file: !564, line: 31, baseType: !517, size: 256, offset: 128)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !565, file: !564, line: 32, baseType: !571, size: 64, offset: 384)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !564, line: 32, flags: DIFlagFwdDecl)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !565, file: !564, line: 37, baseType: !405, size: 16, offset: 448)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !565, file: !564, line: 40, baseType: !575, size: 192, offset: 512)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !576, line: 53, size: 192, elements: !577)
!576 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!577 = !{!578, !579, !580}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !575, file: !576, line: 54, baseType: !506, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !575, file: !576, line: 55, baseType: !325, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !575, file: !576, line: 59, baseType: !312, size: 128, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !565, file: !564, line: 41, baseType: !191, size: 64, offset: 704)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !565, file: !564, line: 42, baseType: !583, size: 64, offset: 768)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !585)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !586, line: 13, size: 896, elements: !587)
!586 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!587 = !{!588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !585, file: !586, line: 14, baseType: !191, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !585, file: !586, line: 15, baseType: !198, size: 64, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !585, file: !586, line: 17, baseType: !198, size: 64, offset: 128)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !585, file: !586, line: 17, baseType: !198, size: 64, offset: 192)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !585, file: !586, line: 19, baseType: !199, size: 64, offset: 256)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !585, file: !586, line: 21, baseType: !199, size: 64, offset: 320)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !585, file: !586, line: 22, baseType: !199, size: 64, offset: 384)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !585, file: !586, line: 23, baseType: !199, size: 64, offset: 448)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !585, file: !586, line: 24, baseType: !199, size: 64, offset: 512)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !585, file: !586, line: 25, baseType: !199, size: 64, offset: 576)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !585, file: !586, line: 26, baseType: !199, size: 64, offset: 640)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !585, file: !586, line: 27, baseType: !199, size: 64, offset: 704)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !585, file: !586, line: 28, baseType: !199, size: 64, offset: 768)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !585, file: !586, line: 29, baseType: !199, size: 64, offset: 832)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !565, file: !564, line: 44, baseType: !498, size: 32, offset: 832)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !565, file: !564, line: 50, baseType: !604, size: 16, offset: 864)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !195, line: 19, baseType: !605)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !197, line: 24, baseType: !405)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !565, file: !564, line: 51, baseType: !607, size: 16, offset: 880)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !195, line: 18, baseType: !608)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !197, line: 23, baseType: !609)
!609 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !470, file: !450, line: 495, baseType: !198, size: 64, offset: 6528)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !470, file: !450, line: 497, baseType: !612, size: 64, offset: 6592)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !450, line: 381, size: 384, elements: !614)
!614 = !{!615, !616, !1516}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !613, file: !450, line: 382, baseType: !498, size: 32)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !613, file: !450, line: 383, baseType: !617, size: 128, offset: 64)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !450, line: 376, size: 128, elements: !618)
!618 = !{!619, !1514}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !617, file: !450, line: 377, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !622, line: 640, size: 48640, elements: !623)
!622 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!623 = !{!624, !630, !632, !633, !639, !640, !641, !642, !643, !644, !645, !646, !650, !668, !679, !774, !775, !776, !787, !788, !790, !791, !792, !793, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !872, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !928, !930, !931, !932, !944, !946, !947, !948, !949, !950, !956, !957, !958, !959, !960, !961, !962, !974, !979, !984, !985, !986, !989, !993, !996, !999, !1002, !1005, !1009, !1012, !1015, !1021, !1022, !1023, !1029, !1030, !1031, !1032, !1033, !1042, !1043, !1044, !1045, !1046, !1051, !1052, !1053, !1056, !1057, !1060, !1063, !1066, !1069, !1072, !1075, !1076, !1156, !1159, !1162, !1163, !1166, !1167, !1168, !1174, !1175, !1176, !1189, !1190, !1191, !1201, !1206, !1209, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !621, file: !622, line: 646, baseType: !625, size: 128)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !626, line: 56, size: 128, elements: !627)
!626 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!627 = !{!628, !629}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !625, file: !626, line: 57, baseType: !198, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !625, file: !626, line: 58, baseType: !194, size: 32, offset: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !621, file: !622, line: 649, baseType: !631, size: 64, offset: 128)
!631 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !199)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !621, file: !622, line: 657, baseType: !191, size: 64, offset: 192)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !621, file: !622, line: 658, baseType: !634, size: 32, offset: 256)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !635, line: 113, baseType: !636)
!635 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !635, line: 111, size: 32, elements: !637)
!637 = !{!638}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !636, file: !635, line: 112, baseType: !498, size: 32)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !621, file: !622, line: 660, baseType: !7, size: 32, offset: 288)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !621, file: !622, line: 661, baseType: !7, size: 32, offset: 320)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !621, file: !622, line: 684, baseType: !190, size: 32, offset: 352)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !621, file: !622, line: 686, baseType: !190, size: 32, offset: 384)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !621, file: !622, line: 687, baseType: !190, size: 32, offset: 416)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !621, file: !622, line: 688, baseType: !190, size: 32, offset: 448)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !621, file: !622, line: 689, baseType: !7, size: 32, offset: 480)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !621, file: !622, line: 691, baseType: !647, size: 64, offset: 512)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !649)
!649 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !622, line: 691, flags: DIFlagFwdDecl)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !621, file: !622, line: 692, baseType: !651, size: 832, offset: 576)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !622, line: 451, size: 832, elements: !652)
!652 = !{!653, !658, !659, !660, !661, !662, !663, !664, !665, !666}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !651, file: !622, line: 453, baseType: !654, size: 128)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !622, line: 325, size: 128, elements: !655)
!655 = !{!656, !657}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !654, file: !622, line: 326, baseType: !198, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !654, file: !622, line: 327, baseType: !194, size: 32, offset: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !651, file: !622, line: 454, baseType: !457, size: 192, align: 64, offset: 128)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !651, file: !622, line: 455, baseType: !312, size: 128, offset: 320)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !651, file: !622, line: 456, baseType: !7, size: 32, offset: 448)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !651, file: !622, line: 458, baseType: !478, size: 64, offset: 512)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !651, file: !622, line: 459, baseType: !478, size: 64, offset: 576)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !651, file: !622, line: 460, baseType: !478, size: 64, offset: 640)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !651, file: !622, line: 461, baseType: !478, size: 64, offset: 704)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !651, file: !622, line: 463, baseType: !478, size: 64, offset: 768)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !651, file: !622, line: 465, baseType: !667, offset: 832)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !622, line: 415, elements: !339)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !621, file: !622, line: 693, baseType: !669, size: 384, offset: 1408)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !622, line: 489, size: 384, elements: !670)
!670 = !{!671, !672, !673, !674, !675, !676, !677}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !669, file: !622, line: 490, baseType: !312, size: 128)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !669, file: !622, line: 491, baseType: !198, size: 64, offset: 128)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !669, file: !622, line: 492, baseType: !198, size: 64, offset: 192)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !669, file: !622, line: 493, baseType: !7, size: 32, offset: 256)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !669, file: !622, line: 494, baseType: !405, size: 16, offset: 288)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !669, file: !622, line: 495, baseType: !405, size: 16, offset: 304)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !669, file: !622, line: 497, baseType: !678, size: 64, offset: 320)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !621, file: !622, line: 697, baseType: !680, size: 1792, offset: 1792)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !622, line: 507, size: 1792, elements: !681)
!681 = !{!682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !771, !772}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !680, file: !622, line: 508, baseType: !457, size: 192, align: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !680, file: !622, line: 515, baseType: !478, size: 64, offset: 192)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !680, file: !622, line: 516, baseType: !478, size: 64, offset: 256)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !680, file: !622, line: 517, baseType: !478, size: 64, offset: 320)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !680, file: !622, line: 518, baseType: !478, size: 64, offset: 384)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !680, file: !622, line: 519, baseType: !478, size: 64, offset: 448)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !680, file: !622, line: 526, baseType: !512, size: 64, offset: 512)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !680, file: !622, line: 527, baseType: !478, size: 64, offset: 576)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !680, file: !622, line: 528, baseType: !7, size: 32, offset: 640)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !680, file: !622, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !680, file: !622, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !680, file: !622, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !680, file: !622, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !680, file: !622, line: 563, baseType: !696, size: 512, offset: 704)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !697)
!697 = !{!698, !706, !707, !712, !764, !768, !769, !770}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !696, file: !6, line: 119, baseType: !699, size: 256)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !700, line: 9, size: 256, elements: !701)
!700 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!701 = !{!702, !703}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !699, file: !700, line: 10, baseType: !457, size: 192, align: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !699, file: !700, line: 11, baseType: !704, size: 64, offset: 192)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !705, line: 29, baseType: !512)
!705 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!706 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !696, file: !6, line: 120, baseType: !704, size: 64, offset: 256)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !696, file: !6, line: 121, baseType: !708, size: 64, offset: 320)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{!5, !711}
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !696, file: !6, line: 122, baseType: !713, size: 64, offset: 384)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !715)
!715 = !{!716, !736, !737, !740, !750, !751, !759, !763}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !714, file: !6, line: 160, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !719)
!719 = !{!720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !718, file: !6, line: 215, baseType: !523)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !718, file: !6, line: 216, baseType: !7, size: 32)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !718, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !718, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !718, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !718, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !718, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !718, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !718, file: !6, line: 233, baseType: !704, size: 64, offset: 128)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !718, file: !6, line: 234, baseType: !711, size: 64, offset: 192)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !718, file: !6, line: 235, baseType: !704, size: 64, offset: 256)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !718, file: !6, line: 236, baseType: !711, size: 64, offset: 320)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !718, file: !6, line: 237, baseType: !733, size: 4096, offset: 512)
!733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !714, size: 4096, elements: !734)
!734 = !{!735}
!735 = !DISubrange(count: 8)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !714, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !714, file: !6, line: 162, baseType: !738, size: 32, offset: 96)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !189, line: 27, baseType: !739)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !223, line: 96, baseType: !190)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !714, file: !6, line: 163, baseType: !741, size: 32, offset: 128)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !742, line: 276, baseType: !743)
!742 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !742, line: 276, size: 32, elements: !744)
!744 = !{!745}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !743, file: !742, line: 276, baseType: !746, size: 32)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !742, line: 70, baseType: !747)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !742, line: 65, size: 32, elements: !748)
!748 = !{!749}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !747, file: !742, line: 66, baseType: !7, size: 32)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !714, file: !6, line: 164, baseType: !711, size: 64, offset: 192)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !714, file: !6, line: 165, baseType: !752, size: 128, offset: 256)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !700, line: 14, size: 128, elements: !753)
!753 = !{!754}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !752, file: !700, line: 15, baseType: !755, size: 128)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !458, line: 125, size: 128, elements: !756)
!756 = !{!757, !758}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !755, file: !458, line: 126, baseType: !474, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !755, file: !458, line: 127, baseType: !462, size: 64, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !714, file: !6, line: 166, baseType: !760, size: 64, offset: 384)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DISubroutineType(types: !762)
!762 = !{!704}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !714, file: !6, line: 167, baseType: !704, size: 64, offset: 448)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !696, file: !6, line: 123, baseType: !765, size: 8, offset: 448)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !195, line: 17, baseType: !766)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !197, line: 21, baseType: !767)
!767 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !696, file: !6, line: 124, baseType: !765, size: 8, offset: 456)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !696, file: !6, line: 125, baseType: !765, size: 8, offset: 464)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !696, file: !6, line: 126, baseType: !765, size: 8, offset: 472)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !680, file: !622, line: 572, baseType: !696, size: 512, offset: 1216)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !680, file: !622, line: 580, baseType: !773, size: 64, offset: 1728)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !621, file: !622, line: 721, baseType: !7, size: 32, offset: 3584)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !621, file: !622, line: 722, baseType: !190, size: 32, offset: 3616)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !621, file: !622, line: 723, baseType: !777, size: 64, offset: 3648)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !779)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !780, line: 17, baseType: !781)
!780 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !780, line: 17, size: 64, elements: !782)
!782 = !{!783}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !781, file: !780, line: 17, baseType: !784, size: 64)
!784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 64, elements: !785)
!785 = !{!786}
!786 = !DISubrange(count: 1)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !621, file: !622, line: 724, baseType: !779, size: 64, offset: 3712)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !621, file: !622, line: 749, baseType: !789, offset: 3776)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !622, line: 290, elements: !339)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !621, file: !622, line: 751, baseType: !312, size: 128, offset: 3776)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !621, file: !622, line: 757, baseType: !466, size: 64, offset: 3904)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !621, file: !622, line: 758, baseType: !466, size: 64, offset: 3968)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !621, file: !622, line: 761, baseType: !794, size: 320, offset: 4032)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !553, line: 34, size: 320, elements: !795)
!795 = !{!796, !797}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !794, file: !553, line: 35, baseType: !478, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !794, file: !553, line: 36, baseType: !798, size: 256, offset: 64)
!798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, size: 256, elements: !557)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !621, file: !622, line: 766, baseType: !190, size: 32, offset: 4352)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !621, file: !622, line: 767, baseType: !190, size: 32, offset: 4384)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !621, file: !622, line: 768, baseType: !190, size: 32, offset: 4416)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !621, file: !622, line: 770, baseType: !190, size: 32, offset: 4448)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !621, file: !622, line: 772, baseType: !198, size: 64, offset: 4480)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !621, file: !622, line: 775, baseType: !7, size: 32, offset: 4544)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !621, file: !622, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !621, file: !622, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !621, file: !622, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !621, file: !622, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !621, file: !622, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !621, file: !622, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !621, file: !622, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !621, file: !622, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !621, file: !622, line: 831, baseType: !198, size: 64, offset: 4672)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !621, file: !622, line: 833, baseType: !815, size: 384, offset: 4736)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !816)
!816 = !{!817, !822}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !815, file: !12, line: 26, baseType: !818, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DISubroutineType(types: !820)
!820 = !{!199, !821}
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, scope: !815, file: !12, line: 27, baseType: !823, size: 320, offset: 64)
!823 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !815, file: !12, line: 27, size: 320, elements: !824)
!824 = !{!825, !835, !862}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !823, file: !12, line: 36, baseType: !826, size: 320)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !823, file: !12, line: 29, size: 320, elements: !827)
!827 = !{!828, !830, !831, !832, !833, !834}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !826, file: !12, line: 30, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !826, file: !12, line: 31, baseType: !194, size: 32, offset: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !826, file: !12, line: 32, baseType: !194, size: 32, offset: 96)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !826, file: !12, line: 33, baseType: !194, size: 32, offset: 128)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !826, file: !12, line: 34, baseType: !478, size: 64, offset: 192)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !826, file: !12, line: 35, baseType: !829, size: 64, offset: 256)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !823, file: !12, line: 46, baseType: !836, size: 192)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !823, file: !12, line: 38, size: 192, elements: !837)
!837 = !{!838, !839, !840, !861}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !836, file: !12, line: 39, baseType: !738, size: 32)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !836, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!840 = !DIDerivedType(tag: DW_TAG_member, scope: !836, file: !12, line: 41, baseType: !841, size: 64, offset: 64)
!841 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !836, file: !12, line: 41, size: 64, elements: !842)
!842 = !{!843, !851}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !841, file: !12, line: 42, baseType: !844, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !846, line: 7, size: 128, elements: !847)
!846 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!847 = !{!848, !850}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !845, file: !846, line: 8, baseType: !849, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !223, line: 93, baseType: !442)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !845, file: !846, line: 9, baseType: !442, size: 64, offset: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !841, file: !12, line: 43, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !854, line: 7, size: 64, elements: !855)
!854 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!855 = !{!856, !860}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !853, file: !854, line: 8, baseType: !857, size: 32)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !854, line: 5, baseType: !858)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !195, line: 20, baseType: !859)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !197, line: 26, baseType: !190)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !853, file: !854, line: 9, baseType: !858, size: 32, offset: 32)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !836, file: !12, line: 45, baseType: !478, size: 64, offset: 128)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !823, file: !12, line: 54, baseType: !863, size: 256)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !823, file: !12, line: 48, size: 256, elements: !864)
!864 = !{!865, !868, !869, !870, !871}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !863, file: !12, line: 49, baseType: !866, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !863, file: !12, line: 50, baseType: !190, size: 32, offset: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !863, file: !12, line: 51, baseType: !190, size: 32, offset: 96)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !863, file: !12, line: 52, baseType: !198, size: 64, offset: 128)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !863, file: !12, line: 53, baseType: !198, size: 64, offset: 192)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !621, file: !622, line: 835, baseType: !873, size: 32, offset: 5120)
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !189, line: 22, baseType: !874)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !223, line: 28, baseType: !190)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !621, file: !622, line: 836, baseType: !873, size: 32, offset: 5152)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !621, file: !622, line: 840, baseType: !198, size: 64, offset: 5184)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !621, file: !622, line: 849, baseType: !620, size: 64, offset: 5248)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !621, file: !622, line: 852, baseType: !620, size: 64, offset: 5312)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !621, file: !622, line: 857, baseType: !312, size: 128, offset: 5376)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !621, file: !622, line: 858, baseType: !312, size: 128, offset: 5504)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !621, file: !622, line: 859, baseType: !620, size: 64, offset: 5632)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !621, file: !622, line: 867, baseType: !312, size: 128, offset: 5696)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !621, file: !622, line: 868, baseType: !312, size: 128, offset: 5824)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !621, file: !622, line: 871, baseType: !885, size: 64, offset: 5952)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !887, line: 59, size: 768, elements: !888)
!887 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!888 = !{!889, !890, !891, !892, !903, !904, !911, !920}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !886, file: !887, line: 61, baseType: !634, size: 32)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !886, file: !887, line: 62, baseType: !7, size: 32, offset: 32)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !886, file: !887, line: 63, baseType: !325, offset: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !886, file: !887, line: 65, baseType: !893, size: 256, offset: 64)
!893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !894, size: 256, elements: !557)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !189, line: 182, size: 64, elements: !895)
!895 = !{!896}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !894, file: !189, line: 183, baseType: !897, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !189, line: 186, size: 128, elements: !899)
!899 = !{!900, !901}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !898, file: !189, line: 187, baseType: !897, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !898, file: !189, line: 187, baseType: !902, size: 64, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !886, file: !887, line: 66, baseType: !894, size: 64, offset: 320)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !886, file: !887, line: 68, baseType: !905, size: 128, offset: 384)
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !906, line: 40, baseType: !907)
!906 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !906, line: 36, size: 128, elements: !908)
!908 = !{!909, !910}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !907, file: !906, line: 37, baseType: !325)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !907, file: !906, line: 38, baseType: !312, size: 128)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !886, file: !887, line: 69, baseType: !912, size: 128, align: 64, offset: 512)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !189, line: 216, size: 128, align: 64, elements: !913)
!913 = !{!914, !916}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !912, file: !189, line: 217, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !912, file: !189, line: 218, baseType: !917, size: 64, offset: 64)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DISubroutineType(types: !919)
!919 = !{null, !915}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !886, file: !887, line: 70, baseType: !921, size: 128, offset: 640)
!921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !922, size: 128, elements: !785)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !887, line: 54, size: 128, elements: !923)
!923 = !{!924, !925}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !922, file: !887, line: 55, baseType: !190, size: 32)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !922, file: !887, line: 56, baseType: !926, size: 64, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !887, line: 56, flags: DIFlagFwdDecl)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !621, file: !622, line: 872, baseType: !929, size: 512, offset: 6016)
!929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !898, size: 512, elements: !557)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !621, file: !622, line: 873, baseType: !312, size: 128, offset: 6528)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !621, file: !622, line: 874, baseType: !312, size: 128, offset: 6656)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !621, file: !622, line: 876, baseType: !933, size: 64, offset: 6784)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !935, line: 26, size: 192, elements: !936)
!935 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!936 = !{!937, !938}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !934, file: !935, line: 27, baseType: !7, size: 32)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !934, file: !935, line: 28, baseType: !939, size: 128, offset: 64)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !940, line: 43, size: 128, elements: !941)
!940 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!941 = !{!942, !943}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !939, file: !940, line: 44, baseType: !523)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !939, file: !940, line: 45, baseType: !312, size: 128)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !621, file: !622, line: 879, baseType: !945, size: 64, offset: 6848)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !621, file: !622, line: 882, baseType: !945, size: 64, offset: 6912)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !621, file: !622, line: 884, baseType: !478, size: 64, offset: 6976)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !621, file: !622, line: 885, baseType: !478, size: 64, offset: 7040)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !621, file: !622, line: 890, baseType: !478, size: 64, offset: 7104)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !621, file: !622, line: 891, baseType: !951, size: 128, offset: 7168)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !622, line: 242, size: 128, elements: !952)
!952 = !{!953, !954, !955}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !951, file: !622, line: 244, baseType: !478, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !951, file: !622, line: 245, baseType: !478, size: 64, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !951, file: !622, line: 246, baseType: !523, offset: 128)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !621, file: !622, line: 900, baseType: !198, size: 64, offset: 7296)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !621, file: !622, line: 901, baseType: !198, size: 64, offset: 7360)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !621, file: !622, line: 904, baseType: !478, size: 64, offset: 7424)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !621, file: !622, line: 907, baseType: !478, size: 64, offset: 7488)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !621, file: !622, line: 910, baseType: !198, size: 64, offset: 7552)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !621, file: !622, line: 911, baseType: !198, size: 64, offset: 7616)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !621, file: !622, line: 914, baseType: !963, size: 640, offset: 7680)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !964, line: 123, size: 640, elements: !965)
!964 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!965 = !{!966, !972, !973}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !963, file: !964, line: 124, baseType: !967, size: 576)
!967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !968, size: 576, elements: !366)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !964, line: 108, size: 192, elements: !969)
!969 = !{!970, !971}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !968, file: !964, line: 109, baseType: !478, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !968, file: !964, line: 110, baseType: !752, size: 128, offset: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !963, file: !964, line: 125, baseType: !7, size: 32, offset: 576)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !963, file: !964, line: 126, baseType: !7, size: 32, offset: 608)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !621, file: !622, line: 917, baseType: !975, size: 192, offset: 8320)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !964, line: 134, size: 192, elements: !976)
!976 = !{!977, !978}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !975, file: !964, line: 135, baseType: !912, size: 128, align: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !975, file: !964, line: 136, baseType: !7, size: 32, offset: 128)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !621, file: !622, line: 923, baseType: !980, size: 64, offset: 8512)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !982)
!982 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !983, line: 11, flags: DIFlagFwdDecl)
!983 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/lizy2001/genbc/linux")
!984 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !621, file: !622, line: 926, baseType: !980, size: 64, offset: 8576)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !621, file: !622, line: 929, baseType: !980, size: 64, offset: 8640)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !621, file: !622, line: 933, baseType: !987, size: 64, offset: 8704)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !622, line: 933, flags: DIFlagFwdDecl)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !621, file: !622, line: 943, baseType: !990, size: 128, offset: 8768)
!990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 128, elements: !991)
!991 = !{!992}
!992 = !DISubrange(count: 16)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !621, file: !622, line: 945, baseType: !994, size: 64, offset: 8896)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !622, line: 49, flags: DIFlagFwdDecl)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !621, file: !622, line: 956, baseType: !997, size: 64, offset: 8960)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !622, line: 45, flags: DIFlagFwdDecl)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !621, file: !622, line: 959, baseType: !1000, size: 64, offset: 9024)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !622, line: 959, flags: DIFlagFwdDecl)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !621, file: !622, line: 962, baseType: !1003, size: 64, offset: 9088)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !622, line: 66, flags: DIFlagFwdDecl)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !621, file: !622, line: 966, baseType: !1006, size: 64, offset: 9152)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1008, line: 35, flags: DIFlagFwdDecl)
!1008 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !621, file: !622, line: 969, baseType: !1010, size: 64, offset: 9216)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !964, line: 223, flags: DIFlagFwdDecl)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !621, file: !622, line: 970, baseType: !1013, size: 64, offset: 9280)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !622, line: 62, flags: DIFlagFwdDecl)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !621, file: !622, line: 971, baseType: !1016, size: 64, offset: 9344)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1017, line: 25, baseType: !1018)
!1017 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1017, line: 23, size: 64, elements: !1019)
!1019 = !{!1020}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1018, file: !1017, line: 24, baseType: !784, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !621, file: !622, line: 972, baseType: !1016, size: 64, offset: 9408)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !621, file: !622, line: 974, baseType: !1016, size: 64, offset: 9472)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !621, file: !622, line: 975, baseType: !1024, size: 192, offset: 9536)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1025, line: 30, size: 192, elements: !1026)
!1025 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1026 = !{!1027, !1028}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1024, file: !1025, line: 31, baseType: !312, size: 128)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1024, file: !1025, line: 32, baseType: !1016, size: 64, offset: 128)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !621, file: !622, line: 976, baseType: !198, size: 64, offset: 9728)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !621, file: !622, line: 977, baseType: !221, size: 64, offset: 9792)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !621, file: !622, line: 978, baseType: !7, size: 32, offset: 9856)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !621, file: !622, line: 980, baseType: !915, size: 64, offset: 9920)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !621, file: !622, line: 989, baseType: !1034, size: 128, offset: 9984)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1035, line: 35, size: 128, elements: !1036)
!1035 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1036 = !{!1037, !1038, !1039}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1034, file: !1035, line: 36, baseType: !190, size: 32)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1034, file: !1035, line: 37, baseType: !498, size: 32, offset: 32)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1034, file: !1035, line: 38, baseType: !1040, size: 64, offset: 64)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1035, line: 23, flags: DIFlagFwdDecl)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !621, file: !622, line: 992, baseType: !478, size: 64, offset: 10112)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !621, file: !622, line: 993, baseType: !478, size: 64, offset: 10176)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !621, file: !622, line: 996, baseType: !325, offset: 10240)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !621, file: !622, line: 999, baseType: !523, offset: 10240)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !621, file: !622, line: 1001, baseType: !1047, size: 64, offset: 10240)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !622, line: 636, size: 64, elements: !1048)
!1048 = !{!1049}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1047, file: !622, line: 637, baseType: !1050, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !621, file: !622, line: 1005, baseType: !755, size: 128, offset: 10304)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !621, file: !622, line: 1007, baseType: !620, size: 64, offset: 10432)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !621, file: !622, line: 1009, baseType: !1054, size: 64, offset: 10496)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !622, line: 1009, flags: DIFlagFwdDecl)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !621, file: !622, line: 1043, baseType: !191, size: 64, offset: 10560)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !621, file: !622, line: 1046, baseType: !1058, size: 64, offset: 10624)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !622, line: 41, flags: DIFlagFwdDecl)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !621, file: !622, line: 1050, baseType: !1061, size: 64, offset: 10688)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !622, line: 42, flags: DIFlagFwdDecl)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !621, file: !622, line: 1054, baseType: !1064, size: 64, offset: 10752)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !622, line: 55, flags: DIFlagFwdDecl)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !621, file: !622, line: 1056, baseType: !1067, size: 64, offset: 10816)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !622, line: 40, flags: DIFlagFwdDecl)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !621, file: !622, line: 1058, baseType: !1070, size: 64, offset: 10880)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !622, line: 47, flags: DIFlagFwdDecl)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !621, file: !622, line: 1061, baseType: !1073, size: 64, offset: 10944)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !622, line: 43, flags: DIFlagFwdDecl)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !621, file: !622, line: 1064, baseType: !198, size: 64, offset: 11008)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !621, file: !622, line: 1065, baseType: !1077, size: 64, offset: 11072)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1025, line: 14, baseType: !1079)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1025, line: 12, size: 384, elements: !1080)
!1080 = !{!1081}
!1081 = !DIDerivedType(tag: DW_TAG_member, scope: !1079, file: !1025, line: 13, baseType: !1082, size: 384)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1079, file: !1025, line: 13, size: 384, elements: !1083)
!1083 = !{!1084, !1085, !1086, !1087}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1082, file: !1025, line: 13, baseType: !190, size: 32)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1082, file: !1025, line: 13, baseType: !190, size: 32, offset: 32)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1082, file: !1025, line: 13, baseType: !190, size: 32, offset: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1082, file: !1025, line: 13, baseType: !1088, size: 256, offset: 128)
!1088 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1089, line: 32, size: 256, elements: !1090)
!1089 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1090 = !{!1091, !1097, !1110, !1116, !1125, !1145, !1150}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1088, file: !1089, line: 37, baseType: !1092, size: 64)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1088, file: !1089, line: 34, size: 64, elements: !1093)
!1093 = !{!1094, !1095}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1092, file: !1089, line: 35, baseType: !874, size: 32)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1092, file: !1089, line: 36, baseType: !1096, size: 32, offset: 32)
!1096 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !223, line: 49, baseType: !7)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1088, file: !1089, line: 45, baseType: !1098, size: 192)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1088, file: !1089, line: 40, size: 192, elements: !1099)
!1099 = !{!1100, !1102, !1103, !1109}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1098, file: !1089, line: 41, baseType: !1101, size: 32)
!1101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !223, line: 95, baseType: !190)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1098, file: !1089, line: 42, baseType: !190, size: 32, offset: 32)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1098, file: !1089, line: 43, baseType: !1104, size: 64, offset: 64)
!1104 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1089, line: 11, baseType: !1105)
!1105 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1089, line: 8, size: 64, elements: !1106)
!1106 = !{!1107, !1108}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1105, file: !1089, line: 9, baseType: !190, size: 32)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1105, file: !1089, line: 10, baseType: !191, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1098, file: !1089, line: 44, baseType: !190, size: 32, offset: 128)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1088, file: !1089, line: 52, baseType: !1111, size: 128)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1088, file: !1089, line: 48, size: 128, elements: !1112)
!1112 = !{!1113, !1114, !1115}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1111, file: !1089, line: 49, baseType: !874, size: 32)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1111, file: !1089, line: 50, baseType: !1096, size: 32, offset: 32)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1111, file: !1089, line: 51, baseType: !1104, size: 64, offset: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1088, file: !1089, line: 61, baseType: !1117, size: 256)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1088, file: !1089, line: 55, size: 256, elements: !1118)
!1118 = !{!1119, !1120, !1121, !1122, !1124}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1117, file: !1089, line: 56, baseType: !874, size: 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1117, file: !1089, line: 57, baseType: !1096, size: 32, offset: 32)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1117, file: !1089, line: 58, baseType: !190, size: 32, offset: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1117, file: !1089, line: 59, baseType: !1123, size: 64, offset: 128)
!1123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !223, line: 94, baseType: !398)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1117, file: !1089, line: 60, baseType: !1123, size: 64, offset: 192)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1088, file: !1089, line: 95, baseType: !1126, size: 256)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1088, file: !1089, line: 64, size: 256, elements: !1127)
!1127 = !{!1128, !1129}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1126, file: !1089, line: 65, baseType: !191, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, scope: !1126, file: !1089, line: 77, baseType: !1130, size: 192, offset: 64)
!1130 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1126, file: !1089, line: 77, size: 192, elements: !1131)
!1131 = !{!1132, !1133, !1140}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1130, file: !1089, line: 82, baseType: !609, size: 16)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1130, file: !1089, line: 88, baseType: !1134, size: 192)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1130, file: !1089, line: 84, size: 192, elements: !1135)
!1135 = !{!1136, !1138, !1139}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1134, file: !1089, line: 85, baseType: !1137, size: 64)
!1137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 64, elements: !734)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1134, file: !1089, line: 86, baseType: !191, size: 64, offset: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1134, file: !1089, line: 87, baseType: !191, size: 64, offset: 128)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1130, file: !1089, line: 93, baseType: !1141, size: 96)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1130, file: !1089, line: 90, size: 96, elements: !1142)
!1142 = !{!1143, !1144}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1141, file: !1089, line: 91, baseType: !1137, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1141, file: !1089, line: 92, baseType: !196, size: 32, offset: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1088, file: !1089, line: 101, baseType: !1146, size: 128)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1088, file: !1089, line: 98, size: 128, elements: !1147)
!1147 = !{!1148, !1149}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1146, file: !1089, line: 99, baseType: !199, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1146, file: !1089, line: 100, baseType: !190, size: 32, offset: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1088, file: !1089, line: 108, baseType: !1151, size: 128)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1088, file: !1089, line: 104, size: 128, elements: !1152)
!1152 = !{!1153, !1154, !1155}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1151, file: !1089, line: 105, baseType: !191, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1151, file: !1089, line: 106, baseType: !190, size: 32, offset: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1151, file: !1089, line: 107, baseType: !7, size: 32, offset: 96)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !621, file: !622, line: 1067, baseType: !1157, offset: 11136)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1158, line: 12, elements: !339)
!1158 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !621, file: !622, line: 1099, baseType: !1160, size: 64, offset: 11136)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !622, line: 56, flags: DIFlagFwdDecl)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !621, file: !622, line: 1103, baseType: !312, size: 128, offset: 11200)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !621, file: !622, line: 1104, baseType: !1164, size: 64, offset: 11328)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !622, line: 46, flags: DIFlagFwdDecl)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !621, file: !622, line: 1105, baseType: !575, size: 192, offset: 11392)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !621, file: !622, line: 1106, baseType: !7, size: 32, offset: 11584)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !621, file: !622, line: 1109, baseType: !1169, size: 128, offset: 11648)
!1169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1170, size: 128, elements: !1172)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !622, line: 51, flags: DIFlagFwdDecl)
!1172 = !{!1173}
!1173 = !DISubrange(count: 2)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !621, file: !622, line: 1110, baseType: !575, size: 192, offset: 11776)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !621, file: !622, line: 1111, baseType: !312, size: 128, offset: 11968)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !621, file: !622, line: 1173, baseType: !1177, size: 64, offset: 12096)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1179, line: 62, size: 256, align: 256, elements: !1180)
!1179 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1180 = !{!1181, !1182, !1183, !1188}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1178, file: !1179, line: 75, baseType: !196, size: 32)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1178, file: !1179, line: 90, baseType: !196, size: 32, offset: 32)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1178, file: !1179, line: 124, baseType: !1184, size: 64, offset: 64)
!1184 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1178, file: !1179, line: 109, size: 64, elements: !1185)
!1185 = !{!1186, !1187}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1184, file: !1179, line: 110, baseType: !479, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1184, file: !1179, line: 112, baseType: !479, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1178, file: !1179, line: 144, baseType: !196, size: 32, offset: 128)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !621, file: !622, line: 1174, baseType: !194, size: 32, offset: 12160)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !621, file: !622, line: 1179, baseType: !198, size: 64, offset: 12224)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !621, file: !622, line: 1182, baseType: !1192, size: 128, offset: 12288)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !553, line: 76, size: 128, elements: !1193)
!1193 = !{!1194, !1199, !1200}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1192, file: !553, line: 85, baseType: !1195, size: 64)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1196, line: 7, size: 64, elements: !1197)
!1196 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1197 = !{!1198}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1195, file: !1196, line: 12, baseType: !781, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1192, file: !553, line: 88, baseType: !254, size: 8, offset: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1192, file: !553, line: 95, baseType: !254, size: 8, offset: 72)
!1201 = !DIDerivedType(tag: DW_TAG_member, scope: !621, file: !622, line: 1184, baseType: !1202, size: 128, offset: 12416)
!1202 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !621, file: !622, line: 1184, size: 128, elements: !1203)
!1203 = !{!1204, !1205}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1202, file: !622, line: 1185, baseType: !634, size: 32)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1202, file: !622, line: 1186, baseType: !912, size: 128, align: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !621, file: !622, line: 1190, baseType: !1207, size: 64, offset: 12544)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !622, line: 53, flags: DIFlagFwdDecl)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !621, file: !622, line: 1192, baseType: !1210, size: 128, offset: 12608)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !553, line: 64, size: 128, elements: !1211)
!1211 = !{!1212, !1305, !1306}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1210, file: !553, line: 65, baseType: !1213, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !450, line: 68, size: 512, align: 128, elements: !1215)
!1215 = !{!1216, !1217, !1297, !1304}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1214, file: !450, line: 69, baseType: !198, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, scope: !1214, file: !450, line: 77, baseType: !1218, size: 320, offset: 64)
!1218 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1214, file: !450, line: 77, size: 320, elements: !1219)
!1219 = !{!1220, !1229, !1234, !1262, !1270, !1276, !1289, !1296}
!1220 = !DIDerivedType(tag: DW_TAG_member, scope: !1218, file: !450, line: 78, baseType: !1221, size: 320)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1218, file: !450, line: 78, size: 320, elements: !1222)
!1222 = !{!1223, !1224, !1227, !1228}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1221, file: !450, line: 84, baseType: !312, size: 128)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1221, file: !450, line: 86, baseType: !1225, size: 64, offset: 128)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !450, line: 26, flags: DIFlagFwdDecl)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1221, file: !450, line: 87, baseType: !198, size: 64, offset: 192)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1221, file: !450, line: 94, baseType: !198, size: 64, offset: 256)
!1229 = !DIDerivedType(tag: DW_TAG_member, scope: !1218, file: !450, line: 96, baseType: !1230, size: 64)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1218, file: !450, line: 96, size: 64, elements: !1231)
!1231 = !{!1232}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1230, file: !450, line: 101, baseType: !1233, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !189, line: 143, baseType: !478)
!1234 = !DIDerivedType(tag: DW_TAG_member, scope: !1218, file: !450, line: 103, baseType: !1235, size: 320)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1218, file: !450, line: 103, size: 320, elements: !1236)
!1236 = !{!1237, !1247, !1250, !1251}
!1237 = !DIDerivedType(tag: DW_TAG_member, scope: !1235, file: !450, line: 104, baseType: !1238, size: 128)
!1238 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1235, file: !450, line: 104, size: 128, elements: !1239)
!1239 = !{!1240, !1241}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1238, file: !450, line: 105, baseType: !312, size: 128)
!1241 = !DIDerivedType(tag: DW_TAG_member, scope: !1238, file: !450, line: 106, baseType: !1242, size: 128)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1238, file: !450, line: 106, size: 128, elements: !1243)
!1243 = !{!1244, !1245, !1246}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1242, file: !450, line: 107, baseType: !1213, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1242, file: !450, line: 109, baseType: !190, size: 32, offset: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1242, file: !450, line: 110, baseType: !190, size: 32, offset: 96)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1235, file: !450, line: 117, baseType: !1248, size: 64, offset: 128)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !450, line: 117, flags: DIFlagFwdDecl)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1235, file: !450, line: 119, baseType: !191, size: 64, offset: 192)
!1251 = !DIDerivedType(tag: DW_TAG_member, scope: !1235, file: !450, line: 120, baseType: !1252, size: 64, offset: 256)
!1252 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1235, file: !450, line: 120, size: 64, elements: !1253)
!1253 = !{!1254, !1255, !1256}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1252, file: !450, line: 121, baseType: !191, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1252, file: !450, line: 122, baseType: !198, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, scope: !1252, file: !450, line: 123, baseType: !1257, size: 32)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1252, file: !450, line: 123, size: 32, elements: !1258)
!1258 = !{!1259, !1260, !1261}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1257, file: !450, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1257, file: !450, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1257, file: !450, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1262 = !DIDerivedType(tag: DW_TAG_member, scope: !1218, file: !450, line: 130, baseType: !1263, size: 192)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1218, file: !450, line: 130, size: 192, elements: !1264)
!1264 = !{!1265, !1266, !1267, !1268, !1269}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1263, file: !450, line: 131, baseType: !198, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1263, file: !450, line: 134, baseType: !767, size: 8, offset: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1263, file: !450, line: 135, baseType: !767, size: 8, offset: 72)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1263, file: !450, line: 136, baseType: !498, size: 32, offset: 96)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1263, file: !450, line: 137, baseType: !7, size: 32, offset: 128)
!1270 = !DIDerivedType(tag: DW_TAG_member, scope: !1218, file: !450, line: 139, baseType: !1271, size: 256)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1218, file: !450, line: 139, size: 256, elements: !1272)
!1272 = !{!1273, !1274, !1275}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1271, file: !450, line: 140, baseType: !198, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1271, file: !450, line: 141, baseType: !498, size: 32, offset: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1271, file: !450, line: 143, baseType: !312, size: 128, offset: 128)
!1276 = !DIDerivedType(tag: DW_TAG_member, scope: !1218, file: !450, line: 145, baseType: !1277, size: 256)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1218, file: !450, line: 145, size: 256, elements: !1278)
!1278 = !{!1279, !1280, !1282, !1283, !1288}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1277, file: !450, line: 146, baseType: !198, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1277, file: !450, line: 147, baseType: !1281, size: 64, offset: 64)
!1281 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !439, line: 509, baseType: !1213)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1277, file: !450, line: 148, baseType: !198, size: 64, offset: 128)
!1283 = !DIDerivedType(tag: DW_TAG_member, scope: !1277, file: !450, line: 149, baseType: !1284, size: 64, offset: 192)
!1284 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1277, file: !450, line: 149, size: 64, elements: !1285)
!1285 = !{!1286, !1287}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1284, file: !450, line: 150, baseType: !466, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1284, file: !450, line: 151, baseType: !498, size: 32)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1277, file: !450, line: 156, baseType: !325, offset: 256)
!1289 = !DIDerivedType(tag: DW_TAG_member, scope: !1218, file: !450, line: 159, baseType: !1290, size: 128)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1218, file: !450, line: 159, size: 128, elements: !1291)
!1291 = !{!1292, !1295}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1290, file: !450, line: 161, baseType: !1293, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !450, line: 161, flags: DIFlagFwdDecl)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1290, file: !450, line: 162, baseType: !191, size: 64, offset: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1218, file: !450, line: 176, baseType: !912, size: 128, align: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, scope: !1214, file: !450, line: 179, baseType: !1298, size: 32, offset: 384)
!1298 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1214, file: !450, line: 179, size: 32, elements: !1299)
!1299 = !{!1300, !1301, !1302, !1303}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1298, file: !450, line: 184, baseType: !498, size: 32)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1298, file: !450, line: 192, baseType: !7, size: 32)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1298, file: !450, line: 194, baseType: !7, size: 32)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1298, file: !450, line: 195, baseType: !190, size: 32)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1214, file: !450, line: 199, baseType: !498, size: 32, offset: 416)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1210, file: !553, line: 67, baseType: !196, size: 32, offset: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1210, file: !553, line: 68, baseType: !196, size: 32, offset: 96)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !621, file: !622, line: 1206, baseType: !190, size: 32, offset: 12736)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !621, file: !622, line: 1207, baseType: !190, size: 32, offset: 12768)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !621, file: !622, line: 1209, baseType: !198, size: 64, offset: 12800)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !621, file: !622, line: 1219, baseType: !478, size: 64, offset: 12864)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !621, file: !622, line: 1220, baseType: !478, size: 64, offset: 12928)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !621, file: !622, line: 1317, baseType: !190, size: 32, offset: 12992)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !621, file: !622, line: 1319, baseType: !620, size: 64, offset: 13056)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !621, file: !622, line: 1322, baseType: !1315, size: 64, offset: 13120)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1317, line: 56, size: 512, elements: !1318)
!1317 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1318 = !{!1319, !1320, !1321, !1322, !1323, !1325, !1326, !1328}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1316, file: !1317, line: 57, baseType: !1315, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1316, file: !1317, line: 58, baseType: !191, size: 64, offset: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1316, file: !1317, line: 59, baseType: !198, size: 64, offset: 128)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1316, file: !1317, line: 60, baseType: !198, size: 64, offset: 192)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1316, file: !1317, line: 61, baseType: !1324, size: 64, offset: 256)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1316, file: !1317, line: 62, baseType: !7, size: 32, offset: 320)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1316, file: !1317, line: 63, baseType: !1327, size: 64, offset: 384)
!1327 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !189, line: 153, baseType: !478)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1316, file: !1317, line: 64, baseType: !301, size: 64, offset: 448)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !621, file: !622, line: 1326, baseType: !634, size: 32, offset: 13184)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !621, file: !622, line: 1342, baseType: !191, size: 64, offset: 13248)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !621, file: !622, line: 1343, baseType: !479, size: 64, offset: 13312)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !621, file: !622, line: 1344, baseType: !478, size: 64, offset: 13376)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !621, file: !622, line: 1345, baseType: !479, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !621, file: !622, line: 1346, baseType: !479, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !621, file: !622, line: 1347, baseType: !479, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !621, file: !622, line: 1348, baseType: !912, size: 128, align: 64, offset: 13504)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !621, file: !622, line: 1358, baseType: !1338, size: 34816, offset: 13824)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1339, line: 485, size: 34816, elements: !1340)
!1339 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1340 = !{!1341, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1370, !1371, !1372, !1373, !1374, !1375, !1378, !1379, !1380}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1338, file: !1339, line: 487, baseType: !1342, size: 192)
!1342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1343, size: 192, elements: !366)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1344, line: 16, size: 64, elements: !1345)
!1344 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1345 = !{!1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1343, file: !1344, line: 17, baseType: !604, size: 16)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1343, file: !1344, line: 18, baseType: !604, size: 16, offset: 16)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1343, file: !1344, line: 19, baseType: !604, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1343, file: !1344, line: 19, baseType: !604, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1343, file: !1344, line: 19, baseType: !604, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1343, file: !1344, line: 19, baseType: !604, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1343, file: !1344, line: 19, baseType: !604, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1343, file: !1344, line: 20, baseType: !604, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1343, file: !1344, line: 20, baseType: !604, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1343, file: !1344, line: 20, baseType: !604, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1343, file: !1344, line: 20, baseType: !604, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1343, file: !1344, line: 20, baseType: !604, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1343, file: !1344, line: 20, baseType: !604, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1338, file: !1339, line: 491, baseType: !198, size: 64, offset: 192)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1338, file: !1339, line: 495, baseType: !405, size: 16, offset: 256)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1338, file: !1339, line: 496, baseType: !405, size: 16, offset: 272)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1338, file: !1339, line: 497, baseType: !405, size: 16, offset: 288)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1338, file: !1339, line: 498, baseType: !405, size: 16, offset: 304)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1338, file: !1339, line: 502, baseType: !198, size: 64, offset: 320)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1338, file: !1339, line: 503, baseType: !198, size: 64, offset: 384)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1338, file: !1339, line: 514, baseType: !1367, size: 256, offset: 448)
!1367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1368, size: 256, elements: !557)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1339, line: 483, flags: DIFlagFwdDecl)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1338, file: !1339, line: 516, baseType: !198, size: 64, offset: 704)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1338, file: !1339, line: 518, baseType: !198, size: 64, offset: 768)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1338, file: !1339, line: 520, baseType: !198, size: 64, offset: 832)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1338, file: !1339, line: 521, baseType: !198, size: 64, offset: 896)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1338, file: !1339, line: 522, baseType: !198, size: 64, offset: 960)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1338, file: !1339, line: 528, baseType: !1376, size: 64, offset: 1024)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1339, line: 10, flags: DIFlagFwdDecl)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1338, file: !1339, line: 535, baseType: !198, size: 64, offset: 1088)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1338, file: !1339, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1338, file: !1339, line: 540, baseType: !1381, size: 33280, offset: 1536)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1382, line: 317, size: 33280, elements: !1383)
!1382 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1383 = !{!1384, !1385, !1386}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1381, file: !1382, line: 330, baseType: !7, size: 32)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1381, file: !1382, line: 337, baseType: !198, size: 64, offset: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1381, file: !1382, line: 348, baseType: !1387, size: 32768, offset: 512)
!1387 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1382, line: 304, size: 32768, elements: !1388)
!1388 = !{!1389, !1404, !1443, !1493, !1510}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1387, file: !1382, line: 305, baseType: !1390, size: 896)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1382, line: 12, size: 896, elements: !1391)
!1391 = !{!1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1403}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1390, file: !1382, line: 13, baseType: !194, size: 32)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1390, file: !1382, line: 14, baseType: !194, size: 32, offset: 32)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1390, file: !1382, line: 15, baseType: !194, size: 32, offset: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1390, file: !1382, line: 16, baseType: !194, size: 32, offset: 96)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1390, file: !1382, line: 17, baseType: !194, size: 32, offset: 128)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1390, file: !1382, line: 18, baseType: !194, size: 32, offset: 160)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1390, file: !1382, line: 19, baseType: !194, size: 32, offset: 192)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1390, file: !1382, line: 22, baseType: !1400, size: 640, offset: 224)
!1400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 640, elements: !1401)
!1401 = !{!1402}
!1402 = !DISubrange(count: 20)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1390, file: !1382, line: 25, baseType: !194, size: 32, offset: 864)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1387, file: !1382, line: 306, baseType: !1405, size: 4096, align: 128)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1382, line: 34, size: 4096, align: 128, elements: !1406)
!1406 = !{!1407, !1408, !1409, !1410, !1411, !1426, !1427, !1428, !1432, !1434, !1438}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1405, file: !1382, line: 35, baseType: !604, size: 16)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1405, file: !1382, line: 36, baseType: !604, size: 16, offset: 16)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1405, file: !1382, line: 37, baseType: !604, size: 16, offset: 32)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1405, file: !1382, line: 38, baseType: !604, size: 16, offset: 48)
!1411 = !DIDerivedType(tag: DW_TAG_member, scope: !1405, file: !1382, line: 39, baseType: !1412, size: 128, offset: 64)
!1412 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1405, file: !1382, line: 39, size: 128, elements: !1413)
!1413 = !{!1414, !1419}
!1414 = !DIDerivedType(tag: DW_TAG_member, scope: !1412, file: !1382, line: 40, baseType: !1415, size: 128)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1412, file: !1382, line: 40, size: 128, elements: !1416)
!1416 = !{!1417, !1418}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1415, file: !1382, line: 41, baseType: !478, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1415, file: !1382, line: 42, baseType: !478, size: 64, offset: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, scope: !1412, file: !1382, line: 44, baseType: !1420, size: 128)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1412, file: !1382, line: 44, size: 128, elements: !1421)
!1421 = !{!1422, !1423, !1424, !1425}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1420, file: !1382, line: 45, baseType: !194, size: 32)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1420, file: !1382, line: 46, baseType: !194, size: 32, offset: 32)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1420, file: !1382, line: 47, baseType: !194, size: 32, offset: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1420, file: !1382, line: 48, baseType: !194, size: 32, offset: 96)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1405, file: !1382, line: 51, baseType: !194, size: 32, offset: 192)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1405, file: !1382, line: 52, baseType: !194, size: 32, offset: 224)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1405, file: !1382, line: 55, baseType: !1429, size: 1024, offset: 256)
!1429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 1024, elements: !1430)
!1430 = !{!1431}
!1431 = !DISubrange(count: 32)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1405, file: !1382, line: 58, baseType: !1433, size: 2048, offset: 1280)
!1433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 2048, elements: !370)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1405, file: !1382, line: 60, baseType: !1435, size: 384, offset: 3328)
!1435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 384, elements: !1436)
!1436 = !{!1437}
!1437 = !DISubrange(count: 12)
!1438 = !DIDerivedType(tag: DW_TAG_member, scope: !1405, file: !1382, line: 62, baseType: !1439, size: 384, offset: 3712)
!1439 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1405, file: !1382, line: 62, size: 384, elements: !1440)
!1440 = !{!1441, !1442}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1439, file: !1382, line: 63, baseType: !1435, size: 384)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1439, file: !1382, line: 64, baseType: !1435, size: 384)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1387, file: !1382, line: 307, baseType: !1444, size: 1088)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1382, line: 79, size: 1088, elements: !1445)
!1445 = !{!1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1492}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1444, file: !1382, line: 80, baseType: !194, size: 32)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1444, file: !1382, line: 81, baseType: !194, size: 32, offset: 32)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1444, file: !1382, line: 82, baseType: !194, size: 32, offset: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1444, file: !1382, line: 83, baseType: !194, size: 32, offset: 96)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1444, file: !1382, line: 84, baseType: !194, size: 32, offset: 128)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1444, file: !1382, line: 85, baseType: !194, size: 32, offset: 160)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1444, file: !1382, line: 86, baseType: !194, size: 32, offset: 192)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1444, file: !1382, line: 88, baseType: !1400, size: 640, offset: 224)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1444, file: !1382, line: 89, baseType: !765, size: 8, offset: 864)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1444, file: !1382, line: 90, baseType: !765, size: 8, offset: 872)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1444, file: !1382, line: 91, baseType: !765, size: 8, offset: 880)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1444, file: !1382, line: 92, baseType: !765, size: 8, offset: 888)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1444, file: !1382, line: 93, baseType: !765, size: 8, offset: 896)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1444, file: !1382, line: 94, baseType: !765, size: 8, offset: 904)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1444, file: !1382, line: 95, baseType: !1461, size: 64, offset: 960)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1463, line: 11, size: 128, elements: !1464)
!1463 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1464 = !{!1465, !1466}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1462, file: !1463, line: 12, baseType: !199, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1462, file: !1463, line: 13, baseType: !1467, size: 64, offset: 64)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1469, line: 56, size: 1344, elements: !1470)
!1469 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1470 = !{!1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1468, file: !1469, line: 61, baseType: !198, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1468, file: !1469, line: 62, baseType: !198, size: 64, offset: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1468, file: !1469, line: 63, baseType: !198, size: 64, offset: 128)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1468, file: !1469, line: 64, baseType: !198, size: 64, offset: 192)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1468, file: !1469, line: 65, baseType: !198, size: 64, offset: 256)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1468, file: !1469, line: 66, baseType: !198, size: 64, offset: 320)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1468, file: !1469, line: 68, baseType: !198, size: 64, offset: 384)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1468, file: !1469, line: 69, baseType: !198, size: 64, offset: 448)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1468, file: !1469, line: 70, baseType: !198, size: 64, offset: 512)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1468, file: !1469, line: 71, baseType: !198, size: 64, offset: 576)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1468, file: !1469, line: 72, baseType: !198, size: 64, offset: 640)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1468, file: !1469, line: 73, baseType: !198, size: 64, offset: 704)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1468, file: !1469, line: 74, baseType: !198, size: 64, offset: 768)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1468, file: !1469, line: 75, baseType: !198, size: 64, offset: 832)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1468, file: !1469, line: 76, baseType: !198, size: 64, offset: 896)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1468, file: !1469, line: 81, baseType: !198, size: 64, offset: 960)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1468, file: !1469, line: 83, baseType: !198, size: 64, offset: 1024)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1468, file: !1469, line: 84, baseType: !198, size: 64, offset: 1088)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1468, file: !1469, line: 85, baseType: !198, size: 64, offset: 1152)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1468, file: !1469, line: 86, baseType: !198, size: 64, offset: 1216)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1468, file: !1469, line: 87, baseType: !198, size: 64, offset: 1280)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1444, file: !1382, line: 96, baseType: !194, size: 32, offset: 1024)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1387, file: !1382, line: 308, baseType: !1494, size: 4608, align: 512)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1382, line: 289, size: 4608, align: 512, elements: !1495)
!1495 = !{!1496, !1497, !1506}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1494, file: !1382, line: 290, baseType: !1405, size: 4096, align: 128)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1494, file: !1382, line: 291, baseType: !1498, size: 512, offset: 4096)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1382, line: 268, size: 512, elements: !1499)
!1499 = !{!1500, !1501, !1502}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1498, file: !1382, line: 269, baseType: !478, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1498, file: !1382, line: 270, baseType: !478, size: 64, offset: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1498, file: !1382, line: 271, baseType: !1503, size: 384, offset: 128)
!1503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !478, size: 384, elements: !1504)
!1504 = !{!1505}
!1505 = !DISubrange(count: 6)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1494, file: !1382, line: 292, baseType: !1507, offset: 4608)
!1507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !765, elements: !1508)
!1508 = !{!1509}
!1509 = !DISubrange(count: 0)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1387, file: !1382, line: 309, baseType: !1511, size: 32768)
!1511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !765, size: 32768, elements: !1512)
!1512 = !{!1513}
!1513 = !DISubrange(count: 4096)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !617, file: !450, line: 378, baseType: !1515, size: 64, offset: 64)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !613, file: !450, line: 384, baseType: !934, size: 192, offset: 192)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !470, file: !450, line: 500, baseType: !325, offset: 6656)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !470, file: !450, line: 501, baseType: !1519, size: 64, offset: 6656)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !450, line: 387, flags: DIFlagFwdDecl)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !470, file: !450, line: 516, baseType: !1522, size: 64, offset: 6720)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1524, line: 18, flags: DIFlagFwdDecl)
!1524 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !470, file: !450, line: 519, baseType: !437, size: 64, offset: 6784)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !470, file: !450, line: 521, baseType: !1527, size: 64, offset: 6848)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !450, line: 521, flags: DIFlagFwdDecl)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !470, file: !450, line: 545, baseType: !498, size: 32, offset: 6912)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !470, file: !450, line: 548, baseType: !254, size: 8, offset: 6944)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !470, file: !450, line: 550, baseType: !1532, offset: 6952)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1533, line: 142, elements: !339)
!1533 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !470, file: !450, line: 554, baseType: !1535, size: 256, offset: 6976)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1536, line: 102, size: 256, elements: !1537)
!1536 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1537 = !{!1538, !1539, !1540}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1535, file: !1536, line: 103, baseType: !506, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1535, file: !1536, line: 104, baseType: !312, size: 128, offset: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1535, file: !1536, line: 105, baseType: !1541, size: 64, offset: 192)
!1541 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1536, line: 21, baseType: !1542)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{null, !1545}
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !470, file: !450, line: 557, baseType: !194, size: 32, offset: 7232)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !467, file: !450, line: 565, baseType: !1548, offset: 7296)
!1548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, elements: !1549)
!1549 = !{!1550}
!1550 = !DISubrange(count: -1)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !449, file: !450, line: 333, baseType: !1552, size: 64, offset: 576)
!1552 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !439, line: 284, baseType: !1553)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !439, line: 284, size: 64, elements: !1554)
!1554 = !{!1555}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1553, file: !439, line: 284, baseType: !1556, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !496, line: 19, baseType: !198)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !449, file: !450, line: 334, baseType: !198, size: 64, offset: 640)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !449, file: !450, line: 343, baseType: !1559, size: 256, offset: 704)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !449, file: !450, line: 340, size: 256, elements: !1560)
!1560 = !{!1561, !1562}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1559, file: !450, line: 341, baseType: !457, size: 192, align: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1559, file: !450, line: 342, baseType: !198, size: 64, offset: 192)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !449, file: !450, line: 351, baseType: !312, size: 128, offset: 960)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !449, file: !450, line: 353, baseType: !1565, size: 64, offset: 1088)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !450, line: 353, flags: DIFlagFwdDecl)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !449, file: !450, line: 356, baseType: !1568, size: 64, offset: 1152)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1570)
!1570 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !450, line: 356, flags: DIFlagFwdDecl)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !449, file: !450, line: 359, baseType: !198, size: 64, offset: 1216)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !449, file: !450, line: 361, baseType: !437, size: 64, offset: 1280)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !449, file: !450, line: 362, baseType: !191, size: 64, offset: 1344)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !449, file: !450, line: 365, baseType: !506, size: 64, offset: 1408)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !449, file: !450, line: 373, baseType: !1576, offset: 1472)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !450, line: 296, elements: !339)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !416, file: !390, line: 90, baseType: !411, size: 64, offset: 192)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !416, file: !390, line: 91, baseType: !1579, size: 64, offset: 256)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !380, file: !177, line: 143, baseType: !1581, size: 64, offset: 256)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!1584, !318}
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1586)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1587)
!1587 = !{!1588, !1589, !1593, !1597, !1603, !1607}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1586, file: !18, line: 40, baseType: !17, size: 32)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1586, file: !18, line: 41, baseType: !1590, size: 64, offset: 64)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!254}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1586, file: !18, line: 42, baseType: !1594, size: 64, offset: 128)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!191}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1586, file: !18, line: 43, baseType: !1598, size: 64, offset: 192)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!301, !1601}
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1586, file: !18, line: 44, baseType: !1604, size: 64, offset: 256)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!301}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1586, file: !18, line: 45, baseType: !1608, size: 64, offset: 320)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{null, !191}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !380, file: !177, line: 144, baseType: !1612, size: 64, offset: 320)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{!301, !318}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !380, file: !177, line: 145, baseType: !1616, size: 64, offset: 384)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{null, !318, !1619, !1625}
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1524, line: 23, baseType: !1621)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1524, line: 21, size: 32, elements: !1622)
!1622 = !{!1623}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1621, file: !1524, line: 22, baseType: !1624, size: 32)
!1624 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !189, line: 32, baseType: !1096)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1524, line: 28, baseType: !1627)
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1524, line: 26, size: 32, elements: !1628)
!1628 = !{!1629}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1627, file: !1524, line: 27, baseType: !1630, size: 32)
!1630 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !189, line: 33, baseType: !1631)
!1631 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !223, line: 50, baseType: !7)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !308, file: !177, line: 70, baseType: !1633, size: 64, offset: 384)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1635, line: 123, size: 1024, elements: !1636)
!1635 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1636 = !{!1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1778, !1779, !1780, !1781, !1782}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1634, file: !1635, line: 124, baseType: !498, size: 32)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1634, file: !1635, line: 125, baseType: !498, size: 32, offset: 32)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1634, file: !1635, line: 135, baseType: !1633, size: 64, offset: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1634, file: !1635, line: 136, baseType: !213, size: 64, offset: 128)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1634, file: !1635, line: 138, baseType: !457, size: 192, align: 64, offset: 192)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1634, file: !1635, line: 140, baseType: !301, size: 64, offset: 384)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1634, file: !1635, line: 141, baseType: !7, size: 32, offset: 448)
!1644 = !DIDerivedType(tag: DW_TAG_member, scope: !1634, file: !1635, line: 142, baseType: !1645, size: 256, offset: 512)
!1645 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1634, file: !1635, line: 142, size: 256, elements: !1646)
!1646 = !{!1647, !1701, !1705}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1645, file: !1635, line: 143, baseType: !1648, size: 192)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1635, line: 91, size: 192, elements: !1649)
!1649 = !{!1650, !1651, !1652}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1648, file: !1635, line: 92, baseType: !198, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1648, file: !1635, line: 94, baseType: !474, size: 64, offset: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1648, file: !1635, line: 100, baseType: !1653, size: 64, offset: 128)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1635, line: 180, size: 704, elements: !1655)
!1655 = !{!1656, !1657, !1658, !1671, !1672, !1673, !1699, !1700}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1654, file: !1635, line: 182, baseType: !1633, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1654, file: !1635, line: 183, baseType: !7, size: 32, offset: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1654, file: !1635, line: 186, baseType: !1659, size: 192, offset: 128)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1660, line: 19, size: 192, elements: !1661)
!1660 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1661 = !{!1662, !1669, !1670}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1659, file: !1660, line: 20, baseType: !1663, size: 128)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1664, line: 292, size: 128, elements: !1665)
!1664 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1665 = !{!1666, !1667, !1668}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1663, file: !1664, line: 293, baseType: !325)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1663, file: !1664, line: 295, baseType: !188, size: 32)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1663, file: !1664, line: 296, baseType: !191, size: 64, offset: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1659, file: !1660, line: 21, baseType: !7, size: 32, offset: 128)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1659, file: !1660, line: 22, baseType: !7, size: 32, offset: 160)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1654, file: !1635, line: 187, baseType: !194, size: 32, offset: 320)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1654, file: !1635, line: 188, baseType: !194, size: 32, offset: 352)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1654, file: !1635, line: 189, baseType: !1674, size: 64, offset: 384)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1635, line: 168, size: 320, elements: !1676)
!1676 = !{!1677, !1683, !1687, !1691, !1695}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1675, file: !1635, line: 169, baseType: !1678, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!190, !1681, !1653}
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !439, line: 539, flags: DIFlagFwdDecl)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1675, file: !1635, line: 171, baseType: !1684, size: 64, offset: 64)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{!190, !1633, !213, !404}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1675, file: !1635, line: 173, baseType: !1688, size: 64, offset: 128)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{!190, !1633}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1675, file: !1635, line: 174, baseType: !1692, size: 64, offset: 192)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{!190, !1633, !1633, !213}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1675, file: !1635, line: 176, baseType: !1696, size: 64, offset: 256)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{!190, !1681, !1633, !1653}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1654, file: !1635, line: 192, baseType: !312, size: 128, offset: 448)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1654, file: !1635, line: 194, baseType: !905, size: 128, offset: 576)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1645, file: !1635, line: 144, baseType: !1702, size: 64)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1635, line: 103, size: 64, elements: !1703)
!1703 = !{!1704}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1702, file: !1635, line: 104, baseType: !1633, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1645, file: !1635, line: 145, baseType: !1706, size: 256)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1635, line: 107, size: 256, elements: !1707)
!1707 = !{!1708, !1773, !1776, !1777}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1706, file: !1635, line: 108, baseType: !1709, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1711)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1635, line: 217, size: 768, elements: !1712)
!1712 = !{!1713, !1733, !1737, !1741, !1746, !1750, !1754, !1758, !1759, !1760, !1761, !1769}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1711, file: !1635, line: 222, baseType: !1714, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!190, !1717}
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1635, line: 197, size: 1088, elements: !1719)
!1719 = !{!1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1718, file: !1635, line: 199, baseType: !1633, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1718, file: !1635, line: 200, baseType: !437, size: 64, offset: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1718, file: !1635, line: 201, baseType: !1681, size: 64, offset: 128)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1718, file: !1635, line: 202, baseType: !191, size: 64, offset: 192)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1718, file: !1635, line: 205, baseType: !575, size: 192, offset: 256)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1718, file: !1635, line: 206, baseType: !575, size: 192, offset: 448)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1718, file: !1635, line: 207, baseType: !190, size: 32, offset: 640)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1718, file: !1635, line: 208, baseType: !312, size: 128, offset: 704)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1718, file: !1635, line: 209, baseType: !259, size: 64, offset: 832)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1718, file: !1635, line: 211, baseType: !221, size: 64, offset: 896)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1718, file: !1635, line: 212, baseType: !254, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1718, file: !1635, line: 213, baseType: !254, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1718, file: !1635, line: 214, baseType: !1568, size: 64, offset: 1024)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1711, file: !1635, line: 223, baseType: !1734, size: 64, offset: 64)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{null, !1717}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1711, file: !1635, line: 236, baseType: !1738, size: 64, offset: 128)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{!190, !1681, !191}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1711, file: !1635, line: 238, baseType: !1742, size: 64, offset: 192)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{!191, !1681, !1745}
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1711, file: !1635, line: 239, baseType: !1747, size: 64, offset: 256)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DISubroutineType(types: !1749)
!1749 = !{!191, !1681, !191, !1745}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1711, file: !1635, line: 240, baseType: !1751, size: 64, offset: 320)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{null, !1681, !191}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1711, file: !1635, line: 242, baseType: !1755, size: 64, offset: 384)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DISubroutineType(types: !1757)
!1757 = !{!396, !1717, !259, !221, !440}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1711, file: !1635, line: 252, baseType: !221, size: 64, offset: 448)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1711, file: !1635, line: 259, baseType: !254, size: 8, offset: 512)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1711, file: !1635, line: 260, baseType: !1755, size: 64, offset: 576)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1711, file: !1635, line: 263, baseType: !1762, size: 64, offset: 640)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DISubroutineType(types: !1764)
!1764 = !{!1765, !1717, !1767}
!1765 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1766, line: 52, baseType: !7)
!1766 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1635, line: 27, flags: DIFlagFwdDecl)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1711, file: !1635, line: 266, baseType: !1770, size: 64, offset: 704)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{!190, !1717, !448}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1706, file: !1635, line: 109, baseType: !1774, size: 64, offset: 64)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1635, line: 31, flags: DIFlagFwdDecl)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1706, file: !1635, line: 110, baseType: !440, size: 64, offset: 128)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1706, file: !1635, line: 111, baseType: !1633, size: 64, offset: 192)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1634, file: !1635, line: 148, baseType: !191, size: 64, offset: 768)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1634, file: !1635, line: 154, baseType: !478, size: 64, offset: 832)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1634, file: !1635, line: 156, baseType: !405, size: 16, offset: 896)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1634, file: !1635, line: 157, baseType: !404, size: 16, offset: 912)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1634, file: !1635, line: 158, baseType: !1783, size: 64, offset: 960)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1635, line: 32, flags: DIFlagFwdDecl)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !308, file: !177, line: 71, baseType: !1786, size: 32, offset: 448)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1787, line: 19, size: 32, elements: !1788)
!1787 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1788 = !{!1789}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1786, file: !1787, line: 20, baseType: !634, size: 32)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !308, file: !177, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !308, file: !177, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !308, file: !177, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !308, file: !177, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !308, file: !177, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !305, file: !30, line: 463, baseType: !1796, size: 64, offset: 512)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !305, file: !30, line: 465, baseType: !1798, size: 64, offset: 576)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !305, file: !30, line: 467, baseType: !213, size: 64, offset: 640)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !305, file: !30, line: 468, baseType: !1802, size: 64, offset: 704)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1804)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1805)
!1805 = !{!1806, !1807, !1808, !1812, !1817, !1821}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1804, file: !30, line: 88, baseType: !213, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1804, file: !30, line: 89, baseType: !413, size: 64, offset: 64)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1804, file: !30, line: 90, baseType: !1809, size: 64, offset: 128)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{!190, !1796, !361}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1804, file: !30, line: 91, baseType: !1813, size: 64, offset: 192)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{!259, !1796, !1816, !1619, !1625}
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1804, file: !30, line: 93, baseType: !1818, size: 64, offset: 256)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{null, !1796}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1804, file: !30, line: 95, baseType: !1822, size: 64, offset: 320)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1824)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1825)
!1825 = !{!1826, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1824, file: !37, line: 279, baseType: !1827, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{!190, !1796}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1824, file: !37, line: 280, baseType: !1818, size: 64, offset: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1824, file: !37, line: 281, baseType: !1827, size: 64, offset: 128)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1824, file: !37, line: 282, baseType: !1827, size: 64, offset: 192)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1824, file: !37, line: 283, baseType: !1827, size: 64, offset: 256)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1824, file: !37, line: 284, baseType: !1827, size: 64, offset: 320)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1824, file: !37, line: 285, baseType: !1827, size: 64, offset: 384)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1824, file: !37, line: 286, baseType: !1827, size: 64, offset: 448)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1824, file: !37, line: 287, baseType: !1827, size: 64, offset: 512)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1824, file: !37, line: 288, baseType: !1827, size: 64, offset: 576)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1824, file: !37, line: 289, baseType: !1827, size: 64, offset: 640)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1824, file: !37, line: 290, baseType: !1827, size: 64, offset: 704)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1824, file: !37, line: 291, baseType: !1827, size: 64, offset: 768)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1824, file: !37, line: 292, baseType: !1827, size: 64, offset: 832)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1824, file: !37, line: 293, baseType: !1827, size: 64, offset: 896)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1824, file: !37, line: 294, baseType: !1827, size: 64, offset: 960)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1824, file: !37, line: 295, baseType: !1827, size: 64, offset: 1024)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1824, file: !37, line: 296, baseType: !1827, size: 64, offset: 1088)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1824, file: !37, line: 297, baseType: !1827, size: 64, offset: 1152)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1824, file: !37, line: 298, baseType: !1827, size: 64, offset: 1216)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1824, file: !37, line: 299, baseType: !1827, size: 64, offset: 1280)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1824, file: !37, line: 300, baseType: !1827, size: 64, offset: 1344)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1824, file: !37, line: 301, baseType: !1827, size: 64, offset: 1408)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !305, file: !30, line: 470, baseType: !1853, size: 64, offset: 768)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1855, line: 82, size: 1408, elements: !1856)
!1855 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1856 = !{!1857, !1858, !1859, !1860, !1861, !1862, !1863, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1942, !1945, !1948}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1854, file: !1855, line: 83, baseType: !213, size: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1854, file: !1855, line: 84, baseType: !213, size: 64, offset: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1854, file: !1855, line: 85, baseType: !1796, size: 64, offset: 128)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1854, file: !1855, line: 86, baseType: !413, size: 64, offset: 192)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1854, file: !1855, line: 87, baseType: !413, size: 64, offset: 256)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1854, file: !1855, line: 88, baseType: !413, size: 64, offset: 320)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1854, file: !1855, line: 90, baseType: !1864, size: 64, offset: 384)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{!190, !1796, !1867}
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1869)
!1869 = !{!1870, !1871, !1872, !1876, !1877, !1878, !1879, !1893, !1906, !1907, !1908, !1909, !1910, !1918, !1919, !1920, !1921, !1922, !1923}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1868, file: !24, line: 96, baseType: !213, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1868, file: !24, line: 97, baseType: !1853, size: 64, offset: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1868, file: !24, line: 99, baseType: !1873, size: 64, offset: 128)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1875, line: 76, flags: DIFlagFwdDecl)
!1875 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1868, file: !24, line: 100, baseType: !213, size: 64, offset: 192)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1868, file: !24, line: 102, baseType: !254, size: 8, offset: 256)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1868, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1868, file: !24, line: 105, baseType: !1880, size: 64, offset: 320)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1882)
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1883, line: 262, size: 1600, elements: !1884)
!1883 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1884 = !{!1885, !1887, !1888, !1892}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1882, file: !1883, line: 263, baseType: !1886, size: 256)
!1886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 256, elements: !1430)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1882, file: !1883, line: 264, baseType: !1886, size: 256, offset: 256)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1882, file: !1883, line: 265, baseType: !1889, size: 1024, offset: 512)
!1889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 1024, elements: !1890)
!1890 = !{!1891}
!1891 = !DISubrange(count: 128)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1882, file: !1883, line: 266, baseType: !301, size: 64, offset: 1536)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1868, file: !24, line: 106, baseType: !1894, size: 64, offset: 384)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1896)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1883, line: 210, size: 256, elements: !1897)
!1897 = !{!1898, !1902, !1904, !1905}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1896, file: !1883, line: 211, baseType: !1899, size: 72)
!1899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !766, size: 72, elements: !1900)
!1900 = !{!1901}
!1901 = !DISubrange(count: 9)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1896, file: !1883, line: 212, baseType: !1903, size: 64, offset: 128)
!1903 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1883, line: 14, baseType: !198)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1896, file: !1883, line: 213, baseType: !196, size: 32, offset: 192)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1896, file: !1883, line: 214, baseType: !196, size: 32, offset: 224)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1868, file: !24, line: 108, baseType: !1827, size: 64, offset: 448)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1868, file: !24, line: 109, baseType: !1818, size: 64, offset: 512)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1868, file: !24, line: 110, baseType: !1827, size: 64, offset: 576)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1868, file: !24, line: 111, baseType: !1818, size: 64, offset: 640)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1868, file: !24, line: 112, baseType: !1911, size: 64, offset: 704)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!190, !1796, !1914}
!1914 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1915)
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1916)
!1916 = !{!1917}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1915, file: !37, line: 51, baseType: !190, size: 32)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1868, file: !24, line: 113, baseType: !1827, size: 64, offset: 768)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1868, file: !24, line: 114, baseType: !413, size: 64, offset: 832)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1868, file: !24, line: 115, baseType: !413, size: 64, offset: 896)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1868, file: !24, line: 117, baseType: !1822, size: 64, offset: 960)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1868, file: !24, line: 118, baseType: !1818, size: 64, offset: 1024)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1868, file: !24, line: 120, baseType: !1924, size: 64, offset: 1088)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1854, file: !1855, line: 91, baseType: !1809, size: 64, offset: 448)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1854, file: !1855, line: 92, baseType: !1827, size: 64, offset: 512)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1854, file: !1855, line: 93, baseType: !1818, size: 64, offset: 576)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1854, file: !1855, line: 94, baseType: !1827, size: 64, offset: 640)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1854, file: !1855, line: 95, baseType: !1818, size: 64, offset: 704)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1854, file: !1855, line: 97, baseType: !1827, size: 64, offset: 768)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1854, file: !1855, line: 98, baseType: !1827, size: 64, offset: 832)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1854, file: !1855, line: 100, baseType: !1911, size: 64, offset: 896)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1854, file: !1855, line: 101, baseType: !1827, size: 64, offset: 960)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1854, file: !1855, line: 103, baseType: !1827, size: 64, offset: 1024)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1854, file: !1855, line: 105, baseType: !1827, size: 64, offset: 1088)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1854, file: !1855, line: 107, baseType: !1822, size: 64, offset: 1152)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1854, file: !1855, line: 109, baseType: !1939, size: 64, offset: 1216)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1941)
!1941 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1855, line: 109, flags: DIFlagFwdDecl)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1854, file: !1855, line: 111, baseType: !1943, size: 64, offset: 1280)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1855, line: 111, flags: DIFlagFwdDecl)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1854, file: !1855, line: 112, baseType: !1946, offset: 1344)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1947, line: 187, elements: !339)
!1947 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1854, file: !1855, line: 114, baseType: !254, size: 8, offset: 1344)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !305, file: !30, line: 471, baseType: !1867, size: 64, offset: 832)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !305, file: !30, line: 473, baseType: !191, size: 64, offset: 896)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !305, file: !30, line: 475, baseType: !191, size: 64, offset: 960)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !305, file: !30, line: 480, baseType: !575, size: 192, offset: 1024)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !305, file: !30, line: 484, baseType: !1954, size: 576, offset: 1216)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1955)
!1955 = !{!1956, !1957, !1958, !1959, !1960, !1961}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1954, file: !30, line: 362, baseType: !312, size: 128)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1954, file: !30, line: 363, baseType: !312, size: 128, offset: 128)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1954, file: !30, line: 364, baseType: !312, size: 128, offset: 256)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1954, file: !30, line: 365, baseType: !312, size: 128, offset: 384)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1954, file: !30, line: 366, baseType: !254, size: 8, offset: 512)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1954, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !305, file: !30, line: 485, baseType: !1963, size: 2304, offset: 1792)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1964)
!1964 = !{!1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2060, !2064}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1963, file: !37, line: 566, baseType: !1914, size: 32)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1963, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1963, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1963, file: !37, line: 569, baseType: !254, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1963, file: !37, line: 570, baseType: !254, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1963, file: !37, line: 571, baseType: !254, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1963, file: !37, line: 572, baseType: !254, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1963, file: !37, line: 573, baseType: !254, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1963, file: !37, line: 574, baseType: !254, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1963, file: !37, line: 575, baseType: !254, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1963, file: !37, line: 576, baseType: !254, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1963, file: !37, line: 577, baseType: !194, size: 32, offset: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1963, file: !37, line: 578, baseType: !325, offset: 96)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1963, file: !37, line: 580, baseType: !312, size: 128, offset: 128)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1963, file: !37, line: 581, baseType: !934, size: 192, offset: 256)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1963, file: !37, line: 582, baseType: !1981, size: 64, offset: 448)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1983, line: 43, size: 1472, elements: !1984)
!1983 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1984 = !{!1985, !1986, !1987, !1988, !1989, !1992, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1982, file: !1983, line: 44, baseType: !213, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1982, file: !1983, line: 45, baseType: !190, size: 32, offset: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1982, file: !1983, line: 46, baseType: !312, size: 128, offset: 128)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1982, file: !1983, line: 47, baseType: !325, offset: 256)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1982, file: !1983, line: 48, baseType: !1990, size: 64, offset: 256)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1982, file: !1983, line: 49, baseType: !1993, size: 320, offset: 320)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1994, line: 11, size: 320, elements: !1995)
!1994 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1995 = !{!1996, !1997, !1998, !2003}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1993, file: !1994, line: 16, baseType: !898, size: 128)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1993, file: !1994, line: 17, baseType: !198, size: 64, offset: 128)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1993, file: !1994, line: 18, baseType: !1999, size: 64, offset: 192)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{null, !2002}
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1993, file: !1994, line: 19, baseType: !194, size: 32, offset: 256)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1982, file: !1983, line: 50, baseType: !198, size: 64, offset: 640)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1982, file: !1983, line: 51, baseType: !704, size: 64, offset: 704)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1982, file: !1983, line: 52, baseType: !704, size: 64, offset: 768)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1982, file: !1983, line: 53, baseType: !704, size: 64, offset: 832)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1982, file: !1983, line: 54, baseType: !704, size: 64, offset: 896)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1982, file: !1983, line: 55, baseType: !704, size: 64, offset: 960)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1982, file: !1983, line: 56, baseType: !198, size: 64, offset: 1024)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1982, file: !1983, line: 57, baseType: !198, size: 64, offset: 1088)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1982, file: !1983, line: 58, baseType: !198, size: 64, offset: 1152)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1982, file: !1983, line: 59, baseType: !198, size: 64, offset: 1216)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1982, file: !1983, line: 60, baseType: !198, size: 64, offset: 1280)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1982, file: !1983, line: 61, baseType: !1796, size: 64, offset: 1344)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1982, file: !1983, line: 62, baseType: !254, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1982, file: !1983, line: 63, baseType: !254, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1963, file: !37, line: 583, baseType: !254, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1963, file: !37, line: 584, baseType: !254, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1963, file: !37, line: 585, baseType: !254, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1963, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1963, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1963, file: !37, line: 592, baseType: !696, size: 512, offset: 576)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1963, file: !37, line: 593, baseType: !478, size: 64, offset: 1088)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1963, file: !37, line: 594, baseType: !1535, size: 256, offset: 1152)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1963, file: !37, line: 595, baseType: !905, size: 128, offset: 1408)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1963, file: !37, line: 596, baseType: !1990, size: 64, offset: 1536)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1963, file: !37, line: 597, baseType: !498, size: 32, offset: 1600)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1963, file: !37, line: 598, baseType: !498, size: 32, offset: 1632)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1963, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1963, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1963, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1963, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1963, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1963, file: !37, line: 604, baseType: !254, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1963, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1963, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1963, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1963, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1963, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1963, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1963, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1963, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1963, file: !37, line: 613, baseType: !190, size: 32, offset: 1792)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1963, file: !37, line: 614, baseType: !190, size: 32, offset: 1824)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1963, file: !37, line: 615, baseType: !478, size: 64, offset: 1856)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1963, file: !37, line: 616, baseType: !478, size: 64, offset: 1920)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1963, file: !37, line: 617, baseType: !478, size: 64, offset: 1984)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1963, file: !37, line: 618, baseType: !478, size: 64, offset: 2048)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1963, file: !37, line: 620, baseType: !2051, size: 64, offset: 2112)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !2053)
!2053 = !{!2054, !2055, !2056, !2057}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2052, file: !37, line: 537, baseType: !325)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2052, file: !37, line: 538, baseType: !7, size: 32)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !2052, file: !37, line: 540, baseType: !312, size: 128, offset: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !2052, file: !37, line: 543, baseType: !2058, size: 64, offset: 192)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1963, file: !37, line: 621, baseType: !2061, size: 64, offset: 2176)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{null, !1796, !858}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1963, file: !37, line: 622, baseType: !2065, size: 64, offset: 2240)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !305, file: !30, line: 486, baseType: !2068, size: 64, offset: 4096)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !2070)
!2070 = !{!2071, !2072, !2073, !2077, !2078, !2079}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2069, file: !37, line: 643, baseType: !1824, size: 1472)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2069, file: !37, line: 644, baseType: !1827, size: 64, offset: 1472)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2069, file: !37, line: 645, baseType: !2074, size: 64, offset: 1536)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{null, !1796, !254}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2069, file: !37, line: 646, baseType: !1827, size: 64, offset: 1600)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2069, file: !37, line: 647, baseType: !1818, size: 64, offset: 1664)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2069, file: !37, line: 648, baseType: !1818, size: 64, offset: 1728)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !305, file: !30, line: 493, baseType: !2081, size: 64, offset: 4160)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !51, line: 162, size: 1088, elements: !2083)
!2083 = !{!2084, !2085, !2086, !2146, !2147, !2148, !2149, !2150, !2151, !2154, !2155, !2156, !2157, !2158, !2159, !2160}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2082, file: !51, line: 163, baseType: !312, size: 128)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2082, file: !51, line: 164, baseType: !213, size: 64, offset: 128)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2082, file: !51, line: 165, baseType: !2087, size: 64, offset: 192)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2089)
!2089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !51, line: 105, size: 640, elements: !2090)
!2090 = !{!2091, !2095, !2106, !2111, !2115, !2123, !2127, !2131, !2138, !2142}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2089, file: !51, line: 106, baseType: !2092, size: 64)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!190, !2081, !264, !50}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !2089, file: !51, line: 108, baseType: !2096, size: 64, offset: 64)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{!190, !2081, !2099, !50}
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !51, line: 63, size: 640, elements: !2101)
!2101 = !{!2102, !2103, !2104}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2100, file: !51, line: 64, baseType: !277, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !2100, file: !51, line: 65, baseType: !190, size: 32, offset: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !2100, file: !51, line: 66, baseType: !2105, size: 512, offset: 96)
!2105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 512, elements: !991)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !2089, file: !51, line: 110, baseType: !2107, size: 64, offset: 128)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DISubroutineType(types: !2109)
!2109 = !{!190, !2081, !7, !2110}
!2110 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !189, line: 164, baseType: !198)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !2089, file: !51, line: 111, baseType: !2112, size: 64, offset: 192)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{null, !2081, !7}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !2089, file: !51, line: 112, baseType: !2116, size: 64, offset: 256)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!190, !2081, !264, !2119, !7, !2121, !2122}
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !194)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2089, file: !51, line: 117, baseType: !2124, size: 64, offset: 320)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{!190, !2081, !7, !7, !191}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2089, file: !51, line: 119, baseType: !2128, size: 64, offset: 384)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{null, !2081, !7, !7}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2089, file: !51, line: 121, baseType: !2132, size: 64, offset: 448)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!190, !2081, !2135, !254}
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !2137, line: 11, flags: DIFlagFwdDecl)
!2137 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !2089, file: !51, line: 122, baseType: !2139, size: 64, offset: 512)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{null, !2081, !2135}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !2089, file: !51, line: 123, baseType: !2143, size: 64, offset: 576)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!190, !2081, !2099, !2121, !2122}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !2082, file: !51, line: 166, baseType: !191, size: 64, offset: 256)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2082, file: !51, line: 167, baseType: !7, size: 32, offset: 320)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !2082, file: !51, line: 168, baseType: !7, size: 32, offset: 352)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2082, file: !51, line: 171, baseType: !277, size: 64, offset: 384)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !2082, file: !51, line: 172, baseType: !50, size: 32, offset: 448)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !2082, file: !51, line: 173, baseType: !2152, size: 64, offset: 512)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !51, line: 134, flags: DIFlagFwdDecl)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2082, file: !51, line: 175, baseType: !2081, size: 64, offset: 576)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !2082, file: !51, line: 182, baseType: !2110, size: 64, offset: 640)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !2082, file: !51, line: 183, baseType: !7, size: 32, offset: 704)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !2082, file: !51, line: 184, baseType: !7, size: 32, offset: 736)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !2082, file: !51, line: 185, baseType: !1663, size: 128, offset: 768)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !2082, file: !51, line: 186, baseType: !575, size: 192, offset: 896)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !2082, file: !51, line: 187, baseType: !2161, offset: 1088)
!2161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !1549)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !305, file: !30, line: 499, baseType: !312, size: 128, offset: 4224)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !305, file: !30, line: 502, baseType: !2164, size: 64, offset: 4352)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2166)
!2166 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !305, file: !30, line: 504, baseType: !2168, size: 64, offset: 4416)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !305, file: !30, line: 505, baseType: !478, size: 64, offset: 4480)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !305, file: !30, line: 510, baseType: !478, size: 64, offset: 4544)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !305, file: !30, line: 511, baseType: !2172, size: 64, offset: 4608)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2174)
!2174 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !305, file: !30, line: 513, baseType: !2176, size: 64, offset: 4672)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !2178)
!2178 = !{!2179, !2180}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2177, file: !30, line: 293, baseType: !7, size: 32)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2177, file: !30, line: 294, baseType: !198, size: 64, offset: 64)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !305, file: !30, line: 515, baseType: !312, size: 128, offset: 4736)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !305, file: !30, line: 526, baseType: !2183, offset: 4864)
!2183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2184, line: 5, elements: !339)
!2184 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !305, file: !30, line: 528, baseType: !264, size: 64, offset: 4864)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !305, file: !30, line: 529, baseType: !277, size: 64, offset: 4928)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !305, file: !30, line: 534, baseType: !2188, size: 32, offset: 4992)
!2188 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !189, line: 16, baseType: !2189)
!2189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !189, line: 13, baseType: !194)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !305, file: !30, line: 535, baseType: !194, size: 32, offset: 5024)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !305, file: !30, line: 537, baseType: !325, offset: 5056)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !305, file: !30, line: 538, baseType: !312, size: 128, offset: 5056)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !305, file: !30, line: 540, baseType: !2194, size: 64, offset: 5184)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2196, line: 54, size: 960, elements: !2197)
!2196 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2197 = !{!2198, !2199, !2200, !2201, !2202, !2203, !2204, !2208, !2212, !2213, !2214, !2215, !2219, !2223, !2224}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2195, file: !2196, line: 55, baseType: !213, size: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2195, file: !2196, line: 56, baseType: !1873, size: 64, offset: 64)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2195, file: !2196, line: 58, baseType: !413, size: 64, offset: 128)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2195, file: !2196, line: 59, baseType: !413, size: 64, offset: 192)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2195, file: !2196, line: 60, baseType: !318, size: 64, offset: 256)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2195, file: !2196, line: 62, baseType: !1809, size: 64, offset: 320)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2195, file: !2196, line: 63, baseType: !2205, size: 64, offset: 384)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{!259, !1796, !1816}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2195, file: !2196, line: 65, baseType: !2209, size: 64, offset: 448)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{null, !2194}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2195, file: !2196, line: 66, baseType: !1818, size: 64, offset: 512)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2195, file: !2196, line: 68, baseType: !1827, size: 64, offset: 576)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2195, file: !2196, line: 70, baseType: !1584, size: 64, offset: 640)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2195, file: !2196, line: 71, baseType: !2216, size: 64, offset: 704)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{!301, !1796}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2195, file: !2196, line: 73, baseType: !2220, size: 64, offset: 768)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{null, !1796, !1619, !1625}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2195, file: !2196, line: 75, baseType: !1822, size: 64, offset: 832)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2195, file: !2196, line: 77, baseType: !1943, size: 64, offset: 896)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !305, file: !30, line: 541, baseType: !413, size: 64, offset: 5248)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !305, file: !30, line: 543, baseType: !1818, size: 64, offset: 5312)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !305, file: !30, line: 544, baseType: !2228, size: 64, offset: 5376)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !305, file: !30, line: 545, baseType: !2231, size: 64, offset: 5440)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !305, file: !30, line: 547, baseType: !254, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !305, file: !30, line: 548, baseType: !254, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !305, file: !30, line: 549, baseType: !254, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !305, file: !30, line: 550, baseType: !254, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !281, file: !274, line: 116, baseType: !2238, size: 64, offset: 256)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!254, !295, !213}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !281, file: !274, line: 118, baseType: !2242, size: 64, offset: 320)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{!190, !295, !213, !7, !191, !221}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !281, file: !274, line: 123, baseType: !2246, size: 64, offset: 384)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DISubroutineType(types: !2248)
!2248 = !{!190, !295, !213, !2249, !221}
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !281, file: !274, line: 126, baseType: !2251, size: 64, offset: 448)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DISubroutineType(types: !2253)
!2253 = !{!213, !295}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !281, file: !274, line: 127, baseType: !2251, size: 64, offset: 512)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !281, file: !274, line: 128, baseType: !2256, size: 64, offset: 576)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{!277, !295}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !281, file: !274, line: 130, baseType: !2260, size: 64, offset: 640)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = !DISubroutineType(types: !2262)
!2262 = !{!277, !295, !277}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !281, file: !274, line: 133, baseType: !2264, size: 64, offset: 704)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!277, !295, !213}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !281, file: !274, line: 135, baseType: !2268, size: 64, offset: 768)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!190, !295, !213, !213, !7, !7, !2271}
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !274, line: 43, size: 640, elements: !2273)
!2273 = !{!2274, !2275, !2276}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2272, file: !274, line: 44, baseType: !277, size: 64)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2272, file: !274, line: 45, baseType: !7, size: 32, offset: 64)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2272, file: !274, line: 46, baseType: !2277, size: 512, offset: 128)
!2277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !478, size: 512, elements: !734)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !281, file: !274, line: 140, baseType: !2260, size: 64, offset: 832)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !281, file: !274, line: 143, baseType: !2256, size: 64, offset: 896)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !281, file: !274, line: 145, baseType: !284, size: 64, offset: 960)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !281, file: !274, line: 146, baseType: !2282, size: 64, offset: 1024)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{!190, !295, !2285}
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !274, line: 29, size: 128, elements: !2287)
!2287 = !{!2288, !2289, !2290}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2286, file: !274, line: 30, baseType: !7, size: 32)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2286, file: !274, line: 31, baseType: !7, size: 32, offset: 32)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2286, file: !274, line: 32, baseType: !295, size: 64, offset: 64)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !281, file: !274, line: 148, baseType: !2292, size: 64, offset: 1088)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{!190, !295, !1796}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !273, file: !274, line: 20, baseType: !1796, size: 64, offset: 128)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !265, file: !266, line: 57, baseType: !2297, size: 64, offset: 384)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !266, line: 31, size: 704, elements: !2299)
!2299 = !{!2300, !2301, !2302, !2303, !2304}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2298, file: !266, line: 32, baseType: !259, size: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2298, file: !266, line: 33, baseType: !190, size: 32, offset: 64)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2298, file: !266, line: 34, baseType: !191, size: 64, offset: 128)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2298, file: !266, line: 35, baseType: !2297, size: 64, offset: 192)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2298, file: !266, line: 43, baseType: !428, size: 448, offset: 256)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !265, file: !266, line: 58, baseType: !2297, size: 64, offset: 448)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !265, file: !266, line: 59, baseType: !264, size: 64, offset: 512)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !265, file: !266, line: 60, baseType: !264, size: 64, offset: 576)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !265, file: !266, line: 61, baseType: !264, size: 64, offset: 640)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !265, file: !266, line: 63, baseType: !308, size: 512, offset: 704)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !265, file: !266, line: 65, baseType: !198, size: 64, offset: 1216)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !265, file: !266, line: 66, baseType: !191, size: 64, offset: 1280)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "drv_data", scope: !205, file: !65, line: 284, baseType: !191, size: 64, offset: 384)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !205, file: !65, line: 287, baseType: !305, size: 5568, offset: 448)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "changed_work", scope: !205, file: !65, line: 288, baseType: !1535, size: 256, offset: 6016)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_register_work", scope: !205, file: !65, line: 289, baseType: !2316, size: 704, offset: 6272)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1536, line: 115, size: 704, elements: !2317)
!2317 = !{!2318, !2319, !2320, !2323}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2316, file: !1536, line: 116, baseType: !1535, size: 256)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2316, file: !1536, line: 117, baseType: !1993, size: 320, offset: 256)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2316, file: !1536, line: 120, baseType: !2321, size: 64, offset: 576)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1536, line: 18, flags: DIFlagFwdDecl)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2316, file: !1536, line: 121, baseType: !190, size: 32, offset: 640)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "changed_lock", scope: !205, file: !65, line: 290, baseType: !325, offset: 6976)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !205, file: !65, line: 291, baseType: !254, size: 8, offset: 6976)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !205, file: !65, line: 292, baseType: !254, size: 8, offset: 6984)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "removing", scope: !205, file: !65, line: 293, baseType: !254, size: 8, offset: 6992)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "use_cnt", scope: !205, file: !65, line: 294, baseType: !498, size: 32, offset: 7008)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "tzd", scope: !205, file: !65, line: 296, baseType: !2330, size: 64, offset: 7040)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_device", file: !65, line: 296, flags: DIFlagFwdDecl)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "tcd", scope: !205, file: !65, line: 297, baseType: !2333, size: 64, offset: 7104)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device", file: !65, line: 297, flags: DIFlagFwdDecl)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "charger_desc", scope: !201, file: !3, line: 83, baseType: !210, size: 768, offset: 64)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !201, file: !3, line: 84, baseType: !2337, size: 64, offset: 832)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !2339, line: 351, size: 10880, elements: !2340)
!2339 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/lizy2001/genbc/linux")
!2340 = !{!2341, !2342, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2359, !2376, !2450, !2479, !2503, !2524, !2530, !2539, !2571, !2585, !2607, !2611, !2612, !2613, !2614, !2615, !2616, !2617}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !2338, file: !2339, line: 352, baseType: !190, size: 32)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !2338, file: !2339, line: 353, baseType: !2343, size: 64, offset: 64)
!2343 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !193, line: 424, baseType: !191)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2338, file: !2339, line: 354, baseType: !273, size: 192, offset: 128)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2338, file: !2339, line: 355, baseType: !2337, size: 64, offset: 320)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2338, file: !2339, line: 356, baseType: !312, size: 128, offset: 384)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2338, file: !2339, line: 357, baseType: !312, size: 128, offset: 512)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !2338, file: !2339, line: 358, baseType: !312, size: 128, offset: 640)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !2338, file: !2339, line: 359, baseType: !312, size: 128, offset: 768)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2338, file: !2339, line: 360, baseType: !2351, size: 32, offset: 896)
!2351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !2339, line: 179, size: 32, elements: !2352)
!2352 = !{!2353, !2354, !2355, !2356, !2357, !2358}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !2351, file: !2339, line: 180, baseType: !194, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2351, file: !2339, line: 181, baseType: !194, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !2351, file: !2339, line: 182, baseType: !194, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !2351, file: !2339, line: 183, baseType: !194, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !2351, file: !2339, line: 184, baseType: !194, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2351, file: !2339, line: 185, baseType: !194, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2338, file: !2339, line: 361, baseType: !2360, size: 32, offset: 928)
!2360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !2339, line: 190, size: 32, elements: !2361)
!2361 = !{!2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !2360, file: !2339, line: 191, baseType: !194, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2360, file: !2339, line: 192, baseType: !194, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !2360, file: !2339, line: 193, baseType: !194, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !2360, file: !2339, line: 194, baseType: !194, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !2360, file: !2339, line: 195, baseType: !194, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !2360, file: !2339, line: 196, baseType: !194, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !2360, file: !2339, line: 197, baseType: !194, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !2360, file: !2339, line: 198, baseType: !194, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !2360, file: !2339, line: 199, baseType: !194, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !2360, file: !2339, line: 200, baseType: !194, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !2360, file: !2339, line: 201, baseType: !194, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !2360, file: !2339, line: 202, baseType: !194, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !2360, file: !2339, line: 203, baseType: !194, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2360, file: !2339, line: 204, baseType: !194, size: 19, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !2338, file: !2339, line: 362, baseType: !2377, size: 960, offset: 960)
!2377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !2339, line: 234, size: 960, elements: !2378)
!2378 = !{!2379, !2381, !2388, !2390, !2391, !2392, !2397, !2400}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !2377, file: !2339, line: 235, baseType: !2380, size: 64)
!2380 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !2339, line: 217, baseType: !1137)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2377, file: !2339, line: 236, baseType: !2382, size: 32, offset: 64)
!2382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !2339, line: 227, size: 32, elements: !2383)
!2383 = !{!2384, !2385, !2386, !2387}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !2382, file: !2339, line: 228, baseType: !194, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !2382, file: !2339, line: 229, baseType: !194, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !2382, file: !2339, line: 230, baseType: !194, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2382, file: !2339, line: 231, baseType: !194, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !2377, file: !2339, line: 237, baseType: !2389, size: 64, offset: 128)
!2389 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !2339, line: 218, baseType: !478)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !2377, file: !2339, line: 238, baseType: !259, size: 64, offset: 192)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2377, file: !2339, line: 239, baseType: !312, size: 128, offset: 256)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !2377, file: !2339, line: 240, baseType: !2393, size: 320, offset: 384)
!2393 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !2339, line: 219, baseType: !2394)
!2394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 320, elements: !2395)
!2395 = !{!2396}
!2396 = !DISubrange(count: 40)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !2377, file: !2339, line: 241, baseType: !2398, size: 160, offset: 704)
!2398 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !2339, line: 220, baseType: !2399)
!2399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 160, elements: !1401)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !2377, file: !2339, line: 242, baseType: !2401, size: 64, offset: 896)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !193, line: 899, size: 192, elements: !2403)
!2403 = !{!2404, !2406, !2411, !2417, !2424, !2430, !2436, !2444}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2402, file: !193, line: 900, baseType: !2405, size: 32)
!2405 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !193, line: 635, baseType: !194)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !2402, file: !193, line: 904, baseType: !2407, size: 128)
!2407 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2402, file: !193, line: 901, size: 128, elements: !2408)
!2408 = !{!2409, !2410}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2407, file: !193, line: 902, baseType: !2405, size: 32)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2407, file: !193, line: 903, baseType: !478, size: 64, offset: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2402, file: !193, line: 910, baseType: !2412, size: 128)
!2412 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2402, file: !193, line: 906, size: 128, elements: !2413)
!2413 = !{!2414, !2415, !2416}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2412, file: !193, line: 907, baseType: !2405, size: 32)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2412, file: !193, line: 908, baseType: !194, size: 32, offset: 32)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2412, file: !193, line: 909, baseType: !259, size: 64, offset: 64)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2402, file: !193, line: 916, baseType: !2418, size: 128)
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2402, file: !193, line: 912, size: 128, elements: !2419)
!2419 = !{!2420, !2421, !2422}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2418, file: !193, line: 913, baseType: !2405, size: 32)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2418, file: !193, line: 914, baseType: !194, size: 32, offset: 32)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2418, file: !193, line: 915, baseType: !2423, size: 64, offset: 64)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !2402, file: !193, line: 922, baseType: !2425, size: 128)
!2425 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2402, file: !193, line: 918, size: 128, elements: !2426)
!2426 = !{!2427, !2428, !2429}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2425, file: !193, line: 919, baseType: !2405, size: 32)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2425, file: !193, line: 920, baseType: !194, size: 32, offset: 32)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !2425, file: !193, line: 921, baseType: !2401, size: 64, offset: 64)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !2402, file: !193, line: 928, baseType: !2431, size: 128)
!2431 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2402, file: !193, line: 924, size: 128, elements: !2432)
!2432 = !{!2433, !2434, !2435}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2431, file: !193, line: 925, baseType: !2405, size: 32)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !2431, file: !193, line: 926, baseType: !2405, size: 32, offset: 32)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !2431, file: !193, line: 927, baseType: !2343, size: 64, offset: 64)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !2402, file: !193, line: 935, baseType: !2437, size: 192)
!2437 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2402, file: !193, line: 930, size: 192, elements: !2438)
!2438 = !{!2439, !2440, !2441, !2443}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2437, file: !193, line: 931, baseType: !2405, size: 32)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !2437, file: !193, line: 932, baseType: !194, size: 32, offset: 32)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !2437, file: !193, line: 933, baseType: !2442, size: 64, offset: 64)
!2442 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !193, line: 128, baseType: !478)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !2437, file: !193, line: 934, baseType: !194, size: 32, offset: 128)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !2402, file: !193, line: 941, baseType: !2445, size: 96)
!2445 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2402, file: !193, line: 937, size: 96, elements: !2446)
!2446 = !{!2447, !2448, !2449}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2445, file: !193, line: 938, baseType: !2405, size: 32)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !2445, file: !193, line: 939, baseType: !194, size: 32, offset: 32)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !2445, file: !193, line: 940, baseType: !194, size: 32, offset: 64)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2338, file: !2339, line: 363, baseType: !2451, size: 1344, offset: 1920)
!2451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !2339, line: 275, size: 1344, elements: !2452)
!2452 = !{!2453, !2454, !2464}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2451, file: !2339, line: 276, baseType: !190, size: 32)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2451, file: !2339, line: 277, baseType: !2455, size: 32, offset: 32)
!2455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !2339, line: 254, size: 32, elements: !2456)
!2456 = !{!2457, !2458, !2459, !2460, !2461, !2462, !2463}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !2455, file: !2339, line: 255, baseType: !194, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !2455, file: !2339, line: 256, baseType: !194, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !2455, file: !2339, line: 257, baseType: !194, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !2455, file: !2339, line: 258, baseType: !194, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !2455, file: !2339, line: 259, baseType: !194, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !2455, file: !2339, line: 260, baseType: !194, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2455, file: !2339, line: 261, baseType: !194, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2451, file: !2339, line: 278, baseType: !2465, size: 1280, offset: 64)
!2465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2466, size: 1280, elements: !2477)
!2466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !2339, line: 264, size: 256, elements: !2467)
!2467 = !{!2468, !2474, !2475, !2476}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2466, file: !2339, line: 269, baseType: !2469, size: 8)
!2469 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2466, file: !2339, line: 265, size: 8, elements: !2470)
!2470 = !{!2471, !2472, !2473}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2469, file: !2339, line: 266, baseType: !765, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !2469, file: !2339, line: 267, baseType: !765, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2469, file: !2339, line: 268, baseType: !765, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2466, file: !2339, line: 270, baseType: !190, size: 32, offset: 32)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !2466, file: !2339, line: 271, baseType: !190, size: 32, offset: 64)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !2466, file: !2339, line: 272, baseType: !312, size: 128, offset: 128)
!2477 = !{!2478}
!2478 = !DISubrange(count: 5)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2338, file: !2339, line: 364, baseType: !2480, size: 640, offset: 3264)
!2480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !2339, line: 315, size: 640, elements: !2481)
!2481 = !{!2482, !2483, !2484, !2485, !2486, !2491, !2500, !2501, !2502}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !2480, file: !2339, line: 316, baseType: !2343, size: 64)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !2480, file: !2339, line: 317, baseType: !478, size: 64, offset: 64)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !2480, file: !2339, line: 318, baseType: !478, size: 64, offset: 128)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !2480, file: !2339, line: 319, baseType: !312, size: 128, offset: 192)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2480, file: !2339, line: 320, baseType: !2487, size: 8, offset: 320)
!2487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !2339, line: 305, size: 8, elements: !2488)
!2488 = !{!2489, !2490}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2487, file: !2339, line: 306, baseType: !765, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !2487, file: !2339, line: 307, baseType: !765, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2480, file: !2339, line: 321, baseType: !2492, size: 128, offset: 384)
!2492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !2339, line: 310, size: 128, elements: !2493)
!2493 = !{!2494, !2499}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2492, file: !2339, line: 311, baseType: !2495, size: 64)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{null, !2498}
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2492, file: !2339, line: 312, baseType: !1796, size: 64, offset: 64)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !2480, file: !2339, line: 322, baseType: !1981, size: 64, offset: 512)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !2480, file: !2339, line: 323, baseType: !190, size: 32, offset: 576)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !2480, file: !2339, line: 324, baseType: !190, size: 32, offset: 608)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !2338, file: !2339, line: 365, baseType: !2504, size: 192, offset: 3904)
!2504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !2339, line: 297, size: 192, elements: !2505)
!2505 = !{!2506, !2507, !2511, !2512}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2504, file: !2339, line: 298, baseType: !190, size: 32)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2504, file: !2339, line: 299, baseType: !2508, size: 8, offset: 32)
!2508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !2339, line: 283, size: 8, elements: !2509)
!2509 = !{!2510}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2508, file: !2339, line: 284, baseType: !765, size: 8, flags: DIFlagBitField, extraData: i64 0)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !2504, file: !2339, line: 300, baseType: !190, size: 32, offset: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2504, file: !2339, line: 301, baseType: !2513, size: 64, offset: 128)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !2339, line: 287, size: 64, elements: !2515)
!2515 = !{!2516, !2521, !2522, !2523}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2514, file: !2339, line: 291, baseType: !2517, size: 8)
!2517 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2514, file: !2339, line: 288, size: 8, elements: !2518)
!2518 = !{!2519, !2520}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2517, file: !2339, line: 289, baseType: !765, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2517, file: !2339, line: 290, baseType: !765, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2514, file: !2339, line: 292, baseType: !765, size: 8, offset: 8)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !2514, file: !2339, line: 293, baseType: !765, size: 8, offset: 16)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !2514, file: !2339, line: 294, baseType: !190, size: 32, offset: 32)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2338, file: !2339, line: 366, baseType: !2525, size: 64, offset: 4096)
!2525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !2339, line: 209, size: 64, elements: !2526)
!2526 = !{!2527}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2525, file: !2339, line: 210, baseType: !2528, size: 64)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !2339, line: 84, flags: DIFlagFwdDecl)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2338, file: !2339, line: 367, baseType: !2531, size: 384, offset: 4160)
!2531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !2339, line: 341, size: 384, elements: !2532)
!2532 = !{!2533, !2536, !2537, !2538}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2531, file: !2339, line: 342, baseType: !2534, size: 64)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2402)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2531, file: !2339, line: 343, baseType: !312, size: 128, offset: 64)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !2531, file: !2339, line: 344, baseType: !2534, size: 64, offset: 192)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !2531, file: !2339, line: 345, baseType: !312, size: 128, offset: 256)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !2338, file: !2339, line: 368, baseType: !2540, size: 64, offset: 4544)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !2339, line: 122, size: 1216, elements: !2542)
!2542 = !{!2543, !2544, !2545, !2550, !2554, !2558, !2559, !2560}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2541, file: !2339, line: 123, baseType: !1894, size: 64)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !2541, file: !2339, line: 124, baseType: !312, size: 128, offset: 64)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2541, file: !2339, line: 125, baseType: !2546, size: 64, offset: 192)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{!254, !213, !2549}
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !2541, file: !2339, line: 126, baseType: !2551, size: 64, offset: 256)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = !DISubroutineType(types: !2553)
!2553 = !{!190, !2337, !1894}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2541, file: !2339, line: 127, baseType: !2555, size: 64, offset: 320)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{null, !2337}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !2541, file: !2339, line: 128, baseType: !1818, size: 64, offset: 384)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !2541, file: !2339, line: 129, baseType: !1818, size: 64, offset: 448)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !2541, file: !2339, line: 130, baseType: !2561, size: 704, offset: 512)
!2561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !2339, line: 108, size: 704, elements: !2562)
!2562 = !{!2563, !2564, !2568, !2569, !2570}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2561, file: !2339, line: 109, baseType: !308, size: 512)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !2561, file: !2339, line: 110, baseType: !2565, size: 64, offset: 512)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!190, !2337}
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !2561, file: !2339, line: 111, baseType: !2555, size: 64, offset: 576)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2561, file: !2339, line: 112, baseType: !254, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !2561, file: !2339, line: 113, baseType: !254, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !2338, file: !2339, line: 369, baseType: !2572, size: 64, offset: 4608)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !2339, line: 138, size: 256, elements: !2574)
!2574 = !{!2575, !2576, !2580, !2584}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !2573, file: !2339, line: 139, baseType: !2337, size: 64)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2573, file: !2339, line: 140, baseType: !2577, size: 64, offset: 64)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DISubroutineType(types: !2579)
!2579 = !{!190, !2337, !194}
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2573, file: !2339, line: 141, baseType: !2581, size: 64, offset: 128)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = !DISubroutineType(types: !2583)
!2583 = !{null, !2337, !194}
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2573, file: !2339, line: 142, baseType: !2555, size: 64, offset: 192)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2338, file: !2339, line: 370, baseType: !2586, size: 64, offset: 4672)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_driver", file: !2339, line: 162, size: 2816, elements: !2588)
!2588 = !{!2589, !2593, !2594, !2595, !2596, !2605, !2606}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2587, file: !2339, line: 163, baseType: !2590, size: 640)
!2590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 640, elements: !2591)
!2591 = !{!2592}
!2592 = !DISubrange(count: 80)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2587, file: !2339, line: 164, baseType: !2590, size: 640, offset: 640)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2587, file: !2339, line: 165, baseType: !1894, size: 64, offset: 1280)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2587, file: !2339, line: 166, baseType: !7, size: 32, offset: 1344)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2587, file: !2339, line: 167, baseType: !2597, size: 192, offset: 1408)
!2597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_ops", file: !2339, line: 154, size: 192, elements: !2598)
!2598 = !{!2599, !2601, !2603}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !2597, file: !2339, line: 155, baseType: !2600, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_add", file: !2339, line: 150, baseType: !2565)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2597, file: !2339, line: 156, baseType: !2602, size: 64, offset: 64)
!2602 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_remove", file: !2339, line: 151, baseType: !2565)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2597, file: !2339, line: 157, baseType: !2604, size: 64, offset: 128)
!2604 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_notify", file: !2339, line: 152, baseType: !2581)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !2587, file: !2339, line: 168, baseType: !1868, size: 1152, offset: 1600)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2587, file: !2339, line: 169, baseType: !1873, size: 64, offset: 2752)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !2338, file: !2339, line: 371, baseType: !2608, size: 64, offset: 4736)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2610)
!2610 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !2339, line: 348, flags: DIFlagFwdDecl)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2338, file: !2339, line: 372, baseType: !191, size: 64, offset: 4800)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2338, file: !2339, line: 373, baseType: !305, size: 5568, offset: 4864)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !2338, file: !2339, line: 374, baseType: !7, size: 32, offset: 10432)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !2338, file: !2339, line: 375, baseType: !7, size: 32, offset: 10464)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !2338, file: !2339, line: 376, baseType: !312, size: 128, offset: 10496)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !2338, file: !2339, line: 377, baseType: !575, size: 192, offset: 10624)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2338, file: !2339, line: 378, baseType: !2555, size: 64, offset: 10816)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !201, file: !3, line: 85, baseType: !480, size: 64, offset: 896)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "battery_nb", scope: !201, file: !3, line: 86, baseType: !2620, size: 192, offset: 960)
!2620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !2621, line: 54, size: 192, elements: !2622)
!2621 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!2622 = !{!2623, !2629, !2630}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !2620, file: !2621, line: 55, baseType: !2624, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !2621, line: 51, baseType: !2625)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{!190, !2628, !198, !191}
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2620, file: !2621, line: 56, baseType: !2628, size: 64, offset: 64)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !2620, file: !2621, line: 57, baseType: !190, size: 32, offset: 128)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_bus_event", file: !2339, line: 476, size: 448, elements: !2633)
!2633 = !{!2634, !2635, !2636, !2637, !2638}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2632, file: !2339, line: 477, baseType: !312, size: 128)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !2632, file: !2339, line: 478, baseType: !2398, size: 160, offset: 128)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !2632, file: !2339, line: 479, baseType: !2380, size: 64, offset: 288)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2632, file: !2339, line: 480, baseType: !194, size: 32, offset: 352)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2632, file: !2339, line: 481, baseType: !194, size: 32, offset: 384)
!2639 = !{!0, !2640, !2645, !2650, !2655, !2657, !2664, !2666, !2669, !2672, !2675, !2677, !2679, !2702, !2704}
!2640 = !DIGlobalVariableExpression(var: !2641, expr: !DIExpression())
!2641 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description170", scope: !2, file: !3, line: 35, type: !2642, isLocal: true, isDefinition: true, align: 8)
!2642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 304, elements: !2643)
!2643 = !{!2644}
!2644 = !DISubrange(count: 38)
!2645 = !DIGlobalVariableExpression(var: !2646, expr: !DIExpression())
!2646 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file171", scope: !2, file: !3, line: 36, type: !2647, isLocal: true, isDefinition: true, align: 8)
!2647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 192, elements: !2648)
!2648 = !{!2649}
!2649 = !DISubrange(count: 24)
!2650 = !DIGlobalVariableExpression(var: !2651, expr: !DIExpression())
!2651 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license172", scope: !2, file: !3, line: 36, type: !2652, isLocal: true, isDefinition: true, align: 8)
!2652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 120, elements: !2653)
!2653 = !{!2654}
!2654 = !DISubrange(count: 15)
!2655 = !DIGlobalVariableExpression(var: !2656, expr: !DIExpression())
!2656 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_ac_init175", scope: !2, file: !3, line: 369, type: !191, isLocal: true, isDefinition: true)
!2657 = !DIGlobalVariableExpression(var: !2658, expr: !DIExpression())
!2658 = distinct !DIGlobalVariable(name: "__exitcall_acpi_ac_exit", scope: !2, file: !3, line: 370, type: !2659, isLocal: true, isDefinition: true)
!2659 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !2660, line: 117, baseType: !2661)
!2660 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = !DISubroutineType(types: !2663)
!2663 = !{null}
!2664 = !DIGlobalVariableExpression(var: !2665, expr: !DIExpression())
!2665 = distinct !DIGlobalVariable(name: "acpi_ac_driver", scope: !2, file: !3, line: 68, type: !2587, isLocal: true, isDefinition: true)
!2666 = !DIGlobalVariableExpression(var: !2667, expr: !DIExpression())
!2667 = distinct !DIGlobalVariable(name: "ac_device_ids", scope: !2, file: !3, line: 48, type: !2668, isLocal: true, isDefinition: true)
!2668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1895, size: 512, elements: !1172)
!2669 = !DIGlobalVariableExpression(var: !2670, expr: !DIExpression())
!2670 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 32, type: !2671, isLocal: true, isDefinition: true)
!2671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 24, elements: !366)
!2672 = !DIGlobalVariableExpression(var: !2673, expr: !DIExpression())
!2673 = distinct !DIGlobalVariable(name: "ac_props", scope: !2, file: !3, line: 139, type: !2674, isLocal: true, isDefinition: true)
!2674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 32, elements: !785)
!2675 = !DIGlobalVariableExpression(var: !2676, expr: !DIExpression())
!2676 = distinct !DIGlobalVariable(name: "ac_sleep_before_get_state_ms", scope: !2, file: !3, line: 65, type: !190, isLocal: true, isDefinition: true)
!2677 = !DIGlobalVariableExpression(var: !2678, expr: !DIExpression())
!2678 = distinct !DIGlobalVariable(name: "acpi_ac_pm", scope: !2, file: !3, line: 63, type: !1823, isLocal: true, isDefinition: true)
!2679 = !DIGlobalVariableExpression(var: !2680, expr: !DIExpression())
!2680 = distinct !DIGlobalVariable(name: "ac_dmi_table", scope: !2, file: !3, line: 216, type: !2681, isLocal: true, isDefinition: true)
!2681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2682, size: 11008, elements: !557)
!2682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2683)
!2683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_system_id", file: !1883, line: 566, size: 2752, elements: !2684)
!2684 = !{!2685, !2690, !2691, !2701}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !2683, file: !1883, line: 567, baseType: !2686, size: 64)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DISubroutineType(types: !2688)
!2688 = !{!190, !2689}
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !2683, file: !1883, line: 568, baseType: !213, size: 64, offset: 64)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "matches", scope: !2683, file: !1883, line: 569, baseType: !2692, size: 2560, offset: 128)
!2692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2693, size: 2560, elements: !557)
!2693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_strmatch", file: !1883, line: 560, size: 640, elements: !2694)
!2694 = !{!2695, !2696, !2697}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !2693, file: !1883, line: 561, baseType: !767, size: 7, flags: DIFlagBitField, extraData: i64 0)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "exact_match", scope: !2693, file: !1883, line: 562, baseType: !767, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "substr", scope: !2693, file: !1883, line: 563, baseType: !2698, size: 632, offset: 8)
!2698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 632, elements: !2699)
!2699 = !{!2700}
!2700 = !DISubrange(count: 79)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2683, file: !1883, line: 570, baseType: !191, size: 64, offset: 2688)
!2702 = !DIGlobalVariableExpression(var: !2703, expr: !DIExpression())
!2703 = distinct !DIGlobalVariable(name: "ac_check_pmic", scope: !2, file: !3, line: 66, type: !190, isLocal: true, isDefinition: true)
!2704 = !DIGlobalVariableExpression(var: !2705, expr: !DIExpression())
!2705 = distinct !DIGlobalVariable(name: "acpi_ac_blacklist", scope: !2, file: !3, line: 55, type: !2706, isLocal: true, isDefinition: true)
!2706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2707, size: 256, elements: !1172)
!2707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2708)
!2708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_ac_bl", file: !3, line: 43, size: 128, elements: !2709)
!2709 = !{!2710, !2711}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "hid", scope: !2708, file: !3, line: 44, baseType: !213, size: 64)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "hrv", scope: !2708, file: !3, line: 45, baseType: !190, size: 32, offset: 64)
!2712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 216, elements: !2713)
!2713 = !{!2714}
!2714 = !DISubrange(count: 27)
!2715 = !{i32 7, !"Dwarf Version", i32 4}
!2716 = !{i32 2, !"Debug Info Version", i32 3}
!2717 = !{i32 1, !"wchar_size", i32 2}
!2718 = !{i32 1, !"Code Model", i32 2}
!2719 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2720 = distinct !DISubprogram(name: "acpi_ac_exit", scope: !3, file: !3, line: 365, type: !2662, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!2721 = !DILocation(line: 367, column: 2, scope: !2720)
!2722 = !DILocation(line: 368, column: 1, scope: !2720)
!2723 = distinct !DISubprogram(name: "acpi_ac_init", scope: !3, file: !3, line: 337, type: !2724, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{!190}
!2726 = !DILocalVariable(name: "i", scope: !2723, file: !3, line: 339, type: !7)
!2727 = !DILocation(line: 339, column: 15, scope: !2723)
!2728 = !DILocalVariable(name: "result", scope: !2723, file: !3, line: 340, type: !190)
!2729 = !DILocation(line: 340, column: 6, scope: !2723)
!2730 = !DILocation(line: 342, column: 6, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2723, file: !3, line: 342, column: 6)
!2732 = !DILocation(line: 342, column: 6, scope: !2723)
!2733 = !DILocation(line: 343, column: 3, scope: !2731)
!2734 = !DILocation(line: 345, column: 2, scope: !2723)
!2735 = !DILocation(line: 347, column: 6, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2723, file: !3, line: 347, column: 6)
!2737 = !DILocation(line: 347, column: 6, scope: !2723)
!2738 = !DILocation(line: 348, column: 10, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2740, file: !3, line: 348, column: 3)
!2740 = distinct !DILexicalBlock(scope: !2736, file: !3, line: 347, column: 21)
!2741 = !DILocation(line: 348, column: 8, scope: !2739)
!2742 = !DILocation(line: 348, column: 15, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 348, column: 3)
!2744 = !DILocation(line: 348, column: 17, scope: !2743)
!2745 = !DILocation(line: 348, column: 3, scope: !2739)
!2746 = !DILocation(line: 349, column: 43, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2743, file: !3, line: 349, column: 8)
!2748 = !DILocation(line: 349, column: 25, scope: !2747)
!2749 = !DILocation(line: 349, column: 46, scope: !2747)
!2750 = !DILocation(line: 350, column: 29, scope: !2747)
!2751 = !DILocation(line: 350, column: 11, scope: !2747)
!2752 = !DILocation(line: 350, column: 32, scope: !2747)
!2753 = !DILocation(line: 349, column: 8, scope: !2747)
!2754 = !DILocation(line: 349, column: 8, scope: !2743)
!2755 = !DILocation(line: 351, column: 5, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2747, file: !3, line: 350, column: 38)
!2757 = !DILocation(line: 353, column: 5, scope: !2756)
!2758 = !DILocation(line: 350, column: 35, scope: !2747)
!2759 = !DILocation(line: 348, column: 51, scope: !2743)
!2760 = !DILocation(line: 348, column: 3, scope: !2743)
!2761 = distinct !{!2761, !2745, !2762}
!2762 = !DILocation(line: 354, column: 4, scope: !2739)
!2763 = !DILocation(line: 355, column: 2, scope: !2740)
!2764 = !DILocation(line: 357, column: 11, scope: !2723)
!2765 = !DILocation(line: 357, column: 9, scope: !2723)
!2766 = !DILocation(line: 358, column: 6, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2723, file: !3, line: 358, column: 6)
!2768 = !DILocation(line: 358, column: 13, scope: !2767)
!2769 = !DILocation(line: 358, column: 6, scope: !2723)
!2770 = !DILocation(line: 359, column: 3, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2767, file: !3, line: 358, column: 18)
!2772 = !DILocation(line: 362, column: 2, scope: !2723)
!2773 = !DILocation(line: 363, column: 1, scope: !2723)
!2774 = distinct !DISubprogram(name: "acpi_ac_add", scope: !3, file: !3, line: 244, type: !2566, scopeLine: 245, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!2775 = !DILocalVariable(name: "device", arg: 1, scope: !2774, file: !3, line: 244, type: !2337)
!2776 = !DILocation(line: 244, column: 44, scope: !2774)
!2777 = !DILocalVariable(name: "psy_cfg", scope: !2774, file: !3, line: 246, type: !2778)
!2778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "power_supply_config", file: !65, line: 218, size: 384, elements: !2779)
!2779 = !{!2780, !2781, !2782, !2783, !2784, !2785}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2778, file: !65, line: 219, baseType: !264, size: 64)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2778, file: !65, line: 220, baseType: !277, size: 64, offset: 64)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "drv_data", scope: !2778, file: !65, line: 223, baseType: !191, size: 64, offset: 128)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "attr_grp", scope: !2778, file: !65, line: 226, baseType: !413, size: 64, offset: 192)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "supplied_to", scope: !2778, file: !65, line: 228, baseType: !258, size: 64, offset: 256)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "num_supplicants", scope: !2778, file: !65, line: 229, baseType: !221, size: 64, offset: 320)
!2786 = !DILocation(line: 246, column: 29, scope: !2774)
!2787 = !DILocalVariable(name: "result", scope: !2774, file: !3, line: 247, type: !190)
!2788 = !DILocation(line: 247, column: 6, scope: !2774)
!2789 = !DILocalVariable(name: "ac", scope: !2774, file: !3, line: 248, type: !200)
!2790 = !DILocation(line: 248, column: 18, scope: !2774)
!2791 = !DILocation(line: 251, column: 7, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2774, file: !3, line: 251, column: 6)
!2793 = !DILocation(line: 251, column: 6, scope: !2774)
!2794 = !DILocation(line: 252, column: 3, scope: !2792)
!2795 = !DILocation(line: 254, column: 7, scope: !2774)
!2796 = !DILocation(line: 254, column: 5, scope: !2774)
!2797 = !DILocation(line: 255, column: 7, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2774, file: !3, line: 255, column: 6)
!2799 = !DILocation(line: 255, column: 6, scope: !2774)
!2800 = !DILocation(line: 256, column: 3, scope: !2798)
!2801 = !DILocation(line: 258, column: 15, scope: !2774)
!2802 = !DILocation(line: 258, column: 2, scope: !2774)
!2803 = !DILocation(line: 258, column: 6, scope: !2774)
!2804 = !DILocation(line: 258, column: 13, scope: !2774)
!2805 = !DILocation(line: 259, column: 9, scope: !2774)
!2806 = !DILocation(line: 259, column: 2, scope: !2774)
!2807 = !DILocation(line: 260, column: 9, scope: !2774)
!2808 = !DILocation(line: 260, column: 2, scope: !2774)
!2809 = !DILocation(line: 261, column: 24, scope: !2774)
!2810 = !DILocation(line: 261, column: 2, scope: !2774)
!2811 = !DILocation(line: 261, column: 10, scope: !2774)
!2812 = !DILocation(line: 261, column: 22, scope: !2774)
!2813 = !DILocation(line: 263, column: 29, scope: !2774)
!2814 = !DILocation(line: 263, column: 11, scope: !2774)
!2815 = !DILocation(line: 263, column: 9, scope: !2774)
!2816 = !DILocation(line: 264, column: 6, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2774, file: !3, line: 264, column: 6)
!2818 = !DILocation(line: 264, column: 6, scope: !2774)
!2819 = !DILocation(line: 265, column: 3, scope: !2817)
!2820 = !DILocation(line: 267, column: 21, scope: !2774)
!2821 = !DILocation(line: 267, column: 10, scope: !2774)
!2822 = !DILocation(line: 267, column: 19, scope: !2774)
!2823 = !DILocation(line: 269, column: 26, scope: !2774)
!2824 = !DILocation(line: 269, column: 2, scope: !2774)
!2825 = !DILocation(line: 269, column: 6, scope: !2774)
!2826 = !DILocation(line: 269, column: 19, scope: !2774)
!2827 = !DILocation(line: 269, column: 24, scope: !2774)
!2828 = !DILocation(line: 270, column: 2, scope: !2774)
!2829 = !DILocation(line: 270, column: 6, scope: !2774)
!2830 = !DILocation(line: 270, column: 19, scope: !2774)
!2831 = !DILocation(line: 270, column: 24, scope: !2774)
!2832 = !DILocation(line: 271, column: 2, scope: !2774)
!2833 = !DILocation(line: 271, column: 6, scope: !2774)
!2834 = !DILocation(line: 271, column: 19, scope: !2774)
!2835 = !DILocation(line: 271, column: 30, scope: !2774)
!2836 = !DILocation(line: 272, column: 2, scope: !2774)
!2837 = !DILocation(line: 272, column: 6, scope: !2774)
!2838 = !DILocation(line: 272, column: 19, scope: !2774)
!2839 = !DILocation(line: 272, column: 34, scope: !2774)
!2840 = !DILocation(line: 273, column: 2, scope: !2774)
!2841 = !DILocation(line: 273, column: 6, scope: !2774)
!2842 = !DILocation(line: 273, column: 19, scope: !2774)
!2843 = !DILocation(line: 273, column: 32, scope: !2774)
!2844 = !DILocation(line: 274, column: 39, scope: !2774)
!2845 = !DILocation(line: 274, column: 43, scope: !2774)
!2846 = !DILocation(line: 274, column: 51, scope: !2774)
!2847 = !DILocation(line: 275, column: 11, scope: !2774)
!2848 = !DILocation(line: 275, column: 15, scope: !2774)
!2849 = !DILocation(line: 274, column: 16, scope: !2774)
!2850 = !DILocation(line: 274, column: 2, scope: !2774)
!2851 = !DILocation(line: 274, column: 6, scope: !2774)
!2852 = !DILocation(line: 274, column: 14, scope: !2774)
!2853 = !DILocation(line: 276, column: 13, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2774, file: !3, line: 276, column: 6)
!2855 = !DILocation(line: 276, column: 17, scope: !2854)
!2856 = !DILocation(line: 276, column: 6, scope: !2854)
!2857 = !DILocation(line: 276, column: 6, scope: !2774)
!2858 = !DILocation(line: 277, column: 20, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2854, file: !3, line: 276, column: 27)
!2860 = !DILocation(line: 277, column: 24, scope: !2859)
!2861 = !DILocation(line: 277, column: 12, scope: !2859)
!2862 = !DILocation(line: 277, column: 10, scope: !2859)
!2863 = !DILocation(line: 278, column: 3, scope: !2859)
!2864 = !DILocation(line: 282, column: 9, scope: !2774)
!2865 = !DILocation(line: 282, column: 35, scope: !2774)
!2866 = !DILocation(line: 283, column: 9, scope: !2774)
!2867 = !DILocation(line: 283, column: 13, scope: !2774)
!2868 = !DILocation(line: 281, column: 2, scope: !2774)
!2869 = !DILocation(line: 285, column: 2, scope: !2774)
!2870 = !DILocation(line: 285, column: 6, scope: !2774)
!2871 = !DILocation(line: 285, column: 17, scope: !2774)
!2872 = !DILocation(line: 285, column: 31, scope: !2774)
!2873 = !DILocation(line: 286, column: 26, scope: !2774)
!2874 = !DILocation(line: 286, column: 30, scope: !2774)
!2875 = !DILocation(line: 286, column: 2, scope: !2774)
!2876 = !DILabel(scope: !2774, name: "end", file: !3, line: 287)
!2877 = !DILocation(line: 287, column: 1, scope: !2774)
!2878 = !DILocation(line: 288, column: 6, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2774, file: !3, line: 288, column: 6)
!2880 = !DILocation(line: 288, column: 6, scope: !2774)
!2881 = !DILocation(line: 289, column: 9, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2879, file: !3, line: 288, column: 14)
!2883 = !DILocation(line: 289, column: 3, scope: !2882)
!2884 = !DILocation(line: 290, column: 2, scope: !2882)
!2885 = !DILocation(line: 292, column: 9, scope: !2774)
!2886 = !DILocation(line: 292, column: 2, scope: !2774)
!2887 = !DILocation(line: 293, column: 1, scope: !2774)
!2888 = distinct !DISubprogram(name: "acpi_ac_remove", scope: !3, file: !3, line: 319, type: !2566, scopeLine: 320, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!2889 = !DILocalVariable(name: "device", arg: 1, scope: !2888, file: !3, line: 319, type: !2337)
!2890 = !DILocation(line: 319, column: 47, scope: !2888)
!2891 = !DILocalVariable(name: "ac", scope: !2888, file: !3, line: 321, type: !200)
!2892 = !DILocation(line: 321, column: 18, scope: !2888)
!2893 = !DILocation(line: 324, column: 7, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2888, file: !3, line: 324, column: 6)
!2895 = !DILocation(line: 324, column: 14, scope: !2894)
!2896 = !DILocation(line: 324, column: 35, scope: !2894)
!2897 = !DILocation(line: 324, column: 18, scope: !2894)
!2898 = !DILocation(line: 324, column: 6, scope: !2888)
!2899 = !DILocation(line: 325, column: 3, scope: !2894)
!2900 = !DILocation(line: 327, column: 24, scope: !2888)
!2901 = !DILocation(line: 327, column: 7, scope: !2888)
!2902 = !DILocation(line: 327, column: 5, scope: !2888)
!2903 = !DILocation(line: 329, column: 26, scope: !2888)
!2904 = !DILocation(line: 329, column: 30, scope: !2888)
!2905 = !DILocation(line: 329, column: 2, scope: !2888)
!2906 = !DILocation(line: 330, column: 28, scope: !2888)
!2907 = !DILocation(line: 330, column: 32, scope: !2888)
!2908 = !DILocation(line: 330, column: 2, scope: !2888)
!2909 = !DILocation(line: 332, column: 8, scope: !2888)
!2910 = !DILocation(line: 332, column: 2, scope: !2888)
!2911 = !DILocation(line: 334, column: 2, scope: !2888)
!2912 = !DILocation(line: 335, column: 1, scope: !2888)
!2913 = distinct !DISubprogram(name: "acpi_ac_notify", scope: !3, file: !3, line: 147, type: !2582, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!2914 = !DILocalVariable(name: "device", arg: 1, scope: !2913, file: !3, line: 147, type: !2337)
!2915 = !DILocation(line: 147, column: 48, scope: !2913)
!2916 = !DILocalVariable(name: "event", arg: 2, scope: !2913, file: !3, line: 147, type: !194)
!2917 = !DILocation(line: 147, column: 60, scope: !2913)
!2918 = !DILocalVariable(name: "ac", scope: !2913, file: !3, line: 149, type: !200)
!2919 = !DILocation(line: 149, column: 18, scope: !2913)
!2920 = !DILocation(line: 149, column: 40, scope: !2913)
!2921 = !DILocation(line: 149, column: 23, scope: !2913)
!2922 = !DILocation(line: 151, column: 7, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2913, file: !3, line: 151, column: 6)
!2924 = !DILocation(line: 151, column: 6, scope: !2913)
!2925 = !DILocation(line: 152, column: 3, scope: !2923)
!2926 = !DILocation(line: 154, column: 10, scope: !2913)
!2927 = !DILocation(line: 154, column: 2, scope: !2913)
!2928 = !DILocation(line: 154, column: 17, scope: !2913)
!2929 = !DILocation(line: 169, column: 7, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2931, file: !3, line: 169, column: 7)
!2931 = distinct !DILexicalBlock(scope: !2913, file: !3, line: 154, column: 17)
!2932 = !DILocation(line: 169, column: 36, scope: !2930)
!2933 = !DILocation(line: 169, column: 7, scope: !2931)
!2934 = !DILocation(line: 170, column: 11, scope: !2930)
!2935 = !DILocation(line: 170, column: 4, scope: !2930)
!2936 = !DILocation(line: 172, column: 21, scope: !2931)
!2937 = !DILocation(line: 172, column: 3, scope: !2931)
!2938 = !DILocation(line: 173, column: 35, scope: !2931)
!2939 = !DILocation(line: 173, column: 43, scope: !2931)
!2940 = !DILocation(line: 173, column: 47, scope: !2931)
!2941 = !DILocation(line: 174, column: 19, scope: !2931)
!2942 = !DILocation(line: 174, column: 27, scope: !2931)
!2943 = !DILocation(line: 174, column: 9, scope: !2931)
!2944 = !DILocation(line: 174, column: 33, scope: !2931)
!2945 = !DILocation(line: 175, column: 15, scope: !2931)
!2946 = !DILocation(line: 175, column: 19, scope: !2931)
!2947 = !DILocation(line: 175, column: 9, scope: !2931)
!2948 = !DILocation(line: 173, column: 3, scope: !2931)
!2949 = !DILocation(line: 176, column: 28, scope: !2931)
!2950 = !DILocation(line: 176, column: 36, scope: !2931)
!2951 = !DILocation(line: 176, column: 49, scope: !2931)
!2952 = !DILocation(line: 176, column: 53, scope: !2931)
!2953 = !DILocation(line: 176, column: 43, scope: !2931)
!2954 = !DILocation(line: 176, column: 3, scope: !2931)
!2955 = !DILocation(line: 177, column: 19, scope: !2931)
!2956 = !DILocation(line: 177, column: 23, scope: !2931)
!2957 = !DILocation(line: 177, column: 32, scope: !2931)
!2958 = !DILocation(line: 177, column: 36, scope: !2931)
!2959 = !DILocation(line: 177, column: 3, scope: !2931)
!2960 = !DILocation(line: 178, column: 2, scope: !2931)
!2961 = !DILocation(line: 180, column: 2, scope: !2913)
!2962 = !DILocation(line: 181, column: 1, scope: !2913)
!2963 = distinct !DISubprogram(name: "kzalloc", scope: !170, file: !170, line: 662, type: !2964, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{!191, !221, !188}
!2966 = !DILocalVariable(name: "s", arg: 1, scope: !2967, file: !170, line: 445, type: !1248)
!2967 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !170, file: !170, line: 445, type: !2968, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!191, !1248, !188, !221}
!2970 = !DILocation(line: 445, column: 72, scope: !2967, inlinedAt: !2971)
!2971 = distinct !DILocation(line: 552, column: 10, scope: !2972, inlinedAt: !2975)
!2972 = distinct !DILexicalBlock(scope: !2973, file: !170, line: 540, column: 34)
!2973 = distinct !DILexicalBlock(scope: !2974, file: !170, line: 540, column: 6)
!2974 = distinct !DISubprogram(name: "kmalloc", scope: !170, file: !170, line: 538, type: !2964, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!2975 = distinct !DILocation(line: 664, column: 9, scope: !2963)
!2976 = !DILocalVariable(name: "flags", arg: 2, scope: !2967, file: !170, line: 446, type: !188)
!2977 = !DILocation(line: 446, column: 9, scope: !2967, inlinedAt: !2971)
!2978 = !DILocalVariable(name: "size", arg: 3, scope: !2967, file: !170, line: 446, type: !221)
!2979 = !DILocation(line: 446, column: 23, scope: !2967, inlinedAt: !2971)
!2980 = !DILocalVariable(name: "ret", scope: !2967, file: !170, line: 448, type: !191)
!2981 = !DILocation(line: 448, column: 8, scope: !2967, inlinedAt: !2971)
!2982 = !DILocalVariable(name: "flags", arg: 1, scope: !2983, file: !170, line: 318, type: !188)
!2983 = distinct !DISubprogram(name: "kmalloc_type", scope: !170, file: !170, line: 318, type: !2984, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{!169, !188}
!2986 = !DILocation(line: 318, column: 67, scope: !2983, inlinedAt: !2987)
!2987 = distinct !DILocation(line: 553, column: 20, scope: !2972, inlinedAt: !2975)
!2988 = !DILocalVariable(name: "size", arg: 1, scope: !2989, file: !170, line: 346, type: !221)
!2989 = distinct !DISubprogram(name: "kmalloc_index", scope: !170, file: !170, line: 346, type: !2990, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{!7, !221}
!2992 = !DILocation(line: 346, column: 58, scope: !2989, inlinedAt: !2993)
!2993 = distinct !DILocation(line: 547, column: 11, scope: !2972, inlinedAt: !2975)
!2994 = !DILocalVariable(name: "size", arg: 1, scope: !2995, file: !170, line: 472, type: !221)
!2995 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !170, file: !170, line: 472, type: !2996, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{!191, !221, !188, !7}
!2998 = !DILocation(line: 472, column: 28, scope: !2995, inlinedAt: !2999)
!2999 = distinct !DILocation(line: 481, column: 9, scope: !3000, inlinedAt: !3001)
!3000 = distinct !DISubprogram(name: "kmalloc_large", scope: !170, file: !170, line: 478, type: !2964, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!3001 = distinct !DILocation(line: 545, column: 11, scope: !3002, inlinedAt: !2975)
!3002 = distinct !DILexicalBlock(scope: !2972, file: !170, line: 544, column: 7)
!3003 = !DILocalVariable(name: "flags", arg: 2, scope: !2995, file: !170, line: 472, type: !188)
!3004 = !DILocation(line: 472, column: 40, scope: !2995, inlinedAt: !2999)
!3005 = !DILocalVariable(name: "order", arg: 3, scope: !2995, file: !170, line: 472, type: !7)
!3006 = !DILocation(line: 472, column: 60, scope: !2995, inlinedAt: !2999)
!3007 = !DILocalVariable(name: "size", arg: 1, scope: !3000, file: !170, line: 478, type: !221)
!3008 = !DILocation(line: 478, column: 51, scope: !3000, inlinedAt: !3001)
!3009 = !DILocalVariable(name: "flags", arg: 2, scope: !3000, file: !170, line: 478, type: !188)
!3010 = !DILocation(line: 478, column: 63, scope: !3000, inlinedAt: !3001)
!3011 = !DILocalVariable(name: "order", scope: !3000, file: !170, line: 480, type: !7)
!3012 = !DILocation(line: 480, column: 15, scope: !3000, inlinedAt: !3001)
!3013 = !DILocalVariable(name: "size", arg: 1, scope: !2974, file: !170, line: 538, type: !221)
!3014 = !DILocation(line: 538, column: 45, scope: !2974, inlinedAt: !2975)
!3015 = !DILocalVariable(name: "flags", arg: 2, scope: !2974, file: !170, line: 538, type: !188)
!3016 = !DILocation(line: 538, column: 57, scope: !2974, inlinedAt: !2975)
!3017 = !DILocalVariable(name: "index", scope: !2972, file: !170, line: 542, type: !7)
!3018 = !DILocation(line: 542, column: 16, scope: !2972, inlinedAt: !2975)
!3019 = !DILocalVariable(name: "size", arg: 1, scope: !2963, file: !170, line: 662, type: !221)
!3020 = !DILocation(line: 662, column: 36, scope: !2963)
!3021 = !DILocalVariable(name: "flags", arg: 2, scope: !2963, file: !170, line: 662, type: !188)
!3022 = !DILocation(line: 662, column: 48, scope: !2963)
!3023 = !DILocation(line: 664, column: 17, scope: !2963)
!3024 = !DILocation(line: 664, column: 23, scope: !2963)
!3025 = !DILocation(line: 664, column: 29, scope: !2963)
!3026 = !DILocation(line: 540, column: 27, scope: !2973, inlinedAt: !2975)
!3027 = !DILocation(line: 540, column: 6, scope: !2973, inlinedAt: !2975)
!3028 = !DILocation(line: 540, column: 6, scope: !2974, inlinedAt: !2975)
!3029 = !DILocation(line: 544, column: 7, scope: !3002, inlinedAt: !2975)
!3030 = !DILocation(line: 544, column: 12, scope: !3002, inlinedAt: !2975)
!3031 = !DILocation(line: 544, column: 7, scope: !2972, inlinedAt: !2975)
!3032 = !DILocation(line: 545, column: 25, scope: !3002, inlinedAt: !2975)
!3033 = !DILocation(line: 545, column: 31, scope: !3002, inlinedAt: !2975)
!3034 = !DILocation(line: 480, column: 33, scope: !3000, inlinedAt: !3001)
!3035 = !DILocation(line: 480, column: 23, scope: !3000, inlinedAt: !3001)
!3036 = !DILocation(line: 481, column: 29, scope: !3000, inlinedAt: !3001)
!3037 = !DILocation(line: 481, column: 35, scope: !3000, inlinedAt: !3001)
!3038 = !DILocation(line: 481, column: 42, scope: !3000, inlinedAt: !3001)
!3039 = !DILocation(line: 474, column: 23, scope: !2995, inlinedAt: !2999)
!3040 = !DILocation(line: 474, column: 29, scope: !2995, inlinedAt: !2999)
!3041 = !DILocation(line: 474, column: 36, scope: !2995, inlinedAt: !2999)
!3042 = !DILocation(line: 474, column: 9, scope: !2995, inlinedAt: !2999)
!3043 = !DILocation(line: 545, column: 4, scope: !3002, inlinedAt: !2975)
!3044 = !DILocation(line: 547, column: 25, scope: !2972, inlinedAt: !2975)
!3045 = !DILocation(line: 348, column: 7, scope: !3046, inlinedAt: !2993)
!3046 = distinct !DILexicalBlock(scope: !2989, file: !170, line: 348, column: 6)
!3047 = !DILocation(line: 348, column: 6, scope: !2989, inlinedAt: !2993)
!3048 = !DILocation(line: 349, column: 3, scope: !3046, inlinedAt: !2993)
!3049 = !DILocation(line: 351, column: 6, scope: !3050, inlinedAt: !2993)
!3050 = distinct !DILexicalBlock(scope: !2989, file: !170, line: 351, column: 6)
!3051 = !DILocation(line: 351, column: 11, scope: !3050, inlinedAt: !2993)
!3052 = !DILocation(line: 351, column: 6, scope: !2989, inlinedAt: !2993)
!3053 = !DILocation(line: 352, column: 3, scope: !3050, inlinedAt: !2993)
!3054 = !DILocation(line: 354, column: 32, scope: !3055, inlinedAt: !2993)
!3055 = distinct !DILexicalBlock(scope: !2989, file: !170, line: 354, column: 6)
!3056 = !DILocation(line: 354, column: 37, scope: !3055, inlinedAt: !2993)
!3057 = !DILocation(line: 354, column: 42, scope: !3055, inlinedAt: !2993)
!3058 = !DILocation(line: 354, column: 45, scope: !3055, inlinedAt: !2993)
!3059 = !DILocation(line: 354, column: 50, scope: !3055, inlinedAt: !2993)
!3060 = !DILocation(line: 354, column: 6, scope: !2989, inlinedAt: !2993)
!3061 = !DILocation(line: 355, column: 3, scope: !3055, inlinedAt: !2993)
!3062 = !DILocation(line: 356, column: 32, scope: !3063, inlinedAt: !2993)
!3063 = distinct !DILexicalBlock(scope: !2989, file: !170, line: 356, column: 6)
!3064 = !DILocation(line: 356, column: 37, scope: !3063, inlinedAt: !2993)
!3065 = !DILocation(line: 356, column: 43, scope: !3063, inlinedAt: !2993)
!3066 = !DILocation(line: 356, column: 46, scope: !3063, inlinedAt: !2993)
!3067 = !DILocation(line: 356, column: 51, scope: !3063, inlinedAt: !2993)
!3068 = !DILocation(line: 356, column: 6, scope: !2989, inlinedAt: !2993)
!3069 = !DILocation(line: 357, column: 3, scope: !3063, inlinedAt: !2993)
!3070 = !DILocation(line: 358, column: 6, scope: !3071, inlinedAt: !2993)
!3071 = distinct !DILexicalBlock(scope: !2989, file: !170, line: 358, column: 6)
!3072 = !DILocation(line: 358, column: 11, scope: !3071, inlinedAt: !2993)
!3073 = !DILocation(line: 358, column: 6, scope: !2989, inlinedAt: !2993)
!3074 = !DILocation(line: 358, column: 26, scope: !3071, inlinedAt: !2993)
!3075 = !DILocation(line: 359, column: 6, scope: !3076, inlinedAt: !2993)
!3076 = distinct !DILexicalBlock(scope: !2989, file: !170, line: 359, column: 6)
!3077 = !DILocation(line: 359, column: 11, scope: !3076, inlinedAt: !2993)
!3078 = !DILocation(line: 359, column: 6, scope: !2989, inlinedAt: !2993)
!3079 = !DILocation(line: 359, column: 26, scope: !3076, inlinedAt: !2993)
!3080 = !DILocation(line: 360, column: 6, scope: !3081, inlinedAt: !2993)
!3081 = distinct !DILexicalBlock(scope: !2989, file: !170, line: 360, column: 6)
!3082 = !DILocation(line: 360, column: 11, scope: !3081, inlinedAt: !2993)
!3083 = !DILocation(line: 360, column: 6, scope: !2989, inlinedAt: !2993)
!3084 = !DILocation(line: 360, column: 26, scope: !3081, inlinedAt: !2993)
!3085 = !DILocation(line: 361, column: 6, scope: !3086, inlinedAt: !2993)
!3086 = distinct !DILexicalBlock(scope: !2989, file: !170, line: 361, column: 6)
!3087 = !DILocation(line: 361, column: 11, scope: !3086, inlinedAt: !2993)
!3088 = !DILocation(line: 361, column: 6, scope: !2989, inlinedAt: !2993)
!3089 = !DILocation(line: 361, column: 26, scope: !3086, inlinedAt: !2993)
!3090 = !DILocation(line: 362, column: 6, scope: !3091, inlinedAt: !2993)
!3091 = distinct !DILexicalBlock(scope: !2989, file: !170, line: 362, column: 6)
!3092 = !DILocation(line: 362, column: 11, scope: !3091, inlinedAt: !2993)
!3093 = !DILocation(line: 362, column: 6, scope: !2989, inlinedAt: !2993)
!3094 = !DILocation(line: 362, column: 26, scope: !3091, inlinedAt: !2993)
!3095 = !DILocation(line: 363, column: 6, scope: !3096, inlinedAt: !2993)
!3096 = distinct !DILexicalBlock(scope: !2989, file: !170, line: 363, column: 6)
!3097 = !DILocation(line: 363, column: 11, scope: !3096, inlinedAt: !2993)
!3098 = !DILocation(line: 363, column: 6, scope: !2989, inlinedAt: !2993)
!3099 = !DILocation(line: 363, column: 26, scope: !3096, inlinedAt: !2993)
!3100 = !DILocation(line: 364, column: 6, scope: !3101, inlinedAt: !2993)
!3101 = distinct !DILexicalBlock(scope: !2989, file: !170, line: 364, column: 6)
!3102 = !DILocation(line: 364, column: 11, scope: !3101, inlinedAt: !2993)
!3103 = !DILocation(line: 364, column: 6, scope: !2989, inlinedAt: !2993)
!3104 = !DILocation(line: 364, column: 26, scope: !3101, inlinedAt: !2993)
!3105 = !DILocation(line: 365, column: 6, scope: !3106, inlinedAt: !2993)
!3106 = distinct !DILexicalBlock(scope: !2989, file: !170, line: 365, column: 6)
!3107 = !DILocation(line: 365, column: 11, scope: !3106, inlinedAt: !2993)
!3108 = !DILocation(line: 365, column: 6, scope: !2989, inlinedAt: !2993)
!3109 = !DILocation(line: 365, column: 26, scope: !3106, inlinedAt: !2993)
!3110 = !DILocation(line: 366, column: 6, scope: !3111, inlinedAt: !2993)
!3111 = distinct !DILexicalBlock(scope: !2989, file: !170, line: 366, column: 6)
!3112 = !DILocation(line: 366, column: 11, scope: !3111, inlinedAt: !2993)
!3113 = !DILocation(line: 366, column: 6, scope: !2989, inlinedAt: !2993)
!3114 = !DILocation(line: 366, column: 26, scope: !3111, inlinedAt: !2993)
!3115 = !DILocation(line: 367, column: 6, scope: !3116, inlinedAt: !2993)
!3116 = distinct !DILexicalBlock(scope: !2989, file: !170, line: 367, column: 6)
!3117 = !DILocation(line: 367, column: 11, scope: !3116, inlinedAt: !2993)
!3118 = !DILocation(line: 367, column: 6, scope: !2989, inlinedAt: !2993)
!3119 = !DILocation(line: 367, column: 26, scope: !3116, inlinedAt: !2993)
!3120 = !DILocation(line: 368, column: 6, scope: !3121, inlinedAt: !2993)
!3121 = distinct !DILexicalBlock(scope: !2989, file: !170, line: 368, column: 6)
!3122 = !DILocation(line: 368, column: 11, scope: !3121, inlinedAt: !2993)
!3123 = !DILocation(line: 368, column: 6, scope: !2989, inlinedAt: !2993)
!3124 = !DILocation(line: 368, column: 26, scope: !3121, inlinedAt: !2993)
!3125 = !DILocation(line: 369, column: 6, scope: !3126, inlinedAt: !2993)
!3126 = distinct !DILexicalBlock(scope: !2989, file: !170, line: 369, column: 6)
!3127 = !DILocation(line: 369, column: 11, scope: !3126, inlinedAt: !2993)
!3128 = !DILocation(line: 369, column: 6, scope: !2989, inlinedAt: !2993)
!3129 = !DILocation(line: 369, column: 26, scope: !3126, inlinedAt: !2993)
!3130 = !DILocation(line: 370, column: 6, scope: !3131, inlinedAt: !2993)
!3131 = distinct !DILexicalBlock(scope: !2989, file: !170, line: 370, column: 6)
!3132 = !DILocation(line: 370, column: 11, scope: !3131, inlinedAt: !2993)
!3133 = !DILocation(line: 370, column: 6, scope: !2989, inlinedAt: !2993)
!3134 = !DILocation(line: 370, column: 26, scope: !3131, inlinedAt: !2993)
!3135 = !DILocation(line: 371, column: 6, scope: !3136, inlinedAt: !2993)
!3136 = distinct !DILexicalBlock(scope: !2989, file: !170, line: 371, column: 6)
!3137 = !DILocation(line: 371, column: 11, scope: !3136, inlinedAt: !2993)
!3138 = !DILocation(line: 371, column: 6, scope: !2989, inlinedAt: !2993)
!3139 = !DILocation(line: 371, column: 26, scope: !3136, inlinedAt: !2993)
!3140 = !DILocation(line: 372, column: 6, scope: !3141, inlinedAt: !2993)
!3141 = distinct !DILexicalBlock(scope: !2989, file: !170, line: 372, column: 6)
!3142 = !DILocation(line: 372, column: 11, scope: !3141, inlinedAt: !2993)
!3143 = !DILocation(line: 372, column: 6, scope: !2989, inlinedAt: !2993)
!3144 = !DILocation(line: 372, column: 26, scope: !3141, inlinedAt: !2993)
!3145 = !DILocation(line: 373, column: 6, scope: !3146, inlinedAt: !2993)
!3146 = distinct !DILexicalBlock(scope: !2989, file: !170, line: 373, column: 6)
!3147 = !DILocation(line: 373, column: 11, scope: !3146, inlinedAt: !2993)
!3148 = !DILocation(line: 373, column: 6, scope: !2989, inlinedAt: !2993)
!3149 = !DILocation(line: 373, column: 26, scope: !3146, inlinedAt: !2993)
!3150 = !DILocation(line: 374, column: 6, scope: !3151, inlinedAt: !2993)
!3151 = distinct !DILexicalBlock(scope: !2989, file: !170, line: 374, column: 6)
!3152 = !DILocation(line: 374, column: 11, scope: !3151, inlinedAt: !2993)
!3153 = !DILocation(line: 374, column: 6, scope: !2989, inlinedAt: !2993)
!3154 = !DILocation(line: 374, column: 26, scope: !3151, inlinedAt: !2993)
!3155 = !DILocation(line: 375, column: 6, scope: !3156, inlinedAt: !2993)
!3156 = distinct !DILexicalBlock(scope: !2989, file: !170, line: 375, column: 6)
!3157 = !DILocation(line: 375, column: 11, scope: !3156, inlinedAt: !2993)
!3158 = !DILocation(line: 375, column: 6, scope: !2989, inlinedAt: !2993)
!3159 = !DILocation(line: 375, column: 27, scope: !3156, inlinedAt: !2993)
!3160 = !DILocation(line: 376, column: 6, scope: !3161, inlinedAt: !2993)
!3161 = distinct !DILexicalBlock(scope: !2989, file: !170, line: 376, column: 6)
!3162 = !DILocation(line: 376, column: 11, scope: !3161, inlinedAt: !2993)
!3163 = !DILocation(line: 376, column: 6, scope: !2989, inlinedAt: !2993)
!3164 = !DILocation(line: 376, column: 32, scope: !3161, inlinedAt: !2993)
!3165 = !DILocation(line: 377, column: 6, scope: !3166, inlinedAt: !2993)
!3166 = distinct !DILexicalBlock(scope: !2989, file: !170, line: 377, column: 6)
!3167 = !DILocation(line: 377, column: 11, scope: !3166, inlinedAt: !2993)
!3168 = !DILocation(line: 377, column: 6, scope: !2989, inlinedAt: !2993)
!3169 = !DILocation(line: 377, column: 32, scope: !3166, inlinedAt: !2993)
!3170 = !DILocation(line: 378, column: 6, scope: !3171, inlinedAt: !2993)
!3171 = distinct !DILexicalBlock(scope: !2989, file: !170, line: 378, column: 6)
!3172 = !DILocation(line: 378, column: 11, scope: !3171, inlinedAt: !2993)
!3173 = !DILocation(line: 378, column: 6, scope: !2989, inlinedAt: !2993)
!3174 = !DILocation(line: 378, column: 32, scope: !3171, inlinedAt: !2993)
!3175 = !DILocation(line: 379, column: 6, scope: !3176, inlinedAt: !2993)
!3176 = distinct !DILexicalBlock(scope: !2989, file: !170, line: 379, column: 6)
!3177 = !DILocation(line: 379, column: 11, scope: !3176, inlinedAt: !2993)
!3178 = !DILocation(line: 379, column: 6, scope: !2989, inlinedAt: !2993)
!3179 = !DILocation(line: 379, column: 33, scope: !3176, inlinedAt: !2993)
!3180 = !DILocation(line: 380, column: 6, scope: !3181, inlinedAt: !2993)
!3181 = distinct !DILexicalBlock(scope: !2989, file: !170, line: 380, column: 6)
!3182 = !DILocation(line: 380, column: 11, scope: !3181, inlinedAt: !2993)
!3183 = !DILocation(line: 380, column: 6, scope: !2989, inlinedAt: !2993)
!3184 = !DILocation(line: 380, column: 33, scope: !3181, inlinedAt: !2993)
!3185 = !DILocation(line: 381, column: 6, scope: !3186, inlinedAt: !2993)
!3186 = distinct !DILexicalBlock(scope: !2989, file: !170, line: 381, column: 6)
!3187 = !DILocation(line: 381, column: 11, scope: !3186, inlinedAt: !2993)
!3188 = !DILocation(line: 381, column: 6, scope: !2989, inlinedAt: !2993)
!3189 = !DILocation(line: 381, column: 33, scope: !3186, inlinedAt: !2993)
!3190 = !DILocation(line: 382, column: 2, scope: !3191, inlinedAt: !2993)
!3191 = distinct !DILexicalBlock(scope: !3192, file: !170, line: 382, column: 2)
!3192 = distinct !DILexicalBlock(scope: !2989, file: !170, line: 382, column: 2)
!3193 = !{i32 -2144238650, i32 -2144238621, i32 -2144238575, i32 -2144238517, i32 -2144238463, i32 -2144238409, i32 -2144238354, i32 -2144238323}
!3194 = !DILocation(line: 382, column: 2, scope: !3195, inlinedAt: !2993)
!3195 = distinct !DILexicalBlock(scope: !3196, file: !170, line: 382, column: 2)
!3196 = distinct !DILexicalBlock(scope: !3192, file: !170, line: 382, column: 2)
!3197 = !{i32 -2144237880, i32 -2144237873, i32 -2144237819, i32 -2144237788, i32 -2144237758}
!3198 = !DILocation(line: 382, column: 2, scope: !3196, inlinedAt: !2993)
!3199 = !DILocation(line: 386, column: 1, scope: !2989, inlinedAt: !2993)
!3200 = !DILocation(line: 547, column: 9, scope: !2972, inlinedAt: !2975)
!3201 = !DILocation(line: 549, column: 8, scope: !3202, inlinedAt: !2975)
!3202 = distinct !DILexicalBlock(scope: !2972, file: !170, line: 549, column: 7)
!3203 = !DILocation(line: 549, column: 7, scope: !2972, inlinedAt: !2975)
!3204 = !DILocation(line: 550, column: 4, scope: !3202, inlinedAt: !2975)
!3205 = !DILocation(line: 553, column: 33, scope: !2972, inlinedAt: !2975)
!3206 = !DILocation(line: 325, column: 6, scope: !3207, inlinedAt: !2987)
!3207 = distinct !DILexicalBlock(scope: !2983, file: !170, line: 325, column: 6)
!3208 = !DILocation(line: 325, column: 6, scope: !2983, inlinedAt: !2987)
!3209 = !DILocation(line: 326, column: 3, scope: !3207, inlinedAt: !2987)
!3210 = !DILocation(line: 332, column: 9, scope: !2983, inlinedAt: !2987)
!3211 = !DILocation(line: 332, column: 15, scope: !2983, inlinedAt: !2987)
!3212 = !DILocation(line: 332, column: 2, scope: !2983, inlinedAt: !2987)
!3213 = !DILocation(line: 336, column: 1, scope: !2983, inlinedAt: !2987)
!3214 = !DILocation(line: 553, column: 5, scope: !2972, inlinedAt: !2975)
!3215 = !DILocation(line: 553, column: 41, scope: !2972, inlinedAt: !2975)
!3216 = !DILocation(line: 554, column: 5, scope: !2972, inlinedAt: !2975)
!3217 = !DILocation(line: 554, column: 12, scope: !2972, inlinedAt: !2975)
!3218 = !DILocation(line: 448, column: 31, scope: !2967, inlinedAt: !2971)
!3219 = !DILocation(line: 448, column: 34, scope: !2967, inlinedAt: !2971)
!3220 = !DILocation(line: 448, column: 14, scope: !2967, inlinedAt: !2971)
!3221 = !DILocation(line: 450, column: 22, scope: !2967, inlinedAt: !2971)
!3222 = !DILocation(line: 450, column: 25, scope: !2967, inlinedAt: !2971)
!3223 = !DILocation(line: 450, column: 30, scope: !2967, inlinedAt: !2971)
!3224 = !DILocation(line: 450, column: 36, scope: !2967, inlinedAt: !2971)
!3225 = !DILocation(line: 450, column: 8, scope: !2967, inlinedAt: !2971)
!3226 = !DILocation(line: 450, column: 6, scope: !2967, inlinedAt: !2971)
!3227 = !DILocation(line: 451, column: 9, scope: !2967, inlinedAt: !2971)
!3228 = !DILocation(line: 552, column: 3, scope: !2972, inlinedAt: !2975)
!3229 = !DILocation(line: 557, column: 19, scope: !2974, inlinedAt: !2975)
!3230 = !DILocation(line: 557, column: 25, scope: !2974, inlinedAt: !2975)
!3231 = !DILocation(line: 557, column: 9, scope: !2974, inlinedAt: !2975)
!3232 = !DILocation(line: 557, column: 2, scope: !2974, inlinedAt: !2975)
!3233 = !DILocation(line: 558, column: 1, scope: !2974, inlinedAt: !2975)
!3234 = !DILocation(line: 664, column: 2, scope: !2963)
!3235 = distinct !DISubprogram(name: "acpi_ac_get_state", scope: !3, file: !3, line: 95, type: !3236, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!3236 = !DISubroutineType(types: !3237)
!3237 = !{!190, !200}
!3238 = !DILocalVariable(name: "ac", arg: 1, scope: !3235, file: !3, line: 95, type: !200)
!3239 = !DILocation(line: 95, column: 46, scope: !3235)
!3240 = !DILocalVariable(name: "status", scope: !3235, file: !3, line: 97, type: !192)
!3241 = !DILocation(line: 97, column: 14, scope: !3235)
!3242 = !DILocation(line: 99, column: 7, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3235, file: !3, line: 99, column: 6)
!3244 = !DILocation(line: 99, column: 6, scope: !3235)
!3245 = !DILocation(line: 100, column: 3, scope: !3243)
!3246 = !DILocation(line: 102, column: 33, scope: !3235)
!3247 = !DILocation(line: 102, column: 37, scope: !3235)
!3248 = !DILocation(line: 102, column: 45, scope: !3235)
!3249 = !DILocation(line: 103, column: 13, scope: !3235)
!3250 = !DILocation(line: 103, column: 17, scope: !3235)
!3251 = !DILocation(line: 102, column: 11, scope: !3235)
!3252 = !DILocation(line: 102, column: 9, scope: !3235)
!3253 = !DILocation(line: 104, column: 6, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3235, file: !3, line: 104, column: 6)
!3255 = !DILocation(line: 104, column: 6, scope: !3235)
!3256 = !DILocation(line: 105, column: 3, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3254, file: !3, line: 104, column: 28)
!3258 = !DILocation(line: 107, column: 3, scope: !3257)
!3259 = !DILocation(line: 107, column: 7, scope: !3257)
!3260 = !DILocation(line: 107, column: 13, scope: !3257)
!3261 = !DILocation(line: 108, column: 3, scope: !3257)
!3262 = !DILocation(line: 111, column: 2, scope: !3235)
!3263 = !DILocation(line: 112, column: 1, scope: !3235)
!3264 = distinct !DISubprogram(name: "get_ac_property", scope: !3, file: !3, line: 117, type: !231, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!3265 = !DILocalVariable(name: "psy", arg: 1, scope: !3264, file: !3, line: 117, type: !204)
!3266 = !DILocation(line: 117, column: 49, scope: !3264)
!3267 = !DILocalVariable(name: "psp", arg: 2, scope: !3264, file: !3, line: 118, type: !92)
!3268 = !DILocation(line: 118, column: 34, scope: !3264)
!3269 = !DILocalVariable(name: "val", arg: 3, scope: !3264, file: !3, line: 119, type: !233)
!3270 = !DILocation(line: 119, column: 35, scope: !3264)
!3271 = !DILocalVariable(name: "ac", scope: !3264, file: !3, line: 121, type: !200)
!3272 = !DILocation(line: 121, column: 18, scope: !3264)
!3273 = !DILocation(line: 121, column: 23, scope: !3264)
!3274 = !DILocation(line: 123, column: 7, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !3264, file: !3, line: 123, column: 6)
!3276 = !DILocation(line: 123, column: 6, scope: !3264)
!3277 = !DILocation(line: 124, column: 3, scope: !3275)
!3278 = !DILocation(line: 126, column: 24, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !3264, file: !3, line: 126, column: 6)
!3280 = !DILocation(line: 126, column: 6, scope: !3279)
!3281 = !DILocation(line: 126, column: 6, scope: !3264)
!3282 = !DILocation(line: 127, column: 3, scope: !3279)
!3283 = !DILocation(line: 129, column: 10, scope: !3264)
!3284 = !DILocation(line: 129, column: 2, scope: !3264)
!3285 = !DILocation(line: 131, column: 17, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3264, file: !3, line: 129, column: 15)
!3287 = !DILocation(line: 131, column: 21, scope: !3286)
!3288 = !DILocation(line: 131, column: 3, scope: !3286)
!3289 = !DILocation(line: 131, column: 8, scope: !3286)
!3290 = !DILocation(line: 131, column: 15, scope: !3286)
!3291 = !DILocation(line: 132, column: 3, scope: !3286)
!3292 = !DILocation(line: 134, column: 3, scope: !3286)
!3293 = !DILocation(line: 136, column: 2, scope: !3264)
!3294 = !DILocation(line: 137, column: 1, scope: !3264)
!3295 = distinct !DISubprogram(name: "IS_ERR", scope: !3296, file: !3296, line: 34, type: !3297, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!3296 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!3297 = !DISubroutineType(types: !3298)
!3298 = !{!254, !301}
!3299 = !DILocalVariable(name: "ptr", arg: 1, scope: !3295, file: !3296, line: 34, type: !301)
!3300 = !DILocation(line: 34, column: 60, scope: !3295)
!3301 = !DILocation(line: 36, column: 9, scope: !3295)
!3302 = !DILocation(line: 36, column: 2, scope: !3295)
!3303 = distinct !DISubprogram(name: "PTR_ERR", scope: !3296, file: !3296, line: 29, type: !3304, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{!199, !301}
!3306 = !DILocalVariable(name: "ptr", arg: 1, scope: !3303, file: !3296, line: 29, type: !301)
!3307 = !DILocation(line: 29, column: 61, scope: !3303)
!3308 = !DILocation(line: 31, column: 16, scope: !3303)
!3309 = !DILocation(line: 31, column: 9, scope: !3303)
!3310 = !DILocation(line: 31, column: 2, scope: !3303)
!3311 = distinct !DISubprogram(name: "acpi_ac_battery_notify", scope: !3, file: !3, line: 183, type: !2626, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!3312 = !DILocalVariable(name: "nb", arg: 1, scope: !3311, file: !3, line: 183, type: !2628)
!3313 = !DILocation(line: 183, column: 58, scope: !3311)
!3314 = !DILocalVariable(name: "action", arg: 2, scope: !3311, file: !3, line: 184, type: !198)
!3315 = !DILocation(line: 184, column: 21, scope: !3311)
!3316 = !DILocalVariable(name: "data", arg: 3, scope: !3311, file: !3, line: 184, type: !191)
!3317 = !DILocation(line: 184, column: 35, scope: !3311)
!3318 = !DILocalVariable(name: "ac", scope: !3311, file: !3, line: 186, type: !200)
!3319 = !DILocation(line: 186, column: 18, scope: !3311)
!3320 = !DILocalVariable(name: "__mptr", scope: !3321, file: !3, line: 186, type: !191)
!3321 = distinct !DILexicalBlock(scope: !3311, file: !3, line: 186, column: 23)
!3322 = !DILocation(line: 186, column: 23, scope: !3321)
!3323 = !DILocation(line: 186, column: 23, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3321, file: !3, line: 186, column: 23)
!3325 = !DILocalVariable(name: "event", scope: !3311, file: !3, line: 187, type: !2631)
!3326 = !DILocation(line: 187, column: 25, scope: !3311)
!3327 = !DILocation(line: 187, column: 58, scope: !3311)
!3328 = !DILocation(line: 187, column: 33, scope: !3311)
!3329 = !DILocation(line: 196, column: 13, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3311, file: !3, line: 196, column: 6)
!3331 = !DILocation(line: 196, column: 20, scope: !3330)
!3332 = !DILocation(line: 196, column: 6, scope: !3330)
!3333 = !DILocation(line: 196, column: 54, scope: !3330)
!3334 = !DILocation(line: 196, column: 59, scope: !3330)
!3335 = !DILocation(line: 197, column: 6, scope: !3330)
!3336 = !DILocation(line: 197, column: 13, scope: !3330)
!3337 = !DILocation(line: 197, column: 18, scope: !3330)
!3338 = !DILocation(line: 196, column: 6, scope: !3311)
!3339 = !DILocation(line: 198, column: 21, scope: !3330)
!3340 = !DILocation(line: 198, column: 3, scope: !3330)
!3341 = !DILocation(line: 200, column: 2, scope: !3311)
!3342 = distinct !DISubprogram(name: "get_order", scope: !3343, file: !3343, line: 29, type: !3344, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!3343 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!190, !198}
!3346 = !DILocalVariable(name: "x", arg: 1, scope: !3347, file: !3348, line: 366, type: !479)
!3347 = distinct !DISubprogram(name: "fls64", scope: !3348, file: !3348, line: 366, type: !3349, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!3348 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!3349 = !DISubroutineType(types: !3350)
!3350 = !{!190, !479}
!3351 = !DILocation(line: 366, column: 40, scope: !3347, inlinedAt: !3352)
!3352 = distinct !DILocation(line: 46, column: 9, scope: !3342)
!3353 = !DILocalVariable(name: "bitpos", scope: !3347, file: !3348, line: 368, type: !190)
!3354 = !DILocation(line: 368, column: 6, scope: !3347, inlinedAt: !3352)
!3355 = !DILocalVariable(name: "size", arg: 1, scope: !3342, file: !3343, line: 29, type: !198)
!3356 = !DILocation(line: 29, column: 63, scope: !3342)
!3357 = !DILocation(line: 31, column: 27, scope: !3358)
!3358 = distinct !DILexicalBlock(scope: !3342, file: !3343, line: 31, column: 6)
!3359 = !DILocation(line: 31, column: 6, scope: !3358)
!3360 = !DILocation(line: 31, column: 6, scope: !3342)
!3361 = !DILocation(line: 32, column: 8, scope: !3362)
!3362 = distinct !DILexicalBlock(scope: !3363, file: !3343, line: 32, column: 7)
!3363 = distinct !DILexicalBlock(scope: !3358, file: !3343, line: 31, column: 34)
!3364 = !DILocation(line: 32, column: 7, scope: !3363)
!3365 = !DILocation(line: 33, column: 4, scope: !3362)
!3366 = !DILocation(line: 35, column: 7, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3363, file: !3343, line: 35, column: 7)
!3368 = !DILocation(line: 35, column: 12, scope: !3367)
!3369 = !DILocation(line: 35, column: 7, scope: !3363)
!3370 = !DILocation(line: 36, column: 4, scope: !3367)
!3371 = !DILocation(line: 38, column: 10, scope: !3363)
!3372 = !DILocation(line: 38, column: 28, scope: !3363)
!3373 = !DILocation(line: 38, column: 41, scope: !3363)
!3374 = !DILocation(line: 38, column: 3, scope: !3363)
!3375 = !DILocation(line: 41, column: 6, scope: !3342)
!3376 = !DILocation(line: 42, column: 7, scope: !3342)
!3377 = !DILocation(line: 46, column: 15, scope: !3342)
!3378 = !DILocation(line: 374, column: 2, scope: !3347, inlinedAt: !3352)
!3379 = !DILocation(line: 376, column: 14, scope: !3347, inlinedAt: !3352)
!3380 = !{i32 248106}
!3381 = !DILocation(line: 377, column: 9, scope: !3347, inlinedAt: !3352)
!3382 = !DILocation(line: 377, column: 16, scope: !3347, inlinedAt: !3352)
!3383 = !DILocation(line: 46, column: 2, scope: !3342)
!3384 = !DILocation(line: 48, column: 1, scope: !3342)
!3385 = distinct !DISubprogram(name: "__ilog2_u64", scope: !3386, file: !3386, line: 30, type: !3387, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!3386 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!3387 = !DISubroutineType(types: !3388)
!3388 = !{!190, !478}
!3389 = !DILocation(line: 366, column: 40, scope: !3347, inlinedAt: !3390)
!3390 = distinct !DILocation(line: 32, column: 9, scope: !3385)
!3391 = !DILocation(line: 368, column: 6, scope: !3347, inlinedAt: !3390)
!3392 = !DILocalVariable(name: "n", arg: 1, scope: !3385, file: !3386, line: 30, type: !478)
!3393 = !DILocation(line: 30, column: 21, scope: !3385)
!3394 = !DILocation(line: 32, column: 15, scope: !3385)
!3395 = !DILocation(line: 374, column: 2, scope: !3347, inlinedAt: !3390)
!3396 = !DILocation(line: 376, column: 14, scope: !3347, inlinedAt: !3390)
!3397 = !DILocation(line: 377, column: 9, scope: !3347, inlinedAt: !3390)
!3398 = !DILocation(line: 377, column: 16, scope: !3347, inlinedAt: !3390)
!3399 = !DILocation(line: 32, column: 18, scope: !3385)
!3400 = !DILocation(line: 32, column: 2, scope: !3385)
!3401 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !3402, file: !3402, line: 137, type: !3403, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!3402 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!3403 = !DISubroutineType(types: !3404)
!3404 = !{!191, !1248, !301, !221, !188}
!3405 = !DILocalVariable(name: "s", arg: 1, scope: !3401, file: !3402, line: 137, type: !1248)
!3406 = !DILocation(line: 137, column: 54, scope: !3401)
!3407 = !DILocalVariable(name: "object", arg: 2, scope: !3401, file: !3402, line: 137, type: !301)
!3408 = !DILocation(line: 137, column: 69, scope: !3401)
!3409 = !DILocalVariable(name: "size", arg: 3, scope: !3401, file: !3402, line: 138, type: !221)
!3410 = !DILocation(line: 138, column: 12, scope: !3401)
!3411 = !DILocalVariable(name: "flags", arg: 4, scope: !3401, file: !3402, line: 138, type: !188)
!3412 = !DILocation(line: 138, column: 24, scope: !3401)
!3413 = !DILocation(line: 140, column: 17, scope: !3401)
!3414 = !DILocation(line: 140, column: 2, scope: !3401)
!3415 = distinct !DISubprogram(name: "acpi_driver_data", scope: !2339, file: !2339, line: 443, type: !3416, scopeLine: 444, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{!191, !2337}
!3418 = !DILocalVariable(name: "d", arg: 1, scope: !3415, file: !2339, line: 443, type: !2337)
!3419 = !DILocation(line: 443, column: 58, scope: !3415)
!3420 = !DILocation(line: 445, column: 9, scope: !3415)
!3421 = !DILocation(line: 445, column: 12, scope: !3415)
!3422 = !DILocation(line: 445, column: 2, scope: !3415)
!3423 = distinct !DISubprogram(name: "dev_name", scope: !30, file: !30, line: 609, type: !3424, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{!213, !303}
!3426 = !DILocalVariable(name: "dev", arg: 1, scope: !3423, file: !30, line: 609, type: !303)
!3427 = !DILocation(line: 609, column: 57, scope: !3423)
!3428 = !DILocation(line: 612, column: 6, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3423, file: !30, line: 612, column: 6)
!3430 = !DILocation(line: 612, column: 11, scope: !3429)
!3431 = !DILocation(line: 612, column: 6, scope: !3423)
!3432 = !DILocation(line: 613, column: 10, scope: !3429)
!3433 = !DILocation(line: 613, column: 15, scope: !3429)
!3434 = !DILocation(line: 613, column: 3, scope: !3429)
!3435 = !DILocation(line: 615, column: 23, scope: !3423)
!3436 = !DILocation(line: 615, column: 28, scope: !3423)
!3437 = !DILocation(line: 615, column: 9, scope: !3423)
!3438 = !DILocation(line: 615, column: 2, scope: !3423)
!3439 = !DILocation(line: 616, column: 1, scope: !3423)
!3440 = distinct !DISubprogram(name: "kobject_name", scope: !177, file: !177, line: 88, type: !3441, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!3441 = !DISubroutineType(types: !3442)
!3442 = !{!213, !3443}
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !308)
!3445 = !DILocalVariable(name: "kobj", arg: 1, scope: !3440, file: !177, line: 88, type: !3443)
!3446 = !DILocation(line: 88, column: 62, scope: !3440)
!3447 = !DILocation(line: 90, column: 9, scope: !3440)
!3448 = !DILocation(line: 90, column: 15, scope: !3440)
!3449 = !DILocation(line: 90, column: 2, scope: !3440)
!3450 = distinct !DISubprogram(name: "acpi_ac_resume", scope: !3, file: !3, line: 296, type: !1828, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!3451 = !DILocalVariable(name: "dev", arg: 1, scope: !3450, file: !3, line: 296, type: !1796)
!3452 = !DILocation(line: 296, column: 42, scope: !3450)
!3453 = !DILocalVariable(name: "ac", scope: !3450, file: !3, line: 298, type: !200)
!3454 = !DILocation(line: 298, column: 18, scope: !3450)
!3455 = !DILocalVariable(name: "old_state", scope: !3450, file: !3, line: 299, type: !7)
!3456 = !DILocation(line: 299, column: 11, scope: !3450)
!3457 = !DILocation(line: 301, column: 7, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3450, file: !3, line: 301, column: 6)
!3459 = !DILocation(line: 301, column: 6, scope: !3450)
!3460 = !DILocation(line: 302, column: 3, scope: !3458)
!3461 = !DILocalVariable(name: "__mptr", scope: !3462, file: !3, line: 304, type: !191)
!3462 = distinct !DILexicalBlock(scope: !3450, file: !3, line: 304, column: 24)
!3463 = !DILocation(line: 304, column: 24, scope: !3462)
!3464 = !DILocation(line: 304, column: 24, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3462, file: !3, line: 304, column: 24)
!3466 = !DILocation(line: 304, column: 7, scope: !3450)
!3467 = !DILocation(line: 304, column: 5, scope: !3450)
!3468 = !DILocation(line: 305, column: 7, scope: !3469)
!3469 = distinct !DILexicalBlock(scope: !3450, file: !3, line: 305, column: 6)
!3470 = !DILocation(line: 305, column: 6, scope: !3450)
!3471 = !DILocation(line: 306, column: 3, scope: !3469)
!3472 = !DILocation(line: 308, column: 14, scope: !3450)
!3473 = !DILocation(line: 308, column: 18, scope: !3450)
!3474 = !DILocation(line: 308, column: 12, scope: !3450)
!3475 = !DILocation(line: 309, column: 24, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3450, file: !3, line: 309, column: 6)
!3477 = !DILocation(line: 309, column: 6, scope: !3476)
!3478 = !DILocation(line: 309, column: 6, scope: !3450)
!3479 = !DILocation(line: 310, column: 3, scope: !3476)
!3480 = !DILocation(line: 311, column: 6, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3450, file: !3, line: 311, column: 6)
!3482 = !DILocation(line: 311, column: 19, scope: !3481)
!3483 = !DILocation(line: 311, column: 23, scope: !3481)
!3484 = !DILocation(line: 311, column: 16, scope: !3481)
!3485 = !DILocation(line: 311, column: 6, scope: !3450)
!3486 = !DILocation(line: 312, column: 19, scope: !3481)
!3487 = !DILocation(line: 312, column: 23, scope: !3481)
!3488 = !DILocation(line: 312, column: 32, scope: !3481)
!3489 = !DILocation(line: 312, column: 36, scope: !3481)
!3490 = !DILocation(line: 312, column: 3, scope: !3481)
!3491 = !DILocation(line: 313, column: 2, scope: !3450)
!3492 = !DILocation(line: 314, column: 1, scope: !3450)
!3493 = distinct !DISubprogram(name: "ac_do_not_check_pmic_quirk", scope: !3, file: !3, line: 209, type: !2687, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!3494 = !DILocalVariable(name: "d", arg: 1, scope: !3493, file: !3, line: 209, type: !2689)
!3495 = !DILocation(line: 209, column: 74, scope: !3493)
!3496 = !DILocation(line: 211, column: 16, scope: !3493)
!3497 = !DILocation(line: 212, column: 2, scope: !3493)
!3498 = distinct !DISubprogram(name: "thinkpad_e530_quirk", scope: !3, file: !3, line: 203, type: !2687, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!3499 = !DILocalVariable(name: "d", arg: 1, scope: !3498, file: !3, line: 203, type: !2689)
!3500 = !DILocation(line: 203, column: 67, scope: !3498)
!3501 = !DILocation(line: 205, column: 31, scope: !3498)
!3502 = !DILocation(line: 206, column: 2, scope: !3498)
