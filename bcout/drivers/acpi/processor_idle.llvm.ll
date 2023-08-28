; ModuleID = '../bcout/drivers/acpi/processor_idle.llvm.bc'
source_filename = "drivers/acpi/processor_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon }
%struct.module = type opaque
%union.anon = type { i8* }
%struct.cpuidle_driver = type { i8*, %struct.module*, i8, [10 x %struct.cpuidle_state], i32, i32, %struct.cpumask*, i8* }
%struct.cpuidle_state = type { [16 x i8], [32 x i8], i64, i64, i32, i32, i32, i32, i32 (%struct.cpuidle_device*, %struct.cpuidle_driver*, i32)*, i32 (%struct.cpuidle_device*, i32)*, i32 (%struct.cpuidle_device*, %struct.cpuidle_driver*, i32)* }
%struct.cpuidle_device = type { i8, i32, i64, i32, i64, i64, i64, [10 x %struct.cpuidle_state_usage], [10 x %struct.cpuidle_state_kobj*], %struct.cpuidle_driver_kobj*, %struct.cpuidle_device_kobj*, %struct.list_head }
%struct.cpuidle_state_usage = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.cpuidle_state_kobj = type opaque
%struct.cpuidle_driver_kobj = type opaque
%struct.cpuidle_device_kobj = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.cpumask = type { [1 x i64] }
%struct.acpi_processor = type { i8*, i32, i32, i32, i32, i32, i32, %struct.acpi_processor_flags, %struct.acpi_processor_power, %struct.acpi_processor_performance*, %struct.acpi_processor_throttling, %struct.acpi_processor_limit, %struct.thermal_cooling_device*, %struct.device*, %struct.freq_qos_request, %struct.freq_qos_request }
%struct.acpi_processor_flags = type { i16 }
%struct.acpi_processor_power = type { i32, %union.anon.0, i32 }
%union.anon.0 = type { [8 x %struct.acpi_lpi_state] }
%struct.acpi_lpi_state = type { i32, i32, i32, i32, i32, i32, i64, i8, i8, [32 x i8] }
%struct.acpi_processor_performance = type { i32, i32, %struct.acpi_pct_register, %struct.acpi_pct_register, i32, %struct.acpi_processor_px*, %struct.acpi_psd_package, [1 x %struct.cpumask], i32 }
%struct.acpi_pct_register = type <{ i8, i16, i8, i8, i8, i8, i64 }>
%struct.acpi_processor_px = type { i64, i64, i64, i64, i64, i64 }
%struct.acpi_psd_package = type { i64, i64, i64, i64, i64 }
%struct.acpi_processor_throttling = type { i32, i32, %struct.acpi_pct_register, %struct.acpi_pct_register, i32, %struct.acpi_processor_tx_tss*, %struct.acpi_tsd_package, [1 x %struct.cpumask], {}*, i32 (%struct.acpi_processor*, i32, i1)*, i32, i8, i8, i8, i32, [16 x %struct.acpi_processor_tx] }
%struct.acpi_processor_tx_tss = type { i64, i64, i64, i64, i64 }
%struct.acpi_tsd_package = type { i64, i64, i64, i64, i64 }
%struct.acpi_processor_tx = type { i16, i16 }
%struct.acpi_processor_limit = type { %struct.acpi_processor_lx, %struct.acpi_processor_lx, %struct.acpi_processor_lx }
%struct.acpi_processor_lx = type { i32, i32 }
%struct.thermal_cooling_device = type { i32, [20 x i8], %struct.device, %struct.device_node*, i8*, i8*, %struct.thermal_cooling_device_ops*, i8, %struct.mutex, %struct.list_head, %struct.list_head }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.39, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.atomic_t = type { i32 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.39 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.file = type opaque
%struct.seq_file = type opaque
%struct.vm_operations_struct = type opaque
%struct.poll_table_struct = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.38, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
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
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot = type { i64 }
%struct.anon.38 = type { %struct.rb_node, i64 }
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
%struct.dev_pm_qos = type { %struct.pm_qos_constraints, %struct.pm_qos_constraints, %struct.freq_constraints, %struct.pm_qos_flags, %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request* }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, %struct.blocking_notifier_head* }
%struct.plist_head = type { %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, %struct.notifier_block* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_flags = type { %struct.list_head, i32 }
%struct.dev_pm_qos_request = type { i32, %union.anon.40, %struct.device* }
%union.anon.40 = type { %struct.freq_qos_request }
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
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.thermal_cooling_device_ops = type { i32 (%struct.thermal_cooling_device*, i64*)*, i32 (%struct.thermal_cooling_device*, i64*)*, i32 (%struct.thermal_cooling_device*, i64)*, i32 (%struct.thermal_cooling_device*, i32*)*, i32 (%struct.thermal_cooling_device*, i64, i32*)*, i32 (%struct.thermal_cooling_device*, i32, i64*)* }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.freq_qos_request = type { i32, %struct.plist_node, %struct.freq_constraints* }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.acpi_buffer = type { i64, i8* }
%struct.kmem_cache = type opaque
%struct.acpi_table_fadt = type <{ %struct.acpi_table_header, i32, i32, i8, i8, i16, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i16, i8, i32, %struct.acpi_generic_address, i8, i16, i8, i64, i64, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, i64 }>
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.acpi_generic_address = type <{ i8, i8, i8, i8, i64 }>
%struct.acpi_processor_errata = type { i8, %struct.anon.50 }
%struct.anon.50 = type { i8, i32 }
%struct.cpuinfo_x86 = type { i8, i8, i8, i8, i32, [3 x i32], i8, i8, i8, i8, i32, i32, %union.anon.51, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8 }
%union.anon.51 = type { i64, [72 x i8] }
%struct.acpi_processor_cx = type { i8, i8, i32, i8, i8, i32, i8, [32 x i8] }
%struct.paravirt_patch_template = type { %struct.pv_init_ops, %struct.pv_time_ops, %struct.pv_cpu_ops, %struct.pv_irq_ops, %struct.pv_mmu_ops, %struct.pv_lock_ops }
%struct.pv_init_ops = type { i32 (i8, i8*, i64, i32)* }
%struct.pv_time_ops = type { i64 ()*, i64 (i32)* }
%struct.pv_cpu_ops = type { void ()*, i64 (i32)*, void (i32, i64)*, i64 ()*, void (i64)*, void (i64)*, void ()*, void (%struct.desc_ptr*)*, void (%struct.desc_ptr*)*, void (i8*, i32)*, i64 ()*, void (%struct.thread_struct*, i32)*, void (i32)*, void (%struct.desc_struct*, i32, i8*)*, void (%struct.desc_struct*, i32, i8*, i32)*, void (%struct.gate_struct*, i32, %struct.gate_struct*)*, void (%struct.desc_struct*, i32)*, void (%struct.desc_struct*, i32)*, void (i64)*, void ()*, void ()*, void ()*, void (i32*, i32*, i32*, i32*)*, i64 (i32)*, void (i32, i32, i32)*, i64 (i32, i32*)*, i32 (i32, i32, i32)*, i64 (i32)*, void ()*, void ()*, void ()*, void (%struct.task_struct*)*, void (%struct.task_struct*)* }
%struct.desc_ptr = type <{ i16, i64 }>
%struct.gate_struct = type { i16, i16, %struct.idt_bits, i16, i32, i32 }
%struct.idt_bits = type { i16 }
%struct.pv_irq_ops = type { %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void ()*, void ()* }
%struct.paravirt_callee_save = type { i8* }
%struct.pv_mmu_ops = type { void ()*, void ()*, void (i64)*, void (%struct.cpumask*, %struct.flush_tlb_info*)*, void (%struct.mmu_gather*, i8*)*, void (%struct.mm_struct*)*, %struct.paravirt_callee_save, void (i64)*, i64 ()*, void (i64)*, void (%struct.mm_struct*, %struct.mm_struct*)*, void (%struct.mm_struct*, %struct.mm_struct*)*, i32 (%struct.mm_struct*)*, void (%struct.mm_struct*, %struct.pgd_t*)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (i64)*, void (i64)*, void (i64)*, void (i64)*, void (%struct.pte_t*, i64)*, void (%struct.pmd_t*, i64)*, i64 (%struct.vm_area_struct*, i64, %struct.pte_t*)*, void (%struct.vm_area_struct*, i64, %struct.pte_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.pud_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.p4d_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.pgd_t*, i64)*, %struct.pv_lazy_ops, void (i32, i64, i64)* }
%struct.flush_tlb_info = type opaque
%struct.mmu_gather = type opaque
%struct.pte_t = type { i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.p4d_t = type { i64 }
%struct.pv_lazy_ops = type { void ()*, void ()*, void ()* }
%struct.pv_lock_ops = type { void (%struct.qspinlock*, i32)*, %struct.paravirt_callee_save, void (i8*, i8)*, void (i32)*, %struct.paravirt_callee_save }
%struct.qspinlock = type opaque
%struct.dmi_system_id = type { {}*, i8*, [4 x %struct.dmi_strmatch], i8* }
%struct.dmi_strmatch = type { i8, [79 x i8] }
%struct.acpi_device = type { i32, i8*, %struct.fwnode_handle, %struct.acpi_device*, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.acpi_device_status, %struct.acpi_device_flags, %struct.acpi_device_pnp, %struct.acpi_device_power, %struct.acpi_device_wakeup, %struct.acpi_device_perf, %struct.acpi_device_dir, %struct.acpi_device_data, %struct.acpi_scan_handler*, %struct.acpi_hotplug_context*, %struct.acpi_driver*, %struct.acpi_gpio_mapping*, i8*, %struct.device, i32, i32, %struct.list_head, %struct.mutex, void (%struct.acpi_device*)* }
%struct.acpi_device_status = type { i32 }
%struct.acpi_device_flags = type { i32 }
%struct.acpi_device_pnp = type { [8 x i8], %struct.acpi_pnp_type, i64, i8*, %struct.list_head, [40 x i8], [20 x i8], %union.acpi_object* }
%struct.acpi_pnp_type = type { i32 }
%union.acpi_object = type { %struct.anon.46 }
%struct.anon.46 = type { i32, i32, i64, i32 }
%struct.acpi_device_power = type { i32, %struct.acpi_device_power_flags, [5 x %struct.acpi_device_power_state] }
%struct.acpi_device_power_flags = type { i32 }
%struct.acpi_device_power_state = type { %struct.anon.48, i32, i32, %struct.list_head }
%struct.anon.48 = type { i8 }
%struct.acpi_device_wakeup = type { i8*, i64, i64, %struct.list_head, %struct.acpi_device_wakeup_flags, %struct.acpi_device_wakeup_context, %struct.wakeup_source*, i32, i32 }
%struct.acpi_device_wakeup_flags = type { i8 }
%struct.acpi_device_wakeup_context = type { void (%struct.acpi_device_wakeup_context*)*, %struct.device* }
%struct.acpi_device_perf = type { i32, %struct.acpi_device_perf_flags, i32, %struct.acpi_device_perf_state* }
%struct.acpi_device_perf_flags = type { i8 }
%struct.acpi_device_perf_state = type { %struct.anon.49, i8, i8, i32 }
%struct.anon.49 = type { i8 }
%struct.acpi_device_dir = type { %struct.proc_dir_entry* }
%struct.proc_dir_entry = type opaque
%struct.acpi_device_data = type { %union.acpi_object*, %struct.list_head, %union.acpi_object*, %struct.list_head }
%struct.acpi_scan_handler = type { %struct.acpi_device_id*, %struct.list_head, i1 (i8*, %struct.acpi_device_id**)*, i32 (%struct.acpi_device*, %struct.acpi_device_id*)*, void (%struct.acpi_device*)*, void (%struct.device*)*, void (%struct.device*)*, %struct.acpi_hotplug_profile }
%struct.acpi_hotplug_profile = type { %struct.kobject, i32 (%struct.acpi_device*)*, void (%struct.acpi_device*)*, i8 }
%struct.acpi_hotplug_context = type { %struct.acpi_device*, i32 (%struct.acpi_device*, i32)*, void (%struct.acpi_device*, i32)*, void (%struct.acpi_device*)* }
%struct.acpi_driver = type { [80 x i8], [80 x i8], %struct.acpi_device_id*, i32, %struct.acpi_device_ops, %struct.device_driver, %struct.module* }
%struct.acpi_device_ops = type { i32 (%struct.acpi_device*)*, i32 (%struct.acpi_device*)*, void (%struct.acpi_device*, i32)* }
%struct.acpi_gpio_mapping = type opaque
%struct.acpi_lpi_states_array = type { i32, i32, %struct.acpi_lpi_state*, [8 x %struct.acpi_lpi_state*] }
%struct.acpi_power_register = type <{ i8, i16, i8, i8, i8, i8, i64 }>
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%struct.anon.44 = type { i32, i32, %union.acpi_object* }
%struct.anon.41 = type { i32, i64 }
%struct.anon.43 = type { i32, i32, i8* }
%struct.anon.42 = type { i32, i32, i8* }

@__param_str_max_cstate = internal constant [21 x i8] c"processor.max_cstate\00", align 16, !dbg !0
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 8
@max_cstate = internal global i32 8, section ".data..read_mostly", align 4, !dbg !2628
@__param_max_cstate = internal constant %struct.kernel_param { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__param_str_max_cstate, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @max_cstate to i8*) } }, section "__param", align 8, !dbg !2508
@__UNIQUE_ID_max_cstatetype172 = internal constant [35 x i8] c"processor.parmtype=max_cstate:uint\00", section ".modinfo", align 1, !dbg !2560
@__param_str_nocst = internal constant [16 x i8] c"processor.nocst\00", align 16, !dbg !2630
@nocst = internal global i32 0, section ".data..read_mostly", align 4, !dbg !2620
@__param_nocst = internal constant %struct.kernel_param { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__param_str_nocst, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @nocst to i8*) } }, section "__param", align 8, !dbg !2565
@__UNIQUE_ID_nocsttype173 = internal constant [30 x i8] c"processor.parmtype=nocst:uint\00", section ".modinfo", align 1, !dbg !2567
@__param_str_bm_check_disable = internal constant [27 x i8] c"processor.bm_check_disable\00", align 16, !dbg !2633
@bm_check_disable = internal global i32 0, section ".data..read_mostly", align 4, !dbg !2622
@__param_bm_check_disable = internal constant %struct.kernel_param { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__param_str_bm_check_disable, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @bm_check_disable to i8*) } }, section "__param", align 8, !dbg !2572
@__UNIQUE_ID_bm_check_disabletype174 = internal constant [41 x i8] c"processor.parmtype=bm_check_disable:uint\00", section ".modinfo", align 1, !dbg !2574
@__param_str_latency_factor = internal constant [25 x i8] c"processor.latency_factor\00", align 16, !dbg !2638
@latency_factor = internal global i32 2, section ".data..read_mostly", align 4, !dbg !2643
@__param_latency_factor = internal constant %struct.kernel_param { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__param_str_latency_factor, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @latency_factor to i8*) } }, section "__param", align 8, !dbg !2579
@__UNIQUE_ID_latency_factortype175 = internal constant [39 x i8] c"processor.parmtype=latency_factor:uint\00", section ".modinfo", align 1, !dbg !2581
@.str = private unnamed_addr constant [10 x i8] c"acpi_idle\00", align 1
@acpi_idle_driver = dso_local global %struct.cpuidle_driver { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), %struct.module* null, i8 0, [10 x %struct.cpuidle_state] zeroinitializer, i32 0, i32 0, %struct.cpumask* null, i8* null }, align 8, !dbg !2586
@acpi_cpuidle_device = internal global %struct.cpuidle_device* null, section ".data", align 8, !dbg !2624
@processors = external dso_local global %struct.acpi_processor*, section ".data", align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@acpi_processor_registered = internal global i32 0, align 4, !dbg !2626
@boot_option_idle_override = external dso_local global i64, align 8
@osc_pc_lpi_support_confirmed = external dso_local global i8, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"_LPI\00", align 1
@flat_state_cnt = internal global i32 0, align 4, !dbg !2645
@.str.2 = private unnamed_addr constant [9 x i8] c"ACPI0010\00", align 1
@__const.acpi_processor_evaluate_lpi.buffer = private unnamed_addr constant %struct.acpi_buffer { i64 -1, i8* null }, align 8
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"\014ACPI: Limiting number of LPI states to max (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"\014ACPI: Please increase ACPI_PROCESSOR_MAX_POWER if needed.\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@acpi_gbl_FADT = external dso_local global %struct.acpi_table_fadt, align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"ACPI P_LVL2 IOPORT 0x%x\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"ACPI P_LVL3 IOPORT 0x%x\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"ACPI HLT\00", align 1
@acpi_processor_power_verify_c3.bm_check_flag = internal global i32 -1, align 4, !dbg !2647
@acpi_processor_power_verify_c3.bm_control_flag = internal global i32 -1, align 4, !dbg !2652
@errata = external dso_local global %struct.acpi_processor_errata, align 4
@local_apic_timer_c2_ok = external dso_local global i32, align 4
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@.str.10 = private unnamed_addr constant [18 x i8] c"TSC halts in idle\00", align 1
@acpi_cstate = internal global [10 x %struct.acpi_processor_cx*] zeroinitializer, section ".data", align 16, !dbg !2654
@.str.11 = private unnamed_addr constant [7 x i8] c"LPI-%d\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"C%d\00", align 1
@acpi_idle_enter_bm.safe_cx = internal global %struct.acpi_processor_cx { i8 0, i8 0, i32 0, i8 2, i8 0, i32 0, i8 0, [32 x i8] zeroinitializer }, align 4, !dbg !2657
@c3_lock = internal global %struct.raw_spinlock undef, align 1, !dbg !2662
@c3_cpu_count = internal global i32 0, align 4, !dbg !2664
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@current_task = external dso_local global %struct.task_struct*, section ".data", align 8
@acpi_processor_cstate_first_run_checks.first_run = internal global i32 0, align 4, !dbg !2666
@.str.14 = private unnamed_addr constant [51 x i8] c"\015ACPI: ACPI: processor limited to max C-state %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"Clevo 5600D\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"Pavilion zv5000\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"Asus L8400B\00", align 1
@processor_power_dmi_table = internal constant [4 x { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* }] [{ i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } { i32 (%struct.dmi_system_id*)* @set_max_cstate, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 1, [79 x i8] c"Phoenix Technologies LTD\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 2, [79 x i8] c"SHE845M0.86C.0013.D.0302131307\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* inttoptr (i64 2 to i8*) }, { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } { i32 (%struct.dmi_system_id*)* @set_max_cstate, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0), [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Hewlett-Packard\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Pavilion zv5000 (DS502A#ABA)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* inttoptr (i64 1 to i8*) }, { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } { i32 (%struct.dmi_system_id*)* @set_max_cstate, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"ASUSTeK Computer Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"L8400B series Notebook PC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* inttoptr (i64 1 to i8*) }, { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } zeroinitializer], align 16, !dbg !2671
@.str.19 = private unnamed_addr constant [92 x i8] c"\015ACPI: %s detected - limiting to C%ld max_cstate. Override with \22processor.max_cstate=%d\22\0A\00", align 1
@llvm.used = appending global [8 x i8*] [i8* bitcast (%struct.kernel_param* @__param_max_cstate to i8*), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__UNIQUE_ID_max_cstatetype172, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_nocst to i8*), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__UNIQUE_ID_nocsttype173, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_bm_check_disable to i8*), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__UNIQUE_ID_bm_check_disabletype174, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_latency_factor to i8*), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__UNIQUE_ID_latency_factortype175, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define weak dso_local i32 @acpi_processor_ffh_lpi_probe(i32 %cpu) #0 !dbg !2703 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !2706, metadata !DIExpression()), !dbg !2707
  ret i32 -19, !dbg !2708
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define weak dso_local i32 @acpi_processor_ffh_lpi_enter(%struct.acpi_lpi_state* %lpi) #0 !dbg !2709 {
entry:
  %lpi.addr = alloca %struct.acpi_lpi_state*, align 8
  store %struct.acpi_lpi_state* %lpi, %struct.acpi_lpi_state** %lpi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_lpi_state** %lpi.addr, metadata !2713, metadata !DIExpression()), !dbg !2714
  ret i32 -19, !dbg !2715
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_processor_hotplug(%struct.acpi_processor* %pr) #0 !dbg !2716 {
entry:
  %retval = alloca i32, align 4
  %pr.addr = alloca %struct.acpi_processor*, align 8
  %ret = alloca i32, align 4
  %dev = alloca %struct.cpuidle_device*, align 8
  %tmp = alloca %struct.cpuidle_device**, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp4 = alloca %struct.cpuidle_device**, align 8
  store %struct.acpi_processor* %pr, %struct.acpi_processor** %pr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr.addr, metadata !2717, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2719, metadata !DIExpression()), !dbg !2720
  store i32 0, i32* %ret, align 4, !dbg !2720
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %dev, metadata !2721, metadata !DIExpression()), !dbg !2722
  %call = call i32 @disabled_by_idle_boot_param() #10, !dbg !2723
  %tobool = icmp ne i32 %call, 0, !dbg !2723
  br i1 %tobool, label %if.then, label %if.end, !dbg !2725

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2726
  br label %return, !dbg !2726

if.end:                                           ; preds = %entry
  %0 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !2727
  %flags = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %0, i32 0, i32 7, !dbg !2729
  %1 = bitcast %struct.acpi_processor_flags* %flags to i16*, !dbg !2730
  %bf.load = load i16, i16* %1, align 8, !dbg !2730
  %bf.lshr = lshr i16 %bf.load, 8, !dbg !2730
  %bf.clear = and i16 %bf.lshr, 1, !dbg !2730
  %bf.cast = trunc i16 %bf.clear to i8, !dbg !2730
  %tobool1 = icmp ne i8 %bf.cast, 0, !dbg !2727
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !2731

if.then2:                                         ; preds = %if.end
  store i32 -19, i32* %retval, align 4, !dbg !2732
  br label %return, !dbg !2732

if.end3:                                          ; preds = %if.end
  %2 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !2733
  %id = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %2, i32 0, i32 3, !dbg !2733
  %3 = load i32, i32* %id, align 8, !dbg !2733
  br label %do.body, !dbg !2735

do.body:                                          ; preds = %if.end3
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !2737, metadata !DIExpression()), !dbg !2739
  store i8* null, i8** %__vpp_verify, align 8, !dbg !2739
  %4 = load i8*, i8** %__vpp_verify, align 8, !dbg !2739
  br label %do.end, !dbg !2739

do.end:                                           ; preds = %do.body
  store %struct.cpuidle_device** @acpi_cpuidle_device, %struct.cpuidle_device*** %tmp4, align 8, !dbg !2739
  %5 = load %struct.cpuidle_device**, %struct.cpuidle_device*** %tmp4, align 8, !dbg !2735
  store %struct.cpuidle_device** %5, %struct.cpuidle_device*** %tmp, align 8, !dbg !2733
  %6 = load %struct.cpuidle_device**, %struct.cpuidle_device*** %tmp, align 8, !dbg !2733
  %7 = load %struct.cpuidle_device*, %struct.cpuidle_device** %6, align 8, !dbg !2740
  store %struct.cpuidle_device* %7, %struct.cpuidle_device** %dev, align 8, !dbg !2741
  call void @cpuidle_pause_and_lock() #10, !dbg !2742
  %8 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev, align 8, !dbg !2743
  call void @cpuidle_disable_device(%struct.cpuidle_device* %8) #10, !dbg !2744
  %9 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !2745
  %call5 = call i32 @acpi_processor_get_power_info(%struct.acpi_processor* %9) #10, !dbg !2746
  store i32 %call5, i32* %ret, align 4, !dbg !2747
  %10 = load i32, i32* %ret, align 4, !dbg !2748
  %tobool6 = icmp ne i32 %10, 0, !dbg !2748
  br i1 %tobool6, label %if.end15, label %land.lhs.true, !dbg !2750

land.lhs.true:                                    ; preds = %do.end
  %11 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !2751
  %flags7 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %11, i32 0, i32 7, !dbg !2752
  %12 = bitcast %struct.acpi_processor_flags* %flags7 to i16*, !dbg !2753
  %bf.load8 = load i16, i16* %12, align 8, !dbg !2753
  %bf.clear9 = and i16 %bf.load8, 1, !dbg !2753
  %bf.cast10 = trunc i16 %bf.clear9 to i8, !dbg !2753
  %conv = zext i8 %bf.cast10 to i32, !dbg !2751
  %tobool11 = icmp ne i32 %conv, 0, !dbg !2751
  br i1 %tobool11, label %if.then12, label %if.end15, !dbg !2754

if.then12:                                        ; preds = %land.lhs.true
  %13 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !2755
  %14 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev, align 8, !dbg !2757
  %call13 = call i32 @acpi_processor_setup_cpuidle_dev(%struct.acpi_processor* %13, %struct.cpuidle_device* %14) #10, !dbg !2758
  %15 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev, align 8, !dbg !2759
  %call14 = call i32 @cpuidle_enable_device(%struct.cpuidle_device* %15) #10, !dbg !2760
  store i32 %call14, i32* %ret, align 4, !dbg !2761
  br label %if.end15, !dbg !2762

if.end15:                                         ; preds = %if.then12, %land.lhs.true, %do.end
  call void @cpuidle_resume_and_unlock() #10, !dbg !2763
  %16 = load i32, i32* %ret, align 4, !dbg !2764
  store i32 %16, i32* %retval, align 4, !dbg !2765
  br label %return, !dbg !2765

return:                                           ; preds = %if.end15, %if.then2, %if.then
  %17 = load i32, i32* %retval, align 4, !dbg !2766
  ret i32 %17, !dbg !2766
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @disabled_by_idle_boot_param() #0 !dbg !2767 {
entry:
  %0 = load i64, i64* @boot_option_idle_override, align 8, !dbg !2770
  %cmp = icmp eq i64 %0, 3, !dbg !2771
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !2772

lor.rhs:                                          ; preds = %entry
  %1 = load i64, i64* @boot_option_idle_override, align 8, !dbg !2773
  %cmp1 = icmp eq i64 %1, 1, !dbg !2774
  br label %lor.end, !dbg !2772

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  %lor.ext = zext i1 %2 to i32, !dbg !2772
  ret i32 %lor.ext, !dbg !2775
}

; Function Attrs: noredzone
declare dso_local void @cpuidle_pause_and_lock() #2

; Function Attrs: noredzone
declare dso_local void @cpuidle_disable_device(%struct.cpuidle_device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_processor_get_power_info(%struct.acpi_processor* %pr) #0 !dbg !2776 {
entry:
  %pr.addr = alloca %struct.acpi_processor*, align 8
  %ret = alloca i32, align 4
  store %struct.acpi_processor* %pr, %struct.acpi_processor** %pr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr.addr, metadata !2777, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2779, metadata !DIExpression()), !dbg !2780
  %0 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !2781
  %call = call i32 @acpi_processor_get_lpi_info(%struct.acpi_processor* %0) #10, !dbg !2782
  store i32 %call, i32* %ret, align 4, !dbg !2783
  %1 = load i32, i32* %ret, align 4, !dbg !2784
  %tobool = icmp ne i32 %1, 0, !dbg !2784
  br i1 %tobool, label %if.then, label %if.end, !dbg !2786

if.then:                                          ; preds = %entry
  %2 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !2787
  %call1 = call i32 @acpi_processor_get_cstate_info(%struct.acpi_processor* %2) #10, !dbg !2788
  store i32 %call1, i32* %ret, align 4, !dbg !2789
  br label %if.end, !dbg !2790

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %ret, align 4, !dbg !2791
  ret i32 %3, !dbg !2792
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_processor_setup_cpuidle_dev(%struct.acpi_processor* %pr, %struct.cpuidle_device* %dev) #0 !dbg !2793 {
entry:
  %retval = alloca i32, align 4
  %pr.addr = alloca %struct.acpi_processor*, align 8
  %dev.addr = alloca %struct.cpuidle_device*, align 8
  store %struct.acpi_processor* %pr, %struct.acpi_processor** %pr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr.addr, metadata !2796, metadata !DIExpression()), !dbg !2797
  store %struct.cpuidle_device* %dev, %struct.cpuidle_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %dev.addr, metadata !2798, metadata !DIExpression()), !dbg !2799
  %0 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !2800
  %flags = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %0, i32 0, i32 7, !dbg !2802
  %1 = bitcast %struct.acpi_processor_flags* %flags to i16*, !dbg !2803
  %bf.load = load i16, i16* %1, align 8, !dbg !2803
  %bf.lshr = lshr i16 %bf.load, 8, !dbg !2803
  %bf.clear = and i16 %bf.lshr, 1, !dbg !2803
  %bf.cast = trunc i16 %bf.clear to i8, !dbg !2803
  %tobool = icmp ne i8 %bf.cast, 0, !dbg !2800
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2804

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !2805
  %flags1 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %2, i32 0, i32 7, !dbg !2806
  %3 = bitcast %struct.acpi_processor_flags* %flags1 to i16*, !dbg !2807
  %bf.load2 = load i16, i16* %3, align 8, !dbg !2807
  %bf.clear3 = and i16 %bf.load2, 1, !dbg !2807
  %bf.cast4 = trunc i16 %bf.clear3 to i8, !dbg !2807
  %tobool5 = icmp ne i8 %bf.cast4, 0, !dbg !2805
  br i1 %tobool5, label %lor.lhs.false6, label %if.then, !dbg !2808

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %4 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !2809
  %tobool7 = icmp ne %struct.cpuidle_device* %4, null, !dbg !2809
  br i1 %tobool7, label %if.end, label %if.then, !dbg !2810

if.then:                                          ; preds = %lor.lhs.false6, %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !2811
  br label %return, !dbg !2811

if.end:                                           ; preds = %lor.lhs.false6
  %5 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !2812
  %id = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %5, i32 0, i32 3, !dbg !2813
  %6 = load i32, i32* %id, align 8, !dbg !2813
  %7 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !2814
  %cpu = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %7, i32 0, i32 1, !dbg !2815
  store i32 %6, i32* %cpu, align 4, !dbg !2816
  %8 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !2817
  %flags8 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %8, i32 0, i32 7, !dbg !2819
  %9 = bitcast %struct.acpi_processor_flags* %flags8 to i16*, !dbg !2820
  %bf.load9 = load i16, i16* %9, align 8, !dbg !2820
  %bf.lshr10 = lshr i16 %bf.load9, 7, !dbg !2820
  %bf.clear11 = and i16 %bf.lshr10, 1, !dbg !2820
  %bf.cast12 = trunc i16 %bf.clear11 to i8, !dbg !2820
  %tobool13 = icmp ne i8 %bf.cast12, 0, !dbg !2817
  br i1 %tobool13, label %if.then14, label %if.end16, !dbg !2821

if.then14:                                        ; preds = %if.end
  %10 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !2822
  %id15 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %10, i32 0, i32 3, !dbg !2823
  %11 = load i32, i32* %id15, align 8, !dbg !2823
  %call = call i32 @acpi_processor_ffh_lpi_probe(i32 %11) #10, !dbg !2824
  store i32 %call, i32* %retval, align 4, !dbg !2825
  br label %return, !dbg !2825

if.end16:                                         ; preds = %if.end
  %12 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !2826
  %13 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !2827
  %call17 = call i32 @acpi_processor_setup_cpuidle_cx(%struct.acpi_processor* %12, %struct.cpuidle_device* %13) #10, !dbg !2828
  store i32 %call17, i32* %retval, align 4, !dbg !2829
  br label %return, !dbg !2829

return:                                           ; preds = %if.end16, %if.then14, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !2830
  ret i32 %14, !dbg !2830
}

; Function Attrs: noredzone
declare dso_local i32 @cpuidle_enable_device(%struct.cpuidle_device*) #2

; Function Attrs: noredzone
declare dso_local void @cpuidle_resume_and_unlock() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_processor_power_state_has_changed(%struct.acpi_processor* %pr) #0 !dbg !2831 {
entry:
  %retval = alloca i32, align 4
  %pr.addr = alloca %struct.acpi_processor*, align 8
  %cpu = alloca i32, align 4
  %_pr = alloca %struct.acpi_processor*, align 8
  %dev = alloca %struct.cpuidle_device*, align 8
  %tmp = alloca %struct.acpi_processor**, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp8 = alloca %struct.acpi_processor**, align 8
  %tmp18 = alloca %struct.cpuidle_device**, align 8
  %__vpp_verify20 = alloca i8*, align 8
  %tmp22 = alloca %struct.cpuidle_device**, align 8
  %tmp28 = alloca %struct.acpi_processor**, align 8
  %__vpp_verify30 = alloca i8*, align 8
  %tmp32 = alloca %struct.acpi_processor**, align 8
  %tmp50 = alloca %struct.cpuidle_device**, align 8
  %__vpp_verify52 = alloca i8*, align 8
  %tmp54 = alloca %struct.cpuidle_device**, align 8
  store %struct.acpi_processor* %pr, %struct.acpi_processor** %pr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr.addr, metadata !2832, metadata !DIExpression()), !dbg !2833
  call void @llvm.dbg.declare(metadata i32* %cpu, metadata !2834, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %_pr, metadata !2836, metadata !DIExpression()), !dbg !2837
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %dev, metadata !2838, metadata !DIExpression()), !dbg !2839
  %call = call i32 @disabled_by_idle_boot_param() #10, !dbg !2840
  %tobool = icmp ne i32 %call, 0, !dbg !2840
  br i1 %tobool, label %if.then, label %if.end, !dbg !2842

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2843
  br label %return, !dbg !2843

if.end:                                           ; preds = %entry
  %0 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !2844
  %flags = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %0, i32 0, i32 7, !dbg !2846
  %1 = bitcast %struct.acpi_processor_flags* %flags to i16*, !dbg !2847
  %bf.load = load i16, i16* %1, align 8, !dbg !2847
  %bf.lshr = lshr i16 %bf.load, 8, !dbg !2847
  %bf.clear = and i16 %bf.lshr, 1, !dbg !2847
  %bf.cast = trunc i16 %bf.clear to i8, !dbg !2847
  %tobool1 = icmp ne i8 %bf.cast, 0, !dbg !2844
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !2848

if.then2:                                         ; preds = %if.end
  store i32 -19, i32* %retval, align 4, !dbg !2849
  br label %return, !dbg !2849

if.end3:                                          ; preds = %if.end
  %2 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !2850
  %id = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %2, i32 0, i32 3, !dbg !2852
  %3 = load i32, i32* %id, align 8, !dbg !2852
  %cmp = icmp eq i32 %3, 0, !dbg !2853
  br i1 %cmp, label %land.lhs.true, label %if.end61, !dbg !2854

land.lhs.true:                                    ; preds = %if.end3
  %call4 = call %struct.cpuidle_driver* @cpuidle_get_driver() #10, !dbg !2855
  %cmp5 = icmp eq %struct.cpuidle_driver* %call4, @acpi_idle_driver, !dbg !2856
  br i1 %cmp5, label %if.then6, label %if.end61, !dbg !2857

if.then6:                                         ; preds = %land.lhs.true
  call void @get_online_cpus() #10, !dbg !2858
  call void @cpuidle_pause_and_lock() #10, !dbg !2860
  store i32 0, i32* %cpu, align 4, !dbg !2861
  br label %for.cond, !dbg !2861

for.cond:                                         ; preds = %for.inc, %if.then6
  %4 = load i32, i32* %cpu, align 4, !dbg !2863
  %cmp7 = icmp slt i32 %4, 1, !dbg !2863
  br i1 %cmp7, label %for.body, label %for.end, !dbg !2861

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %cpu, align 4, !dbg !2865
  br label %do.body, !dbg !2868

do.body:                                          ; preds = %for.body
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !2870, metadata !DIExpression()), !dbg !2872
  store i8* null, i8** %__vpp_verify, align 8, !dbg !2872
  %6 = load i8*, i8** %__vpp_verify, align 8, !dbg !2872
  br label %do.end, !dbg !2872

do.end:                                           ; preds = %do.body
  store %struct.acpi_processor** @processors, %struct.acpi_processor*** %tmp8, align 8, !dbg !2872
  %7 = load %struct.acpi_processor**, %struct.acpi_processor*** %tmp8, align 8, !dbg !2868
  store %struct.acpi_processor** %7, %struct.acpi_processor*** %tmp, align 8, !dbg !2865
  %8 = load %struct.acpi_processor**, %struct.acpi_processor*** %tmp, align 8, !dbg !2865
  %9 = load %struct.acpi_processor*, %struct.acpi_processor** %8, align 8, !dbg !2873
  store %struct.acpi_processor* %9, %struct.acpi_processor** %_pr, align 8, !dbg !2874
  %10 = load %struct.acpi_processor*, %struct.acpi_processor** %_pr, align 8, !dbg !2875
  %tobool9 = icmp ne %struct.acpi_processor* %10, null, !dbg !2875
  br i1 %tobool9, label %lor.lhs.false, label %if.then16, !dbg !2877

lor.lhs.false:                                    ; preds = %do.end
  %11 = load %struct.acpi_processor*, %struct.acpi_processor** %_pr, align 8, !dbg !2878
  %flags10 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %11, i32 0, i32 7, !dbg !2879
  %12 = bitcast %struct.acpi_processor_flags* %flags10 to i16*, !dbg !2880
  %bf.load11 = load i16, i16* %12, align 8, !dbg !2880
  %bf.lshr12 = lshr i16 %bf.load11, 8, !dbg !2880
  %bf.clear13 = and i16 %bf.lshr12, 1, !dbg !2880
  %bf.cast14 = trunc i16 %bf.clear13 to i8, !dbg !2880
  %tobool15 = icmp ne i8 %bf.cast14, 0, !dbg !2878
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !2881

if.then16:                                        ; preds = %lor.lhs.false, %do.end
  br label %for.inc, !dbg !2882

if.end17:                                         ; preds = %lor.lhs.false
  %13 = load i32, i32* %cpu, align 4, !dbg !2883
  br label %do.body19, !dbg !2885

do.body19:                                        ; preds = %if.end17
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify20, metadata !2887, metadata !DIExpression()), !dbg !2889
  store i8* null, i8** %__vpp_verify20, align 8, !dbg !2889
  %14 = load i8*, i8** %__vpp_verify20, align 8, !dbg !2889
  br label %do.end21, !dbg !2889

do.end21:                                         ; preds = %do.body19
  store %struct.cpuidle_device** @acpi_cpuidle_device, %struct.cpuidle_device*** %tmp22, align 8, !dbg !2889
  %15 = load %struct.cpuidle_device**, %struct.cpuidle_device*** %tmp22, align 8, !dbg !2885
  store %struct.cpuidle_device** %15, %struct.cpuidle_device*** %tmp18, align 8, !dbg !2883
  %16 = load %struct.cpuidle_device**, %struct.cpuidle_device*** %tmp18, align 8, !dbg !2883
  %17 = load %struct.cpuidle_device*, %struct.cpuidle_device** %16, align 8, !dbg !2890
  store %struct.cpuidle_device* %17, %struct.cpuidle_device** %dev, align 8, !dbg !2891
  %18 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev, align 8, !dbg !2892
  call void @cpuidle_disable_device(%struct.cpuidle_device* %18) #10, !dbg !2893
  br label %for.inc, !dbg !2894

for.inc:                                          ; preds = %do.end21, %if.then16
  %19 = load i32, i32* %cpu, align 4, !dbg !2863
  %inc = add i32 %19, 1, !dbg !2863
  store i32 %inc, i32* %cpu, align 4, !dbg !2863
  br label %for.cond, !dbg !2863, !llvm.loop !2895

for.end:                                          ; preds = %for.cond
  %20 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !2897
  %call23 = call i32 @acpi_processor_get_power_info(%struct.acpi_processor* %20) #10, !dbg !2898
  %21 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !2899
  %call24 = call i32 @acpi_processor_setup_cpuidle_states(%struct.acpi_processor* %21) #10, !dbg !2900
  store i32 0, i32* %cpu, align 4, !dbg !2901
  br label %for.cond25, !dbg !2901

for.cond25:                                       ; preds = %for.inc58, %for.end
  %22 = load i32, i32* %cpu, align 4, !dbg !2903
  %cmp26 = icmp slt i32 %22, 1, !dbg !2903
  br i1 %cmp26, label %for.body27, label %for.end60, !dbg !2901

for.body27:                                       ; preds = %for.cond25
  %23 = load i32, i32* %cpu, align 4, !dbg !2905
  br label %do.body29, !dbg !2908

do.body29:                                        ; preds = %for.body27
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify30, metadata !2910, metadata !DIExpression()), !dbg !2912
  store i8* null, i8** %__vpp_verify30, align 8, !dbg !2912
  %24 = load i8*, i8** %__vpp_verify30, align 8, !dbg !2912
  br label %do.end31, !dbg !2912

do.end31:                                         ; preds = %do.body29
  store %struct.acpi_processor** @processors, %struct.acpi_processor*** %tmp32, align 8, !dbg !2912
  %25 = load %struct.acpi_processor**, %struct.acpi_processor*** %tmp32, align 8, !dbg !2908
  store %struct.acpi_processor** %25, %struct.acpi_processor*** %tmp28, align 8, !dbg !2905
  %26 = load %struct.acpi_processor**, %struct.acpi_processor*** %tmp28, align 8, !dbg !2905
  %27 = load %struct.acpi_processor*, %struct.acpi_processor** %26, align 8, !dbg !2913
  store %struct.acpi_processor* %27, %struct.acpi_processor** %_pr, align 8, !dbg !2914
  %28 = load %struct.acpi_processor*, %struct.acpi_processor** %_pr, align 8, !dbg !2915
  %tobool33 = icmp ne %struct.acpi_processor* %28, null, !dbg !2915
  br i1 %tobool33, label %lor.lhs.false34, label %if.then41, !dbg !2917

lor.lhs.false34:                                  ; preds = %do.end31
  %29 = load %struct.acpi_processor*, %struct.acpi_processor** %_pr, align 8, !dbg !2918
  %flags35 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %29, i32 0, i32 7, !dbg !2919
  %30 = bitcast %struct.acpi_processor_flags* %flags35 to i16*, !dbg !2920
  %bf.load36 = load i16, i16* %30, align 8, !dbg !2920
  %bf.lshr37 = lshr i16 %bf.load36, 8, !dbg !2920
  %bf.clear38 = and i16 %bf.lshr37, 1, !dbg !2920
  %bf.cast39 = trunc i16 %bf.clear38 to i8, !dbg !2920
  %tobool40 = icmp ne i8 %bf.cast39, 0, !dbg !2918
  br i1 %tobool40, label %if.end42, label %if.then41, !dbg !2921

if.then41:                                        ; preds = %lor.lhs.false34, %do.end31
  br label %for.inc58, !dbg !2922

if.end42:                                         ; preds = %lor.lhs.false34
  %31 = load %struct.acpi_processor*, %struct.acpi_processor** %_pr, align 8, !dbg !2923
  %call43 = call i32 @acpi_processor_get_power_info(%struct.acpi_processor* %31) #10, !dbg !2924
  %32 = load %struct.acpi_processor*, %struct.acpi_processor** %_pr, align 8, !dbg !2925
  %flags44 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %32, i32 0, i32 7, !dbg !2927
  %33 = bitcast %struct.acpi_processor_flags* %flags44 to i16*, !dbg !2928
  %bf.load45 = load i16, i16* %33, align 8, !dbg !2928
  %bf.clear46 = and i16 %bf.load45, 1, !dbg !2928
  %bf.cast47 = trunc i16 %bf.clear46 to i8, !dbg !2928
  %tobool48 = icmp ne i8 %bf.cast47, 0, !dbg !2925
  br i1 %tobool48, label %if.then49, label %if.end57, !dbg !2929

if.then49:                                        ; preds = %if.end42
  %34 = load i32, i32* %cpu, align 4, !dbg !2930
  br label %do.body51, !dbg !2933

do.body51:                                        ; preds = %if.then49
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify52, metadata !2935, metadata !DIExpression()), !dbg !2937
  store i8* null, i8** %__vpp_verify52, align 8, !dbg !2937
  %35 = load i8*, i8** %__vpp_verify52, align 8, !dbg !2937
  br label %do.end53, !dbg !2937

do.end53:                                         ; preds = %do.body51
  store %struct.cpuidle_device** @acpi_cpuidle_device, %struct.cpuidle_device*** %tmp54, align 8, !dbg !2937
  %36 = load %struct.cpuidle_device**, %struct.cpuidle_device*** %tmp54, align 8, !dbg !2933
  store %struct.cpuidle_device** %36, %struct.cpuidle_device*** %tmp50, align 8, !dbg !2930
  %37 = load %struct.cpuidle_device**, %struct.cpuidle_device*** %tmp50, align 8, !dbg !2930
  %38 = load %struct.cpuidle_device*, %struct.cpuidle_device** %37, align 8, !dbg !2938
  store %struct.cpuidle_device* %38, %struct.cpuidle_device** %dev, align 8, !dbg !2939
  %39 = load %struct.acpi_processor*, %struct.acpi_processor** %_pr, align 8, !dbg !2940
  %40 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev, align 8, !dbg !2941
  %call55 = call i32 @acpi_processor_setup_cpuidle_dev(%struct.acpi_processor* %39, %struct.cpuidle_device* %40) #10, !dbg !2942
  %41 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev, align 8, !dbg !2943
  %call56 = call i32 @cpuidle_enable_device(%struct.cpuidle_device* %41) #10, !dbg !2944
  br label %if.end57, !dbg !2945

if.end57:                                         ; preds = %do.end53, %if.end42
  br label %for.inc58, !dbg !2946

for.inc58:                                        ; preds = %if.end57, %if.then41
  %42 = load i32, i32* %cpu, align 4, !dbg !2903
  %inc59 = add i32 %42, 1, !dbg !2903
  store i32 %inc59, i32* %cpu, align 4, !dbg !2903
  br label %for.cond25, !dbg !2903, !llvm.loop !2947

for.end60:                                        ; preds = %for.cond25
  call void @cpuidle_resume_and_unlock() #10, !dbg !2949
  call void @put_online_cpus() #10, !dbg !2950
  br label %if.end61, !dbg !2951

if.end61:                                         ; preds = %for.end60, %land.lhs.true, %if.end3
  store i32 0, i32* %retval, align 4, !dbg !2952
  br label %return, !dbg !2952

return:                                           ; preds = %if.end61, %if.then2, %if.then
  %43 = load i32, i32* %retval, align 4, !dbg !2953
  ret i32 %43, !dbg !2953
}

; Function Attrs: noredzone
declare dso_local %struct.cpuidle_driver* @cpuidle_get_driver() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @get_online_cpus() #0 !dbg !2954 {
entry:
  call void @cpus_read_lock() #10, !dbg !2956
  ret void, !dbg !2957
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_processor_setup_cpuidle_states(%struct.acpi_processor* %pr) #0 !dbg !2958 {
entry:
  %retval = alloca i32, align 4
  %pr.addr = alloca %struct.acpi_processor*, align 8
  %i = alloca i32, align 4
  %drv = alloca %struct.cpuidle_driver*, align 8
  store %struct.acpi_processor* %pr, %struct.acpi_processor** %pr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr.addr, metadata !2959, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2961, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.declare(metadata %struct.cpuidle_driver** %drv, metadata !2963, metadata !DIExpression()), !dbg !2964
  store %struct.cpuidle_driver* @acpi_idle_driver, %struct.cpuidle_driver** %drv, align 8, !dbg !2964
  %0 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !2965
  %flags = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %0, i32 0, i32 7, !dbg !2967
  %1 = bitcast %struct.acpi_processor_flags* %flags to i16*, !dbg !2968
  %bf.load = load i16, i16* %1, align 8, !dbg !2968
  %bf.lshr = lshr i16 %bf.load, 8, !dbg !2968
  %bf.clear = and i16 %bf.lshr, 1, !dbg !2968
  %bf.cast = trunc i16 %bf.clear to i8, !dbg !2968
  %tobool = icmp ne i8 %bf.cast, 0, !dbg !2965
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2969

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !2970
  %flags1 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %2, i32 0, i32 7, !dbg !2971
  %3 = bitcast %struct.acpi_processor_flags* %flags1 to i16*, !dbg !2972
  %bf.load2 = load i16, i16* %3, align 8, !dbg !2972
  %bf.clear3 = and i16 %bf.load2, 1, !dbg !2972
  %bf.cast4 = trunc i16 %bf.clear3 to i8, !dbg !2972
  %tobool5 = icmp ne i8 %bf.cast4, 0, !dbg !2970
  br i1 %tobool5, label %if.end, label %if.then, !dbg !2973

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !2974
  br label %return, !dbg !2974

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv, align 8, !dbg !2975
  %safe_state_index = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %4, i32 0, i32 5, !dbg !2976
  store i32 -1, i32* %safe_state_index, align 4, !dbg !2977
  store i32 1, i32* %i, align 4, !dbg !2978
  br label %for.cond, !dbg !2980

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4, !dbg !2981
  %cmp = icmp slt i32 %5, 10, !dbg !2983
  br i1 %cmp, label %for.body, label %for.end, !dbg !2984

for.body:                                         ; preds = %for.cond
  %6 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv, align 8, !dbg !2985
  %states = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %6, i32 0, i32 3, !dbg !2987
  %7 = load i32, i32* %i, align 4, !dbg !2988
  %idxprom = sext i32 %7 to i64, !dbg !2985
  %arrayidx = getelementptr [10 x %struct.cpuidle_state], [10 x %struct.cpuidle_state]* %states, i64 0, i64 %idxprom, !dbg !2985
  %name = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %arrayidx, i32 0, i32 0, !dbg !2989
  %arrayidx6 = getelementptr [16 x i8], [16 x i8]* %name, i64 0, i64 0, !dbg !2985
  store i8 0, i8* %arrayidx6, align 8, !dbg !2990
  %8 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv, align 8, !dbg !2991
  %states7 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %8, i32 0, i32 3, !dbg !2992
  %9 = load i32, i32* %i, align 4, !dbg !2993
  %idxprom8 = sext i32 %9 to i64, !dbg !2991
  %arrayidx9 = getelementptr [10 x %struct.cpuidle_state], [10 x %struct.cpuidle_state]* %states7, i64 0, i64 %idxprom8, !dbg !2991
  %desc = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %arrayidx9, i32 0, i32 1, !dbg !2994
  %arrayidx10 = getelementptr [32 x i8], [32 x i8]* %desc, i64 0, i64 0, !dbg !2991
  store i8 0, i8* %arrayidx10, align 8, !dbg !2995
  br label %for.inc, !dbg !2996

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !dbg !2997
  %inc = add i32 %10, 1, !dbg !2997
  store i32 %inc, i32* %i, align 4, !dbg !2997
  br label %for.cond, !dbg !2998, !llvm.loop !2999

for.end:                                          ; preds = %for.cond
  %11 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3001
  %flags11 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %11, i32 0, i32 7, !dbg !3003
  %12 = bitcast %struct.acpi_processor_flags* %flags11 to i16*, !dbg !3004
  %bf.load12 = load i16, i16* %12, align 8, !dbg !3004
  %bf.lshr13 = lshr i16 %bf.load12, 7, !dbg !3004
  %bf.clear14 = and i16 %bf.lshr13, 1, !dbg !3004
  %bf.cast15 = trunc i16 %bf.clear14 to i8, !dbg !3004
  %tobool16 = icmp ne i8 %bf.cast15, 0, !dbg !3001
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !3005

if.then17:                                        ; preds = %for.end
  %13 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3006
  %call = call i32 @acpi_processor_setup_lpi_states(%struct.acpi_processor* %13) #10, !dbg !3007
  store i32 %call, i32* %retval, align 4, !dbg !3008
  br label %return, !dbg !3008

if.end18:                                         ; preds = %for.end
  %14 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3009
  %call19 = call i32 @acpi_processor_setup_cstates(%struct.acpi_processor* %14) #10, !dbg !3010
  store i32 %call19, i32* %retval, align 4, !dbg !3011
  br label %return, !dbg !3011

return:                                           ; preds = %if.end18, %if.then17, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !3012
  ret i32 %15, !dbg !3012
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @put_online_cpus() #0 !dbg !3013 {
entry:
  call void @cpus_read_unlock() #10, !dbg !3014
  ret void, !dbg !3015
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_processor_power_init(%struct.acpi_processor* %pr) #0 !dbg !3016 {
entry:
  %retval = alloca i32, align 4
  %pr.addr = alloca %struct.acpi_processor*, align 8
  %retval1 = alloca i32, align 4
  %dev = alloca %struct.cpuidle_device*, align 8
  %tmp = alloca i32, align 4
  %tmp23 = alloca %struct.cpuidle_device**, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp24 = alloca %struct.cpuidle_device**, align 8
  store %struct.acpi_processor* %pr, %struct.acpi_processor** %pr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr.addr, metadata !3017, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !3019, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %dev, metadata !3021, metadata !DIExpression()), !dbg !3022
  %call = call i32 @disabled_by_idle_boot_param() #10, !dbg !3023
  %tobool = icmp ne i32 %call, 0, !dbg !3023
  br i1 %tobool, label %if.then, label %if.end, !dbg !3025

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3026
  br label %return, !dbg !3026

if.end:                                           ; preds = %entry
  call void @acpi_processor_cstate_first_run_checks() #10, !dbg !3027
  %0 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3028
  %call2 = call i32 @acpi_processor_get_power_info(%struct.acpi_processor* %0) #10, !dbg !3030
  %tobool3 = icmp ne i32 %call2, 0, !dbg !3030
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !3031

if.then4:                                         ; preds = %if.end
  %1 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3032
  %flags = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %1, i32 0, i32 7, !dbg !3033
  %2 = bitcast %struct.acpi_processor_flags* %flags to i16*, !dbg !3034
  %bf.load = load i16, i16* %2, align 8, !dbg !3035
  %bf.clear = and i16 %bf.load, -257, !dbg !3035
  %bf.set = or i16 %bf.clear, 256, !dbg !3035
  store i16 %bf.set, i16* %2, align 8, !dbg !3035
  br label %if.end5, !dbg !3032

if.end5:                                          ; preds = %if.then4, %if.end
  %3 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3036
  %flags6 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %3, i32 0, i32 7, !dbg !3038
  %4 = bitcast %struct.acpi_processor_flags* %flags6 to i16*, !dbg !3039
  %bf.load7 = load i16, i16* %4, align 8, !dbg !3039
  %bf.clear8 = and i16 %bf.load7, 1, !dbg !3039
  %bf.cast = trunc i16 %bf.clear8 to i8, !dbg !3039
  %tobool9 = icmp ne i8 %bf.cast, 0, !dbg !3036
  br i1 %tobool9, label %if.then10, label %if.end32, !dbg !3040

if.then10:                                        ; preds = %if.end5
  %5 = load i32, i32* @acpi_processor_registered, align 4, !dbg !3041
  %tobool11 = icmp ne i32 %5, 0, !dbg !3041
  br i1 %tobool11, label %if.end18, label %if.then12, !dbg !3044

if.then12:                                        ; preds = %if.then10
  %6 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3045
  %call13 = call i32 @acpi_processor_setup_cpuidle_states(%struct.acpi_processor* %6) #10, !dbg !3047
  %call14 = call i32 @cpuidle_register_driver(%struct.cpuidle_driver* @acpi_idle_driver) #10, !dbg !3048
  store i32 %call14, i32* %retval1, align 4, !dbg !3049
  %7 = load i32, i32* %retval1, align 4, !dbg !3050
  %tobool15 = icmp ne i32 %7, 0, !dbg !3050
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !3052

if.then16:                                        ; preds = %if.then12
  %8 = load i32, i32* %retval1, align 4, !dbg !3053
  store i32 %8, i32* %retval, align 4, !dbg !3054
  br label %return, !dbg !3054

if.end17:                                         ; preds = %if.then12
  store i32 0, i32* %tmp, align 4, !dbg !3055
  %9 = load i32, i32* %tmp, align 4, !dbg !3058
  br label %if.end18, !dbg !3059

if.end18:                                         ; preds = %if.end17, %if.then10
  %call19 = call i8* @kzalloc(i64 800, i32 3264) #10, !dbg !3060
  %10 = bitcast i8* %call19 to %struct.cpuidle_device*, !dbg !3060
  store %struct.cpuidle_device* %10, %struct.cpuidle_device** %dev, align 8, !dbg !3061
  %11 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev, align 8, !dbg !3062
  %tobool20 = icmp ne %struct.cpuidle_device* %11, null, !dbg !3062
  br i1 %tobool20, label %if.end22, label %if.then21, !dbg !3064

if.then21:                                        ; preds = %if.end18
  store i32 -12, i32* %retval, align 4, !dbg !3065
  br label %return, !dbg !3065

if.end22:                                         ; preds = %if.end18
  %12 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev, align 8, !dbg !3066
  %13 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3067
  %id = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %13, i32 0, i32 3, !dbg !3067
  %14 = load i32, i32* %id, align 8, !dbg !3067
  br label %do.body, !dbg !3069

do.body:                                          ; preds = %if.end22
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !3071, metadata !DIExpression()), !dbg !3073
  store i8* null, i8** %__vpp_verify, align 8, !dbg !3073
  %15 = load i8*, i8** %__vpp_verify, align 8, !dbg !3073
  br label %do.end, !dbg !3073

do.end:                                           ; preds = %do.body
  store %struct.cpuidle_device** @acpi_cpuidle_device, %struct.cpuidle_device*** %tmp24, align 8, !dbg !3073
  %16 = load %struct.cpuidle_device**, %struct.cpuidle_device*** %tmp24, align 8, !dbg !3069
  store %struct.cpuidle_device** %16, %struct.cpuidle_device*** %tmp23, align 8, !dbg !3067
  %17 = load %struct.cpuidle_device**, %struct.cpuidle_device*** %tmp23, align 8, !dbg !3067
  store %struct.cpuidle_device* %12, %struct.cpuidle_device** %17, align 8, !dbg !3074
  %18 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3075
  %19 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev, align 8, !dbg !3076
  %call25 = call i32 @acpi_processor_setup_cpuidle_dev(%struct.acpi_processor* %18, %struct.cpuidle_device* %19) #10, !dbg !3077
  %20 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev, align 8, !dbg !3078
  %call26 = call i32 @cpuidle_register_device(%struct.cpuidle_device* %20) #10, !dbg !3079
  store i32 %call26, i32* %retval1, align 4, !dbg !3080
  %21 = load i32, i32* %retval1, align 4, !dbg !3081
  %tobool27 = icmp ne i32 %21, 0, !dbg !3081
  br i1 %tobool27, label %if.then28, label %if.end31, !dbg !3083

if.then28:                                        ; preds = %do.end
  %22 = load i32, i32* @acpi_processor_registered, align 4, !dbg !3084
  %cmp = icmp eq i32 %22, 0, !dbg !3087
  br i1 %cmp, label %if.then29, label %if.end30, !dbg !3088

if.then29:                                        ; preds = %if.then28
  call void @cpuidle_unregister_driver(%struct.cpuidle_driver* @acpi_idle_driver) #10, !dbg !3089
  br label %if.end30, !dbg !3089

if.end30:                                         ; preds = %if.then29, %if.then28
  %23 = load i32, i32* %retval1, align 4, !dbg !3090
  store i32 %23, i32* %retval, align 4, !dbg !3091
  br label %return, !dbg !3091

if.end31:                                         ; preds = %do.end
  %24 = load i32, i32* @acpi_processor_registered, align 4, !dbg !3092
  %inc = add i32 %24, 1, !dbg !3092
  store i32 %inc, i32* @acpi_processor_registered, align 4, !dbg !3092
  br label %if.end32, !dbg !3093

if.end32:                                         ; preds = %if.end31, %if.end5
  store i32 0, i32* %retval, align 4, !dbg !3094
  br label %return, !dbg !3094

return:                                           ; preds = %if.end32, %if.end30, %if.then21, %if.then16, %if.then
  %25 = load i32, i32* %retval, align 4, !dbg !3095
  ret i32 %25, !dbg !3095
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_processor_cstate_first_run_checks() #0 !dbg !2668 {
entry:
  %0 = load i32, i32* @acpi_processor_cstate_first_run_checks.first_run, align 4, !dbg !3096
  %tobool = icmp ne i32 %0, 0, !dbg !3096
  br i1 %tobool, label %if.then, label %if.end, !dbg !3098

if.then:                                          ; preds = %entry
  br label %return, !dbg !3099

if.end:                                           ; preds = %entry
  %call = call i32 @dmi_check_system(%struct.dmi_system_id* getelementptr inbounds ([4 x %struct.dmi_system_id], [4 x %struct.dmi_system_id]* bitcast ([4 x { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* }]* @processor_power_dmi_table to [4 x %struct.dmi_system_id]*), i64 0, i64 0)) #10, !dbg !3100
  %1 = load i32, i32* @max_cstate, align 4, !dbg !3101
  %call1 = call i32 @acpi_processor_cstate_check(i32 %1) #10, !dbg !3102
  store i32 %call1, i32* @max_cstate, align 4, !dbg !3103
  %2 = load i32, i32* @max_cstate, align 4, !dbg !3104
  %cmp = icmp ult i32 %2, 3, !dbg !3106
  br i1 %cmp, label %if.then2, label %if.end4, !dbg !3107

if.then2:                                         ; preds = %if.end
  %3 = load i32, i32* @max_cstate, align 4, !dbg !3108
  %call3 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.14, i64 0, i64 0), i32 %3) #11, !dbg !3108
  br label %if.end4, !dbg !3108

if.end4:                                          ; preds = %if.then2, %if.end
  %4 = load i32, i32* @acpi_processor_cstate_first_run_checks.first_run, align 4, !dbg !3109
  %inc = add i32 %4, 1, !dbg !3109
  store i32 %inc, i32* @acpi_processor_cstate_first_run_checks.first_run, align 4, !dbg !3109
  %5 = load i32, i32* @nocst, align 4, !dbg !3110
  %tobool5 = icmp ne i32 %5, 0, !dbg !3110
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !3112

if.then6:                                         ; preds = %if.end4
  br label %return, !dbg !3113

if.end7:                                          ; preds = %if.end4
  %call8 = call zeroext i1 @acpi_processor_claim_cst_control() #10, !dbg !3114
  br label %return, !dbg !3115

return:                                           ; preds = %if.end7, %if.then6, %if.then
  ret void, !dbg !3115
}

; Function Attrs: noredzone
declare dso_local i32 @cpuidle_register_driver(%struct.cpuidle_driver*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !3116 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3119, metadata !DIExpression()), !dbg !3123
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3129, metadata !DIExpression()), !dbg !3130
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3131, metadata !DIExpression()), !dbg !3132
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3133, metadata !DIExpression()), !dbg !3134
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3135, metadata !DIExpression()), !dbg !3139
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3141, metadata !DIExpression()), !dbg !3145
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3147, metadata !DIExpression()), !dbg !3151
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !3156, metadata !DIExpression()), !dbg !3157
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !3158, metadata !DIExpression()), !dbg !3159
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3160, metadata !DIExpression()), !dbg !3161
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !3162, metadata !DIExpression()), !dbg !3163
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !3164, metadata !DIExpression()), !dbg !3165
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3166, metadata !DIExpression()), !dbg !3167
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !3168, metadata !DIExpression()), !dbg !3169
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3170, metadata !DIExpression()), !dbg !3171
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3172, metadata !DIExpression()), !dbg !3173
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3174, metadata !DIExpression()), !dbg !3175
  %0 = load i64, i64* %size.addr, align 8, !dbg !3176
  %1 = load i32, i32* %flags.addr, align 4, !dbg !3177
  %or = or i32 %1, 256, !dbg !3178
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !3179
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #9, !dbg !3180
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !3181

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !3182
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !3183
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !3184

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !3185
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !3186
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !3187
  %call.i.i = call i32 @get_order(i64 %7) #12, !dbg !3188
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !3165
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !3189
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !3190
  %10 = load i32, i32* %order.i.i, align 4, !dbg !3191
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !3192
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !3193
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !3194
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #13, !dbg !3195
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !3195
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !3195
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !3195
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !3195
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !3196
  br label %kmalloc.exit, !dbg !3196

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !3197
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3198
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !3198
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !3200

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !3201
  br label %kmalloc_index.exit.i, !dbg !3201

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3202
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !3204
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !3205

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3206
  br label %kmalloc_index.exit.i, !dbg !3206

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3207
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !3209
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !3210

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3211
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !3212
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !3213

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !3214
  br label %kmalloc_index.exit.i, !dbg !3214

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3215
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !3217
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !3218

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3219
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !3220
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !3221

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !3222
  br label %kmalloc_index.exit.i, !dbg !3222

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3223
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !3225
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !3226

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3227
  br label %kmalloc_index.exit.i, !dbg !3227

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3228
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !3230
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !3231

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !3232
  br label %kmalloc_index.exit.i, !dbg !3232

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3233
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !3235
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !3236

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !3237
  br label %kmalloc_index.exit.i, !dbg !3237

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3238
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !3240
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !3241

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !3242
  br label %kmalloc_index.exit.i, !dbg !3242

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3243
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !3245
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !3246

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !3247
  br label %kmalloc_index.exit.i, !dbg !3247

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3248
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !3250
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !3251

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !3252
  br label %kmalloc_index.exit.i, !dbg !3252

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3253
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !3255
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !3256

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !3257
  br label %kmalloc_index.exit.i, !dbg !3257

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3258
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !3260
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !3261

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !3262
  br label %kmalloc_index.exit.i, !dbg !3262

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3263
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !3265
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !3266

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !3267
  br label %kmalloc_index.exit.i, !dbg !3267

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3268
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !3270
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !3271

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !3272
  br label %kmalloc_index.exit.i, !dbg !3272

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3273
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !3275
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !3276

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !3277
  br label %kmalloc_index.exit.i, !dbg !3277

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3278
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !3280
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !3281

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !3282
  br label %kmalloc_index.exit.i, !dbg !3282

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3283
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !3285
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !3286

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !3287
  br label %kmalloc_index.exit.i, !dbg !3287

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3288
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !3290
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !3291

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !3292
  br label %kmalloc_index.exit.i, !dbg !3292

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3293
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !3295
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !3296

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !3297
  br label %kmalloc_index.exit.i, !dbg !3297

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3298
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !3300
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !3301

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !3302
  br label %kmalloc_index.exit.i, !dbg !3302

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3303
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !3305
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !3306

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !3307
  br label %kmalloc_index.exit.i, !dbg !3307

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3308
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !3310
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !3311

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !3312
  br label %kmalloc_index.exit.i, !dbg !3312

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3313
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !3315
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !3316

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !3317
  br label %kmalloc_index.exit.i, !dbg !3317

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3318
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !3320
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !3321

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !3322
  br label %kmalloc_index.exit.i, !dbg !3322

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3323
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !3325
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !3326

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !3327
  br label %kmalloc_index.exit.i, !dbg !3327

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3328
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !3330
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !3331

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !3332
  br label %kmalloc_index.exit.i, !dbg !3332

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3333
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !3335
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !3336

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !3337
  br label %kmalloc_index.exit.i, !dbg !3337

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3338
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !3340
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !3341

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !3342
  br label %kmalloc_index.exit.i, !dbg !3342

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !3343, !srcloc !3346
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 106) #9, !dbg !3347, !srcloc !3350
  unreachable, !dbg !3351

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !3352
  store i32 %45, i32* %index.i, align 4, !dbg !3353
  %46 = load i32, i32* %index.i, align 4, !dbg !3354
  %tobool.i = icmp ne i32 %46, 0, !dbg !3354
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !3356

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !3357
  br label %kmalloc.exit, !dbg !3357

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !3358
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3359
  %and.i.i = and i32 %48, 17, !dbg !3359
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !3359
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !3359
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !3359
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !3359
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !3361

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !3362
  br label %kmalloc_type.exit.i, !dbg !3362

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3363
  %and2.i.i = and i32 %49, 1, !dbg !3364
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !3363
  %50 = zext i1 %tobool3.i.i to i64, !dbg !3363
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !3363
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !3365
  br label %kmalloc_type.exit.i, !dbg !3365

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !3366
  %idxprom.i = zext i32 %51 to i64, !dbg !3367
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !3367
  %52 = load i32, i32* %index.i, align 4, !dbg !3368
  %idxprom6.i = zext i32 %52 to i64, !dbg !3367
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !3367
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !3367
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !3369
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !3370
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3371
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3372
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #13, !dbg !3373
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !3373
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !3373
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !3373
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !3373
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !3134
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3374
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !3375
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !3376
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3377
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #13, !dbg !3378
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !3379
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !3380
  store i8* %62, i8** %retval.i, align 8, !dbg !3381
  br label %kmalloc.exit, !dbg !3381

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !3382
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !3383
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #13, !dbg !3384
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !3384
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !3384
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !3384
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !3384
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !3385
  br label %kmalloc.exit, !dbg !3385

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !3386
  ret i8* %65, !dbg !3387
}

; Function Attrs: noredzone
declare dso_local i32 @cpuidle_register_device(%struct.cpuidle_device*) #2

; Function Attrs: noredzone
declare dso_local void @cpuidle_unregister_driver(%struct.cpuidle_driver*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_processor_power_exit(%struct.acpi_processor* %pr) #0 !dbg !3388 {
entry:
  %retval = alloca i32, align 4
  %pr.addr = alloca %struct.acpi_processor*, align 8
  %dev = alloca %struct.cpuidle_device*, align 8
  %tmp = alloca %struct.cpuidle_device**, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp1 = alloca %struct.cpuidle_device**, align 8
  store %struct.acpi_processor* %pr, %struct.acpi_processor** %pr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr.addr, metadata !3389, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %dev, metadata !3391, metadata !DIExpression()), !dbg !3392
  %0 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3393
  %id = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %0, i32 0, i32 3, !dbg !3393
  %1 = load i32, i32* %id, align 8, !dbg !3393
  br label %do.body, !dbg !3395

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !3397, metadata !DIExpression()), !dbg !3399
  store i8* null, i8** %__vpp_verify, align 8, !dbg !3399
  %2 = load i8*, i8** %__vpp_verify, align 8, !dbg !3399
  br label %do.end, !dbg !3399

do.end:                                           ; preds = %do.body
  store %struct.cpuidle_device** @acpi_cpuidle_device, %struct.cpuidle_device*** %tmp1, align 8, !dbg !3399
  %3 = load %struct.cpuidle_device**, %struct.cpuidle_device*** %tmp1, align 8, !dbg !3395
  store %struct.cpuidle_device** %3, %struct.cpuidle_device*** %tmp, align 8, !dbg !3393
  %4 = load %struct.cpuidle_device**, %struct.cpuidle_device*** %tmp, align 8, !dbg !3393
  %5 = load %struct.cpuidle_device*, %struct.cpuidle_device** %4, align 8, !dbg !3400
  store %struct.cpuidle_device* %5, %struct.cpuidle_device** %dev, align 8, !dbg !3392
  %call = call i32 @disabled_by_idle_boot_param() #10, !dbg !3401
  %tobool = icmp ne i32 %call, 0, !dbg !3401
  br i1 %tobool, label %if.then, label %if.end, !dbg !3403

if.then:                                          ; preds = %do.end
  store i32 0, i32* %retval, align 4, !dbg !3404
  br label %return, !dbg !3404

if.end:                                           ; preds = %do.end
  %6 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3405
  %flags = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %6, i32 0, i32 7, !dbg !3407
  %7 = bitcast %struct.acpi_processor_flags* %flags to i16*, !dbg !3408
  %bf.load = load i16, i16* %7, align 8, !dbg !3408
  %bf.clear = and i16 %bf.load, 1, !dbg !3408
  %bf.cast = trunc i16 %bf.clear to i8, !dbg !3408
  %tobool2 = icmp ne i8 %bf.cast, 0, !dbg !3405
  br i1 %tobool2, label %if.then3, label %if.end6, !dbg !3409

if.then3:                                         ; preds = %if.end
  %8 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev, align 8, !dbg !3410
  call void @cpuidle_unregister_device(%struct.cpuidle_device* %8) #10, !dbg !3412
  %9 = load i32, i32* @acpi_processor_registered, align 4, !dbg !3413
  %dec = add i32 %9, -1, !dbg !3413
  store i32 %dec, i32* @acpi_processor_registered, align 4, !dbg !3413
  %10 = load i32, i32* @acpi_processor_registered, align 4, !dbg !3414
  %cmp = icmp eq i32 %10, 0, !dbg !3416
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !3417

if.then4:                                         ; preds = %if.then3
  call void @cpuidle_unregister_driver(%struct.cpuidle_driver* @acpi_idle_driver) #10, !dbg !3418
  br label %if.end5, !dbg !3418

if.end5:                                          ; preds = %if.then4, %if.then3
  br label %if.end6, !dbg !3419

if.end6:                                          ; preds = %if.end5, %if.end
  %11 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3420
  %flags7 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %11, i32 0, i32 7, !dbg !3421
  %12 = bitcast %struct.acpi_processor_flags* %flags7 to i16*, !dbg !3422
  %bf.load8 = load i16, i16* %12, align 8, !dbg !3423
  %bf.clear9 = and i16 %bf.load8, -257, !dbg !3423
  store i16 %bf.clear9, i16* %12, align 8, !dbg !3423
  store i32 0, i32* %retval, align 4, !dbg !3424
  br label %return, !dbg !3424

return:                                           ; preds = %if.end6, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !3425
  ret i32 %13, !dbg !3425
}

; Function Attrs: noredzone
declare dso_local void @cpuidle_unregister_device(%struct.cpuidle_device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_processor_get_lpi_info(%struct.acpi_processor* %pr) #0 !dbg !3426 {
entry:
  %retval = alloca i32, align 4
  %pr.addr = alloca %struct.acpi_processor*, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %status = alloca i32, align 4
  %handle = alloca i8*, align 8
  %pr_ahandle = alloca i8*, align 8
  %d = alloca %struct.acpi_device*, align 8
  %info = alloca [2 x %struct.acpi_lpi_states_array], align 16
  %tmp = alloca %struct.acpi_lpi_states_array*, align 8
  %prev = alloca %struct.acpi_lpi_states_array*, align 8
  %curr = alloca %struct.acpi_lpi_states_array*, align 8
  store %struct.acpi_processor* %pr, %struct.acpi_processor** %pr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr.addr, metadata !3427, metadata !DIExpression()), !dbg !3428
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3429, metadata !DIExpression()), !dbg !3430
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3431, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3433, metadata !DIExpression()), !dbg !3435
  call void @llvm.dbg.declare(metadata i8** %handle, metadata !3436, metadata !DIExpression()), !dbg !3437
  %0 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3438
  %handle1 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %0, i32 0, i32 0, !dbg !3439
  %1 = load i8*, i8** %handle1, align 8, !dbg !3439
  store i8* %1, i8** %handle, align 8, !dbg !3437
  call void @llvm.dbg.declare(metadata i8** %pr_ahandle, metadata !3440, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %d, metadata !3442, metadata !DIExpression()), !dbg !3722
  store %struct.acpi_device* null, %struct.acpi_device** %d, align 8, !dbg !3722
  call void @llvm.dbg.declare(metadata [2 x %struct.acpi_lpi_states_array]* %info, metadata !3723, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.declare(metadata %struct.acpi_lpi_states_array** %tmp, metadata !3733, metadata !DIExpression()), !dbg !3735
  call void @llvm.dbg.declare(metadata %struct.acpi_lpi_states_array** %prev, metadata !3736, metadata !DIExpression()), !dbg !3737
  call void @llvm.dbg.declare(metadata %struct.acpi_lpi_states_array** %curr, metadata !3738, metadata !DIExpression()), !dbg !3739
  %2 = load i8, i8* @osc_pc_lpi_support_confirmed, align 1, !dbg !3740
  %tobool = trunc i8 %2 to i1, !dbg !3740
  br i1 %tobool, label %if.end, label %if.then, !dbg !3742

if.then:                                          ; preds = %entry
  store i32 -95, i32* %retval, align 4, !dbg !3743
  br label %return, !dbg !3743

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %handle, align 8, !dbg !3744
  %call = call zeroext i1 @acpi_has_method(i8* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #10, !dbg !3746
  br i1 %call, label %if.end3, label %if.then2, !dbg !3747

if.then2:                                         ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !3748
  br label %return, !dbg !3748

if.end3:                                          ; preds = %if.end
  store i32 0, i32* @flat_state_cnt, align 4, !dbg !3749
  %arrayidx = getelementptr [2 x %struct.acpi_lpi_states_array], [2 x %struct.acpi_lpi_states_array]* %info, i64 0, i64 0, !dbg !3750
  store %struct.acpi_lpi_states_array* %arrayidx, %struct.acpi_lpi_states_array** %prev, align 8, !dbg !3751
  %arrayidx4 = getelementptr [2 x %struct.acpi_lpi_states_array], [2 x %struct.acpi_lpi_states_array]* %info, i64 0, i64 1, !dbg !3752
  store %struct.acpi_lpi_states_array* %arrayidx4, %struct.acpi_lpi_states_array** %curr, align 8, !dbg !3753
  %4 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3754
  %handle5 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %4, i32 0, i32 0, !dbg !3755
  %5 = load i8*, i8** %handle5, align 8, !dbg !3755
  store i8* %5, i8** %handle, align 8, !dbg !3756
  %6 = load i8*, i8** %handle, align 8, !dbg !3757
  %7 = load %struct.acpi_lpi_states_array*, %struct.acpi_lpi_states_array** %prev, align 8, !dbg !3758
  %call6 = call i32 @acpi_processor_evaluate_lpi(i8* %6, %struct.acpi_lpi_states_array* %7) #10, !dbg !3759
  store i32 %call6, i32* %ret, align 4, !dbg !3760
  %8 = load i32, i32* %ret, align 4, !dbg !3761
  %tobool7 = icmp ne i32 %8, 0, !dbg !3761
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !3763

if.then8:                                         ; preds = %if.end3
  %9 = load i32, i32* %ret, align 4, !dbg !3764
  store i32 %9, i32* %retval, align 4, !dbg !3765
  br label %return, !dbg !3765

if.end9:                                          ; preds = %if.end3
  %10 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3766
  %11 = load %struct.acpi_lpi_states_array*, %struct.acpi_lpi_states_array** %prev, align 8, !dbg !3767
  %call10 = call i32 @flatten_lpi_states(%struct.acpi_processor* %10, %struct.acpi_lpi_states_array* %11, %struct.acpi_lpi_states_array* null) #10, !dbg !3768
  %12 = load i8*, i8** %handle, align 8, !dbg !3769
  %call11 = call i32 @acpi_get_parent(i8* %12, i8** %pr_ahandle) #10, !dbg !3770
  store i32 %call11, i32* %status, align 4, !dbg !3771
  br label %while.cond, !dbg !3772

while.cond:                                       ; preds = %if.end25, %if.end9
  %13 = load i32, i32* %status, align 4, !dbg !3773
  %tobool12 = icmp ne i32 %13, 0, !dbg !3773
  %lnot = xor i1 %tobool12, true, !dbg !3773
  br i1 %lnot, label %while.body, label %while.end, !dbg !3772

while.body:                                       ; preds = %while.cond
  %14 = load i8*, i8** %pr_ahandle, align 8, !dbg !3774
  %call13 = call i32 @acpi_bus_get_device(i8* %14, %struct.acpi_device** %d) #10, !dbg !3776
  %15 = load i8*, i8** %pr_ahandle, align 8, !dbg !3777
  store i8* %15, i8** %handle, align 8, !dbg !3778
  %16 = load %struct.acpi_device*, %struct.acpi_device** %d, align 8, !dbg !3779
  %call14 = call i8* @acpi_device_hid(%struct.acpi_device* %16) #10, !dbg !3781
  %call15 = call i32 @strcmp(i8* %call14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !3782
  %tobool16 = icmp ne i32 %call15, 0, !dbg !3782
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !3783

if.then17:                                        ; preds = %while.body
  br label %while.end, !dbg !3784

if.end18:                                         ; preds = %while.body
  %17 = load i8*, i8** %handle, align 8, !dbg !3785
  %call19 = call zeroext i1 @acpi_has_method(i8* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #10, !dbg !3787
  br i1 %call19, label %if.end21, label %if.then20, !dbg !3788

if.then20:                                        ; preds = %if.end18
  br label %while.end, !dbg !3789

if.end21:                                         ; preds = %if.end18
  %18 = load i8*, i8** %handle, align 8, !dbg !3790
  %19 = load %struct.acpi_lpi_states_array*, %struct.acpi_lpi_states_array** %curr, align 8, !dbg !3791
  %call22 = call i32 @acpi_processor_evaluate_lpi(i8* %18, %struct.acpi_lpi_states_array* %19) #10, !dbg !3792
  store i32 %call22, i32* %ret, align 4, !dbg !3793
  %20 = load i32, i32* %ret, align 4, !dbg !3794
  %tobool23 = icmp ne i32 %20, 0, !dbg !3794
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !3796

if.then24:                                        ; preds = %if.end21
  br label %while.end, !dbg !3797

if.end25:                                         ; preds = %if.end21
  %21 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3798
  %22 = load %struct.acpi_lpi_states_array*, %struct.acpi_lpi_states_array** %curr, align 8, !dbg !3799
  %23 = load %struct.acpi_lpi_states_array*, %struct.acpi_lpi_states_array** %prev, align 8, !dbg !3800
  %call26 = call i32 @flatten_lpi_states(%struct.acpi_processor* %21, %struct.acpi_lpi_states_array* %22, %struct.acpi_lpi_states_array* %23) #10, !dbg !3801
  %24 = load %struct.acpi_lpi_states_array*, %struct.acpi_lpi_states_array** %prev, align 8, !dbg !3802
  store %struct.acpi_lpi_states_array* %24, %struct.acpi_lpi_states_array** %tmp, align 8, !dbg !3803
  %25 = load %struct.acpi_lpi_states_array*, %struct.acpi_lpi_states_array** %curr, align 8, !dbg !3804
  store %struct.acpi_lpi_states_array* %25, %struct.acpi_lpi_states_array** %prev, align 8, !dbg !3805
  %26 = load %struct.acpi_lpi_states_array*, %struct.acpi_lpi_states_array** %tmp, align 8, !dbg !3806
  store %struct.acpi_lpi_states_array* %26, %struct.acpi_lpi_states_array** %curr, align 8, !dbg !3807
  %27 = load i8*, i8** %handle, align 8, !dbg !3808
  %call27 = call i32 @acpi_get_parent(i8* %27, i8** %pr_ahandle) #10, !dbg !3809
  store i32 %call27, i32* %status, align 4, !dbg !3810
  br label %while.cond, !dbg !3772, !llvm.loop !3811

while.end:                                        ; preds = %if.then24, %if.then20, %if.then17, %while.cond
  %28 = load i32, i32* @flat_state_cnt, align 4, !dbg !3813
  %29 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3814
  %power = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %29, i32 0, i32 8, !dbg !3815
  %count = getelementptr inbounds %struct.acpi_processor_power, %struct.acpi_processor_power* %power, i32 0, i32 0, !dbg !3816
  store i32 %28, i32* %count, align 8, !dbg !3817
  store i32 0, i32* %i, align 4, !dbg !3818
  br label %for.cond, !dbg !3820

for.cond:                                         ; preds = %for.inc, %while.end
  %30 = load i32, i32* %i, align 4, !dbg !3821
  %31 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3823
  %power28 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %31, i32 0, i32 8, !dbg !3824
  %count29 = getelementptr inbounds %struct.acpi_processor_power, %struct.acpi_processor_power* %power28, i32 0, i32 0, !dbg !3825
  %32 = load i32, i32* %count29, align 8, !dbg !3825
  %cmp = icmp slt i32 %30, %32, !dbg !3826
  br i1 %cmp, label %for.body, label %for.end, !dbg !3827

for.body:                                         ; preds = %for.cond
  %33 = load i32, i32* %i, align 4, !dbg !3828
  %conv = trunc i32 %33 to i8, !dbg !3828
  %34 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3829
  %power30 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %34, i32 0, i32 8, !dbg !3830
  %35 = getelementptr inbounds %struct.acpi_processor_power, %struct.acpi_processor_power* %power30, i32 0, i32 1, !dbg !3831
  %lpi_states = bitcast %union.anon.0* %35 to [8 x %struct.acpi_lpi_state]*, !dbg !3831
  %36 = load i32, i32* %i, align 4, !dbg !3832
  %idxprom = sext i32 %36 to i64, !dbg !3829
  %arrayidx31 = getelementptr [8 x %struct.acpi_lpi_state], [8 x %struct.acpi_lpi_state]* %lpi_states, i64 0, i64 %idxprom, !dbg !3829
  %index = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %arrayidx31, i32 0, i32 7, !dbg !3833
  store i8 %conv, i8* %index, align 8, !dbg !3834
  br label %for.inc, !dbg !3829

for.inc:                                          ; preds = %for.body
  %37 = load i32, i32* %i, align 4, !dbg !3835
  %inc = add i32 %37, 1, !dbg !3835
  store i32 %inc, i32* %i, align 4, !dbg !3835
  br label %for.cond, !dbg !3836, !llvm.loop !3837

for.end:                                          ; preds = %for.cond
  %38 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3839
  %flags = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %38, i32 0, i32 7, !dbg !3840
  %39 = bitcast %struct.acpi_processor_flags* %flags to i16*, !dbg !3841
  %bf.load = load i16, i16* %39, align 8, !dbg !3842
  %bf.clear = and i16 %bf.load, -129, !dbg !3842
  %bf.set = or i16 %bf.clear, 128, !dbg !3842
  store i16 %bf.set, i16* %39, align 8, !dbg !3842
  %40 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3843
  %flags32 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %40, i32 0, i32 7, !dbg !3844
  %41 = bitcast %struct.acpi_processor_flags* %flags32 to i16*, !dbg !3845
  %bf.load33 = load i16, i16* %41, align 8, !dbg !3846
  %bf.clear34 = and i16 %bf.load33, -2, !dbg !3846
  %bf.set35 = or i16 %bf.clear34, 1, !dbg !3846
  store i16 %bf.set35, i16* %41, align 8, !dbg !3846
  store i32 0, i32* %retval, align 4, !dbg !3847
  br label %return, !dbg !3847

return:                                           ; preds = %for.end, %if.then8, %if.then2, %if.then
  %42 = load i32, i32* %retval, align 4, !dbg !3848
  ret i32 %42, !dbg !3848
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_processor_get_cstate_info(%struct.acpi_processor* %pr) #0 !dbg !3849 {
entry:
  %retval = alloca i32, align 4
  %pr.addr = alloca %struct.acpi_processor*, align 8
  %i = alloca i32, align 4
  %result = alloca i32, align 4
  store %struct.acpi_processor* %pr, %struct.acpi_processor** %pr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr.addr, metadata !3850, metadata !DIExpression()), !dbg !3851
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3852, metadata !DIExpression()), !dbg !3853
  call void @llvm.dbg.declare(metadata i32* %result, metadata !3854, metadata !DIExpression()), !dbg !3855
  %0 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3856
  %power = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %0, i32 0, i32 8, !dbg !3857
  %1 = getelementptr inbounds %struct.acpi_processor_power, %struct.acpi_processor_power* %power, i32 0, i32 1, !dbg !3858
  %states = bitcast %union.anon.0* %1 to [8 x %struct.acpi_processor_cx]*, !dbg !3858
  %arraydecay = getelementptr inbounds [8 x %struct.acpi_processor_cx], [8 x %struct.acpi_processor_cx]* %states, i64 0, i64 0, !dbg !3859
  %2 = bitcast %struct.acpi_processor_cx* %arraydecay to i8*, !dbg !3859
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 416, i1 false), !dbg !3859
  %3 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3860
  %call = call i32 @acpi_processor_get_power_info_cst(%struct.acpi_processor* %3) #10, !dbg !3861
  store i32 %call, i32* %result, align 4, !dbg !3862
  %4 = load i32, i32* %result, align 4, !dbg !3863
  %cmp = icmp eq i32 %4, -19, !dbg !3865
  br i1 %cmp, label %if.then, label %if.end, !dbg !3866

if.then:                                          ; preds = %entry
  %5 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3867
  %call1 = call i32 @acpi_processor_get_power_info_fadt(%struct.acpi_processor* %5) #10, !dbg !3868
  store i32 %call1, i32* %result, align 4, !dbg !3869
  br label %if.end, !dbg !3870

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %result, align 4, !dbg !3871
  %tobool = icmp ne i32 %6, 0, !dbg !3871
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !3873

if.then2:                                         ; preds = %if.end
  %7 = load i32, i32* %result, align 4, !dbg !3874
  store i32 %7, i32* %retval, align 4, !dbg !3875
  br label %return, !dbg !3875

if.end3:                                          ; preds = %if.end
  %8 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3876
  %call4 = call i32 @acpi_processor_get_power_info_default(%struct.acpi_processor* %8) #10, !dbg !3877
  %9 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3878
  %call5 = call i32 @acpi_processor_power_verify(%struct.acpi_processor* %9) #10, !dbg !3879
  %10 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3880
  %power6 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %10, i32 0, i32 8, !dbg !3881
  %count = getelementptr inbounds %struct.acpi_processor_power, %struct.acpi_processor_power* %power6, i32 0, i32 0, !dbg !3882
  store i32 %call5, i32* %count, align 8, !dbg !3883
  store i32 1, i32* %i, align 4, !dbg !3884
  br label %for.cond, !dbg !3886

for.cond:                                         ; preds = %for.inc, %if.end3
  %11 = load i32, i32* %i, align 4, !dbg !3887
  %cmp7 = icmp ult i32 %11, 8, !dbg !3889
  br i1 %cmp7, label %for.body, label %for.end, !dbg !3890

for.body:                                         ; preds = %for.cond
  %12 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3891
  %power8 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %12, i32 0, i32 8, !dbg !3894
  %13 = getelementptr inbounds %struct.acpi_processor_power, %struct.acpi_processor_power* %power8, i32 0, i32 1, !dbg !3895
  %states9 = bitcast %union.anon.0* %13 to [8 x %struct.acpi_processor_cx]*, !dbg !3895
  %14 = load i32, i32* %i, align 4, !dbg !3896
  %idxprom = zext i32 %14 to i64, !dbg !3891
  %arrayidx = getelementptr [8 x %struct.acpi_processor_cx], [8 x %struct.acpi_processor_cx]* %states9, i64 0, i64 %idxprom, !dbg !3891
  %valid = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %arrayidx, i32 0, i32 0, !dbg !3897
  %15 = load i8, i8* %valid, align 4, !dbg !3897
  %tobool10 = icmp ne i8 %15, 0, !dbg !3891
  br i1 %tobool10, label %if.then11, label %if.end14, !dbg !3898

if.then11:                                        ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !dbg !3899
  %17 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3901
  %power12 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %17, i32 0, i32 8, !dbg !3902
  %count13 = getelementptr inbounds %struct.acpi_processor_power, %struct.acpi_processor_power* %power12, i32 0, i32 0, !dbg !3903
  store i32 %16, i32* %count13, align 8, !dbg !3904
  %18 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3905
  %flags = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %18, i32 0, i32 7, !dbg !3906
  %19 = bitcast %struct.acpi_processor_flags* %flags to i16*, !dbg !3907
  %bf.load = load i16, i16* %19, align 8, !dbg !3908
  %bf.clear = and i16 %bf.load, -2, !dbg !3908
  %bf.set = or i16 %bf.clear, 1, !dbg !3908
  store i16 %bf.set, i16* %19, align 8, !dbg !3908
  br label %if.end14, !dbg !3909

if.end14:                                         ; preds = %if.then11, %for.body
  br label %for.inc, !dbg !3910

for.inc:                                          ; preds = %if.end14
  %20 = load i32, i32* %i, align 4, !dbg !3911
  %inc = add i32 %20, 1, !dbg !3911
  store i32 %inc, i32* %i, align 4, !dbg !3911
  br label %for.cond, !dbg !3912, !llvm.loop !3913

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !3915
  br label %return, !dbg !3915

return:                                           ; preds = %for.end, %if.then2
  %21 = load i32, i32* %retval, align 4, !dbg !3916
  ret i32 %21, !dbg !3916
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @acpi_has_method(i8*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_processor_evaluate_lpi(i8* %handle, %struct.acpi_lpi_states_array* %info) #0 !dbg !3917 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca i8*, align 8
  %info.addr = alloca %struct.acpi_lpi_states_array*, align 8
  %status = alloca i32, align 4
  %ret = alloca i32, align 4
  %pkg_count = alloca i32, align 4
  %state_idx = alloca i32, align 4
  %loop = alloca i32, align 4
  %buffer = alloca %struct.acpi_buffer, align 8
  %lpi_data = alloca %union.acpi_object*, align 8
  %lpi_state = alloca %struct.acpi_lpi_state*, align 8
  %tmp = alloca i32, align 4
  %tmp15 = alloca i32, align 4
  %element = alloca %union.acpi_object*, align 8
  %pkg_elem = alloca %union.acpi_object*, align 8
  %obj = alloca %union.acpi_object*, align 8
  %reg = alloca %struct.acpi_power_register*, align 8
  %tmp84 = alloca i32, align 4
  %tmp91 = alloca i32, align 4
  %tmp119 = alloca i32, align 4
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !3920, metadata !DIExpression()), !dbg !3921
  store %struct.acpi_lpi_states_array* %info, %struct.acpi_lpi_states_array** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_lpi_states_array** %info.addr, metadata !3922, metadata !DIExpression()), !dbg !3923
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3924, metadata !DIExpression()), !dbg !3925
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3926, metadata !DIExpression()), !dbg !3927
  store i32 0, i32* %ret, align 4, !dbg !3927
  call void @llvm.dbg.declare(metadata i32* %pkg_count, metadata !3928, metadata !DIExpression()), !dbg !3929
  call void @llvm.dbg.declare(metadata i32* %state_idx, metadata !3930, metadata !DIExpression()), !dbg !3931
  store i32 1, i32* %state_idx, align 4, !dbg !3931
  call void @llvm.dbg.declare(metadata i32* %loop, metadata !3932, metadata !DIExpression()), !dbg !3933
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer* %buffer, metadata !3934, metadata !DIExpression()), !dbg !3940
  %0 = bitcast %struct.acpi_buffer* %buffer to i8*, !dbg !3940
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast (%struct.acpi_buffer* @__const.acpi_processor_evaluate_lpi.buffer to i8*), i64 16, i1 false), !dbg !3940
  call void @llvm.dbg.declare(metadata %union.acpi_object** %lpi_data, metadata !3941, metadata !DIExpression()), !dbg !3942
  call void @llvm.dbg.declare(metadata %struct.acpi_lpi_state** %lpi_state, metadata !3943, metadata !DIExpression()), !dbg !3944
  %1 = load i8*, i8** %handle.addr, align 8, !dbg !3945
  %call = call i32 @acpi_evaluate_object(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.acpi_object_list* null, %struct.acpi_buffer* %buffer) #10, !dbg !3946
  store i32 %call, i32* %status, align 4, !dbg !3947
  %2 = load i32, i32* %status, align 4, !dbg !3948
  %tobool = icmp ne i32 %2, 0, !dbg !3948
  br i1 %tobool, label %if.then, label %if.end, !dbg !3950

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !3951
  br label %return, !dbg !3951

if.end:                                           ; preds = %entry
  %pointer = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 1, !dbg !3953
  %3 = load i8*, i8** %pointer, align 8, !dbg !3953
  %4 = bitcast i8* %3 to %union.acpi_object*, !dbg !3954
  store %union.acpi_object* %4, %union.acpi_object** %lpi_data, align 8, !dbg !3955
  %5 = load %union.acpi_object*, %union.acpi_object** %lpi_data, align 8, !dbg !3956
  %tobool1 = icmp ne %union.acpi_object* %5, null, !dbg !3956
  br i1 %tobool1, label %lor.lhs.false, label %if.then4, !dbg !3958

lor.lhs.false:                                    ; preds = %if.end
  %6 = load %union.acpi_object*, %union.acpi_object** %lpi_data, align 8, !dbg !3959
  %type = bitcast %union.acpi_object* %6 to i32*, !dbg !3960
  %7 = load i32, i32* %type, align 8, !dbg !3960
  %cmp = icmp ne i32 %7, 4, !dbg !3961
  br i1 %cmp, label %if.then4, label %lor.lhs.false2, !dbg !3962

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %8 = load %union.acpi_object*, %union.acpi_object** %lpi_data, align 8, !dbg !3963
  %package = bitcast %union.acpi_object* %8 to %struct.anon.44*, !dbg !3964
  %count = getelementptr inbounds %struct.anon.44, %struct.anon.44* %package, i32 0, i32 1, !dbg !3965
  %9 = load i32, i32* %count, align 4, !dbg !3965
  %cmp3 = icmp ult i32 %9, 4, !dbg !3966
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !3967

if.then4:                                         ; preds = %lor.lhs.false2, %lor.lhs.false, %if.end
  store i32 0, i32* %tmp, align 4, !dbg !3968
  %10 = load i32, i32* %tmp, align 4, !dbg !3972
  store i32 -61, i32* %ret, align 4, !dbg !3973
  br label %end, !dbg !3974

if.end5:                                          ; preds = %lor.lhs.false2
  %11 = load %union.acpi_object*, %union.acpi_object** %lpi_data, align 8, !dbg !3975
  %package6 = bitcast %union.acpi_object* %11 to %struct.anon.44*, !dbg !3976
  %elements = getelementptr inbounds %struct.anon.44, %struct.anon.44* %package6, i32 0, i32 2, !dbg !3977
  %12 = load %union.acpi_object*, %union.acpi_object** %elements, align 8, !dbg !3977
  %arrayidx = getelementptr %union.acpi_object, %union.acpi_object* %12, i64 2, !dbg !3975
  %integer = bitcast %union.acpi_object* %arrayidx to %struct.anon.41*, !dbg !3978
  %value = getelementptr inbounds %struct.anon.41, %struct.anon.41* %integer, i32 0, i32 1, !dbg !3979
  %13 = load i64, i64* %value, align 8, !dbg !3979
  %conv = trunc i64 %13 to i32, !dbg !3975
  store i32 %conv, i32* %pkg_count, align 4, !dbg !3980
  %14 = load i32, i32* %pkg_count, align 4, !dbg !3981
  %cmp7 = icmp slt i32 %14, 1, !dbg !3983
  br i1 %cmp7, label %if.then14, label %lor.lhs.false9, !dbg !3984

lor.lhs.false9:                                   ; preds = %if.end5
  %15 = load i32, i32* %pkg_count, align 4, !dbg !3985
  %16 = load %union.acpi_object*, %union.acpi_object** %lpi_data, align 8, !dbg !3986
  %package10 = bitcast %union.acpi_object* %16 to %struct.anon.44*, !dbg !3987
  %count11 = getelementptr inbounds %struct.anon.44, %struct.anon.44* %package10, i32 0, i32 1, !dbg !3988
  %17 = load i32, i32* %count11, align 4, !dbg !3988
  %sub = sub i32 %17, 3, !dbg !3989
  %cmp12 = icmp ne i32 %15, %sub, !dbg !3990
  br i1 %cmp12, label %if.then14, label %if.end16, !dbg !3991

if.then14:                                        ; preds = %lor.lhs.false9, %if.end5
  store i32 0, i32* %tmp15, align 4, !dbg !3992
  %18 = load i32, i32* %tmp15, align 4, !dbg !3996
  store i32 -61, i32* %ret, align 4, !dbg !3997
  br label %end, !dbg !3998

if.end16:                                         ; preds = %lor.lhs.false9
  %19 = load i32, i32* %pkg_count, align 4, !dbg !3999
  %conv17 = sext i32 %19 to i64, !dbg !3999
  %call18 = call i8* @kcalloc(i64 %conv17, i64 72, i32 3264) #10, !dbg !4000
  %20 = bitcast i8* %call18 to %struct.acpi_lpi_state*, !dbg !4000
  store %struct.acpi_lpi_state* %20, %struct.acpi_lpi_state** %lpi_state, align 8, !dbg !4001
  %21 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %lpi_state, align 8, !dbg !4002
  %tobool19 = icmp ne %struct.acpi_lpi_state* %21, null, !dbg !4002
  br i1 %tobool19, label %if.end21, label %if.then20, !dbg !4004

if.then20:                                        ; preds = %if.end16
  store i32 -12, i32* %ret, align 4, !dbg !4005
  br label %end, !dbg !4007

if.end21:                                         ; preds = %if.end16
  %22 = load i32, i32* %pkg_count, align 4, !dbg !4008
  %23 = load %struct.acpi_lpi_states_array*, %struct.acpi_lpi_states_array** %info.addr, align 8, !dbg !4009
  %size = getelementptr inbounds %struct.acpi_lpi_states_array, %struct.acpi_lpi_states_array* %23, i32 0, i32 0, !dbg !4010
  store i32 %22, i32* %size, align 8, !dbg !4011
  %24 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %lpi_state, align 8, !dbg !4012
  %25 = load %struct.acpi_lpi_states_array*, %struct.acpi_lpi_states_array** %info.addr, align 8, !dbg !4013
  %entries = getelementptr inbounds %struct.acpi_lpi_states_array, %struct.acpi_lpi_states_array* %25, i32 0, i32 2, !dbg !4014
  store %struct.acpi_lpi_state* %24, %struct.acpi_lpi_state** %entries, align 8, !dbg !4015
  store i32 3, i32* %loop, align 4, !dbg !4016
  br label %for.cond, !dbg !4018

for.cond:                                         ; preds = %for.inc, %if.end21
  %26 = load i32, i32* %state_idx, align 4, !dbg !4019
  %27 = load i32, i32* %pkg_count, align 4, !dbg !4021
  %cmp22 = icmp sle i32 %26, %27, !dbg !4022
  br i1 %cmp22, label %for.body, label %for.end, !dbg !4023

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %union.acpi_object** %element, metadata !4024, metadata !DIExpression()), !dbg !4026
  call void @llvm.dbg.declare(metadata %union.acpi_object** %pkg_elem, metadata !4027, metadata !DIExpression()), !dbg !4028
  call void @llvm.dbg.declare(metadata %union.acpi_object** %obj, metadata !4029, metadata !DIExpression()), !dbg !4030
  %28 = load %union.acpi_object*, %union.acpi_object** %lpi_data, align 8, !dbg !4031
  %package24 = bitcast %union.acpi_object* %28 to %struct.anon.44*, !dbg !4032
  %elements25 = getelementptr inbounds %struct.anon.44, %struct.anon.44* %package24, i32 0, i32 2, !dbg !4033
  %29 = load %union.acpi_object*, %union.acpi_object** %elements25, align 8, !dbg !4033
  %30 = load i32, i32* %loop, align 4, !dbg !4034
  %idxprom = sext i32 %30 to i64, !dbg !4031
  %arrayidx26 = getelementptr %union.acpi_object, %union.acpi_object* %29, i64 %idxprom, !dbg !4031
  store %union.acpi_object* %arrayidx26, %union.acpi_object** %element, align 8, !dbg !4035
  %31 = load %union.acpi_object*, %union.acpi_object** %element, align 8, !dbg !4036
  %type27 = bitcast %union.acpi_object* %31 to i32*, !dbg !4038
  %32 = load i32, i32* %type27, align 8, !dbg !4038
  %cmp28 = icmp ne i32 %32, 4, !dbg !4039
  br i1 %cmp28, label %if.then35, label %lor.lhs.false30, !dbg !4040

lor.lhs.false30:                                  ; preds = %for.body
  %33 = load %union.acpi_object*, %union.acpi_object** %element, align 8, !dbg !4041
  %package31 = bitcast %union.acpi_object* %33 to %struct.anon.44*, !dbg !4042
  %count32 = getelementptr inbounds %struct.anon.44, %struct.anon.44* %package31, i32 0, i32 1, !dbg !4043
  %34 = load i32, i32* %count32, align 4, !dbg !4043
  %cmp33 = icmp ult i32 %34, 7, !dbg !4044
  br i1 %cmp33, label %if.then35, label %if.end36, !dbg !4045

if.then35:                                        ; preds = %lor.lhs.false30, %for.body
  br label %for.inc, !dbg !4046

if.end36:                                         ; preds = %lor.lhs.false30
  %35 = load %union.acpi_object*, %union.acpi_object** %element, align 8, !dbg !4047
  %package37 = bitcast %union.acpi_object* %35 to %struct.anon.44*, !dbg !4048
  %elements38 = getelementptr inbounds %struct.anon.44, %struct.anon.44* %package37, i32 0, i32 2, !dbg !4049
  %36 = load %union.acpi_object*, %union.acpi_object** %elements38, align 8, !dbg !4049
  store %union.acpi_object* %36, %union.acpi_object** %pkg_elem, align 8, !dbg !4050
  %37 = load %union.acpi_object*, %union.acpi_object** %pkg_elem, align 8, !dbg !4051
  %add.ptr = getelementptr %union.acpi_object, %union.acpi_object* %37, i64 6, !dbg !4052
  store %union.acpi_object* %add.ptr, %union.acpi_object** %obj, align 8, !dbg !4053
  %38 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !4054
  %type39 = bitcast %union.acpi_object* %38 to i32*, !dbg !4056
  %39 = load i32, i32* %type39, align 8, !dbg !4056
  %cmp40 = icmp eq i32 %39, 3, !dbg !4057
  br i1 %cmp40, label %if.then42, label %if.else, !dbg !4058

if.then42:                                        ; preds = %if.end36
  call void @llvm.dbg.declare(metadata %struct.acpi_power_register** %reg, metadata !4059, metadata !DIExpression()), !dbg !4061
  %40 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !4062
  %buffer43 = bitcast %union.acpi_object* %40 to %struct.anon.43*, !dbg !4063
  %pointer44 = getelementptr inbounds %struct.anon.43, %struct.anon.43* %buffer43, i32 0, i32 2, !dbg !4064
  %41 = load i8*, i8** %pointer44, align 8, !dbg !4064
  %42 = bitcast i8* %41 to %struct.acpi_power_register*, !dbg !4065
  store %struct.acpi_power_register* %42, %struct.acpi_power_register** %reg, align 8, !dbg !4066
  %43 = load %struct.acpi_power_register*, %struct.acpi_power_register** %reg, align 8, !dbg !4067
  %space_id = getelementptr inbounds %struct.acpi_power_register, %struct.acpi_power_register* %43, i32 0, i32 2, !dbg !4069
  %44 = load i8, i8* %space_id, align 1, !dbg !4069
  %conv45 = zext i8 %44 to i32, !dbg !4067
  %cmp46 = icmp ne i32 %conv45, 1, !dbg !4070
  br i1 %cmp46, label %land.lhs.true, label %if.end53, !dbg !4071

land.lhs.true:                                    ; preds = %if.then42
  %45 = load %struct.acpi_power_register*, %struct.acpi_power_register** %reg, align 8, !dbg !4072
  %space_id48 = getelementptr inbounds %struct.acpi_power_register, %struct.acpi_power_register* %45, i32 0, i32 2, !dbg !4073
  %46 = load i8, i8* %space_id48, align 1, !dbg !4073
  %conv49 = zext i8 %46 to i32, !dbg !4072
  %cmp50 = icmp ne i32 %conv49, 127, !dbg !4074
  br i1 %cmp50, label %if.then52, label %if.end53, !dbg !4075

if.then52:                                        ; preds = %land.lhs.true
  br label %for.inc, !dbg !4076

if.end53:                                         ; preds = %land.lhs.true, %if.then42
  %47 = load %struct.acpi_power_register*, %struct.acpi_power_register** %reg, align 8, !dbg !4077
  %address = getelementptr inbounds %struct.acpi_power_register, %struct.acpi_power_register* %47, i32 0, i32 6, !dbg !4078
  %48 = load i64, i64* %address, align 1, !dbg !4078
  %49 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %lpi_state, align 8, !dbg !4079
  %address54 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %49, i32 0, i32 6, !dbg !4080
  store i64 %48, i64* %address54, align 8, !dbg !4081
  %50 = load %struct.acpi_power_register*, %struct.acpi_power_register** %reg, align 8, !dbg !4082
  %space_id55 = getelementptr inbounds %struct.acpi_power_register, %struct.acpi_power_register* %50, i32 0, i32 2, !dbg !4083
  %51 = load i8, i8* %space_id55, align 1, !dbg !4083
  %conv56 = zext i8 %51 to i32, !dbg !4082
  %cmp57 = icmp eq i32 %conv56, 127, !dbg !4084
  %52 = zext i1 %cmp57 to i64, !dbg !4082
  %cond = select i1 %cmp57, i32 1, i32 0, !dbg !4082
  %conv59 = trunc i32 %cond to i8, !dbg !4082
  %53 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %lpi_state, align 8, !dbg !4085
  %entry_method = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %53, i32 0, i32 8, !dbg !4086
  store i8 %conv59, i8* %entry_method, align 1, !dbg !4087
  br label %if.end70, !dbg !4088

if.else:                                          ; preds = %if.end36
  %54 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !4089
  %type60 = bitcast %union.acpi_object* %54 to i32*, !dbg !4091
  %55 = load i32, i32* %type60, align 8, !dbg !4091
  %cmp61 = icmp eq i32 %55, 1, !dbg !4092
  br i1 %cmp61, label %if.then63, label %if.else68, !dbg !4093

if.then63:                                        ; preds = %if.else
  %56 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %lpi_state, align 8, !dbg !4094
  %entry_method64 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %56, i32 0, i32 8, !dbg !4096
  store i8 3, i8* %entry_method64, align 1, !dbg !4097
  %57 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !4098
  %integer65 = bitcast %union.acpi_object* %57 to %struct.anon.41*, !dbg !4099
  %value66 = getelementptr inbounds %struct.anon.41, %struct.anon.41* %integer65, i32 0, i32 1, !dbg !4100
  %58 = load i64, i64* %value66, align 8, !dbg !4100
  %59 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %lpi_state, align 8, !dbg !4101
  %address67 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %59, i32 0, i32 6, !dbg !4102
  store i64 %58, i64* %address67, align 8, !dbg !4103
  br label %if.end69, !dbg !4104

if.else68:                                        ; preds = %if.else
  br label %for.inc, !dbg !4105

if.end69:                                         ; preds = %if.then63
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.end53
  %60 = load %union.acpi_object*, %union.acpi_object** %pkg_elem, align 8, !dbg !4107
  %add.ptr71 = getelementptr %union.acpi_object, %union.acpi_object* %60, i64 9, !dbg !4108
  store %union.acpi_object* %add.ptr71, %union.acpi_object** %obj, align 8, !dbg !4109
  %61 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !4110
  %type72 = bitcast %union.acpi_object* %61 to i32*, !dbg !4112
  %62 = load i32, i32* %type72, align 8, !dbg !4112
  %cmp73 = icmp eq i32 %62, 2, !dbg !4113
  br i1 %cmp73, label %if.then75, label %if.end78, !dbg !4114

if.then75:                                        ; preds = %if.end70
  %63 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %lpi_state, align 8, !dbg !4115
  %desc = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %63, i32 0, i32 9, !dbg !4116
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %desc, i64 0, i64 0, !dbg !4115
  %64 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !4117
  %string = bitcast %union.acpi_object* %64 to %struct.anon.42*, !dbg !4118
  %pointer76 = getelementptr inbounds %struct.anon.42, %struct.anon.42* %string, i32 0, i32 2, !dbg !4119
  %65 = load i8*, i8** %pointer76, align 8, !dbg !4119
  %call77 = call i64 @strlcpy(i8* %arraydecay, i8* %65, i64 32) #10, !dbg !4120
  br label %if.end78, !dbg !4120

if.end78:                                         ; preds = %if.then75, %if.end70
  %66 = load i32, i32* %state_idx, align 4, !dbg !4121
  %conv79 = trunc i32 %66 to i8, !dbg !4121
  %67 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %lpi_state, align 8, !dbg !4122
  %index = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %67, i32 0, i32 7, !dbg !4123
  store i8 %conv79, i8* %index, align 8, !dbg !4124
  %68 = load %union.acpi_object*, %union.acpi_object** %pkg_elem, align 8, !dbg !4125
  %add.ptr80 = getelementptr %union.acpi_object, %union.acpi_object* %68, i64 0, !dbg !4127
  %69 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %lpi_state, align 8, !dbg !4128
  %min_residency = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %69, i32 0, i32 0, !dbg !4129
  %call81 = call i32 @obj_get_integer(%union.acpi_object* %add.ptr80, i32* %min_residency) #10, !dbg !4130
  %tobool82 = icmp ne i32 %call81, 0, !dbg !4130
  br i1 %tobool82, label %if.then83, label %if.end86, !dbg !4131

if.then83:                                        ; preds = %if.end78
  store i32 0, i32* %tmp84, align 4, !dbg !4132
  %70 = load i32, i32* %tmp84, align 4, !dbg !4136
  %71 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %lpi_state, align 8, !dbg !4137
  %min_residency85 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %71, i32 0, i32 0, !dbg !4138
  store i32 10, i32* %min_residency85, align 8, !dbg !4139
  br label %if.end86, !dbg !4140

if.end86:                                         ; preds = %if.then83, %if.end78
  %72 = load %union.acpi_object*, %union.acpi_object** %pkg_elem, align 8, !dbg !4141
  %add.ptr87 = getelementptr %union.acpi_object, %union.acpi_object* %72, i64 1, !dbg !4143
  %73 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %lpi_state, align 8, !dbg !4144
  %wake_latency = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %73, i32 0, i32 1, !dbg !4145
  %call88 = call i32 @obj_get_integer(%union.acpi_object* %add.ptr87, i32* %wake_latency) #10, !dbg !4146
  %tobool89 = icmp ne i32 %call88, 0, !dbg !4146
  br i1 %tobool89, label %if.then90, label %if.end93, !dbg !4147

if.then90:                                        ; preds = %if.end86
  store i32 0, i32* %tmp91, align 4, !dbg !4148
  %74 = load i32, i32* %tmp91, align 4, !dbg !4152
  %75 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %lpi_state, align 8, !dbg !4153
  %wake_latency92 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %75, i32 0, i32 1, !dbg !4154
  store i32 10, i32* %wake_latency92, align 4, !dbg !4155
  br label %if.end93, !dbg !4156

if.end93:                                         ; preds = %if.then90, %if.end86
  %76 = load %union.acpi_object*, %union.acpi_object** %pkg_elem, align 8, !dbg !4157
  %add.ptr94 = getelementptr %union.acpi_object, %union.acpi_object* %76, i64 2, !dbg !4159
  %77 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %lpi_state, align 8, !dbg !4160
  %flags = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %77, i32 0, i32 2, !dbg !4161
  %call95 = call i32 @obj_get_integer(%union.acpi_object* %add.ptr94, i32* %flags) #10, !dbg !4162
  %tobool96 = icmp ne i32 %call95, 0, !dbg !4162
  br i1 %tobool96, label %if.then97, label %if.end99, !dbg !4163

if.then97:                                        ; preds = %if.end93
  %78 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %lpi_state, align 8, !dbg !4164
  %flags98 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %78, i32 0, i32 2, !dbg !4165
  store i32 0, i32* %flags98, align 8, !dbg !4166
  br label %if.end99, !dbg !4164

if.end99:                                         ; preds = %if.then97, %if.end93
  %79 = load %union.acpi_object*, %union.acpi_object** %pkg_elem, align 8, !dbg !4167
  %add.ptr100 = getelementptr %union.acpi_object, %union.acpi_object* %79, i64 3, !dbg !4169
  %80 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %lpi_state, align 8, !dbg !4170
  %arch_flags = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %80, i32 0, i32 3, !dbg !4171
  %call101 = call i32 @obj_get_integer(%union.acpi_object* %add.ptr100, i32* %arch_flags) #10, !dbg !4172
  %tobool102 = icmp ne i32 %call101, 0, !dbg !4172
  br i1 %tobool102, label %if.then103, label %if.end105, !dbg !4173

if.then103:                                       ; preds = %if.end99
  %81 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %lpi_state, align 8, !dbg !4174
  %arch_flags104 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %81, i32 0, i32 3, !dbg !4175
  store i32 0, i32* %arch_flags104, align 4, !dbg !4176
  br label %if.end105, !dbg !4174

if.end105:                                        ; preds = %if.then103, %if.end99
  %82 = load %union.acpi_object*, %union.acpi_object** %pkg_elem, align 8, !dbg !4177
  %add.ptr106 = getelementptr %union.acpi_object, %union.acpi_object* %82, i64 4, !dbg !4179
  %83 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %lpi_state, align 8, !dbg !4180
  %res_cnt_freq = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %83, i32 0, i32 4, !dbg !4181
  %call107 = call i32 @obj_get_integer(%union.acpi_object* %add.ptr106, i32* %res_cnt_freq) #10, !dbg !4182
  %tobool108 = icmp ne i32 %call107, 0, !dbg !4182
  br i1 %tobool108, label %if.then109, label %if.end111, !dbg !4183

if.then109:                                       ; preds = %if.end105
  %84 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %lpi_state, align 8, !dbg !4184
  %res_cnt_freq110 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %84, i32 0, i32 4, !dbg !4185
  store i32 1, i32* %res_cnt_freq110, align 8, !dbg !4186
  br label %if.end111, !dbg !4184

if.end111:                                        ; preds = %if.then109, %if.end105
  %85 = load %union.acpi_object*, %union.acpi_object** %pkg_elem, align 8, !dbg !4187
  %add.ptr112 = getelementptr %union.acpi_object, %union.acpi_object* %85, i64 5, !dbg !4189
  %86 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %lpi_state, align 8, !dbg !4190
  %enable_parent_state = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %86, i32 0, i32 5, !dbg !4191
  %call113 = call i32 @obj_get_integer(%union.acpi_object* %add.ptr112, i32* %enable_parent_state) #10, !dbg !4192
  %tobool114 = icmp ne i32 %call113, 0, !dbg !4192
  br i1 %tobool114, label %if.then115, label %if.end117, !dbg !4193

if.then115:                                       ; preds = %if.end111
  %87 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %lpi_state, align 8, !dbg !4194
  %enable_parent_state116 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %87, i32 0, i32 5, !dbg !4195
  store i32 0, i32* %enable_parent_state116, align 4, !dbg !4196
  br label %if.end117, !dbg !4194

if.end117:                                        ; preds = %if.then115, %if.end111
  br label %for.inc, !dbg !4197

for.inc:                                          ; preds = %if.end117, %if.else68, %if.then52, %if.then35
  %88 = load i32, i32* %loop, align 4, !dbg !4198
  %inc = add i32 %88, 1, !dbg !4198
  store i32 %inc, i32* %loop, align 4, !dbg !4198
  %89 = load i32, i32* %state_idx, align 4, !dbg !4199
  %inc118 = add i32 %89, 1, !dbg !4199
  store i32 %inc118, i32* %state_idx, align 4, !dbg !4199
  %90 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %lpi_state, align 8, !dbg !4200
  %incdec.ptr = getelementptr %struct.acpi_lpi_state, %struct.acpi_lpi_state* %90, i32 1, !dbg !4200
  store %struct.acpi_lpi_state* %incdec.ptr, %struct.acpi_lpi_state** %lpi_state, align 8, !dbg !4200
  br label %for.cond, !dbg !4201, !llvm.loop !4202

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %tmp119, align 4, !dbg !4204
  %91 = load i32, i32* %tmp119, align 4, !dbg !4207
  br label %end, !dbg !4208

end:                                              ; preds = %for.end, %if.then20, %if.then14, %if.then4
  call void @llvm.dbg.label(metadata !4209), !dbg !4210
  %pointer120 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 1, !dbg !4211
  %92 = load i8*, i8** %pointer120, align 8, !dbg !4211
  call void @kfree(i8* %92) #10, !dbg !4212
  %93 = load i32, i32* %ret, align 4, !dbg !4213
  store i32 %93, i32* %retval, align 4, !dbg !4214
  br label %return, !dbg !4214

return:                                           ; preds = %end, %if.then
  %94 = load i32, i32* %retval, align 4, !dbg !4215
  ret i32 %94, !dbg !4215
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @flatten_lpi_states(%struct.acpi_processor* %pr, %struct.acpi_lpi_states_array* %curr_level, %struct.acpi_lpi_states_array* %prev_level) #0 !dbg !4216 {
entry:
  %pr.addr = alloca %struct.acpi_processor*, align 8
  %curr_level.addr = alloca %struct.acpi_lpi_states_array*, align 8
  %prev_level.addr = alloca %struct.acpi_lpi_states_array*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %state_count = alloca i32, align 4
  %p = alloca %struct.acpi_lpi_state*, align 8
  %t = alloca %struct.acpi_lpi_state*, align 8
  %flpi = alloca %struct.acpi_lpi_state*, align 8
  store %struct.acpi_processor* %pr, %struct.acpi_processor** %pr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr.addr, metadata !4219, metadata !DIExpression()), !dbg !4220
  store %struct.acpi_lpi_states_array* %curr_level, %struct.acpi_lpi_states_array** %curr_level.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_lpi_states_array** %curr_level.addr, metadata !4221, metadata !DIExpression()), !dbg !4222
  store %struct.acpi_lpi_states_array* %prev_level, %struct.acpi_lpi_states_array** %prev_level.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_lpi_states_array** %prev_level.addr, metadata !4223, metadata !DIExpression()), !dbg !4224
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4225, metadata !DIExpression()), !dbg !4226
  call void @llvm.dbg.declare(metadata i32* %j, metadata !4227, metadata !DIExpression()), !dbg !4228
  call void @llvm.dbg.declare(metadata i32* %state_count, metadata !4229, metadata !DIExpression()), !dbg !4230
  %0 = load %struct.acpi_lpi_states_array*, %struct.acpi_lpi_states_array** %curr_level.addr, align 8, !dbg !4231
  %size = getelementptr inbounds %struct.acpi_lpi_states_array, %struct.acpi_lpi_states_array* %0, i32 0, i32 0, !dbg !4232
  %1 = load i32, i32* %size, align 8, !dbg !4232
  store i32 %1, i32* %state_count, align 4, !dbg !4230
  call void @llvm.dbg.declare(metadata %struct.acpi_lpi_state** %p, metadata !4233, metadata !DIExpression()), !dbg !4234
  call void @llvm.dbg.declare(metadata %struct.acpi_lpi_state** %t, metadata !4235, metadata !DIExpression()), !dbg !4236
  %2 = load %struct.acpi_lpi_states_array*, %struct.acpi_lpi_states_array** %curr_level.addr, align 8, !dbg !4237
  %entries = getelementptr inbounds %struct.acpi_lpi_states_array, %struct.acpi_lpi_states_array* %2, i32 0, i32 2, !dbg !4238
  %3 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %entries, align 8, !dbg !4238
  store %struct.acpi_lpi_state* %3, %struct.acpi_lpi_state** %t, align 8, !dbg !4236
  %4 = load %struct.acpi_lpi_states_array*, %struct.acpi_lpi_states_array** %curr_level.addr, align 8, !dbg !4239
  %composite_states_size = getelementptr inbounds %struct.acpi_lpi_states_array, %struct.acpi_lpi_states_array* %4, i32 0, i32 1, !dbg !4240
  store i32 0, i32* %composite_states_size, align 4, !dbg !4241
  store i32 0, i32* %j, align 4, !dbg !4242
  br label %for.cond, !dbg !4244

for.cond:                                         ; preds = %for.inc25, %entry
  %5 = load i32, i32* %j, align 4, !dbg !4245
  %6 = load i32, i32* %state_count, align 4, !dbg !4247
  %cmp = icmp slt i32 %5, %6, !dbg !4248
  br i1 %cmp, label %for.body, label %for.end28, !dbg !4249

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.acpi_lpi_state** %flpi, metadata !4250, metadata !DIExpression()), !dbg !4252
  %7 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %t, align 8, !dbg !4253
  %flags = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %7, i32 0, i32 2, !dbg !4255
  %8 = load i32, i32* %flags, align 8, !dbg !4255
  %conv = zext i32 %8 to i64, !dbg !4253
  %and = and i64 %conv, 1, !dbg !4256
  %tobool = icmp ne i64 %and, 0, !dbg !4256
  br i1 %tobool, label %if.end, label %if.then, !dbg !4257

if.then:                                          ; preds = %for.body
  br label %for.inc25, !dbg !4258

if.end:                                           ; preds = %for.body
  %9 = load i32, i32* @flat_state_cnt, align 4, !dbg !4259
  %cmp1 = icmp sge i32 %9, 8, !dbg !4261
  br i1 %cmp1, label %if.then3, label %if.end5, !dbg !4262

if.then3:                                         ; preds = %if.end
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 8) #11, !dbg !4263
  %call4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0)) #11, !dbg !4265
  br label %for.end28, !dbg !4266

if.end5:                                          ; preds = %if.end
  %10 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !4267
  %power = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %10, i32 0, i32 8, !dbg !4268
  %11 = getelementptr inbounds %struct.acpi_processor_power, %struct.acpi_processor_power* %power, i32 0, i32 1, !dbg !4269
  %lpi_states = bitcast %union.anon.0* %11 to [8 x %struct.acpi_lpi_state]*, !dbg !4269
  %12 = load i32, i32* @flat_state_cnt, align 4, !dbg !4270
  %idxprom = sext i32 %12 to i64, !dbg !4267
  %arrayidx = getelementptr [8 x %struct.acpi_lpi_state], [8 x %struct.acpi_lpi_state]* %lpi_states, i64 0, i64 %idxprom, !dbg !4267
  store %struct.acpi_lpi_state* %arrayidx, %struct.acpi_lpi_state** %flpi, align 8, !dbg !4271
  %13 = load %struct.acpi_lpi_states_array*, %struct.acpi_lpi_states_array** %prev_level.addr, align 8, !dbg !4272
  %tobool6 = icmp ne %struct.acpi_lpi_states_array* %13, null, !dbg !4272
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !4274

if.then7:                                         ; preds = %if.end5
  %14 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %flpi, align 8, !dbg !4275
  %15 = bitcast %struct.acpi_lpi_state* %14 to i8*, !dbg !4277
  %16 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %t, align 8, !dbg !4278
  %17 = bitcast %struct.acpi_lpi_state* %16 to i8*, !dbg !4277
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %17, i64 72, i1 false), !dbg !4277
  %18 = load %struct.acpi_lpi_states_array*, %struct.acpi_lpi_states_array** %curr_level.addr, align 8, !dbg !4279
  %19 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %flpi, align 8, !dbg !4280
  call void @stash_composite_state(%struct.acpi_lpi_states_array* %18, %struct.acpi_lpi_state* %19) #10, !dbg !4281
  %20 = load i32, i32* @flat_state_cnt, align 4, !dbg !4282
  %inc = add i32 %20, 1, !dbg !4282
  store i32 %inc, i32* @flat_state_cnt, align 4, !dbg !4282
  br label %for.inc25, !dbg !4283

if.end8:                                          ; preds = %if.end5
  store i32 0, i32* %i, align 4, !dbg !4284
  br label %for.cond9, !dbg !4286

for.cond9:                                        ; preds = %for.inc, %if.end8
  %21 = load i32, i32* %i, align 4, !dbg !4287
  %22 = load %struct.acpi_lpi_states_array*, %struct.acpi_lpi_states_array** %prev_level.addr, align 8, !dbg !4289
  %composite_states_size10 = getelementptr inbounds %struct.acpi_lpi_states_array, %struct.acpi_lpi_states_array* %22, i32 0, i32 1, !dbg !4290
  %23 = load i32, i32* %composite_states_size10, align 4, !dbg !4290
  %cmp11 = icmp ult i32 %21, %23, !dbg !4291
  br i1 %cmp11, label %for.body13, label %for.end, !dbg !4292

for.body13:                                       ; preds = %for.cond9
  %24 = load %struct.acpi_lpi_states_array*, %struct.acpi_lpi_states_array** %prev_level.addr, align 8, !dbg !4293
  %composite_states = getelementptr inbounds %struct.acpi_lpi_states_array, %struct.acpi_lpi_states_array* %24, i32 0, i32 3, !dbg !4295
  %25 = load i32, i32* %i, align 4, !dbg !4296
  %idxprom14 = sext i32 %25 to i64, !dbg !4293
  %arrayidx15 = getelementptr [8 x %struct.acpi_lpi_state*], [8 x %struct.acpi_lpi_state*]* %composite_states, i64 0, i64 %idxprom14, !dbg !4293
  %26 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %arrayidx15, align 8, !dbg !4293
  store %struct.acpi_lpi_state* %26, %struct.acpi_lpi_state** %p, align 8, !dbg !4297
  %27 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %t, align 8, !dbg !4298
  %index = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %27, i32 0, i32 7, !dbg !4300
  %28 = load i8, i8* %index, align 8, !dbg !4300
  %conv16 = zext i8 %28 to i32, !dbg !4298
  %29 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %p, align 8, !dbg !4301
  %enable_parent_state = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %29, i32 0, i32 5, !dbg !4302
  %30 = load i32, i32* %enable_parent_state, align 4, !dbg !4302
  %cmp17 = icmp ule i32 %conv16, %30, !dbg !4303
  br i1 %cmp17, label %land.lhs.true, label %if.end23, !dbg !4304

land.lhs.true:                                    ; preds = %for.body13
  %31 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %p, align 8, !dbg !4305
  %32 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %t, align 8, !dbg !4306
  %33 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %flpi, align 8, !dbg !4307
  %call19 = call zeroext i1 @combine_lpi_states(%struct.acpi_lpi_state* %31, %struct.acpi_lpi_state* %32, %struct.acpi_lpi_state* %33) #10, !dbg !4308
  br i1 %call19, label %if.then21, label %if.end23, !dbg !4309

if.then21:                                        ; preds = %land.lhs.true
  %34 = load %struct.acpi_lpi_states_array*, %struct.acpi_lpi_states_array** %curr_level.addr, align 8, !dbg !4310
  %35 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %flpi, align 8, !dbg !4312
  call void @stash_composite_state(%struct.acpi_lpi_states_array* %34, %struct.acpi_lpi_state* %35) #10, !dbg !4313
  %36 = load i32, i32* @flat_state_cnt, align 4, !dbg !4314
  %inc22 = add i32 %36, 1, !dbg !4314
  store i32 %inc22, i32* @flat_state_cnt, align 4, !dbg !4314
  %37 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %flpi, align 8, !dbg !4315
  %incdec.ptr = getelementptr %struct.acpi_lpi_state, %struct.acpi_lpi_state* %37, i32 1, !dbg !4315
  store %struct.acpi_lpi_state* %incdec.ptr, %struct.acpi_lpi_state** %flpi, align 8, !dbg !4315
  br label %if.end23, !dbg !4316

if.end23:                                         ; preds = %if.then21, %land.lhs.true, %for.body13
  br label %for.inc, !dbg !4317

for.inc:                                          ; preds = %if.end23
  %38 = load i32, i32* %i, align 4, !dbg !4318
  %inc24 = add i32 %38, 1, !dbg !4318
  store i32 %inc24, i32* %i, align 4, !dbg !4318
  br label %for.cond9, !dbg !4319, !llvm.loop !4320

for.end:                                          ; preds = %for.cond9
  br label %for.inc25, !dbg !4322

for.inc25:                                        ; preds = %for.end, %if.then7, %if.then
  %39 = load i32, i32* %j, align 4, !dbg !4323
  %inc26 = add i32 %39, 1, !dbg !4323
  store i32 %inc26, i32* %j, align 4, !dbg !4323
  %40 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %t, align 8, !dbg !4324
  %incdec.ptr27 = getelementptr %struct.acpi_lpi_state, %struct.acpi_lpi_state* %40, i32 1, !dbg !4324
  store %struct.acpi_lpi_state* %incdec.ptr27, %struct.acpi_lpi_state** %t, align 8, !dbg !4324
  br label %for.cond, !dbg !4325, !llvm.loop !4326

for.end28:                                        ; preds = %if.then3, %for.cond
  %41 = load %struct.acpi_lpi_states_array*, %struct.acpi_lpi_states_array** %curr_level.addr, align 8, !dbg !4328
  %entries29 = getelementptr inbounds %struct.acpi_lpi_states_array, %struct.acpi_lpi_states_array* %41, i32 0, i32 2, !dbg !4329
  %42 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %entries29, align 8, !dbg !4329
  %43 = bitcast %struct.acpi_lpi_state* %42 to i8*, !dbg !4328
  call void @kfree(i8* %43) #10, !dbg !4330
  ret i32 0, !dbg !4331
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_get_parent(i8*, i8**) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_bus_get_device(i8*, %struct.acpi_device**) #2

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_device_hid(%struct.acpi_device*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noredzone
declare dso_local i32 @acpi_evaluate_object(i8*, i8*, %struct.acpi_object_list*, %struct.acpi_buffer*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kcalloc(i64 %n, i64 %size, i32 %flags) #0 !dbg !4332 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4335, metadata !DIExpression()), !dbg !4336
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4337, metadata !DIExpression()), !dbg !4338
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4339, metadata !DIExpression()), !dbg !4340
  %0 = load i64, i64* %n.addr, align 8, !dbg !4341
  %1 = load i64, i64* %size.addr, align 8, !dbg !4342
  %2 = load i32, i32* %flags.addr, align 4, !dbg !4343
  %or = or i32 %2, 256, !dbg !4344
  %call = call i8* @kmalloc_array(i64 %0, i64 %1, i32 %or) #10, !dbg !4345
  ret i8* %call, !dbg !4346
}

; Function Attrs: noredzone
declare dso_local i64 @strlcpy(i8*, i8*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @obj_get_integer(%union.acpi_object* %obj, i32* %value) #0 !dbg !4347 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca %union.acpi_object*, align 8
  %value.addr = alloca i32*, align 8
  store %union.acpi_object* %obj, %union.acpi_object** %obj.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_object** %obj.addr, metadata !4350, metadata !DIExpression()), !dbg !4351
  store i32* %value, i32** %value.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %value.addr, metadata !4352, metadata !DIExpression()), !dbg !4353
  %0 = load %union.acpi_object*, %union.acpi_object** %obj.addr, align 8, !dbg !4354
  %type = bitcast %union.acpi_object* %0 to i32*, !dbg !4356
  %1 = load i32, i32* %type, align 8, !dbg !4356
  %cmp = icmp ne i32 %1, 1, !dbg !4357
  br i1 %cmp, label %if.then, label %if.end, !dbg !4358

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4359
  br label %return, !dbg !4359

if.end:                                           ; preds = %entry
  %2 = load %union.acpi_object*, %union.acpi_object** %obj.addr, align 8, !dbg !4360
  %integer = bitcast %union.acpi_object* %2 to %struct.anon.41*, !dbg !4361
  %value1 = getelementptr inbounds %struct.anon.41, %struct.anon.41* %integer, i32 0, i32 1, !dbg !4362
  %3 = load i64, i64* %value1, align 8, !dbg !4362
  %conv = trunc i64 %3 to i32, !dbg !4360
  %4 = load i32*, i32** %value.addr, align 8, !dbg !4363
  store i32 %conv, i32* %4, align 4, !dbg !4364
  store i32 0, i32* %retval, align 4, !dbg !4365
  br label %return, !dbg !4365

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !4366
  ret i32 %5, !dbg !4366
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kmalloc_array(i64 %n, i64 %size, i32 %flags) #0 !dbg !4367 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3119, metadata !DIExpression()), !dbg !4368
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3129, metadata !DIExpression()), !dbg !4372
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3131, metadata !DIExpression()), !dbg !4373
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3133, metadata !DIExpression()), !dbg !4374
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3135, metadata !DIExpression()), !dbg !4375
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3141, metadata !DIExpression()), !dbg !4377
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3147, metadata !DIExpression()), !dbg !4379
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !3156, metadata !DIExpression()), !dbg !4382
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !3158, metadata !DIExpression()), !dbg !4383
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3160, metadata !DIExpression()), !dbg !4384
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !3162, metadata !DIExpression()), !dbg !4385
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !3164, metadata !DIExpression()), !dbg !4386
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3166, metadata !DIExpression()), !dbg !4387
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !3168, metadata !DIExpression()), !dbg !4388
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3170, metadata !DIExpression()), !dbg !4389
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
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4390, metadata !DIExpression()), !dbg !4391
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4392, metadata !DIExpression()), !dbg !4393
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4394, metadata !DIExpression()), !dbg !4395
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !4396, metadata !DIExpression()), !dbg !4397
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !4398, metadata !DIExpression()), !dbg !4401
  %0 = load i64, i64* %n.addr, align 8, !dbg !4401
  store i64 %0, i64* %__a, align 8, !dbg !4401
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !4402, metadata !DIExpression()), !dbg !4401
  %1 = load i64, i64* %size.addr, align 8, !dbg !4401
  store i64 %1, i64* %__b, align 8, !dbg !4401
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !4403, metadata !DIExpression()), !dbg !4401
  store i64* %bytes, i64** %__d, align 8, !dbg !4401
  %cmp = icmp eq i64* %__a, %__b, !dbg !4401
  %conv = zext i1 %cmp to i32, !dbg !4401
  %2 = load i64*, i64** %__d, align 8, !dbg !4401
  %cmp1 = icmp eq i64* %__a, %2, !dbg !4401
  %conv2 = zext i1 %cmp1 to i32, !dbg !4401
  %3 = load i64, i64* %__a, align 8, !dbg !4401
  %4 = load i64, i64* %__b, align 8, !dbg !4401
  %5 = load i64*, i64** %__d, align 8, !dbg !4401
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !4401
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4401
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !4401
  store i64 %8, i64* %5, align 8, !dbg !4401
  %frombool = zext i1 %7 to i8, !dbg !4401
  store i8 %frombool, i8* %tmp, align 1, !dbg !4401
  %9 = load i8, i8* %tmp, align 1, !dbg !4401
  %tobool = trunc i8 %9 to i1, !dbg !4401
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #10, !dbg !4405
  %lnot = xor i1 %call, true, !dbg !4405
  %lnot3 = xor i1 %lnot, true, !dbg !4405
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !4405
  %conv4 = sext i32 %lnot.ext to i64, !dbg !4405
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !4405
  br i1 %tobool5, label %if.then, label %if.end, !dbg !4406

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !4407
  br label %return, !dbg !4407

if.end:                                           ; preds = %entry
  %10 = load i64, i64* %n.addr, align 8, !dbg !4408
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !4409
  br i1 %11, label %land.lhs.true, label %if.end8, !dbg !4410

land.lhs.true:                                    ; preds = %if.end
  %12 = load i64, i64* %size.addr, align 8, !dbg !4411
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !4412
  br i1 %13, label %if.then6, label %if.end8, !dbg !4413

if.then6:                                         ; preds = %land.lhs.true
  %14 = load i64, i64* %bytes, align 8, !dbg !4414
  %15 = load i32, i32* %flags.addr, align 4, !dbg !4415
  store i64 %14, i64* %size.addr.i, align 8
  store i32 %15, i32* %flags.addr.i, align 4
  %16 = load i64, i64* %size.addr.i, align 8, !dbg !4416
  %17 = call i1 @llvm.is.constant.i64(i64 %16) #9, !dbg !4417
  br i1 %17, label %if.then.i, label %if.end9.i, !dbg !4418

if.then.i:                                        ; preds = %if.then6
  %18 = load i64, i64* %size.addr.i, align 8, !dbg !4419
  %cmp.i = icmp ugt i64 %18, 8192, !dbg !4420
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4421

if.then1.i:                                       ; preds = %if.then.i
  %19 = load i64, i64* %size.addr.i, align 8, !dbg !4422
  %20 = load i32, i32* %flags.addr.i, align 4, !dbg !4423
  store i64 %19, i64* %size.addr.i.i, align 8
  store i32 %20, i32* %flags.addr.i.i, align 4
  %21 = load i64, i64* %size.addr.i.i, align 8, !dbg !4424
  %call.i.i = call i32 @get_order(i64 %21) #12, !dbg !4425
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4386
  %22 = load i64, i64* %size.addr.i.i, align 8, !dbg !4426
  %23 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4427
  %24 = load i32, i32* %order.i.i, align 4, !dbg !4428
  store i64 %22, i64* %size.addr.i.i.i, align 8
  store i32 %23, i32* %flags.addr.i.i.i, align 4
  store i32 %24, i32* %order.addr.i.i.i, align 4
  %25 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4429
  %26 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4430
  %27 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4431
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %25, i32 %26, i32 %27) #13, !dbg !4432
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4432
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4432
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4432
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !4432
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4433
  br label %kmalloc.exit, !dbg !4433

if.end.i:                                         ; preds = %if.then.i
  %28 = load i64, i64* %size.addr.i, align 8, !dbg !4434
  store i64 %28, i64* %size.addr.i11.i, align 8
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4435
  %tobool.i.i = icmp ne i64 %29, 0, !dbg !4435
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4436

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4437
  br label %kmalloc_index.exit.i, !dbg !4437

if.end.i.i:                                       ; preds = %if.end.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4438
  %cmp.i.i = icmp ule i64 %30, 8, !dbg !4439
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4440

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4441
  br label %kmalloc_index.exit.i, !dbg !4441

if.end2.i.i:                                      ; preds = %if.end.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4442
  %cmp3.i.i = icmp ugt i64 %31, 64, !dbg !4443
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4444

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4445
  %cmp4.i.i = icmp ule i64 %32, 96, !dbg !4446
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4447

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4448
  br label %kmalloc_index.exit.i, !dbg !4448

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4449
  %cmp7.i.i = icmp ugt i64 %33, 128, !dbg !4450
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4451

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4452
  %cmp9.i.i = icmp ule i64 %34, 192, !dbg !4453
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4454

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4455
  br label %kmalloc_index.exit.i, !dbg !4455

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4456
  %cmp12.i.i = icmp ule i64 %35, 8, !dbg !4457
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4458

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4459
  br label %kmalloc_index.exit.i, !dbg !4459

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4460
  %cmp15.i.i = icmp ule i64 %36, 16, !dbg !4461
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4462

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4463
  br label %kmalloc_index.exit.i, !dbg !4463

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4464
  %cmp18.i.i = icmp ule i64 %37, 32, !dbg !4465
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4466

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4467
  br label %kmalloc_index.exit.i, !dbg !4467

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4468
  %cmp21.i.i = icmp ule i64 %38, 64, !dbg !4469
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4470

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4471
  br label %kmalloc_index.exit.i, !dbg !4471

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4472
  %cmp24.i.i = icmp ule i64 %39, 128, !dbg !4473
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4474

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4475
  br label %kmalloc_index.exit.i, !dbg !4475

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4476
  %cmp27.i.i = icmp ule i64 %40, 256, !dbg !4477
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4478

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4479
  br label %kmalloc_index.exit.i, !dbg !4479

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4480
  %cmp30.i.i = icmp ule i64 %41, 512, !dbg !4481
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4482

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4483
  br label %kmalloc_index.exit.i, !dbg !4483

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4484
  %cmp33.i.i = icmp ule i64 %42, 1024, !dbg !4485
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4486

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4487
  br label %kmalloc_index.exit.i, !dbg !4487

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4488
  %cmp36.i.i = icmp ule i64 %43, 2048, !dbg !4489
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4490

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4491
  br label %kmalloc_index.exit.i, !dbg !4491

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4492
  %cmp39.i.i = icmp ule i64 %44, 4096, !dbg !4493
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4494

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4495
  br label %kmalloc_index.exit.i, !dbg !4495

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4496
  %cmp42.i.i = icmp ule i64 %45, 8192, !dbg !4497
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4498

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4499
  br label %kmalloc_index.exit.i, !dbg !4499

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4500
  %cmp45.i.i = icmp ule i64 %46, 16384, !dbg !4501
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4502

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4503
  br label %kmalloc_index.exit.i, !dbg !4503

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4504
  %cmp48.i.i = icmp ule i64 %47, 32768, !dbg !4505
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4506

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4507
  br label %kmalloc_index.exit.i, !dbg !4507

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4508
  %cmp51.i.i = icmp ule i64 %48, 65536, !dbg !4509
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4510

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4511
  br label %kmalloc_index.exit.i, !dbg !4511

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4512
  %cmp54.i.i = icmp ule i64 %49, 131072, !dbg !4513
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4514

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4515
  br label %kmalloc_index.exit.i, !dbg !4515

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4516
  %cmp57.i.i = icmp ule i64 %50, 262144, !dbg !4517
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4518

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4519
  br label %kmalloc_index.exit.i, !dbg !4519

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4520
  %cmp60.i.i = icmp ule i64 %51, 524288, !dbg !4521
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4522

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4523
  br label %kmalloc_index.exit.i, !dbg !4523

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4524
  %cmp63.i.i = icmp ule i64 %52, 1048576, !dbg !4525
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4526

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4527
  br label %kmalloc_index.exit.i, !dbg !4527

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4528
  %cmp66.i.i = icmp ule i64 %53, 2097152, !dbg !4529
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4530

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4531
  br label %kmalloc_index.exit.i, !dbg !4531

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4532
  %cmp69.i.i = icmp ule i64 %54, 4194304, !dbg !4533
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4534

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4535
  br label %kmalloc_index.exit.i, !dbg !4535

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4536
  %cmp72.i.i = icmp ule i64 %55, 8388608, !dbg !4537
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4538

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4539
  br label %kmalloc_index.exit.i, !dbg !4539

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4540
  %cmp75.i.i = icmp ule i64 %56, 16777216, !dbg !4541
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4542

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4543
  br label %kmalloc_index.exit.i, !dbg !4543

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4544
  %cmp78.i.i = icmp ule i64 %57, 33554432, !dbg !4545
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4546

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4547
  br label %kmalloc_index.exit.i, !dbg !4547

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4548
  %cmp81.i.i = icmp ule i64 %58, 67108864, !dbg !4549
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4550

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4551
  br label %kmalloc_index.exit.i, !dbg !4551

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !4552, !srcloc !3346
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 106) #9, !dbg !4553, !srcloc !3350
  unreachable, !dbg !4554

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %59 = load i32, i32* %retval.i.i, align 4, !dbg !4555
  store i32 %59, i32* %index.i, align 4, !dbg !4556
  %60 = load i32, i32* %index.i, align 4, !dbg !4557
  %tobool.i = icmp ne i32 %60, 0, !dbg !4557
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4558

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4559
  br label %kmalloc.exit, !dbg !4559

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %61 = load i32, i32* %flags.addr.i, align 4, !dbg !4560
  store i32 %61, i32* %flags.addr.i13.i, align 4
  %62 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4561
  %and.i.i = and i32 %62, 17, !dbg !4561
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4561
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4561
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4561
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4561
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4562

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4563
  br label %kmalloc_type.exit.i, !dbg !4563

if.end.i16.i:                                     ; preds = %if.end4.i
  %63 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4564
  %and2.i.i = and i32 %63, 1, !dbg !4565
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4564
  %64 = zext i1 %tobool3.i.i to i64, !dbg !4564
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4564
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4566
  br label %kmalloc_type.exit.i, !dbg !4566

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %65 = load i32, i32* %retval.i12.i, align 4, !dbg !4567
  %idxprom.i = zext i32 %65 to i64, !dbg !4568
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4568
  %66 = load i32, i32* %index.i, align 4, !dbg !4569
  %idxprom6.i = zext i32 %66 to i64, !dbg !4568
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4568
  %67 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4568
  %68 = load i32, i32* %flags.addr.i, align 4, !dbg !4570
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !4571
  store %struct.kmem_cache* %67, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %68, i32* %flags.addr.i17.i, align 4
  store i64 %69, i64* %size.addr.i18.i, align 8
  %70 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4572
  %71 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4573
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %70, i32 %71) #13, !dbg !4574
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4574
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4574
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4574
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !4574
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4374
  %72 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4575
  %73 = load i8*, i8** %ret.i.i, align 8, !dbg !4576
  %74 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4577
  %75 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4578
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %72, i8* %73, i64 %74, i32 %75) #13, !dbg !4579
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4580
  %76 = load i8*, i8** %ret.i.i, align 8, !dbg !4581
  store i8* %76, i8** %retval.i, align 8, !dbg !4582
  br label %kmalloc.exit, !dbg !4582

if.end9.i:                                        ; preds = %if.then6
  %77 = load i64, i64* %size.addr.i, align 8, !dbg !4583
  %78 = load i32, i32* %flags.addr.i, align 4, !dbg !4584
  %call10.i = call noalias i8* @__kmalloc(i64 %77, i32 %78) #13, !dbg !4585
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4585
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4585
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4585
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !4585
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4586
  br label %kmalloc.exit, !dbg !4586

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %79 = load i8*, i8** %retval.i, align 8, !dbg !4587
  store i8* %79, i8** %retval, align 8, !dbg !4588
  br label %return, !dbg !4588

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %80 = load i64, i64* %bytes, align 8, !dbg !4589
  %81 = load i32, i32* %flags.addr, align 4, !dbg !4590
  %call9 = call noalias i8* @__kmalloc(i64 %80, i32 %81) #10, !dbg !4591
  %ptrint = ptrtoint i8* %call9 to i64, !dbg !4591
  %maskedptr = and i64 %ptrint, 7, !dbg !4591
  %maskcond = icmp eq i64 %maskedptr, 0, !dbg !4591
  call void @llvm.assume(i1 %maskcond), !dbg !4591
  store i8* %call9, i8** %retval, align 8, !dbg !4592
  br label %return, !dbg !4592

return:                                           ; preds = %if.end8, %kmalloc.exit, %if.then
  %82 = load i8*, i8** %retval, align 8, !dbg !4593
  ret i8* %82, !dbg !4593
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #0 !dbg !4594 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !4598, metadata !DIExpression()), !dbg !4599
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !4600
  %tobool = trunc i8 %0 to i1, !dbg !4600
  %lnot = xor i1 %tobool, true, !dbg !4600
  %lnot1 = xor i1 %lnot, true, !dbg !4600
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4600
  %conv = sext i32 %lnot.ext to i64, !dbg !4600
  %tobool2 = icmp ne i64 %conv, 0, !dbg !4600
  ret i1 %tobool2, !dbg !4601
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !4602 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4606, metadata !DIExpression()), !dbg !4611
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4613, metadata !DIExpression()), !dbg !4614
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4615, metadata !DIExpression()), !dbg !4616
  %0 = load i64, i64* %size.addr, align 8, !dbg !4617
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4619
  br i1 %1, label %if.then, label %if.end447, !dbg !4620

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4621
  %tobool = icmp ne i64 %2, 0, !dbg !4621
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4624

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4625
  br label %return, !dbg !4625

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4626
  %cmp = icmp ult i64 %3, 4096, !dbg !4628
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4629

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4630
  br label %return, !dbg !4630

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub = sub i64 %4, 1, !dbg !4631
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4631
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4631

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub4 = sub i64 %6, 1, !dbg !4631
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4631
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4631

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub6 = sub i64 %8, 1, !dbg !4631
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4631
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4631

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4631

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub9 = sub i64 %9, 1, !dbg !4631
  %and = and i64 %sub9, -9223372036854775808, !dbg !4631
  %tobool10 = icmp ne i64 %and, 0, !dbg !4631
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4631

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4631

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub13 = sub i64 %10, 1, !dbg !4631
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4631
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4631
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4631

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4631

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub18 = sub i64 %11, 1, !dbg !4631
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4631
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4631
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4631

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4631

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub23 = sub i64 %12, 1, !dbg !4631
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4631
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4631
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4631

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4631

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub28 = sub i64 %13, 1, !dbg !4631
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4631
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4631
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4631

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4631

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub33 = sub i64 %14, 1, !dbg !4631
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4631
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4631
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4631

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4631

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub38 = sub i64 %15, 1, !dbg !4631
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4631
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4631
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4631

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4631

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub43 = sub i64 %16, 1, !dbg !4631
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4631
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4631
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4631

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4631

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub48 = sub i64 %17, 1, !dbg !4631
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4631
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4631
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4631

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4631

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub53 = sub i64 %18, 1, !dbg !4631
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4631
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4631
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4631

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4631

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub58 = sub i64 %19, 1, !dbg !4631
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4631
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4631
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4631

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4631

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub63 = sub i64 %20, 1, !dbg !4631
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4631
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4631
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4631

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4631

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub68 = sub i64 %21, 1, !dbg !4631
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4631
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4631
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4631

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4631

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub73 = sub i64 %22, 1, !dbg !4631
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4631
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4631
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4631

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4631

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub78 = sub i64 %23, 1, !dbg !4631
  %and79 = and i64 %sub78, 562949953421312, !dbg !4631
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4631
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4631

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4631

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub83 = sub i64 %24, 1, !dbg !4631
  %and84 = and i64 %sub83, 281474976710656, !dbg !4631
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4631
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4631

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4631

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub88 = sub i64 %25, 1, !dbg !4631
  %and89 = and i64 %sub88, 140737488355328, !dbg !4631
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4631
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4631

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4631

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub93 = sub i64 %26, 1, !dbg !4631
  %and94 = and i64 %sub93, 70368744177664, !dbg !4631
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4631
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4631

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4631

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub98 = sub i64 %27, 1, !dbg !4631
  %and99 = and i64 %sub98, 35184372088832, !dbg !4631
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4631
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4631

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4631

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub103 = sub i64 %28, 1, !dbg !4631
  %and104 = and i64 %sub103, 17592186044416, !dbg !4631
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4631
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4631

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4631

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub108 = sub i64 %29, 1, !dbg !4631
  %and109 = and i64 %sub108, 8796093022208, !dbg !4631
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4631
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4631

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4631

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub113 = sub i64 %30, 1, !dbg !4631
  %and114 = and i64 %sub113, 4398046511104, !dbg !4631
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4631
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4631

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4631

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub118 = sub i64 %31, 1, !dbg !4631
  %and119 = and i64 %sub118, 2199023255552, !dbg !4631
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4631
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4631

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4631

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub123 = sub i64 %32, 1, !dbg !4631
  %and124 = and i64 %sub123, 1099511627776, !dbg !4631
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4631
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4631

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4631

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub128 = sub i64 %33, 1, !dbg !4631
  %and129 = and i64 %sub128, 549755813888, !dbg !4631
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4631
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4631

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4631

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub133 = sub i64 %34, 1, !dbg !4631
  %and134 = and i64 %sub133, 274877906944, !dbg !4631
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4631
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4631

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4631

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub138 = sub i64 %35, 1, !dbg !4631
  %and139 = and i64 %sub138, 137438953472, !dbg !4631
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4631
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4631

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4631

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub143 = sub i64 %36, 1, !dbg !4631
  %and144 = and i64 %sub143, 68719476736, !dbg !4631
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4631
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4631

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4631

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub148 = sub i64 %37, 1, !dbg !4631
  %and149 = and i64 %sub148, 34359738368, !dbg !4631
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4631
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4631

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4631

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub153 = sub i64 %38, 1, !dbg !4631
  %and154 = and i64 %sub153, 17179869184, !dbg !4631
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4631
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4631

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4631

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub158 = sub i64 %39, 1, !dbg !4631
  %and159 = and i64 %sub158, 8589934592, !dbg !4631
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4631
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4631

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4631

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub163 = sub i64 %40, 1, !dbg !4631
  %and164 = and i64 %sub163, 4294967296, !dbg !4631
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4631
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4631

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4631

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub168 = sub i64 %41, 1, !dbg !4631
  %and169 = and i64 %sub168, 2147483648, !dbg !4631
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4631
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4631

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4631

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub173 = sub i64 %42, 1, !dbg !4631
  %and174 = and i64 %sub173, 1073741824, !dbg !4631
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4631
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4631

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4631

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub178 = sub i64 %43, 1, !dbg !4631
  %and179 = and i64 %sub178, 536870912, !dbg !4631
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4631
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4631

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4631

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub183 = sub i64 %44, 1, !dbg !4631
  %and184 = and i64 %sub183, 268435456, !dbg !4631
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4631
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4631

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4631

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub188 = sub i64 %45, 1, !dbg !4631
  %and189 = and i64 %sub188, 134217728, !dbg !4631
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4631
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4631

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4631

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub193 = sub i64 %46, 1, !dbg !4631
  %and194 = and i64 %sub193, 67108864, !dbg !4631
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4631
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4631

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4631

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub198 = sub i64 %47, 1, !dbg !4631
  %and199 = and i64 %sub198, 33554432, !dbg !4631
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4631
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4631

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4631

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub203 = sub i64 %48, 1, !dbg !4631
  %and204 = and i64 %sub203, 16777216, !dbg !4631
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4631
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4631

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4631

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub208 = sub i64 %49, 1, !dbg !4631
  %and209 = and i64 %sub208, 8388608, !dbg !4631
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4631
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4631

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4631

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub213 = sub i64 %50, 1, !dbg !4631
  %and214 = and i64 %sub213, 4194304, !dbg !4631
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4631
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4631

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4631

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub218 = sub i64 %51, 1, !dbg !4631
  %and219 = and i64 %sub218, 2097152, !dbg !4631
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4631
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4631

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4631

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub223 = sub i64 %52, 1, !dbg !4631
  %and224 = and i64 %sub223, 1048576, !dbg !4631
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4631
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4631

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4631

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub228 = sub i64 %53, 1, !dbg !4631
  %and229 = and i64 %sub228, 524288, !dbg !4631
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4631
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4631

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4631

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub233 = sub i64 %54, 1, !dbg !4631
  %and234 = and i64 %sub233, 262144, !dbg !4631
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4631
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4631

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4631

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub238 = sub i64 %55, 1, !dbg !4631
  %and239 = and i64 %sub238, 131072, !dbg !4631
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4631
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4631

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4631

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub243 = sub i64 %56, 1, !dbg !4631
  %and244 = and i64 %sub243, 65536, !dbg !4631
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4631
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4631

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4631

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub248 = sub i64 %57, 1, !dbg !4631
  %and249 = and i64 %sub248, 32768, !dbg !4631
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4631
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4631

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4631

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub253 = sub i64 %58, 1, !dbg !4631
  %and254 = and i64 %sub253, 16384, !dbg !4631
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4631
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4631

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4631

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub258 = sub i64 %59, 1, !dbg !4631
  %and259 = and i64 %sub258, 8192, !dbg !4631
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4631
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4631

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4631

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub263 = sub i64 %60, 1, !dbg !4631
  %and264 = and i64 %sub263, 4096, !dbg !4631
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4631
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4631

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4631

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub268 = sub i64 %61, 1, !dbg !4631
  %and269 = and i64 %sub268, 2048, !dbg !4631
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4631
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4631

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4631

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub273 = sub i64 %62, 1, !dbg !4631
  %and274 = and i64 %sub273, 1024, !dbg !4631
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4631
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4631

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4631

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub278 = sub i64 %63, 1, !dbg !4631
  %and279 = and i64 %sub278, 512, !dbg !4631
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4631
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4631

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4631

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub283 = sub i64 %64, 1, !dbg !4631
  %and284 = and i64 %sub283, 256, !dbg !4631
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4631
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4631

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4631

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub288 = sub i64 %65, 1, !dbg !4631
  %and289 = and i64 %sub288, 128, !dbg !4631
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4631
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4631

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4631

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub293 = sub i64 %66, 1, !dbg !4631
  %and294 = and i64 %sub293, 64, !dbg !4631
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4631
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4631

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4631

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub298 = sub i64 %67, 1, !dbg !4631
  %and299 = and i64 %sub298, 32, !dbg !4631
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4631
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4631

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4631

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub303 = sub i64 %68, 1, !dbg !4631
  %and304 = and i64 %sub303, 16, !dbg !4631
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4631
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4631

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4631

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub308 = sub i64 %69, 1, !dbg !4631
  %and309 = and i64 %sub308, 8, !dbg !4631
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4631
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4631

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4631

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub313 = sub i64 %70, 1, !dbg !4631
  %and314 = and i64 %sub313, 4, !dbg !4631
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4631
  %71 = zext i1 %tobool315 to i64, !dbg !4631
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4631
  br label %cond.end, !dbg !4631

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4631
  br label %cond.end317, !dbg !4631

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4631
  br label %cond.end319, !dbg !4631

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4631
  br label %cond.end321, !dbg !4631

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4631
  br label %cond.end323, !dbg !4631

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4631
  br label %cond.end325, !dbg !4631

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4631
  br label %cond.end327, !dbg !4631

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4631
  br label %cond.end329, !dbg !4631

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4631
  br label %cond.end331, !dbg !4631

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4631
  br label %cond.end333, !dbg !4631

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4631
  br label %cond.end335, !dbg !4631

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4631
  br label %cond.end337, !dbg !4631

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4631
  br label %cond.end339, !dbg !4631

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4631
  br label %cond.end341, !dbg !4631

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4631
  br label %cond.end343, !dbg !4631

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4631
  br label %cond.end345, !dbg !4631

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4631
  br label %cond.end347, !dbg !4631

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4631
  br label %cond.end349, !dbg !4631

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4631
  br label %cond.end351, !dbg !4631

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4631
  br label %cond.end353, !dbg !4631

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4631
  br label %cond.end355, !dbg !4631

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4631
  br label %cond.end357, !dbg !4631

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4631
  br label %cond.end359, !dbg !4631

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4631
  br label %cond.end361, !dbg !4631

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4631
  br label %cond.end363, !dbg !4631

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4631
  br label %cond.end365, !dbg !4631

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4631
  br label %cond.end367, !dbg !4631

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4631
  br label %cond.end369, !dbg !4631

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4631
  br label %cond.end371, !dbg !4631

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4631
  br label %cond.end373, !dbg !4631

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4631
  br label %cond.end375, !dbg !4631

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4631
  br label %cond.end377, !dbg !4631

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4631
  br label %cond.end379, !dbg !4631

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4631
  br label %cond.end381, !dbg !4631

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4631
  br label %cond.end383, !dbg !4631

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4631
  br label %cond.end385, !dbg !4631

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4631
  br label %cond.end387, !dbg !4631

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4631
  br label %cond.end389, !dbg !4631

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4631
  br label %cond.end391, !dbg !4631

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4631
  br label %cond.end393, !dbg !4631

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4631
  br label %cond.end395, !dbg !4631

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4631
  br label %cond.end397, !dbg !4631

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4631
  br label %cond.end399, !dbg !4631

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4631
  br label %cond.end401, !dbg !4631

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4631
  br label %cond.end403, !dbg !4631

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4631
  br label %cond.end405, !dbg !4631

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4631
  br label %cond.end407, !dbg !4631

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4631
  br label %cond.end409, !dbg !4631

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4631
  br label %cond.end411, !dbg !4631

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4631
  br label %cond.end413, !dbg !4631

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4631
  br label %cond.end415, !dbg !4631

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4631
  br label %cond.end417, !dbg !4631

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4631
  br label %cond.end419, !dbg !4631

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4631
  br label %cond.end421, !dbg !4631

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4631
  br label %cond.end423, !dbg !4631

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4631
  br label %cond.end425, !dbg !4631

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4631
  br label %cond.end427, !dbg !4631

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4631
  br label %cond.end429, !dbg !4631

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4631
  br label %cond.end431, !dbg !4631

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4631
  br label %cond.end433, !dbg !4631

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4631
  br label %cond.end435, !dbg !4631

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4631
  br label %cond.end437, !dbg !4631

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4631
  br label %cond.end440, !dbg !4631

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4631

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4631
  br label %cond.end444, !dbg !4631

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4631
  %sub443 = sub i64 %72, 1, !dbg !4631
  %call = call i32 @__ilog2_u64(i64 %sub443) #12, !dbg !4631
  br label %cond.end444, !dbg !4631

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4631
  %sub446 = sub i32 %cond445, 12, !dbg !4632
  %add = add i32 %sub446, 1, !dbg !4633
  store i32 %add, i32* %retval, align 4, !dbg !4634
  br label %return, !dbg !4634

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4635
  %dec = add i64 %73, -1, !dbg !4635
  store i64 %dec, i64* %size.addr, align 8, !dbg !4635
  %74 = load i64, i64* %size.addr, align 8, !dbg !4636
  %shr = lshr i64 %74, 12, !dbg !4636
  store i64 %shr, i64* %size.addr, align 8, !dbg !4636
  %75 = load i64, i64* %size.addr, align 8, !dbg !4637
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4614
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4638
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4639
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #8, !dbg !4638, !srcloc !4640
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4638
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4641
  %add.i = add i32 %79, 1, !dbg !4642
  store i32 %add.i, i32* %retval, align 4, !dbg !4643
  br label %return, !dbg !4643

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4644
  ret i32 %80, !dbg !4644
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !4645 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4606, metadata !DIExpression()), !dbg !4649
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4613, metadata !DIExpression()), !dbg !4651
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4652, metadata !DIExpression()), !dbg !4653
  %0 = load i64, i64* %n.addr, align 8, !dbg !4654
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4651
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4655
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4656
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #8, !dbg !4655, !srcloc !4640
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4655
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4657
  %add.i = add i32 %4, 1, !dbg !4658
  %sub = sub i32 %add.i, 1, !dbg !4659
  ret i32 %sub, !dbg !4660
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !4661 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4665, metadata !DIExpression()), !dbg !4666
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4667, metadata !DIExpression()), !dbg !4668
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4669, metadata !DIExpression()), !dbg !4670
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4671, metadata !DIExpression()), !dbg !4672
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4673
  ret i8* %0, !dbg !4674
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #7

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @stash_composite_state(%struct.acpi_lpi_states_array* %curr_level, %struct.acpi_lpi_state* %t) #0 !dbg !4675 {
entry:
  %curr_level.addr = alloca %struct.acpi_lpi_states_array*, align 8
  %t.addr = alloca %struct.acpi_lpi_state*, align 8
  store %struct.acpi_lpi_states_array* %curr_level, %struct.acpi_lpi_states_array** %curr_level.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_lpi_states_array** %curr_level.addr, metadata !4678, metadata !DIExpression()), !dbg !4679
  store %struct.acpi_lpi_state* %t, %struct.acpi_lpi_state** %t.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_lpi_state** %t.addr, metadata !4680, metadata !DIExpression()), !dbg !4681
  %0 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %t.addr, align 8, !dbg !4682
  %1 = load %struct.acpi_lpi_states_array*, %struct.acpi_lpi_states_array** %curr_level.addr, align 8, !dbg !4683
  %composite_states = getelementptr inbounds %struct.acpi_lpi_states_array, %struct.acpi_lpi_states_array* %1, i32 0, i32 3, !dbg !4684
  %2 = load %struct.acpi_lpi_states_array*, %struct.acpi_lpi_states_array** %curr_level.addr, align 8, !dbg !4685
  %composite_states_size = getelementptr inbounds %struct.acpi_lpi_states_array, %struct.acpi_lpi_states_array* %2, i32 0, i32 1, !dbg !4686
  %3 = load i32, i32* %composite_states_size, align 4, !dbg !4687
  %inc = add i32 %3, 1, !dbg !4687
  store i32 %inc, i32* %composite_states_size, align 4, !dbg !4687
  %idxprom = zext i32 %3 to i64, !dbg !4683
  %arrayidx = getelementptr [8 x %struct.acpi_lpi_state*], [8 x %struct.acpi_lpi_state*]* %composite_states, i64 0, i64 %idxprom, !dbg !4683
  store %struct.acpi_lpi_state* %0, %struct.acpi_lpi_state** %arrayidx, align 8, !dbg !4688
  ret void, !dbg !4689
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @combine_lpi_states(%struct.acpi_lpi_state* %local, %struct.acpi_lpi_state* %parent, %struct.acpi_lpi_state* %result) #0 !dbg !4690 {
entry:
  %retval = alloca i1, align 1
  %local.addr = alloca %struct.acpi_lpi_state*, align 8
  %parent.addr = alloca %struct.acpi_lpi_state*, align 8
  %result.addr = alloca %struct.acpi_lpi_state*, align 8
  %__UNIQUE_ID___x176 = alloca i32, align 4
  %__UNIQUE_ID___y177 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.acpi_lpi_state* %local, %struct.acpi_lpi_state** %local.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_lpi_state** %local.addr, metadata !4693, metadata !DIExpression()), !dbg !4694
  store %struct.acpi_lpi_state* %parent, %struct.acpi_lpi_state** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_lpi_state** %parent.addr, metadata !4695, metadata !DIExpression()), !dbg !4696
  store %struct.acpi_lpi_state* %result, %struct.acpi_lpi_state** %result.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_lpi_state** %result.addr, metadata !4697, metadata !DIExpression()), !dbg !4698
  %0 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %parent.addr, align 8, !dbg !4699
  %entry_method = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %0, i32 0, i32 8, !dbg !4701
  %1 = load i8, i8* %entry_method, align 1, !dbg !4701
  %conv = zext i8 %1 to i32, !dbg !4699
  %cmp = icmp eq i32 %conv, 3, !dbg !4702
  br i1 %cmp, label %if.then, label %if.else, !dbg !4703

if.then:                                          ; preds = %entry
  %2 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %parent.addr, align 8, !dbg !4704
  %address = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %2, i32 0, i32 6, !dbg !4707
  %3 = load i64, i64* %address, align 8, !dbg !4707
  %tobool = icmp ne i64 %3, 0, !dbg !4704
  br i1 %tobool, label %if.end, label %if.then2, !dbg !4708

if.then2:                                         ; preds = %if.then
  store i1 false, i1* %retval, align 1, !dbg !4709
  br label %return, !dbg !4709

if.end:                                           ; preds = %if.then
  %4 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %local.addr, align 8, !dbg !4710
  %address3 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %4, i32 0, i32 6, !dbg !4711
  %5 = load i64, i64* %address3, align 8, !dbg !4711
  %6 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %parent.addr, align 8, !dbg !4712
  %address4 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %6, i32 0, i32 6, !dbg !4713
  %7 = load i64, i64* %address4, align 8, !dbg !4713
  %add = add i64 %5, %7, !dbg !4714
  %8 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %result.addr, align 8, !dbg !4715
  %address5 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %8, i32 0, i32 6, !dbg !4716
  store i64 %add, i64* %address5, align 8, !dbg !4717
  br label %if.end8, !dbg !4718

if.else:                                          ; preds = %entry
  %9 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %parent.addr, align 8, !dbg !4719
  %address6 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %9, i32 0, i32 6, !dbg !4721
  %10 = load i64, i64* %address6, align 8, !dbg !4721
  %11 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %result.addr, align 8, !dbg !4722
  %address7 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %11, i32 0, i32 6, !dbg !4723
  store i64 %10, i64* %address7, align 8, !dbg !4724
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.end
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x176, metadata !4725, metadata !DIExpression()), !dbg !4727
  %12 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %local.addr, align 8, !dbg !4727
  %min_residency = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %12, i32 0, i32 0, !dbg !4727
  %13 = load i32, i32* %min_residency, align 8, !dbg !4727
  store i32 %13, i32* %__UNIQUE_ID___x176, align 4, !dbg !4727
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y177, metadata !4728, metadata !DIExpression()), !dbg !4727
  %14 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %parent.addr, align 8, !dbg !4727
  %min_residency9 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %14, i32 0, i32 0, !dbg !4727
  %15 = load i32, i32* %min_residency9, align 8, !dbg !4727
  store i32 %15, i32* %__UNIQUE_ID___y177, align 4, !dbg !4727
  %16 = load i32, i32* %__UNIQUE_ID___x176, align 4, !dbg !4727
  %17 = load i32, i32* %__UNIQUE_ID___y177, align 4, !dbg !4727
  %cmp10 = icmp ugt i32 %16, %17, !dbg !4727
  br i1 %cmp10, label %cond.true, label %cond.false, !dbg !4727

cond.true:                                        ; preds = %if.end8
  %18 = load i32, i32* %__UNIQUE_ID___x176, align 4, !dbg !4727
  br label %cond.end, !dbg !4727

cond.false:                                       ; preds = %if.end8
  %19 = load i32, i32* %__UNIQUE_ID___y177, align 4, !dbg !4727
  br label %cond.end, !dbg !4727

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %18, %cond.true ], [ %19, %cond.false ], !dbg !4727
  store i32 %cond, i32* %tmp, align 4, !dbg !4727
  %20 = load i32, i32* %tmp, align 4, !dbg !4727
  %21 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %result.addr, align 8, !dbg !4729
  %min_residency12 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %21, i32 0, i32 0, !dbg !4730
  store i32 %20, i32* %min_residency12, align 8, !dbg !4731
  %22 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %local.addr, align 8, !dbg !4732
  %wake_latency = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %22, i32 0, i32 1, !dbg !4733
  %23 = load i32, i32* %wake_latency, align 4, !dbg !4733
  %24 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %parent.addr, align 8, !dbg !4734
  %wake_latency13 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %24, i32 0, i32 1, !dbg !4735
  %25 = load i32, i32* %wake_latency13, align 4, !dbg !4735
  %add14 = add i32 %23, %25, !dbg !4736
  %26 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %result.addr, align 8, !dbg !4737
  %wake_latency15 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %26, i32 0, i32 1, !dbg !4738
  store i32 %add14, i32* %wake_latency15, align 4, !dbg !4739
  %27 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %parent.addr, align 8, !dbg !4740
  %enable_parent_state = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %27, i32 0, i32 5, !dbg !4741
  %28 = load i32, i32* %enable_parent_state, align 4, !dbg !4741
  %29 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %result.addr, align 8, !dbg !4742
  %enable_parent_state16 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %29, i32 0, i32 5, !dbg !4743
  store i32 %28, i32* %enable_parent_state16, align 4, !dbg !4744
  %30 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %local.addr, align 8, !dbg !4745
  %entry_method17 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %30, i32 0, i32 8, !dbg !4746
  %31 = load i8, i8* %entry_method17, align 1, !dbg !4746
  %32 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %result.addr, align 8, !dbg !4747
  %entry_method18 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %32, i32 0, i32 8, !dbg !4748
  store i8 %31, i8* %entry_method18, align 1, !dbg !4749
  %33 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %parent.addr, align 8, !dbg !4750
  %flags = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %33, i32 0, i32 2, !dbg !4751
  %34 = load i32, i32* %flags, align 8, !dbg !4751
  %35 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %result.addr, align 8, !dbg !4752
  %flags19 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %35, i32 0, i32 2, !dbg !4753
  store i32 %34, i32* %flags19, align 8, !dbg !4754
  %36 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %parent.addr, align 8, !dbg !4755
  %arch_flags = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %36, i32 0, i32 3, !dbg !4756
  %37 = load i32, i32* %arch_flags, align 4, !dbg !4756
  %38 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %result.addr, align 8, !dbg !4757
  %arch_flags20 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %38, i32 0, i32 3, !dbg !4758
  store i32 %37, i32* %arch_flags20, align 4, !dbg !4759
  %39 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %parent.addr, align 8, !dbg !4760
  %index = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %39, i32 0, i32 7, !dbg !4761
  %40 = load i8, i8* %index, align 8, !dbg !4761
  %41 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %result.addr, align 8, !dbg !4762
  %index21 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %41, i32 0, i32 7, !dbg !4763
  store i8 %40, i8* %index21, align 8, !dbg !4764
  %42 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %result.addr, align 8, !dbg !4765
  %desc = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %42, i32 0, i32 9, !dbg !4766
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %desc, i64 0, i64 0, !dbg !4765
  %43 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %local.addr, align 8, !dbg !4767
  %desc22 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %43, i32 0, i32 9, !dbg !4768
  %arraydecay23 = getelementptr inbounds [32 x i8], [32 x i8]* %desc22, i64 0, i64 0, !dbg !4767
  %call = call i64 @strlcpy(i8* %arraydecay, i8* %arraydecay23, i64 32) #10, !dbg !4769
  %44 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %result.addr, align 8, !dbg !4770
  %desc24 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %44, i32 0, i32 9, !dbg !4771
  %arraydecay25 = getelementptr inbounds [32 x i8], [32 x i8]* %desc24, i64 0, i64 0, !dbg !4770
  %call26 = call i64 @strlcat(i8* %arraydecay25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i64 32) #10, !dbg !4772
  %45 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %result.addr, align 8, !dbg !4773
  %desc27 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %45, i32 0, i32 9, !dbg !4774
  %arraydecay28 = getelementptr inbounds [32 x i8], [32 x i8]* %desc27, i64 0, i64 0, !dbg !4773
  %46 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %parent.addr, align 8, !dbg !4775
  %desc29 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %46, i32 0, i32 9, !dbg !4776
  %arraydecay30 = getelementptr inbounds [32 x i8], [32 x i8]* %desc29, i64 0, i64 0, !dbg !4775
  %call31 = call i64 @strlcat(i8* %arraydecay28, i8* %arraydecay30, i64 32) #10, !dbg !4777
  store i1 true, i1* %retval, align 1, !dbg !4778
  br label %return, !dbg !4778

return:                                           ; preds = %cond.end, %if.then2
  %47 = load i1, i1* %retval, align 1, !dbg !4779
  ret i1 %47, !dbg !4779
}

; Function Attrs: noredzone
declare dso_local i64 @strlcat(i8*, i8*, i64) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_processor_get_power_info_cst(%struct.acpi_processor* %pr) #0 !dbg !4780 {
entry:
  %retval = alloca i32, align 4
  %pr.addr = alloca %struct.acpi_processor*, align 8
  %ret = alloca i32, align 4
  store %struct.acpi_processor* %pr, %struct.acpi_processor** %pr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr.addr, metadata !4781, metadata !DIExpression()), !dbg !4782
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4783, metadata !DIExpression()), !dbg !4784
  %0 = load i32, i32* @nocst, align 4, !dbg !4785
  %tobool = icmp ne i32 %0, 0, !dbg !4785
  br i1 %tobool, label %if.then, label %if.end, !dbg !4787

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !4788
  br label %return, !dbg !4788

if.end:                                           ; preds = %entry
  %1 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !4789
  %handle = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %1, i32 0, i32 0, !dbg !4790
  %2 = load i8*, i8** %handle, align 8, !dbg !4790
  %3 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !4791
  %id = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %3, i32 0, i32 3, !dbg !4792
  %4 = load i32, i32* %id, align 8, !dbg !4792
  %5 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !4793
  %power = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %5, i32 0, i32 8, !dbg !4794
  %call = call i32 @acpi_processor_evaluate_cst(i8* %2, i32 %4, %struct.acpi_processor_power* %power) #10, !dbg !4795
  store i32 %call, i32* %ret, align 4, !dbg !4796
  %6 = load i32, i32* %ret, align 4, !dbg !4797
  %tobool1 = icmp ne i32 %6, 0, !dbg !4797
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !4799

if.then2:                                         ; preds = %if.end
  %7 = load i32, i32* %ret, align 4, !dbg !4800
  store i32 %7, i32* %retval, align 4, !dbg !4801
  br label %return, !dbg !4801

if.end3:                                          ; preds = %if.end
  %8 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !4802
  %power4 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %8, i32 0, i32 8, !dbg !4804
  %count = getelementptr inbounds %struct.acpi_processor_power, %struct.acpi_processor_power* %power4, i32 0, i32 0, !dbg !4805
  %9 = load i32, i32* %count, align 8, !dbg !4805
  %tobool5 = icmp ne i32 %9, 0, !dbg !4802
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !4806

if.then6:                                         ; preds = %if.end3
  store i32 -14, i32* %retval, align 4, !dbg !4807
  br label %return, !dbg !4807

if.end7:                                          ; preds = %if.end3
  %10 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !4808
  %flags = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %10, i32 0, i32 7, !dbg !4809
  %11 = bitcast %struct.acpi_processor_flags* %flags to i16*, !dbg !4810
  %bf.load = load i16, i16* %11, align 8, !dbg !4811
  %bf.clear = and i16 %bf.load, -65, !dbg !4811
  %bf.set = or i16 %bf.clear, 64, !dbg !4811
  store i16 %bf.set, i16* %11, align 8, !dbg !4811
  store i32 0, i32* %retval, align 4, !dbg !4812
  br label %return, !dbg !4812

return:                                           ; preds = %if.end7, %if.then6, %if.then2, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !4813
  ret i32 %12, !dbg !4813
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_processor_get_power_info_fadt(%struct.acpi_processor* %pr) #0 !dbg !4814 {
entry:
  %retval = alloca i32, align 4
  %pr.addr = alloca %struct.acpi_processor*, align 8
  store %struct.acpi_processor* %pr, %struct.acpi_processor** %pr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr.addr, metadata !4815, metadata !DIExpression()), !dbg !4816
  %0 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !4817
  %pblk = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %0, i32 0, i32 4, !dbg !4819
  %1 = load i32, i32* %pblk, align 4, !dbg !4819
  %tobool = icmp ne i32 %1, 0, !dbg !4817
  br i1 %tobool, label %if.end, label %if.then, !dbg !4820

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !4821
  br label %return, !dbg !4821

if.end:                                           ; preds = %entry
  %2 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !4822
  %power = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %2, i32 0, i32 8, !dbg !4823
  %3 = getelementptr inbounds %struct.acpi_processor_power, %struct.acpi_processor_power* %power, i32 0, i32 1, !dbg !4824
  %states = bitcast %union.anon.0* %3 to [8 x %struct.acpi_processor_cx]*, !dbg !4824
  %arrayidx = getelementptr [8 x %struct.acpi_processor_cx], [8 x %struct.acpi_processor_cx]* %states, i64 0, i64 2, !dbg !4822
  %type = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %arrayidx, i32 0, i32 1, !dbg !4825
  store i8 2, i8* %type, align 1, !dbg !4826
  %4 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !4827
  %power1 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %4, i32 0, i32 8, !dbg !4828
  %5 = getelementptr inbounds %struct.acpi_processor_power, %struct.acpi_processor_power* %power1, i32 0, i32 1, !dbg !4829
  %states2 = bitcast %union.anon.0* %5 to [8 x %struct.acpi_processor_cx]*, !dbg !4829
  %arrayidx3 = getelementptr [8 x %struct.acpi_processor_cx], [8 x %struct.acpi_processor_cx]* %states2, i64 0, i64 3, !dbg !4827
  %type4 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %arrayidx3, i32 0, i32 1, !dbg !4830
  store i8 3, i8* %type4, align 1, !dbg !4831
  %6 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !4832
  %pblk5 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %6, i32 0, i32 4, !dbg !4833
  %7 = load i32, i32* %pblk5, align 4, !dbg !4833
  %add = add i32 %7, 4, !dbg !4834
  %8 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !4835
  %power6 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %8, i32 0, i32 8, !dbg !4836
  %9 = getelementptr inbounds %struct.acpi_processor_power, %struct.acpi_processor_power* %power6, i32 0, i32 1, !dbg !4837
  %states7 = bitcast %union.anon.0* %9 to [8 x %struct.acpi_processor_cx]*, !dbg !4837
  %arrayidx8 = getelementptr [8 x %struct.acpi_processor_cx], [8 x %struct.acpi_processor_cx]* %states7, i64 0, i64 2, !dbg !4835
  %address = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %arrayidx8, i32 0, i32 2, !dbg !4838
  store i32 %add, i32* %address, align 4, !dbg !4839
  %10 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !4840
  %pblk9 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %10, i32 0, i32 4, !dbg !4841
  %11 = load i32, i32* %pblk9, align 4, !dbg !4841
  %add10 = add i32 %11, 5, !dbg !4842
  %12 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !4843
  %power11 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %12, i32 0, i32 8, !dbg !4844
  %13 = getelementptr inbounds %struct.acpi_processor_power, %struct.acpi_processor_power* %power11, i32 0, i32 1, !dbg !4845
  %states12 = bitcast %union.anon.0* %13 to [8 x %struct.acpi_processor_cx]*, !dbg !4845
  %arrayidx13 = getelementptr [8 x %struct.acpi_processor_cx], [8 x %struct.acpi_processor_cx]* %states12, i64 0, i64 3, !dbg !4843
  %address14 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %arrayidx13, i32 0, i32 2, !dbg !4846
  store i32 %add10, i32* %address14, align 4, !dbg !4847
  %14 = load i16, i16* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 27), align 1, !dbg !4848
  %conv = zext i16 %14 to i32, !dbg !4849
  %15 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !4850
  %power15 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %15, i32 0, i32 8, !dbg !4851
  %16 = getelementptr inbounds %struct.acpi_processor_power, %struct.acpi_processor_power* %power15, i32 0, i32 1, !dbg !4852
  %states16 = bitcast %union.anon.0* %16 to [8 x %struct.acpi_processor_cx]*, !dbg !4852
  %arrayidx17 = getelementptr [8 x %struct.acpi_processor_cx], [8 x %struct.acpi_processor_cx]* %states16, i64 0, i64 2, !dbg !4850
  %latency = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %arrayidx17, i32 0, i32 5, !dbg !4853
  store i32 %conv, i32* %latency, align 4, !dbg !4854
  %17 = load i16, i16* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 28), align 1, !dbg !4855
  %conv18 = zext i16 %17 to i32, !dbg !4856
  %18 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !4857
  %power19 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %18, i32 0, i32 8, !dbg !4858
  %19 = getelementptr inbounds %struct.acpi_processor_power, %struct.acpi_processor_power* %power19, i32 0, i32 1, !dbg !4859
  %states20 = bitcast %union.anon.0* %19 to [8 x %struct.acpi_processor_cx]*, !dbg !4859
  %arrayidx21 = getelementptr [8 x %struct.acpi_processor_cx], [8 x %struct.acpi_processor_cx]* %states20, i64 0, i64 3, !dbg !4857
  %latency22 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %arrayidx21, i32 0, i32 5, !dbg !4860
  store i32 %conv18, i32* %latency22, align 4, !dbg !4861
  %20 = load i16, i16* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 27), align 1, !dbg !4862
  %conv23 = zext i16 %20 to i32, !dbg !4864
  %cmp = icmp sgt i32 %conv23, 100, !dbg !4865
  br i1 %cmp, label %if.then25, label %if.end30, !dbg !4866

if.then25:                                        ; preds = %if.end
  %21 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !4867
  %power26 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %21, i32 0, i32 8, !dbg !4869
  %22 = getelementptr inbounds %struct.acpi_processor_power, %struct.acpi_processor_power* %power26, i32 0, i32 1, !dbg !4870
  %states27 = bitcast %union.anon.0* %22 to [8 x %struct.acpi_processor_cx]*, !dbg !4870
  %arrayidx28 = getelementptr [8 x %struct.acpi_processor_cx], [8 x %struct.acpi_processor_cx]* %states27, i64 0, i64 2, !dbg !4867
  %address29 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %arrayidx28, i32 0, i32 2, !dbg !4871
  store i32 0, i32* %address29, align 4, !dbg !4872
  br label %if.end30, !dbg !4873

if.end30:                                         ; preds = %if.then25, %if.end
  %23 = load i16, i16* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 28), align 1, !dbg !4874
  %conv31 = zext i16 %23 to i32, !dbg !4876
  %cmp32 = icmp sgt i32 %conv31, 1000, !dbg !4877
  br i1 %cmp32, label %if.then34, label %if.end39, !dbg !4878

if.then34:                                        ; preds = %if.end30
  %24 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !4879
  %power35 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %24, i32 0, i32 8, !dbg !4881
  %25 = getelementptr inbounds %struct.acpi_processor_power, %struct.acpi_processor_power* %power35, i32 0, i32 1, !dbg !4882
  %states36 = bitcast %union.anon.0* %25 to [8 x %struct.acpi_processor_cx]*, !dbg !4882
  %arrayidx37 = getelementptr [8 x %struct.acpi_processor_cx], [8 x %struct.acpi_processor_cx]* %states36, i64 0, i64 3, !dbg !4879
  %address38 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %arrayidx37, i32 0, i32 2, !dbg !4883
  store i32 0, i32* %address38, align 4, !dbg !4884
  br label %if.end39, !dbg !4885

if.end39:                                         ; preds = %if.then34, %if.end30
  %26 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !4886
  %power40 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %26, i32 0, i32 8, !dbg !4887
  %27 = getelementptr inbounds %struct.acpi_processor_power, %struct.acpi_processor_power* %power40, i32 0, i32 1, !dbg !4888
  %states41 = bitcast %union.anon.0* %27 to [8 x %struct.acpi_processor_cx]*, !dbg !4888
  %arrayidx42 = getelementptr [8 x %struct.acpi_processor_cx], [8 x %struct.acpi_processor_cx]* %states41, i64 0, i64 2, !dbg !4886
  %desc = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %arrayidx42, i32 0, i32 7, !dbg !4889
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %desc, i64 0, i64 0, !dbg !4886
  %28 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !4890
  %power43 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %28, i32 0, i32 8, !dbg !4891
  %29 = getelementptr inbounds %struct.acpi_processor_power, %struct.acpi_processor_power* %power43, i32 0, i32 1, !dbg !4892
  %states44 = bitcast %union.anon.0* %29 to [8 x %struct.acpi_processor_cx]*, !dbg !4892
  %arrayidx45 = getelementptr [8 x %struct.acpi_processor_cx], [8 x %struct.acpi_processor_cx]* %states44, i64 0, i64 2, !dbg !4890
  %address46 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %arrayidx45, i32 0, i32 2, !dbg !4893
  %30 = load i32, i32* %address46, align 4, !dbg !4893
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %30) #10, !dbg !4894
  %31 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !4895
  %power47 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %31, i32 0, i32 8, !dbg !4896
  %32 = getelementptr inbounds %struct.acpi_processor_power, %struct.acpi_processor_power* %power47, i32 0, i32 1, !dbg !4897
  %states48 = bitcast %union.anon.0* %32 to [8 x %struct.acpi_processor_cx]*, !dbg !4897
  %arrayidx49 = getelementptr [8 x %struct.acpi_processor_cx], [8 x %struct.acpi_processor_cx]* %states48, i64 0, i64 3, !dbg !4895
  %desc50 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %arrayidx49, i32 0, i32 7, !dbg !4898
  %arraydecay51 = getelementptr inbounds [32 x i8], [32 x i8]* %desc50, i64 0, i64 0, !dbg !4895
  %33 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !4899
  %power52 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %33, i32 0, i32 8, !dbg !4900
  %34 = getelementptr inbounds %struct.acpi_processor_power, %struct.acpi_processor_power* %power52, i32 0, i32 1, !dbg !4901
  %states53 = bitcast %union.anon.0* %34 to [8 x %struct.acpi_processor_cx]*, !dbg !4901
  %arrayidx54 = getelementptr [8 x %struct.acpi_processor_cx], [8 x %struct.acpi_processor_cx]* %states53, i64 0, i64 3, !dbg !4899
  %address55 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %arrayidx54, i32 0, i32 2, !dbg !4902
  %35 = load i32, i32* %address55, align 4, !dbg !4902
  %call56 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay51, i64 32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %35) #10, !dbg !4903
  store i32 0, i32* %retval, align 4, !dbg !4904
  br label %return, !dbg !4904

return:                                           ; preds = %if.end39, %if.then
  %36 = load i32, i32* %retval, align 4, !dbg !4905
  ret i32 %36, !dbg !4905
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_processor_get_power_info_default(%struct.acpi_processor* %pr) #0 !dbg !4906 {
entry:
  %pr.addr = alloca %struct.acpi_processor*, align 8
  store %struct.acpi_processor* %pr, %struct.acpi_processor** %pr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr.addr, metadata !4907, metadata !DIExpression()), !dbg !4908
  %0 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !4909
  %power = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %0, i32 0, i32 8, !dbg !4911
  %1 = getelementptr inbounds %struct.acpi_processor_power, %struct.acpi_processor_power* %power, i32 0, i32 1, !dbg !4912
  %states = bitcast %union.anon.0* %1 to [8 x %struct.acpi_processor_cx]*, !dbg !4912
  %arrayidx = getelementptr [8 x %struct.acpi_processor_cx], [8 x %struct.acpi_processor_cx]* %states, i64 0, i64 1, !dbg !4909
  %valid = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %arrayidx, i32 0, i32 0, !dbg !4913
  %2 = load i8, i8* %valid, align 4, !dbg !4913
  %tobool = icmp ne i8 %2, 0, !dbg !4909
  br i1 %tobool, label %if.end, label %if.then, !dbg !4914

if.then:                                          ; preds = %entry
  %3 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !4915
  %power1 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %3, i32 0, i32 8, !dbg !4917
  %4 = getelementptr inbounds %struct.acpi_processor_power, %struct.acpi_processor_power* %power1, i32 0, i32 1, !dbg !4918
  %states2 = bitcast %union.anon.0* %4 to [8 x %struct.acpi_processor_cx]*, !dbg !4918
  %arrayidx3 = getelementptr [8 x %struct.acpi_processor_cx], [8 x %struct.acpi_processor_cx]* %states2, i64 0, i64 1, !dbg !4915
  %type = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %arrayidx3, i32 0, i32 1, !dbg !4919
  store i8 1, i8* %type, align 1, !dbg !4920
  %5 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !4921
  %power4 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %5, i32 0, i32 8, !dbg !4922
  %6 = getelementptr inbounds %struct.acpi_processor_power, %struct.acpi_processor_power* %power4, i32 0, i32 1, !dbg !4923
  %states5 = bitcast %union.anon.0* %6 to [8 x %struct.acpi_processor_cx]*, !dbg !4923
  %arrayidx6 = getelementptr [8 x %struct.acpi_processor_cx], [8 x %struct.acpi_processor_cx]* %states5, i64 0, i64 1, !dbg !4921
  %valid7 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %arrayidx6, i32 0, i32 0, !dbg !4924
  store i8 1, i8* %valid7, align 4, !dbg !4925
  %7 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !4926
  %power8 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %7, i32 0, i32 8, !dbg !4927
  %8 = getelementptr inbounds %struct.acpi_processor_power, %struct.acpi_processor_power* %power8, i32 0, i32 1, !dbg !4928
  %states9 = bitcast %union.anon.0* %8 to [8 x %struct.acpi_processor_cx]*, !dbg !4928
  %arrayidx10 = getelementptr [8 x %struct.acpi_processor_cx], [8 x %struct.acpi_processor_cx]* %states9, i64 0, i64 1, !dbg !4926
  %entry_method = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %arrayidx10, i32 0, i32 3, !dbg !4929
  store i8 2, i8* %entry_method, align 4, !dbg !4930
  %9 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !4931
  %power11 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %9, i32 0, i32 8, !dbg !4932
  %10 = getelementptr inbounds %struct.acpi_processor_power, %struct.acpi_processor_power* %power11, i32 0, i32 1, !dbg !4933
  %states12 = bitcast %union.anon.0* %10 to [8 x %struct.acpi_processor_cx]*, !dbg !4933
  %arrayidx13 = getelementptr [8 x %struct.acpi_processor_cx], [8 x %struct.acpi_processor_cx]* %states12, i64 0, i64 1, !dbg !4931
  %desc = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %arrayidx13, i32 0, i32 7, !dbg !4934
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %desc, i64 0, i64 0, !dbg !4931
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !4935
  br label %if.end, !dbg !4936

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !4937
  %power14 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %11, i32 0, i32 8, !dbg !4938
  %12 = getelementptr inbounds %struct.acpi_processor_power, %struct.acpi_processor_power* %power14, i32 0, i32 1, !dbg !4939
  %states15 = bitcast %union.anon.0* %12 to [8 x %struct.acpi_processor_cx]*, !dbg !4939
  %arrayidx16 = getelementptr [8 x %struct.acpi_processor_cx], [8 x %struct.acpi_processor_cx]* %states15, i64 0, i64 0, !dbg !4937
  %valid17 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %arrayidx16, i32 0, i32 0, !dbg !4940
  store i8 1, i8* %valid17, align 8, !dbg !4941
  ret i32 0, !dbg !4942
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_processor_power_verify(%struct.acpi_processor* %pr) #0 !dbg !4943 {
entry:
  %pr.addr = alloca %struct.acpi_processor*, align 8
  %i = alloca i32, align 4
  %working = alloca i32, align 4
  %cx = alloca %struct.acpi_processor_cx*, align 8
  store %struct.acpi_processor* %pr, %struct.acpi_processor** %pr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr.addr, metadata !4944, metadata !DIExpression()), !dbg !4945
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4946, metadata !DIExpression()), !dbg !4947
  call void @llvm.dbg.declare(metadata i32* %working, metadata !4948, metadata !DIExpression()), !dbg !4949
  store i32 0, i32* %working, align 4, !dbg !4949
  %0 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !4950
  %power = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %0, i32 0, i32 8, !dbg !4951
  %timer_broadcast_on_state = getelementptr inbounds %struct.acpi_processor_power, %struct.acpi_processor_power* %power, i32 0, i32 2, !dbg !4952
  store i32 2147483647, i32* %timer_broadcast_on_state, align 8, !dbg !4953
  store i32 1, i32* %i, align 4, !dbg !4954
  br label %for.cond, !dbg !4956

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !4957
  %cmp = icmp ult i32 %1, 8, !dbg !4959
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4960

land.rhs:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !dbg !4961
  %3 = load i32, i32* @max_cstate, align 4, !dbg !4962
  %cmp1 = icmp ule i32 %2, %3, !dbg !4963
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ], !dbg !4964
  br i1 %4, label %for.body, label %for.end, !dbg !4965

for.body:                                         ; preds = %land.end
  call void @llvm.dbg.declare(metadata %struct.acpi_processor_cx** %cx, metadata !4966, metadata !DIExpression()), !dbg !4968
  %5 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !4969
  %power2 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %5, i32 0, i32 8, !dbg !4970
  %6 = getelementptr inbounds %struct.acpi_processor_power, %struct.acpi_processor_power* %power2, i32 0, i32 1, !dbg !4971
  %states = bitcast %union.anon.0* %6 to [8 x %struct.acpi_processor_cx]*, !dbg !4971
  %7 = load i32, i32* %i, align 4, !dbg !4972
  %idxprom = zext i32 %7 to i64, !dbg !4969
  %arrayidx = getelementptr [8 x %struct.acpi_processor_cx], [8 x %struct.acpi_processor_cx]* %states, i64 0, i64 %idxprom, !dbg !4969
  store %struct.acpi_processor_cx* %arrayidx, %struct.acpi_processor_cx** %cx, align 8, !dbg !4968
  %8 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %cx, align 8, !dbg !4973
  %type = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %8, i32 0, i32 1, !dbg !4974
  %9 = load i8, i8* %type, align 1, !dbg !4974
  %conv = zext i8 %9 to i32, !dbg !4973
  switch i32 %conv, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
    i32 3, label %sw.bb5
  ], !dbg !4975

sw.bb:                                            ; preds = %for.body
  %10 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %cx, align 8, !dbg !4976
  %valid = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %10, i32 0, i32 0, !dbg !4978
  store i8 1, i8* %valid, align 4, !dbg !4979
  br label %sw.epilog, !dbg !4980

sw.bb3:                                           ; preds = %for.body
  %11 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %cx, align 8, !dbg !4981
  %address = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %11, i32 0, i32 2, !dbg !4983
  %12 = load i32, i32* %address, align 4, !dbg !4983
  %tobool = icmp ne i32 %12, 0, !dbg !4981
  br i1 %tobool, label %if.end, label %if.then, !dbg !4984

if.then:                                          ; preds = %sw.bb3
  br label %sw.epilog, !dbg !4985

if.end:                                           ; preds = %sw.bb3
  %13 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %cx, align 8, !dbg !4986
  %valid4 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %13, i32 0, i32 0, !dbg !4987
  store i8 1, i8* %valid4, align 4, !dbg !4988
  br label %sw.epilog, !dbg !4989

sw.bb5:                                           ; preds = %for.body
  %14 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !4990
  %15 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %cx, align 8, !dbg !4991
  call void @acpi_processor_power_verify_c3(%struct.acpi_processor* %14, %struct.acpi_processor_cx* %15) #10, !dbg !4992
  br label %sw.epilog, !dbg !4993

sw.epilog:                                        ; preds = %for.body, %sw.bb5, %if.end, %if.then, %sw.bb
  %16 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %cx, align 8, !dbg !4994
  %valid6 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %16, i32 0, i32 0, !dbg !4996
  %17 = load i8, i8* %valid6, align 4, !dbg !4996
  %tobool7 = icmp ne i8 %17, 0, !dbg !4994
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !4997

if.then8:                                         ; preds = %sw.epilog
  br label %for.inc, !dbg !4998

if.end9:                                          ; preds = %sw.epilog
  %18 = load i32, i32* %i, align 4, !dbg !4999
  %19 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !5000
  %20 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %cx, align 8, !dbg !5001
  call void @lapic_timer_check_state(i32 %18, %struct.acpi_processor* %19, %struct.acpi_processor_cx* %20) #10, !dbg !5002
  %21 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %cx, align 8, !dbg !5003
  %type10 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %21, i32 0, i32 1, !dbg !5004
  %22 = load i8, i8* %type10, align 1, !dbg !5004
  %conv11 = zext i8 %22 to i32, !dbg !5003
  call void @tsc_check_state(i32 %conv11) #10, !dbg !5005
  %23 = load i32, i32* %working, align 4, !dbg !5006
  %inc = add i32 %23, 1, !dbg !5006
  store i32 %inc, i32* %working, align 4, !dbg !5006
  br label %for.inc, !dbg !5007

for.inc:                                          ; preds = %if.end9, %if.then8
  %24 = load i32, i32* %i, align 4, !dbg !5008
  %inc12 = add i32 %24, 1, !dbg !5008
  store i32 %inc12, i32* %i, align 4, !dbg !5008
  br label %for.cond, !dbg !5009, !llvm.loop !5010

for.end:                                          ; preds = %land.end
  %25 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !5012
  call void @lapic_timer_propagate_broadcast(%struct.acpi_processor* %25) #10, !dbg !5013
  %26 = load i32, i32* %working, align 4, !dbg !5014
  ret i32 %26, !dbg !5015
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_processor_evaluate_cst(i8*, i32, %struct.acpi_processor_power*) #2

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_processor_power_verify_c3(%struct.acpi_processor* %pr, %struct.acpi_processor_cx* %cx) #0 !dbg !2649 {
entry:
  %pr.addr = alloca %struct.acpi_processor*, align 8
  %cx.addr = alloca %struct.acpi_processor_cx*, align 8
  store %struct.acpi_processor* %pr, %struct.acpi_processor** %pr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr.addr, metadata !5016, metadata !DIExpression()), !dbg !5017
  store %struct.acpi_processor_cx* %cx, %struct.acpi_processor_cx** %cx.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_processor_cx** %cx.addr, metadata !5018, metadata !DIExpression()), !dbg !5019
  %0 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %cx.addr, align 8, !dbg !5020
  %address = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %0, i32 0, i32 2, !dbg !5022
  %1 = load i32, i32* %address, align 4, !dbg !5022
  %tobool = icmp ne i32 %1, 0, !dbg !5020
  br i1 %tobool, label %if.else, label %if.then, !dbg !5023

if.then:                                          ; preds = %entry
  br label %return, !dbg !5024

if.else:                                          ; preds = %entry
  %bf.load = load i8, i8* getelementptr inbounds (%struct.acpi_processor_errata, %struct.acpi_processor_errata* @errata, i32 0, i32 1, i32 0), align 4, !dbg !5025
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !5025
  %bf.clear = and i8 %bf.lshr, 1, !dbg !5025
  %tobool1 = icmp ne i8 %bf.clear, 0, !dbg !5027
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !5028

if.then2:                                         ; preds = %if.else
  br label %return, !dbg !5029

if.end:                                           ; preds = %if.else
  br label %if.end3

if.end3:                                          ; preds = %if.end
  %2 = load i32, i32* @acpi_processor_power_verify_c3.bm_check_flag, align 4, !dbg !5031
  %cmp = icmp eq i32 %2, -1, !dbg !5033
  br i1 %cmp, label %if.then4, label %if.else15, !dbg !5034

if.then4:                                         ; preds = %if.end3
  %3 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !5035
  %flags = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %3, i32 0, i32 7, !dbg !5037
  %4 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !5038
  %id = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %4, i32 0, i32 3, !dbg !5039
  %5 = load i32, i32* %id, align 8, !dbg !5039
  call void @acpi_processor_power_init_bm_check(%struct.acpi_processor_flags* %flags, i32 %5) #10, !dbg !5040
  %6 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !5041
  %flags5 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %6, i32 0, i32 7, !dbg !5042
  %7 = bitcast %struct.acpi_processor_flags* %flags5 to i16*, !dbg !5043
  %bf.load6 = load i16, i16* %7, align 8, !dbg !5043
  %bf.lshr7 = lshr i16 %bf.load6, 5, !dbg !5043
  %bf.clear8 = and i16 %bf.lshr7, 1, !dbg !5043
  %bf.cast = trunc i16 %bf.clear8 to i8, !dbg !5043
  %conv = zext i8 %bf.cast to i32, !dbg !5041
  store i32 %conv, i32* @acpi_processor_power_verify_c3.bm_check_flag, align 4, !dbg !5044
  %8 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !5045
  %flags9 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %8, i32 0, i32 7, !dbg !5046
  %9 = bitcast %struct.acpi_processor_flags* %flags9 to i16*, !dbg !5047
  %bf.load10 = load i16, i16* %9, align 8, !dbg !5047
  %bf.lshr11 = lshr i16 %bf.load10, 4, !dbg !5047
  %bf.clear12 = and i16 %bf.lshr11, 1, !dbg !5047
  %bf.cast13 = trunc i16 %bf.clear12 to i8, !dbg !5047
  %conv14 = zext i8 %bf.cast13 to i32, !dbg !5045
  store i32 %conv14, i32* @acpi_processor_power_verify_c3.bm_control_flag, align 4, !dbg !5048
  br label %if.end28, !dbg !5049

if.else15:                                        ; preds = %if.end3
  %10 = load i32, i32* @acpi_processor_power_verify_c3.bm_check_flag, align 4, !dbg !5050
  %conv16 = trunc i32 %10 to i8, !dbg !5050
  %11 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !5052
  %flags17 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %11, i32 0, i32 7, !dbg !5053
  %12 = bitcast %struct.acpi_processor_flags* %flags17 to i16*, !dbg !5054
  %13 = zext i8 %conv16 to i16, !dbg !5055
  %bf.load18 = load i16, i16* %12, align 8, !dbg !5055
  %bf.value = and i16 %13, 1, !dbg !5055
  %bf.shl = shl i16 %bf.value, 5, !dbg !5055
  %bf.clear19 = and i16 %bf.load18, -33, !dbg !5055
  %bf.set = or i16 %bf.clear19, %bf.shl, !dbg !5055
  store i16 %bf.set, i16* %12, align 8, !dbg !5055
  %bf.result.cast = trunc i16 %bf.value to i8, !dbg !5055
  %14 = load i32, i32* @acpi_processor_power_verify_c3.bm_control_flag, align 4, !dbg !5056
  %conv20 = trunc i32 %14 to i8, !dbg !5056
  %15 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !5057
  %flags21 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %15, i32 0, i32 7, !dbg !5058
  %16 = bitcast %struct.acpi_processor_flags* %flags21 to i16*, !dbg !5059
  %17 = zext i8 %conv20 to i16, !dbg !5060
  %bf.load22 = load i16, i16* %16, align 8, !dbg !5060
  %bf.value23 = and i16 %17, 1, !dbg !5060
  %bf.shl24 = shl i16 %bf.value23, 4, !dbg !5060
  %bf.clear25 = and i16 %bf.load22, -17, !dbg !5060
  %bf.set26 = or i16 %bf.clear25, %bf.shl24, !dbg !5060
  store i16 %bf.set26, i16* %16, align 8, !dbg !5060
  %bf.result.cast27 = trunc i16 %bf.value23 to i8, !dbg !5060
  br label %if.end28

if.end28:                                         ; preds = %if.else15, %if.then4
  %18 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !5061
  %flags29 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %18, i32 0, i32 7, !dbg !5063
  %19 = bitcast %struct.acpi_processor_flags* %flags29 to i16*, !dbg !5064
  %bf.load30 = load i16, i16* %19, align 8, !dbg !5064
  %bf.lshr31 = lshr i16 %bf.load30, 5, !dbg !5064
  %bf.clear32 = and i16 %bf.lshr31, 1, !dbg !5064
  %bf.cast33 = trunc i16 %bf.clear32 to i8, !dbg !5064
  %tobool34 = icmp ne i8 %bf.cast33, 0, !dbg !5061
  br i1 %tobool34, label %if.then35, label %if.else55, !dbg !5065

if.then35:                                        ; preds = %if.end28
  %20 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !5066
  %flags36 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %20, i32 0, i32 7, !dbg !5069
  %21 = bitcast %struct.acpi_processor_flags* %flags36 to i16*, !dbg !5070
  %bf.load37 = load i16, i16* %21, align 8, !dbg !5070
  %bf.lshr38 = lshr i16 %bf.load37, 4, !dbg !5070
  %bf.clear39 = and i16 %bf.lshr38, 1, !dbg !5070
  %bf.cast40 = trunc i16 %bf.clear39 to i8, !dbg !5070
  %tobool41 = icmp ne i8 %bf.cast40, 0, !dbg !5066
  br i1 %tobool41, label %if.end54, label %if.then42, !dbg !5071

if.then42:                                        ; preds = %if.then35
  %22 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !5072
  %flags43 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %22, i32 0, i32 7, !dbg !5075
  %23 = bitcast %struct.acpi_processor_flags* %flags43 to i16*, !dbg !5076
  %bf.load44 = load i16, i16* %23, align 8, !dbg !5076
  %bf.lshr45 = lshr i16 %bf.load44, 6, !dbg !5076
  %bf.clear46 = and i16 %bf.lshr45, 1, !dbg !5076
  %bf.cast47 = trunc i16 %bf.clear46 to i8, !dbg !5076
  %conv48 = zext i8 %bf.cast47 to i32, !dbg !5072
  %cmp49 = icmp ne i32 %conv48, 1, !dbg !5077
  br i1 %cmp49, label %if.then51, label %if.else52, !dbg !5078

if.then51:                                        ; preds = %if.then42
  br label %return, !dbg !5079

if.else52:                                        ; preds = %if.then42
  br label %if.end53

if.end53:                                         ; preds = %if.else52
  br label %if.end54, !dbg !5081

if.end54:                                         ; preds = %if.end53, %if.then35
  br label %if.end59, !dbg !5082

if.else55:                                        ; preds = %if.end28
  %24 = load i32, i32* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 38), align 1, !dbg !5083
  %and = and i32 %24, 1, !dbg !5086
  %tobool56 = icmp ne i32 %and, 0, !dbg !5086
  br i1 %tobool56, label %if.end58, label %if.then57, !dbg !5087

if.then57:                                        ; preds = %if.else55
  br label %return, !dbg !5088

if.end58:                                         ; preds = %if.else55
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.end54
  %25 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %cx.addr, align 8, !dbg !5090
  %valid = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %25, i32 0, i32 0, !dbg !5091
  store i8 1, i8* %valid, align 4, !dbg !5092
  %call = call i32 @acpi_write_bit_register(i32 15, i32 1) #10, !dbg !5093
  br label %return, !dbg !5094

return:                                           ; preds = %if.end59, %if.then57, %if.then51, %if.then2, %if.then
  ret void, !dbg !5095
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @lapic_timer_check_state(i32 %state, %struct.acpi_processor* %pr, %struct.acpi_processor_cx* %cx) #0 !dbg !5096 {
entry:
  %state.addr = alloca i32, align 4
  %pr.addr = alloca %struct.acpi_processor*, align 8
  %cx.addr = alloca %struct.acpi_processor_cx*, align 8
  %pwr = alloca %struct.acpi_processor_power*, align 8
  %type = alloca i8, align 1
  store i32 %state, i32* %state.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %state.addr, metadata !5099, metadata !DIExpression()), !dbg !5100
  store %struct.acpi_processor* %pr, %struct.acpi_processor** %pr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr.addr, metadata !5101, metadata !DIExpression()), !dbg !5102
  store %struct.acpi_processor_cx* %cx, %struct.acpi_processor_cx** %cx.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_processor_cx** %cx.addr, metadata !5103, metadata !DIExpression()), !dbg !5104
  call void @llvm.dbg.declare(metadata %struct.acpi_processor_power** %pwr, metadata !5105, metadata !DIExpression()), !dbg !5107
  %0 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !5108
  %power = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %0, i32 0, i32 8, !dbg !5109
  store %struct.acpi_processor_power* %power, %struct.acpi_processor_power** %pwr, align 8, !dbg !5107
  call void @llvm.dbg.declare(metadata i8* %type, metadata !5110, metadata !DIExpression()), !dbg !5111
  %1 = load i32, i32* @local_apic_timer_c2_ok, align 4, !dbg !5112
  %tobool = icmp ne i32 %1, 0, !dbg !5112
  %2 = zext i1 %tobool to i64, !dbg !5112
  %cond = select i1 %tobool, i32 3, i32 2, !dbg !5112
  %conv = trunc i32 %cond to i8, !dbg !5112
  store i8 %conv, i8* %type, align 1, !dbg !5111
  br i1 false, label %cond.true, label %cond.false, !dbg !5113

cond.true:                                        ; preds = %entry
  br i1 true, label %if.then, label %if.end, !dbg !5114

cond.false:                                       ; preds = %entry
  %call = call zeroext i1 @test_bit(i64 450, i64* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 12, i32 0)) #10, !dbg !5114
  br i1 %call, label %if.then, label %if.end, !dbg !5113

if.then:                                          ; preds = %cond.false, %cond.true
  br label %if.end19, !dbg !5116

if.end:                                           ; preds = %cond.false, %cond.true
  br i1 false, label %cond.true2, label %cond.false3, !dbg !5117

cond.true2:                                       ; preds = %if.end
  br i1 true, label %if.then6, label %if.end7, !dbg !5118

cond.false3:                                      ; preds = %if.end
  %call4 = call zeroext i1 @test_bit(i64 612, i64* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 12, i32 0)) #10, !dbg !5118
  br i1 %call4, label %if.then6, label %if.end7, !dbg !5117

if.then6:                                         ; preds = %cond.false3, %cond.true2
  store i8 1, i8* %type, align 1, !dbg !5120
  br label %if.end7, !dbg !5121

if.end7:                                          ; preds = %if.then6, %cond.false3, %cond.true2
  %3 = load %struct.acpi_processor_power*, %struct.acpi_processor_power** %pwr, align 8, !dbg !5122
  %timer_broadcast_on_state = getelementptr inbounds %struct.acpi_processor_power, %struct.acpi_processor_power* %3, i32 0, i32 2, !dbg !5124
  %4 = load i32, i32* %timer_broadcast_on_state, align 8, !dbg !5124
  %5 = load i32, i32* %state.addr, align 4, !dbg !5125
  %cmp = icmp slt i32 %4, %5, !dbg !5126
  br i1 %cmp, label %if.then9, label %if.end10, !dbg !5127

if.then9:                                         ; preds = %if.end7
  br label %if.end19, !dbg !5128

if.end10:                                         ; preds = %if.end7
  %6 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %cx.addr, align 8, !dbg !5129
  %type11 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %6, i32 0, i32 1, !dbg !5131
  %7 = load i8, i8* %type11, align 1, !dbg !5131
  %conv12 = zext i8 %7 to i32, !dbg !5129
  %8 = load i8, i8* %type, align 1, !dbg !5132
  %conv13 = zext i8 %8 to i32, !dbg !5132
  %cmp14 = icmp sge i32 %conv12, %conv13, !dbg !5133
  br i1 %cmp14, label %if.then16, label %if.end19, !dbg !5134

if.then16:                                        ; preds = %if.end10
  %9 = load i32, i32* %state.addr, align 4, !dbg !5135
  %10 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !5136
  %power17 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %10, i32 0, i32 8, !dbg !5137
  %timer_broadcast_on_state18 = getelementptr inbounds %struct.acpi_processor_power, %struct.acpi_processor_power* %power17, i32 0, i32 2, !dbg !5138
  store i32 %9, i32* %timer_broadcast_on_state18, align 8, !dbg !5139
  br label %if.end19, !dbg !5136

if.end19:                                         ; preds = %if.then, %if.then9, %if.then16, %if.end10
  ret void, !dbg !5140
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @tsc_check_state(i32 %state) #0 !dbg !5141 {
entry:
  %state.addr = alloca i32, align 4
  store i32 %state, i32* %state.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %state.addr, metadata !5144, metadata !DIExpression()), !dbg !5145
  %0 = load i8, i8* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 1), align 1, !dbg !5146
  %conv = zext i8 %0 to i32, !dbg !5147
  switch i32 %conv, label %sw.default [
    i32 9, label %sw.bb
    i32 2, label %sw.bb
    i32 0, label %sw.bb
    i32 5, label %sw.bb
    i32 10, label %sw.bb
  ], !dbg !5148

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry
  br i1 false, label %cond.true, label %cond.false, !dbg !5149

cond.true:                                        ; preds = %sw.bb
  br i1 true, label %if.then, label %if.end, !dbg !5151

cond.false:                                       ; preds = %sw.bb
  %call = call zeroext i1 @test_bit(i64 120, i64* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 12, i32 0)) #10, !dbg !5151
  br i1 %call, label %if.then, label %if.end, !dbg !5149

if.then:                                          ; preds = %cond.false, %cond.true
  br label %sw.epilog, !dbg !5153

if.end:                                           ; preds = %cond.false, %cond.true
  br label %sw.default, !dbg !5151

sw.default:                                       ; preds = %entry, %if.end
  %1 = load i32, i32* %state.addr, align 4, !dbg !5154
  %cmp = icmp sgt i32 %1, 1, !dbg !5156
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !5157

if.then3:                                         ; preds = %sw.default
  call void @mark_tsc_unstable(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !5158
  br label %if.end4, !dbg !5158

if.end4:                                          ; preds = %if.then3, %sw.default
  br label %sw.epilog, !dbg !5159

sw.epilog:                                        ; preds = %if.then, %if.end4
  ret void, !dbg !5160
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @lapic_timer_propagate_broadcast(%struct.acpi_processor* %pr) #0 !dbg !5161 {
entry:
  %pr.addr = alloca %struct.acpi_processor*, align 8
  store %struct.acpi_processor* %pr, %struct.acpi_processor** %pr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr.addr, metadata !5164, metadata !DIExpression()), !dbg !5165
  %0 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !5166
  %id = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %0, i32 0, i32 3, !dbg !5167
  %1 = load i32, i32* %id, align 8, !dbg !5167
  %2 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !5168
  %3 = bitcast %struct.acpi_processor* %2 to i8*, !dbg !5169
  %call = call i32 @smp_call_function_single(i32 %1, void (i8*)* @__lapic_timer_propagate_broadcast, i8* %3, i32 1) #10, !dbg !5170
  ret void, !dbg !5171
}

; Function Attrs: noredzone
declare dso_local void @acpi_processor_power_init_bm_check(%struct.acpi_processor_flags*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_write_bit_register(i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #0 !dbg !5172 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !5179, metadata !DIExpression()), !dbg !5181
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !5183, metadata !DIExpression()), !dbg !5184
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !5185, metadata !DIExpression()), !dbg !5186
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5187, metadata !DIExpression()), !dbg !5189
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5191, metadata !DIExpression()), !dbg !5192
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5193, metadata !DIExpression()), !dbg !5201
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5203, metadata !DIExpression()), !dbg !5204
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5205, metadata !DIExpression()), !dbg !5206
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5207, metadata !DIExpression()), !dbg !5208
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5209
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5210
  %div = sdiv i64 %1, 64, !dbg !5210
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5211
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5209
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5212
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5213
  %conv.i = trunc i64 %4 to i32, !dbg !5213
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #13, !dbg !5214
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5215
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5215
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #13, !dbg !5215
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5216
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !5216
  br i1 %8, label %cond.true, label %cond.false, !dbg !5216

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !5216
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !5216
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !5217
  %and.i = and i64 %11, 63, !dbg !5218
  %shl.i = shl i64 1, %and.i, !dbg !5219
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !5220
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !5221
  %shr.i = ashr i64 %13, 6, !dbg !5222
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !5220
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !5220
  %and1.i = and i64 %shl.i, %14, !dbg !5223
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !5224
  %conv = zext i1 %cmp.i to i32, !dbg !5216
  br label %cond.end, !dbg !5216

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !5216
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !5216
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !5225
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !5226
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #9, !dbg !5227, !srcloc !5228
  store i8 %19, i8* %oldbit.i, align 1, !dbg !5227
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !5229
  %tobool.i = trunc i8 %20 to i1, !dbg !5229
  %conv2 = zext i1 %tobool.i to i32, !dbg !5216
  br label %cond.end, !dbg !5216

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !5216
  %tobool = icmp ne i32 %cond, 0, !dbg !5216
  ret i1 %tobool, !dbg !5230
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !5231 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5235, metadata !DIExpression()), !dbg !5236
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5237, metadata !DIExpression()), !dbg !5238
  ret i1 true, !dbg !5239
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !5240 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5244, metadata !DIExpression()), !dbg !5245
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5246, metadata !DIExpression()), !dbg !5247
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5248, metadata !DIExpression()), !dbg !5249
  ret void, !dbg !5250
}

; Function Attrs: noredzone
declare dso_local void @mark_tsc_unstable(i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @smp_call_function_single(i32, void (i8*)*, i8*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__lapic_timer_propagate_broadcast(i8* %arg) #0 !dbg !5251 {
entry:
  %arg.addr = alloca i8*, align 8
  %pr = alloca %struct.acpi_processor*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !5252, metadata !DIExpression()), !dbg !5253
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr, metadata !5254, metadata !DIExpression()), !dbg !5255
  %0 = load i8*, i8** %arg.addr, align 8, !dbg !5256
  %1 = bitcast i8* %0 to %struct.acpi_processor*, !dbg !5257
  store %struct.acpi_processor* %1, %struct.acpi_processor** %pr, align 8, !dbg !5255
  %2 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !5258
  %power = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %2, i32 0, i32 8, !dbg !5260
  %timer_broadcast_on_state = getelementptr inbounds %struct.acpi_processor_power, %struct.acpi_processor_power* %power, i32 0, i32 2, !dbg !5261
  %3 = load i32, i32* %timer_broadcast_on_state, align 8, !dbg !5261
  %cmp = icmp slt i32 %3, 2147483647, !dbg !5262
  br i1 %cmp, label %if.then, label %if.else, !dbg !5263

if.then:                                          ; preds = %entry
  call void @tick_broadcast_enable() #10, !dbg !5264
  br label %if.end, !dbg !5264

if.else:                                          ; preds = %entry
  call void @tick_broadcast_disable() #10, !dbg !5265
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !5266
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @tick_broadcast_enable() #0 !dbg !5267 {
entry:
  call void @tick_broadcast_control(i32 1) #10, !dbg !5268
  ret void, !dbg !5269
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @tick_broadcast_disable() #0 !dbg !5270 {
entry:
  call void @tick_broadcast_control(i32 0) #10, !dbg !5271
  ret void, !dbg !5272
}

; Function Attrs: noredzone
declare dso_local void @tick_broadcast_control(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_processor_setup_cpuidle_cx(%struct.acpi_processor* %pr, %struct.cpuidle_device* %dev) #0 !dbg !5273 {
entry:
  %retval = alloca i32, align 4
  %pr.addr = alloca %struct.acpi_processor*, align 8
  %dev.addr = alloca %struct.cpuidle_device*, align 8
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %cx = alloca %struct.acpi_processor_cx*, align 8
  %state = alloca %struct.cpuidle_state*, align 8
  %tmp = alloca %struct.acpi_processor_cx**, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp7 = alloca %struct.acpi_processor_cx**, align 8
  store %struct.acpi_processor* %pr, %struct.acpi_processor** %pr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr.addr, metadata !5274, metadata !DIExpression()), !dbg !5275
  store %struct.cpuidle_device* %dev, %struct.cpuidle_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %dev.addr, metadata !5276, metadata !DIExpression()), !dbg !5277
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5278, metadata !DIExpression()), !dbg !5279
  call void @llvm.dbg.declare(metadata i32* %count, metadata !5280, metadata !DIExpression()), !dbg !5281
  store i32 1, i32* %count, align 4, !dbg !5281
  call void @llvm.dbg.declare(metadata %struct.acpi_processor_cx** %cx, metadata !5282, metadata !DIExpression()), !dbg !5283
  call void @llvm.dbg.declare(metadata %struct.cpuidle_state** %state, metadata !5284, metadata !DIExpression()), !dbg !5286
  %0 = load i32, i32* @max_cstate, align 4, !dbg !5287
  %cmp = icmp eq i32 %0, 0, !dbg !5289
  br i1 %cmp, label %if.then, label %if.end, !dbg !5290

if.then:                                          ; preds = %entry
  store i32 1, i32* @max_cstate, align 4, !dbg !5291
  br label %if.end, !dbg !5292

if.end:                                           ; preds = %if.then, %entry
  store i32 1, i32* %i, align 4, !dbg !5293
  br label %for.cond, !dbg !5295

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4, !dbg !5296
  %cmp1 = icmp slt i32 %1, 8, !dbg !5298
  br i1 %cmp1, label %land.rhs, label %land.end, !dbg !5299

land.rhs:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !dbg !5300
  %3 = load i32, i32* @max_cstate, align 4, !dbg !5301
  %cmp2 = icmp ule i32 %2, %3, !dbg !5302
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %cmp2, %land.rhs ], !dbg !5303
  br i1 %4, label %for.body, label %for.end, !dbg !5304

for.body:                                         ; preds = %land.end
  %5 = load i32, i32* %count, align 4, !dbg !5305
  %idxprom = sext i32 %5 to i64, !dbg !5307
  %arrayidx = getelementptr [10 x %struct.cpuidle_state], [10 x %struct.cpuidle_state]* getelementptr inbounds (%struct.cpuidle_driver, %struct.cpuidle_driver* @acpi_idle_driver, i32 0, i32 3), i64 0, i64 %idxprom, !dbg !5307
  store %struct.cpuidle_state* %arrayidx, %struct.cpuidle_state** %state, align 8, !dbg !5308
  %6 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !5309
  %power = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %6, i32 0, i32 8, !dbg !5310
  %7 = getelementptr inbounds %struct.acpi_processor_power, %struct.acpi_processor_power* %power, i32 0, i32 1, !dbg !5311
  %states = bitcast %union.anon.0* %7 to [8 x %struct.acpi_processor_cx]*, !dbg !5311
  %8 = load i32, i32* %i, align 4, !dbg !5312
  %idxprom3 = sext i32 %8 to i64, !dbg !5309
  %arrayidx4 = getelementptr [8 x %struct.acpi_processor_cx], [8 x %struct.acpi_processor_cx]* %states, i64 0, i64 %idxprom3, !dbg !5309
  store %struct.acpi_processor_cx* %arrayidx4, %struct.acpi_processor_cx** %cx, align 8, !dbg !5313
  %9 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %cx, align 8, !dbg !5314
  %valid = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %9, i32 0, i32 0, !dbg !5316
  %10 = load i8, i8* %valid, align 4, !dbg !5316
  %tobool = icmp ne i8 %10, 0, !dbg !5314
  br i1 %tobool, label %if.end6, label %if.then5, !dbg !5317

if.then5:                                         ; preds = %for.body
  br label %for.inc, !dbg !5318

if.end6:                                          ; preds = %for.body
  %11 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %cx, align 8, !dbg !5319
  %12 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !5320
  %cpu = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %12, i32 0, i32 1, !dbg !5320
  %13 = load i32, i32* %cpu, align 4, !dbg !5320
  br label %do.body, !dbg !5322

do.body:                                          ; preds = %if.end6
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !5324, metadata !DIExpression()), !dbg !5326
  store i8* null, i8** %__vpp_verify, align 8, !dbg !5326
  %14 = load i8*, i8** %__vpp_verify, align 8, !dbg !5326
  br label %do.end, !dbg !5326

do.end:                                           ; preds = %do.body
  %15 = load i32, i32* %count, align 4, !dbg !5322
  %idxprom8 = sext i32 %15 to i64, !dbg !5322
  %arrayidx9 = getelementptr [10 x %struct.acpi_processor_cx*], [10 x %struct.acpi_processor_cx*]* @acpi_cstate, i64 0, i64 %idxprom8, !dbg !5322
  store %struct.acpi_processor_cx** %arrayidx9, %struct.acpi_processor_cx*** %tmp7, align 8, !dbg !5326
  %16 = load %struct.acpi_processor_cx**, %struct.acpi_processor_cx*** %tmp7, align 8, !dbg !5322
  store %struct.acpi_processor_cx** %16, %struct.acpi_processor_cx*** %tmp, align 8, !dbg !5320
  %17 = load %struct.acpi_processor_cx**, %struct.acpi_processor_cx*** %tmp, align 8, !dbg !5320
  store %struct.acpi_processor_cx* %11, %struct.acpi_processor_cx** %17, align 8, !dbg !5327
  %18 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !5328
  %19 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %cx, align 8, !dbg !5330
  %call = call zeroext i1 @lapic_timer_needs_broadcast(%struct.acpi_processor* %18, %struct.acpi_processor_cx* %19) #10, !dbg !5331
  br i1 %call, label %if.then10, label %if.end12, !dbg !5332

if.then10:                                        ; preds = %do.end
  %20 = load %struct.cpuidle_state*, %struct.cpuidle_state** %state, align 8, !dbg !5333
  %flags = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %20, i32 0, i32 4, !dbg !5334
  %21 = load i32, i32* %flags, align 8, !dbg !5335
  %conv = zext i32 %21 to i64, !dbg !5335
  %or = or i64 %conv, 4, !dbg !5335
  %conv11 = trunc i64 %or to i32, !dbg !5335
  store i32 %conv11, i32* %flags, align 8, !dbg !5335
  br label %if.end12, !dbg !5333

if.end12:                                         ; preds = %if.then10, %do.end
  %22 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %cx, align 8, !dbg !5336
  %type = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %22, i32 0, i32 1, !dbg !5338
  %23 = load i8, i8* %type, align 1, !dbg !5338
  %conv13 = zext i8 %23 to i32, !dbg !5336
  %cmp14 = icmp eq i32 %conv13, 3, !dbg !5339
  br i1 %cmp14, label %if.then16, label %if.end29, !dbg !5340

if.then16:                                        ; preds = %if.end12
  %24 = load %struct.cpuidle_state*, %struct.cpuidle_state** %state, align 8, !dbg !5341
  %flags17 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %24, i32 0, i32 4, !dbg !5343
  %25 = load i32, i32* %flags17, align 8, !dbg !5344
  %conv18 = zext i32 %25 to i64, !dbg !5344
  %or19 = or i64 %conv18, 32, !dbg !5344
  %conv20 = trunc i64 %or19 to i32, !dbg !5344
  store i32 %conv20, i32* %flags17, align 8, !dbg !5344
  %26 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !5345
  %flags21 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %26, i32 0, i32 7, !dbg !5347
  %27 = bitcast %struct.acpi_processor_flags* %flags21 to i16*, !dbg !5348
  %bf.load = load i16, i16* %27, align 8, !dbg !5348
  %bf.lshr = lshr i16 %bf.load, 5, !dbg !5348
  %bf.clear = and i16 %bf.lshr, 1, !dbg !5348
  %bf.cast = trunc i16 %bf.clear to i8, !dbg !5348
  %tobool22 = icmp ne i8 %bf.cast, 0, !dbg !5345
  br i1 %tobool22, label %if.then23, label %if.end28, !dbg !5349

if.then23:                                        ; preds = %if.then16
  %28 = load %struct.cpuidle_state*, %struct.cpuidle_state** %state, align 8, !dbg !5350
  %flags24 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %28, i32 0, i32 4, !dbg !5351
  %29 = load i32, i32* %flags24, align 8, !dbg !5352
  %conv25 = zext i32 %29 to i64, !dbg !5352
  %or26 = or i64 %conv25, 64, !dbg !5352
  %conv27 = trunc i64 %or26 to i32, !dbg !5352
  store i32 %conv27, i32* %flags24, align 8, !dbg !5352
  br label %if.end28, !dbg !5350

if.end28:                                         ; preds = %if.then23, %if.then16
  br label %if.end29, !dbg !5353

if.end29:                                         ; preds = %if.end28, %if.end12
  %30 = load i32, i32* %count, align 4, !dbg !5354
  %inc = add i32 %30, 1, !dbg !5354
  store i32 %inc, i32* %count, align 4, !dbg !5354
  %31 = load i32, i32* %count, align 4, !dbg !5355
  %cmp30 = icmp eq i32 %31, 10, !dbg !5357
  br i1 %cmp30, label %if.then32, label %if.end33, !dbg !5358

if.then32:                                        ; preds = %if.end29
  br label %for.end, !dbg !5359

if.end33:                                         ; preds = %if.end29
  br label %for.inc, !dbg !5360

for.inc:                                          ; preds = %if.end33, %if.then5
  %32 = load i32, i32* %i, align 4, !dbg !5361
  %inc34 = add i32 %32, 1, !dbg !5361
  store i32 %inc34, i32* %i, align 4, !dbg !5361
  br label %for.cond, !dbg !5362, !llvm.loop !5363

for.end:                                          ; preds = %if.then32, %land.end
  %33 = load i32, i32* %count, align 4, !dbg !5365
  %tobool35 = icmp ne i32 %33, 0, !dbg !5365
  br i1 %tobool35, label %if.end37, label %if.then36, !dbg !5367

if.then36:                                        ; preds = %for.end
  store i32 -22, i32* %retval, align 4, !dbg !5368
  br label %return, !dbg !5368

if.end37:                                         ; preds = %for.end
  store i32 0, i32* %retval, align 4, !dbg !5369
  br label %return, !dbg !5369

return:                                           ; preds = %if.end37, %if.then36
  %34 = load i32, i32* %retval, align 4, !dbg !5370
  ret i32 %34, !dbg !5370
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @lapic_timer_needs_broadcast(%struct.acpi_processor* %pr, %struct.acpi_processor_cx* %cx) #0 !dbg !5371 {
entry:
  %pr.addr = alloca %struct.acpi_processor*, align 8
  %cx.addr = alloca %struct.acpi_processor_cx*, align 8
  store %struct.acpi_processor* %pr, %struct.acpi_processor** %pr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr.addr, metadata !5374, metadata !DIExpression()), !dbg !5375
  store %struct.acpi_processor_cx* %cx, %struct.acpi_processor_cx** %cx.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_processor_cx** %cx.addr, metadata !5376, metadata !DIExpression()), !dbg !5377
  %0 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %cx.addr, align 8, !dbg !5378
  %1 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !5379
  %power = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %1, i32 0, i32 8, !dbg !5380
  %2 = getelementptr inbounds %struct.acpi_processor_power, %struct.acpi_processor_power* %power, i32 0, i32 1, !dbg !5381
  %states = bitcast %union.anon.0* %2 to [8 x %struct.acpi_processor_cx]*, !dbg !5381
  %arraydecay = getelementptr inbounds [8 x %struct.acpi_processor_cx], [8 x %struct.acpi_processor_cx]* %states, i64 0, i64 0, !dbg !5379
  %sub.ptr.lhs.cast = ptrtoint %struct.acpi_processor_cx* %0 to i64, !dbg !5382
  %sub.ptr.rhs.cast = ptrtoint %struct.acpi_processor_cx* %arraydecay to i64, !dbg !5382
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !5382
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 52, !dbg !5382
  %3 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !5383
  %power1 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %3, i32 0, i32 8, !dbg !5384
  %timer_broadcast_on_state = getelementptr inbounds %struct.acpi_processor_power, %struct.acpi_processor_power* %power1, i32 0, i32 2, !dbg !5385
  %4 = load i32, i32* %timer_broadcast_on_state, align 8, !dbg !5385
  %conv = sext i32 %4 to i64, !dbg !5383
  %cmp = icmp sge i64 %sub.ptr.div, %conv, !dbg !5386
  ret i1 %cmp, !dbg !5387
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cpus_read_lock() #0 !dbg !5388 {
entry:
  ret void, !dbg !5389
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_processor_setup_lpi_states(%struct.acpi_processor* %pr) #0 !dbg !5390 {
entry:
  %retval = alloca i32, align 4
  %pr.addr = alloca %struct.acpi_processor*, align 8
  %i = alloca i32, align 4
  %lpi = alloca %struct.acpi_lpi_state*, align 8
  %state = alloca %struct.cpuidle_state*, align 8
  %drv = alloca %struct.cpuidle_driver*, align 8
  store %struct.acpi_processor* %pr, %struct.acpi_processor** %pr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr.addr, metadata !5391, metadata !DIExpression()), !dbg !5392
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5393, metadata !DIExpression()), !dbg !5394
  call void @llvm.dbg.declare(metadata %struct.acpi_lpi_state** %lpi, metadata !5395, metadata !DIExpression()), !dbg !5396
  call void @llvm.dbg.declare(metadata %struct.cpuidle_state** %state, metadata !5397, metadata !DIExpression()), !dbg !5398
  call void @llvm.dbg.declare(metadata %struct.cpuidle_driver** %drv, metadata !5399, metadata !DIExpression()), !dbg !5400
  store %struct.cpuidle_driver* @acpi_idle_driver, %struct.cpuidle_driver** %drv, align 8, !dbg !5400
  %0 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !5401
  %flags = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %0, i32 0, i32 7, !dbg !5403
  %1 = bitcast %struct.acpi_processor_flags* %flags to i16*, !dbg !5404
  %bf.load = load i16, i16* %1, align 8, !dbg !5404
  %bf.lshr = lshr i16 %bf.load, 7, !dbg !5404
  %bf.clear = and i16 %bf.lshr, 1, !dbg !5404
  %bf.cast = trunc i16 %bf.clear to i8, !dbg !5404
  %tobool = icmp ne i8 %bf.cast, 0, !dbg !5401
  br i1 %tobool, label %if.end, label %if.then, !dbg !5405

if.then:                                          ; preds = %entry
  store i32 -95, i32* %retval, align 4, !dbg !5406
  br label %return, !dbg !5406

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !5407
  br label %for.cond, !dbg !5409

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4, !dbg !5410
  %3 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !5412
  %power = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %3, i32 0, i32 8, !dbg !5413
  %count = getelementptr inbounds %struct.acpi_processor_power, %struct.acpi_processor_power* %power, i32 0, i32 0, !dbg !5414
  %4 = load i32, i32* %count, align 8, !dbg !5414
  %cmp = icmp slt i32 %2, %4, !dbg !5415
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !5416

land.rhs:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !5417
  %cmp1 = icmp slt i32 %5, 10, !dbg !5418
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ], !dbg !5419
  br i1 %6, label %for.body, label %for.end, !dbg !5420

for.body:                                         ; preds = %land.end
  %7 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !5421
  %power2 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %7, i32 0, i32 8, !dbg !5423
  %8 = getelementptr inbounds %struct.acpi_processor_power, %struct.acpi_processor_power* %power2, i32 0, i32 1, !dbg !5424
  %lpi_states = bitcast %union.anon.0* %8 to [8 x %struct.acpi_lpi_state]*, !dbg !5424
  %9 = load i32, i32* %i, align 4, !dbg !5425
  %idxprom = sext i32 %9 to i64, !dbg !5421
  %arrayidx = getelementptr [8 x %struct.acpi_lpi_state], [8 x %struct.acpi_lpi_state]* %lpi_states, i64 0, i64 %idxprom, !dbg !5421
  store %struct.acpi_lpi_state* %arrayidx, %struct.acpi_lpi_state** %lpi, align 8, !dbg !5426
  %10 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv, align 8, !dbg !5427
  %states = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %10, i32 0, i32 3, !dbg !5428
  %11 = load i32, i32* %i, align 4, !dbg !5429
  %idxprom3 = sext i32 %11 to i64, !dbg !5427
  %arrayidx4 = getelementptr [10 x %struct.cpuidle_state], [10 x %struct.cpuidle_state]* %states, i64 0, i64 %idxprom3, !dbg !5427
  store %struct.cpuidle_state* %arrayidx4, %struct.cpuidle_state** %state, align 8, !dbg !5430
  %12 = load %struct.cpuidle_state*, %struct.cpuidle_state** %state, align 8, !dbg !5431
  %name = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %12, i32 0, i32 0, !dbg !5432
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %name, i64 0, i64 0, !dbg !5431
  %13 = load i32, i32* %i, align 4, !dbg !5433
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 %13) #10, !dbg !5434
  %14 = load %struct.cpuidle_state*, %struct.cpuidle_state** %state, align 8, !dbg !5435
  %desc = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %14, i32 0, i32 1, !dbg !5436
  %arraydecay5 = getelementptr inbounds [32 x i8], [32 x i8]* %desc, i64 0, i64 0, !dbg !5435
  %15 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %lpi, align 8, !dbg !5437
  %desc6 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %15, i32 0, i32 9, !dbg !5438
  %arraydecay7 = getelementptr inbounds [32 x i8], [32 x i8]* %desc6, i64 0, i64 0, !dbg !5437
  %call8 = call i64 @strlcpy(i8* %arraydecay5, i8* %arraydecay7, i64 32) #10, !dbg !5439
  %16 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %lpi, align 8, !dbg !5440
  %wake_latency = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %16, i32 0, i32 1, !dbg !5441
  %17 = load i32, i32* %wake_latency, align 4, !dbg !5441
  %18 = load %struct.cpuidle_state*, %struct.cpuidle_state** %state, align 8, !dbg !5442
  %exit_latency = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %18, i32 0, i32 5, !dbg !5443
  store i32 %17, i32* %exit_latency, align 4, !dbg !5444
  %19 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %lpi, align 8, !dbg !5445
  %min_residency = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %19, i32 0, i32 0, !dbg !5446
  %20 = load i32, i32* %min_residency, align 8, !dbg !5446
  %21 = load %struct.cpuidle_state*, %struct.cpuidle_state** %state, align 8, !dbg !5447
  %target_residency = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %21, i32 0, i32 7, !dbg !5448
  store i32 %20, i32* %target_residency, align 4, !dbg !5449
  %22 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %lpi, align 8, !dbg !5450
  %arch_flags = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %22, i32 0, i32 3, !dbg !5452
  %23 = load i32, i32* %arch_flags, align 4, !dbg !5452
  %tobool9 = icmp ne i32 %23, 0, !dbg !5450
  br i1 %tobool9, label %if.then10, label %if.end13, !dbg !5453

if.then10:                                        ; preds = %for.body
  %24 = load %struct.cpuidle_state*, %struct.cpuidle_state** %state, align 8, !dbg !5454
  %flags11 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %24, i32 0, i32 4, !dbg !5455
  %25 = load i32, i32* %flags11, align 8, !dbg !5456
  %conv = zext i32 %25 to i64, !dbg !5456
  %or = or i64 %conv, 4, !dbg !5456
  %conv12 = trunc i64 %or to i32, !dbg !5456
  store i32 %conv12, i32* %flags11, align 8, !dbg !5456
  br label %if.end13, !dbg !5454

if.end13:                                         ; preds = %if.then10, %for.body
  %26 = load %struct.cpuidle_state*, %struct.cpuidle_state** %state, align 8, !dbg !5457
  %enter = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %26, i32 0, i32 8, !dbg !5458
  store i32 (%struct.cpuidle_device*, %struct.cpuidle_driver*, i32)* @acpi_idle_lpi_enter, i32 (%struct.cpuidle_device*, %struct.cpuidle_driver*, i32)** %enter, align 8, !dbg !5459
  %27 = load i32, i32* %i, align 4, !dbg !5460
  %28 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv, align 8, !dbg !5461
  %safe_state_index = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %28, i32 0, i32 5, !dbg !5462
  store i32 %27, i32* %safe_state_index, align 4, !dbg !5463
  br label %for.inc, !dbg !5464

for.inc:                                          ; preds = %if.end13
  %29 = load i32, i32* %i, align 4, !dbg !5465
  %inc = add i32 %29, 1, !dbg !5465
  store i32 %inc, i32* %i, align 4, !dbg !5465
  br label %for.cond, !dbg !5466, !llvm.loop !5467

for.end:                                          ; preds = %land.end
  %30 = load i32, i32* %i, align 4, !dbg !5469
  %31 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv, align 8, !dbg !5470
  %state_count = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %31, i32 0, i32 4, !dbg !5471
  store i32 %30, i32* %state_count, align 8, !dbg !5472
  store i32 0, i32* %retval, align 4, !dbg !5473
  br label %return, !dbg !5473

return:                                           ; preds = %for.end, %if.then
  %32 = load i32, i32* %retval, align 4, !dbg !5474
  ret i32 %32, !dbg !5474
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_processor_setup_cstates(%struct.acpi_processor* %pr) #0 !dbg !5475 {
entry:
  %retval = alloca i32, align 4
  %pr.addr = alloca %struct.acpi_processor*, align 8
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %cx = alloca %struct.acpi_processor_cx*, align 8
  %state = alloca %struct.cpuidle_state*, align 8
  %drv = alloca %struct.cpuidle_driver*, align 8
  store %struct.acpi_processor* %pr, %struct.acpi_processor** %pr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr.addr, metadata !5476, metadata !DIExpression()), !dbg !5477
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5478, metadata !DIExpression()), !dbg !5479
  call void @llvm.dbg.declare(metadata i32* %count, metadata !5480, metadata !DIExpression()), !dbg !5481
  call void @llvm.dbg.declare(metadata %struct.acpi_processor_cx** %cx, metadata !5482, metadata !DIExpression()), !dbg !5483
  call void @llvm.dbg.declare(metadata %struct.cpuidle_state** %state, metadata !5484, metadata !DIExpression()), !dbg !5485
  call void @llvm.dbg.declare(metadata %struct.cpuidle_driver** %drv, metadata !5486, metadata !DIExpression()), !dbg !5487
  store %struct.cpuidle_driver* @acpi_idle_driver, %struct.cpuidle_driver** %drv, align 8, !dbg !5487
  %0 = load i32, i32* @max_cstate, align 4, !dbg !5488
  %cmp = icmp eq i32 %0, 0, !dbg !5490
  br i1 %cmp, label %if.then, label %if.end, !dbg !5491

if.then:                                          ; preds = %entry
  store i32 1, i32* @max_cstate, align 4, !dbg !5492
  br label %if.end, !dbg !5493

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv, align 8, !dbg !5494
  call void @cpuidle_poll_state_init(%struct.cpuidle_driver* %1) #10, !dbg !5497
  store i32 1, i32* %count, align 4, !dbg !5498
  store i32 1, i32* %i, align 4, !dbg !5499
  br label %for.cond, !dbg !5501

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4, !dbg !5502
  %cmp1 = icmp slt i32 %2, 8, !dbg !5504
  br i1 %cmp1, label %land.rhs, label %land.end, !dbg !5505

land.rhs:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !dbg !5506
  %4 = load i32, i32* @max_cstate, align 4, !dbg !5507
  %cmp2 = icmp ule i32 %3, %4, !dbg !5508
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %cmp2, %land.rhs ], !dbg !5509
  br i1 %5, label %for.body, label %for.end, !dbg !5510

for.body:                                         ; preds = %land.end
  %6 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !5511
  %power = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %6, i32 0, i32 8, !dbg !5513
  %7 = getelementptr inbounds %struct.acpi_processor_power, %struct.acpi_processor_power* %power, i32 0, i32 1, !dbg !5514
  %states = bitcast %union.anon.0* %7 to [8 x %struct.acpi_processor_cx]*, !dbg !5514
  %8 = load i32, i32* %i, align 4, !dbg !5515
  %idxprom = sext i32 %8 to i64, !dbg !5511
  %arrayidx = getelementptr [8 x %struct.acpi_processor_cx], [8 x %struct.acpi_processor_cx]* %states, i64 0, i64 %idxprom, !dbg !5511
  store %struct.acpi_processor_cx* %arrayidx, %struct.acpi_processor_cx** %cx, align 8, !dbg !5516
  %9 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %cx, align 8, !dbg !5517
  %valid = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %9, i32 0, i32 0, !dbg !5519
  %10 = load i8, i8* %valid, align 4, !dbg !5519
  %tobool = icmp ne i8 %10, 0, !dbg !5517
  br i1 %tobool, label %if.end4, label %if.then3, !dbg !5520

if.then3:                                         ; preds = %for.body
  br label %for.inc, !dbg !5521

if.end4:                                          ; preds = %for.body
  %11 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv, align 8, !dbg !5522
  %states5 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %11, i32 0, i32 3, !dbg !5523
  %12 = load i32, i32* %count, align 4, !dbg !5524
  %idxprom6 = sext i32 %12 to i64, !dbg !5522
  %arrayidx7 = getelementptr [10 x %struct.cpuidle_state], [10 x %struct.cpuidle_state]* %states5, i64 0, i64 %idxprom6, !dbg !5522
  store %struct.cpuidle_state* %arrayidx7, %struct.cpuidle_state** %state, align 8, !dbg !5525
  %13 = load %struct.cpuidle_state*, %struct.cpuidle_state** %state, align 8, !dbg !5526
  %name = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %13, i32 0, i32 0, !dbg !5527
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %name, i64 0, i64 0, !dbg !5526
  %14 = load i32, i32* %i, align 4, !dbg !5528
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 %14) #10, !dbg !5529
  %15 = load %struct.cpuidle_state*, %struct.cpuidle_state** %state, align 8, !dbg !5530
  %desc = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %15, i32 0, i32 1, !dbg !5531
  %arraydecay8 = getelementptr inbounds [32 x i8], [32 x i8]* %desc, i64 0, i64 0, !dbg !5530
  %16 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %cx, align 8, !dbg !5532
  %desc9 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %16, i32 0, i32 7, !dbg !5533
  %arraydecay10 = getelementptr inbounds [32 x i8], [32 x i8]* %desc9, i64 0, i64 0, !dbg !5532
  %call11 = call i64 @strlcpy(i8* %arraydecay8, i8* %arraydecay10, i64 32) #10, !dbg !5534
  %17 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %cx, align 8, !dbg !5535
  %latency = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %17, i32 0, i32 5, !dbg !5536
  %18 = load i32, i32* %latency, align 4, !dbg !5536
  %19 = load %struct.cpuidle_state*, %struct.cpuidle_state** %state, align 8, !dbg !5537
  %exit_latency = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %19, i32 0, i32 5, !dbg !5538
  store i32 %18, i32* %exit_latency, align 4, !dbg !5539
  %20 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %cx, align 8, !dbg !5540
  %latency12 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %20, i32 0, i32 5, !dbg !5541
  %21 = load i32, i32* %latency12, align 4, !dbg !5541
  %22 = load i32, i32* @latency_factor, align 4, !dbg !5542
  %mul = mul i32 %21, %22, !dbg !5543
  %23 = load %struct.cpuidle_state*, %struct.cpuidle_state** %state, align 8, !dbg !5544
  %target_residency = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %23, i32 0, i32 7, !dbg !5545
  store i32 %mul, i32* %target_residency, align 4, !dbg !5546
  %24 = load %struct.cpuidle_state*, %struct.cpuidle_state** %state, align 8, !dbg !5547
  %enter = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %24, i32 0, i32 8, !dbg !5548
  store i32 (%struct.cpuidle_device*, %struct.cpuidle_driver*, i32)* @acpi_idle_enter, i32 (%struct.cpuidle_device*, %struct.cpuidle_driver*, i32)** %enter, align 8, !dbg !5549
  %25 = load %struct.cpuidle_state*, %struct.cpuidle_state** %state, align 8, !dbg !5550
  %flags = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %25, i32 0, i32 4, !dbg !5551
  store i32 0, i32* %flags, align 8, !dbg !5552
  %26 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %cx, align 8, !dbg !5553
  %type = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %26, i32 0, i32 1, !dbg !5555
  %27 = load i8, i8* %type, align 1, !dbg !5555
  %conv = zext i8 %27 to i32, !dbg !5553
  %cmp13 = icmp eq i32 %conv, 1, !dbg !5556
  br i1 %cmp13, label %if.then19, label %lor.lhs.false, !dbg !5557

lor.lhs.false:                                    ; preds = %if.end4
  %28 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %cx, align 8, !dbg !5558
  %type15 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %28, i32 0, i32 1, !dbg !5559
  %29 = load i8, i8* %type15, align 1, !dbg !5559
  %conv16 = zext i8 %29 to i32, !dbg !5558
  %cmp17 = icmp eq i32 %conv16, 2, !dbg !5560
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !5561

if.then19:                                        ; preds = %lor.lhs.false, %if.end4
  %30 = load %struct.cpuidle_state*, %struct.cpuidle_state** %state, align 8, !dbg !5562
  %enter_dead = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %30, i32 0, i32 9, !dbg !5564
  store i32 (%struct.cpuidle_device*, i32)* @acpi_idle_play_dead, i32 (%struct.cpuidle_device*, i32)** %enter_dead, align 8, !dbg !5565
  %31 = load i32, i32* %count, align 4, !dbg !5566
  %32 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv, align 8, !dbg !5567
  %safe_state_index = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %32, i32 0, i32 5, !dbg !5568
  store i32 %31, i32* %safe_state_index, align 4, !dbg !5569
  br label %if.end20, !dbg !5570

if.end20:                                         ; preds = %if.then19, %lor.lhs.false
  %33 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %cx, align 8, !dbg !5571
  %type21 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %33, i32 0, i32 1, !dbg !5573
  %34 = load i8, i8* %type21, align 1, !dbg !5573
  %conv22 = zext i8 %34 to i32, !dbg !5571
  %cmp23 = icmp ne i32 %conv22, 1, !dbg !5574
  br i1 %cmp23, label %land.lhs.true, label %if.end27, !dbg !5575

land.lhs.true:                                    ; preds = %if.end20
  %35 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !5576
  %call25 = call zeroext i1 @acpi_idle_fallback_to_c1(%struct.acpi_processor* %35) #10, !dbg !5577
  br i1 %call25, label %if.end27, label %if.then26, !dbg !5578

if.then26:                                        ; preds = %land.lhs.true
  %36 = load %struct.cpuidle_state*, %struct.cpuidle_state** %state, align 8, !dbg !5579
  %enter_s2idle = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %36, i32 0, i32 10, !dbg !5580
  store i32 (%struct.cpuidle_device*, %struct.cpuidle_driver*, i32)* @acpi_idle_enter_s2idle, i32 (%struct.cpuidle_device*, %struct.cpuidle_driver*, i32)** %enter_s2idle, align 8, !dbg !5581
  br label %if.end27, !dbg !5579

if.end27:                                         ; preds = %if.then26, %land.lhs.true, %if.end20
  %37 = load i32, i32* %count, align 4, !dbg !5582
  %inc = add i32 %37, 1, !dbg !5582
  store i32 %inc, i32* %count, align 4, !dbg !5582
  %38 = load i32, i32* %count, align 4, !dbg !5583
  %cmp28 = icmp eq i32 %38, 10, !dbg !5585
  br i1 %cmp28, label %if.then30, label %if.end31, !dbg !5586

if.then30:                                        ; preds = %if.end27
  br label %for.end, !dbg !5587

if.end31:                                         ; preds = %if.end27
  br label %for.inc, !dbg !5588

for.inc:                                          ; preds = %if.end31, %if.then3
  %39 = load i32, i32* %i, align 4, !dbg !5589
  %inc32 = add i32 %39, 1, !dbg !5589
  store i32 %inc32, i32* %i, align 4, !dbg !5589
  br label %for.cond, !dbg !5590, !llvm.loop !5591

for.end:                                          ; preds = %if.then30, %land.end
  %40 = load i32, i32* %count, align 4, !dbg !5593
  %41 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv, align 8, !dbg !5594
  %state_count = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %41, i32 0, i32 4, !dbg !5595
  store i32 %40, i32* %state_count, align 8, !dbg !5596
  %42 = load i32, i32* %count, align 4, !dbg !5597
  %tobool33 = icmp ne i32 %42, 0, !dbg !5597
  br i1 %tobool33, label %if.end35, label %if.then34, !dbg !5599

if.then34:                                        ; preds = %for.end
  store i32 -22, i32* %retval, align 4, !dbg !5600
  br label %return, !dbg !5600

if.end35:                                         ; preds = %for.end
  store i32 0, i32* %retval, align 4, !dbg !5601
  br label %return, !dbg !5601

return:                                           ; preds = %if.end35, %if.then34
  %43 = load i32, i32* %retval, align 4, !dbg !5602
  ret i32 %43, !dbg !5602
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_idle_lpi_enter(%struct.cpuidle_device* %dev, %struct.cpuidle_driver* %drv, i32 %index) #0 !dbg !5603 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.cpuidle_device*, align 8
  %drv.addr = alloca %struct.cpuidle_driver*, align 8
  %index.addr = alloca i32, align 4
  %pr = alloca %struct.acpi_processor*, align 8
  %lpi = alloca %struct.acpi_lpi_state*, align 8
  %tmp = alloca %struct.acpi_processor*, align 8
  %pscr_ret__ = alloca %struct.acpi_processor*, align 8
  %__vpp_verify = alloca i8*, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp1 = alloca %struct.acpi_processor*, align 8
  %tmp2 = alloca %struct.acpi_processor*, align 8
  store %struct.cpuidle_device* %dev, %struct.cpuidle_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %dev.addr, metadata !5604, metadata !DIExpression()), !dbg !5605
  store %struct.cpuidle_driver* %drv, %struct.cpuidle_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_driver** %drv.addr, metadata !5606, metadata !DIExpression()), !dbg !5607
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !5608, metadata !DIExpression()), !dbg !5609
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr, metadata !5610, metadata !DIExpression()), !dbg !5611
  call void @llvm.dbg.declare(metadata %struct.acpi_lpi_state** %lpi, metadata !5612, metadata !DIExpression()), !dbg !5613
  call void @__this_cpu_preempt_check(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !5614
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pscr_ret__, metadata !5616, metadata !DIExpression()), !dbg !5618
  br label %do.body, !dbg !5618

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !5619, metadata !DIExpression()), !dbg !5621
  store i8* null, i8** %__vpp_verify, align 8, !dbg !5621
  %0 = load i8*, i8** %__vpp_verify, align 8, !dbg !5621
  br label %do.end, !dbg !5621

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %pfo_val__, metadata !5622, metadata !DIExpression()), !dbg !5624
  %1 = call i64 asm "movq $1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(%struct.acpi_processor** @processors) #8, !dbg !5624, !srcloc !5625
  store i64 %1, i64* %pfo_val__, align 8, !dbg !5624
  %2 = load i64, i64* %pfo_val__, align 8, !dbg !5624
  %3 = inttoptr i64 %2 to %struct.acpi_processor*, !dbg !5624
  store %struct.acpi_processor* %3, %struct.acpi_processor** %tmp1, align 8, !dbg !5624
  %4 = load %struct.acpi_processor*, %struct.acpi_processor** %tmp1, align 8, !dbg !5624
  store %struct.acpi_processor* %4, %struct.acpi_processor** %pscr_ret__, align 8, !dbg !5618
  %5 = load %struct.acpi_processor*, %struct.acpi_processor** %pscr_ret__, align 8, !dbg !5618
  store %struct.acpi_processor* %5, %struct.acpi_processor** %tmp2, align 8, !dbg !5618
  %6 = load %struct.acpi_processor*, %struct.acpi_processor** %tmp2, align 8, !dbg !5618
  store %struct.acpi_processor* %6, %struct.acpi_processor** %tmp, align 8, !dbg !5614
  %7 = load %struct.acpi_processor*, %struct.acpi_processor** %tmp, align 8, !dbg !5614
  store %struct.acpi_processor* %7, %struct.acpi_processor** %pr, align 8, !dbg !5626
  %8 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !5627
  %tobool = icmp ne %struct.acpi_processor* %8, null, !dbg !5627
  %lnot = xor i1 %tobool, true, !dbg !5627
  %lnot3 = xor i1 %lnot, true, !dbg !5627
  %lnot4 = xor i1 %lnot3, true, !dbg !5627
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !5627
  %conv = sext i32 %lnot.ext to i64, !dbg !5627
  %tobool5 = icmp ne i64 %conv, 0, !dbg !5627
  br i1 %tobool5, label %if.then, label %if.end, !dbg !5629

if.then:                                          ; preds = %do.end
  store i32 -22, i32* %retval, align 4, !dbg !5630
  br label %return, !dbg !5630

if.end:                                           ; preds = %do.end
  %9 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !5631
  %power = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %9, i32 0, i32 8, !dbg !5632
  %10 = getelementptr inbounds %struct.acpi_processor_power, %struct.acpi_processor_power* %power, i32 0, i32 1, !dbg !5633
  %lpi_states = bitcast %union.anon.0* %10 to [8 x %struct.acpi_lpi_state]*, !dbg !5633
  %11 = load i32, i32* %index.addr, align 4, !dbg !5634
  %idxprom = sext i32 %11 to i64, !dbg !5631
  %arrayidx = getelementptr [8 x %struct.acpi_lpi_state], [8 x %struct.acpi_lpi_state]* %lpi_states, i64 0, i64 %idxprom, !dbg !5631
  store %struct.acpi_lpi_state* %arrayidx, %struct.acpi_lpi_state** %lpi, align 8, !dbg !5635
  %12 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %lpi, align 8, !dbg !5636
  %entry_method = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %12, i32 0, i32 8, !dbg !5638
  %13 = load i8, i8* %entry_method, align 1, !dbg !5638
  %conv6 = zext i8 %13 to i32, !dbg !5636
  %cmp = icmp eq i32 %conv6, 1, !dbg !5639
  br i1 %cmp, label %if.then8, label %if.end9, !dbg !5640

if.then8:                                         ; preds = %if.end
  %14 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %lpi, align 8, !dbg !5641
  %call = call i32 @acpi_processor_ffh_lpi_enter(%struct.acpi_lpi_state* %14) #10, !dbg !5642
  store i32 %call, i32* %retval, align 4, !dbg !5643
  br label %return, !dbg !5643

if.end9:                                          ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !5644
  br label %return, !dbg !5644

return:                                           ; preds = %if.end9, %if.then8, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !5645
  ret i32 %15, !dbg !5645
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__this_cpu_preempt_check(i8* %op) #0 !dbg !5646 {
entry:
  %op.addr = alloca i8*, align 8
  store i8* %op, i8** %op.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %op.addr, metadata !5650, metadata !DIExpression()), !dbg !5651
  ret void, !dbg !5652
}

; Function Attrs: noredzone
declare dso_local void @cpuidle_poll_state_init(%struct.cpuidle_driver*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_idle_enter(%struct.cpuidle_device* %dev, %struct.cpuidle_driver* %drv, i32 %index) #0 !dbg !5653 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.cpuidle_device*, align 8
  %drv.addr = alloca %struct.cpuidle_driver*, align 8
  %index.addr = alloca i32, align 4
  %cx = alloca %struct.acpi_processor_cx*, align 8
  %tmp = alloca %struct.acpi_processor_cx**, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp1 = alloca %struct.acpi_processor_cx**, align 8
  %pr = alloca %struct.acpi_processor*, align 8
  %tmp2 = alloca %struct.acpi_processor*, align 8
  %pscr_ret__ = alloca %struct.acpi_processor*, align 8
  %__vpp_verify4 = alloca i8*, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp6 = alloca %struct.acpi_processor*, align 8
  %tmp7 = alloca %struct.acpi_processor*, align 8
  %tmp27 = alloca %struct.acpi_processor_cx**, align 8
  %__vpp_verify29 = alloca i8*, align 8
  %tmp31 = alloca %struct.acpi_processor_cx**, align 8
  store %struct.cpuidle_device* %dev, %struct.cpuidle_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %dev.addr, metadata !5654, metadata !DIExpression()), !dbg !5655
  store %struct.cpuidle_driver* %drv, %struct.cpuidle_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_driver** %drv.addr, metadata !5656, metadata !DIExpression()), !dbg !5657
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !5658, metadata !DIExpression()), !dbg !5659
  call void @llvm.dbg.declare(metadata %struct.acpi_processor_cx** %cx, metadata !5660, metadata !DIExpression()), !dbg !5661
  %0 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !5662
  %cpu = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %0, i32 0, i32 1, !dbg !5662
  %1 = load i32, i32* %cpu, align 4, !dbg !5662
  br label %do.body, !dbg !5664

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !5666, metadata !DIExpression()), !dbg !5668
  store i8* null, i8** %__vpp_verify, align 8, !dbg !5668
  %2 = load i8*, i8** %__vpp_verify, align 8, !dbg !5668
  br label %do.end, !dbg !5668

do.end:                                           ; preds = %do.body
  %3 = load i32, i32* %index.addr, align 4, !dbg !5664
  %idxprom = sext i32 %3 to i64, !dbg !5664
  %arrayidx = getelementptr [10 x %struct.acpi_processor_cx*], [10 x %struct.acpi_processor_cx*]* @acpi_cstate, i64 0, i64 %idxprom, !dbg !5664
  store %struct.acpi_processor_cx** %arrayidx, %struct.acpi_processor_cx*** %tmp1, align 8, !dbg !5668
  %4 = load %struct.acpi_processor_cx**, %struct.acpi_processor_cx*** %tmp1, align 8, !dbg !5664
  store %struct.acpi_processor_cx** %4, %struct.acpi_processor_cx*** %tmp, align 8, !dbg !5662
  %5 = load %struct.acpi_processor_cx**, %struct.acpi_processor_cx*** %tmp, align 8, !dbg !5662
  %6 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %5, align 8, !dbg !5669
  store %struct.acpi_processor_cx* %6, %struct.acpi_processor_cx** %cx, align 8, !dbg !5661
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr, metadata !5670, metadata !DIExpression()), !dbg !5671
  call void @__this_cpu_preempt_check(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !5672
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pscr_ret__, metadata !5674, metadata !DIExpression()), !dbg !5676
  br label %do.body3, !dbg !5676

do.body3:                                         ; preds = %do.end
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify4, metadata !5677, metadata !DIExpression()), !dbg !5679
  store i8* null, i8** %__vpp_verify4, align 8, !dbg !5679
  %7 = load i8*, i8** %__vpp_verify4, align 8, !dbg !5679
  br label %do.end5, !dbg !5679

do.end5:                                          ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %pfo_val__, metadata !5680, metadata !DIExpression()), !dbg !5682
  %8 = call i64 asm "movq $1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(%struct.acpi_processor** @processors) #8, !dbg !5682, !srcloc !5683
  store i64 %8, i64* %pfo_val__, align 8, !dbg !5682
  %9 = load i64, i64* %pfo_val__, align 8, !dbg !5682
  %10 = inttoptr i64 %9 to %struct.acpi_processor*, !dbg !5682
  store %struct.acpi_processor* %10, %struct.acpi_processor** %tmp6, align 8, !dbg !5682
  %11 = load %struct.acpi_processor*, %struct.acpi_processor** %tmp6, align 8, !dbg !5682
  store %struct.acpi_processor* %11, %struct.acpi_processor** %pscr_ret__, align 8, !dbg !5676
  %12 = load %struct.acpi_processor*, %struct.acpi_processor** %pscr_ret__, align 8, !dbg !5676
  store %struct.acpi_processor* %12, %struct.acpi_processor** %tmp7, align 8, !dbg !5676
  %13 = load %struct.acpi_processor*, %struct.acpi_processor** %tmp7, align 8, !dbg !5676
  store %struct.acpi_processor* %13, %struct.acpi_processor** %tmp2, align 8, !dbg !5672
  %14 = load %struct.acpi_processor*, %struct.acpi_processor** %tmp2, align 8, !dbg !5672
  store %struct.acpi_processor* %14, %struct.acpi_processor** %pr, align 8, !dbg !5684
  %15 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !5685
  %tobool = icmp ne %struct.acpi_processor* %15, null, !dbg !5685
  %lnot = xor i1 %tobool, true, !dbg !5685
  %lnot8 = xor i1 %lnot, true, !dbg !5685
  %lnot9 = xor i1 %lnot8, true, !dbg !5685
  %lnot.ext = zext i1 %lnot9 to i32, !dbg !5685
  %conv = sext i32 %lnot.ext to i64, !dbg !5685
  %tobool10 = icmp ne i64 %conv, 0, !dbg !5685
  br i1 %tobool10, label %if.then, label %if.end, !dbg !5687

if.then:                                          ; preds = %do.end5
  store i32 -22, i32* %retval, align 4, !dbg !5688
  br label %return, !dbg !5688

if.end:                                           ; preds = %do.end5
  %16 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %cx, align 8, !dbg !5689
  %type = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %16, i32 0, i32 1, !dbg !5691
  %17 = load i8, i8* %type, align 1, !dbg !5691
  %conv11 = zext i8 %17 to i32, !dbg !5689
  %cmp = icmp ne i32 %conv11, 1, !dbg !5692
  br i1 %cmp, label %if.then13, label %if.end35, !dbg !5693

if.then13:                                        ; preds = %if.end
  %18 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %cx, align 8, !dbg !5694
  %type14 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %18, i32 0, i32 1, !dbg !5697
  %19 = load i8, i8* %type14, align 1, !dbg !5697
  %conv15 = zext i8 %19 to i32, !dbg !5694
  %cmp16 = icmp eq i32 %conv15, 3, !dbg !5698
  br i1 %cmp16, label %land.lhs.true, label %if.end21, !dbg !5699

land.lhs.true:                                    ; preds = %if.then13
  %20 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !5700
  %flags = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %20, i32 0, i32 7, !dbg !5701
  %21 = bitcast %struct.acpi_processor_flags* %flags to i16*, !dbg !5702
  %bf.load = load i16, i16* %21, align 8, !dbg !5702
  %bf.lshr = lshr i16 %bf.load, 5, !dbg !5702
  %bf.clear = and i16 %bf.lshr, 1, !dbg !5702
  %bf.cast = trunc i16 %bf.clear to i8, !dbg !5702
  %conv18 = zext i8 %bf.cast to i32, !dbg !5700
  %tobool19 = icmp ne i32 %conv18, 0, !dbg !5700
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !5703

if.then20:                                        ; preds = %land.lhs.true
  %22 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !5704
  %23 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !5705
  %24 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %cx, align 8, !dbg !5706
  %25 = load i32, i32* %index.addr, align 4, !dbg !5707
  %call = call i32 @acpi_idle_enter_bm(%struct.cpuidle_driver* %22, %struct.acpi_processor* %23, %struct.acpi_processor_cx* %24, i32 %25) #10, !dbg !5708
  store i32 %call, i32* %retval, align 4, !dbg !5709
  br label %return, !dbg !5709

if.end21:                                         ; preds = %land.lhs.true, %if.then13
  %26 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !5710
  %call22 = call zeroext i1 @acpi_idle_fallback_to_c1(%struct.acpi_processor* %26) #10, !dbg !5712
  br i1 %call22, label %land.lhs.true24, label %if.end34, !dbg !5713

land.lhs.true24:                                  ; preds = %if.end21
  br i1 false, label %if.then25, label %if.end34, !dbg !5714

if.then25:                                        ; preds = %land.lhs.true24
  store i32 1, i32* %index.addr, align 4, !dbg !5715
  %27 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !5717
  %cpu26 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %27, i32 0, i32 1, !dbg !5717
  %28 = load i32, i32* %cpu26, align 4, !dbg !5717
  br label %do.body28, !dbg !5719

do.body28:                                        ; preds = %if.then25
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify29, metadata !5721, metadata !DIExpression()), !dbg !5723
  store i8* null, i8** %__vpp_verify29, align 8, !dbg !5723
  %29 = load i8*, i8** %__vpp_verify29, align 8, !dbg !5723
  br label %do.end30, !dbg !5723

do.end30:                                         ; preds = %do.body28
  %30 = load i32, i32* %index.addr, align 4, !dbg !5719
  %idxprom32 = sext i32 %30 to i64, !dbg !5719
  %arrayidx33 = getelementptr [10 x %struct.acpi_processor_cx*], [10 x %struct.acpi_processor_cx*]* @acpi_cstate, i64 0, i64 %idxprom32, !dbg !5719
  store %struct.acpi_processor_cx** %arrayidx33, %struct.acpi_processor_cx*** %tmp31, align 8, !dbg !5723
  %31 = load %struct.acpi_processor_cx**, %struct.acpi_processor_cx*** %tmp31, align 8, !dbg !5719
  store %struct.acpi_processor_cx** %31, %struct.acpi_processor_cx*** %tmp27, align 8, !dbg !5717
  %32 = load %struct.acpi_processor_cx**, %struct.acpi_processor_cx*** %tmp27, align 8, !dbg !5717
  %33 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %32, align 8, !dbg !5724
  store %struct.acpi_processor_cx* %33, %struct.acpi_processor_cx** %cx, align 8, !dbg !5725
  br label %if.end34, !dbg !5726

if.end34:                                         ; preds = %do.end30, %land.lhs.true24, %if.end21
  br label %if.end35, !dbg !5727

if.end35:                                         ; preds = %if.end34, %if.end
  %34 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %cx, align 8, !dbg !5728
  %type36 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %34, i32 0, i32 1, !dbg !5730
  %35 = load i8, i8* %type36, align 1, !dbg !5730
  %conv37 = zext i8 %35 to i32, !dbg !5728
  %cmp38 = icmp eq i32 %conv37, 3, !dbg !5731
  br i1 %cmp38, label %if.then40, label %if.end41, !dbg !5732

if.then40:                                        ; preds = %if.end35
  call void @wbinvd() #10, !dbg !5733
  br label %if.end41, !dbg !5733

if.end41:                                         ; preds = %if.then40, %if.end35
  %36 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %cx, align 8, !dbg !5734
  call void @acpi_idle_do_entry(%struct.acpi_processor_cx* %36) #10, !dbg !5735
  %37 = load i32, i32* %index.addr, align 4, !dbg !5736
  store i32 %37, i32* %retval, align 4, !dbg !5737
  br label %return, !dbg !5737

return:                                           ; preds = %if.end41, %if.then20, %if.then
  %38 = load i32, i32* %retval, align 4, !dbg !5738
  ret i32 %38, !dbg !5738
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_idle_play_dead(%struct.cpuidle_device* %dev, i32 %index) #0 !dbg !5739 {
entry:
  %dev.addr = alloca %struct.cpuidle_device*, align 8
  %index.addr = alloca i32, align 4
  %cx = alloca %struct.acpi_processor_cx*, align 8
  %tmp = alloca %struct.acpi_processor_cx**, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp1 = alloca %struct.acpi_processor_cx**, align 8
  store %struct.cpuidle_device* %dev, %struct.cpuidle_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %dev.addr, metadata !5740, metadata !DIExpression()), !dbg !5741
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !5742, metadata !DIExpression()), !dbg !5743
  call void @llvm.dbg.declare(metadata %struct.acpi_processor_cx** %cx, metadata !5744, metadata !DIExpression()), !dbg !5745
  %0 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !5746
  %cpu = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %0, i32 0, i32 1, !dbg !5746
  %1 = load i32, i32* %cpu, align 4, !dbg !5746
  br label %do.body, !dbg !5748

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !5750, metadata !DIExpression()), !dbg !5752
  store i8* null, i8** %__vpp_verify, align 8, !dbg !5752
  %2 = load i8*, i8** %__vpp_verify, align 8, !dbg !5752
  br label %do.end, !dbg !5752

do.end:                                           ; preds = %do.body
  %3 = load i32, i32* %index.addr, align 4, !dbg !5748
  %idxprom = sext i32 %3 to i64, !dbg !5748
  %arrayidx = getelementptr [10 x %struct.acpi_processor_cx*], [10 x %struct.acpi_processor_cx*]* @acpi_cstate, i64 0, i64 %idxprom, !dbg !5748
  store %struct.acpi_processor_cx** %arrayidx, %struct.acpi_processor_cx*** %tmp1, align 8, !dbg !5752
  %4 = load %struct.acpi_processor_cx**, %struct.acpi_processor_cx*** %tmp1, align 8, !dbg !5748
  store %struct.acpi_processor_cx** %4, %struct.acpi_processor_cx*** %tmp, align 8, !dbg !5746
  %5 = load %struct.acpi_processor_cx**, %struct.acpi_processor_cx*** %tmp, align 8, !dbg !5746
  %6 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %5, align 8, !dbg !5753
  store %struct.acpi_processor_cx* %6, %struct.acpi_processor_cx** %cx, align 8, !dbg !5745
  call void @wbinvd() #10, !dbg !5754
  br label %while.body, !dbg !5755

while.body:                                       ; preds = %do.end, %if.end11
  %7 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %cx, align 8, !dbg !5756
  %entry_method = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %7, i32 0, i32 3, !dbg !5759
  %8 = load i8, i8* %entry_method, align 4, !dbg !5759
  %conv = zext i8 %8 to i32, !dbg !5756
  %cmp = icmp eq i32 %conv, 2, !dbg !5760
  br i1 %cmp, label %if.then, label %if.else, !dbg !5761

if.then:                                          ; preds = %while.body
  br label %do.body3, !dbg !5762

do.body3:                                         ; preds = %if.then
  call void @arch_safe_halt() #10, !dbg !5763
  br label %do.end4, !dbg !5763

do.end4:                                          ; preds = %do.body3
  br label %if.end11, !dbg !5763

if.else:                                          ; preds = %while.body
  %9 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %cx, align 8, !dbg !5765
  %entry_method5 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %9, i32 0, i32 3, !dbg !5767
  %10 = load i8, i8* %entry_method5, align 4, !dbg !5767
  %conv6 = zext i8 %10 to i32, !dbg !5765
  %cmp7 = icmp eq i32 %conv6, 0, !dbg !5768
  br i1 %cmp7, label %if.then9, label %if.else10, !dbg !5769

if.then9:                                         ; preds = %if.else
  %11 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %cx, align 8, !dbg !5770
  %address = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %11, i32 0, i32 2, !dbg !5772
  %12 = load i32, i32* %address, align 4, !dbg !5772
  %call = call zeroext i8 @inb(i32 %12) #10, !dbg !5773
  call void @wait_for_freeze() #10, !dbg !5774
  br label %if.end, !dbg !5775

if.else10:                                        ; preds = %if.else
  ret i32 -19, !dbg !5776

if.end:                                           ; preds = %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %do.end4
  br label %while.body, !dbg !5755, !llvm.loop !5777
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @acpi_idle_fallback_to_c1(%struct.acpi_processor* %pr) #0 !dbg !5779 {
entry:
  %pr.addr = alloca %struct.acpi_processor*, align 8
  store %struct.acpi_processor* %pr, %struct.acpi_processor** %pr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr.addr, metadata !5782, metadata !DIExpression()), !dbg !5783
  ret i1 false, !dbg !5784
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_idle_enter_s2idle(%struct.cpuidle_device* %dev, %struct.cpuidle_driver* %drv, i32 %index) #0 !dbg !5785 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.cpuidle_device*, align 8
  %drv.addr = alloca %struct.cpuidle_driver*, align 8
  %index.addr = alloca i32, align 4
  %cx = alloca %struct.acpi_processor_cx*, align 8
  %tmp = alloca %struct.acpi_processor_cx**, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp1 = alloca %struct.acpi_processor_cx**, align 8
  %pr = alloca %struct.acpi_processor*, align 8
  %tmp3 = alloca %struct.acpi_processor*, align 8
  %pscr_ret__ = alloca %struct.acpi_processor*, align 8
  %__vpp_verify5 = alloca i8*, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp7 = alloca %struct.acpi_processor*, align 8
  %tmp8 = alloca %struct.acpi_processor*, align 8
  %bm_sts_skip = alloca i8, align 1
  store %struct.cpuidle_device* %dev, %struct.cpuidle_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %dev.addr, metadata !5786, metadata !DIExpression()), !dbg !5787
  store %struct.cpuidle_driver* %drv, %struct.cpuidle_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_driver** %drv.addr, metadata !5788, metadata !DIExpression()), !dbg !5789
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !5790, metadata !DIExpression()), !dbg !5791
  call void @llvm.dbg.declare(metadata %struct.acpi_processor_cx** %cx, metadata !5792, metadata !DIExpression()), !dbg !5793
  %0 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !5794
  %cpu = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %0, i32 0, i32 1, !dbg !5794
  %1 = load i32, i32* %cpu, align 4, !dbg !5794
  br label %do.body, !dbg !5796

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !5798, metadata !DIExpression()), !dbg !5800
  store i8* null, i8** %__vpp_verify, align 8, !dbg !5800
  %2 = load i8*, i8** %__vpp_verify, align 8, !dbg !5800
  br label %do.end, !dbg !5800

do.end:                                           ; preds = %do.body
  %3 = load i32, i32* %index.addr, align 4, !dbg !5796
  %idxprom = sext i32 %3 to i64, !dbg !5796
  %arrayidx = getelementptr [10 x %struct.acpi_processor_cx*], [10 x %struct.acpi_processor_cx*]* @acpi_cstate, i64 0, i64 %idxprom, !dbg !5796
  store %struct.acpi_processor_cx** %arrayidx, %struct.acpi_processor_cx*** %tmp1, align 8, !dbg !5800
  %4 = load %struct.acpi_processor_cx**, %struct.acpi_processor_cx*** %tmp1, align 8, !dbg !5796
  store %struct.acpi_processor_cx** %4, %struct.acpi_processor_cx*** %tmp, align 8, !dbg !5794
  %5 = load %struct.acpi_processor_cx**, %struct.acpi_processor_cx*** %tmp, align 8, !dbg !5794
  %6 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %5, align 8, !dbg !5801
  store %struct.acpi_processor_cx* %6, %struct.acpi_processor_cx** %cx, align 8, !dbg !5793
  %7 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %cx, align 8, !dbg !5802
  %type = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %7, i32 0, i32 1, !dbg !5804
  %8 = load i8, i8* %type, align 1, !dbg !5804
  %conv = zext i8 %8 to i32, !dbg !5802
  %cmp = icmp eq i32 %conv, 3, !dbg !5805
  br i1 %cmp, label %if.then, label %if.end20, !dbg !5806

if.then:                                          ; preds = %do.end
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr, metadata !5807, metadata !DIExpression()), !dbg !5809
  call void @__this_cpu_preempt_check(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !5810
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pscr_ret__, metadata !5812, metadata !DIExpression()), !dbg !5814
  br label %do.body4, !dbg !5814

do.body4:                                         ; preds = %if.then
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify5, metadata !5815, metadata !DIExpression()), !dbg !5817
  store i8* null, i8** %__vpp_verify5, align 8, !dbg !5817
  %9 = load i8*, i8** %__vpp_verify5, align 8, !dbg !5817
  br label %do.end6, !dbg !5817

do.end6:                                          ; preds = %do.body4
  call void @llvm.dbg.declare(metadata i64* %pfo_val__, metadata !5818, metadata !DIExpression()), !dbg !5820
  %10 = call i64 asm "movq $1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(%struct.acpi_processor** @processors) #8, !dbg !5820, !srcloc !5821
  store i64 %10, i64* %pfo_val__, align 8, !dbg !5820
  %11 = load i64, i64* %pfo_val__, align 8, !dbg !5820
  %12 = inttoptr i64 %11 to %struct.acpi_processor*, !dbg !5820
  store %struct.acpi_processor* %12, %struct.acpi_processor** %tmp7, align 8, !dbg !5820
  %13 = load %struct.acpi_processor*, %struct.acpi_processor** %tmp7, align 8, !dbg !5820
  store %struct.acpi_processor* %13, %struct.acpi_processor** %pscr_ret__, align 8, !dbg !5814
  %14 = load %struct.acpi_processor*, %struct.acpi_processor** %pscr_ret__, align 8, !dbg !5814
  store %struct.acpi_processor* %14, %struct.acpi_processor** %tmp8, align 8, !dbg !5814
  %15 = load %struct.acpi_processor*, %struct.acpi_processor** %tmp8, align 8, !dbg !5814
  store %struct.acpi_processor* %15, %struct.acpi_processor** %tmp3, align 8, !dbg !5810
  %16 = load %struct.acpi_processor*, %struct.acpi_processor** %tmp3, align 8, !dbg !5810
  store %struct.acpi_processor* %16, %struct.acpi_processor** %pr, align 8, !dbg !5809
  %17 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !5822
  %tobool = icmp ne %struct.acpi_processor* %17, null, !dbg !5822
  %lnot = xor i1 %tobool, true, !dbg !5822
  %lnot9 = xor i1 %lnot, true, !dbg !5822
  %lnot10 = xor i1 %lnot9, true, !dbg !5822
  %lnot.ext = zext i1 %lnot10 to i32, !dbg !5822
  %conv11 = sext i32 %lnot.ext to i64, !dbg !5822
  %tobool12 = icmp ne i64 %conv11, 0, !dbg !5822
  br i1 %tobool12, label %if.then13, label %if.end, !dbg !5824

if.then13:                                        ; preds = %do.end6
  store i32 0, i32* %retval, align 4, !dbg !5825
  br label %return, !dbg !5825

if.end:                                           ; preds = %do.end6
  %18 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !5826
  %flags = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %18, i32 0, i32 7, !dbg !5828
  %19 = bitcast %struct.acpi_processor_flags* %flags to i16*, !dbg !5829
  %bf.load = load i16, i16* %19, align 8, !dbg !5829
  %bf.lshr = lshr i16 %bf.load, 5, !dbg !5829
  %bf.clear = and i16 %bf.lshr, 1, !dbg !5829
  %bf.cast = trunc i16 %bf.clear to i8, !dbg !5829
  %tobool14 = icmp ne i8 %bf.cast, 0, !dbg !5826
  br i1 %tobool14, label %if.then15, label %if.else, !dbg !5830

if.then15:                                        ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8* %bm_sts_skip, metadata !5831, metadata !DIExpression()), !dbg !5833
  %20 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %cx, align 8, !dbg !5834
  %bm_sts_skip16 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %20, i32 0, i32 6, !dbg !5835
  %21 = load i8, i8* %bm_sts_skip16, align 4, !dbg !5835
  store i8 %21, i8* %bm_sts_skip, align 1, !dbg !5833
  %22 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %cx, align 8, !dbg !5836
  %bm_sts_skip17 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %22, i32 0, i32 6, !dbg !5837
  store i8 1, i8* %bm_sts_skip17, align 4, !dbg !5838
  %23 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !5839
  %24 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !5840
  %25 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %cx, align 8, !dbg !5841
  %26 = load i32, i32* %index.addr, align 4, !dbg !5842
  %call = call i32 @acpi_idle_enter_bm(%struct.cpuidle_driver* %23, %struct.acpi_processor* %24, %struct.acpi_processor_cx* %25, i32 %26) #10, !dbg !5843
  %27 = load i8, i8* %bm_sts_skip, align 1, !dbg !5844
  %28 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %cx, align 8, !dbg !5845
  %bm_sts_skip18 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %28, i32 0, i32 6, !dbg !5846
  store i8 %27, i8* %bm_sts_skip18, align 4, !dbg !5847
  store i32 0, i32* %retval, align 4, !dbg !5848
  br label %return, !dbg !5848

if.else:                                          ; preds = %if.end
  call void @wbinvd() #10, !dbg !5849
  br label %if.end19

if.end19:                                         ; preds = %if.else
  br label %if.end20, !dbg !5851

if.end20:                                         ; preds = %if.end19, %do.end
  %29 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %cx, align 8, !dbg !5852
  call void @acpi_idle_do_entry(%struct.acpi_processor_cx* %29) #10, !dbg !5853
  store i32 0, i32* %retval, align 4, !dbg !5854
  br label %return, !dbg !5854

return:                                           ; preds = %if.end20, %if.then15, %if.then13
  %30 = load i32, i32* %retval, align 4, !dbg !5855
  ret i32 %30, !dbg !5855
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_idle_enter_bm(%struct.cpuidle_driver* %drv, %struct.acpi_processor* %pr, %struct.acpi_processor_cx* %cx, i32 %index) #0 !dbg !2659 {
entry:
  %drv.addr = alloca %struct.cpuidle_driver*, align 8
  %pr.addr = alloca %struct.acpi_processor*, align 8
  %cx.addr = alloca %struct.acpi_processor_cx*, align 8
  %index.addr = alloca i32, align 4
  %dis_bm = alloca i8, align 1
  %pscr_ret__ = alloca %struct.acpi_processor_cx*, align 8
  %__vpp_verify = alloca i8*, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca %struct.acpi_processor_cx*, align 8
  %tmp4 = alloca %struct.acpi_processor_cx*, align 8
  store %struct.cpuidle_driver* %drv, %struct.cpuidle_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_driver** %drv.addr, metadata !5856, metadata !DIExpression()), !dbg !5857
  store %struct.acpi_processor* %pr, %struct.acpi_processor** %pr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr.addr, metadata !5858, metadata !DIExpression()), !dbg !5859
  store %struct.acpi_processor_cx* %cx, %struct.acpi_processor_cx** %cx.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_processor_cx** %cx.addr, metadata !5860, metadata !DIExpression()), !dbg !5861
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !5862, metadata !DIExpression()), !dbg !5863
  call void @llvm.dbg.declare(metadata i8* %dis_bm, metadata !5864, metadata !DIExpression()), !dbg !5865
  %0 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !5866
  %flags = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %0, i32 0, i32 7, !dbg !5867
  %1 = bitcast %struct.acpi_processor_flags* %flags to i16*, !dbg !5868
  %bf.load = load i16, i16* %1, align 8, !dbg !5868
  %bf.lshr = lshr i16 %bf.load, 4, !dbg !5868
  %bf.clear = and i16 %bf.lshr, 1, !dbg !5868
  %bf.cast = trunc i16 %bf.clear to i8, !dbg !5868
  %tobool = icmp ne i8 %bf.cast, 0, !dbg !5866
  %frombool = zext i1 %tobool to i8, !dbg !5865
  store i8 %frombool, i8* %dis_bm, align 1, !dbg !5865
  %2 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %cx.addr, align 8, !dbg !5869
  %bm_sts_skip = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %2, i32 0, i32 6, !dbg !5871
  %3 = load i8, i8* %bm_sts_skip, align 4, !dbg !5871
  %tobool1 = icmp ne i8 %3, 0, !dbg !5869
  br i1 %tobool1, label %if.end5, label %land.lhs.true, !dbg !5872

land.lhs.true:                                    ; preds = %entry
  %call = call i32 @acpi_idle_bm_check() #10, !dbg !5873
  %tobool2 = icmp ne i32 %call, 0, !dbg !5873
  br i1 %tobool2, label %if.then, label %if.end5, !dbg !5874

if.then:                                          ; preds = %land.lhs.true
  store i8 0, i8* %dis_bm, align 1, !dbg !5875
  %4 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !5877
  %safe_state_index = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %4, i32 0, i32 5, !dbg !5878
  %5 = load i32, i32* %safe_state_index, align 4, !dbg !5878
  store i32 %5, i32* %index.addr, align 4, !dbg !5879
  %6 = load i32, i32* %index.addr, align 4, !dbg !5880
  %cmp = icmp sge i32 %6, 0, !dbg !5882
  br i1 %cmp, label %if.then3, label %if.else, !dbg !5883

if.then3:                                         ; preds = %if.then
  call void @llvm.dbg.declare(metadata %struct.acpi_processor_cx** %pscr_ret__, metadata !5884, metadata !DIExpression()), !dbg !5887
  br label %do.body, !dbg !5887

do.body:                                          ; preds = %if.then3
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !5888, metadata !DIExpression()), !dbg !5890
  store i8* null, i8** %__vpp_verify, align 8, !dbg !5890
  %7 = load i8*, i8** %__vpp_verify, align 8, !dbg !5890
  br label %do.end, !dbg !5890

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %pfo_val__, metadata !5891, metadata !DIExpression()), !dbg !5893
  %8 = load i32, i32* %index.addr, align 4, !dbg !5893
  %idxprom = sext i32 %8 to i64, !dbg !5893
  %arrayidx = getelementptr [10 x %struct.acpi_processor_cx*], [10 x %struct.acpi_processor_cx*]* @acpi_cstate, i64 0, i64 %idxprom, !dbg !5893
  %9 = call i64 asm sideeffect "movq $1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(%struct.acpi_processor_cx** %arrayidx) #9, !dbg !5893, !srcloc !5894
  store i64 %9, i64* %pfo_val__, align 8, !dbg !5893
  %10 = load i64, i64* %pfo_val__, align 8, !dbg !5893
  %11 = inttoptr i64 %10 to %struct.acpi_processor_cx*, !dbg !5893
  store %struct.acpi_processor_cx* %11, %struct.acpi_processor_cx** %tmp, align 8, !dbg !5893
  %12 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %tmp, align 8, !dbg !5893
  store %struct.acpi_processor_cx* %12, %struct.acpi_processor_cx** %pscr_ret__, align 8, !dbg !5887
  %13 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %pscr_ret__, align 8, !dbg !5887
  store %struct.acpi_processor_cx* %13, %struct.acpi_processor_cx** %tmp4, align 8, !dbg !5887
  %14 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %tmp4, align 8, !dbg !5887
  store %struct.acpi_processor_cx* %14, %struct.acpi_processor_cx** %cx.addr, align 8, !dbg !5895
  br label %if.end, !dbg !5896

if.else:                                          ; preds = %if.then
  store %struct.acpi_processor_cx* @acpi_idle_enter_bm.safe_cx, %struct.acpi_processor_cx** %cx.addr, align 8, !dbg !5897
  store i32 -16, i32* %index.addr, align 4, !dbg !5899
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  br label %if.end5, !dbg !5900

if.end5:                                          ; preds = %if.end, %land.lhs.true, %entry
  %15 = load i8, i8* %dis_bm, align 1, !dbg !5901
  %tobool6 = trunc i8 %15 to i1, !dbg !5901
  br i1 %tobool6, label %if.then7, label %if.end20, !dbg !5903

if.then7:                                         ; preds = %if.end5
  br label %do.body8, !dbg !5904

do.body8:                                         ; preds = %if.then7
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !5906, !srcloc !5908
  br label %do.body9, !dbg !5906

do.body9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !5909

do.end10:                                         ; preds = %do.body9
  br label %do.end11, !dbg !5906

do.end11:                                         ; preds = %do.end10
  %16 = load i32, i32* @c3_cpu_count, align 4, !dbg !5911
  %inc = add i32 %16, 1, !dbg !5911
  store i32 %inc, i32* @c3_cpu_count, align 4, !dbg !5911
  %17 = load i32, i32* @c3_cpu_count, align 4, !dbg !5912
  %cmp12 = icmp eq i32 %17, 1, !dbg !5914
  br i1 %cmp12, label %if.then13, label %if.end15, !dbg !5915

if.then13:                                        ; preds = %do.end11
  %call14 = call i32 @acpi_write_bit_register(i32 19, i32 1) #10, !dbg !5916
  br label %if.end15, !dbg !5916

if.end15:                                         ; preds = %if.then13, %do.end11
  br label %do.body16, !dbg !5917

do.body16:                                        ; preds = %if.end15
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !5918, !srcloc !5920
  br label %do.body17, !dbg !5918

do.body17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !5921

do.end18:                                         ; preds = %do.body17
  br label %do.end19, !dbg !5918

do.end19:                                         ; preds = %do.end18
  br label %if.end20, !dbg !5923

if.end20:                                         ; preds = %do.end19, %if.end5
  call void @rcu_idle_enter() #10, !dbg !5924
  %18 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %cx.addr, align 8, !dbg !5925
  call void @acpi_idle_do_entry(%struct.acpi_processor_cx* %18) #10, !dbg !5926
  call void @rcu_idle_exit() #10, !dbg !5927
  %19 = load i8, i8* %dis_bm, align 1, !dbg !5928
  %tobool21 = trunc i8 %19 to i1, !dbg !5928
  br i1 %tobool21, label %if.then22, label %if.end32, !dbg !5930

if.then22:                                        ; preds = %if.end20
  br label %do.body23, !dbg !5931

do.body23:                                        ; preds = %if.then22
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !5933, !srcloc !5935
  br label %do.body24, !dbg !5933

do.body24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !5936

do.end25:                                         ; preds = %do.body24
  br label %do.end26, !dbg !5933

do.end26:                                         ; preds = %do.end25
  %call27 = call i32 @acpi_write_bit_register(i32 19, i32 0) #10, !dbg !5938
  %20 = load i32, i32* @c3_cpu_count, align 4, !dbg !5939
  %dec = add i32 %20, -1, !dbg !5939
  store i32 %dec, i32* @c3_cpu_count, align 4, !dbg !5939
  br label %do.body28, !dbg !5940

do.body28:                                        ; preds = %do.end26
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !5941, !srcloc !5943
  br label %do.body29, !dbg !5941

do.body29:                                        ; preds = %do.body28
  br label %do.end30, !dbg !5944

do.end30:                                         ; preds = %do.body29
  br label %do.end31, !dbg !5941

do.end31:                                         ; preds = %do.end30
  br label %if.end32, !dbg !5946

if.end32:                                         ; preds = %do.end31, %if.end20
  %21 = load i32, i32* %index.addr, align 4, !dbg !5947
  ret i32 %21, !dbg !5948
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @wbinvd() #0 !dbg !5949 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5951, metadata !DIExpression()), !dbg !5953
  %0 = load i64, i64* %__edi, align 8, !dbg !5953
  store i64 %0, i64* %__edi, align 8, !dbg !5953
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5954, metadata !DIExpression()), !dbg !5953
  %1 = load i64, i64* %__esi, align 8, !dbg !5953
  store i64 %1, i64* %__esi, align 8, !dbg !5953
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5955, metadata !DIExpression()), !dbg !5953
  %2 = load i64, i64* %__edx, align 8, !dbg !5953
  store i64 %2, i64* %__edx, align 8, !dbg !5953
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5956, metadata !DIExpression()), !dbg !5953
  %3 = load i64, i64* %__ecx, align 8, !dbg !5953
  store i64 %3, i64* %__ecx, align 8, !dbg !5953
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5957, metadata !DIExpression()), !dbg !5953
  %4 = load i64, i64* %__eax, align 8, !dbg !5953
  store i64 %4, i64* %__eax, align 8, !dbg !5953
  %5 = load void ()*, void ()** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 21), align 8, !dbg !5953
  %6 = call i64 @llvm.read_register.i64(metadata !2697), !dbg !5953
  %7 = call { i64, i64, i64, i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${6:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${5:c}\0A  .byte 772b-771b\0A  .short ${7:c}\0A.popsection\0A", "={di},={si},={dx},={cx},={rsp},i,i,i,4,~{memory},~{cc},~{rax},~{r8},~{r9},~{r10},~{r11},~{dirflag},~{fpsr},~{flags}"(i64 24, void ()** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 21), i32 511, i64 %6) #9, !dbg !5953, !srcloc !5958
  %asmresult = extractvalue { i64, i64, i64, i64, i64 } %7, 0, !dbg !5953
  %asmresult1 = extractvalue { i64, i64, i64, i64, i64 } %7, 1, !dbg !5953
  %asmresult2 = extractvalue { i64, i64, i64, i64, i64 } %7, 2, !dbg !5953
  %asmresult3 = extractvalue { i64, i64, i64, i64, i64 } %7, 3, !dbg !5953
  %asmresult4 = extractvalue { i64, i64, i64, i64, i64 } %7, 4, !dbg !5953
  store i64 %asmresult, i64* %__edi, align 8, !dbg !5953
  store i64 %asmresult1, i64* %__esi, align 8, !dbg !5953
  store i64 %asmresult2, i64* %__edx, align 8, !dbg !5953
  store i64 %asmresult3, i64* %__ecx, align 8, !dbg !5953
  call void @llvm.write_register.i64(metadata !2697, i64 %asmresult4), !dbg !5953
  ret void, !dbg !5959
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_idle_do_entry(%struct.acpi_processor_cx* %cx) #0 section ".cpuidle.text" !dbg !5960 {
entry:
  %cx.addr = alloca %struct.acpi_processor_cx*, align 8
  store %struct.acpi_processor_cx* %cx, %struct.acpi_processor_cx** %cx.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_processor_cx** %cx.addr, metadata !5963, metadata !DIExpression()), !dbg !5964
  %0 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %cx.addr, align 8, !dbg !5965
  %entry_method = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %0, i32 0, i32 3, !dbg !5967
  %1 = load i8, i8* %entry_method, align 4, !dbg !5967
  %conv = zext i8 %1 to i32, !dbg !5965
  %cmp = icmp eq i32 %conv, 1, !dbg !5968
  br i1 %cmp, label %if.then, label %if.else, !dbg !5969

if.then:                                          ; preds = %entry
  %2 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %cx.addr, align 8, !dbg !5970
  call void @acpi_processor_ffh_cstate_enter(%struct.acpi_processor_cx* %2) #10, !dbg !5972
  br label %if.end8, !dbg !5973

if.else:                                          ; preds = %entry
  %3 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %cx.addr, align 8, !dbg !5974
  %entry_method2 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %3, i32 0, i32 3, !dbg !5976
  %4 = load i8, i8* %entry_method2, align 4, !dbg !5976
  %conv3 = zext i8 %4 to i32, !dbg !5974
  %cmp4 = icmp eq i32 %conv3, 2, !dbg !5977
  br i1 %cmp4, label %if.then6, label %if.else7, !dbg !5978

if.then6:                                         ; preds = %if.else
  call void @acpi_safe_halt() #10, !dbg !5979
  br label %if.end, !dbg !5981

if.else7:                                         ; preds = %if.else
  %5 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %cx.addr, align 8, !dbg !5982
  %address = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %5, i32 0, i32 2, !dbg !5984
  %6 = load i32, i32* %address, align 4, !dbg !5984
  %call = call zeroext i8 @inb(i32 %6) #10, !dbg !5985
  call void @wait_for_freeze() #10, !dbg !5986
  br label %if.end

if.end:                                           ; preds = %if.else7, %if.then6
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  ret void, !dbg !5987
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_idle_bm_check() #0 !dbg !5988 {
entry:
  %retval = alloca i32, align 4
  %bm_status = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bm_status, metadata !5989, metadata !DIExpression()), !dbg !5990
  store i32 0, i32* %bm_status, align 4, !dbg !5990
  %0 = load i32, i32* @bm_check_disable, align 4, !dbg !5991
  %tobool = icmp ne i32 %0, 0, !dbg !5991
  br i1 %tobool, label %if.then, label %if.end, !dbg !5993

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5994
  br label %return, !dbg !5994

if.end:                                           ; preds = %entry
  %call = call i32 @acpi_read_bit_register(i32 1, i32* %bm_status) #10, !dbg !5995
  %1 = load i32, i32* %bm_status, align 4, !dbg !5996
  %tobool1 = icmp ne i32 %1, 0, !dbg !5996
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !5998

if.then2:                                         ; preds = %if.end
  %call3 = call i32 @acpi_write_bit_register(i32 1, i32 1) #10, !dbg !5999
  br label %if.end16, !dbg !5999

if.else:                                          ; preds = %if.end
  %2 = load i32, i32* getelementptr inbounds (%struct.acpi_processor_errata, %struct.acpi_processor_errata* @errata, i32 0, i32 1, i32 1), align 4, !dbg !6000
  %tobool4 = icmp ne i32 %2, 0, !dbg !6002
  br i1 %tobool4, label %if.then5, label %if.end15, !dbg !6003

if.then5:                                         ; preds = %if.else
  %3 = load i32, i32* getelementptr inbounds (%struct.acpi_processor_errata, %struct.acpi_processor_errata* @errata, i32 0, i32 1, i32 1), align 4, !dbg !6004
  %add = add i32 %3, 2, !dbg !6007
  %call6 = call zeroext i8 @inb_p(i32 %add) #10, !dbg !6008
  %conv = zext i8 %call6 to i32, !dbg !6008
  %and = and i32 %conv, 1, !dbg !6009
  %tobool7 = icmp ne i32 %and, 0, !dbg !6009
  br i1 %tobool7, label %if.then13, label %lor.lhs.false, !dbg !6010

lor.lhs.false:                                    ; preds = %if.then5
  %4 = load i32, i32* getelementptr inbounds (%struct.acpi_processor_errata, %struct.acpi_processor_errata* @errata, i32 0, i32 1, i32 1), align 4, !dbg !6011
  %add8 = add i32 %4, 10, !dbg !6012
  %call9 = call zeroext i8 @inb_p(i32 %add8) #10, !dbg !6013
  %conv10 = zext i8 %call9 to i32, !dbg !6013
  %and11 = and i32 %conv10, 1, !dbg !6014
  %tobool12 = icmp ne i32 %and11, 0, !dbg !6014
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !6015

if.then13:                                        ; preds = %lor.lhs.false, %if.then5
  store i32 1, i32* %bm_status, align 4, !dbg !6016
  br label %if.end14, !dbg !6017

if.end14:                                         ; preds = %if.then13, %lor.lhs.false
  br label %if.end15, !dbg !6018

if.end15:                                         ; preds = %if.end14, %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then2
  %5 = load i32, i32* %bm_status, align 4, !dbg !6019
  store i32 %5, i32* %retval, align 4, !dbg !6020
  br label %return, !dbg !6020

return:                                           ; preds = %if.end16, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !6021
  ret i32 %6, !dbg !6021
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @rcu_idle_enter() #0 !dbg !6022 {
entry:
  ret void, !dbg !6024
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @rcu_idle_exit() #0 !dbg !6025 {
entry:
  ret void, !dbg !6026
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_read_bit_register(i32, i32*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @inb_p(i32 %port) #0 !dbg !6027 {
entry:
  %port.addr = alloca i32, align 4
  %value = alloca i8, align 1
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !6031, metadata !DIExpression()), !dbg !6032
  call void @llvm.dbg.declare(metadata i8* %value, metadata !6033, metadata !DIExpression()), !dbg !6032
  %0 = load i32, i32* %port.addr, align 4, !dbg !6032
  %call = call zeroext i8 @inb(i32 %0) #10, !dbg !6032
  store i8 %call, i8* %value, align 1, !dbg !6032
  call void @slow_down_io() #10, !dbg !6032
  %1 = load i8, i8* %value, align 1, !dbg !6032
  ret i8 %1, !dbg !6032
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @inb(i32 %port) #0 !dbg !6034 {
entry:
  %port.addr = alloca i32, align 4
  %value = alloca i8, align 1
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !6035, metadata !DIExpression()), !dbg !6036
  call void @llvm.dbg.declare(metadata i8* %value, metadata !6037, metadata !DIExpression()), !dbg !6036
  %0 = load i32, i32* %port.addr, align 4, !dbg !6036
  %1 = call i8 asm sideeffect "inb ${1:w}, ${0:b}", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #9, !dbg !6036, !srcloc !6038
  store i8 %1, i8* %value, align 1, !dbg !6036
  %2 = load i8, i8* %value, align 1, !dbg !6036
  ret i8 %2, !dbg !6036
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @slow_down_io() #0 !dbg !6039 {
entry:
  %0 = load void ()*, void ()** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 0), align 8, !dbg !6040
  call void %0() #10, !dbg !6041
  ret void, !dbg !6042
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #8

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #9

; Function Attrs: noredzone
declare dso_local void @acpi_processor_ffh_cstate_enter(%struct.acpi_processor_cx*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_safe_halt() #0 section ".cpuidle.text" !dbg !6043 {
entry:
  %pscr_ret__.i = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i, metadata !6044, metadata !DIExpression()), !dbg !6050
  %__vpp_verify.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i, metadata !6053, metadata !DIExpression()), !dbg !6055
  %pfo_val__.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i, metadata !6056, metadata !DIExpression()), !dbg !6058
  %tmp.i = alloca %struct.task_struct*, align 8
  %tmp1.i = alloca %struct.task_struct*, align 8
  store i8* null, i8** %__vpp_verify.i, align 8, !dbg !6055
  %0 = load i8*, i8** %__vpp_verify.i, align 8, !dbg !6055
  %1 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #14, !dbg !6058, !srcloc !6059
  store i64 %1, i64* %pfo_val__.i, align 8, !dbg !6058
  %2 = load i64, i64* %pfo_val__.i, align 8, !dbg !6058
  %3 = inttoptr i64 %2 to %struct.task_struct*, !dbg !6058
  store %struct.task_struct* %3, %struct.task_struct** %tmp.i, align 8, !dbg !6058
  %4 = load %struct.task_struct*, %struct.task_struct** %tmp.i, align 8, !dbg !6058
  store %struct.task_struct* %4, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !6050
  %5 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !6050
  store %struct.task_struct* %5, %struct.task_struct** %tmp1.i, align 8, !dbg !6050
  %6 = load %struct.task_struct*, %struct.task_struct** %tmp1.i, align 8, !dbg !6050
  %7 = bitcast %struct.task_struct* %6 to %struct.thread_info*, !dbg !6060
  %call1 = call i32 @test_ti_thread_flag(%struct.thread_info* %7, i32 3) #10, !dbg !6060
  %tobool = icmp ne i32 %call1, 0, !dbg !6060
  br i1 %tobool, label %if.end, label %if.then, !dbg !6061

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6062

do.body:                                          ; preds = %if.then
  call void @arch_safe_halt() #10, !dbg !6064
  br label %do.end, !dbg !6064

do.end:                                           ; preds = %do.body
  br label %do.body2, !dbg !6066

do.body2:                                         ; preds = %do.end
  call void @arch_local_irq_disable() #10, !dbg !6067
  br label %do.end3, !dbg !6067

do.end3:                                          ; preds = %do.body2
  br label %if.end, !dbg !6069

if.end:                                           ; preds = %do.end3, %entry
  ret void, !dbg !6070
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @wait_for_freeze() #0 !dbg !6071 {
entry:
  br i1 false, label %cond.true, label %cond.false, !dbg !6072

cond.true:                                        ; preds = %entry
  br i1 true, label %if.then, label %if.end, !dbg !6073

cond.false:                                       ; preds = %entry
  %call = call zeroext i1 @test_bit(i64 159, i64* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 12, i32 0)) #10, !dbg !6073
  br i1 %call, label %if.then, label %if.end, !dbg !6072

if.then:                                          ; preds = %cond.false, %cond.true
  br label %return, !dbg !6075

if.end:                                           ; preds = %cond.false, %cond.true
  %0 = load i64, i64* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 50, i32 4), align 1, !dbg !6076
  %conv = trunc i64 %0 to i32, !dbg !6077
  %call1 = call i32 @inl(i32 %conv) #10, !dbg !6078
  br label %return, !dbg !6079

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6079
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @test_ti_thread_flag(%struct.thread_info* %ti, i32 %flag) #0 !dbg !6080 {
entry:
  %ti.addr = alloca %struct.thread_info*, align 8
  %flag.addr = alloca i32, align 4
  store %struct.thread_info* %ti, %struct.thread_info** %ti.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thread_info** %ti.addr, metadata !6084, metadata !DIExpression()), !dbg !6085
  store i32 %flag, i32* %flag.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flag.addr, metadata !6086, metadata !DIExpression()), !dbg !6087
  %0 = load i32, i32* %flag.addr, align 4, !dbg !6088
  %conv = sext i32 %0 to i64, !dbg !6088
  %1 = load %struct.thread_info*, %struct.thread_info** %ti.addr, align 8, !dbg !6089
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %1, i32 0, i32 0, !dbg !6090
  %call = call zeroext i1 @test_bit(i64 %conv, i64* %flags) #10, !dbg !6091
  %conv1 = zext i1 %call to i32, !dbg !6091
  ret i32 %conv1, !dbg !6092
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_safe_halt() #0 !dbg !6093 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6094, metadata !DIExpression()), !dbg !6096
  %0 = load i64, i64* %__edi, align 8, !dbg !6096
  store i64 %0, i64* %__edi, align 8, !dbg !6096
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6097, metadata !DIExpression()), !dbg !6096
  %1 = load i64, i64* %__esi, align 8, !dbg !6096
  store i64 %1, i64* %__esi, align 8, !dbg !6096
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6098, metadata !DIExpression()), !dbg !6096
  %2 = load i64, i64* %__edx, align 8, !dbg !6096
  store i64 %2, i64* %__edx, align 8, !dbg !6096
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6099, metadata !DIExpression()), !dbg !6096
  %3 = load i64, i64* %__ecx, align 8, !dbg !6096
  store i64 %3, i64* %__ecx, align 8, !dbg !6096
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6100, metadata !DIExpression()), !dbg !6096
  %4 = load i64, i64* %__eax, align 8, !dbg !6096
  store i64 %4, i64* %__eax, align 8, !dbg !6096
  %5 = load void ()*, void ()** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 4), align 8, !dbg !6096
  %6 = call i64 @llvm.read_register.i64(metadata !2697), !dbg !6096
  %7 = call { i64, i64, i64, i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${6:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${5:c}\0A  .byte 772b-771b\0A  .short ${7:c}\0A.popsection\0A", "={di},={si},={dx},={cx},={rsp},i,i,i,4,~{memory},~{cc},~{rax},~{r8},~{r9},~{r10},~{r11},~{dirflag},~{fpsr},~{flags}"(i64 40, void ()** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 4), i32 511, i64 %6) #9, !dbg !6096, !srcloc !6101
  %asmresult = extractvalue { i64, i64, i64, i64, i64 } %7, 0, !dbg !6096
  %asmresult1 = extractvalue { i64, i64, i64, i64, i64 } %7, 1, !dbg !6096
  %asmresult2 = extractvalue { i64, i64, i64, i64, i64 } %7, 2, !dbg !6096
  %asmresult3 = extractvalue { i64, i64, i64, i64, i64 } %7, 3, !dbg !6096
  %asmresult4 = extractvalue { i64, i64, i64, i64, i64 } %7, 4, !dbg !6096
  store i64 %asmresult, i64* %__edi, align 8, !dbg !6096
  store i64 %asmresult1, i64* %__esi, align 8, !dbg !6096
  store i64 %asmresult2, i64* %__edx, align 8, !dbg !6096
  store i64 %asmresult3, i64* %__ecx, align 8, !dbg !6096
  call void @llvm.write_register.i64(metadata !2697, i64 %asmresult4), !dbg !6096
  ret void, !dbg !6102
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !6103 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6104, metadata !DIExpression()), !dbg !6106
  %0 = load i64, i64* %__edi, align 8, !dbg !6106
  store i64 %0, i64* %__edi, align 8, !dbg !6106
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6107, metadata !DIExpression()), !dbg !6106
  %1 = load i64, i64* %__esi, align 8, !dbg !6106
  store i64 %1, i64* %__esi, align 8, !dbg !6106
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6108, metadata !DIExpression()), !dbg !6106
  %2 = load i64, i64* %__edx, align 8, !dbg !6106
  store i64 %2, i64* %__edx, align 8, !dbg !6106
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6109, metadata !DIExpression()), !dbg !6106
  %3 = load i64, i64* %__ecx, align 8, !dbg !6106
  store i64 %3, i64* %__ecx, align 8, !dbg !6106
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6110, metadata !DIExpression()), !dbg !6106
  %4 = load i64, i64* %__eax, align 8, !dbg !6106
  store i64 %4, i64* %__eax, align 8, !dbg !6106
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !6106
  %6 = call i64 @llvm.read_register.i64(metadata !2697), !dbg !6106
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #9, !dbg !6106, !srcloc !6111
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !6106
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !6106
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6106
  call void @llvm.write_register.i64(metadata !2697, i64 %asmresult1), !dbg !6106
  ret void, !dbg !6112
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @inl(i32 %port) #0 !dbg !6113 {
entry:
  %port.addr = alloca i32, align 4
  %value = alloca i32, align 4
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !6116, metadata !DIExpression()), !dbg !6117
  call void @llvm.dbg.declare(metadata i32* %value, metadata !6118, metadata !DIExpression()), !dbg !6117
  %0 = load i32, i32* %port.addr, align 4, !dbg !6117
  %1 = call i32 asm sideeffect "inl ${1:w}, $0", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #9, !dbg !6117, !srcloc !6119
  store i32 %1, i32* %value, align 4, !dbg !6117
  %2 = load i32, i32* %value, align 4, !dbg !6117
  ret i32 %2, !dbg !6117
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cpus_read_unlock() #0 !dbg !6120 {
entry:
  ret void, !dbg !6121
}

; Function Attrs: noredzone
declare dso_local i32 @dmi_check_system(%struct.dmi_system_id*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_processor_cstate_check(i32 %max_cstate) #0 !dbg !6122 {
entry:
  %retval = alloca i32, align 4
  %max_cstate.addr = alloca i32, align 4
  store i32 %max_cstate, i32* %max_cstate.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %max_cstate.addr, metadata !6126, metadata !DIExpression()), !dbg !6127
  %0 = load i8, i8* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 0), align 8, !dbg !6128
  %conv = zext i8 %0 to i32, !dbg !6130
  %cmp = icmp eq i32 %conv, 15, !dbg !6131
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !6132

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, i8* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 1), align 1, !dbg !6133
  %conv2 = zext i8 %1 to i32, !dbg !6134
  %cmp3 = icmp eq i32 %conv2, 2, !dbg !6135
  br i1 %cmp3, label %land.lhs.true5, label %if.else, !dbg !6136

land.lhs.true5:                                   ; preds = %land.lhs.true
  %2 = load i8, i8* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 2), align 2, !dbg !6137
  %conv6 = zext i8 %2 to i32, !dbg !6138
  %cmp7 = icmp sle i32 %conv6, 5, !dbg !6139
  br i1 %cmp7, label %land.lhs.true9, label %if.else, !dbg !6140

land.lhs.true9:                                   ; preds = %land.lhs.true5
  %3 = load i8, i8* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 3), align 1, !dbg !6141
  %conv10 = zext i8 %3 to i32, !dbg !6142
  %cmp11 = icmp slt i32 %conv10, 10, !dbg !6143
  br i1 %cmp11, label %if.then, label %if.else, !dbg !6144

if.then:                                          ; preds = %land.lhs.true9
  store i32 1, i32* %retval, align 4, !dbg !6145
  br label %return, !dbg !6145

if.else:                                          ; preds = %land.lhs.true9, %land.lhs.true5, %land.lhs.true, %entry
  br i1 false, label %cond.true, label %cond.false, !dbg !6146

cond.true:                                        ; preds = %if.else
  br i1 true, label %if.then14, label %if.else15, !dbg !6147

cond.false:                                       ; preds = %if.else
  %call = call zeroext i1 @test_bit(i64 612, i64* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 12, i32 0)) #10, !dbg !6147
  br i1 %call, label %if.then14, label %if.else15, !dbg !6146

if.then14:                                        ; preds = %cond.false, %cond.true
  store i32 1, i32* %retval, align 4, !dbg !6149
  br label %return, !dbg !6149

if.else15:                                        ; preds = %cond.false, %cond.true
  %4 = load i32, i32* %max_cstate.addr, align 4, !dbg !6150
  store i32 %4, i32* %retval, align 4, !dbg !6151
  br label %return, !dbg !6151

return:                                           ; preds = %if.else15, %if.then14, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !6152
  ret i32 %5, !dbg !6152
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @acpi_processor_claim_cst_control() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @set_max_cstate(%struct.dmi_system_id* %id) #0 !dbg !6153 {
entry:
  %retval = alloca i32, align 4
  %id.addr = alloca %struct.dmi_system_id*, align 8
  store %struct.dmi_system_id* %id, %struct.dmi_system_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dmi_system_id** %id.addr, metadata !6154, metadata !DIExpression()), !dbg !6155
  %0 = load i32, i32* @max_cstate, align 4, !dbg !6156
  %cmp = icmp ugt i32 %0, 8, !dbg !6158
  br i1 %cmp, label %if.then, label %if.end, !dbg !6159

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6160
  br label %return, !dbg !6160

if.end:                                           ; preds = %entry
  %1 = load %struct.dmi_system_id*, %struct.dmi_system_id** %id.addr, align 8, !dbg !6161
  %ident = getelementptr inbounds %struct.dmi_system_id, %struct.dmi_system_id* %1, i32 0, i32 1, !dbg !6161
  %2 = load i8*, i8** %ident, align 8, !dbg !6161
  %3 = load %struct.dmi_system_id*, %struct.dmi_system_id** %id.addr, align 8, !dbg !6161
  %driver_data = getelementptr inbounds %struct.dmi_system_id, %struct.dmi_system_id* %3, i32 0, i32 3, !dbg !6161
  %4 = load i8*, i8** %driver_data, align 8, !dbg !6161
  %5 = ptrtoint i8* %4 to i64, !dbg !6161
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.19, i64 0, i64 0), i8* %2, i64 %5, i32 9) #11, !dbg !6161
  %6 = load %struct.dmi_system_id*, %struct.dmi_system_id** %id.addr, align 8, !dbg !6162
  %driver_data1 = getelementptr inbounds %struct.dmi_system_id, %struct.dmi_system_id* %6, i32 0, i32 3, !dbg !6163
  %7 = load i8*, i8** %driver_data1, align 8, !dbg !6163
  %8 = ptrtoint i8* %7 to i64, !dbg !6164
  %conv = trunc i64 %8 to i32, !dbg !6164
  store i32 %conv, i32* @max_cstate, align 4, !dbg !6165
  store i32 0, i32* %retval, align 4, !dbg !6166
  br label %return, !dbg !6166

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !6167
  ret i32 %9, !dbg !6167
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { noredzone }
attributes #11 = { cold noredzone }
attributes #12 = { noredzone nounwind readnone }
attributes #13 = { noredzone nounwind }
attributes #14 = { nounwind readnone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!2697}
!llvm.module.flags = !{!2698, !2699, !2700, !2701}
!llvm.ident = !{!2702}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_max_cstate", scope: !2, file: !3, line: 41, type: !2694, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !106, globals: !2507, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/processor_idle.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !56, !63, !67, !81, !88, !95, !100}
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
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pm_qos_type", file: !51, line: 41, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/pm_qos.h", directory: "/home/lizy2001/genbc/linux")
!52 = !{!53, !54, !55}
!53 = !DIEnumerator(name: "PM_QOS_UNITIALIZED", value: 0, isUnsigned: true)
!54 = !DIEnumerator(name: "PM_QOS_MAX", value: 1, isUnsigned: true)
!55 = !DIEnumerator(name: "PM_QOS_MIN", value: 2, isUnsigned: true)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_pm_qos_req_type", file: !51, line: 99, baseType: !7, size: 32, elements: !57)
!57 = !{!58, !59, !60, !61, !62}
!58 = !DIEnumerator(name: "DEV_PM_QOS_RESUME_LATENCY", value: 1, isUnsigned: true)
!59 = !DIEnumerator(name: "DEV_PM_QOS_LATENCY_TOLERANCE", value: 2, isUnsigned: true)
!60 = !DIEnumerator(name: "DEV_PM_QOS_MIN_FREQUENCY", value: 3, isUnsigned: true)
!61 = !DIEnumerator(name: "DEV_PM_QOS_MAX_FREQUENCY", value: 4, isUnsigned: true)
!62 = !DIEnumerator(name: "DEV_PM_QOS_FLAGS", value: 5, isUnsigned: true)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freq_qos_req_type", file: !51, line: 80, baseType: !7, size: 32, elements: !64)
!64 = !{!65, !66}
!65 = !DIEnumerator(name: "FREQ_QOS_MIN", value: 1, isUnsigned: true)
!66 = !DIEnumerator(name: "FREQ_QOS_MAX", value: 2, isUnsigned: true)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !68, line: 76, baseType: !7, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/lizy2001/genbc/linux")
!69 = !{!70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80}
!70 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0, isUnsigned: true)
!71 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1, isUnsigned: true)
!72 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2, isUnsigned: true)
!73 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3, isUnsigned: true)
!74 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4, isUnsigned: true)
!75 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5, isUnsigned: true)
!76 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6, isUnsigned: true)
!77 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7, isUnsigned: true)
!78 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8, isUnsigned: true)
!79 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9, isUnsigned: true)
!80 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10, isUnsigned: true)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "idle_boot_override", file: !82, line: 678, baseType: !7, size: 32, elements: !83)
!82 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!83 = !{!84, !85, !86, !87}
!84 = !DIEnumerator(name: "IDLE_NO_OVERRIDE", value: 0, isUnsigned: true)
!85 = !DIEnumerator(name: "IDLE_HALT", value: 1, isUnsigned: true)
!86 = !DIEnumerator(name: "IDLE_NOMWAIT", value: 2, isUnsigned: true)
!87 = !DIEnumerator(name: "IDLE_POLL", value: 3, isUnsigned: true)
!88 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !89, line: 305, baseType: !7, size: 32, elements: !90)
!89 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!90 = !{!91, !92, !93, !94}
!91 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!92 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!93 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!94 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !96, line: 10, baseType: !7, size: 32, elements: !97)
!96 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!97 = !{!98, !99}
!98 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!99 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tick_broadcast_mode", file: !101, line: 54, baseType: !7, size: 32, elements: !102)
!101 = !DIFile(filename: "./include/linux/tick.h", directory: "/home/lizy2001/genbc/linux")
!102 = !{!103, !104, !105}
!103 = !DIEnumerator(name: "TICK_BROADCAST_OFF", value: 0, isUnsigned: true)
!104 = !DIEnumerator(name: "TICK_BROADCAST_ON", value: 1, isUnsigned: true)
!105 = !DIEnumerator(name: "TICK_BROADCAST_FORCE", value: 2, isUnsigned: true)
!106 = !{!107, !163, !164, !2490, !1699, !2492, !2502, !186, !125, !2338, !165, !2503, !286, !2504, !2505, !2506, !670, !454}
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_device", file: !110, line: 92, size: 6400, elements: !111)
!110 = !DIFile(filename: "./include/linux/cpuidle.h", directory: "/home/lizy2001/genbc/linux")
!111 = !{!112, !113, !114, !115, !116, !124, !126, !130, !131, !132, !146, !150, !153, !156}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !109, file: !110, line: 93, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !109, file: !110, line: 94, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "poll_time_limit", scope: !109, file: !110, line: 95, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !109, file: !110, line: 96, baseType: !7, size: 32, offset: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "next_hrtimer", scope: !109, file: !110, line: 97, baseType: !117, size: 64, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !118, line: 29, baseType: !119)
!118 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !120, line: 22, baseType: !121)
!120 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !122, line: 30, baseType: !123)
!122 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!123 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "last_state_idx", scope: !109, file: !110, line: 99, baseType: !125, size: 32, offset: 128)
!125 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "last_residency_ns", scope: !109, file: !110, line: 100, baseType: !127, size: 64, offset: 192)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !120, line: 23, baseType: !128)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !122, line: 31, baseType: !129)
!129 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "poll_limit_ns", scope: !109, file: !110, line: 101, baseType: !127, size: 64, offset: 256)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "forced_idle_latency_limit_ns", scope: !109, file: !110, line: 102, baseType: !127, size: 64, offset: 320)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "states_usage", scope: !109, file: !110, line: 103, baseType: !133, size: 5120, offset: 384)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 5120, elements: !144)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_state_usage", file: !110, line: 35, size: 512, elements: !135)
!135 = !{!136, !137, !138, !139, !140, !141, !142, !143}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !134, file: !110, line: 36, baseType: !129, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !134, file: !110, line: 37, baseType: !129, size: 64, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !134, file: !110, line: 38, baseType: !127, size: 64, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "above", scope: !134, file: !110, line: 39, baseType: !129, size: 64, offset: 192)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "below", scope: !134, file: !110, line: 40, baseType: !129, size: 64, offset: 256)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "rejected", scope: !134, file: !110, line: 41, baseType: !129, size: 64, offset: 320)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "s2idle_usage", scope: !134, file: !110, line: 43, baseType: !129, size: 64, offset: 384)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "s2idle_time", scope: !134, file: !110, line: 44, baseType: !129, size: 64, offset: 448)
!144 = !{!145}
!145 = !DISubrange(count: 10)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "kobjs", scope: !109, file: !110, line: 104, baseType: !147, size: 640, offset: 5504)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 640, elements: !144)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_state_kobj", file: !110, line: 89, flags: DIFlagFwdDecl)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_driver", scope: !109, file: !110, line: 105, baseType: !151, size: 64, offset: 6144)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_driver_kobj", file: !110, line: 90, flags: DIFlagFwdDecl)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_dev", scope: !109, file: !110, line: 106, baseType: !154, size: 64, offset: 6208)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_device_kobj", file: !110, line: 88, flags: DIFlagFwdDecl)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !109, file: !110, line: 107, baseType: !157, size: 128, offset: 6272)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !158, line: 178, size: 128, elements: !159)
!158 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!159 = !{!160, !162}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !157, file: !158, line: 179, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !157, file: !158, line: 179, baseType: !161, size: 64, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor", file: !167, line: 218, size: 7936, elements: !168)
!167 = !DIFile(filename: "./include/acpi/processor.h", directory: "/home/lizy2001/genbc/linux")
!168 = !{!169, !172, !175, !178, !179, !180, !181, !182, !199, !239, !290, !339, !349, !2487, !2488, !2489}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !166, file: !167, line: 219, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !171, line: 424, baseType: !163)
!171 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!172 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_id", scope: !166, file: !167, line: 220, baseType: !173, size: 32, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !120, line: 21, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !122, line: 27, baseType: !7)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "phys_id", scope: !166, file: !167, line: 221, baseType: !176, size: 32, offset: 96)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_cpuid_t", file: !177, line: 266, baseType: !173)
!177 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/lizy2001/genbc/linux")
!178 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !166, file: !167, line: 222, baseType: !173, size: 32, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "pblk", scope: !166, file: !167, line: 223, baseType: !173, size: 32, offset: 160)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "performance_platform_limit", scope: !166, file: !167, line: 224, baseType: !125, size: 32, offset: 192)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "throttling_platform_limit", scope: !166, file: !167, line: 225, baseType: !125, size: 32, offset: 224)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !166, file: !167, line: 228, baseType: !183, size: 16, offset: 256)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_flags", file: !167, line: 204, size: 16, elements: !184)
!184 = !{!185, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !183, file: !167, line: 205, baseType: !186, size: 1, flags: DIFlagBitField, extraData: i64 0)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !120, line: 17, baseType: !187)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !122, line: 21, baseType: !188)
!188 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !183, file: !167, line: 206, baseType: !186, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "throttling", scope: !183, file: !167, line: 207, baseType: !186, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !183, file: !167, line: 208, baseType: !186, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "bm_control", scope: !183, file: !167, line: 209, baseType: !186, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "bm_check", scope: !183, file: !167, line: 210, baseType: !186, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "has_cst", scope: !183, file: !167, line: 211, baseType: !186, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "has_lpi", scope: !183, file: !167, line: 212, baseType: !186, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "power_setup_done", scope: !183, file: !167, line: 213, baseType: !186, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "bm_rld_set", scope: !183, file: !167, line: 214, baseType: !186, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "need_hotplug_init", scope: !183, file: !167, line: 215, baseType: !186, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !166, file: !167, line: 229, baseType: !200, size: 4736, offset: 320)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_power", file: !167, line: 87, size: 4736, elements: !201)
!201 = !{!202, !203, !238}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !200, file: !167, line: 88, baseType: !125, size: 32)
!203 = !DIDerivedType(tag: DW_TAG_member, scope: !200, file: !167, line: 89, baseType: !204, size: 4608, offset: 64)
!204 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !200, file: !167, line: 89, size: 4608, elements: !205)
!205 = !{!206, !224}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !204, file: !167, line: 90, baseType: !207, size: 3328)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 3328, elements: !222)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_cx", file: !167, line: 63, size: 416, elements: !209)
!209 = !{!210, !211, !212, !213, !214, !215, !216, !217}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !208, file: !167, line: 64, baseType: !186, size: 8)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !208, file: !167, line: 65, baseType: !186, size: 8, offset: 8)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !208, file: !167, line: 66, baseType: !173, size: 32, offset: 32)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "entry_method", scope: !208, file: !167, line: 67, baseType: !186, size: 8, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !208, file: !167, line: 68, baseType: !186, size: 8, offset: 72)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !208, file: !167, line: 69, baseType: !173, size: 32, offset: 96)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "bm_sts_skip", scope: !208, file: !167, line: 70, baseType: !186, size: 8, offset: 128)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !208, file: !167, line: 71, baseType: !218, size: 256, offset: 136)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 256, elements: !220)
!219 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!220 = !{!221}
!221 = !DISubrange(count: 32)
!222 = !{!223}
!223 = !DISubrange(count: 8)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "lpi_states", scope: !204, file: !167, line: 91, baseType: !225, size: 4608)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 4608, elements: !222)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_lpi_state", file: !167, line: 74, size: 576, elements: !227)
!227 = !{!228, !229, !230, !231, !232, !233, !234, !235, !236, !237}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "min_residency", scope: !226, file: !167, line: 75, baseType: !173, size: 32)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "wake_latency", scope: !226, file: !167, line: 76, baseType: !173, size: 32, offset: 32)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !226, file: !167, line: 77, baseType: !173, size: 32, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "arch_flags", scope: !226, file: !167, line: 78, baseType: !173, size: 32, offset: 96)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "res_cnt_freq", scope: !226, file: !167, line: 79, baseType: !173, size: 32, offset: 128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "enable_parent_state", scope: !226, file: !167, line: 80, baseType: !173, size: 32, offset: 160)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !226, file: !167, line: 81, baseType: !127, size: 64, offset: 192)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !226, file: !167, line: 82, baseType: !186, size: 8, offset: 256)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "entry_method", scope: !226, file: !167, line: 83, baseType: !186, size: 8, offset: 264)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !226, file: !167, line: 84, baseType: !218, size: 256, offset: 272)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "timer_broadcast_on_state", scope: !200, file: !167, line: 93, baseType: !125, size: 32, offset: 4672)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !166, file: !167, line: 230, baseType: !240, size: 64, offset: 5056)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_performance", file: !167, line: 125, size: 896, elements: !242)
!242 = !{!243, !244, !245, !258, !259, !260, !270, !278, !289}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !241, file: !167, line: 126, baseType: !7, size: 32)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "platform_limit", scope: !241, file: !167, line: 127, baseType: !7, size: 32, offset: 32)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "control_register", scope: !241, file: !167, line: 128, baseType: !246, size: 120, offset: 64)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pct_register", file: !167, line: 106, size: 120, elements: !247)
!247 = !{!248, !249, !253, !254, !255, !256, !257}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !246, file: !167, line: 107, baseType: !186, size: 8)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !246, file: !167, line: 108, baseType: !250, size: 16, offset: 8)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !120, line: 19, baseType: !251)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !122, line: 24, baseType: !252)
!252 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !246, file: !167, line: 109, baseType: !186, size: 8, offset: 24)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !246, file: !167, line: 110, baseType: !186, size: 8, offset: 32)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !246, file: !167, line: 111, baseType: !186, size: 8, offset: 40)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !246, file: !167, line: 112, baseType: !186, size: 8, offset: 48)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !246, file: !167, line: 113, baseType: !127, size: 64, offset: 56)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "status_register", scope: !241, file: !167, line: 129, baseType: !246, size: 120, offset: 184)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !241, file: !167, line: 130, baseType: !7, size: 32, offset: 320)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !241, file: !167, line: 131, baseType: !261, size: 64, offset: 384)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_px", file: !167, line: 116, size: 384, elements: !263)
!263 = !{!264, !265, !266, !267, !268, !269}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "core_frequency", scope: !262, file: !167, line: 117, baseType: !127, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !262, file: !167, line: 118, baseType: !127, size: 64, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "transition_latency", scope: !262, file: !167, line: 119, baseType: !127, size: 64, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "bus_master_latency", scope: !262, file: !167, line: 120, baseType: !127, size: 64, offset: 192)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !262, file: !167, line: 121, baseType: !127, size: 64, offset: 256)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !262, file: !167, line: 122, baseType: !127, size: 64, offset: 320)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "domain_info", scope: !241, file: !167, line: 132, baseType: !271, size: 320, offset: 448)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_psd_package", file: !167, line: 98, size: 320, elements: !272)
!272 = !{!273, !274, !275, !276, !277}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "num_entries", scope: !271, file: !167, line: 99, baseType: !127, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !271, file: !167, line: 100, baseType: !127, size: 64, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !271, file: !167, line: 101, baseType: !127, size: 64, offset: 128)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "coord_type", scope: !271, file: !167, line: 102, baseType: !127, size: 64, offset: 192)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "num_processors", scope: !271, file: !167, line: 103, baseType: !127, size: 64, offset: 256)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "shared_cpu_map", scope: !241, file: !167, line: 133, baseType: !279, size: 64, offset: 768)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !280, line: 756, baseType: !281)
!280 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, size: 64, elements: !287)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !280, line: 17, size: 64, elements: !283)
!283 = !{!284}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !282, file: !280, line: 17, baseType: !285, size: 64)
!285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !286, size: 64, elements: !287)
!286 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!287 = !{!288}
!288 = !DISubrange(count: 1)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "shared_type", scope: !241, file: !167, line: 134, baseType: !7, size: 32, offset: 832)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "throttling", scope: !166, file: !167, line: 231, baseType: !291, size: 1600, offset: 5120)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_throttling", file: !167, line: 170, size: 1600, elements: !292)
!292 = !{!293, !294, !295, !296, !297, !298, !307, !315, !316, !320, !326, !327, !328, !329, !330, !331}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !291, file: !167, line: 171, baseType: !7, size: 32)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "platform_limit", scope: !291, file: !167, line: 172, baseType: !7, size: 32, offset: 32)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "control_register", scope: !291, file: !167, line: 173, baseType: !246, size: 120, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "status_register", scope: !291, file: !167, line: 174, baseType: !246, size: 120, offset: 184)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !291, file: !167, line: 175, baseType: !7, size: 32, offset: 320)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "states_tss", scope: !291, file: !167, line: 176, baseType: !299, size: 64, offset: 384)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_tx_tss", file: !167, line: 157, size: 320, elements: !301)
!301 = !{!302, !303, !304, !305, !306}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "freqpercentage", scope: !300, file: !167, line: 158, baseType: !127, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !300, file: !167, line: 159, baseType: !127, size: 64, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "transition_latency", scope: !300, file: !167, line: 160, baseType: !127, size: 64, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !300, file: !167, line: 161, baseType: !127, size: 64, offset: 192)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !300, file: !167, line: 162, baseType: !127, size: 64, offset: 256)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "domain_info", scope: !291, file: !167, line: 177, baseType: !308, size: 320, offset: 448)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_tsd_package", file: !167, line: 139, size: 320, elements: !309)
!309 = !{!310, !311, !312, !313, !314}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "num_entries", scope: !308, file: !167, line: 140, baseType: !127, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !308, file: !167, line: 141, baseType: !127, size: 64, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !308, file: !167, line: 142, baseType: !127, size: 64, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "coord_type", scope: !308, file: !167, line: 143, baseType: !127, size: 64, offset: 192)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "num_processors", scope: !308, file: !167, line: 144, baseType: !127, size: 64, offset: 256)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "shared_cpu_map", scope: !291, file: !167, line: 178, baseType: !279, size: 64, offset: 768)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_processor_get_throttling", scope: !291, file: !167, line: 179, baseType: !317, size: 64, offset: 832)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!125, !165}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_processor_set_throttling", scope: !291, file: !167, line: 180, baseType: !321, size: 64, offset: 896)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DISubroutineType(types: !323)
!323 = !{!125, !165, !125, !324}
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !158, line: 30, baseType: !325)
!325 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !291, file: !167, line: 183, baseType: !173, size: 32, offset: 960)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "duty_offset", scope: !291, file: !167, line: 184, baseType: !186, size: 8, offset: 992)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "duty_width", scope: !291, file: !167, line: 185, baseType: !186, size: 8, offset: 1000)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "tsd_valid_flag", scope: !291, file: !167, line: 186, baseType: !186, size: 8, offset: 1008)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "shared_type", scope: !291, file: !167, line: 187, baseType: !7, size: 32, offset: 1024)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !291, file: !167, line: 188, baseType: !332, size: 512, offset: 1056)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !333, size: 512, elements: !337)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_tx", file: !167, line: 164, size: 32, elements: !334)
!334 = !{!335, !336}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !333, file: !167, line: 165, baseType: !250, size: 16)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !333, file: !167, line: 166, baseType: !250, size: 16, offset: 16)
!337 = !{!338}
!338 = !DISubrange(count: 16)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !166, file: !167, line: 232, baseType: !340, size: 192, offset: 6720)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_limit", file: !167, line: 198, size: 192, elements: !341)
!341 = !{!342, !347, !348}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !340, file: !167, line: 199, baseType: !343, size: 64)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_lx", file: !167, line: 193, size: 64, elements: !344)
!344 = !{!345, !346}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "px", scope: !343, file: !167, line: 194, baseType: !125, size: 32)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tx", scope: !343, file: !167, line: 195, baseType: !125, size: 32, offset: 32)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "thermal", scope: !340, file: !167, line: 200, baseType: !343, size: 64, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !340, file: !167, line: 201, baseType: !343, size: 64, offset: 128)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !166, file: !167, line: 233, baseType: !350, size: 64, offset: 6912)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device", file: !352, line: 93, size: 6528, elements: !353)
!352 = !DIFile(filename: "./include/linux/thermal.h", directory: "/home/lizy2001/genbc/linux")
!353 = !{!354, !355, !359, !2454, !2455, !2456, !2457, !2483, !2484, !2485, !2486}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !351, file: !352, line: 94, baseType: !125, size: 32)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !351, file: !352, line: 95, baseType: !356, size: 160, offset: 32)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 160, elements: !357)
!357 = !{!358}
!358 = !DISubrange(count: 20)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !351, file: !352, line: 96, baseType: !360, size: 5568, offset: 192)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !361)
!361 = !{!362, !1827, !1829, !1832, !1833, !1884, !1980, !1981, !1982, !1983, !1984, !1993, !2170, !2183, !2379, !2380, !2384, !2386, !2387, !2388, !2392, !2398, !2399, !2402, !2403, !2404, !2407, !2408, !2409, !2410, !2442, !2443, !2444, !2447, !2450, !2451, !2452, !2453}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !360, file: !30, line: 462, baseType: !363, size: 512)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !364, line: 64, size: 512, elements: !365)
!364 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!365 = !{!366, !369, !370, !372, !432, !1663, !1817, !1822, !1823, !1824, !1825, !1826}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !363, file: !364, line: 65, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !219)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !363, file: !364, line: 66, baseType: !157, size: 128, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !363, file: !364, line: 67, baseType: !371, size: 64, offset: 192)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !363, file: !364, line: 68, baseType: !373, size: 64, offset: 256)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !364, line: 192, size: 704, elements: !375)
!375 = !{!376, !377, !393, !394}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !374, file: !364, line: 193, baseType: !157, size: 128)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !374, file: !364, line: 194, baseType: !378, offset: 128)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !379, line: 83, baseType: !380)
!379 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !379, line: 71, elements: !381)
!381 = !{!382}
!382 = !DIDerivedType(tag: DW_TAG_member, scope: !380, file: !379, line: 72, baseType: !383)
!383 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !380, file: !379, line: 72, elements: !384)
!384 = !{!385}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !383, file: !379, line: 73, baseType: !386)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !379, line: 20, elements: !387)
!387 = !{!388}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !386, file: !379, line: 21, baseType: !389)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !390, line: 25, baseType: !391)
!390 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !390, line: 25, elements: !392)
!392 = !{}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !374, file: !364, line: 195, baseType: !363, size: 512, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !374, file: !364, line: 196, baseType: !395, size: 64, offset: 640)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !397)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !364, line: 156, size: 192, elements: !398)
!398 = !{!399, !404, !409}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !397, file: !364, line: 157, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !401)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DISubroutineType(types: !403)
!403 = !{!125, !373, !371}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !397, file: !364, line: 158, baseType: !405, size: 64, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !406)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DISubroutineType(types: !408)
!408 = !{!367, !373, !371}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !397, file: !364, line: 159, baseType: !410, size: 64, offset: 128)
!410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !411)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DISubroutineType(types: !413)
!413 = !{!125, !373, !371, !414}
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !364, line: 148, size: 20736, elements: !416)
!416 = !{!417, !422, !426, !427, !431}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !415, file: !364, line: 149, baseType: !418, size: 192)
!418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 192, elements: !420)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!420 = !{!421}
!421 = !DISubrange(count: 3)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !415, file: !364, line: 150, baseType: !423, size: 4096, offset: 192)
!423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 4096, elements: !424)
!424 = !{!425}
!425 = !DISubrange(count: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !415, file: !364, line: 151, baseType: !125, size: 32, offset: 4288)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !415, file: !364, line: 152, baseType: !428, size: 16384, offset: 4320)
!428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 16384, elements: !429)
!429 = !{!430}
!430 = !DISubrange(count: 2048)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !415, file: !364, line: 153, baseType: !125, size: 32, offset: 20704)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !363, file: !364, line: 69, baseType: !433, size: 64, offset: 320)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !364, line: 138, size: 448, elements: !435)
!435 = !{!436, !440, !468, !470, !1611, !1642, !1646}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !434, file: !364, line: 139, baseType: !437, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DISubroutineType(types: !439)
!439 = !{null, !371}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !434, file: !364, line: 140, baseType: !441, size: 64, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !443)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !444, line: 230, size: 128, elements: !445)
!444 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!445 = !{!446, !461}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !443, file: !444, line: 231, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DISubroutineType(types: !449)
!449 = !{!450, !371, !455, !419}
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !158, line: 60, baseType: !451)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !452, line: 73, baseType: !453)
!452 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !452, line: 15, baseType: !454)
!454 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !444, line: 30, size: 128, elements: !457)
!457 = !{!458, !459}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !456, file: !444, line: 31, baseType: !367, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !456, file: !444, line: 32, baseType: !460, size: 16, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !158, line: 19, baseType: !252)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !443, file: !444, line: 232, baseType: !462, size: 64, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{!450, !371, !455, !367, !465}
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !158, line: 55, baseType: !466)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !452, line: 72, baseType: !467)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !452, line: 16, baseType: !286)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !434, file: !364, line: 141, baseType: !469, size: 64, offset: 128)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !434, file: !364, line: 142, baseType: !471, size: 64, offset: 192)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !474)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !444, line: 84, size: 320, elements: !475)
!475 = !{!476, !477, !481, !1608, !1609}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !474, file: !444, line: 85, baseType: !367, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !474, file: !444, line: 86, baseType: !478, size: 64, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DISubroutineType(types: !480)
!480 = !{!460, !371, !455, !125}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !474, file: !444, line: 88, baseType: !482, size: 64, offset: 128)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!460, !371, !485, !125}
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !444, line: 168, size: 448, elements: !487)
!487 = !{!488, !489, !490, !491, !500, !501}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !486, file: !444, line: 169, baseType: !456, size: 128)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !486, file: !444, line: 170, baseType: !465, size: 64, offset: 128)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !486, file: !444, line: 171, baseType: !163, size: 64, offset: 192)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !486, file: !444, line: 172, baseType: !492, size: 64, offset: 256)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{!450, !495, !371, !485, !419, !498, !465}
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !497, line: 526, flags: DIFlagFwdDecl)
!497 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !158, line: 46, baseType: !499)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !452, line: 88, baseType: !123)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !486, file: !444, line: 174, baseType: !492, size: 64, offset: 320)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !486, file: !444, line: 176, baseType: !502, size: 64, offset: 384)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{!125, !495, !371, !485, !505}
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !507, line: 305, size: 1472, elements: !508)
!507 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!508 = !{!509, !510, !511, !512, !513, !521, !522, !1582, !1588, !1589, !1594, !1595, !1598, !1602, !1603, !1604, !1605, !1606}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !506, file: !507, line: 308, baseType: !286, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !506, file: !507, line: 309, baseType: !286, size: 64, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !506, file: !507, line: 313, baseType: !505, size: 64, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !506, file: !507, line: 313, baseType: !505, size: 64, offset: 192)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !506, file: !507, line: 315, baseType: !514, size: 192, align: 64, offset: 256)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !515, line: 24, size: 192, align: 64, elements: !516)
!515 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!516 = !{!517, !518, !520}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !514, file: !515, line: 25, baseType: !286, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !514, file: !515, line: 26, baseType: !519, size: 64, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !514, file: !515, line: 27, baseType: !519, size: 64, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !506, file: !507, line: 323, baseType: !286, size: 64, offset: 448)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !506, file: !507, line: 327, baseType: !523, size: 64, offset: 512)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !507, line: 388, size: 7296, elements: !525)
!525 = !{!526, !1578}
!526 = !DIDerivedType(tag: DW_TAG_member, scope: !524, file: !507, line: 389, baseType: !527, size: 7296)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !524, file: !507, line: 389, size: 7296, elements: !528)
!528 = !{!529, !530, !534, !535, !539, !540, !541, !542, !543, !551, !556, !557, !558, !559, !566, !567, !568, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !603, !611, !614, !660, !661, !1548, !1549, !1552, !1556, !1557, !1560, !1561, !1562, !1565, !1577}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !527, file: !507, line: 390, baseType: !505, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !527, file: !507, line: 391, baseType: !531, size: 64, offset: 64)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !515, line: 31, size: 64, elements: !532)
!532 = !{!533}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !531, file: !515, line: 32, baseType: !519, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !527, file: !507, line: 392, baseType: !127, size: 64, offset: 128)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !527, file: !507, line: 394, baseType: !536, size: 64, offset: 192)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!286, !495, !286, !286, !286, !286}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !527, file: !507, line: 398, baseType: !286, size: 64, offset: 256)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !527, file: !507, line: 399, baseType: !286, size: 64, offset: 320)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !527, file: !507, line: 405, baseType: !286, size: 64, offset: 384)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !527, file: !507, line: 406, baseType: !286, size: 64, offset: 448)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !527, file: !507, line: 407, baseType: !544, size: 64, offset: 512)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !497, line: 286, baseType: !546)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !497, line: 286, size: 64, elements: !547)
!547 = !{!548}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !546, file: !497, line: 286, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !550, line: 18, baseType: !286)
!550 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!551 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !527, file: !507, line: 416, baseType: !552, size: 32, offset: 576)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !158, line: 168, baseType: !553)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !158, line: 166, size: 32, elements: !554)
!554 = !{!555}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !553, file: !158, line: 167, baseType: !125, size: 32)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !527, file: !507, line: 428, baseType: !552, size: 32, offset: 608)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !527, file: !507, line: 437, baseType: !552, size: 32, offset: 640)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !527, file: !507, line: 447, baseType: !552, size: 32, offset: 672)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !527, file: !507, line: 450, baseType: !560, size: 64, offset: 704)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !561, line: 13, baseType: !562)
!561 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !158, line: 175, baseType: !563)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !158, line: 173, size: 64, elements: !564)
!564 = !{!565}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !563, file: !158, line: 174, baseType: !119, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !527, file: !507, line: 452, baseType: !125, size: 32, offset: 768)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !527, file: !507, line: 454, baseType: !378, offset: 800)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !527, file: !507, line: 457, baseType: !569, size: 256, offset: 832)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !570, line: 35, size: 256, elements: !571)
!570 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!571 = !{!572, !573, !574, !576}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !569, file: !570, line: 36, baseType: !560, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !569, file: !570, line: 42, baseType: !560, size: 64, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !569, file: !570, line: 46, baseType: !575, offset: 128)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !379, line: 29, baseType: !386)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !569, file: !570, line: 47, baseType: !157, size: 128, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !527, file: !507, line: 459, baseType: !157, size: 128, offset: 1088)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !527, file: !507, line: 466, baseType: !286, size: 64, offset: 1216)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !527, file: !507, line: 467, baseType: !286, size: 64, offset: 1280)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !527, file: !507, line: 469, baseType: !286, size: 64, offset: 1344)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !527, file: !507, line: 470, baseType: !286, size: 64, offset: 1408)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !527, file: !507, line: 471, baseType: !562, size: 64, offset: 1472)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !527, file: !507, line: 472, baseType: !286, size: 64, offset: 1536)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !527, file: !507, line: 473, baseType: !286, size: 64, offset: 1600)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !527, file: !507, line: 474, baseType: !286, size: 64, offset: 1664)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !527, file: !507, line: 475, baseType: !286, size: 64, offset: 1728)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !527, file: !507, line: 477, baseType: !378, offset: 1792)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !527, file: !507, line: 478, baseType: !286, size: 64, offset: 1792)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !527, file: !507, line: 478, baseType: !286, size: 64, offset: 1856)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !527, file: !507, line: 478, baseType: !286, size: 64, offset: 1920)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !527, file: !507, line: 478, baseType: !286, size: 64, offset: 1984)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !527, file: !507, line: 479, baseType: !286, size: 64, offset: 2048)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !527, file: !507, line: 479, baseType: !286, size: 64, offset: 2112)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !527, file: !507, line: 479, baseType: !286, size: 64, offset: 2176)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !527, file: !507, line: 480, baseType: !286, size: 64, offset: 2240)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !527, file: !507, line: 480, baseType: !286, size: 64, offset: 2304)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !527, file: !507, line: 480, baseType: !286, size: 64, offset: 2368)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !527, file: !507, line: 480, baseType: !286, size: 64, offset: 2432)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !527, file: !507, line: 482, baseType: !600, size: 2816, offset: 2496)
!600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !286, size: 2816, elements: !601)
!601 = !{!602}
!602 = !DISubrange(count: 44)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !527, file: !507, line: 488, baseType: !604, size: 256, offset: 5312)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !605, line: 60, size: 256, elements: !606)
!605 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!606 = !{!607}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !604, file: !605, line: 61, baseType: !608, size: 256)
!608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !560, size: 256, elements: !609)
!609 = !{!610}
!610 = !DISubrange(count: 4)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !527, file: !507, line: 490, baseType: !612, size: 64, offset: 5568)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !507, line: 490, flags: DIFlagFwdDecl)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !527, file: !507, line: 493, baseType: !615, size: 896, offset: 5632)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !616, line: 53, baseType: !617)
!616 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !616, line: 13, size: 896, elements: !618)
!618 = !{!619, !620, !621, !622, !625, !626, !633, !634, !654, !655, !656}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !617, file: !616, line: 18, baseType: !127, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !617, file: !616, line: 28, baseType: !562, size: 64, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !617, file: !616, line: 31, baseType: !569, size: 256, offset: 128)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !617, file: !616, line: 32, baseType: !623, size: 64, offset: 384)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !616, line: 32, flags: DIFlagFwdDecl)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !617, file: !616, line: 37, baseType: !252, size: 16, offset: 448)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !617, file: !616, line: 40, baseType: !627, size: 192, offset: 512)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !628, line: 53, size: 192, elements: !629)
!628 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!629 = !{!630, !631, !632}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !627, file: !628, line: 54, baseType: !560, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !627, file: !628, line: 55, baseType: !378, offset: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !627, file: !628, line: 59, baseType: !157, size: 128, offset: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !617, file: !616, line: 41, baseType: !163, size: 64, offset: 704)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !617, file: !616, line: 42, baseType: !635, size: 64, offset: 768)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !637)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !638, line: 13, size: 896, elements: !639)
!638 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!639 = !{!640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !637, file: !638, line: 14, baseType: !163, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !637, file: !638, line: 15, baseType: !286, size: 64, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !637, file: !638, line: 17, baseType: !286, size: 64, offset: 128)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !637, file: !638, line: 17, baseType: !286, size: 64, offset: 192)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !637, file: !638, line: 19, baseType: !454, size: 64, offset: 256)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !637, file: !638, line: 21, baseType: !454, size: 64, offset: 320)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !637, file: !638, line: 22, baseType: !454, size: 64, offset: 384)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !637, file: !638, line: 23, baseType: !454, size: 64, offset: 448)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !637, file: !638, line: 24, baseType: !454, size: 64, offset: 512)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !637, file: !638, line: 25, baseType: !454, size: 64, offset: 576)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !637, file: !638, line: 26, baseType: !454, size: 64, offset: 640)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !637, file: !638, line: 27, baseType: !454, size: 64, offset: 704)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !637, file: !638, line: 28, baseType: !454, size: 64, offset: 768)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !637, file: !638, line: 29, baseType: !454, size: 64, offset: 832)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !617, file: !616, line: 44, baseType: !552, size: 32, offset: 832)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !617, file: !616, line: 50, baseType: !250, size: 16, offset: 864)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !617, file: !616, line: 51, baseType: !657, size: 16, offset: 880)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !120, line: 18, baseType: !658)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !122, line: 23, baseType: !659)
!659 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !527, file: !507, line: 495, baseType: !286, size: 64, offset: 6528)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !527, file: !507, line: 497, baseType: !662, size: 64, offset: 6592)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !507, line: 381, size: 384, elements: !664)
!664 = !{!665, !666, !1547}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !663, file: !507, line: 382, baseType: !552, size: 32)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !663, file: !507, line: 383, baseType: !667, size: 128, offset: 64)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !507, line: 376, size: 128, elements: !668)
!668 = !{!669, !1545}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !667, file: !507, line: 377, baseType: !670, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !672, line: 640, size: 48640, elements: !673)
!672 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!673 = !{!674, !680, !682, !683, !689, !690, !691, !692, !693, !694, !695, !696, !700, !718, !729, !817, !818, !819, !823, !824, !826, !827, !828, !829, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !908, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !964, !966, !967, !968, !980, !982, !983, !984, !985, !986, !992, !993, !994, !995, !996, !997, !998, !1010, !1015, !1020, !1021, !1022, !1025, !1027, !1030, !1033, !1036, !1039, !1043, !1046, !1049, !1055, !1056, !1057, !1063, !1064, !1065, !1066, !1067, !1076, !1077, !1078, !1079, !1080, !1085, !1086, !1087, !1090, !1091, !1094, !1097, !1100, !1103, !1106, !1109, !1110, !1190, !1193, !1196, !1197, !1200, !1201, !1202, !1208, !1209, !1210, !1223, !1224, !1225, !1235, !1240, !1243, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !671, file: !672, line: 646, baseType: !675, size: 128)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !676, line: 56, size: 128, elements: !677)
!676 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!677 = !{!678, !679}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !675, file: !676, line: 57, baseType: !286, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !675, file: !676, line: 58, baseType: !173, size: 32, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !671, file: !672, line: 649, baseType: !681, size: 64, offset: 128)
!681 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !454)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !671, file: !672, line: 657, baseType: !163, size: 64, offset: 192)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !671, file: !672, line: 658, baseType: !684, size: 32, offset: 256)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !685, line: 113, baseType: !686)
!685 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !685, line: 111, size: 32, elements: !687)
!687 = !{!688}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !686, file: !685, line: 112, baseType: !552, size: 32)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !671, file: !672, line: 660, baseType: !7, size: 32, offset: 288)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !671, file: !672, line: 661, baseType: !7, size: 32, offset: 320)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !671, file: !672, line: 684, baseType: !125, size: 32, offset: 352)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !671, file: !672, line: 686, baseType: !125, size: 32, offset: 384)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !671, file: !672, line: 687, baseType: !125, size: 32, offset: 416)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !671, file: !672, line: 688, baseType: !125, size: 32, offset: 448)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !671, file: !672, line: 689, baseType: !7, size: 32, offset: 480)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !671, file: !672, line: 691, baseType: !697, size: 64, offset: 512)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !699)
!699 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !672, line: 691, flags: DIFlagFwdDecl)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !671, file: !672, line: 692, baseType: !701, size: 832, offset: 576)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !672, line: 451, size: 832, elements: !702)
!702 = !{!703, !708, !709, !710, !711, !712, !713, !714, !715, !716}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !701, file: !672, line: 453, baseType: !704, size: 128)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !672, line: 325, size: 128, elements: !705)
!705 = !{!706, !707}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !704, file: !672, line: 326, baseType: !286, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !704, file: !672, line: 327, baseType: !173, size: 32, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !701, file: !672, line: 454, baseType: !514, size: 192, align: 64, offset: 128)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !701, file: !672, line: 455, baseType: !157, size: 128, offset: 320)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !701, file: !672, line: 456, baseType: !7, size: 32, offset: 448)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !701, file: !672, line: 458, baseType: !127, size: 64, offset: 512)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !701, file: !672, line: 459, baseType: !127, size: 64, offset: 576)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !701, file: !672, line: 460, baseType: !127, size: 64, offset: 640)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !701, file: !672, line: 461, baseType: !127, size: 64, offset: 704)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !701, file: !672, line: 463, baseType: !127, size: 64, offset: 768)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !701, file: !672, line: 465, baseType: !717, offset: 832)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !672, line: 415, elements: !392)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !671, file: !672, line: 693, baseType: !719, size: 384, offset: 1408)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !672, line: 489, size: 384, elements: !720)
!720 = !{!721, !722, !723, !724, !725, !726, !727}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !719, file: !672, line: 490, baseType: !157, size: 128)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !719, file: !672, line: 491, baseType: !286, size: 64, offset: 128)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !719, file: !672, line: 492, baseType: !286, size: 64, offset: 192)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !719, file: !672, line: 493, baseType: !7, size: 32, offset: 256)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !719, file: !672, line: 494, baseType: !252, size: 16, offset: 288)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !719, file: !672, line: 495, baseType: !252, size: 16, offset: 304)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !719, file: !672, line: 497, baseType: !728, size: 64, offset: 320)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !671, file: !672, line: 697, baseType: !730, size: 1792, offset: 1792)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !672, line: 507, size: 1792, elements: !731)
!731 = !{!732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !814, !815}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !730, file: !672, line: 508, baseType: !514, size: 192, align: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !730, file: !672, line: 515, baseType: !127, size: 64, offset: 192)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !730, file: !672, line: 516, baseType: !127, size: 64, offset: 256)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !730, file: !672, line: 517, baseType: !127, size: 64, offset: 320)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !730, file: !672, line: 518, baseType: !127, size: 64, offset: 384)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !730, file: !672, line: 519, baseType: !127, size: 64, offset: 448)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !730, file: !672, line: 526, baseType: !119, size: 64, offset: 512)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !730, file: !672, line: 527, baseType: !127, size: 64, offset: 576)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !730, file: !672, line: 528, baseType: !7, size: 32, offset: 640)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !730, file: !672, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !730, file: !672, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !730, file: !672, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !730, file: !672, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !730, file: !672, line: 563, baseType: !746, size: 512, offset: 704)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !747)
!747 = !{!748, !754, !755, !760, !810, !811, !812, !813}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !746, file: !6, line: 119, baseType: !749, size: 256)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !750, line: 9, size: 256, elements: !751)
!750 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!751 = !{!752, !753}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !749, file: !750, line: 10, baseType: !514, size: 192, align: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !749, file: !750, line: 11, baseType: !117, size: 64, offset: 192)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !746, file: !6, line: 120, baseType: !117, size: 64, offset: 256)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !746, file: !6, line: 121, baseType: !756, size: 64, offset: 320)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{!5, !759}
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !746, file: !6, line: 122, baseType: !761, size: 64, offset: 384)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !763)
!763 = !{!764, !782, !783, !786, !796, !797, !805, !809}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !762, file: !6, line: 160, baseType: !765, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !767)
!767 = !{!768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !766, file: !6, line: 215, baseType: !575)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !766, file: !6, line: 216, baseType: !7, size: 32)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !766, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !766, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !766, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !766, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !766, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !766, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !766, file: !6, line: 233, baseType: !117, size: 64, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !766, file: !6, line: 234, baseType: !759, size: 64, offset: 192)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !766, file: !6, line: 235, baseType: !117, size: 64, offset: 256)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !766, file: !6, line: 236, baseType: !759, size: 64, offset: 320)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !766, file: !6, line: 237, baseType: !781, size: 4096, offset: 512)
!781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !762, size: 4096, elements: !222)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !762, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !762, file: !6, line: 162, baseType: !784, size: 32, offset: 96)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !158, line: 27, baseType: !785)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !452, line: 96, baseType: !125)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !762, file: !6, line: 163, baseType: !787, size: 32, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !788, line: 276, baseType: !789)
!788 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !788, line: 276, size: 32, elements: !790)
!790 = !{!791}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !789, file: !788, line: 276, baseType: !792, size: 32)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !788, line: 70, baseType: !793)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !788, line: 65, size: 32, elements: !794)
!794 = !{!795}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !793, file: !788, line: 66, baseType: !7, size: 32)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !762, file: !6, line: 164, baseType: !759, size: 64, offset: 192)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !762, file: !6, line: 165, baseType: !798, size: 128, offset: 256)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !750, line: 14, size: 128, elements: !799)
!799 = !{!800}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !798, file: !750, line: 15, baseType: !801, size: 128)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !515, line: 125, size: 128, elements: !802)
!802 = !{!803, !804}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !801, file: !515, line: 126, baseType: !531, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !801, file: !515, line: 127, baseType: !519, size: 64, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !762, file: !6, line: 166, baseType: !806, size: 64, offset: 384)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DISubroutineType(types: !808)
!808 = !{!117}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !762, file: !6, line: 167, baseType: !117, size: 64, offset: 448)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !746, file: !6, line: 123, baseType: !186, size: 8, offset: 448)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !746, file: !6, line: 124, baseType: !186, size: 8, offset: 456)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !746, file: !6, line: 125, baseType: !186, size: 8, offset: 464)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !746, file: !6, line: 126, baseType: !186, size: 8, offset: 472)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !730, file: !672, line: 572, baseType: !746, size: 512, offset: 1216)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !730, file: !672, line: 580, baseType: !816, size: 64, offset: 1728)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !671, file: !672, line: 721, baseType: !7, size: 32, offset: 3584)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !671, file: !672, line: 722, baseType: !125, size: 32, offset: 3616)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !671, file: !672, line: 723, baseType: !820, size: 64, offset: 3648)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !822)
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !280, line: 17, baseType: !282)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !671, file: !672, line: 724, baseType: !822, size: 64, offset: 3712)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !671, file: !672, line: 749, baseType: !825, offset: 3776)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !672, line: 290, elements: !392)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !671, file: !672, line: 751, baseType: !157, size: 128, offset: 3776)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !671, file: !672, line: 757, baseType: !523, size: 64, offset: 3904)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !671, file: !672, line: 758, baseType: !523, size: 64, offset: 3968)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !671, file: !672, line: 761, baseType: !830, size: 320, offset: 4032)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !605, line: 34, size: 320, elements: !831)
!831 = !{!832, !833}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !830, file: !605, line: 35, baseType: !127, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !830, file: !605, line: 36, baseType: !834, size: 256, offset: 64)
!834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !505, size: 256, elements: !609)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !671, file: !672, line: 766, baseType: !125, size: 32, offset: 4352)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !671, file: !672, line: 767, baseType: !125, size: 32, offset: 4384)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !671, file: !672, line: 768, baseType: !125, size: 32, offset: 4416)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !671, file: !672, line: 770, baseType: !125, size: 32, offset: 4448)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !671, file: !672, line: 772, baseType: !286, size: 64, offset: 4480)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !671, file: !672, line: 775, baseType: !7, size: 32, offset: 4544)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !671, file: !672, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !671, file: !672, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !671, file: !672, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !671, file: !672, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !671, file: !672, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !671, file: !672, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !671, file: !672, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !671, file: !672, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !671, file: !672, line: 831, baseType: !286, size: 64, offset: 4672)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !671, file: !672, line: 833, baseType: !851, size: 384, offset: 4736)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !852)
!852 = !{!853, !858}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !851, file: !12, line: 26, baseType: !854, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DISubroutineType(types: !856)
!856 = !{!454, !857}
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, scope: !851, file: !12, line: 27, baseType: !859, size: 320, offset: 64)
!859 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !851, file: !12, line: 27, size: 320, elements: !860)
!860 = !{!861, !871, !898}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !859, file: !12, line: 36, baseType: !862, size: 320)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !859, file: !12, line: 29, size: 320, elements: !863)
!863 = !{!864, !866, !867, !868, !869, !870}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !862, file: !12, line: 30, baseType: !865, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !862, file: !12, line: 31, baseType: !173, size: 32, offset: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !862, file: !12, line: 32, baseType: !173, size: 32, offset: 96)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !862, file: !12, line: 33, baseType: !173, size: 32, offset: 128)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !862, file: !12, line: 34, baseType: !127, size: 64, offset: 192)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !862, file: !12, line: 35, baseType: !865, size: 64, offset: 256)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !859, file: !12, line: 46, baseType: !872, size: 192)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !859, file: !12, line: 38, size: 192, elements: !873)
!873 = !{!874, !875, !876, !897}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !872, file: !12, line: 39, baseType: !784, size: 32)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !872, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!876 = !DIDerivedType(tag: DW_TAG_member, scope: !872, file: !12, line: 41, baseType: !877, size: 64, offset: 64)
!877 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !872, file: !12, line: 41, size: 64, elements: !878)
!878 = !{!879, !887}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !877, file: !12, line: 42, baseType: !880, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !882, line: 7, size: 128, elements: !883)
!882 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!883 = !{!884, !886}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !881, file: !882, line: 8, baseType: !885, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !452, line: 93, baseType: !123)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !881, file: !882, line: 9, baseType: !123, size: 64, offset: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !877, file: !12, line: 43, baseType: !888, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !890, line: 7, size: 64, elements: !891)
!890 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!891 = !{!892, !896}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !889, file: !890, line: 8, baseType: !893, size: 32)
!893 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !890, line: 5, baseType: !894)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !120, line: 20, baseType: !895)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !122, line: 26, baseType: !125)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !889, file: !890, line: 9, baseType: !894, size: 32, offset: 32)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !872, file: !12, line: 45, baseType: !127, size: 64, offset: 128)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !859, file: !12, line: 54, baseType: !899, size: 256)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !859, file: !12, line: 48, size: 256, elements: !900)
!900 = !{!901, !904, !905, !906, !907}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !899, file: !12, line: 49, baseType: !902, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !899, file: !12, line: 50, baseType: !125, size: 32, offset: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !899, file: !12, line: 51, baseType: !125, size: 32, offset: 96)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !899, file: !12, line: 52, baseType: !286, size: 64, offset: 128)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !899, file: !12, line: 53, baseType: !286, size: 64, offset: 192)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !671, file: !672, line: 835, baseType: !909, size: 32, offset: 5120)
!909 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !158, line: 22, baseType: !910)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !452, line: 28, baseType: !125)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !671, file: !672, line: 836, baseType: !909, size: 32, offset: 5152)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !671, file: !672, line: 840, baseType: !286, size: 64, offset: 5184)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !671, file: !672, line: 849, baseType: !670, size: 64, offset: 5248)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !671, file: !672, line: 852, baseType: !670, size: 64, offset: 5312)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !671, file: !672, line: 857, baseType: !157, size: 128, offset: 5376)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !671, file: !672, line: 858, baseType: !157, size: 128, offset: 5504)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !671, file: !672, line: 859, baseType: !670, size: 64, offset: 5632)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !671, file: !672, line: 867, baseType: !157, size: 128, offset: 5696)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !671, file: !672, line: 868, baseType: !157, size: 128, offset: 5824)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !671, file: !672, line: 871, baseType: !921, size: 64, offset: 5952)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !923, line: 59, size: 768, elements: !924)
!923 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!924 = !{!925, !926, !927, !928, !939, !940, !947, !956}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !922, file: !923, line: 61, baseType: !684, size: 32)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !922, file: !923, line: 62, baseType: !7, size: 32, offset: 32)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !922, file: !923, line: 63, baseType: !378, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !922, file: !923, line: 65, baseType: !929, size: 256, offset: 64)
!929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !930, size: 256, elements: !609)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !158, line: 182, size: 64, elements: !931)
!931 = !{!932}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !930, file: !158, line: 183, baseType: !933, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !158, line: 186, size: 128, elements: !935)
!935 = !{!936, !937}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !934, file: !158, line: 187, baseType: !933, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !934, file: !158, line: 187, baseType: !938, size: 64, offset: 64)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !922, file: !923, line: 66, baseType: !930, size: 64, offset: 320)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !922, file: !923, line: 68, baseType: !941, size: 128, offset: 384)
!941 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !942, line: 40, baseType: !943)
!942 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !942, line: 36, size: 128, elements: !944)
!944 = !{!945, !946}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !943, file: !942, line: 37, baseType: !378)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !943, file: !942, line: 38, baseType: !157, size: 128)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !922, file: !923, line: 69, baseType: !948, size: 128, align: 64, offset: 512)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !158, line: 216, size: 128, align: 64, elements: !949)
!949 = !{!950, !952}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !948, file: !158, line: 217, baseType: !951, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !948, file: !158, line: 218, baseType: !953, size: 64, offset: 64)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DISubroutineType(types: !955)
!955 = !{null, !951}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !922, file: !923, line: 70, baseType: !957, size: 128, offset: 640)
!957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !958, size: 128, elements: !287)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !923, line: 54, size: 128, elements: !959)
!959 = !{!960, !961}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !958, file: !923, line: 55, baseType: !125, size: 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !958, file: !923, line: 56, baseType: !962, size: 64, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !923, line: 56, flags: DIFlagFwdDecl)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !671, file: !672, line: 872, baseType: !965, size: 512, offset: 6016)
!965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !934, size: 512, elements: !609)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !671, file: !672, line: 873, baseType: !157, size: 128, offset: 6528)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !671, file: !672, line: 874, baseType: !157, size: 128, offset: 6656)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !671, file: !672, line: 876, baseType: !969, size: 64, offset: 6784)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !971, line: 26, size: 192, elements: !972)
!971 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!972 = !{!973, !974}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !970, file: !971, line: 27, baseType: !7, size: 32)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !970, file: !971, line: 28, baseType: !975, size: 128, offset: 64)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !976, line: 43, size: 128, elements: !977)
!976 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!977 = !{!978, !979}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !975, file: !976, line: 44, baseType: !575)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !975, file: !976, line: 45, baseType: !157, size: 128)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !671, file: !672, line: 879, baseType: !981, size: 64, offset: 6848)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !671, file: !672, line: 882, baseType: !981, size: 64, offset: 6912)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !671, file: !672, line: 884, baseType: !127, size: 64, offset: 6976)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !671, file: !672, line: 885, baseType: !127, size: 64, offset: 7040)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !671, file: !672, line: 890, baseType: !127, size: 64, offset: 7104)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !671, file: !672, line: 891, baseType: !987, size: 128, offset: 7168)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !672, line: 242, size: 128, elements: !988)
!988 = !{!989, !990, !991}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !987, file: !672, line: 244, baseType: !127, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !987, file: !672, line: 245, baseType: !127, size: 64, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !987, file: !672, line: 246, baseType: !575, offset: 128)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !671, file: !672, line: 900, baseType: !286, size: 64, offset: 7296)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !671, file: !672, line: 901, baseType: !286, size: 64, offset: 7360)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !671, file: !672, line: 904, baseType: !127, size: 64, offset: 7424)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !671, file: !672, line: 907, baseType: !127, size: 64, offset: 7488)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !671, file: !672, line: 910, baseType: !286, size: 64, offset: 7552)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !671, file: !672, line: 911, baseType: !286, size: 64, offset: 7616)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !671, file: !672, line: 914, baseType: !999, size: 640, offset: 7680)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1000, line: 123, size: 640, elements: !1001)
!1000 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1001 = !{!1002, !1008, !1009}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !999, file: !1000, line: 124, baseType: !1003, size: 576)
!1003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1004, size: 576, elements: !420)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1000, line: 108, size: 192, elements: !1005)
!1005 = !{!1006, !1007}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1004, file: !1000, line: 109, baseType: !127, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1004, file: !1000, line: 110, baseType: !798, size: 128, offset: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !999, file: !1000, line: 125, baseType: !7, size: 32, offset: 576)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !999, file: !1000, line: 126, baseType: !7, size: 32, offset: 608)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !671, file: !672, line: 917, baseType: !1011, size: 192, offset: 8320)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1000, line: 134, size: 192, elements: !1012)
!1012 = !{!1013, !1014}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1011, file: !1000, line: 135, baseType: !948, size: 128, align: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1011, file: !1000, line: 136, baseType: !7, size: 32, offset: 128)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !671, file: !672, line: 923, baseType: !1016, size: 64, offset: 8512)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1018)
!1018 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1019, line: 11, flags: DIFlagFwdDecl)
!1019 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/lizy2001/genbc/linux")
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !671, file: !672, line: 926, baseType: !1016, size: 64, offset: 8576)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !671, file: !672, line: 929, baseType: !1016, size: 64, offset: 8640)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !671, file: !672, line: 933, baseType: !1023, size: 64, offset: 8704)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !672, line: 933, flags: DIFlagFwdDecl)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !671, file: !672, line: 943, baseType: !1026, size: 128, offset: 8768)
!1026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 128, elements: !337)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !671, file: !672, line: 945, baseType: !1028, size: 64, offset: 8896)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !672, line: 49, flags: DIFlagFwdDecl)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !671, file: !672, line: 956, baseType: !1031, size: 64, offset: 8960)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !672, line: 45, flags: DIFlagFwdDecl)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !671, file: !672, line: 959, baseType: !1034, size: 64, offset: 9024)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !672, line: 959, flags: DIFlagFwdDecl)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !671, file: !672, line: 962, baseType: !1037, size: 64, offset: 9088)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !672, line: 66, flags: DIFlagFwdDecl)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !671, file: !672, line: 966, baseType: !1040, size: 64, offset: 9152)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1042, line: 35, flags: DIFlagFwdDecl)
!1042 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !671, file: !672, line: 969, baseType: !1044, size: 64, offset: 9216)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1000, line: 223, flags: DIFlagFwdDecl)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !671, file: !672, line: 970, baseType: !1047, size: 64, offset: 9280)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !672, line: 62, flags: DIFlagFwdDecl)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !671, file: !672, line: 971, baseType: !1050, size: 64, offset: 9344)
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1051, line: 25, baseType: !1052)
!1051 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1051, line: 23, size: 64, elements: !1053)
!1053 = !{!1054}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1052, file: !1051, line: 24, baseType: !285, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !671, file: !672, line: 972, baseType: !1050, size: 64, offset: 9408)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !671, file: !672, line: 974, baseType: !1050, size: 64, offset: 9472)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !671, file: !672, line: 975, baseType: !1058, size: 192, offset: 9536)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1059, line: 30, size: 192, elements: !1060)
!1059 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1060 = !{!1061, !1062}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1058, file: !1059, line: 31, baseType: !157, size: 128)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1058, file: !1059, line: 32, baseType: !1050, size: 64, offset: 128)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !671, file: !672, line: 976, baseType: !286, size: 64, offset: 9728)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !671, file: !672, line: 977, baseType: !465, size: 64, offset: 9792)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !671, file: !672, line: 978, baseType: !7, size: 32, offset: 9856)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !671, file: !672, line: 980, baseType: !951, size: 64, offset: 9920)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !671, file: !672, line: 989, baseType: !1068, size: 128, offset: 9984)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1069, line: 35, size: 128, elements: !1070)
!1069 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1070 = !{!1071, !1072, !1073}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1068, file: !1069, line: 36, baseType: !125, size: 32)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1068, file: !1069, line: 37, baseType: !552, size: 32, offset: 32)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1068, file: !1069, line: 38, baseType: !1074, size: 64, offset: 64)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1069, line: 23, flags: DIFlagFwdDecl)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !671, file: !672, line: 992, baseType: !127, size: 64, offset: 10112)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !671, file: !672, line: 993, baseType: !127, size: 64, offset: 10176)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !671, file: !672, line: 996, baseType: !378, offset: 10240)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !671, file: !672, line: 999, baseType: !575, offset: 10240)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !671, file: !672, line: 1001, baseType: !1081, size: 64, offset: 10240)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !672, line: 636, size: 64, elements: !1082)
!1082 = !{!1083}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1081, file: !672, line: 637, baseType: !1084, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !671, file: !672, line: 1005, baseType: !801, size: 128, offset: 10304)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !671, file: !672, line: 1007, baseType: !670, size: 64, offset: 10432)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !671, file: !672, line: 1009, baseType: !1088, size: 64, offset: 10496)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !672, line: 1009, flags: DIFlagFwdDecl)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !671, file: !672, line: 1043, baseType: !163, size: 64, offset: 10560)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !671, file: !672, line: 1046, baseType: !1092, size: 64, offset: 10624)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !672, line: 41, flags: DIFlagFwdDecl)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !671, file: !672, line: 1050, baseType: !1095, size: 64, offset: 10688)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !672, line: 42, flags: DIFlagFwdDecl)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !671, file: !672, line: 1054, baseType: !1098, size: 64, offset: 10752)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !672, line: 55, flags: DIFlagFwdDecl)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !671, file: !672, line: 1056, baseType: !1101, size: 64, offset: 10816)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !672, line: 40, flags: DIFlagFwdDecl)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !671, file: !672, line: 1058, baseType: !1104, size: 64, offset: 10880)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !672, line: 47, flags: DIFlagFwdDecl)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !671, file: !672, line: 1061, baseType: !1107, size: 64, offset: 10944)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !672, line: 43, flags: DIFlagFwdDecl)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !671, file: !672, line: 1064, baseType: !286, size: 64, offset: 11008)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !671, file: !672, line: 1065, baseType: !1111, size: 64, offset: 11072)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1059, line: 14, baseType: !1113)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1059, line: 12, size: 384, elements: !1114)
!1114 = !{!1115}
!1115 = !DIDerivedType(tag: DW_TAG_member, scope: !1113, file: !1059, line: 13, baseType: !1116, size: 384)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1113, file: !1059, line: 13, size: 384, elements: !1117)
!1117 = !{!1118, !1119, !1120, !1121}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1116, file: !1059, line: 13, baseType: !125, size: 32)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1116, file: !1059, line: 13, baseType: !125, size: 32, offset: 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1116, file: !1059, line: 13, baseType: !125, size: 32, offset: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1116, file: !1059, line: 13, baseType: !1122, size: 256, offset: 128)
!1122 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1123, line: 32, size: 256, elements: !1124)
!1123 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1124 = !{!1125, !1131, !1144, !1150, !1159, !1179, !1184}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1122, file: !1123, line: 37, baseType: !1126, size: 64)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1122, file: !1123, line: 34, size: 64, elements: !1127)
!1127 = !{!1128, !1129}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1126, file: !1123, line: 35, baseType: !910, size: 32)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1126, file: !1123, line: 36, baseType: !1130, size: 32, offset: 32)
!1130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !452, line: 49, baseType: !7)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1122, file: !1123, line: 45, baseType: !1132, size: 192)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1122, file: !1123, line: 40, size: 192, elements: !1133)
!1133 = !{!1134, !1136, !1137, !1143}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1132, file: !1123, line: 41, baseType: !1135, size: 32)
!1135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !452, line: 95, baseType: !125)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1132, file: !1123, line: 42, baseType: !125, size: 32, offset: 32)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1132, file: !1123, line: 43, baseType: !1138, size: 64, offset: 64)
!1138 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1123, line: 11, baseType: !1139)
!1139 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1123, line: 8, size: 64, elements: !1140)
!1140 = !{!1141, !1142}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1139, file: !1123, line: 9, baseType: !125, size: 32)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1139, file: !1123, line: 10, baseType: !163, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1132, file: !1123, line: 44, baseType: !125, size: 32, offset: 128)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1122, file: !1123, line: 52, baseType: !1145, size: 128)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1122, file: !1123, line: 48, size: 128, elements: !1146)
!1146 = !{!1147, !1148, !1149}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1145, file: !1123, line: 49, baseType: !910, size: 32)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1145, file: !1123, line: 50, baseType: !1130, size: 32, offset: 32)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1145, file: !1123, line: 51, baseType: !1138, size: 64, offset: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1122, file: !1123, line: 61, baseType: !1151, size: 256)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1122, file: !1123, line: 55, size: 256, elements: !1152)
!1152 = !{!1153, !1154, !1155, !1156, !1158}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1151, file: !1123, line: 56, baseType: !910, size: 32)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1151, file: !1123, line: 57, baseType: !1130, size: 32, offset: 32)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1151, file: !1123, line: 58, baseType: !125, size: 32, offset: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1151, file: !1123, line: 59, baseType: !1157, size: 64, offset: 128)
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !452, line: 94, baseType: !453)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1151, file: !1123, line: 60, baseType: !1157, size: 64, offset: 192)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1122, file: !1123, line: 95, baseType: !1160, size: 256)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1122, file: !1123, line: 64, size: 256, elements: !1161)
!1161 = !{!1162, !1163}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1160, file: !1123, line: 65, baseType: !163, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, scope: !1160, file: !1123, line: 77, baseType: !1164, size: 192, offset: 64)
!1164 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1160, file: !1123, line: 77, size: 192, elements: !1165)
!1165 = !{!1166, !1167, !1174}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1164, file: !1123, line: 82, baseType: !659, size: 16)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1164, file: !1123, line: 88, baseType: !1168, size: 192)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1164, file: !1123, line: 84, size: 192, elements: !1169)
!1169 = !{!1170, !1172, !1173}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1168, file: !1123, line: 85, baseType: !1171, size: 64)
!1171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 64, elements: !222)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1168, file: !1123, line: 86, baseType: !163, size: 64, offset: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1168, file: !1123, line: 87, baseType: !163, size: 64, offset: 128)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1164, file: !1123, line: 93, baseType: !1175, size: 96)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1164, file: !1123, line: 90, size: 96, elements: !1176)
!1176 = !{!1177, !1178}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1175, file: !1123, line: 91, baseType: !1171, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1175, file: !1123, line: 92, baseType: !174, size: 32, offset: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1122, file: !1123, line: 101, baseType: !1180, size: 128)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1122, file: !1123, line: 98, size: 128, elements: !1181)
!1181 = !{!1182, !1183}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1180, file: !1123, line: 99, baseType: !454, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1180, file: !1123, line: 100, baseType: !125, size: 32, offset: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1122, file: !1123, line: 108, baseType: !1185, size: 128)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1122, file: !1123, line: 104, size: 128, elements: !1186)
!1186 = !{!1187, !1188, !1189}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1185, file: !1123, line: 105, baseType: !163, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1185, file: !1123, line: 106, baseType: !125, size: 32, offset: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1185, file: !1123, line: 107, baseType: !7, size: 32, offset: 96)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !671, file: !672, line: 1067, baseType: !1191, offset: 11136)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1192, line: 12, elements: !392)
!1192 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !671, file: !672, line: 1099, baseType: !1194, size: 64, offset: 11136)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !672, line: 56, flags: DIFlagFwdDecl)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !671, file: !672, line: 1103, baseType: !157, size: 128, offset: 11200)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !671, file: !672, line: 1104, baseType: !1198, size: 64, offset: 11328)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !672, line: 46, flags: DIFlagFwdDecl)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !671, file: !672, line: 1105, baseType: !627, size: 192, offset: 11392)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !671, file: !672, line: 1106, baseType: !7, size: 32, offset: 11584)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !671, file: !672, line: 1109, baseType: !1203, size: 128, offset: 11648)
!1203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1204, size: 128, elements: !1206)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !672, line: 51, flags: DIFlagFwdDecl)
!1206 = !{!1207}
!1207 = !DISubrange(count: 2)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !671, file: !672, line: 1110, baseType: !627, size: 192, offset: 11776)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !671, file: !672, line: 1111, baseType: !157, size: 128, offset: 11968)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !671, file: !672, line: 1173, baseType: !1211, size: 64, offset: 12096)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1213, line: 62, size: 256, align: 256, elements: !1214)
!1213 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1214 = !{!1215, !1216, !1217, !1222}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1212, file: !1213, line: 75, baseType: !174, size: 32)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1212, file: !1213, line: 90, baseType: !174, size: 32, offset: 32)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1212, file: !1213, line: 124, baseType: !1218, size: 64, offset: 64)
!1218 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1212, file: !1213, line: 109, size: 64, elements: !1219)
!1219 = !{!1220, !1221}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1218, file: !1213, line: 110, baseType: !128, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1218, file: !1213, line: 112, baseType: !128, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1212, file: !1213, line: 144, baseType: !174, size: 32, offset: 128)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !671, file: !672, line: 1174, baseType: !173, size: 32, offset: 12160)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !671, file: !672, line: 1179, baseType: !286, size: 64, offset: 12224)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !671, file: !672, line: 1182, baseType: !1226, size: 128, offset: 12288)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !605, line: 76, size: 128, elements: !1227)
!1227 = !{!1228, !1233, !1234}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1226, file: !605, line: 85, baseType: !1229, size: 64)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1230, line: 7, size: 64, elements: !1231)
!1230 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1231 = !{!1232}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1229, file: !1230, line: 12, baseType: !282, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1226, file: !605, line: 88, baseType: !324, size: 8, offset: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1226, file: !605, line: 95, baseType: !324, size: 8, offset: 72)
!1235 = !DIDerivedType(tag: DW_TAG_member, scope: !671, file: !672, line: 1184, baseType: !1236, size: 128, offset: 12416)
!1236 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !671, file: !672, line: 1184, size: 128, elements: !1237)
!1237 = !{!1238, !1239}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1236, file: !672, line: 1185, baseType: !684, size: 32)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1236, file: !672, line: 1186, baseType: !948, size: 128, align: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !671, file: !672, line: 1190, baseType: !1241, size: 64, offset: 12544)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !672, line: 53, flags: DIFlagFwdDecl)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !671, file: !672, line: 1192, baseType: !1244, size: 128, offset: 12608)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !605, line: 64, size: 128, elements: !1245)
!1245 = !{!1246, !1339, !1340}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1244, file: !605, line: 65, baseType: !1247, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !507, line: 68, size: 512, align: 128, elements: !1249)
!1249 = !{!1250, !1251, !1331, !1338}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1248, file: !507, line: 69, baseType: !286, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, scope: !1248, file: !507, line: 77, baseType: !1252, size: 320, offset: 64)
!1252 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1248, file: !507, line: 77, size: 320, elements: !1253)
!1253 = !{!1254, !1263, !1268, !1296, !1304, !1310, !1323, !1330}
!1254 = !DIDerivedType(tag: DW_TAG_member, scope: !1252, file: !507, line: 78, baseType: !1255, size: 320)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1252, file: !507, line: 78, size: 320, elements: !1256)
!1256 = !{!1257, !1258, !1261, !1262}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1255, file: !507, line: 84, baseType: !157, size: 128)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1255, file: !507, line: 86, baseType: !1259, size: 64, offset: 128)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !507, line: 26, flags: DIFlagFwdDecl)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1255, file: !507, line: 87, baseType: !286, size: 64, offset: 192)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1255, file: !507, line: 94, baseType: !286, size: 64, offset: 256)
!1263 = !DIDerivedType(tag: DW_TAG_member, scope: !1252, file: !507, line: 96, baseType: !1264, size: 64)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1252, file: !507, line: 96, size: 64, elements: !1265)
!1265 = !{!1266}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1264, file: !507, line: 101, baseType: !1267, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !158, line: 143, baseType: !127)
!1268 = !DIDerivedType(tag: DW_TAG_member, scope: !1252, file: !507, line: 103, baseType: !1269, size: 320)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1252, file: !507, line: 103, size: 320, elements: !1270)
!1270 = !{!1271, !1281, !1284, !1285}
!1271 = !DIDerivedType(tag: DW_TAG_member, scope: !1269, file: !507, line: 104, baseType: !1272, size: 128)
!1272 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1269, file: !507, line: 104, size: 128, elements: !1273)
!1273 = !{!1274, !1275}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1272, file: !507, line: 105, baseType: !157, size: 128)
!1275 = !DIDerivedType(tag: DW_TAG_member, scope: !1272, file: !507, line: 106, baseType: !1276, size: 128)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1272, file: !507, line: 106, size: 128, elements: !1277)
!1277 = !{!1278, !1279, !1280}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1276, file: !507, line: 107, baseType: !1247, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1276, file: !507, line: 109, baseType: !125, size: 32, offset: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1276, file: !507, line: 110, baseType: !125, size: 32, offset: 96)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1269, file: !507, line: 117, baseType: !1282, size: 64, offset: 128)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !507, line: 117, flags: DIFlagFwdDecl)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1269, file: !507, line: 119, baseType: !163, size: 64, offset: 192)
!1285 = !DIDerivedType(tag: DW_TAG_member, scope: !1269, file: !507, line: 120, baseType: !1286, size: 64, offset: 256)
!1286 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1269, file: !507, line: 120, size: 64, elements: !1287)
!1287 = !{!1288, !1289, !1290}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1286, file: !507, line: 121, baseType: !163, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1286, file: !507, line: 122, baseType: !286, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, scope: !1286, file: !507, line: 123, baseType: !1291, size: 32)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1286, file: !507, line: 123, size: 32, elements: !1292)
!1292 = !{!1293, !1294, !1295}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1291, file: !507, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1291, file: !507, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1291, file: !507, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1296 = !DIDerivedType(tag: DW_TAG_member, scope: !1252, file: !507, line: 130, baseType: !1297, size: 192)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1252, file: !507, line: 130, size: 192, elements: !1298)
!1298 = !{!1299, !1300, !1301, !1302, !1303}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1297, file: !507, line: 131, baseType: !286, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1297, file: !507, line: 134, baseType: !188, size: 8, offset: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1297, file: !507, line: 135, baseType: !188, size: 8, offset: 72)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1297, file: !507, line: 136, baseType: !552, size: 32, offset: 96)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1297, file: !507, line: 137, baseType: !7, size: 32, offset: 128)
!1304 = !DIDerivedType(tag: DW_TAG_member, scope: !1252, file: !507, line: 139, baseType: !1305, size: 256)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1252, file: !507, line: 139, size: 256, elements: !1306)
!1306 = !{!1307, !1308, !1309}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1305, file: !507, line: 140, baseType: !286, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1305, file: !507, line: 141, baseType: !552, size: 32, offset: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1305, file: !507, line: 143, baseType: !157, size: 128, offset: 128)
!1310 = !DIDerivedType(tag: DW_TAG_member, scope: !1252, file: !507, line: 145, baseType: !1311, size: 256)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1252, file: !507, line: 145, size: 256, elements: !1312)
!1312 = !{!1313, !1314, !1316, !1317, !1322}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1311, file: !507, line: 146, baseType: !286, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1311, file: !507, line: 147, baseType: !1315, size: 64, offset: 64)
!1315 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !497, line: 509, baseType: !1247)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1311, file: !507, line: 148, baseType: !286, size: 64, offset: 128)
!1317 = !DIDerivedType(tag: DW_TAG_member, scope: !1311, file: !507, line: 149, baseType: !1318, size: 64, offset: 192)
!1318 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1311, file: !507, line: 149, size: 64, elements: !1319)
!1319 = !{!1320, !1321}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1318, file: !507, line: 150, baseType: !523, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1318, file: !507, line: 151, baseType: !552, size: 32)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1311, file: !507, line: 156, baseType: !378, offset: 256)
!1323 = !DIDerivedType(tag: DW_TAG_member, scope: !1252, file: !507, line: 159, baseType: !1324, size: 128)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1252, file: !507, line: 159, size: 128, elements: !1325)
!1325 = !{!1326, !1329}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1324, file: !507, line: 161, baseType: !1327, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !507, line: 161, flags: DIFlagFwdDecl)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1324, file: !507, line: 162, baseType: !163, size: 64, offset: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1252, file: !507, line: 176, baseType: !948, size: 128, align: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, scope: !1248, file: !507, line: 179, baseType: !1332, size: 32, offset: 384)
!1332 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1248, file: !507, line: 179, size: 32, elements: !1333)
!1333 = !{!1334, !1335, !1336, !1337}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1332, file: !507, line: 184, baseType: !552, size: 32)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1332, file: !507, line: 192, baseType: !7, size: 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1332, file: !507, line: 194, baseType: !7, size: 32)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1332, file: !507, line: 195, baseType: !125, size: 32)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1248, file: !507, line: 199, baseType: !552, size: 32, offset: 416)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1244, file: !605, line: 67, baseType: !174, size: 32, offset: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1244, file: !605, line: 68, baseType: !174, size: 32, offset: 96)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !671, file: !672, line: 1206, baseType: !125, size: 32, offset: 12736)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !671, file: !672, line: 1207, baseType: !125, size: 32, offset: 12768)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !671, file: !672, line: 1209, baseType: !286, size: 64, offset: 12800)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !671, file: !672, line: 1219, baseType: !127, size: 64, offset: 12864)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !671, file: !672, line: 1220, baseType: !127, size: 64, offset: 12928)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !671, file: !672, line: 1317, baseType: !125, size: 32, offset: 12992)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !671, file: !672, line: 1319, baseType: !670, size: 64, offset: 13056)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !671, file: !672, line: 1322, baseType: !1349, size: 64, offset: 13120)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1351, line: 56, size: 512, elements: !1352)
!1351 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1352 = !{!1353, !1354, !1355, !1356, !1357, !1359, !1360, !1362}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1350, file: !1351, line: 57, baseType: !1349, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1350, file: !1351, line: 58, baseType: !163, size: 64, offset: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1350, file: !1351, line: 59, baseType: !286, size: 64, offset: 128)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1350, file: !1351, line: 60, baseType: !286, size: 64, offset: 192)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1350, file: !1351, line: 61, baseType: !1358, size: 64, offset: 256)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1350, file: !1351, line: 62, baseType: !7, size: 32, offset: 320)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1350, file: !1351, line: 63, baseType: !1361, size: 64, offset: 384)
!1361 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !158, line: 153, baseType: !127)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1350, file: !1351, line: 64, baseType: !1363, size: 64, offset: 448)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !671, file: !672, line: 1326, baseType: !684, size: 32, offset: 13184)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !671, file: !672, line: 1342, baseType: !163, size: 64, offset: 13248)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !671, file: !672, line: 1343, baseType: !128, size: 64, offset: 13312)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !671, file: !672, line: 1344, baseType: !127, size: 64, offset: 13376)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !671, file: !672, line: 1345, baseType: !128, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !671, file: !672, line: 1346, baseType: !128, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !671, file: !672, line: 1347, baseType: !128, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !671, file: !672, line: 1348, baseType: !948, size: 128, align: 64, offset: 13504)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !671, file: !672, line: 1358, baseType: !1374, size: 34816, offset: 13824)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !82, line: 485, size: 34816, elements: !1375)
!1375 = !{!1376, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1405, !1406, !1407, !1408, !1409, !1410, !1413, !1414, !1415}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1374, file: !82, line: 487, baseType: !1377, size: 192)
!1377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1378, size: 192, elements: !420)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1379, line: 16, size: 64, elements: !1380)
!1379 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1380 = !{!1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1378, file: !1379, line: 17, baseType: !250, size: 16)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1378, file: !1379, line: 18, baseType: !250, size: 16, offset: 16)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1378, file: !1379, line: 19, baseType: !250, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1378, file: !1379, line: 19, baseType: !250, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1378, file: !1379, line: 19, baseType: !250, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1378, file: !1379, line: 19, baseType: !250, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1378, file: !1379, line: 19, baseType: !250, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1378, file: !1379, line: 20, baseType: !250, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1378, file: !1379, line: 20, baseType: !250, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1378, file: !1379, line: 20, baseType: !250, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1378, file: !1379, line: 20, baseType: !250, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1378, file: !1379, line: 20, baseType: !250, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1378, file: !1379, line: 20, baseType: !250, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1374, file: !82, line: 491, baseType: !286, size: 64, offset: 192)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1374, file: !82, line: 495, baseType: !252, size: 16, offset: 256)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1374, file: !82, line: 496, baseType: !252, size: 16, offset: 272)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1374, file: !82, line: 497, baseType: !252, size: 16, offset: 288)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1374, file: !82, line: 498, baseType: !252, size: 16, offset: 304)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1374, file: !82, line: 502, baseType: !286, size: 64, offset: 320)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1374, file: !82, line: 503, baseType: !286, size: 64, offset: 384)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1374, file: !82, line: 514, baseType: !1402, size: 256, offset: 448)
!1402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1403, size: 256, elements: !609)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !82, line: 483, flags: DIFlagFwdDecl)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1374, file: !82, line: 516, baseType: !286, size: 64, offset: 704)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1374, file: !82, line: 518, baseType: !286, size: 64, offset: 768)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1374, file: !82, line: 520, baseType: !286, size: 64, offset: 832)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1374, file: !82, line: 521, baseType: !286, size: 64, offset: 896)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1374, file: !82, line: 522, baseType: !286, size: 64, offset: 960)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1374, file: !82, line: 528, baseType: !1411, size: 64, offset: 1024)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !82, line: 10, flags: DIFlagFwdDecl)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1374, file: !82, line: 535, baseType: !286, size: 64, offset: 1088)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1374, file: !82, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1374, file: !82, line: 540, baseType: !1416, size: 33280, offset: 1536)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1417, line: 317, size: 33280, elements: !1418)
!1417 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1418 = !{!1419, !1420, !1421}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1416, file: !1417, line: 330, baseType: !7, size: 32)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1416, file: !1417, line: 337, baseType: !286, size: 64, offset: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1416, file: !1417, line: 348, baseType: !1422, size: 32768, offset: 512)
!1422 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1417, line: 304, size: 32768, elements: !1423)
!1423 = !{!1424, !1437, !1474, !1524, !1541}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1422, file: !1417, line: 305, baseType: !1425, size: 896)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1417, line: 12, size: 896, elements: !1426)
!1426 = !{!1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1436}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1425, file: !1417, line: 13, baseType: !173, size: 32)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1425, file: !1417, line: 14, baseType: !173, size: 32, offset: 32)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1425, file: !1417, line: 15, baseType: !173, size: 32, offset: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1425, file: !1417, line: 16, baseType: !173, size: 32, offset: 96)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1425, file: !1417, line: 17, baseType: !173, size: 32, offset: 128)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1425, file: !1417, line: 18, baseType: !173, size: 32, offset: 160)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1425, file: !1417, line: 19, baseType: !173, size: 32, offset: 192)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1425, file: !1417, line: 22, baseType: !1435, size: 640, offset: 224)
!1435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 640, elements: !357)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1425, file: !1417, line: 25, baseType: !173, size: 32, offset: 864)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1422, file: !1417, line: 306, baseType: !1438, size: 4096, align: 128)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1417, line: 34, size: 4096, align: 128, elements: !1439)
!1439 = !{!1440, !1441, !1442, !1443, !1444, !1459, !1460, !1461, !1463, !1465, !1469}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1438, file: !1417, line: 35, baseType: !250, size: 16)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1438, file: !1417, line: 36, baseType: !250, size: 16, offset: 16)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1438, file: !1417, line: 37, baseType: !250, size: 16, offset: 32)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1438, file: !1417, line: 38, baseType: !250, size: 16, offset: 48)
!1444 = !DIDerivedType(tag: DW_TAG_member, scope: !1438, file: !1417, line: 39, baseType: !1445, size: 128, offset: 64)
!1445 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1438, file: !1417, line: 39, size: 128, elements: !1446)
!1446 = !{!1447, !1452}
!1447 = !DIDerivedType(tag: DW_TAG_member, scope: !1445, file: !1417, line: 40, baseType: !1448, size: 128)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1445, file: !1417, line: 40, size: 128, elements: !1449)
!1449 = !{!1450, !1451}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1448, file: !1417, line: 41, baseType: !127, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1448, file: !1417, line: 42, baseType: !127, size: 64, offset: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, scope: !1445, file: !1417, line: 44, baseType: !1453, size: 128)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1445, file: !1417, line: 44, size: 128, elements: !1454)
!1454 = !{!1455, !1456, !1457, !1458}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1453, file: !1417, line: 45, baseType: !173, size: 32)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1453, file: !1417, line: 46, baseType: !173, size: 32, offset: 32)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1453, file: !1417, line: 47, baseType: !173, size: 32, offset: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1453, file: !1417, line: 48, baseType: !173, size: 32, offset: 96)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1438, file: !1417, line: 51, baseType: !173, size: 32, offset: 192)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1438, file: !1417, line: 52, baseType: !173, size: 32, offset: 224)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1438, file: !1417, line: 55, baseType: !1462, size: 1024, offset: 256)
!1462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 1024, elements: !220)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1438, file: !1417, line: 58, baseType: !1464, size: 2048, offset: 1280)
!1464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 2048, elements: !424)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1438, file: !1417, line: 60, baseType: !1466, size: 384, offset: 3328)
!1466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 384, elements: !1467)
!1467 = !{!1468}
!1468 = !DISubrange(count: 12)
!1469 = !DIDerivedType(tag: DW_TAG_member, scope: !1438, file: !1417, line: 62, baseType: !1470, size: 384, offset: 3712)
!1470 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1438, file: !1417, line: 62, size: 384, elements: !1471)
!1471 = !{!1472, !1473}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1470, file: !1417, line: 63, baseType: !1466, size: 384)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1470, file: !1417, line: 64, baseType: !1466, size: 384)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1422, file: !1417, line: 307, baseType: !1475, size: 1088)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1417, line: 79, size: 1088, elements: !1476)
!1476 = !{!1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1523}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1475, file: !1417, line: 80, baseType: !173, size: 32)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1475, file: !1417, line: 81, baseType: !173, size: 32, offset: 32)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1475, file: !1417, line: 82, baseType: !173, size: 32, offset: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1475, file: !1417, line: 83, baseType: !173, size: 32, offset: 96)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1475, file: !1417, line: 84, baseType: !173, size: 32, offset: 128)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1475, file: !1417, line: 85, baseType: !173, size: 32, offset: 160)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1475, file: !1417, line: 86, baseType: !173, size: 32, offset: 192)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1475, file: !1417, line: 88, baseType: !1435, size: 640, offset: 224)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1475, file: !1417, line: 89, baseType: !186, size: 8, offset: 864)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1475, file: !1417, line: 90, baseType: !186, size: 8, offset: 872)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1475, file: !1417, line: 91, baseType: !186, size: 8, offset: 880)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1475, file: !1417, line: 92, baseType: !186, size: 8, offset: 888)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1475, file: !1417, line: 93, baseType: !186, size: 8, offset: 896)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1475, file: !1417, line: 94, baseType: !186, size: 8, offset: 904)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1475, file: !1417, line: 95, baseType: !1492, size: 64, offset: 960)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1494, line: 11, size: 128, elements: !1495)
!1494 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1495 = !{!1496, !1497}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1493, file: !1494, line: 12, baseType: !454, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1493, file: !1494, line: 13, baseType: !1498, size: 64, offset: 64)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1500, line: 56, size: 1344, elements: !1501)
!1500 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1501 = !{!1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1499, file: !1500, line: 61, baseType: !286, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1499, file: !1500, line: 62, baseType: !286, size: 64, offset: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1499, file: !1500, line: 63, baseType: !286, size: 64, offset: 128)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1499, file: !1500, line: 64, baseType: !286, size: 64, offset: 192)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1499, file: !1500, line: 65, baseType: !286, size: 64, offset: 256)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1499, file: !1500, line: 66, baseType: !286, size: 64, offset: 320)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1499, file: !1500, line: 68, baseType: !286, size: 64, offset: 384)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1499, file: !1500, line: 69, baseType: !286, size: 64, offset: 448)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1499, file: !1500, line: 70, baseType: !286, size: 64, offset: 512)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1499, file: !1500, line: 71, baseType: !286, size: 64, offset: 576)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1499, file: !1500, line: 72, baseType: !286, size: 64, offset: 640)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1499, file: !1500, line: 73, baseType: !286, size: 64, offset: 704)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1499, file: !1500, line: 74, baseType: !286, size: 64, offset: 768)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1499, file: !1500, line: 75, baseType: !286, size: 64, offset: 832)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1499, file: !1500, line: 76, baseType: !286, size: 64, offset: 896)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1499, file: !1500, line: 81, baseType: !286, size: 64, offset: 960)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1499, file: !1500, line: 83, baseType: !286, size: 64, offset: 1024)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1499, file: !1500, line: 84, baseType: !286, size: 64, offset: 1088)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1499, file: !1500, line: 85, baseType: !286, size: 64, offset: 1152)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1499, file: !1500, line: 86, baseType: !286, size: 64, offset: 1216)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1499, file: !1500, line: 87, baseType: !286, size: 64, offset: 1280)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1475, file: !1417, line: 96, baseType: !173, size: 32, offset: 1024)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1422, file: !1417, line: 308, baseType: !1525, size: 4608, align: 512)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1417, line: 289, size: 4608, align: 512, elements: !1526)
!1526 = !{!1527, !1528, !1537}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1525, file: !1417, line: 290, baseType: !1438, size: 4096, align: 128)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1525, file: !1417, line: 291, baseType: !1529, size: 512, offset: 4096)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1417, line: 268, size: 512, elements: !1530)
!1530 = !{!1531, !1532, !1533}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1529, file: !1417, line: 269, baseType: !127, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1529, file: !1417, line: 270, baseType: !127, size: 64, offset: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1529, file: !1417, line: 271, baseType: !1534, size: 384, offset: 128)
!1534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 384, elements: !1535)
!1535 = !{!1536}
!1536 = !DISubrange(count: 6)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1525, file: !1417, line: 292, baseType: !1538, offset: 4608)
!1538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, elements: !1539)
!1539 = !{!1540}
!1540 = !DISubrange(count: 0)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1422, file: !1417, line: 309, baseType: !1542, size: 32768)
!1542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 32768, elements: !1543)
!1543 = !{!1544}
!1544 = !DISubrange(count: 4096)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !667, file: !507, line: 378, baseType: !1546, size: 64, offset: 64)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !663, file: !507, line: 384, baseType: !970, size: 192, offset: 192)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !527, file: !507, line: 500, baseType: !378, offset: 6656)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !527, file: !507, line: 501, baseType: !1550, size: 64, offset: 6656)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !507, line: 387, flags: DIFlagFwdDecl)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !527, file: !507, line: 516, baseType: !1553, size: 64, offset: 6720)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1555, line: 18, flags: DIFlagFwdDecl)
!1555 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !527, file: !507, line: 519, baseType: !495, size: 64, offset: 6784)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !527, file: !507, line: 521, baseType: !1558, size: 64, offset: 6848)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !507, line: 521, flags: DIFlagFwdDecl)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !527, file: !507, line: 545, baseType: !552, size: 32, offset: 6912)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !527, file: !507, line: 548, baseType: !324, size: 8, offset: 6944)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !527, file: !507, line: 550, baseType: !1563, offset: 6952)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1564, line: 142, elements: !392)
!1564 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !527, file: !507, line: 554, baseType: !1566, size: 256, offset: 6976)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1567, line: 102, size: 256, elements: !1568)
!1567 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1568 = !{!1569, !1570, !1571}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1566, file: !1567, line: 103, baseType: !560, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1566, file: !1567, line: 104, baseType: !157, size: 128, offset: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1566, file: !1567, line: 105, baseType: !1572, size: 64, offset: 192)
!1572 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1567, line: 21, baseType: !1573)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{null, !1576}
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !527, file: !507, line: 557, baseType: !173, size: 32, offset: 7232)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !524, file: !507, line: 565, baseType: !1579, offset: 7296)
!1579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !286, elements: !1580)
!1580 = !{!1581}
!1581 = !DISubrange(count: -1)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !506, file: !507, line: 333, baseType: !1583, size: 64, offset: 576)
!1583 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !497, line: 284, baseType: !1584)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !497, line: 284, size: 64, elements: !1585)
!1585 = !{!1586}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1584, file: !497, line: 284, baseType: !1587, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !550, line: 19, baseType: !286)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !506, file: !507, line: 334, baseType: !286, size: 64, offset: 640)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !506, file: !507, line: 343, baseType: !1590, size: 256, offset: 704)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !506, file: !507, line: 340, size: 256, elements: !1591)
!1591 = !{!1592, !1593}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1590, file: !507, line: 341, baseType: !514, size: 192, align: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1590, file: !507, line: 342, baseType: !286, size: 64, offset: 192)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !506, file: !507, line: 351, baseType: !157, size: 128, offset: 960)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !506, file: !507, line: 353, baseType: !1596, size: 64, offset: 1088)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !507, line: 353, flags: DIFlagFwdDecl)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !506, file: !507, line: 356, baseType: !1599, size: 64, offset: 1152)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1601)
!1601 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !507, line: 356, flags: DIFlagFwdDecl)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !506, file: !507, line: 359, baseType: !286, size: 64, offset: 1216)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !506, file: !507, line: 361, baseType: !495, size: 64, offset: 1280)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !506, file: !507, line: 362, baseType: !163, size: 64, offset: 1344)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !506, file: !507, line: 365, baseType: !560, size: 64, offset: 1408)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !506, file: !507, line: 373, baseType: !1607, offset: 1472)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !507, line: 296, elements: !392)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !474, file: !444, line: 90, baseType: !469, size: 64, offset: 192)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !474, file: !444, line: 91, baseType: !1610, size: 64, offset: 256)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !434, file: !364, line: 143, baseType: !1612, size: 64, offset: 256)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{!1615, !371}
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1617)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1618)
!1618 = !{!1619, !1620, !1624, !1628, !1634, !1638}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1617, file: !18, line: 40, baseType: !17, size: 32)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1617, file: !18, line: 41, baseType: !1621, size: 64, offset: 64)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!324}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1617, file: !18, line: 42, baseType: !1625, size: 64, offset: 128)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{!163}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1617, file: !18, line: 43, baseType: !1629, size: 64, offset: 192)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{!1363, !1632}
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1617, file: !18, line: 44, baseType: !1635, size: 64, offset: 256)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!1363}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1617, file: !18, line: 45, baseType: !1639, size: 64, offset: 320)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{null, !163}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !434, file: !364, line: 144, baseType: !1643, size: 64, offset: 320)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!1363, !371}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !434, file: !364, line: 145, baseType: !1647, size: 64, offset: 384)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{null, !371, !1650, !1656}
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1555, line: 23, baseType: !1652)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1555, line: 21, size: 32, elements: !1653)
!1653 = !{!1654}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1652, file: !1555, line: 22, baseType: !1655, size: 32)
!1655 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !158, line: 32, baseType: !1130)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1555, line: 28, baseType: !1658)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1555, line: 26, size: 32, elements: !1659)
!1659 = !{!1660}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1658, file: !1555, line: 27, baseType: !1661, size: 32)
!1661 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !158, line: 33, baseType: !1662)
!1662 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !452, line: 50, baseType: !7)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !363, file: !364, line: 70, baseType: !1664, size: 64, offset: 384)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1666, line: 123, size: 1024, elements: !1667)
!1666 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1667 = !{!1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1810, !1811, !1812, !1813, !1814}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1665, file: !1666, line: 124, baseType: !552, size: 32)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1665, file: !1666, line: 125, baseType: !552, size: 32, offset: 32)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1665, file: !1666, line: 135, baseType: !1664, size: 64, offset: 64)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1665, file: !1666, line: 136, baseType: !367, size: 64, offset: 128)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1665, file: !1666, line: 138, baseType: !514, size: 192, align: 64, offset: 192)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1665, file: !1666, line: 140, baseType: !1363, size: 64, offset: 384)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1665, file: !1666, line: 141, baseType: !7, size: 32, offset: 448)
!1675 = !DIDerivedType(tag: DW_TAG_member, scope: !1665, file: !1666, line: 142, baseType: !1676, size: 256, offset: 512)
!1676 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1665, file: !1666, line: 142, size: 256, elements: !1677)
!1677 = !{!1678, !1733, !1737}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1676, file: !1666, line: 143, baseType: !1679, size: 192)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1666, line: 91, size: 192, elements: !1680)
!1680 = !{!1681, !1682, !1683}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1679, file: !1666, line: 92, baseType: !286, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1679, file: !1666, line: 94, baseType: !531, size: 64, offset: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1679, file: !1666, line: 100, baseType: !1684, size: 64, offset: 128)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1666, line: 180, size: 704, elements: !1686)
!1686 = !{!1687, !1688, !1689, !1703, !1704, !1705, !1731, !1732}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1685, file: !1666, line: 182, baseType: !1664, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1685, file: !1666, line: 183, baseType: !7, size: 32, offset: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1685, file: !1666, line: 186, baseType: !1690, size: 192, offset: 128)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1691, line: 19, size: 192, elements: !1692)
!1691 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1692 = !{!1693, !1701, !1702}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1690, file: !1691, line: 20, baseType: !1694, size: 128)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1695, line: 292, size: 128, elements: !1696)
!1695 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1696 = !{!1697, !1698, !1700}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1694, file: !1695, line: 293, baseType: !378)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1694, file: !1695, line: 295, baseType: !1699, size: 32)
!1699 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !158, line: 148, baseType: !7)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1694, file: !1695, line: 296, baseType: !163, size: 64, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1690, file: !1691, line: 21, baseType: !7, size: 32, offset: 128)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1690, file: !1691, line: 22, baseType: !7, size: 32, offset: 160)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1685, file: !1666, line: 187, baseType: !173, size: 32, offset: 320)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1685, file: !1666, line: 188, baseType: !173, size: 32, offset: 352)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1685, file: !1666, line: 189, baseType: !1706, size: 64, offset: 384)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1666, line: 168, size: 320, elements: !1708)
!1708 = !{!1709, !1715, !1719, !1723, !1727}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1707, file: !1666, line: 169, baseType: !1710, size: 64)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!125, !1713, !1684}
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !497, line: 539, flags: DIFlagFwdDecl)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1707, file: !1666, line: 171, baseType: !1716, size: 64, offset: 64)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!125, !1664, !367, !460}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1707, file: !1666, line: 173, baseType: !1720, size: 64, offset: 128)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{!125, !1664}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1707, file: !1666, line: 174, baseType: !1724, size: 64, offset: 192)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{!125, !1664, !1664, !367}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1707, file: !1666, line: 176, baseType: !1728, size: 64, offset: 256)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{!125, !1713, !1664, !1684}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1685, file: !1666, line: 192, baseType: !157, size: 128, offset: 448)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1685, file: !1666, line: 194, baseType: !941, size: 128, offset: 576)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1676, file: !1666, line: 144, baseType: !1734, size: 64)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1666, line: 103, size: 64, elements: !1735)
!1735 = !{!1736}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1734, file: !1666, line: 104, baseType: !1664, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1676, file: !1666, line: 145, baseType: !1738, size: 256)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1666, line: 107, size: 256, elements: !1739)
!1739 = !{!1740, !1805, !1808, !1809}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1738, file: !1666, line: 108, baseType: !1741, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1743)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1666, line: 217, size: 768, elements: !1744)
!1744 = !{!1745, !1765, !1769, !1773, !1778, !1782, !1786, !1790, !1791, !1792, !1793, !1801}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1743, file: !1666, line: 222, baseType: !1746, size: 64)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!125, !1749}
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1666, line: 197, size: 1088, elements: !1751)
!1751 = !{!1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1750, file: !1666, line: 199, baseType: !1664, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1750, file: !1666, line: 200, baseType: !495, size: 64, offset: 64)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1750, file: !1666, line: 201, baseType: !1713, size: 64, offset: 128)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1750, file: !1666, line: 202, baseType: !163, size: 64, offset: 192)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1750, file: !1666, line: 205, baseType: !627, size: 192, offset: 256)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1750, file: !1666, line: 206, baseType: !627, size: 192, offset: 448)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1750, file: !1666, line: 207, baseType: !125, size: 32, offset: 640)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1750, file: !1666, line: 208, baseType: !157, size: 128, offset: 704)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1750, file: !1666, line: 209, baseType: !419, size: 64, offset: 832)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1750, file: !1666, line: 211, baseType: !465, size: 64, offset: 896)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1750, file: !1666, line: 212, baseType: !324, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1750, file: !1666, line: 213, baseType: !324, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1750, file: !1666, line: 214, baseType: !1599, size: 64, offset: 1024)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1743, file: !1666, line: 223, baseType: !1766, size: 64, offset: 64)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{null, !1749}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1743, file: !1666, line: 236, baseType: !1770, size: 64, offset: 128)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{!125, !1713, !163}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1743, file: !1666, line: 238, baseType: !1774, size: 64, offset: 192)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!163, !1713, !1777}
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1743, file: !1666, line: 239, baseType: !1779, size: 64, offset: 256)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DISubroutineType(types: !1781)
!1781 = !{!163, !1713, !163, !1777}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1743, file: !1666, line: 240, baseType: !1783, size: 64, offset: 320)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{null, !1713, !163}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1743, file: !1666, line: 242, baseType: !1787, size: 64, offset: 384)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{!450, !1749, !419, !465, !498}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1743, file: !1666, line: 252, baseType: !465, size: 64, offset: 448)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1743, file: !1666, line: 259, baseType: !324, size: 8, offset: 512)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1743, file: !1666, line: 260, baseType: !1787, size: 64, offset: 576)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1743, file: !1666, line: 263, baseType: !1794, size: 64, offset: 640)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{!1797, !1749, !1799}
!1797 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1798, line: 52, baseType: !7)
!1798 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1666, line: 27, flags: DIFlagFwdDecl)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1743, file: !1666, line: 266, baseType: !1802, size: 64, offset: 704)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{!125, !1749, !505}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1738, file: !1666, line: 109, baseType: !1806, size: 64, offset: 64)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1666, line: 31, flags: DIFlagFwdDecl)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1738, file: !1666, line: 110, baseType: !498, size: 64, offset: 128)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1738, file: !1666, line: 111, baseType: !1664, size: 64, offset: 192)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1665, file: !1666, line: 148, baseType: !163, size: 64, offset: 768)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1665, file: !1666, line: 154, baseType: !127, size: 64, offset: 832)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1665, file: !1666, line: 156, baseType: !252, size: 16, offset: 896)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1665, file: !1666, line: 157, baseType: !460, size: 16, offset: 912)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1665, file: !1666, line: 158, baseType: !1815, size: 64, offset: 960)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1666, line: 32, flags: DIFlagFwdDecl)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !363, file: !364, line: 71, baseType: !1818, size: 32, offset: 448)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1819, line: 19, size: 32, elements: !1820)
!1819 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1820 = !{!1821}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1818, file: !1819, line: 20, baseType: !684, size: 32)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !363, file: !364, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !363, file: !364, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !363, file: !364, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !363, file: !364, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !363, file: !364, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !360, file: !30, line: 463, baseType: !1828, size: 64, offset: 512)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !360, file: !30, line: 465, baseType: !1830, size: 64, offset: 576)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !360, file: !30, line: 467, baseType: !367, size: 64, offset: 640)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !360, file: !30, line: 468, baseType: !1834, size: 64, offset: 704)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1836)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1837)
!1837 = !{!1838, !1839, !1840, !1844, !1849, !1853}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1836, file: !30, line: 88, baseType: !367, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1836, file: !30, line: 89, baseType: !471, size: 64, offset: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1836, file: !30, line: 90, baseType: !1841, size: 64, offset: 128)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{!125, !1828, !414}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1836, file: !30, line: 91, baseType: !1845, size: 64, offset: 192)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{!419, !1828, !1848, !1650, !1656}
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1836, file: !30, line: 93, baseType: !1850, size: 64, offset: 256)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{null, !1828}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1836, file: !30, line: 95, baseType: !1854, size: 64, offset: 320)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1856)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1857)
!1857 = !{!1858, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1856, file: !37, line: 279, baseType: !1859, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{!125, !1828}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1856, file: !37, line: 280, baseType: !1850, size: 64, offset: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1856, file: !37, line: 281, baseType: !1859, size: 64, offset: 128)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1856, file: !37, line: 282, baseType: !1859, size: 64, offset: 192)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1856, file: !37, line: 283, baseType: !1859, size: 64, offset: 256)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1856, file: !37, line: 284, baseType: !1859, size: 64, offset: 320)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1856, file: !37, line: 285, baseType: !1859, size: 64, offset: 384)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1856, file: !37, line: 286, baseType: !1859, size: 64, offset: 448)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1856, file: !37, line: 287, baseType: !1859, size: 64, offset: 512)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1856, file: !37, line: 288, baseType: !1859, size: 64, offset: 576)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1856, file: !37, line: 289, baseType: !1859, size: 64, offset: 640)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1856, file: !37, line: 290, baseType: !1859, size: 64, offset: 704)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1856, file: !37, line: 291, baseType: !1859, size: 64, offset: 768)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1856, file: !37, line: 292, baseType: !1859, size: 64, offset: 832)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1856, file: !37, line: 293, baseType: !1859, size: 64, offset: 896)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1856, file: !37, line: 294, baseType: !1859, size: 64, offset: 960)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1856, file: !37, line: 295, baseType: !1859, size: 64, offset: 1024)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1856, file: !37, line: 296, baseType: !1859, size: 64, offset: 1088)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1856, file: !37, line: 297, baseType: !1859, size: 64, offset: 1152)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1856, file: !37, line: 298, baseType: !1859, size: 64, offset: 1216)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1856, file: !37, line: 299, baseType: !1859, size: 64, offset: 1280)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1856, file: !37, line: 300, baseType: !1859, size: 64, offset: 1344)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1856, file: !37, line: 301, baseType: !1859, size: 64, offset: 1408)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !360, file: !30, line: 470, baseType: !1885, size: 64, offset: 768)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1887, line: 82, size: 1408, elements: !1888)
!1887 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1888 = !{!1889, !1890, !1891, !1892, !1893, !1894, !1895, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1973, !1976, !1979}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1886, file: !1887, line: 83, baseType: !367, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1886, file: !1887, line: 84, baseType: !367, size: 64, offset: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1886, file: !1887, line: 85, baseType: !1828, size: 64, offset: 128)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1886, file: !1887, line: 86, baseType: !471, size: 64, offset: 192)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1886, file: !1887, line: 87, baseType: !471, size: 64, offset: 256)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1886, file: !1887, line: 88, baseType: !471, size: 64, offset: 320)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1886, file: !1887, line: 90, baseType: !1896, size: 64, offset: 384)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DISubroutineType(types: !1898)
!1898 = !{!125, !1828, !1899}
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1901)
!1901 = !{!1902, !1903, !1904, !1908, !1909, !1910, !1911, !1924, !1937, !1938, !1939, !1940, !1941, !1949, !1950, !1951, !1952, !1953, !1954}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1900, file: !24, line: 96, baseType: !367, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1900, file: !24, line: 97, baseType: !1885, size: 64, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1900, file: !24, line: 99, baseType: !1905, size: 64, offset: 128)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1907, line: 76, flags: DIFlagFwdDecl)
!1907 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1900, file: !24, line: 100, baseType: !367, size: 64, offset: 192)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1900, file: !24, line: 102, baseType: !324, size: 8, offset: 256)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1900, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1900, file: !24, line: 105, baseType: !1912, size: 64, offset: 320)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1914)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1915, line: 262, size: 1600, elements: !1916)
!1915 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1916 = !{!1917, !1918, !1919, !1923}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1914, file: !1915, line: 263, baseType: !218, size: 256)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1914, file: !1915, line: 264, baseType: !218, size: 256, offset: 256)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1914, file: !1915, line: 265, baseType: !1920, size: 1024, offset: 512)
!1920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 1024, elements: !1921)
!1921 = !{!1922}
!1922 = !DISubrange(count: 128)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1914, file: !1915, line: 266, baseType: !1363, size: 64, offset: 1536)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1900, file: !24, line: 106, baseType: !1925, size: 64, offset: 384)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1927)
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1915, line: 210, size: 256, elements: !1928)
!1928 = !{!1929, !1933, !1935, !1936}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1927, file: !1915, line: 211, baseType: !1930, size: 72)
!1930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 72, elements: !1931)
!1931 = !{!1932}
!1932 = !DISubrange(count: 9)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1927, file: !1915, line: 212, baseType: !1934, size: 64, offset: 128)
!1934 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1915, line: 14, baseType: !286)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1927, file: !1915, line: 213, baseType: !174, size: 32, offset: 192)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1927, file: !1915, line: 214, baseType: !174, size: 32, offset: 224)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1900, file: !24, line: 108, baseType: !1859, size: 64, offset: 448)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1900, file: !24, line: 109, baseType: !1850, size: 64, offset: 512)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1900, file: !24, line: 110, baseType: !1859, size: 64, offset: 576)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1900, file: !24, line: 111, baseType: !1850, size: 64, offset: 640)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1900, file: !24, line: 112, baseType: !1942, size: 64, offset: 704)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!125, !1828, !1945}
!1945 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1946)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1947)
!1947 = !{!1948}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1946, file: !37, line: 51, baseType: !125, size: 32)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1900, file: !24, line: 113, baseType: !1859, size: 64, offset: 768)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1900, file: !24, line: 114, baseType: !471, size: 64, offset: 832)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1900, file: !24, line: 115, baseType: !471, size: 64, offset: 896)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1900, file: !24, line: 117, baseType: !1854, size: 64, offset: 960)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1900, file: !24, line: 118, baseType: !1850, size: 64, offset: 1024)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1900, file: !24, line: 120, baseType: !1955, size: 64, offset: 1088)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1886, file: !1887, line: 91, baseType: !1841, size: 64, offset: 448)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1886, file: !1887, line: 92, baseType: !1859, size: 64, offset: 512)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1886, file: !1887, line: 93, baseType: !1850, size: 64, offset: 576)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1886, file: !1887, line: 94, baseType: !1859, size: 64, offset: 640)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1886, file: !1887, line: 95, baseType: !1850, size: 64, offset: 704)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1886, file: !1887, line: 97, baseType: !1859, size: 64, offset: 768)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1886, file: !1887, line: 98, baseType: !1859, size: 64, offset: 832)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1886, file: !1887, line: 100, baseType: !1942, size: 64, offset: 896)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1886, file: !1887, line: 101, baseType: !1859, size: 64, offset: 960)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1886, file: !1887, line: 103, baseType: !1859, size: 64, offset: 1024)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1886, file: !1887, line: 105, baseType: !1859, size: 64, offset: 1088)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1886, file: !1887, line: 107, baseType: !1854, size: 64, offset: 1152)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1886, file: !1887, line: 109, baseType: !1970, size: 64, offset: 1216)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1972)
!1972 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1887, line: 109, flags: DIFlagFwdDecl)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1886, file: !1887, line: 111, baseType: !1974, size: 64, offset: 1280)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1887, line: 111, flags: DIFlagFwdDecl)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1886, file: !1887, line: 112, baseType: !1977, offset: 1344)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1978, line: 187, elements: !392)
!1978 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1886, file: !1887, line: 114, baseType: !324, size: 8, offset: 1344)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !360, file: !30, line: 471, baseType: !1899, size: 64, offset: 832)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !360, file: !30, line: 473, baseType: !163, size: 64, offset: 896)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !360, file: !30, line: 475, baseType: !163, size: 64, offset: 960)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !360, file: !30, line: 480, baseType: !627, size: 192, offset: 1024)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !360, file: !30, line: 484, baseType: !1985, size: 576, offset: 1216)
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1986)
!1986 = !{!1987, !1988, !1989, !1990, !1991, !1992}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1985, file: !30, line: 362, baseType: !157, size: 128)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1985, file: !30, line: 363, baseType: !157, size: 128, offset: 128)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1985, file: !30, line: 364, baseType: !157, size: 128, offset: 256)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1985, file: !30, line: 365, baseType: !157, size: 128, offset: 384)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1985, file: !30, line: 366, baseType: !324, size: 8, offset: 512)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1985, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !360, file: !30, line: 485, baseType: !1994, size: 2304, offset: 1792)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1995)
!1995 = !{!1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2091, !2095}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1994, file: !37, line: 566, baseType: !1945, size: 32)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1994, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1994, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1994, file: !37, line: 569, baseType: !324, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1994, file: !37, line: 570, baseType: !324, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1994, file: !37, line: 571, baseType: !324, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1994, file: !37, line: 572, baseType: !324, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1994, file: !37, line: 573, baseType: !324, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1994, file: !37, line: 574, baseType: !324, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1994, file: !37, line: 575, baseType: !324, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1994, file: !37, line: 576, baseType: !324, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1994, file: !37, line: 577, baseType: !173, size: 32, offset: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1994, file: !37, line: 578, baseType: !378, offset: 96)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1994, file: !37, line: 580, baseType: !157, size: 128, offset: 128)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1994, file: !37, line: 581, baseType: !970, size: 192, offset: 256)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1994, file: !37, line: 582, baseType: !2012, size: 64, offset: 448)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2014, line: 43, size: 1472, elements: !2015)
!2014 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!2015 = !{!2016, !2017, !2018, !2019, !2020, !2023, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2013, file: !2014, line: 44, baseType: !367, size: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2013, file: !2014, line: 45, baseType: !125, size: 32, offset: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2013, file: !2014, line: 46, baseType: !157, size: 128, offset: 128)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2013, file: !2014, line: 47, baseType: !378, offset: 256)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2013, file: !2014, line: 48, baseType: !2021, size: 64, offset: 256)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2013, file: !2014, line: 49, baseType: !2024, size: 320, offset: 320)
!2024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2025, line: 11, size: 320, elements: !2026)
!2025 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!2026 = !{!2027, !2028, !2029, !2034}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2024, file: !2025, line: 16, baseType: !934, size: 128)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2024, file: !2025, line: 17, baseType: !286, size: 64, offset: 128)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2024, file: !2025, line: 18, baseType: !2030, size: 64, offset: 192)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{null, !2033}
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2024, file: !2025, line: 19, baseType: !173, size: 32, offset: 256)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2013, file: !2014, line: 50, baseType: !286, size: 64, offset: 640)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2013, file: !2014, line: 51, baseType: !117, size: 64, offset: 704)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2013, file: !2014, line: 52, baseType: !117, size: 64, offset: 768)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2013, file: !2014, line: 53, baseType: !117, size: 64, offset: 832)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2013, file: !2014, line: 54, baseType: !117, size: 64, offset: 896)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2013, file: !2014, line: 55, baseType: !117, size: 64, offset: 960)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2013, file: !2014, line: 56, baseType: !286, size: 64, offset: 1024)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2013, file: !2014, line: 57, baseType: !286, size: 64, offset: 1088)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2013, file: !2014, line: 58, baseType: !286, size: 64, offset: 1152)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2013, file: !2014, line: 59, baseType: !286, size: 64, offset: 1216)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2013, file: !2014, line: 60, baseType: !286, size: 64, offset: 1280)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2013, file: !2014, line: 61, baseType: !1828, size: 64, offset: 1344)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2013, file: !2014, line: 62, baseType: !324, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2013, file: !2014, line: 63, baseType: !324, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1994, file: !37, line: 583, baseType: !324, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1994, file: !37, line: 584, baseType: !324, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1994, file: !37, line: 585, baseType: !324, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1994, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1994, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1994, file: !37, line: 592, baseType: !746, size: 512, offset: 576)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1994, file: !37, line: 593, baseType: !127, size: 64, offset: 1088)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1994, file: !37, line: 594, baseType: !1566, size: 256, offset: 1152)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1994, file: !37, line: 595, baseType: !941, size: 128, offset: 1408)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1994, file: !37, line: 596, baseType: !2021, size: 64, offset: 1536)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1994, file: !37, line: 597, baseType: !552, size: 32, offset: 1600)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1994, file: !37, line: 598, baseType: !552, size: 32, offset: 1632)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1994, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1994, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1994, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1994, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1994, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1994, file: !37, line: 604, baseType: !324, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1994, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1994, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1994, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1994, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1994, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1994, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1994, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1994, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1994, file: !37, line: 613, baseType: !125, size: 32, offset: 1792)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1994, file: !37, line: 614, baseType: !125, size: 32, offset: 1824)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1994, file: !37, line: 615, baseType: !127, size: 64, offset: 1856)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1994, file: !37, line: 616, baseType: !127, size: 64, offset: 1920)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1994, file: !37, line: 617, baseType: !127, size: 64, offset: 1984)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1994, file: !37, line: 618, baseType: !127, size: 64, offset: 2048)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1994, file: !37, line: 620, baseType: !2082, size: 64, offset: 2112)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !2084)
!2084 = !{!2085, !2086, !2087, !2088}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2083, file: !37, line: 537, baseType: !378)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2083, file: !37, line: 538, baseType: !7, size: 32)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !2083, file: !37, line: 540, baseType: !157, size: 128, offset: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !2083, file: !37, line: 543, baseType: !2089, size: 64, offset: 192)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1994, file: !37, line: 621, baseType: !2092, size: 64, offset: 2176)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{null, !1828, !894}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1994, file: !37, line: 622, baseType: !2096, size: 64, offset: 2240)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !51, line: 117, size: 2304, elements: !2098)
!2098 = !{!2099, !2128, !2129, !2136, !2141, !2168, !2169}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency", scope: !2097, file: !51, line: 118, baseType: !2100, size: 320)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_constraints", file: !51, line: 52, size: 320, elements: !2101)
!2101 = !{!2102, !2107, !2108, !2109, !2110, !2111}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2100, file: !51, line: 53, baseType: !2103, size: 128)
!2103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_head", file: !2104, line: 79, size: 128, elements: !2105)
!2104 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/lizy2001/genbc/linux")
!2105 = !{!2106}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2103, file: !2104, line: 80, baseType: !157, size: 128)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "target_value", scope: !2100, file: !51, line: 54, baseType: !894, size: 32, offset: 128)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "default_value", scope: !2100, file: !51, line: 55, baseType: !894, size: 32, offset: 160)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "no_constraint_value", scope: !2100, file: !51, line: 56, baseType: !894, size: 32, offset: 192)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2100, file: !51, line: 57, baseType: !50, size: 32, offset: 224)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "notifiers", scope: !2100, file: !51, line: 58, baseType: !2112, size: 64, offset: 256)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !2114, line: 65, size: 320, elements: !2115)
!2114 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!2115 = !{!2116, !2117}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !2113, file: !2114, line: 66, baseType: !569, size: 256)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2113, file: !2114, line: 67, baseType: !2118, size: 64, offset: 256)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !2114, line: 54, size: 192, elements: !2120)
!2120 = !{!2121, !2126, !2127}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !2119, file: !2114, line: 55, baseType: !2122, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !2114, line: 51, baseType: !2123)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!125, !2118, !286, !163}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2119, file: !2114, line: 56, baseType: !2118, size: 64, offset: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !2119, file: !2114, line: 57, baseType: !125, size: 32, offset: 128)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance", scope: !2097, file: !51, line: 119, baseType: !2100, size: 320, offset: 320)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !2097, file: !51, line: 120, baseType: !2130, size: 1280, offset: 640)
!2130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_constraints", file: !51, line: 85, size: 1280, elements: !2131)
!2131 = !{!2132, !2133, !2134, !2135}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq", scope: !2130, file: !51, line: 86, baseType: !2100, size: 320)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq_notifiers", scope: !2130, file: !51, line: 87, baseType: !2113, size: 320, offset: 320)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq", scope: !2130, file: !51, line: 88, baseType: !2100, size: 320, offset: 640)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq_notifiers", scope: !2130, file: !51, line: 89, baseType: !2113, size: 320, offset: 960)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2097, file: !51, line: 121, baseType: !2137, size: 192, offset: 1920)
!2137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags", file: !51, line: 71, size: 192, elements: !2138)
!2138 = !{!2139, !2140}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2137, file: !51, line: 72, baseType: !157, size: 128)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "effective_flags", scope: !2137, file: !51, line: 73, baseType: !894, size: 32, offset: 128)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency_req", scope: !2097, file: !51, line: 122, baseType: !2142, size: 64, offset: 2112)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos_request", file: !51, line: 107, size: 576, elements: !2144)
!2144 = !{!2145, !2146, !2167}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2143, file: !51, line: 108, baseType: !56, size: 32)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2143, file: !51, line: 113, baseType: !2147, size: 448, offset: 64)
!2147 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2143, file: !51, line: 109, size: 448, elements: !2148)
!2148 = !{!2149, !2155, !2160}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !2147, file: !51, line: 110, baseType: !2150, size: 320)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2104, line: 83, size: 320, elements: !2151)
!2151 = !{!2152, !2153, !2154}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2150, file: !2104, line: 84, baseType: !125, size: 32)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2150, file: !2104, line: 85, baseType: !157, size: 128, offset: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2150, file: !2104, line: 86, baseType: !157, size: 128, offset: 192)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "flr", scope: !2147, file: !51, line: 111, baseType: !2156, size: 192)
!2156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags_request", file: !51, line: 66, size: 192, elements: !2157)
!2157 = !{!2158, !2159}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2156, file: !51, line: 67, baseType: !157, size: 128)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2156, file: !51, line: 68, baseType: !894, size: 32, offset: 128)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !2147, file: !51, line: 112, baseType: !2161, size: 448)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_qos_request", file: !51, line: 92, size: 448, elements: !2162)
!2162 = !{!2163, !2164, !2165}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2161, file: !51, line: 93, baseType: !63, size: 32)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !2161, file: !51, line: 94, baseType: !2150, size: 320, offset: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2161, file: !51, line: 95, baseType: !2166, size: 64, offset: 384)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2143, file: !51, line: 114, baseType: !1828, size: 64, offset: 512)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance_req", scope: !2097, file: !51, line: 123, baseType: !2142, size: 64, offset: 2176)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "flags_req", scope: !2097, file: !51, line: 124, baseType: !2142, size: 64, offset: 2240)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !360, file: !30, line: 486, baseType: !2171, size: 64, offset: 4096)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !2173)
!2173 = !{!2174, !2175, !2176, !2180, !2181, !2182}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2172, file: !37, line: 643, baseType: !1856, size: 1472)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2172, file: !37, line: 644, baseType: !1859, size: 64, offset: 1472)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2172, file: !37, line: 645, baseType: !2177, size: 64, offset: 1536)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{null, !1828, !324}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2172, file: !37, line: 646, baseType: !1859, size: 64, offset: 1600)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2172, file: !37, line: 647, baseType: !1850, size: 64, offset: 1664)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2172, file: !37, line: 648, baseType: !1850, size: 64, offset: 1728)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !360, file: !30, line: 493, baseType: !2184, size: 64, offset: 4160)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !68, line: 162, size: 1088, elements: !2186)
!2186 = !{!2187, !2188, !2189, !2363, !2364, !2365, !2366, !2367, !2368, !2371, !2372, !2373, !2374, !2375, !2376, !2377}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2185, file: !68, line: 163, baseType: !157, size: 128)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2185, file: !68, line: 164, baseType: !367, size: 64, offset: 128)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2185, file: !68, line: 165, baseType: !2190, size: 64, offset: 192)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2192)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !68, line: 105, size: 640, elements: !2193)
!2193 = !{!2194, !2312, !2323, !2328, !2332, !2340, !2344, !2348, !2355, !2359}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2192, file: !68, line: 106, baseType: !2195, size: 64)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{!125, !2184, !2198, !67}
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2200, line: 51, size: 1344, elements: !2201)
!2200 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!2201 = !{!2202, !2203, !2205, !2206, !2296, !2305, !2306, !2307, !2308, !2309, !2310, !2311}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2199, file: !2200, line: 52, baseType: !367, size: 64)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !2199, file: !2200, line: 53, baseType: !2204, size: 32, offset: 64)
!2204 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !2200, line: 28, baseType: !173)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !2199, file: !2200, line: 54, baseType: !367, size: 64, offset: 128)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2199, file: !2200, line: 55, baseType: !2207, size: 192, offset: 192)
!2207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2208, line: 17, size: 192, elements: !2209)
!2208 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!2209 = !{!2210, !2212, !2295}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !2207, file: !2208, line: 18, baseType: !2211, size: 64)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2207, file: !2208, line: 19, baseType: !2213, size: 64, offset: 64)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2215)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !2208, line: 110, size: 1152, elements: !2216)
!2216 = !{!2217, !2221, !2225, !2231, !2237, !2241, !2245, !2250, !2254, !2255, !2259, !2263, !2267, !2278, !2279, !2280, !2281, !2291}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2215, file: !2208, line: 111, baseType: !2218, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{!2211, !2211}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2215, file: !2208, line: 112, baseType: !2222, size: 64, offset: 64)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{null, !2211}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !2215, file: !2208, line: 113, baseType: !2226, size: 64, offset: 128)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{!324, !2229}
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2207)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !2215, file: !2208, line: 114, baseType: !2232, size: 64, offset: 192)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{!1363, !2229, !2235}
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !360)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !2215, file: !2208, line: 116, baseType: !2238, size: 64, offset: 256)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!324, !2229, !367}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !2215, file: !2208, line: 118, baseType: !2242, size: 64, offset: 320)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{!125, !2229, !367, !7, !163, !465}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !2215, file: !2208, line: 123, baseType: !2246, size: 64, offset: 384)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DISubroutineType(types: !2248)
!2248 = !{!125, !2229, !367, !2249, !465}
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2215, file: !2208, line: 126, baseType: !2251, size: 64, offset: 448)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DISubroutineType(types: !2253)
!2253 = !{!367, !2229}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !2215, file: !2208, line: 127, baseType: !2251, size: 64, offset: 512)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2215, file: !2208, line: 128, baseType: !2256, size: 64, offset: 576)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{!2211, !2229}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !2215, file: !2208, line: 130, baseType: !2260, size: 64, offset: 640)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = !DISubroutineType(types: !2262)
!2262 = !{!2211, !2229, !2211}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !2215, file: !2208, line: 133, baseType: !2264, size: 64, offset: 704)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!2211, !2229, !367}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !2215, file: !2208, line: 135, baseType: !2268, size: 64, offset: 768)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!125, !2229, !367, !367, !7, !7, !2271}
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !2208, line: 43, size: 640, elements: !2273)
!2273 = !{!2274, !2275, !2276}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2272, file: !2208, line: 44, baseType: !2211, size: 64)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2272, file: !2208, line: 45, baseType: !7, size: 32, offset: 64)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2272, file: !2208, line: 46, baseType: !2277, size: 512, offset: 128)
!2277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 512, elements: !222)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !2215, file: !2208, line: 140, baseType: !2260, size: 64, offset: 832)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !2215, file: !2208, line: 143, baseType: !2256, size: 64, offset: 896)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !2215, file: !2208, line: 145, baseType: !2218, size: 64, offset: 960)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !2215, file: !2208, line: 146, baseType: !2282, size: 64, offset: 1024)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{!125, !2229, !2285}
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !2208, line: 29, size: 128, elements: !2287)
!2287 = !{!2288, !2289, !2290}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2286, file: !2208, line: 30, baseType: !7, size: 32)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2286, file: !2208, line: 31, baseType: !7, size: 32, offset: 32)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2286, file: !2208, line: 32, baseType: !2229, size: 64, offset: 64)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !2215, file: !2208, line: 148, baseType: !2292, size: 64, offset: 1088)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{!125, !2229, !1828}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2207, file: !2208, line: 20, baseType: !1828, size: 64, offset: 128)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2199, file: !2200, line: 57, baseType: !2297, size: 64, offset: 384)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !2200, line: 31, size: 704, elements: !2299)
!2299 = !{!2300, !2301, !2302, !2303, !2304}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2298, file: !2200, line: 32, baseType: !419, size: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2298, file: !2200, line: 33, baseType: !125, size: 32, offset: 64)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2298, file: !2200, line: 34, baseType: !163, size: 64, offset: 128)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2298, file: !2200, line: 35, baseType: !2297, size: 64, offset: 192)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2298, file: !2200, line: 43, baseType: !486, size: 448, offset: 256)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !2199, file: !2200, line: 58, baseType: !2297, size: 64, offset: 448)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2199, file: !2200, line: 59, baseType: !2198, size: 64, offset: 512)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2199, file: !2200, line: 60, baseType: !2198, size: 64, offset: 576)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2199, file: !2200, line: 61, baseType: !2198, size: 64, offset: 640)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2199, file: !2200, line: 63, baseType: !363, size: 512, offset: 704)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2199, file: !2200, line: 65, baseType: !286, size: 64, offset: 1216)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2199, file: !2200, line: 66, baseType: !163, size: 64, offset: 1280)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !2192, file: !68, line: 108, baseType: !2313, size: 64, offset: 64)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = !DISubroutineType(types: !2315)
!2315 = !{!125, !2184, !2316, !67}
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !68, line: 63, size: 640, elements: !2318)
!2318 = !{!2319, !2320, !2321}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2317, file: !68, line: 64, baseType: !2211, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !2317, file: !68, line: 65, baseType: !125, size: 32, offset: 64)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !2317, file: !68, line: 66, baseType: !2322, size: 512, offset: 96)
!2322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 512, elements: !337)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !2192, file: !68, line: 110, baseType: !2324, size: 64, offset: 128)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{!125, !2184, !7, !2327}
!2327 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !158, line: 164, baseType: !286)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !2192, file: !68, line: 111, baseType: !2329, size: 64, offset: 192)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{null, !2184, !7}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !2192, file: !68, line: 112, baseType: !2333, size: 64, offset: 256)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{!125, !2184, !2198, !2336, !7, !2338, !2339}
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !173)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2192, file: !68, line: 117, baseType: !2341, size: 64, offset: 320)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!125, !2184, !7, !7, !163}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2192, file: !68, line: 119, baseType: !2345, size: 64, offset: 384)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = !DISubroutineType(types: !2347)
!2347 = !{null, !2184, !7, !7}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2192, file: !68, line: 121, baseType: !2349, size: 64, offset: 448)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!125, !2184, !2352, !324}
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !2354, line: 11, flags: DIFlagFwdDecl)
!2354 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !2192, file: !68, line: 122, baseType: !2356, size: 64, offset: 512)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{null, !2184, !2352}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !2192, file: !68, line: 123, baseType: !2360, size: 64, offset: 576)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!125, !2184, !2316, !2338, !2339}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !2185, file: !68, line: 166, baseType: !163, size: 64, offset: 256)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2185, file: !68, line: 167, baseType: !7, size: 32, offset: 320)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !2185, file: !68, line: 168, baseType: !7, size: 32, offset: 352)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2185, file: !68, line: 171, baseType: !2211, size: 64, offset: 384)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !2185, file: !68, line: 172, baseType: !67, size: 32, offset: 448)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !2185, file: !68, line: 173, baseType: !2369, size: 64, offset: 512)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !68, line: 134, flags: DIFlagFwdDecl)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2185, file: !68, line: 175, baseType: !2184, size: 64, offset: 576)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !2185, file: !68, line: 182, baseType: !2327, size: 64, offset: 640)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !2185, file: !68, line: 183, baseType: !7, size: 32, offset: 704)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !2185, file: !68, line: 184, baseType: !7, size: 32, offset: 736)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !2185, file: !68, line: 185, baseType: !1694, size: 128, offset: 768)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !2185, file: !68, line: 186, baseType: !627, size: 192, offset: 896)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !2185, file: !68, line: 187, baseType: !2378, offset: 1088)
!2378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !1580)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !360, file: !30, line: 499, baseType: !157, size: 128, offset: 4224)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !360, file: !30, line: 502, baseType: !2381, size: 64, offset: 4352)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2383)
!2383 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !360, file: !30, line: 504, baseType: !2385, size: 64, offset: 4416)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !360, file: !30, line: 505, baseType: !127, size: 64, offset: 4480)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !360, file: !30, line: 510, baseType: !127, size: 64, offset: 4544)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !360, file: !30, line: 511, baseType: !2389, size: 64, offset: 4608)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2391)
!2391 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !360, file: !30, line: 513, baseType: !2393, size: 64, offset: 4672)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !2395)
!2395 = !{!2396, !2397}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2394, file: !30, line: 293, baseType: !7, size: 32)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2394, file: !30, line: 294, baseType: !286, size: 64, offset: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !360, file: !30, line: 515, baseType: !157, size: 128, offset: 4736)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !360, file: !30, line: 526, baseType: !2400, offset: 4864)
!2400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2401, line: 5, elements: !392)
!2401 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !360, file: !30, line: 528, baseType: !2198, size: 64, offset: 4864)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !360, file: !30, line: 529, baseType: !2211, size: 64, offset: 4928)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !360, file: !30, line: 534, baseType: !2405, size: 32, offset: 4992)
!2405 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !158, line: 16, baseType: !2406)
!2406 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !158, line: 13, baseType: !173)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !360, file: !30, line: 535, baseType: !173, size: 32, offset: 5024)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !360, file: !30, line: 537, baseType: !378, offset: 5056)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !360, file: !30, line: 538, baseType: !157, size: 128, offset: 5056)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !360, file: !30, line: 540, baseType: !2411, size: 64, offset: 5184)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2413, line: 54, size: 960, elements: !2414)
!2413 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2414 = !{!2415, !2416, !2417, !2418, !2419, !2420, !2421, !2425, !2429, !2430, !2431, !2432, !2436, !2440, !2441}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2412, file: !2413, line: 55, baseType: !367, size: 64)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2412, file: !2413, line: 56, baseType: !1905, size: 64, offset: 64)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2412, file: !2413, line: 58, baseType: !471, size: 64, offset: 128)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2412, file: !2413, line: 59, baseType: !471, size: 64, offset: 192)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2412, file: !2413, line: 60, baseType: !371, size: 64, offset: 256)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2412, file: !2413, line: 62, baseType: !1841, size: 64, offset: 320)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2412, file: !2413, line: 63, baseType: !2422, size: 64, offset: 384)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!419, !1828, !1848}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2412, file: !2413, line: 65, baseType: !2426, size: 64, offset: 448)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{null, !2411}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2412, file: !2413, line: 66, baseType: !1850, size: 64, offset: 512)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2412, file: !2413, line: 68, baseType: !1859, size: 64, offset: 576)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2412, file: !2413, line: 70, baseType: !1615, size: 64, offset: 640)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2412, file: !2413, line: 71, baseType: !2433, size: 64, offset: 704)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{!1363, !1828}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2412, file: !2413, line: 73, baseType: !2437, size: 64, offset: 768)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = !DISubroutineType(types: !2439)
!2439 = !{null, !1828, !1650, !1656}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2412, file: !2413, line: 75, baseType: !1854, size: 64, offset: 832)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2412, file: !2413, line: 77, baseType: !1974, size: 64, offset: 896)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !360, file: !30, line: 541, baseType: !471, size: 64, offset: 5248)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !360, file: !30, line: 543, baseType: !1850, size: 64, offset: 5312)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !360, file: !30, line: 544, baseType: !2445, size: 64, offset: 5376)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !360, file: !30, line: 545, baseType: !2448, size: 64, offset: 5440)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !360, file: !30, line: 547, baseType: !324, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !360, file: !30, line: 548, baseType: !324, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !360, file: !30, line: 549, baseType: !324, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !360, file: !30, line: 550, baseType: !324, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !351, file: !352, line: 97, baseType: !2198, size: 64, offset: 5760)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "devdata", scope: !351, file: !352, line: 98, baseType: !163, size: 64, offset: 5824)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !351, file: !352, line: 99, baseType: !163, size: 64, offset: 5888)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !351, file: !352, line: 100, baseType: !2458, size: 64, offset: 5952)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2460)
!2460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device_ops", file: !352, line: 84, size: 384, elements: !2461)
!2461 = !{!2462, !2466, !2467, !2471, !2475, !2479}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "get_max_state", scope: !2460, file: !352, line: 85, baseType: !2463, size: 64)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!125, !350, !2338}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "get_cur_state", scope: !2460, file: !352, line: 86, baseType: !2463, size: 64, offset: 64)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "set_cur_state", scope: !2460, file: !352, line: 87, baseType: !2468, size: 64, offset: 128)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = !DISubroutineType(types: !2470)
!2470 = !{!125, !350, !286}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "get_requested_power", scope: !2460, file: !352, line: 88, baseType: !2472, size: 64, offset: 192)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!125, !350, !865}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "state2power", scope: !2460, file: !352, line: 89, baseType: !2476, size: 64, offset: 256)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!125, !350, !286, !865}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "power2state", scope: !2460, file: !352, line: 90, baseType: !2480, size: 64, offset: 320)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!125, !350, !173, !2338}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "updated", scope: !351, file: !352, line: 101, baseType: !324, size: 8, offset: 6016)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !351, file: !352, line: 102, baseType: !627, size: 192, offset: 6080)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_instances", scope: !351, file: !352, line: 103, baseType: !157, size: 128, offset: 6272)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !351, file: !352, line: 104, baseType: !157, size: 128, offset: 6400)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !166, file: !167, line: 234, baseType: !1828, size: 64, offset: 6976)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "perflib_req", scope: !166, file: !167, line: 235, baseType: !2161, size: 448, offset: 7040)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_req", scope: !166, file: !167, line: 236, baseType: !2161, size: 448, offset: 7488)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !282)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_power_register", file: !167, line: 53, size: 120, elements: !2494)
!2494 = !{!2495, !2496, !2497, !2498, !2499, !2500, !2501}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !2493, file: !167, line: 54, baseType: !186, size: 8)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2493, file: !167, line: 55, baseType: !250, size: 16, offset: 8)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !2493, file: !167, line: 56, baseType: !186, size: 8, offset: 24)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !2493, file: !167, line: 57, baseType: !186, size: 8, offset: 32)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !2493, file: !167, line: 58, baseType: !186, size: 8, offset: 40)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "access_size", scope: !2493, file: !167, line: 59, baseType: !186, size: 8, offset: 48)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2493, file: !167, line: 60, baseType: !127, size: 64, offset: 56)
!2502 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !171, line: 805, baseType: !186)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!2507 = !{!2508, !2560, !2565, !2567, !2572, !2574, !2579, !2581, !2586, !2620, !2622, !2624, !2626, !0, !2628, !2630, !2633, !2638, !2643, !2645, !2647, !2652, !2654, !2657, !2662, !2664, !2666, !2671}
!2508 = !DIGlobalVariableExpression(var: !2509, expr: !DIExpression())
!2509 = distinct !DIGlobalVariable(name: "__param_max_cstate", scope: !2, file: !3, line: 41, type: !2510, isLocal: true, isDefinition: true, align: 64)
!2510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2511)
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2512, line: 69, size: 320, elements: !2513)
!2512 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!2513 = !{!2514, !2515, !2516, !2532, !2534, !2538, !2539}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2511, file: !2512, line: 70, baseType: !367, size: 64)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2511, file: !2512, line: 71, baseType: !1905, size: 64, offset: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2511, file: !2512, line: 72, baseType: !2517, size: 64, offset: 128)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2519)
!2519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2512, line: 47, size: 256, elements: !2520)
!2520 = !{!2521, !2522, !2527, !2531}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2519, file: !2512, line: 49, baseType: !7, size: 32)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2519, file: !2512, line: 51, baseType: !2523, size: 64, offset: 64)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{!125, !367, !2526}
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2519, file: !2512, line: 53, baseType: !2528, size: 64, offset: 128)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{!125, !419, !2526}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2519, file: !2512, line: 55, baseType: !1639, size: 64, offset: 192)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2511, file: !2512, line: 73, baseType: !2533, size: 16, offset: 192)
!2533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !250)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2511, file: !2512, line: 74, baseType: !2535, size: 8, offset: 208)
!2535 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !120, line: 16, baseType: !2536)
!2536 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !122, line: 20, baseType: !2537)
!2537 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2511, file: !2512, line: 75, baseType: !186, size: 8, offset: 216)
!2539 = !DIDerivedType(tag: DW_TAG_member, scope: !2511, file: !2512, line: 76, baseType: !2540, size: 64, offset: 256)
!2540 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2511, file: !2512, line: 76, size: 64, elements: !2541)
!2541 = !{!2542, !2543, !2550}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2540, file: !2512, line: 77, baseType: !163, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2540, file: !2512, line: 78, baseType: !2544, size: 64)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2546)
!2546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2512, line: 86, size: 128, elements: !2547)
!2547 = !{!2548, !2549}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2546, file: !2512, line: 87, baseType: !7, size: 32)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2546, file: !2512, line: 88, baseType: !419, size: 64, offset: 64)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2540, file: !2512, line: 79, baseType: !2551, size: 64)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2553)
!2553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2512, line: 92, size: 256, elements: !2554)
!2554 = !{!2555, !2556, !2557, !2558, !2559}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2553, file: !2512, line: 94, baseType: !7, size: 32)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2553, file: !2512, line: 95, baseType: !7, size: 32, offset: 32)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2553, file: !2512, line: 96, baseType: !2339, size: 64, offset: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2553, file: !2512, line: 97, baseType: !2517, size: 64, offset: 128)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2553, file: !2512, line: 98, baseType: !163, size: 64, offset: 192)
!2560 = !DIGlobalVariableExpression(var: !2561, expr: !DIExpression())
!2561 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_max_cstatetype172", scope: !2, file: !3, line: 41, type: !2562, isLocal: true, isDefinition: true, align: 8)
!2562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 280, elements: !2563)
!2563 = !{!2564}
!2564 = !DISubrange(count: 35)
!2565 = !DIGlobalVariableExpression(var: !2566, expr: !DIExpression())
!2566 = distinct !DIGlobalVariable(name: "__param_nocst", scope: !2, file: !3, line: 43, type: !2510, isLocal: true, isDefinition: true, align: 64)
!2567 = !DIGlobalVariableExpression(var: !2568, expr: !DIExpression())
!2568 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_nocsttype173", scope: !2, file: !3, line: 43, type: !2569, isLocal: true, isDefinition: true, align: 8)
!2569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 240, elements: !2570)
!2570 = !{!2571}
!2571 = !DISubrange(count: 30)
!2572 = !DIGlobalVariableExpression(var: !2573, expr: !DIExpression())
!2573 = distinct !DIGlobalVariable(name: "__param_bm_check_disable", scope: !2, file: !3, line: 45, type: !2510, isLocal: true, isDefinition: true, align: 64)
!2574 = !DIGlobalVariableExpression(var: !2575, expr: !DIExpression())
!2575 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_bm_check_disabletype174", scope: !2, file: !3, line: 45, type: !2576, isLocal: true, isDefinition: true, align: 8)
!2576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 328, elements: !2577)
!2577 = !{!2578}
!2578 = !DISubrange(count: 41)
!2579 = !DIGlobalVariableExpression(var: !2580, expr: !DIExpression())
!2580 = distinct !DIGlobalVariable(name: "__param_latency_factor", scope: !2, file: !3, line: 48, type: !2510, isLocal: true, isDefinition: true, align: 64)
!2581 = !DIGlobalVariableExpression(var: !2582, expr: !DIExpression())
!2582 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_latency_factortype175", scope: !2, file: !3, line: 48, type: !2583, isLocal: true, isDefinition: true, align: 8)
!2583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 312, elements: !2584)
!2584 = !{!2585}
!2585 = !DISubrange(count: 39)
!2586 = !DIGlobalVariableExpression(var: !2587, expr: !DIExpression())
!2587 = distinct !DIGlobalVariable(name: "acpi_idle_driver", scope: !2, file: !3, line: 52, type: !2588, isLocal: false, isDefinition: true)
!2588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_driver", file: !110, line: 122, size: 8704, elements: !2589)
!2589 = !{!2590, !2591, !2592, !2593, !2615, !2616, !2617, !2619}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2588, file: !110, line: 123, baseType: !367, size: 64)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2588, file: !110, line: 124, baseType: !1905, size: 64, offset: 64)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "bctimer", scope: !2588, file: !110, line: 127, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2588, file: !110, line: 129, baseType: !2594, size: 8320, offset: 192)
!2594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2595, size: 8320, elements: !144)
!2595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_state", file: !110, line: 48, size: 832, elements: !2596)
!2596 = !{!2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2610, !2614}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2595, file: !110, line: 49, baseType: !1026, size: 128)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2595, file: !110, line: 50, baseType: !218, size: 256, offset: 128)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "exit_latency_ns", scope: !2595, file: !110, line: 52, baseType: !127, size: 64, offset: 384)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "target_residency_ns", scope: !2595, file: !110, line: 53, baseType: !127, size: 64, offset: 448)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2595, file: !110, line: 54, baseType: !7, size: 32, offset: 512)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "exit_latency", scope: !2595, file: !110, line: 55, baseType: !7, size: 32, offset: 544)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "power_usage", scope: !2595, file: !110, line: 56, baseType: !125, size: 32, offset: 576)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "target_residency", scope: !2595, file: !110, line: 57, baseType: !7, size: 32, offset: 608)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "enter", scope: !2595, file: !110, line: 59, baseType: !2606, size: 64, offset: 640)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = !DISubroutineType(types: !2608)
!2608 = !{!125, !108, !2609, !125}
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "enter_dead", scope: !2595, file: !110, line: 63, baseType: !2611, size: 64, offset: 704)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = !DISubroutineType(types: !2613)
!2613 = !{!125, !108, !125}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "enter_s2idle", scope: !2595, file: !110, line: 73, baseType: !2606, size: 64, offset: 768)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !2588, file: !110, line: 130, baseType: !125, size: 32, offset: 8512)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "safe_state_index", scope: !2588, file: !110, line: 131, baseType: !125, size: 32, offset: 8544)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2588, file: !110, line: 134, baseType: !2618, size: 64, offset: 8576)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "governor", scope: !2588, file: !110, line: 137, baseType: !367, size: 64, offset: 8640)
!2620 = !DIGlobalVariableExpression(var: !2621, expr: !DIExpression())
!2621 = distinct !DIGlobalVariable(name: "nocst", scope: !2, file: !3, line: 42, type: !7, isLocal: true, isDefinition: true)
!2622 = !DIGlobalVariableExpression(var: !2623, expr: !DIExpression())
!2623 = distinct !DIGlobalVariable(name: "bm_check_disable", scope: !2, file: !3, line: 44, type: !125, isLocal: true, isDefinition: true)
!2624 = !DIGlobalVariableExpression(var: !2625, expr: !DIExpression())
!2625 = distinct !DIGlobalVariable(name: "acpi_cpuidle_device", scope: !2, file: !3, line: 50, type: !108, isLocal: true, isDefinition: true)
!2626 = !DIGlobalVariableExpression(var: !2627, expr: !DIExpression())
!2627 = distinct !DIGlobalVariable(name: "acpi_processor_registered", scope: !2, file: !3, line: 1299, type: !125, isLocal: true, isDefinition: true)
!2628 = !DIGlobalVariableExpression(var: !2629, expr: !DIExpression())
!2629 = distinct !DIGlobalVariable(name: "max_cstate", scope: !2, file: !3, line: 40, type: !7, isLocal: true, isDefinition: true)
!2630 = !DIGlobalVariableExpression(var: !2631, expr: !DIExpression())
!2631 = distinct !DIGlobalVariable(name: "__param_str_nocst", scope: !2, file: !3, line: 43, type: !2632, isLocal: true, isDefinition: true)
!2632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 128, elements: !337)
!2633 = !DIGlobalVariableExpression(var: !2634, expr: !DIExpression())
!2634 = distinct !DIGlobalVariable(name: "__param_str_bm_check_disable", scope: !2, file: !3, line: 45, type: !2635, isLocal: true, isDefinition: true)
!2635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 216, elements: !2636)
!2636 = !{!2637}
!2637 = !DISubrange(count: 27)
!2638 = !DIGlobalVariableExpression(var: !2639, expr: !DIExpression())
!2639 = distinct !DIGlobalVariable(name: "__param_str_latency_factor", scope: !2, file: !3, line: 48, type: !2640, isLocal: true, isDefinition: true)
!2640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 200, elements: !2641)
!2641 = !{!2642}
!2642 = !DISubrange(count: 25)
!2643 = !DIGlobalVariableExpression(var: !2644, expr: !DIExpression())
!2644 = distinct !DIGlobalVariable(name: "latency_factor", scope: !2, file: !3, line: 47, type: !7, isLocal: true, isDefinition: true)
!2645 = !DIGlobalVariableExpression(var: !2646, expr: !DIExpression())
!2646 = distinct !DIGlobalVariable(name: "flat_state_cnt", scope: !2, file: !3, line: 949, type: !125, isLocal: true, isDefinition: true)
!2647 = !DIGlobalVariableExpression(var: !2648, expr: !DIExpression())
!2648 = distinct !DIGlobalVariable(name: "bm_check_flag", scope: !2649, file: !3, line: 313, type: !125, isLocal: true, isDefinition: true)
!2649 = distinct !DISubprogram(name: "acpi_processor_power_verify_c3", scope: !3, file: !3, line: 310, type: !2650, scopeLine: 312, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!2650 = !DISubroutineType(types: !2651)
!2651 = !{null, !165, !2504}
!2652 = !DIGlobalVariableExpression(var: !2653, expr: !DIExpression())
!2653 = distinct !DIGlobalVariable(name: "bm_control_flag", scope: !2649, file: !3, line: 314, type: !125, isLocal: true, isDefinition: true)
!2654 = !DIGlobalVariableExpression(var: !2655, expr: !DIExpression())
!2655 = distinct !DIGlobalVariable(name: "acpi_cstate", scope: !2, file: !3, line: 59, type: !2656, isLocal: true, isDefinition: true)
!2656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2504, size: 640, elements: !144)
!2657 = !DIGlobalVariableExpression(var: !2658, expr: !DIExpression())
!2658 = distinct !DIGlobalVariable(name: "safe_cx", scope: !2659, file: !3, line: 572, type: !208, isLocal: true, isDefinition: true)
!2659 = distinct !DISubprogram(name: "acpi_idle_enter_bm", scope: !3, file: !3, line: 567, type: !2660, scopeLine: 571, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{!125, !2609, !165, !2504, !125}
!2662 = !DIGlobalVariableExpression(var: !2663, expr: !DIExpression())
!2663 = distinct !DIGlobalVariable(name: "c3_lock", scope: !2, file: !3, line: 558, type: !575, isLocal: true, isDefinition: true)
!2664 = !DIGlobalVariableExpression(var: !2665, expr: !DIExpression())
!2665 = distinct !DIGlobalVariable(name: "c3_cpu_count", scope: !2, file: !3, line: 557, type: !125, isLocal: true, isDefinition: true)
!2666 = !DIGlobalVariableExpression(var: !2667, expr: !DIExpression())
!2667 = distinct !DIGlobalVariable(name: "first_run", scope: !2668, file: !3, line: 781, type: !125, isLocal: true, isDefinition: true)
!2668 = distinct !DISubprogram(name: "acpi_processor_cstate_first_run_checks", scope: !3, file: !3, line: 779, type: !2669, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!2669 = !DISubroutineType(types: !2670)
!2670 = !{null}
!2671 = !DIGlobalVariableExpression(var: !2672, expr: !DIExpression())
!2672 = distinct !DIGlobalVariable(name: "processor_power_dmi_table", scope: !2, file: !3, line: 87, type: !2673, isLocal: true, isDefinition: true)
!2673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2674, size: 11008, elements: !609)
!2674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2675)
!2675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_system_id", file: !1915, line: 566, size: 2752, elements: !2676)
!2676 = !{!2677, !2682, !2683, !2693}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !2675, file: !1915, line: 567, baseType: !2678, size: 64)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!125, !2681}
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !2675, file: !1915, line: 568, baseType: !367, size: 64, offset: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "matches", scope: !2675, file: !1915, line: 569, baseType: !2684, size: 2560, offset: 128)
!2684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2685, size: 2560, elements: !609)
!2685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_strmatch", file: !1915, line: 560, size: 640, elements: !2686)
!2686 = !{!2687, !2688, !2689}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !2685, file: !1915, line: 561, baseType: !188, size: 7, flags: DIFlagBitField, extraData: i64 0)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "exact_match", scope: !2685, file: !1915, line: 562, baseType: !188, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "substr", scope: !2685, file: !1915, line: 563, baseType: !2690, size: 632, offset: 8)
!2690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 632, elements: !2691)
!2691 = !{!2692}
!2692 = !DISubrange(count: 79)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2675, file: !1915, line: 570, baseType: !163, size: 64, offset: 2688)
!2694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 168, elements: !2695)
!2695 = !{!2696}
!2696 = !DISubrange(count: 21)
!2697 = !{!"rsp"}
!2698 = !{i32 7, !"Dwarf Version", i32 4}
!2699 = !{i32 2, !"Debug Info Version", i32 3}
!2700 = !{i32 1, !"wchar_size", i32 2}
!2701 = !{i32 1, !"Code Model", i32 2}
!2702 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2703 = distinct !DISubprogram(name: "acpi_processor_ffh_lpi_probe", scope: !3, file: !3, line: 1097, type: !2704, scopeLine: 1098, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !392)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!125, !7}
!2706 = !DILocalVariable(name: "cpu", arg: 1, scope: !2703, file: !3, line: 1097, type: !7)
!2707 = !DILocation(line: 1097, column: 54, scope: !2703)
!2708 = !DILocation(line: 1099, column: 2, scope: !2703)
!2709 = distinct !DISubprogram(name: "acpi_processor_ffh_lpi_enter", scope: !3, file: !3, line: 1102, type: !2710, scopeLine: 1103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !392)
!2710 = !DISubroutineType(types: !2711)
!2711 = !{!125, !2712}
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!2713 = !DILocalVariable(name: "lpi", arg: 1, scope: !2709, file: !3, line: 1102, type: !2712)
!2714 = !DILocation(line: 1102, column: 64, scope: !2709)
!2715 = !DILocation(line: 1104, column: 2, scope: !2709)
!2716 = distinct !DISubprogram(name: "acpi_processor_hotplug", scope: !3, file: !3, line: 1219, type: !318, scopeLine: 1220, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !392)
!2717 = !DILocalVariable(name: "pr", arg: 1, scope: !2716, file: !3, line: 1219, type: !165)
!2718 = !DILocation(line: 1219, column: 51, scope: !2716)
!2719 = !DILocalVariable(name: "ret", scope: !2716, file: !3, line: 1221, type: !125)
!2720 = !DILocation(line: 1221, column: 6, scope: !2716)
!2721 = !DILocalVariable(name: "dev", scope: !2716, file: !3, line: 1222, type: !108)
!2722 = !DILocation(line: 1222, column: 25, scope: !2716)
!2723 = !DILocation(line: 1224, column: 6, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2716, file: !3, line: 1224, column: 6)
!2725 = !DILocation(line: 1224, column: 6, scope: !2716)
!2726 = !DILocation(line: 1225, column: 3, scope: !2724)
!2727 = !DILocation(line: 1227, column: 7, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2716, file: !3, line: 1227, column: 6)
!2729 = !DILocation(line: 1227, column: 11, scope: !2728)
!2730 = !DILocation(line: 1227, column: 17, scope: !2728)
!2731 = !DILocation(line: 1227, column: 6, scope: !2716)
!2732 = !DILocation(line: 1228, column: 3, scope: !2728)
!2733 = !DILocation(line: 1230, column: 8, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2716, file: !3, line: 1230, column: 8)
!2735 = !DILocation(line: 1230, column: 8, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2734, file: !3, line: 1230, column: 8)
!2737 = !DILocalVariable(name: "__vpp_verify", scope: !2738, file: !3, line: 1230, type: !1363)
!2738 = distinct !DILexicalBlock(scope: !2736, file: !3, line: 1230, column: 8)
!2739 = !DILocation(line: 1230, column: 8, scope: !2738)
!2740 = !DILocation(line: 1230, column: 8, scope: !2716)
!2741 = !DILocation(line: 1230, column: 6, scope: !2716)
!2742 = !DILocation(line: 1231, column: 2, scope: !2716)
!2743 = !DILocation(line: 1232, column: 25, scope: !2716)
!2744 = !DILocation(line: 1232, column: 2, scope: !2716)
!2745 = !DILocation(line: 1233, column: 38, scope: !2716)
!2746 = !DILocation(line: 1233, column: 8, scope: !2716)
!2747 = !DILocation(line: 1233, column: 6, scope: !2716)
!2748 = !DILocation(line: 1234, column: 7, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2716, file: !3, line: 1234, column: 6)
!2750 = !DILocation(line: 1234, column: 11, scope: !2749)
!2751 = !DILocation(line: 1234, column: 14, scope: !2749)
!2752 = !DILocation(line: 1234, column: 18, scope: !2749)
!2753 = !DILocation(line: 1234, column: 24, scope: !2749)
!2754 = !DILocation(line: 1234, column: 6, scope: !2716)
!2755 = !DILocation(line: 1235, column: 36, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2749, file: !3, line: 1234, column: 31)
!2757 = !DILocation(line: 1235, column: 40, scope: !2756)
!2758 = !DILocation(line: 1235, column: 3, scope: !2756)
!2759 = !DILocation(line: 1236, column: 31, scope: !2756)
!2760 = !DILocation(line: 1236, column: 9, scope: !2756)
!2761 = !DILocation(line: 1236, column: 7, scope: !2756)
!2762 = !DILocation(line: 1237, column: 2, scope: !2756)
!2763 = !DILocation(line: 1238, column: 2, scope: !2716)
!2764 = !DILocation(line: 1240, column: 9, scope: !2716)
!2765 = !DILocation(line: 1240, column: 2, scope: !2716)
!2766 = !DILocation(line: 1241, column: 1, scope: !2716)
!2767 = distinct !DISubprogram(name: "disabled_by_idle_boot_param", scope: !3, file: !3, line: 61, type: !2768, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{!125}
!2770 = !DILocation(line: 63, column: 9, scope: !2767)
!2771 = !DILocation(line: 63, column: 35, scope: !2767)
!2772 = !DILocation(line: 63, column: 48, scope: !2767)
!2773 = !DILocation(line: 64, column: 3, scope: !2767)
!2774 = !DILocation(line: 64, column: 29, scope: !2767)
!2775 = !DILocation(line: 63, column: 2, scope: !2767)
!2776 = distinct !DISubprogram(name: "acpi_processor_get_power_info", scope: !3, file: !3, line: 1208, type: !318, scopeLine: 1209, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!2777 = !DILocalVariable(name: "pr", arg: 1, scope: !2776, file: !3, line: 1208, type: !165)
!2778 = !DILocation(line: 1208, column: 65, scope: !2776)
!2779 = !DILocalVariable(name: "ret", scope: !2776, file: !3, line: 1210, type: !125)
!2780 = !DILocation(line: 1210, column: 6, scope: !2776)
!2781 = !DILocation(line: 1212, column: 36, scope: !2776)
!2782 = !DILocation(line: 1212, column: 8, scope: !2776)
!2783 = !DILocation(line: 1212, column: 6, scope: !2776)
!2784 = !DILocation(line: 1213, column: 6, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2776, file: !3, line: 1213, column: 6)
!2786 = !DILocation(line: 1213, column: 6, scope: !2776)
!2787 = !DILocation(line: 1214, column: 40, scope: !2785)
!2788 = !DILocation(line: 1214, column: 9, scope: !2785)
!2789 = !DILocation(line: 1214, column: 7, scope: !2785)
!2790 = !DILocation(line: 1214, column: 3, scope: !2785)
!2791 = !DILocation(line: 1216, column: 9, scope: !2776)
!2792 = !DILocation(line: 1216, column: 2, scope: !2776)
!2793 = distinct !DISubprogram(name: "acpi_processor_setup_cpuidle_dev", scope: !3, file: !3, line: 1195, type: !2794, scopeLine: 1197, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{!125, !165, !108}
!2796 = !DILocalVariable(name: "pr", arg: 1, scope: !2793, file: !3, line: 1195, type: !165)
!2797 = !DILocation(line: 1195, column: 68, scope: !2793)
!2798 = !DILocalVariable(name: "dev", arg: 2, scope: !2793, file: !3, line: 1196, type: !108)
!2799 = !DILocation(line: 1196, column: 33, scope: !2793)
!2800 = !DILocation(line: 1198, column: 7, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2793, file: !3, line: 1198, column: 6)
!2802 = !DILocation(line: 1198, column: 11, scope: !2801)
!2803 = !DILocation(line: 1198, column: 17, scope: !2801)
!2804 = !DILocation(line: 1198, column: 34, scope: !2801)
!2805 = !DILocation(line: 1198, column: 38, scope: !2801)
!2806 = !DILocation(line: 1198, column: 42, scope: !2801)
!2807 = !DILocation(line: 1198, column: 48, scope: !2801)
!2808 = !DILocation(line: 1198, column: 54, scope: !2801)
!2809 = !DILocation(line: 1198, column: 58, scope: !2801)
!2810 = !DILocation(line: 1198, column: 6, scope: !2793)
!2811 = !DILocation(line: 1199, column: 3, scope: !2801)
!2812 = !DILocation(line: 1201, column: 13, scope: !2793)
!2813 = !DILocation(line: 1201, column: 17, scope: !2793)
!2814 = !DILocation(line: 1201, column: 2, scope: !2793)
!2815 = !DILocation(line: 1201, column: 7, scope: !2793)
!2816 = !DILocation(line: 1201, column: 11, scope: !2793)
!2817 = !DILocation(line: 1202, column: 6, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2793, file: !3, line: 1202, column: 6)
!2819 = !DILocation(line: 1202, column: 10, scope: !2818)
!2820 = !DILocation(line: 1202, column: 16, scope: !2818)
!2821 = !DILocation(line: 1202, column: 6, scope: !2793)
!2822 = !DILocation(line: 1203, column: 39, scope: !2818)
!2823 = !DILocation(line: 1203, column: 43, scope: !2818)
!2824 = !DILocation(line: 1203, column: 10, scope: !2818)
!2825 = !DILocation(line: 1203, column: 3, scope: !2818)
!2826 = !DILocation(line: 1205, column: 41, scope: !2793)
!2827 = !DILocation(line: 1205, column: 45, scope: !2793)
!2828 = !DILocation(line: 1205, column: 9, scope: !2793)
!2829 = !DILocation(line: 1205, column: 2, scope: !2793)
!2830 = !DILocation(line: 1206, column: 1, scope: !2793)
!2831 = distinct !DISubprogram(name: "acpi_processor_power_state_has_changed", scope: !3, file: !3, line: 1243, type: !318, scopeLine: 1244, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !392)
!2832 = !DILocalVariable(name: "pr", arg: 1, scope: !2831, file: !3, line: 1243, type: !165)
!2833 = !DILocation(line: 1243, column: 67, scope: !2831)
!2834 = !DILocalVariable(name: "cpu", scope: !2831, file: !3, line: 1245, type: !125)
!2835 = !DILocation(line: 1245, column: 6, scope: !2831)
!2836 = !DILocalVariable(name: "_pr", scope: !2831, file: !3, line: 1246, type: !165)
!2837 = !DILocation(line: 1246, column: 25, scope: !2831)
!2838 = !DILocalVariable(name: "dev", scope: !2831, file: !3, line: 1247, type: !108)
!2839 = !DILocation(line: 1247, column: 25, scope: !2831)
!2840 = !DILocation(line: 1249, column: 6, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2831, file: !3, line: 1249, column: 6)
!2842 = !DILocation(line: 1249, column: 6, scope: !2831)
!2843 = !DILocation(line: 1250, column: 3, scope: !2841)
!2844 = !DILocation(line: 1252, column: 7, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2831, file: !3, line: 1252, column: 6)
!2846 = !DILocation(line: 1252, column: 11, scope: !2845)
!2847 = !DILocation(line: 1252, column: 17, scope: !2845)
!2848 = !DILocation(line: 1252, column: 6, scope: !2831)
!2849 = !DILocation(line: 1253, column: 3, scope: !2845)
!2850 = !DILocation(line: 1261, column: 6, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2831, file: !3, line: 1261, column: 6)
!2852 = !DILocation(line: 1261, column: 10, scope: !2851)
!2853 = !DILocation(line: 1261, column: 13, scope: !2851)
!2854 = !DILocation(line: 1261, column: 18, scope: !2851)
!2855 = !DILocation(line: 1261, column: 21, scope: !2851)
!2856 = !DILocation(line: 1261, column: 42, scope: !2851)
!2857 = !DILocation(line: 1261, column: 6, scope: !2831)
!2858 = !DILocation(line: 1264, column: 3, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2851, file: !3, line: 1261, column: 64)
!2860 = !DILocation(line: 1265, column: 3, scope: !2859)
!2861 = !DILocation(line: 1268, column: 3, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2859, file: !3, line: 1268, column: 3)
!2863 = !DILocation(line: 1268, column: 3, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2862, file: !3, line: 1268, column: 3)
!2865 = !DILocation(line: 1269, column: 10, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2867, file: !3, line: 1269, column: 10)
!2867 = distinct !DILexicalBlock(scope: !2864, file: !3, line: 1268, column: 28)
!2868 = !DILocation(line: 1269, column: 10, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2866, file: !3, line: 1269, column: 10)
!2870 = !DILocalVariable(name: "__vpp_verify", scope: !2871, file: !3, line: 1269, type: !1363)
!2871 = distinct !DILexicalBlock(scope: !2869, file: !3, line: 1269, column: 10)
!2872 = !DILocation(line: 1269, column: 10, scope: !2871)
!2873 = !DILocation(line: 1269, column: 10, scope: !2867)
!2874 = !DILocation(line: 1269, column: 8, scope: !2867)
!2875 = !DILocation(line: 1270, column: 9, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2867, file: !3, line: 1270, column: 8)
!2877 = !DILocation(line: 1270, column: 13, scope: !2876)
!2878 = !DILocation(line: 1270, column: 17, scope: !2876)
!2879 = !DILocation(line: 1270, column: 22, scope: !2876)
!2880 = !DILocation(line: 1270, column: 28, scope: !2876)
!2881 = !DILocation(line: 1270, column: 8, scope: !2867)
!2882 = !DILocation(line: 1271, column: 5, scope: !2876)
!2883 = !DILocation(line: 1272, column: 10, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2867, file: !3, line: 1272, column: 10)
!2885 = !DILocation(line: 1272, column: 10, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2884, file: !3, line: 1272, column: 10)
!2887 = !DILocalVariable(name: "__vpp_verify", scope: !2888, file: !3, line: 1272, type: !1363)
!2888 = distinct !DILexicalBlock(scope: !2886, file: !3, line: 1272, column: 10)
!2889 = !DILocation(line: 1272, column: 10, scope: !2888)
!2890 = !DILocation(line: 1272, column: 10, scope: !2867)
!2891 = !DILocation(line: 1272, column: 8, scope: !2867)
!2892 = !DILocation(line: 1273, column: 27, scope: !2867)
!2893 = !DILocation(line: 1273, column: 4, scope: !2867)
!2894 = !DILocation(line: 1274, column: 3, scope: !2867)
!2895 = distinct !{!2895, !2861, !2896}
!2896 = !DILocation(line: 1274, column: 3, scope: !2862)
!2897 = !DILocation(line: 1277, column: 33, scope: !2859)
!2898 = !DILocation(line: 1277, column: 3, scope: !2859)
!2899 = !DILocation(line: 1278, column: 39, scope: !2859)
!2900 = !DILocation(line: 1278, column: 3, scope: !2859)
!2901 = !DILocation(line: 1281, column: 3, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2859, file: !3, line: 1281, column: 3)
!2903 = !DILocation(line: 1281, column: 3, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2902, file: !3, line: 1281, column: 3)
!2905 = !DILocation(line: 1282, column: 10, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2907, file: !3, line: 1282, column: 10)
!2907 = distinct !DILexicalBlock(scope: !2904, file: !3, line: 1281, column: 28)
!2908 = !DILocation(line: 1282, column: 10, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2906, file: !3, line: 1282, column: 10)
!2910 = !DILocalVariable(name: "__vpp_verify", scope: !2911, file: !3, line: 1282, type: !1363)
!2911 = distinct !DILexicalBlock(scope: !2909, file: !3, line: 1282, column: 10)
!2912 = !DILocation(line: 1282, column: 10, scope: !2911)
!2913 = !DILocation(line: 1282, column: 10, scope: !2907)
!2914 = !DILocation(line: 1282, column: 8, scope: !2907)
!2915 = !DILocation(line: 1283, column: 9, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2907, file: !3, line: 1283, column: 8)
!2917 = !DILocation(line: 1283, column: 13, scope: !2916)
!2918 = !DILocation(line: 1283, column: 17, scope: !2916)
!2919 = !DILocation(line: 1283, column: 22, scope: !2916)
!2920 = !DILocation(line: 1283, column: 28, scope: !2916)
!2921 = !DILocation(line: 1283, column: 8, scope: !2907)
!2922 = !DILocation(line: 1284, column: 5, scope: !2916)
!2923 = !DILocation(line: 1285, column: 34, scope: !2907)
!2924 = !DILocation(line: 1285, column: 4, scope: !2907)
!2925 = !DILocation(line: 1286, column: 8, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2907, file: !3, line: 1286, column: 8)
!2927 = !DILocation(line: 1286, column: 13, scope: !2926)
!2928 = !DILocation(line: 1286, column: 19, scope: !2926)
!2929 = !DILocation(line: 1286, column: 8, scope: !2907)
!2930 = !DILocation(line: 1287, column: 11, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2932, file: !3, line: 1287, column: 11)
!2932 = distinct !DILexicalBlock(scope: !2926, file: !3, line: 1286, column: 26)
!2933 = !DILocation(line: 1287, column: 11, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2931, file: !3, line: 1287, column: 11)
!2935 = !DILocalVariable(name: "__vpp_verify", scope: !2936, file: !3, line: 1287, type: !1363)
!2936 = distinct !DILexicalBlock(scope: !2934, file: !3, line: 1287, column: 11)
!2937 = !DILocation(line: 1287, column: 11, scope: !2936)
!2938 = !DILocation(line: 1287, column: 11, scope: !2932)
!2939 = !DILocation(line: 1287, column: 9, scope: !2932)
!2940 = !DILocation(line: 1288, column: 38, scope: !2932)
!2941 = !DILocation(line: 1288, column: 43, scope: !2932)
!2942 = !DILocation(line: 1288, column: 5, scope: !2932)
!2943 = !DILocation(line: 1289, column: 27, scope: !2932)
!2944 = !DILocation(line: 1289, column: 5, scope: !2932)
!2945 = !DILocation(line: 1290, column: 4, scope: !2932)
!2946 = !DILocation(line: 1291, column: 3, scope: !2907)
!2947 = distinct !{!2947, !2901, !2948}
!2948 = !DILocation(line: 1291, column: 3, scope: !2902)
!2949 = !DILocation(line: 1292, column: 3, scope: !2859)
!2950 = !DILocation(line: 1293, column: 3, scope: !2859)
!2951 = !DILocation(line: 1294, column: 2, scope: !2859)
!2952 = !DILocation(line: 1296, column: 2, scope: !2831)
!2953 = !DILocation(line: 1297, column: 1, scope: !2831)
!2954 = distinct !DISubprogram(name: "get_online_cpus", scope: !2955, file: !2955, line: 144, type: !2669, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!2955 = !DIFile(filename: "./include/linux/cpu.h", directory: "/home/lizy2001/genbc/linux")
!2956 = !DILocation(line: 144, column: 44, scope: !2954)
!2957 = !DILocation(line: 144, column: 62, scope: !2954)
!2958 = distinct !DISubprogram(name: "acpi_processor_setup_cpuidle_states", scope: !3, file: !3, line: 1168, type: !318, scopeLine: 1169, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!2959 = !DILocalVariable(name: "pr", arg: 1, scope: !2958, file: !3, line: 1168, type: !165)
!2960 = !DILocation(line: 1168, column: 71, scope: !2958)
!2961 = !DILocalVariable(name: "i", scope: !2958, file: !3, line: 1170, type: !125)
!2962 = !DILocation(line: 1170, column: 6, scope: !2958)
!2963 = !DILocalVariable(name: "drv", scope: !2958, file: !3, line: 1171, type: !2609)
!2964 = !DILocation(line: 1171, column: 25, scope: !2958)
!2965 = !DILocation(line: 1173, column: 7, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2958, file: !3, line: 1173, column: 6)
!2967 = !DILocation(line: 1173, column: 11, scope: !2966)
!2968 = !DILocation(line: 1173, column: 17, scope: !2966)
!2969 = !DILocation(line: 1173, column: 34, scope: !2966)
!2970 = !DILocation(line: 1173, column: 38, scope: !2966)
!2971 = !DILocation(line: 1173, column: 42, scope: !2966)
!2972 = !DILocation(line: 1173, column: 48, scope: !2966)
!2973 = !DILocation(line: 1173, column: 6, scope: !2958)
!2974 = !DILocation(line: 1174, column: 3, scope: !2966)
!2975 = !DILocation(line: 1176, column: 2, scope: !2958)
!2976 = !DILocation(line: 1176, column: 7, scope: !2958)
!2977 = !DILocation(line: 1176, column: 24, scope: !2958)
!2978 = !DILocation(line: 1177, column: 9, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2958, file: !3, line: 1177, column: 2)
!2980 = !DILocation(line: 1177, column: 7, scope: !2979)
!2981 = !DILocation(line: 1177, column: 34, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2979, file: !3, line: 1177, column: 2)
!2983 = !DILocation(line: 1177, column: 36, scope: !2982)
!2984 = !DILocation(line: 1177, column: 2, scope: !2979)
!2985 = !DILocation(line: 1178, column: 3, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2982, file: !3, line: 1177, column: 62)
!2987 = !DILocation(line: 1178, column: 8, scope: !2986)
!2988 = !DILocation(line: 1178, column: 15, scope: !2986)
!2989 = !DILocation(line: 1178, column: 18, scope: !2986)
!2990 = !DILocation(line: 1178, column: 26, scope: !2986)
!2991 = !DILocation(line: 1179, column: 3, scope: !2986)
!2992 = !DILocation(line: 1179, column: 8, scope: !2986)
!2993 = !DILocation(line: 1179, column: 15, scope: !2986)
!2994 = !DILocation(line: 1179, column: 18, scope: !2986)
!2995 = !DILocation(line: 1179, column: 26, scope: !2986)
!2996 = !DILocation(line: 1180, column: 2, scope: !2986)
!2997 = !DILocation(line: 1177, column: 58, scope: !2982)
!2998 = !DILocation(line: 1177, column: 2, scope: !2982)
!2999 = distinct !{!2999, !2984, !3000}
!3000 = !DILocation(line: 1180, column: 2, scope: !2979)
!3001 = !DILocation(line: 1182, column: 6, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2958, file: !3, line: 1182, column: 6)
!3003 = !DILocation(line: 1182, column: 10, scope: !3002)
!3004 = !DILocation(line: 1182, column: 16, scope: !3002)
!3005 = !DILocation(line: 1182, column: 6, scope: !2958)
!3006 = !DILocation(line: 1183, column: 42, scope: !3002)
!3007 = !DILocation(line: 1183, column: 10, scope: !3002)
!3008 = !DILocation(line: 1183, column: 3, scope: !3002)
!3009 = !DILocation(line: 1185, column: 38, scope: !2958)
!3010 = !DILocation(line: 1185, column: 9, scope: !2958)
!3011 = !DILocation(line: 1185, column: 2, scope: !2958)
!3012 = !DILocation(line: 1186, column: 1, scope: !2958)
!3013 = distinct !DISubprogram(name: "put_online_cpus", scope: !2955, file: !2955, line: 145, type: !2669, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!3014 = !DILocation(line: 145, column: 44, scope: !3013)
!3015 = !DILocation(line: 145, column: 64, scope: !3013)
!3016 = distinct !DISubprogram(name: "acpi_processor_power_init", scope: !3, file: !3, line: 1301, type: !318, scopeLine: 1302, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !392)
!3017 = !DILocalVariable(name: "pr", arg: 1, scope: !3016, file: !3, line: 1301, type: !165)
!3018 = !DILocation(line: 1301, column: 54, scope: !3016)
!3019 = !DILocalVariable(name: "retval", scope: !3016, file: !3, line: 1303, type: !125)
!3020 = !DILocation(line: 1303, column: 6, scope: !3016)
!3021 = !DILocalVariable(name: "dev", scope: !3016, file: !3, line: 1304, type: !108)
!3022 = !DILocation(line: 1304, column: 25, scope: !3016)
!3023 = !DILocation(line: 1306, column: 6, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3016, file: !3, line: 1306, column: 6)
!3025 = !DILocation(line: 1306, column: 6, scope: !3016)
!3026 = !DILocation(line: 1307, column: 3, scope: !3024)
!3027 = !DILocation(line: 1309, column: 2, scope: !3016)
!3028 = !DILocation(line: 1311, column: 37, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !3016, file: !3, line: 1311, column: 6)
!3030 = !DILocation(line: 1311, column: 7, scope: !3029)
!3031 = !DILocation(line: 1311, column: 6, scope: !3016)
!3032 = !DILocation(line: 1312, column: 3, scope: !3029)
!3033 = !DILocation(line: 1312, column: 7, scope: !3029)
!3034 = !DILocation(line: 1312, column: 13, scope: !3029)
!3035 = !DILocation(line: 1312, column: 30, scope: !3029)
!3036 = !DILocation(line: 1319, column: 6, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !3016, file: !3, line: 1319, column: 6)
!3038 = !DILocation(line: 1319, column: 10, scope: !3037)
!3039 = !DILocation(line: 1319, column: 16, scope: !3037)
!3040 = !DILocation(line: 1319, column: 6, scope: !3016)
!3041 = !DILocation(line: 1321, column: 8, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3043, file: !3, line: 1321, column: 7)
!3043 = distinct !DILexicalBlock(scope: !3037, file: !3, line: 1319, column: 23)
!3044 = !DILocation(line: 1321, column: 7, scope: !3043)
!3045 = !DILocation(line: 1322, column: 40, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3042, file: !3, line: 1321, column: 35)
!3047 = !DILocation(line: 1322, column: 4, scope: !3046)
!3048 = !DILocation(line: 1323, column: 13, scope: !3046)
!3049 = !DILocation(line: 1323, column: 11, scope: !3046)
!3050 = !DILocation(line: 1324, column: 8, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !3046, file: !3, line: 1324, column: 8)
!3052 = !DILocation(line: 1324, column: 8, scope: !3046)
!3053 = !DILocation(line: 1325, column: 12, scope: !3051)
!3054 = !DILocation(line: 1325, column: 5, scope: !3051)
!3055 = !DILocation(line: 1326, column: 4, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3057, file: !3, line: 1326, column: 4)
!3057 = distinct !DILexicalBlock(scope: !3046, file: !3, line: 1326, column: 4)
!3058 = !DILocation(line: 1326, column: 4, scope: !3057)
!3059 = !DILocation(line: 1328, column: 3, scope: !3046)
!3060 = !DILocation(line: 1330, column: 9, scope: !3043)
!3061 = !DILocation(line: 1330, column: 7, scope: !3043)
!3062 = !DILocation(line: 1331, column: 8, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3043, file: !3, line: 1331, column: 7)
!3064 = !DILocation(line: 1331, column: 7, scope: !3043)
!3065 = !DILocation(line: 1332, column: 4, scope: !3063)
!3066 = !DILocation(line: 1333, column: 42, scope: !3043)
!3067 = !DILocation(line: 1333, column: 3, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3043, file: !3, line: 1333, column: 3)
!3069 = !DILocation(line: 1333, column: 3, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3068, file: !3, line: 1333, column: 3)
!3071 = !DILocalVariable(name: "__vpp_verify", scope: !3072, file: !3, line: 1333, type: !1363)
!3072 = distinct !DILexicalBlock(scope: !3070, file: !3, line: 1333, column: 3)
!3073 = !DILocation(line: 1333, column: 3, scope: !3072)
!3074 = !DILocation(line: 1333, column: 40, scope: !3043)
!3075 = !DILocation(line: 1335, column: 36, scope: !3043)
!3076 = !DILocation(line: 1335, column: 40, scope: !3043)
!3077 = !DILocation(line: 1335, column: 3, scope: !3043)
!3078 = !DILocation(line: 1340, column: 36, scope: !3043)
!3079 = !DILocation(line: 1340, column: 12, scope: !3043)
!3080 = !DILocation(line: 1340, column: 10, scope: !3043)
!3081 = !DILocation(line: 1341, column: 7, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !3043, file: !3, line: 1341, column: 7)
!3083 = !DILocation(line: 1341, column: 7, scope: !3043)
!3084 = !DILocation(line: 1342, column: 8, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3086, file: !3, line: 1342, column: 8)
!3086 = distinct !DILexicalBlock(scope: !3082, file: !3, line: 1341, column: 15)
!3087 = !DILocation(line: 1342, column: 34, scope: !3085)
!3088 = !DILocation(line: 1342, column: 8, scope: !3086)
!3089 = !DILocation(line: 1343, column: 5, scope: !3085)
!3090 = !DILocation(line: 1344, column: 11, scope: !3086)
!3091 = !DILocation(line: 1344, column: 4, scope: !3086)
!3092 = !DILocation(line: 1346, column: 28, scope: !3043)
!3093 = !DILocation(line: 1347, column: 2, scope: !3043)
!3094 = !DILocation(line: 1348, column: 2, scope: !3016)
!3095 = !DILocation(line: 1349, column: 1, scope: !3016)
!3096 = !DILocation(line: 783, column: 6, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !2668, file: !3, line: 783, column: 6)
!3098 = !DILocation(line: 783, column: 6, scope: !2668)
!3099 = !DILocation(line: 784, column: 3, scope: !3097)
!3100 = !DILocation(line: 785, column: 2, scope: !2668)
!3101 = !DILocation(line: 786, column: 43, scope: !2668)
!3102 = !DILocation(line: 786, column: 15, scope: !2668)
!3103 = !DILocation(line: 786, column: 13, scope: !2668)
!3104 = !DILocation(line: 787, column: 6, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !2668, file: !3, line: 787, column: 6)
!3106 = !DILocation(line: 787, column: 17, scope: !3105)
!3107 = !DILocation(line: 787, column: 6, scope: !2668)
!3108 = !DILocation(line: 788, column: 3, scope: !3105)
!3109 = !DILocation(line: 790, column: 11, scope: !2668)
!3110 = !DILocation(line: 792, column: 6, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !2668, file: !3, line: 792, column: 6)
!3112 = !DILocation(line: 792, column: 6, scope: !2668)
!3113 = !DILocation(line: 793, column: 3, scope: !3111)
!3114 = !DILocation(line: 795, column: 2, scope: !2668)
!3115 = !DILocation(line: 796, column: 1, scope: !2668)
!3116 = distinct !DISubprogram(name: "kzalloc", scope: !89, file: !89, line: 662, type: !3117, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{!163, !465, !1699}
!3119 = !DILocalVariable(name: "s", arg: 1, scope: !3120, file: !89, line: 445, type: !1282)
!3120 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !89, file: !89, line: 445, type: !3121, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{!163, !1282, !1699, !465}
!3123 = !DILocation(line: 445, column: 72, scope: !3120, inlinedAt: !3124)
!3124 = distinct !DILocation(line: 552, column: 10, scope: !3125, inlinedAt: !3128)
!3125 = distinct !DILexicalBlock(scope: !3126, file: !89, line: 540, column: 34)
!3126 = distinct !DILexicalBlock(scope: !3127, file: !89, line: 540, column: 6)
!3127 = distinct !DISubprogram(name: "kmalloc", scope: !89, file: !89, line: 538, type: !3117, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!3128 = distinct !DILocation(line: 664, column: 9, scope: !3116)
!3129 = !DILocalVariable(name: "flags", arg: 2, scope: !3120, file: !89, line: 446, type: !1699)
!3130 = !DILocation(line: 446, column: 9, scope: !3120, inlinedAt: !3124)
!3131 = !DILocalVariable(name: "size", arg: 3, scope: !3120, file: !89, line: 446, type: !465)
!3132 = !DILocation(line: 446, column: 23, scope: !3120, inlinedAt: !3124)
!3133 = !DILocalVariable(name: "ret", scope: !3120, file: !89, line: 448, type: !163)
!3134 = !DILocation(line: 448, column: 8, scope: !3120, inlinedAt: !3124)
!3135 = !DILocalVariable(name: "flags", arg: 1, scope: !3136, file: !89, line: 318, type: !1699)
!3136 = distinct !DISubprogram(name: "kmalloc_type", scope: !89, file: !89, line: 318, type: !3137, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!3137 = !DISubroutineType(types: !3138)
!3138 = !{!88, !1699}
!3139 = !DILocation(line: 318, column: 67, scope: !3136, inlinedAt: !3140)
!3140 = distinct !DILocation(line: 553, column: 20, scope: !3125, inlinedAt: !3128)
!3141 = !DILocalVariable(name: "size", arg: 1, scope: !3142, file: !89, line: 346, type: !465)
!3142 = distinct !DISubprogram(name: "kmalloc_index", scope: !89, file: !89, line: 346, type: !3143, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{!7, !465}
!3145 = !DILocation(line: 346, column: 58, scope: !3142, inlinedAt: !3146)
!3146 = distinct !DILocation(line: 547, column: 11, scope: !3125, inlinedAt: !3128)
!3147 = !DILocalVariable(name: "size", arg: 1, scope: !3148, file: !89, line: 472, type: !465)
!3148 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !89, file: !89, line: 472, type: !3149, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{!163, !465, !1699, !7}
!3151 = !DILocation(line: 472, column: 28, scope: !3148, inlinedAt: !3152)
!3152 = distinct !DILocation(line: 481, column: 9, scope: !3153, inlinedAt: !3154)
!3153 = distinct !DISubprogram(name: "kmalloc_large", scope: !89, file: !89, line: 478, type: !3117, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!3154 = distinct !DILocation(line: 545, column: 11, scope: !3155, inlinedAt: !3128)
!3155 = distinct !DILexicalBlock(scope: !3125, file: !89, line: 544, column: 7)
!3156 = !DILocalVariable(name: "flags", arg: 2, scope: !3148, file: !89, line: 472, type: !1699)
!3157 = !DILocation(line: 472, column: 40, scope: !3148, inlinedAt: !3152)
!3158 = !DILocalVariable(name: "order", arg: 3, scope: !3148, file: !89, line: 472, type: !7)
!3159 = !DILocation(line: 472, column: 60, scope: !3148, inlinedAt: !3152)
!3160 = !DILocalVariable(name: "size", arg: 1, scope: !3153, file: !89, line: 478, type: !465)
!3161 = !DILocation(line: 478, column: 51, scope: !3153, inlinedAt: !3154)
!3162 = !DILocalVariable(name: "flags", arg: 2, scope: !3153, file: !89, line: 478, type: !1699)
!3163 = !DILocation(line: 478, column: 63, scope: !3153, inlinedAt: !3154)
!3164 = !DILocalVariable(name: "order", scope: !3153, file: !89, line: 480, type: !7)
!3165 = !DILocation(line: 480, column: 15, scope: !3153, inlinedAt: !3154)
!3166 = !DILocalVariable(name: "size", arg: 1, scope: !3127, file: !89, line: 538, type: !465)
!3167 = !DILocation(line: 538, column: 45, scope: !3127, inlinedAt: !3128)
!3168 = !DILocalVariable(name: "flags", arg: 2, scope: !3127, file: !89, line: 538, type: !1699)
!3169 = !DILocation(line: 538, column: 57, scope: !3127, inlinedAt: !3128)
!3170 = !DILocalVariable(name: "index", scope: !3125, file: !89, line: 542, type: !7)
!3171 = !DILocation(line: 542, column: 16, scope: !3125, inlinedAt: !3128)
!3172 = !DILocalVariable(name: "size", arg: 1, scope: !3116, file: !89, line: 662, type: !465)
!3173 = !DILocation(line: 662, column: 36, scope: !3116)
!3174 = !DILocalVariable(name: "flags", arg: 2, scope: !3116, file: !89, line: 662, type: !1699)
!3175 = !DILocation(line: 662, column: 48, scope: !3116)
!3176 = !DILocation(line: 664, column: 17, scope: !3116)
!3177 = !DILocation(line: 664, column: 23, scope: !3116)
!3178 = !DILocation(line: 664, column: 29, scope: !3116)
!3179 = !DILocation(line: 540, column: 27, scope: !3126, inlinedAt: !3128)
!3180 = !DILocation(line: 540, column: 6, scope: !3126, inlinedAt: !3128)
!3181 = !DILocation(line: 540, column: 6, scope: !3127, inlinedAt: !3128)
!3182 = !DILocation(line: 544, column: 7, scope: !3155, inlinedAt: !3128)
!3183 = !DILocation(line: 544, column: 12, scope: !3155, inlinedAt: !3128)
!3184 = !DILocation(line: 544, column: 7, scope: !3125, inlinedAt: !3128)
!3185 = !DILocation(line: 545, column: 25, scope: !3155, inlinedAt: !3128)
!3186 = !DILocation(line: 545, column: 31, scope: !3155, inlinedAt: !3128)
!3187 = !DILocation(line: 480, column: 33, scope: !3153, inlinedAt: !3154)
!3188 = !DILocation(line: 480, column: 23, scope: !3153, inlinedAt: !3154)
!3189 = !DILocation(line: 481, column: 29, scope: !3153, inlinedAt: !3154)
!3190 = !DILocation(line: 481, column: 35, scope: !3153, inlinedAt: !3154)
!3191 = !DILocation(line: 481, column: 42, scope: !3153, inlinedAt: !3154)
!3192 = !DILocation(line: 474, column: 23, scope: !3148, inlinedAt: !3152)
!3193 = !DILocation(line: 474, column: 29, scope: !3148, inlinedAt: !3152)
!3194 = !DILocation(line: 474, column: 36, scope: !3148, inlinedAt: !3152)
!3195 = !DILocation(line: 474, column: 9, scope: !3148, inlinedAt: !3152)
!3196 = !DILocation(line: 545, column: 4, scope: !3155, inlinedAt: !3128)
!3197 = !DILocation(line: 547, column: 25, scope: !3125, inlinedAt: !3128)
!3198 = !DILocation(line: 348, column: 7, scope: !3199, inlinedAt: !3146)
!3199 = distinct !DILexicalBlock(scope: !3142, file: !89, line: 348, column: 6)
!3200 = !DILocation(line: 348, column: 6, scope: !3142, inlinedAt: !3146)
!3201 = !DILocation(line: 349, column: 3, scope: !3199, inlinedAt: !3146)
!3202 = !DILocation(line: 351, column: 6, scope: !3203, inlinedAt: !3146)
!3203 = distinct !DILexicalBlock(scope: !3142, file: !89, line: 351, column: 6)
!3204 = !DILocation(line: 351, column: 11, scope: !3203, inlinedAt: !3146)
!3205 = !DILocation(line: 351, column: 6, scope: !3142, inlinedAt: !3146)
!3206 = !DILocation(line: 352, column: 3, scope: !3203, inlinedAt: !3146)
!3207 = !DILocation(line: 354, column: 32, scope: !3208, inlinedAt: !3146)
!3208 = distinct !DILexicalBlock(scope: !3142, file: !89, line: 354, column: 6)
!3209 = !DILocation(line: 354, column: 37, scope: !3208, inlinedAt: !3146)
!3210 = !DILocation(line: 354, column: 42, scope: !3208, inlinedAt: !3146)
!3211 = !DILocation(line: 354, column: 45, scope: !3208, inlinedAt: !3146)
!3212 = !DILocation(line: 354, column: 50, scope: !3208, inlinedAt: !3146)
!3213 = !DILocation(line: 354, column: 6, scope: !3142, inlinedAt: !3146)
!3214 = !DILocation(line: 355, column: 3, scope: !3208, inlinedAt: !3146)
!3215 = !DILocation(line: 356, column: 32, scope: !3216, inlinedAt: !3146)
!3216 = distinct !DILexicalBlock(scope: !3142, file: !89, line: 356, column: 6)
!3217 = !DILocation(line: 356, column: 37, scope: !3216, inlinedAt: !3146)
!3218 = !DILocation(line: 356, column: 43, scope: !3216, inlinedAt: !3146)
!3219 = !DILocation(line: 356, column: 46, scope: !3216, inlinedAt: !3146)
!3220 = !DILocation(line: 356, column: 51, scope: !3216, inlinedAt: !3146)
!3221 = !DILocation(line: 356, column: 6, scope: !3142, inlinedAt: !3146)
!3222 = !DILocation(line: 357, column: 3, scope: !3216, inlinedAt: !3146)
!3223 = !DILocation(line: 358, column: 6, scope: !3224, inlinedAt: !3146)
!3224 = distinct !DILexicalBlock(scope: !3142, file: !89, line: 358, column: 6)
!3225 = !DILocation(line: 358, column: 11, scope: !3224, inlinedAt: !3146)
!3226 = !DILocation(line: 358, column: 6, scope: !3142, inlinedAt: !3146)
!3227 = !DILocation(line: 358, column: 26, scope: !3224, inlinedAt: !3146)
!3228 = !DILocation(line: 359, column: 6, scope: !3229, inlinedAt: !3146)
!3229 = distinct !DILexicalBlock(scope: !3142, file: !89, line: 359, column: 6)
!3230 = !DILocation(line: 359, column: 11, scope: !3229, inlinedAt: !3146)
!3231 = !DILocation(line: 359, column: 6, scope: !3142, inlinedAt: !3146)
!3232 = !DILocation(line: 359, column: 26, scope: !3229, inlinedAt: !3146)
!3233 = !DILocation(line: 360, column: 6, scope: !3234, inlinedAt: !3146)
!3234 = distinct !DILexicalBlock(scope: !3142, file: !89, line: 360, column: 6)
!3235 = !DILocation(line: 360, column: 11, scope: !3234, inlinedAt: !3146)
!3236 = !DILocation(line: 360, column: 6, scope: !3142, inlinedAt: !3146)
!3237 = !DILocation(line: 360, column: 26, scope: !3234, inlinedAt: !3146)
!3238 = !DILocation(line: 361, column: 6, scope: !3239, inlinedAt: !3146)
!3239 = distinct !DILexicalBlock(scope: !3142, file: !89, line: 361, column: 6)
!3240 = !DILocation(line: 361, column: 11, scope: !3239, inlinedAt: !3146)
!3241 = !DILocation(line: 361, column: 6, scope: !3142, inlinedAt: !3146)
!3242 = !DILocation(line: 361, column: 26, scope: !3239, inlinedAt: !3146)
!3243 = !DILocation(line: 362, column: 6, scope: !3244, inlinedAt: !3146)
!3244 = distinct !DILexicalBlock(scope: !3142, file: !89, line: 362, column: 6)
!3245 = !DILocation(line: 362, column: 11, scope: !3244, inlinedAt: !3146)
!3246 = !DILocation(line: 362, column: 6, scope: !3142, inlinedAt: !3146)
!3247 = !DILocation(line: 362, column: 26, scope: !3244, inlinedAt: !3146)
!3248 = !DILocation(line: 363, column: 6, scope: !3249, inlinedAt: !3146)
!3249 = distinct !DILexicalBlock(scope: !3142, file: !89, line: 363, column: 6)
!3250 = !DILocation(line: 363, column: 11, scope: !3249, inlinedAt: !3146)
!3251 = !DILocation(line: 363, column: 6, scope: !3142, inlinedAt: !3146)
!3252 = !DILocation(line: 363, column: 26, scope: !3249, inlinedAt: !3146)
!3253 = !DILocation(line: 364, column: 6, scope: !3254, inlinedAt: !3146)
!3254 = distinct !DILexicalBlock(scope: !3142, file: !89, line: 364, column: 6)
!3255 = !DILocation(line: 364, column: 11, scope: !3254, inlinedAt: !3146)
!3256 = !DILocation(line: 364, column: 6, scope: !3142, inlinedAt: !3146)
!3257 = !DILocation(line: 364, column: 26, scope: !3254, inlinedAt: !3146)
!3258 = !DILocation(line: 365, column: 6, scope: !3259, inlinedAt: !3146)
!3259 = distinct !DILexicalBlock(scope: !3142, file: !89, line: 365, column: 6)
!3260 = !DILocation(line: 365, column: 11, scope: !3259, inlinedAt: !3146)
!3261 = !DILocation(line: 365, column: 6, scope: !3142, inlinedAt: !3146)
!3262 = !DILocation(line: 365, column: 26, scope: !3259, inlinedAt: !3146)
!3263 = !DILocation(line: 366, column: 6, scope: !3264, inlinedAt: !3146)
!3264 = distinct !DILexicalBlock(scope: !3142, file: !89, line: 366, column: 6)
!3265 = !DILocation(line: 366, column: 11, scope: !3264, inlinedAt: !3146)
!3266 = !DILocation(line: 366, column: 6, scope: !3142, inlinedAt: !3146)
!3267 = !DILocation(line: 366, column: 26, scope: !3264, inlinedAt: !3146)
!3268 = !DILocation(line: 367, column: 6, scope: !3269, inlinedAt: !3146)
!3269 = distinct !DILexicalBlock(scope: !3142, file: !89, line: 367, column: 6)
!3270 = !DILocation(line: 367, column: 11, scope: !3269, inlinedAt: !3146)
!3271 = !DILocation(line: 367, column: 6, scope: !3142, inlinedAt: !3146)
!3272 = !DILocation(line: 367, column: 26, scope: !3269, inlinedAt: !3146)
!3273 = !DILocation(line: 368, column: 6, scope: !3274, inlinedAt: !3146)
!3274 = distinct !DILexicalBlock(scope: !3142, file: !89, line: 368, column: 6)
!3275 = !DILocation(line: 368, column: 11, scope: !3274, inlinedAt: !3146)
!3276 = !DILocation(line: 368, column: 6, scope: !3142, inlinedAt: !3146)
!3277 = !DILocation(line: 368, column: 26, scope: !3274, inlinedAt: !3146)
!3278 = !DILocation(line: 369, column: 6, scope: !3279, inlinedAt: !3146)
!3279 = distinct !DILexicalBlock(scope: !3142, file: !89, line: 369, column: 6)
!3280 = !DILocation(line: 369, column: 11, scope: !3279, inlinedAt: !3146)
!3281 = !DILocation(line: 369, column: 6, scope: !3142, inlinedAt: !3146)
!3282 = !DILocation(line: 369, column: 26, scope: !3279, inlinedAt: !3146)
!3283 = !DILocation(line: 370, column: 6, scope: !3284, inlinedAt: !3146)
!3284 = distinct !DILexicalBlock(scope: !3142, file: !89, line: 370, column: 6)
!3285 = !DILocation(line: 370, column: 11, scope: !3284, inlinedAt: !3146)
!3286 = !DILocation(line: 370, column: 6, scope: !3142, inlinedAt: !3146)
!3287 = !DILocation(line: 370, column: 26, scope: !3284, inlinedAt: !3146)
!3288 = !DILocation(line: 371, column: 6, scope: !3289, inlinedAt: !3146)
!3289 = distinct !DILexicalBlock(scope: !3142, file: !89, line: 371, column: 6)
!3290 = !DILocation(line: 371, column: 11, scope: !3289, inlinedAt: !3146)
!3291 = !DILocation(line: 371, column: 6, scope: !3142, inlinedAt: !3146)
!3292 = !DILocation(line: 371, column: 26, scope: !3289, inlinedAt: !3146)
!3293 = !DILocation(line: 372, column: 6, scope: !3294, inlinedAt: !3146)
!3294 = distinct !DILexicalBlock(scope: !3142, file: !89, line: 372, column: 6)
!3295 = !DILocation(line: 372, column: 11, scope: !3294, inlinedAt: !3146)
!3296 = !DILocation(line: 372, column: 6, scope: !3142, inlinedAt: !3146)
!3297 = !DILocation(line: 372, column: 26, scope: !3294, inlinedAt: !3146)
!3298 = !DILocation(line: 373, column: 6, scope: !3299, inlinedAt: !3146)
!3299 = distinct !DILexicalBlock(scope: !3142, file: !89, line: 373, column: 6)
!3300 = !DILocation(line: 373, column: 11, scope: !3299, inlinedAt: !3146)
!3301 = !DILocation(line: 373, column: 6, scope: !3142, inlinedAt: !3146)
!3302 = !DILocation(line: 373, column: 26, scope: !3299, inlinedAt: !3146)
!3303 = !DILocation(line: 374, column: 6, scope: !3304, inlinedAt: !3146)
!3304 = distinct !DILexicalBlock(scope: !3142, file: !89, line: 374, column: 6)
!3305 = !DILocation(line: 374, column: 11, scope: !3304, inlinedAt: !3146)
!3306 = !DILocation(line: 374, column: 6, scope: !3142, inlinedAt: !3146)
!3307 = !DILocation(line: 374, column: 26, scope: !3304, inlinedAt: !3146)
!3308 = !DILocation(line: 375, column: 6, scope: !3309, inlinedAt: !3146)
!3309 = distinct !DILexicalBlock(scope: !3142, file: !89, line: 375, column: 6)
!3310 = !DILocation(line: 375, column: 11, scope: !3309, inlinedAt: !3146)
!3311 = !DILocation(line: 375, column: 6, scope: !3142, inlinedAt: !3146)
!3312 = !DILocation(line: 375, column: 27, scope: !3309, inlinedAt: !3146)
!3313 = !DILocation(line: 376, column: 6, scope: !3314, inlinedAt: !3146)
!3314 = distinct !DILexicalBlock(scope: !3142, file: !89, line: 376, column: 6)
!3315 = !DILocation(line: 376, column: 11, scope: !3314, inlinedAt: !3146)
!3316 = !DILocation(line: 376, column: 6, scope: !3142, inlinedAt: !3146)
!3317 = !DILocation(line: 376, column: 32, scope: !3314, inlinedAt: !3146)
!3318 = !DILocation(line: 377, column: 6, scope: !3319, inlinedAt: !3146)
!3319 = distinct !DILexicalBlock(scope: !3142, file: !89, line: 377, column: 6)
!3320 = !DILocation(line: 377, column: 11, scope: !3319, inlinedAt: !3146)
!3321 = !DILocation(line: 377, column: 6, scope: !3142, inlinedAt: !3146)
!3322 = !DILocation(line: 377, column: 32, scope: !3319, inlinedAt: !3146)
!3323 = !DILocation(line: 378, column: 6, scope: !3324, inlinedAt: !3146)
!3324 = distinct !DILexicalBlock(scope: !3142, file: !89, line: 378, column: 6)
!3325 = !DILocation(line: 378, column: 11, scope: !3324, inlinedAt: !3146)
!3326 = !DILocation(line: 378, column: 6, scope: !3142, inlinedAt: !3146)
!3327 = !DILocation(line: 378, column: 32, scope: !3324, inlinedAt: !3146)
!3328 = !DILocation(line: 379, column: 6, scope: !3329, inlinedAt: !3146)
!3329 = distinct !DILexicalBlock(scope: !3142, file: !89, line: 379, column: 6)
!3330 = !DILocation(line: 379, column: 11, scope: !3329, inlinedAt: !3146)
!3331 = !DILocation(line: 379, column: 6, scope: !3142, inlinedAt: !3146)
!3332 = !DILocation(line: 379, column: 33, scope: !3329, inlinedAt: !3146)
!3333 = !DILocation(line: 380, column: 6, scope: !3334, inlinedAt: !3146)
!3334 = distinct !DILexicalBlock(scope: !3142, file: !89, line: 380, column: 6)
!3335 = !DILocation(line: 380, column: 11, scope: !3334, inlinedAt: !3146)
!3336 = !DILocation(line: 380, column: 6, scope: !3142, inlinedAt: !3146)
!3337 = !DILocation(line: 380, column: 33, scope: !3334, inlinedAt: !3146)
!3338 = !DILocation(line: 381, column: 6, scope: !3339, inlinedAt: !3146)
!3339 = distinct !DILexicalBlock(scope: !3142, file: !89, line: 381, column: 6)
!3340 = !DILocation(line: 381, column: 11, scope: !3339, inlinedAt: !3146)
!3341 = !DILocation(line: 381, column: 6, scope: !3142, inlinedAt: !3146)
!3342 = !DILocation(line: 381, column: 33, scope: !3339, inlinedAt: !3146)
!3343 = !DILocation(line: 382, column: 2, scope: !3344, inlinedAt: !3146)
!3344 = distinct !DILexicalBlock(scope: !3345, file: !89, line: 382, column: 2)
!3345 = distinct !DILexicalBlock(scope: !3142, file: !89, line: 382, column: 2)
!3346 = !{i32 -2144022197, i32 -2144022168, i32 -2144022122, i32 -2144022064, i32 -2144022010, i32 -2144021956, i32 -2144021901, i32 -2144021870}
!3347 = !DILocation(line: 382, column: 2, scope: !3348, inlinedAt: !3146)
!3348 = distinct !DILexicalBlock(scope: !3349, file: !89, line: 382, column: 2)
!3349 = distinct !DILexicalBlock(scope: !3345, file: !89, line: 382, column: 2)
!3350 = !{i32 -2144021427, i32 -2144021420, i32 -2144021366, i32 -2144021335, i32 -2144021305}
!3351 = !DILocation(line: 382, column: 2, scope: !3349, inlinedAt: !3146)
!3352 = !DILocation(line: 386, column: 1, scope: !3142, inlinedAt: !3146)
!3353 = !DILocation(line: 547, column: 9, scope: !3125, inlinedAt: !3128)
!3354 = !DILocation(line: 549, column: 8, scope: !3355, inlinedAt: !3128)
!3355 = distinct !DILexicalBlock(scope: !3125, file: !89, line: 549, column: 7)
!3356 = !DILocation(line: 549, column: 7, scope: !3125, inlinedAt: !3128)
!3357 = !DILocation(line: 550, column: 4, scope: !3355, inlinedAt: !3128)
!3358 = !DILocation(line: 553, column: 33, scope: !3125, inlinedAt: !3128)
!3359 = !DILocation(line: 325, column: 6, scope: !3360, inlinedAt: !3140)
!3360 = distinct !DILexicalBlock(scope: !3136, file: !89, line: 325, column: 6)
!3361 = !DILocation(line: 325, column: 6, scope: !3136, inlinedAt: !3140)
!3362 = !DILocation(line: 326, column: 3, scope: !3360, inlinedAt: !3140)
!3363 = !DILocation(line: 332, column: 9, scope: !3136, inlinedAt: !3140)
!3364 = !DILocation(line: 332, column: 15, scope: !3136, inlinedAt: !3140)
!3365 = !DILocation(line: 332, column: 2, scope: !3136, inlinedAt: !3140)
!3366 = !DILocation(line: 336, column: 1, scope: !3136, inlinedAt: !3140)
!3367 = !DILocation(line: 553, column: 5, scope: !3125, inlinedAt: !3128)
!3368 = !DILocation(line: 553, column: 41, scope: !3125, inlinedAt: !3128)
!3369 = !DILocation(line: 554, column: 5, scope: !3125, inlinedAt: !3128)
!3370 = !DILocation(line: 554, column: 12, scope: !3125, inlinedAt: !3128)
!3371 = !DILocation(line: 448, column: 31, scope: !3120, inlinedAt: !3124)
!3372 = !DILocation(line: 448, column: 34, scope: !3120, inlinedAt: !3124)
!3373 = !DILocation(line: 448, column: 14, scope: !3120, inlinedAt: !3124)
!3374 = !DILocation(line: 450, column: 22, scope: !3120, inlinedAt: !3124)
!3375 = !DILocation(line: 450, column: 25, scope: !3120, inlinedAt: !3124)
!3376 = !DILocation(line: 450, column: 30, scope: !3120, inlinedAt: !3124)
!3377 = !DILocation(line: 450, column: 36, scope: !3120, inlinedAt: !3124)
!3378 = !DILocation(line: 450, column: 8, scope: !3120, inlinedAt: !3124)
!3379 = !DILocation(line: 450, column: 6, scope: !3120, inlinedAt: !3124)
!3380 = !DILocation(line: 451, column: 9, scope: !3120, inlinedAt: !3124)
!3381 = !DILocation(line: 552, column: 3, scope: !3125, inlinedAt: !3128)
!3382 = !DILocation(line: 557, column: 19, scope: !3127, inlinedAt: !3128)
!3383 = !DILocation(line: 557, column: 25, scope: !3127, inlinedAt: !3128)
!3384 = !DILocation(line: 557, column: 9, scope: !3127, inlinedAt: !3128)
!3385 = !DILocation(line: 557, column: 2, scope: !3127, inlinedAt: !3128)
!3386 = !DILocation(line: 558, column: 1, scope: !3127, inlinedAt: !3128)
!3387 = !DILocation(line: 664, column: 2, scope: !3116)
!3388 = distinct !DISubprogram(name: "acpi_processor_power_exit", scope: !3, file: !3, line: 1351, type: !318, scopeLine: 1352, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !392)
!3389 = !DILocalVariable(name: "pr", arg: 1, scope: !3388, file: !3, line: 1351, type: !165)
!3390 = !DILocation(line: 1351, column: 54, scope: !3388)
!3391 = !DILocalVariable(name: "dev", scope: !3388, file: !3, line: 1353, type: !108)
!3392 = !DILocation(line: 1353, column: 25, scope: !3388)
!3393 = !DILocation(line: 1353, column: 31, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3388, file: !3, line: 1353, column: 31)
!3395 = !DILocation(line: 1353, column: 31, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3394, file: !3, line: 1353, column: 31)
!3397 = !DILocalVariable(name: "__vpp_verify", scope: !3398, file: !3, line: 1353, type: !1363)
!3398 = distinct !DILexicalBlock(scope: !3396, file: !3, line: 1353, column: 31)
!3399 = !DILocation(line: 1353, column: 31, scope: !3398)
!3400 = !DILocation(line: 1353, column: 31, scope: !3388)
!3401 = !DILocation(line: 1355, column: 6, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3388, file: !3, line: 1355, column: 6)
!3403 = !DILocation(line: 1355, column: 6, scope: !3388)
!3404 = !DILocation(line: 1356, column: 3, scope: !3402)
!3405 = !DILocation(line: 1358, column: 6, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3388, file: !3, line: 1358, column: 6)
!3407 = !DILocation(line: 1358, column: 10, scope: !3406)
!3408 = !DILocation(line: 1358, column: 16, scope: !3406)
!3409 = !DILocation(line: 1358, column: 6, scope: !3388)
!3410 = !DILocation(line: 1359, column: 29, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3406, file: !3, line: 1358, column: 23)
!3412 = !DILocation(line: 1359, column: 3, scope: !3411)
!3413 = !DILocation(line: 1360, column: 28, scope: !3411)
!3414 = !DILocation(line: 1361, column: 7, scope: !3415)
!3415 = distinct !DILexicalBlock(scope: !3411, file: !3, line: 1361, column: 7)
!3416 = !DILocation(line: 1361, column: 33, scope: !3415)
!3417 = !DILocation(line: 1361, column: 7, scope: !3411)
!3418 = !DILocation(line: 1362, column: 4, scope: !3415)
!3419 = !DILocation(line: 1363, column: 2, scope: !3411)
!3420 = !DILocation(line: 1365, column: 2, scope: !3388)
!3421 = !DILocation(line: 1365, column: 6, scope: !3388)
!3422 = !DILocation(line: 1365, column: 12, scope: !3388)
!3423 = !DILocation(line: 1365, column: 29, scope: !3388)
!3424 = !DILocation(line: 1366, column: 2, scope: !3388)
!3425 = !DILocation(line: 1367, column: 1, scope: !3388)
!3426 = distinct !DISubprogram(name: "acpi_processor_get_lpi_info", scope: !3, file: !3, line: 1038, type: !318, scopeLine: 1039, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!3427 = !DILocalVariable(name: "pr", arg: 1, scope: !3426, file: !3, line: 1038, type: !165)
!3428 = !DILocation(line: 1038, column: 63, scope: !3426)
!3429 = !DILocalVariable(name: "ret", scope: !3426, file: !3, line: 1040, type: !125)
!3430 = !DILocation(line: 1040, column: 6, scope: !3426)
!3431 = !DILocalVariable(name: "i", scope: !3426, file: !3, line: 1040, type: !125)
!3432 = !DILocation(line: 1040, column: 11, scope: !3426)
!3433 = !DILocalVariable(name: "status", scope: !3426, file: !3, line: 1041, type: !3434)
!3434 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !171, line: 421, baseType: !173)
!3435 = !DILocation(line: 1041, column: 14, scope: !3426)
!3436 = !DILocalVariable(name: "handle", scope: !3426, file: !3, line: 1042, type: !170)
!3437 = !DILocation(line: 1042, column: 14, scope: !3426)
!3438 = !DILocation(line: 1042, column: 23, scope: !3426)
!3439 = !DILocation(line: 1042, column: 27, scope: !3426)
!3440 = !DILocalVariable(name: "pr_ahandle", scope: !3426, file: !3, line: 1042, type: !170)
!3441 = !DILocation(line: 1042, column: 35, scope: !3426)
!3442 = !DILocalVariable(name: "d", scope: !3426, file: !3, line: 1043, type: !3443)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !3445, line: 351, size: 10880, elements: !3446)
!3445 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/lizy2001/genbc/linux")
!3446 = !{!3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3464, !3481, !3554, !3583, !3607, !3628, !3634, !3643, !3675, !3689, !3711, !3715, !3716, !3717, !3718, !3719, !3720, !3721}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !3444, file: !3445, line: 352, baseType: !125, size: 32)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !3444, file: !3445, line: 353, baseType: !170, size: 64, offset: 64)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3444, file: !3445, line: 354, baseType: !2207, size: 192, offset: 128)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3444, file: !3445, line: 355, baseType: !3443, size: 64, offset: 320)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3444, file: !3445, line: 356, baseType: !157, size: 128, offset: 384)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3444, file: !3445, line: 357, baseType: !157, size: 128, offset: 512)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !3444, file: !3445, line: 358, baseType: !157, size: 128, offset: 640)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !3444, file: !3445, line: 359, baseType: !157, size: 128, offset: 768)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3444, file: !3445, line: 360, baseType: !3456, size: 32, offset: 896)
!3456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !3445, line: 179, size: 32, elements: !3457)
!3457 = !{!3458, !3459, !3460, !3461, !3462, !3463}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !3456, file: !3445, line: 180, baseType: !173, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !3456, file: !3445, line: 181, baseType: !173, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !3456, file: !3445, line: 182, baseType: !173, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !3456, file: !3445, line: 183, baseType: !173, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !3456, file: !3445, line: 184, baseType: !173, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3456, file: !3445, line: 185, baseType: !173, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3444, file: !3445, line: 361, baseType: !3465, size: 32, offset: 928)
!3465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !3445, line: 190, size: 32, elements: !3466)
!3466 = !{!3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480}
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !3465, file: !3445, line: 191, baseType: !173, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !3465, file: !3445, line: 192, baseType: !173, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !3465, file: !3445, line: 193, baseType: !173, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !3465, file: !3445, line: 194, baseType: !173, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !3465, file: !3445, line: 195, baseType: !173, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !3465, file: !3445, line: 196, baseType: !173, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !3465, file: !3445, line: 197, baseType: !173, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !3465, file: !3445, line: 198, baseType: !173, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !3465, file: !3445, line: 199, baseType: !173, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !3465, file: !3445, line: 200, baseType: !173, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !3465, file: !3445, line: 201, baseType: !173, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !3465, file: !3445, line: 202, baseType: !173, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !3465, file: !3445, line: 203, baseType: !173, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3465, file: !3445, line: 204, baseType: !173, size: 19, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !3444, file: !3445, line: 362, baseType: !3482, size: 960, offset: 960)
!3482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !3445, line: 234, size: 960, elements: !3483)
!3483 = !{!3484, !3486, !3493, !3495, !3496, !3497, !3502, !3504}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !3482, file: !3445, line: 235, baseType: !3485, size: 64)
!3485 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !3445, line: 217, baseType: !1171)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3482, file: !3445, line: 236, baseType: !3487, size: 32, offset: 64)
!3487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !3445, line: 227, size: 32, elements: !3488)
!3488 = !{!3489, !3490, !3491, !3492}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !3487, file: !3445, line: 228, baseType: !173, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !3487, file: !3445, line: 229, baseType: !173, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !3487, file: !3445, line: 230, baseType: !173, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3487, file: !3445, line: 231, baseType: !173, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !3482, file: !3445, line: 237, baseType: !3494, size: 64, offset: 128)
!3494 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !3445, line: 218, baseType: !127)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !3482, file: !3445, line: 238, baseType: !419, size: 64, offset: 192)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !3482, file: !3445, line: 239, baseType: !157, size: 128, offset: 256)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !3482, file: !3445, line: 240, baseType: !3498, size: 320, offset: 384)
!3498 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !3445, line: 219, baseType: !3499)
!3499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 320, elements: !3500)
!3500 = !{!3501}
!3501 = !DISubrange(count: 40)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !3482, file: !3445, line: 241, baseType: !3503, size: 160, offset: 704)
!3503 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !3445, line: 220, baseType: !356)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !3482, file: !3445, line: 242, baseType: !3505, size: 64, offset: 896)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !171, line: 899, size: 192, elements: !3507)
!3507 = !{!3508, !3510, !3515, !3521, !3528, !3534, !3540, !3548}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3506, file: !171, line: 900, baseType: !3509, size: 32)
!3509 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !171, line: 635, baseType: !173)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !3506, file: !171, line: 904, baseType: !3511, size: 128)
!3511 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3506, file: !171, line: 901, size: 128, elements: !3512)
!3512 = !{!3513, !3514}
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3511, file: !171, line: 902, baseType: !3509, size: 32)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3511, file: !171, line: 903, baseType: !127, size: 64, offset: 64)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3506, file: !171, line: 910, baseType: !3516, size: 128)
!3516 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3506, file: !171, line: 906, size: 128, elements: !3517)
!3517 = !{!3518, !3519, !3520}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3516, file: !171, line: 907, baseType: !3509, size: 32)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3516, file: !171, line: 908, baseType: !173, size: 32, offset: 32)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !3516, file: !171, line: 909, baseType: !419, size: 64, offset: 64)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3506, file: !171, line: 916, baseType: !3522, size: 128)
!3522 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3506, file: !171, line: 912, size: 128, elements: !3523)
!3523 = !{!3524, !3525, !3526}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3522, file: !171, line: 913, baseType: !3509, size: 32)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3522, file: !171, line: 914, baseType: !173, size: 32, offset: 32)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !3522, file: !171, line: 915, baseType: !3527, size: 64, offset: 64)
!3527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !3506, file: !171, line: 922, baseType: !3529, size: 128)
!3529 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3506, file: !171, line: 918, size: 128, elements: !3530)
!3530 = !{!3531, !3532, !3533}
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3529, file: !171, line: 919, baseType: !3509, size: 32)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3529, file: !171, line: 920, baseType: !173, size: 32, offset: 32)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !3529, file: !171, line: 921, baseType: !3505, size: 64, offset: 64)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !3506, file: !171, line: 928, baseType: !3535, size: 128)
!3535 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3506, file: !171, line: 924, size: 128, elements: !3536)
!3536 = !{!3537, !3538, !3539}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3535, file: !171, line: 925, baseType: !3509, size: 32)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !3535, file: !171, line: 926, baseType: !3509, size: 32, offset: 32)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !3535, file: !171, line: 927, baseType: !170, size: 64, offset: 64)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !3506, file: !171, line: 935, baseType: !3541, size: 192)
!3541 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3506, file: !171, line: 930, size: 192, elements: !3542)
!3542 = !{!3543, !3544, !3545, !3547}
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3541, file: !171, line: 931, baseType: !3509, size: 32)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !3541, file: !171, line: 932, baseType: !173, size: 32, offset: 32)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !3541, file: !171, line: 933, baseType: !3546, size: 64, offset: 64)
!3546 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !171, line: 128, baseType: !127)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !3541, file: !171, line: 934, baseType: !173, size: 32, offset: 128)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !3506, file: !171, line: 941, baseType: !3549, size: 96)
!3549 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3506, file: !171, line: 937, size: 96, elements: !3550)
!3550 = !{!3551, !3552, !3553}
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3549, file: !171, line: 938, baseType: !3509, size: 32)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !3549, file: !171, line: 939, baseType: !173, size: 32, offset: 32)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !3549, file: !171, line: 940, baseType: !173, size: 32, offset: 64)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3444, file: !3445, line: 363, baseType: !3555, size: 1344, offset: 1920)
!3555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !3445, line: 275, size: 1344, elements: !3556)
!3556 = !{!3557, !3558, !3568}
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3555, file: !3445, line: 276, baseType: !125, size: 32)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3555, file: !3445, line: 277, baseType: !3559, size: 32, offset: 32)
!3559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !3445, line: 254, size: 32, elements: !3560)
!3560 = !{!3561, !3562, !3563, !3564, !3565, !3566, !3567}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !3559, file: !3445, line: 255, baseType: !173, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !3559, file: !3445, line: 256, baseType: !173, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !3559, file: !3445, line: 257, baseType: !173, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !3559, file: !3445, line: 258, baseType: !173, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !3559, file: !3445, line: 259, baseType: !173, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !3559, file: !3445, line: 260, baseType: !173, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3559, file: !3445, line: 261, baseType: !173, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !3555, file: !3445, line: 278, baseType: !3569, size: 1280, offset: 64)
!3569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3570, size: 1280, elements: !3581)
!3570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !3445, line: 264, size: 256, elements: !3571)
!3571 = !{!3572, !3578, !3579, !3580}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3570, file: !3445, line: 269, baseType: !3573, size: 8)
!3573 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3570, file: !3445, line: 265, size: 8, elements: !3574)
!3574 = !{!3575, !3576, !3577}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !3573, file: !3445, line: 266, baseType: !186, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !3573, file: !3445, line: 267, baseType: !186, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3573, file: !3445, line: 268, baseType: !186, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3570, file: !3445, line: 270, baseType: !125, size: 32, offset: 32)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !3570, file: !3445, line: 271, baseType: !125, size: 32, offset: 64)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !3570, file: !3445, line: 272, baseType: !157, size: 128, offset: 128)
!3581 = !{!3582}
!3582 = !DISubrange(count: 5)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3444, file: !3445, line: 364, baseType: !3584, size: 640, offset: 3264)
!3584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !3445, line: 315, size: 640, elements: !3585)
!3585 = !{!3586, !3587, !3588, !3589, !3590, !3595, !3604, !3605, !3606}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !3584, file: !3445, line: 316, baseType: !170, size: 64)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !3584, file: !3445, line: 317, baseType: !127, size: 64, offset: 64)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !3584, file: !3445, line: 318, baseType: !127, size: 64, offset: 128)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !3584, file: !3445, line: 319, baseType: !157, size: 128, offset: 192)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3584, file: !3445, line: 320, baseType: !3591, size: 8, offset: 320)
!3591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !3445, line: 305, size: 8, elements: !3592)
!3592 = !{!3593, !3594}
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !3591, file: !3445, line: 306, baseType: !186, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !3591, file: !3445, line: 307, baseType: !186, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !3584, file: !3445, line: 321, baseType: !3596, size: 128, offset: 384)
!3596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !3445, line: 310, size: 128, elements: !3597)
!3597 = !{!3598, !3603}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3596, file: !3445, line: 311, baseType: !3599, size: 64)
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3600, size: 64)
!3600 = !DISubroutineType(types: !3601)
!3601 = !{null, !3602}
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3596, file: !3445, line: 312, baseType: !1828, size: 64, offset: 64)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !3584, file: !3445, line: 322, baseType: !2012, size: 64, offset: 512)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !3584, file: !3445, line: 323, baseType: !125, size: 32, offset: 576)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !3584, file: !3445, line: 324, baseType: !125, size: 32, offset: 608)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !3444, file: !3445, line: 365, baseType: !3608, size: 192, offset: 3904)
!3608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !3445, line: 297, size: 192, elements: !3609)
!3609 = !{!3610, !3611, !3615, !3616}
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3608, file: !3445, line: 298, baseType: !125, size: 32)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3608, file: !3445, line: 299, baseType: !3612, size: 8, offset: 32)
!3612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !3445, line: 283, size: 8, elements: !3613)
!3613 = !{!3614}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3612, file: !3445, line: 284, baseType: !186, size: 8, flags: DIFlagBitField, extraData: i64 0)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !3608, file: !3445, line: 300, baseType: !125, size: 32, offset: 64)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !3608, file: !3445, line: 301, baseType: !3617, size: 64, offset: 128)
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !3445, line: 287, size: 64, elements: !3619)
!3619 = !{!3620, !3625, !3626, !3627}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3618, file: !3445, line: 291, baseType: !3621, size: 8)
!3621 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3618, file: !3445, line: 288, size: 8, elements: !3622)
!3622 = !{!3623, !3624}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !3621, file: !3445, line: 289, baseType: !186, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3621, file: !3445, line: 290, baseType: !186, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3618, file: !3445, line: 292, baseType: !186, size: 8, offset: 8)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !3618, file: !3445, line: 293, baseType: !186, size: 8, offset: 16)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !3618, file: !3445, line: 294, baseType: !125, size: 32, offset: 32)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3444, file: !3445, line: 366, baseType: !3629, size: 64, offset: 4096)
!3629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !3445, line: 209, size: 64, elements: !3630)
!3630 = !{!3631}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3629, file: !3445, line: 210, baseType: !3632, size: 64)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !3445, line: 84, flags: DIFlagFwdDecl)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3444, file: !3445, line: 367, baseType: !3635, size: 384, offset: 4160)
!3635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !3445, line: 341, size: 384, elements: !3636)
!3636 = !{!3637, !3640, !3641, !3642}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !3635, file: !3445, line: 342, baseType: !3638, size: 64)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3506)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3635, file: !3445, line: 343, baseType: !157, size: 128, offset: 64)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !3635, file: !3445, line: 344, baseType: !3638, size: 64, offset: 192)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !3635, file: !3445, line: 345, baseType: !157, size: 128, offset: 256)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !3444, file: !3445, line: 368, baseType: !3644, size: 64, offset: 4544)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !3445, line: 122, size: 1216, elements: !3646)
!3646 = !{!3647, !3648, !3649, !3654, !3658, !3662, !3663, !3664}
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !3645, file: !3445, line: 123, baseType: !1925, size: 64)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !3645, file: !3445, line: 124, baseType: !157, size: 128, offset: 64)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3645, file: !3445, line: 125, baseType: !3650, size: 64, offset: 192)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = !DISubroutineType(types: !3652)
!3652 = !{!324, !367, !3653}
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !3645, file: !3445, line: 126, baseType: !3655, size: 64, offset: 256)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = !DISubroutineType(types: !3657)
!3657 = !{!125, !3443, !1925}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3645, file: !3445, line: 127, baseType: !3659, size: 64, offset: 320)
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 64)
!3660 = !DISubroutineType(types: !3661)
!3661 = !{null, !3443}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !3645, file: !3445, line: 128, baseType: !1850, size: 64, offset: 384)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !3645, file: !3445, line: 129, baseType: !1850, size: 64, offset: 448)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !3645, file: !3445, line: 130, baseType: !3665, size: 704, offset: 512)
!3665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !3445, line: 108, size: 704, elements: !3666)
!3666 = !{!3667, !3668, !3672, !3673, !3674}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3665, file: !3445, line: 109, baseType: !363, size: 512)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !3665, file: !3445, line: 110, baseType: !3669, size: 64, offset: 512)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{!125, !3443}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !3665, file: !3445, line: 111, baseType: !3659, size: 64, offset: 576)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !3665, file: !3445, line: 112, baseType: !324, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !3665, file: !3445, line: 113, baseType: !324, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !3444, file: !3445, line: 369, baseType: !3676, size: 64, offset: 4608)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !3445, line: 138, size: 256, elements: !3678)
!3678 = !{!3679, !3680, !3684, !3688}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !3677, file: !3445, line: 139, baseType: !3443, size: 64)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !3677, file: !3445, line: 140, baseType: !3681, size: 64, offset: 64)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = !DISubroutineType(types: !3683)
!3683 = !{!125, !3443, !173}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3677, file: !3445, line: 141, baseType: !3685, size: 64, offset: 128)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = !DISubroutineType(types: !3687)
!3687 = !{null, !3443, !173}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !3677, file: !3445, line: 142, baseType: !3659, size: 64, offset: 192)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3444, file: !3445, line: 370, baseType: !3690, size: 64, offset: 4672)
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_driver", file: !3445, line: 162, size: 2816, elements: !3692)
!3692 = !{!3693, !3697, !3698, !3699, !3700, !3709, !3710}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3691, file: !3445, line: 163, baseType: !3694, size: 640)
!3694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 640, elements: !3695)
!3695 = !{!3696}
!3696 = !DISubrange(count: 80)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3691, file: !3445, line: 164, baseType: !3694, size: 640, offset: 640)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !3691, file: !3445, line: 165, baseType: !1925, size: 64, offset: 1280)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3691, file: !3445, line: 166, baseType: !7, size: 32, offset: 1344)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3691, file: !3445, line: 167, baseType: !3701, size: 192, offset: 1408)
!3701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_ops", file: !3445, line: 154, size: 192, elements: !3702)
!3702 = !{!3703, !3705, !3707}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !3701, file: !3445, line: 155, baseType: !3704, size: 64)
!3704 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_add", file: !3445, line: 150, baseType: !3669)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3701, file: !3445, line: 156, baseType: !3706, size: 64, offset: 64)
!3706 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_remove", file: !3445, line: 151, baseType: !3669)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !3701, file: !3445, line: 157, baseType: !3708, size: 64, offset: 128)
!3708 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_notify", file: !3445, line: 152, baseType: !3685)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !3691, file: !3445, line: 168, baseType: !1900, size: 1152, offset: 1600)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3691, file: !3445, line: 169, baseType: !1905, size: 64, offset: 2752)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !3444, file: !3445, line: 371, baseType: !3712, size: 64, offset: 4736)
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3714)
!3714 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !3445, line: 348, flags: DIFlagFwdDecl)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3444, file: !3445, line: 372, baseType: !163, size: 64, offset: 4800)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3444, file: !3445, line: 373, baseType: !360, size: 5568, offset: 4864)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !3444, file: !3445, line: 374, baseType: !7, size: 32, offset: 10432)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !3444, file: !3445, line: 375, baseType: !7, size: 32, offset: 10464)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !3444, file: !3445, line: 376, baseType: !157, size: 128, offset: 10496)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !3444, file: !3445, line: 377, baseType: !627, size: 192, offset: 10624)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3444, file: !3445, line: 378, baseType: !3659, size: 64, offset: 10816)
!3722 = !DILocation(line: 1043, column: 22, scope: !3426)
!3723 = !DILocalVariable(name: "info", scope: !3426, file: !3, line: 1044, type: !3724)
!3724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3725, size: 1280, elements: !1206)
!3725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_lpi_states_array", file: !3, line: 819, size: 640, elements: !3726)
!3726 = !{!3727, !3728, !3729, !3730}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3725, file: !3, line: 820, baseType: !7, size: 32)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "composite_states_size", scope: !3725, file: !3, line: 821, baseType: !7, size: 32, offset: 32)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !3725, file: !3, line: 822, baseType: !2712, size: 64, offset: 64)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "composite_states", scope: !3725, file: !3, line: 823, baseType: !3731, size: 512, offset: 128)
!3731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2712, size: 512, elements: !222)
!3732 = !DILocation(line: 1044, column: 31, scope: !3426)
!3733 = !DILocalVariable(name: "tmp", scope: !3426, file: !3, line: 1044, type: !3734)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3735 = !DILocation(line: 1044, column: 41, scope: !3426)
!3736 = !DILocalVariable(name: "prev", scope: !3426, file: !3, line: 1044, type: !3734)
!3737 = !DILocation(line: 1044, column: 47, scope: !3426)
!3738 = !DILocalVariable(name: "curr", scope: !3426, file: !3, line: 1044, type: !3734)
!3739 = !DILocation(line: 1044, column: 54, scope: !3426)
!3740 = !DILocation(line: 1046, column: 7, scope: !3741)
!3741 = distinct !DILexicalBlock(scope: !3426, file: !3, line: 1046, column: 6)
!3742 = !DILocation(line: 1046, column: 6, scope: !3426)
!3743 = !DILocation(line: 1047, column: 3, scope: !3741)
!3744 = !DILocation(line: 1049, column: 23, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3426, file: !3, line: 1049, column: 6)
!3746 = !DILocation(line: 1049, column: 7, scope: !3745)
!3747 = !DILocation(line: 1049, column: 6, scope: !3426)
!3748 = !DILocation(line: 1050, column: 3, scope: !3745)
!3749 = !DILocation(line: 1052, column: 17, scope: !3426)
!3750 = !DILocation(line: 1053, column: 10, scope: !3426)
!3751 = !DILocation(line: 1053, column: 7, scope: !3426)
!3752 = !DILocation(line: 1054, column: 10, scope: !3426)
!3753 = !DILocation(line: 1054, column: 7, scope: !3426)
!3754 = !DILocation(line: 1055, column: 11, scope: !3426)
!3755 = !DILocation(line: 1055, column: 15, scope: !3426)
!3756 = !DILocation(line: 1055, column: 9, scope: !3426)
!3757 = !DILocation(line: 1056, column: 36, scope: !3426)
!3758 = !DILocation(line: 1056, column: 44, scope: !3426)
!3759 = !DILocation(line: 1056, column: 8, scope: !3426)
!3760 = !DILocation(line: 1056, column: 6, scope: !3426)
!3761 = !DILocation(line: 1057, column: 6, scope: !3762)
!3762 = distinct !DILexicalBlock(scope: !3426, file: !3, line: 1057, column: 6)
!3763 = !DILocation(line: 1057, column: 6, scope: !3426)
!3764 = !DILocation(line: 1058, column: 10, scope: !3762)
!3765 = !DILocation(line: 1058, column: 3, scope: !3762)
!3766 = !DILocation(line: 1059, column: 21, scope: !3426)
!3767 = !DILocation(line: 1059, column: 25, scope: !3426)
!3768 = !DILocation(line: 1059, column: 2, scope: !3426)
!3769 = !DILocation(line: 1061, column: 27, scope: !3426)
!3770 = !DILocation(line: 1061, column: 11, scope: !3426)
!3771 = !DILocation(line: 1061, column: 9, scope: !3426)
!3772 = !DILocation(line: 1062, column: 2, scope: !3426)
!3773 = !DILocation(line: 1062, column: 9, scope: !3426)
!3774 = !DILocation(line: 1063, column: 23, scope: !3775)
!3775 = distinct !DILexicalBlock(scope: !3426, file: !3, line: 1062, column: 31)
!3776 = !DILocation(line: 1063, column: 3, scope: !3775)
!3777 = !DILocation(line: 1064, column: 12, scope: !3775)
!3778 = !DILocation(line: 1064, column: 10, scope: !3775)
!3779 = !DILocation(line: 1066, column: 30, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3775, file: !3, line: 1066, column: 7)
!3781 = !DILocation(line: 1066, column: 14, scope: !3780)
!3782 = !DILocation(line: 1066, column: 7, scope: !3780)
!3783 = !DILocation(line: 1066, column: 7, scope: !3775)
!3784 = !DILocation(line: 1067, column: 4, scope: !3780)
!3785 = !DILocation(line: 1070, column: 24, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3775, file: !3, line: 1070, column: 7)
!3787 = !DILocation(line: 1070, column: 8, scope: !3786)
!3788 = !DILocation(line: 1070, column: 7, scope: !3775)
!3789 = !DILocation(line: 1071, column: 4, scope: !3786)
!3790 = !DILocation(line: 1073, column: 37, scope: !3775)
!3791 = !DILocation(line: 1073, column: 45, scope: !3775)
!3792 = !DILocation(line: 1073, column: 9, scope: !3775)
!3793 = !DILocation(line: 1073, column: 7, scope: !3775)
!3794 = !DILocation(line: 1074, column: 7, scope: !3795)
!3795 = distinct !DILexicalBlock(scope: !3775, file: !3, line: 1074, column: 7)
!3796 = !DILocation(line: 1074, column: 7, scope: !3775)
!3797 = !DILocation(line: 1075, column: 4, scope: !3795)
!3798 = !DILocation(line: 1078, column: 22, scope: !3775)
!3799 = !DILocation(line: 1078, column: 26, scope: !3775)
!3800 = !DILocation(line: 1078, column: 32, scope: !3775)
!3801 = !DILocation(line: 1078, column: 3, scope: !3775)
!3802 = !DILocation(line: 1080, column: 9, scope: !3775)
!3803 = !DILocation(line: 1080, column: 7, scope: !3775)
!3804 = !DILocation(line: 1080, column: 22, scope: !3775)
!3805 = !DILocation(line: 1080, column: 20, scope: !3775)
!3806 = !DILocation(line: 1080, column: 35, scope: !3775)
!3807 = !DILocation(line: 1080, column: 33, scope: !3775)
!3808 = !DILocation(line: 1082, column: 28, scope: !3775)
!3809 = !DILocation(line: 1082, column: 12, scope: !3775)
!3810 = !DILocation(line: 1082, column: 10, scope: !3775)
!3811 = distinct !{!3811, !3772, !3812}
!3812 = !DILocation(line: 1083, column: 2, scope: !3426)
!3813 = !DILocation(line: 1085, column: 20, scope: !3426)
!3814 = !DILocation(line: 1085, column: 2, scope: !3426)
!3815 = !DILocation(line: 1085, column: 6, scope: !3426)
!3816 = !DILocation(line: 1085, column: 12, scope: !3426)
!3817 = !DILocation(line: 1085, column: 18, scope: !3426)
!3818 = !DILocation(line: 1087, column: 9, scope: !3819)
!3819 = distinct !DILexicalBlock(scope: !3426, file: !3, line: 1087, column: 2)
!3820 = !DILocation(line: 1087, column: 7, scope: !3819)
!3821 = !DILocation(line: 1087, column: 14, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !3819, file: !3, line: 1087, column: 2)
!3823 = !DILocation(line: 1087, column: 18, scope: !3822)
!3824 = !DILocation(line: 1087, column: 22, scope: !3822)
!3825 = !DILocation(line: 1087, column: 28, scope: !3822)
!3826 = !DILocation(line: 1087, column: 16, scope: !3822)
!3827 = !DILocation(line: 1087, column: 2, scope: !3819)
!3828 = !DILocation(line: 1088, column: 35, scope: !3822)
!3829 = !DILocation(line: 1088, column: 3, scope: !3822)
!3830 = !DILocation(line: 1088, column: 7, scope: !3822)
!3831 = !DILocation(line: 1088, column: 13, scope: !3822)
!3832 = !DILocation(line: 1088, column: 24, scope: !3822)
!3833 = !DILocation(line: 1088, column: 27, scope: !3822)
!3834 = !DILocation(line: 1088, column: 33, scope: !3822)
!3835 = !DILocation(line: 1087, column: 36, scope: !3822)
!3836 = !DILocation(line: 1087, column: 2, scope: !3822)
!3837 = distinct !{!3837, !3827, !3838}
!3838 = !DILocation(line: 1088, column: 35, scope: !3819)
!3839 = !DILocation(line: 1091, column: 2, scope: !3426)
!3840 = !DILocation(line: 1091, column: 6, scope: !3426)
!3841 = !DILocation(line: 1091, column: 12, scope: !3426)
!3842 = !DILocation(line: 1091, column: 20, scope: !3426)
!3843 = !DILocation(line: 1092, column: 2, scope: !3426)
!3844 = !DILocation(line: 1092, column: 6, scope: !3426)
!3845 = !DILocation(line: 1092, column: 12, scope: !3426)
!3846 = !DILocation(line: 1092, column: 18, scope: !3426)
!3847 = !DILocation(line: 1094, column: 2, scope: !3426)
!3848 = !DILocation(line: 1095, column: 1, scope: !3426)
!3849 = distinct !DISubprogram(name: "acpi_processor_get_cstate_info", scope: !3, file: !3, line: 429, type: !318, scopeLine: 430, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!3850 = !DILocalVariable(name: "pr", arg: 1, scope: !3849, file: !3, line: 429, type: !165)
!3851 = !DILocation(line: 429, column: 66, scope: !3849)
!3852 = !DILocalVariable(name: "i", scope: !3849, file: !3, line: 431, type: !7)
!3853 = !DILocation(line: 431, column: 15, scope: !3849)
!3854 = !DILocalVariable(name: "result", scope: !3849, file: !3, line: 432, type: !125)
!3855 = !DILocation(line: 432, column: 6, scope: !3849)
!3856 = !DILocation(line: 439, column: 9, scope: !3849)
!3857 = !DILocation(line: 439, column: 13, scope: !3849)
!3858 = !DILocation(line: 439, column: 19, scope: !3849)
!3859 = !DILocation(line: 439, column: 2, scope: !3849)
!3860 = !DILocation(line: 441, column: 45, scope: !3849)
!3861 = !DILocation(line: 441, column: 11, scope: !3849)
!3862 = !DILocation(line: 441, column: 9, scope: !3849)
!3863 = !DILocation(line: 442, column: 6, scope: !3864)
!3864 = distinct !DILexicalBlock(scope: !3849, file: !3, line: 442, column: 6)
!3865 = !DILocation(line: 442, column: 13, scope: !3864)
!3866 = !DILocation(line: 442, column: 6, scope: !3849)
!3867 = !DILocation(line: 443, column: 47, scope: !3864)
!3868 = !DILocation(line: 443, column: 12, scope: !3864)
!3869 = !DILocation(line: 443, column: 10, scope: !3864)
!3870 = !DILocation(line: 443, column: 3, scope: !3864)
!3871 = !DILocation(line: 445, column: 6, scope: !3872)
!3872 = distinct !DILexicalBlock(scope: !3849, file: !3, line: 445, column: 6)
!3873 = !DILocation(line: 445, column: 6, scope: !3849)
!3874 = !DILocation(line: 446, column: 10, scope: !3872)
!3875 = !DILocation(line: 446, column: 3, scope: !3872)
!3876 = !DILocation(line: 448, column: 40, scope: !3849)
!3877 = !DILocation(line: 448, column: 2, scope: !3849)
!3878 = !DILocation(line: 450, column: 48, scope: !3849)
!3879 = !DILocation(line: 450, column: 20, scope: !3849)
!3880 = !DILocation(line: 450, column: 2, scope: !3849)
!3881 = !DILocation(line: 450, column: 6, scope: !3849)
!3882 = !DILocation(line: 450, column: 12, scope: !3849)
!3883 = !DILocation(line: 450, column: 18, scope: !3849)
!3884 = !DILocation(line: 456, column: 9, scope: !3885)
!3885 = distinct !DILexicalBlock(scope: !3849, file: !3, line: 456, column: 2)
!3886 = !DILocation(line: 456, column: 7, scope: !3885)
!3887 = !DILocation(line: 456, column: 14, scope: !3888)
!3888 = distinct !DILexicalBlock(scope: !3885, file: !3, line: 456, column: 2)
!3889 = !DILocation(line: 456, column: 16, scope: !3888)
!3890 = !DILocation(line: 456, column: 2, scope: !3885)
!3891 = !DILocation(line: 457, column: 7, scope: !3892)
!3892 = distinct !DILexicalBlock(scope: !3893, file: !3, line: 457, column: 7)
!3893 = distinct !DILexicalBlock(scope: !3888, file: !3, line: 456, column: 49)
!3894 = !DILocation(line: 457, column: 11, scope: !3892)
!3895 = !DILocation(line: 457, column: 17, scope: !3892)
!3896 = !DILocation(line: 457, column: 24, scope: !3892)
!3897 = !DILocation(line: 457, column: 27, scope: !3892)
!3898 = !DILocation(line: 457, column: 7, scope: !3893)
!3899 = !DILocation(line: 458, column: 22, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3892, file: !3, line: 457, column: 34)
!3901 = !DILocation(line: 458, column: 4, scope: !3900)
!3902 = !DILocation(line: 458, column: 8, scope: !3900)
!3903 = !DILocation(line: 458, column: 14, scope: !3900)
!3904 = !DILocation(line: 458, column: 20, scope: !3900)
!3905 = !DILocation(line: 459, column: 4, scope: !3900)
!3906 = !DILocation(line: 459, column: 8, scope: !3900)
!3907 = !DILocation(line: 459, column: 14, scope: !3900)
!3908 = !DILocation(line: 459, column: 20, scope: !3900)
!3909 = !DILocation(line: 460, column: 3, scope: !3900)
!3910 = !DILocation(line: 461, column: 2, scope: !3893)
!3911 = !DILocation(line: 456, column: 45, scope: !3888)
!3912 = !DILocation(line: 456, column: 2, scope: !3888)
!3913 = distinct !{!3913, !3890, !3914}
!3914 = !DILocation(line: 461, column: 2, scope: !3885)
!3915 = !DILocation(line: 463, column: 2, scope: !3849)
!3916 = !DILocation(line: 464, column: 1, scope: !3849)
!3917 = distinct !DISubprogram(name: "acpi_processor_evaluate_lpi", scope: !3, file: !3, line: 835, type: !3918, scopeLine: 837, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!3918 = !DISubroutineType(types: !3919)
!3919 = !{!125, !170, !3734}
!3920 = !DILocalVariable(name: "handle", arg: 1, scope: !3917, file: !3, line: 835, type: !170)
!3921 = !DILocation(line: 835, column: 52, scope: !3917)
!3922 = !DILocalVariable(name: "info", arg: 2, scope: !3917, file: !3, line: 836, type: !3734)
!3923 = !DILocation(line: 836, column: 42, scope: !3917)
!3924 = !DILocalVariable(name: "status", scope: !3917, file: !3, line: 838, type: !3434)
!3925 = !DILocation(line: 838, column: 14, scope: !3917)
!3926 = !DILocalVariable(name: "ret", scope: !3917, file: !3, line: 839, type: !125)
!3927 = !DILocation(line: 839, column: 6, scope: !3917)
!3928 = !DILocalVariable(name: "pkg_count", scope: !3917, file: !3, line: 840, type: !125)
!3929 = !DILocation(line: 840, column: 6, scope: !3917)
!3930 = !DILocalVariable(name: "state_idx", scope: !3917, file: !3, line: 840, type: !125)
!3931 = !DILocation(line: 840, column: 17, scope: !3917)
!3932 = !DILocalVariable(name: "loop", scope: !3917, file: !3, line: 840, type: !125)
!3933 = !DILocation(line: 840, column: 32, scope: !3917)
!3934 = !DILocalVariable(name: "buffer", scope: !3917, file: !3, line: 841, type: !3935)
!3935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_buffer", file: !171, line: 969, size: 128, elements: !3936)
!3936 = !{!3937, !3939}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3935, file: !171, line: 970, baseType: !3938, size: 64)
!3938 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !171, line: 127, baseType: !127)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !3935, file: !171, line: 971, baseType: !163, size: 64, offset: 64)
!3940 = !DILocation(line: 841, column: 21, scope: !3917)
!3941 = !DILocalVariable(name: "lpi_data", scope: !3917, file: !3, line: 842, type: !3505)
!3942 = !DILocation(line: 842, column: 21, scope: !3917)
!3943 = !DILocalVariable(name: "lpi_state", scope: !3917, file: !3, line: 843, type: !2712)
!3944 = !DILocation(line: 843, column: 25, scope: !3917)
!3945 = !DILocation(line: 845, column: 32, scope: !3917)
!3946 = !DILocation(line: 845, column: 11, scope: !3917)
!3947 = !DILocation(line: 845, column: 9, scope: !3917)
!3948 = !DILocation(line: 846, column: 6, scope: !3949)
!3949 = distinct !DILexicalBlock(scope: !3917, file: !3, line: 846, column: 6)
!3950 = !DILocation(line: 846, column: 6, scope: !3917)
!3951 = !DILocation(line: 848, column: 3, scope: !3952)
!3952 = distinct !DILexicalBlock(scope: !3949, file: !3, line: 846, column: 28)
!3953 = !DILocation(line: 851, column: 20, scope: !3917)
!3954 = !DILocation(line: 851, column: 13, scope: !3917)
!3955 = !DILocation(line: 851, column: 11, scope: !3917)
!3956 = !DILocation(line: 854, column: 7, scope: !3957)
!3957 = distinct !DILexicalBlock(scope: !3917, file: !3, line: 854, column: 6)
!3958 = !DILocation(line: 854, column: 16, scope: !3957)
!3959 = !DILocation(line: 854, column: 19, scope: !3957)
!3960 = !DILocation(line: 854, column: 29, scope: !3957)
!3961 = !DILocation(line: 854, column: 34, scope: !3957)
!3962 = !DILocation(line: 854, column: 55, scope: !3957)
!3963 = !DILocation(line: 855, column: 6, scope: !3957)
!3964 = !DILocation(line: 855, column: 16, scope: !3957)
!3965 = !DILocation(line: 855, column: 24, scope: !3957)
!3966 = !DILocation(line: 855, column: 30, scope: !3957)
!3967 = !DILocation(line: 854, column: 6, scope: !3917)
!3968 = !DILocation(line: 856, column: 3, scope: !3969)
!3969 = distinct !DILexicalBlock(scope: !3970, file: !3, line: 856, column: 3)
!3970 = distinct !DILexicalBlock(scope: !3971, file: !3, line: 856, column: 3)
!3971 = distinct !DILexicalBlock(scope: !3957, file: !3, line: 855, column: 35)
!3972 = !DILocation(line: 856, column: 3, scope: !3970)
!3973 = !DILocation(line: 857, column: 7, scope: !3971)
!3974 = !DILocation(line: 858, column: 3, scope: !3971)
!3975 = !DILocation(line: 861, column: 14, scope: !3917)
!3976 = !DILocation(line: 861, column: 24, scope: !3917)
!3977 = !DILocation(line: 861, column: 32, scope: !3917)
!3978 = !DILocation(line: 861, column: 44, scope: !3917)
!3979 = !DILocation(line: 861, column: 52, scope: !3917)
!3980 = !DILocation(line: 861, column: 12, scope: !3917)
!3981 = !DILocation(line: 864, column: 6, scope: !3982)
!3982 = distinct !DILexicalBlock(scope: !3917, file: !3, line: 864, column: 6)
!3983 = !DILocation(line: 864, column: 16, scope: !3982)
!3984 = !DILocation(line: 864, column: 20, scope: !3982)
!3985 = !DILocation(line: 864, column: 23, scope: !3982)
!3986 = !DILocation(line: 864, column: 36, scope: !3982)
!3987 = !DILocation(line: 864, column: 46, scope: !3982)
!3988 = !DILocation(line: 864, column: 54, scope: !3982)
!3989 = !DILocation(line: 864, column: 60, scope: !3982)
!3990 = !DILocation(line: 864, column: 33, scope: !3982)
!3991 = !DILocation(line: 864, column: 6, scope: !3917)
!3992 = !DILocation(line: 865, column: 3, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !3994, file: !3, line: 865, column: 3)
!3994 = distinct !DILexicalBlock(scope: !3995, file: !3, line: 865, column: 3)
!3995 = distinct !DILexicalBlock(scope: !3982, file: !3, line: 864, column: 65)
!3996 = !DILocation(line: 865, column: 3, scope: !3994)
!3997 = !DILocation(line: 866, column: 7, scope: !3995)
!3998 = !DILocation(line: 867, column: 3, scope: !3995)
!3999 = !DILocation(line: 870, column: 22, scope: !3917)
!4000 = !DILocation(line: 870, column: 14, scope: !3917)
!4001 = !DILocation(line: 870, column: 12, scope: !3917)
!4002 = !DILocation(line: 871, column: 7, scope: !4003)
!4003 = distinct !DILexicalBlock(scope: !3917, file: !3, line: 871, column: 6)
!4004 = !DILocation(line: 871, column: 6, scope: !3917)
!4005 = !DILocation(line: 872, column: 7, scope: !4006)
!4006 = distinct !DILexicalBlock(scope: !4003, file: !3, line: 871, column: 18)
!4007 = !DILocation(line: 873, column: 3, scope: !4006)
!4008 = !DILocation(line: 876, column: 15, scope: !3917)
!4009 = !DILocation(line: 876, column: 2, scope: !3917)
!4010 = !DILocation(line: 876, column: 8, scope: !3917)
!4011 = !DILocation(line: 876, column: 13, scope: !3917)
!4012 = !DILocation(line: 877, column: 18, scope: !3917)
!4013 = !DILocation(line: 877, column: 2, scope: !3917)
!4014 = !DILocation(line: 877, column: 8, scope: !3917)
!4015 = !DILocation(line: 877, column: 16, scope: !3917)
!4016 = !DILocation(line: 880, column: 12, scope: !4017)
!4017 = distinct !DILexicalBlock(scope: !3917, file: !3, line: 880, column: 2)
!4018 = !DILocation(line: 880, column: 7, scope: !4017)
!4019 = !DILocation(line: 880, column: 17, scope: !4020)
!4020 = distinct !DILexicalBlock(scope: !4017, file: !3, line: 880, column: 2)
!4021 = !DILocation(line: 880, column: 30, scope: !4020)
!4022 = !DILocation(line: 880, column: 27, scope: !4020)
!4023 = !DILocation(line: 880, column: 2, scope: !4017)
!4024 = !DILocalVariable(name: "element", scope: !4025, file: !3, line: 881, type: !3505)
!4025 = distinct !DILexicalBlock(scope: !4020, file: !3, line: 880, column: 75)
!4026 = !DILocation(line: 881, column: 22, scope: !4025)
!4027 = !DILocalVariable(name: "pkg_elem", scope: !4025, file: !3, line: 881, type: !3505)
!4028 = !DILocation(line: 881, column: 32, scope: !4025)
!4029 = !DILocalVariable(name: "obj", scope: !4025, file: !3, line: 881, type: !3505)
!4030 = !DILocation(line: 881, column: 43, scope: !4025)
!4031 = !DILocation(line: 883, column: 14, scope: !4025)
!4032 = !DILocation(line: 883, column: 24, scope: !4025)
!4033 = !DILocation(line: 883, column: 32, scope: !4025)
!4034 = !DILocation(line: 883, column: 41, scope: !4025)
!4035 = !DILocation(line: 883, column: 11, scope: !4025)
!4036 = !DILocation(line: 884, column: 7, scope: !4037)
!4037 = distinct !DILexicalBlock(scope: !4025, file: !3, line: 884, column: 7)
!4038 = !DILocation(line: 884, column: 16, scope: !4037)
!4039 = !DILocation(line: 884, column: 21, scope: !4037)
!4040 = !DILocation(line: 884, column: 42, scope: !4037)
!4041 = !DILocation(line: 884, column: 45, scope: !4037)
!4042 = !DILocation(line: 884, column: 54, scope: !4037)
!4043 = !DILocation(line: 884, column: 62, scope: !4037)
!4044 = !DILocation(line: 884, column: 68, scope: !4037)
!4045 = !DILocation(line: 884, column: 7, scope: !4025)
!4046 = !DILocation(line: 885, column: 4, scope: !4037)
!4047 = !DILocation(line: 887, column: 14, scope: !4025)
!4048 = !DILocation(line: 887, column: 23, scope: !4025)
!4049 = !DILocation(line: 887, column: 31, scope: !4025)
!4050 = !DILocation(line: 887, column: 12, scope: !4025)
!4051 = !DILocation(line: 889, column: 9, scope: !4025)
!4052 = !DILocation(line: 889, column: 18, scope: !4025)
!4053 = !DILocation(line: 889, column: 7, scope: !4025)
!4054 = !DILocation(line: 890, column: 7, scope: !4055)
!4055 = distinct !DILexicalBlock(scope: !4025, file: !3, line: 890, column: 7)
!4056 = !DILocation(line: 890, column: 12, scope: !4055)
!4057 = !DILocation(line: 890, column: 17, scope: !4055)
!4058 = !DILocation(line: 890, column: 7, scope: !4025)
!4059 = !DILocalVariable(name: "reg", scope: !4060, file: !3, line: 891, type: !2492)
!4060 = distinct !DILexicalBlock(scope: !4055, file: !3, line: 890, column: 38)
!4061 = !DILocation(line: 891, column: 32, scope: !4060)
!4062 = !DILocation(line: 893, column: 40, scope: !4060)
!4063 = !DILocation(line: 893, column: 45, scope: !4060)
!4064 = !DILocation(line: 893, column: 52, scope: !4060)
!4065 = !DILocation(line: 893, column: 10, scope: !4060)
!4066 = !DILocation(line: 893, column: 8, scope: !4060)
!4067 = !DILocation(line: 894, column: 8, scope: !4068)
!4068 = distinct !DILexicalBlock(scope: !4060, file: !3, line: 894, column: 8)
!4069 = !DILocation(line: 894, column: 13, scope: !4068)
!4070 = !DILocation(line: 894, column: 22, scope: !4068)
!4071 = !DILocation(line: 894, column: 50, scope: !4068)
!4072 = !DILocation(line: 895, column: 8, scope: !4068)
!4073 = !DILocation(line: 895, column: 13, scope: !4068)
!4074 = !DILocation(line: 895, column: 22, scope: !4068)
!4075 = !DILocation(line: 894, column: 8, scope: !4060)
!4076 = !DILocation(line: 896, column: 5, scope: !4068)
!4077 = !DILocation(line: 898, column: 25, scope: !4060)
!4078 = !DILocation(line: 898, column: 30, scope: !4060)
!4079 = !DILocation(line: 898, column: 4, scope: !4060)
!4080 = !DILocation(line: 898, column: 15, scope: !4060)
!4081 = !DILocation(line: 898, column: 23, scope: !4060)
!4082 = !DILocation(line: 900, column: 5, scope: !4060)
!4083 = !DILocation(line: 900, column: 10, scope: !4060)
!4084 = !DILocation(line: 900, column: 19, scope: !4060)
!4085 = !DILocation(line: 899, column: 4, scope: !4060)
!4086 = !DILocation(line: 899, column: 15, scope: !4060)
!4087 = !DILocation(line: 899, column: 28, scope: !4060)
!4088 = !DILocation(line: 902, column: 3, scope: !4060)
!4089 = !DILocation(line: 902, column: 14, scope: !4090)
!4090 = distinct !DILexicalBlock(scope: !4055, file: !3, line: 902, column: 14)
!4091 = !DILocation(line: 902, column: 19, scope: !4090)
!4092 = !DILocation(line: 902, column: 24, scope: !4090)
!4093 = !DILocation(line: 902, column: 14, scope: !4055)
!4094 = !DILocation(line: 903, column: 4, scope: !4095)
!4095 = distinct !DILexicalBlock(scope: !4090, file: !3, line: 902, column: 46)
!4096 = !DILocation(line: 903, column: 15, scope: !4095)
!4097 = !DILocation(line: 903, column: 28, scope: !4095)
!4098 = !DILocation(line: 904, column: 25, scope: !4095)
!4099 = !DILocation(line: 904, column: 30, scope: !4095)
!4100 = !DILocation(line: 904, column: 38, scope: !4095)
!4101 = !DILocation(line: 904, column: 4, scope: !4095)
!4102 = !DILocation(line: 904, column: 15, scope: !4095)
!4103 = !DILocation(line: 904, column: 23, scope: !4095)
!4104 = !DILocation(line: 905, column: 3, scope: !4095)
!4105 = !DILocation(line: 906, column: 4, scope: !4106)
!4106 = distinct !DILexicalBlock(scope: !4090, file: !3, line: 905, column: 10)
!4107 = !DILocation(line: 911, column: 9, scope: !4025)
!4108 = !DILocation(line: 911, column: 18, scope: !4025)
!4109 = !DILocation(line: 911, column: 7, scope: !4025)
!4110 = !DILocation(line: 912, column: 7, scope: !4111)
!4111 = distinct !DILexicalBlock(scope: !4025, file: !3, line: 912, column: 7)
!4112 = !DILocation(line: 912, column: 12, scope: !4111)
!4113 = !DILocation(line: 912, column: 17, scope: !4111)
!4114 = !DILocation(line: 912, column: 7, scope: !4025)
!4115 = !DILocation(line: 913, column: 12, scope: !4111)
!4116 = !DILocation(line: 913, column: 23, scope: !4111)
!4117 = !DILocation(line: 913, column: 29, scope: !4111)
!4118 = !DILocation(line: 913, column: 34, scope: !4111)
!4119 = !DILocation(line: 913, column: 41, scope: !4111)
!4120 = !DILocation(line: 913, column: 4, scope: !4111)
!4121 = !DILocation(line: 916, column: 22, scope: !4025)
!4122 = !DILocation(line: 916, column: 3, scope: !4025)
!4123 = !DILocation(line: 916, column: 14, scope: !4025)
!4124 = !DILocation(line: 916, column: 20, scope: !4025)
!4125 = !DILocation(line: 917, column: 23, scope: !4126)
!4126 = distinct !DILexicalBlock(scope: !4025, file: !3, line: 917, column: 7)
!4127 = !DILocation(line: 917, column: 32, scope: !4126)
!4128 = !DILocation(line: 917, column: 38, scope: !4126)
!4129 = !DILocation(line: 917, column: 49, scope: !4126)
!4130 = !DILocation(line: 917, column: 7, scope: !4126)
!4131 = !DILocation(line: 917, column: 7, scope: !4025)
!4132 = !DILocation(line: 918, column: 4, scope: !4133)
!4133 = distinct !DILexicalBlock(scope: !4134, file: !3, line: 918, column: 4)
!4134 = distinct !DILexicalBlock(scope: !4135, file: !3, line: 918, column: 4)
!4135 = distinct !DILexicalBlock(scope: !4126, file: !3, line: 917, column: 65)
!4136 = !DILocation(line: 918, column: 4, scope: !4134)
!4137 = !DILocation(line: 919, column: 4, scope: !4135)
!4138 = !DILocation(line: 919, column: 15, scope: !4135)
!4139 = !DILocation(line: 919, column: 29, scope: !4135)
!4140 = !DILocation(line: 920, column: 3, scope: !4135)
!4141 = !DILocation(line: 922, column: 23, scope: !4142)
!4142 = distinct !DILexicalBlock(scope: !4025, file: !3, line: 922, column: 7)
!4143 = !DILocation(line: 922, column: 32, scope: !4142)
!4144 = !DILocation(line: 922, column: 38, scope: !4142)
!4145 = !DILocation(line: 922, column: 49, scope: !4142)
!4146 = !DILocation(line: 922, column: 7, scope: !4142)
!4147 = !DILocation(line: 922, column: 7, scope: !4025)
!4148 = !DILocation(line: 923, column: 4, scope: !4149)
!4149 = distinct !DILexicalBlock(scope: !4150, file: !3, line: 923, column: 4)
!4150 = distinct !DILexicalBlock(scope: !4151, file: !3, line: 923, column: 4)
!4151 = distinct !DILexicalBlock(scope: !4142, file: !3, line: 922, column: 64)
!4152 = !DILocation(line: 923, column: 4, scope: !4150)
!4153 = !DILocation(line: 924, column: 4, scope: !4151)
!4154 = !DILocation(line: 924, column: 15, scope: !4151)
!4155 = !DILocation(line: 924, column: 28, scope: !4151)
!4156 = !DILocation(line: 925, column: 3, scope: !4151)
!4157 = !DILocation(line: 927, column: 23, scope: !4158)
!4158 = distinct !DILexicalBlock(scope: !4025, file: !3, line: 927, column: 7)
!4159 = !DILocation(line: 927, column: 32, scope: !4158)
!4160 = !DILocation(line: 927, column: 38, scope: !4158)
!4161 = !DILocation(line: 927, column: 49, scope: !4158)
!4162 = !DILocation(line: 927, column: 7, scope: !4158)
!4163 = !DILocation(line: 927, column: 7, scope: !4025)
!4164 = !DILocation(line: 928, column: 4, scope: !4158)
!4165 = !DILocation(line: 928, column: 15, scope: !4158)
!4166 = !DILocation(line: 928, column: 21, scope: !4158)
!4167 = !DILocation(line: 930, column: 23, scope: !4168)
!4168 = distinct !DILexicalBlock(scope: !4025, file: !3, line: 930, column: 7)
!4169 = !DILocation(line: 930, column: 32, scope: !4168)
!4170 = !DILocation(line: 930, column: 38, scope: !4168)
!4171 = !DILocation(line: 930, column: 49, scope: !4168)
!4172 = !DILocation(line: 930, column: 7, scope: !4168)
!4173 = !DILocation(line: 930, column: 7, scope: !4025)
!4174 = !DILocation(line: 931, column: 4, scope: !4168)
!4175 = !DILocation(line: 931, column: 15, scope: !4168)
!4176 = !DILocation(line: 931, column: 26, scope: !4168)
!4177 = !DILocation(line: 933, column: 23, scope: !4178)
!4178 = distinct !DILexicalBlock(scope: !4025, file: !3, line: 933, column: 7)
!4179 = !DILocation(line: 933, column: 32, scope: !4178)
!4180 = !DILocation(line: 933, column: 38, scope: !4178)
!4181 = !DILocation(line: 933, column: 49, scope: !4178)
!4182 = !DILocation(line: 933, column: 7, scope: !4178)
!4183 = !DILocation(line: 933, column: 7, scope: !4025)
!4184 = !DILocation(line: 934, column: 4, scope: !4178)
!4185 = !DILocation(line: 934, column: 15, scope: !4178)
!4186 = !DILocation(line: 934, column: 28, scope: !4178)
!4187 = !DILocation(line: 936, column: 23, scope: !4188)
!4188 = distinct !DILexicalBlock(scope: !4025, file: !3, line: 936, column: 7)
!4189 = !DILocation(line: 936, column: 32, scope: !4188)
!4190 = !DILocation(line: 936, column: 38, scope: !4188)
!4191 = !DILocation(line: 936, column: 49, scope: !4188)
!4192 = !DILocation(line: 936, column: 7, scope: !4188)
!4193 = !DILocation(line: 936, column: 7, scope: !4025)
!4194 = !DILocation(line: 937, column: 4, scope: !4188)
!4195 = !DILocation(line: 937, column: 15, scope: !4188)
!4196 = !DILocation(line: 937, column: 35, scope: !4188)
!4197 = !DILocation(line: 938, column: 2, scope: !4025)
!4198 = !DILocation(line: 880, column: 45, scope: !4020)
!4199 = !DILocation(line: 880, column: 58, scope: !4020)
!4200 = !DILocation(line: 880, column: 71, scope: !4020)
!4201 = !DILocation(line: 880, column: 2, scope: !4020)
!4202 = distinct !{!4202, !4023, !4203}
!4203 = !DILocation(line: 938, column: 2, scope: !4017)
!4204 = !DILocation(line: 940, column: 2, scope: !4205)
!4205 = distinct !DILexicalBlock(scope: !4206, file: !3, line: 940, column: 2)
!4206 = distinct !DILexicalBlock(scope: !3917, file: !3, line: 940, column: 2)
!4207 = !DILocation(line: 940, column: 2, scope: !4206)
!4208 = !DILocation(line: 940, column: 2, scope: !3917)
!4209 = !DILabel(scope: !3917, name: "end", file: !3, line: 941)
!4210 = !DILocation(line: 941, column: 1, scope: !3917)
!4211 = !DILocation(line: 942, column: 15, scope: !3917)
!4212 = !DILocation(line: 942, column: 2, scope: !3917)
!4213 = !DILocation(line: 943, column: 9, scope: !3917)
!4214 = !DILocation(line: 943, column: 2, scope: !3917)
!4215 = !DILocation(line: 944, column: 1, scope: !3917)
!4216 = distinct !DISubprogram(name: "flatten_lpi_states", scope: !3, file: !3, line: 993, type: !4217, scopeLine: 996, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!4217 = !DISubroutineType(types: !4218)
!4218 = !{!125, !165, !3734, !3734}
!4219 = !DILocalVariable(name: "pr", arg: 1, scope: !4216, file: !3, line: 993, type: !165)
!4220 = !DILocation(line: 993, column: 54, scope: !4216)
!4221 = !DILocalVariable(name: "curr_level", arg: 2, scope: !4216, file: !3, line: 994, type: !3734)
!4222 = !DILocation(line: 994, column: 40, scope: !4216)
!4223 = !DILocalVariable(name: "prev_level", arg: 3, scope: !4216, file: !3, line: 995, type: !3734)
!4224 = !DILocation(line: 995, column: 40, scope: !4216)
!4225 = !DILocalVariable(name: "i", scope: !4216, file: !3, line: 997, type: !125)
!4226 = !DILocation(line: 997, column: 6, scope: !4216)
!4227 = !DILocalVariable(name: "j", scope: !4216, file: !3, line: 997, type: !125)
!4228 = !DILocation(line: 997, column: 9, scope: !4216)
!4229 = !DILocalVariable(name: "state_count", scope: !4216, file: !3, line: 997, type: !125)
!4230 = !DILocation(line: 997, column: 12, scope: !4216)
!4231 = !DILocation(line: 997, column: 26, scope: !4216)
!4232 = !DILocation(line: 997, column: 38, scope: !4216)
!4233 = !DILocalVariable(name: "p", scope: !4216, file: !3, line: 998, type: !2712)
!4234 = !DILocation(line: 998, column: 25, scope: !4216)
!4235 = !DILocalVariable(name: "t", scope: !4216, file: !3, line: 998, type: !2712)
!4236 = !DILocation(line: 998, column: 29, scope: !4216)
!4237 = !DILocation(line: 998, column: 33, scope: !4216)
!4238 = !DILocation(line: 998, column: 45, scope: !4216)
!4239 = !DILocation(line: 1000, column: 2, scope: !4216)
!4240 = !DILocation(line: 1000, column: 14, scope: !4216)
!4241 = !DILocation(line: 1000, column: 36, scope: !4216)
!4242 = !DILocation(line: 1001, column: 9, scope: !4243)
!4243 = distinct !DILexicalBlock(scope: !4216, file: !3, line: 1001, column: 2)
!4244 = !DILocation(line: 1001, column: 7, scope: !4243)
!4245 = !DILocation(line: 1001, column: 14, scope: !4246)
!4246 = distinct !DILexicalBlock(scope: !4243, file: !3, line: 1001, column: 2)
!4247 = !DILocation(line: 1001, column: 18, scope: !4246)
!4248 = !DILocation(line: 1001, column: 16, scope: !4246)
!4249 = !DILocation(line: 1001, column: 2, scope: !4243)
!4250 = !DILocalVariable(name: "flpi", scope: !4251, file: !3, line: 1002, type: !2712)
!4251 = distinct !DILexicalBlock(scope: !4246, file: !3, line: 1001, column: 41)
!4252 = !DILocation(line: 1002, column: 26, scope: !4251)
!4253 = !DILocation(line: 1004, column: 9, scope: !4254)
!4254 = distinct !DILexicalBlock(scope: !4251, file: !3, line: 1004, column: 7)
!4255 = !DILocation(line: 1004, column: 12, scope: !4254)
!4256 = !DILocation(line: 1004, column: 18, scope: !4254)
!4257 = !DILocation(line: 1004, column: 7, scope: !4251)
!4258 = !DILocation(line: 1005, column: 4, scope: !4254)
!4259 = !DILocation(line: 1007, column: 7, scope: !4260)
!4260 = distinct !DILexicalBlock(scope: !4251, file: !3, line: 1007, column: 7)
!4261 = !DILocation(line: 1007, column: 22, scope: !4260)
!4262 = !DILocation(line: 1007, column: 7, scope: !4251)
!4263 = !DILocation(line: 1008, column: 4, scope: !4264)
!4264 = distinct !DILexicalBlock(scope: !4260, file: !3, line: 1007, column: 51)
!4265 = !DILocation(line: 1010, column: 4, scope: !4264)
!4266 = !DILocation(line: 1011, column: 4, scope: !4264)
!4267 = !DILocation(line: 1014, column: 11, scope: !4251)
!4268 = !DILocation(line: 1014, column: 15, scope: !4251)
!4269 = !DILocation(line: 1014, column: 21, scope: !4251)
!4270 = !DILocation(line: 1014, column: 32, scope: !4251)
!4271 = !DILocation(line: 1014, column: 8, scope: !4251)
!4272 = !DILocation(line: 1016, column: 8, scope: !4273)
!4273 = distinct !DILexicalBlock(scope: !4251, file: !3, line: 1016, column: 7)
!4274 = !DILocation(line: 1016, column: 7, scope: !4251)
!4275 = !DILocation(line: 1017, column: 11, scope: !4276)
!4276 = distinct !DILexicalBlock(scope: !4273, file: !3, line: 1016, column: 20)
!4277 = !DILocation(line: 1017, column: 4, scope: !4276)
!4278 = !DILocation(line: 1017, column: 17, scope: !4276)
!4279 = !DILocation(line: 1018, column: 26, scope: !4276)
!4280 = !DILocation(line: 1018, column: 38, scope: !4276)
!4281 = !DILocation(line: 1018, column: 4, scope: !4276)
!4282 = !DILocation(line: 1019, column: 18, scope: !4276)
!4283 = !DILocation(line: 1020, column: 4, scope: !4276)
!4284 = !DILocation(line: 1023, column: 10, scope: !4285)
!4285 = distinct !DILexicalBlock(scope: !4251, file: !3, line: 1023, column: 3)
!4286 = !DILocation(line: 1023, column: 8, scope: !4285)
!4287 = !DILocation(line: 1023, column: 15, scope: !4288)
!4288 = distinct !DILexicalBlock(scope: !4285, file: !3, line: 1023, column: 3)
!4289 = !DILocation(line: 1023, column: 19, scope: !4288)
!4290 = !DILocation(line: 1023, column: 31, scope: !4288)
!4291 = !DILocation(line: 1023, column: 17, scope: !4288)
!4292 = !DILocation(line: 1023, column: 3, scope: !4285)
!4293 = !DILocation(line: 1024, column: 8, scope: !4294)
!4294 = distinct !DILexicalBlock(scope: !4288, file: !3, line: 1023, column: 59)
!4295 = !DILocation(line: 1024, column: 20, scope: !4294)
!4296 = !DILocation(line: 1024, column: 37, scope: !4294)
!4297 = !DILocation(line: 1024, column: 6, scope: !4294)
!4298 = !DILocation(line: 1025, column: 8, scope: !4299)
!4299 = distinct !DILexicalBlock(scope: !4294, file: !3, line: 1025, column: 8)
!4300 = !DILocation(line: 1025, column: 11, scope: !4299)
!4301 = !DILocation(line: 1025, column: 20, scope: !4299)
!4302 = !DILocation(line: 1025, column: 23, scope: !4299)
!4303 = !DILocation(line: 1025, column: 17, scope: !4299)
!4304 = !DILocation(line: 1025, column: 43, scope: !4299)
!4305 = !DILocation(line: 1026, column: 27, scope: !4299)
!4306 = !DILocation(line: 1026, column: 30, scope: !4299)
!4307 = !DILocation(line: 1026, column: 33, scope: !4299)
!4308 = !DILocation(line: 1026, column: 8, scope: !4299)
!4309 = !DILocation(line: 1025, column: 8, scope: !4294)
!4310 = !DILocation(line: 1027, column: 27, scope: !4311)
!4311 = distinct !DILexicalBlock(scope: !4299, file: !3, line: 1026, column: 40)
!4312 = !DILocation(line: 1027, column: 39, scope: !4311)
!4313 = !DILocation(line: 1027, column: 5, scope: !4311)
!4314 = !DILocation(line: 1028, column: 19, scope: !4311)
!4315 = !DILocation(line: 1029, column: 9, scope: !4311)
!4316 = !DILocation(line: 1030, column: 4, scope: !4311)
!4317 = !DILocation(line: 1031, column: 3, scope: !4294)
!4318 = !DILocation(line: 1023, column: 55, scope: !4288)
!4319 = !DILocation(line: 1023, column: 3, scope: !4288)
!4320 = distinct !{!4320, !4292, !4321}
!4321 = !DILocation(line: 1031, column: 3, scope: !4285)
!4322 = !DILocation(line: 1032, column: 2, scope: !4251)
!4323 = !DILocation(line: 1001, column: 32, scope: !4246)
!4324 = !DILocation(line: 1001, column: 37, scope: !4246)
!4325 = !DILocation(line: 1001, column: 2, scope: !4246)
!4326 = distinct !{!4326, !4249, !4327}
!4327 = !DILocation(line: 1032, column: 2, scope: !4243)
!4328 = !DILocation(line: 1034, column: 8, scope: !4216)
!4329 = !DILocation(line: 1034, column: 20, scope: !4216)
!4330 = !DILocation(line: 1034, column: 2, scope: !4216)
!4331 = !DILocation(line: 1035, column: 2, scope: !4216)
!4332 = distinct !DISubprogram(name: "kcalloc", scope: !89, file: !89, line: 601, type: !4333, scopeLine: 602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!4333 = !DISubroutineType(types: !4334)
!4334 = !{!163, !465, !465, !1699}
!4335 = !DILocalVariable(name: "n", arg: 1, scope: !4332, file: !89, line: 601, type: !465)
!4336 = !DILocation(line: 601, column: 36, scope: !4332)
!4337 = !DILocalVariable(name: "size", arg: 2, scope: !4332, file: !89, line: 601, type: !465)
!4338 = !DILocation(line: 601, column: 46, scope: !4332)
!4339 = !DILocalVariable(name: "flags", arg: 3, scope: !4332, file: !89, line: 601, type: !1699)
!4340 = !DILocation(line: 601, column: 58, scope: !4332)
!4341 = !DILocation(line: 603, column: 23, scope: !4332)
!4342 = !DILocation(line: 603, column: 26, scope: !4332)
!4343 = !DILocation(line: 603, column: 32, scope: !4332)
!4344 = !DILocation(line: 603, column: 38, scope: !4332)
!4345 = !DILocation(line: 603, column: 9, scope: !4332)
!4346 = !DILocation(line: 603, column: 2, scope: !4332)
!4347 = distinct !DISubprogram(name: "obj_get_integer", scope: !3, file: !3, line: 826, type: !4348, scopeLine: 827, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!4348 = !DISubroutineType(types: !4349)
!4349 = !{!125, !3505, !865}
!4350 = !DILocalVariable(name: "obj", arg: 1, scope: !4347, file: !3, line: 826, type: !3505)
!4351 = !DILocation(line: 826, column: 47, scope: !4347)
!4352 = !DILocalVariable(name: "value", arg: 2, scope: !4347, file: !3, line: 826, type: !865)
!4353 = !DILocation(line: 826, column: 57, scope: !4347)
!4354 = !DILocation(line: 828, column: 6, scope: !4355)
!4355 = distinct !DILexicalBlock(scope: !4347, file: !3, line: 828, column: 6)
!4356 = !DILocation(line: 828, column: 11, scope: !4355)
!4357 = !DILocation(line: 828, column: 16, scope: !4355)
!4358 = !DILocation(line: 828, column: 6, scope: !4347)
!4359 = !DILocation(line: 829, column: 3, scope: !4355)
!4360 = !DILocation(line: 831, column: 11, scope: !4347)
!4361 = !DILocation(line: 831, column: 16, scope: !4347)
!4362 = !DILocation(line: 831, column: 24, scope: !4347)
!4363 = !DILocation(line: 831, column: 3, scope: !4347)
!4364 = !DILocation(line: 831, column: 9, scope: !4347)
!4365 = !DILocation(line: 832, column: 2, scope: !4347)
!4366 = !DILocation(line: 833, column: 1, scope: !4347)
!4367 = distinct !DISubprogram(name: "kmalloc_array", scope: !89, file: !89, line: 584, type: !4333, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!4368 = !DILocation(line: 445, column: 72, scope: !3120, inlinedAt: !4369)
!4369 = distinct !DILocation(line: 552, column: 10, scope: !3125, inlinedAt: !4370)
!4370 = distinct !DILocation(line: 591, column: 10, scope: !4371)
!4371 = distinct !DILexicalBlock(scope: !4367, file: !89, line: 590, column: 6)
!4372 = !DILocation(line: 446, column: 9, scope: !3120, inlinedAt: !4369)
!4373 = !DILocation(line: 446, column: 23, scope: !3120, inlinedAt: !4369)
!4374 = !DILocation(line: 448, column: 8, scope: !3120, inlinedAt: !4369)
!4375 = !DILocation(line: 318, column: 67, scope: !3136, inlinedAt: !4376)
!4376 = distinct !DILocation(line: 553, column: 20, scope: !3125, inlinedAt: !4370)
!4377 = !DILocation(line: 346, column: 58, scope: !3142, inlinedAt: !4378)
!4378 = distinct !DILocation(line: 547, column: 11, scope: !3125, inlinedAt: !4370)
!4379 = !DILocation(line: 472, column: 28, scope: !3148, inlinedAt: !4380)
!4380 = distinct !DILocation(line: 481, column: 9, scope: !3153, inlinedAt: !4381)
!4381 = distinct !DILocation(line: 545, column: 11, scope: !3155, inlinedAt: !4370)
!4382 = !DILocation(line: 472, column: 40, scope: !3148, inlinedAt: !4380)
!4383 = !DILocation(line: 472, column: 60, scope: !3148, inlinedAt: !4380)
!4384 = !DILocation(line: 478, column: 51, scope: !3153, inlinedAt: !4381)
!4385 = !DILocation(line: 478, column: 63, scope: !3153, inlinedAt: !4381)
!4386 = !DILocation(line: 480, column: 15, scope: !3153, inlinedAt: !4381)
!4387 = !DILocation(line: 538, column: 45, scope: !3127, inlinedAt: !4370)
!4388 = !DILocation(line: 538, column: 57, scope: !3127, inlinedAt: !4370)
!4389 = !DILocation(line: 542, column: 16, scope: !3125, inlinedAt: !4370)
!4390 = !DILocalVariable(name: "n", arg: 1, scope: !4367, file: !89, line: 584, type: !465)
!4391 = !DILocation(line: 584, column: 42, scope: !4367)
!4392 = !DILocalVariable(name: "size", arg: 2, scope: !4367, file: !89, line: 584, type: !465)
!4393 = !DILocation(line: 584, column: 52, scope: !4367)
!4394 = !DILocalVariable(name: "flags", arg: 3, scope: !4367, file: !89, line: 584, type: !1699)
!4395 = !DILocation(line: 584, column: 64, scope: !4367)
!4396 = !DILocalVariable(name: "bytes", scope: !4367, file: !89, line: 586, type: !465)
!4397 = !DILocation(line: 586, column: 9, scope: !4367)
!4398 = !DILocalVariable(name: "__a", scope: !4399, file: !89, line: 588, type: !465)
!4399 = distinct !DILexicalBlock(scope: !4400, file: !89, line: 588, column: 6)
!4400 = distinct !DILexicalBlock(scope: !4367, file: !89, line: 588, column: 6)
!4401 = !DILocation(line: 588, column: 6, scope: !4399)
!4402 = !DILocalVariable(name: "__b", scope: !4399, file: !89, line: 588, type: !465)
!4403 = !DILocalVariable(name: "__d", scope: !4399, file: !89, line: 588, type: !4404)
!4404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!4405 = !DILocation(line: 588, column: 6, scope: !4400)
!4406 = !DILocation(line: 588, column: 6, scope: !4367)
!4407 = !DILocation(line: 589, column: 3, scope: !4400)
!4408 = !DILocation(line: 590, column: 27, scope: !4371)
!4409 = !DILocation(line: 590, column: 6, scope: !4371)
!4410 = !DILocation(line: 590, column: 30, scope: !4371)
!4411 = !DILocation(line: 590, column: 54, scope: !4371)
!4412 = !DILocation(line: 590, column: 33, scope: !4371)
!4413 = !DILocation(line: 590, column: 6, scope: !4367)
!4414 = !DILocation(line: 591, column: 18, scope: !4371)
!4415 = !DILocation(line: 591, column: 25, scope: !4371)
!4416 = !DILocation(line: 540, column: 27, scope: !3126, inlinedAt: !4370)
!4417 = !DILocation(line: 540, column: 6, scope: !3126, inlinedAt: !4370)
!4418 = !DILocation(line: 540, column: 6, scope: !3127, inlinedAt: !4370)
!4419 = !DILocation(line: 544, column: 7, scope: !3155, inlinedAt: !4370)
!4420 = !DILocation(line: 544, column: 12, scope: !3155, inlinedAt: !4370)
!4421 = !DILocation(line: 544, column: 7, scope: !3125, inlinedAt: !4370)
!4422 = !DILocation(line: 545, column: 25, scope: !3155, inlinedAt: !4370)
!4423 = !DILocation(line: 545, column: 31, scope: !3155, inlinedAt: !4370)
!4424 = !DILocation(line: 480, column: 33, scope: !3153, inlinedAt: !4381)
!4425 = !DILocation(line: 480, column: 23, scope: !3153, inlinedAt: !4381)
!4426 = !DILocation(line: 481, column: 29, scope: !3153, inlinedAt: !4381)
!4427 = !DILocation(line: 481, column: 35, scope: !3153, inlinedAt: !4381)
!4428 = !DILocation(line: 481, column: 42, scope: !3153, inlinedAt: !4381)
!4429 = !DILocation(line: 474, column: 23, scope: !3148, inlinedAt: !4380)
!4430 = !DILocation(line: 474, column: 29, scope: !3148, inlinedAt: !4380)
!4431 = !DILocation(line: 474, column: 36, scope: !3148, inlinedAt: !4380)
!4432 = !DILocation(line: 474, column: 9, scope: !3148, inlinedAt: !4380)
!4433 = !DILocation(line: 545, column: 4, scope: !3155, inlinedAt: !4370)
!4434 = !DILocation(line: 547, column: 25, scope: !3125, inlinedAt: !4370)
!4435 = !DILocation(line: 348, column: 7, scope: !3199, inlinedAt: !4378)
!4436 = !DILocation(line: 348, column: 6, scope: !3142, inlinedAt: !4378)
!4437 = !DILocation(line: 349, column: 3, scope: !3199, inlinedAt: !4378)
!4438 = !DILocation(line: 351, column: 6, scope: !3203, inlinedAt: !4378)
!4439 = !DILocation(line: 351, column: 11, scope: !3203, inlinedAt: !4378)
!4440 = !DILocation(line: 351, column: 6, scope: !3142, inlinedAt: !4378)
!4441 = !DILocation(line: 352, column: 3, scope: !3203, inlinedAt: !4378)
!4442 = !DILocation(line: 354, column: 32, scope: !3208, inlinedAt: !4378)
!4443 = !DILocation(line: 354, column: 37, scope: !3208, inlinedAt: !4378)
!4444 = !DILocation(line: 354, column: 42, scope: !3208, inlinedAt: !4378)
!4445 = !DILocation(line: 354, column: 45, scope: !3208, inlinedAt: !4378)
!4446 = !DILocation(line: 354, column: 50, scope: !3208, inlinedAt: !4378)
!4447 = !DILocation(line: 354, column: 6, scope: !3142, inlinedAt: !4378)
!4448 = !DILocation(line: 355, column: 3, scope: !3208, inlinedAt: !4378)
!4449 = !DILocation(line: 356, column: 32, scope: !3216, inlinedAt: !4378)
!4450 = !DILocation(line: 356, column: 37, scope: !3216, inlinedAt: !4378)
!4451 = !DILocation(line: 356, column: 43, scope: !3216, inlinedAt: !4378)
!4452 = !DILocation(line: 356, column: 46, scope: !3216, inlinedAt: !4378)
!4453 = !DILocation(line: 356, column: 51, scope: !3216, inlinedAt: !4378)
!4454 = !DILocation(line: 356, column: 6, scope: !3142, inlinedAt: !4378)
!4455 = !DILocation(line: 357, column: 3, scope: !3216, inlinedAt: !4378)
!4456 = !DILocation(line: 358, column: 6, scope: !3224, inlinedAt: !4378)
!4457 = !DILocation(line: 358, column: 11, scope: !3224, inlinedAt: !4378)
!4458 = !DILocation(line: 358, column: 6, scope: !3142, inlinedAt: !4378)
!4459 = !DILocation(line: 358, column: 26, scope: !3224, inlinedAt: !4378)
!4460 = !DILocation(line: 359, column: 6, scope: !3229, inlinedAt: !4378)
!4461 = !DILocation(line: 359, column: 11, scope: !3229, inlinedAt: !4378)
!4462 = !DILocation(line: 359, column: 6, scope: !3142, inlinedAt: !4378)
!4463 = !DILocation(line: 359, column: 26, scope: !3229, inlinedAt: !4378)
!4464 = !DILocation(line: 360, column: 6, scope: !3234, inlinedAt: !4378)
!4465 = !DILocation(line: 360, column: 11, scope: !3234, inlinedAt: !4378)
!4466 = !DILocation(line: 360, column: 6, scope: !3142, inlinedAt: !4378)
!4467 = !DILocation(line: 360, column: 26, scope: !3234, inlinedAt: !4378)
!4468 = !DILocation(line: 361, column: 6, scope: !3239, inlinedAt: !4378)
!4469 = !DILocation(line: 361, column: 11, scope: !3239, inlinedAt: !4378)
!4470 = !DILocation(line: 361, column: 6, scope: !3142, inlinedAt: !4378)
!4471 = !DILocation(line: 361, column: 26, scope: !3239, inlinedAt: !4378)
!4472 = !DILocation(line: 362, column: 6, scope: !3244, inlinedAt: !4378)
!4473 = !DILocation(line: 362, column: 11, scope: !3244, inlinedAt: !4378)
!4474 = !DILocation(line: 362, column: 6, scope: !3142, inlinedAt: !4378)
!4475 = !DILocation(line: 362, column: 26, scope: !3244, inlinedAt: !4378)
!4476 = !DILocation(line: 363, column: 6, scope: !3249, inlinedAt: !4378)
!4477 = !DILocation(line: 363, column: 11, scope: !3249, inlinedAt: !4378)
!4478 = !DILocation(line: 363, column: 6, scope: !3142, inlinedAt: !4378)
!4479 = !DILocation(line: 363, column: 26, scope: !3249, inlinedAt: !4378)
!4480 = !DILocation(line: 364, column: 6, scope: !3254, inlinedAt: !4378)
!4481 = !DILocation(line: 364, column: 11, scope: !3254, inlinedAt: !4378)
!4482 = !DILocation(line: 364, column: 6, scope: !3142, inlinedAt: !4378)
!4483 = !DILocation(line: 364, column: 26, scope: !3254, inlinedAt: !4378)
!4484 = !DILocation(line: 365, column: 6, scope: !3259, inlinedAt: !4378)
!4485 = !DILocation(line: 365, column: 11, scope: !3259, inlinedAt: !4378)
!4486 = !DILocation(line: 365, column: 6, scope: !3142, inlinedAt: !4378)
!4487 = !DILocation(line: 365, column: 26, scope: !3259, inlinedAt: !4378)
!4488 = !DILocation(line: 366, column: 6, scope: !3264, inlinedAt: !4378)
!4489 = !DILocation(line: 366, column: 11, scope: !3264, inlinedAt: !4378)
!4490 = !DILocation(line: 366, column: 6, scope: !3142, inlinedAt: !4378)
!4491 = !DILocation(line: 366, column: 26, scope: !3264, inlinedAt: !4378)
!4492 = !DILocation(line: 367, column: 6, scope: !3269, inlinedAt: !4378)
!4493 = !DILocation(line: 367, column: 11, scope: !3269, inlinedAt: !4378)
!4494 = !DILocation(line: 367, column: 6, scope: !3142, inlinedAt: !4378)
!4495 = !DILocation(line: 367, column: 26, scope: !3269, inlinedAt: !4378)
!4496 = !DILocation(line: 368, column: 6, scope: !3274, inlinedAt: !4378)
!4497 = !DILocation(line: 368, column: 11, scope: !3274, inlinedAt: !4378)
!4498 = !DILocation(line: 368, column: 6, scope: !3142, inlinedAt: !4378)
!4499 = !DILocation(line: 368, column: 26, scope: !3274, inlinedAt: !4378)
!4500 = !DILocation(line: 369, column: 6, scope: !3279, inlinedAt: !4378)
!4501 = !DILocation(line: 369, column: 11, scope: !3279, inlinedAt: !4378)
!4502 = !DILocation(line: 369, column: 6, scope: !3142, inlinedAt: !4378)
!4503 = !DILocation(line: 369, column: 26, scope: !3279, inlinedAt: !4378)
!4504 = !DILocation(line: 370, column: 6, scope: !3284, inlinedAt: !4378)
!4505 = !DILocation(line: 370, column: 11, scope: !3284, inlinedAt: !4378)
!4506 = !DILocation(line: 370, column: 6, scope: !3142, inlinedAt: !4378)
!4507 = !DILocation(line: 370, column: 26, scope: !3284, inlinedAt: !4378)
!4508 = !DILocation(line: 371, column: 6, scope: !3289, inlinedAt: !4378)
!4509 = !DILocation(line: 371, column: 11, scope: !3289, inlinedAt: !4378)
!4510 = !DILocation(line: 371, column: 6, scope: !3142, inlinedAt: !4378)
!4511 = !DILocation(line: 371, column: 26, scope: !3289, inlinedAt: !4378)
!4512 = !DILocation(line: 372, column: 6, scope: !3294, inlinedAt: !4378)
!4513 = !DILocation(line: 372, column: 11, scope: !3294, inlinedAt: !4378)
!4514 = !DILocation(line: 372, column: 6, scope: !3142, inlinedAt: !4378)
!4515 = !DILocation(line: 372, column: 26, scope: !3294, inlinedAt: !4378)
!4516 = !DILocation(line: 373, column: 6, scope: !3299, inlinedAt: !4378)
!4517 = !DILocation(line: 373, column: 11, scope: !3299, inlinedAt: !4378)
!4518 = !DILocation(line: 373, column: 6, scope: !3142, inlinedAt: !4378)
!4519 = !DILocation(line: 373, column: 26, scope: !3299, inlinedAt: !4378)
!4520 = !DILocation(line: 374, column: 6, scope: !3304, inlinedAt: !4378)
!4521 = !DILocation(line: 374, column: 11, scope: !3304, inlinedAt: !4378)
!4522 = !DILocation(line: 374, column: 6, scope: !3142, inlinedAt: !4378)
!4523 = !DILocation(line: 374, column: 26, scope: !3304, inlinedAt: !4378)
!4524 = !DILocation(line: 375, column: 6, scope: !3309, inlinedAt: !4378)
!4525 = !DILocation(line: 375, column: 11, scope: !3309, inlinedAt: !4378)
!4526 = !DILocation(line: 375, column: 6, scope: !3142, inlinedAt: !4378)
!4527 = !DILocation(line: 375, column: 27, scope: !3309, inlinedAt: !4378)
!4528 = !DILocation(line: 376, column: 6, scope: !3314, inlinedAt: !4378)
!4529 = !DILocation(line: 376, column: 11, scope: !3314, inlinedAt: !4378)
!4530 = !DILocation(line: 376, column: 6, scope: !3142, inlinedAt: !4378)
!4531 = !DILocation(line: 376, column: 32, scope: !3314, inlinedAt: !4378)
!4532 = !DILocation(line: 377, column: 6, scope: !3319, inlinedAt: !4378)
!4533 = !DILocation(line: 377, column: 11, scope: !3319, inlinedAt: !4378)
!4534 = !DILocation(line: 377, column: 6, scope: !3142, inlinedAt: !4378)
!4535 = !DILocation(line: 377, column: 32, scope: !3319, inlinedAt: !4378)
!4536 = !DILocation(line: 378, column: 6, scope: !3324, inlinedAt: !4378)
!4537 = !DILocation(line: 378, column: 11, scope: !3324, inlinedAt: !4378)
!4538 = !DILocation(line: 378, column: 6, scope: !3142, inlinedAt: !4378)
!4539 = !DILocation(line: 378, column: 32, scope: !3324, inlinedAt: !4378)
!4540 = !DILocation(line: 379, column: 6, scope: !3329, inlinedAt: !4378)
!4541 = !DILocation(line: 379, column: 11, scope: !3329, inlinedAt: !4378)
!4542 = !DILocation(line: 379, column: 6, scope: !3142, inlinedAt: !4378)
!4543 = !DILocation(line: 379, column: 33, scope: !3329, inlinedAt: !4378)
!4544 = !DILocation(line: 380, column: 6, scope: !3334, inlinedAt: !4378)
!4545 = !DILocation(line: 380, column: 11, scope: !3334, inlinedAt: !4378)
!4546 = !DILocation(line: 380, column: 6, scope: !3142, inlinedAt: !4378)
!4547 = !DILocation(line: 380, column: 33, scope: !3334, inlinedAt: !4378)
!4548 = !DILocation(line: 381, column: 6, scope: !3339, inlinedAt: !4378)
!4549 = !DILocation(line: 381, column: 11, scope: !3339, inlinedAt: !4378)
!4550 = !DILocation(line: 381, column: 6, scope: !3142, inlinedAt: !4378)
!4551 = !DILocation(line: 381, column: 33, scope: !3339, inlinedAt: !4378)
!4552 = !DILocation(line: 382, column: 2, scope: !3344, inlinedAt: !4378)
!4553 = !DILocation(line: 382, column: 2, scope: !3348, inlinedAt: !4378)
!4554 = !DILocation(line: 382, column: 2, scope: !3349, inlinedAt: !4378)
!4555 = !DILocation(line: 386, column: 1, scope: !3142, inlinedAt: !4378)
!4556 = !DILocation(line: 547, column: 9, scope: !3125, inlinedAt: !4370)
!4557 = !DILocation(line: 549, column: 8, scope: !3355, inlinedAt: !4370)
!4558 = !DILocation(line: 549, column: 7, scope: !3125, inlinedAt: !4370)
!4559 = !DILocation(line: 550, column: 4, scope: !3355, inlinedAt: !4370)
!4560 = !DILocation(line: 553, column: 33, scope: !3125, inlinedAt: !4370)
!4561 = !DILocation(line: 325, column: 6, scope: !3360, inlinedAt: !4376)
!4562 = !DILocation(line: 325, column: 6, scope: !3136, inlinedAt: !4376)
!4563 = !DILocation(line: 326, column: 3, scope: !3360, inlinedAt: !4376)
!4564 = !DILocation(line: 332, column: 9, scope: !3136, inlinedAt: !4376)
!4565 = !DILocation(line: 332, column: 15, scope: !3136, inlinedAt: !4376)
!4566 = !DILocation(line: 332, column: 2, scope: !3136, inlinedAt: !4376)
!4567 = !DILocation(line: 336, column: 1, scope: !3136, inlinedAt: !4376)
!4568 = !DILocation(line: 553, column: 5, scope: !3125, inlinedAt: !4370)
!4569 = !DILocation(line: 553, column: 41, scope: !3125, inlinedAt: !4370)
!4570 = !DILocation(line: 554, column: 5, scope: !3125, inlinedAt: !4370)
!4571 = !DILocation(line: 554, column: 12, scope: !3125, inlinedAt: !4370)
!4572 = !DILocation(line: 448, column: 31, scope: !3120, inlinedAt: !4369)
!4573 = !DILocation(line: 448, column: 34, scope: !3120, inlinedAt: !4369)
!4574 = !DILocation(line: 448, column: 14, scope: !3120, inlinedAt: !4369)
!4575 = !DILocation(line: 450, column: 22, scope: !3120, inlinedAt: !4369)
!4576 = !DILocation(line: 450, column: 25, scope: !3120, inlinedAt: !4369)
!4577 = !DILocation(line: 450, column: 30, scope: !3120, inlinedAt: !4369)
!4578 = !DILocation(line: 450, column: 36, scope: !3120, inlinedAt: !4369)
!4579 = !DILocation(line: 450, column: 8, scope: !3120, inlinedAt: !4369)
!4580 = !DILocation(line: 450, column: 6, scope: !3120, inlinedAt: !4369)
!4581 = !DILocation(line: 451, column: 9, scope: !3120, inlinedAt: !4369)
!4582 = !DILocation(line: 552, column: 3, scope: !3125, inlinedAt: !4370)
!4583 = !DILocation(line: 557, column: 19, scope: !3127, inlinedAt: !4370)
!4584 = !DILocation(line: 557, column: 25, scope: !3127, inlinedAt: !4370)
!4585 = !DILocation(line: 557, column: 9, scope: !3127, inlinedAt: !4370)
!4586 = !DILocation(line: 557, column: 2, scope: !3127, inlinedAt: !4370)
!4587 = !DILocation(line: 558, column: 1, scope: !3127, inlinedAt: !4370)
!4588 = !DILocation(line: 591, column: 3, scope: !4371)
!4589 = !DILocation(line: 592, column: 19, scope: !4367)
!4590 = !DILocation(line: 592, column: 26, scope: !4367)
!4591 = !DILocation(line: 592, column: 9, scope: !4367)
!4592 = !DILocation(line: 592, column: 2, scope: !4367)
!4593 = !DILocation(line: 593, column: 1, scope: !4367)
!4594 = distinct !DISubprogram(name: "__must_check_overflow", scope: !4595, file: !4595, line: 52, type: !4596, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!4595 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!4596 = !DISubroutineType(types: !4597)
!4597 = !{!324, !324}
!4598 = !DILocalVariable(name: "overflow", arg: 1, scope: !4594, file: !4595, line: 52, type: !324)
!4599 = !DILocation(line: 52, column: 60, scope: !4594)
!4600 = !DILocation(line: 54, column: 9, scope: !4594)
!4601 = !DILocation(line: 54, column: 2, scope: !4594)
!4602 = distinct !DISubprogram(name: "get_order", scope: !4603, file: !4603, line: 29, type: !4604, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!4603 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4604 = !DISubroutineType(types: !4605)
!4605 = !{!125, !286}
!4606 = !DILocalVariable(name: "x", arg: 1, scope: !4607, file: !4608, line: 366, type: !128)
!4607 = distinct !DISubprogram(name: "fls64", scope: !4608, file: !4608, line: 366, type: !4609, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!4608 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4609 = !DISubroutineType(types: !4610)
!4610 = !{!125, !128}
!4611 = !DILocation(line: 366, column: 40, scope: !4607, inlinedAt: !4612)
!4612 = distinct !DILocation(line: 46, column: 9, scope: !4602)
!4613 = !DILocalVariable(name: "bitpos", scope: !4607, file: !4608, line: 368, type: !125)
!4614 = !DILocation(line: 368, column: 6, scope: !4607, inlinedAt: !4612)
!4615 = !DILocalVariable(name: "size", arg: 1, scope: !4602, file: !4603, line: 29, type: !286)
!4616 = !DILocation(line: 29, column: 63, scope: !4602)
!4617 = !DILocation(line: 31, column: 27, scope: !4618)
!4618 = distinct !DILexicalBlock(scope: !4602, file: !4603, line: 31, column: 6)
!4619 = !DILocation(line: 31, column: 6, scope: !4618)
!4620 = !DILocation(line: 31, column: 6, scope: !4602)
!4621 = !DILocation(line: 32, column: 8, scope: !4622)
!4622 = distinct !DILexicalBlock(scope: !4623, file: !4603, line: 32, column: 7)
!4623 = distinct !DILexicalBlock(scope: !4618, file: !4603, line: 31, column: 34)
!4624 = !DILocation(line: 32, column: 7, scope: !4623)
!4625 = !DILocation(line: 33, column: 4, scope: !4622)
!4626 = !DILocation(line: 35, column: 7, scope: !4627)
!4627 = distinct !DILexicalBlock(scope: !4623, file: !4603, line: 35, column: 7)
!4628 = !DILocation(line: 35, column: 12, scope: !4627)
!4629 = !DILocation(line: 35, column: 7, scope: !4623)
!4630 = !DILocation(line: 36, column: 4, scope: !4627)
!4631 = !DILocation(line: 38, column: 10, scope: !4623)
!4632 = !DILocation(line: 38, column: 28, scope: !4623)
!4633 = !DILocation(line: 38, column: 41, scope: !4623)
!4634 = !DILocation(line: 38, column: 3, scope: !4623)
!4635 = !DILocation(line: 41, column: 6, scope: !4602)
!4636 = !DILocation(line: 42, column: 7, scope: !4602)
!4637 = !DILocation(line: 46, column: 15, scope: !4602)
!4638 = !DILocation(line: 374, column: 2, scope: !4607, inlinedAt: !4612)
!4639 = !DILocation(line: 376, column: 14, scope: !4607, inlinedAt: !4612)
!4640 = !{i32 331664}
!4641 = !DILocation(line: 377, column: 9, scope: !4607, inlinedAt: !4612)
!4642 = !DILocation(line: 377, column: 16, scope: !4607, inlinedAt: !4612)
!4643 = !DILocation(line: 46, column: 2, scope: !4602)
!4644 = !DILocation(line: 48, column: 1, scope: !4602)
!4645 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4646, file: !4646, line: 30, type: !4647, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!4646 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4647 = !DISubroutineType(types: !4648)
!4648 = !{!125, !127}
!4649 = !DILocation(line: 366, column: 40, scope: !4607, inlinedAt: !4650)
!4650 = distinct !DILocation(line: 32, column: 9, scope: !4645)
!4651 = !DILocation(line: 368, column: 6, scope: !4607, inlinedAt: !4650)
!4652 = !DILocalVariable(name: "n", arg: 1, scope: !4645, file: !4646, line: 30, type: !127)
!4653 = !DILocation(line: 30, column: 21, scope: !4645)
!4654 = !DILocation(line: 32, column: 15, scope: !4645)
!4655 = !DILocation(line: 374, column: 2, scope: !4607, inlinedAt: !4650)
!4656 = !DILocation(line: 376, column: 14, scope: !4607, inlinedAt: !4650)
!4657 = !DILocation(line: 377, column: 9, scope: !4607, inlinedAt: !4650)
!4658 = !DILocation(line: 377, column: 16, scope: !4607, inlinedAt: !4650)
!4659 = !DILocation(line: 32, column: 18, scope: !4645)
!4660 = !DILocation(line: 32, column: 2, scope: !4645)
!4661 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !4662, file: !4662, line: 137, type: !4663, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!4662 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!4663 = !DISubroutineType(types: !4664)
!4664 = !{!163, !1282, !1363, !465, !1699}
!4665 = !DILocalVariable(name: "s", arg: 1, scope: !4661, file: !4662, line: 137, type: !1282)
!4666 = !DILocation(line: 137, column: 54, scope: !4661)
!4667 = !DILocalVariable(name: "object", arg: 2, scope: !4661, file: !4662, line: 137, type: !1363)
!4668 = !DILocation(line: 137, column: 69, scope: !4661)
!4669 = !DILocalVariable(name: "size", arg: 3, scope: !4661, file: !4662, line: 138, type: !465)
!4670 = !DILocation(line: 138, column: 12, scope: !4661)
!4671 = !DILocalVariable(name: "flags", arg: 4, scope: !4661, file: !4662, line: 138, type: !1699)
!4672 = !DILocation(line: 138, column: 24, scope: !4661)
!4673 = !DILocation(line: 140, column: 17, scope: !4661)
!4674 = !DILocation(line: 140, column: 2, scope: !4661)
!4675 = distinct !DISubprogram(name: "stash_composite_state", scope: !3, file: !3, line: 987, type: !4676, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!4676 = !DISubroutineType(types: !4677)
!4677 = !{null, !3734, !2712}
!4678 = !DILocalVariable(name: "curr_level", arg: 1, scope: !4675, file: !3, line: 987, type: !3734)
!4679 = !DILocation(line: 987, column: 65, scope: !4675)
!4680 = !DILocalVariable(name: "t", arg: 2, scope: !4675, file: !3, line: 988, type: !2712)
!4681 = !DILocation(line: 988, column: 30, scope: !4675)
!4682 = !DILocation(line: 990, column: 70, scope: !4675)
!4683 = !DILocation(line: 990, column: 2, scope: !4675)
!4684 = !DILocation(line: 990, column: 14, scope: !4675)
!4685 = !DILocation(line: 990, column: 31, scope: !4675)
!4686 = !DILocation(line: 990, column: 43, scope: !4675)
!4687 = !DILocation(line: 990, column: 64, scope: !4675)
!4688 = !DILocation(line: 990, column: 68, scope: !4675)
!4689 = !DILocation(line: 991, column: 1, scope: !4675)
!4690 = distinct !DISubprogram(name: "combine_lpi_states", scope: !3, file: !3, line: 958, type: !4691, scopeLine: 961, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!4691 = !DISubroutineType(types: !4692)
!4692 = !{!324, !2712, !2712, !2712}
!4693 = !DILocalVariable(name: "local", arg: 1, scope: !4690, file: !3, line: 958, type: !2712)
!4694 = !DILocation(line: 958, column: 55, scope: !4690)
!4695 = !DILocalVariable(name: "parent", arg: 2, scope: !4690, file: !3, line: 959, type: !2712)
!4696 = !DILocation(line: 959, column: 34, scope: !4690)
!4697 = !DILocalVariable(name: "result", arg: 3, scope: !4690, file: !3, line: 960, type: !2712)
!4698 = !DILocation(line: 960, column: 34, scope: !4690)
!4699 = !DILocation(line: 962, column: 6, scope: !4700)
!4700 = distinct !DILexicalBlock(scope: !4690, file: !3, line: 962, column: 6)
!4701 = !DILocation(line: 962, column: 14, scope: !4700)
!4702 = !DILocation(line: 962, column: 27, scope: !4700)
!4703 = !DILocation(line: 962, column: 6, scope: !4690)
!4704 = !DILocation(line: 963, column: 8, scope: !4705)
!4705 = distinct !DILexicalBlock(scope: !4706, file: !3, line: 963, column: 7)
!4706 = distinct !DILexicalBlock(scope: !4700, file: !3, line: 962, column: 51)
!4707 = !DILocation(line: 963, column: 16, scope: !4705)
!4708 = !DILocation(line: 963, column: 7, scope: !4706)
!4709 = !DILocation(line: 964, column: 4, scope: !4705)
!4710 = !DILocation(line: 965, column: 21, scope: !4706)
!4711 = !DILocation(line: 965, column: 28, scope: !4706)
!4712 = !DILocation(line: 965, column: 38, scope: !4706)
!4713 = !DILocation(line: 965, column: 46, scope: !4706)
!4714 = !DILocation(line: 965, column: 36, scope: !4706)
!4715 = !DILocation(line: 965, column: 3, scope: !4706)
!4716 = !DILocation(line: 965, column: 11, scope: !4706)
!4717 = !DILocation(line: 965, column: 19, scope: !4706)
!4718 = !DILocation(line: 966, column: 2, scope: !4706)
!4719 = !DILocation(line: 967, column: 21, scope: !4720)
!4720 = distinct !DILexicalBlock(scope: !4700, file: !3, line: 966, column: 9)
!4721 = !DILocation(line: 967, column: 29, scope: !4720)
!4722 = !DILocation(line: 967, column: 3, scope: !4720)
!4723 = !DILocation(line: 967, column: 11, scope: !4720)
!4724 = !DILocation(line: 967, column: 19, scope: !4720)
!4725 = !DILocalVariable(name: "__UNIQUE_ID___x176", scope: !4726, file: !3, line: 970, type: !173)
!4726 = distinct !DILexicalBlock(scope: !4690, file: !3, line: 970, column: 26)
!4727 = !DILocation(line: 970, column: 26, scope: !4726)
!4728 = !DILocalVariable(name: "__UNIQUE_ID___y177", scope: !4726, file: !3, line: 970, type: !173)
!4729 = !DILocation(line: 970, column: 2, scope: !4690)
!4730 = !DILocation(line: 970, column: 10, scope: !4690)
!4731 = !DILocation(line: 970, column: 24, scope: !4690)
!4732 = !DILocation(line: 971, column: 25, scope: !4690)
!4733 = !DILocation(line: 971, column: 32, scope: !4690)
!4734 = !DILocation(line: 971, column: 47, scope: !4690)
!4735 = !DILocation(line: 971, column: 55, scope: !4690)
!4736 = !DILocation(line: 971, column: 45, scope: !4690)
!4737 = !DILocation(line: 971, column: 2, scope: !4690)
!4738 = !DILocation(line: 971, column: 10, scope: !4690)
!4739 = !DILocation(line: 971, column: 23, scope: !4690)
!4740 = !DILocation(line: 972, column: 32, scope: !4690)
!4741 = !DILocation(line: 972, column: 40, scope: !4690)
!4742 = !DILocation(line: 972, column: 2, scope: !4690)
!4743 = !DILocation(line: 972, column: 10, scope: !4690)
!4744 = !DILocation(line: 972, column: 30, scope: !4690)
!4745 = !DILocation(line: 973, column: 25, scope: !4690)
!4746 = !DILocation(line: 973, column: 32, scope: !4690)
!4747 = !DILocation(line: 973, column: 2, scope: !4690)
!4748 = !DILocation(line: 973, column: 10, scope: !4690)
!4749 = !DILocation(line: 973, column: 23, scope: !4690)
!4750 = !DILocation(line: 975, column: 18, scope: !4690)
!4751 = !DILocation(line: 975, column: 26, scope: !4690)
!4752 = !DILocation(line: 975, column: 2, scope: !4690)
!4753 = !DILocation(line: 975, column: 10, scope: !4690)
!4754 = !DILocation(line: 975, column: 16, scope: !4690)
!4755 = !DILocation(line: 976, column: 23, scope: !4690)
!4756 = !DILocation(line: 976, column: 31, scope: !4690)
!4757 = !DILocation(line: 976, column: 2, scope: !4690)
!4758 = !DILocation(line: 976, column: 10, scope: !4690)
!4759 = !DILocation(line: 976, column: 21, scope: !4690)
!4760 = !DILocation(line: 977, column: 18, scope: !4690)
!4761 = !DILocation(line: 977, column: 26, scope: !4690)
!4762 = !DILocation(line: 977, column: 2, scope: !4690)
!4763 = !DILocation(line: 977, column: 10, scope: !4690)
!4764 = !DILocation(line: 977, column: 16, scope: !4690)
!4765 = !DILocation(line: 979, column: 10, scope: !4690)
!4766 = !DILocation(line: 979, column: 18, scope: !4690)
!4767 = !DILocation(line: 979, column: 24, scope: !4690)
!4768 = !DILocation(line: 979, column: 31, scope: !4690)
!4769 = !DILocation(line: 979, column: 2, scope: !4690)
!4770 = !DILocation(line: 980, column: 10, scope: !4690)
!4771 = !DILocation(line: 980, column: 18, scope: !4690)
!4772 = !DILocation(line: 980, column: 2, scope: !4690)
!4773 = !DILocation(line: 981, column: 10, scope: !4690)
!4774 = !DILocation(line: 981, column: 18, scope: !4690)
!4775 = !DILocation(line: 981, column: 24, scope: !4690)
!4776 = !DILocation(line: 981, column: 32, scope: !4690)
!4777 = !DILocation(line: 981, column: 2, scope: !4690)
!4778 = !DILocation(line: 982, column: 2, scope: !4690)
!4779 = !DILocation(line: 983, column: 1, scope: !4690)
!4780 = distinct !DISubprogram(name: "acpi_processor_get_power_info_cst", scope: !3, file: !3, line: 292, type: !318, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!4781 = !DILocalVariable(name: "pr", arg: 1, scope: !4780, file: !3, line: 292, type: !165)
!4782 = !DILocation(line: 292, column: 69, scope: !4780)
!4783 = !DILocalVariable(name: "ret", scope: !4780, file: !3, line: 294, type: !125)
!4784 = !DILocation(line: 294, column: 6, scope: !4780)
!4785 = !DILocation(line: 296, column: 6, scope: !4786)
!4786 = distinct !DILexicalBlock(scope: !4780, file: !3, line: 296, column: 6)
!4787 = !DILocation(line: 296, column: 6, scope: !4780)
!4788 = !DILocation(line: 297, column: 3, scope: !4786)
!4789 = !DILocation(line: 299, column: 36, scope: !4780)
!4790 = !DILocation(line: 299, column: 40, scope: !4780)
!4791 = !DILocation(line: 299, column: 48, scope: !4780)
!4792 = !DILocation(line: 299, column: 52, scope: !4780)
!4793 = !DILocation(line: 299, column: 57, scope: !4780)
!4794 = !DILocation(line: 299, column: 61, scope: !4780)
!4795 = !DILocation(line: 299, column: 8, scope: !4780)
!4796 = !DILocation(line: 299, column: 6, scope: !4780)
!4797 = !DILocation(line: 300, column: 6, scope: !4798)
!4798 = distinct !DILexicalBlock(scope: !4780, file: !3, line: 300, column: 6)
!4799 = !DILocation(line: 300, column: 6, scope: !4780)
!4800 = !DILocation(line: 301, column: 10, scope: !4798)
!4801 = !DILocation(line: 301, column: 3, scope: !4798)
!4802 = !DILocation(line: 303, column: 7, scope: !4803)
!4803 = distinct !DILexicalBlock(scope: !4780, file: !3, line: 303, column: 6)
!4804 = !DILocation(line: 303, column: 11, scope: !4803)
!4805 = !DILocation(line: 303, column: 17, scope: !4803)
!4806 = !DILocation(line: 303, column: 6, scope: !4780)
!4807 = !DILocation(line: 304, column: 3, scope: !4803)
!4808 = !DILocation(line: 306, column: 2, scope: !4780)
!4809 = !DILocation(line: 306, column: 6, scope: !4780)
!4810 = !DILocation(line: 306, column: 12, scope: !4780)
!4811 = !DILocation(line: 306, column: 20, scope: !4780)
!4812 = !DILocation(line: 307, column: 2, scope: !4780)
!4813 = !DILocation(line: 308, column: 1, scope: !4780)
!4814 = distinct !DISubprogram(name: "acpi_processor_get_power_info_fadt", scope: !3, file: !3, line: 210, type: !318, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!4815 = !DILocalVariable(name: "pr", arg: 1, scope: !4814, file: !3, line: 210, type: !165)
!4816 = !DILocation(line: 210, column: 70, scope: !4814)
!4817 = !DILocation(line: 213, column: 7, scope: !4818)
!4818 = distinct !DILexicalBlock(scope: !4814, file: !3, line: 213, column: 6)
!4819 = !DILocation(line: 213, column: 11, scope: !4818)
!4820 = !DILocation(line: 213, column: 6, scope: !4814)
!4821 = !DILocation(line: 214, column: 3, scope: !4818)
!4822 = !DILocation(line: 217, column: 2, scope: !4814)
!4823 = !DILocation(line: 217, column: 6, scope: !4814)
!4824 = !DILocation(line: 217, column: 12, scope: !4814)
!4825 = !DILocation(line: 217, column: 34, scope: !4814)
!4826 = !DILocation(line: 217, column: 39, scope: !4814)
!4827 = !DILocation(line: 218, column: 2, scope: !4814)
!4828 = !DILocation(line: 218, column: 6, scope: !4814)
!4829 = !DILocation(line: 218, column: 12, scope: !4814)
!4830 = !DILocation(line: 218, column: 34, scope: !4814)
!4831 = !DILocation(line: 218, column: 39, scope: !4814)
!4832 = !DILocation(line: 231, column: 44, scope: !4814)
!4833 = !DILocation(line: 231, column: 48, scope: !4814)
!4834 = !DILocation(line: 231, column: 53, scope: !4814)
!4835 = !DILocation(line: 231, column: 2, scope: !4814)
!4836 = !DILocation(line: 231, column: 6, scope: !4814)
!4837 = !DILocation(line: 231, column: 12, scope: !4814)
!4838 = !DILocation(line: 231, column: 34, scope: !4814)
!4839 = !DILocation(line: 231, column: 42, scope: !4814)
!4840 = !DILocation(line: 232, column: 44, scope: !4814)
!4841 = !DILocation(line: 232, column: 48, scope: !4814)
!4842 = !DILocation(line: 232, column: 53, scope: !4814)
!4843 = !DILocation(line: 232, column: 2, scope: !4814)
!4844 = !DILocation(line: 232, column: 6, scope: !4814)
!4845 = !DILocation(line: 232, column: 12, scope: !4814)
!4846 = !DILocation(line: 232, column: 34, scope: !4814)
!4847 = !DILocation(line: 232, column: 42, scope: !4814)
!4848 = !DILocation(line: 235, column: 58, scope: !4814)
!4849 = !DILocation(line: 235, column: 44, scope: !4814)
!4850 = !DILocation(line: 235, column: 2, scope: !4814)
!4851 = !DILocation(line: 235, column: 6, scope: !4814)
!4852 = !DILocation(line: 235, column: 12, scope: !4814)
!4853 = !DILocation(line: 235, column: 34, scope: !4814)
!4854 = !DILocation(line: 235, column: 42, scope: !4814)
!4855 = !DILocation(line: 236, column: 58, scope: !4814)
!4856 = !DILocation(line: 236, column: 44, scope: !4814)
!4857 = !DILocation(line: 236, column: 2, scope: !4814)
!4858 = !DILocation(line: 236, column: 6, scope: !4814)
!4859 = !DILocation(line: 236, column: 12, scope: !4814)
!4860 = !DILocation(line: 236, column: 34, scope: !4814)
!4861 = !DILocation(line: 236, column: 42, scope: !4814)
!4862 = !DILocation(line: 242, column: 20, scope: !4863)
!4863 = distinct !DILexicalBlock(scope: !4814, file: !3, line: 242, column: 6)
!4864 = !DILocation(line: 242, column: 6, scope: !4863)
!4865 = !DILocation(line: 242, column: 31, scope: !4863)
!4866 = !DILocation(line: 242, column: 6, scope: !4814)
!4867 = !DILocation(line: 246, column: 3, scope: !4868)
!4868 = distinct !DILexicalBlock(scope: !4863, file: !3, line: 242, column: 64)
!4869 = !DILocation(line: 246, column: 7, scope: !4868)
!4870 = !DILocation(line: 246, column: 13, scope: !4868)
!4871 = !DILocation(line: 246, column: 35, scope: !4868)
!4872 = !DILocation(line: 246, column: 43, scope: !4868)
!4873 = !DILocation(line: 247, column: 2, scope: !4868)
!4874 = !DILocation(line: 253, column: 20, scope: !4875)
!4875 = distinct !DILexicalBlock(scope: !4814, file: !3, line: 253, column: 6)
!4876 = !DILocation(line: 253, column: 6, scope: !4875)
!4877 = !DILocation(line: 253, column: 31, scope: !4875)
!4878 = !DILocation(line: 253, column: 6, scope: !4814)
!4879 = !DILocation(line: 257, column: 3, scope: !4880)
!4880 = distinct !DILexicalBlock(scope: !4875, file: !3, line: 253, column: 64)
!4881 = !DILocation(line: 257, column: 7, scope: !4880)
!4882 = !DILocation(line: 257, column: 13, scope: !4880)
!4883 = !DILocation(line: 257, column: 35, scope: !4880)
!4884 = !DILocation(line: 257, column: 43, scope: !4880)
!4885 = !DILocation(line: 258, column: 2, scope: !4880)
!4886 = !DILocation(line: 265, column: 11, scope: !4814)
!4887 = !DILocation(line: 265, column: 15, scope: !4814)
!4888 = !DILocation(line: 265, column: 21, scope: !4814)
!4889 = !DILocation(line: 265, column: 43, scope: !4814)
!4890 = !DILocation(line: 267, column: 5, scope: !4814)
!4891 = !DILocation(line: 267, column: 9, scope: !4814)
!4892 = !DILocation(line: 267, column: 15, scope: !4814)
!4893 = !DILocation(line: 267, column: 37, scope: !4814)
!4894 = !DILocation(line: 265, column: 2, scope: !4814)
!4895 = !DILocation(line: 268, column: 11, scope: !4814)
!4896 = !DILocation(line: 268, column: 15, scope: !4814)
!4897 = !DILocation(line: 268, column: 21, scope: !4814)
!4898 = !DILocation(line: 268, column: 43, scope: !4814)
!4899 = !DILocation(line: 270, column: 5, scope: !4814)
!4900 = !DILocation(line: 270, column: 9, scope: !4814)
!4901 = !DILocation(line: 270, column: 15, scope: !4814)
!4902 = !DILocation(line: 270, column: 37, scope: !4814)
!4903 = !DILocation(line: 268, column: 2, scope: !4814)
!4904 = !DILocation(line: 272, column: 2, scope: !4814)
!4905 = !DILocation(line: 273, column: 1, scope: !4814)
!4906 = distinct !DISubprogram(name: "acpi_processor_get_power_info_default", scope: !3, file: !3, line: 275, type: !318, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!4907 = !DILocalVariable(name: "pr", arg: 1, scope: !4906, file: !3, line: 275, type: !165)
!4908 = !DILocation(line: 275, column: 73, scope: !4906)
!4909 = !DILocation(line: 277, column: 7, scope: !4910)
!4910 = distinct !DILexicalBlock(scope: !4906, file: !3, line: 277, column: 6)
!4911 = !DILocation(line: 277, column: 11, scope: !4910)
!4912 = !DILocation(line: 277, column: 17, scope: !4910)
!4913 = !DILocation(line: 277, column: 39, scope: !4910)
!4914 = !DILocation(line: 277, column: 6, scope: !4906)
!4915 = !DILocation(line: 280, column: 3, scope: !4916)
!4916 = distinct !DILexicalBlock(scope: !4910, file: !3, line: 277, column: 46)
!4917 = !DILocation(line: 280, column: 7, scope: !4916)
!4918 = !DILocation(line: 280, column: 13, scope: !4916)
!4919 = !DILocation(line: 280, column: 35, scope: !4916)
!4920 = !DILocation(line: 280, column: 40, scope: !4916)
!4921 = !DILocation(line: 281, column: 3, scope: !4916)
!4922 = !DILocation(line: 281, column: 7, scope: !4916)
!4923 = !DILocation(line: 281, column: 13, scope: !4916)
!4924 = !DILocation(line: 281, column: 35, scope: !4916)
!4925 = !DILocation(line: 281, column: 41, scope: !4916)
!4926 = !DILocation(line: 282, column: 3, scope: !4916)
!4927 = !DILocation(line: 282, column: 7, scope: !4916)
!4928 = !DILocation(line: 282, column: 13, scope: !4916)
!4929 = !DILocation(line: 282, column: 35, scope: !4916)
!4930 = !DILocation(line: 282, column: 48, scope: !4916)
!4931 = !DILocation(line: 284, column: 12, scope: !4916)
!4932 = !DILocation(line: 284, column: 16, scope: !4916)
!4933 = !DILocation(line: 284, column: 22, scope: !4916)
!4934 = !DILocation(line: 284, column: 44, scope: !4916)
!4935 = !DILocation(line: 284, column: 3, scope: !4916)
!4936 = !DILocation(line: 286, column: 2, scope: !4916)
!4937 = !DILocation(line: 288, column: 2, scope: !4906)
!4938 = !DILocation(line: 288, column: 6, scope: !4906)
!4939 = !DILocation(line: 288, column: 12, scope: !4906)
!4940 = !DILocation(line: 288, column: 34, scope: !4906)
!4941 = !DILocation(line: 288, column: 40, scope: !4906)
!4942 = !DILocation(line: 289, column: 2, scope: !4906)
!4943 = distinct !DISubprogram(name: "acpi_processor_power_verify", scope: !3, file: !3, line: 391, type: !318, scopeLine: 392, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!4944 = !DILocalVariable(name: "pr", arg: 1, scope: !4943, file: !3, line: 391, type: !165)
!4945 = !DILocation(line: 391, column: 63, scope: !4943)
!4946 = !DILocalVariable(name: "i", scope: !4943, file: !3, line: 393, type: !7)
!4947 = !DILocation(line: 393, column: 15, scope: !4943)
!4948 = !DILocalVariable(name: "working", scope: !4943, file: !3, line: 394, type: !7)
!4949 = !DILocation(line: 394, column: 15, scope: !4943)
!4950 = !DILocation(line: 396, column: 2, scope: !4943)
!4951 = !DILocation(line: 396, column: 6, scope: !4943)
!4952 = !DILocation(line: 396, column: 12, scope: !4943)
!4953 = !DILocation(line: 396, column: 37, scope: !4943)
!4954 = !DILocation(line: 398, column: 9, scope: !4955)
!4955 = distinct !DILexicalBlock(scope: !4943, file: !3, line: 398, column: 2)
!4956 = !DILocation(line: 398, column: 7, scope: !4955)
!4957 = !DILocation(line: 398, column: 14, scope: !4958)
!4958 = distinct !DILexicalBlock(scope: !4955, file: !3, line: 398, column: 2)
!4959 = !DILocation(line: 398, column: 16, scope: !4958)
!4960 = !DILocation(line: 398, column: 43, scope: !4958)
!4961 = !DILocation(line: 398, column: 46, scope: !4958)
!4962 = !DILocation(line: 398, column: 51, scope: !4958)
!4963 = !DILocation(line: 398, column: 48, scope: !4958)
!4964 = !DILocation(line: 0, scope: !4958)
!4965 = !DILocation(line: 398, column: 2, scope: !4955)
!4966 = !DILocalVariable(name: "cx", scope: !4967, file: !3, line: 399, type: !2504)
!4967 = distinct !DILexicalBlock(scope: !4958, file: !3, line: 398, column: 68)
!4968 = !DILocation(line: 399, column: 29, scope: !4967)
!4969 = !DILocation(line: 399, column: 35, scope: !4967)
!4970 = !DILocation(line: 399, column: 39, scope: !4967)
!4971 = !DILocation(line: 399, column: 45, scope: !4967)
!4972 = !DILocation(line: 399, column: 52, scope: !4967)
!4973 = !DILocation(line: 401, column: 11, scope: !4967)
!4974 = !DILocation(line: 401, column: 15, scope: !4967)
!4975 = !DILocation(line: 401, column: 3, scope: !4967)
!4976 = !DILocation(line: 403, column: 4, scope: !4977)
!4977 = distinct !DILexicalBlock(scope: !4967, file: !3, line: 401, column: 21)
!4978 = !DILocation(line: 403, column: 8, scope: !4977)
!4979 = !DILocation(line: 403, column: 14, scope: !4977)
!4980 = !DILocation(line: 404, column: 4, scope: !4977)
!4981 = !DILocation(line: 407, column: 9, scope: !4982)
!4982 = distinct !DILexicalBlock(scope: !4977, file: !3, line: 407, column: 8)
!4983 = !DILocation(line: 407, column: 13, scope: !4982)
!4984 = !DILocation(line: 407, column: 8, scope: !4977)
!4985 = !DILocation(line: 408, column: 5, scope: !4982)
!4986 = !DILocation(line: 409, column: 4, scope: !4977)
!4987 = !DILocation(line: 409, column: 8, scope: !4977)
!4988 = !DILocation(line: 409, column: 14, scope: !4977)
!4989 = !DILocation(line: 410, column: 4, scope: !4977)
!4990 = !DILocation(line: 413, column: 35, scope: !4977)
!4991 = !DILocation(line: 413, column: 39, scope: !4977)
!4992 = !DILocation(line: 413, column: 4, scope: !4977)
!4993 = !DILocation(line: 414, column: 4, scope: !4977)
!4994 = !DILocation(line: 416, column: 8, scope: !4995)
!4995 = distinct !DILexicalBlock(scope: !4967, file: !3, line: 416, column: 7)
!4996 = !DILocation(line: 416, column: 12, scope: !4995)
!4997 = !DILocation(line: 416, column: 7, scope: !4967)
!4998 = !DILocation(line: 417, column: 4, scope: !4995)
!4999 = !DILocation(line: 419, column: 27, scope: !4967)
!5000 = !DILocation(line: 419, column: 30, scope: !4967)
!5001 = !DILocation(line: 419, column: 34, scope: !4967)
!5002 = !DILocation(line: 419, column: 3, scope: !4967)
!5003 = !DILocation(line: 420, column: 19, scope: !4967)
!5004 = !DILocation(line: 420, column: 23, scope: !4967)
!5005 = !DILocation(line: 420, column: 3, scope: !4967)
!5006 = !DILocation(line: 421, column: 10, scope: !4967)
!5007 = !DILocation(line: 422, column: 2, scope: !4967)
!5008 = !DILocation(line: 398, column: 64, scope: !4958)
!5009 = !DILocation(line: 398, column: 2, scope: !4958)
!5010 = distinct !{!5010, !4965, !5011}
!5011 = !DILocation(line: 422, column: 2, scope: !4955)
!5012 = !DILocation(line: 424, column: 34, scope: !4943)
!5013 = !DILocation(line: 424, column: 2, scope: !4943)
!5014 = !DILocation(line: 426, column: 10, scope: !4943)
!5015 = !DILocation(line: 426, column: 2, scope: !4943)
!5016 = !DILocalVariable(name: "pr", arg: 1, scope: !2649, file: !3, line: 310, type: !165)
!5017 = !DILocation(line: 310, column: 67, scope: !2649)
!5018 = !DILocalVariable(name: "cx", arg: 2, scope: !2649, file: !3, line: 311, type: !2504)
!5019 = !DILocation(line: 311, column: 35, scope: !2649)
!5020 = !DILocation(line: 317, column: 7, scope: !5021)
!5021 = distinct !DILexicalBlock(scope: !2649, file: !3, line: 317, column: 6)
!5022 = !DILocation(line: 317, column: 11, scope: !5021)
!5023 = !DILocation(line: 317, column: 6, scope: !2649)
!5024 = !DILocation(line: 318, column: 3, scope: !5021)
!5025 = !DILocation(line: 327, column: 24, scope: !5026)
!5026 = distinct !DILexicalBlock(scope: !5021, file: !3, line: 327, column: 11)
!5027 = !DILocation(line: 327, column: 11, scope: !5026)
!5028 = !DILocation(line: 327, column: 11, scope: !5021)
!5029 = !DILocation(line: 330, column: 3, scope: !5030)
!5030 = distinct !DILexicalBlock(scope: !5026, file: !3, line: 327, column: 30)
!5031 = !DILocation(line: 334, column: 6, scope: !5032)
!5032 = distinct !DILexicalBlock(scope: !2649, file: !3, line: 334, column: 6)
!5033 = !DILocation(line: 334, column: 20, scope: !5032)
!5034 = !DILocation(line: 334, column: 6, scope: !2649)
!5035 = !DILocation(line: 336, column: 40, scope: !5036)
!5036 = distinct !DILexicalBlock(scope: !5032, file: !3, line: 334, column: 27)
!5037 = !DILocation(line: 336, column: 44, scope: !5036)
!5038 = !DILocation(line: 336, column: 52, scope: !5036)
!5039 = !DILocation(line: 336, column: 56, scope: !5036)
!5040 = !DILocation(line: 336, column: 3, scope: !5036)
!5041 = !DILocation(line: 337, column: 19, scope: !5036)
!5042 = !DILocation(line: 337, column: 23, scope: !5036)
!5043 = !DILocation(line: 337, column: 29, scope: !5036)
!5044 = !DILocation(line: 337, column: 17, scope: !5036)
!5045 = !DILocation(line: 338, column: 21, scope: !5036)
!5046 = !DILocation(line: 338, column: 25, scope: !5036)
!5047 = !DILocation(line: 338, column: 31, scope: !5036)
!5048 = !DILocation(line: 338, column: 19, scope: !5036)
!5049 = !DILocation(line: 339, column: 2, scope: !5036)
!5050 = !DILocation(line: 340, column: 24, scope: !5051)
!5051 = distinct !DILexicalBlock(scope: !5032, file: !3, line: 339, column: 9)
!5052 = !DILocation(line: 340, column: 3, scope: !5051)
!5053 = !DILocation(line: 340, column: 7, scope: !5051)
!5054 = !DILocation(line: 340, column: 13, scope: !5051)
!5055 = !DILocation(line: 340, column: 22, scope: !5051)
!5056 = !DILocation(line: 341, column: 26, scope: !5051)
!5057 = !DILocation(line: 341, column: 3, scope: !5051)
!5058 = !DILocation(line: 341, column: 7, scope: !5051)
!5059 = !DILocation(line: 341, column: 13, scope: !5051)
!5060 = !DILocation(line: 341, column: 24, scope: !5051)
!5061 = !DILocation(line: 344, column: 6, scope: !5062)
!5062 = distinct !DILexicalBlock(scope: !2649, file: !3, line: 344, column: 6)
!5063 = !DILocation(line: 344, column: 10, scope: !5062)
!5064 = !DILocation(line: 344, column: 16, scope: !5062)
!5065 = !DILocation(line: 344, column: 6, scope: !2649)
!5066 = !DILocation(line: 345, column: 8, scope: !5067)
!5067 = distinct !DILexicalBlock(scope: !5068, file: !3, line: 345, column: 7)
!5068 = distinct !DILexicalBlock(scope: !5062, file: !3, line: 344, column: 26)
!5069 = !DILocation(line: 345, column: 12, scope: !5067)
!5070 = !DILocation(line: 345, column: 18, scope: !5067)
!5071 = !DILocation(line: 345, column: 7, scope: !5068)
!5072 = !DILocation(line: 346, column: 8, scope: !5073)
!5073 = distinct !DILexicalBlock(scope: !5074, file: !3, line: 346, column: 8)
!5074 = distinct !DILexicalBlock(scope: !5067, file: !3, line: 345, column: 30)
!5075 = !DILocation(line: 346, column: 12, scope: !5073)
!5076 = !DILocation(line: 346, column: 18, scope: !5073)
!5077 = !DILocation(line: 346, column: 26, scope: !5073)
!5078 = !DILocation(line: 346, column: 8, scope: !5074)
!5079 = !DILocation(line: 350, column: 5, scope: !5080)
!5080 = distinct !DILexicalBlock(scope: !5073, file: !3, line: 346, column: 32)
!5081 = !DILocation(line: 356, column: 3, scope: !5074)
!5082 = !DILocation(line: 357, column: 2, scope: !5068)
!5083 = !DILocation(line: 362, column: 23, scope: !5084)
!5084 = distinct !DILexicalBlock(scope: !5085, file: !3, line: 362, column: 7)
!5085 = distinct !DILexicalBlock(scope: !5062, file: !3, line: 357, column: 9)
!5086 = !DILocation(line: 362, column: 29, scope: !5084)
!5087 = !DILocation(line: 362, column: 7, scope: !5085)
!5088 = !DILocation(line: 366, column: 4, scope: !5089)
!5089 = distinct !DILexicalBlock(scope: !5084, file: !3, line: 362, column: 50)
!5090 = !DILocation(line: 376, column: 2, scope: !2649)
!5091 = !DILocation(line: 376, column: 6, scope: !2649)
!5092 = !DILocation(line: 376, column: 12, scope: !2649)
!5093 = !DILocation(line: 386, column: 2, scope: !2649)
!5094 = !DILocation(line: 388, column: 2, scope: !2649)
!5095 = !DILocation(line: 389, column: 1, scope: !2649)
!5096 = distinct !DISubprogram(name: "lapic_timer_check_state", scope: !3, file: !3, line: 124, type: !5097, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!5097 = !DISubroutineType(types: !5098)
!5098 = !{null, !125, !165, !2504}
!5099 = !DILocalVariable(name: "state", arg: 1, scope: !5096, file: !3, line: 124, type: !125)
!5100 = !DILocation(line: 124, column: 41, scope: !5096)
!5101 = !DILocalVariable(name: "pr", arg: 2, scope: !5096, file: !3, line: 124, type: !165)
!5102 = !DILocation(line: 124, column: 71, scope: !5096)
!5103 = !DILocalVariable(name: "cx", arg: 3, scope: !5096, file: !3, line: 125, type: !2504)
!5104 = !DILocation(line: 125, column: 34, scope: !5096)
!5105 = !DILocalVariable(name: "pwr", scope: !5096, file: !3, line: 127, type: !5106)
!5106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!5107 = !DILocation(line: 127, column: 31, scope: !5096)
!5108 = !DILocation(line: 127, column: 38, scope: !5096)
!5109 = !DILocation(line: 127, column: 42, scope: !5096)
!5110 = !DILocalVariable(name: "type", scope: !5096, file: !3, line: 128, type: !186)
!5111 = !DILocation(line: 128, column: 5, scope: !5096)
!5112 = !DILocation(line: 128, column: 12, scope: !5096)
!5113 = !DILocation(line: 130, column: 6, scope: !5096)
!5114 = !DILocation(line: 130, column: 6, scope: !5115)
!5115 = distinct !DILexicalBlock(scope: !5096, file: !3, line: 130, column: 6)
!5116 = !DILocation(line: 131, column: 3, scope: !5115)
!5117 = !DILocation(line: 133, column: 6, scope: !5096)
!5118 = !DILocation(line: 133, column: 6, scope: !5119)
!5119 = distinct !DILexicalBlock(scope: !5096, file: !3, line: 133, column: 6)
!5120 = !DILocation(line: 134, column: 8, scope: !5119)
!5121 = !DILocation(line: 134, column: 3, scope: !5119)
!5122 = !DILocation(line: 140, column: 6, scope: !5123)
!5123 = distinct !DILexicalBlock(scope: !5096, file: !3, line: 140, column: 6)
!5124 = !DILocation(line: 140, column: 11, scope: !5123)
!5125 = !DILocation(line: 140, column: 38, scope: !5123)
!5126 = !DILocation(line: 140, column: 36, scope: !5123)
!5127 = !DILocation(line: 140, column: 6, scope: !5096)
!5128 = !DILocation(line: 141, column: 3, scope: !5123)
!5129 = !DILocation(line: 143, column: 6, scope: !5130)
!5130 = distinct !DILexicalBlock(scope: !5096, file: !3, line: 143, column: 6)
!5131 = !DILocation(line: 143, column: 10, scope: !5130)
!5132 = !DILocation(line: 143, column: 18, scope: !5130)
!5133 = !DILocation(line: 143, column: 15, scope: !5130)
!5134 = !DILocation(line: 143, column: 6, scope: !5096)
!5135 = !DILocation(line: 144, column: 40, scope: !5130)
!5136 = !DILocation(line: 144, column: 3, scope: !5130)
!5137 = !DILocation(line: 144, column: 7, scope: !5130)
!5138 = !DILocation(line: 144, column: 13, scope: !5130)
!5139 = !DILocation(line: 144, column: 38, scope: !5130)
!5140 = !DILocation(line: 145, column: 1, scope: !5096)
!5141 = distinct !DISubprogram(name: "tsc_check_state", scope: !3, file: !3, line: 185, type: !5142, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!5142 = !DISubroutineType(types: !5143)
!5143 = !{null, !125}
!5144 = !DILocalVariable(name: "state", arg: 1, scope: !5141, file: !3, line: 185, type: !125)
!5145 = !DILocation(line: 185, column: 33, scope: !5141)
!5146 = !DILocation(line: 187, column: 24, scope: !5141)
!5147 = !DILocation(line: 187, column: 10, scope: !5141)
!5148 = !DILocation(line: 187, column: 2, scope: !5141)
!5149 = !DILocation(line: 197, column: 7, scope: !5150)
!5150 = distinct !DILexicalBlock(scope: !5141, file: !3, line: 187, column: 36)
!5151 = !DILocation(line: 197, column: 7, scope: !5152)
!5152 = distinct !DILexicalBlock(scope: !5150, file: !3, line: 197, column: 7)
!5153 = !DILocation(line: 198, column: 4, scope: !5152)
!5154 = !DILocation(line: 202, column: 7, scope: !5155)
!5155 = distinct !DILexicalBlock(scope: !5150, file: !3, line: 202, column: 7)
!5156 = !DILocation(line: 202, column: 13, scope: !5155)
!5157 = !DILocation(line: 202, column: 7, scope: !5150)
!5158 = !DILocation(line: 203, column: 4, scope: !5155)
!5159 = !DILocation(line: 204, column: 2, scope: !5150)
!5160 = !DILocation(line: 205, column: 1, scope: !5141)
!5161 = distinct !DISubprogram(name: "lapic_timer_propagate_broadcast", scope: !3, file: !3, line: 157, type: !5162, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!5162 = !DISubroutineType(types: !5163)
!5163 = !{null, !165}
!5164 = !DILocalVariable(name: "pr", arg: 1, scope: !5161, file: !3, line: 157, type: !165)
!5165 = !DILocation(line: 157, column: 68, scope: !5161)
!5166 = !DILocation(line: 159, column: 27, scope: !5161)
!5167 = !DILocation(line: 159, column: 31, scope: !5161)
!5168 = !DILocation(line: 160, column: 14, scope: !5161)
!5169 = !DILocation(line: 160, column: 6, scope: !5161)
!5170 = !DILocation(line: 159, column: 2, scope: !5161)
!5171 = !DILocation(line: 161, column: 1, scope: !5161)
!5172 = distinct !DISubprogram(name: "test_bit", scope: !5173, file: !5173, line: 132, type: !5174, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!5173 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!5174 = !DISubroutineType(types: !5175)
!5175 = !{!324, !454, !5176}
!5176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5177, size: 64)
!5177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5178)
!5178 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !286)
!5179 = !DILocalVariable(name: "nr", arg: 1, scope: !5180, file: !4608, line: 210, type: !454)
!5180 = distinct !DISubprogram(name: "variable_test_bit", scope: !4608, file: !4608, line: 210, type: !5174, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!5181 = !DILocation(line: 210, column: 52, scope: !5180, inlinedAt: !5182)
!5182 = distinct !DILocation(line: 135, column: 9, scope: !5172)
!5183 = !DILocalVariable(name: "addr", arg: 2, scope: !5180, file: !4608, line: 210, type: !5176)
!5184 = !DILocation(line: 210, column: 86, scope: !5180, inlinedAt: !5182)
!5185 = !DILocalVariable(name: "oldbit", scope: !5180, file: !4608, line: 212, type: !324)
!5186 = !DILocation(line: 212, column: 7, scope: !5180, inlinedAt: !5182)
!5187 = !DILocalVariable(name: "nr", arg: 1, scope: !5188, file: !4608, line: 204, type: !454)
!5188 = distinct !DISubprogram(name: "constant_test_bit", scope: !4608, file: !4608, line: 204, type: !5174, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!5189 = !DILocation(line: 204, column: 52, scope: !5188, inlinedAt: !5190)
!5190 = distinct !DILocation(line: 135, column: 9, scope: !5172)
!5191 = !DILocalVariable(name: "addr", arg: 2, scope: !5188, file: !4608, line: 204, type: !5176)
!5192 = !DILocation(line: 204, column: 86, scope: !5188, inlinedAt: !5190)
!5193 = !DILocalVariable(name: "v", arg: 1, scope: !5194, file: !5195, line: 69, type: !5198)
!5194 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5195, file: !5195, line: 69, type: !5196, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!5195 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!5196 = !DISubroutineType(types: !5197)
!5197 = !{null, !5198, !465}
!5198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5199, size: 64)
!5199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5200)
!5200 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5201 = !DILocation(line: 69, column: 73, scope: !5194, inlinedAt: !5202)
!5202 = distinct !DILocation(line: 134, column: 2, scope: !5172)
!5203 = !DILocalVariable(name: "size", arg: 2, scope: !5194, file: !5195, line: 69, type: !465)
!5204 = !DILocation(line: 69, column: 83, scope: !5194, inlinedAt: !5202)
!5205 = !DILocalVariable(name: "nr", arg: 1, scope: !5172, file: !5173, line: 132, type: !454)
!5206 = !DILocation(line: 132, column: 34, scope: !5172)
!5207 = !DILocalVariable(name: "addr", arg: 2, scope: !5172, file: !5173, line: 132, type: !5176)
!5208 = !DILocation(line: 132, column: 68, scope: !5172)
!5209 = !DILocation(line: 134, column: 25, scope: !5172)
!5210 = !DILocation(line: 134, column: 32, scope: !5172)
!5211 = !DILocation(line: 134, column: 30, scope: !5172)
!5212 = !DILocation(line: 71, column: 19, scope: !5194, inlinedAt: !5202)
!5213 = !DILocation(line: 71, column: 22, scope: !5194, inlinedAt: !5202)
!5214 = !DILocation(line: 71, column: 2, scope: !5194, inlinedAt: !5202)
!5215 = !DILocation(line: 72, column: 2, scope: !5194, inlinedAt: !5202)
!5216 = !DILocation(line: 135, column: 9, scope: !5172)
!5217 = !DILocation(line: 206, column: 19, scope: !5188, inlinedAt: !5190)
!5218 = !DILocation(line: 206, column: 22, scope: !5188, inlinedAt: !5190)
!5219 = !DILocation(line: 206, column: 15, scope: !5188, inlinedAt: !5190)
!5220 = !DILocation(line: 207, column: 4, scope: !5188, inlinedAt: !5190)
!5221 = !DILocation(line: 207, column: 9, scope: !5188, inlinedAt: !5190)
!5222 = !DILocation(line: 207, column: 12, scope: !5188, inlinedAt: !5190)
!5223 = !DILocation(line: 206, column: 44, scope: !5188, inlinedAt: !5190)
!5224 = !DILocation(line: 207, column: 37, scope: !5188, inlinedAt: !5190)
!5225 = !DILocation(line: 217, column: 33, scope: !5180, inlinedAt: !5182)
!5226 = !DILocation(line: 217, column: 46, scope: !5180, inlinedAt: !5182)
!5227 = !DILocation(line: 214, column: 2, scope: !5180, inlinedAt: !5182)
!5228 = !{i32 -2147111309, i32 -2147111249}
!5229 = !DILocation(line: 219, column: 9, scope: !5180, inlinedAt: !5182)
!5230 = !DILocation(line: 135, column: 2, scope: !5172)
!5231 = distinct !DISubprogram(name: "kasan_check_read", scope: !5232, file: !5232, line: 34, type: !5233, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!5232 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5233 = !DISubroutineType(types: !5234)
!5234 = !{!324, !5198, !7}
!5235 = !DILocalVariable(name: "p", arg: 1, scope: !5231, file: !5232, line: 34, type: !5198)
!5236 = !DILocation(line: 34, column: 58, scope: !5231)
!5237 = !DILocalVariable(name: "size", arg: 2, scope: !5231, file: !5232, line: 34, type: !7)
!5238 = !DILocation(line: 34, column: 74, scope: !5231)
!5239 = !DILocation(line: 36, column: 2, scope: !5231)
!5240 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5241, file: !5241, line: 178, type: !5242, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!5241 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5242 = !DISubroutineType(types: !5243)
!5243 = !{null, !5198, !465, !125}
!5244 = !DILocalVariable(name: "ptr", arg: 1, scope: !5240, file: !5241, line: 178, type: !5198)
!5245 = !DILocation(line: 178, column: 60, scope: !5240)
!5246 = !DILocalVariable(name: "size", arg: 2, scope: !5240, file: !5241, line: 178, type: !465)
!5247 = !DILocation(line: 178, column: 72, scope: !5240)
!5248 = !DILocalVariable(name: "type", arg: 3, scope: !5240, file: !5241, line: 179, type: !125)
!5249 = !DILocation(line: 179, column: 15, scope: !5240)
!5250 = !DILocation(line: 179, column: 23, scope: !5240)
!5251 = distinct !DISubprogram(name: "__lapic_timer_propagate_broadcast", scope: !3, file: !3, line: 147, type: !1640, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!5252 = !DILocalVariable(name: "arg", arg: 1, scope: !5251, file: !3, line: 147, type: !163)
!5253 = !DILocation(line: 147, column: 53, scope: !5251)
!5254 = !DILocalVariable(name: "pr", scope: !5251, file: !3, line: 149, type: !165)
!5255 = !DILocation(line: 149, column: 25, scope: !5251)
!5256 = !DILocation(line: 149, column: 56, scope: !5251)
!5257 = !DILocation(line: 149, column: 30, scope: !5251)
!5258 = !DILocation(line: 151, column: 6, scope: !5259)
!5259 = distinct !DILexicalBlock(scope: !5251, file: !3, line: 151, column: 6)
!5260 = !DILocation(line: 151, column: 10, scope: !5259)
!5261 = !DILocation(line: 151, column: 16, scope: !5259)
!5262 = !DILocation(line: 151, column: 41, scope: !5259)
!5263 = !DILocation(line: 151, column: 6, scope: !5251)
!5264 = !DILocation(line: 152, column: 3, scope: !5259)
!5265 = !DILocation(line: 154, column: 3, scope: !5259)
!5266 = !DILocation(line: 155, column: 1, scope: !5251)
!5267 = distinct !DISubprogram(name: "tick_broadcast_enable", scope: !101, file: !101, line: 86, type: !2669, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!5268 = !DILocation(line: 88, column: 2, scope: !5267)
!5269 = !DILocation(line: 89, column: 1, scope: !5267)
!5270 = distinct !DISubprogram(name: "tick_broadcast_disable", scope: !101, file: !101, line: 90, type: !2669, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!5271 = !DILocation(line: 92, column: 2, scope: !5270)
!5272 = !DILocation(line: 93, column: 1, scope: !5270)
!5273 = distinct !DISubprogram(name: "acpi_processor_setup_cpuidle_cx", scope: !3, file: !3, line: 682, type: !2794, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!5274 = !DILocalVariable(name: "pr", arg: 1, scope: !5273, file: !3, line: 682, type: !165)
!5275 = !DILocation(line: 682, column: 67, scope: !5273)
!5276 = !DILocalVariable(name: "dev", arg: 2, scope: !5273, file: !3, line: 683, type: !108)
!5277 = !DILocation(line: 683, column: 32, scope: !5273)
!5278 = !DILocalVariable(name: "i", scope: !5273, file: !3, line: 685, type: !125)
!5279 = !DILocation(line: 685, column: 6, scope: !5273)
!5280 = !DILocalVariable(name: "count", scope: !5273, file: !3, line: 685, type: !125)
!5281 = !DILocation(line: 685, column: 9, scope: !5273)
!5282 = !DILocalVariable(name: "cx", scope: !5273, file: !3, line: 686, type: !2504)
!5283 = !DILocation(line: 686, column: 28, scope: !5273)
!5284 = !DILocalVariable(name: "state", scope: !5273, file: !3, line: 687, type: !5285)
!5285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!5286 = !DILocation(line: 687, column: 24, scope: !5273)
!5287 = !DILocation(line: 689, column: 6, scope: !5288)
!5288 = distinct !DILexicalBlock(scope: !5273, file: !3, line: 689, column: 6)
!5289 = !DILocation(line: 689, column: 17, scope: !5288)
!5290 = !DILocation(line: 689, column: 6, scope: !5273)
!5291 = !DILocation(line: 690, column: 14, scope: !5288)
!5292 = !DILocation(line: 690, column: 3, scope: !5288)
!5293 = !DILocation(line: 692, column: 9, scope: !5294)
!5294 = distinct !DILexicalBlock(scope: !5273, file: !3, line: 692, column: 2)
!5295 = !DILocation(line: 692, column: 7, scope: !5294)
!5296 = !DILocation(line: 692, column: 14, scope: !5297)
!5297 = distinct !DILexicalBlock(scope: !5294, file: !3, line: 692, column: 2)
!5298 = !DILocation(line: 692, column: 16, scope: !5297)
!5299 = !DILocation(line: 692, column: 43, scope: !5297)
!5300 = !DILocation(line: 692, column: 46, scope: !5297)
!5301 = !DILocation(line: 692, column: 51, scope: !5297)
!5302 = !DILocation(line: 692, column: 48, scope: !5297)
!5303 = !DILocation(line: 0, scope: !5297)
!5304 = !DILocation(line: 692, column: 2, scope: !5294)
!5305 = !DILocation(line: 693, column: 36, scope: !5306)
!5306 = distinct !DILexicalBlock(scope: !5297, file: !3, line: 692, column: 68)
!5307 = !DILocation(line: 693, column: 12, scope: !5306)
!5308 = !DILocation(line: 693, column: 9, scope: !5306)
!5309 = !DILocation(line: 694, column: 9, scope: !5306)
!5310 = !DILocation(line: 694, column: 13, scope: !5306)
!5311 = !DILocation(line: 694, column: 19, scope: !5306)
!5312 = !DILocation(line: 694, column: 26, scope: !5306)
!5313 = !DILocation(line: 694, column: 6, scope: !5306)
!5314 = !DILocation(line: 696, column: 8, scope: !5315)
!5315 = distinct !DILexicalBlock(scope: !5306, file: !3, line: 696, column: 7)
!5316 = !DILocation(line: 696, column: 12, scope: !5315)
!5317 = !DILocation(line: 696, column: 7, scope: !5306)
!5318 = !DILocation(line: 697, column: 4, scope: !5315)
!5319 = !DILocation(line: 699, column: 43, scope: !5306)
!5320 = !DILocation(line: 699, column: 3, scope: !5321)
!5321 = distinct !DILexicalBlock(scope: !5306, file: !3, line: 699, column: 3)
!5322 = !DILocation(line: 699, column: 3, scope: !5323)
!5323 = distinct !DILexicalBlock(scope: !5321, file: !3, line: 699, column: 3)
!5324 = !DILocalVariable(name: "__vpp_verify", scope: !5325, file: !3, line: 699, type: !1363)
!5325 = distinct !DILexicalBlock(scope: !5323, file: !3, line: 699, column: 3)
!5326 = !DILocation(line: 699, column: 3, scope: !5325)
!5327 = !DILocation(line: 699, column: 41, scope: !5306)
!5328 = !DILocation(line: 701, column: 35, scope: !5329)
!5329 = distinct !DILexicalBlock(scope: !5306, file: !3, line: 701, column: 7)
!5330 = !DILocation(line: 701, column: 39, scope: !5329)
!5331 = !DILocation(line: 701, column: 7, scope: !5329)
!5332 = !DILocation(line: 701, column: 7, scope: !5306)
!5333 = !DILocation(line: 702, column: 4, scope: !5329)
!5334 = !DILocation(line: 702, column: 11, scope: !5329)
!5335 = !DILocation(line: 702, column: 17, scope: !5329)
!5336 = !DILocation(line: 704, column: 7, scope: !5337)
!5337 = distinct !DILexicalBlock(scope: !5306, file: !3, line: 704, column: 7)
!5338 = !DILocation(line: 704, column: 11, scope: !5337)
!5339 = !DILocation(line: 704, column: 16, scope: !5337)
!5340 = !DILocation(line: 704, column: 7, scope: !5306)
!5341 = !DILocation(line: 705, column: 4, scope: !5342)
!5342 = distinct !DILexicalBlock(scope: !5337, file: !3, line: 704, column: 34)
!5343 = !DILocation(line: 705, column: 11, scope: !5342)
!5344 = !DILocation(line: 705, column: 17, scope: !5342)
!5345 = !DILocation(line: 706, column: 8, scope: !5346)
!5346 = distinct !DILexicalBlock(scope: !5342, file: !3, line: 706, column: 8)
!5347 = !DILocation(line: 706, column: 12, scope: !5346)
!5348 = !DILocation(line: 706, column: 18, scope: !5346)
!5349 = !DILocation(line: 706, column: 8, scope: !5342)
!5350 = !DILocation(line: 707, column: 5, scope: !5346)
!5351 = !DILocation(line: 707, column: 12, scope: !5346)
!5352 = !DILocation(line: 707, column: 18, scope: !5346)
!5353 = !DILocation(line: 708, column: 3, scope: !5342)
!5354 = !DILocation(line: 710, column: 8, scope: !5306)
!5355 = !DILocation(line: 711, column: 7, scope: !5356)
!5356 = distinct !DILexicalBlock(scope: !5306, file: !3, line: 711, column: 7)
!5357 = !DILocation(line: 711, column: 13, scope: !5356)
!5358 = !DILocation(line: 711, column: 7, scope: !5306)
!5359 = !DILocation(line: 712, column: 4, scope: !5356)
!5360 = !DILocation(line: 713, column: 2, scope: !5306)
!5361 = !DILocation(line: 692, column: 64, scope: !5297)
!5362 = !DILocation(line: 692, column: 2, scope: !5297)
!5363 = distinct !{!5363, !5304, !5364}
!5364 = !DILocation(line: 713, column: 2, scope: !5294)
!5365 = !DILocation(line: 715, column: 7, scope: !5366)
!5366 = distinct !DILexicalBlock(scope: !5273, file: !3, line: 715, column: 6)
!5367 = !DILocation(line: 715, column: 6, scope: !5273)
!5368 = !DILocation(line: 716, column: 3, scope: !5366)
!5369 = !DILocation(line: 718, column: 2, scope: !5273)
!5370 = !DILocation(line: 719, column: 1, scope: !5273)
!5371 = distinct !DISubprogram(name: "lapic_timer_needs_broadcast", scope: !3, file: !3, line: 164, type: !5372, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!5372 = !DISubroutineType(types: !5373)
!5373 = !{!324, !165, !2504}
!5374 = !DILocalVariable(name: "pr", arg: 1, scope: !5371, file: !3, line: 164, type: !165)
!5375 = !DILocation(line: 164, column: 64, scope: !5371)
!5376 = !DILocalVariable(name: "cx", arg: 2, scope: !5371, file: !3, line: 165, type: !2504)
!5377 = !DILocation(line: 165, column: 32, scope: !5371)
!5378 = !DILocation(line: 167, column: 9, scope: !5371)
!5379 = !DILocation(line: 167, column: 14, scope: !5371)
!5380 = !DILocation(line: 167, column: 18, scope: !5371)
!5381 = !DILocation(line: 167, column: 24, scope: !5371)
!5382 = !DILocation(line: 167, column: 12, scope: !5371)
!5383 = !DILocation(line: 167, column: 34, scope: !5371)
!5384 = !DILocation(line: 167, column: 38, scope: !5371)
!5385 = !DILocation(line: 167, column: 44, scope: !5371)
!5386 = !DILocation(line: 167, column: 31, scope: !5371)
!5387 = !DILocation(line: 167, column: 2, scope: !5371)
!5388 = distinct !DISubprogram(name: "cpus_read_lock", scope: !2955, file: !2955, line: 132, type: !2669, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!5389 = !DILocation(line: 132, column: 43, scope: !5388)
!5390 = distinct !DISubprogram(name: "acpi_processor_setup_lpi_states", scope: !3, file: !3, line: 1133, type: !318, scopeLine: 1134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!5391 = !DILocalVariable(name: "pr", arg: 1, scope: !5390, file: !3, line: 1133, type: !165)
!5392 = !DILocation(line: 1133, column: 67, scope: !5390)
!5393 = !DILocalVariable(name: "i", scope: !5390, file: !3, line: 1135, type: !125)
!5394 = !DILocation(line: 1135, column: 6, scope: !5390)
!5395 = !DILocalVariable(name: "lpi", scope: !5390, file: !3, line: 1136, type: !2712)
!5396 = !DILocation(line: 1136, column: 25, scope: !5390)
!5397 = !DILocalVariable(name: "state", scope: !5390, file: !3, line: 1137, type: !5285)
!5398 = !DILocation(line: 1137, column: 24, scope: !5390)
!5399 = !DILocalVariable(name: "drv", scope: !5390, file: !3, line: 1138, type: !2609)
!5400 = !DILocation(line: 1138, column: 25, scope: !5390)
!5401 = !DILocation(line: 1140, column: 7, scope: !5402)
!5402 = distinct !DILexicalBlock(scope: !5390, file: !3, line: 1140, column: 6)
!5403 = !DILocation(line: 1140, column: 11, scope: !5402)
!5404 = !DILocation(line: 1140, column: 17, scope: !5402)
!5405 = !DILocation(line: 1140, column: 6, scope: !5390)
!5406 = !DILocation(line: 1141, column: 3, scope: !5402)
!5407 = !DILocation(line: 1143, column: 9, scope: !5408)
!5408 = distinct !DILexicalBlock(scope: !5390, file: !3, line: 1143, column: 2)
!5409 = !DILocation(line: 1143, column: 7, scope: !5408)
!5410 = !DILocation(line: 1143, column: 14, scope: !5411)
!5411 = distinct !DILexicalBlock(scope: !5408, file: !3, line: 1143, column: 2)
!5412 = !DILocation(line: 1143, column: 18, scope: !5411)
!5413 = !DILocation(line: 1143, column: 22, scope: !5411)
!5414 = !DILocation(line: 1143, column: 28, scope: !5411)
!5415 = !DILocation(line: 1143, column: 16, scope: !5411)
!5416 = !DILocation(line: 1143, column: 34, scope: !5411)
!5417 = !DILocation(line: 1143, column: 37, scope: !5411)
!5418 = !DILocation(line: 1143, column: 39, scope: !5411)
!5419 = !DILocation(line: 0, scope: !5411)
!5420 = !DILocation(line: 1143, column: 2, scope: !5408)
!5421 = !DILocation(line: 1144, column: 10, scope: !5422)
!5422 = distinct !DILexicalBlock(scope: !5411, file: !3, line: 1143, column: 65)
!5423 = !DILocation(line: 1144, column: 14, scope: !5422)
!5424 = !DILocation(line: 1144, column: 20, scope: !5422)
!5425 = !DILocation(line: 1144, column: 31, scope: !5422)
!5426 = !DILocation(line: 1144, column: 7, scope: !5422)
!5427 = !DILocation(line: 1146, column: 12, scope: !5422)
!5428 = !DILocation(line: 1146, column: 17, scope: !5422)
!5429 = !DILocation(line: 1146, column: 24, scope: !5422)
!5430 = !DILocation(line: 1146, column: 9, scope: !5422)
!5431 = !DILocation(line: 1147, column: 12, scope: !5422)
!5432 = !DILocation(line: 1147, column: 19, scope: !5422)
!5433 = !DILocation(line: 1147, column: 53, scope: !5422)
!5434 = !DILocation(line: 1147, column: 3, scope: !5422)
!5435 = !DILocation(line: 1148, column: 11, scope: !5422)
!5436 = !DILocation(line: 1148, column: 18, scope: !5422)
!5437 = !DILocation(line: 1148, column: 24, scope: !5422)
!5438 = !DILocation(line: 1148, column: 29, scope: !5422)
!5439 = !DILocation(line: 1148, column: 3, scope: !5422)
!5440 = !DILocation(line: 1149, column: 25, scope: !5422)
!5441 = !DILocation(line: 1149, column: 30, scope: !5422)
!5442 = !DILocation(line: 1149, column: 3, scope: !5422)
!5443 = !DILocation(line: 1149, column: 10, scope: !5422)
!5444 = !DILocation(line: 1149, column: 23, scope: !5422)
!5445 = !DILocation(line: 1150, column: 29, scope: !5422)
!5446 = !DILocation(line: 1150, column: 34, scope: !5422)
!5447 = !DILocation(line: 1150, column: 3, scope: !5422)
!5448 = !DILocation(line: 1150, column: 10, scope: !5422)
!5449 = !DILocation(line: 1150, column: 27, scope: !5422)
!5450 = !DILocation(line: 1151, column: 7, scope: !5451)
!5451 = distinct !DILexicalBlock(scope: !5422, file: !3, line: 1151, column: 7)
!5452 = !DILocation(line: 1151, column: 12, scope: !5451)
!5453 = !DILocation(line: 1151, column: 7, scope: !5422)
!5454 = !DILocation(line: 1152, column: 4, scope: !5451)
!5455 = !DILocation(line: 1152, column: 11, scope: !5451)
!5456 = !DILocation(line: 1152, column: 17, scope: !5451)
!5457 = !DILocation(line: 1153, column: 3, scope: !5422)
!5458 = !DILocation(line: 1153, column: 10, scope: !5422)
!5459 = !DILocation(line: 1153, column: 16, scope: !5422)
!5460 = !DILocation(line: 1154, column: 27, scope: !5422)
!5461 = !DILocation(line: 1154, column: 3, scope: !5422)
!5462 = !DILocation(line: 1154, column: 8, scope: !5422)
!5463 = !DILocation(line: 1154, column: 25, scope: !5422)
!5464 = !DILocation(line: 1155, column: 2, scope: !5422)
!5465 = !DILocation(line: 1143, column: 61, scope: !5411)
!5466 = !DILocation(line: 1143, column: 2, scope: !5411)
!5467 = distinct !{!5467, !5420, !5468}
!5468 = !DILocation(line: 1155, column: 2, scope: !5408)
!5469 = !DILocation(line: 1157, column: 21, scope: !5390)
!5470 = !DILocation(line: 1157, column: 2, scope: !5390)
!5471 = !DILocation(line: 1157, column: 7, scope: !5390)
!5472 = !DILocation(line: 1157, column: 19, scope: !5390)
!5473 = !DILocation(line: 1159, column: 2, scope: !5390)
!5474 = !DILocation(line: 1160, column: 1, scope: !5390)
!5475 = distinct !DISubprogram(name: "acpi_processor_setup_cstates", scope: !3, file: !3, line: 721, type: !318, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!5476 = !DILocalVariable(name: "pr", arg: 1, scope: !5475, file: !3, line: 721, type: !165)
!5477 = !DILocation(line: 721, column: 64, scope: !5475)
!5478 = !DILocalVariable(name: "i", scope: !5475, file: !3, line: 723, type: !125)
!5479 = !DILocation(line: 723, column: 6, scope: !5475)
!5480 = !DILocalVariable(name: "count", scope: !5475, file: !3, line: 723, type: !125)
!5481 = !DILocation(line: 723, column: 9, scope: !5475)
!5482 = !DILocalVariable(name: "cx", scope: !5475, file: !3, line: 724, type: !2504)
!5483 = !DILocation(line: 724, column: 28, scope: !5475)
!5484 = !DILocalVariable(name: "state", scope: !5475, file: !3, line: 725, type: !5285)
!5485 = !DILocation(line: 725, column: 24, scope: !5475)
!5486 = !DILocalVariable(name: "drv", scope: !5475, file: !3, line: 726, type: !2609)
!5487 = !DILocation(line: 726, column: 25, scope: !5475)
!5488 = !DILocation(line: 728, column: 6, scope: !5489)
!5489 = distinct !DILexicalBlock(scope: !5475, file: !3, line: 728, column: 6)
!5490 = !DILocation(line: 728, column: 17, scope: !5489)
!5491 = !DILocation(line: 728, column: 6, scope: !5475)
!5492 = !DILocation(line: 729, column: 14, scope: !5489)
!5493 = !DILocation(line: 729, column: 3, scope: !5489)
!5494 = !DILocation(line: 732, column: 27, scope: !5495)
!5495 = distinct !DILexicalBlock(scope: !5496, file: !3, line: 731, column: 45)
!5496 = distinct !DILexicalBlock(scope: !5475, file: !3, line: 731, column: 6)
!5497 = !DILocation(line: 732, column: 3, scope: !5495)
!5498 = !DILocation(line: 733, column: 9, scope: !5495)
!5499 = !DILocation(line: 738, column: 9, scope: !5500)
!5500 = distinct !DILexicalBlock(scope: !5475, file: !3, line: 738, column: 2)
!5501 = !DILocation(line: 738, column: 7, scope: !5500)
!5502 = !DILocation(line: 738, column: 14, scope: !5503)
!5503 = distinct !DILexicalBlock(scope: !5500, file: !3, line: 738, column: 2)
!5504 = !DILocation(line: 738, column: 16, scope: !5503)
!5505 = !DILocation(line: 738, column: 43, scope: !5503)
!5506 = !DILocation(line: 738, column: 46, scope: !5503)
!5507 = !DILocation(line: 738, column: 51, scope: !5503)
!5508 = !DILocation(line: 738, column: 48, scope: !5503)
!5509 = !DILocation(line: 0, scope: !5503)
!5510 = !DILocation(line: 738, column: 2, scope: !5500)
!5511 = !DILocation(line: 739, column: 9, scope: !5512)
!5512 = distinct !DILexicalBlock(scope: !5503, file: !3, line: 738, column: 68)
!5513 = !DILocation(line: 739, column: 13, scope: !5512)
!5514 = !DILocation(line: 739, column: 19, scope: !5512)
!5515 = !DILocation(line: 739, column: 26, scope: !5512)
!5516 = !DILocation(line: 739, column: 6, scope: !5512)
!5517 = !DILocation(line: 741, column: 8, scope: !5518)
!5518 = distinct !DILexicalBlock(scope: !5512, file: !3, line: 741, column: 7)
!5519 = !DILocation(line: 741, column: 12, scope: !5518)
!5520 = !DILocation(line: 741, column: 7, scope: !5512)
!5521 = !DILocation(line: 742, column: 4, scope: !5518)
!5522 = !DILocation(line: 744, column: 12, scope: !5512)
!5523 = !DILocation(line: 744, column: 17, scope: !5512)
!5524 = !DILocation(line: 744, column: 24, scope: !5512)
!5525 = !DILocation(line: 744, column: 9, scope: !5512)
!5526 = !DILocation(line: 745, column: 12, scope: !5512)
!5527 = !DILocation(line: 745, column: 19, scope: !5512)
!5528 = !DILocation(line: 745, column: 50, scope: !5512)
!5529 = !DILocation(line: 745, column: 3, scope: !5512)
!5530 = !DILocation(line: 746, column: 11, scope: !5512)
!5531 = !DILocation(line: 746, column: 18, scope: !5512)
!5532 = !DILocation(line: 746, column: 24, scope: !5512)
!5533 = !DILocation(line: 746, column: 28, scope: !5512)
!5534 = !DILocation(line: 746, column: 3, scope: !5512)
!5535 = !DILocation(line: 747, column: 25, scope: !5512)
!5536 = !DILocation(line: 747, column: 29, scope: !5512)
!5537 = !DILocation(line: 747, column: 3, scope: !5512)
!5538 = !DILocation(line: 747, column: 10, scope: !5512)
!5539 = !DILocation(line: 747, column: 23, scope: !5512)
!5540 = !DILocation(line: 748, column: 29, scope: !5512)
!5541 = !DILocation(line: 748, column: 33, scope: !5512)
!5542 = !DILocation(line: 748, column: 43, scope: !5512)
!5543 = !DILocation(line: 748, column: 41, scope: !5512)
!5544 = !DILocation(line: 748, column: 3, scope: !5512)
!5545 = !DILocation(line: 748, column: 10, scope: !5512)
!5546 = !DILocation(line: 748, column: 27, scope: !5512)
!5547 = !DILocation(line: 749, column: 3, scope: !5512)
!5548 = !DILocation(line: 749, column: 10, scope: !5512)
!5549 = !DILocation(line: 749, column: 16, scope: !5512)
!5550 = !DILocation(line: 751, column: 3, scope: !5512)
!5551 = !DILocation(line: 751, column: 10, scope: !5512)
!5552 = !DILocation(line: 751, column: 16, scope: !5512)
!5553 = !DILocation(line: 752, column: 7, scope: !5554)
!5554 = distinct !DILexicalBlock(scope: !5512, file: !3, line: 752, column: 7)
!5555 = !DILocation(line: 752, column: 11, scope: !5554)
!5556 = !DILocation(line: 752, column: 16, scope: !5554)
!5557 = !DILocation(line: 752, column: 33, scope: !5554)
!5558 = !DILocation(line: 752, column: 36, scope: !5554)
!5559 = !DILocation(line: 752, column: 40, scope: !5554)
!5560 = !DILocation(line: 752, column: 45, scope: !5554)
!5561 = !DILocation(line: 752, column: 7, scope: !5512)
!5562 = !DILocation(line: 753, column: 4, scope: !5563)
!5563 = distinct !DILexicalBlock(scope: !5554, file: !3, line: 752, column: 63)
!5564 = !DILocation(line: 753, column: 11, scope: !5563)
!5565 = !DILocation(line: 753, column: 22, scope: !5563)
!5566 = !DILocation(line: 754, column: 28, scope: !5563)
!5567 = !DILocation(line: 754, column: 4, scope: !5563)
!5568 = !DILocation(line: 754, column: 9, scope: !5563)
!5569 = !DILocation(line: 754, column: 26, scope: !5563)
!5570 = !DILocation(line: 755, column: 3, scope: !5563)
!5571 = !DILocation(line: 763, column: 7, scope: !5572)
!5572 = distinct !DILexicalBlock(scope: !5512, file: !3, line: 763, column: 7)
!5573 = !DILocation(line: 763, column: 11, scope: !5572)
!5574 = !DILocation(line: 763, column: 16, scope: !5572)
!5575 = !DILocation(line: 763, column: 33, scope: !5572)
!5576 = !DILocation(line: 763, column: 62, scope: !5572)
!5577 = !DILocation(line: 763, column: 37, scope: !5572)
!5578 = !DILocation(line: 763, column: 7, scope: !5512)
!5579 = !DILocation(line: 764, column: 4, scope: !5572)
!5580 = !DILocation(line: 764, column: 11, scope: !5572)
!5581 = !DILocation(line: 764, column: 24, scope: !5572)
!5582 = !DILocation(line: 766, column: 8, scope: !5512)
!5583 = !DILocation(line: 767, column: 7, scope: !5584)
!5584 = distinct !DILexicalBlock(scope: !5512, file: !3, line: 767, column: 7)
!5585 = !DILocation(line: 767, column: 13, scope: !5584)
!5586 = !DILocation(line: 767, column: 7, scope: !5512)
!5587 = !DILocation(line: 768, column: 4, scope: !5584)
!5588 = !DILocation(line: 769, column: 2, scope: !5512)
!5589 = !DILocation(line: 738, column: 64, scope: !5503)
!5590 = !DILocation(line: 738, column: 2, scope: !5503)
!5591 = distinct !{!5591, !5510, !5592}
!5592 = !DILocation(line: 769, column: 2, scope: !5500)
!5593 = !DILocation(line: 771, column: 21, scope: !5475)
!5594 = !DILocation(line: 771, column: 2, scope: !5475)
!5595 = !DILocation(line: 771, column: 7, scope: !5475)
!5596 = !DILocation(line: 771, column: 19, scope: !5475)
!5597 = !DILocation(line: 773, column: 7, scope: !5598)
!5598 = distinct !DILexicalBlock(scope: !5475, file: !3, line: 773, column: 6)
!5599 = !DILocation(line: 773, column: 6, scope: !5475)
!5600 = !DILocation(line: 774, column: 3, scope: !5598)
!5601 = !DILocation(line: 776, column: 2, scope: !5475)
!5602 = !DILocation(line: 777, column: 1, scope: !5475)
!5603 = distinct !DISubprogram(name: "acpi_idle_lpi_enter", scope: !3, file: !3, line: 1115, type: !2607, scopeLine: 1117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!5604 = !DILocalVariable(name: "dev", arg: 1, scope: !5603, file: !3, line: 1115, type: !108)
!5605 = !DILocation(line: 1115, column: 55, scope: !5603)
!5606 = !DILocalVariable(name: "drv", arg: 2, scope: !5603, file: !3, line: 1116, type: !2609)
!5607 = !DILocation(line: 1116, column: 34, scope: !5603)
!5608 = !DILocalVariable(name: "index", arg: 3, scope: !5603, file: !3, line: 1116, type: !125)
!5609 = !DILocation(line: 1116, column: 43, scope: !5603)
!5610 = !DILocalVariable(name: "pr", scope: !5603, file: !3, line: 1118, type: !165)
!5611 = !DILocation(line: 1118, column: 25, scope: !5603)
!5612 = !DILocalVariable(name: "lpi", scope: !5603, file: !3, line: 1119, type: !2712)
!5613 = !DILocation(line: 1119, column: 25, scope: !5603)
!5614 = !DILocation(line: 1121, column: 7, scope: !5615)
!5615 = distinct !DILexicalBlock(scope: !5603, file: !3, line: 1121, column: 7)
!5616 = !DILocalVariable(name: "pscr_ret__", scope: !5617, file: !3, line: 1121, type: !165)
!5617 = distinct !DILexicalBlock(scope: !5615, file: !3, line: 1121, column: 7)
!5618 = !DILocation(line: 1121, column: 7, scope: !5617)
!5619 = !DILocalVariable(name: "__vpp_verify", scope: !5620, file: !3, line: 1121, type: !1363)
!5620 = distinct !DILexicalBlock(scope: !5617, file: !3, line: 1121, column: 7)
!5621 = !DILocation(line: 1121, column: 7, scope: !5620)
!5622 = !DILocalVariable(name: "pfo_val__", scope: !5623, file: !3, line: 1121, type: !127)
!5623 = distinct !DILexicalBlock(scope: !5617, file: !3, line: 1121, column: 7)
!5624 = !DILocation(line: 1121, column: 7, scope: !5623)
!5625 = !{i32 -2142474600}
!5626 = !DILocation(line: 1121, column: 5, scope: !5603)
!5627 = !DILocation(line: 1123, column: 6, scope: !5628)
!5628 = distinct !DILexicalBlock(scope: !5603, file: !3, line: 1123, column: 6)
!5629 = !DILocation(line: 1123, column: 6, scope: !5603)
!5630 = !DILocation(line: 1124, column: 3, scope: !5628)
!5631 = !DILocation(line: 1126, column: 9, scope: !5603)
!5632 = !DILocation(line: 1126, column: 13, scope: !5603)
!5633 = !DILocation(line: 1126, column: 19, scope: !5603)
!5634 = !DILocation(line: 1126, column: 30, scope: !5603)
!5635 = !DILocation(line: 1126, column: 6, scope: !5603)
!5636 = !DILocation(line: 1127, column: 6, scope: !5637)
!5637 = distinct !DILexicalBlock(scope: !5603, file: !3, line: 1127, column: 6)
!5638 = !DILocation(line: 1127, column: 11, scope: !5637)
!5639 = !DILocation(line: 1127, column: 24, scope: !5637)
!5640 = !DILocation(line: 1127, column: 6, scope: !5603)
!5641 = !DILocation(line: 1128, column: 39, scope: !5637)
!5642 = !DILocation(line: 1128, column: 10, scope: !5637)
!5643 = !DILocation(line: 1128, column: 3, scope: !5637)
!5644 = !DILocation(line: 1130, column: 2, scope: !5603)
!5645 = !DILocation(line: 1131, column: 1, scope: !5603)
!5646 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !5647, file: !5647, line: 313, type: !5648, scopeLine: 313, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!5647 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/lizy2001/genbc/linux")
!5648 = !DISubroutineType(types: !5649)
!5649 = !{null, !367}
!5650 = !DILocalVariable(name: "op", arg: 1, scope: !5646, file: !5647, line: 313, type: !367)
!5651 = !DILocation(line: 313, column: 57, scope: !5646)
!5652 = !DILocation(line: 313, column: 63, scope: !5646)
!5653 = distinct !DISubprogram(name: "acpi_idle_enter", scope: !3, file: !3, line: 624, type: !2607, scopeLine: 626, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!5654 = !DILocalVariable(name: "dev", arg: 1, scope: !5653, file: !3, line: 624, type: !108)
!5655 = !DILocation(line: 624, column: 51, scope: !5653)
!5656 = !DILocalVariable(name: "drv", arg: 2, scope: !5653, file: !3, line: 625, type: !2609)
!5657 = !DILocation(line: 625, column: 30, scope: !5653)
!5658 = !DILocalVariable(name: "index", arg: 3, scope: !5653, file: !3, line: 625, type: !125)
!5659 = !DILocation(line: 625, column: 39, scope: !5653)
!5660 = !DILocalVariable(name: "cx", scope: !5653, file: !3, line: 627, type: !2504)
!5661 = !DILocation(line: 627, column: 28, scope: !5653)
!5662 = !DILocation(line: 627, column: 33, scope: !5663)
!5663 = distinct !DILexicalBlock(scope: !5653, file: !3, line: 627, column: 33)
!5664 = !DILocation(line: 627, column: 33, scope: !5665)
!5665 = distinct !DILexicalBlock(scope: !5663, file: !3, line: 627, column: 33)
!5666 = !DILocalVariable(name: "__vpp_verify", scope: !5667, file: !3, line: 627, type: !1363)
!5667 = distinct !DILexicalBlock(scope: !5665, file: !3, line: 627, column: 33)
!5668 = !DILocation(line: 627, column: 33, scope: !5667)
!5669 = !DILocation(line: 627, column: 33, scope: !5653)
!5670 = !DILocalVariable(name: "pr", scope: !5653, file: !3, line: 628, type: !165)
!5671 = !DILocation(line: 628, column: 25, scope: !5653)
!5672 = !DILocation(line: 630, column: 7, scope: !5673)
!5673 = distinct !DILexicalBlock(scope: !5653, file: !3, line: 630, column: 7)
!5674 = !DILocalVariable(name: "pscr_ret__", scope: !5675, file: !3, line: 630, type: !165)
!5675 = distinct !DILexicalBlock(scope: !5673, file: !3, line: 630, column: 7)
!5676 = !DILocation(line: 630, column: 7, scope: !5675)
!5677 = !DILocalVariable(name: "__vpp_verify", scope: !5678, file: !3, line: 630, type: !1363)
!5678 = distinct !DILexicalBlock(scope: !5675, file: !3, line: 630, column: 7)
!5679 = !DILocation(line: 630, column: 7, scope: !5678)
!5680 = !DILocalVariable(name: "pfo_val__", scope: !5681, file: !3, line: 630, type: !127)
!5681 = distinct !DILexicalBlock(scope: !5675, file: !3, line: 630, column: 7)
!5682 = !DILocation(line: 630, column: 7, scope: !5681)
!5683 = !{i32 -2142488202}
!5684 = !DILocation(line: 630, column: 5, scope: !5653)
!5685 = !DILocation(line: 631, column: 6, scope: !5686)
!5686 = distinct !DILexicalBlock(scope: !5653, file: !3, line: 631, column: 6)
!5687 = !DILocation(line: 631, column: 6, scope: !5653)
!5688 = !DILocation(line: 632, column: 3, scope: !5686)
!5689 = !DILocation(line: 634, column: 6, scope: !5690)
!5690 = distinct !DILexicalBlock(scope: !5653, file: !3, line: 634, column: 6)
!5691 = !DILocation(line: 634, column: 10, scope: !5690)
!5692 = !DILocation(line: 634, column: 15, scope: !5690)
!5693 = !DILocation(line: 634, column: 6, scope: !5653)
!5694 = !DILocation(line: 635, column: 7, scope: !5695)
!5695 = distinct !DILexicalBlock(scope: !5696, file: !3, line: 635, column: 7)
!5696 = distinct !DILexicalBlock(scope: !5690, file: !3, line: 634, column: 33)
!5697 = !DILocation(line: 635, column: 11, scope: !5695)
!5698 = !DILocation(line: 635, column: 16, scope: !5695)
!5699 = !DILocation(line: 635, column: 33, scope: !5695)
!5700 = !DILocation(line: 635, column: 36, scope: !5695)
!5701 = !DILocation(line: 635, column: 40, scope: !5695)
!5702 = !DILocation(line: 635, column: 46, scope: !5695)
!5703 = !DILocation(line: 635, column: 7, scope: !5696)
!5704 = !DILocation(line: 636, column: 30, scope: !5695)
!5705 = !DILocation(line: 636, column: 35, scope: !5695)
!5706 = !DILocation(line: 636, column: 39, scope: !5695)
!5707 = !DILocation(line: 636, column: 43, scope: !5695)
!5708 = !DILocation(line: 636, column: 11, scope: !5695)
!5709 = !DILocation(line: 636, column: 4, scope: !5695)
!5710 = !DILocation(line: 639, column: 32, scope: !5711)
!5711 = distinct !DILexicalBlock(scope: !5696, file: !3, line: 639, column: 7)
!5712 = !DILocation(line: 639, column: 7, scope: !5711)
!5713 = !DILocation(line: 639, column: 36, scope: !5711)
!5714 = !DILocation(line: 639, column: 7, scope: !5696)
!5715 = !DILocation(line: 640, column: 10, scope: !5716)
!5716 = distinct !DILexicalBlock(scope: !5711, file: !3, line: 639, column: 62)
!5717 = !DILocation(line: 641, column: 9, scope: !5718)
!5718 = distinct !DILexicalBlock(scope: !5716, file: !3, line: 641, column: 9)
!5719 = !DILocation(line: 641, column: 9, scope: !5720)
!5720 = distinct !DILexicalBlock(scope: !5718, file: !3, line: 641, column: 9)
!5721 = !DILocalVariable(name: "__vpp_verify", scope: !5722, file: !3, line: 641, type: !1363)
!5722 = distinct !DILexicalBlock(scope: !5720, file: !3, line: 641, column: 9)
!5723 = !DILocation(line: 641, column: 9, scope: !5722)
!5724 = !DILocation(line: 641, column: 9, scope: !5716)
!5725 = !DILocation(line: 641, column: 7, scope: !5716)
!5726 = !DILocation(line: 642, column: 3, scope: !5716)
!5727 = !DILocation(line: 643, column: 2, scope: !5696)
!5728 = !DILocation(line: 645, column: 6, scope: !5729)
!5729 = distinct !DILexicalBlock(scope: !5653, file: !3, line: 645, column: 6)
!5730 = !DILocation(line: 645, column: 10, scope: !5729)
!5731 = !DILocation(line: 645, column: 15, scope: !5729)
!5732 = !DILocation(line: 645, column: 6, scope: !5653)
!5733 = !DILocation(line: 646, column: 3, scope: !5729)
!5734 = !DILocation(line: 648, column: 21, scope: !5653)
!5735 = !DILocation(line: 648, column: 2, scope: !5653)
!5736 = !DILocation(line: 650, column: 9, scope: !5653)
!5737 = !DILocation(line: 650, column: 2, scope: !5653)
!5738 = !DILocation(line: 651, column: 1, scope: !5653)
!5739 = distinct !DISubprogram(name: "acpi_idle_play_dead", scope: !3, file: !3, line: 530, type: !2612, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!5740 = !DILocalVariable(name: "dev", arg: 1, scope: !5739, file: !3, line: 530, type: !108)
!5741 = !DILocation(line: 530, column: 55, scope: !5739)
!5742 = !DILocalVariable(name: "index", arg: 2, scope: !5739, file: !3, line: 530, type: !125)
!5743 = !DILocation(line: 530, column: 64, scope: !5739)
!5744 = !DILocalVariable(name: "cx", scope: !5739, file: !3, line: 532, type: !2504)
!5745 = !DILocation(line: 532, column: 28, scope: !5739)
!5746 = !DILocation(line: 532, column: 33, scope: !5747)
!5747 = distinct !DILexicalBlock(scope: !5739, file: !3, line: 532, column: 33)
!5748 = !DILocation(line: 532, column: 33, scope: !5749)
!5749 = distinct !DILexicalBlock(scope: !5747, file: !3, line: 532, column: 33)
!5750 = !DILocalVariable(name: "__vpp_verify", scope: !5751, file: !3, line: 532, type: !1363)
!5751 = distinct !DILexicalBlock(scope: !5749, file: !3, line: 532, column: 33)
!5752 = !DILocation(line: 532, column: 33, scope: !5751)
!5753 = !DILocation(line: 532, column: 33, scope: !5739)
!5754 = !DILocation(line: 534, column: 2, scope: !5739)
!5755 = !DILocation(line: 536, column: 2, scope: !5739)
!5756 = !DILocation(line: 538, column: 7, scope: !5757)
!5757 = distinct !DILexicalBlock(scope: !5758, file: !3, line: 538, column: 7)
!5758 = distinct !DILexicalBlock(scope: !5739, file: !3, line: 536, column: 12)
!5759 = !DILocation(line: 538, column: 11, scope: !5757)
!5760 = !DILocation(line: 538, column: 24, scope: !5757)
!5761 = !DILocation(line: 538, column: 7, scope: !5758)
!5762 = !DILocation(line: 539, column: 4, scope: !5757)
!5763 = !DILocation(line: 539, column: 4, scope: !5764)
!5764 = distinct !DILexicalBlock(scope: !5757, file: !3, line: 539, column: 4)
!5765 = !DILocation(line: 540, column: 12, scope: !5766)
!5766 = distinct !DILexicalBlock(scope: !5757, file: !3, line: 540, column: 12)
!5767 = !DILocation(line: 540, column: 16, scope: !5766)
!5768 = !DILocation(line: 540, column: 29, scope: !5766)
!5769 = !DILocation(line: 540, column: 12, scope: !5757)
!5770 = !DILocation(line: 541, column: 8, scope: !5771)
!5771 = distinct !DILexicalBlock(scope: !5766, file: !3, line: 540, column: 54)
!5772 = !DILocation(line: 541, column: 12, scope: !5771)
!5773 = !DILocation(line: 541, column: 4, scope: !5771)
!5774 = !DILocation(line: 542, column: 4, scope: !5771)
!5775 = !DILocation(line: 543, column: 3, scope: !5771)
!5776 = !DILocation(line: 544, column: 4, scope: !5766)
!5777 = distinct !{!5777, !5755, !5778}
!5778 = !DILocation(line: 545, column: 2, scope: !5739)
!5779 = distinct !DISubprogram(name: "acpi_idle_fallback_to_c1", scope: !3, file: !3, line: 551, type: !5780, scopeLine: 552, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!5780 = !DISubroutineType(types: !5781)
!5781 = !{!324, !165}
!5782 = !DILocalVariable(name: "pr", arg: 1, scope: !5779, file: !3, line: 551, type: !165)
!5783 = !DILocation(line: 551, column: 61, scope: !5779)
!5784 = !DILocation(line: 553, column: 2, scope: !5779)
!5785 = distinct !DISubprogram(name: "acpi_idle_enter_s2idle", scope: !3, file: !3, line: 653, type: !2607, scopeLine: 655, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!5786 = !DILocalVariable(name: "dev", arg: 1, scope: !5785, file: !3, line: 653, type: !108)
!5787 = !DILocation(line: 653, column: 58, scope: !5785)
!5788 = !DILocalVariable(name: "drv", arg: 2, scope: !5785, file: !3, line: 654, type: !2609)
!5789 = !DILocation(line: 654, column: 30, scope: !5785)
!5790 = !DILocalVariable(name: "index", arg: 3, scope: !5785, file: !3, line: 654, type: !125)
!5791 = !DILocation(line: 654, column: 39, scope: !5785)
!5792 = !DILocalVariable(name: "cx", scope: !5785, file: !3, line: 656, type: !2504)
!5793 = !DILocation(line: 656, column: 28, scope: !5785)
!5794 = !DILocation(line: 656, column: 33, scope: !5795)
!5795 = distinct !DILexicalBlock(scope: !5785, file: !3, line: 656, column: 33)
!5796 = !DILocation(line: 656, column: 33, scope: !5797)
!5797 = distinct !DILexicalBlock(scope: !5795, file: !3, line: 656, column: 33)
!5798 = !DILocalVariable(name: "__vpp_verify", scope: !5799, file: !3, line: 656, type: !1363)
!5799 = distinct !DILexicalBlock(scope: !5797, file: !3, line: 656, column: 33)
!5800 = !DILocation(line: 656, column: 33, scope: !5799)
!5801 = !DILocation(line: 656, column: 33, scope: !5785)
!5802 = !DILocation(line: 658, column: 6, scope: !5803)
!5803 = distinct !DILexicalBlock(scope: !5785, file: !3, line: 658, column: 6)
!5804 = !DILocation(line: 658, column: 10, scope: !5803)
!5805 = !DILocation(line: 658, column: 15, scope: !5803)
!5806 = !DILocation(line: 658, column: 6, scope: !5785)
!5807 = !DILocalVariable(name: "pr", scope: !5808, file: !3, line: 659, type: !165)
!5808 = distinct !DILexicalBlock(scope: !5803, file: !3, line: 658, column: 33)
!5809 = !DILocation(line: 659, column: 26, scope: !5808)
!5810 = !DILocation(line: 659, column: 31, scope: !5811)
!5811 = distinct !DILexicalBlock(scope: !5808, file: !3, line: 659, column: 31)
!5812 = !DILocalVariable(name: "pscr_ret__", scope: !5813, file: !3, line: 659, type: !165)
!5813 = distinct !DILexicalBlock(scope: !5811, file: !3, line: 659, column: 31)
!5814 = !DILocation(line: 659, column: 31, scope: !5813)
!5815 = !DILocalVariable(name: "__vpp_verify", scope: !5816, file: !3, line: 659, type: !1363)
!5816 = distinct !DILexicalBlock(scope: !5813, file: !3, line: 659, column: 31)
!5817 = !DILocation(line: 659, column: 31, scope: !5816)
!5818 = !DILocalVariable(name: "pfo_val__", scope: !5819, file: !3, line: 659, type: !127)
!5819 = distinct !DILexicalBlock(scope: !5813, file: !3, line: 659, column: 31)
!5820 = !DILocation(line: 659, column: 31, scope: !5819)
!5821 = !{i32 -2142483776}
!5822 = !DILocation(line: 661, column: 7, scope: !5823)
!5823 = distinct !DILexicalBlock(scope: !5808, file: !3, line: 661, column: 7)
!5824 = !DILocation(line: 661, column: 7, scope: !5808)
!5825 = !DILocation(line: 662, column: 4, scope: !5823)
!5826 = !DILocation(line: 664, column: 7, scope: !5827)
!5827 = distinct !DILexicalBlock(scope: !5808, file: !3, line: 664, column: 7)
!5828 = !DILocation(line: 664, column: 11, scope: !5827)
!5829 = !DILocation(line: 664, column: 17, scope: !5827)
!5830 = !DILocation(line: 664, column: 7, scope: !5808)
!5831 = !DILocalVariable(name: "bm_sts_skip", scope: !5832, file: !3, line: 665, type: !186)
!5832 = distinct !DILexicalBlock(scope: !5827, file: !3, line: 664, column: 27)
!5833 = !DILocation(line: 665, column: 7, scope: !5832)
!5834 = !DILocation(line: 665, column: 21, scope: !5832)
!5835 = !DILocation(line: 665, column: 25, scope: !5832)
!5836 = !DILocation(line: 668, column: 4, scope: !5832)
!5837 = !DILocation(line: 668, column: 8, scope: !5832)
!5838 = !DILocation(line: 668, column: 20, scope: !5832)
!5839 = !DILocation(line: 669, column: 23, scope: !5832)
!5840 = !DILocation(line: 669, column: 28, scope: !5832)
!5841 = !DILocation(line: 669, column: 32, scope: !5832)
!5842 = !DILocation(line: 669, column: 36, scope: !5832)
!5843 = !DILocation(line: 669, column: 4, scope: !5832)
!5844 = !DILocation(line: 670, column: 22, scope: !5832)
!5845 = !DILocation(line: 670, column: 4, scope: !5832)
!5846 = !DILocation(line: 670, column: 8, scope: !5832)
!5847 = !DILocation(line: 670, column: 20, scope: !5832)
!5848 = !DILocation(line: 672, column: 4, scope: !5832)
!5849 = !DILocation(line: 674, column: 4, scope: !5850)
!5850 = distinct !DILexicalBlock(scope: !5827, file: !3, line: 673, column: 10)
!5851 = !DILocation(line: 676, column: 2, scope: !5808)
!5852 = !DILocation(line: 677, column: 21, scope: !5785)
!5853 = !DILocation(line: 677, column: 2, scope: !5785)
!5854 = !DILocation(line: 679, column: 2, scope: !5785)
!5855 = !DILocation(line: 680, column: 1, scope: !5785)
!5856 = !DILocalVariable(name: "drv", arg: 1, scope: !2659, file: !3, line: 567, type: !2609)
!5857 = !DILocation(line: 567, column: 54, scope: !2659)
!5858 = !DILocalVariable(name: "pr", arg: 2, scope: !2659, file: !3, line: 568, type: !165)
!5859 = !DILocation(line: 568, column: 34, scope: !2659)
!5860 = !DILocalVariable(name: "cx", arg: 3, scope: !2659, file: !3, line: 569, type: !2504)
!5861 = !DILocation(line: 569, column: 37, scope: !2659)
!5862 = !DILocalVariable(name: "index", arg: 4, scope: !2659, file: !3, line: 570, type: !125)
!5863 = !DILocation(line: 570, column: 15, scope: !2659)
!5864 = !DILocalVariable(name: "dis_bm", scope: !2659, file: !3, line: 584, type: !324)
!5865 = !DILocation(line: 584, column: 7, scope: !2659)
!5866 = !DILocation(line: 584, column: 16, scope: !2659)
!5867 = !DILocation(line: 584, column: 20, scope: !2659)
!5868 = !DILocation(line: 584, column: 26, scope: !2659)
!5869 = !DILocation(line: 587, column: 7, scope: !5870)
!5870 = distinct !DILexicalBlock(scope: !2659, file: !3, line: 587, column: 6)
!5871 = !DILocation(line: 587, column: 11, scope: !5870)
!5872 = !DILocation(line: 587, column: 23, scope: !5870)
!5873 = !DILocation(line: 587, column: 26, scope: !5870)
!5874 = !DILocation(line: 587, column: 6, scope: !2659)
!5875 = !DILocation(line: 588, column: 10, scope: !5876)
!5876 = distinct !DILexicalBlock(scope: !5870, file: !3, line: 587, column: 48)
!5877 = !DILocation(line: 589, column: 11, scope: !5876)
!5878 = !DILocation(line: 589, column: 16, scope: !5876)
!5879 = !DILocation(line: 589, column: 9, scope: !5876)
!5880 = !DILocation(line: 590, column: 7, scope: !5881)
!5881 = distinct !DILexicalBlock(scope: !5876, file: !3, line: 590, column: 7)
!5882 = !DILocation(line: 590, column: 13, scope: !5881)
!5883 = !DILocation(line: 590, column: 7, scope: !5876)
!5884 = !DILocalVariable(name: "pscr_ret__", scope: !5885, file: !3, line: 591, type: !2504)
!5885 = distinct !DILexicalBlock(scope: !5886, file: !3, line: 591, column: 9)
!5886 = distinct !DILexicalBlock(scope: !5881, file: !3, line: 590, column: 19)
!5887 = !DILocation(line: 591, column: 9, scope: !5885)
!5888 = !DILocalVariable(name: "__vpp_verify", scope: !5889, file: !3, line: 591, type: !1363)
!5889 = distinct !DILexicalBlock(scope: !5885, file: !3, line: 591, column: 9)
!5890 = !DILocation(line: 591, column: 9, scope: !5889)
!5891 = !DILocalVariable(name: "pfo_val__", scope: !5892, file: !3, line: 591, type: !127)
!5892 = distinct !DILexicalBlock(scope: !5885, file: !3, line: 591, column: 9)
!5893 = !DILocation(line: 591, column: 9, scope: !5892)
!5894 = !{i32 -2142492470}
!5895 = !DILocation(line: 591, column: 7, scope: !5886)
!5896 = !DILocation(line: 592, column: 3, scope: !5886)
!5897 = !DILocation(line: 593, column: 7, scope: !5898)
!5898 = distinct !DILexicalBlock(scope: !5881, file: !3, line: 592, column: 10)
!5899 = !DILocation(line: 594, column: 10, scope: !5898)
!5900 = !DILocation(line: 596, column: 2, scope: !5876)
!5901 = !DILocation(line: 598, column: 6, scope: !5902)
!5902 = distinct !DILexicalBlock(scope: !2659, file: !3, line: 598, column: 6)
!5903 = !DILocation(line: 598, column: 6, scope: !2659)
!5904 = !DILocation(line: 599, column: 3, scope: !5905)
!5905 = distinct !DILexicalBlock(scope: !5902, file: !3, line: 598, column: 14)
!5906 = !DILocation(line: 599, column: 3, scope: !5907)
!5907 = distinct !DILexicalBlock(scope: !5905, file: !3, line: 599, column: 3)
!5908 = !{i32 -2142492221}
!5909 = !DILocation(line: 599, column: 3, scope: !5910)
!5910 = distinct !DILexicalBlock(scope: !5907, file: !3, line: 599, column: 3)
!5911 = !DILocation(line: 600, column: 15, scope: !5905)
!5912 = !DILocation(line: 602, column: 7, scope: !5913)
!5913 = distinct !DILexicalBlock(scope: !5905, file: !3, line: 602, column: 7)
!5914 = !DILocation(line: 602, column: 20, scope: !5913)
!5915 = !DILocation(line: 602, column: 7, scope: !5905)
!5916 = !DILocation(line: 603, column: 4, scope: !5913)
!5917 = !DILocation(line: 604, column: 3, scope: !5905)
!5918 = !DILocation(line: 604, column: 3, scope: !5919)
!5919 = distinct !DILexicalBlock(scope: !5905, file: !3, line: 604, column: 3)
!5920 = !{i32 -2142491974}
!5921 = !DILocation(line: 604, column: 3, scope: !5922)
!5922 = distinct !DILexicalBlock(scope: !5919, file: !3, line: 604, column: 3)
!5923 = !DILocation(line: 605, column: 2, scope: !5905)
!5924 = !DILocation(line: 607, column: 2, scope: !2659)
!5925 = !DILocation(line: 609, column: 21, scope: !2659)
!5926 = !DILocation(line: 609, column: 2, scope: !2659)
!5927 = !DILocation(line: 611, column: 2, scope: !2659)
!5928 = !DILocation(line: 614, column: 6, scope: !5929)
!5929 = distinct !DILexicalBlock(scope: !2659, file: !3, line: 614, column: 6)
!5930 = !DILocation(line: 614, column: 6, scope: !2659)
!5931 = !DILocation(line: 615, column: 3, scope: !5932)
!5932 = distinct !DILexicalBlock(scope: !5929, file: !3, line: 614, column: 14)
!5933 = !DILocation(line: 615, column: 3, scope: !5934)
!5934 = distinct !DILexicalBlock(scope: !5932, file: !3, line: 615, column: 3)
!5935 = !{i32 -2142491740}
!5936 = !DILocation(line: 615, column: 3, scope: !5937)
!5937 = distinct !DILexicalBlock(scope: !5934, file: !3, line: 615, column: 3)
!5938 = !DILocation(line: 616, column: 3, scope: !5932)
!5939 = !DILocation(line: 617, column: 15, scope: !5932)
!5940 = !DILocation(line: 618, column: 3, scope: !5932)
!5941 = !DILocation(line: 618, column: 3, scope: !5942)
!5942 = distinct !DILexicalBlock(scope: !5932, file: !3, line: 618, column: 3)
!5943 = !{i32 -2142491496}
!5944 = !DILocation(line: 618, column: 3, scope: !5945)
!5945 = distinct !DILexicalBlock(scope: !5942, file: !3, line: 618, column: 3)
!5946 = !DILocation(line: 619, column: 2, scope: !5932)
!5947 = !DILocation(line: 621, column: 9, scope: !2659)
!5948 = !DILocation(line: 621, column: 2, scope: !2659)
!5949 = distinct !DISubprogram(name: "wbinvd", scope: !5950, file: !5950, line: 158, type: !2669, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!5950 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!5951 = !DILocalVariable(name: "__edi", scope: !5952, file: !5950, line: 160, type: !286)
!5952 = distinct !DILexicalBlock(scope: !5949, file: !5950, line: 160, column: 2)
!5953 = !DILocation(line: 160, column: 2, scope: !5952)
!5954 = !DILocalVariable(name: "__esi", scope: !5952, file: !5950, line: 160, type: !286)
!5955 = !DILocalVariable(name: "__edx", scope: !5952, file: !5950, line: 160, type: !286)
!5956 = !DILocalVariable(name: "__ecx", scope: !5952, file: !5950, line: 160, type: !286)
!5957 = !DILocalVariable(name: "__eax", scope: !5952, file: !5950, line: 160, type: !286)
!5958 = !{i32 -2145960935, i32 -2145960053, i32 -2145959819, i32 -2145959768, i32 -2145959740, i32 -2145959715, i32 -2145960031, i32 -2145960018, i32 -2145959580, i32 -2145959461, i32 -2145959926, i32 -2145959899, i32 -2145959871, i32 -2145959841}
!5959 = !DILocation(line: 161, column: 1, scope: !5949)
!5960 = distinct !DISubprogram(name: "acpi_idle_do_entry", scope: !3, file: !3, line: 511, type: !5961, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!5961 = !DISubroutineType(types: !5962)
!5962 = !{null, !2504}
!5963 = !DILocalVariable(name: "cx", arg: 1, scope: !5960, file: !3, line: 511, type: !2504)
!5964 = !DILocation(line: 511, column: 68, scope: !5960)
!5965 = !DILocation(line: 513, column: 6, scope: !5966)
!5966 = distinct !DILexicalBlock(scope: !5960, file: !3, line: 513, column: 6)
!5967 = !DILocation(line: 513, column: 10, scope: !5966)
!5968 = !DILocation(line: 513, column: 23, scope: !5966)
!5969 = !DILocation(line: 513, column: 6, scope: !5960)
!5970 = !DILocation(line: 515, column: 35, scope: !5971)
!5971 = distinct !DILexicalBlock(scope: !5966, file: !3, line: 513, column: 43)
!5972 = !DILocation(line: 515, column: 3, scope: !5971)
!5973 = !DILocation(line: 516, column: 2, scope: !5971)
!5974 = !DILocation(line: 516, column: 13, scope: !5975)
!5975 = distinct !DILexicalBlock(scope: !5966, file: !3, line: 516, column: 13)
!5976 = !DILocation(line: 516, column: 17, scope: !5975)
!5977 = !DILocation(line: 516, column: 30, scope: !5975)
!5978 = !DILocation(line: 516, column: 13, scope: !5966)
!5979 = !DILocation(line: 517, column: 3, scope: !5980)
!5980 = distinct !DILexicalBlock(scope: !5975, file: !3, line: 516, column: 51)
!5981 = !DILocation(line: 518, column: 2, scope: !5980)
!5982 = !DILocation(line: 520, column: 7, scope: !5983)
!5983 = distinct !DILexicalBlock(scope: !5975, file: !3, line: 518, column: 9)
!5984 = !DILocation(line: 520, column: 11, scope: !5983)
!5985 = !DILocation(line: 520, column: 3, scope: !5983)
!5986 = !DILocation(line: 521, column: 3, scope: !5983)
!5987 = !DILocation(line: 523, column: 1, scope: !5960)
!5988 = distinct !DISubprogram(name: "acpi_idle_bm_check", scope: !3, file: !3, line: 469, type: !2768, scopeLine: 470, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!5989 = !DILocalVariable(name: "bm_status", scope: !5988, file: !3, line: 471, type: !173)
!5990 = !DILocation(line: 471, column: 6, scope: !5988)
!5991 = !DILocation(line: 473, column: 6, scope: !5992)
!5992 = distinct !DILexicalBlock(scope: !5988, file: !3, line: 473, column: 6)
!5993 = !DILocation(line: 473, column: 6, scope: !5988)
!5994 = !DILocation(line: 474, column: 3, scope: !5992)
!5995 = !DILocation(line: 476, column: 2, scope: !5988)
!5996 = !DILocation(line: 477, column: 6, scope: !5997)
!5997 = distinct !DILexicalBlock(scope: !5988, file: !3, line: 477, column: 6)
!5998 = !DILocation(line: 477, column: 6, scope: !5988)
!5999 = !DILocation(line: 478, column: 3, scope: !5997)
!6000 = !DILocation(line: 484, column: 24, scope: !6001)
!6001 = distinct !DILexicalBlock(scope: !5997, file: !3, line: 484, column: 11)
!6002 = !DILocation(line: 484, column: 11, scope: !6001)
!6003 = !DILocation(line: 484, column: 11, scope: !5997)
!6004 = !DILocation(line: 485, column: 27, scope: !6005)
!6005 = distinct !DILexicalBlock(scope: !6006, file: !3, line: 485, column: 7)
!6006 = distinct !DILexicalBlock(scope: !6001, file: !3, line: 484, column: 31)
!6007 = !DILocation(line: 485, column: 33, scope: !6005)
!6008 = !DILocation(line: 485, column: 8, scope: !6005)
!6009 = !DILocation(line: 485, column: 41, scope: !6005)
!6010 = !DILocation(line: 486, column: 7, scope: !6005)
!6011 = !DILocation(line: 486, column: 30, scope: !6005)
!6012 = !DILocation(line: 486, column: 36, scope: !6005)
!6013 = !DILocation(line: 486, column: 11, scope: !6005)
!6014 = !DILocation(line: 486, column: 44, scope: !6005)
!6015 = !DILocation(line: 485, column: 7, scope: !6006)
!6016 = !DILocation(line: 487, column: 14, scope: !6005)
!6017 = !DILocation(line: 487, column: 4, scope: !6005)
!6018 = !DILocation(line: 488, column: 2, scope: !6006)
!6019 = !DILocation(line: 489, column: 9, scope: !5988)
!6020 = !DILocation(line: 489, column: 2, scope: !5988)
!6021 = !DILocation(line: 490, column: 1, scope: !5988)
!6022 = distinct !DISubprogram(name: "rcu_idle_enter", scope: !6023, file: !6023, line: 84, type: !2669, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!6023 = !DIFile(filename: "./include/linux/rcutiny.h", directory: "/home/lizy2001/genbc/linux")
!6024 = !DILocation(line: 84, column: 43, scope: !6022)
!6025 = distinct !DISubprogram(name: "rcu_idle_exit", scope: !6023, file: !6023, line: 85, type: !2669, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!6026 = !DILocation(line: 85, column: 42, scope: !6025)
!6027 = distinct !DISubprogram(name: "inb_p", scope: !6028, file: !6028, line: 334, type: !6029, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!6028 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!6029 = !DISubroutineType(types: !6030)
!6030 = !{!188, !125}
!6031 = !DILocalVariable(name: "port", arg: 1, scope: !6027, file: !6028, line: 334, type: !125)
!6032 = !DILocation(line: 334, column: 1, scope: !6027)
!6033 = !DILocalVariable(name: "value", scope: !6027, file: !6028, line: 334, type: !188)
!6034 = distinct !DISubprogram(name: "inb", scope: !6028, file: !6028, line: 334, type: !6029, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!6035 = !DILocalVariable(name: "port", arg: 1, scope: !6034, file: !6028, line: 334, type: !125)
!6036 = !DILocation(line: 334, column: 1, scope: !6034)
!6037 = !DILocalVariable(name: "value", scope: !6034, file: !6028, line: 334, type: !188)
!6038 = !{i32 -2142925794}
!6039 = distinct !DISubprogram(name: "slow_down_io", scope: !5950, file: !5950, line: 40, type: !2669, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!6040 = !DILocation(line: 42, column: 13, scope: !6039)
!6041 = !DILocation(line: 42, column: 2, scope: !6039)
!6042 = !DILocation(line: 48, column: 1, scope: !6039)
!6043 = distinct !DISubprogram(name: "acpi_safe_halt", scope: !3, file: !3, line: 108, type: !2669, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!6044 = !DILocalVariable(name: "pscr_ret__", scope: !6045, file: !6046, line: 15, type: !670)
!6045 = distinct !DILexicalBlock(scope: !6047, file: !6046, line: 15, column: 9)
!6046 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/lizy2001/genbc/linux")
!6047 = distinct !DISubprogram(name: "get_current", scope: !6046, file: !6046, line: 13, type: !6048, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!6048 = !DISubroutineType(types: !6049)
!6049 = !{!670}
!6050 = !DILocation(line: 15, column: 9, scope: !6045, inlinedAt: !6051)
!6051 = distinct !DILocation(line: 110, column: 7, scope: !6052)
!6052 = distinct !DILexicalBlock(scope: !6043, file: !3, line: 110, column: 6)
!6053 = !DILocalVariable(name: "__vpp_verify", scope: !6054, file: !6046, line: 15, type: !1363)
!6054 = distinct !DILexicalBlock(scope: !6045, file: !6046, line: 15, column: 9)
!6055 = !DILocation(line: 15, column: 9, scope: !6054, inlinedAt: !6051)
!6056 = !DILocalVariable(name: "pfo_val__", scope: !6057, file: !6046, line: 15, type: !127)
!6057 = distinct !DILexicalBlock(scope: !6045, file: !6046, line: 15, column: 9)
!6058 = !DILocation(line: 15, column: 9, scope: !6057, inlinedAt: !6051)
!6059 = !{i32 -2146197147}
!6060 = !DILocation(line: 110, column: 7, scope: !6052)
!6061 = !DILocation(line: 110, column: 6, scope: !6043)
!6062 = !DILocation(line: 111, column: 3, scope: !6063)
!6063 = distinct !DILexicalBlock(scope: !6052, file: !3, line: 110, column: 27)
!6064 = !DILocation(line: 111, column: 3, scope: !6065)
!6065 = distinct !DILexicalBlock(scope: !6063, file: !3, line: 111, column: 3)
!6066 = !DILocation(line: 112, column: 3, scope: !6063)
!6067 = !DILocation(line: 112, column: 3, scope: !6068)
!6068 = distinct !DILexicalBlock(scope: !6063, file: !3, line: 112, column: 3)
!6069 = !DILocation(line: 113, column: 2, scope: !6063)
!6070 = !DILocation(line: 114, column: 1, scope: !6043)
!6071 = distinct !DISubprogram(name: "wait_for_freeze", scope: !3, file: !3, line: 492, type: !2669, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!6072 = !DILocation(line: 496, column: 6, scope: !6071)
!6073 = !DILocation(line: 496, column: 6, scope: !6074)
!6074 = distinct !DILexicalBlock(scope: !6071, file: !3, line: 496, column: 6)
!6075 = !DILocation(line: 497, column: 3, scope: !6074)
!6076 = !DILocation(line: 502, column: 36, scope: !6071)
!6077 = !DILocation(line: 502, column: 6, scope: !6071)
!6078 = !DILocation(line: 502, column: 2, scope: !6071)
!6079 = !DILocation(line: 503, column: 1, scope: !6071)
!6080 = distinct !DISubprogram(name: "test_ti_thread_flag", scope: !6081, file: !6081, line: 82, type: !6082, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!6081 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!6082 = !DISubroutineType(types: !6083)
!6083 = !{!125, !2505, !125}
!6084 = !DILocalVariable(name: "ti", arg: 1, scope: !6080, file: !6081, line: 82, type: !2505)
!6085 = !DILocation(line: 82, column: 59, scope: !6080)
!6086 = !DILocalVariable(name: "flag", arg: 2, scope: !6080, file: !6081, line: 82, type: !125)
!6087 = !DILocation(line: 82, column: 67, scope: !6080)
!6088 = !DILocation(line: 84, column: 18, scope: !6080)
!6089 = !DILocation(line: 84, column: 42, scope: !6080)
!6090 = !DILocation(line: 84, column: 46, scope: !6080)
!6091 = !DILocation(line: 84, column: 9, scope: !6080)
!6092 = !DILocation(line: 84, column: 2, scope: !6080)
!6093 = distinct !DISubprogram(name: "arch_safe_halt", scope: !5950, file: !5950, line: 148, type: !2669, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!6094 = !DILocalVariable(name: "__edi", scope: !6095, file: !5950, line: 150, type: !286)
!6095 = distinct !DILexicalBlock(scope: !6093, file: !5950, line: 150, column: 2)
!6096 = !DILocation(line: 150, column: 2, scope: !6095)
!6097 = !DILocalVariable(name: "__esi", scope: !6095, file: !5950, line: 150, type: !286)
!6098 = !DILocalVariable(name: "__edx", scope: !6095, file: !5950, line: 150, type: !286)
!6099 = !DILocalVariable(name: "__ecx", scope: !6095, file: !5950, line: 150, type: !286)
!6100 = !DILocalVariable(name: "__eax", scope: !6095, file: !5950, line: 150, type: !286)
!6101 = !{i32 -2145966180, i32 -2145965292, i32 -2145965058, i32 -2145965007, i32 -2145964979, i32 -2145964954, i32 -2145965270, i32 -2145965257, i32 -2145964819, i32 -2145964700, i32 -2145965165, i32 -2145965138, i32 -2145965110, i32 -2145965080}
!6102 = !DILocation(line: 151, column: 1, scope: !6093)
!6103 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !5950, file: !5950, line: 656, type: !2669, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!6104 = !DILocalVariable(name: "__edi", scope: !6105, file: !5950, line: 658, type: !286)
!6105 = distinct !DILexicalBlock(scope: !6103, file: !5950, line: 658, column: 2)
!6106 = !DILocation(line: 658, column: 2, scope: !6105)
!6107 = !DILocalVariable(name: "__esi", scope: !6105, file: !5950, line: 658, type: !286)
!6108 = !DILocalVariable(name: "__edx", scope: !6105, file: !5950, line: 658, type: !286)
!6109 = !DILocalVariable(name: "__ecx", scope: !6105, file: !5950, line: 658, type: !286)
!6110 = !DILocalVariable(name: "__eax", scope: !6105, file: !5950, line: 658, type: !286)
!6111 = !{i32 -2145749201, i32 -2145748469, i32 -2145748235, i32 -2145748184, i32 -2145748156, i32 -2145748131, i32 -2145748447, i32 -2145748434, i32 -2145747996, i32 -2145747877, i32 -2145748342, i32 -2145748315, i32 -2145748287, i32 -2145748257}
!6112 = !DILocation(line: 659, column: 1, scope: !6103)
!6113 = distinct !DISubprogram(name: "inl", scope: !6028, file: !6028, line: 336, type: !6114, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!6114 = !DISubroutineType(types: !6115)
!6115 = !{!7, !125}
!6116 = !DILocalVariable(name: "port", arg: 1, scope: !6113, file: !6028, line: 336, type: !125)
!6117 = !DILocation(line: 336, column: 1, scope: !6113)
!6118 = !DILocalVariable(name: "value", scope: !6113, file: !6028, line: 336, type: !7)
!6119 = !{i32 -2142920298}
!6120 = distinct !DISubprogram(name: "cpus_read_unlock", scope: !2955, file: !2955, line: 133, type: !2669, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!6121 = !DILocation(line: 133, column: 45, scope: !6120)
!6122 = distinct !DISubprogram(name: "acpi_processor_cstate_check", scope: !6123, file: !6123, line: 69, type: !6124, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!6123 = !DIFile(filename: "./arch/x86/include/asm/acpi.h", directory: "/home/lizy2001/genbc/linux")
!6124 = !DISubroutineType(types: !6125)
!6125 = !{!7, !7}
!6126 = !DILocalVariable(name: "max_cstate", arg: 1, scope: !6122, file: !6123, line: 69, type: !7)
!6127 = !DILocation(line: 69, column: 69, scope: !6122)
!6128 = !DILocation(line: 77, column: 20, scope: !6129)
!6129 = distinct !DILexicalBlock(scope: !6122, file: !6123, line: 77, column: 6)
!6130 = !DILocation(line: 77, column: 6, scope: !6129)
!6131 = !DILocation(line: 77, column: 24, scope: !6129)
!6132 = !DILocation(line: 77, column: 32, scope: !6129)
!6133 = !DILocation(line: 78, column: 20, scope: !6129)
!6134 = !DILocation(line: 78, column: 6, scope: !6129)
!6135 = !DILocation(line: 78, column: 31, scope: !6129)
!6136 = !DILocation(line: 78, column: 49, scope: !6129)
!6137 = !DILocation(line: 79, column: 20, scope: !6129)
!6138 = !DILocation(line: 79, column: 6, scope: !6129)
!6139 = !DILocation(line: 79, column: 30, scope: !6129)
!6140 = !DILocation(line: 79, column: 38, scope: !6129)
!6141 = !DILocation(line: 80, column: 20, scope: !6129)
!6142 = !DILocation(line: 80, column: 6, scope: !6129)
!6143 = !DILocation(line: 80, column: 33, scope: !6129)
!6144 = !DILocation(line: 77, column: 6, scope: !6122)
!6145 = !DILocation(line: 81, column: 3, scope: !6129)
!6146 = !DILocation(line: 82, column: 11, scope: !6129)
!6147 = !DILocation(line: 82, column: 11, scope: !6148)
!6148 = distinct !DILexicalBlock(scope: !6129, file: !6123, line: 82, column: 11)
!6149 = !DILocation(line: 83, column: 3, scope: !6148)
!6150 = !DILocation(line: 85, column: 10, scope: !6148)
!6151 = !DILocation(line: 85, column: 3, scope: !6148)
!6152 = !DILocation(line: 86, column: 1, scope: !6122)
!6153 = distinct !DISubprogram(name: "set_max_cstate", scope: !3, file: !3, line: 73, type: !2679, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !392)
!6154 = !DILocalVariable(name: "id", arg: 1, scope: !6153, file: !3, line: 73, type: !2681)
!6155 = !DILocation(line: 73, column: 55, scope: !6153)
!6156 = !DILocation(line: 75, column: 6, scope: !6157)
!6157 = distinct !DILexicalBlock(scope: !6153, file: !3, line: 75, column: 6)
!6158 = !DILocation(line: 75, column: 17, scope: !6157)
!6159 = !DILocation(line: 75, column: 6, scope: !6153)
!6160 = !DILocation(line: 76, column: 3, scope: !6157)
!6161 = !DILocation(line: 78, column: 2, scope: !6153)
!6162 = !DILocation(line: 82, column: 21, scope: !6153)
!6163 = !DILocation(line: 82, column: 25, scope: !6153)
!6164 = !DILocation(line: 82, column: 15, scope: !6153)
!6165 = !DILocation(line: 82, column: 13, scope: !6153)
!6166 = !DILocation(line: 84, column: 2, scope: !6153)
!6167 = !DILocation(line: 85, column: 1, scope: !6153)
