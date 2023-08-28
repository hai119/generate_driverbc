; ModuleID = '../bcout/drivers/acpi/processor_throttling.llvm.bc'
source_filename = "drivers/acpi/processor_throttling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon }
%struct.module = type opaque
%union.anon = type { i8* }
%struct.acpi_processor_errata = type { i8, %struct.anon.41 }
%struct.anon.41 = type { i8, i32 }
%struct.acpi_processor = type { i8*, i32, i32, i32, i32, i32, i32, %struct.acpi_processor_flags, %struct.acpi_processor_power, %struct.acpi_processor_performance*, %struct.acpi_processor_throttling, %struct.acpi_processor_limit, %struct.thermal_cooling_device*, %struct.device*, %struct.freq_qos_request, %struct.freq_qos_request }
%struct.acpi_processor_flags = type { i16 }
%struct.acpi_processor_power = type { i32, %union.anon.0, i32 }
%union.anon.0 = type { [8 x %struct.acpi_lpi_state] }
%struct.acpi_lpi_state = type { i32, i32, i32, i32, i32, i32, i64, i8, i8, [32 x i8] }
%struct.acpi_processor_performance = type { i32, i32, %struct.acpi_pct_register, %struct.acpi_pct_register, i32, %struct.acpi_processor_px*, %struct.acpi_psd_package, [1 x %struct.cpumask], i32 }
%struct.acpi_pct_register = type <{ i8, i16, i8, i8, i8, i8, i64 }>
%struct.acpi_processor_px = type { i64, i64, i64, i64, i64, i64 }
%struct.acpi_psd_package = type { i64, i64, i64, i64, i64 }
%struct.cpumask = type { [1 x i64] }
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
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.freq_qos_request = type { i32, %struct.plist_node, %struct.freq_constraints* }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.acpi_buffer = type { i64, i8* }
%struct.kmem_cache = type opaque
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
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
%struct.acpi_table_fadt = type <{ %struct.acpi_table_header, i32, i32, i8, i8, i16, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i16, i8, i32, %struct.acpi_generic_address, i8, i16, i8, i64, i64, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, i64 }>
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.acpi_generic_address = type <{ i8, i8, i8, i8, i64 }>
%struct.cpuinfo_x86 = type { i8, i8, i8, i8, i32, [3 x i32], i8, i8, i8, i8, i32, i32, %union.anon.49, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8 }
%union.anon.49 = type { i64, [72 x i8] }
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%union.acpi_object = type { %struct.anon.47 }
%struct.anon.47 = type { i32, i32, i64, i32 }
%struct.acpi_processor_throttling_arg = type { %struct.acpi_processor*, i32, i8 }
%struct.throttling_tstate = type { i32, i32 }
%struct.anon.45 = type { i32, i32, %union.acpi_object* }
%struct.anon.44 = type { i32, i32, i8* }

@__param_str_ignore_tpc = internal constant [21 x i8] c"processor.ignore_tpc\00", align 16, !dbg !0
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@ignore_tpc = internal global i32 0, align 4, !dbg !2558
@__param_ignore_tpc = internal constant %struct.kernel_param { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__param_str_ignore_tpc, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @ignore_tpc to i8*) } }, section "__param", align 8, !dbg !2496
@__UNIQUE_ID_ignore_tpctype173 = internal constant [34 x i8] c"processor.parmtype=ignore_tpc:int\00", section ".modinfo", align 1, !dbg !2548
@__UNIQUE_ID_ignore_tpc174 = internal constant [70 x i8] c"processor.parm=ignore_tpc:Disable broken BIOS _TPC throttling support\00", section ".modinfo", align 1, !dbg !2553
@errata = external dso_local global %struct.acpi_processor_errata, align 4
@processors = external dso_local global %struct.acpi_processor*, section ".data", align 8
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@.str = private unnamed_addr constant [5 x i8] c"_TPC\00", align 1
@_acpi_module_name = internal constant [21 x i8] c"processor_throttling\00", align 16, !dbg !2560
@.str.1 = private unnamed_addr constant [16 x i8] c"Evaluating _TPC\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"\014Exceed the limit of T-state \0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"\014Unsupported Throttling notifier event\0A\00", align 1
@__const.acpi_processor_get_throttling_control.buffer = private unnamed_addr constant %struct.acpi_buffer { i64 -1, i8* null }, align 8
@__const.acpi_processor_get_throttling_control.obj = private unnamed_addr constant { i32, [20 x i8] } { i32 0, [20 x i8] undef }, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"_PTC\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Evaluating _PTC\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"\013ACPI: Invalid _PTC data\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"\013ACPI: Invalid _PTC data (control_register)\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"\013ACPI: Invalid _PTC data (status_register)\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"\013ACPI: Invalid _PTC control register\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"\013ACPI: Invalid _PTC status register\0A\00", align 1
@__const.acpi_processor_get_throttling_states.buffer = private unnamed_addr constant %struct.acpi_buffer { i64 -1, i8* null }, align 8
@.str.11 = private unnamed_addr constant [6 x i8] c"NNNNN\00", align 1
@__const.acpi_processor_get_throttling_states.format = private unnamed_addr constant %struct.acpi_buffer { i64 6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0) }, align 8
@.str.12 = private unnamed_addr constant [5 x i8] c"_TSS\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"Evaluating _TSS\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"\013ACPI: Invalid _TSS data\0A\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"Invalid _TSS data\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"\013ACPI: Invalid _TSS data: freq is zero\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.17 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@ioport_resource = external dso_local global %struct.resource, align 8
@.str.18 = private unnamed_addr constant [18 x i8] c"ACPI CPU throttle\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@acpi_gbl_FADT = external dso_local global %struct.acpi_table_fadt, align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"\014ACPI: duty_cycle spans bit 4\0A\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"\013ACPI: Unknown addr space %d\0A\00", align 1
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@.str.21 = private unnamed_addr constant [47 x i8] c"\013ACPI: HARDWARE addr space,NOT supported yet\0A\00", align 1
@__const.acpi_processor_get_tsd.buffer = private unnamed_addr constant %struct.acpi_buffer { i64 -1, i8* null }, align 8
@__const.acpi_processor_get_tsd.format = private unnamed_addr constant %struct.acpi_buffer { i64 6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0) }, align 8
@.str.22 = private unnamed_addr constant [5 x i8] c"_TSD\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"Evaluating _TSD\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"\013ACPI: Invalid _TSD data\0A\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"\013ACPI: Unknown _TSD:num_entries\0A\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"\013ACPI: Unknown _TSD:revision\0A\00", align 1
@llvm.used = appending global [3 x i8*] [i8* bitcast (%struct.kernel_param* @__param_ignore_tpc to i8*), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__UNIQUE_ID_ignore_tpctype173, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__UNIQUE_ID_ignore_tpc174, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_processor_throttling_init() #0 !dbg !2571 {
entry:
  %call = call i32 @acpi_processor_update_tsd_coord() #10, !dbg !2574
  %tobool = icmp ne i32 %call, 0, !dbg !2574
  br i1 %tobool, label %if.then, label %if.end, !dbg !2576

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !2577

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2579
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_processor_update_tsd_coord() #0 !dbg !2580 {
entry:
  %retval = alloca i32, align 4
  %count = alloca i32, align 4
  %count_target = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %covered_cpus = alloca [1 x %struct.cpumask], align 8
  %pr = alloca %struct.acpi_processor*, align 8
  %match_pr = alloca %struct.acpi_processor*, align 8
  %pdomain = alloca %struct.acpi_tsd_package*, align 8
  %match_pdomain = alloca %struct.acpi_tsd_package*, align 8
  %pthrottling = alloca %struct.acpi_processor_throttling*, align 8
  %match_pthrottling = alloca %struct.acpi_processor_throttling*, align 8
  %tmp = alloca %struct.acpi_processor**, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp2 = alloca %struct.acpi_processor**, align 8
  %tmp14 = alloca %struct.acpi_processor**, align 8
  %__vpp_verify16 = alloca i8*, align 8
  %tmp18 = alloca %struct.acpi_processor**, align 8
  %tmp41 = alloca %struct.acpi_processor**, align 8
  %__vpp_verify43 = alloca i8*, align 8
  %tmp45 = alloca %struct.acpi_processor**, align 8
  %tmp82 = alloca %struct.acpi_processor**, align 8
  %__vpp_verify84 = alloca i8*, align 8
  %tmp86 = alloca %struct.acpi_processor**, align 8
  %tmp113 = alloca %struct.acpi_processor**, align 8
  %__vpp_verify115 = alloca i8*, align 8
  %tmp117 = alloca %struct.acpi_processor**, align 8
  call void @llvm.dbg.declare(metadata i32* %count, metadata !2583, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.declare(metadata i32* %count_target, metadata !2585, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !2587, metadata !DIExpression()), !dbg !2588
  store i32 0, i32* %retval1, align 4, !dbg !2588
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2589, metadata !DIExpression()), !dbg !2590
  call void @llvm.dbg.declare(metadata i32* %j, metadata !2591, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.declare(metadata [1 x %struct.cpumask]* %covered_cpus, metadata !2593, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr, metadata !2595, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %match_pr, metadata !2597, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.declare(metadata %struct.acpi_tsd_package** %pdomain, metadata !2599, metadata !DIExpression()), !dbg !2601
  call void @llvm.dbg.declare(metadata %struct.acpi_tsd_package** %match_pdomain, metadata !2602, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.declare(metadata %struct.acpi_processor_throttling** %pthrottling, metadata !2604, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.declare(metadata %struct.acpi_processor_throttling** %match_pthrottling, metadata !2607, metadata !DIExpression()), !dbg !2608
  %call = call zeroext i1 @zalloc_cpumask_var([1 x %struct.cpumask]* %covered_cpus, i32 3264) #10, !dbg !2609
  br i1 %call, label %if.end, label %if.then, !dbg !2611

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !2612
  br label %return, !dbg !2612

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !2613
  br label %for.cond, !dbg !2613

for.cond:                                         ; preds = %for.inc, %if.end
  %0 = load i32, i32* %i, align 4, !dbg !2615
  %cmp = icmp ult i32 %0, 1, !dbg !2615
  br i1 %cmp, label %for.body, label %for.end, !dbg !2613

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !2617
  br label %do.body, !dbg !2620

do.body:                                          ; preds = %for.body
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !2622, metadata !DIExpression()), !dbg !2624
  store i8* null, i8** %__vpp_verify, align 8, !dbg !2624
  %2 = load i8*, i8** %__vpp_verify, align 8, !dbg !2624
  br label %do.end, !dbg !2624

do.end:                                           ; preds = %do.body
  store %struct.acpi_processor** @processors, %struct.acpi_processor*** %tmp2, align 8, !dbg !2624
  %3 = load %struct.acpi_processor**, %struct.acpi_processor*** %tmp2, align 8, !dbg !2620
  store %struct.acpi_processor** %3, %struct.acpi_processor*** %tmp, align 8, !dbg !2617
  %4 = load %struct.acpi_processor**, %struct.acpi_processor*** %tmp, align 8, !dbg !2617
  %5 = load %struct.acpi_processor*, %struct.acpi_processor** %4, align 8, !dbg !2625
  store %struct.acpi_processor* %5, %struct.acpi_processor** %pr, align 8, !dbg !2626
  %6 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !2627
  %tobool = icmp ne %struct.acpi_processor* %6, null, !dbg !2627
  br i1 %tobool, label %if.end4, label %if.then3, !dbg !2629

if.then3:                                         ; preds = %do.end
  br label %for.inc, !dbg !2630

if.end4:                                          ; preds = %do.end
  %7 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !2631
  %throttling = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %7, i32 0, i32 10, !dbg !2632
  store %struct.acpi_processor_throttling* %throttling, %struct.acpi_processor_throttling** %pthrottling, align 8, !dbg !2633
  %8 = load %struct.acpi_processor_throttling*, %struct.acpi_processor_throttling** %pthrottling, align 8, !dbg !2634
  %tsd_valid_flag = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %8, i32 0, i32 13, !dbg !2636
  %9 = load i8, i8* %tsd_valid_flag, align 2, !dbg !2636
  %tobool5 = icmp ne i8 %9, 0, !dbg !2634
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !2637

if.then6:                                         ; preds = %if.end4
  store i32 -22, i32* %retval1, align 4, !dbg !2638
  br label %for.end, !dbg !2640

if.end7:                                          ; preds = %if.end4
  br label %for.inc, !dbg !2641

for.inc:                                          ; preds = %if.end7, %if.then3
  %10 = load i32, i32* %i, align 4, !dbg !2615
  %inc = add i32 %10, 1, !dbg !2615
  store i32 %inc, i32* %i, align 4, !dbg !2615
  br label %for.cond, !dbg !2615, !llvm.loop !2642

for.end:                                          ; preds = %if.then6, %for.cond
  %11 = load i32, i32* %retval1, align 4, !dbg !2644
  %tobool8 = icmp ne i32 %11, 0, !dbg !2644
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !2646

if.then9:                                         ; preds = %for.end
  br label %err_ret, !dbg !2647

if.end10:                                         ; preds = %for.end
  store i32 0, i32* %i, align 4, !dbg !2648
  br label %for.cond11, !dbg !2648

for.cond11:                                       ; preds = %for.inc105, %if.end10
  %12 = load i32, i32* %i, align 4, !dbg !2650
  %cmp12 = icmp ult i32 %12, 1, !dbg !2650
  br i1 %cmp12, label %for.body13, label %for.end107, !dbg !2648

for.body13:                                       ; preds = %for.cond11
  %13 = load i32, i32* %i, align 4, !dbg !2652
  br label %do.body15, !dbg !2655

do.body15:                                        ; preds = %for.body13
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify16, metadata !2657, metadata !DIExpression()), !dbg !2659
  store i8* null, i8** %__vpp_verify16, align 8, !dbg !2659
  %14 = load i8*, i8** %__vpp_verify16, align 8, !dbg !2659
  br label %do.end17, !dbg !2659

do.end17:                                         ; preds = %do.body15
  store %struct.acpi_processor** @processors, %struct.acpi_processor*** %tmp18, align 8, !dbg !2659
  %15 = load %struct.acpi_processor**, %struct.acpi_processor*** %tmp18, align 8, !dbg !2655
  store %struct.acpi_processor** %15, %struct.acpi_processor*** %tmp14, align 8, !dbg !2652
  %16 = load %struct.acpi_processor**, %struct.acpi_processor*** %tmp14, align 8, !dbg !2652
  %17 = load %struct.acpi_processor*, %struct.acpi_processor** %16, align 8, !dbg !2660
  store %struct.acpi_processor* %17, %struct.acpi_processor** %pr, align 8, !dbg !2661
  %18 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !2662
  %tobool19 = icmp ne %struct.acpi_processor* %18, null, !dbg !2662
  br i1 %tobool19, label %if.end21, label %if.then20, !dbg !2664

if.then20:                                        ; preds = %do.end17
  br label %for.inc105, !dbg !2665

if.end21:                                         ; preds = %do.end17
  %19 = load i32, i32* %i, align 4, !dbg !2666
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %covered_cpus, i64 0, i64 0, !dbg !2668
  %call22 = call i32 @cpumask_test_cpu(i32 %19, %struct.cpumask* %arraydecay) #10, !dbg !2669
  %tobool23 = icmp ne i32 %call22, 0, !dbg !2669
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !2670

if.then24:                                        ; preds = %if.end21
  br label %for.inc105, !dbg !2671

if.end25:                                         ; preds = %if.end21
  %20 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !2672
  %throttling26 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %20, i32 0, i32 10, !dbg !2673
  store %struct.acpi_processor_throttling* %throttling26, %struct.acpi_processor_throttling** %pthrottling, align 8, !dbg !2674
  %21 = load %struct.acpi_processor_throttling*, %struct.acpi_processor_throttling** %pthrottling, align 8, !dbg !2675
  %domain_info = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %21, i32 0, i32 6, !dbg !2676
  store %struct.acpi_tsd_package* %domain_info, %struct.acpi_tsd_package** %pdomain, align 8, !dbg !2677
  %22 = load i32, i32* %i, align 4, !dbg !2678
  %23 = load %struct.acpi_processor_throttling*, %struct.acpi_processor_throttling** %pthrottling, align 8, !dbg !2679
  %shared_cpu_map = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %23, i32 0, i32 7, !dbg !2680
  %arraydecay27 = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %shared_cpu_map, i64 0, i64 0, !dbg !2679
  call void @cpumask_set_cpu(i32 %22, %struct.cpumask* %arraydecay27) #10, !dbg !2681
  %24 = load i32, i32* %i, align 4, !dbg !2682
  %arraydecay28 = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %covered_cpus, i64 0, i64 0, !dbg !2683
  call void @cpumask_set_cpu(i32 %24, %struct.cpumask* %arraydecay28) #10, !dbg !2684
  %25 = load %struct.acpi_tsd_package*, %struct.acpi_tsd_package** %pdomain, align 8, !dbg !2685
  %num_processors = getelementptr inbounds %struct.acpi_tsd_package, %struct.acpi_tsd_package* %25, i32 0, i32 4, !dbg !2687
  %26 = load i64, i64* %num_processors, align 1, !dbg !2687
  %cmp29 = icmp ule i64 %26, 1, !dbg !2688
  br i1 %cmp29, label %if.then30, label %if.end31, !dbg !2689

if.then30:                                        ; preds = %if.end25
  br label %for.inc105, !dbg !2690

if.end31:                                         ; preds = %if.end25
  %27 = load %struct.acpi_tsd_package*, %struct.acpi_tsd_package** %pdomain, align 8, !dbg !2691
  %num_processors32 = getelementptr inbounds %struct.acpi_tsd_package, %struct.acpi_tsd_package* %27, i32 0, i32 4, !dbg !2692
  %28 = load i64, i64* %num_processors32, align 1, !dbg !2692
  %conv = trunc i64 %28 to i32, !dbg !2691
  store i32 %conv, i32* %count_target, align 4, !dbg !2693
  store i32 1, i32* %count, align 4, !dbg !2694
  store i32 0, i32* %j, align 4, !dbg !2695
  br label %for.cond33, !dbg !2695

for.cond33:                                       ; preds = %for.inc71, %if.end31
  %29 = load i32, i32* %j, align 4, !dbg !2697
  %cmp34 = icmp ult i32 %29, 1, !dbg !2697
  br i1 %cmp34, label %for.body36, label %for.end73, !dbg !2695

for.body36:                                       ; preds = %for.cond33
  %30 = load i32, i32* %i, align 4, !dbg !2699
  %31 = load i32, i32* %j, align 4, !dbg !2702
  %cmp37 = icmp eq i32 %30, %31, !dbg !2703
  br i1 %cmp37, label %if.then39, label %if.end40, !dbg !2704

if.then39:                                        ; preds = %for.body36
  br label %for.inc71, !dbg !2705

if.end40:                                         ; preds = %for.body36
  %32 = load i32, i32* %j, align 4, !dbg !2706
  br label %do.body42, !dbg !2708

do.body42:                                        ; preds = %if.end40
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify43, metadata !2710, metadata !DIExpression()), !dbg !2712
  store i8* null, i8** %__vpp_verify43, align 8, !dbg !2712
  %33 = load i8*, i8** %__vpp_verify43, align 8, !dbg !2712
  br label %do.end44, !dbg !2712

do.end44:                                         ; preds = %do.body42
  store %struct.acpi_processor** @processors, %struct.acpi_processor*** %tmp45, align 8, !dbg !2712
  %34 = load %struct.acpi_processor**, %struct.acpi_processor*** %tmp45, align 8, !dbg !2708
  store %struct.acpi_processor** %34, %struct.acpi_processor*** %tmp41, align 8, !dbg !2706
  %35 = load %struct.acpi_processor**, %struct.acpi_processor*** %tmp41, align 8, !dbg !2706
  %36 = load %struct.acpi_processor*, %struct.acpi_processor** %35, align 8, !dbg !2713
  store %struct.acpi_processor* %36, %struct.acpi_processor** %match_pr, align 8, !dbg !2714
  %37 = load %struct.acpi_processor*, %struct.acpi_processor** %match_pr, align 8, !dbg !2715
  %tobool46 = icmp ne %struct.acpi_processor* %37, null, !dbg !2715
  br i1 %tobool46, label %if.end48, label %if.then47, !dbg !2717

if.then47:                                        ; preds = %do.end44
  br label %for.inc71, !dbg !2718

if.end48:                                         ; preds = %do.end44
  %38 = load %struct.acpi_processor*, %struct.acpi_processor** %match_pr, align 8, !dbg !2719
  %throttling49 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %38, i32 0, i32 10, !dbg !2720
  store %struct.acpi_processor_throttling* %throttling49, %struct.acpi_processor_throttling** %match_pthrottling, align 8, !dbg !2721
  %39 = load %struct.acpi_processor_throttling*, %struct.acpi_processor_throttling** %match_pthrottling, align 8, !dbg !2722
  %domain_info50 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %39, i32 0, i32 6, !dbg !2723
  store %struct.acpi_tsd_package* %domain_info50, %struct.acpi_tsd_package** %match_pdomain, align 8, !dbg !2724
  %40 = load %struct.acpi_tsd_package*, %struct.acpi_tsd_package** %match_pdomain, align 8, !dbg !2725
  %domain = getelementptr inbounds %struct.acpi_tsd_package, %struct.acpi_tsd_package* %40, i32 0, i32 2, !dbg !2727
  %41 = load i64, i64* %domain, align 1, !dbg !2727
  %42 = load %struct.acpi_tsd_package*, %struct.acpi_tsd_package** %pdomain, align 8, !dbg !2728
  %domain51 = getelementptr inbounds %struct.acpi_tsd_package, %struct.acpi_tsd_package* %42, i32 0, i32 2, !dbg !2729
  %43 = load i64, i64* %domain51, align 1, !dbg !2729
  %cmp52 = icmp ne i64 %41, %43, !dbg !2730
  br i1 %cmp52, label %if.then54, label %if.end55, !dbg !2731

if.then54:                                        ; preds = %if.end48
  br label %for.inc71, !dbg !2732

if.end55:                                         ; preds = %if.end48
  %44 = load %struct.acpi_tsd_package*, %struct.acpi_tsd_package** %match_pdomain, align 8, !dbg !2733
  %num_processors56 = getelementptr inbounds %struct.acpi_tsd_package, %struct.acpi_tsd_package* %44, i32 0, i32 4, !dbg !2735
  %45 = load i64, i64* %num_processors56, align 1, !dbg !2735
  %46 = load i32, i32* %count_target, align 4, !dbg !2736
  %conv57 = sext i32 %46 to i64, !dbg !2736
  %cmp58 = icmp ne i64 %45, %conv57, !dbg !2737
  br i1 %cmp58, label %if.then60, label %if.end61, !dbg !2738

if.then60:                                        ; preds = %if.end55
  store i32 -22, i32* %retval1, align 4, !dbg !2739
  br label %err_ret, !dbg !2741

if.end61:                                         ; preds = %if.end55
  %47 = load %struct.acpi_tsd_package*, %struct.acpi_tsd_package** %pdomain, align 8, !dbg !2742
  %coord_type = getelementptr inbounds %struct.acpi_tsd_package, %struct.acpi_tsd_package* %47, i32 0, i32 3, !dbg !2744
  %48 = load i64, i64* %coord_type, align 1, !dbg !2744
  %49 = load %struct.acpi_tsd_package*, %struct.acpi_tsd_package** %match_pdomain, align 8, !dbg !2745
  %coord_type62 = getelementptr inbounds %struct.acpi_tsd_package, %struct.acpi_tsd_package* %49, i32 0, i32 3, !dbg !2746
  %50 = load i64, i64* %coord_type62, align 1, !dbg !2746
  %cmp63 = icmp ne i64 %48, %50, !dbg !2747
  br i1 %cmp63, label %if.then65, label %if.end66, !dbg !2748

if.then65:                                        ; preds = %if.end61
  store i32 -22, i32* %retval1, align 4, !dbg !2749
  br label %err_ret, !dbg !2751

if.end66:                                         ; preds = %if.end61
  %51 = load i32, i32* %j, align 4, !dbg !2752
  %arraydecay67 = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %covered_cpus, i64 0, i64 0, !dbg !2753
  call void @cpumask_set_cpu(i32 %51, %struct.cpumask* %arraydecay67) #10, !dbg !2754
  %52 = load i32, i32* %j, align 4, !dbg !2755
  %53 = load %struct.acpi_processor_throttling*, %struct.acpi_processor_throttling** %pthrottling, align 8, !dbg !2756
  %shared_cpu_map68 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %53, i32 0, i32 7, !dbg !2757
  %arraydecay69 = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %shared_cpu_map68, i64 0, i64 0, !dbg !2756
  call void @cpumask_set_cpu(i32 %52, %struct.cpumask* %arraydecay69) #10, !dbg !2758
  %54 = load i32, i32* %count, align 4, !dbg !2759
  %inc70 = add i32 %54, 1, !dbg !2759
  store i32 %inc70, i32* %count, align 4, !dbg !2759
  br label %for.inc71, !dbg !2760

for.inc71:                                        ; preds = %if.end66, %if.then54, %if.then47, %if.then39
  %55 = load i32, i32* %j, align 4, !dbg !2697
  %inc72 = add i32 %55, 1, !dbg !2697
  store i32 %inc72, i32* %j, align 4, !dbg !2697
  br label %for.cond33, !dbg !2697, !llvm.loop !2761

for.end73:                                        ; preds = %for.cond33
  store i32 0, i32* %j, align 4, !dbg !2763
  br label %for.cond74, !dbg !2763

for.cond74:                                       ; preds = %for.inc102, %for.end73
  %56 = load i32, i32* %j, align 4, !dbg !2765
  %cmp75 = icmp ult i32 %56, 1, !dbg !2765
  br i1 %cmp75, label %for.body77, label %for.end104, !dbg !2763

for.body77:                                       ; preds = %for.cond74
  %57 = load i32, i32* %i, align 4, !dbg !2767
  %58 = load i32, i32* %j, align 4, !dbg !2770
  %cmp78 = icmp eq i32 %57, %58, !dbg !2771
  br i1 %cmp78, label %if.then80, label %if.end81, !dbg !2772

if.then80:                                        ; preds = %for.body77
  br label %for.inc102, !dbg !2773

if.end81:                                         ; preds = %for.body77
  %59 = load i32, i32* %j, align 4, !dbg !2774
  br label %do.body83, !dbg !2776

do.body83:                                        ; preds = %if.end81
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify84, metadata !2778, metadata !DIExpression()), !dbg !2780
  store i8* null, i8** %__vpp_verify84, align 8, !dbg !2780
  %60 = load i8*, i8** %__vpp_verify84, align 8, !dbg !2780
  br label %do.end85, !dbg !2780

do.end85:                                         ; preds = %do.body83
  store %struct.acpi_processor** @processors, %struct.acpi_processor*** %tmp86, align 8, !dbg !2780
  %61 = load %struct.acpi_processor**, %struct.acpi_processor*** %tmp86, align 8, !dbg !2776
  store %struct.acpi_processor** %61, %struct.acpi_processor*** %tmp82, align 8, !dbg !2774
  %62 = load %struct.acpi_processor**, %struct.acpi_processor*** %tmp82, align 8, !dbg !2774
  %63 = load %struct.acpi_processor*, %struct.acpi_processor** %62, align 8, !dbg !2781
  store %struct.acpi_processor* %63, %struct.acpi_processor** %match_pr, align 8, !dbg !2782
  %64 = load %struct.acpi_processor*, %struct.acpi_processor** %match_pr, align 8, !dbg !2783
  %tobool87 = icmp ne %struct.acpi_processor* %64, null, !dbg !2783
  br i1 %tobool87, label %if.end89, label %if.then88, !dbg !2785

if.then88:                                        ; preds = %do.end85
  br label %for.inc102, !dbg !2786

if.end89:                                         ; preds = %do.end85
  %65 = load %struct.acpi_processor*, %struct.acpi_processor** %match_pr, align 8, !dbg !2787
  %throttling90 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %65, i32 0, i32 10, !dbg !2788
  store %struct.acpi_processor_throttling* %throttling90, %struct.acpi_processor_throttling** %match_pthrottling, align 8, !dbg !2789
  %66 = load %struct.acpi_processor_throttling*, %struct.acpi_processor_throttling** %match_pthrottling, align 8, !dbg !2790
  %domain_info91 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %66, i32 0, i32 6, !dbg !2791
  store %struct.acpi_tsd_package* %domain_info91, %struct.acpi_tsd_package** %match_pdomain, align 8, !dbg !2792
  %67 = load %struct.acpi_tsd_package*, %struct.acpi_tsd_package** %match_pdomain, align 8, !dbg !2793
  %domain92 = getelementptr inbounds %struct.acpi_tsd_package, %struct.acpi_tsd_package* %67, i32 0, i32 2, !dbg !2795
  %68 = load i64, i64* %domain92, align 1, !dbg !2795
  %69 = load %struct.acpi_tsd_package*, %struct.acpi_tsd_package** %pdomain, align 8, !dbg !2796
  %domain93 = getelementptr inbounds %struct.acpi_tsd_package, %struct.acpi_tsd_package* %69, i32 0, i32 2, !dbg !2797
  %70 = load i64, i64* %domain93, align 1, !dbg !2797
  %cmp94 = icmp ne i64 %68, %70, !dbg !2798
  br i1 %cmp94, label %if.then96, label %if.end97, !dbg !2799

if.then96:                                        ; preds = %if.end89
  br label %for.inc102, !dbg !2800

if.end97:                                         ; preds = %if.end89
  %71 = load %struct.acpi_processor_throttling*, %struct.acpi_processor_throttling** %match_pthrottling, align 8, !dbg !2801
  %shared_cpu_map98 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %71, i32 0, i32 7, !dbg !2802
  %arraydecay99 = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %shared_cpu_map98, i64 0, i64 0, !dbg !2801
  %72 = load %struct.acpi_processor_throttling*, %struct.acpi_processor_throttling** %pthrottling, align 8, !dbg !2803
  %shared_cpu_map100 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %72, i32 0, i32 7, !dbg !2804
  %arraydecay101 = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %shared_cpu_map100, i64 0, i64 0, !dbg !2803
  call void @cpumask_copy(%struct.cpumask* %arraydecay99, %struct.cpumask* %arraydecay101) #10, !dbg !2805
  br label %for.inc102, !dbg !2806

for.inc102:                                       ; preds = %if.end97, %if.then96, %if.then88, %if.then80
  %73 = load i32, i32* %j, align 4, !dbg !2765
  %inc103 = add i32 %73, 1, !dbg !2765
  store i32 %inc103, i32* %j, align 4, !dbg !2765
  br label %for.cond74, !dbg !2765, !llvm.loop !2807

for.end104:                                       ; preds = %for.cond74
  br label %for.inc105, !dbg !2809

for.inc105:                                       ; preds = %for.end104, %if.then30, %if.then24, %if.then20
  %74 = load i32, i32* %i, align 4, !dbg !2650
  %inc106 = add i32 %74, 1, !dbg !2650
  store i32 %inc106, i32* %i, align 4, !dbg !2650
  br label %for.cond11, !dbg !2650, !llvm.loop !2810

for.end107:                                       ; preds = %for.cond11
  br label %err_ret, !dbg !2811

err_ret:                                          ; preds = %for.end107, %if.then65, %if.then60, %if.then9
  call void @llvm.dbg.label(metadata !2812), !dbg !2813
  %arraydecay108 = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %covered_cpus, i64 0, i64 0, !dbg !2814
  call void @free_cpumask_var(%struct.cpumask* %arraydecay108) #10, !dbg !2815
  store i32 0, i32* %i, align 4, !dbg !2816
  br label %for.cond109, !dbg !2816

for.cond109:                                      ; preds = %for.inc129, %err_ret
  %75 = load i32, i32* %i, align 4, !dbg !2818
  %cmp110 = icmp ult i32 %75, 1, !dbg !2818
  br i1 %cmp110, label %for.body112, label %for.end131, !dbg !2816

for.body112:                                      ; preds = %for.cond109
  %76 = load i32, i32* %i, align 4, !dbg !2820
  br label %do.body114, !dbg !2823

do.body114:                                       ; preds = %for.body112
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify115, metadata !2825, metadata !DIExpression()), !dbg !2827
  store i8* null, i8** %__vpp_verify115, align 8, !dbg !2827
  %77 = load i8*, i8** %__vpp_verify115, align 8, !dbg !2827
  br label %do.end116, !dbg !2827

do.end116:                                        ; preds = %do.body114
  store %struct.acpi_processor** @processors, %struct.acpi_processor*** %tmp117, align 8, !dbg !2827
  %78 = load %struct.acpi_processor**, %struct.acpi_processor*** %tmp117, align 8, !dbg !2823
  store %struct.acpi_processor** %78, %struct.acpi_processor*** %tmp113, align 8, !dbg !2820
  %79 = load %struct.acpi_processor**, %struct.acpi_processor*** %tmp113, align 8, !dbg !2820
  %80 = load %struct.acpi_processor*, %struct.acpi_processor** %79, align 8, !dbg !2828
  store %struct.acpi_processor* %80, %struct.acpi_processor** %pr, align 8, !dbg !2829
  %81 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !2830
  %tobool118 = icmp ne %struct.acpi_processor* %81, null, !dbg !2830
  br i1 %tobool118, label %if.end120, label %if.then119, !dbg !2832

if.then119:                                       ; preds = %do.end116
  br label %for.inc129, !dbg !2833

if.end120:                                        ; preds = %do.end116
  %82 = load i32, i32* %retval1, align 4, !dbg !2834
  %tobool121 = icmp ne i32 %82, 0, !dbg !2834
  br i1 %tobool121, label %if.then122, label %if.end128, !dbg !2836

if.then122:                                       ; preds = %if.end120
  %83 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !2837
  %throttling123 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %83, i32 0, i32 10, !dbg !2839
  store %struct.acpi_processor_throttling* %throttling123, %struct.acpi_processor_throttling** %pthrottling, align 8, !dbg !2840
  %84 = load %struct.acpi_processor_throttling*, %struct.acpi_processor_throttling** %pthrottling, align 8, !dbg !2841
  %shared_cpu_map124 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %84, i32 0, i32 7, !dbg !2842
  %arraydecay125 = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %shared_cpu_map124, i64 0, i64 0, !dbg !2841
  call void @cpumask_clear(%struct.cpumask* %arraydecay125) #10, !dbg !2843
  %85 = load i32, i32* %i, align 4, !dbg !2844
  %86 = load %struct.acpi_processor_throttling*, %struct.acpi_processor_throttling** %pthrottling, align 8, !dbg !2845
  %shared_cpu_map126 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %86, i32 0, i32 7, !dbg !2846
  %arraydecay127 = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %shared_cpu_map126, i64 0, i64 0, !dbg !2845
  call void @cpumask_set_cpu(i32 %85, %struct.cpumask* %arraydecay127) #10, !dbg !2847
  %87 = load %struct.acpi_processor_throttling*, %struct.acpi_processor_throttling** %pthrottling, align 8, !dbg !2848
  %shared_type = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %87, i32 0, i32 14, !dbg !2849
  store i32 252, i32* %shared_type, align 8, !dbg !2850
  br label %if.end128, !dbg !2851

if.end128:                                        ; preds = %if.then122, %if.end120
  br label %for.inc129, !dbg !2852

for.inc129:                                       ; preds = %if.end128, %if.then119
  %88 = load i32, i32* %i, align 4, !dbg !2818
  %inc130 = add i32 %88, 1, !dbg !2818
  store i32 %inc130, i32* %i, align 4, !dbg !2818
  br label %for.cond109, !dbg !2818, !llvm.loop !2853

for.end131:                                       ; preds = %for.cond109
  %89 = load i32, i32* %retval1, align 4, !dbg !2855
  store i32 %89, i32* %retval, align 4, !dbg !2856
  br label %return, !dbg !2856

return:                                           ; preds = %for.end131, %if.then
  %90 = load i32, i32* %retval, align 4, !dbg !2857
  ret i32 %90, !dbg !2857
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_processor_tstate_has_changed(%struct.acpi_processor* %pr) #0 !dbg !2858 {
entry:
  %retval = alloca i32, align 4
  %pr.addr = alloca %struct.acpi_processor*, align 8
  %result = alloca i32, align 4
  %throttling_limit = alloca i32, align 4
  %current_state = alloca i32, align 4
  %limit = alloca %struct.acpi_processor_limit*, align 8
  %target_state = alloca i32, align 4
  store %struct.acpi_processor* %pr, %struct.acpi_processor** %pr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr.addr, metadata !2859, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.declare(metadata i32* %result, metadata !2861, metadata !DIExpression()), !dbg !2862
  store i32 0, i32* %result, align 4, !dbg !2862
  call void @llvm.dbg.declare(metadata i32* %throttling_limit, metadata !2863, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.declare(metadata i32* %current_state, metadata !2865, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.declare(metadata %struct.acpi_processor_limit** %limit, metadata !2867, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.declare(metadata i32* %target_state, metadata !2870, metadata !DIExpression()), !dbg !2871
  %0 = load i32, i32* @ignore_tpc, align 4, !dbg !2872
  %tobool = icmp ne i32 %0, 0, !dbg !2872
  br i1 %tobool, label %if.then, label %if.end, !dbg !2874

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2875
  br label %return, !dbg !2875

if.end:                                           ; preds = %entry
  %1 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !2876
  %call = call i32 @acpi_processor_get_platform_limit(%struct.acpi_processor* %1) #10, !dbg !2877
  store i32 %call, i32* %result, align 4, !dbg !2878
  %2 = load i32, i32* %result, align 4, !dbg !2879
  %tobool1 = icmp ne i32 %2, 0, !dbg !2879
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !2881

if.then2:                                         ; preds = %if.end
  %3 = load i32, i32* %result, align 4, !dbg !2882
  store i32 %3, i32* %retval, align 4, !dbg !2884
  br label %return, !dbg !2884

if.end3:                                          ; preds = %if.end
  %4 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !2885
  %throttling_platform_limit = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %4, i32 0, i32 6, !dbg !2886
  %5 = load i32, i32* %throttling_platform_limit, align 4, !dbg !2886
  store i32 %5, i32* %throttling_limit, align 4, !dbg !2887
  %6 = load i32, i32* %throttling_limit, align 4, !dbg !2888
  %7 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !2890
  %throttling = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %7, i32 0, i32 10, !dbg !2891
  %state_count = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling, i32 0, i32 4, !dbg !2892
  %8 = load i32, i32* %state_count, align 8, !dbg !2892
  %cmp = icmp uge i32 %6, %8, !dbg !2893
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !2894

if.then4:                                         ; preds = %if.end3
  store i32 -22, i32* %retval, align 4, !dbg !2895
  br label %return, !dbg !2895

if.end5:                                          ; preds = %if.end3
  %9 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !2897
  %throttling6 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %9, i32 0, i32 10, !dbg !2898
  %state = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling6, i32 0, i32 0, !dbg !2899
  %10 = load i32, i32* %state, align 8, !dbg !2899
  store i32 %10, i32* %current_state, align 4, !dbg !2900
  %11 = load i32, i32* %current_state, align 4, !dbg !2901
  %12 = load i32, i32* %throttling_limit, align 4, !dbg !2903
  %cmp7 = icmp sgt i32 %11, %12, !dbg !2904
  br i1 %cmp7, label %if.then8, label %if.else, !dbg !2905

if.then8:                                         ; preds = %if.end5
  %13 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !2906
  %limit9 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %13, i32 0, i32 11, !dbg !2908
  store %struct.acpi_processor_limit* %limit9, %struct.acpi_processor_limit** %limit, align 8, !dbg !2909
  %14 = load i32, i32* %throttling_limit, align 4, !dbg !2910
  store i32 %14, i32* %target_state, align 4, !dbg !2911
  %15 = load %struct.acpi_processor_limit*, %struct.acpi_processor_limit** %limit, align 8, !dbg !2912
  %thermal = getelementptr inbounds %struct.acpi_processor_limit, %struct.acpi_processor_limit* %15, i32 0, i32 1, !dbg !2914
  %tx = getelementptr inbounds %struct.acpi_processor_lx, %struct.acpi_processor_lx* %thermal, i32 0, i32 1, !dbg !2915
  %16 = load i32, i32* %tx, align 4, !dbg !2915
  %17 = load i32, i32* %target_state, align 4, !dbg !2916
  %cmp10 = icmp sgt i32 %16, %17, !dbg !2917
  br i1 %cmp10, label %if.then11, label %if.end14, !dbg !2918

if.then11:                                        ; preds = %if.then8
  %18 = load %struct.acpi_processor_limit*, %struct.acpi_processor_limit** %limit, align 8, !dbg !2919
  %thermal12 = getelementptr inbounds %struct.acpi_processor_limit, %struct.acpi_processor_limit* %18, i32 0, i32 1, !dbg !2920
  %tx13 = getelementptr inbounds %struct.acpi_processor_lx, %struct.acpi_processor_lx* %thermal12, i32 0, i32 1, !dbg !2921
  %19 = load i32, i32* %tx13, align 4, !dbg !2921
  store i32 %19, i32* %target_state, align 4, !dbg !2922
  br label %if.end14, !dbg !2923

if.end14:                                         ; preds = %if.then11, %if.then8
  %20 = load %struct.acpi_processor_limit*, %struct.acpi_processor_limit** %limit, align 8, !dbg !2924
  %user = getelementptr inbounds %struct.acpi_processor_limit, %struct.acpi_processor_limit* %20, i32 0, i32 2, !dbg !2926
  %tx15 = getelementptr inbounds %struct.acpi_processor_lx, %struct.acpi_processor_lx* %user, i32 0, i32 1, !dbg !2927
  %21 = load i32, i32* %tx15, align 4, !dbg !2927
  %22 = load i32, i32* %target_state, align 4, !dbg !2928
  %cmp16 = icmp sgt i32 %21, %22, !dbg !2929
  br i1 %cmp16, label %if.then17, label %if.end20, !dbg !2930

if.then17:                                        ; preds = %if.end14
  %23 = load %struct.acpi_processor_limit*, %struct.acpi_processor_limit** %limit, align 8, !dbg !2931
  %user18 = getelementptr inbounds %struct.acpi_processor_limit, %struct.acpi_processor_limit* %23, i32 0, i32 2, !dbg !2932
  %tx19 = getelementptr inbounds %struct.acpi_processor_lx, %struct.acpi_processor_lx* %user18, i32 0, i32 1, !dbg !2933
  %24 = load i32, i32* %tx19, align 4, !dbg !2933
  store i32 %24, i32* %target_state, align 4, !dbg !2934
  br label %if.end20, !dbg !2935

if.end20:                                         ; preds = %if.then17, %if.end14
  br label %if.end25, !dbg !2936

if.else:                                          ; preds = %if.end5
  %25 = load i32, i32* %current_state, align 4, !dbg !2937
  %26 = load i32, i32* %throttling_limit, align 4, !dbg !2939
  %cmp21 = icmp eq i32 %25, %26, !dbg !2940
  br i1 %cmp21, label %if.then22, label %if.else23, !dbg !2941

if.then22:                                        ; preds = %if.else
  store i32 0, i32* %retval, align 4, !dbg !2942
  br label %return, !dbg !2942

if.else23:                                        ; preds = %if.else
  %27 = load i32, i32* %throttling_limit, align 4, !dbg !2944
  store i32 %27, i32* %target_state, align 4, !dbg !2946
  br label %if.end24

if.end24:                                         ; preds = %if.else23
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end20
  %28 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !2947
  %29 = load i32, i32* %target_state, align 4, !dbg !2948
  %call26 = call i32 @acpi_processor_set_throttling(%struct.acpi_processor* %28, i32 %29, i1 zeroext false) #10, !dbg !2949
  store i32 %call26, i32* %retval, align 4, !dbg !2950
  br label %return, !dbg !2950

return:                                           ; preds = %if.end25, %if.then22, %if.then4, %if.then2, %if.then
  %30 = load i32, i32* %retval, align 4, !dbg !2951
  ret i32 %30, !dbg !2951
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_processor_get_platform_limit(%struct.acpi_processor* %pr) #0 !dbg !2952 {
entry:
  %retval = alloca i32, align 4
  %pr.addr = alloca %struct.acpi_processor*, align 8
  %status = alloca i32, align 4
  %tpc = alloca i64, align 8
  store %struct.acpi_processor* %pr, %struct.acpi_processor** %pr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr.addr, metadata !2953, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.declare(metadata i32* %status, metadata !2955, metadata !DIExpression()), !dbg !2956
  store i32 0, i32* %status, align 4, !dbg !2956
  call void @llvm.dbg.declare(metadata i64* %tpc, metadata !2957, metadata !DIExpression()), !dbg !2958
  store i64 0, i64* %tpc, align 8, !dbg !2958
  %0 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !2959
  %tobool = icmp ne %struct.acpi_processor* %0, null, !dbg !2959
  br i1 %tobool, label %if.end, label %if.then, !dbg !2961

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !2962
  br label %return, !dbg !2962

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @ignore_tpc, align 4, !dbg !2963
  %tobool1 = icmp ne i32 %1, 0, !dbg !2963
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !2965

if.then2:                                         ; preds = %if.end
  br label %end, !dbg !2966

if.end3:                                          ; preds = %if.end
  %2 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !2967
  %handle = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %2, i32 0, i32 0, !dbg !2968
  %3 = load i8*, i8** %handle, align 8, !dbg !2968
  %call = call i32 @acpi_evaluate_integer(i8* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.acpi_object_list* null, i64* %tpc) #10, !dbg !2969
  store i32 %call, i32* %status, align 4, !dbg !2970
  %4 = load i32, i32* %status, align 4, !dbg !2971
  %tobool4 = icmp ne i32 %4, 0, !dbg !2971
  br i1 %tobool4, label %if.then5, label %if.end8, !dbg !2973

if.then5:                                         ; preds = %if.end3
  %5 = load i32, i32* %status, align 4, !dbg !2974
  %cmp = icmp ne i32 %5, 5, !dbg !2977
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !2978

if.then6:                                         ; preds = %if.then5
  %6 = load i32, i32* %status, align 4, !dbg !2979
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @_acpi_module_name, i64 0, i64 0), i32 289, i32 %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #10, !dbg !2979
  br label %if.end7, !dbg !2981

if.end7:                                          ; preds = %if.then6, %if.then5
  store i32 -19, i32* %retval, align 4, !dbg !2982
  br label %return, !dbg !2982

if.end8:                                          ; preds = %if.end3
  br label %end, !dbg !2971

end:                                              ; preds = %if.end8, %if.then2
  call void @llvm.dbg.label(metadata !2983), !dbg !2984
  %7 = load i64, i64* %tpc, align 8, !dbg !2985
  %conv = trunc i64 %7 to i32, !dbg !2986
  %8 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !2987
  %throttling_platform_limit = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %8, i32 0, i32 6, !dbg !2988
  store i32 %conv, i32* %throttling_platform_limit, align 4, !dbg !2989
  store i32 0, i32* %retval, align 4, !dbg !2990
  br label %return, !dbg !2990

return:                                           ; preds = %end, %if.end7, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !2991
  ret i32 %9, !dbg !2991
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_processor_set_throttling(%struct.acpi_processor* %pr, i32 %state, i1 zeroext %force) #0 !dbg !2992 {
entry:
  %pr.addr = alloca %struct.acpi_processor*, align 8
  %state.addr = alloca i32, align 4
  %force.addr = alloca i8, align 1
  store %struct.acpi_processor* %pr, %struct.acpi_processor** %pr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr.addr, metadata !2993, metadata !DIExpression()), !dbg !2994
  store i32 %state, i32* %state.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %state.addr, metadata !2995, metadata !DIExpression()), !dbg !2996
  %frombool = zext i1 %force to i8
  store i8 %frombool, i8* %force.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %force.addr, metadata !2997, metadata !DIExpression()), !dbg !2998
  %0 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !2999
  %1 = load i32, i32* %state.addr, align 4, !dbg !3000
  %2 = load i8, i8* %force.addr, align 1, !dbg !3001
  %tobool = trunc i8 %2 to i1, !dbg !3001
  %call = call i32 @__acpi_processor_set_throttling(%struct.acpi_processor* %0, i32 %1, i1 zeroext %tobool, i1 zeroext false) #10, !dbg !3002
  ret i32 %call, !dbg !3003
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_processor_reevaluate_tstate(%struct.acpi_processor* %pr, i1 zeroext %is_dead) #0 !dbg !3004 {
entry:
  %pr.addr = alloca %struct.acpi_processor*, align 8
  %is_dead.addr = alloca i8, align 1
  %result = alloca i32, align 4
  store %struct.acpi_processor* %pr, %struct.acpi_processor** %pr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr.addr, metadata !3007, metadata !DIExpression()), !dbg !3008
  %frombool = zext i1 %is_dead to i8
  store i8 %frombool, i8* %is_dead.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %is_dead.addr, metadata !3009, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.declare(metadata i32* %result, metadata !3011, metadata !DIExpression()), !dbg !3012
  store i32 0, i32* %result, align 4, !dbg !3012
  %0 = load i8, i8* %is_dead.addr, align 1, !dbg !3013
  %tobool = trunc i8 %0 to i1, !dbg !3013
  br i1 %tobool, label %if.then, label %if.end, !dbg !3015

if.then:                                          ; preds = %entry
  %1 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3016
  %flags = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %1, i32 0, i32 7, !dbg !3018
  %2 = bitcast %struct.acpi_processor_flags* %flags to i16*, !dbg !3019
  %bf.load = load i16, i16* %2, align 8, !dbg !3020
  %bf.clear = and i16 %bf.load, -5, !dbg !3020
  store i16 %bf.clear, i16* %2, align 8, !dbg !3020
  br label %if.end26, !dbg !3021

if.end:                                           ; preds = %entry
  %3 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3022
  %throttling = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %3, i32 0, i32 10, !dbg !3024
  %state_count = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling, i32 0, i32 4, !dbg !3025
  %4 = load i32, i32* %state_count, align 8, !dbg !3025
  %tobool1 = icmp ne i32 %4, 0, !dbg !3022
  br i1 %tobool1, label %if.end6, label %if.then2, !dbg !3026

if.then2:                                         ; preds = %if.end
  %5 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3027
  %flags3 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %5, i32 0, i32 7, !dbg !3029
  %6 = bitcast %struct.acpi_processor_flags* %flags3 to i16*, !dbg !3030
  %bf.load4 = load i16, i16* %6, align 8, !dbg !3031
  %bf.clear5 = and i16 %bf.load4, -5, !dbg !3031
  store i16 %bf.clear5, i16* %6, align 8, !dbg !3031
  br label %if.end26, !dbg !3032

if.end6:                                          ; preds = %if.end
  %7 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3033
  %flags7 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %7, i32 0, i32 7, !dbg !3034
  %8 = bitcast %struct.acpi_processor_flags* %flags7 to i16*, !dbg !3035
  %bf.load8 = load i16, i16* %8, align 8, !dbg !3036
  %bf.clear9 = and i16 %bf.load8, -5, !dbg !3036
  %bf.set = or i16 %bf.clear9, 4, !dbg !3036
  store i16 %bf.set, i16* %8, align 8, !dbg !3036
  %9 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3037
  %call = call i32 @acpi_processor_get_throttling(%struct.acpi_processor* %9) #10, !dbg !3038
  store i32 %call, i32* %result, align 4, !dbg !3039
  %10 = load i32, i32* %result, align 4, !dbg !3040
  %tobool10 = icmp ne i32 %10, 0, !dbg !3040
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !3042

if.then11:                                        ; preds = %if.end6
  br label %end, !dbg !3043

if.end12:                                         ; preds = %if.end6
  %11 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3044
  %throttling13 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %11, i32 0, i32 10, !dbg !3046
  %state = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling13, i32 0, i32 0, !dbg !3047
  %12 = load i32, i32* %state, align 8, !dbg !3047
  %tobool14 = icmp ne i32 %12, 0, !dbg !3044
  br i1 %tobool14, label %if.then15, label %if.end20, !dbg !3048

if.then15:                                        ; preds = %if.end12
  %13 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3049
  %call16 = call i32 @acpi_processor_set_throttling(%struct.acpi_processor* %13, i32 0, i1 zeroext false) #10, !dbg !3051
  store i32 %call16, i32* %result, align 4, !dbg !3052
  %14 = load i32, i32* %result, align 4, !dbg !3053
  %tobool17 = icmp ne i32 %14, 0, !dbg !3053
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !3055

if.then18:                                        ; preds = %if.then15
  br label %end, !dbg !3056

if.end19:                                         ; preds = %if.then15
  br label %if.end20, !dbg !3057

if.end20:                                         ; preds = %if.end19, %if.end12
  br label %end, !dbg !3047

end:                                              ; preds = %if.end20, %if.then18, %if.then11
  call void @llvm.dbg.label(metadata !3058), !dbg !3059
  %15 = load i32, i32* %result, align 4, !dbg !3060
  %tobool21 = icmp ne i32 %15, 0, !dbg !3060
  br i1 %tobool21, label %if.then22, label %if.end26, !dbg !3062

if.then22:                                        ; preds = %end
  %16 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3063
  %flags23 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %16, i32 0, i32 7, !dbg !3064
  %17 = bitcast %struct.acpi_processor_flags* %flags23 to i16*, !dbg !3065
  %bf.load24 = load i16, i16* %17, align 8, !dbg !3066
  %bf.clear25 = and i16 %bf.load24, -5, !dbg !3066
  store i16 %bf.clear25, i16* %17, align 8, !dbg !3066
  br label %if.end26, !dbg !3063

if.end26:                                         ; preds = %if.then, %if.then2, %if.then22, %end
  ret void, !dbg !3067
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_processor_get_throttling(%struct.acpi_processor* %pr) #0 !dbg !3068 {
entry:
  %retval = alloca i32, align 4
  %pr.addr = alloca %struct.acpi_processor*, align 8
  store %struct.acpi_processor* %pr, %struct.acpi_processor** %pr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr.addr, metadata !3069, metadata !DIExpression()), !dbg !3070
  %0 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3071
  %tobool = icmp ne %struct.acpi_processor* %0, null, !dbg !3071
  br i1 %tobool, label %if.end, label %if.then, !dbg !3073

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !3074
  br label %return, !dbg !3074

if.end:                                           ; preds = %entry
  %1 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3075
  %flags = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %1, i32 0, i32 7, !dbg !3077
  %2 = bitcast %struct.acpi_processor_flags* %flags to i16*, !dbg !3078
  %bf.load = load i16, i16* %2, align 8, !dbg !3078
  %bf.lshr = lshr i16 %bf.load, 2, !dbg !3078
  %bf.clear = and i16 %bf.lshr, 1, !dbg !3078
  %bf.cast = trunc i16 %bf.clear to i8, !dbg !3078
  %tobool1 = icmp ne i8 %bf.cast, 0, !dbg !3075
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !3079

if.then2:                                         ; preds = %if.end
  store i32 -19, i32* %retval, align 4, !dbg !3080
  br label %return, !dbg !3080

if.end3:                                          ; preds = %if.end
  %3 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3081
  %id = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %3, i32 0, i32 3, !dbg !3081
  %4 = load i32, i32* %id, align 8, !dbg !3081
  %cmp = icmp eq i32 %4, 0, !dbg !3081
  br i1 %cmp, label %if.end5, label %if.then4, !dbg !3083

if.then4:                                         ; preds = %if.end3
  store i32 -19, i32* %retval, align 4, !dbg !3084
  br label %return, !dbg !3084

if.end5:                                          ; preds = %if.end3
  %5 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3085
  %id6 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %5, i32 0, i32 3, !dbg !3086
  %6 = load i32, i32* %id6, align 8, !dbg !3086
  %7 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3087
  %8 = bitcast %struct.acpi_processor* %7 to i8*, !dbg !3087
  %call = call i32 @call_on_cpu(i32 %6, i64 (i8*)* @__acpi_processor_get_throttling, i8* %8, i1 zeroext false) #10, !dbg !3088
  store i32 %call, i32* %retval, align 4, !dbg !3089
  br label %return, !dbg !3089

return:                                           ; preds = %if.end5, %if.then4, %if.then2, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !3090
  ret i32 %9, !dbg !3090
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__acpi_processor_set_throttling(%struct.acpi_processor* %pr, i32 %state, i1 zeroext %force, i1 zeroext %direct) #0 !dbg !3091 {
entry:
  %retval = alloca i32, align 4
  %pr.addr = alloca %struct.acpi_processor*, align 8
  %state.addr = alloca i32, align 4
  %force.addr = alloca i8, align 1
  %direct.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %match_pr = alloca %struct.acpi_processor*, align 8
  %p_throttling = alloca %struct.acpi_processor_throttling*, align 8
  %arg = alloca %struct.acpi_processor_throttling_arg, align 8
  %t_state = alloca %struct.throttling_tstate, align 4
  %tmp = alloca %struct.acpi_processor**, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp32 = alloca %struct.acpi_processor**, align 8
  store %struct.acpi_processor* %pr, %struct.acpi_processor** %pr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr.addr, metadata !3094, metadata !DIExpression()), !dbg !3095
  store i32 %state, i32* %state.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %state.addr, metadata !3096, metadata !DIExpression()), !dbg !3097
  %frombool = zext i1 %force to i8
  store i8 %frombool, i8* %force.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %force.addr, metadata !3098, metadata !DIExpression()), !dbg !3099
  %frombool1 = zext i1 %direct to i8
  store i8 %frombool1, i8* %direct.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %direct.addr, metadata !3100, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3102, metadata !DIExpression()), !dbg !3103
  store i32 0, i32* %ret, align 4, !dbg !3103
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3104, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %match_pr, metadata !3106, metadata !DIExpression()), !dbg !3107
  call void @llvm.dbg.declare(metadata %struct.acpi_processor_throttling** %p_throttling, metadata !3108, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.declare(metadata %struct.acpi_processor_throttling_arg* %arg, metadata !3110, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.declare(metadata %struct.throttling_tstate* %t_state, metadata !3117, metadata !DIExpression()), !dbg !3122
  %0 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3123
  %tobool = icmp ne %struct.acpi_processor* %0, null, !dbg !3123
  br i1 %tobool, label %if.end, label %if.then, !dbg !3125

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !3126
  br label %return, !dbg !3126

if.end:                                           ; preds = %entry
  %1 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3127
  %flags = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %1, i32 0, i32 7, !dbg !3129
  %2 = bitcast %struct.acpi_processor_flags* %flags to i16*, !dbg !3130
  %bf.load = load i16, i16* %2, align 8, !dbg !3130
  %bf.lshr = lshr i16 %bf.load, 2, !dbg !3130
  %bf.clear = and i16 %bf.lshr, 1, !dbg !3130
  %bf.cast = trunc i16 %bf.clear to i8, !dbg !3130
  %tobool2 = icmp ne i8 %bf.cast, 0, !dbg !3127
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !3131

if.then3:                                         ; preds = %if.end
  store i32 -19, i32* %retval, align 4, !dbg !3132
  br label %return, !dbg !3132

if.end4:                                          ; preds = %if.end
  %3 = load i32, i32* %state.addr, align 4, !dbg !3133
  %cmp = icmp slt i32 %3, 0, !dbg !3135
  br i1 %cmp, label %if.then6, label %lor.lhs.false, !dbg !3136

lor.lhs.false:                                    ; preds = %if.end4
  %4 = load i32, i32* %state.addr, align 4, !dbg !3137
  %5 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3138
  %throttling = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %5, i32 0, i32 10, !dbg !3139
  %state_count = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling, i32 0, i32 4, !dbg !3140
  %6 = load i32, i32* %state_count, align 8, !dbg !3140
  %sub = sub i32 %6, 1, !dbg !3141
  %cmp5 = icmp ugt i32 %4, %sub, !dbg !3142
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !3143

if.then6:                                         ; preds = %lor.lhs.false, %if.end4
  store i32 -22, i32* %retval, align 4, !dbg !3144
  br label %return, !dbg !3144

if.end7:                                          ; preds = %lor.lhs.false
  %7 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3145
  %id = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %7, i32 0, i32 3, !dbg !3145
  %8 = load i32, i32* %id, align 8, !dbg !3145
  %cmp8 = icmp eq i32 %8, 0, !dbg !3145
  %lnot = xor i1 %cmp8, true, !dbg !3145
  %lnot9 = xor i1 %lnot, true, !dbg !3145
  %lnot10 = xor i1 %lnot9, true, !dbg !3145
  %lnot.ext = zext i1 %lnot10 to i32, !dbg !3145
  %conv = sext i32 %lnot.ext to i64, !dbg !3145
  %tobool11 = icmp ne i64 %conv, 0, !dbg !3145
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !3147

if.then12:                                        ; preds = %if.end7
  store i32 -19, i32* %retval, align 4, !dbg !3148
  br label %return, !dbg !3148

if.end13:                                         ; preds = %if.end7
  %9 = load i32, i32* %state.addr, align 4, !dbg !3150
  %target_state = getelementptr inbounds %struct.throttling_tstate, %struct.throttling_tstate* %t_state, i32 0, i32 1, !dbg !3151
  store i32 %9, i32* %target_state, align 4, !dbg !3152
  %10 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3153
  %throttling14 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %10, i32 0, i32 10, !dbg !3154
  store %struct.acpi_processor_throttling* %throttling14, %struct.acpi_processor_throttling** %p_throttling, align 8, !dbg !3155
  store i32 0, i32* %i, align 4, !dbg !3156
  br label %for.cond, !dbg !3156

for.cond:                                         ; preds = %for.inc, %if.end13
  %11 = load i32, i32* %i, align 4, !dbg !3158
  %cmp15 = icmp ult i32 %11, 1, !dbg !3158
  br i1 %cmp15, label %for.body, label %for.end, !dbg !3156

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4, !dbg !3160
  %cpu = getelementptr inbounds %struct.throttling_tstate, %struct.throttling_tstate* %t_state, i32 0, i32 0, !dbg !3162
  store i32 %12, i32* %cpu, align 4, !dbg !3163
  %13 = bitcast %struct.throttling_tstate* %t_state to i8*, !dbg !3164
  %call = call i32 @acpi_processor_throttling_notifier(i64 1, i8* %13) #10, !dbg !3165
  br label %for.inc, !dbg !3166

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !dbg !3158
  %inc = add i32 %14, 1, !dbg !3158
  store i32 %inc, i32* %i, align 4, !dbg !3158
  %15 = load %struct.acpi_processor_throttling*, %struct.acpi_processor_throttling** %p_throttling, align 8, !dbg !3158
  %shared_cpu_map = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %15, i32 0, i32 7, !dbg !3158
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %shared_cpu_map, i64 0, i64 0, !dbg !3158
  br label %for.cond, !dbg !3158, !llvm.loop !3167

for.end:                                          ; preds = %for.cond
  %16 = load %struct.acpi_processor_throttling*, %struct.acpi_processor_throttling** %p_throttling, align 8, !dbg !3169
  %shared_type = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %16, i32 0, i32 14, !dbg !3171
  %17 = load i32, i32* %shared_type, align 8, !dbg !3171
  %cmp17 = icmp eq i32 %17, 253, !dbg !3172
  br i1 %cmp17, label %if.then19, label %if.else, !dbg !3173

if.then19:                                        ; preds = %for.end
  %18 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3174
  %pr20 = getelementptr inbounds %struct.acpi_processor_throttling_arg, %struct.acpi_processor_throttling_arg* %arg, i32 0, i32 0, !dbg !3176
  store %struct.acpi_processor* %18, %struct.acpi_processor** %pr20, align 8, !dbg !3177
  %19 = load i32, i32* %state.addr, align 4, !dbg !3178
  %target_state21 = getelementptr inbounds %struct.acpi_processor_throttling_arg, %struct.acpi_processor_throttling_arg* %arg, i32 0, i32 1, !dbg !3179
  store i32 %19, i32* %target_state21, align 8, !dbg !3180
  %20 = load i8, i8* %force.addr, align 1, !dbg !3181
  %tobool22 = trunc i8 %20 to i1, !dbg !3181
  %force23 = getelementptr inbounds %struct.acpi_processor_throttling_arg, %struct.acpi_processor_throttling_arg* %arg, i32 0, i32 2, !dbg !3182
  %frombool24 = zext i1 %tobool22 to i8, !dbg !3183
  store i8 %frombool24, i8* %force23, align 4, !dbg !3183
  %21 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3184
  %id25 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %21, i32 0, i32 3, !dbg !3185
  %22 = load i32, i32* %id25, align 8, !dbg !3185
  %23 = bitcast %struct.acpi_processor_throttling_arg* %arg to i8*, !dbg !3186
  %24 = load i8, i8* %direct.addr, align 1, !dbg !3187
  %tobool26 = trunc i8 %24 to i1, !dbg !3187
  %call27 = call i32 @call_on_cpu(i32 %22, i64 (i8*)* @acpi_processor_throttling_fn, i8* %23, i1 zeroext %tobool26) #10, !dbg !3188
  store i32 %call27, i32* %ret, align 4, !dbg !3189
  br label %if.end57, !dbg !3190

if.else:                                          ; preds = %for.end
  store i32 0, i32* %i, align 4, !dbg !3191
  br label %for.cond28, !dbg !3191

for.cond28:                                       ; preds = %for.inc52, %if.else
  %25 = load i32, i32* %i, align 4, !dbg !3194
  %cmp29 = icmp ult i32 %25, 1, !dbg !3194
  br i1 %cmp29, label %for.body31, label %for.end56, !dbg !3191

for.body31:                                       ; preds = %for.cond28
  %26 = load i32, i32* %i, align 4, !dbg !3196
  br label %do.body, !dbg !3199

do.body:                                          ; preds = %for.body31
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !3201, metadata !DIExpression()), !dbg !3203
  store i8* null, i8** %__vpp_verify, align 8, !dbg !3203
  %27 = load i8*, i8** %__vpp_verify, align 8, !dbg !3203
  br label %do.end, !dbg !3203

do.end:                                           ; preds = %do.body
  store %struct.acpi_processor** @processors, %struct.acpi_processor*** %tmp32, align 8, !dbg !3203
  %28 = load %struct.acpi_processor**, %struct.acpi_processor*** %tmp32, align 8, !dbg !3199
  store %struct.acpi_processor** %28, %struct.acpi_processor*** %tmp, align 8, !dbg !3196
  %29 = load %struct.acpi_processor**, %struct.acpi_processor*** %tmp, align 8, !dbg !3196
  %30 = load %struct.acpi_processor*, %struct.acpi_processor** %29, align 8, !dbg !3204
  store %struct.acpi_processor* %30, %struct.acpi_processor** %match_pr, align 8, !dbg !3205
  %31 = load %struct.acpi_processor*, %struct.acpi_processor** %match_pr, align 8, !dbg !3206
  %tobool33 = icmp ne %struct.acpi_processor* %31, null, !dbg !3206
  br i1 %tobool33, label %if.end35, label %if.then34, !dbg !3208

if.then34:                                        ; preds = %do.end
  br label %for.inc52, !dbg !3209

if.end35:                                         ; preds = %do.end
  %32 = load %struct.acpi_processor*, %struct.acpi_processor** %match_pr, align 8, !dbg !3211
  %flags36 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %32, i32 0, i32 7, !dbg !3213
  %33 = bitcast %struct.acpi_processor_flags* %flags36 to i16*, !dbg !3214
  %bf.load37 = load i16, i16* %33, align 8, !dbg !3214
  %bf.lshr38 = lshr i16 %bf.load37, 2, !dbg !3214
  %bf.clear39 = and i16 %bf.lshr38, 1, !dbg !3214
  %bf.cast40 = trunc i16 %bf.clear39 to i8, !dbg !3214
  %tobool41 = icmp ne i8 %bf.cast40, 0, !dbg !3211
  br i1 %tobool41, label %if.end43, label %if.then42, !dbg !3215

if.then42:                                        ; preds = %if.end35
  br label %for.inc52, !dbg !3216

if.end43:                                         ; preds = %if.end35
  %34 = load %struct.acpi_processor*, %struct.acpi_processor** %match_pr, align 8, !dbg !3218
  %pr44 = getelementptr inbounds %struct.acpi_processor_throttling_arg, %struct.acpi_processor_throttling_arg* %arg, i32 0, i32 0, !dbg !3219
  store %struct.acpi_processor* %34, %struct.acpi_processor** %pr44, align 8, !dbg !3220
  %35 = load i32, i32* %state.addr, align 4, !dbg !3221
  %target_state45 = getelementptr inbounds %struct.acpi_processor_throttling_arg, %struct.acpi_processor_throttling_arg* %arg, i32 0, i32 1, !dbg !3222
  store i32 %35, i32* %target_state45, align 8, !dbg !3223
  %36 = load i8, i8* %force.addr, align 1, !dbg !3224
  %tobool46 = trunc i8 %36 to i1, !dbg !3224
  %force47 = getelementptr inbounds %struct.acpi_processor_throttling_arg, %struct.acpi_processor_throttling_arg* %arg, i32 0, i32 2, !dbg !3225
  %frombool48 = zext i1 %tobool46 to i8, !dbg !3226
  store i8 %frombool48, i8* %force47, align 4, !dbg !3226
  %37 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3227
  %id49 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %37, i32 0, i32 3, !dbg !3228
  %38 = load i32, i32* %id49, align 8, !dbg !3228
  %39 = bitcast %struct.acpi_processor_throttling_arg* %arg to i8*, !dbg !3229
  %40 = load i8, i8* %direct.addr, align 1, !dbg !3230
  %tobool50 = trunc i8 %40 to i1, !dbg !3230
  %call51 = call i32 @call_on_cpu(i32 %38, i64 (i8*)* @acpi_processor_throttling_fn, i8* %39, i1 zeroext %tobool50) #10, !dbg !3231
  store i32 %call51, i32* %ret, align 4, !dbg !3232
  br label %for.inc52, !dbg !3233

for.inc52:                                        ; preds = %if.end43, %if.then42, %if.then34
  %41 = load i32, i32* %i, align 4, !dbg !3194
  %inc53 = add i32 %41, 1, !dbg !3194
  store i32 %inc53, i32* %i, align 4, !dbg !3194
  %42 = load %struct.acpi_processor_throttling*, %struct.acpi_processor_throttling** %p_throttling, align 8, !dbg !3194
  %shared_cpu_map54 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %42, i32 0, i32 7, !dbg !3194
  %arraydecay55 = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %shared_cpu_map54, i64 0, i64 0, !dbg !3194
  br label %for.cond28, !dbg !3194, !llvm.loop !3234

for.end56:                                        ; preds = %for.cond28
  br label %if.end57

if.end57:                                         ; preds = %for.end56, %if.then19
  store i32 0, i32* %i, align 4, !dbg !3236
  br label %for.cond58, !dbg !3236

for.cond58:                                       ; preds = %for.inc64, %if.end57
  %43 = load i32, i32* %i, align 4, !dbg !3238
  %cmp59 = icmp ult i32 %43, 1, !dbg !3238
  br i1 %cmp59, label %for.body61, label %for.end68, !dbg !3236

for.body61:                                       ; preds = %for.cond58
  %44 = load i32, i32* %i, align 4, !dbg !3240
  %cpu62 = getelementptr inbounds %struct.throttling_tstate, %struct.throttling_tstate* %t_state, i32 0, i32 0, !dbg !3242
  store i32 %44, i32* %cpu62, align 4, !dbg !3243
  %45 = bitcast %struct.throttling_tstate* %t_state to i8*, !dbg !3244
  %call63 = call i32 @acpi_processor_throttling_notifier(i64 2, i8* %45) #10, !dbg !3245
  br label %for.inc64, !dbg !3246

for.inc64:                                        ; preds = %for.body61
  %46 = load i32, i32* %i, align 4, !dbg !3238
  %inc65 = add i32 %46, 1, !dbg !3238
  store i32 %inc65, i32* %i, align 4, !dbg !3238
  %47 = load %struct.acpi_processor_throttling*, %struct.acpi_processor_throttling** %p_throttling, align 8, !dbg !3238
  %shared_cpu_map66 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %47, i32 0, i32 7, !dbg !3238
  %arraydecay67 = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %shared_cpu_map66, i64 0, i64 0, !dbg !3238
  br label %for.cond58, !dbg !3238, !llvm.loop !3247

for.end68:                                        ; preds = %for.cond58
  %48 = load i32, i32* %ret, align 4, !dbg !3249
  store i32 %48, i32* %retval, align 4, !dbg !3250
  br label %return, !dbg !3250

return:                                           ; preds = %for.end68, %if.then12, %if.then6, %if.then3, %if.then
  %49 = load i32, i32* %retval, align 4, !dbg !3251
  ret i32 %49, !dbg !3251
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_processor_get_throttling_info(%struct.acpi_processor* %pr) #0 !dbg !3252 {
entry:
  %retval = alloca i32, align 4
  %pr.addr = alloca %struct.acpi_processor*, align 8
  %result = alloca i32, align 4
  %pthrottling = alloca %struct.acpi_processor_throttling*, align 8
  store %struct.acpi_processor* %pr, %struct.acpi_processor** %pr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr.addr, metadata !3253, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.declare(metadata i32* %result, metadata !3255, metadata !DIExpression()), !dbg !3256
  store i32 0, i32* %result, align 4, !dbg !3256
  call void @llvm.dbg.declare(metadata %struct.acpi_processor_throttling** %pthrottling, metadata !3257, metadata !DIExpression()), !dbg !3258
  %0 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3259
  %call = call i32 @acpi_processor_get_throttling_control(%struct.acpi_processor* %0) #10, !dbg !3261
  %tobool = icmp ne i32 %call, 0, !dbg !3261
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !3262

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3263
  %call1 = call i32 @acpi_processor_get_throttling_states(%struct.acpi_processor* %1) #10, !dbg !3264
  %tobool2 = icmp ne i32 %call1, 0, !dbg !3264
  br i1 %tobool2, label %if.then, label %lor.lhs.false3, !dbg !3265

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %2 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3266
  %call4 = call i32 @acpi_processor_get_platform_limit(%struct.acpi_processor* %2) #10, !dbg !3267
  %tobool5 = icmp ne i32 %call4, 0, !dbg !3267
  br i1 %tobool5, label %if.then, label %if.else, !dbg !3268

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  %3 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3269
  %throttling = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %3, i32 0, i32 10, !dbg !3271
  %acpi_processor_get_throttling = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling, i32 0, i32 8, !dbg !3272
  %acpi_processor_get_throttling6 = bitcast {}** %acpi_processor_get_throttling to i32 (%struct.acpi_processor*)**, !dbg !3272
  store i32 (%struct.acpi_processor*)* @acpi_processor_get_throttling_fadt, i32 (%struct.acpi_processor*)** %acpi_processor_get_throttling6, align 8, !dbg !3273
  %4 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3274
  %throttling7 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %4, i32 0, i32 10, !dbg !3275
  %acpi_processor_set_throttling = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling7, i32 0, i32 9, !dbg !3276
  store i32 (%struct.acpi_processor*, i32, i1)* @acpi_processor_set_throttling_fadt, i32 (%struct.acpi_processor*, i32, i1)** %acpi_processor_set_throttling, align 8, !dbg !3277
  %5 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3278
  %call8 = call i32 @acpi_processor_get_fadt_info(%struct.acpi_processor* %5) #10, !dbg !3280
  %tobool9 = icmp ne i32 %call8, 0, !dbg !3280
  br i1 %tobool9, label %if.then10, label %if.end, !dbg !3281

if.then10:                                        ; preds = %if.then
  store i32 0, i32* %retval, align 4, !dbg !3282
  br label %return, !dbg !3282

if.end:                                           ; preds = %if.then
  br label %if.end16, !dbg !3283

if.else:                                          ; preds = %lor.lhs.false3
  %6 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3284
  %throttling11 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %6, i32 0, i32 10, !dbg !3286
  %acpi_processor_get_throttling12 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling11, i32 0, i32 8, !dbg !3287
  %acpi_processor_get_throttling13 = bitcast {}** %acpi_processor_get_throttling12 to i32 (%struct.acpi_processor*)**, !dbg !3287
  store i32 (%struct.acpi_processor*)* @acpi_processor_get_throttling_ptc, i32 (%struct.acpi_processor*)** %acpi_processor_get_throttling13, align 8, !dbg !3288
  %7 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3289
  %throttling14 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %7, i32 0, i32 10, !dbg !3290
  %acpi_processor_set_throttling15 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling14, i32 0, i32 9, !dbg !3291
  store i32 (%struct.acpi_processor*, i32, i1)* @acpi_processor_set_throttling_ptc, i32 (%struct.acpi_processor*, i32, i1)** %acpi_processor_set_throttling15, align 8, !dbg !3292
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.end
  %8 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3293
  %call17 = call i32 @acpi_processor_get_tsd(%struct.acpi_processor* %8) #10, !dbg !3295
  %tobool18 = icmp ne i32 %call17, 0, !dbg !3295
  br i1 %tobool18, label %if.then19, label %if.end21, !dbg !3296

if.then19:                                        ; preds = %if.end16
  %9 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3297
  %throttling20 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %9, i32 0, i32 10, !dbg !3299
  store %struct.acpi_processor_throttling* %throttling20, %struct.acpi_processor_throttling** %pthrottling, align 8, !dbg !3300
  %10 = load %struct.acpi_processor_throttling*, %struct.acpi_processor_throttling** %pthrottling, align 8, !dbg !3301
  %tsd_valid_flag = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %10, i32 0, i32 13, !dbg !3302
  store i8 0, i8* %tsd_valid_flag, align 2, !dbg !3303
  %11 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3304
  %id = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %11, i32 0, i32 3, !dbg !3305
  %12 = load i32, i32* %id, align 8, !dbg !3305
  %13 = load %struct.acpi_processor_throttling*, %struct.acpi_processor_throttling** %pthrottling, align 8, !dbg !3306
  %shared_cpu_map = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %13, i32 0, i32 7, !dbg !3307
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %shared_cpu_map, i64 0, i64 0, !dbg !3306
  call void @cpumask_set_cpu(i32 %12, %struct.cpumask* %arraydecay) #10, !dbg !3308
  %14 = load %struct.acpi_processor_throttling*, %struct.acpi_processor_throttling** %pthrottling, align 8, !dbg !3309
  %shared_type = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %14, i32 0, i32 14, !dbg !3310
  store i32 252, i32* %shared_type, align 8, !dbg !3311
  br label %if.end21, !dbg !3312

if.end21:                                         ; preds = %if.then19, %if.end16
  %bf.load = load i8, i8* getelementptr inbounds (%struct.acpi_processor_errata, %struct.acpi_processor_errata* @errata, i32 0, i32 1, i32 0), align 4, !dbg !3313
  %bf.clear = and i8 %bf.load, 1, !dbg !3313
  %tobool22 = icmp ne i8 %bf.clear, 0, !dbg !3315
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !3316

if.then23:                                        ; preds = %if.end21
  store i32 0, i32* %retval, align 4, !dbg !3317
  br label %return, !dbg !3317

if.end24:                                         ; preds = %if.end21
  %15 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3319
  %flags = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %15, i32 0, i32 7, !dbg !3320
  %16 = bitcast %struct.acpi_processor_flags* %flags to i16*, !dbg !3321
  %bf.load25 = load i16, i16* %16, align 8, !dbg !3322
  %bf.clear26 = and i16 %bf.load25, -5, !dbg !3322
  %bf.set = or i16 %bf.clear26, 4, !dbg !3322
  store i16 %bf.set, i16* %16, align 8, !dbg !3322
  %17 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3323
  %call27 = call i32 @acpi_processor_get_throttling(%struct.acpi_processor* %17) #10, !dbg !3324
  store i32 %call27, i32* %result, align 4, !dbg !3325
  %18 = load i32, i32* %result, align 4, !dbg !3326
  %tobool28 = icmp ne i32 %18, 0, !dbg !3326
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !3328

if.then29:                                        ; preds = %if.end24
  br label %end, !dbg !3329

if.end30:                                         ; preds = %if.end24
  %19 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3330
  %throttling31 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %19, i32 0, i32 10, !dbg !3332
  %state = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling31, i32 0, i32 0, !dbg !3333
  %20 = load i32, i32* %state, align 8, !dbg !3333
  %tobool32 = icmp ne i32 %20, 0, !dbg !3330
  br i1 %tobool32, label %if.then33, label %if.end38, !dbg !3334

if.then33:                                        ; preds = %if.end30
  %21 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3335
  %call34 = call i32 @acpi_processor_set_throttling(%struct.acpi_processor* %21, i32 0, i1 zeroext false) #10, !dbg !3337
  store i32 %call34, i32* %result, align 4, !dbg !3338
  %22 = load i32, i32* %result, align 4, !dbg !3339
  %tobool35 = icmp ne i32 %22, 0, !dbg !3339
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !3341

if.then36:                                        ; preds = %if.then33
  br label %end, !dbg !3342

if.end37:                                         ; preds = %if.then33
  br label %if.end38, !dbg !3343

if.end38:                                         ; preds = %if.end37, %if.end30
  br label %end, !dbg !3333

end:                                              ; preds = %if.end38, %if.then36, %if.then29
  call void @llvm.dbg.label(metadata !3344), !dbg !3345
  %23 = load i32, i32* %result, align 4, !dbg !3346
  %tobool39 = icmp ne i32 %23, 0, !dbg !3346
  br i1 %tobool39, label %if.then40, label %if.end44, !dbg !3348

if.then40:                                        ; preds = %end
  %24 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3349
  %flags41 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %24, i32 0, i32 7, !dbg !3350
  %25 = bitcast %struct.acpi_processor_flags* %flags41 to i16*, !dbg !3351
  %bf.load42 = load i16, i16* %25, align 8, !dbg !3352
  %bf.clear43 = and i16 %bf.load42, -5, !dbg !3352
  store i16 %bf.clear43, i16* %25, align 8, !dbg !3352
  br label %if.end44, !dbg !3349

if.end44:                                         ; preds = %if.then40, %end
  %26 = load i32, i32* %result, align 4, !dbg !3353
  store i32 %26, i32* %retval, align 4, !dbg !3354
  br label %return, !dbg !3354

return:                                           ; preds = %if.end44, %if.then23, %if.then10
  %27 = load i32, i32* %retval, align 4, !dbg !3355
  ret i32 %27, !dbg !3355
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_processor_get_throttling_control(%struct.acpi_processor* %pr) #0 !dbg !3356 {
entry:
  %retval = alloca i32, align 4
  %pr.addr = alloca %struct.acpi_processor*, align 8
  %result = alloca i32, align 4
  %status = alloca i32, align 4
  %buffer = alloca %struct.acpi_buffer, align 8
  %ptc = alloca %union.acpi_object*, align 8
  %obj = alloca %union.acpi_object, align 8
  %throttling = alloca %struct.acpi_processor_throttling*, align 8
  store %struct.acpi_processor* %pr, %struct.acpi_processor** %pr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr.addr, metadata !3357, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.declare(metadata i32* %result, metadata !3359, metadata !DIExpression()), !dbg !3360
  store i32 0, i32* %result, align 4, !dbg !3360
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3361, metadata !DIExpression()), !dbg !3362
  store i32 0, i32* %status, align 4, !dbg !3362
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer* %buffer, metadata !3363, metadata !DIExpression()), !dbg !3369
  %0 = bitcast %struct.acpi_buffer* %buffer to i8*, !dbg !3369
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast (%struct.acpi_buffer* @__const.acpi_processor_get_throttling_control.buffer to i8*), i64 16, i1 false), !dbg !3369
  call void @llvm.dbg.declare(metadata %union.acpi_object** %ptc, metadata !3370, metadata !DIExpression()), !dbg !3371
  store %union.acpi_object* null, %union.acpi_object** %ptc, align 8, !dbg !3371
  call void @llvm.dbg.declare(metadata %union.acpi_object* %obj, metadata !3372, metadata !DIExpression()), !dbg !3373
  %1 = bitcast %union.acpi_object* %obj to i8*, !dbg !3373
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 bitcast ({ i32, [20 x i8] }* @__const.acpi_processor_get_throttling_control.obj to i8*), i64 24, i1 false), !dbg !3373
  call void @llvm.dbg.declare(metadata %struct.acpi_processor_throttling** %throttling, metadata !3374, metadata !DIExpression()), !dbg !3375
  %2 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3376
  %handle = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %2, i32 0, i32 0, !dbg !3377
  %3 = load i8*, i8** %handle, align 8, !dbg !3377
  %call = call i32 @acpi_evaluate_object(i8* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %struct.acpi_object_list* null, %struct.acpi_buffer* %buffer) #10, !dbg !3378
  store i32 %call, i32* %status, align 4, !dbg !3379
  %4 = load i32, i32* %status, align 4, !dbg !3380
  %tobool = icmp ne i32 %4, 0, !dbg !3380
  br i1 %tobool, label %if.then, label %if.end2, !dbg !3382

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %status, align 4, !dbg !3383
  %cmp = icmp ne i32 %5, 5, !dbg !3386
  br i1 %cmp, label %if.then1, label %if.end, !dbg !3387

if.then1:                                         ; preds = %if.then
  %6 = load i32, i32* %status, align 4, !dbg !3388
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @_acpi_module_name, i64 0, i64 0), i32 422, i32 %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !3388
  br label %if.end, !dbg !3390

if.end:                                           ; preds = %if.then1, %if.then
  store i32 -19, i32* %retval, align 4, !dbg !3391
  br label %return, !dbg !3391

if.end2:                                          ; preds = %entry
  %pointer = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 1, !dbg !3392
  %7 = load i8*, i8** %pointer, align 8, !dbg !3392
  %8 = bitcast i8* %7 to %union.acpi_object*, !dbg !3393
  store %union.acpi_object* %8, %union.acpi_object** %ptc, align 8, !dbg !3394
  %9 = load %union.acpi_object*, %union.acpi_object** %ptc, align 8, !dbg !3395
  %tobool3 = icmp ne %union.acpi_object* %9, null, !dbg !3395
  br i1 %tobool3, label %lor.lhs.false, label %if.then7, !dbg !3397

lor.lhs.false:                                    ; preds = %if.end2
  %10 = load %union.acpi_object*, %union.acpi_object** %ptc, align 8, !dbg !3398
  %type = bitcast %union.acpi_object* %10 to i32*, !dbg !3399
  %11 = load i32, i32* %type, align 8, !dbg !3399
  %cmp4 = icmp ne i32 %11, 4, !dbg !3400
  br i1 %cmp4, label %if.then7, label %lor.lhs.false5, !dbg !3401

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %12 = load %union.acpi_object*, %union.acpi_object** %ptc, align 8, !dbg !3402
  %package = bitcast %union.acpi_object* %12 to %struct.anon.45*, !dbg !3403
  %count = getelementptr inbounds %struct.anon.45, %struct.anon.45* %package, i32 0, i32 1, !dbg !3404
  %13 = load i32, i32* %count, align 4, !dbg !3404
  %cmp6 = icmp ne i32 %13, 2, !dbg !3405
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !3406

if.then7:                                         ; preds = %lor.lhs.false5, %lor.lhs.false, %if.end2
  %call8 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !3407
  store i32 -14, i32* %result, align 4, !dbg !3409
  br label %end, !dbg !3410

if.end9:                                          ; preds = %lor.lhs.false5
  %14 = load %union.acpi_object*, %union.acpi_object** %ptc, align 8, !dbg !3411
  %package10 = bitcast %union.acpi_object* %14 to %struct.anon.45*, !dbg !3412
  %elements = getelementptr inbounds %struct.anon.45, %struct.anon.45* %package10, i32 0, i32 2, !dbg !3413
  %15 = load %union.acpi_object*, %union.acpi_object** %elements, align 8, !dbg !3413
  %arrayidx = getelementptr %union.acpi_object, %union.acpi_object* %15, i64 0, !dbg !3411
  %16 = bitcast %union.acpi_object* %obj to i8*, !dbg !3411
  %17 = bitcast %union.acpi_object* %arrayidx to i8*, !dbg !3411
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 24, i1 false), !dbg !3411
  %type11 = bitcast %union.acpi_object* %obj to i32*, !dbg !3414
  %18 = load i32, i32* %type11, align 8, !dbg !3414
  %cmp12 = icmp ne i32 %18, 3, !dbg !3416
  br i1 %cmp12, label %if.then22, label %lor.lhs.false13, !dbg !3417

lor.lhs.false13:                                  ; preds = %if.end9
  %buffer14 = bitcast %union.acpi_object* %obj to %struct.anon.44*, !dbg !3418
  %length = getelementptr inbounds %struct.anon.44, %struct.anon.44* %buffer14, i32 0, i32 1, !dbg !3419
  %19 = load i32, i32* %length, align 4, !dbg !3419
  %conv = zext i32 %19 to i64, !dbg !3420
  %cmp15 = icmp ult i64 %conv, 15, !dbg !3421
  br i1 %cmp15, label %if.then22, label %lor.lhs.false17, !dbg !3422

lor.lhs.false17:                                  ; preds = %lor.lhs.false13
  %buffer18 = bitcast %union.acpi_object* %obj to %struct.anon.44*, !dbg !3423
  %pointer19 = getelementptr inbounds %struct.anon.44, %struct.anon.44* %buffer18, i32 0, i32 2, !dbg !3424
  %20 = load i8*, i8** %pointer19, align 8, !dbg !3424
  %cmp20 = icmp eq i8* %20, null, !dbg !3425
  br i1 %cmp20, label %if.then22, label %if.end24, !dbg !3426

if.then22:                                        ; preds = %lor.lhs.false17, %lor.lhs.false13, %if.end9
  %call23 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0)) #11, !dbg !3427
  store i32 -14, i32* %result, align 4, !dbg !3429
  br label %end, !dbg !3430

if.end24:                                         ; preds = %lor.lhs.false17
  %21 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3431
  %throttling25 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %21, i32 0, i32 10, !dbg !3432
  %control_register = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling25, i32 0, i32 2, !dbg !3433
  %22 = bitcast %struct.acpi_pct_register* %control_register to i8*, !dbg !3434
  %buffer26 = bitcast %union.acpi_object* %obj to %struct.anon.44*, !dbg !3435
  %pointer27 = getelementptr inbounds %struct.anon.44, %struct.anon.44* %buffer26, i32 0, i32 2, !dbg !3436
  %23 = load i8*, i8** %pointer27, align 8, !dbg !3436
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 1 %23, i64 15, i1 false), !dbg !3434
  %24 = load %union.acpi_object*, %union.acpi_object** %ptc, align 8, !dbg !3437
  %package28 = bitcast %union.acpi_object* %24 to %struct.anon.45*, !dbg !3438
  %elements29 = getelementptr inbounds %struct.anon.45, %struct.anon.45* %package28, i32 0, i32 2, !dbg !3439
  %25 = load %union.acpi_object*, %union.acpi_object** %elements29, align 8, !dbg !3439
  %arrayidx30 = getelementptr %union.acpi_object, %union.acpi_object* %25, i64 1, !dbg !3437
  %26 = bitcast %union.acpi_object* %obj to i8*, !dbg !3437
  %27 = bitcast %union.acpi_object* %arrayidx30 to i8*, !dbg !3437
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 %27, i64 24, i1 false), !dbg !3437
  %type31 = bitcast %union.acpi_object* %obj to i32*, !dbg !3440
  %28 = load i32, i32* %type31, align 8, !dbg !3440
  %cmp32 = icmp ne i32 %28, 3, !dbg !3442
  br i1 %cmp32, label %if.then45, label %lor.lhs.false34, !dbg !3443

lor.lhs.false34:                                  ; preds = %if.end24
  %buffer35 = bitcast %union.acpi_object* %obj to %struct.anon.44*, !dbg !3444
  %length36 = getelementptr inbounds %struct.anon.44, %struct.anon.44* %buffer35, i32 0, i32 1, !dbg !3445
  %29 = load i32, i32* %length36, align 4, !dbg !3445
  %conv37 = zext i32 %29 to i64, !dbg !3446
  %cmp38 = icmp ult i64 %conv37, 15, !dbg !3447
  br i1 %cmp38, label %if.then45, label %lor.lhs.false40, !dbg !3448

lor.lhs.false40:                                  ; preds = %lor.lhs.false34
  %buffer41 = bitcast %union.acpi_object* %obj to %struct.anon.44*, !dbg !3449
  %pointer42 = getelementptr inbounds %struct.anon.44, %struct.anon.44* %buffer41, i32 0, i32 2, !dbg !3450
  %30 = load i8*, i8** %pointer42, align 8, !dbg !3450
  %cmp43 = icmp eq i8* %30, null, !dbg !3451
  br i1 %cmp43, label %if.then45, label %if.end47, !dbg !3452

if.then45:                                        ; preds = %lor.lhs.false40, %lor.lhs.false34, %if.end24
  %call46 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !3453
  store i32 -14, i32* %result, align 4, !dbg !3455
  br label %end, !dbg !3456

if.end47:                                         ; preds = %lor.lhs.false40
  %31 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3457
  %throttling48 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %31, i32 0, i32 10, !dbg !3458
  %status_register = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling48, i32 0, i32 3, !dbg !3459
  %32 = bitcast %struct.acpi_pct_register* %status_register to i8*, !dbg !3460
  %buffer49 = bitcast %union.acpi_object* %obj to %struct.anon.44*, !dbg !3461
  %pointer50 = getelementptr inbounds %struct.anon.44, %struct.anon.44* %buffer49, i32 0, i32 2, !dbg !3462
  %33 = load i8*, i8** %pointer50, align 8, !dbg !3462
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %32, i8* align 1 %33, i64 15, i1 false), !dbg !3460
  %34 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3463
  %throttling51 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %34, i32 0, i32 10, !dbg !3464
  store %struct.acpi_processor_throttling* %throttling51, %struct.acpi_processor_throttling** %throttling, align 8, !dbg !3465
  %35 = load %struct.acpi_processor_throttling*, %struct.acpi_processor_throttling** %throttling, align 8, !dbg !3466
  %control_register52 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %35, i32 0, i32 2, !dbg !3468
  %bit_width = getelementptr inbounds %struct.acpi_pct_register, %struct.acpi_pct_register* %control_register52, i32 0, i32 3, !dbg !3469
  %36 = load i8, i8* %bit_width, align 4, !dbg !3469
  %conv53 = zext i8 %36 to i32, !dbg !3466
  %37 = load %struct.acpi_processor_throttling*, %struct.acpi_processor_throttling** %throttling, align 8, !dbg !3470
  %control_register54 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %37, i32 0, i32 2, !dbg !3471
  %bit_offset = getelementptr inbounds %struct.acpi_pct_register, %struct.acpi_pct_register* %control_register54, i32 0, i32 4, !dbg !3472
  %38 = load i8, i8* %bit_offset, align 1, !dbg !3472
  %conv55 = zext i8 %38 to i32, !dbg !3470
  %add = add i32 %conv53, %conv55, !dbg !3473
  %cmp56 = icmp sgt i32 %add, 32, !dbg !3474
  br i1 %cmp56, label %if.then58, label %if.end60, !dbg !3475

if.then58:                                        ; preds = %if.end47
  %call59 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0)) #11, !dbg !3476
  store i32 -14, i32* %result, align 4, !dbg !3478
  br label %end, !dbg !3479

if.end60:                                         ; preds = %if.end47
  %39 = load %struct.acpi_processor_throttling*, %struct.acpi_processor_throttling** %throttling, align 8, !dbg !3480
  %status_register61 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %39, i32 0, i32 3, !dbg !3482
  %bit_width62 = getelementptr inbounds %struct.acpi_pct_register, %struct.acpi_pct_register* %status_register61, i32 0, i32 3, !dbg !3483
  %40 = load i8, i8* %bit_width62, align 1, !dbg !3483
  %conv63 = zext i8 %40 to i32, !dbg !3480
  %41 = load %struct.acpi_processor_throttling*, %struct.acpi_processor_throttling** %throttling, align 8, !dbg !3484
  %status_register64 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %41, i32 0, i32 3, !dbg !3485
  %bit_offset65 = getelementptr inbounds %struct.acpi_pct_register, %struct.acpi_pct_register* %status_register64, i32 0, i32 4, !dbg !3486
  %42 = load i8, i8* %bit_offset65, align 1, !dbg !3486
  %conv66 = zext i8 %42 to i32, !dbg !3484
  %add67 = add i32 %conv63, %conv66, !dbg !3487
  %cmp68 = icmp sgt i32 %add67, 32, !dbg !3488
  br i1 %cmp68, label %if.then70, label %if.end72, !dbg !3489

if.then70:                                        ; preds = %if.end60
  %call71 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0)) #11, !dbg !3490
  store i32 -14, i32* %result, align 4, !dbg !3492
  br label %end, !dbg !3493

if.end72:                                         ; preds = %if.end60
  br label %end, !dbg !3494

end:                                              ; preds = %if.end72, %if.then70, %if.then58, %if.then45, %if.then22, %if.then7
  call void @llvm.dbg.label(metadata !3495), !dbg !3496
  %pointer73 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 1, !dbg !3497
  %43 = load i8*, i8** %pointer73, align 8, !dbg !3497
  call void @kfree(i8* %43) #10, !dbg !3498
  %44 = load i32, i32* %result, align 4, !dbg !3499
  store i32 %44, i32* %retval, align 4, !dbg !3500
  br label %return, !dbg !3500

return:                                           ; preds = %end, %if.end
  %45 = load i32, i32* %retval, align 4, !dbg !3501
  ret i32 %45, !dbg !3501
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_processor_get_throttling_states(%struct.acpi_processor* %pr) #0 !dbg !3502 {
entry:
  %retval = alloca i32, align 4
  %pr.addr = alloca %struct.acpi_processor*, align 8
  %result = alloca i32, align 4
  %status = alloca i32, align 4
  %buffer = alloca %struct.acpi_buffer, align 8
  %format = alloca %struct.acpi_buffer, align 8
  %state = alloca %struct.acpi_buffer, align 8
  %tss = alloca %union.acpi_object*, align 8
  %i = alloca i32, align 4
  %tx = alloca %struct.acpi_processor_tx_tss*, align 8
  store %struct.acpi_processor* %pr, %struct.acpi_processor** %pr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr.addr, metadata !3503, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.declare(metadata i32* %result, metadata !3505, metadata !DIExpression()), !dbg !3506
  store i32 0, i32* %result, align 4, !dbg !3506
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3507, metadata !DIExpression()), !dbg !3508
  store i32 0, i32* %status, align 4, !dbg !3508
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer* %buffer, metadata !3509, metadata !DIExpression()), !dbg !3510
  %0 = bitcast %struct.acpi_buffer* %buffer to i8*, !dbg !3510
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast (%struct.acpi_buffer* @__const.acpi_processor_get_throttling_states.buffer to i8*), i64 16, i1 false), !dbg !3510
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer* %format, metadata !3511, metadata !DIExpression()), !dbg !3512
  %1 = bitcast %struct.acpi_buffer* %format to i8*, !dbg !3512
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 bitcast (%struct.acpi_buffer* @__const.acpi_processor_get_throttling_states.format to i8*), i64 16, i1 false), !dbg !3512
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer* %state, metadata !3513, metadata !DIExpression()), !dbg !3514
  %2 = bitcast %struct.acpi_buffer* %state to i8*, !dbg !3514
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 16, i1 false), !dbg !3514
  call void @llvm.dbg.declare(metadata %union.acpi_object** %tss, metadata !3515, metadata !DIExpression()), !dbg !3516
  store %union.acpi_object* null, %union.acpi_object** %tss, align 8, !dbg !3516
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3517, metadata !DIExpression()), !dbg !3518
  %3 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3519
  %handle = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %3, i32 0, i32 0, !dbg !3520
  %4 = load i8*, i8** %handle, align 8, !dbg !3520
  %call = call i32 @acpi_evaluate_object(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), %struct.acpi_object_list* null, %struct.acpi_buffer* %buffer) #10, !dbg !3521
  store i32 %call, i32* %status, align 4, !dbg !3522
  %5 = load i32, i32* %status, align 4, !dbg !3523
  %tobool = icmp ne i32 %5, 0, !dbg !3523
  br i1 %tobool, label %if.then, label %if.end2, !dbg !3525

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %status, align 4, !dbg !3526
  %cmp = icmp ne i32 %6, 5, !dbg !3529
  br i1 %cmp, label %if.then1, label %if.end, !dbg !3530

if.then1:                                         ; preds = %if.then
  %7 = load i32, i32* %status, align 4, !dbg !3531
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @_acpi_module_name, i64 0, i64 0), i32 507, i32 %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0)) #10, !dbg !3531
  br label %if.end, !dbg !3533

if.end:                                           ; preds = %if.then1, %if.then
  store i32 -19, i32* %retval, align 4, !dbg !3534
  br label %return, !dbg !3534

if.end2:                                          ; preds = %entry
  %pointer = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 1, !dbg !3535
  %8 = load i8*, i8** %pointer, align 8, !dbg !3535
  %9 = bitcast i8* %8 to %union.acpi_object*, !dbg !3536
  store %union.acpi_object* %9, %union.acpi_object** %tss, align 8, !dbg !3537
  %10 = load %union.acpi_object*, %union.acpi_object** %tss, align 8, !dbg !3538
  %tobool3 = icmp ne %union.acpi_object* %10, null, !dbg !3538
  br i1 %tobool3, label %lor.lhs.false, label %if.then5, !dbg !3540

lor.lhs.false:                                    ; preds = %if.end2
  %11 = load %union.acpi_object*, %union.acpi_object** %tss, align 8, !dbg !3541
  %type = bitcast %union.acpi_object* %11 to i32*, !dbg !3542
  %12 = load i32, i32* %type, align 8, !dbg !3542
  %cmp4 = icmp ne i32 %12, 4, !dbg !3543
  br i1 %cmp4, label %if.then5, label %if.end7, !dbg !3544

if.then5:                                         ; preds = %lor.lhs.false, %if.end2
  %call6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0)) #11, !dbg !3545
  store i32 -14, i32* %result, align 4, !dbg !3547
  br label %end, !dbg !3548

if.end7:                                          ; preds = %lor.lhs.false
  %13 = load %union.acpi_object*, %union.acpi_object** %tss, align 8, !dbg !3549
  %package = bitcast %union.acpi_object* %13 to %struct.anon.45*, !dbg !3550
  %count = getelementptr inbounds %struct.anon.45, %struct.anon.45* %package, i32 0, i32 1, !dbg !3551
  %14 = load i32, i32* %count, align 4, !dbg !3551
  %15 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3552
  %throttling = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %15, i32 0, i32 10, !dbg !3553
  %state_count = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling, i32 0, i32 4, !dbg !3554
  store i32 %14, i32* %state_count, align 8, !dbg !3555
  %16 = load %union.acpi_object*, %union.acpi_object** %tss, align 8, !dbg !3556
  %package8 = bitcast %union.acpi_object* %16 to %struct.anon.45*, !dbg !3557
  %count9 = getelementptr inbounds %struct.anon.45, %struct.anon.45* %package8, i32 0, i32 1, !dbg !3558
  %17 = load i32, i32* %count9, align 4, !dbg !3558
  %conv = zext i32 %17 to i64, !dbg !3556
  %call10 = call i8* @kmalloc_array(i64 %conv, i64 40, i32 3264) #10, !dbg !3559
  %18 = bitcast i8* %call10 to %struct.acpi_processor_tx_tss*, !dbg !3559
  %19 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3560
  %throttling11 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %19, i32 0, i32 10, !dbg !3561
  %states_tss = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling11, i32 0, i32 5, !dbg !3562
  store %struct.acpi_processor_tx_tss* %18, %struct.acpi_processor_tx_tss** %states_tss, align 8, !dbg !3563
  %20 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3564
  %throttling12 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %20, i32 0, i32 10, !dbg !3566
  %states_tss13 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling12, i32 0, i32 5, !dbg !3567
  %21 = load %struct.acpi_processor_tx_tss*, %struct.acpi_processor_tx_tss** %states_tss13, align 8, !dbg !3567
  %tobool14 = icmp ne %struct.acpi_processor_tx_tss* %21, null, !dbg !3564
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !3568

if.then15:                                        ; preds = %if.end7
  store i32 -12, i32* %result, align 4, !dbg !3569
  br label %end, !dbg !3571

if.end16:                                         ; preds = %if.end7
  store i32 0, i32* %i, align 4, !dbg !3572
  br label %for.cond, !dbg !3574

for.cond:                                         ; preds = %for.inc, %if.end16
  %22 = load i32, i32* %i, align 4, !dbg !3575
  %23 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3577
  %throttling17 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %23, i32 0, i32 10, !dbg !3578
  %state_count18 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling17, i32 0, i32 4, !dbg !3579
  %24 = load i32, i32* %state_count18, align 8, !dbg !3579
  %cmp19 = icmp ult i32 %22, %24, !dbg !3580
  br i1 %cmp19, label %for.body, label %for.end, !dbg !3581

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.acpi_processor_tx_tss** %tx, metadata !3582, metadata !DIExpression()), !dbg !3584
  %25 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3585
  %throttling21 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %25, i32 0, i32 10, !dbg !3586
  %states_tss22 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling21, i32 0, i32 5, !dbg !3587
  %26 = load %struct.acpi_processor_tx_tss*, %struct.acpi_processor_tx_tss** %states_tss22, align 8, !dbg !3587
  %27 = load i32, i32* %i, align 4, !dbg !3588
  %idxprom = sext i32 %27 to i64, !dbg !3585
  %arrayidx = getelementptr %struct.acpi_processor_tx_tss, %struct.acpi_processor_tx_tss* %26, i64 %idxprom, !dbg !3585
  store %struct.acpi_processor_tx_tss* %arrayidx, %struct.acpi_processor_tx_tss** %tx, align 8, !dbg !3584
  %length = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %state, i32 0, i32 0, !dbg !3589
  store i64 40, i64* %length, align 8, !dbg !3590
  %28 = load %struct.acpi_processor_tx_tss*, %struct.acpi_processor_tx_tss** %tx, align 8, !dbg !3591
  %29 = bitcast %struct.acpi_processor_tx_tss* %28 to i8*, !dbg !3591
  %pointer23 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %state, i32 0, i32 1, !dbg !3592
  store i8* %29, i8** %pointer23, align 8, !dbg !3593
  %30 = load %union.acpi_object*, %union.acpi_object** %tss, align 8, !dbg !3594
  %package24 = bitcast %union.acpi_object* %30 to %struct.anon.45*, !dbg !3595
  %elements = getelementptr inbounds %struct.anon.45, %struct.anon.45* %package24, i32 0, i32 2, !dbg !3596
  %31 = load %union.acpi_object*, %union.acpi_object** %elements, align 8, !dbg !3596
  %32 = load i32, i32* %i, align 4, !dbg !3597
  %idxprom25 = sext i32 %32 to i64, !dbg !3594
  %arrayidx26 = getelementptr %union.acpi_object, %union.acpi_object* %31, i64 %idxprom25, !dbg !3594
  %call27 = call i32 @acpi_extract_package(%union.acpi_object* %arrayidx26, %struct.acpi_buffer* %format, %struct.acpi_buffer* %state) #10, !dbg !3598
  store i32 %call27, i32* %status, align 4, !dbg !3599
  %33 = load i32, i32* %status, align 4, !dbg !3600
  %tobool28 = icmp ne i32 %33, 0, !dbg !3600
  br i1 %tobool28, label %if.then29, label %if.end32, !dbg !3602

if.then29:                                        ; preds = %for.body
  %34 = load i32, i32* %status, align 4, !dbg !3603
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @_acpi_module_name, i64 0, i64 0), i32 546, i32 %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0)) #10, !dbg !3603
  store i32 -14, i32* %result, align 4, !dbg !3605
  %35 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3606
  %throttling30 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %35, i32 0, i32 10, !dbg !3607
  %states_tss31 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling30, i32 0, i32 5, !dbg !3608
  %36 = load %struct.acpi_processor_tx_tss*, %struct.acpi_processor_tx_tss** %states_tss31, align 8, !dbg !3608
  %37 = bitcast %struct.acpi_processor_tx_tss* %36 to i8*, !dbg !3606
  call void @kfree(i8* %37) #10, !dbg !3609
  br label %end, !dbg !3610

if.end32:                                         ; preds = %for.body
  %38 = load %struct.acpi_processor_tx_tss*, %struct.acpi_processor_tx_tss** %tx, align 8, !dbg !3611
  %freqpercentage = getelementptr inbounds %struct.acpi_processor_tx_tss, %struct.acpi_processor_tx_tss* %38, i32 0, i32 0, !dbg !3613
  %39 = load i64, i64* %freqpercentage, align 8, !dbg !3613
  %tobool33 = icmp ne i64 %39, 0, !dbg !3611
  br i1 %tobool33, label %if.end38, label %if.then34, !dbg !3614

if.then34:                                        ; preds = %if.end32
  %call35 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0)) #11, !dbg !3615
  store i32 -14, i32* %result, align 4, !dbg !3617
  %40 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3618
  %throttling36 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %40, i32 0, i32 10, !dbg !3619
  %states_tss37 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling36, i32 0, i32 5, !dbg !3620
  %41 = load %struct.acpi_processor_tx_tss*, %struct.acpi_processor_tx_tss** %states_tss37, align 8, !dbg !3620
  %42 = bitcast %struct.acpi_processor_tx_tss* %41 to i8*, !dbg !3618
  call void @kfree(i8* %42) #10, !dbg !3621
  br label %end, !dbg !3622

if.end38:                                         ; preds = %if.end32
  br label %for.inc, !dbg !3623

for.inc:                                          ; preds = %if.end38
  %43 = load i32, i32* %i, align 4, !dbg !3624
  %inc = add i32 %43, 1, !dbg !3624
  store i32 %inc, i32* %i, align 4, !dbg !3624
  br label %for.cond, !dbg !3625, !llvm.loop !3626

for.end:                                          ; preds = %for.cond
  br label %end, !dbg !3627

end:                                              ; preds = %for.end, %if.then34, %if.then29, %if.then15, %if.then5
  call void @llvm.dbg.label(metadata !3628), !dbg !3629
  %pointer39 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 1, !dbg !3630
  %44 = load i8*, i8** %pointer39, align 8, !dbg !3630
  call void @kfree(i8* %44) #10, !dbg !3631
  %45 = load i32, i32* %result, align 4, !dbg !3632
  store i32 %45, i32* %retval, align 4, !dbg !3633
  br label %return, !dbg !3633

return:                                           ; preds = %end, %if.end
  %46 = load i32, i32* %retval, align 4, !dbg !3634
  ret i32 %46, !dbg !3634
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_processor_get_throttling_fadt(%struct.acpi_processor* %pr) #0 !dbg !3635 {
entry:
  %retval = alloca i32, align 4
  %pr.addr = alloca %struct.acpi_processor*, align 8
  %state = alloca i32, align 4
  %value = alloca i32, align 4
  %duty_mask = alloca i32, align 4
  %duty_value = alloca i32, align 4
  store %struct.acpi_processor* %pr, %struct.acpi_processor** %pr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr.addr, metadata !3636, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.declare(metadata i32* %state, metadata !3638, metadata !DIExpression()), !dbg !3639
  store i32 0, i32* %state, align 4, !dbg !3639
  call void @llvm.dbg.declare(metadata i32* %value, metadata !3640, metadata !DIExpression()), !dbg !3641
  store i32 0, i32* %value, align 4, !dbg !3641
  call void @llvm.dbg.declare(metadata i32* %duty_mask, metadata !3642, metadata !DIExpression()), !dbg !3643
  store i32 0, i32* %duty_mask, align 4, !dbg !3643
  call void @llvm.dbg.declare(metadata i32* %duty_value, metadata !3644, metadata !DIExpression()), !dbg !3645
  store i32 0, i32* %duty_value, align 4, !dbg !3645
  %0 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3646
  %tobool = icmp ne %struct.acpi_processor* %0, null, !dbg !3646
  br i1 %tobool, label %if.end, label %if.then, !dbg !3648

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !3649
  br label %return, !dbg !3649

if.end:                                           ; preds = %entry
  %1 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3650
  %flags = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %1, i32 0, i32 7, !dbg !3652
  %2 = bitcast %struct.acpi_processor_flags* %flags to i16*, !dbg !3653
  %bf.load = load i16, i16* %2, align 8, !dbg !3653
  %bf.lshr = lshr i16 %bf.load, 2, !dbg !3653
  %bf.clear = and i16 %bf.lshr, 1, !dbg !3653
  %bf.cast = trunc i16 %bf.clear to i8, !dbg !3653
  %tobool1 = icmp ne i8 %bf.cast, 0, !dbg !3650
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !3654

if.then2:                                         ; preds = %if.end
  store i32 -19, i32* %retval, align 4, !dbg !3655
  br label %return, !dbg !3655

if.end3:                                          ; preds = %if.end
  %3 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3656
  %throttling = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %3, i32 0, i32 10, !dbg !3656
  %address = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling, i32 0, i32 10, !dbg !3656
  %4 = load i32, i32* %address, align 8, !dbg !3656
  %conv = zext i32 %4 to i64, !dbg !3656
  %call = call %struct.resource* @__request_region(%struct.resource* @ioport_resource, i64 %conv, i64 6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i32 0) #10, !dbg !3656
  %5 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3657
  %throttling4 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %5, i32 0, i32 10, !dbg !3658
  %state5 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling4, i32 0, i32 0, !dbg !3659
  store i32 0, i32* %state5, align 8, !dbg !3660
  %6 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3661
  %throttling6 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %6, i32 0, i32 10, !dbg !3662
  %state_count = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling6, i32 0, i32 4, !dbg !3663
  %7 = load i32, i32* %state_count, align 8, !dbg !3663
  %sub = sub i32 %7, 1, !dbg !3664
  store i32 %sub, i32* %duty_mask, align 4, !dbg !3665
  %8 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3666
  %throttling7 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %8, i32 0, i32 10, !dbg !3667
  %duty_offset = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling7, i32 0, i32 11, !dbg !3668
  %9 = load i8, i8* %duty_offset, align 4, !dbg !3668
  %conv8 = zext i8 %9 to i32, !dbg !3666
  %10 = load i32, i32* %duty_mask, align 4, !dbg !3669
  %shl = shl i32 %10, %conv8, !dbg !3669
  store i32 %shl, i32* %duty_mask, align 4, !dbg !3669
  br label %do.body, !dbg !3670

do.body:                                          ; preds = %if.end3
  call void @arch_local_irq_disable() #10, !dbg !3671
  br label %do.end, !dbg !3671

do.end:                                           ; preds = %do.body
  %11 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3673
  %throttling9 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %11, i32 0, i32 10, !dbg !3674
  %address10 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling9, i32 0, i32 10, !dbg !3675
  %12 = load i32, i32* %address10, align 8, !dbg !3675
  %call11 = call i32 @inl(i32 %12) #10, !dbg !3676
  store i32 %call11, i32* %value, align 4, !dbg !3677
  %13 = load i32, i32* %value, align 4, !dbg !3678
  %and = and i32 %13, 16, !dbg !3680
  %tobool12 = icmp ne i32 %and, 0, !dbg !3680
  br i1 %tobool12, label %if.then13, label %if.end24, !dbg !3681

if.then13:                                        ; preds = %do.end
  %14 = load i32, i32* %value, align 4, !dbg !3682
  %15 = load i32, i32* %duty_mask, align 4, !dbg !3684
  %and14 = and i32 %14, %15, !dbg !3685
  store i32 %and14, i32* %duty_value, align 4, !dbg !3686
  %16 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3687
  %throttling15 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %16, i32 0, i32 10, !dbg !3688
  %duty_offset16 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling15, i32 0, i32 11, !dbg !3689
  %17 = load i8, i8* %duty_offset16, align 4, !dbg !3689
  %conv17 = zext i8 %17 to i32, !dbg !3687
  %18 = load i32, i32* %duty_value, align 4, !dbg !3690
  %shr = lshr i32 %18, %conv17, !dbg !3690
  store i32 %shr, i32* %duty_value, align 4, !dbg !3690
  %19 = load i32, i32* %duty_value, align 4, !dbg !3691
  %tobool18 = icmp ne i32 %19, 0, !dbg !3691
  br i1 %tobool18, label %if.then19, label %if.end23, !dbg !3693

if.then19:                                        ; preds = %if.then13
  %20 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3694
  %throttling20 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %20, i32 0, i32 10, !dbg !3695
  %state_count21 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling20, i32 0, i32 4, !dbg !3696
  %21 = load i32, i32* %state_count21, align 8, !dbg !3696
  %22 = load i32, i32* %duty_value, align 4, !dbg !3697
  %sub22 = sub i32 %21, %22, !dbg !3698
  store i32 %sub22, i32* %state, align 4, !dbg !3699
  br label %if.end23, !dbg !3700

if.end23:                                         ; preds = %if.then19, %if.then13
  br label %if.end24, !dbg !3701

if.end24:                                         ; preds = %if.end23, %do.end
  %23 = load i32, i32* %state, align 4, !dbg !3702
  %24 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3703
  %throttling25 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %24, i32 0, i32 10, !dbg !3704
  %state26 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling25, i32 0, i32 0, !dbg !3705
  store i32 %23, i32* %state26, align 8, !dbg !3706
  br label %do.body27, !dbg !3707

do.body27:                                        ; preds = %if.end24
  call void @arch_local_irq_enable() #10, !dbg !3708
  br label %do.end28, !dbg !3708

do.end28:                                         ; preds = %do.body27
  store i32 0, i32* %retval, align 4, !dbg !3710
  br label %return, !dbg !3710

return:                                           ; preds = %do.end28, %if.then2, %if.then
  %25 = load i32, i32* %retval, align 4, !dbg !3711
  ret i32 %25, !dbg !3711
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_processor_set_throttling_fadt(%struct.acpi_processor* %pr, i32 %state, i1 zeroext %force) #0 !dbg !3712 {
entry:
  %retval = alloca i32, align 4
  %pr.addr = alloca %struct.acpi_processor*, align 8
  %state.addr = alloca i32, align 4
  %force.addr = alloca i8, align 1
  %value = alloca i32, align 4
  %duty_mask = alloca i32, align 4
  %duty_value = alloca i32, align 4
  store %struct.acpi_processor* %pr, %struct.acpi_processor** %pr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr.addr, metadata !3713, metadata !DIExpression()), !dbg !3714
  store i32 %state, i32* %state.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %state.addr, metadata !3715, metadata !DIExpression()), !dbg !3716
  %frombool = zext i1 %force to i8
  store i8 %frombool, i8* %force.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %force.addr, metadata !3717, metadata !DIExpression()), !dbg !3718
  call void @llvm.dbg.declare(metadata i32* %value, metadata !3719, metadata !DIExpression()), !dbg !3720
  store i32 0, i32* %value, align 4, !dbg !3720
  call void @llvm.dbg.declare(metadata i32* %duty_mask, metadata !3721, metadata !DIExpression()), !dbg !3722
  store i32 0, i32* %duty_mask, align 4, !dbg !3722
  call void @llvm.dbg.declare(metadata i32* %duty_value, metadata !3723, metadata !DIExpression()), !dbg !3724
  store i32 0, i32* %duty_value, align 4, !dbg !3724
  %0 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3725
  %tobool = icmp ne %struct.acpi_processor* %0, null, !dbg !3725
  br i1 %tobool, label %if.end, label %if.then, !dbg !3727

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !3728
  br label %return, !dbg !3728

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %state.addr, align 4, !dbg !3729
  %cmp = icmp slt i32 %1, 0, !dbg !3731
  br i1 %cmp, label %if.then2, label %lor.lhs.false, !dbg !3732

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i32, i32* %state.addr, align 4, !dbg !3733
  %3 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3734
  %throttling = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %3, i32 0, i32 10, !dbg !3735
  %state_count = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling, i32 0, i32 4, !dbg !3736
  %4 = load i32, i32* %state_count, align 8, !dbg !3736
  %sub = sub i32 %4, 1, !dbg !3737
  %cmp1 = icmp ugt i32 %2, %sub, !dbg !3738
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !3739

if.then2:                                         ; preds = %lor.lhs.false, %if.end
  store i32 -22, i32* %retval, align 4, !dbg !3740
  br label %return, !dbg !3740

if.end3:                                          ; preds = %lor.lhs.false
  %5 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3741
  %flags = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %5, i32 0, i32 7, !dbg !3743
  %6 = bitcast %struct.acpi_processor_flags* %flags to i16*, !dbg !3744
  %bf.load = load i16, i16* %6, align 8, !dbg !3744
  %bf.lshr = lshr i16 %bf.load, 2, !dbg !3744
  %bf.clear = and i16 %bf.lshr, 1, !dbg !3744
  %bf.cast = trunc i16 %bf.clear to i8, !dbg !3744
  %tobool4 = icmp ne i8 %bf.cast, 0, !dbg !3741
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !3745

if.then5:                                         ; preds = %if.end3
  store i32 -19, i32* %retval, align 4, !dbg !3746
  br label %return, !dbg !3746

if.end6:                                          ; preds = %if.end3
  %7 = load i8, i8* %force.addr, align 1, !dbg !3747
  %tobool7 = trunc i8 %7 to i1, !dbg !3747
  br i1 %tobool7, label %if.end12, label %land.lhs.true, !dbg !3749

land.lhs.true:                                    ; preds = %if.end6
  %8 = load i32, i32* %state.addr, align 4, !dbg !3750
  %9 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3751
  %throttling8 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %9, i32 0, i32 10, !dbg !3752
  %state9 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling8, i32 0, i32 0, !dbg !3753
  %10 = load i32, i32* %state9, align 8, !dbg !3753
  %cmp10 = icmp eq i32 %8, %10, !dbg !3754
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !3755

if.then11:                                        ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4, !dbg !3756
  br label %return, !dbg !3756

if.end12:                                         ; preds = %land.lhs.true, %if.end6
  %11 = load i32, i32* %state.addr, align 4, !dbg !3757
  %12 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3759
  %throttling_platform_limit = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %12, i32 0, i32 6, !dbg !3760
  %13 = load i32, i32* %throttling_platform_limit, align 4, !dbg !3760
  %cmp13 = icmp slt i32 %11, %13, !dbg !3761
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !3762

if.then14:                                        ; preds = %if.end12
  store i32 -1, i32* %retval, align 4, !dbg !3763
  br label %return, !dbg !3763

if.end15:                                         ; preds = %if.end12
  %14 = load i32, i32* %state.addr, align 4, !dbg !3764
  %tobool16 = icmp ne i32 %14, 0, !dbg !3764
  br i1 %tobool16, label %if.then17, label %if.end27, !dbg !3766

if.then17:                                        ; preds = %if.end15
  %15 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3767
  %throttling18 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %15, i32 0, i32 10, !dbg !3769
  %state_count19 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling18, i32 0, i32 4, !dbg !3770
  %16 = load i32, i32* %state_count19, align 8, !dbg !3770
  %17 = load i32, i32* %state.addr, align 4, !dbg !3771
  %sub20 = sub i32 %16, %17, !dbg !3772
  store i32 %sub20, i32* %duty_value, align 4, !dbg !3773
  %18 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3774
  %throttling21 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %18, i32 0, i32 10, !dbg !3775
  %duty_offset = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling21, i32 0, i32 11, !dbg !3776
  %19 = load i8, i8* %duty_offset, align 4, !dbg !3776
  %conv = zext i8 %19 to i32, !dbg !3774
  %20 = load i32, i32* %duty_value, align 4, !dbg !3777
  %shl = shl i32 %20, %conv, !dbg !3777
  store i32 %shl, i32* %duty_value, align 4, !dbg !3777
  %21 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3778
  %throttling22 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %21, i32 0, i32 10, !dbg !3779
  %state_count23 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling22, i32 0, i32 4, !dbg !3780
  %22 = load i32, i32* %state_count23, align 8, !dbg !3780
  %sub24 = sub i32 %22, 1, !dbg !3781
  store i32 %sub24, i32* %duty_mask, align 4, !dbg !3782
  %23 = load i8, i8* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 31), align 1, !dbg !3783
  %conv25 = zext i8 %23 to i32, !dbg !3784
  %24 = load i32, i32* %duty_mask, align 4, !dbg !3785
  %shl26 = shl i32 %24, %conv25, !dbg !3785
  store i32 %shl26, i32* %duty_mask, align 4, !dbg !3785
  %25 = load i32, i32* %duty_mask, align 4, !dbg !3786
  %neg = xor i32 %25, -1, !dbg !3787
  store i32 %neg, i32* %duty_mask, align 4, !dbg !3788
  br label %if.end27, !dbg !3789

if.end27:                                         ; preds = %if.then17, %if.end15
  br label %do.body, !dbg !3790

do.body:                                          ; preds = %if.end27
  call void @arch_local_irq_disable() #10, !dbg !3791
  br label %do.end, !dbg !3791

do.end:                                           ; preds = %do.body
  %26 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3793
  %throttling28 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %26, i32 0, i32 10, !dbg !3794
  %address = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling28, i32 0, i32 10, !dbg !3795
  %27 = load i32, i32* %address, align 8, !dbg !3795
  %call = call i32 @inl(i32 %27) #10, !dbg !3796
  store i32 %call, i32* %value, align 4, !dbg !3797
  %28 = load i32, i32* %value, align 4, !dbg !3798
  %and = and i32 %28, 16, !dbg !3800
  %tobool29 = icmp ne i32 %and, 0, !dbg !3800
  br i1 %tobool29, label %if.then30, label %if.end34, !dbg !3801

if.then30:                                        ; preds = %do.end
  %29 = load i32, i32* %value, align 4, !dbg !3802
  %and31 = and i32 %29, -17, !dbg !3802
  store i32 %and31, i32* %value, align 4, !dbg !3802
  %30 = load i32, i32* %value, align 4, !dbg !3804
  %31 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3805
  %throttling32 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %31, i32 0, i32 10, !dbg !3806
  %address33 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling32, i32 0, i32 10, !dbg !3807
  %32 = load i32, i32* %address33, align 8, !dbg !3807
  call void @outl(i32 %30, i32 %32) #10, !dbg !3808
  br label %if.end34, !dbg !3809

if.end34:                                         ; preds = %if.then30, %do.end
  %33 = load i32, i32* %state.addr, align 4, !dbg !3810
  %tobool35 = icmp ne i32 %33, 0, !dbg !3810
  br i1 %tobool35, label %if.then36, label %if.end43, !dbg !3812

if.then36:                                        ; preds = %if.end34
  %34 = load i32, i32* %duty_mask, align 4, !dbg !3813
  %35 = load i32, i32* %value, align 4, !dbg !3815
  %and37 = and i32 %35, %34, !dbg !3815
  store i32 %and37, i32* %value, align 4, !dbg !3815
  %36 = load i32, i32* %duty_value, align 4, !dbg !3816
  %37 = load i32, i32* %value, align 4, !dbg !3817
  %or = or i32 %37, %36, !dbg !3817
  store i32 %or, i32* %value, align 4, !dbg !3817
  %38 = load i32, i32* %value, align 4, !dbg !3818
  %39 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3819
  %throttling38 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %39, i32 0, i32 10, !dbg !3820
  %address39 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling38, i32 0, i32 10, !dbg !3821
  %40 = load i32, i32* %address39, align 8, !dbg !3821
  call void @outl(i32 %38, i32 %40) #10, !dbg !3822
  %41 = load i32, i32* %value, align 4, !dbg !3823
  %or40 = or i32 %41, 16, !dbg !3823
  store i32 %or40, i32* %value, align 4, !dbg !3823
  %42 = load i32, i32* %value, align 4, !dbg !3824
  %43 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3825
  %throttling41 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %43, i32 0, i32 10, !dbg !3826
  %address42 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling41, i32 0, i32 10, !dbg !3827
  %44 = load i32, i32* %address42, align 8, !dbg !3827
  call void @outl(i32 %42, i32 %44) #10, !dbg !3828
  br label %if.end43, !dbg !3829

if.end43:                                         ; preds = %if.then36, %if.end34
  %45 = load i32, i32* %state.addr, align 4, !dbg !3830
  %46 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3831
  %throttling44 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %46, i32 0, i32 10, !dbg !3832
  %state45 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling44, i32 0, i32 0, !dbg !3833
  store i32 %45, i32* %state45, align 8, !dbg !3834
  br label %do.body46, !dbg !3835

do.body46:                                        ; preds = %if.end43
  call void @arch_local_irq_enable() #10, !dbg !3836
  br label %do.end47, !dbg !3836

do.end47:                                         ; preds = %do.body46
  store i32 0, i32* %retval, align 4, !dbg !3838
  br label %return, !dbg !3838

return:                                           ; preds = %do.end47, %if.then14, %if.then11, %if.then5, %if.then2, %if.then
  %47 = load i32, i32* %retval, align 4, !dbg !3839
  ret i32 %47, !dbg !3839
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_processor_get_fadt_info(%struct.acpi_processor* %pr) #0 !dbg !3840 {
entry:
  %retval = alloca i32, align 4
  %pr.addr = alloca %struct.acpi_processor*, align 8
  %i = alloca i32, align 4
  %step = alloca i32, align 4
  store %struct.acpi_processor* %pr, %struct.acpi_processor** %pr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr.addr, metadata !3841, metadata !DIExpression()), !dbg !3842
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3843, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.declare(metadata i32* %step, metadata !3845, metadata !DIExpression()), !dbg !3846
  %0 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3847
  %throttling = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %0, i32 0, i32 10, !dbg !3849
  %address = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling, i32 0, i32 10, !dbg !3850
  %1 = load i32, i32* %address, align 8, !dbg !3850
  %tobool = icmp ne i32 %1, 0, !dbg !3847
  br i1 %tobool, label %if.else, label %if.then, !dbg !3851

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !3852
  br label %return, !dbg !3852

if.else:                                          ; preds = %entry
  %2 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3854
  %throttling1 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %2, i32 0, i32 10, !dbg !3856
  %duty_width = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling1, i32 0, i32 12, !dbg !3857
  %3 = load i8, i8* %duty_width, align 1, !dbg !3857
  %tobool2 = icmp ne i8 %3, 0, !dbg !3854
  br i1 %tobool2, label %if.else4, label %if.then3, !dbg !3858

if.then3:                                         ; preds = %if.else
  store i32 -22, i32* %retval, align 4, !dbg !3859
  br label %return, !dbg !3859

if.else4:                                         ; preds = %if.else
  %4 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3861
  %throttling5 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %4, i32 0, i32 10, !dbg !3863
  %duty_offset = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling5, i32 0, i32 11, !dbg !3864
  %5 = load i8, i8* %duty_offset, align 4, !dbg !3864
  %conv = zext i8 %5 to i32, !dbg !3861
  %6 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3865
  %throttling6 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %6, i32 0, i32 10, !dbg !3866
  %duty_width7 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling6, i32 0, i32 12, !dbg !3867
  %7 = load i8, i8* %duty_width7, align 1, !dbg !3867
  %conv8 = zext i8 %7 to i32, !dbg !3865
  %add = add i32 %conv, %conv8, !dbg !3868
  %cmp = icmp sgt i32 %add, 4, !dbg !3869
  br i1 %cmp, label %if.then10, label %if.end, !dbg !3870

if.then10:                                        ; preds = %if.else4
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i64 0, i64 0)) #11, !dbg !3871
  store i32 -22, i32* %retval, align 4, !dbg !3873
  br label %return, !dbg !3873

if.end:                                           ; preds = %if.else4
  br label %if.end11

if.end11:                                         ; preds = %if.end
  br label %if.end12

if.end12:                                         ; preds = %if.end11
  %8 = load i8, i8* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 32), align 1, !dbg !3874
  %conv13 = zext i8 %8 to i32, !dbg !3875
  %shl = shl i32 1, %conv13, !dbg !3876
  %9 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3877
  %throttling14 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %9, i32 0, i32 10, !dbg !3878
  %state_count = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling14, i32 0, i32 4, !dbg !3879
  store i32 %shl, i32* %state_count, align 8, !dbg !3880
  %10 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3881
  %throttling15 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %10, i32 0, i32 10, !dbg !3882
  %state_count16 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling15, i32 0, i32 4, !dbg !3883
  %11 = load i32, i32* %state_count16, align 8, !dbg !3883
  %div = udiv i32 1000, %11, !dbg !3884
  store i32 %div, i32* %step, align 4, !dbg !3885
  store i32 0, i32* %i, align 4, !dbg !3886
  br label %for.cond, !dbg !3888

for.cond:                                         ; preds = %for.inc, %if.end12
  %12 = load i32, i32* %i, align 4, !dbg !3889
  %13 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3891
  %throttling17 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %13, i32 0, i32 10, !dbg !3892
  %state_count18 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling17, i32 0, i32 4, !dbg !3893
  %14 = load i32, i32* %state_count18, align 8, !dbg !3893
  %cmp19 = icmp ult i32 %12, %14, !dbg !3894
  br i1 %cmp19, label %for.body, label %for.end, !dbg !3895

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %step, align 4, !dbg !3896
  %16 = load i32, i32* %i, align 4, !dbg !3898
  %mul = mul i32 %15, %16, !dbg !3899
  %sub = sub i32 1000, %mul, !dbg !3900
  %conv21 = trunc i32 %sub to i16, !dbg !3901
  %17 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3902
  %throttling22 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %17, i32 0, i32 10, !dbg !3903
  %states = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling22, i32 0, i32 15, !dbg !3904
  %18 = load i32, i32* %i, align 4, !dbg !3905
  %idxprom = sext i32 %18 to i64, !dbg !3902
  %arrayidx = getelementptr [16 x %struct.acpi_processor_tx], [16 x %struct.acpi_processor_tx]* %states, i64 0, i64 %idxprom, !dbg !3902
  %performance = getelementptr inbounds %struct.acpi_processor_tx, %struct.acpi_processor_tx* %arrayidx, i32 0, i32 1, !dbg !3906
  store i16 %conv21, i16* %performance, align 2, !dbg !3907
  %19 = load i32, i32* %step, align 4, !dbg !3908
  %20 = load i32, i32* %i, align 4, !dbg !3909
  %mul23 = mul i32 %19, %20, !dbg !3910
  %sub24 = sub i32 1000, %mul23, !dbg !3911
  %conv25 = trunc i32 %sub24 to i16, !dbg !3912
  %21 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3913
  %throttling26 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %21, i32 0, i32 10, !dbg !3914
  %states27 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling26, i32 0, i32 15, !dbg !3915
  %22 = load i32, i32* %i, align 4, !dbg !3916
  %idxprom28 = sext i32 %22 to i64, !dbg !3913
  %arrayidx29 = getelementptr [16 x %struct.acpi_processor_tx], [16 x %struct.acpi_processor_tx]* %states27, i64 0, i64 %idxprom28, !dbg !3913
  %power = getelementptr inbounds %struct.acpi_processor_tx, %struct.acpi_processor_tx* %arrayidx29, i32 0, i32 0, !dbg !3917
  store i16 %conv25, i16* %power, align 4, !dbg !3918
  br label %for.inc, !dbg !3919

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4, !dbg !3920
  %inc = add i32 %23, 1, !dbg !3920
  store i32 %inc, i32* %i, align 4, !dbg !3920
  br label %for.cond, !dbg !3921, !llvm.loop !3922

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !3924
  br label %return, !dbg !3924

return:                                           ; preds = %for.end, %if.then10, %if.then3, %if.then
  %24 = load i32, i32* %retval, align 4, !dbg !3925
  ret i32 %24, !dbg !3925
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_processor_get_throttling_ptc(%struct.acpi_processor* %pr) #0 !dbg !3926 {
entry:
  %retval = alloca i32, align 4
  %pr.addr = alloca %struct.acpi_processor*, align 8
  %state = alloca i32, align 4
  %ret = alloca i32, align 4
  %value = alloca i64, align 8
  store %struct.acpi_processor* %pr, %struct.acpi_processor** %pr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr.addr, metadata !3927, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.declare(metadata i32* %state, metadata !3929, metadata !DIExpression()), !dbg !3930
  store i32 0, i32* %state, align 4, !dbg !3930
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3931, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.declare(metadata i64* %value, metadata !3933, metadata !DIExpression()), !dbg !3934
  %0 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3935
  %tobool = icmp ne %struct.acpi_processor* %0, null, !dbg !3935
  br i1 %tobool, label %if.end, label %if.then, !dbg !3937

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !3938
  br label %return, !dbg !3938

if.end:                                           ; preds = %entry
  %1 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3939
  %flags = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %1, i32 0, i32 7, !dbg !3941
  %2 = bitcast %struct.acpi_processor_flags* %flags to i16*, !dbg !3942
  %bf.load = load i16, i16* %2, align 8, !dbg !3942
  %bf.lshr = lshr i16 %bf.load, 2, !dbg !3942
  %bf.clear = and i16 %bf.lshr, 1, !dbg !3942
  %bf.cast = trunc i16 %bf.clear to i8, !dbg !3942
  %tobool1 = icmp ne i8 %bf.cast, 0, !dbg !3939
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !3943

if.then2:                                         ; preds = %if.end
  store i32 -19, i32* %retval, align 4, !dbg !3944
  br label %return, !dbg !3944

if.end3:                                          ; preds = %if.end
  %3 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3945
  %throttling = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %3, i32 0, i32 10, !dbg !3946
  %state4 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling, i32 0, i32 0, !dbg !3947
  store i32 0, i32* %state4, align 8, !dbg !3948
  store i64 0, i64* %value, align 8, !dbg !3949
  %4 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3950
  %call = call i32 @acpi_read_throttling_status(%struct.acpi_processor* %4, i64* %value) #10, !dbg !3951
  store i32 %call, i32* %ret, align 4, !dbg !3952
  %5 = load i32, i32* %ret, align 4, !dbg !3953
  %cmp = icmp sge i32 %5, 0, !dbg !3955
  br i1 %cmp, label %if.then5, label %if.end16, !dbg !3956

if.then5:                                         ; preds = %if.end3
  %6 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3957
  %7 = load i64, i64* %value, align 8, !dbg !3959
  %call6 = call i32 @acpi_get_throttling_state(%struct.acpi_processor* %6, i64 %7) #10, !dbg !3960
  store i32 %call6, i32* %state, align 4, !dbg !3961
  %8 = load i32, i32* %state, align 4, !dbg !3962
  %cmp7 = icmp eq i32 %8, -1, !dbg !3964
  br i1 %cmp7, label %if.then8, label %if.end13, !dbg !3965

if.then8:                                         ; preds = %if.then5
  store i32 0, i32* %state, align 4, !dbg !3966
  %9 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3968
  %10 = load i32, i32* %state, align 4, !dbg !3969
  %call9 = call i32 @__acpi_processor_set_throttling(%struct.acpi_processor* %9, i32 %10, i1 zeroext true, i1 zeroext true) #10, !dbg !3970
  store i32 %call9, i32* %ret, align 4, !dbg !3971
  %11 = load i32, i32* %ret, align 4, !dbg !3972
  %tobool10 = icmp ne i32 %11, 0, !dbg !3972
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !3974

if.then11:                                        ; preds = %if.then8
  %12 = load i32, i32* %ret, align 4, !dbg !3975
  store i32 %12, i32* %retval, align 4, !dbg !3976
  br label %return, !dbg !3976

if.end12:                                         ; preds = %if.then8
  br label %if.end13, !dbg !3977

if.end13:                                         ; preds = %if.end12, %if.then5
  %13 = load i32, i32* %state, align 4, !dbg !3978
  %14 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3979
  %throttling14 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %14, i32 0, i32 10, !dbg !3980
  %state15 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling14, i32 0, i32 0, !dbg !3981
  store i32 %13, i32* %state15, align 8, !dbg !3982
  br label %if.end16, !dbg !3983

if.end16:                                         ; preds = %if.end13, %if.end3
  store i32 0, i32* %retval, align 4, !dbg !3984
  br label %return, !dbg !3984

return:                                           ; preds = %if.end16, %if.then11, %if.then2, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !3985
  ret i32 %15, !dbg !3985
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_processor_set_throttling_ptc(%struct.acpi_processor* %pr, i32 %state, i1 zeroext %force) #0 !dbg !3986 {
entry:
  %retval = alloca i32, align 4
  %pr.addr = alloca %struct.acpi_processor*, align 8
  %state.addr = alloca i32, align 4
  %force.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  %value = alloca i64, align 8
  store %struct.acpi_processor* %pr, %struct.acpi_processor** %pr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr.addr, metadata !3987, metadata !DIExpression()), !dbg !3988
  store i32 %state, i32* %state.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %state.addr, metadata !3989, metadata !DIExpression()), !dbg !3990
  %frombool = zext i1 %force to i8
  store i8 %frombool, i8* %force.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %force.addr, metadata !3991, metadata !DIExpression()), !dbg !3992
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3993, metadata !DIExpression()), !dbg !3994
  call void @llvm.dbg.declare(metadata i64* %value, metadata !3995, metadata !DIExpression()), !dbg !3996
  %0 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3997
  %tobool = icmp ne %struct.acpi_processor* %0, null, !dbg !3997
  br i1 %tobool, label %if.end, label %if.then, !dbg !3999

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4000
  br label %return, !dbg !4000

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %state.addr, align 4, !dbg !4001
  %cmp = icmp slt i32 %1, 0, !dbg !4003
  br i1 %cmp, label %if.then2, label %lor.lhs.false, !dbg !4004

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i32, i32* %state.addr, align 4, !dbg !4005
  %3 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !4006
  %throttling = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %3, i32 0, i32 10, !dbg !4007
  %state_count = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling, i32 0, i32 4, !dbg !4008
  %4 = load i32, i32* %state_count, align 8, !dbg !4008
  %sub = sub i32 %4, 1, !dbg !4009
  %cmp1 = icmp ugt i32 %2, %sub, !dbg !4010
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !4011

if.then2:                                         ; preds = %lor.lhs.false, %if.end
  store i32 -22, i32* %retval, align 4, !dbg !4012
  br label %return, !dbg !4012

if.end3:                                          ; preds = %lor.lhs.false
  %5 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !4013
  %flags = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %5, i32 0, i32 7, !dbg !4015
  %6 = bitcast %struct.acpi_processor_flags* %flags to i16*, !dbg !4016
  %bf.load = load i16, i16* %6, align 8, !dbg !4016
  %bf.lshr = lshr i16 %bf.load, 2, !dbg !4016
  %bf.clear = and i16 %bf.lshr, 1, !dbg !4016
  %bf.cast = trunc i16 %bf.clear to i8, !dbg !4016
  %tobool4 = icmp ne i8 %bf.cast, 0, !dbg !4013
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !4017

if.then5:                                         ; preds = %if.end3
  store i32 -19, i32* %retval, align 4, !dbg !4018
  br label %return, !dbg !4018

if.end6:                                          ; preds = %if.end3
  %7 = load i8, i8* %force.addr, align 1, !dbg !4019
  %tobool7 = trunc i8 %7 to i1, !dbg !4019
  br i1 %tobool7, label %if.end12, label %land.lhs.true, !dbg !4021

land.lhs.true:                                    ; preds = %if.end6
  %8 = load i32, i32* %state.addr, align 4, !dbg !4022
  %9 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !4023
  %throttling8 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %9, i32 0, i32 10, !dbg !4024
  %state9 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling8, i32 0, i32 0, !dbg !4025
  %10 = load i32, i32* %state9, align 8, !dbg !4025
  %cmp10 = icmp eq i32 %8, %10, !dbg !4026
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !4027

if.then11:                                        ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4, !dbg !4028
  br label %return, !dbg !4028

if.end12:                                         ; preds = %land.lhs.true, %if.end6
  %11 = load i32, i32* %state.addr, align 4, !dbg !4029
  %12 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !4031
  %throttling_platform_limit = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %12, i32 0, i32 6, !dbg !4032
  %13 = load i32, i32* %throttling_platform_limit, align 4, !dbg !4032
  %cmp13 = icmp slt i32 %11, %13, !dbg !4033
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !4034

if.then14:                                        ; preds = %if.end12
  store i32 -1, i32* %retval, align 4, !dbg !4035
  br label %return, !dbg !4035

if.end15:                                         ; preds = %if.end12
  store i64 0, i64* %value, align 8, !dbg !4036
  %14 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !4037
  %15 = load i32, i32* %state.addr, align 4, !dbg !4038
  %call = call i32 @acpi_get_throttling_value(%struct.acpi_processor* %14, i32 %15, i64* %value) #10, !dbg !4039
  store i32 %call, i32* %ret, align 4, !dbg !4040
  %16 = load i32, i32* %ret, align 4, !dbg !4041
  %cmp16 = icmp sge i32 %16, 0, !dbg !4043
  br i1 %cmp16, label %if.then17, label %if.end21, !dbg !4044

if.then17:                                        ; preds = %if.end15
  %17 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !4045
  %18 = load i64, i64* %value, align 8, !dbg !4047
  %call18 = call i32 @acpi_write_throttling_state(%struct.acpi_processor* %17, i64 %18) #10, !dbg !4048
  %19 = load i32, i32* %state.addr, align 4, !dbg !4049
  %20 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !4050
  %throttling19 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %20, i32 0, i32 10, !dbg !4051
  %state20 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling19, i32 0, i32 0, !dbg !4052
  store i32 %19, i32* %state20, align 8, !dbg !4053
  br label %if.end21, !dbg !4054

if.end21:                                         ; preds = %if.then17, %if.end15
  store i32 0, i32* %retval, align 4, !dbg !4055
  br label %return, !dbg !4055

return:                                           ; preds = %if.end21, %if.then14, %if.then11, %if.then5, %if.then2, %if.then
  %21 = load i32, i32* %retval, align 4, !dbg !4056
  ret i32 %21, !dbg !4056
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_processor_get_tsd(%struct.acpi_processor* %pr) #0 !dbg !4057 {
entry:
  %retval = alloca i32, align 4
  %pr.addr = alloca %struct.acpi_processor*, align 8
  %result = alloca i32, align 4
  %status = alloca i32, align 4
  %buffer = alloca %struct.acpi_buffer, align 8
  %format = alloca %struct.acpi_buffer, align 8
  %state = alloca %struct.acpi_buffer, align 8
  %tsd = alloca %union.acpi_object*, align 8
  %pdomain = alloca %struct.acpi_tsd_package*, align 8
  %pthrottling = alloca %struct.acpi_processor_throttling*, align 8
  store %struct.acpi_processor* %pr, %struct.acpi_processor** %pr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr.addr, metadata !4058, metadata !DIExpression()), !dbg !4059
  call void @llvm.dbg.declare(metadata i32* %result, metadata !4060, metadata !DIExpression()), !dbg !4061
  store i32 0, i32* %result, align 4, !dbg !4061
  call void @llvm.dbg.declare(metadata i32* %status, metadata !4062, metadata !DIExpression()), !dbg !4063
  store i32 0, i32* %status, align 4, !dbg !4063
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer* %buffer, metadata !4064, metadata !DIExpression()), !dbg !4065
  %0 = bitcast %struct.acpi_buffer* %buffer to i8*, !dbg !4065
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast (%struct.acpi_buffer* @__const.acpi_processor_get_tsd.buffer to i8*), i64 16, i1 false), !dbg !4065
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer* %format, metadata !4066, metadata !DIExpression()), !dbg !4067
  %1 = bitcast %struct.acpi_buffer* %format to i8*, !dbg !4067
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 bitcast (%struct.acpi_buffer* @__const.acpi_processor_get_tsd.format to i8*), i64 16, i1 false), !dbg !4067
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer* %state, metadata !4068, metadata !DIExpression()), !dbg !4069
  %2 = bitcast %struct.acpi_buffer* %state to i8*, !dbg !4069
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 16, i1 false), !dbg !4069
  call void @llvm.dbg.declare(metadata %union.acpi_object** %tsd, metadata !4070, metadata !DIExpression()), !dbg !4071
  store %union.acpi_object* null, %union.acpi_object** %tsd, align 8, !dbg !4071
  call void @llvm.dbg.declare(metadata %struct.acpi_tsd_package** %pdomain, metadata !4072, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.declare(metadata %struct.acpi_processor_throttling** %pthrottling, metadata !4074, metadata !DIExpression()), !dbg !4075
  %3 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !4076
  %throttling = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %3, i32 0, i32 10, !dbg !4077
  store %struct.acpi_processor_throttling* %throttling, %struct.acpi_processor_throttling** %pthrottling, align 8, !dbg !4078
  %4 = load %struct.acpi_processor_throttling*, %struct.acpi_processor_throttling** %pthrottling, align 8, !dbg !4079
  %tsd_valid_flag = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %4, i32 0, i32 13, !dbg !4080
  store i8 0, i8* %tsd_valid_flag, align 2, !dbg !4081
  %5 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !4082
  %handle = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %5, i32 0, i32 0, !dbg !4083
  %6 = load i8*, i8** %handle, align 8, !dbg !4083
  %call = call i32 @acpi_evaluate_object(i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), %struct.acpi_object_list* null, %struct.acpi_buffer* %buffer) #10, !dbg !4084
  store i32 %call, i32* %status, align 4, !dbg !4085
  %7 = load i32, i32* %status, align 4, !dbg !4086
  %tobool = icmp ne i32 %7, 0, !dbg !4086
  br i1 %tobool, label %if.then, label %if.end2, !dbg !4088

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %status, align 4, !dbg !4089
  %cmp = icmp ne i32 %8, 5, !dbg !4092
  br i1 %cmp, label %if.then1, label %if.end, !dbg !4093

if.then1:                                         ; preds = %if.then
  %9 = load i32, i32* %status, align 4, !dbg !4094
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @_acpi_module_name, i64 0, i64 0), i32 587, i32 %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0)) #10, !dbg !4094
  br label %if.end, !dbg !4096

if.end:                                           ; preds = %if.then1, %if.then
  store i32 -19, i32* %retval, align 4, !dbg !4097
  br label %return, !dbg !4097

if.end2:                                          ; preds = %entry
  %pointer = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 1, !dbg !4098
  %10 = load i8*, i8** %pointer, align 8, !dbg !4098
  %11 = bitcast i8* %10 to %union.acpi_object*, !dbg !4099
  store %union.acpi_object* %11, %union.acpi_object** %tsd, align 8, !dbg !4100
  %12 = load %union.acpi_object*, %union.acpi_object** %tsd, align 8, !dbg !4101
  %tobool3 = icmp ne %union.acpi_object* %12, null, !dbg !4101
  br i1 %tobool3, label %lor.lhs.false, label %if.then5, !dbg !4103

lor.lhs.false:                                    ; preds = %if.end2
  %13 = load %union.acpi_object*, %union.acpi_object** %tsd, align 8, !dbg !4104
  %type = bitcast %union.acpi_object* %13 to i32*, !dbg !4105
  %14 = load i32, i32* %type, align 8, !dbg !4105
  %cmp4 = icmp ne i32 %14, 4, !dbg !4106
  br i1 %cmp4, label %if.then5, label %if.end7, !dbg !4107

if.then5:                                         ; preds = %lor.lhs.false, %if.end2
  %call6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i64 0, i64 0)) #11, !dbg !4108
  store i32 -14, i32* %result, align 4, !dbg !4110
  br label %end, !dbg !4111

if.end7:                                          ; preds = %lor.lhs.false
  %15 = load %union.acpi_object*, %union.acpi_object** %tsd, align 8, !dbg !4112
  %package = bitcast %union.acpi_object* %15 to %struct.anon.45*, !dbg !4114
  %count = getelementptr inbounds %struct.anon.45, %struct.anon.45* %package, i32 0, i32 1, !dbg !4115
  %16 = load i32, i32* %count, align 4, !dbg !4115
  %cmp8 = icmp ne i32 %16, 1, !dbg !4116
  br i1 %cmp8, label %if.then9, label %if.end11, !dbg !4117

if.then9:                                         ; preds = %if.end7
  %call10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i64 0, i64 0)) #11, !dbg !4118
  store i32 -14, i32* %result, align 4, !dbg !4120
  br label %end, !dbg !4121

if.end11:                                         ; preds = %if.end7
  %17 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !4122
  %throttling12 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %17, i32 0, i32 10, !dbg !4123
  %domain_info = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling12, i32 0, i32 6, !dbg !4124
  store %struct.acpi_tsd_package* %domain_info, %struct.acpi_tsd_package** %pdomain, align 8, !dbg !4125
  %length = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %state, i32 0, i32 0, !dbg !4126
  store i64 40, i64* %length, align 8, !dbg !4127
  %18 = load %struct.acpi_tsd_package*, %struct.acpi_tsd_package** %pdomain, align 8, !dbg !4128
  %19 = bitcast %struct.acpi_tsd_package* %18 to i8*, !dbg !4128
  %pointer13 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %state, i32 0, i32 1, !dbg !4129
  store i8* %19, i8** %pointer13, align 8, !dbg !4130
  %20 = load %union.acpi_object*, %union.acpi_object** %tsd, align 8, !dbg !4131
  %package14 = bitcast %union.acpi_object* %20 to %struct.anon.45*, !dbg !4132
  %elements = getelementptr inbounds %struct.anon.45, %struct.anon.45* %package14, i32 0, i32 2, !dbg !4133
  %21 = load %union.acpi_object*, %union.acpi_object** %elements, align 8, !dbg !4133
  %arrayidx = getelementptr %union.acpi_object, %union.acpi_object* %21, i64 0, !dbg !4131
  %call15 = call i32 @acpi_extract_package(%union.acpi_object* %arrayidx, %struct.acpi_buffer* %format, %struct.acpi_buffer* %state) #10, !dbg !4134
  store i32 %call15, i32* %status, align 4, !dbg !4135
  %22 = load i32, i32* %status, align 4, !dbg !4136
  %tobool16 = icmp ne i32 %22, 0, !dbg !4136
  br i1 %tobool16, label %if.then17, label %if.end19, !dbg !4138

if.then17:                                        ; preds = %if.end11
  %call18 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i64 0, i64 0)) #11, !dbg !4139
  store i32 -14, i32* %result, align 4, !dbg !4141
  br label %end, !dbg !4142

if.end19:                                         ; preds = %if.end11
  %23 = load %struct.acpi_tsd_package*, %struct.acpi_tsd_package** %pdomain, align 8, !dbg !4143
  %num_entries = getelementptr inbounds %struct.acpi_tsd_package, %struct.acpi_tsd_package* %23, i32 0, i32 0, !dbg !4145
  %24 = load i64, i64* %num_entries, align 1, !dbg !4145
  %cmp20 = icmp ne i64 %24, 5, !dbg !4146
  br i1 %cmp20, label %if.then21, label %if.end23, !dbg !4147

if.then21:                                        ; preds = %if.end19
  %call22 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.25, i64 0, i64 0)) #11, !dbg !4148
  store i32 -14, i32* %result, align 4, !dbg !4150
  br label %end, !dbg !4151

if.end23:                                         ; preds = %if.end19
  %25 = load %struct.acpi_tsd_package*, %struct.acpi_tsd_package** %pdomain, align 8, !dbg !4152
  %revision = getelementptr inbounds %struct.acpi_tsd_package, %struct.acpi_tsd_package* %25, i32 0, i32 1, !dbg !4154
  %26 = load i64, i64* %revision, align 1, !dbg !4154
  %cmp24 = icmp ne i64 %26, 0, !dbg !4155
  br i1 %cmp24, label %if.then25, label %if.end27, !dbg !4156

if.then25:                                        ; preds = %if.end23
  %call26 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0)) #11, !dbg !4157
  store i32 -14, i32* %result, align 4, !dbg !4159
  br label %end, !dbg !4160

if.end27:                                         ; preds = %if.end23
  %27 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !4161
  %throttling28 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %27, i32 0, i32 10, !dbg !4162
  store %struct.acpi_processor_throttling* %throttling28, %struct.acpi_processor_throttling** %pthrottling, align 8, !dbg !4163
  %28 = load %struct.acpi_processor_throttling*, %struct.acpi_processor_throttling** %pthrottling, align 8, !dbg !4164
  %tsd_valid_flag29 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %28, i32 0, i32 13, !dbg !4165
  store i8 1, i8* %tsd_valid_flag29, align 2, !dbg !4166
  %29 = load %struct.acpi_tsd_package*, %struct.acpi_tsd_package** %pdomain, align 8, !dbg !4167
  %coord_type = getelementptr inbounds %struct.acpi_tsd_package, %struct.acpi_tsd_package* %29, i32 0, i32 3, !dbg !4168
  %30 = load i64, i64* %coord_type, align 1, !dbg !4168
  %conv = trunc i64 %30 to i32, !dbg !4167
  %31 = load %struct.acpi_processor_throttling*, %struct.acpi_processor_throttling** %pthrottling, align 8, !dbg !4169
  %shared_type = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %31, i32 0, i32 14, !dbg !4170
  store i32 %conv, i32* %shared_type, align 8, !dbg !4171
  %32 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !4172
  %id = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %32, i32 0, i32 3, !dbg !4173
  %33 = load i32, i32* %id, align 8, !dbg !4173
  %34 = load %struct.acpi_processor_throttling*, %struct.acpi_processor_throttling** %pthrottling, align 8, !dbg !4174
  %shared_cpu_map = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %34, i32 0, i32 7, !dbg !4175
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %shared_cpu_map, i64 0, i64 0, !dbg !4174
  call void @cpumask_set_cpu(i32 %33, %struct.cpumask* %arraydecay) #10, !dbg !4176
  %35 = load %struct.acpi_tsd_package*, %struct.acpi_tsd_package** %pdomain, align 8, !dbg !4177
  %coord_type30 = getelementptr inbounds %struct.acpi_tsd_package, %struct.acpi_tsd_package* %35, i32 0, i32 3, !dbg !4179
  %36 = load i64, i64* %coord_type30, align 1, !dbg !4179
  %cmp31 = icmp ne i64 %36, 252, !dbg !4180
  br i1 %cmp31, label %land.lhs.true, label %if.end43, !dbg !4181

land.lhs.true:                                    ; preds = %if.end27
  %37 = load %struct.acpi_tsd_package*, %struct.acpi_tsd_package** %pdomain, align 8, !dbg !4182
  %coord_type33 = getelementptr inbounds %struct.acpi_tsd_package, %struct.acpi_tsd_package* %37, i32 0, i32 3, !dbg !4183
  %38 = load i64, i64* %coord_type33, align 1, !dbg !4183
  %cmp34 = icmp ne i64 %38, 253, !dbg !4184
  br i1 %cmp34, label %land.lhs.true36, label %if.end43, !dbg !4185

land.lhs.true36:                                  ; preds = %land.lhs.true
  %39 = load %struct.acpi_tsd_package*, %struct.acpi_tsd_package** %pdomain, align 8, !dbg !4186
  %coord_type37 = getelementptr inbounds %struct.acpi_tsd_package, %struct.acpi_tsd_package* %39, i32 0, i32 3, !dbg !4187
  %40 = load i64, i64* %coord_type37, align 1, !dbg !4187
  %cmp38 = icmp ne i64 %40, 254, !dbg !4188
  br i1 %cmp38, label %if.then40, label %if.end43, !dbg !4189

if.then40:                                        ; preds = %land.lhs.true36
  %41 = load %struct.acpi_processor_throttling*, %struct.acpi_processor_throttling** %pthrottling, align 8, !dbg !4190
  %tsd_valid_flag41 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %41, i32 0, i32 13, !dbg !4192
  store i8 0, i8* %tsd_valid_flag41, align 2, !dbg !4193
  %42 = load %struct.acpi_processor_throttling*, %struct.acpi_processor_throttling** %pthrottling, align 8, !dbg !4194
  %shared_type42 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %42, i32 0, i32 14, !dbg !4195
  store i32 252, i32* %shared_type42, align 8, !dbg !4196
  br label %if.end43, !dbg !4197

if.end43:                                         ; preds = %if.then40, %land.lhs.true36, %land.lhs.true, %if.end27
  br label %end, !dbg !4198

end:                                              ; preds = %if.end43, %if.then25, %if.then21, %if.then17, %if.then9, %if.then5
  call void @llvm.dbg.label(metadata !4199), !dbg !4200
  %pointer44 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 1, !dbg !4201
  %43 = load i8*, i8** %pointer44, align 8, !dbg !4201
  call void @kfree(i8* %43) #10, !dbg !4202
  %44 = load i32, i32* %result, align 4, !dbg !4203
  store i32 %44, i32* %retval, align 4, !dbg !4204
  br label %return, !dbg !4204

return:                                           ; preds = %end, %if.end
  %45 = load i32, i32* %retval, align 4, !dbg !4205
  ret i32 %45, !dbg !4205
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cpumask_set_cpu(i32 %cpu, %struct.cpumask* %dstp) #0 !dbg !4206 {
entry:
  %cpu.addr = alloca i32, align 4
  %dstp.addr = alloca %struct.cpumask*, align 8
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !4210, metadata !DIExpression()), !dbg !4211
  store %struct.cpumask* %dstp, %struct.cpumask** %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpumask** %dstp.addr, metadata !4212, metadata !DIExpression()), !dbg !4213
  %0 = load i32, i32* %cpu.addr, align 4, !dbg !4214
  %call = call i32 @cpumask_check(i32 %0) #10, !dbg !4215
  %conv = zext i32 %call to i64, !dbg !4215
  %1 = load %struct.cpumask*, %struct.cpumask** %dstp.addr, align 8, !dbg !4216
  %bits = getelementptr inbounds %struct.cpumask, %struct.cpumask* %1, i32 0, i32 0, !dbg !4216
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %bits, i64 0, i64 0, !dbg !4216
  call void @set_bit(i64 %conv, i64* %arraydecay) #10, !dbg !4217
  ret void, !dbg !4218
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @zalloc_cpumask_var([1 x %struct.cpumask]* %mask, i32 %flags) #0 !dbg !4219 {
entry:
  %mask.addr = alloca [1 x %struct.cpumask]*, align 8
  %flags.addr = alloca i32, align 4
  store [1 x %struct.cpumask]* %mask, [1 x %struct.cpumask]** %mask.addr, align 8
  call void @llvm.dbg.declare(metadata [1 x %struct.cpumask]** %mask.addr, metadata !4223, metadata !DIExpression()), !dbg !4224
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4225, metadata !DIExpression()), !dbg !4226
  %0 = load [1 x %struct.cpumask]*, [1 x %struct.cpumask]** %mask.addr, align 8, !dbg !4227
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %0, i64 0, i64 0, !dbg !4228
  call void @cpumask_clear(%struct.cpumask* %arraydecay) #10, !dbg !4229
  ret i1 true, !dbg !4230
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cpumask_test_cpu(i32 %cpu, %struct.cpumask* %cpumask) #0 !dbg !4231 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpumask.addr = alloca %struct.cpumask*, align 8
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !4234, metadata !DIExpression()), !dbg !4235
  store %struct.cpumask* %cpumask, %struct.cpumask** %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpumask** %cpumask.addr, metadata !4236, metadata !DIExpression()), !dbg !4237
  %0 = load i32, i32* %cpu.addr, align 4, !dbg !4238
  %call = call i32 @cpumask_check(i32 %0) #10, !dbg !4239
  %conv = zext i32 %call to i64, !dbg !4239
  %1 = load %struct.cpumask*, %struct.cpumask** %cpumask.addr, align 8, !dbg !4240
  %bits = getelementptr inbounds %struct.cpumask, %struct.cpumask* %1, i32 0, i32 0, !dbg !4240
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %bits, i64 0, i64 0, !dbg !4240
  %call1 = call zeroext i1 @test_bit(i64 %conv, i64* %arraydecay) #10, !dbg !4241
  %conv2 = zext i1 %call1 to i32, !dbg !4241
  ret i32 %conv2, !dbg !4242
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cpumask_copy(%struct.cpumask* %dstp, %struct.cpumask* %srcp) #0 !dbg !4243 {
entry:
  %dstp.addr = alloca %struct.cpumask*, align 8
  %srcp.addr = alloca %struct.cpumask*, align 8
  store %struct.cpumask* %dstp, %struct.cpumask** %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpumask** %dstp.addr, metadata !4246, metadata !DIExpression()), !dbg !4247
  store %struct.cpumask* %srcp, %struct.cpumask** %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpumask** %srcp.addr, metadata !4248, metadata !DIExpression()), !dbg !4249
  %0 = load %struct.cpumask*, %struct.cpumask** %dstp.addr, align 8, !dbg !4250
  %bits = getelementptr inbounds %struct.cpumask, %struct.cpumask* %0, i32 0, i32 0, !dbg !4250
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %bits, i64 0, i64 0, !dbg !4250
  %1 = load %struct.cpumask*, %struct.cpumask** %srcp.addr, align 8, !dbg !4251
  %bits1 = getelementptr inbounds %struct.cpumask, %struct.cpumask* %1, i32 0, i32 0, !dbg !4251
  %arraydecay2 = getelementptr inbounds [1 x i64], [1 x i64]* %bits1, i64 0, i64 0, !dbg !4251
  call void @bitmap_copy(i64* %arraydecay, i64* %arraydecay2, i32 1) #10, !dbg !4252
  ret void, !dbg !4253
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @free_cpumask_var(%struct.cpumask* %mask) #0 !dbg !4254 {
entry:
  %mask.addr = alloca %struct.cpumask*, align 8
  store %struct.cpumask* %mask, %struct.cpumask** %mask.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpumask** %mask.addr, metadata !4257, metadata !DIExpression()), !dbg !4258
  ret void, !dbg !4259
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cpumask_clear(%struct.cpumask* %dstp) #0 !dbg !4260 {
entry:
  %dstp.addr = alloca %struct.cpumask*, align 8
  store %struct.cpumask* %dstp, %struct.cpumask** %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpumask** %dstp.addr, metadata !4261, metadata !DIExpression()), !dbg !4262
  %0 = load %struct.cpumask*, %struct.cpumask** %dstp.addr, align 8, !dbg !4263
  %bits = getelementptr inbounds %struct.cpumask, %struct.cpumask* %0, i32 0, i32 0, !dbg !4263
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %bits, i64 0, i64 0, !dbg !4263
  call void @bitmap_zero(i64* %arraydecay, i32 1) #10, !dbg !4264
  ret void, !dbg !4265
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #0 !dbg !4266 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !4273, metadata !DIExpression()), !dbg !4276
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !4278, metadata !DIExpression()), !dbg !4279
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !4280, metadata !DIExpression()), !dbg !4281
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !4282, metadata !DIExpression()), !dbg !4284
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !4286, metadata !DIExpression()), !dbg !4287
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !4288, metadata !DIExpression()), !dbg !4296
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4298, metadata !DIExpression()), !dbg !4299
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !4300, metadata !DIExpression()), !dbg !4301
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !4302, metadata !DIExpression()), !dbg !4303
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !4304
  %1 = load i64, i64* %nr.addr, align 8, !dbg !4305
  %div = sdiv i64 %1, 64, !dbg !4305
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !4306
  %2 = bitcast i64* %add.ptr to i8*, !dbg !4304
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !4307
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4308
  %conv.i = trunc i64 %4 to i32, !dbg !4308
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #12, !dbg !4309
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !4310
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !4310
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #12, !dbg !4310
  %7 = load i64, i64* %nr.addr, align 8, !dbg !4311
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !4311
  br i1 %8, label %cond.true, label %cond.false, !dbg !4311

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !4311
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !4311
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !4312
  %and.i = and i64 %11, 63, !dbg !4313
  %shl.i = shl i64 1, %and.i, !dbg !4314
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !4315
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !4316
  %shr.i = ashr i64 %13, 6, !dbg !4317
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !4315
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !4315
  %and1.i = and i64 %shl.i, %14, !dbg !4318
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !4319
  %conv = zext i1 %cmp.i to i32, !dbg !4311
  br label %cond.end, !dbg !4311

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !4311
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !4311
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !4320
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !4321
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #9, !dbg !4322, !srcloc !4323
  store i8 %19, i8* %oldbit.i, align 1, !dbg !4322
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !4324
  %tobool.i = trunc i8 %20 to i1, !dbg !4324
  %conv2 = zext i1 %tobool.i to i32, !dbg !4311
  br label %cond.end, !dbg !4311

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !4311
  %tobool = icmp ne i32 %cond, 0, !dbg !4311
  ret i1 %tobool, !dbg !4325
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cpumask_check(i32 %cpu) #0 !dbg !4326 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !4329, metadata !DIExpression()), !dbg !4330
  %0 = load i32, i32* %cpu.addr, align 4, !dbg !4331
  call void @cpu_max_bits_warn(i32 %0, i32 1) #10, !dbg !4332
  %1 = load i32, i32* %cpu.addr, align 4, !dbg !4333
  ret i32 %1, !dbg !4334
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !4335 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !4339, metadata !DIExpression()), !dbg !4340
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !4341, metadata !DIExpression()), !dbg !4342
  ret i1 true, !dbg !4343
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !4344 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4348, metadata !DIExpression()), !dbg !4349
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4350, metadata !DIExpression()), !dbg !4351
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !4352, metadata !DIExpression()), !dbg !4353
  ret void, !dbg !4354
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cpu_max_bits_warn(i32 %cpu, i32 %bits) #0 !dbg !4355 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !4358, metadata !DIExpression()), !dbg !4359
  store i32 %bits, i32* %bits.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bits.addr, metadata !4360, metadata !DIExpression()), !dbg !4361
  ret void, !dbg !4362
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @bitmap_copy(i64* %dst, i64* %src, i32 %nbits) #0 !dbg !4363 {
entry:
  %dst.addr = alloca i64*, align 8
  %src.addr = alloca i64*, align 8
  %nbits.addr = alloca i32, align 4
  %len = alloca i32, align 4
  store i64* %dst, i64** %dst.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %dst.addr, metadata !4369, metadata !DIExpression()), !dbg !4370
  store i64* %src, i64** %src.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %src.addr, metadata !4371, metadata !DIExpression()), !dbg !4372
  store i32 %nbits, i32* %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nbits.addr, metadata !4373, metadata !DIExpression()), !dbg !4374
  call void @llvm.dbg.declare(metadata i32* %len, metadata !4375, metadata !DIExpression()), !dbg !4376
  %0 = load i32, i32* %nbits.addr, align 4, !dbg !4377
  %conv = zext i32 %0 to i64, !dbg !4377
  %add = add i64 %conv, 64, !dbg !4377
  %sub = sub i64 %add, 1, !dbg !4377
  %div = udiv i64 %sub, 64, !dbg !4377
  %mul = mul i64 %div, 8, !dbg !4378
  %conv1 = trunc i64 %mul to i32, !dbg !4377
  store i32 %conv1, i32* %len, align 4, !dbg !4376
  %1 = load i64*, i64** %dst.addr, align 8, !dbg !4379
  %2 = bitcast i64* %1 to i8*, !dbg !4380
  %3 = load i64*, i64** %src.addr, align 8, !dbg !4381
  %4 = bitcast i64* %3 to i8*, !dbg !4380
  %5 = load i32, i32* %len, align 4, !dbg !4382
  %conv2 = zext i32 %5 to i64, !dbg !4382
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 %4, i64 %conv2, i1 false), !dbg !4380
  ret void, !dbg !4383
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @bitmap_zero(i64* %dst, i32 %nbits) #0 !dbg !4384 {
entry:
  %dst.addr = alloca i64*, align 8
  %nbits.addr = alloca i32, align 4
  %len = alloca i32, align 4
  store i64* %dst, i64** %dst.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %dst.addr, metadata !4387, metadata !DIExpression()), !dbg !4388
  store i32 %nbits, i32* %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nbits.addr, metadata !4389, metadata !DIExpression()), !dbg !4390
  call void @llvm.dbg.declare(metadata i32* %len, metadata !4391, metadata !DIExpression()), !dbg !4392
  %0 = load i32, i32* %nbits.addr, align 4, !dbg !4393
  %conv = zext i32 %0 to i64, !dbg !4393
  %add = add i64 %conv, 64, !dbg !4393
  %sub = sub i64 %add, 1, !dbg !4393
  %div = udiv i64 %sub, 64, !dbg !4393
  %mul = mul i64 %div, 8, !dbg !4394
  %conv1 = trunc i64 %mul to i32, !dbg !4393
  store i32 %conv1, i32* %len, align 4, !dbg !4392
  %1 = load i64*, i64** %dst.addr, align 8, !dbg !4395
  %2 = bitcast i64* %1 to i8*, !dbg !4396
  %3 = load i32, i32* %len, align 4, !dbg !4397
  %conv2 = zext i32 %3 to i64, !dbg !4397
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 %conv2, i1 false), !dbg !4396
  ret void, !dbg !4398
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noredzone
declare dso_local i32 @acpi_evaluate_integer(i8*, i8*, %struct.acpi_object_list*, i64*) #4

; Function Attrs: noredzone
declare dso_local void @acpi_exception(i8*, i32, i32, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @call_on_cpu(i32 %cpu, i64 (i8*)* %fn, i8* %arg, i1 zeroext %direct) #0 !dbg !4399 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %fn.addr = alloca i64 (i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %direct.addr = alloca i8, align 1
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !4405, metadata !DIExpression()), !dbg !4406
  store i64 (i8*)* %fn, i64 (i8*)** %fn.addr, align 8
  call void @llvm.dbg.declare(metadata i64 (i8*)** %fn.addr, metadata !4407, metadata !DIExpression()), !dbg !4408
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !4409, metadata !DIExpression()), !dbg !4410
  %frombool = zext i1 %direct to i8
  store i8 %frombool, i8* %direct.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %direct.addr, metadata !4411, metadata !DIExpression()), !dbg !4412
  %0 = load i8, i8* %direct.addr, align 1, !dbg !4413
  %tobool = trunc i8 %0 to i1, !dbg !4413
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !4415

lor.lhs.false:                                    ; preds = %entry
  %call = call zeroext i1 @is_percpu_thread() #10, !dbg !4416
  br i1 %call, label %land.lhs.true, label %if.end, !dbg !4417

land.lhs.true:                                    ; preds = %lor.lhs.false
  %1 = load i32, i32* %cpu.addr, align 4, !dbg !4418
  %cmp = icmp eq i32 %1, 0, !dbg !4419
  br i1 %cmp, label %if.then, label %if.end, !dbg !4420

if.then:                                          ; preds = %land.lhs.true, %entry
  %2 = load i64 (i8*)*, i64 (i8*)** %fn.addr, align 8, !dbg !4421
  %3 = load i8*, i8** %arg.addr, align 8, !dbg !4422
  %call1 = call i64 %2(i8* %3) #10, !dbg !4421
  %conv = trunc i64 %call1 to i32, !dbg !4421
  store i32 %conv, i32* %retval, align 4, !dbg !4423
  br label %return, !dbg !4423

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %4 = load i32, i32* %cpu.addr, align 4, !dbg !4424
  %5 = load i64 (i8*)*, i64 (i8*)** %fn.addr, align 8, !dbg !4425
  %6 = load i8*, i8** %arg.addr, align 8, !dbg !4426
  %call2 = call i64 @work_on_cpu(i32 %4, i64 (i8*)* %5, i8* %6) #10, !dbg !4427
  %conv3 = trunc i64 %call2 to i32, !dbg !4427
  store i32 %conv3, i32* %retval, align 4, !dbg !4428
  br label %return, !dbg !4428

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !4429
  ret i32 %7, !dbg !4429
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @__acpi_processor_get_throttling(i8* %data) #0 !dbg !4430 {
entry:
  %data.addr = alloca i8*, align 8
  %pr = alloca %struct.acpi_processor*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4431, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr, metadata !4433, metadata !DIExpression()), !dbg !4434
  %0 = load i8*, i8** %data.addr, align 8, !dbg !4435
  %1 = bitcast i8* %0 to %struct.acpi_processor*, !dbg !4435
  store %struct.acpi_processor* %1, %struct.acpi_processor** %pr, align 8, !dbg !4434
  %2 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !4436
  %throttling = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %2, i32 0, i32 10, !dbg !4437
  %acpi_processor_get_throttling = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling, i32 0, i32 8, !dbg !4438
  %acpi_processor_get_throttling1 = bitcast {}** %acpi_processor_get_throttling to i32 (%struct.acpi_processor*)**, !dbg !4438
  %3 = load i32 (%struct.acpi_processor*)*, i32 (%struct.acpi_processor*)** %acpi_processor_get_throttling1, align 8, !dbg !4438
  %4 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !4439
  %call = call i32 %3(%struct.acpi_processor* %4) #10, !dbg !4436
  %conv = sext i32 %call to i64, !dbg !4436
  ret i64 %conv, !dbg !4440
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @is_percpu_thread() #0 !dbg !4441 {
entry:
  ret i1 true, !dbg !4442
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @work_on_cpu(i32 %cpu, i64 (i8*)* %fn, i8* %arg) #0 !dbg !4443 {
entry:
  %cpu.addr = alloca i32, align 4
  %fn.addr = alloca i64 (i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !4446, metadata !DIExpression()), !dbg !4447
  store i64 (i8*)* %fn, i64 (i8*)** %fn.addr, align 8
  call void @llvm.dbg.declare(metadata i64 (i8*)** %fn.addr, metadata !4448, metadata !DIExpression()), !dbg !4449
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !4450, metadata !DIExpression()), !dbg !4451
  %0 = load i64 (i8*)*, i64 (i8*)** %fn.addr, align 8, !dbg !4452
  %1 = load i8*, i8** %arg.addr, align 8, !dbg !4453
  %call = call i64 %0(i8* %1) #10, !dbg !4452
  ret i64 %call, !dbg !4454
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_processor_throttling_notifier(i64 %event, i8* %data) #0 !dbg !4455 {
entry:
  %retval = alloca i32, align 4
  %event.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %p_tstate = alloca %struct.throttling_tstate*, align 8
  %pr = alloca %struct.acpi_processor*, align 8
  %cpu = alloca i32, align 4
  %target_state = alloca i32, align 4
  %p_limit = alloca %struct.acpi_processor_limit*, align 8
  %p_throttling = alloca %struct.acpi_processor_throttling*, align 8
  %tmp = alloca %struct.acpi_processor**, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp2 = alloca %struct.acpi_processor**, align 8
  store i64 %event, i64* %event.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %event.addr, metadata !4458, metadata !DIExpression()), !dbg !4459
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4460, metadata !DIExpression()), !dbg !4461
  call void @llvm.dbg.declare(metadata %struct.throttling_tstate** %p_tstate, metadata !4462, metadata !DIExpression()), !dbg !4464
  %0 = load i8*, i8** %data.addr, align 8, !dbg !4465
  %1 = bitcast i8* %0 to %struct.throttling_tstate*, !dbg !4465
  store %struct.throttling_tstate* %1, %struct.throttling_tstate** %p_tstate, align 8, !dbg !4464
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr, metadata !4466, metadata !DIExpression()), !dbg !4467
  call void @llvm.dbg.declare(metadata i32* %cpu, metadata !4468, metadata !DIExpression()), !dbg !4469
  call void @llvm.dbg.declare(metadata i32* %target_state, metadata !4470, metadata !DIExpression()), !dbg !4471
  call void @llvm.dbg.declare(metadata %struct.acpi_processor_limit** %p_limit, metadata !4472, metadata !DIExpression()), !dbg !4473
  call void @llvm.dbg.declare(metadata %struct.acpi_processor_throttling** %p_throttling, metadata !4474, metadata !DIExpression()), !dbg !4475
  %2 = load %struct.throttling_tstate*, %struct.throttling_tstate** %p_tstate, align 8, !dbg !4476
  %cpu1 = getelementptr inbounds %struct.throttling_tstate, %struct.throttling_tstate* %2, i32 0, i32 0, !dbg !4477
  %3 = load i32, i32* %cpu1, align 4, !dbg !4477
  store i32 %3, i32* %cpu, align 4, !dbg !4478
  %4 = load i32, i32* %cpu, align 4, !dbg !4479
  br label %do.body, !dbg !4481

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !4483, metadata !DIExpression()), !dbg !4485
  store i8* null, i8** %__vpp_verify, align 8, !dbg !4485
  %5 = load i8*, i8** %__vpp_verify, align 8, !dbg !4485
  br label %do.end, !dbg !4485

do.end:                                           ; preds = %do.body
  store %struct.acpi_processor** @processors, %struct.acpi_processor*** %tmp2, align 8, !dbg !4485
  %6 = load %struct.acpi_processor**, %struct.acpi_processor*** %tmp2, align 8, !dbg !4481
  store %struct.acpi_processor** %6, %struct.acpi_processor*** %tmp, align 8, !dbg !4479
  %7 = load %struct.acpi_processor**, %struct.acpi_processor*** %tmp, align 8, !dbg !4479
  %8 = load %struct.acpi_processor*, %struct.acpi_processor** %7, align 8, !dbg !4486
  store %struct.acpi_processor* %8, %struct.acpi_processor** %pr, align 8, !dbg !4487
  %9 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !4488
  %tobool = icmp ne %struct.acpi_processor* %9, null, !dbg !4488
  br i1 %tobool, label %if.end, label %if.then, !dbg !4490

if.then:                                          ; preds = %do.end
  store i32 0, i32* %retval, align 4, !dbg !4491
  br label %return, !dbg !4491

if.end:                                           ; preds = %do.end
  %10 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !4493
  %flags = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %10, i32 0, i32 7, !dbg !4495
  %11 = bitcast %struct.acpi_processor_flags* %flags to i16*, !dbg !4496
  %bf.load = load i16, i16* %11, align 8, !dbg !4496
  %bf.lshr = lshr i16 %bf.load, 2, !dbg !4496
  %bf.clear = and i16 %bf.lshr, 1, !dbg !4496
  %bf.cast = trunc i16 %bf.clear to i8, !dbg !4496
  %tobool3 = icmp ne i8 %bf.cast, 0, !dbg !4493
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !4497

if.then4:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4498
  br label %return, !dbg !4498

if.end5:                                          ; preds = %if.end
  %12 = load %struct.throttling_tstate*, %struct.throttling_tstate** %p_tstate, align 8, !dbg !4500
  %target_state6 = getelementptr inbounds %struct.throttling_tstate, %struct.throttling_tstate* %12, i32 0, i32 1, !dbg !4501
  %13 = load i32, i32* %target_state6, align 4, !dbg !4501
  store i32 %13, i32* %target_state, align 4, !dbg !4502
  %14 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !4503
  %throttling = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %14, i32 0, i32 10, !dbg !4504
  store %struct.acpi_processor_throttling* %throttling, %struct.acpi_processor_throttling** %p_throttling, align 8, !dbg !4505
  %15 = load i64, i64* %event.addr, align 8, !dbg !4506
  switch i64 %15, label %sw.default [
    i64 1, label %sw.bb
    i64 2, label %sw.bb26
  ], !dbg !4507

sw.bb:                                            ; preds = %if.end5
  %16 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !4508
  %limit = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %16, i32 0, i32 11, !dbg !4510
  store %struct.acpi_processor_limit* %limit, %struct.acpi_processor_limit** %p_limit, align 8, !dbg !4511
  %17 = load %struct.acpi_processor_limit*, %struct.acpi_processor_limit** %p_limit, align 8, !dbg !4512
  %thermal = getelementptr inbounds %struct.acpi_processor_limit, %struct.acpi_processor_limit* %17, i32 0, i32 1, !dbg !4514
  %tx = getelementptr inbounds %struct.acpi_processor_lx, %struct.acpi_processor_lx* %thermal, i32 0, i32 1, !dbg !4515
  %18 = load i32, i32* %tx, align 4, !dbg !4515
  %19 = load i32, i32* %target_state, align 4, !dbg !4516
  %cmp = icmp sgt i32 %18, %19, !dbg !4517
  br i1 %cmp, label %if.then7, label %if.end10, !dbg !4518

if.then7:                                         ; preds = %sw.bb
  %20 = load %struct.acpi_processor_limit*, %struct.acpi_processor_limit** %p_limit, align 8, !dbg !4519
  %thermal8 = getelementptr inbounds %struct.acpi_processor_limit, %struct.acpi_processor_limit* %20, i32 0, i32 1, !dbg !4520
  %tx9 = getelementptr inbounds %struct.acpi_processor_lx, %struct.acpi_processor_lx* %thermal8, i32 0, i32 1, !dbg !4521
  %21 = load i32, i32* %tx9, align 4, !dbg !4521
  store i32 %21, i32* %target_state, align 4, !dbg !4522
  br label %if.end10, !dbg !4523

if.end10:                                         ; preds = %if.then7, %sw.bb
  %22 = load %struct.acpi_processor_limit*, %struct.acpi_processor_limit** %p_limit, align 8, !dbg !4524
  %user = getelementptr inbounds %struct.acpi_processor_limit, %struct.acpi_processor_limit* %22, i32 0, i32 2, !dbg !4526
  %tx11 = getelementptr inbounds %struct.acpi_processor_lx, %struct.acpi_processor_lx* %user, i32 0, i32 1, !dbg !4527
  %23 = load i32, i32* %tx11, align 4, !dbg !4527
  %24 = load i32, i32* %target_state, align 4, !dbg !4528
  %cmp12 = icmp sgt i32 %23, %24, !dbg !4529
  br i1 %cmp12, label %if.then13, label %if.end16, !dbg !4530

if.then13:                                        ; preds = %if.end10
  %25 = load %struct.acpi_processor_limit*, %struct.acpi_processor_limit** %p_limit, align 8, !dbg !4531
  %user14 = getelementptr inbounds %struct.acpi_processor_limit, %struct.acpi_processor_limit* %25, i32 0, i32 2, !dbg !4532
  %tx15 = getelementptr inbounds %struct.acpi_processor_lx, %struct.acpi_processor_lx* %user14, i32 0, i32 1, !dbg !4533
  %26 = load i32, i32* %tx15, align 4, !dbg !4533
  store i32 %26, i32* %target_state, align 4, !dbg !4534
  br label %if.end16, !dbg !4535

if.end16:                                         ; preds = %if.then13, %if.end10
  %27 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !4536
  %throttling_platform_limit = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %27, i32 0, i32 6, !dbg !4538
  %28 = load i32, i32* %throttling_platform_limit, align 4, !dbg !4538
  %29 = load i32, i32* %target_state, align 4, !dbg !4539
  %cmp17 = icmp sgt i32 %28, %29, !dbg !4540
  br i1 %cmp17, label %if.then18, label %if.end20, !dbg !4541

if.then18:                                        ; preds = %if.end16
  %30 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !4542
  %throttling_platform_limit19 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %30, i32 0, i32 6, !dbg !4543
  %31 = load i32, i32* %throttling_platform_limit19, align 4, !dbg !4543
  store i32 %31, i32* %target_state, align 4, !dbg !4544
  br label %if.end20, !dbg !4545

if.end20:                                         ; preds = %if.then18, %if.end16
  %32 = load i32, i32* %target_state, align 4, !dbg !4546
  %33 = load %struct.acpi_processor_throttling*, %struct.acpi_processor_throttling** %p_throttling, align 8, !dbg !4548
  %state_count = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %33, i32 0, i32 4, !dbg !4549
  %34 = load i32, i32* %state_count, align 8, !dbg !4549
  %cmp21 = icmp uge i32 %32, %34, !dbg !4550
  br i1 %cmp21, label %if.then22, label %if.end24, !dbg !4551

if.then22:                                        ; preds = %if.end20
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0)) #11, !dbg !4552
  %35 = load %struct.acpi_processor_throttling*, %struct.acpi_processor_throttling** %p_throttling, align 8, !dbg !4554
  %state_count23 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %35, i32 0, i32 4, !dbg !4555
  %36 = load i32, i32* %state_count23, align 8, !dbg !4555
  %sub = sub i32 %36, 1, !dbg !4556
  store i32 %sub, i32* %target_state, align 4, !dbg !4557
  br label %if.end24, !dbg !4558

if.end24:                                         ; preds = %if.then22, %if.end20
  %37 = load i32, i32* %target_state, align 4, !dbg !4559
  %38 = load %struct.throttling_tstate*, %struct.throttling_tstate** %p_tstate, align 8, !dbg !4560
  %target_state25 = getelementptr inbounds %struct.throttling_tstate, %struct.throttling_tstate* %38, i32 0, i32 1, !dbg !4561
  store i32 %37, i32* %target_state25, align 4, !dbg !4562
  br label %sw.epilog, !dbg !4563

sw.bb26:                                          ; preds = %if.end5
  %39 = load i32, i32* %target_state, align 4, !dbg !4564
  %40 = load %struct.acpi_processor_throttling*, %struct.acpi_processor_throttling** %p_throttling, align 8, !dbg !4565
  %state = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %40, i32 0, i32 0, !dbg !4566
  store i32 %39, i32* %state, align 8, !dbg !4567
  br label %sw.epilog, !dbg !4568

sw.default:                                       ; preds = %if.end5
  %call27 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0)) #11, !dbg !4569
  br label %sw.epilog, !dbg !4570

sw.epilog:                                        ; preds = %sw.default, %sw.bb26, %if.end24
  store i32 0, i32* %retval, align 4, !dbg !4571
  br label %return, !dbg !4571

return:                                           ; preds = %sw.epilog, %if.then4, %if.then
  %41 = load i32, i32* %retval, align 4, !dbg !4572
  ret i32 %41, !dbg !4572
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @acpi_processor_throttling_fn(i8* %data) #0 !dbg !4573 {
entry:
  %data.addr = alloca i8*, align 8
  %arg = alloca %struct.acpi_processor_throttling_arg*, align 8
  %pr = alloca %struct.acpi_processor*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4574, metadata !DIExpression()), !dbg !4575
  call void @llvm.dbg.declare(metadata %struct.acpi_processor_throttling_arg** %arg, metadata !4576, metadata !DIExpression()), !dbg !4578
  %0 = load i8*, i8** %data.addr, align 8, !dbg !4579
  %1 = bitcast i8* %0 to %struct.acpi_processor_throttling_arg*, !dbg !4579
  store %struct.acpi_processor_throttling_arg* %1, %struct.acpi_processor_throttling_arg** %arg, align 8, !dbg !4578
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr, metadata !4580, metadata !DIExpression()), !dbg !4581
  %2 = load %struct.acpi_processor_throttling_arg*, %struct.acpi_processor_throttling_arg** %arg, align 8, !dbg !4582
  %pr1 = getelementptr inbounds %struct.acpi_processor_throttling_arg, %struct.acpi_processor_throttling_arg* %2, i32 0, i32 0, !dbg !4583
  %3 = load %struct.acpi_processor*, %struct.acpi_processor** %pr1, align 8, !dbg !4583
  store %struct.acpi_processor* %3, %struct.acpi_processor** %pr, align 8, !dbg !4581
  %4 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !4584
  %throttling = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %4, i32 0, i32 10, !dbg !4585
  %acpi_processor_set_throttling = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling, i32 0, i32 9, !dbg !4586
  %5 = load i32 (%struct.acpi_processor*, i32, i1)*, i32 (%struct.acpi_processor*, i32, i1)** %acpi_processor_set_throttling, align 8, !dbg !4586
  %6 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !4587
  %7 = load %struct.acpi_processor_throttling_arg*, %struct.acpi_processor_throttling_arg** %arg, align 8, !dbg !4588
  %target_state = getelementptr inbounds %struct.acpi_processor_throttling_arg, %struct.acpi_processor_throttling_arg* %7, i32 0, i32 1, !dbg !4589
  %8 = load i32, i32* %target_state, align 8, !dbg !4589
  %9 = load %struct.acpi_processor_throttling_arg*, %struct.acpi_processor_throttling_arg** %arg, align 8, !dbg !4590
  %force = getelementptr inbounds %struct.acpi_processor_throttling_arg, %struct.acpi_processor_throttling_arg* %9, i32 0, i32 2, !dbg !4591
  %10 = load i8, i8* %force, align 4, !dbg !4591
  %tobool = trunc i8 %10 to i1, !dbg !4591
  %call = call i32 %5(%struct.acpi_processor* %6, i32 %8, i1 zeroext %tobool) #10, !dbg !4584
  %conv = sext i32 %call to i64, !dbg !4584
  ret i64 %conv, !dbg !4592
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #5

; Function Attrs: noredzone
declare dso_local i32 @acpi_evaluate_object(i8*, i8*, %struct.acpi_object_list*, %struct.acpi_buffer*) #4

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kmalloc_array(i64 %n, i64 %size, i32 %flags) #0 !dbg !4593 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4596, metadata !DIExpression()), !dbg !4600
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4609, metadata !DIExpression()), !dbg !4610
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4611, metadata !DIExpression()), !dbg !4612
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4613, metadata !DIExpression()), !dbg !4614
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4615, metadata !DIExpression()), !dbg !4619
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4621, metadata !DIExpression()), !dbg !4625
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4627, metadata !DIExpression()), !dbg !4631
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4636, metadata !DIExpression()), !dbg !4637
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4638, metadata !DIExpression()), !dbg !4639
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4640, metadata !DIExpression()), !dbg !4641
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4642, metadata !DIExpression()), !dbg !4643
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4644, metadata !DIExpression()), !dbg !4645
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4646, metadata !DIExpression()), !dbg !4647
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4648, metadata !DIExpression()), !dbg !4649
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4650, metadata !DIExpression()), !dbg !4651
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
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4652, metadata !DIExpression()), !dbg !4653
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4654, metadata !DIExpression()), !dbg !4655
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4656, metadata !DIExpression()), !dbg !4657
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !4658, metadata !DIExpression()), !dbg !4659
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !4660, metadata !DIExpression()), !dbg !4663
  %0 = load i64, i64* %n.addr, align 8, !dbg !4663
  store i64 %0, i64* %__a, align 8, !dbg !4663
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !4664, metadata !DIExpression()), !dbg !4663
  %1 = load i64, i64* %size.addr, align 8, !dbg !4663
  store i64 %1, i64* %__b, align 8, !dbg !4663
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !4665, metadata !DIExpression()), !dbg !4663
  store i64* %bytes, i64** %__d, align 8, !dbg !4663
  %cmp = icmp eq i64* %__a, %__b, !dbg !4663
  %conv = zext i1 %cmp to i32, !dbg !4663
  %2 = load i64*, i64** %__d, align 8, !dbg !4663
  %cmp1 = icmp eq i64* %__a, %2, !dbg !4663
  %conv2 = zext i1 %cmp1 to i32, !dbg !4663
  %3 = load i64, i64* %__a, align 8, !dbg !4663
  %4 = load i64, i64* %__b, align 8, !dbg !4663
  %5 = load i64*, i64** %__d, align 8, !dbg !4663
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !4663
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4663
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !4663
  store i64 %8, i64* %5, align 8, !dbg !4663
  %frombool = zext i1 %7 to i8, !dbg !4663
  store i8 %frombool, i8* %tmp, align 1, !dbg !4663
  %9 = load i8, i8* %tmp, align 1, !dbg !4663
  %tobool = trunc i8 %9 to i1, !dbg !4663
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #10, !dbg !4667
  %lnot = xor i1 %call, true, !dbg !4667
  %lnot3 = xor i1 %lnot, true, !dbg !4667
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !4667
  %conv4 = sext i32 %lnot.ext to i64, !dbg !4667
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !4667
  br i1 %tobool5, label %if.then, label %if.end, !dbg !4668

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !4669
  br label %return, !dbg !4669

if.end:                                           ; preds = %entry
  %10 = load i64, i64* %n.addr, align 8, !dbg !4670
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !4671
  br i1 %11, label %land.lhs.true, label %if.end8, !dbg !4672

land.lhs.true:                                    ; preds = %if.end
  %12 = load i64, i64* %size.addr, align 8, !dbg !4673
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !4674
  br i1 %13, label %if.then6, label %if.end8, !dbg !4675

if.then6:                                         ; preds = %land.lhs.true
  %14 = load i64, i64* %bytes, align 8, !dbg !4676
  %15 = load i32, i32* %flags.addr, align 4, !dbg !4677
  store i64 %14, i64* %size.addr.i, align 8
  store i32 %15, i32* %flags.addr.i, align 4
  %16 = load i64, i64* %size.addr.i, align 8, !dbg !4678
  %17 = call i1 @llvm.is.constant.i64(i64 %16) #9, !dbg !4679
  br i1 %17, label %if.then.i, label %if.end9.i, !dbg !4680

if.then.i:                                        ; preds = %if.then6
  %18 = load i64, i64* %size.addr.i, align 8, !dbg !4681
  %cmp.i = icmp ugt i64 %18, 8192, !dbg !4682
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4683

if.then1.i:                                       ; preds = %if.then.i
  %19 = load i64, i64* %size.addr.i, align 8, !dbg !4684
  %20 = load i32, i32* %flags.addr.i, align 4, !dbg !4685
  store i64 %19, i64* %size.addr.i.i, align 8
  store i32 %20, i32* %flags.addr.i.i, align 4
  %21 = load i64, i64* %size.addr.i.i, align 8, !dbg !4686
  %call.i.i = call i32 @get_order(i64 %21) #13, !dbg !4687
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4645
  %22 = load i64, i64* %size.addr.i.i, align 8, !dbg !4688
  %23 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4689
  %24 = load i32, i32* %order.i.i, align 4, !dbg !4690
  store i64 %22, i64* %size.addr.i.i.i, align 8
  store i32 %23, i32* %flags.addr.i.i.i, align 4
  store i32 %24, i32* %order.addr.i.i.i, align 4
  %25 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4691
  %26 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4692
  %27 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4693
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %25, i32 %26, i32 %27) #12, !dbg !4694
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4694
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4694
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4694
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !4694
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4695
  br label %kmalloc.exit, !dbg !4695

if.end.i:                                         ; preds = %if.then.i
  %28 = load i64, i64* %size.addr.i, align 8, !dbg !4696
  store i64 %28, i64* %size.addr.i11.i, align 8
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4697
  %tobool.i.i = icmp ne i64 %29, 0, !dbg !4697
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4699

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4700
  br label %kmalloc_index.exit.i, !dbg !4700

if.end.i.i:                                       ; preds = %if.end.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4701
  %cmp.i.i = icmp ule i64 %30, 8, !dbg !4703
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4704

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4705
  br label %kmalloc_index.exit.i, !dbg !4705

if.end2.i.i:                                      ; preds = %if.end.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4706
  %cmp3.i.i = icmp ugt i64 %31, 64, !dbg !4708
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4709

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4710
  %cmp4.i.i = icmp ule i64 %32, 96, !dbg !4711
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4712

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4713
  br label %kmalloc_index.exit.i, !dbg !4713

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4714
  %cmp7.i.i = icmp ugt i64 %33, 128, !dbg !4716
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4717

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4718
  %cmp9.i.i = icmp ule i64 %34, 192, !dbg !4719
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4720

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4721
  br label %kmalloc_index.exit.i, !dbg !4721

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4722
  %cmp12.i.i = icmp ule i64 %35, 8, !dbg !4724
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4725

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4726
  br label %kmalloc_index.exit.i, !dbg !4726

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4727
  %cmp15.i.i = icmp ule i64 %36, 16, !dbg !4729
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4730

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4731
  br label %kmalloc_index.exit.i, !dbg !4731

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4732
  %cmp18.i.i = icmp ule i64 %37, 32, !dbg !4734
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4735

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4736
  br label %kmalloc_index.exit.i, !dbg !4736

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4737
  %cmp21.i.i = icmp ule i64 %38, 64, !dbg !4739
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4740

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4741
  br label %kmalloc_index.exit.i, !dbg !4741

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4742
  %cmp24.i.i = icmp ule i64 %39, 128, !dbg !4744
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4745

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4746
  br label %kmalloc_index.exit.i, !dbg !4746

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4747
  %cmp27.i.i = icmp ule i64 %40, 256, !dbg !4749
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4750

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4751
  br label %kmalloc_index.exit.i, !dbg !4751

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4752
  %cmp30.i.i = icmp ule i64 %41, 512, !dbg !4754
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4755

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4756
  br label %kmalloc_index.exit.i, !dbg !4756

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4757
  %cmp33.i.i = icmp ule i64 %42, 1024, !dbg !4759
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4760

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4761
  br label %kmalloc_index.exit.i, !dbg !4761

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4762
  %cmp36.i.i = icmp ule i64 %43, 2048, !dbg !4764
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4765

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4766
  br label %kmalloc_index.exit.i, !dbg !4766

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4767
  %cmp39.i.i = icmp ule i64 %44, 4096, !dbg !4769
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4770

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4771
  br label %kmalloc_index.exit.i, !dbg !4771

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4772
  %cmp42.i.i = icmp ule i64 %45, 8192, !dbg !4774
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4775

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4776
  br label %kmalloc_index.exit.i, !dbg !4776

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4777
  %cmp45.i.i = icmp ule i64 %46, 16384, !dbg !4779
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4780

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4781
  br label %kmalloc_index.exit.i, !dbg !4781

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4782
  %cmp48.i.i = icmp ule i64 %47, 32768, !dbg !4784
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4785

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4786
  br label %kmalloc_index.exit.i, !dbg !4786

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4787
  %cmp51.i.i = icmp ule i64 %48, 65536, !dbg !4789
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4790

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4791
  br label %kmalloc_index.exit.i, !dbg !4791

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4792
  %cmp54.i.i = icmp ule i64 %49, 131072, !dbg !4794
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4795

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4796
  br label %kmalloc_index.exit.i, !dbg !4796

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4797
  %cmp57.i.i = icmp ule i64 %50, 262144, !dbg !4799
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4800

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4801
  br label %kmalloc_index.exit.i, !dbg !4801

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4802
  %cmp60.i.i = icmp ule i64 %51, 524288, !dbg !4804
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4805

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4806
  br label %kmalloc_index.exit.i, !dbg !4806

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4807
  %cmp63.i.i = icmp ule i64 %52, 1048576, !dbg !4809
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4810

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4811
  br label %kmalloc_index.exit.i, !dbg !4811

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4812
  %cmp66.i.i = icmp ule i64 %53, 2097152, !dbg !4814
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4815

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4816
  br label %kmalloc_index.exit.i, !dbg !4816

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4817
  %cmp69.i.i = icmp ule i64 %54, 4194304, !dbg !4819
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4820

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4821
  br label %kmalloc_index.exit.i, !dbg !4821

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4822
  %cmp72.i.i = icmp ule i64 %55, 8388608, !dbg !4824
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4825

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4826
  br label %kmalloc_index.exit.i, !dbg !4826

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4827
  %cmp75.i.i = icmp ule i64 %56, 16777216, !dbg !4829
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4830

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4831
  br label %kmalloc_index.exit.i, !dbg !4831

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4832
  %cmp78.i.i = icmp ule i64 %57, 33554432, !dbg !4834
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4835

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4836
  br label %kmalloc_index.exit.i, !dbg !4836

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4837
  %cmp81.i.i = icmp ule i64 %58, 67108864, !dbg !4839
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4840

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4841
  br label %kmalloc_index.exit.i, !dbg !4841

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !4842, !srcloc !4845
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #9, !dbg !4846, !srcloc !4849
  unreachable, !dbg !4850

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %59 = load i32, i32* %retval.i.i, align 4, !dbg !4851
  store i32 %59, i32* %index.i, align 4, !dbg !4852
  %60 = load i32, i32* %index.i, align 4, !dbg !4853
  %tobool.i = icmp ne i32 %60, 0, !dbg !4853
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4855

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4856
  br label %kmalloc.exit, !dbg !4856

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %61 = load i32, i32* %flags.addr.i, align 4, !dbg !4857
  store i32 %61, i32* %flags.addr.i13.i, align 4
  %62 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4858
  %and.i.i = and i32 %62, 17, !dbg !4858
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4858
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4858
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4858
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4858
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4860

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4861
  br label %kmalloc_type.exit.i, !dbg !4861

if.end.i16.i:                                     ; preds = %if.end4.i
  %63 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4862
  %and2.i.i = and i32 %63, 1, !dbg !4863
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4862
  %64 = zext i1 %tobool3.i.i to i64, !dbg !4862
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4862
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4864
  br label %kmalloc_type.exit.i, !dbg !4864

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %65 = load i32, i32* %retval.i12.i, align 4, !dbg !4865
  %idxprom.i = zext i32 %65 to i64, !dbg !4866
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4866
  %66 = load i32, i32* %index.i, align 4, !dbg !4867
  %idxprom6.i = zext i32 %66 to i64, !dbg !4866
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4866
  %67 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4866
  %68 = load i32, i32* %flags.addr.i, align 4, !dbg !4868
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !4869
  store %struct.kmem_cache* %67, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %68, i32* %flags.addr.i17.i, align 4
  store i64 %69, i64* %size.addr.i18.i, align 8
  %70 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4870
  %71 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4871
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %70, i32 %71) #12, !dbg !4872
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4872
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4872
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4872
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !4872
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4614
  %72 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4873
  %73 = load i8*, i8** %ret.i.i, align 8, !dbg !4874
  %74 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4875
  %75 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4876
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %72, i8* %73, i64 %74, i32 %75) #12, !dbg !4877
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4878
  %76 = load i8*, i8** %ret.i.i, align 8, !dbg !4879
  store i8* %76, i8** %retval.i, align 8, !dbg !4880
  br label %kmalloc.exit, !dbg !4880

if.end9.i:                                        ; preds = %if.then6
  %77 = load i64, i64* %size.addr.i, align 8, !dbg !4881
  %78 = load i32, i32* %flags.addr.i, align 4, !dbg !4882
  %call10.i = call noalias i8* @__kmalloc(i64 %77, i32 %78) #12, !dbg !4883
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4883
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4883
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4883
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !4883
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4884
  br label %kmalloc.exit, !dbg !4884

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %79 = load i8*, i8** %retval.i, align 8, !dbg !4885
  store i8* %79, i8** %retval, align 8, !dbg !4886
  br label %return, !dbg !4886

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %80 = load i64, i64* %bytes, align 8, !dbg !4887
  %81 = load i32, i32* %flags.addr, align 4, !dbg !4888
  %call9 = call noalias i8* @__kmalloc(i64 %80, i32 %81) #10, !dbg !4889
  %ptrint = ptrtoint i8* %call9 to i64, !dbg !4889
  %maskedptr = and i64 %ptrint, 7, !dbg !4889
  %maskcond = icmp eq i64 %maskedptr, 0, !dbg !4889
  call void @llvm.assume(i1 %maskcond), !dbg !4889
  store i8* %call9, i8** %retval, align 8, !dbg !4890
  br label %return, !dbg !4890

return:                                           ; preds = %if.end8, %kmalloc.exit, %if.then
  %82 = load i8*, i8** %retval, align 8, !dbg !4891
  ret i8* %82, !dbg !4891
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_extract_package(%union.acpi_object*, %struct.acpi_buffer*, %struct.acpi_buffer*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #0 !dbg !4892 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !4896, metadata !DIExpression()), !dbg !4897
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !4898
  %tobool = trunc i8 %0 to i1, !dbg !4898
  %lnot = xor i1 %tobool, true, !dbg !4898
  %lnot1 = xor i1 %lnot, true, !dbg !4898
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4898
  %conv = sext i32 %lnot.ext to i64, !dbg !4898
  %tobool2 = icmp ne i64 %conv, 0, !dbg !4898
  ret i1 %tobool2, !dbg !4899
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #4

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !4900 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4904, metadata !DIExpression()), !dbg !4908
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4910, metadata !DIExpression()), !dbg !4911
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4912, metadata !DIExpression()), !dbg !4913
  %0 = load i64, i64* %size.addr, align 8, !dbg !4914
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4916
  br i1 %1, label %if.then, label %if.end447, !dbg !4917

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4918
  %tobool = icmp ne i64 %2, 0, !dbg !4918
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4921

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4922
  br label %return, !dbg !4922

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4923
  %cmp = icmp ult i64 %3, 4096, !dbg !4925
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4926

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4927
  br label %return, !dbg !4927

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub = sub i64 %4, 1, !dbg !4928
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4928
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4928

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub4 = sub i64 %6, 1, !dbg !4928
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4928
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4928

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub6 = sub i64 %8, 1, !dbg !4928
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4928
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4928

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4928

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub9 = sub i64 %9, 1, !dbg !4928
  %and = and i64 %sub9, -9223372036854775808, !dbg !4928
  %tobool10 = icmp ne i64 %and, 0, !dbg !4928
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4928

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4928

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub13 = sub i64 %10, 1, !dbg !4928
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4928
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4928
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4928

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4928

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub18 = sub i64 %11, 1, !dbg !4928
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4928
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4928
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4928

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4928

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub23 = sub i64 %12, 1, !dbg !4928
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4928
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4928
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4928

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4928

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub28 = sub i64 %13, 1, !dbg !4928
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4928
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4928
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4928

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4928

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub33 = sub i64 %14, 1, !dbg !4928
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4928
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4928
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4928

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4928

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub38 = sub i64 %15, 1, !dbg !4928
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4928
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4928
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4928

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4928

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub43 = sub i64 %16, 1, !dbg !4928
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4928
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4928
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4928

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4928

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub48 = sub i64 %17, 1, !dbg !4928
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4928
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4928
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4928

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4928

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub53 = sub i64 %18, 1, !dbg !4928
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4928
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4928
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4928

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4928

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub58 = sub i64 %19, 1, !dbg !4928
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4928
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4928
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4928

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4928

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub63 = sub i64 %20, 1, !dbg !4928
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4928
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4928
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4928

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4928

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub68 = sub i64 %21, 1, !dbg !4928
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4928
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4928
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4928

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4928

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub73 = sub i64 %22, 1, !dbg !4928
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4928
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4928
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4928

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4928

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub78 = sub i64 %23, 1, !dbg !4928
  %and79 = and i64 %sub78, 562949953421312, !dbg !4928
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4928
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4928

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4928

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub83 = sub i64 %24, 1, !dbg !4928
  %and84 = and i64 %sub83, 281474976710656, !dbg !4928
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4928
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4928

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4928

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub88 = sub i64 %25, 1, !dbg !4928
  %and89 = and i64 %sub88, 140737488355328, !dbg !4928
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4928
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4928

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4928

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub93 = sub i64 %26, 1, !dbg !4928
  %and94 = and i64 %sub93, 70368744177664, !dbg !4928
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4928
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4928

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4928

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub98 = sub i64 %27, 1, !dbg !4928
  %and99 = and i64 %sub98, 35184372088832, !dbg !4928
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4928
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4928

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4928

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub103 = sub i64 %28, 1, !dbg !4928
  %and104 = and i64 %sub103, 17592186044416, !dbg !4928
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4928
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4928

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4928

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub108 = sub i64 %29, 1, !dbg !4928
  %and109 = and i64 %sub108, 8796093022208, !dbg !4928
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4928
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4928

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4928

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub113 = sub i64 %30, 1, !dbg !4928
  %and114 = and i64 %sub113, 4398046511104, !dbg !4928
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4928
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4928

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4928

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub118 = sub i64 %31, 1, !dbg !4928
  %and119 = and i64 %sub118, 2199023255552, !dbg !4928
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4928
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4928

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4928

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub123 = sub i64 %32, 1, !dbg !4928
  %and124 = and i64 %sub123, 1099511627776, !dbg !4928
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4928
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4928

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4928

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub128 = sub i64 %33, 1, !dbg !4928
  %and129 = and i64 %sub128, 549755813888, !dbg !4928
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4928
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4928

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4928

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub133 = sub i64 %34, 1, !dbg !4928
  %and134 = and i64 %sub133, 274877906944, !dbg !4928
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4928
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4928

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4928

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub138 = sub i64 %35, 1, !dbg !4928
  %and139 = and i64 %sub138, 137438953472, !dbg !4928
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4928
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4928

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4928

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub143 = sub i64 %36, 1, !dbg !4928
  %and144 = and i64 %sub143, 68719476736, !dbg !4928
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4928
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4928

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4928

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub148 = sub i64 %37, 1, !dbg !4928
  %and149 = and i64 %sub148, 34359738368, !dbg !4928
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4928
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4928

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4928

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub153 = sub i64 %38, 1, !dbg !4928
  %and154 = and i64 %sub153, 17179869184, !dbg !4928
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4928
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4928

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4928

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub158 = sub i64 %39, 1, !dbg !4928
  %and159 = and i64 %sub158, 8589934592, !dbg !4928
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4928
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4928

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4928

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub163 = sub i64 %40, 1, !dbg !4928
  %and164 = and i64 %sub163, 4294967296, !dbg !4928
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4928
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4928

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4928

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub168 = sub i64 %41, 1, !dbg !4928
  %and169 = and i64 %sub168, 2147483648, !dbg !4928
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4928
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4928

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4928

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub173 = sub i64 %42, 1, !dbg !4928
  %and174 = and i64 %sub173, 1073741824, !dbg !4928
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4928
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4928

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4928

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub178 = sub i64 %43, 1, !dbg !4928
  %and179 = and i64 %sub178, 536870912, !dbg !4928
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4928
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4928

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4928

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub183 = sub i64 %44, 1, !dbg !4928
  %and184 = and i64 %sub183, 268435456, !dbg !4928
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4928
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4928

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4928

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub188 = sub i64 %45, 1, !dbg !4928
  %and189 = and i64 %sub188, 134217728, !dbg !4928
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4928
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4928

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4928

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub193 = sub i64 %46, 1, !dbg !4928
  %and194 = and i64 %sub193, 67108864, !dbg !4928
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4928
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4928

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4928

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub198 = sub i64 %47, 1, !dbg !4928
  %and199 = and i64 %sub198, 33554432, !dbg !4928
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4928
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4928

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4928

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub203 = sub i64 %48, 1, !dbg !4928
  %and204 = and i64 %sub203, 16777216, !dbg !4928
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4928
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4928

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4928

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub208 = sub i64 %49, 1, !dbg !4928
  %and209 = and i64 %sub208, 8388608, !dbg !4928
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4928
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4928

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4928

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub213 = sub i64 %50, 1, !dbg !4928
  %and214 = and i64 %sub213, 4194304, !dbg !4928
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4928
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4928

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4928

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub218 = sub i64 %51, 1, !dbg !4928
  %and219 = and i64 %sub218, 2097152, !dbg !4928
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4928
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4928

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4928

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub223 = sub i64 %52, 1, !dbg !4928
  %and224 = and i64 %sub223, 1048576, !dbg !4928
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4928
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4928

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4928

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub228 = sub i64 %53, 1, !dbg !4928
  %and229 = and i64 %sub228, 524288, !dbg !4928
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4928
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4928

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4928

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub233 = sub i64 %54, 1, !dbg !4928
  %and234 = and i64 %sub233, 262144, !dbg !4928
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4928
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4928

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4928

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub238 = sub i64 %55, 1, !dbg !4928
  %and239 = and i64 %sub238, 131072, !dbg !4928
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4928
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4928

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4928

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub243 = sub i64 %56, 1, !dbg !4928
  %and244 = and i64 %sub243, 65536, !dbg !4928
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4928
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4928

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4928

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub248 = sub i64 %57, 1, !dbg !4928
  %and249 = and i64 %sub248, 32768, !dbg !4928
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4928
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4928

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4928

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub253 = sub i64 %58, 1, !dbg !4928
  %and254 = and i64 %sub253, 16384, !dbg !4928
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4928
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4928

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4928

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub258 = sub i64 %59, 1, !dbg !4928
  %and259 = and i64 %sub258, 8192, !dbg !4928
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4928
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4928

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4928

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub263 = sub i64 %60, 1, !dbg !4928
  %and264 = and i64 %sub263, 4096, !dbg !4928
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4928
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4928

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4928

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub268 = sub i64 %61, 1, !dbg !4928
  %and269 = and i64 %sub268, 2048, !dbg !4928
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4928
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4928

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4928

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub273 = sub i64 %62, 1, !dbg !4928
  %and274 = and i64 %sub273, 1024, !dbg !4928
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4928
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4928

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4928

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub278 = sub i64 %63, 1, !dbg !4928
  %and279 = and i64 %sub278, 512, !dbg !4928
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4928
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4928

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4928

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub283 = sub i64 %64, 1, !dbg !4928
  %and284 = and i64 %sub283, 256, !dbg !4928
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4928
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4928

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4928

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub288 = sub i64 %65, 1, !dbg !4928
  %and289 = and i64 %sub288, 128, !dbg !4928
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4928
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4928

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4928

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub293 = sub i64 %66, 1, !dbg !4928
  %and294 = and i64 %sub293, 64, !dbg !4928
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4928
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4928

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4928

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub298 = sub i64 %67, 1, !dbg !4928
  %and299 = and i64 %sub298, 32, !dbg !4928
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4928
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4928

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4928

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub303 = sub i64 %68, 1, !dbg !4928
  %and304 = and i64 %sub303, 16, !dbg !4928
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4928
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4928

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4928

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub308 = sub i64 %69, 1, !dbg !4928
  %and309 = and i64 %sub308, 8, !dbg !4928
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4928
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4928

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4928

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub313 = sub i64 %70, 1, !dbg !4928
  %and314 = and i64 %sub313, 4, !dbg !4928
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4928
  %71 = zext i1 %tobool315 to i64, !dbg !4928
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4928
  br label %cond.end, !dbg !4928

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4928
  br label %cond.end317, !dbg !4928

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4928
  br label %cond.end319, !dbg !4928

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4928
  br label %cond.end321, !dbg !4928

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4928
  br label %cond.end323, !dbg !4928

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4928
  br label %cond.end325, !dbg !4928

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4928
  br label %cond.end327, !dbg !4928

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4928
  br label %cond.end329, !dbg !4928

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4928
  br label %cond.end331, !dbg !4928

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4928
  br label %cond.end333, !dbg !4928

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4928
  br label %cond.end335, !dbg !4928

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4928
  br label %cond.end337, !dbg !4928

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4928
  br label %cond.end339, !dbg !4928

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4928
  br label %cond.end341, !dbg !4928

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4928
  br label %cond.end343, !dbg !4928

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4928
  br label %cond.end345, !dbg !4928

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4928
  br label %cond.end347, !dbg !4928

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4928
  br label %cond.end349, !dbg !4928

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4928
  br label %cond.end351, !dbg !4928

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4928
  br label %cond.end353, !dbg !4928

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4928
  br label %cond.end355, !dbg !4928

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4928
  br label %cond.end357, !dbg !4928

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4928
  br label %cond.end359, !dbg !4928

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4928
  br label %cond.end361, !dbg !4928

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4928
  br label %cond.end363, !dbg !4928

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4928
  br label %cond.end365, !dbg !4928

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4928
  br label %cond.end367, !dbg !4928

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4928
  br label %cond.end369, !dbg !4928

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4928
  br label %cond.end371, !dbg !4928

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4928
  br label %cond.end373, !dbg !4928

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4928
  br label %cond.end375, !dbg !4928

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4928
  br label %cond.end377, !dbg !4928

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4928
  br label %cond.end379, !dbg !4928

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4928
  br label %cond.end381, !dbg !4928

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4928
  br label %cond.end383, !dbg !4928

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4928
  br label %cond.end385, !dbg !4928

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4928
  br label %cond.end387, !dbg !4928

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4928
  br label %cond.end389, !dbg !4928

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4928
  br label %cond.end391, !dbg !4928

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4928
  br label %cond.end393, !dbg !4928

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4928
  br label %cond.end395, !dbg !4928

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4928
  br label %cond.end397, !dbg !4928

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4928
  br label %cond.end399, !dbg !4928

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4928
  br label %cond.end401, !dbg !4928

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4928
  br label %cond.end403, !dbg !4928

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4928
  br label %cond.end405, !dbg !4928

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4928
  br label %cond.end407, !dbg !4928

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4928
  br label %cond.end409, !dbg !4928

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4928
  br label %cond.end411, !dbg !4928

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4928
  br label %cond.end413, !dbg !4928

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4928
  br label %cond.end415, !dbg !4928

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4928
  br label %cond.end417, !dbg !4928

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4928
  br label %cond.end419, !dbg !4928

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4928
  br label %cond.end421, !dbg !4928

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4928
  br label %cond.end423, !dbg !4928

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4928
  br label %cond.end425, !dbg !4928

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4928
  br label %cond.end427, !dbg !4928

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4928
  br label %cond.end429, !dbg !4928

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4928
  br label %cond.end431, !dbg !4928

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4928
  br label %cond.end433, !dbg !4928

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4928
  br label %cond.end435, !dbg !4928

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4928
  br label %cond.end437, !dbg !4928

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4928
  br label %cond.end440, !dbg !4928

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4928

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4928
  br label %cond.end444, !dbg !4928

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4928
  %sub443 = sub i64 %72, 1, !dbg !4928
  %call = call i32 @__ilog2_u64(i64 %sub443) #13, !dbg !4928
  br label %cond.end444, !dbg !4928

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4928
  %sub446 = sub i32 %cond445, 12, !dbg !4929
  %add = add i32 %sub446, 1, !dbg !4930
  store i32 %add, i32* %retval, align 4, !dbg !4931
  br label %return, !dbg !4931

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4932
  %dec = add i64 %73, -1, !dbg !4932
  store i64 %dec, i64* %size.addr, align 8, !dbg !4932
  %74 = load i64, i64* %size.addr, align 8, !dbg !4933
  %shr = lshr i64 %74, 12, !dbg !4933
  store i64 %shr, i64* %size.addr, align 8, !dbg !4933
  %75 = load i64, i64* %size.addr, align 8, !dbg !4934
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4911
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4935
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4936
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #8, !dbg !4935, !srcloc !4937
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4935
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4938
  %add.i = add i32 %79, 1, !dbg !4939
  store i32 %add.i, i32* %retval, align 4, !dbg !4940
  br label %return, !dbg !4940

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4941
  ret i32 %80, !dbg !4941
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !4942 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4904, metadata !DIExpression()), !dbg !4946
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4910, metadata !DIExpression()), !dbg !4948
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4949, metadata !DIExpression()), !dbg !4950
  %0 = load i64, i64* %n.addr, align 8, !dbg !4951
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4948
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4952
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4953
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #8, !dbg !4952, !srcloc !4937
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4952
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4954
  %add.i = add i32 %4, 1, !dbg !4955
  %sub = sub i32 %add.i, 1, !dbg !4956
  ret i32 %sub, !dbg !4957
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !4958 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4962, metadata !DIExpression()), !dbg !4963
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4964, metadata !DIExpression()), !dbg !4965
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4966, metadata !DIExpression()), !dbg !4967
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4968, metadata !DIExpression()), !dbg !4969
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4970
  ret i8* %0, !dbg !4971
}

; Function Attrs: noredzone
declare dso_local %struct.resource* @__request_region(%struct.resource*, i64, i64, i8*, i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !4972 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !4974, metadata !DIExpression()), !dbg !4976
  %0 = load i64, i64* %__edi, align 8, !dbg !4976
  store i64 %0, i64* %__edi, align 8, !dbg !4976
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !4977, metadata !DIExpression()), !dbg !4976
  %1 = load i64, i64* %__esi, align 8, !dbg !4976
  store i64 %1, i64* %__esi, align 8, !dbg !4976
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !4978, metadata !DIExpression()), !dbg !4976
  %2 = load i64, i64* %__edx, align 8, !dbg !4976
  store i64 %2, i64* %__edx, align 8, !dbg !4976
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !4979, metadata !DIExpression()), !dbg !4976
  %3 = load i64, i64* %__ecx, align 8, !dbg !4976
  store i64 %3, i64* %__ecx, align 8, !dbg !4976
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !4980, metadata !DIExpression()), !dbg !4976
  %4 = load i64, i64* %__eax, align 8, !dbg !4976
  store i64 %4, i64* %__eax, align 8, !dbg !4976
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !4976
  %6 = call i64 @llvm.read_register.i64(metadata !2565), !dbg !4976
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #9, !dbg !4976, !srcloc !4981
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !4976
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !4976
  store i64 %asmresult, i64* %__eax, align 8, !dbg !4976
  call void @llvm.write_register.i64(metadata !2565, i64 %asmresult1), !dbg !4976
  ret void, !dbg !4982
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @inl(i32 %port) #0 !dbg !4983 {
entry:
  %port.addr = alloca i32, align 4
  %value = alloca i32, align 4
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !4987, metadata !DIExpression()), !dbg !4988
  call void @llvm.dbg.declare(metadata i32* %value, metadata !4989, metadata !DIExpression()), !dbg !4988
  %0 = load i32, i32* %port.addr, align 4, !dbg !4988
  %1 = call i32 asm sideeffect "inl ${1:w}, $0", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #9, !dbg !4988, !srcloc !4990
  store i32 %1, i32* %value, align 4, !dbg !4988
  %2 = load i32, i32* %value, align 4, !dbg !4988
  ret i32 %2, !dbg !4988
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_enable() #0 !dbg !4991 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !4992, metadata !DIExpression()), !dbg !4994
  %0 = load i64, i64* %__edi, align 8, !dbg !4994
  store i64 %0, i64* %__edi, align 8, !dbg !4994
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !4995, metadata !DIExpression()), !dbg !4994
  %1 = load i64, i64* %__esi, align 8, !dbg !4994
  store i64 %1, i64* %__esi, align 8, !dbg !4994
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !4996, metadata !DIExpression()), !dbg !4994
  %2 = load i64, i64* %__edx, align 8, !dbg !4994
  store i64 %2, i64* %__edx, align 8, !dbg !4994
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !4997, metadata !DIExpression()), !dbg !4994
  %3 = load i64, i64* %__ecx, align 8, !dbg !4994
  store i64 %3, i64* %__ecx, align 8, !dbg !4994
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !4998, metadata !DIExpression()), !dbg !4994
  %4 = load i64, i64* %__eax, align 8, !dbg !4994
  store i64 %4, i64* %__eax, align 8, !dbg !4994
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 3, i32 0), align 8, !dbg !4994
  %6 = call i64 @llvm.read_register.i64(metadata !2565), !dbg !4994
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 39, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 3, i32 0), i32 1, i64 %6) #9, !dbg !4994, !srcloc !4999
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !4994
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !4994
  store i64 %asmresult, i64* %__eax, align 8, !dbg !4994
  call void @llvm.write_register.i64(metadata !2565, i64 %asmresult1), !dbg !4994
  ret void, !dbg !5000
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #8

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #9

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @outl(i32 %value, i32 %port) #0 !dbg !5001 {
entry:
  %value.addr = alloca i32, align 4
  %port.addr = alloca i32, align 4
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !5004, metadata !DIExpression()), !dbg !5005
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !5006, metadata !DIExpression()), !dbg !5005
  %0 = load i32, i32* %value.addr, align 4, !dbg !5005
  %1 = load i32, i32* %port.addr, align 4, !dbg !5005
  call void asm sideeffect "outl $0, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 %1) #9, !dbg !5005, !srcloc !5007
  ret void, !dbg !5005
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_read_throttling_status(%struct.acpi_processor* %pr, i64* %value) #0 !dbg !5008 {
entry:
  %pr.addr = alloca %struct.acpi_processor*, align 8
  %value.addr = alloca i64*, align 8
  %bit_width = alloca i32, align 4
  %bit_offset = alloca i32, align 4
  %ptc_value = alloca i32, align 4
  %ptc_mask = alloca i64, align 8
  %throttling = alloca %struct.acpi_processor_throttling*, align 8
  %ret = alloca i32, align 4
  store %struct.acpi_processor* %pr, %struct.acpi_processor** %pr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr.addr, metadata !5011, metadata !DIExpression()), !dbg !5012
  store i64* %value, i64** %value.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %value.addr, metadata !5013, metadata !DIExpression()), !dbg !5014
  call void @llvm.dbg.declare(metadata i32* %bit_width, metadata !5015, metadata !DIExpression()), !dbg !5016
  call void @llvm.dbg.declare(metadata i32* %bit_offset, metadata !5017, metadata !DIExpression()), !dbg !5018
  call void @llvm.dbg.declare(metadata i32* %ptc_value, metadata !5019, metadata !DIExpression()), !dbg !5020
  call void @llvm.dbg.declare(metadata i64* %ptc_mask, metadata !5021, metadata !DIExpression()), !dbg !5022
  call void @llvm.dbg.declare(metadata %struct.acpi_processor_throttling** %throttling, metadata !5023, metadata !DIExpression()), !dbg !5024
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5025, metadata !DIExpression()), !dbg !5026
  store i32 -1, i32* %ret, align 4, !dbg !5026
  %0 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !5027
  %throttling1 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %0, i32 0, i32 10, !dbg !5028
  store %struct.acpi_processor_throttling* %throttling1, %struct.acpi_processor_throttling** %throttling, align 8, !dbg !5029
  %1 = load %struct.acpi_processor_throttling*, %struct.acpi_processor_throttling** %throttling, align 8, !dbg !5030
  %status_register = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %1, i32 0, i32 3, !dbg !5031
  %space_id = getelementptr inbounds %struct.acpi_pct_register, %struct.acpi_pct_register* %status_register, i32 0, i32 2, !dbg !5032
  %2 = load i8, i8* %space_id, align 1, !dbg !5032
  %conv = zext i8 %2 to i32, !dbg !5030
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 127, label %sw.bb11
  ], !dbg !5033

sw.bb:                                            ; preds = %entry
  %3 = load %struct.acpi_processor_throttling*, %struct.acpi_processor_throttling** %throttling, align 8, !dbg !5034
  %status_register2 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %3, i32 0, i32 3, !dbg !5036
  %bit_width3 = getelementptr inbounds %struct.acpi_pct_register, %struct.acpi_pct_register* %status_register2, i32 0, i32 3, !dbg !5037
  %4 = load i8, i8* %bit_width3, align 1, !dbg !5037
  %conv4 = zext i8 %4 to i32, !dbg !5034
  store i32 %conv4, i32* %bit_width, align 4, !dbg !5038
  %5 = load %struct.acpi_processor_throttling*, %struct.acpi_processor_throttling** %throttling, align 8, !dbg !5039
  %status_register5 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %5, i32 0, i32 3, !dbg !5040
  %bit_offset6 = getelementptr inbounds %struct.acpi_pct_register, %struct.acpi_pct_register* %status_register5, i32 0, i32 4, !dbg !5041
  %6 = load i8, i8* %bit_offset6, align 1, !dbg !5041
  %conv7 = zext i8 %6 to i32, !dbg !5039
  store i32 %conv7, i32* %bit_offset, align 4, !dbg !5042
  %7 = load %struct.acpi_processor_throttling*, %struct.acpi_processor_throttling** %throttling, align 8, !dbg !5043
  %status_register8 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %7, i32 0, i32 3, !dbg !5044
  %address = getelementptr inbounds %struct.acpi_pct_register, %struct.acpi_pct_register* %status_register8, i32 0, i32 6, !dbg !5045
  %8 = load i64, i64* %address, align 1, !dbg !5045
  %9 = load i32, i32* %bit_width, align 4, !dbg !5046
  %10 = load i32, i32* %bit_offset, align 4, !dbg !5047
  %add = add i32 %9, %10, !dbg !5048
  %call = call i32 @acpi_os_read_port(i64 %8, i32* %ptc_value, i32 %add) #10, !dbg !5049
  %11 = load i32, i32* %bit_width, align 4, !dbg !5050
  %shl = shl i32 1, %11, !dbg !5051
  %sub = sub i32 %shl, 1, !dbg !5052
  %conv9 = sext i32 %sub to i64, !dbg !5053
  store i64 %conv9, i64* %ptc_mask, align 8, !dbg !5054
  %12 = load i32, i32* %ptc_value, align 4, !dbg !5055
  %13 = load i32, i32* %bit_offset, align 4, !dbg !5056
  %shr = lshr i32 %12, %13, !dbg !5057
  %conv10 = zext i32 %shr to i64, !dbg !5058
  %14 = load i64, i64* %ptc_mask, align 8, !dbg !5059
  %and = and i64 %conv10, %14, !dbg !5060
  %15 = load i64*, i64** %value.addr, align 8, !dbg !5061
  store i64 %and, i64* %15, align 8, !dbg !5062
  store i32 0, i32* %ret, align 4, !dbg !5063
  br label %sw.epilog, !dbg !5064

sw.bb11:                                          ; preds = %entry
  %16 = load i64*, i64** %value.addr, align 8, !dbg !5065
  %call12 = call i32 @acpi_throttling_rdmsr(i64* %16) #10, !dbg !5066
  store i32 %call12, i32* %ret, align 4, !dbg !5067
  br label %sw.epilog, !dbg !5068

sw.default:                                       ; preds = %entry
  %17 = load %struct.acpi_processor_throttling*, %struct.acpi_processor_throttling** %throttling, align 8, !dbg !5069
  %status_register13 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %17, i32 0, i32 3, !dbg !5070
  %space_id14 = getelementptr inbounds %struct.acpi_pct_register, %struct.acpi_pct_register* %status_register13, i32 0, i32 2, !dbg !5071
  %18 = load i8, i8* %space_id14, align 1, !dbg !5071
  %conv15 = zext i8 %18 to i32, !dbg !5072
  %call16 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0), i32 %conv15) #11, !dbg !5073
  br label %sw.epilog, !dbg !5074

sw.epilog:                                        ; preds = %sw.default, %sw.bb11, %sw.bb
  %19 = load i32, i32* %ret, align 4, !dbg !5075
  ret i32 %19, !dbg !5076
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_get_throttling_state(%struct.acpi_processor* %pr, i64 %value) #0 !dbg !5077 {
entry:
  %retval = alloca i32, align 4
  %pr.addr = alloca %struct.acpi_processor*, align 8
  %value.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %tx = alloca %struct.acpi_processor_tx_tss*, align 8
  store %struct.acpi_processor* %pr, %struct.acpi_processor** %pr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr.addr, metadata !5080, metadata !DIExpression()), !dbg !5081
  store i64 %value, i64* %value.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %value.addr, metadata !5082, metadata !DIExpression()), !dbg !5083
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5084, metadata !DIExpression()), !dbg !5085
  store i32 0, i32* %i, align 4, !dbg !5086
  br label %for.cond, !dbg !5088

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !5089
  %1 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !5091
  %throttling = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %1, i32 0, i32 10, !dbg !5092
  %state_count = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling, i32 0, i32 4, !dbg !5093
  %2 = load i32, i32* %state_count, align 8, !dbg !5093
  %cmp = icmp ult i32 %0, %2, !dbg !5094
  br i1 %cmp, label %for.body, label %for.end, !dbg !5095

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.acpi_processor_tx_tss** %tx, metadata !5096, metadata !DIExpression()), !dbg !5098
  %3 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !5099
  %throttling1 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %3, i32 0, i32 10, !dbg !5100
  %states_tss = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling1, i32 0, i32 5, !dbg !5101
  %4 = load %struct.acpi_processor_tx_tss*, %struct.acpi_processor_tx_tss** %states_tss, align 8, !dbg !5101
  %5 = load i32, i32* %i, align 4, !dbg !5102
  %idxprom = sext i32 %5 to i64, !dbg !5099
  %arrayidx = getelementptr %struct.acpi_processor_tx_tss, %struct.acpi_processor_tx_tss* %4, i64 %idxprom, !dbg !5099
  store %struct.acpi_processor_tx_tss* %arrayidx, %struct.acpi_processor_tx_tss** %tx, align 8, !dbg !5098
  %6 = load %struct.acpi_processor_tx_tss*, %struct.acpi_processor_tx_tss** %tx, align 8, !dbg !5103
  %control = getelementptr inbounds %struct.acpi_processor_tx_tss, %struct.acpi_processor_tx_tss* %6, i32 0, i32 3, !dbg !5105
  %7 = load i64, i64* %control, align 8, !dbg !5105
  %8 = load i64, i64* %value.addr, align 8, !dbg !5106
  %cmp2 = icmp eq i64 %7, %8, !dbg !5107
  br i1 %cmp2, label %if.then, label %if.end, !dbg !5108

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !5109
  store i32 %9, i32* %retval, align 4, !dbg !5110
  br label %return, !dbg !5110

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !5111

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4, !dbg !5112
  %inc = add i32 %10, 1, !dbg !5112
  store i32 %inc, i32* %i, align 4, !dbg !5112
  br label %for.cond, !dbg !5113, !llvm.loop !5114

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval, align 4, !dbg !5116
  br label %return, !dbg !5116

return:                                           ; preds = %for.end, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !5117
  ret i32 %11, !dbg !5117
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_read_port(i64, i32*, i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_throttling_rdmsr(i64* %value) #0 !dbg !5118 {
entry:
  %nr.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %nr.addr.i, metadata !5121, metadata !DIExpression()), !dbg !5126
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5129, metadata !DIExpression()), !dbg !5130
  %a.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %a.i, metadata !5131, metadata !DIExpression()), !dbg !5132
  %pfo_val__.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i, metadata !5133, metadata !DIExpression()), !dbg !5135
  %tmp.i = alloca i64, align 8
  %value.addr = alloca i64*, align 8
  %msr_high = alloca i64, align 8
  %msr_low = alloca i64, align 8
  %msr = alloca i64, align 8
  %ret = alloca i32, align 4
  %pscr_ret__ = alloca i8, align 1
  %__vpp_verify = alloca i8*, align 8
  %pfo_val__ = alloca i8, align 1
  %tmp = alloca i8, align 1
  %tmp2 = alloca i8, align 1
  %_err = alloca i32, align 4
  %_l = alloca i64, align 8
  %tmp14 = alloca i32, align 4
  store i64* %value, i64** %value.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %value.addr, metadata !5136, metadata !DIExpression()), !dbg !5137
  call void @llvm.dbg.declare(metadata i64* %msr_high, metadata !5138, metadata !DIExpression()), !dbg !5139
  call void @llvm.dbg.declare(metadata i64* %msr_low, metadata !5140, metadata !DIExpression()), !dbg !5141
  call void @llvm.dbg.declare(metadata i64* %msr, metadata !5142, metadata !DIExpression()), !dbg !5143
  store i64 0, i64* %msr, align 8, !dbg !5143
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5144, metadata !DIExpression()), !dbg !5145
  store i32 -1, i32* %ret, align 4, !dbg !5145
  call void @llvm.dbg.declare(metadata i8* %pscr_ret__, metadata !5146, metadata !DIExpression()), !dbg !5148
  br label %do.body, !dbg !5148

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !5149, metadata !DIExpression()), !dbg !5151
  store i8* null, i8** %__vpp_verify, align 8, !dbg !5151
  %0 = load i8*, i8** %__vpp_verify, align 8, !dbg !5151
  br label %do.end, !dbg !5151

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i8* %pfo_val__, metadata !5152, metadata !DIExpression()), !dbg !5154
  %1 = call i8 asm sideeffect "movb $1, $0", "=q,*m,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 1)) #9, !dbg !5154, !srcloc !5155
  store i8 %1, i8* %pfo_val__, align 1, !dbg !5154
  %2 = load i8, i8* %pfo_val__, align 1, !dbg !5154
  %conv = zext i8 %2 to i64, !dbg !5154
  %conv1 = trunc i64 %conv to i8, !dbg !5154
  store i8 %conv1, i8* %tmp, align 1, !dbg !5154
  %3 = load i8, i8* %tmp, align 1, !dbg !5154
  store i8 %3, i8* %pscr_ret__, align 1, !dbg !5148
  %4 = load i8, i8* %pscr_ret__, align 1, !dbg !5148
  store i8 %4, i8* %tmp2, align 1, !dbg !5148
  %5 = load i8, i8* %tmp2, align 1, !dbg !5148
  %conv3 = zext i8 %5 to i32, !dbg !5156
  %cmp = icmp ne i32 %conv3, 0, !dbg !5157
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5158

lor.lhs.false:                                    ; preds = %do.end
  br i1 false, label %cond.true, label %cond.false, !dbg !5159

cond.true:                                        ; preds = %lor.lhs.false
  br i1 true, label %if.else, label %if.then, !dbg !5160

cond.false:                                       ; preds = %lor.lhs.false
  br i1 true, label %cond.true5, label %cond.false7, !dbg !5159

cond.true5:                                       ; preds = %cond.false
  store i32 22, i32* %nr.addr.i, align 4
  store i64* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 12, i32 0), i64** %addr.addr.i, align 8
  %6 = load i64*, i64** %addr.addr.i, align 8, !dbg !5161
  %7 = load i32, i32* %nr.addr.i, align 4, !dbg !5162
  %div.i = udiv i32 %7, 64, !dbg !5163
  %idx.ext.i = zext i32 %div.i to i64, !dbg !5164
  %add.ptr.i = getelementptr i64, i64* %6, i64 %idx.ext.i, !dbg !5164
  store i64* %add.ptr.i, i64** %a.i, align 8, !dbg !5132
  %8 = load i32, i32* %nr.addr.i, align 4, !dbg !5165
  %rem.i = urem i32 %8, 64, !dbg !5166
  %sh_prom.i = zext i32 %rem.i to i64, !dbg !5167
  %shl.i = shl i64 1, %sh_prom.i, !dbg !5167
  %9 = load i64*, i64** %a.i, align 8, !dbg !5135
  %10 = call i64 asm "movq $1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(i64* %9) #8, !dbg !5135, !srcloc !5168
  store i64 %10, i64* %pfo_val__.i, align 8, !dbg !5135
  %11 = load i64, i64* %pfo_val__.i, align 8, !dbg !5135
  store i64 %11, i64* %tmp.i, align 8, !dbg !5135
  %12 = load i64, i64* %tmp.i, align 8, !dbg !5135
  %and.i = and i64 %shl.i, %12, !dbg !5169
  %cmp.i = icmp ne i64 %and.i, 0, !dbg !5170
  br i1 %cmp.i, label %if.else, label %if.then, !dbg !5160

cond.false7:                                      ; preds = %cond.false
  %call8 = call zeroext i1 @x86_this_cpu_variable_test_bit(i32 22, i64* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 12, i32 0)) #10, !dbg !5160
  br i1 %call8, label %if.else, label %if.then, !dbg !5159

if.then:                                          ; preds = %cond.false7, %cond.true5, %cond.true, %do.end
  %call10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.21, i64 0, i64 0)) #11, !dbg !5171
  br label %if.end, !dbg !5173

if.else:                                          ; preds = %cond.false7, %cond.true5, %cond.true
  store i64 0, i64* %msr_low, align 8, !dbg !5174
  store i64 0, i64* %msr_high, align 8, !dbg !5176
  call void @llvm.dbg.declare(metadata i32* %_err, metadata !5177, metadata !DIExpression()), !dbg !5179
  call void @llvm.dbg.declare(metadata i64* %_l, metadata !5180, metadata !DIExpression()), !dbg !5179
  %call11 = call i64 @paravirt_read_msr_safe(i32 410, i32* %_err) #10, !dbg !5179
  store i64 %call11, i64* %_l, align 8, !dbg !5179
  %13 = load i64, i64* %_l, align 8, !dbg !5179
  %conv12 = trunc i64 %13 to i32, !dbg !5179
  %14 = bitcast i64* %msr_low to i32*, !dbg !5179
  store i32 %conv12, i32* %14, align 8, !dbg !5179
  %15 = load i64, i64* %_l, align 8, !dbg !5179
  %shr = lshr i64 %15, 32, !dbg !5179
  %conv13 = trunc i64 %shr to i32, !dbg !5179
  %16 = bitcast i64* %msr_high to i32*, !dbg !5179
  store i32 %conv13, i32* %16, align 8, !dbg !5179
  %17 = load i32, i32* %_err, align 4, !dbg !5179
  store i32 %17, i32* %tmp14, align 4, !dbg !5179
  %18 = load i32, i32* %tmp14, align 4, !dbg !5179
  %19 = load i64, i64* %msr_high, align 8, !dbg !5181
  %shl = shl i64 %19, 32, !dbg !5182
  %20 = load i64, i64* %msr_low, align 8, !dbg !5183
  %or = or i64 %shl, %20, !dbg !5184
  store i64 %or, i64* %msr, align 8, !dbg !5185
  %21 = load i64, i64* %msr, align 8, !dbg !5186
  %22 = load i64*, i64** %value.addr, align 8, !dbg !5187
  store i64 %21, i64* %22, align 8, !dbg !5188
  store i32 0, i32* %ret, align 4, !dbg !5189
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %23 = load i32, i32* %ret, align 4, !dbg !5190
  ret i32 %23, !dbg !5191
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @x86_this_cpu_variable_test_bit(i32 %nr, i64* %addr) #0 !dbg !5192 {
entry:
  %nr.addr = alloca i32, align 4
  %addr.addr = alloca i64*, align 8
  %oldbit = alloca i8, align 1
  store i32 %nr, i32* %nr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nr.addr, metadata !5195, metadata !DIExpression()), !dbg !5196
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5197, metadata !DIExpression()), !dbg !5198
  call void @llvm.dbg.declare(metadata i8* %oldbit, metadata !5199, metadata !DIExpression()), !dbg !5200
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5201
  %1 = load i32, i32* %nr.addr, align 4, !dbg !5202
  %2 = call i8 asm sideeffect "btl $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{dirflag},~{fpsr},~{flags}"(i64* %0, i32 %1) #9, !dbg !5203, !srcloc !5204
  store i8 %2, i8* %oldbit, align 1, !dbg !5203
  %3 = load i8, i8* %oldbit, align 1, !dbg !5205
  %tobool = trunc i8 %3 to i1, !dbg !5205
  ret i1 %tobool, !dbg !5206
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @paravirt_read_msr_safe(i32 %msr, i32* %err) #0 !dbg !5207 {
entry:
  %msr.addr = alloca i32, align 4
  %err.addr = alloca i32*, align 8
  %__ret = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  %__mask = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp6 = alloca i64, align 8
  store i32 %msr, i32* %msr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %msr.addr, metadata !5210, metadata !DIExpression()), !dbg !5211
  store i32* %err, i32** %err.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %err.addr, metadata !5212, metadata !DIExpression()), !dbg !5213
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !5214, metadata !DIExpression()), !dbg !5216
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5217, metadata !DIExpression()), !dbg !5216
  %0 = load i64, i64* %__edi, align 8, !dbg !5216
  store i64 %0, i64* %__edi, align 8, !dbg !5216
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5218, metadata !DIExpression()), !dbg !5216
  %1 = load i64, i64* %__esi, align 8, !dbg !5216
  store i64 %1, i64* %__esi, align 8, !dbg !5216
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5219, metadata !DIExpression()), !dbg !5216
  %2 = load i64, i64* %__edx, align 8, !dbg !5216
  store i64 %2, i64* %__edx, align 8, !dbg !5216
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5220, metadata !DIExpression()), !dbg !5216
  %3 = load i64, i64* %__ecx, align 8, !dbg !5216
  store i64 %3, i64* %__ecx, align 8, !dbg !5216
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5221, metadata !DIExpression()), !dbg !5216
  %4 = load i64, i64* %__eax, align 8, !dbg !5216
  store i64 %4, i64* %__eax, align 8, !dbg !5216
  %5 = load i64 (i32, i32*)*, i64 (i32, i32*)** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 25), align 8, !dbg !5216
  %6 = call i64 @llvm.read_register.i64(metadata !2565), !dbg !5222
  %7 = load i32, i32* %msr.addr, align 4, !dbg !5222
  %conv = zext i32 %7 to i64, !dbg !5222
  %8 = load i32*, i32** %err.addr, align 8, !dbg !5222
  %9 = ptrtoint i32* %8 to i64, !dbg !5222
  %10 = call { i64, i64, i64, i64, i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${7:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${6:c}\0A  .byte 772b-771b\0A  .short ${8:c}\0A.popsection\0A", "={di},={si},={dx},={cx},={ax},={rsp},i,i,i,{di},{si},5,~{memory},~{cc},~{r8},~{r9},~{r10},~{r11},~{dirflag},~{fpsr},~{flags}"(i64 28, i64 (i32, i32*)** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 25), i32 511, i64 %conv, i64 %9, i64 %6) #9, !dbg !5222, !srcloc !5225
  %asmresult = extractvalue { i64, i64, i64, i64, i64, i64 } %10, 0, !dbg !5222
  %asmresult1 = extractvalue { i64, i64, i64, i64, i64, i64 } %10, 1, !dbg !5222
  %asmresult2 = extractvalue { i64, i64, i64, i64, i64, i64 } %10, 2, !dbg !5222
  %asmresult3 = extractvalue { i64, i64, i64, i64, i64, i64 } %10, 3, !dbg !5222
  %asmresult4 = extractvalue { i64, i64, i64, i64, i64, i64 } %10, 4, !dbg !5222
  %asmresult5 = extractvalue { i64, i64, i64, i64, i64, i64 } %10, 5, !dbg !5222
  store i64 %asmresult, i64* %__edi, align 8, !dbg !5222
  store i64 %asmresult1, i64* %__esi, align 8, !dbg !5222
  store i64 %asmresult2, i64* %__edx, align 8, !dbg !5222
  store i64 %asmresult3, i64* %__ecx, align 8, !dbg !5222
  store i64 %asmresult4, i64* %__eax, align 8, !dbg !5222
  call void @llvm.write_register.i64(metadata !2565, i64 %asmresult5), !dbg !5222
  %11 = load i64, i64* %__eax, align 8, !dbg !5222
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !5226, metadata !DIExpression()), !dbg !5228
  store i64 -1, i64* %__mask, align 8, !dbg !5228
  %12 = load i64, i64* %__mask, align 8, !dbg !5228
  store i64 %12, i64* %tmp, align 8, !dbg !5228
  %13 = load i64, i64* %tmp, align 8, !dbg !5228
  %and = and i64 %11, %13, !dbg !5222
  store i64 %and, i64* %__ret, align 8, !dbg !5222
  %14 = load i64, i64* %__ret, align 8, !dbg !5216
  store i64 %14, i64* %tmp6, align 8, !dbg !5229
  %15 = load i64, i64* %tmp6, align 8, !dbg !5216
  ret i64 %15, !dbg !5230
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_get_throttling_value(%struct.acpi_processor* %pr, i32 %state, i64* %value) #0 !dbg !5231 {
entry:
  %pr.addr = alloca %struct.acpi_processor*, align 8
  %state.addr = alloca i32, align 4
  %value.addr = alloca i64*, align 8
  %ret = alloca i32, align 4
  %tx = alloca %struct.acpi_processor_tx_tss*, align 8
  store %struct.acpi_processor* %pr, %struct.acpi_processor** %pr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr.addr, metadata !5234, metadata !DIExpression()), !dbg !5235
  store i32 %state, i32* %state.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %state.addr, metadata !5236, metadata !DIExpression()), !dbg !5237
  store i64* %value, i64** %value.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %value.addr, metadata !5238, metadata !DIExpression()), !dbg !5239
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5240, metadata !DIExpression()), !dbg !5241
  store i32 -1, i32* %ret, align 4, !dbg !5241
  %0 = load i32, i32* %state.addr, align 4, !dbg !5242
  %cmp = icmp sge i32 %0, 0, !dbg !5244
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5245

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %state.addr, align 4, !dbg !5246
  %2 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !5247
  %throttling = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %2, i32 0, i32 10, !dbg !5248
  %state_count = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling, i32 0, i32 4, !dbg !5249
  %3 = load i32, i32* %state_count, align 8, !dbg !5249
  %cmp1 = icmp ule i32 %1, %3, !dbg !5250
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5251

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.dbg.declare(metadata %struct.acpi_processor_tx_tss** %tx, metadata !5252, metadata !DIExpression()), !dbg !5254
  %4 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !5255
  %throttling2 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %4, i32 0, i32 10, !dbg !5256
  %states_tss = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling2, i32 0, i32 5, !dbg !5257
  %5 = load %struct.acpi_processor_tx_tss*, %struct.acpi_processor_tx_tss** %states_tss, align 8, !dbg !5257
  %6 = load i32, i32* %state.addr, align 4, !dbg !5258
  %idxprom = sext i32 %6 to i64, !dbg !5255
  %arrayidx = getelementptr %struct.acpi_processor_tx_tss, %struct.acpi_processor_tx_tss* %5, i64 %idxprom, !dbg !5255
  store %struct.acpi_processor_tx_tss* %arrayidx, %struct.acpi_processor_tx_tss** %tx, align 8, !dbg !5254
  %7 = load %struct.acpi_processor_tx_tss*, %struct.acpi_processor_tx_tss** %tx, align 8, !dbg !5259
  %control = getelementptr inbounds %struct.acpi_processor_tx_tss, %struct.acpi_processor_tx_tss* %7, i32 0, i32 3, !dbg !5260
  %8 = load i64, i64* %control, align 8, !dbg !5260
  %9 = load i64*, i64** %value.addr, align 8, !dbg !5261
  store i64 %8, i64* %9, align 8, !dbg !5262
  store i32 0, i32* %ret, align 4, !dbg !5263
  br label %if.end, !dbg !5264

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %10 = load i32, i32* %ret, align 4, !dbg !5265
  ret i32 %10, !dbg !5266
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_write_throttling_state(%struct.acpi_processor* %pr, i64 %value) #0 !dbg !5267 {
entry:
  %pr.addr = alloca %struct.acpi_processor*, align 8
  %value.addr = alloca i64, align 8
  %bit_width = alloca i32, align 4
  %bit_offset = alloca i32, align 4
  %ptc_value = alloca i64, align 8
  %ptc_mask = alloca i64, align 8
  %throttling = alloca %struct.acpi_processor_throttling*, align 8
  %ret = alloca i32, align 4
  store %struct.acpi_processor* %pr, %struct.acpi_processor** %pr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr.addr, metadata !5268, metadata !DIExpression()), !dbg !5269
  store i64 %value, i64* %value.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %value.addr, metadata !5270, metadata !DIExpression()), !dbg !5271
  call void @llvm.dbg.declare(metadata i32* %bit_width, metadata !5272, metadata !DIExpression()), !dbg !5273
  call void @llvm.dbg.declare(metadata i32* %bit_offset, metadata !5274, metadata !DIExpression()), !dbg !5275
  call void @llvm.dbg.declare(metadata i64* %ptc_value, metadata !5276, metadata !DIExpression()), !dbg !5277
  call void @llvm.dbg.declare(metadata i64* %ptc_mask, metadata !5278, metadata !DIExpression()), !dbg !5279
  call void @llvm.dbg.declare(metadata %struct.acpi_processor_throttling** %throttling, metadata !5280, metadata !DIExpression()), !dbg !5281
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5282, metadata !DIExpression()), !dbg !5283
  store i32 -1, i32* %ret, align 4, !dbg !5283
  %0 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !5284
  %throttling1 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %0, i32 0, i32 10, !dbg !5285
  store %struct.acpi_processor_throttling* %throttling1, %struct.acpi_processor_throttling** %throttling, align 8, !dbg !5286
  %1 = load %struct.acpi_processor_throttling*, %struct.acpi_processor_throttling** %throttling, align 8, !dbg !5287
  %control_register = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %1, i32 0, i32 2, !dbg !5288
  %space_id = getelementptr inbounds %struct.acpi_pct_register, %struct.acpi_pct_register* %control_register, i32 0, i32 2, !dbg !5289
  %2 = load i8, i8* %space_id, align 1, !dbg !5289
  %conv = zext i8 %2 to i32, !dbg !5287
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 127, label %sw.bb12
  ], !dbg !5290

sw.bb:                                            ; preds = %entry
  %3 = load %struct.acpi_processor_throttling*, %struct.acpi_processor_throttling** %throttling, align 8, !dbg !5291
  %control_register2 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %3, i32 0, i32 2, !dbg !5293
  %bit_width3 = getelementptr inbounds %struct.acpi_pct_register, %struct.acpi_pct_register* %control_register2, i32 0, i32 3, !dbg !5294
  %4 = load i8, i8* %bit_width3, align 4, !dbg !5294
  %conv4 = zext i8 %4 to i32, !dbg !5291
  store i32 %conv4, i32* %bit_width, align 4, !dbg !5295
  %5 = load %struct.acpi_processor_throttling*, %struct.acpi_processor_throttling** %throttling, align 8, !dbg !5296
  %control_register5 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %5, i32 0, i32 2, !dbg !5297
  %bit_offset6 = getelementptr inbounds %struct.acpi_pct_register, %struct.acpi_pct_register* %control_register5, i32 0, i32 4, !dbg !5298
  %6 = load i8, i8* %bit_offset6, align 1, !dbg !5298
  %conv7 = zext i8 %6 to i32, !dbg !5296
  store i32 %conv7, i32* %bit_offset, align 4, !dbg !5299
  %7 = load i32, i32* %bit_width, align 4, !dbg !5300
  %shl = shl i32 1, %7, !dbg !5301
  %sub = sub i32 %shl, 1, !dbg !5302
  %conv8 = sext i32 %sub to i64, !dbg !5303
  store i64 %conv8, i64* %ptc_mask, align 8, !dbg !5304
  %8 = load i64, i64* %value.addr, align 8, !dbg !5305
  %9 = load i64, i64* %ptc_mask, align 8, !dbg !5306
  %and = and i64 %8, %9, !dbg !5307
  store i64 %and, i64* %ptc_value, align 8, !dbg !5308
  %10 = load %struct.acpi_processor_throttling*, %struct.acpi_processor_throttling** %throttling, align 8, !dbg !5309
  %control_register9 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %10, i32 0, i32 2, !dbg !5310
  %address = getelementptr inbounds %struct.acpi_pct_register, %struct.acpi_pct_register* %control_register9, i32 0, i32 6, !dbg !5311
  %11 = load i64, i64* %address, align 1, !dbg !5311
  %12 = load i64, i64* %ptc_value, align 8, !dbg !5312
  %13 = load i32, i32* %bit_offset, align 4, !dbg !5313
  %sh_prom = zext i32 %13 to i64, !dbg !5314
  %shl10 = shl i64 %12, %sh_prom, !dbg !5314
  %conv11 = trunc i64 %shl10 to i32, !dbg !5315
  %14 = load i32, i32* %bit_width, align 4, !dbg !5316
  %15 = load i32, i32* %bit_offset, align 4, !dbg !5317
  %add = add i32 %14, %15, !dbg !5318
  %call = call i32 @acpi_os_write_port(i64 %11, i32 %conv11, i32 %add) #10, !dbg !5319
  store i32 0, i32* %ret, align 4, !dbg !5320
  br label %sw.epilog, !dbg !5321

sw.bb12:                                          ; preds = %entry
  %16 = load i64, i64* %value.addr, align 8, !dbg !5322
  %call13 = call i32 @acpi_throttling_wrmsr(i64 %16) #10, !dbg !5323
  store i32 %call13, i32* %ret, align 4, !dbg !5324
  br label %sw.epilog, !dbg !5325

sw.default:                                       ; preds = %entry
  %17 = load %struct.acpi_processor_throttling*, %struct.acpi_processor_throttling** %throttling, align 8, !dbg !5326
  %control_register14 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %17, i32 0, i32 2, !dbg !5327
  %space_id15 = getelementptr inbounds %struct.acpi_pct_register, %struct.acpi_pct_register* %control_register14, i32 0, i32 2, !dbg !5328
  %18 = load i8, i8* %space_id15, align 1, !dbg !5328
  %conv16 = zext i8 %18 to i32, !dbg !5329
  %call17 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0), i32 %conv16) #11, !dbg !5330
  br label %sw.epilog, !dbg !5331

sw.epilog:                                        ; preds = %sw.default, %sw.bb12, %sw.bb
  %19 = load i32, i32* %ret, align 4, !dbg !5332
  ret i32 %19, !dbg !5333
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_write_port(i64, i32, i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_throttling_wrmsr(i64 %value) #0 !dbg !5334 {
entry:
  %nr.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %nr.addr.i, metadata !5121, metadata !DIExpression()), !dbg !5335
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5129, metadata !DIExpression()), !dbg !5338
  %a.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %a.i, metadata !5131, metadata !DIExpression()), !dbg !5339
  %pfo_val__.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i, metadata !5133, metadata !DIExpression()), !dbg !5340
  %tmp.i = alloca i64, align 8
  %value.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %msr = alloca i64, align 8
  %pscr_ret__ = alloca i8, align 1
  %__vpp_verify = alloca i8*, align 8
  %pfo_val__ = alloca i8, align 1
  %tmp = alloca i8, align 1
  %tmp2 = alloca i8, align 1
  store i64 %value, i64* %value.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %value.addr, metadata !5341, metadata !DIExpression()), !dbg !5342
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5343, metadata !DIExpression()), !dbg !5344
  store i32 -1, i32* %ret, align 4, !dbg !5344
  call void @llvm.dbg.declare(metadata i64* %msr, metadata !5345, metadata !DIExpression()), !dbg !5346
  call void @llvm.dbg.declare(metadata i8* %pscr_ret__, metadata !5347, metadata !DIExpression()), !dbg !5349
  br label %do.body, !dbg !5349

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !5350, metadata !DIExpression()), !dbg !5352
  store i8* null, i8** %__vpp_verify, align 8, !dbg !5352
  %0 = load i8*, i8** %__vpp_verify, align 8, !dbg !5352
  br label %do.end, !dbg !5352

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i8* %pfo_val__, metadata !5353, metadata !DIExpression()), !dbg !5355
  %1 = call i8 asm sideeffect "movb $1, $0", "=q,*m,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 1)) #9, !dbg !5355, !srcloc !5356
  store i8 %1, i8* %pfo_val__, align 1, !dbg !5355
  %2 = load i8, i8* %pfo_val__, align 1, !dbg !5355
  %conv = zext i8 %2 to i64, !dbg !5355
  %conv1 = trunc i64 %conv to i8, !dbg !5355
  store i8 %conv1, i8* %tmp, align 1, !dbg !5355
  %3 = load i8, i8* %tmp, align 1, !dbg !5355
  store i8 %3, i8* %pscr_ret__, align 1, !dbg !5349
  %4 = load i8, i8* %pscr_ret__, align 1, !dbg !5349
  store i8 %4, i8* %tmp2, align 1, !dbg !5349
  %5 = load i8, i8* %tmp2, align 1, !dbg !5349
  %conv3 = zext i8 %5 to i32, !dbg !5357
  %cmp = icmp ne i32 %conv3, 0, !dbg !5358
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5359

lor.lhs.false:                                    ; preds = %do.end
  br i1 false, label %cond.true, label %cond.false, !dbg !5360

cond.true:                                        ; preds = %lor.lhs.false
  br i1 true, label %if.else, label %if.then, !dbg !5361

cond.false:                                       ; preds = %lor.lhs.false
  br i1 true, label %cond.true5, label %cond.false7, !dbg !5360

cond.true5:                                       ; preds = %cond.false
  store i32 22, i32* %nr.addr.i, align 4
  store i64* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 12, i32 0), i64** %addr.addr.i, align 8
  %6 = load i64*, i64** %addr.addr.i, align 8, !dbg !5362
  %7 = load i32, i32* %nr.addr.i, align 4, !dbg !5363
  %div.i = udiv i32 %7, 64, !dbg !5364
  %idx.ext.i = zext i32 %div.i to i64, !dbg !5365
  %add.ptr.i = getelementptr i64, i64* %6, i64 %idx.ext.i, !dbg !5365
  store i64* %add.ptr.i, i64** %a.i, align 8, !dbg !5339
  %8 = load i32, i32* %nr.addr.i, align 4, !dbg !5366
  %rem.i = urem i32 %8, 64, !dbg !5367
  %sh_prom.i = zext i32 %rem.i to i64, !dbg !5368
  %shl.i = shl i64 1, %sh_prom.i, !dbg !5368
  %9 = load i64*, i64** %a.i, align 8, !dbg !5340
  %10 = call i64 asm "movq $1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(i64* %9) #8, !dbg !5340, !srcloc !5168
  store i64 %10, i64* %pfo_val__.i, align 8, !dbg !5340
  %11 = load i64, i64* %pfo_val__.i, align 8, !dbg !5340
  store i64 %11, i64* %tmp.i, align 8, !dbg !5340
  %12 = load i64, i64* %tmp.i, align 8, !dbg !5340
  %and.i = and i64 %shl.i, %12, !dbg !5369
  %cmp.i = icmp ne i64 %and.i, 0, !dbg !5370
  br i1 %cmp.i, label %if.else, label %if.then, !dbg !5361

cond.false7:                                      ; preds = %cond.false
  %call8 = call zeroext i1 @x86_this_cpu_variable_test_bit(i32 22, i64* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 12, i32 0)) #10, !dbg !5361
  br i1 %call8, label %if.else, label %if.then, !dbg !5360

if.then:                                          ; preds = %cond.false7, %cond.true5, %cond.true, %do.end
  %call10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.21, i64 0, i64 0)) #11, !dbg !5371
  br label %if.end, !dbg !5373

if.else:                                          ; preds = %cond.false7, %cond.true5, %cond.true
  %13 = load i64, i64* %value.addr, align 8, !dbg !5374
  store i64 %13, i64* %msr, align 8, !dbg !5376
  %14 = load i64, i64* %msr, align 8, !dbg !5377
  %and = and i64 %14, 4294967295, !dbg !5377
  %conv11 = trunc i64 %and to i32, !dbg !5377
  %15 = load i64, i64* %msr, align 8, !dbg !5377
  %shr = lshr i64 %15, 32, !dbg !5377
  %conv12 = trunc i64 %shr to i32, !dbg !5377
  %call13 = call i32 @paravirt_write_msr_safe(i32 410, i32 %conv11, i32 %conv12) #10, !dbg !5377
  store i32 0, i32* %ret, align 4, !dbg !5378
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load i32, i32* %ret, align 4, !dbg !5379
  ret i32 %16, !dbg !5380
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @paravirt_write_msr_safe(i32 %msr, i32 %low, i32 %high) #0 !dbg !5381 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  %__ret = alloca i32, align 4
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  %__mask = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store i32 %msr, i32* %msr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %msr.addr, metadata !5384, metadata !DIExpression()), !dbg !5385
  store i32 %low, i32* %low.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %low.addr, metadata !5386, metadata !DIExpression()), !dbg !5387
  store i32 %high, i32* %high.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %high.addr, metadata !5388, metadata !DIExpression()), !dbg !5389
  call void @llvm.dbg.declare(metadata i32* %__ret, metadata !5390, metadata !DIExpression()), !dbg !5392
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5393, metadata !DIExpression()), !dbg !5392
  %0 = load i64, i64* %__edi, align 8, !dbg !5392
  store i64 %0, i64* %__edi, align 8, !dbg !5392
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5394, metadata !DIExpression()), !dbg !5392
  %1 = load i64, i64* %__esi, align 8, !dbg !5392
  store i64 %1, i64* %__esi, align 8, !dbg !5392
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5395, metadata !DIExpression()), !dbg !5392
  %2 = load i64, i64* %__edx, align 8, !dbg !5392
  store i64 %2, i64* %__edx, align 8, !dbg !5392
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5396, metadata !DIExpression()), !dbg !5392
  %3 = load i64, i64* %__ecx, align 8, !dbg !5392
  store i64 %3, i64* %__ecx, align 8, !dbg !5392
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5397, metadata !DIExpression()), !dbg !5392
  %4 = load i64, i64* %__eax, align 8, !dbg !5392
  store i64 %4, i64* %__eax, align 8, !dbg !5392
  %5 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 26), align 8, !dbg !5392
  %6 = call i64 @llvm.read_register.i64(metadata !2565), !dbg !5398
  %7 = load i32, i32* %msr.addr, align 4, !dbg !5398
  %conv = zext i32 %7 to i64, !dbg !5398
  %8 = load i32, i32* %low.addr, align 4, !dbg !5398
  %conv1 = zext i32 %8 to i64, !dbg !5398
  %9 = load i32, i32* %high.addr, align 4, !dbg !5398
  %conv2 = zext i32 %9 to i64, !dbg !5398
  %10 = call { i64, i64, i64, i64, i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${7:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${6:c}\0A  .byte 772b-771b\0A  .short ${8:c}\0A.popsection\0A", "={di},={si},={dx},={cx},={ax},={rsp},i,i,i,{di},{si},{dx},5,~{memory},~{cc},~{r8},~{r9},~{r10},~{r11},~{dirflag},~{fpsr},~{flags}"(i64 29, i32 (i32, i32, i32)** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 26), i32 511, i64 %conv, i64 %conv1, i64 %conv2, i64 %6) #9, !dbg !5398, !srcloc !5401
  %asmresult = extractvalue { i64, i64, i64, i64, i64, i64 } %10, 0, !dbg !5398
  %asmresult3 = extractvalue { i64, i64, i64, i64, i64, i64 } %10, 1, !dbg !5398
  %asmresult4 = extractvalue { i64, i64, i64, i64, i64, i64 } %10, 2, !dbg !5398
  %asmresult5 = extractvalue { i64, i64, i64, i64, i64, i64 } %10, 3, !dbg !5398
  %asmresult6 = extractvalue { i64, i64, i64, i64, i64, i64 } %10, 4, !dbg !5398
  %asmresult7 = extractvalue { i64, i64, i64, i64, i64, i64 } %10, 5, !dbg !5398
  store i64 %asmresult, i64* %__edi, align 8, !dbg !5398
  store i64 %asmresult3, i64* %__esi, align 8, !dbg !5398
  store i64 %asmresult4, i64* %__edx, align 8, !dbg !5398
  store i64 %asmresult5, i64* %__ecx, align 8, !dbg !5398
  store i64 %asmresult6, i64* %__eax, align 8, !dbg !5398
  call void @llvm.write_register.i64(metadata !2565, i64 %asmresult7), !dbg !5398
  %11 = load i64, i64* %__eax, align 8, !dbg !5398
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !5402, metadata !DIExpression()), !dbg !5404
  store i64 -1, i64* %__mask, align 8, !dbg !5404
  store i64 4294967295, i64* %__mask, align 8, !dbg !5404
  %12 = load i64, i64* %__mask, align 8, !dbg !5404
  store i64 %12, i64* %tmp, align 8, !dbg !5404
  %13 = load i64, i64* %tmp, align 8, !dbg !5404
  %and = and i64 %11, %13, !dbg !5398
  %conv8 = trunc i64 %and to i32, !dbg !5398
  store i32 %conv8, i32* %__ret, align 4, !dbg !5398
  %14 = load i32, i32* %__ret, align 4, !dbg !5392
  store i32 %14, i32* %tmp9, align 4, !dbg !5405
  %15 = load i32, i32* %tmp9, align 4, !dbg !5392
  ret i32 %15, !dbg !5406
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_bit(i64 %nr, i64* %addr) #0 !dbg !5407 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5412, metadata !DIExpression()), !dbg !5414
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5416, metadata !DIExpression()), !dbg !5417
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5418, metadata !DIExpression()), !dbg !5420
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5422, metadata !DIExpression()), !dbg !5423
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5424, metadata !DIExpression()), !dbg !5425
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5426, metadata !DIExpression()), !dbg !5427
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5428
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5429
  %div = sdiv i64 %1, 64, !dbg !5429
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5430
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5428
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5431
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5432
  %conv.i = trunc i64 %4 to i32, !dbg !5432
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #12, !dbg !5433
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5434
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5434
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #12, !dbg !5434
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5435
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !5436
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !5437
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #9, !dbg !5439
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !5440

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !5441
  %12 = bitcast i64* %11 to i8*, !dbg !5441
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !5441
  %shr.i = ashr i64 %13, 3, !dbg !5441
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !5441
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !5443
  %and.i = and i64 %14, 7, !dbg !5443
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !5443
  %shl.i = shl i32 1, %sh_prom.i, !dbg !5443
  call void asm sideeffect "orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %shl.i, i8* %add.ptr.i) #9, !dbg !5444, !srcloc !5445
  br label %arch_set_bit.exit, !dbg !5446

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !5447
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !5449
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #9, !dbg !5450, !srcloc !5451
  br label %arch_set_bit.exit

arch_set_bit.exit:                                ; preds = %if.then.i, %if.else.i
  ret void, !dbg !5452
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !5453 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5454, metadata !DIExpression()), !dbg !5455
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5456, metadata !DIExpression()), !dbg !5457
  ret i1 true, !dbg !5458
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readnone willreturn }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { noredzone }
attributes #11 = { cold noredzone }
attributes #12 = { noredzone nounwind }
attributes #13 = { noredzone nounwind readnone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!2565}
!llvm.module.flags = !{!2566, !2567, !2568, !2569}
!llvm.ident = !{!2570}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_ignore_tpc", scope: !2, file: !3, line: 34, type: !2562, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !93, globals: !2495, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/processor_throttling.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !56, !63, !67, !81, !86}
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
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !82, line: 10, baseType: !7, size: 32, elements: !83)
!82 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!83 = !{!84, !85}
!84 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!85 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !87, line: 305, baseType: !7, size: 32, elements: !88)
!87 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!88 = !{!89, !90, !91, !92}
!89 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!90 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!91 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!92 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!93 = !{!94, !96, !104, !2439, !2287, !7, !2441, !116, !2442, !238, !2483, !106, !171, !2491, !123, !225, !814, !2492, !2494}
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !95, line: 148, baseType: !7)
!95 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor", file: !99, line: 218, size: 7936, elements: !100)
!99 = !DIFile(filename: "./include/acpi/processor.h", directory: "/home/lizy2001/genbc/linux")
!100 = !{!101, !105, !110, !113, !114, !115, !117, !118, !135, !178, !229, !278, !288, !2436, !2437, !2438}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !98, file: !99, line: 219, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !103, line: 424, baseType: !104)
!103 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_id", scope: !98, file: !99, line: 220, baseType: !106, size: 32, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !107, line: 21, baseType: !108)
!107 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !109, line: 27, baseType: !7)
!109 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!110 = !DIDerivedType(tag: DW_TAG_member, name: "phys_id", scope: !98, file: !99, line: 221, baseType: !111, size: 32, offset: 96)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_cpuid_t", file: !112, line: 266, baseType: !106)
!112 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/lizy2001/genbc/linux")
!113 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !98, file: !99, line: 222, baseType: !106, size: 32, offset: 128)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "pblk", scope: !98, file: !99, line: 223, baseType: !106, size: 32, offset: 160)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "performance_platform_limit", scope: !98, file: !99, line: 224, baseType: !116, size: 32, offset: 192)
!116 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "throttling_platform_limit", scope: !98, file: !99, line: 225, baseType: !116, size: 32, offset: 224)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !98, file: !99, line: 228, baseType: !119, size: 16, offset: 256)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_flags", file: !99, line: 204, size: 16, elements: !120)
!120 = !{!121, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !119, file: !99, line: 205, baseType: !122, size: 1, flags: DIFlagBitField, extraData: i64 0)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !107, line: 17, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !109, line: 21, baseType: !124)
!124 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !119, file: !99, line: 206, baseType: !122, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "throttling", scope: !119, file: !99, line: 207, baseType: !122, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !119, file: !99, line: 208, baseType: !122, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "bm_control", scope: !119, file: !99, line: 209, baseType: !122, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "bm_check", scope: !119, file: !99, line: 210, baseType: !122, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "has_cst", scope: !119, file: !99, line: 211, baseType: !122, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "has_lpi", scope: !119, file: !99, line: 212, baseType: !122, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "power_setup_done", scope: !119, file: !99, line: 213, baseType: !122, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "bm_rld_set", scope: !119, file: !99, line: 214, baseType: !122, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "need_hotplug_init", scope: !119, file: !99, line: 215, baseType: !122, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !98, file: !99, line: 229, baseType: !136, size: 4736, offset: 320)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_power", file: !99, line: 87, size: 4736, elements: !137)
!137 = !{!138, !139, !177}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !136, file: !99, line: 88, baseType: !116, size: 32)
!139 = !DIDerivedType(tag: DW_TAG_member, scope: !136, file: !99, line: 89, baseType: !140, size: 4608, offset: 64)
!140 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !136, file: !99, line: 89, size: 4608, elements: !141)
!141 = !{!142, !160}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !140, file: !99, line: 90, baseType: !143, size: 3328)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 3328, elements: !158)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_cx", file: !99, line: 63, size: 416, elements: !145)
!145 = !{!146, !147, !148, !149, !150, !151, !152, !153}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !144, file: !99, line: 64, baseType: !122, size: 8)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !144, file: !99, line: 65, baseType: !122, size: 8, offset: 8)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !144, file: !99, line: 66, baseType: !106, size: 32, offset: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "entry_method", scope: !144, file: !99, line: 67, baseType: !122, size: 8, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !144, file: !99, line: 68, baseType: !122, size: 8, offset: 72)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !144, file: !99, line: 69, baseType: !106, size: 32, offset: 96)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "bm_sts_skip", scope: !144, file: !99, line: 70, baseType: !122, size: 8, offset: 128)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !144, file: !99, line: 71, baseType: !154, size: 256, offset: 136)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 256, elements: !156)
!155 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!156 = !{!157}
!157 = !DISubrange(count: 32)
!158 = !{!159}
!159 = !DISubrange(count: 8)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "lpi_states", scope: !140, file: !99, line: 91, baseType: !161, size: 4608)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 4608, elements: !158)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_lpi_state", file: !99, line: 74, size: 576, elements: !163)
!163 = !{!164, !165, !166, !167, !168, !169, !170, !174, !175, !176}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "min_residency", scope: !162, file: !99, line: 75, baseType: !106, size: 32)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "wake_latency", scope: !162, file: !99, line: 76, baseType: !106, size: 32, offset: 32)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !162, file: !99, line: 77, baseType: !106, size: 32, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "arch_flags", scope: !162, file: !99, line: 78, baseType: !106, size: 32, offset: 96)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "res_cnt_freq", scope: !162, file: !99, line: 79, baseType: !106, size: 32, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "enable_parent_state", scope: !162, file: !99, line: 80, baseType: !106, size: 32, offset: 160)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !162, file: !99, line: 81, baseType: !171, size: 64, offset: 192)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !107, line: 23, baseType: !172)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !109, line: 31, baseType: !173)
!173 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !162, file: !99, line: 82, baseType: !122, size: 8, offset: 256)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "entry_method", scope: !162, file: !99, line: 83, baseType: !122, size: 8, offset: 264)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !162, file: !99, line: 84, baseType: !154, size: 256, offset: 272)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "timer_broadcast_on_state", scope: !136, file: !99, line: 93, baseType: !116, size: 32, offset: 4672)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !98, file: !99, line: 230, baseType: !179, size: 64, offset: 5056)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_performance", file: !99, line: 125, size: 896, elements: !181)
!181 = !{!182, !183, !184, !197, !198, !199, !209, !217, !228}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !180, file: !99, line: 126, baseType: !7, size: 32)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "platform_limit", scope: !180, file: !99, line: 127, baseType: !7, size: 32, offset: 32)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "control_register", scope: !180, file: !99, line: 128, baseType: !185, size: 120, offset: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pct_register", file: !99, line: 106, size: 120, elements: !186)
!186 = !{!187, !188, !192, !193, !194, !195, !196}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !185, file: !99, line: 107, baseType: !122, size: 8)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !185, file: !99, line: 108, baseType: !189, size: 16, offset: 8)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !107, line: 19, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !109, line: 24, baseType: !191)
!191 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !185, file: !99, line: 109, baseType: !122, size: 8, offset: 24)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !185, file: !99, line: 110, baseType: !122, size: 8, offset: 32)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !185, file: !99, line: 111, baseType: !122, size: 8, offset: 40)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !185, file: !99, line: 112, baseType: !122, size: 8, offset: 48)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !185, file: !99, line: 113, baseType: !171, size: 64, offset: 56)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "status_register", scope: !180, file: !99, line: 129, baseType: !185, size: 120, offset: 184)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !180, file: !99, line: 130, baseType: !7, size: 32, offset: 320)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !180, file: !99, line: 131, baseType: !200, size: 64, offset: 384)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_px", file: !99, line: 116, size: 384, elements: !202)
!202 = !{!203, !204, !205, !206, !207, !208}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "core_frequency", scope: !201, file: !99, line: 117, baseType: !171, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !201, file: !99, line: 118, baseType: !171, size: 64, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "transition_latency", scope: !201, file: !99, line: 119, baseType: !171, size: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "bus_master_latency", scope: !201, file: !99, line: 120, baseType: !171, size: 64, offset: 192)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !201, file: !99, line: 121, baseType: !171, size: 64, offset: 256)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !201, file: !99, line: 122, baseType: !171, size: 64, offset: 320)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "domain_info", scope: !180, file: !99, line: 132, baseType: !210, size: 320, offset: 448)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_psd_package", file: !99, line: 98, size: 320, elements: !211)
!211 = !{!212, !213, !214, !215, !216}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "num_entries", scope: !210, file: !99, line: 99, baseType: !171, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !210, file: !99, line: 100, baseType: !171, size: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !210, file: !99, line: 101, baseType: !171, size: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "coord_type", scope: !210, file: !99, line: 102, baseType: !171, size: 64, offset: 192)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "num_processors", scope: !210, file: !99, line: 103, baseType: !171, size: 64, offset: 256)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "shared_cpu_map", scope: !180, file: !99, line: 133, baseType: !218, size: 64, offset: 768)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !219, line: 756, baseType: !220)
!219 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 64, elements: !226)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !219, line: 17, size: 64, elements: !222)
!222 = !{!223}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !221, file: !219, line: 17, baseType: !224, size: 64)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 64, elements: !226)
!225 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!226 = !{!227}
!227 = !DISubrange(count: 1)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "shared_type", scope: !180, file: !99, line: 134, baseType: !7, size: 32, offset: 832)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "throttling", scope: !98, file: !99, line: 231, baseType: !230, size: 1600, offset: 5120)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_throttling", file: !99, line: 170, size: 1600, elements: !231)
!231 = !{!232, !233, !234, !235, !236, !237, !246, !254, !255, !259, !265, !266, !267, !268, !269, !270}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !230, file: !99, line: 171, baseType: !7, size: 32)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "platform_limit", scope: !230, file: !99, line: 172, baseType: !7, size: 32, offset: 32)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "control_register", scope: !230, file: !99, line: 173, baseType: !185, size: 120, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "status_register", scope: !230, file: !99, line: 174, baseType: !185, size: 120, offset: 184)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !230, file: !99, line: 175, baseType: !7, size: 32, offset: 320)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "states_tss", scope: !230, file: !99, line: 176, baseType: !238, size: 64, offset: 384)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_tx_tss", file: !99, line: 157, size: 320, elements: !240)
!240 = !{!241, !242, !243, !244, !245}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "freqpercentage", scope: !239, file: !99, line: 158, baseType: !171, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !239, file: !99, line: 159, baseType: !171, size: 64, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "transition_latency", scope: !239, file: !99, line: 160, baseType: !171, size: 64, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !239, file: !99, line: 161, baseType: !171, size: 64, offset: 192)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !239, file: !99, line: 162, baseType: !171, size: 64, offset: 256)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "domain_info", scope: !230, file: !99, line: 177, baseType: !247, size: 320, offset: 448)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_tsd_package", file: !99, line: 139, size: 320, elements: !248)
!248 = !{!249, !250, !251, !252, !253}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "num_entries", scope: !247, file: !99, line: 140, baseType: !171, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !247, file: !99, line: 141, baseType: !171, size: 64, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !247, file: !99, line: 142, baseType: !171, size: 64, offset: 128)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "coord_type", scope: !247, file: !99, line: 143, baseType: !171, size: 64, offset: 192)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "num_processors", scope: !247, file: !99, line: 144, baseType: !171, size: 64, offset: 256)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "shared_cpu_map", scope: !230, file: !99, line: 178, baseType: !218, size: 64, offset: 768)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_processor_get_throttling", scope: !230, file: !99, line: 179, baseType: !256, size: 64, offset: 832)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{!116, !97}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_processor_set_throttling", scope: !230, file: !99, line: 180, baseType: !260, size: 64, offset: 896)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!116, !97, !116, !263}
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !95, line: 30, baseType: !264)
!264 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !230, file: !99, line: 183, baseType: !106, size: 32, offset: 960)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "duty_offset", scope: !230, file: !99, line: 184, baseType: !122, size: 8, offset: 992)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "duty_width", scope: !230, file: !99, line: 185, baseType: !122, size: 8, offset: 1000)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "tsd_valid_flag", scope: !230, file: !99, line: 186, baseType: !122, size: 8, offset: 1008)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "shared_type", scope: !230, file: !99, line: 187, baseType: !7, size: 32, offset: 1024)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !230, file: !99, line: 188, baseType: !271, size: 512, offset: 1056)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, size: 512, elements: !276)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_tx", file: !99, line: 164, size: 32, elements: !273)
!273 = !{!274, !275}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !272, file: !99, line: 165, baseType: !189, size: 16)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !272, file: !99, line: 166, baseType: !189, size: 16, offset: 16)
!276 = !{!277}
!277 = !DISubrange(count: 16)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !98, file: !99, line: 232, baseType: !279, size: 192, offset: 6720)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_limit", file: !99, line: 198, size: 192, elements: !280)
!280 = !{!281, !286, !287}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !279, file: !99, line: 199, baseType: !282, size: 64)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_lx", file: !99, line: 193, size: 64, elements: !283)
!283 = !{!284, !285}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "px", scope: !282, file: !99, line: 194, baseType: !116, size: 32)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "tx", scope: !282, file: !99, line: 195, baseType: !116, size: 32, offset: 32)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "thermal", scope: !279, file: !99, line: 200, baseType: !282, size: 64, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !279, file: !99, line: 201, baseType: !282, size: 64, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !98, file: !99, line: 233, baseType: !289, size: 64, offset: 6912)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device", file: !291, line: 93, size: 6528, elements: !292)
!291 = !DIFile(filename: "./include/linux/thermal.h", directory: "/home/lizy2001/genbc/linux")
!292 = !{!293, !294, !298, !2403, !2404, !2405, !2406, !2432, !2433, !2434, !2435}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !290, file: !291, line: 94, baseType: !116, size: 32)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !290, file: !291, line: 95, baseType: !295, size: 160, offset: 32)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 160, elements: !296)
!296 = !{!297}
!297 = !DISubrange(count: 20)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !290, file: !291, line: 96, baseType: !299, size: 5568, offset: 192)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !300)
!300 = !{!301, !1776, !1778, !1781, !1782, !1833, !1929, !1930, !1931, !1932, !1933, !1942, !2119, !2132, !2328, !2329, !2333, !2335, !2336, !2337, !2341, !2347, !2348, !2351, !2352, !2353, !2356, !2357, !2358, !2359, !2391, !2392, !2393, !2396, !2399, !2400, !2401, !2402}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !299, file: !30, line: 462, baseType: !302, size: 512)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !303, line: 64, size: 512, elements: !304)
!303 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!304 = !{!305, !308, !314, !316, !376, !1613, !1766, !1771, !1772, !1773, !1774, !1775}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !302, file: !303, line: 65, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !155)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !302, file: !303, line: 66, baseType: !309, size: 128, offset: 64)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !95, line: 178, size: 128, elements: !310)
!310 = !{!311, !313}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !309, file: !95, line: 179, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !309, file: !95, line: 179, baseType: !312, size: 64, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !302, file: !303, line: 67, baseType: !315, size: 64, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !302, file: !303, line: 68, baseType: !317, size: 64, offset: 256)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !303, line: 192, size: 704, elements: !319)
!319 = !{!320, !321, !337, !338}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !318, file: !303, line: 193, baseType: !309, size: 128)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !318, file: !303, line: 194, baseType: !322, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !323, line: 83, baseType: !324)
!323 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !323, line: 71, elements: !325)
!325 = !{!326}
!326 = !DIDerivedType(tag: DW_TAG_member, scope: !324, file: !323, line: 72, baseType: !327)
!327 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !324, file: !323, line: 72, elements: !328)
!328 = !{!329}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !327, file: !323, line: 73, baseType: !330)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !323, line: 20, elements: !331)
!331 = !{!332}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !330, file: !323, line: 21, baseType: !333)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !334, line: 25, baseType: !335)
!334 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !334, line: 25, elements: !336)
!336 = !{}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !318, file: !303, line: 195, baseType: !302, size: 512, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !318, file: !303, line: 196, baseType: !339, size: 64, offset: 640)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !341)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !303, line: 156, size: 192, elements: !342)
!342 = !{!343, !348, !353}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !341, file: !303, line: 157, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !345)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{!116, !317, !315}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !341, file: !303, line: 158, baseType: !349, size: 64, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !350)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DISubroutineType(types: !352)
!352 = !{!306, !317, !315}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !341, file: !303, line: 159, baseType: !354, size: 64, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!116, !317, !315, !358}
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !303, line: 148, size: 20736, elements: !360)
!360 = !{!361, !366, !370, !371, !375}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !359, file: !303, line: 149, baseType: !362, size: 192)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 192, elements: !364)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!364 = !{!365}
!365 = !DISubrange(count: 3)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !359, file: !303, line: 150, baseType: !367, size: 4096, offset: 192)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 4096, elements: !368)
!368 = !{!369}
!369 = !DISubrange(count: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !359, file: !303, line: 151, baseType: !116, size: 32, offset: 4288)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !359, file: !303, line: 152, baseType: !372, size: 16384, offset: 4320)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 16384, elements: !373)
!373 = !{!374}
!374 = !DISubrange(count: 2048)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !359, file: !303, line: 153, baseType: !116, size: 32, offset: 20704)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !302, file: !303, line: 69, baseType: !377, size: 64, offset: 320)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !303, line: 138, size: 448, elements: !379)
!379 = !{!380, !384, !412, !414, !1561, !1592, !1596}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !378, file: !303, line: 139, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DISubroutineType(types: !383)
!383 = !{null, !315}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !378, file: !303, line: 140, baseType: !385, size: 64, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !387)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !388, line: 230, size: 128, elements: !389)
!388 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!389 = !{!390, !405}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !387, file: !388, line: 231, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DISubroutineType(types: !393)
!393 = !{!394, !315, !399, !363}
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !95, line: 60, baseType: !395)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !396, line: 73, baseType: !397)
!396 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !396, line: 15, baseType: !398)
!398 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !388, line: 30, size: 128, elements: !401)
!401 = !{!402, !403}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !400, file: !388, line: 31, baseType: !306, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !400, file: !388, line: 32, baseType: !404, size: 16, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !95, line: 19, baseType: !191)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !387, file: !388, line: 232, baseType: !406, size: 64, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DISubroutineType(types: !408)
!408 = !{!394, !315, !399, !306, !409}
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !95, line: 55, baseType: !410)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !396, line: 72, baseType: !411)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !396, line: 16, baseType: !225)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !378, file: !303, line: 141, baseType: !413, size: 64, offset: 128)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !378, file: !303, line: 142, baseType: !415, size: 64, offset: 192)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !418)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !388, line: 84, size: 320, elements: !419)
!419 = !{!420, !421, !425, !1558, !1559}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !418, file: !388, line: 85, baseType: !306, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !418, file: !388, line: 86, baseType: !422, size: 64, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{!404, !315, !399, !116}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !418, file: !388, line: 88, baseType: !426, size: 64, offset: 128)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DISubroutineType(types: !428)
!428 = !{!404, !315, !429, !116}
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !388, line: 168, size: 448, elements: !431)
!431 = !{!432, !433, !434, !435, !445, !446}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !430, file: !388, line: 169, baseType: !400, size: 128)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !430, file: !388, line: 170, baseType: !409, size: 64, offset: 128)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !430, file: !388, line: 171, baseType: !104, size: 64, offset: 192)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !430, file: !388, line: 172, baseType: !436, size: 64, offset: 256)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{!394, !439, !315, !429, !363, !442, !409}
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !441, line: 526, flags: DIFlagFwdDecl)
!441 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !95, line: 46, baseType: !443)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !396, line: 88, baseType: !444)
!444 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !430, file: !388, line: 174, baseType: !436, size: 64, offset: 320)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !430, file: !388, line: 176, baseType: !447, size: 64, offset: 384)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DISubroutineType(types: !449)
!449 = !{!116, !439, !315, !429, !450}
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !452, line: 305, size: 1472, elements: !453)
!452 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!453 = !{!454, !455, !456, !457, !458, !466, !467, !1532, !1538, !1539, !1544, !1545, !1548, !1552, !1553, !1554, !1555, !1556}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !451, file: !452, line: 308, baseType: !225, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !451, file: !452, line: 309, baseType: !225, size: 64, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !451, file: !452, line: 313, baseType: !450, size: 64, offset: 128)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !451, file: !452, line: 313, baseType: !450, size: 64, offset: 192)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !451, file: !452, line: 315, baseType: !459, size: 192, align: 64, offset: 256)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !460, line: 24, size: 192, align: 64, elements: !461)
!460 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!461 = !{!462, !463, !465}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !459, file: !460, line: 25, baseType: !225, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !459, file: !460, line: 26, baseType: !464, size: 64, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !459, file: !460, line: 27, baseType: !464, size: 64, offset: 128)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !451, file: !452, line: 323, baseType: !225, size: 64, offset: 448)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !451, file: !452, line: 327, baseType: !468, size: 64, offset: 512)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !452, line: 388, size: 7296, elements: !470)
!470 = !{!471, !1528}
!471 = !DIDerivedType(tag: DW_TAG_member, scope: !469, file: !452, line: 389, baseType: !472, size: 7296)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !469, file: !452, line: 389, size: 7296, elements: !473)
!473 = !{!474, !475, !479, !480, !484, !485, !486, !487, !488, !496, !501, !502, !503, !504, !513, !514, !515, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !550, !558, !561, !607, !608, !1498, !1499, !1502, !1506, !1507, !1510, !1511, !1512, !1515, !1527}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !472, file: !452, line: 390, baseType: !450, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !472, file: !452, line: 391, baseType: !476, size: 64, offset: 64)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !460, line: 31, size: 64, elements: !477)
!477 = !{!478}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !476, file: !460, line: 32, baseType: !464, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !472, file: !452, line: 392, baseType: !171, size: 64, offset: 128)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !472, file: !452, line: 394, baseType: !481, size: 64, offset: 192)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!225, !439, !225, !225, !225, !225}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !472, file: !452, line: 398, baseType: !225, size: 64, offset: 256)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !472, file: !452, line: 399, baseType: !225, size: 64, offset: 320)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !472, file: !452, line: 405, baseType: !225, size: 64, offset: 384)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !472, file: !452, line: 406, baseType: !225, size: 64, offset: 448)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !472, file: !452, line: 407, baseType: !489, size: 64, offset: 512)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !441, line: 286, baseType: !491)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !441, line: 286, size: 64, elements: !492)
!492 = !{!493}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !491, file: !441, line: 286, baseType: !494, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !495, line: 18, baseType: !225)
!495 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!496 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !472, file: !452, line: 416, baseType: !497, size: 32, offset: 576)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !95, line: 168, baseType: !498)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !95, line: 166, size: 32, elements: !499)
!499 = !{!500}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !498, file: !95, line: 167, baseType: !116, size: 32)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !472, file: !452, line: 428, baseType: !497, size: 32, offset: 608)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !472, file: !452, line: 437, baseType: !497, size: 32, offset: 640)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !472, file: !452, line: 447, baseType: !497, size: 32, offset: 672)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !472, file: !452, line: 450, baseType: !505, size: 64, offset: 704)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !506, line: 13, baseType: !507)
!506 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !95, line: 175, baseType: !508)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !95, line: 173, size: 64, elements: !509)
!509 = !{!510}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !508, file: !95, line: 174, baseType: !511, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !107, line: 22, baseType: !512)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !109, line: 30, baseType: !444)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !472, file: !452, line: 452, baseType: !116, size: 32, offset: 768)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !472, file: !452, line: 454, baseType: !322, offset: 800)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !472, file: !452, line: 457, baseType: !516, size: 256, offset: 832)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !517, line: 35, size: 256, elements: !518)
!517 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!518 = !{!519, !520, !521, !523}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !516, file: !517, line: 36, baseType: !505, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !516, file: !517, line: 42, baseType: !505, size: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !516, file: !517, line: 46, baseType: !522, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !323, line: 29, baseType: !330)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !516, file: !517, line: 47, baseType: !309, size: 128, offset: 128)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !472, file: !452, line: 459, baseType: !309, size: 128, offset: 1088)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !472, file: !452, line: 466, baseType: !225, size: 64, offset: 1216)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !472, file: !452, line: 467, baseType: !225, size: 64, offset: 1280)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !472, file: !452, line: 469, baseType: !225, size: 64, offset: 1344)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !472, file: !452, line: 470, baseType: !225, size: 64, offset: 1408)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !472, file: !452, line: 471, baseType: !507, size: 64, offset: 1472)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !472, file: !452, line: 472, baseType: !225, size: 64, offset: 1536)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !472, file: !452, line: 473, baseType: !225, size: 64, offset: 1600)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !472, file: !452, line: 474, baseType: !225, size: 64, offset: 1664)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !472, file: !452, line: 475, baseType: !225, size: 64, offset: 1728)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !472, file: !452, line: 477, baseType: !322, offset: 1792)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !472, file: !452, line: 478, baseType: !225, size: 64, offset: 1792)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !472, file: !452, line: 478, baseType: !225, size: 64, offset: 1856)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !472, file: !452, line: 478, baseType: !225, size: 64, offset: 1920)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !472, file: !452, line: 478, baseType: !225, size: 64, offset: 1984)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !472, file: !452, line: 479, baseType: !225, size: 64, offset: 2048)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !472, file: !452, line: 479, baseType: !225, size: 64, offset: 2112)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !472, file: !452, line: 479, baseType: !225, size: 64, offset: 2176)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !472, file: !452, line: 480, baseType: !225, size: 64, offset: 2240)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !472, file: !452, line: 480, baseType: !225, size: 64, offset: 2304)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !472, file: !452, line: 480, baseType: !225, size: 64, offset: 2368)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !472, file: !452, line: 480, baseType: !225, size: 64, offset: 2432)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !472, file: !452, line: 482, baseType: !547, size: 2816, offset: 2496)
!547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 2816, elements: !548)
!548 = !{!549}
!549 = !DISubrange(count: 44)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !472, file: !452, line: 488, baseType: !551, size: 256, offset: 5312)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !552, line: 60, size: 256, elements: !553)
!552 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!553 = !{!554}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !551, file: !552, line: 61, baseType: !555, size: 256)
!555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !505, size: 256, elements: !556)
!556 = !{!557}
!557 = !DISubrange(count: 4)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !472, file: !452, line: 490, baseType: !559, size: 64, offset: 5568)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !452, line: 490, flags: DIFlagFwdDecl)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !472, file: !452, line: 493, baseType: !562, size: 896, offset: 5632)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !563, line: 53, baseType: !564)
!563 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !563, line: 13, size: 896, elements: !565)
!565 = !{!566, !567, !568, !569, !572, !573, !580, !581, !601, !602, !603}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !564, file: !563, line: 18, baseType: !171, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !564, file: !563, line: 28, baseType: !507, size: 64, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !564, file: !563, line: 31, baseType: !516, size: 256, offset: 128)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !564, file: !563, line: 32, baseType: !570, size: 64, offset: 384)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !563, line: 32, flags: DIFlagFwdDecl)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !564, file: !563, line: 37, baseType: !191, size: 16, offset: 448)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !564, file: !563, line: 40, baseType: !574, size: 192, offset: 512)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !575, line: 53, size: 192, elements: !576)
!575 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!576 = !{!577, !578, !579}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !574, file: !575, line: 54, baseType: !505, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !574, file: !575, line: 55, baseType: !322, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !574, file: !575, line: 59, baseType: !309, size: 128, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !564, file: !563, line: 41, baseType: !104, size: 64, offset: 704)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !564, file: !563, line: 42, baseType: !582, size: 64, offset: 768)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !584)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !585, line: 13, size: 896, elements: !586)
!585 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!586 = !{!587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !584, file: !585, line: 14, baseType: !104, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !584, file: !585, line: 15, baseType: !225, size: 64, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !584, file: !585, line: 17, baseType: !225, size: 64, offset: 128)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !584, file: !585, line: 17, baseType: !225, size: 64, offset: 192)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !584, file: !585, line: 19, baseType: !398, size: 64, offset: 256)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !584, file: !585, line: 21, baseType: !398, size: 64, offset: 320)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !584, file: !585, line: 22, baseType: !398, size: 64, offset: 384)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !584, file: !585, line: 23, baseType: !398, size: 64, offset: 448)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !584, file: !585, line: 24, baseType: !398, size: 64, offset: 512)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !584, file: !585, line: 25, baseType: !398, size: 64, offset: 576)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !584, file: !585, line: 26, baseType: !398, size: 64, offset: 640)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !584, file: !585, line: 27, baseType: !398, size: 64, offset: 704)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !584, file: !585, line: 28, baseType: !398, size: 64, offset: 768)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !584, file: !585, line: 29, baseType: !398, size: 64, offset: 832)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !564, file: !563, line: 44, baseType: !497, size: 32, offset: 832)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !564, file: !563, line: 50, baseType: !189, size: 16, offset: 864)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !564, file: !563, line: 51, baseType: !604, size: 16, offset: 880)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !107, line: 18, baseType: !605)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !109, line: 23, baseType: !606)
!606 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !472, file: !452, line: 495, baseType: !225, size: 64, offset: 6528)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !472, file: !452, line: 497, baseType: !609, size: 64, offset: 6592)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !452, line: 381, size: 384, elements: !611)
!611 = !{!612, !613, !1497}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !610, file: !452, line: 382, baseType: !497, size: 32)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !610, file: !452, line: 383, baseType: !614, size: 128, offset: 64)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !452, line: 376, size: 128, elements: !615)
!615 = !{!616, !1495}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !614, file: !452, line: 377, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !619, line: 640, size: 48640, elements: !620)
!619 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!620 = !{!621, !627, !629, !630, !636, !637, !638, !639, !640, !641, !642, !643, !647, !665, !676, !766, !767, !768, !772, !773, !775, !776, !777, !778, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !857, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !913, !915, !916, !917, !929, !931, !932, !933, !934, !935, !941, !942, !943, !944, !945, !946, !947, !959, !964, !969, !970, !971, !974, !976, !979, !982, !985, !988, !992, !995, !998, !1004, !1005, !1006, !1012, !1013, !1014, !1015, !1016, !1025, !1026, !1027, !1028, !1029, !1034, !1035, !1036, !1039, !1040, !1043, !1046, !1049, !1052, !1055, !1058, !1059, !1139, !1142, !1145, !1146, !1149, !1150, !1151, !1157, !1158, !1159, !1172, !1173, !1174, !1184, !1189, !1192, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !618, file: !619, line: 646, baseType: !622, size: 128)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !623, line: 56, size: 128, elements: !624)
!623 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!624 = !{!625, !626}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !622, file: !623, line: 57, baseType: !225, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !622, file: !623, line: 58, baseType: !106, size: 32, offset: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !618, file: !619, line: 649, baseType: !628, size: 64, offset: 128)
!628 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !398)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !618, file: !619, line: 657, baseType: !104, size: 64, offset: 192)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !618, file: !619, line: 658, baseType: !631, size: 32, offset: 256)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !632, line: 113, baseType: !633)
!632 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !632, line: 111, size: 32, elements: !634)
!634 = !{!635}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !633, file: !632, line: 112, baseType: !497, size: 32)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !618, file: !619, line: 660, baseType: !7, size: 32, offset: 288)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !618, file: !619, line: 661, baseType: !7, size: 32, offset: 320)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !618, file: !619, line: 684, baseType: !116, size: 32, offset: 352)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !618, file: !619, line: 686, baseType: !116, size: 32, offset: 384)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !618, file: !619, line: 687, baseType: !116, size: 32, offset: 416)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !618, file: !619, line: 688, baseType: !116, size: 32, offset: 448)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !618, file: !619, line: 689, baseType: !7, size: 32, offset: 480)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !618, file: !619, line: 691, baseType: !644, size: 64, offset: 512)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !646)
!646 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !619, line: 691, flags: DIFlagFwdDecl)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !618, file: !619, line: 692, baseType: !648, size: 832, offset: 576)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !619, line: 451, size: 832, elements: !649)
!649 = !{!650, !655, !656, !657, !658, !659, !660, !661, !662, !663}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !648, file: !619, line: 453, baseType: !651, size: 128)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !619, line: 325, size: 128, elements: !652)
!652 = !{!653, !654}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !651, file: !619, line: 326, baseType: !225, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !651, file: !619, line: 327, baseType: !106, size: 32, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !648, file: !619, line: 454, baseType: !459, size: 192, align: 64, offset: 128)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !648, file: !619, line: 455, baseType: !309, size: 128, offset: 320)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !648, file: !619, line: 456, baseType: !7, size: 32, offset: 448)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !648, file: !619, line: 458, baseType: !171, size: 64, offset: 512)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !648, file: !619, line: 459, baseType: !171, size: 64, offset: 576)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !648, file: !619, line: 460, baseType: !171, size: 64, offset: 640)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !648, file: !619, line: 461, baseType: !171, size: 64, offset: 704)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !648, file: !619, line: 463, baseType: !171, size: 64, offset: 768)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !648, file: !619, line: 465, baseType: !664, offset: 832)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !619, line: 415, elements: !336)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !618, file: !619, line: 693, baseType: !666, size: 384, offset: 1408)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !619, line: 489, size: 384, elements: !667)
!667 = !{!668, !669, !670, !671, !672, !673, !674}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !666, file: !619, line: 490, baseType: !309, size: 128)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !666, file: !619, line: 491, baseType: !225, size: 64, offset: 128)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !666, file: !619, line: 492, baseType: !225, size: 64, offset: 192)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !666, file: !619, line: 493, baseType: !7, size: 32, offset: 256)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !666, file: !619, line: 494, baseType: !191, size: 16, offset: 288)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !666, file: !619, line: 495, baseType: !191, size: 16, offset: 304)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !666, file: !619, line: 497, baseType: !675, size: 64, offset: 320)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !618, file: !619, line: 697, baseType: !677, size: 1792, offset: 1792)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !619, line: 507, size: 1792, elements: !678)
!678 = !{!679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !763, !764}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !677, file: !619, line: 508, baseType: !459, size: 192, align: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !677, file: !619, line: 515, baseType: !171, size: 64, offset: 192)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !677, file: !619, line: 516, baseType: !171, size: 64, offset: 256)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !677, file: !619, line: 517, baseType: !171, size: 64, offset: 320)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !677, file: !619, line: 518, baseType: !171, size: 64, offset: 384)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !677, file: !619, line: 519, baseType: !171, size: 64, offset: 448)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !677, file: !619, line: 526, baseType: !511, size: 64, offset: 512)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !677, file: !619, line: 527, baseType: !171, size: 64, offset: 576)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !677, file: !619, line: 528, baseType: !7, size: 32, offset: 640)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !677, file: !619, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !677, file: !619, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !677, file: !619, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !677, file: !619, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !677, file: !619, line: 563, baseType: !693, size: 512, offset: 704)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !694)
!694 = !{!695, !703, !704, !709, !759, !760, !761, !762}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !693, file: !6, line: 119, baseType: !696, size: 256)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !697, line: 9, size: 256, elements: !698)
!697 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!698 = !{!699, !700}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !696, file: !697, line: 10, baseType: !459, size: 192, align: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !696, file: !697, line: 11, baseType: !701, size: 64, offset: 192)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !702, line: 29, baseType: !511)
!702 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!703 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !693, file: !6, line: 120, baseType: !701, size: 64, offset: 256)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !693, file: !6, line: 121, baseType: !705, size: 64, offset: 320)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DISubroutineType(types: !707)
!707 = !{!5, !708}
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !693, file: !6, line: 122, baseType: !710, size: 64, offset: 384)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !712)
!712 = !{!713, !731, !732, !735, !745, !746, !754, !758}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !711, file: !6, line: 160, baseType: !714, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !716)
!716 = !{!717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !715, file: !6, line: 215, baseType: !522)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !715, file: !6, line: 216, baseType: !7, size: 32)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !715, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !715, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !715, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !715, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !715, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !715, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !715, file: !6, line: 233, baseType: !701, size: 64, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !715, file: !6, line: 234, baseType: !708, size: 64, offset: 192)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !715, file: !6, line: 235, baseType: !701, size: 64, offset: 256)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !715, file: !6, line: 236, baseType: !708, size: 64, offset: 320)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !715, file: !6, line: 237, baseType: !730, size: 4096, offset: 512)
!730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !711, size: 4096, elements: !158)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !711, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !711, file: !6, line: 162, baseType: !733, size: 32, offset: 96)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !95, line: 27, baseType: !734)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !396, line: 96, baseType: !116)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !711, file: !6, line: 163, baseType: !736, size: 32, offset: 128)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !737, line: 276, baseType: !738)
!737 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !737, line: 276, size: 32, elements: !739)
!739 = !{!740}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !738, file: !737, line: 276, baseType: !741, size: 32)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !737, line: 70, baseType: !742)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !737, line: 65, size: 32, elements: !743)
!743 = !{!744}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !742, file: !737, line: 66, baseType: !7, size: 32)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !711, file: !6, line: 164, baseType: !708, size: 64, offset: 192)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !711, file: !6, line: 165, baseType: !747, size: 128, offset: 256)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !697, line: 14, size: 128, elements: !748)
!748 = !{!749}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !747, file: !697, line: 15, baseType: !750, size: 128)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !460, line: 125, size: 128, elements: !751)
!751 = !{!752, !753}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !750, file: !460, line: 126, baseType: !476, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !750, file: !460, line: 127, baseType: !464, size: 64, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !711, file: !6, line: 166, baseType: !755, size: 64, offset: 384)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{!701}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !711, file: !6, line: 167, baseType: !701, size: 64, offset: 448)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !693, file: !6, line: 123, baseType: !122, size: 8, offset: 448)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !693, file: !6, line: 124, baseType: !122, size: 8, offset: 456)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !693, file: !6, line: 125, baseType: !122, size: 8, offset: 464)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !693, file: !6, line: 126, baseType: !122, size: 8, offset: 472)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !677, file: !619, line: 572, baseType: !693, size: 512, offset: 1216)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !677, file: !619, line: 580, baseType: !765, size: 64, offset: 1728)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !618, file: !619, line: 721, baseType: !7, size: 32, offset: 3584)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !618, file: !619, line: 722, baseType: !116, size: 32, offset: 3616)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !618, file: !619, line: 723, baseType: !769, size: 64, offset: 3648)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !771)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !219, line: 17, baseType: !221)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !618, file: !619, line: 724, baseType: !771, size: 64, offset: 3712)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !618, file: !619, line: 749, baseType: !774, offset: 3776)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !619, line: 290, elements: !336)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !618, file: !619, line: 751, baseType: !309, size: 128, offset: 3776)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !618, file: !619, line: 757, baseType: !468, size: 64, offset: 3904)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !618, file: !619, line: 758, baseType: !468, size: 64, offset: 3968)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !618, file: !619, line: 761, baseType: !779, size: 320, offset: 4032)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !552, line: 34, size: 320, elements: !780)
!780 = !{!781, !782}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !779, file: !552, line: 35, baseType: !171, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !779, file: !552, line: 36, baseType: !783, size: 256, offset: 64)
!783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !450, size: 256, elements: !556)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !618, file: !619, line: 766, baseType: !116, size: 32, offset: 4352)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !618, file: !619, line: 767, baseType: !116, size: 32, offset: 4384)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !618, file: !619, line: 768, baseType: !116, size: 32, offset: 4416)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !618, file: !619, line: 770, baseType: !116, size: 32, offset: 4448)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !618, file: !619, line: 772, baseType: !225, size: 64, offset: 4480)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !618, file: !619, line: 775, baseType: !7, size: 32, offset: 4544)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !618, file: !619, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !618, file: !619, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !618, file: !619, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !618, file: !619, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !618, file: !619, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !618, file: !619, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !618, file: !619, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !618, file: !619, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !618, file: !619, line: 831, baseType: !225, size: 64, offset: 4672)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !618, file: !619, line: 833, baseType: !800, size: 384, offset: 4736)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !801)
!801 = !{!802, !807}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !800, file: !12, line: 26, baseType: !803, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DISubroutineType(types: !805)
!805 = !{!398, !806}
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, scope: !800, file: !12, line: 27, baseType: !808, size: 320, offset: 64)
!808 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !800, file: !12, line: 27, size: 320, elements: !809)
!809 = !{!810, !820, !847}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !808, file: !12, line: 36, baseType: !811, size: 320)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !808, file: !12, line: 29, size: 320, elements: !812)
!812 = !{!813, !815, !816, !817, !818, !819}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !811, file: !12, line: 30, baseType: !814, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !811, file: !12, line: 31, baseType: !106, size: 32, offset: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !811, file: !12, line: 32, baseType: !106, size: 32, offset: 96)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !811, file: !12, line: 33, baseType: !106, size: 32, offset: 128)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !811, file: !12, line: 34, baseType: !171, size: 64, offset: 192)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !811, file: !12, line: 35, baseType: !814, size: 64, offset: 256)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !808, file: !12, line: 46, baseType: !821, size: 192)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !808, file: !12, line: 38, size: 192, elements: !822)
!822 = !{!823, !824, !825, !846}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !821, file: !12, line: 39, baseType: !733, size: 32)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !821, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!825 = !DIDerivedType(tag: DW_TAG_member, scope: !821, file: !12, line: 41, baseType: !826, size: 64, offset: 64)
!826 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !821, file: !12, line: 41, size: 64, elements: !827)
!827 = !{!828, !836}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !826, file: !12, line: 42, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !831, line: 7, size: 128, elements: !832)
!831 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!832 = !{!833, !835}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !830, file: !831, line: 8, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !396, line: 93, baseType: !444)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !830, file: !831, line: 9, baseType: !444, size: 64, offset: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !826, file: !12, line: 43, baseType: !837, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !839, line: 7, size: 64, elements: !840)
!839 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!840 = !{!841, !845}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !838, file: !839, line: 8, baseType: !842, size: 32)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !839, line: 5, baseType: !843)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !107, line: 20, baseType: !844)
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !109, line: 26, baseType: !116)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !838, file: !839, line: 9, baseType: !843, size: 32, offset: 32)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !821, file: !12, line: 45, baseType: !171, size: 64, offset: 128)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !808, file: !12, line: 54, baseType: !848, size: 256)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !808, file: !12, line: 48, size: 256, elements: !849)
!849 = !{!850, !853, !854, !855, !856}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !848, file: !12, line: 49, baseType: !851, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !848, file: !12, line: 50, baseType: !116, size: 32, offset: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !848, file: !12, line: 51, baseType: !116, size: 32, offset: 96)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !848, file: !12, line: 52, baseType: !225, size: 64, offset: 128)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !848, file: !12, line: 53, baseType: !225, size: 64, offset: 192)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !618, file: !619, line: 835, baseType: !858, size: 32, offset: 5120)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !95, line: 22, baseType: !859)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !396, line: 28, baseType: !116)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !618, file: !619, line: 836, baseType: !858, size: 32, offset: 5152)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !618, file: !619, line: 840, baseType: !225, size: 64, offset: 5184)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !618, file: !619, line: 849, baseType: !617, size: 64, offset: 5248)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !618, file: !619, line: 852, baseType: !617, size: 64, offset: 5312)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !618, file: !619, line: 857, baseType: !309, size: 128, offset: 5376)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !618, file: !619, line: 858, baseType: !309, size: 128, offset: 5504)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !618, file: !619, line: 859, baseType: !617, size: 64, offset: 5632)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !618, file: !619, line: 867, baseType: !309, size: 128, offset: 5696)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !618, file: !619, line: 868, baseType: !309, size: 128, offset: 5824)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !618, file: !619, line: 871, baseType: !870, size: 64, offset: 5952)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !872, line: 59, size: 768, elements: !873)
!872 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!873 = !{!874, !875, !876, !877, !888, !889, !896, !905}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !871, file: !872, line: 61, baseType: !631, size: 32)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !871, file: !872, line: 62, baseType: !7, size: 32, offset: 32)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !871, file: !872, line: 63, baseType: !322, offset: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !871, file: !872, line: 65, baseType: !878, size: 256, offset: 64)
!878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !879, size: 256, elements: !556)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !95, line: 182, size: 64, elements: !880)
!880 = !{!881}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !879, file: !95, line: 183, baseType: !882, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !95, line: 186, size: 128, elements: !884)
!884 = !{!885, !886}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !883, file: !95, line: 187, baseType: !882, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !883, file: !95, line: 187, baseType: !887, size: 64, offset: 64)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !871, file: !872, line: 66, baseType: !879, size: 64, offset: 320)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !871, file: !872, line: 68, baseType: !890, size: 128, offset: 384)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !891, line: 40, baseType: !892)
!891 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !891, line: 36, size: 128, elements: !893)
!893 = !{!894, !895}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !892, file: !891, line: 37, baseType: !322)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !892, file: !891, line: 38, baseType: !309, size: 128)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !871, file: !872, line: 69, baseType: !897, size: 128, align: 64, offset: 512)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !95, line: 216, size: 128, align: 64, elements: !898)
!898 = !{!899, !901}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !897, file: !95, line: 217, baseType: !900, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !897, file: !95, line: 218, baseType: !902, size: 64, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DISubroutineType(types: !904)
!904 = !{null, !900}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !871, file: !872, line: 70, baseType: !906, size: 128, offset: 640)
!906 = !DICompositeType(tag: DW_TAG_array_type, baseType: !907, size: 128, elements: !226)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !872, line: 54, size: 128, elements: !908)
!908 = !{!909, !910}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !907, file: !872, line: 55, baseType: !116, size: 32)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !907, file: !872, line: 56, baseType: !911, size: 64, offset: 64)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !872, line: 56, flags: DIFlagFwdDecl)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !618, file: !619, line: 872, baseType: !914, size: 512, offset: 6016)
!914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !883, size: 512, elements: !556)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !618, file: !619, line: 873, baseType: !309, size: 128, offset: 6528)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !618, file: !619, line: 874, baseType: !309, size: 128, offset: 6656)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !618, file: !619, line: 876, baseType: !918, size: 64, offset: 6784)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !920, line: 26, size: 192, elements: !921)
!920 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!921 = !{!922, !923}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !919, file: !920, line: 27, baseType: !7, size: 32)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !919, file: !920, line: 28, baseType: !924, size: 128, offset: 64)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !925, line: 43, size: 128, elements: !926)
!925 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!926 = !{!927, !928}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !924, file: !925, line: 44, baseType: !522)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !924, file: !925, line: 45, baseType: !309, size: 128)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !618, file: !619, line: 879, baseType: !930, size: 64, offset: 6848)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !618, file: !619, line: 882, baseType: !930, size: 64, offset: 6912)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !618, file: !619, line: 884, baseType: !171, size: 64, offset: 6976)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !618, file: !619, line: 885, baseType: !171, size: 64, offset: 7040)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !618, file: !619, line: 890, baseType: !171, size: 64, offset: 7104)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !618, file: !619, line: 891, baseType: !936, size: 128, offset: 7168)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !619, line: 242, size: 128, elements: !937)
!937 = !{!938, !939, !940}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !936, file: !619, line: 244, baseType: !171, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !936, file: !619, line: 245, baseType: !171, size: 64, offset: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !936, file: !619, line: 246, baseType: !522, offset: 128)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !618, file: !619, line: 900, baseType: !225, size: 64, offset: 7296)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !618, file: !619, line: 901, baseType: !225, size: 64, offset: 7360)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !618, file: !619, line: 904, baseType: !171, size: 64, offset: 7424)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !618, file: !619, line: 907, baseType: !171, size: 64, offset: 7488)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !618, file: !619, line: 910, baseType: !225, size: 64, offset: 7552)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !618, file: !619, line: 911, baseType: !225, size: 64, offset: 7616)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !618, file: !619, line: 914, baseType: !948, size: 640, offset: 7680)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !949, line: 123, size: 640, elements: !950)
!949 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!950 = !{!951, !957, !958}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !948, file: !949, line: 124, baseType: !952, size: 576)
!952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !953, size: 576, elements: !364)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !949, line: 108, size: 192, elements: !954)
!954 = !{!955, !956}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !953, file: !949, line: 109, baseType: !171, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !953, file: !949, line: 110, baseType: !747, size: 128, offset: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !948, file: !949, line: 125, baseType: !7, size: 32, offset: 576)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !948, file: !949, line: 126, baseType: !7, size: 32, offset: 608)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !618, file: !619, line: 917, baseType: !960, size: 192, offset: 8320)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !949, line: 134, size: 192, elements: !961)
!961 = !{!962, !963}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !960, file: !949, line: 135, baseType: !897, size: 128, align: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !960, file: !949, line: 136, baseType: !7, size: 32, offset: 128)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !618, file: !619, line: 923, baseType: !965, size: 64, offset: 8512)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !967)
!967 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !968, line: 11, flags: DIFlagFwdDecl)
!968 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/lizy2001/genbc/linux")
!969 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !618, file: !619, line: 926, baseType: !965, size: 64, offset: 8576)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !618, file: !619, line: 929, baseType: !965, size: 64, offset: 8640)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !618, file: !619, line: 933, baseType: !972, size: 64, offset: 8704)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !619, line: 933, flags: DIFlagFwdDecl)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !618, file: !619, line: 943, baseType: !975, size: 128, offset: 8768)
!975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 128, elements: !276)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !618, file: !619, line: 945, baseType: !977, size: 64, offset: 8896)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !619, line: 49, flags: DIFlagFwdDecl)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !618, file: !619, line: 956, baseType: !980, size: 64, offset: 8960)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !619, line: 45, flags: DIFlagFwdDecl)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !618, file: !619, line: 959, baseType: !983, size: 64, offset: 9024)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !619, line: 959, flags: DIFlagFwdDecl)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !618, file: !619, line: 962, baseType: !986, size: 64, offset: 9088)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !619, line: 66, flags: DIFlagFwdDecl)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !618, file: !619, line: 966, baseType: !989, size: 64, offset: 9152)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !991, line: 35, flags: DIFlagFwdDecl)
!991 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!992 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !618, file: !619, line: 969, baseType: !993, size: 64, offset: 9216)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !949, line: 223, flags: DIFlagFwdDecl)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !618, file: !619, line: 970, baseType: !996, size: 64, offset: 9280)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !619, line: 62, flags: DIFlagFwdDecl)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !618, file: !619, line: 971, baseType: !999, size: 64, offset: 9344)
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1000, line: 25, baseType: !1001)
!1000 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1000, line: 23, size: 64, elements: !1002)
!1002 = !{!1003}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1001, file: !1000, line: 24, baseType: !224, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !618, file: !619, line: 972, baseType: !999, size: 64, offset: 9408)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !618, file: !619, line: 974, baseType: !999, size: 64, offset: 9472)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !618, file: !619, line: 975, baseType: !1007, size: 192, offset: 9536)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1008, line: 30, size: 192, elements: !1009)
!1008 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1009 = !{!1010, !1011}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1007, file: !1008, line: 31, baseType: !309, size: 128)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1007, file: !1008, line: 32, baseType: !999, size: 64, offset: 128)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !618, file: !619, line: 976, baseType: !225, size: 64, offset: 9728)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !618, file: !619, line: 977, baseType: !409, size: 64, offset: 9792)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !618, file: !619, line: 978, baseType: !7, size: 32, offset: 9856)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !618, file: !619, line: 980, baseType: !900, size: 64, offset: 9920)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !618, file: !619, line: 989, baseType: !1017, size: 128, offset: 9984)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1018, line: 35, size: 128, elements: !1019)
!1018 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1019 = !{!1020, !1021, !1022}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1017, file: !1018, line: 36, baseType: !116, size: 32)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1017, file: !1018, line: 37, baseType: !497, size: 32, offset: 32)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1017, file: !1018, line: 38, baseType: !1023, size: 64, offset: 64)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1018, line: 23, flags: DIFlagFwdDecl)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !618, file: !619, line: 992, baseType: !171, size: 64, offset: 10112)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !618, file: !619, line: 993, baseType: !171, size: 64, offset: 10176)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !618, file: !619, line: 996, baseType: !322, offset: 10240)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !618, file: !619, line: 999, baseType: !522, offset: 10240)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !618, file: !619, line: 1001, baseType: !1030, size: 64, offset: 10240)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !619, line: 636, size: 64, elements: !1031)
!1031 = !{!1032}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1030, file: !619, line: 637, baseType: !1033, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !618, file: !619, line: 1005, baseType: !750, size: 128, offset: 10304)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !618, file: !619, line: 1007, baseType: !617, size: 64, offset: 10432)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !618, file: !619, line: 1009, baseType: !1037, size: 64, offset: 10496)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !619, line: 1009, flags: DIFlagFwdDecl)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !618, file: !619, line: 1043, baseType: !104, size: 64, offset: 10560)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !618, file: !619, line: 1046, baseType: !1041, size: 64, offset: 10624)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !619, line: 41, flags: DIFlagFwdDecl)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !618, file: !619, line: 1050, baseType: !1044, size: 64, offset: 10688)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !619, line: 42, flags: DIFlagFwdDecl)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !618, file: !619, line: 1054, baseType: !1047, size: 64, offset: 10752)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !619, line: 55, flags: DIFlagFwdDecl)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !618, file: !619, line: 1056, baseType: !1050, size: 64, offset: 10816)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !619, line: 40, flags: DIFlagFwdDecl)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !618, file: !619, line: 1058, baseType: !1053, size: 64, offset: 10880)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !619, line: 47, flags: DIFlagFwdDecl)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !618, file: !619, line: 1061, baseType: !1056, size: 64, offset: 10944)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !619, line: 43, flags: DIFlagFwdDecl)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !618, file: !619, line: 1064, baseType: !225, size: 64, offset: 11008)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !618, file: !619, line: 1065, baseType: !1060, size: 64, offset: 11072)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1008, line: 14, baseType: !1062)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1008, line: 12, size: 384, elements: !1063)
!1063 = !{!1064}
!1064 = !DIDerivedType(tag: DW_TAG_member, scope: !1062, file: !1008, line: 13, baseType: !1065, size: 384)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1062, file: !1008, line: 13, size: 384, elements: !1066)
!1066 = !{!1067, !1068, !1069, !1070}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1065, file: !1008, line: 13, baseType: !116, size: 32)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1065, file: !1008, line: 13, baseType: !116, size: 32, offset: 32)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1065, file: !1008, line: 13, baseType: !116, size: 32, offset: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1065, file: !1008, line: 13, baseType: !1071, size: 256, offset: 128)
!1071 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1072, line: 32, size: 256, elements: !1073)
!1072 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1073 = !{!1074, !1080, !1093, !1099, !1108, !1128, !1133}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1071, file: !1072, line: 37, baseType: !1075, size: 64)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1071, file: !1072, line: 34, size: 64, elements: !1076)
!1076 = !{!1077, !1078}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1075, file: !1072, line: 35, baseType: !859, size: 32)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1075, file: !1072, line: 36, baseType: !1079, size: 32, offset: 32)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !396, line: 49, baseType: !7)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1071, file: !1072, line: 45, baseType: !1081, size: 192)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1071, file: !1072, line: 40, size: 192, elements: !1082)
!1082 = !{!1083, !1085, !1086, !1092}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1081, file: !1072, line: 41, baseType: !1084, size: 32)
!1084 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !396, line: 95, baseType: !116)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1081, file: !1072, line: 42, baseType: !116, size: 32, offset: 32)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1081, file: !1072, line: 43, baseType: !1087, size: 64, offset: 64)
!1087 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1072, line: 11, baseType: !1088)
!1088 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1072, line: 8, size: 64, elements: !1089)
!1089 = !{!1090, !1091}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1088, file: !1072, line: 9, baseType: !116, size: 32)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1088, file: !1072, line: 10, baseType: !104, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1081, file: !1072, line: 44, baseType: !116, size: 32, offset: 128)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1071, file: !1072, line: 52, baseType: !1094, size: 128)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1071, file: !1072, line: 48, size: 128, elements: !1095)
!1095 = !{!1096, !1097, !1098}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1094, file: !1072, line: 49, baseType: !859, size: 32)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1094, file: !1072, line: 50, baseType: !1079, size: 32, offset: 32)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1094, file: !1072, line: 51, baseType: !1087, size: 64, offset: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1071, file: !1072, line: 61, baseType: !1100, size: 256)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1071, file: !1072, line: 55, size: 256, elements: !1101)
!1101 = !{!1102, !1103, !1104, !1105, !1107}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1100, file: !1072, line: 56, baseType: !859, size: 32)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1100, file: !1072, line: 57, baseType: !1079, size: 32, offset: 32)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1100, file: !1072, line: 58, baseType: !116, size: 32, offset: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1100, file: !1072, line: 59, baseType: !1106, size: 64, offset: 128)
!1106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !396, line: 94, baseType: !397)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1100, file: !1072, line: 60, baseType: !1106, size: 64, offset: 192)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1071, file: !1072, line: 95, baseType: !1109, size: 256)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1071, file: !1072, line: 64, size: 256, elements: !1110)
!1110 = !{!1111, !1112}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1109, file: !1072, line: 65, baseType: !104, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, scope: !1109, file: !1072, line: 77, baseType: !1113, size: 192, offset: 64)
!1113 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1109, file: !1072, line: 77, size: 192, elements: !1114)
!1114 = !{!1115, !1116, !1123}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1113, file: !1072, line: 82, baseType: !606, size: 16)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1113, file: !1072, line: 88, baseType: !1117, size: 192)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1113, file: !1072, line: 84, size: 192, elements: !1118)
!1118 = !{!1119, !1121, !1122}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1117, file: !1072, line: 85, baseType: !1120, size: 64)
!1120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 64, elements: !158)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1117, file: !1072, line: 86, baseType: !104, size: 64, offset: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1117, file: !1072, line: 87, baseType: !104, size: 64, offset: 128)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1113, file: !1072, line: 93, baseType: !1124, size: 96)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1113, file: !1072, line: 90, size: 96, elements: !1125)
!1125 = !{!1126, !1127}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1124, file: !1072, line: 91, baseType: !1120, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1124, file: !1072, line: 92, baseType: !108, size: 32, offset: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1071, file: !1072, line: 101, baseType: !1129, size: 128)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1071, file: !1072, line: 98, size: 128, elements: !1130)
!1130 = !{!1131, !1132}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1129, file: !1072, line: 99, baseType: !398, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1129, file: !1072, line: 100, baseType: !116, size: 32, offset: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1071, file: !1072, line: 108, baseType: !1134, size: 128)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1071, file: !1072, line: 104, size: 128, elements: !1135)
!1135 = !{!1136, !1137, !1138}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1134, file: !1072, line: 105, baseType: !104, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1134, file: !1072, line: 106, baseType: !116, size: 32, offset: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1134, file: !1072, line: 107, baseType: !7, size: 32, offset: 96)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !618, file: !619, line: 1067, baseType: !1140, offset: 11136)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1141, line: 12, elements: !336)
!1141 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !618, file: !619, line: 1099, baseType: !1143, size: 64, offset: 11136)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !619, line: 56, flags: DIFlagFwdDecl)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !618, file: !619, line: 1103, baseType: !309, size: 128, offset: 11200)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !618, file: !619, line: 1104, baseType: !1147, size: 64, offset: 11328)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !619, line: 46, flags: DIFlagFwdDecl)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !618, file: !619, line: 1105, baseType: !574, size: 192, offset: 11392)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !618, file: !619, line: 1106, baseType: !7, size: 32, offset: 11584)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !618, file: !619, line: 1109, baseType: !1152, size: 128, offset: 11648)
!1152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1153, size: 128, elements: !1155)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !619, line: 51, flags: DIFlagFwdDecl)
!1155 = !{!1156}
!1156 = !DISubrange(count: 2)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !618, file: !619, line: 1110, baseType: !574, size: 192, offset: 11776)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !618, file: !619, line: 1111, baseType: !309, size: 128, offset: 11968)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !618, file: !619, line: 1173, baseType: !1160, size: 64, offset: 12096)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1162, line: 62, size: 256, align: 256, elements: !1163)
!1162 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1163 = !{!1164, !1165, !1166, !1171}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1161, file: !1162, line: 75, baseType: !108, size: 32)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1161, file: !1162, line: 90, baseType: !108, size: 32, offset: 32)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1161, file: !1162, line: 124, baseType: !1167, size: 64, offset: 64)
!1167 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1161, file: !1162, line: 109, size: 64, elements: !1168)
!1168 = !{!1169, !1170}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1167, file: !1162, line: 110, baseType: !172, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1167, file: !1162, line: 112, baseType: !172, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1161, file: !1162, line: 144, baseType: !108, size: 32, offset: 128)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !618, file: !619, line: 1174, baseType: !106, size: 32, offset: 12160)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !618, file: !619, line: 1179, baseType: !225, size: 64, offset: 12224)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !618, file: !619, line: 1182, baseType: !1175, size: 128, offset: 12288)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !552, line: 76, size: 128, elements: !1176)
!1176 = !{!1177, !1182, !1183}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1175, file: !552, line: 85, baseType: !1178, size: 64)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1179, line: 7, size: 64, elements: !1180)
!1179 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1180 = !{!1181}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1178, file: !1179, line: 12, baseType: !221, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1175, file: !552, line: 88, baseType: !263, size: 8, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1175, file: !552, line: 95, baseType: !263, size: 8, offset: 72)
!1184 = !DIDerivedType(tag: DW_TAG_member, scope: !618, file: !619, line: 1184, baseType: !1185, size: 128, offset: 12416)
!1185 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !618, file: !619, line: 1184, size: 128, elements: !1186)
!1186 = !{!1187, !1188}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1185, file: !619, line: 1185, baseType: !631, size: 32)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1185, file: !619, line: 1186, baseType: !897, size: 128, align: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !618, file: !619, line: 1190, baseType: !1190, size: 64, offset: 12544)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !619, line: 53, flags: DIFlagFwdDecl)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !618, file: !619, line: 1192, baseType: !1193, size: 128, offset: 12608)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !552, line: 64, size: 128, elements: !1194)
!1194 = !{!1195, !1288, !1289}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1193, file: !552, line: 65, baseType: !1196, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !452, line: 68, size: 512, align: 128, elements: !1198)
!1198 = !{!1199, !1200, !1280, !1287}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1197, file: !452, line: 69, baseType: !225, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, scope: !1197, file: !452, line: 77, baseType: !1201, size: 320, offset: 64)
!1201 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1197, file: !452, line: 77, size: 320, elements: !1202)
!1202 = !{!1203, !1212, !1217, !1245, !1253, !1259, !1272, !1279}
!1203 = !DIDerivedType(tag: DW_TAG_member, scope: !1201, file: !452, line: 78, baseType: !1204, size: 320)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1201, file: !452, line: 78, size: 320, elements: !1205)
!1205 = !{!1206, !1207, !1210, !1211}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1204, file: !452, line: 84, baseType: !309, size: 128)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1204, file: !452, line: 86, baseType: !1208, size: 64, offset: 128)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !452, line: 26, flags: DIFlagFwdDecl)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1204, file: !452, line: 87, baseType: !225, size: 64, offset: 192)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1204, file: !452, line: 94, baseType: !225, size: 64, offset: 256)
!1212 = !DIDerivedType(tag: DW_TAG_member, scope: !1201, file: !452, line: 96, baseType: !1213, size: 64)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1201, file: !452, line: 96, size: 64, elements: !1214)
!1214 = !{!1215}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1213, file: !452, line: 101, baseType: !1216, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !95, line: 143, baseType: !171)
!1217 = !DIDerivedType(tag: DW_TAG_member, scope: !1201, file: !452, line: 103, baseType: !1218, size: 320)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1201, file: !452, line: 103, size: 320, elements: !1219)
!1219 = !{!1220, !1230, !1233, !1234}
!1220 = !DIDerivedType(tag: DW_TAG_member, scope: !1218, file: !452, line: 104, baseType: !1221, size: 128)
!1221 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1218, file: !452, line: 104, size: 128, elements: !1222)
!1222 = !{!1223, !1224}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1221, file: !452, line: 105, baseType: !309, size: 128)
!1224 = !DIDerivedType(tag: DW_TAG_member, scope: !1221, file: !452, line: 106, baseType: !1225, size: 128)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1221, file: !452, line: 106, size: 128, elements: !1226)
!1226 = !{!1227, !1228, !1229}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1225, file: !452, line: 107, baseType: !1196, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1225, file: !452, line: 109, baseType: !116, size: 32, offset: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1225, file: !452, line: 110, baseType: !116, size: 32, offset: 96)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1218, file: !452, line: 117, baseType: !1231, size: 64, offset: 128)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !452, line: 117, flags: DIFlagFwdDecl)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1218, file: !452, line: 119, baseType: !104, size: 64, offset: 192)
!1234 = !DIDerivedType(tag: DW_TAG_member, scope: !1218, file: !452, line: 120, baseType: !1235, size: 64, offset: 256)
!1235 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1218, file: !452, line: 120, size: 64, elements: !1236)
!1236 = !{!1237, !1238, !1239}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1235, file: !452, line: 121, baseType: !104, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1235, file: !452, line: 122, baseType: !225, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, scope: !1235, file: !452, line: 123, baseType: !1240, size: 32)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1235, file: !452, line: 123, size: 32, elements: !1241)
!1241 = !{!1242, !1243, !1244}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1240, file: !452, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1240, file: !452, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1240, file: !452, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1245 = !DIDerivedType(tag: DW_TAG_member, scope: !1201, file: !452, line: 130, baseType: !1246, size: 192)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1201, file: !452, line: 130, size: 192, elements: !1247)
!1247 = !{!1248, !1249, !1250, !1251, !1252}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1246, file: !452, line: 131, baseType: !225, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1246, file: !452, line: 134, baseType: !124, size: 8, offset: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1246, file: !452, line: 135, baseType: !124, size: 8, offset: 72)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1246, file: !452, line: 136, baseType: !497, size: 32, offset: 96)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1246, file: !452, line: 137, baseType: !7, size: 32, offset: 128)
!1253 = !DIDerivedType(tag: DW_TAG_member, scope: !1201, file: !452, line: 139, baseType: !1254, size: 256)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1201, file: !452, line: 139, size: 256, elements: !1255)
!1255 = !{!1256, !1257, !1258}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1254, file: !452, line: 140, baseType: !225, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1254, file: !452, line: 141, baseType: !497, size: 32, offset: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1254, file: !452, line: 143, baseType: !309, size: 128, offset: 128)
!1259 = !DIDerivedType(tag: DW_TAG_member, scope: !1201, file: !452, line: 145, baseType: !1260, size: 256)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1201, file: !452, line: 145, size: 256, elements: !1261)
!1261 = !{!1262, !1263, !1265, !1266, !1271}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1260, file: !452, line: 146, baseType: !225, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1260, file: !452, line: 147, baseType: !1264, size: 64, offset: 64)
!1264 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !441, line: 509, baseType: !1196)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1260, file: !452, line: 148, baseType: !225, size: 64, offset: 128)
!1266 = !DIDerivedType(tag: DW_TAG_member, scope: !1260, file: !452, line: 149, baseType: !1267, size: 64, offset: 192)
!1267 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1260, file: !452, line: 149, size: 64, elements: !1268)
!1268 = !{!1269, !1270}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1267, file: !452, line: 150, baseType: !468, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1267, file: !452, line: 151, baseType: !497, size: 32)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1260, file: !452, line: 156, baseType: !322, offset: 256)
!1272 = !DIDerivedType(tag: DW_TAG_member, scope: !1201, file: !452, line: 159, baseType: !1273, size: 128)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1201, file: !452, line: 159, size: 128, elements: !1274)
!1274 = !{!1275, !1278}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1273, file: !452, line: 161, baseType: !1276, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !452, line: 161, flags: DIFlagFwdDecl)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1273, file: !452, line: 162, baseType: !104, size: 64, offset: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1201, file: !452, line: 176, baseType: !897, size: 128, align: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, scope: !1197, file: !452, line: 179, baseType: !1281, size: 32, offset: 384)
!1281 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1197, file: !452, line: 179, size: 32, elements: !1282)
!1282 = !{!1283, !1284, !1285, !1286}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1281, file: !452, line: 184, baseType: !497, size: 32)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1281, file: !452, line: 192, baseType: !7, size: 32)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1281, file: !452, line: 194, baseType: !7, size: 32)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1281, file: !452, line: 195, baseType: !116, size: 32)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1197, file: !452, line: 199, baseType: !497, size: 32, offset: 416)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1193, file: !552, line: 67, baseType: !108, size: 32, offset: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1193, file: !552, line: 68, baseType: !108, size: 32, offset: 96)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !618, file: !619, line: 1206, baseType: !116, size: 32, offset: 12736)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !618, file: !619, line: 1207, baseType: !116, size: 32, offset: 12768)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !618, file: !619, line: 1209, baseType: !225, size: 64, offset: 12800)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !618, file: !619, line: 1219, baseType: !171, size: 64, offset: 12864)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !618, file: !619, line: 1220, baseType: !171, size: 64, offset: 12928)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !618, file: !619, line: 1317, baseType: !116, size: 32, offset: 12992)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !618, file: !619, line: 1319, baseType: !617, size: 64, offset: 13056)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !618, file: !619, line: 1322, baseType: !1298, size: 64, offset: 13120)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1300, line: 56, size: 512, elements: !1301)
!1300 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1301 = !{!1302, !1303, !1304, !1305, !1306, !1308, !1309, !1311}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1299, file: !1300, line: 57, baseType: !1298, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1299, file: !1300, line: 58, baseType: !104, size: 64, offset: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1299, file: !1300, line: 59, baseType: !225, size: 64, offset: 128)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1299, file: !1300, line: 60, baseType: !225, size: 64, offset: 192)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1299, file: !1300, line: 61, baseType: !1307, size: 64, offset: 256)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1299, file: !1300, line: 62, baseType: !7, size: 32, offset: 320)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1299, file: !1300, line: 63, baseType: !1310, size: 64, offset: 384)
!1310 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !95, line: 153, baseType: !171)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1299, file: !1300, line: 64, baseType: !1312, size: 64, offset: 448)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !618, file: !619, line: 1326, baseType: !631, size: 32, offset: 13184)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !618, file: !619, line: 1342, baseType: !104, size: 64, offset: 13248)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !618, file: !619, line: 1343, baseType: !172, size: 64, offset: 13312)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !618, file: !619, line: 1344, baseType: !171, size: 64, offset: 13376)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !618, file: !619, line: 1345, baseType: !172, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !618, file: !619, line: 1346, baseType: !172, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !618, file: !619, line: 1347, baseType: !172, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !618, file: !619, line: 1348, baseType: !897, size: 128, align: 64, offset: 13504)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !618, file: !619, line: 1358, baseType: !1323, size: 34816, offset: 13824)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1324, line: 485, size: 34816, elements: !1325)
!1324 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1325 = !{!1326, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1355, !1356, !1357, !1358, !1359, !1360, !1363, !1364, !1365}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1323, file: !1324, line: 487, baseType: !1327, size: 192)
!1327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1328, size: 192, elements: !364)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1329, line: 16, size: 64, elements: !1330)
!1329 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1330 = !{!1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1328, file: !1329, line: 17, baseType: !189, size: 16)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1328, file: !1329, line: 18, baseType: !189, size: 16, offset: 16)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1328, file: !1329, line: 19, baseType: !189, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1328, file: !1329, line: 19, baseType: !189, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1328, file: !1329, line: 19, baseType: !189, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1328, file: !1329, line: 19, baseType: !189, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1328, file: !1329, line: 19, baseType: !189, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1328, file: !1329, line: 20, baseType: !189, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1328, file: !1329, line: 20, baseType: !189, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1328, file: !1329, line: 20, baseType: !189, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1328, file: !1329, line: 20, baseType: !189, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1328, file: !1329, line: 20, baseType: !189, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1328, file: !1329, line: 20, baseType: !189, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1323, file: !1324, line: 491, baseType: !225, size: 64, offset: 192)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1323, file: !1324, line: 495, baseType: !191, size: 16, offset: 256)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1323, file: !1324, line: 496, baseType: !191, size: 16, offset: 272)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1323, file: !1324, line: 497, baseType: !191, size: 16, offset: 288)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1323, file: !1324, line: 498, baseType: !191, size: 16, offset: 304)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1323, file: !1324, line: 502, baseType: !225, size: 64, offset: 320)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1323, file: !1324, line: 503, baseType: !225, size: 64, offset: 384)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1323, file: !1324, line: 514, baseType: !1352, size: 256, offset: 448)
!1352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1353, size: 256, elements: !556)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1324, line: 483, flags: DIFlagFwdDecl)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1323, file: !1324, line: 516, baseType: !225, size: 64, offset: 704)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1323, file: !1324, line: 518, baseType: !225, size: 64, offset: 768)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1323, file: !1324, line: 520, baseType: !225, size: 64, offset: 832)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1323, file: !1324, line: 521, baseType: !225, size: 64, offset: 896)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1323, file: !1324, line: 522, baseType: !225, size: 64, offset: 960)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1323, file: !1324, line: 528, baseType: !1361, size: 64, offset: 1024)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1324, line: 10, flags: DIFlagFwdDecl)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1323, file: !1324, line: 535, baseType: !225, size: 64, offset: 1088)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1323, file: !1324, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1323, file: !1324, line: 540, baseType: !1366, size: 33280, offset: 1536)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1367, line: 317, size: 33280, elements: !1368)
!1367 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1368 = !{!1369, !1370, !1371}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1366, file: !1367, line: 330, baseType: !7, size: 32)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1366, file: !1367, line: 337, baseType: !225, size: 64, offset: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1366, file: !1367, line: 348, baseType: !1372, size: 32768, offset: 512)
!1372 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1367, line: 304, size: 32768, elements: !1373)
!1373 = !{!1374, !1387, !1424, !1474, !1491}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1372, file: !1367, line: 305, baseType: !1375, size: 896)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1367, line: 12, size: 896, elements: !1376)
!1376 = !{!1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1386}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1375, file: !1367, line: 13, baseType: !106, size: 32)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1375, file: !1367, line: 14, baseType: !106, size: 32, offset: 32)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1375, file: !1367, line: 15, baseType: !106, size: 32, offset: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1375, file: !1367, line: 16, baseType: !106, size: 32, offset: 96)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1375, file: !1367, line: 17, baseType: !106, size: 32, offset: 128)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1375, file: !1367, line: 18, baseType: !106, size: 32, offset: 160)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1375, file: !1367, line: 19, baseType: !106, size: 32, offset: 192)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1375, file: !1367, line: 22, baseType: !1385, size: 640, offset: 224)
!1385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 640, elements: !296)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1375, file: !1367, line: 25, baseType: !106, size: 32, offset: 864)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1372, file: !1367, line: 306, baseType: !1388, size: 4096, align: 128)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1367, line: 34, size: 4096, align: 128, elements: !1389)
!1389 = !{!1390, !1391, !1392, !1393, !1394, !1409, !1410, !1411, !1413, !1415, !1419}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1388, file: !1367, line: 35, baseType: !189, size: 16)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1388, file: !1367, line: 36, baseType: !189, size: 16, offset: 16)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1388, file: !1367, line: 37, baseType: !189, size: 16, offset: 32)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1388, file: !1367, line: 38, baseType: !189, size: 16, offset: 48)
!1394 = !DIDerivedType(tag: DW_TAG_member, scope: !1388, file: !1367, line: 39, baseType: !1395, size: 128, offset: 64)
!1395 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1388, file: !1367, line: 39, size: 128, elements: !1396)
!1396 = !{!1397, !1402}
!1397 = !DIDerivedType(tag: DW_TAG_member, scope: !1395, file: !1367, line: 40, baseType: !1398, size: 128)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1395, file: !1367, line: 40, size: 128, elements: !1399)
!1399 = !{!1400, !1401}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1398, file: !1367, line: 41, baseType: !171, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1398, file: !1367, line: 42, baseType: !171, size: 64, offset: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, scope: !1395, file: !1367, line: 44, baseType: !1403, size: 128)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1395, file: !1367, line: 44, size: 128, elements: !1404)
!1404 = !{!1405, !1406, !1407, !1408}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1403, file: !1367, line: 45, baseType: !106, size: 32)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1403, file: !1367, line: 46, baseType: !106, size: 32, offset: 32)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1403, file: !1367, line: 47, baseType: !106, size: 32, offset: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1403, file: !1367, line: 48, baseType: !106, size: 32, offset: 96)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1388, file: !1367, line: 51, baseType: !106, size: 32, offset: 192)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1388, file: !1367, line: 52, baseType: !106, size: 32, offset: 224)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1388, file: !1367, line: 55, baseType: !1412, size: 1024, offset: 256)
!1412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 1024, elements: !156)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1388, file: !1367, line: 58, baseType: !1414, size: 2048, offset: 1280)
!1414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 2048, elements: !368)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1388, file: !1367, line: 60, baseType: !1416, size: 384, offset: 3328)
!1416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 384, elements: !1417)
!1417 = !{!1418}
!1418 = !DISubrange(count: 12)
!1419 = !DIDerivedType(tag: DW_TAG_member, scope: !1388, file: !1367, line: 62, baseType: !1420, size: 384, offset: 3712)
!1420 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1388, file: !1367, line: 62, size: 384, elements: !1421)
!1421 = !{!1422, !1423}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1420, file: !1367, line: 63, baseType: !1416, size: 384)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1420, file: !1367, line: 64, baseType: !1416, size: 384)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1372, file: !1367, line: 307, baseType: !1425, size: 1088)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1367, line: 79, size: 1088, elements: !1426)
!1426 = !{!1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1473}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1425, file: !1367, line: 80, baseType: !106, size: 32)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1425, file: !1367, line: 81, baseType: !106, size: 32, offset: 32)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1425, file: !1367, line: 82, baseType: !106, size: 32, offset: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1425, file: !1367, line: 83, baseType: !106, size: 32, offset: 96)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1425, file: !1367, line: 84, baseType: !106, size: 32, offset: 128)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1425, file: !1367, line: 85, baseType: !106, size: 32, offset: 160)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1425, file: !1367, line: 86, baseType: !106, size: 32, offset: 192)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1425, file: !1367, line: 88, baseType: !1385, size: 640, offset: 224)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1425, file: !1367, line: 89, baseType: !122, size: 8, offset: 864)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1425, file: !1367, line: 90, baseType: !122, size: 8, offset: 872)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1425, file: !1367, line: 91, baseType: !122, size: 8, offset: 880)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1425, file: !1367, line: 92, baseType: !122, size: 8, offset: 888)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1425, file: !1367, line: 93, baseType: !122, size: 8, offset: 896)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1425, file: !1367, line: 94, baseType: !122, size: 8, offset: 904)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1425, file: !1367, line: 95, baseType: !1442, size: 64, offset: 960)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1444, line: 11, size: 128, elements: !1445)
!1444 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1445 = !{!1446, !1447}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1443, file: !1444, line: 12, baseType: !398, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1443, file: !1444, line: 13, baseType: !1448, size: 64, offset: 64)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1450, line: 56, size: 1344, elements: !1451)
!1450 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1451 = !{!1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1449, file: !1450, line: 61, baseType: !225, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1449, file: !1450, line: 62, baseType: !225, size: 64, offset: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1449, file: !1450, line: 63, baseType: !225, size: 64, offset: 128)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1449, file: !1450, line: 64, baseType: !225, size: 64, offset: 192)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1449, file: !1450, line: 65, baseType: !225, size: 64, offset: 256)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1449, file: !1450, line: 66, baseType: !225, size: 64, offset: 320)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1449, file: !1450, line: 68, baseType: !225, size: 64, offset: 384)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1449, file: !1450, line: 69, baseType: !225, size: 64, offset: 448)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1449, file: !1450, line: 70, baseType: !225, size: 64, offset: 512)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1449, file: !1450, line: 71, baseType: !225, size: 64, offset: 576)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1449, file: !1450, line: 72, baseType: !225, size: 64, offset: 640)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1449, file: !1450, line: 73, baseType: !225, size: 64, offset: 704)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1449, file: !1450, line: 74, baseType: !225, size: 64, offset: 768)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1449, file: !1450, line: 75, baseType: !225, size: 64, offset: 832)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1449, file: !1450, line: 76, baseType: !225, size: 64, offset: 896)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1449, file: !1450, line: 81, baseType: !225, size: 64, offset: 960)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1449, file: !1450, line: 83, baseType: !225, size: 64, offset: 1024)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1449, file: !1450, line: 84, baseType: !225, size: 64, offset: 1088)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1449, file: !1450, line: 85, baseType: !225, size: 64, offset: 1152)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1449, file: !1450, line: 86, baseType: !225, size: 64, offset: 1216)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1449, file: !1450, line: 87, baseType: !225, size: 64, offset: 1280)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1425, file: !1367, line: 96, baseType: !106, size: 32, offset: 1024)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1372, file: !1367, line: 308, baseType: !1475, size: 4608, align: 512)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1367, line: 289, size: 4608, align: 512, elements: !1476)
!1476 = !{!1477, !1478, !1487}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1475, file: !1367, line: 290, baseType: !1388, size: 4096, align: 128)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1475, file: !1367, line: 291, baseType: !1479, size: 512, offset: 4096)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1367, line: 268, size: 512, elements: !1480)
!1480 = !{!1481, !1482, !1483}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1479, file: !1367, line: 269, baseType: !171, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1479, file: !1367, line: 270, baseType: !171, size: 64, offset: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1479, file: !1367, line: 271, baseType: !1484, size: 384, offset: 128)
!1484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 384, elements: !1485)
!1485 = !{!1486}
!1486 = !DISubrange(count: 6)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1475, file: !1367, line: 292, baseType: !1488, offset: 4608)
!1488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, elements: !1489)
!1489 = !{!1490}
!1490 = !DISubrange(count: 0)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1372, file: !1367, line: 309, baseType: !1492, size: 32768)
!1492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 32768, elements: !1493)
!1493 = !{!1494}
!1494 = !DISubrange(count: 4096)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !614, file: !452, line: 378, baseType: !1496, size: 64, offset: 64)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !610, file: !452, line: 384, baseType: !919, size: 192, offset: 192)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !472, file: !452, line: 500, baseType: !322, offset: 6656)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !472, file: !452, line: 501, baseType: !1500, size: 64, offset: 6656)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !452, line: 387, flags: DIFlagFwdDecl)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !472, file: !452, line: 516, baseType: !1503, size: 64, offset: 6720)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1505, line: 18, flags: DIFlagFwdDecl)
!1505 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !472, file: !452, line: 519, baseType: !439, size: 64, offset: 6784)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !472, file: !452, line: 521, baseType: !1508, size: 64, offset: 6848)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !452, line: 521, flags: DIFlagFwdDecl)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !472, file: !452, line: 545, baseType: !497, size: 32, offset: 6912)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !472, file: !452, line: 548, baseType: !263, size: 8, offset: 6944)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !472, file: !452, line: 550, baseType: !1513, offset: 6952)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1514, line: 142, elements: !336)
!1514 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !472, file: !452, line: 554, baseType: !1516, size: 256, offset: 6976)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1517, line: 102, size: 256, elements: !1518)
!1517 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1518 = !{!1519, !1520, !1521}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1516, file: !1517, line: 103, baseType: !505, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1516, file: !1517, line: 104, baseType: !309, size: 128, offset: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1516, file: !1517, line: 105, baseType: !1522, size: 64, offset: 192)
!1522 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1517, line: 21, baseType: !1523)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{null, !1526}
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !472, file: !452, line: 557, baseType: !106, size: 32, offset: 7232)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !469, file: !452, line: 565, baseType: !1529, offset: 7296)
!1529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, elements: !1530)
!1530 = !{!1531}
!1531 = !DISubrange(count: -1)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !451, file: !452, line: 333, baseType: !1533, size: 64, offset: 576)
!1533 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !441, line: 284, baseType: !1534)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !441, line: 284, size: 64, elements: !1535)
!1535 = !{!1536}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1534, file: !441, line: 284, baseType: !1537, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !495, line: 19, baseType: !225)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !451, file: !452, line: 334, baseType: !225, size: 64, offset: 640)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !451, file: !452, line: 343, baseType: !1540, size: 256, offset: 704)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !451, file: !452, line: 340, size: 256, elements: !1541)
!1541 = !{!1542, !1543}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1540, file: !452, line: 341, baseType: !459, size: 192, align: 64)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1540, file: !452, line: 342, baseType: !225, size: 64, offset: 192)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !451, file: !452, line: 351, baseType: !309, size: 128, offset: 960)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !451, file: !452, line: 353, baseType: !1546, size: 64, offset: 1088)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !452, line: 353, flags: DIFlagFwdDecl)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !451, file: !452, line: 356, baseType: !1549, size: 64, offset: 1152)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1551)
!1551 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !452, line: 356, flags: DIFlagFwdDecl)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !451, file: !452, line: 359, baseType: !225, size: 64, offset: 1216)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !451, file: !452, line: 361, baseType: !439, size: 64, offset: 1280)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !451, file: !452, line: 362, baseType: !104, size: 64, offset: 1344)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !451, file: !452, line: 365, baseType: !505, size: 64, offset: 1408)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !451, file: !452, line: 373, baseType: !1557, offset: 1472)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !452, line: 296, elements: !336)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !418, file: !388, line: 90, baseType: !413, size: 64, offset: 192)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !418, file: !388, line: 91, baseType: !1560, size: 64, offset: 256)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !378, file: !303, line: 143, baseType: !1562, size: 64, offset: 256)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!1565, !315}
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1567)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1568)
!1568 = !{!1569, !1570, !1574, !1578, !1584, !1588}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1567, file: !18, line: 40, baseType: !17, size: 32)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1567, file: !18, line: 41, baseType: !1571, size: 64, offset: 64)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!263}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1567, file: !18, line: 42, baseType: !1575, size: 64, offset: 128)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{!104}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1567, file: !18, line: 43, baseType: !1579, size: 64, offset: 192)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!1312, !1582}
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1567, file: !18, line: 44, baseType: !1585, size: 64, offset: 256)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!1312}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1567, file: !18, line: 45, baseType: !1589, size: 64, offset: 320)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{null, !104}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !378, file: !303, line: 144, baseType: !1593, size: 64, offset: 320)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!1312, !315}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !378, file: !303, line: 145, baseType: !1597, size: 64, offset: 384)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{null, !315, !1600, !1606}
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1505, line: 23, baseType: !1602)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1505, line: 21, size: 32, elements: !1603)
!1603 = !{!1604}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1602, file: !1505, line: 22, baseType: !1605, size: 32)
!1605 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !95, line: 32, baseType: !1079)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1505, line: 28, baseType: !1608)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1505, line: 26, size: 32, elements: !1609)
!1609 = !{!1610}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1608, file: !1505, line: 27, baseType: !1611, size: 32)
!1611 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !95, line: 33, baseType: !1612)
!1612 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !396, line: 50, baseType: !7)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !302, file: !303, line: 70, baseType: !1614, size: 64, offset: 384)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1616, line: 123, size: 1024, elements: !1617)
!1616 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1617 = !{!1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1759, !1760, !1761, !1762, !1763}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1615, file: !1616, line: 124, baseType: !497, size: 32)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1615, file: !1616, line: 125, baseType: !497, size: 32, offset: 32)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1615, file: !1616, line: 135, baseType: !1614, size: 64, offset: 64)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1615, file: !1616, line: 136, baseType: !306, size: 64, offset: 128)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1615, file: !1616, line: 138, baseType: !459, size: 192, align: 64, offset: 192)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1615, file: !1616, line: 140, baseType: !1312, size: 64, offset: 384)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1615, file: !1616, line: 141, baseType: !7, size: 32, offset: 448)
!1625 = !DIDerivedType(tag: DW_TAG_member, scope: !1615, file: !1616, line: 142, baseType: !1626, size: 256, offset: 512)
!1626 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1615, file: !1616, line: 142, size: 256, elements: !1627)
!1627 = !{!1628, !1682, !1686}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1626, file: !1616, line: 143, baseType: !1629, size: 192)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1616, line: 91, size: 192, elements: !1630)
!1630 = !{!1631, !1632, !1633}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1629, file: !1616, line: 92, baseType: !225, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1629, file: !1616, line: 94, baseType: !476, size: 64, offset: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1629, file: !1616, line: 100, baseType: !1634, size: 64, offset: 128)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1616, line: 180, size: 704, elements: !1636)
!1636 = !{!1637, !1638, !1639, !1652, !1653, !1654, !1680, !1681}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1635, file: !1616, line: 182, baseType: !1614, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1635, file: !1616, line: 183, baseType: !7, size: 32, offset: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1635, file: !1616, line: 186, baseType: !1640, size: 192, offset: 128)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1641, line: 19, size: 192, elements: !1642)
!1641 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1642 = !{!1643, !1650, !1651}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1640, file: !1641, line: 20, baseType: !1644, size: 128)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1645, line: 292, size: 128, elements: !1646)
!1645 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1646 = !{!1647, !1648, !1649}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1644, file: !1645, line: 293, baseType: !322)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1644, file: !1645, line: 295, baseType: !94, size: 32)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1644, file: !1645, line: 296, baseType: !104, size: 64, offset: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1640, file: !1641, line: 21, baseType: !7, size: 32, offset: 128)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1640, file: !1641, line: 22, baseType: !7, size: 32, offset: 160)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1635, file: !1616, line: 187, baseType: !106, size: 32, offset: 320)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1635, file: !1616, line: 188, baseType: !106, size: 32, offset: 352)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1635, file: !1616, line: 189, baseType: !1655, size: 64, offset: 384)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1616, line: 168, size: 320, elements: !1657)
!1657 = !{!1658, !1664, !1668, !1672, !1676}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1656, file: !1616, line: 169, baseType: !1659, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{!116, !1662, !1634}
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !441, line: 539, flags: DIFlagFwdDecl)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1656, file: !1616, line: 171, baseType: !1665, size: 64, offset: 64)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{!116, !1614, !306, !404}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1656, file: !1616, line: 173, baseType: !1669, size: 64, offset: 128)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!116, !1614}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1656, file: !1616, line: 174, baseType: !1673, size: 64, offset: 192)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!116, !1614, !1614, !306}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1656, file: !1616, line: 176, baseType: !1677, size: 64, offset: 256)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{!116, !1662, !1614, !1634}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1635, file: !1616, line: 192, baseType: !309, size: 128, offset: 448)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1635, file: !1616, line: 194, baseType: !890, size: 128, offset: 576)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1626, file: !1616, line: 144, baseType: !1683, size: 64)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1616, line: 103, size: 64, elements: !1684)
!1684 = !{!1685}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1683, file: !1616, line: 104, baseType: !1614, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1626, file: !1616, line: 145, baseType: !1687, size: 256)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1616, line: 107, size: 256, elements: !1688)
!1688 = !{!1689, !1754, !1757, !1758}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1687, file: !1616, line: 108, baseType: !1690, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1692)
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1616, line: 217, size: 768, elements: !1693)
!1693 = !{!1694, !1714, !1718, !1722, !1727, !1731, !1735, !1739, !1740, !1741, !1742, !1750}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1692, file: !1616, line: 222, baseType: !1695, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{!116, !1698}
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1616, line: 197, size: 1088, elements: !1700)
!1700 = !{!1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1699, file: !1616, line: 199, baseType: !1614, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1699, file: !1616, line: 200, baseType: !439, size: 64, offset: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1699, file: !1616, line: 201, baseType: !1662, size: 64, offset: 128)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1699, file: !1616, line: 202, baseType: !104, size: 64, offset: 192)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1699, file: !1616, line: 205, baseType: !574, size: 192, offset: 256)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1699, file: !1616, line: 206, baseType: !574, size: 192, offset: 448)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1699, file: !1616, line: 207, baseType: !116, size: 32, offset: 640)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1699, file: !1616, line: 208, baseType: !309, size: 128, offset: 704)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1699, file: !1616, line: 209, baseType: !363, size: 64, offset: 832)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1699, file: !1616, line: 211, baseType: !409, size: 64, offset: 896)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1699, file: !1616, line: 212, baseType: !263, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1699, file: !1616, line: 213, baseType: !263, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1699, file: !1616, line: 214, baseType: !1549, size: 64, offset: 1024)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1692, file: !1616, line: 223, baseType: !1715, size: 64, offset: 64)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{null, !1698}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1692, file: !1616, line: 236, baseType: !1719, size: 64, offset: 128)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{!116, !1662, !104}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1692, file: !1616, line: 238, baseType: !1723, size: 64, offset: 192)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{!104, !1662, !1726}
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1692, file: !1616, line: 239, baseType: !1728, size: 64, offset: 256)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{!104, !1662, !104, !1726}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1692, file: !1616, line: 240, baseType: !1732, size: 64, offset: 320)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{null, !1662, !104}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1692, file: !1616, line: 242, baseType: !1736, size: 64, offset: 384)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{!394, !1698, !363, !409, !442}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1692, file: !1616, line: 252, baseType: !409, size: 64, offset: 448)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1692, file: !1616, line: 259, baseType: !263, size: 8, offset: 512)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1692, file: !1616, line: 260, baseType: !1736, size: 64, offset: 576)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1692, file: !1616, line: 263, baseType: !1743, size: 64, offset: 640)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{!1746, !1698, !1748}
!1746 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1747, line: 52, baseType: !7)
!1747 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1616, line: 27, flags: DIFlagFwdDecl)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1692, file: !1616, line: 266, baseType: !1751, size: 64, offset: 704)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{!116, !1698, !450}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1687, file: !1616, line: 109, baseType: !1755, size: 64, offset: 64)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1616, line: 31, flags: DIFlagFwdDecl)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1687, file: !1616, line: 110, baseType: !442, size: 64, offset: 128)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1687, file: !1616, line: 111, baseType: !1614, size: 64, offset: 192)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1615, file: !1616, line: 148, baseType: !104, size: 64, offset: 768)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1615, file: !1616, line: 154, baseType: !171, size: 64, offset: 832)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1615, file: !1616, line: 156, baseType: !191, size: 16, offset: 896)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1615, file: !1616, line: 157, baseType: !404, size: 16, offset: 912)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1615, file: !1616, line: 158, baseType: !1764, size: 64, offset: 960)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1616, line: 32, flags: DIFlagFwdDecl)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !302, file: !303, line: 71, baseType: !1767, size: 32, offset: 448)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1768, line: 19, size: 32, elements: !1769)
!1768 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1769 = !{!1770}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1767, file: !1768, line: 20, baseType: !631, size: 32)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !302, file: !303, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !302, file: !303, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !302, file: !303, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !302, file: !303, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !302, file: !303, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !299, file: !30, line: 463, baseType: !1777, size: 64, offset: 512)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !299, file: !30, line: 465, baseType: !1779, size: 64, offset: 576)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !299, file: !30, line: 467, baseType: !306, size: 64, offset: 640)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !299, file: !30, line: 468, baseType: !1783, size: 64, offset: 704)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1785)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1786)
!1786 = !{!1787, !1788, !1789, !1793, !1798, !1802}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1785, file: !30, line: 88, baseType: !306, size: 64)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1785, file: !30, line: 89, baseType: !415, size: 64, offset: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1785, file: !30, line: 90, baseType: !1790, size: 64, offset: 128)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!116, !1777, !358}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1785, file: !30, line: 91, baseType: !1794, size: 64, offset: 192)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{!363, !1777, !1797, !1600, !1606}
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1785, file: !30, line: 93, baseType: !1799, size: 64, offset: 256)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DISubroutineType(types: !1801)
!1801 = !{null, !1777}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1785, file: !30, line: 95, baseType: !1803, size: 64, offset: 320)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1805)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1806)
!1806 = !{!1807, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1805, file: !37, line: 279, baseType: !1808, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{!116, !1777}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1805, file: !37, line: 280, baseType: !1799, size: 64, offset: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1805, file: !37, line: 281, baseType: !1808, size: 64, offset: 128)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1805, file: !37, line: 282, baseType: !1808, size: 64, offset: 192)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1805, file: !37, line: 283, baseType: !1808, size: 64, offset: 256)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1805, file: !37, line: 284, baseType: !1808, size: 64, offset: 320)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1805, file: !37, line: 285, baseType: !1808, size: 64, offset: 384)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1805, file: !37, line: 286, baseType: !1808, size: 64, offset: 448)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1805, file: !37, line: 287, baseType: !1808, size: 64, offset: 512)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1805, file: !37, line: 288, baseType: !1808, size: 64, offset: 576)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1805, file: !37, line: 289, baseType: !1808, size: 64, offset: 640)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1805, file: !37, line: 290, baseType: !1808, size: 64, offset: 704)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1805, file: !37, line: 291, baseType: !1808, size: 64, offset: 768)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1805, file: !37, line: 292, baseType: !1808, size: 64, offset: 832)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1805, file: !37, line: 293, baseType: !1808, size: 64, offset: 896)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1805, file: !37, line: 294, baseType: !1808, size: 64, offset: 960)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1805, file: !37, line: 295, baseType: !1808, size: 64, offset: 1024)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1805, file: !37, line: 296, baseType: !1808, size: 64, offset: 1088)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1805, file: !37, line: 297, baseType: !1808, size: 64, offset: 1152)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1805, file: !37, line: 298, baseType: !1808, size: 64, offset: 1216)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1805, file: !37, line: 299, baseType: !1808, size: 64, offset: 1280)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1805, file: !37, line: 300, baseType: !1808, size: 64, offset: 1344)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1805, file: !37, line: 301, baseType: !1808, size: 64, offset: 1408)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !299, file: !30, line: 470, baseType: !1834, size: 64, offset: 768)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1836, line: 82, size: 1408, elements: !1837)
!1836 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1837 = !{!1838, !1839, !1840, !1841, !1842, !1843, !1844, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1922, !1925, !1928}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1835, file: !1836, line: 83, baseType: !306, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1835, file: !1836, line: 84, baseType: !306, size: 64, offset: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1835, file: !1836, line: 85, baseType: !1777, size: 64, offset: 128)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1835, file: !1836, line: 86, baseType: !415, size: 64, offset: 192)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1835, file: !1836, line: 87, baseType: !415, size: 64, offset: 256)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1835, file: !1836, line: 88, baseType: !415, size: 64, offset: 320)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1835, file: !1836, line: 90, baseType: !1845, size: 64, offset: 384)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{!116, !1777, !1848}
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1850)
!1850 = !{!1851, !1852, !1853, !1857, !1858, !1859, !1860, !1873, !1886, !1887, !1888, !1889, !1890, !1898, !1899, !1900, !1901, !1902, !1903}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1849, file: !24, line: 96, baseType: !306, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1849, file: !24, line: 97, baseType: !1834, size: 64, offset: 64)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1849, file: !24, line: 99, baseType: !1854, size: 64, offset: 128)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1856, line: 76, flags: DIFlagFwdDecl)
!1856 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1849, file: !24, line: 100, baseType: !306, size: 64, offset: 192)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1849, file: !24, line: 102, baseType: !263, size: 8, offset: 256)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1849, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1849, file: !24, line: 105, baseType: !1861, size: 64, offset: 320)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1863)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1864, line: 262, size: 1600, elements: !1865)
!1864 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1865 = !{!1866, !1867, !1868, !1872}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1863, file: !1864, line: 263, baseType: !154, size: 256)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1863, file: !1864, line: 264, baseType: !154, size: 256, offset: 256)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1863, file: !1864, line: 265, baseType: !1869, size: 1024, offset: 512)
!1869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 1024, elements: !1870)
!1870 = !{!1871}
!1871 = !DISubrange(count: 128)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1863, file: !1864, line: 266, baseType: !1312, size: 64, offset: 1536)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1849, file: !24, line: 106, baseType: !1874, size: 64, offset: 384)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1876)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1864, line: 210, size: 256, elements: !1877)
!1877 = !{!1878, !1882, !1884, !1885}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1876, file: !1864, line: 211, baseType: !1879, size: 72)
!1879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 72, elements: !1880)
!1880 = !{!1881}
!1881 = !DISubrange(count: 9)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1876, file: !1864, line: 212, baseType: !1883, size: 64, offset: 128)
!1883 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1864, line: 14, baseType: !225)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1876, file: !1864, line: 213, baseType: !108, size: 32, offset: 192)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1876, file: !1864, line: 214, baseType: !108, size: 32, offset: 224)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1849, file: !24, line: 108, baseType: !1808, size: 64, offset: 448)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1849, file: !24, line: 109, baseType: !1799, size: 64, offset: 512)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1849, file: !24, line: 110, baseType: !1808, size: 64, offset: 576)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1849, file: !24, line: 111, baseType: !1799, size: 64, offset: 640)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1849, file: !24, line: 112, baseType: !1891, size: 64, offset: 704)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DISubroutineType(types: !1893)
!1893 = !{!116, !1777, !1894}
!1894 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1895)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1896)
!1896 = !{!1897}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1895, file: !37, line: 51, baseType: !116, size: 32)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1849, file: !24, line: 113, baseType: !1808, size: 64, offset: 768)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1849, file: !24, line: 114, baseType: !415, size: 64, offset: 832)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1849, file: !24, line: 115, baseType: !415, size: 64, offset: 896)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1849, file: !24, line: 117, baseType: !1803, size: 64, offset: 960)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1849, file: !24, line: 118, baseType: !1799, size: 64, offset: 1024)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1849, file: !24, line: 120, baseType: !1904, size: 64, offset: 1088)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1835, file: !1836, line: 91, baseType: !1790, size: 64, offset: 448)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1835, file: !1836, line: 92, baseType: !1808, size: 64, offset: 512)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1835, file: !1836, line: 93, baseType: !1799, size: 64, offset: 576)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1835, file: !1836, line: 94, baseType: !1808, size: 64, offset: 640)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1835, file: !1836, line: 95, baseType: !1799, size: 64, offset: 704)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1835, file: !1836, line: 97, baseType: !1808, size: 64, offset: 768)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1835, file: !1836, line: 98, baseType: !1808, size: 64, offset: 832)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1835, file: !1836, line: 100, baseType: !1891, size: 64, offset: 896)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1835, file: !1836, line: 101, baseType: !1808, size: 64, offset: 960)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1835, file: !1836, line: 103, baseType: !1808, size: 64, offset: 1024)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1835, file: !1836, line: 105, baseType: !1808, size: 64, offset: 1088)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1835, file: !1836, line: 107, baseType: !1803, size: 64, offset: 1152)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1835, file: !1836, line: 109, baseType: !1919, size: 64, offset: 1216)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1921)
!1921 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1836, line: 109, flags: DIFlagFwdDecl)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1835, file: !1836, line: 111, baseType: !1923, size: 64, offset: 1280)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1836, line: 111, flags: DIFlagFwdDecl)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1835, file: !1836, line: 112, baseType: !1926, offset: 1344)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1927, line: 187, elements: !336)
!1927 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1835, file: !1836, line: 114, baseType: !263, size: 8, offset: 1344)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !299, file: !30, line: 471, baseType: !1848, size: 64, offset: 832)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !299, file: !30, line: 473, baseType: !104, size: 64, offset: 896)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !299, file: !30, line: 475, baseType: !104, size: 64, offset: 960)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !299, file: !30, line: 480, baseType: !574, size: 192, offset: 1024)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !299, file: !30, line: 484, baseType: !1934, size: 576, offset: 1216)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1935)
!1935 = !{!1936, !1937, !1938, !1939, !1940, !1941}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1934, file: !30, line: 362, baseType: !309, size: 128)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1934, file: !30, line: 363, baseType: !309, size: 128, offset: 128)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1934, file: !30, line: 364, baseType: !309, size: 128, offset: 256)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1934, file: !30, line: 365, baseType: !309, size: 128, offset: 384)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1934, file: !30, line: 366, baseType: !263, size: 8, offset: 512)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1934, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !299, file: !30, line: 485, baseType: !1943, size: 2304, offset: 1792)
!1943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1944)
!1944 = !{!1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2040, !2044}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1943, file: !37, line: 566, baseType: !1894, size: 32)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1943, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1943, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1943, file: !37, line: 569, baseType: !263, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1943, file: !37, line: 570, baseType: !263, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1943, file: !37, line: 571, baseType: !263, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1943, file: !37, line: 572, baseType: !263, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1943, file: !37, line: 573, baseType: !263, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1943, file: !37, line: 574, baseType: !263, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1943, file: !37, line: 575, baseType: !263, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1943, file: !37, line: 576, baseType: !263, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1943, file: !37, line: 577, baseType: !106, size: 32, offset: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1943, file: !37, line: 578, baseType: !322, offset: 96)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1943, file: !37, line: 580, baseType: !309, size: 128, offset: 128)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1943, file: !37, line: 581, baseType: !919, size: 192, offset: 256)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1943, file: !37, line: 582, baseType: !1961, size: 64, offset: 448)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1963, line: 43, size: 1472, elements: !1964)
!1963 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1964 = !{!1965, !1966, !1967, !1968, !1969, !1972, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1962, file: !1963, line: 44, baseType: !306, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1962, file: !1963, line: 45, baseType: !116, size: 32, offset: 64)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1962, file: !1963, line: 46, baseType: !309, size: 128, offset: 128)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1962, file: !1963, line: 47, baseType: !322, offset: 256)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1962, file: !1963, line: 48, baseType: !1970, size: 64, offset: 256)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1962, file: !1963, line: 49, baseType: !1973, size: 320, offset: 320)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1974, line: 11, size: 320, elements: !1975)
!1974 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1975 = !{!1976, !1977, !1978, !1983}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1973, file: !1974, line: 16, baseType: !883, size: 128)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1973, file: !1974, line: 17, baseType: !225, size: 64, offset: 128)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1973, file: !1974, line: 18, baseType: !1979, size: 64, offset: 192)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{null, !1982}
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1973, file: !1974, line: 19, baseType: !106, size: 32, offset: 256)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1962, file: !1963, line: 50, baseType: !225, size: 64, offset: 640)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1962, file: !1963, line: 51, baseType: !701, size: 64, offset: 704)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1962, file: !1963, line: 52, baseType: !701, size: 64, offset: 768)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1962, file: !1963, line: 53, baseType: !701, size: 64, offset: 832)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1962, file: !1963, line: 54, baseType: !701, size: 64, offset: 896)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1962, file: !1963, line: 55, baseType: !701, size: 64, offset: 960)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1962, file: !1963, line: 56, baseType: !225, size: 64, offset: 1024)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1962, file: !1963, line: 57, baseType: !225, size: 64, offset: 1088)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1962, file: !1963, line: 58, baseType: !225, size: 64, offset: 1152)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1962, file: !1963, line: 59, baseType: !225, size: 64, offset: 1216)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1962, file: !1963, line: 60, baseType: !225, size: 64, offset: 1280)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1962, file: !1963, line: 61, baseType: !1777, size: 64, offset: 1344)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1962, file: !1963, line: 62, baseType: !263, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1962, file: !1963, line: 63, baseType: !263, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1943, file: !37, line: 583, baseType: !263, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1943, file: !37, line: 584, baseType: !263, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1943, file: !37, line: 585, baseType: !263, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1943, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1943, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1943, file: !37, line: 592, baseType: !693, size: 512, offset: 576)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1943, file: !37, line: 593, baseType: !171, size: 64, offset: 1088)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1943, file: !37, line: 594, baseType: !1516, size: 256, offset: 1152)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1943, file: !37, line: 595, baseType: !890, size: 128, offset: 1408)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1943, file: !37, line: 596, baseType: !1970, size: 64, offset: 1536)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1943, file: !37, line: 597, baseType: !497, size: 32, offset: 1600)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1943, file: !37, line: 598, baseType: !497, size: 32, offset: 1632)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1943, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1943, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1943, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1943, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1943, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1943, file: !37, line: 604, baseType: !263, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1943, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1943, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1943, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1943, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1943, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1943, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1943, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1943, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1943, file: !37, line: 613, baseType: !116, size: 32, offset: 1792)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1943, file: !37, line: 614, baseType: !116, size: 32, offset: 1824)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1943, file: !37, line: 615, baseType: !171, size: 64, offset: 1856)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1943, file: !37, line: 616, baseType: !171, size: 64, offset: 1920)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1943, file: !37, line: 617, baseType: !171, size: 64, offset: 1984)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1943, file: !37, line: 618, baseType: !171, size: 64, offset: 2048)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1943, file: !37, line: 620, baseType: !2031, size: 64, offset: 2112)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !2033)
!2033 = !{!2034, !2035, !2036, !2037}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2032, file: !37, line: 537, baseType: !322)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2032, file: !37, line: 538, baseType: !7, size: 32)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !2032, file: !37, line: 540, baseType: !309, size: 128, offset: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !2032, file: !37, line: 543, baseType: !2038, size: 64, offset: 192)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1943, file: !37, line: 621, baseType: !2041, size: 64, offset: 2176)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{null, !1777, !843}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1943, file: !37, line: 622, baseType: !2045, size: 64, offset: 2240)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !51, line: 117, size: 2304, elements: !2047)
!2047 = !{!2048, !2077, !2078, !2085, !2090, !2117, !2118}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency", scope: !2046, file: !51, line: 118, baseType: !2049, size: 320)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_constraints", file: !51, line: 52, size: 320, elements: !2050)
!2050 = !{!2051, !2056, !2057, !2058, !2059, !2060}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2049, file: !51, line: 53, baseType: !2052, size: 128)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_head", file: !2053, line: 79, size: 128, elements: !2054)
!2053 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/lizy2001/genbc/linux")
!2054 = !{!2055}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2052, file: !2053, line: 80, baseType: !309, size: 128)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "target_value", scope: !2049, file: !51, line: 54, baseType: !843, size: 32, offset: 128)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "default_value", scope: !2049, file: !51, line: 55, baseType: !843, size: 32, offset: 160)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "no_constraint_value", scope: !2049, file: !51, line: 56, baseType: !843, size: 32, offset: 192)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2049, file: !51, line: 57, baseType: !50, size: 32, offset: 224)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "notifiers", scope: !2049, file: !51, line: 58, baseType: !2061, size: 64, offset: 256)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !2063, line: 65, size: 320, elements: !2064)
!2063 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!2064 = !{!2065, !2066}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !2062, file: !2063, line: 66, baseType: !516, size: 256)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2062, file: !2063, line: 67, baseType: !2067, size: 64, offset: 256)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !2063, line: 54, size: 192, elements: !2069)
!2069 = !{!2070, !2075, !2076}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !2068, file: !2063, line: 55, baseType: !2071, size: 64)
!2071 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !2063, line: 51, baseType: !2072)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DISubroutineType(types: !2074)
!2074 = !{!116, !2067, !225, !104}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2068, file: !2063, line: 56, baseType: !2067, size: 64, offset: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !2068, file: !2063, line: 57, baseType: !116, size: 32, offset: 128)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance", scope: !2046, file: !51, line: 119, baseType: !2049, size: 320, offset: 320)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !2046, file: !51, line: 120, baseType: !2079, size: 1280, offset: 640)
!2079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_constraints", file: !51, line: 85, size: 1280, elements: !2080)
!2080 = !{!2081, !2082, !2083, !2084}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq", scope: !2079, file: !51, line: 86, baseType: !2049, size: 320)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq_notifiers", scope: !2079, file: !51, line: 87, baseType: !2062, size: 320, offset: 320)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq", scope: !2079, file: !51, line: 88, baseType: !2049, size: 320, offset: 640)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq_notifiers", scope: !2079, file: !51, line: 89, baseType: !2062, size: 320, offset: 960)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2046, file: !51, line: 121, baseType: !2086, size: 192, offset: 1920)
!2086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags", file: !51, line: 71, size: 192, elements: !2087)
!2087 = !{!2088, !2089}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2086, file: !51, line: 72, baseType: !309, size: 128)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "effective_flags", scope: !2086, file: !51, line: 73, baseType: !843, size: 32, offset: 128)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency_req", scope: !2046, file: !51, line: 122, baseType: !2091, size: 64, offset: 2112)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos_request", file: !51, line: 107, size: 576, elements: !2093)
!2093 = !{!2094, !2095, !2116}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2092, file: !51, line: 108, baseType: !56, size: 32)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2092, file: !51, line: 113, baseType: !2096, size: 448, offset: 64)
!2096 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2092, file: !51, line: 109, size: 448, elements: !2097)
!2097 = !{!2098, !2104, !2109}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !2096, file: !51, line: 110, baseType: !2099, size: 320)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2053, line: 83, size: 320, elements: !2100)
!2100 = !{!2101, !2102, !2103}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2099, file: !2053, line: 84, baseType: !116, size: 32)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2099, file: !2053, line: 85, baseType: !309, size: 128, offset: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2099, file: !2053, line: 86, baseType: !309, size: 128, offset: 192)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "flr", scope: !2096, file: !51, line: 111, baseType: !2105, size: 192)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags_request", file: !51, line: 66, size: 192, elements: !2106)
!2106 = !{!2107, !2108}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2105, file: !51, line: 67, baseType: !309, size: 128)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2105, file: !51, line: 68, baseType: !843, size: 32, offset: 128)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !2096, file: !51, line: 112, baseType: !2110, size: 448)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_qos_request", file: !51, line: 92, size: 448, elements: !2111)
!2111 = !{!2112, !2113, !2114}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2110, file: !51, line: 93, baseType: !63, size: 32)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !2110, file: !51, line: 94, baseType: !2099, size: 320, offset: 64)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2110, file: !51, line: 95, baseType: !2115, size: 64, offset: 384)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2092, file: !51, line: 114, baseType: !1777, size: 64, offset: 512)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance_req", scope: !2046, file: !51, line: 123, baseType: !2091, size: 64, offset: 2176)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "flags_req", scope: !2046, file: !51, line: 124, baseType: !2091, size: 64, offset: 2240)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !299, file: !30, line: 486, baseType: !2120, size: 64, offset: 4096)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !2122)
!2122 = !{!2123, !2124, !2125, !2129, !2130, !2131}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2121, file: !37, line: 643, baseType: !1805, size: 1472)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2121, file: !37, line: 644, baseType: !1808, size: 64, offset: 1472)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2121, file: !37, line: 645, baseType: !2126, size: 64, offset: 1536)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{null, !1777, !263}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2121, file: !37, line: 646, baseType: !1808, size: 64, offset: 1600)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2121, file: !37, line: 647, baseType: !1799, size: 64, offset: 1664)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2121, file: !37, line: 648, baseType: !1799, size: 64, offset: 1728)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !299, file: !30, line: 493, baseType: !2133, size: 64, offset: 4160)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !68, line: 162, size: 1088, elements: !2135)
!2135 = !{!2136, !2137, !2138, !2312, !2313, !2314, !2315, !2316, !2317, !2320, !2321, !2322, !2323, !2324, !2325, !2326}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2134, file: !68, line: 163, baseType: !309, size: 128)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2134, file: !68, line: 164, baseType: !306, size: 64, offset: 128)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2134, file: !68, line: 165, baseType: !2139, size: 64, offset: 192)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2141)
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !68, line: 105, size: 640, elements: !2142)
!2142 = !{!2143, !2261, !2272, !2277, !2281, !2289, !2293, !2297, !2304, !2308}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2141, file: !68, line: 106, baseType: !2144, size: 64)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!116, !2133, !2147, !67}
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2149, line: 51, size: 1344, elements: !2150)
!2149 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!2150 = !{!2151, !2152, !2154, !2155, !2245, !2254, !2255, !2256, !2257, !2258, !2259, !2260}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2148, file: !2149, line: 52, baseType: !306, size: 64)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !2148, file: !2149, line: 53, baseType: !2153, size: 32, offset: 64)
!2153 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !2149, line: 28, baseType: !106)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !2148, file: !2149, line: 54, baseType: !306, size: 64, offset: 128)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2148, file: !2149, line: 55, baseType: !2156, size: 192, offset: 192)
!2156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2157, line: 17, size: 192, elements: !2158)
!2157 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!2158 = !{!2159, !2161, !2244}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !2156, file: !2157, line: 18, baseType: !2160, size: 64)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2156, file: !2157, line: 19, baseType: !2162, size: 64, offset: 64)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2164)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !2157, line: 110, size: 1152, elements: !2165)
!2165 = !{!2166, !2170, !2174, !2180, !2186, !2190, !2194, !2199, !2203, !2204, !2208, !2212, !2216, !2227, !2228, !2229, !2230, !2240}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2164, file: !2157, line: 111, baseType: !2167, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = !DISubroutineType(types: !2169)
!2169 = !{!2160, !2160}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2164, file: !2157, line: 112, baseType: !2171, size: 64, offset: 64)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{null, !2160}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !2164, file: !2157, line: 113, baseType: !2175, size: 64, offset: 128)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!263, !2178}
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2156)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !2164, file: !2157, line: 114, baseType: !2181, size: 64, offset: 192)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{!1312, !2178, !2184}
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !299)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !2164, file: !2157, line: 116, baseType: !2187, size: 64, offset: 256)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{!263, !2178, !306}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !2164, file: !2157, line: 118, baseType: !2191, size: 64, offset: 320)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DISubroutineType(types: !2193)
!2193 = !{!116, !2178, !306, !7, !104, !409}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !2164, file: !2157, line: 123, baseType: !2195, size: 64, offset: 384)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{!116, !2178, !306, !2198, !409}
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2164, file: !2157, line: 126, baseType: !2200, size: 64, offset: 448)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!306, !2178}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !2164, file: !2157, line: 127, baseType: !2200, size: 64, offset: 512)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2164, file: !2157, line: 128, baseType: !2205, size: 64, offset: 576)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{!2160, !2178}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !2164, file: !2157, line: 130, baseType: !2209, size: 64, offset: 640)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{!2160, !2178, !2160}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !2164, file: !2157, line: 133, baseType: !2213, size: 64, offset: 704)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{!2160, !2178, !306}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !2164, file: !2157, line: 135, baseType: !2217, size: 64, offset: 768)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{!116, !2178, !306, !306, !7, !7, !2220}
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !2157, line: 43, size: 640, elements: !2222)
!2222 = !{!2223, !2224, !2225}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2221, file: !2157, line: 44, baseType: !2160, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2221, file: !2157, line: 45, baseType: !7, size: 32, offset: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2221, file: !2157, line: 46, baseType: !2226, size: 512, offset: 128)
!2226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 512, elements: !158)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !2164, file: !2157, line: 140, baseType: !2209, size: 64, offset: 832)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !2164, file: !2157, line: 143, baseType: !2205, size: 64, offset: 896)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !2164, file: !2157, line: 145, baseType: !2167, size: 64, offset: 960)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !2164, file: !2157, line: 146, baseType: !2231, size: 64, offset: 1024)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{!116, !2178, !2234}
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !2157, line: 29, size: 128, elements: !2236)
!2236 = !{!2237, !2238, !2239}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2235, file: !2157, line: 30, baseType: !7, size: 32)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2235, file: !2157, line: 31, baseType: !7, size: 32, offset: 32)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2235, file: !2157, line: 32, baseType: !2178, size: 64, offset: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !2164, file: !2157, line: 148, baseType: !2241, size: 64, offset: 1088)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!116, !2178, !1777}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2156, file: !2157, line: 20, baseType: !1777, size: 64, offset: 128)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2148, file: !2149, line: 57, baseType: !2246, size: 64, offset: 384)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !2149, line: 31, size: 704, elements: !2248)
!2248 = !{!2249, !2250, !2251, !2252, !2253}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2247, file: !2149, line: 32, baseType: !363, size: 64)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2247, file: !2149, line: 33, baseType: !116, size: 32, offset: 64)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2247, file: !2149, line: 34, baseType: !104, size: 64, offset: 128)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2247, file: !2149, line: 35, baseType: !2246, size: 64, offset: 192)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2247, file: !2149, line: 43, baseType: !430, size: 448, offset: 256)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !2148, file: !2149, line: 58, baseType: !2246, size: 64, offset: 448)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2148, file: !2149, line: 59, baseType: !2147, size: 64, offset: 512)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2148, file: !2149, line: 60, baseType: !2147, size: 64, offset: 576)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2148, file: !2149, line: 61, baseType: !2147, size: 64, offset: 640)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2148, file: !2149, line: 63, baseType: !302, size: 512, offset: 704)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2148, file: !2149, line: 65, baseType: !225, size: 64, offset: 1216)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2148, file: !2149, line: 66, baseType: !104, size: 64, offset: 1280)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !2141, file: !68, line: 108, baseType: !2262, size: 64, offset: 64)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DISubroutineType(types: !2264)
!2264 = !{!116, !2133, !2265, !67}
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !68, line: 63, size: 640, elements: !2267)
!2267 = !{!2268, !2269, !2270}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2266, file: !68, line: 64, baseType: !2160, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !2266, file: !68, line: 65, baseType: !116, size: 32, offset: 64)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !2266, file: !68, line: 66, baseType: !2271, size: 512, offset: 96)
!2271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 512, elements: !276)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !2141, file: !68, line: 110, baseType: !2273, size: 64, offset: 128)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = !DISubroutineType(types: !2275)
!2275 = !{!116, !2133, !7, !2276}
!2276 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !95, line: 164, baseType: !225)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !2141, file: !68, line: 111, baseType: !2278, size: 64, offset: 192)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = !DISubroutineType(types: !2280)
!2280 = !{null, !2133, !7}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !2141, file: !68, line: 112, baseType: !2282, size: 64, offset: 256)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{!116, !2133, !2147, !2285, !7, !2287, !2288}
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !106)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2141, file: !68, line: 117, baseType: !2290, size: 64, offset: 320)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = !DISubroutineType(types: !2292)
!2292 = !{!116, !2133, !7, !7, !104}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2141, file: !68, line: 119, baseType: !2294, size: 64, offset: 384)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DISubroutineType(types: !2296)
!2296 = !{null, !2133, !7, !7}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2141, file: !68, line: 121, baseType: !2298, size: 64, offset: 448)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{!116, !2133, !2301, !263}
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !2303, line: 11, flags: DIFlagFwdDecl)
!2303 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !2141, file: !68, line: 122, baseType: !2305, size: 64, offset: 512)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{null, !2133, !2301}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !2141, file: !68, line: 123, baseType: !2309, size: 64, offset: 576)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DISubroutineType(types: !2311)
!2311 = !{!116, !2133, !2265, !2287, !2288}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !2134, file: !68, line: 166, baseType: !104, size: 64, offset: 256)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2134, file: !68, line: 167, baseType: !7, size: 32, offset: 320)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !2134, file: !68, line: 168, baseType: !7, size: 32, offset: 352)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2134, file: !68, line: 171, baseType: !2160, size: 64, offset: 384)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !2134, file: !68, line: 172, baseType: !67, size: 32, offset: 448)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !2134, file: !68, line: 173, baseType: !2318, size: 64, offset: 512)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !68, line: 134, flags: DIFlagFwdDecl)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2134, file: !68, line: 175, baseType: !2133, size: 64, offset: 576)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !2134, file: !68, line: 182, baseType: !2276, size: 64, offset: 640)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !2134, file: !68, line: 183, baseType: !7, size: 32, offset: 704)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !2134, file: !68, line: 184, baseType: !7, size: 32, offset: 736)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !2134, file: !68, line: 185, baseType: !1644, size: 128, offset: 768)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !2134, file: !68, line: 186, baseType: !574, size: 192, offset: 896)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !2134, file: !68, line: 187, baseType: !2327, offset: 1088)
!2327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !1530)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !299, file: !30, line: 499, baseType: !309, size: 128, offset: 4224)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !299, file: !30, line: 502, baseType: !2330, size: 64, offset: 4352)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2332)
!2332 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !299, file: !30, line: 504, baseType: !2334, size: 64, offset: 4416)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !299, file: !30, line: 505, baseType: !171, size: 64, offset: 4480)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !299, file: !30, line: 510, baseType: !171, size: 64, offset: 4544)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !299, file: !30, line: 511, baseType: !2338, size: 64, offset: 4608)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2340)
!2340 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !299, file: !30, line: 513, baseType: !2342, size: 64, offset: 4672)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !2344)
!2344 = !{!2345, !2346}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2343, file: !30, line: 293, baseType: !7, size: 32)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2343, file: !30, line: 294, baseType: !225, size: 64, offset: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !299, file: !30, line: 515, baseType: !309, size: 128, offset: 4736)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !299, file: !30, line: 526, baseType: !2349, offset: 4864)
!2349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2350, line: 5, elements: !336)
!2350 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !299, file: !30, line: 528, baseType: !2147, size: 64, offset: 4864)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !299, file: !30, line: 529, baseType: !2160, size: 64, offset: 4928)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !299, file: !30, line: 534, baseType: !2354, size: 32, offset: 4992)
!2354 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !95, line: 16, baseType: !2355)
!2355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !95, line: 13, baseType: !106)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !299, file: !30, line: 535, baseType: !106, size: 32, offset: 5024)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !299, file: !30, line: 537, baseType: !322, offset: 5056)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !299, file: !30, line: 538, baseType: !309, size: 128, offset: 5056)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !299, file: !30, line: 540, baseType: !2360, size: 64, offset: 5184)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2362, line: 54, size: 960, elements: !2363)
!2362 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2363 = !{!2364, !2365, !2366, !2367, !2368, !2369, !2370, !2374, !2378, !2379, !2380, !2381, !2385, !2389, !2390}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2361, file: !2362, line: 55, baseType: !306, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2361, file: !2362, line: 56, baseType: !1854, size: 64, offset: 64)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2361, file: !2362, line: 58, baseType: !415, size: 64, offset: 128)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2361, file: !2362, line: 59, baseType: !415, size: 64, offset: 192)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2361, file: !2362, line: 60, baseType: !315, size: 64, offset: 256)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2361, file: !2362, line: 62, baseType: !1790, size: 64, offset: 320)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2361, file: !2362, line: 63, baseType: !2371, size: 64, offset: 384)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!363, !1777, !1797}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2361, file: !2362, line: 65, baseType: !2375, size: 64, offset: 448)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{null, !2360}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2361, file: !2362, line: 66, baseType: !1799, size: 64, offset: 512)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2361, file: !2362, line: 68, baseType: !1808, size: 64, offset: 576)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2361, file: !2362, line: 70, baseType: !1565, size: 64, offset: 640)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2361, file: !2362, line: 71, baseType: !2382, size: 64, offset: 704)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{!1312, !1777}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2361, file: !2362, line: 73, baseType: !2386, size: 64, offset: 768)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{null, !1777, !1600, !1606}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2361, file: !2362, line: 75, baseType: !1803, size: 64, offset: 832)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2361, file: !2362, line: 77, baseType: !1923, size: 64, offset: 896)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !299, file: !30, line: 541, baseType: !415, size: 64, offset: 5248)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !299, file: !30, line: 543, baseType: !1799, size: 64, offset: 5312)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !299, file: !30, line: 544, baseType: !2394, size: 64, offset: 5376)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !299, file: !30, line: 545, baseType: !2397, size: 64, offset: 5440)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !299, file: !30, line: 547, baseType: !263, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !299, file: !30, line: 548, baseType: !263, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !299, file: !30, line: 549, baseType: !263, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !299, file: !30, line: 550, baseType: !263, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !290, file: !291, line: 97, baseType: !2147, size: 64, offset: 5760)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "devdata", scope: !290, file: !291, line: 98, baseType: !104, size: 64, offset: 5824)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !290, file: !291, line: 99, baseType: !104, size: 64, offset: 5888)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !290, file: !291, line: 100, baseType: !2407, size: 64, offset: 5952)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2409)
!2409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device_ops", file: !291, line: 84, size: 384, elements: !2410)
!2410 = !{!2411, !2415, !2416, !2420, !2424, !2428}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "get_max_state", scope: !2409, file: !291, line: 85, baseType: !2412, size: 64)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = !DISubroutineType(types: !2414)
!2414 = !{!116, !289, !2287}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "get_cur_state", scope: !2409, file: !291, line: 86, baseType: !2412, size: 64, offset: 64)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "set_cur_state", scope: !2409, file: !291, line: 87, baseType: !2417, size: 64, offset: 128)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!116, !289, !225}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "get_requested_power", scope: !2409, file: !291, line: 88, baseType: !2421, size: 64, offset: 192)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!116, !289, !814}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "state2power", scope: !2409, file: !291, line: 89, baseType: !2425, size: 64, offset: 256)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!116, !289, !225, !814}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "power2state", scope: !2409, file: !291, line: 90, baseType: !2429, size: 64, offset: 320)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = !DISubroutineType(types: !2431)
!2431 = !{!116, !289, !106, !2287}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "updated", scope: !290, file: !291, line: 101, baseType: !263, size: 8, offset: 6016)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !290, file: !291, line: 102, baseType: !574, size: 192, offset: 6080)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_instances", scope: !290, file: !291, line: 103, baseType: !309, size: 128, offset: 6272)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !290, file: !291, line: 104, baseType: !309, size: 128, offset: 6400)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !98, file: !99, line: 234, baseType: !1777, size: 64, offset: 6976)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "perflib_req", scope: !98, file: !99, line: 235, baseType: !2110, size: 448, offset: 7040)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_req", scope: !98, file: !99, line: 236, baseType: !2110, size: 448, offset: 7488)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !221)
!2441 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !103, line: 421, baseType: !106)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !103, line: 899, size: 192, elements: !2444)
!2444 = !{!2445, !2447, !2452, !2458, !2465, !2471, !2477, !2485}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2443, file: !103, line: 900, baseType: !2446, size: 32)
!2446 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !103, line: 635, baseType: !106)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !2443, file: !103, line: 904, baseType: !2448, size: 128)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2443, file: !103, line: 901, size: 128, elements: !2449)
!2449 = !{!2450, !2451}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2448, file: !103, line: 902, baseType: !2446, size: 32)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2448, file: !103, line: 903, baseType: !171, size: 64, offset: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2443, file: !103, line: 910, baseType: !2453, size: 128)
!2453 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2443, file: !103, line: 906, size: 128, elements: !2454)
!2454 = !{!2455, !2456, !2457}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2453, file: !103, line: 907, baseType: !2446, size: 32)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2453, file: !103, line: 908, baseType: !106, size: 32, offset: 32)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2453, file: !103, line: 909, baseType: !363, size: 64, offset: 64)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2443, file: !103, line: 916, baseType: !2459, size: 128)
!2459 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2443, file: !103, line: 912, size: 128, elements: !2460)
!2460 = !{!2461, !2462, !2463}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2459, file: !103, line: 913, baseType: !2446, size: 32)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2459, file: !103, line: 914, baseType: !106, size: 32, offset: 32)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2459, file: !103, line: 915, baseType: !2464, size: 64, offset: 64)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !2443, file: !103, line: 922, baseType: !2466, size: 128)
!2466 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2443, file: !103, line: 918, size: 128, elements: !2467)
!2467 = !{!2468, !2469, !2470}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2466, file: !103, line: 919, baseType: !2446, size: 32)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2466, file: !103, line: 920, baseType: !106, size: 32, offset: 32)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !2466, file: !103, line: 921, baseType: !2442, size: 64, offset: 64)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !2443, file: !103, line: 928, baseType: !2472, size: 128)
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2443, file: !103, line: 924, size: 128, elements: !2473)
!2473 = !{!2474, !2475, !2476}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2472, file: !103, line: 925, baseType: !2446, size: 32)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !2472, file: !103, line: 926, baseType: !2446, size: 32, offset: 32)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !2472, file: !103, line: 927, baseType: !102, size: 64, offset: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !2443, file: !103, line: 935, baseType: !2478, size: 192)
!2478 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2443, file: !103, line: 930, size: 192, elements: !2479)
!2479 = !{!2480, !2481, !2482, !2484}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2478, file: !103, line: 931, baseType: !2446, size: 32)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !2478, file: !103, line: 932, baseType: !106, size: 32, offset: 32)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !2478, file: !103, line: 933, baseType: !2483, size: 64, offset: 64)
!2483 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !103, line: 128, baseType: !171)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !2478, file: !103, line: 934, baseType: !106, size: 32, offset: 128)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !2443, file: !103, line: 941, baseType: !2486, size: 96)
!2486 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2443, file: !103, line: 937, size: 96, elements: !2487)
!2487 = !{!2488, !2489, !2490}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2486, file: !103, line: 938, baseType: !2446, size: 32)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !2486, file: !103, line: 939, baseType: !106, size: 32, offset: 32)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !2486, file: !103, line: 940, baseType: !106, size: 32, offset: 64)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !155)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!2495 = !{!2496, !2548, !2553, !2558, !0, !2560}
!2496 = !DIGlobalVariableExpression(var: !2497, expr: !DIExpression())
!2497 = distinct !DIGlobalVariable(name: "__param_ignore_tpc", scope: !2, file: !3, line: 34, type: !2498, isLocal: true, isDefinition: true, align: 64)
!2498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2499)
!2499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2500, line: 69, size: 320, elements: !2501)
!2500 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!2501 = !{!2502, !2503, !2504, !2520, !2522, !2526, !2527}
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2499, file: !2500, line: 70, baseType: !306, size: 64)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2499, file: !2500, line: 71, baseType: !1854, size: 64, offset: 64)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2499, file: !2500, line: 72, baseType: !2505, size: 64, offset: 128)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2507)
!2507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2500, line: 47, size: 256, elements: !2508)
!2508 = !{!2509, !2510, !2515, !2519}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2507, file: !2500, line: 49, baseType: !7, size: 32)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2507, file: !2500, line: 51, baseType: !2511, size: 64, offset: 64)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{!116, !306, !2514}
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2507, file: !2500, line: 53, baseType: !2516, size: 64, offset: 128)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DISubroutineType(types: !2518)
!2518 = !{!116, !363, !2514}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2507, file: !2500, line: 55, baseType: !1589, size: 64, offset: 192)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2499, file: !2500, line: 73, baseType: !2521, size: 16, offset: 192)
!2521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !189)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2499, file: !2500, line: 74, baseType: !2523, size: 8, offset: 208)
!2523 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !107, line: 16, baseType: !2524)
!2524 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !109, line: 20, baseType: !2525)
!2525 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2499, file: !2500, line: 75, baseType: !122, size: 8, offset: 216)
!2527 = !DIDerivedType(tag: DW_TAG_member, scope: !2499, file: !2500, line: 76, baseType: !2528, size: 64, offset: 256)
!2528 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2499, file: !2500, line: 76, size: 64, elements: !2529)
!2529 = !{!2530, !2531, !2538}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2528, file: !2500, line: 77, baseType: !104, size: 64)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2528, file: !2500, line: 78, baseType: !2532, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2534)
!2534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2500, line: 86, size: 128, elements: !2535)
!2535 = !{!2536, !2537}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2534, file: !2500, line: 87, baseType: !7, size: 32)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2534, file: !2500, line: 88, baseType: !363, size: 64, offset: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2528, file: !2500, line: 79, baseType: !2539, size: 64)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2541)
!2541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2500, line: 92, size: 256, elements: !2542)
!2542 = !{!2543, !2544, !2545, !2546, !2547}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2541, file: !2500, line: 94, baseType: !7, size: 32)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2541, file: !2500, line: 95, baseType: !7, size: 32, offset: 32)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2541, file: !2500, line: 96, baseType: !2288, size: 64, offset: 64)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2541, file: !2500, line: 97, baseType: !2505, size: 64, offset: 128)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2541, file: !2500, line: 98, baseType: !104, size: 64, offset: 192)
!2548 = !DIGlobalVariableExpression(var: !2549, expr: !DIExpression())
!2549 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_ignore_tpctype173", scope: !2, file: !3, line: 34, type: !2550, isLocal: true, isDefinition: true, align: 8)
!2550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 272, elements: !2551)
!2551 = !{!2552}
!2552 = !DISubrange(count: 34)
!2553 = !DIGlobalVariableExpression(var: !2554, expr: !DIExpression())
!2554 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_ignore_tpc174", scope: !2, file: !3, line: 35, type: !2555, isLocal: true, isDefinition: true, align: 8)
!2555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 560, elements: !2556)
!2556 = !{!2557}
!2557 = !DISubrange(count: 70)
!2558 = !DIGlobalVariableExpression(var: !2559, expr: !DIExpression())
!2559 = distinct !DIGlobalVariable(name: "ignore_tpc", scope: !2, file: !3, line: 33, type: !116, isLocal: true, isDefinition: true)
!2560 = !DIGlobalVariableExpression(var: !2561, expr: !DIExpression())
!2561 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 27, type: !2562, isLocal: true, isDefinition: true)
!2562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 168, elements: !2563)
!2563 = !{!2564}
!2564 = !DISubrange(count: 21)
!2565 = !{!"rsp"}
!2566 = !{i32 7, !"Dwarf Version", i32 4}
!2567 = !{i32 2, !"Debug Info Version", i32 3}
!2568 = !{i32 1, !"wchar_size", i32 2}
!2569 = !{i32 1, !"Code Model", i32 2}
!2570 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2571 = distinct !DISubprogram(name: "acpi_processor_throttling_init", scope: !3, file: !3, line: 198, type: !2572, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !336)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{null}
!2574 = !DILocation(line: 200, column: 6, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2571, file: !3, line: 200, column: 6)
!2576 = !DILocation(line: 200, column: 6, scope: !2571)
!2577 = !DILocation(line: 203, column: 2, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2575, file: !3, line: 200, column: 41)
!2579 = !DILocation(line: 205, column: 2, scope: !2571)
!2580 = distinct !DISubprogram(name: "acpi_processor_update_tsd_coord", scope: !3, file: !3, line: 55, type: !2581, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!2581 = !DISubroutineType(types: !2582)
!2582 = !{!116}
!2583 = !DILocalVariable(name: "count", scope: !2580, file: !3, line: 57, type: !116)
!2584 = !DILocation(line: 57, column: 6, scope: !2580)
!2585 = !DILocalVariable(name: "count_target", scope: !2580, file: !3, line: 57, type: !116)
!2586 = !DILocation(line: 57, column: 13, scope: !2580)
!2587 = !DILocalVariable(name: "retval", scope: !2580, file: !3, line: 58, type: !116)
!2588 = !DILocation(line: 58, column: 6, scope: !2580)
!2589 = !DILocalVariable(name: "i", scope: !2580, file: !3, line: 59, type: !7)
!2590 = !DILocation(line: 59, column: 15, scope: !2580)
!2591 = !DILocalVariable(name: "j", scope: !2580, file: !3, line: 59, type: !7)
!2592 = !DILocation(line: 59, column: 18, scope: !2580)
!2593 = !DILocalVariable(name: "covered_cpus", scope: !2580, file: !3, line: 60, type: !218)
!2594 = !DILocation(line: 60, column: 16, scope: !2580)
!2595 = !DILocalVariable(name: "pr", scope: !2580, file: !3, line: 61, type: !97)
!2596 = !DILocation(line: 61, column: 25, scope: !2580)
!2597 = !DILocalVariable(name: "match_pr", scope: !2580, file: !3, line: 61, type: !97)
!2598 = !DILocation(line: 61, column: 30, scope: !2580)
!2599 = !DILocalVariable(name: "pdomain", scope: !2580, file: !3, line: 62, type: !2600)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!2601 = !DILocation(line: 62, column: 27, scope: !2580)
!2602 = !DILocalVariable(name: "match_pdomain", scope: !2580, file: !3, line: 62, type: !2600)
!2603 = !DILocation(line: 62, column: 37, scope: !2580)
!2604 = !DILocalVariable(name: "pthrottling", scope: !2580, file: !3, line: 63, type: !2605)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!2606 = !DILocation(line: 63, column: 36, scope: !2580)
!2607 = !DILocalVariable(name: "match_pthrottling", scope: !2580, file: !3, line: 63, type: !2605)
!2608 = !DILocation(line: 63, column: 50, scope: !2580)
!2609 = !DILocation(line: 65, column: 7, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2580, file: !3, line: 65, column: 6)
!2611 = !DILocation(line: 65, column: 6, scope: !2580)
!2612 = !DILocation(line: 66, column: 3, scope: !2610)
!2613 = !DILocation(line: 72, column: 2, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2580, file: !3, line: 72, column: 2)
!2615 = !DILocation(line: 72, column: 2, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2614, file: !3, line: 72, column: 2)
!2617 = !DILocation(line: 73, column: 8, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2619, file: !3, line: 73, column: 8)
!2619 = distinct !DILexicalBlock(scope: !2616, file: !3, line: 72, column: 27)
!2620 = !DILocation(line: 73, column: 8, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2618, file: !3, line: 73, column: 8)
!2622 = !DILocalVariable(name: "__vpp_verify", scope: !2623, file: !3, line: 73, type: !1312)
!2623 = distinct !DILexicalBlock(scope: !2621, file: !3, line: 73, column: 8)
!2624 = !DILocation(line: 73, column: 8, scope: !2623)
!2625 = !DILocation(line: 73, column: 8, scope: !2619)
!2626 = !DILocation(line: 73, column: 6, scope: !2619)
!2627 = !DILocation(line: 74, column: 8, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2619, file: !3, line: 74, column: 7)
!2629 = !DILocation(line: 74, column: 7, scope: !2619)
!2630 = !DILocation(line: 75, column: 4, scope: !2628)
!2631 = !DILocation(line: 78, column: 19, scope: !2619)
!2632 = !DILocation(line: 78, column: 23, scope: !2619)
!2633 = !DILocation(line: 78, column: 15, scope: !2619)
!2634 = !DILocation(line: 85, column: 8, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2619, file: !3, line: 85, column: 7)
!2636 = !DILocation(line: 85, column: 21, scope: !2635)
!2637 = !DILocation(line: 85, column: 7, scope: !2619)
!2638 = !DILocation(line: 86, column: 11, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2635, file: !3, line: 85, column: 37)
!2640 = !DILocation(line: 87, column: 4, scope: !2639)
!2641 = !DILocation(line: 89, column: 2, scope: !2619)
!2642 = distinct !{!2642, !2613, !2643}
!2643 = !DILocation(line: 89, column: 2, scope: !2614)
!2644 = !DILocation(line: 90, column: 6, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2580, file: !3, line: 90, column: 6)
!2646 = !DILocation(line: 90, column: 6, scope: !2580)
!2647 = !DILocation(line: 91, column: 3, scope: !2645)
!2648 = !DILocation(line: 93, column: 2, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2580, file: !3, line: 93, column: 2)
!2650 = !DILocation(line: 93, column: 2, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2649, file: !3, line: 93, column: 2)
!2652 = !DILocation(line: 94, column: 8, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2654, file: !3, line: 94, column: 8)
!2654 = distinct !DILexicalBlock(scope: !2651, file: !3, line: 93, column: 27)
!2655 = !DILocation(line: 94, column: 8, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2653, file: !3, line: 94, column: 8)
!2657 = !DILocalVariable(name: "__vpp_verify", scope: !2658, file: !3, line: 94, type: !1312)
!2658 = distinct !DILexicalBlock(scope: !2656, file: !3, line: 94, column: 8)
!2659 = !DILocation(line: 94, column: 8, scope: !2658)
!2660 = !DILocation(line: 94, column: 8, scope: !2654)
!2661 = !DILocation(line: 94, column: 6, scope: !2654)
!2662 = !DILocation(line: 95, column: 8, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2654, file: !3, line: 95, column: 7)
!2664 = !DILocation(line: 95, column: 7, scope: !2654)
!2665 = !DILocation(line: 96, column: 4, scope: !2663)
!2666 = !DILocation(line: 98, column: 24, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2654, file: !3, line: 98, column: 7)
!2668 = !DILocation(line: 98, column: 27, scope: !2667)
!2669 = !DILocation(line: 98, column: 7, scope: !2667)
!2670 = !DILocation(line: 98, column: 7, scope: !2654)
!2671 = !DILocation(line: 99, column: 4, scope: !2667)
!2672 = !DILocation(line: 100, column: 18, scope: !2654)
!2673 = !DILocation(line: 100, column: 22, scope: !2654)
!2674 = !DILocation(line: 100, column: 15, scope: !2654)
!2675 = !DILocation(line: 102, column: 15, scope: !2654)
!2676 = !DILocation(line: 102, column: 28, scope: !2654)
!2677 = !DILocation(line: 102, column: 11, scope: !2654)
!2678 = !DILocation(line: 103, column: 19, scope: !2654)
!2679 = !DILocation(line: 103, column: 22, scope: !2654)
!2680 = !DILocation(line: 103, column: 35, scope: !2654)
!2681 = !DILocation(line: 103, column: 3, scope: !2654)
!2682 = !DILocation(line: 104, column: 19, scope: !2654)
!2683 = !DILocation(line: 104, column: 22, scope: !2654)
!2684 = !DILocation(line: 104, column: 3, scope: !2654)
!2685 = !DILocation(line: 109, column: 7, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2654, file: !3, line: 109, column: 7)
!2687 = !DILocation(line: 109, column: 16, scope: !2686)
!2688 = !DILocation(line: 109, column: 31, scope: !2686)
!2689 = !DILocation(line: 109, column: 7, scope: !2654)
!2690 = !DILocation(line: 110, column: 4, scope: !2686)
!2691 = !DILocation(line: 113, column: 18, scope: !2654)
!2692 = !DILocation(line: 113, column: 27, scope: !2654)
!2693 = !DILocation(line: 113, column: 16, scope: !2654)
!2694 = !DILocation(line: 114, column: 9, scope: !2654)
!2695 = !DILocation(line: 116, column: 3, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2654, file: !3, line: 116, column: 3)
!2697 = !DILocation(line: 116, column: 3, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2696, file: !3, line: 116, column: 3)
!2699 = !DILocation(line: 117, column: 8, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2701, file: !3, line: 117, column: 8)
!2701 = distinct !DILexicalBlock(scope: !2698, file: !3, line: 116, column: 28)
!2702 = !DILocation(line: 117, column: 13, scope: !2700)
!2703 = !DILocation(line: 117, column: 10, scope: !2700)
!2704 = !DILocation(line: 117, column: 8, scope: !2701)
!2705 = !DILocation(line: 118, column: 5, scope: !2700)
!2706 = !DILocation(line: 120, column: 15, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2701, file: !3, line: 120, column: 15)
!2708 = !DILocation(line: 120, column: 15, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2707, file: !3, line: 120, column: 15)
!2710 = !DILocalVariable(name: "__vpp_verify", scope: !2711, file: !3, line: 120, type: !1312)
!2711 = distinct !DILexicalBlock(scope: !2709, file: !3, line: 120, column: 15)
!2712 = !DILocation(line: 120, column: 15, scope: !2711)
!2713 = !DILocation(line: 120, column: 15, scope: !2701)
!2714 = !DILocation(line: 120, column: 13, scope: !2701)
!2715 = !DILocation(line: 121, column: 9, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2701, file: !3, line: 121, column: 8)
!2717 = !DILocation(line: 121, column: 8, scope: !2701)
!2718 = !DILocation(line: 122, column: 5, scope: !2716)
!2719 = !DILocation(line: 124, column: 26, scope: !2701)
!2720 = !DILocation(line: 124, column: 36, scope: !2701)
!2721 = !DILocation(line: 124, column: 22, scope: !2701)
!2722 = !DILocation(line: 125, column: 22, scope: !2701)
!2723 = !DILocation(line: 125, column: 41, scope: !2701)
!2724 = !DILocation(line: 125, column: 18, scope: !2701)
!2725 = !DILocation(line: 126, column: 8, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2701, file: !3, line: 126, column: 8)
!2727 = !DILocation(line: 126, column: 23, scope: !2726)
!2728 = !DILocation(line: 126, column: 33, scope: !2726)
!2729 = !DILocation(line: 126, column: 42, scope: !2726)
!2730 = !DILocation(line: 126, column: 30, scope: !2726)
!2731 = !DILocation(line: 126, column: 8, scope: !2701)
!2732 = !DILocation(line: 127, column: 5, scope: !2726)
!2733 = !DILocation(line: 135, column: 8, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2701, file: !3, line: 135, column: 8)
!2735 = !DILocation(line: 135, column: 23, scope: !2734)
!2736 = !DILocation(line: 135, column: 41, scope: !2734)
!2737 = !DILocation(line: 135, column: 38, scope: !2734)
!2738 = !DILocation(line: 135, column: 8, scope: !2701)
!2739 = !DILocation(line: 136, column: 12, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2734, file: !3, line: 135, column: 55)
!2741 = !DILocation(line: 137, column: 5, scope: !2740)
!2742 = !DILocation(line: 140, column: 8, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2701, file: !3, line: 140, column: 8)
!2744 = !DILocation(line: 140, column: 17, scope: !2743)
!2745 = !DILocation(line: 140, column: 31, scope: !2743)
!2746 = !DILocation(line: 140, column: 46, scope: !2743)
!2747 = !DILocation(line: 140, column: 28, scope: !2743)
!2748 = !DILocation(line: 140, column: 8, scope: !2701)
!2749 = !DILocation(line: 141, column: 12, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2743, file: !3, line: 140, column: 58)
!2751 = !DILocation(line: 142, column: 5, scope: !2750)
!2752 = !DILocation(line: 145, column: 20, scope: !2701)
!2753 = !DILocation(line: 145, column: 23, scope: !2701)
!2754 = !DILocation(line: 145, column: 4, scope: !2701)
!2755 = !DILocation(line: 146, column: 20, scope: !2701)
!2756 = !DILocation(line: 146, column: 23, scope: !2701)
!2757 = !DILocation(line: 146, column: 36, scope: !2701)
!2758 = !DILocation(line: 146, column: 4, scope: !2701)
!2759 = !DILocation(line: 147, column: 9, scope: !2701)
!2760 = !DILocation(line: 148, column: 3, scope: !2701)
!2761 = distinct !{!2761, !2695, !2762}
!2762 = !DILocation(line: 148, column: 3, scope: !2696)
!2763 = !DILocation(line: 149, column: 3, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2654, file: !3, line: 149, column: 3)
!2765 = !DILocation(line: 149, column: 3, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2764, file: !3, line: 149, column: 3)
!2767 = !DILocation(line: 150, column: 8, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2769, file: !3, line: 150, column: 8)
!2769 = distinct !DILexicalBlock(scope: !2766, file: !3, line: 149, column: 28)
!2770 = !DILocation(line: 150, column: 13, scope: !2768)
!2771 = !DILocation(line: 150, column: 10, scope: !2768)
!2772 = !DILocation(line: 150, column: 8, scope: !2769)
!2773 = !DILocation(line: 151, column: 5, scope: !2768)
!2774 = !DILocation(line: 153, column: 15, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2769, file: !3, line: 153, column: 15)
!2776 = !DILocation(line: 153, column: 15, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2775, file: !3, line: 153, column: 15)
!2778 = !DILocalVariable(name: "__vpp_verify", scope: !2779, file: !3, line: 153, type: !1312)
!2779 = distinct !DILexicalBlock(scope: !2777, file: !3, line: 153, column: 15)
!2780 = !DILocation(line: 153, column: 15, scope: !2779)
!2781 = !DILocation(line: 153, column: 15, scope: !2769)
!2782 = !DILocation(line: 153, column: 13, scope: !2769)
!2783 = !DILocation(line: 154, column: 9, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2769, file: !3, line: 154, column: 8)
!2785 = !DILocation(line: 154, column: 8, scope: !2769)
!2786 = !DILocation(line: 155, column: 5, scope: !2784)
!2787 = !DILocation(line: 157, column: 26, scope: !2769)
!2788 = !DILocation(line: 157, column: 36, scope: !2769)
!2789 = !DILocation(line: 157, column: 22, scope: !2769)
!2790 = !DILocation(line: 158, column: 22, scope: !2769)
!2791 = !DILocation(line: 158, column: 41, scope: !2769)
!2792 = !DILocation(line: 158, column: 18, scope: !2769)
!2793 = !DILocation(line: 159, column: 8, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2769, file: !3, line: 159, column: 8)
!2795 = !DILocation(line: 159, column: 23, scope: !2794)
!2796 = !DILocation(line: 159, column: 33, scope: !2794)
!2797 = !DILocation(line: 159, column: 42, scope: !2794)
!2798 = !DILocation(line: 159, column: 30, scope: !2794)
!2799 = !DILocation(line: 159, column: 8, scope: !2769)
!2800 = !DILocation(line: 160, column: 5, scope: !2794)
!2801 = !DILocation(line: 166, column: 17, scope: !2769)
!2802 = !DILocation(line: 166, column: 36, scope: !2769)
!2803 = !DILocation(line: 167, column: 10, scope: !2769)
!2804 = !DILocation(line: 167, column: 23, scope: !2769)
!2805 = !DILocation(line: 166, column: 4, scope: !2769)
!2806 = !DILocation(line: 168, column: 3, scope: !2769)
!2807 = distinct !{!2807, !2763, !2808}
!2808 = !DILocation(line: 168, column: 3, scope: !2764)
!2809 = !DILocation(line: 169, column: 2, scope: !2654)
!2810 = distinct !{!2810, !2648, !2811}
!2811 = !DILocation(line: 169, column: 2, scope: !2649)
!2812 = !DILabel(scope: !2580, name: "err_ret", file: !3, line: 171)
!2813 = !DILocation(line: 171, column: 1, scope: !2580)
!2814 = !DILocation(line: 172, column: 19, scope: !2580)
!2815 = !DILocation(line: 172, column: 2, scope: !2580)
!2816 = !DILocation(line: 174, column: 2, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2580, file: !3, line: 174, column: 2)
!2818 = !DILocation(line: 174, column: 2, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2817, file: !3, line: 174, column: 2)
!2820 = !DILocation(line: 175, column: 8, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2822, file: !3, line: 175, column: 8)
!2822 = distinct !DILexicalBlock(scope: !2819, file: !3, line: 174, column: 27)
!2823 = !DILocation(line: 175, column: 8, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2821, file: !3, line: 175, column: 8)
!2825 = !DILocalVariable(name: "__vpp_verify", scope: !2826, file: !3, line: 175, type: !1312)
!2826 = distinct !DILexicalBlock(scope: !2824, file: !3, line: 175, column: 8)
!2827 = !DILocation(line: 175, column: 8, scope: !2826)
!2828 = !DILocation(line: 175, column: 8, scope: !2822)
!2829 = !DILocation(line: 175, column: 6, scope: !2822)
!2830 = !DILocation(line: 176, column: 8, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2822, file: !3, line: 176, column: 7)
!2832 = !DILocation(line: 176, column: 7, scope: !2822)
!2833 = !DILocation(line: 177, column: 4, scope: !2831)
!2834 = !DILocation(line: 183, column: 7, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2822, file: !3, line: 183, column: 7)
!2836 = !DILocation(line: 183, column: 7, scope: !2822)
!2837 = !DILocation(line: 184, column: 20, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2835, file: !3, line: 183, column: 15)
!2839 = !DILocation(line: 184, column: 24, scope: !2838)
!2840 = !DILocation(line: 184, column: 16, scope: !2838)
!2841 = !DILocation(line: 185, column: 18, scope: !2838)
!2842 = !DILocation(line: 185, column: 31, scope: !2838)
!2843 = !DILocation(line: 185, column: 4, scope: !2838)
!2844 = !DILocation(line: 186, column: 20, scope: !2838)
!2845 = !DILocation(line: 186, column: 23, scope: !2838)
!2846 = !DILocation(line: 186, column: 36, scope: !2838)
!2847 = !DILocation(line: 186, column: 4, scope: !2838)
!2848 = !DILocation(line: 187, column: 4, scope: !2838)
!2849 = !DILocation(line: 187, column: 17, scope: !2838)
!2850 = !DILocation(line: 187, column: 29, scope: !2838)
!2851 = !DILocation(line: 188, column: 3, scope: !2838)
!2852 = !DILocation(line: 189, column: 2, scope: !2822)
!2853 = distinct !{!2853, !2816, !2854}
!2854 = !DILocation(line: 189, column: 2, scope: !2817)
!2855 = !DILocation(line: 191, column: 9, scope: !2580)
!2856 = !DILocation(line: 191, column: 2, scope: !2580)
!2857 = !DILocation(line: 192, column: 1, scope: !2580)
!2858 = distinct !DISubprogram(name: "acpi_processor_tstate_has_changed", scope: !3, file: !3, line: 299, type: !257, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !336)
!2859 = !DILocalVariable(name: "pr", arg: 1, scope: !2858, file: !3, line: 299, type: !97)
!2860 = !DILocation(line: 299, column: 62, scope: !2858)
!2861 = !DILocalVariable(name: "result", scope: !2858, file: !3, line: 301, type: !116)
!2862 = !DILocation(line: 301, column: 6, scope: !2858)
!2863 = !DILocalVariable(name: "throttling_limit", scope: !2858, file: !3, line: 302, type: !116)
!2864 = !DILocation(line: 302, column: 6, scope: !2858)
!2865 = !DILocalVariable(name: "current_state", scope: !2858, file: !3, line: 303, type: !116)
!2866 = !DILocation(line: 303, column: 6, scope: !2858)
!2867 = !DILocalVariable(name: "limit", scope: !2858, file: !3, line: 304, type: !2868)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!2869 = !DILocation(line: 304, column: 31, scope: !2858)
!2870 = !DILocalVariable(name: "target_state", scope: !2858, file: !3, line: 305, type: !116)
!2871 = !DILocation(line: 305, column: 6, scope: !2858)
!2872 = !DILocation(line: 307, column: 6, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2858, file: !3, line: 307, column: 6)
!2874 = !DILocation(line: 307, column: 6, scope: !2858)
!2875 = !DILocation(line: 308, column: 3, scope: !2873)
!2876 = !DILocation(line: 310, column: 45, scope: !2858)
!2877 = !DILocation(line: 310, column: 11, scope: !2858)
!2878 = !DILocation(line: 310, column: 9, scope: !2858)
!2879 = !DILocation(line: 311, column: 6, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2858, file: !3, line: 311, column: 6)
!2881 = !DILocation(line: 311, column: 6, scope: !2858)
!2882 = !DILocation(line: 313, column: 10, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2880, file: !3, line: 311, column: 14)
!2884 = !DILocation(line: 313, column: 3, scope: !2883)
!2885 = !DILocation(line: 316, column: 21, scope: !2858)
!2886 = !DILocation(line: 316, column: 25, scope: !2858)
!2887 = !DILocation(line: 316, column: 19, scope: !2858)
!2888 = !DILocation(line: 317, column: 6, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2858, file: !3, line: 317, column: 6)
!2890 = !DILocation(line: 317, column: 26, scope: !2889)
!2891 = !DILocation(line: 317, column: 30, scope: !2889)
!2892 = !DILocation(line: 317, column: 41, scope: !2889)
!2893 = !DILocation(line: 317, column: 23, scope: !2889)
!2894 = !DILocation(line: 317, column: 6, scope: !2858)
!2895 = !DILocation(line: 319, column: 3, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2889, file: !3, line: 317, column: 54)
!2897 = !DILocation(line: 322, column: 18, scope: !2858)
!2898 = !DILocation(line: 322, column: 22, scope: !2858)
!2899 = !DILocation(line: 322, column: 33, scope: !2858)
!2900 = !DILocation(line: 322, column: 16, scope: !2858)
!2901 = !DILocation(line: 323, column: 6, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2858, file: !3, line: 323, column: 6)
!2903 = !DILocation(line: 323, column: 22, scope: !2902)
!2904 = !DILocation(line: 323, column: 20, scope: !2902)
!2905 = !DILocation(line: 323, column: 6, scope: !2858)
!2906 = !DILocation(line: 331, column: 12, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2902, file: !3, line: 323, column: 40)
!2908 = !DILocation(line: 331, column: 16, scope: !2907)
!2909 = !DILocation(line: 331, column: 9, scope: !2907)
!2910 = !DILocation(line: 332, column: 18, scope: !2907)
!2911 = !DILocation(line: 332, column: 16, scope: !2907)
!2912 = !DILocation(line: 333, column: 7, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2907, file: !3, line: 333, column: 7)
!2914 = !DILocation(line: 333, column: 14, scope: !2913)
!2915 = !DILocation(line: 333, column: 22, scope: !2913)
!2916 = !DILocation(line: 333, column: 27, scope: !2913)
!2917 = !DILocation(line: 333, column: 25, scope: !2913)
!2918 = !DILocation(line: 333, column: 7, scope: !2907)
!2919 = !DILocation(line: 334, column: 19, scope: !2913)
!2920 = !DILocation(line: 334, column: 26, scope: !2913)
!2921 = !DILocation(line: 334, column: 34, scope: !2913)
!2922 = !DILocation(line: 334, column: 17, scope: !2913)
!2923 = !DILocation(line: 334, column: 4, scope: !2913)
!2924 = !DILocation(line: 335, column: 7, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2907, file: !3, line: 335, column: 7)
!2926 = !DILocation(line: 335, column: 14, scope: !2925)
!2927 = !DILocation(line: 335, column: 19, scope: !2925)
!2928 = !DILocation(line: 335, column: 24, scope: !2925)
!2929 = !DILocation(line: 335, column: 22, scope: !2925)
!2930 = !DILocation(line: 335, column: 7, scope: !2907)
!2931 = !DILocation(line: 336, column: 19, scope: !2925)
!2932 = !DILocation(line: 336, column: 26, scope: !2925)
!2933 = !DILocation(line: 336, column: 31, scope: !2925)
!2934 = !DILocation(line: 336, column: 17, scope: !2925)
!2935 = !DILocation(line: 336, column: 4, scope: !2925)
!2936 = !DILocation(line: 337, column: 2, scope: !2907)
!2937 = !DILocation(line: 337, column: 13, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2902, file: !3, line: 337, column: 13)
!2939 = !DILocation(line: 337, column: 30, scope: !2938)
!2940 = !DILocation(line: 337, column: 27, scope: !2938)
!2941 = !DILocation(line: 337, column: 13, scope: !2902)
!2942 = !DILocation(line: 341, column: 3, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2938, file: !3, line: 337, column: 48)
!2944 = !DILocation(line: 350, column: 18, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2938, file: !3, line: 342, column: 9)
!2946 = !DILocation(line: 350, column: 16, scope: !2945)
!2947 = !DILocation(line: 352, column: 39, scope: !2858)
!2948 = !DILocation(line: 352, column: 43, scope: !2858)
!2949 = !DILocation(line: 352, column: 9, scope: !2858)
!2950 = !DILocation(line: 352, column: 2, scope: !2858)
!2951 = !DILocation(line: 353, column: 1, scope: !2858)
!2952 = distinct !DISubprogram(name: "acpi_processor_get_platform_limit", scope: !3, file: !3, line: 275, type: !257, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!2953 = !DILocalVariable(name: "pr", arg: 1, scope: !2952, file: !3, line: 275, type: !97)
!2954 = !DILocation(line: 275, column: 69, scope: !2952)
!2955 = !DILocalVariable(name: "status", scope: !2952, file: !3, line: 277, type: !2441)
!2956 = !DILocation(line: 277, column: 14, scope: !2952)
!2957 = !DILocalVariable(name: "tpc", scope: !2952, file: !3, line: 278, type: !173)
!2958 = !DILocation(line: 278, column: 21, scope: !2952)
!2959 = !DILocation(line: 280, column: 7, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2952, file: !3, line: 280, column: 6)
!2961 = !DILocation(line: 280, column: 6, scope: !2952)
!2962 = !DILocation(line: 281, column: 3, scope: !2960)
!2963 = !DILocation(line: 283, column: 6, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2952, file: !3, line: 283, column: 6)
!2965 = !DILocation(line: 283, column: 6, scope: !2952)
!2966 = !DILocation(line: 284, column: 3, scope: !2964)
!2967 = !DILocation(line: 286, column: 33, scope: !2952)
!2968 = !DILocation(line: 286, column: 37, scope: !2952)
!2969 = !DILocation(line: 286, column: 11, scope: !2952)
!2970 = !DILocation(line: 286, column: 9, scope: !2952)
!2971 = !DILocation(line: 287, column: 6, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2952, file: !3, line: 287, column: 6)
!2973 = !DILocation(line: 287, column: 6, scope: !2952)
!2974 = !DILocation(line: 288, column: 7, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2976, file: !3, line: 288, column: 7)
!2976 = distinct !DILexicalBlock(scope: !2972, file: !3, line: 287, column: 28)
!2977 = !DILocation(line: 288, column: 14, scope: !2975)
!2978 = !DILocation(line: 288, column: 7, scope: !2976)
!2979 = !DILocation(line: 289, column: 4, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2975, file: !3, line: 288, column: 31)
!2981 = !DILocation(line: 290, column: 3, scope: !2980)
!2982 = !DILocation(line: 291, column: 3, scope: !2976)
!2983 = !DILabel(scope: !2952, name: "end", file: !3, line: 294)
!2984 = !DILocation(line: 294, column: 1, scope: !2952)
!2985 = !DILocation(line: 295, column: 39, scope: !2952)
!2986 = !DILocation(line: 295, column: 34, scope: !2952)
!2987 = !DILocation(line: 295, column: 2, scope: !2952)
!2988 = !DILocation(line: 295, column: 6, scope: !2952)
!2989 = !DILocation(line: 295, column: 32, scope: !2952)
!2990 = !DILocation(line: 296, column: 2, scope: !2952)
!2991 = !DILocation(line: 297, column: 1, scope: !2952)
!2992 = distinct !DISubprogram(name: "acpi_processor_set_throttling", scope: !3, file: !3, line: 1170, type: !261, scopeLine: 1172, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !336)
!2993 = !DILocalVariable(name: "pr", arg: 1, scope: !2992, file: !3, line: 1170, type: !97)
!2994 = !DILocation(line: 1170, column: 58, scope: !2992)
!2995 = !DILocalVariable(name: "state", arg: 2, scope: !2992, file: !3, line: 1170, type: !116)
!2996 = !DILocation(line: 1170, column: 66, scope: !2992)
!2997 = !DILocalVariable(name: "force", arg: 3, scope: !2992, file: !3, line: 1171, type: !263)
!2998 = !DILocation(line: 1171, column: 12, scope: !2992)
!2999 = !DILocation(line: 1173, column: 41, scope: !2992)
!3000 = !DILocation(line: 1173, column: 45, scope: !2992)
!3001 = !DILocation(line: 1173, column: 52, scope: !2992)
!3002 = !DILocation(line: 1173, column: 9, scope: !2992)
!3003 = !DILocation(line: 1173, column: 2, scope: !2992)
!3004 = distinct !DISubprogram(name: "acpi_processor_reevaluate_tstate", scope: !3, file: !3, line: 364, type: !3005, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !336)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{null, !97, !263}
!3007 = !DILocalVariable(name: "pr", arg: 1, scope: !3004, file: !3, line: 364, type: !97)
!3008 = !DILocation(line: 364, column: 62, scope: !3004)
!3009 = !DILocalVariable(name: "is_dead", arg: 2, scope: !3004, file: !3, line: 365, type: !263)
!3010 = !DILocation(line: 365, column: 11, scope: !3004)
!3011 = !DILocalVariable(name: "result", scope: !3004, file: !3, line: 367, type: !116)
!3012 = !DILocation(line: 367, column: 6, scope: !3004)
!3013 = !DILocation(line: 369, column: 6, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !3004, file: !3, line: 369, column: 6)
!3015 = !DILocation(line: 369, column: 6, scope: !3004)
!3016 = !DILocation(line: 373, column: 3, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !3014, file: !3, line: 369, column: 15)
!3018 = !DILocation(line: 373, column: 7, scope: !3017)
!3019 = !DILocation(line: 373, column: 13, scope: !3017)
!3020 = !DILocation(line: 373, column: 24, scope: !3017)
!3021 = !DILocation(line: 374, column: 3, scope: !3017)
!3022 = !DILocation(line: 379, column: 7, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !3004, file: !3, line: 379, column: 6)
!3024 = !DILocation(line: 379, column: 11, scope: !3023)
!3025 = !DILocation(line: 379, column: 22, scope: !3023)
!3026 = !DILocation(line: 379, column: 6, scope: !3004)
!3027 = !DILocation(line: 383, column: 3, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !3023, file: !3, line: 379, column: 35)
!3029 = !DILocation(line: 383, column: 7, scope: !3028)
!3030 = !DILocation(line: 383, column: 13, scope: !3028)
!3031 = !DILocation(line: 383, column: 24, scope: !3028)
!3032 = !DILocation(line: 384, column: 3, scope: !3028)
!3033 = !DILocation(line: 386, column: 2, scope: !3004)
!3034 = !DILocation(line: 386, column: 6, scope: !3004)
!3035 = !DILocation(line: 386, column: 12, scope: !3004)
!3036 = !DILocation(line: 386, column: 23, scope: !3004)
!3037 = !DILocation(line: 393, column: 41, scope: !3004)
!3038 = !DILocation(line: 393, column: 11, scope: !3004)
!3039 = !DILocation(line: 393, column: 9, scope: !3004)
!3040 = !DILocation(line: 394, column: 6, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3004, file: !3, line: 394, column: 6)
!3042 = !DILocation(line: 394, column: 6, scope: !3004)
!3043 = !DILocation(line: 395, column: 3, scope: !3041)
!3044 = !DILocation(line: 397, column: 6, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !3004, file: !3, line: 397, column: 6)
!3046 = !DILocation(line: 397, column: 10, scope: !3045)
!3047 = !DILocation(line: 397, column: 21, scope: !3045)
!3048 = !DILocation(line: 397, column: 6, scope: !3004)
!3049 = !DILocation(line: 398, column: 42, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3045, file: !3, line: 397, column: 28)
!3051 = !DILocation(line: 398, column: 12, scope: !3050)
!3052 = !DILocation(line: 398, column: 10, scope: !3050)
!3053 = !DILocation(line: 399, column: 7, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !3050, file: !3, line: 399, column: 7)
!3055 = !DILocation(line: 399, column: 7, scope: !3050)
!3056 = !DILocation(line: 400, column: 4, scope: !3054)
!3057 = !DILocation(line: 401, column: 2, scope: !3050)
!3058 = !DILabel(scope: !3004, name: "end", file: !3, line: 403)
!3059 = !DILocation(line: 403, column: 1, scope: !3004)
!3060 = !DILocation(line: 404, column: 6, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3004, file: !3, line: 404, column: 6)
!3062 = !DILocation(line: 404, column: 6, scope: !3004)
!3063 = !DILocation(line: 405, column: 3, scope: !3061)
!3064 = !DILocation(line: 405, column: 7, scope: !3061)
!3065 = !DILocation(line: 405, column: 13, scope: !3061)
!3066 = !DILocation(line: 405, column: 24, scope: !3061)
!3067 = !DILocation(line: 406, column: 1, scope: !3004)
!3068 = distinct !DISubprogram(name: "acpi_processor_get_throttling", scope: !3, file: !3, line: 900, type: !257, scopeLine: 901, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!3069 = !DILocalVariable(name: "pr", arg: 1, scope: !3068, file: !3, line: 900, type: !97)
!3070 = !DILocation(line: 900, column: 65, scope: !3068)
!3071 = !DILocation(line: 902, column: 7, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3068, file: !3, line: 902, column: 6)
!3073 = !DILocation(line: 902, column: 6, scope: !3068)
!3074 = !DILocation(line: 903, column: 3, scope: !3072)
!3075 = !DILocation(line: 905, column: 7, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3068, file: !3, line: 905, column: 6)
!3077 = !DILocation(line: 905, column: 11, scope: !3076)
!3078 = !DILocation(line: 905, column: 17, scope: !3076)
!3079 = !DILocation(line: 905, column: 6, scope: !3068)
!3080 = !DILocation(line: 906, column: 3, scope: !3076)
!3081 = !DILocation(line: 914, column: 7, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !3068, file: !3, line: 914, column: 6)
!3083 = !DILocation(line: 914, column: 6, scope: !3068)
!3084 = !DILocation(line: 915, column: 3, scope: !3082)
!3085 = !DILocation(line: 917, column: 21, scope: !3068)
!3086 = !DILocation(line: 917, column: 25, scope: !3068)
!3087 = !DILocation(line: 917, column: 62, scope: !3068)
!3088 = !DILocation(line: 917, column: 9, scope: !3068)
!3089 = !DILocation(line: 917, column: 2, scope: !3068)
!3090 = !DILocation(line: 918, column: 1, scope: !3068)
!3091 = distinct !DISubprogram(name: "__acpi_processor_set_throttling", scope: !3, file: !3, line: 1067, type: !3092, scopeLine: 1069, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{!116, !97, !116, !263, !263}
!3094 = !DILocalVariable(name: "pr", arg: 1, scope: !3091, file: !3, line: 1067, type: !97)
!3095 = !DILocation(line: 1067, column: 67, scope: !3091)
!3096 = !DILocalVariable(name: "state", arg: 2, scope: !3091, file: !3, line: 1068, type: !116)
!3097 = !DILocation(line: 1068, column: 13, scope: !3091)
!3098 = !DILocalVariable(name: "force", arg: 3, scope: !3091, file: !3, line: 1068, type: !263)
!3099 = !DILocation(line: 1068, column: 25, scope: !3091)
!3100 = !DILocalVariable(name: "direct", arg: 4, scope: !3091, file: !3, line: 1068, type: !263)
!3101 = !DILocation(line: 1068, column: 37, scope: !3091)
!3102 = !DILocalVariable(name: "ret", scope: !3091, file: !3, line: 1070, type: !116)
!3103 = !DILocation(line: 1070, column: 6, scope: !3091)
!3104 = !DILocalVariable(name: "i", scope: !3091, file: !3, line: 1071, type: !7)
!3105 = !DILocation(line: 1071, column: 15, scope: !3091)
!3106 = !DILocalVariable(name: "match_pr", scope: !3091, file: !3, line: 1072, type: !97)
!3107 = !DILocation(line: 1072, column: 25, scope: !3091)
!3108 = !DILocalVariable(name: "p_throttling", scope: !3091, file: !3, line: 1073, type: !2605)
!3109 = !DILocation(line: 1073, column: 36, scope: !3091)
!3110 = !DILocalVariable(name: "arg", scope: !3091, file: !3, line: 1074, type: !3111)
!3111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_throttling_arg", file: !3, line: 42, size: 128, elements: !3112)
!3112 = !{!3113, !3114, !3115}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "pr", scope: !3111, file: !3, line: 43, baseType: !97, size: 64)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "target_state", scope: !3111, file: !3, line: 44, baseType: !116, size: 32, offset: 64)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !3111, file: !3, line: 45, baseType: !263, size: 8, offset: 96)
!3116 = !DILocation(line: 1074, column: 39, scope: !3091)
!3117 = !DILocalVariable(name: "t_state", scope: !3091, file: !3, line: 1075, type: !3118)
!3118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "throttling_tstate", file: !3, line: 37, size: 64, elements: !3119)
!3119 = !{!3120, !3121}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3118, file: !3, line: 38, baseType: !7, size: 32)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "target_state", scope: !3118, file: !3, line: 39, baseType: !116, size: 32, offset: 32)
!3122 = !DILocation(line: 1075, column: 27, scope: !3091)
!3123 = !DILocation(line: 1077, column: 7, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3091, file: !3, line: 1077, column: 6)
!3125 = !DILocation(line: 1077, column: 6, scope: !3091)
!3126 = !DILocation(line: 1078, column: 3, scope: !3124)
!3127 = !DILocation(line: 1080, column: 7, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3091, file: !3, line: 1080, column: 6)
!3129 = !DILocation(line: 1080, column: 11, scope: !3128)
!3130 = !DILocation(line: 1080, column: 17, scope: !3128)
!3131 = !DILocation(line: 1080, column: 6, scope: !3091)
!3132 = !DILocation(line: 1081, column: 3, scope: !3128)
!3133 = !DILocation(line: 1083, column: 7, scope: !3134)
!3134 = distinct !DILexicalBlock(scope: !3091, file: !3, line: 1083, column: 6)
!3135 = !DILocation(line: 1083, column: 13, scope: !3134)
!3136 = !DILocation(line: 1083, column: 18, scope: !3134)
!3137 = !DILocation(line: 1083, column: 22, scope: !3134)
!3138 = !DILocation(line: 1083, column: 31, scope: !3134)
!3139 = !DILocation(line: 1083, column: 35, scope: !3134)
!3140 = !DILocation(line: 1083, column: 46, scope: !3134)
!3141 = !DILocation(line: 1083, column: 58, scope: !3134)
!3142 = !DILocation(line: 1083, column: 28, scope: !3134)
!3143 = !DILocation(line: 1083, column: 6, scope: !3091)
!3144 = !DILocation(line: 1084, column: 3, scope: !3134)
!3145 = !DILocation(line: 1086, column: 6, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3091, file: !3, line: 1086, column: 6)
!3147 = !DILocation(line: 1086, column: 6, scope: !3091)
!3148 = !DILocation(line: 1091, column: 3, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3146, file: !3, line: 1086, column: 30)
!3150 = !DILocation(line: 1094, column: 25, scope: !3091)
!3151 = !DILocation(line: 1094, column: 10, scope: !3091)
!3152 = !DILocation(line: 1094, column: 23, scope: !3091)
!3153 = !DILocation(line: 1095, column: 19, scope: !3091)
!3154 = !DILocation(line: 1095, column: 23, scope: !3091)
!3155 = !DILocation(line: 1095, column: 15, scope: !3091)
!3156 = !DILocation(line: 1102, column: 2, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !3091, file: !3, line: 1102, column: 2)
!3158 = !DILocation(line: 1102, column: 2, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3157, file: !3, line: 1102, column: 2)
!3160 = !DILocation(line: 1103, column: 17, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3159, file: !3, line: 1102, column: 69)
!3162 = !DILocation(line: 1103, column: 11, scope: !3161)
!3163 = !DILocation(line: 1103, column: 15, scope: !3161)
!3164 = !DILocation(line: 1105, column: 8, scope: !3161)
!3165 = !DILocation(line: 1104, column: 3, scope: !3161)
!3166 = !DILocation(line: 1106, column: 2, scope: !3161)
!3167 = distinct !{!3167, !3156, !3168}
!3168 = !DILocation(line: 1106, column: 2, scope: !3157)
!3169 = !DILocation(line: 1113, column: 6, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3091, file: !3, line: 1113, column: 6)
!3171 = !DILocation(line: 1113, column: 20, scope: !3170)
!3172 = !DILocation(line: 1113, column: 32, scope: !3170)
!3173 = !DILocation(line: 1113, column: 6, scope: !3091)
!3174 = !DILocation(line: 1114, column: 12, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3170, file: !3, line: 1113, column: 61)
!3176 = !DILocation(line: 1114, column: 7, scope: !3175)
!3177 = !DILocation(line: 1114, column: 10, scope: !3175)
!3178 = !DILocation(line: 1115, column: 22, scope: !3175)
!3179 = !DILocation(line: 1115, column: 7, scope: !3175)
!3180 = !DILocation(line: 1115, column: 20, scope: !3175)
!3181 = !DILocation(line: 1116, column: 15, scope: !3175)
!3182 = !DILocation(line: 1116, column: 7, scope: !3175)
!3183 = !DILocation(line: 1116, column: 13, scope: !3175)
!3184 = !DILocation(line: 1117, column: 21, scope: !3175)
!3185 = !DILocation(line: 1117, column: 25, scope: !3175)
!3186 = !DILocation(line: 1117, column: 59, scope: !3175)
!3187 = !DILocation(line: 1118, column: 7, scope: !3175)
!3188 = !DILocation(line: 1117, column: 9, scope: !3175)
!3189 = !DILocation(line: 1117, column: 7, scope: !3175)
!3190 = !DILocation(line: 1119, column: 2, scope: !3175)
!3191 = !DILocation(line: 1125, column: 3, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !3193, file: !3, line: 1125, column: 3)
!3193 = distinct !DILexicalBlock(scope: !3170, file: !3, line: 1119, column: 9)
!3194 = !DILocation(line: 1125, column: 3, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3192, file: !3, line: 1125, column: 3)
!3196 = !DILocation(line: 1127, column: 15, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !3198, file: !3, line: 1127, column: 15)
!3198 = distinct !DILexicalBlock(scope: !3195, file: !3, line: 1126, column: 37)
!3199 = !DILocation(line: 1127, column: 15, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3197, file: !3, line: 1127, column: 15)
!3201 = !DILocalVariable(name: "__vpp_verify", scope: !3202, file: !3, line: 1127, type: !1312)
!3202 = distinct !DILexicalBlock(scope: !3200, file: !3, line: 1127, column: 15)
!3203 = !DILocation(line: 1127, column: 15, scope: !3202)
!3204 = !DILocation(line: 1127, column: 15, scope: !3198)
!3205 = !DILocation(line: 1127, column: 13, scope: !3198)
!3206 = !DILocation(line: 1132, column: 9, scope: !3207)
!3207 = distinct !DILexicalBlock(scope: !3198, file: !3, line: 1132, column: 8)
!3208 = !DILocation(line: 1132, column: 8, scope: !3198)
!3209 = !DILocation(line: 1135, column: 5, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3207, file: !3, line: 1132, column: 19)
!3211 = !DILocation(line: 1141, column: 9, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3198, file: !3, line: 1141, column: 8)
!3213 = !DILocation(line: 1141, column: 19, scope: !3212)
!3214 = !DILocation(line: 1141, column: 25, scope: !3212)
!3215 = !DILocation(line: 1141, column: 8, scope: !3198)
!3216 = !DILocation(line: 1145, column: 5, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3212, file: !3, line: 1141, column: 37)
!3218 = !DILocation(line: 1148, column: 13, scope: !3198)
!3219 = !DILocation(line: 1148, column: 8, scope: !3198)
!3220 = !DILocation(line: 1148, column: 11, scope: !3198)
!3221 = !DILocation(line: 1149, column: 23, scope: !3198)
!3222 = !DILocation(line: 1149, column: 8, scope: !3198)
!3223 = !DILocation(line: 1149, column: 21, scope: !3198)
!3224 = !DILocation(line: 1150, column: 16, scope: !3198)
!3225 = !DILocation(line: 1150, column: 8, scope: !3198)
!3226 = !DILocation(line: 1150, column: 14, scope: !3198)
!3227 = !DILocation(line: 1151, column: 22, scope: !3198)
!3228 = !DILocation(line: 1151, column: 26, scope: !3198)
!3229 = !DILocation(line: 1152, column: 8, scope: !3198)
!3230 = !DILocation(line: 1152, column: 14, scope: !3198)
!3231 = !DILocation(line: 1151, column: 10, scope: !3198)
!3232 = !DILocation(line: 1151, column: 8, scope: !3198)
!3233 = !DILocation(line: 1153, column: 3, scope: !3198)
!3234 = distinct !{!3234, !3191, !3235}
!3235 = !DILocation(line: 1153, column: 3, scope: !3192)
!3236 = !DILocation(line: 1161, column: 2, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !3091, file: !3, line: 1161, column: 2)
!3238 = !DILocation(line: 1161, column: 2, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3237, file: !3, line: 1161, column: 2)
!3240 = !DILocation(line: 1162, column: 17, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3239, file: !3, line: 1161, column: 69)
!3242 = !DILocation(line: 1162, column: 11, scope: !3241)
!3243 = !DILocation(line: 1162, column: 15, scope: !3241)
!3244 = !DILocation(line: 1164, column: 8, scope: !3241)
!3245 = !DILocation(line: 1163, column: 3, scope: !3241)
!3246 = !DILocation(line: 1165, column: 2, scope: !3241)
!3247 = distinct !{!3247, !3236, !3248}
!3248 = !DILocation(line: 1165, column: 2, scope: !3237)
!3249 = !DILocation(line: 1167, column: 9, scope: !3091)
!3250 = !DILocation(line: 1167, column: 2, scope: !3091)
!3251 = !DILocation(line: 1168, column: 1, scope: !3091)
!3252 = distinct !DISubprogram(name: "acpi_processor_get_throttling_info", scope: !3, file: !3, line: 1176, type: !257, scopeLine: 1177, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !336)
!3253 = !DILocalVariable(name: "pr", arg: 1, scope: !3252, file: !3, line: 1176, type: !97)
!3254 = !DILocation(line: 1176, column: 63, scope: !3252)
!3255 = !DILocalVariable(name: "result", scope: !3252, file: !3, line: 1178, type: !116)
!3256 = !DILocation(line: 1178, column: 6, scope: !3252)
!3257 = !DILocalVariable(name: "pthrottling", scope: !3252, file: !3, line: 1179, type: !2605)
!3258 = !DILocation(line: 1179, column: 36, scope: !3252)
!3259 = !DILocation(line: 1191, column: 44, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !3252, file: !3, line: 1191, column: 6)
!3261 = !DILocation(line: 1191, column: 6, scope: !3260)
!3262 = !DILocation(line: 1191, column: 48, scope: !3260)
!3263 = !DILocation(line: 1192, column: 40, scope: !3260)
!3264 = !DILocation(line: 1192, column: 3, scope: !3260)
!3265 = !DILocation(line: 1192, column: 44, scope: !3260)
!3266 = !DILocation(line: 1193, column: 37, scope: !3260)
!3267 = !DILocation(line: 1193, column: 3, scope: !3260)
!3268 = !DILocation(line: 1191, column: 6, scope: !3252)
!3269 = !DILocation(line: 1195, column: 3, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3260, file: !3, line: 1194, column: 2)
!3271 = !DILocation(line: 1195, column: 7, scope: !3270)
!3272 = !DILocation(line: 1195, column: 18, scope: !3270)
!3273 = !DILocation(line: 1195, column: 48, scope: !3270)
!3274 = !DILocation(line: 1197, column: 3, scope: !3270)
!3275 = !DILocation(line: 1197, column: 7, scope: !3270)
!3276 = !DILocation(line: 1197, column: 18, scope: !3270)
!3277 = !DILocation(line: 1197, column: 48, scope: !3270)
!3278 = !DILocation(line: 1199, column: 36, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !3270, file: !3, line: 1199, column: 7)
!3280 = !DILocation(line: 1199, column: 7, scope: !3279)
!3281 = !DILocation(line: 1199, column: 7, scope: !3270)
!3282 = !DILocation(line: 1200, column: 4, scope: !3279)
!3283 = !DILocation(line: 1201, column: 2, scope: !3270)
!3284 = !DILocation(line: 1202, column: 3, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3260, file: !3, line: 1201, column: 9)
!3286 = !DILocation(line: 1202, column: 7, scope: !3285)
!3287 = !DILocation(line: 1202, column: 18, scope: !3285)
!3288 = !DILocation(line: 1202, column: 48, scope: !3285)
!3289 = !DILocation(line: 1204, column: 3, scope: !3285)
!3290 = !DILocation(line: 1204, column: 7, scope: !3285)
!3291 = !DILocation(line: 1204, column: 18, scope: !3285)
!3292 = !DILocation(line: 1204, column: 48, scope: !3285)
!3293 = !DILocation(line: 1212, column: 29, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3252, file: !3, line: 1212, column: 6)
!3295 = !DILocation(line: 1212, column: 6, scope: !3294)
!3296 = !DILocation(line: 1212, column: 6, scope: !3252)
!3297 = !DILocation(line: 1213, column: 18, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3294, file: !3, line: 1212, column: 34)
!3299 = !DILocation(line: 1213, column: 22, scope: !3298)
!3300 = !DILocation(line: 1213, column: 15, scope: !3298)
!3301 = !DILocation(line: 1214, column: 3, scope: !3298)
!3302 = !DILocation(line: 1214, column: 16, scope: !3298)
!3303 = !DILocation(line: 1214, column: 31, scope: !3298)
!3304 = !DILocation(line: 1215, column: 19, scope: !3298)
!3305 = !DILocation(line: 1215, column: 23, scope: !3298)
!3306 = !DILocation(line: 1215, column: 27, scope: !3298)
!3307 = !DILocation(line: 1215, column: 40, scope: !3298)
!3308 = !DILocation(line: 1215, column: 3, scope: !3298)
!3309 = !DILocation(line: 1216, column: 3, scope: !3298)
!3310 = !DILocation(line: 1216, column: 16, scope: !3298)
!3311 = !DILocation(line: 1216, column: 28, scope: !3298)
!3312 = !DILocation(line: 1217, column: 2, scope: !3298)
!3313 = !DILocation(line: 1224, column: 19, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !3252, file: !3, line: 1224, column: 6)
!3315 = !DILocation(line: 1224, column: 6, scope: !3314)
!3316 = !DILocation(line: 1224, column: 6, scope: !3252)
!3317 = !DILocation(line: 1227, column: 3, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3314, file: !3, line: 1224, column: 29)
!3319 = !DILocation(line: 1233, column: 2, scope: !3252)
!3320 = !DILocation(line: 1233, column: 6, scope: !3252)
!3321 = !DILocation(line: 1233, column: 12, scope: !3252)
!3322 = !DILocation(line: 1233, column: 23, scope: !3252)
!3323 = !DILocation(line: 1241, column: 41, scope: !3252)
!3324 = !DILocation(line: 1241, column: 11, scope: !3252)
!3325 = !DILocation(line: 1241, column: 9, scope: !3252)
!3326 = !DILocation(line: 1242, column: 6, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3252, file: !3, line: 1242, column: 6)
!3328 = !DILocation(line: 1242, column: 6, scope: !3252)
!3329 = !DILocation(line: 1243, column: 3, scope: !3327)
!3330 = !DILocation(line: 1245, column: 6, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3252, file: !3, line: 1245, column: 6)
!3332 = !DILocation(line: 1245, column: 10, scope: !3331)
!3333 = !DILocation(line: 1245, column: 21, scope: !3331)
!3334 = !DILocation(line: 1245, column: 6, scope: !3252)
!3335 = !DILocation(line: 1249, column: 42, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3331, file: !3, line: 1245, column: 28)
!3337 = !DILocation(line: 1249, column: 12, scope: !3336)
!3338 = !DILocation(line: 1249, column: 10, scope: !3336)
!3339 = !DILocation(line: 1250, column: 7, scope: !3340)
!3340 = distinct !DILexicalBlock(scope: !3336, file: !3, line: 1250, column: 7)
!3341 = !DILocation(line: 1250, column: 7, scope: !3336)
!3342 = !DILocation(line: 1251, column: 4, scope: !3340)
!3343 = !DILocation(line: 1252, column: 2, scope: !3336)
!3344 = !DILabel(scope: !3252, name: "end", file: !3, line: 1254)
!3345 = !DILocation(line: 1254, column: 7, scope: !3252)
!3346 = !DILocation(line: 1255, column: 6, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3252, file: !3, line: 1255, column: 6)
!3348 = !DILocation(line: 1255, column: 6, scope: !3252)
!3349 = !DILocation(line: 1256, column: 3, scope: !3347)
!3350 = !DILocation(line: 1256, column: 7, scope: !3347)
!3351 = !DILocation(line: 1256, column: 13, scope: !3347)
!3352 = !DILocation(line: 1256, column: 24, scope: !3347)
!3353 = !DILocation(line: 1258, column: 9, scope: !3252)
!3354 = !DILocation(line: 1258, column: 2, scope: !3252)
!3355 = !DILocation(line: 1259, column: 1, scope: !3252)
!3356 = distinct !DISubprogram(name: "acpi_processor_get_throttling_control", scope: !3, file: !3, line: 410, type: !257, scopeLine: 411, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!3357 = !DILocalVariable(name: "pr", arg: 1, scope: !3356, file: !3, line: 410, type: !97)
!3358 = !DILocation(line: 410, column: 73, scope: !3356)
!3359 = !DILocalVariable(name: "result", scope: !3356, file: !3, line: 412, type: !116)
!3360 = !DILocation(line: 412, column: 6, scope: !3356)
!3361 = !DILocalVariable(name: "status", scope: !3356, file: !3, line: 413, type: !2441)
!3362 = !DILocation(line: 413, column: 14, scope: !3356)
!3363 = !DILocalVariable(name: "buffer", scope: !3356, file: !3, line: 414, type: !3364)
!3364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_buffer", file: !103, line: 969, size: 128, elements: !3365)
!3365 = !{!3366, !3368}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3364, file: !103, line: 970, baseType: !3367, size: 64)
!3367 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !103, line: 127, baseType: !171)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !3364, file: !103, line: 971, baseType: !104, size: 64, offset: 64)
!3369 = !DILocation(line: 414, column: 21, scope: !3356)
!3370 = !DILocalVariable(name: "ptc", scope: !3356, file: !3, line: 415, type: !2442)
!3371 = !DILocation(line: 415, column: 21, scope: !3356)
!3372 = !DILocalVariable(name: "obj", scope: !3356, file: !3, line: 416, type: !2443)
!3373 = !DILocation(line: 416, column: 20, scope: !3356)
!3374 = !DILocalVariable(name: "throttling", scope: !3356, file: !3, line: 417, type: !2605)
!3375 = !DILocation(line: 417, column: 36, scope: !3356)
!3376 = !DILocation(line: 419, column: 32, scope: !3356)
!3377 = !DILocation(line: 419, column: 36, scope: !3356)
!3378 = !DILocation(line: 419, column: 11, scope: !3356)
!3379 = !DILocation(line: 419, column: 9, scope: !3356)
!3380 = !DILocation(line: 420, column: 6, scope: !3381)
!3381 = distinct !DILexicalBlock(scope: !3356, file: !3, line: 420, column: 6)
!3382 = !DILocation(line: 420, column: 6, scope: !3356)
!3383 = !DILocation(line: 421, column: 7, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3385, file: !3, line: 421, column: 7)
!3385 = distinct !DILexicalBlock(scope: !3381, file: !3, line: 420, column: 28)
!3386 = !DILocation(line: 421, column: 14, scope: !3384)
!3387 = !DILocation(line: 421, column: 7, scope: !3385)
!3388 = !DILocation(line: 422, column: 4, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !3384, file: !3, line: 421, column: 31)
!3390 = !DILocation(line: 423, column: 3, scope: !3389)
!3391 = !DILocation(line: 424, column: 3, scope: !3385)
!3392 = !DILocation(line: 427, column: 36, scope: !3356)
!3393 = !DILocation(line: 427, column: 8, scope: !3356)
!3394 = !DILocation(line: 427, column: 6, scope: !3356)
!3395 = !DILocation(line: 428, column: 7, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3356, file: !3, line: 428, column: 6)
!3397 = !DILocation(line: 428, column: 11, scope: !3396)
!3398 = !DILocation(line: 428, column: 15, scope: !3396)
!3399 = !DILocation(line: 428, column: 20, scope: !3396)
!3400 = !DILocation(line: 428, column: 25, scope: !3396)
!3401 = !DILocation(line: 429, column: 6, scope: !3396)
!3402 = !DILocation(line: 429, column: 10, scope: !3396)
!3403 = !DILocation(line: 429, column: 15, scope: !3396)
!3404 = !DILocation(line: 429, column: 23, scope: !3396)
!3405 = !DILocation(line: 429, column: 29, scope: !3396)
!3406 = !DILocation(line: 428, column: 6, scope: !3356)
!3407 = !DILocation(line: 430, column: 3, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !3396, file: !3, line: 429, column: 36)
!3409 = !DILocation(line: 431, column: 10, scope: !3408)
!3410 = !DILocation(line: 432, column: 3, scope: !3408)
!3411 = !DILocation(line: 439, column: 8, scope: !3356)
!3412 = !DILocation(line: 439, column: 13, scope: !3356)
!3413 = !DILocation(line: 439, column: 21, scope: !3356)
!3414 = !DILocation(line: 441, column: 11, scope: !3415)
!3415 = distinct !DILexicalBlock(scope: !3356, file: !3, line: 441, column: 6)
!3416 = !DILocation(line: 441, column: 16, scope: !3415)
!3417 = !DILocation(line: 442, column: 6, scope: !3415)
!3418 = !DILocation(line: 442, column: 14, scope: !3415)
!3419 = !DILocation(line: 442, column: 21, scope: !3415)
!3420 = !DILocation(line: 442, column: 10, scope: !3415)
!3421 = !DILocation(line: 442, column: 28, scope: !3415)
!3422 = !DILocation(line: 443, column: 6, scope: !3415)
!3423 = !DILocation(line: 443, column: 14, scope: !3415)
!3424 = !DILocation(line: 443, column: 21, scope: !3415)
!3425 = !DILocation(line: 443, column: 29, scope: !3415)
!3426 = !DILocation(line: 441, column: 6, scope: !3356)
!3427 = !DILocation(line: 444, column: 3, scope: !3428)
!3428 = distinct !DILexicalBlock(scope: !3415, file: !3, line: 443, column: 39)
!3429 = !DILocation(line: 446, column: 10, scope: !3428)
!3430 = !DILocation(line: 447, column: 3, scope: !3428)
!3431 = !DILocation(line: 449, column: 10, scope: !3356)
!3432 = !DILocation(line: 449, column: 14, scope: !3356)
!3433 = !DILocation(line: 449, column: 25, scope: !3356)
!3434 = !DILocation(line: 449, column: 2, scope: !3356)
!3435 = !DILocation(line: 449, column: 47, scope: !3356)
!3436 = !DILocation(line: 449, column: 54, scope: !3356)
!3437 = !DILocation(line: 456, column: 8, scope: !3356)
!3438 = !DILocation(line: 456, column: 13, scope: !3356)
!3439 = !DILocation(line: 456, column: 21, scope: !3356)
!3440 = !DILocation(line: 458, column: 11, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3356, file: !3, line: 458, column: 6)
!3442 = !DILocation(line: 458, column: 16, scope: !3441)
!3443 = !DILocation(line: 459, column: 6, scope: !3441)
!3444 = !DILocation(line: 459, column: 14, scope: !3441)
!3445 = !DILocation(line: 459, column: 21, scope: !3441)
!3446 = !DILocation(line: 459, column: 10, scope: !3441)
!3447 = !DILocation(line: 459, column: 28, scope: !3441)
!3448 = !DILocation(line: 460, column: 6, scope: !3441)
!3449 = !DILocation(line: 460, column: 14, scope: !3441)
!3450 = !DILocation(line: 460, column: 21, scope: !3441)
!3451 = !DILocation(line: 460, column: 29, scope: !3441)
!3452 = !DILocation(line: 458, column: 6, scope: !3356)
!3453 = !DILocation(line: 461, column: 3, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !3441, file: !3, line: 460, column: 39)
!3455 = !DILocation(line: 462, column: 10, scope: !3454)
!3456 = !DILocation(line: 463, column: 3, scope: !3454)
!3457 = !DILocation(line: 466, column: 10, scope: !3356)
!3458 = !DILocation(line: 466, column: 14, scope: !3356)
!3459 = !DILocation(line: 466, column: 25, scope: !3356)
!3460 = !DILocation(line: 466, column: 2, scope: !3356)
!3461 = !DILocation(line: 466, column: 46, scope: !3356)
!3462 = !DILocation(line: 466, column: 53, scope: !3356)
!3463 = !DILocation(line: 469, column: 16, scope: !3356)
!3464 = !DILocation(line: 469, column: 20, scope: !3356)
!3465 = !DILocation(line: 469, column: 13, scope: !3356)
!3466 = !DILocation(line: 471, column: 7, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !3356, file: !3, line: 471, column: 6)
!3468 = !DILocation(line: 471, column: 19, scope: !3467)
!3469 = !DILocation(line: 471, column: 36, scope: !3467)
!3470 = !DILocation(line: 472, column: 3, scope: !3467)
!3471 = !DILocation(line: 472, column: 15, scope: !3467)
!3472 = !DILocation(line: 472, column: 32, scope: !3467)
!3473 = !DILocation(line: 471, column: 46, scope: !3467)
!3474 = !DILocation(line: 472, column: 44, scope: !3467)
!3475 = !DILocation(line: 471, column: 6, scope: !3356)
!3476 = !DILocation(line: 473, column: 3, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3467, file: !3, line: 472, column: 50)
!3478 = !DILocation(line: 474, column: 10, scope: !3477)
!3479 = !DILocation(line: 475, column: 3, scope: !3477)
!3480 = !DILocation(line: 478, column: 7, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3356, file: !3, line: 478, column: 6)
!3482 = !DILocation(line: 478, column: 19, scope: !3481)
!3483 = !DILocation(line: 478, column: 35, scope: !3481)
!3484 = !DILocation(line: 479, column: 3, scope: !3481)
!3485 = !DILocation(line: 479, column: 15, scope: !3481)
!3486 = !DILocation(line: 479, column: 31, scope: !3481)
!3487 = !DILocation(line: 478, column: 45, scope: !3481)
!3488 = !DILocation(line: 479, column: 43, scope: !3481)
!3489 = !DILocation(line: 478, column: 6, scope: !3356)
!3490 = !DILocation(line: 480, column: 3, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3481, file: !3, line: 479, column: 49)
!3492 = !DILocation(line: 481, column: 10, scope: !3491)
!3493 = !DILocation(line: 482, column: 3, scope: !3491)
!3494 = !DILocation(line: 479, column: 45, scope: !3481)
!3495 = !DILabel(scope: !3356, name: "end", file: !3, line: 485)
!3496 = !DILocation(line: 485, column: 7, scope: !3356)
!3497 = !DILocation(line: 486, column: 15, scope: !3356)
!3498 = !DILocation(line: 486, column: 2, scope: !3356)
!3499 = !DILocation(line: 488, column: 9, scope: !3356)
!3500 = !DILocation(line: 488, column: 2, scope: !3356)
!3501 = !DILocation(line: 489, column: 1, scope: !3356)
!3502 = distinct !DISubprogram(name: "acpi_processor_get_throttling_states", scope: !3, file: !3, line: 494, type: !257, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!3503 = !DILocalVariable(name: "pr", arg: 1, scope: !3502, file: !3, line: 494, type: !97)
!3504 = !DILocation(line: 494, column: 72, scope: !3502)
!3505 = !DILocalVariable(name: "result", scope: !3502, file: !3, line: 496, type: !116)
!3506 = !DILocation(line: 496, column: 6, scope: !3502)
!3507 = !DILocalVariable(name: "status", scope: !3502, file: !3, line: 497, type: !2441)
!3508 = !DILocation(line: 497, column: 14, scope: !3502)
!3509 = !DILocalVariable(name: "buffer", scope: !3502, file: !3, line: 498, type: !3364)
!3510 = !DILocation(line: 498, column: 21, scope: !3502)
!3511 = !DILocalVariable(name: "format", scope: !3502, file: !3, line: 499, type: !3364)
!3512 = !DILocation(line: 499, column: 21, scope: !3502)
!3513 = !DILocalVariable(name: "state", scope: !3502, file: !3, line: 500, type: !3364)
!3514 = !DILocation(line: 500, column: 21, scope: !3502)
!3515 = !DILocalVariable(name: "tss", scope: !3502, file: !3, line: 501, type: !2442)
!3516 = !DILocation(line: 501, column: 21, scope: !3502)
!3517 = !DILocalVariable(name: "i", scope: !3502, file: !3, line: 502, type: !116)
!3518 = !DILocation(line: 502, column: 6, scope: !3502)
!3519 = !DILocation(line: 504, column: 32, scope: !3502)
!3520 = !DILocation(line: 504, column: 36, scope: !3502)
!3521 = !DILocation(line: 504, column: 11, scope: !3502)
!3522 = !DILocation(line: 504, column: 9, scope: !3502)
!3523 = !DILocation(line: 505, column: 6, scope: !3524)
!3524 = distinct !DILexicalBlock(scope: !3502, file: !3, line: 505, column: 6)
!3525 = !DILocation(line: 505, column: 6, scope: !3502)
!3526 = !DILocation(line: 506, column: 7, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !3528, file: !3, line: 506, column: 7)
!3528 = distinct !DILexicalBlock(scope: !3524, file: !3, line: 505, column: 28)
!3529 = !DILocation(line: 506, column: 14, scope: !3527)
!3530 = !DILocation(line: 506, column: 7, scope: !3528)
!3531 = !DILocation(line: 507, column: 4, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3527, file: !3, line: 506, column: 31)
!3533 = !DILocation(line: 508, column: 3, scope: !3532)
!3534 = !DILocation(line: 509, column: 3, scope: !3528)
!3535 = !DILocation(line: 512, column: 15, scope: !3502)
!3536 = !DILocation(line: 512, column: 8, scope: !3502)
!3537 = !DILocation(line: 512, column: 6, scope: !3502)
!3538 = !DILocation(line: 513, column: 7, scope: !3539)
!3539 = distinct !DILexicalBlock(scope: !3502, file: !3, line: 513, column: 6)
!3540 = !DILocation(line: 513, column: 11, scope: !3539)
!3541 = !DILocation(line: 513, column: 15, scope: !3539)
!3542 = !DILocation(line: 513, column: 20, scope: !3539)
!3543 = !DILocation(line: 513, column: 25, scope: !3539)
!3544 = !DILocation(line: 513, column: 6, scope: !3502)
!3545 = !DILocation(line: 514, column: 3, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3539, file: !3, line: 513, column: 48)
!3547 = !DILocation(line: 515, column: 10, scope: !3546)
!3548 = !DILocation(line: 516, column: 3, scope: !3546)
!3549 = !DILocation(line: 522, column: 31, scope: !3502)
!3550 = !DILocation(line: 522, column: 36, scope: !3502)
!3551 = !DILocation(line: 522, column: 44, scope: !3502)
!3552 = !DILocation(line: 522, column: 2, scope: !3502)
!3553 = !DILocation(line: 522, column: 6, scope: !3502)
!3554 = !DILocation(line: 522, column: 17, scope: !3502)
!3555 = !DILocation(line: 522, column: 29, scope: !3502)
!3556 = !DILocation(line: 524, column: 20, scope: !3502)
!3557 = !DILocation(line: 524, column: 25, scope: !3502)
!3558 = !DILocation(line: 524, column: 33, scope: !3502)
!3559 = !DILocation(line: 524, column: 6, scope: !3502)
!3560 = !DILocation(line: 523, column: 2, scope: !3502)
!3561 = !DILocation(line: 523, column: 6, scope: !3502)
!3562 = !DILocation(line: 523, column: 17, scope: !3502)
!3563 = !DILocation(line: 523, column: 28, scope: !3502)
!3564 = !DILocation(line: 527, column: 7, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3502, file: !3, line: 527, column: 6)
!3566 = !DILocation(line: 527, column: 11, scope: !3565)
!3567 = !DILocation(line: 527, column: 22, scope: !3565)
!3568 = !DILocation(line: 527, column: 6, scope: !3502)
!3569 = !DILocation(line: 528, column: 10, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !3565, file: !3, line: 527, column: 34)
!3571 = !DILocation(line: 529, column: 3, scope: !3570)
!3572 = !DILocation(line: 532, column: 9, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3502, file: !3, line: 532, column: 2)
!3574 = !DILocation(line: 532, column: 7, scope: !3573)
!3575 = !DILocation(line: 532, column: 14, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3573, file: !3, line: 532, column: 2)
!3577 = !DILocation(line: 532, column: 18, scope: !3576)
!3578 = !DILocation(line: 532, column: 22, scope: !3576)
!3579 = !DILocation(line: 532, column: 33, scope: !3576)
!3580 = !DILocation(line: 532, column: 16, scope: !3576)
!3581 = !DILocation(line: 532, column: 2, scope: !3573)
!3582 = !DILocalVariable(name: "tx", scope: !3583, file: !3, line: 534, type: !238)
!3583 = distinct !DILexicalBlock(scope: !3576, file: !3, line: 532, column: 51)
!3584 = !DILocation(line: 534, column: 33, scope: !3583)
!3585 = !DILocation(line: 535, column: 41, scope: !3583)
!3586 = !DILocation(line: 535, column: 45, scope: !3583)
!3587 = !DILocation(line: 536, column: 13, scope: !3583)
!3588 = !DILocation(line: 536, column: 24, scope: !3583)
!3589 = !DILocation(line: 538, column: 9, scope: !3583)
!3590 = !DILocation(line: 538, column: 16, scope: !3583)
!3591 = !DILocation(line: 539, column: 19, scope: !3583)
!3592 = !DILocation(line: 539, column: 9, scope: !3583)
!3593 = !DILocation(line: 539, column: 17, scope: !3583)
!3594 = !DILocation(line: 543, column: 35, scope: !3583)
!3595 = !DILocation(line: 543, column: 40, scope: !3583)
!3596 = !DILocation(line: 543, column: 48, scope: !3583)
!3597 = !DILocation(line: 543, column: 57, scope: !3583)
!3598 = !DILocation(line: 543, column: 12, scope: !3583)
!3599 = !DILocation(line: 543, column: 10, scope: !3583)
!3600 = !DILocation(line: 545, column: 7, scope: !3601)
!3601 = distinct !DILexicalBlock(scope: !3583, file: !3, line: 545, column: 7)
!3602 = !DILocation(line: 545, column: 7, scope: !3583)
!3603 = !DILocation(line: 546, column: 4, scope: !3604)
!3604 = distinct !DILexicalBlock(scope: !3601, file: !3, line: 545, column: 29)
!3605 = !DILocation(line: 547, column: 11, scope: !3604)
!3606 = !DILocation(line: 548, column: 10, scope: !3604)
!3607 = !DILocation(line: 548, column: 14, scope: !3604)
!3608 = !DILocation(line: 548, column: 25, scope: !3604)
!3609 = !DILocation(line: 548, column: 4, scope: !3604)
!3610 = !DILocation(line: 549, column: 4, scope: !3604)
!3611 = !DILocation(line: 552, column: 8, scope: !3612)
!3612 = distinct !DILexicalBlock(scope: !3583, file: !3, line: 552, column: 7)
!3613 = !DILocation(line: 552, column: 12, scope: !3612)
!3614 = !DILocation(line: 552, column: 7, scope: !3583)
!3615 = !DILocation(line: 553, column: 4, scope: !3616)
!3616 = distinct !DILexicalBlock(scope: !3612, file: !3, line: 552, column: 28)
!3617 = !DILocation(line: 555, column: 11, scope: !3616)
!3618 = !DILocation(line: 556, column: 10, scope: !3616)
!3619 = !DILocation(line: 556, column: 14, scope: !3616)
!3620 = !DILocation(line: 556, column: 25, scope: !3616)
!3621 = !DILocation(line: 556, column: 4, scope: !3616)
!3622 = !DILocation(line: 557, column: 4, scope: !3616)
!3623 = !DILocation(line: 559, column: 2, scope: !3583)
!3624 = !DILocation(line: 532, column: 47, scope: !3576)
!3625 = !DILocation(line: 532, column: 2, scope: !3576)
!3626 = distinct !{!3626, !3581, !3627}
!3627 = !DILocation(line: 559, column: 2, scope: !3573)
!3628 = !DILabel(scope: !3502, name: "end", file: !3, line: 561)
!3629 = !DILocation(line: 561, column: 7, scope: !3502)
!3630 = !DILocation(line: 562, column: 15, scope: !3502)
!3631 = !DILocation(line: 562, column: 2, scope: !3502)
!3632 = !DILocation(line: 564, column: 9, scope: !3502)
!3633 = !DILocation(line: 564, column: 2, scope: !3502)
!3634 = !DILocation(line: 565, column: 1, scope: !3502)
!3635 = distinct !DISubprogram(name: "acpi_processor_get_throttling_fadt", scope: !3, file: !3, line: 654, type: !257, scopeLine: 655, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!3636 = !DILocalVariable(name: "pr", arg: 1, scope: !3635, file: !3, line: 654, type: !97)
!3637 = !DILocation(line: 654, column: 70, scope: !3635)
!3638 = !DILocalVariable(name: "state", scope: !3635, file: !3, line: 656, type: !116)
!3639 = !DILocation(line: 656, column: 6, scope: !3635)
!3640 = !DILocalVariable(name: "value", scope: !3635, file: !3, line: 657, type: !106)
!3641 = !DILocation(line: 657, column: 6, scope: !3635)
!3642 = !DILocalVariable(name: "duty_mask", scope: !3635, file: !3, line: 658, type: !106)
!3643 = !DILocation(line: 658, column: 6, scope: !3635)
!3644 = !DILocalVariable(name: "duty_value", scope: !3635, file: !3, line: 659, type: !106)
!3645 = !DILocation(line: 659, column: 6, scope: !3635)
!3646 = !DILocation(line: 661, column: 7, scope: !3647)
!3647 = distinct !DILexicalBlock(scope: !3635, file: !3, line: 661, column: 6)
!3648 = !DILocation(line: 661, column: 6, scope: !3635)
!3649 = !DILocation(line: 662, column: 3, scope: !3647)
!3650 = !DILocation(line: 664, column: 7, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3635, file: !3, line: 664, column: 6)
!3652 = !DILocation(line: 664, column: 11, scope: !3651)
!3653 = !DILocation(line: 664, column: 17, scope: !3651)
!3654 = !DILocation(line: 664, column: 6, scope: !3635)
!3655 = !DILocation(line: 665, column: 3, scope: !3651)
!3656 = !DILocation(line: 674, column: 2, scope: !3635)
!3657 = !DILocation(line: 676, column: 2, scope: !3635)
!3658 = !DILocation(line: 676, column: 6, scope: !3635)
!3659 = !DILocation(line: 676, column: 17, scope: !3635)
!3660 = !DILocation(line: 676, column: 23, scope: !3635)
!3661 = !DILocation(line: 678, column: 14, scope: !3635)
!3662 = !DILocation(line: 678, column: 18, scope: !3635)
!3663 = !DILocation(line: 678, column: 29, scope: !3635)
!3664 = !DILocation(line: 678, column: 41, scope: !3635)
!3665 = !DILocation(line: 678, column: 12, scope: !3635)
!3666 = !DILocation(line: 680, column: 16, scope: !3635)
!3667 = !DILocation(line: 680, column: 20, scope: !3635)
!3668 = !DILocation(line: 680, column: 31, scope: !3635)
!3669 = !DILocation(line: 680, column: 12, scope: !3635)
!3670 = !DILocation(line: 682, column: 2, scope: !3635)
!3671 = !DILocation(line: 682, column: 2, scope: !3672)
!3672 = distinct !DILexicalBlock(scope: !3635, file: !3, line: 682, column: 2)
!3673 = !DILocation(line: 684, column: 14, scope: !3635)
!3674 = !DILocation(line: 684, column: 18, scope: !3635)
!3675 = !DILocation(line: 684, column: 29, scope: !3635)
!3676 = !DILocation(line: 684, column: 10, scope: !3635)
!3677 = !DILocation(line: 684, column: 8, scope: !3635)
!3678 = !DILocation(line: 690, column: 6, scope: !3679)
!3679 = distinct !DILexicalBlock(scope: !3635, file: !3, line: 690, column: 6)
!3680 = !DILocation(line: 690, column: 12, scope: !3679)
!3681 = !DILocation(line: 690, column: 6, scope: !3635)
!3682 = !DILocation(line: 691, column: 16, scope: !3683)
!3683 = distinct !DILexicalBlock(scope: !3679, file: !3, line: 690, column: 20)
!3684 = !DILocation(line: 691, column: 24, scope: !3683)
!3685 = !DILocation(line: 691, column: 22, scope: !3683)
!3686 = !DILocation(line: 691, column: 14, scope: !3683)
!3687 = !DILocation(line: 692, column: 18, scope: !3683)
!3688 = !DILocation(line: 692, column: 22, scope: !3683)
!3689 = !DILocation(line: 692, column: 33, scope: !3683)
!3690 = !DILocation(line: 692, column: 14, scope: !3683)
!3691 = !DILocation(line: 694, column: 7, scope: !3692)
!3692 = distinct !DILexicalBlock(scope: !3683, file: !3, line: 694, column: 7)
!3693 = !DILocation(line: 694, column: 7, scope: !3683)
!3694 = !DILocation(line: 695, column: 12, scope: !3692)
!3695 = !DILocation(line: 695, column: 16, scope: !3692)
!3696 = !DILocation(line: 695, column: 27, scope: !3692)
!3697 = !DILocation(line: 695, column: 41, scope: !3692)
!3698 = !DILocation(line: 695, column: 39, scope: !3692)
!3699 = !DILocation(line: 695, column: 10, scope: !3692)
!3700 = !DILocation(line: 695, column: 4, scope: !3692)
!3701 = !DILocation(line: 696, column: 2, scope: !3683)
!3702 = !DILocation(line: 698, column: 25, scope: !3635)
!3703 = !DILocation(line: 698, column: 2, scope: !3635)
!3704 = !DILocation(line: 698, column: 6, scope: !3635)
!3705 = !DILocation(line: 698, column: 17, scope: !3635)
!3706 = !DILocation(line: 698, column: 23, scope: !3635)
!3707 = !DILocation(line: 700, column: 2, scope: !3635)
!3708 = !DILocation(line: 700, column: 2, scope: !3709)
!3709 = distinct !DILexicalBlock(scope: !3635, file: !3, line: 700, column: 2)
!3710 = !DILocation(line: 706, column: 2, scope: !3635)
!3711 = !DILocation(line: 707, column: 1, scope: !3635)
!3712 = distinct !DISubprogram(name: "acpi_processor_set_throttling_fadt", scope: !3, file: !3, line: 954, type: !261, scopeLine: 956, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!3713 = !DILocalVariable(name: "pr", arg: 1, scope: !3712, file: !3, line: 954, type: !97)
!3714 = !DILocation(line: 954, column: 70, scope: !3712)
!3715 = !DILocalVariable(name: "state", arg: 2, scope: !3712, file: !3, line: 955, type: !116)
!3716 = !DILocation(line: 955, column: 16, scope: !3712)
!3717 = !DILocalVariable(name: "force", arg: 3, scope: !3712, file: !3, line: 955, type: !263)
!3718 = !DILocation(line: 955, column: 28, scope: !3712)
!3719 = !DILocalVariable(name: "value", scope: !3712, file: !3, line: 957, type: !106)
!3720 = !DILocation(line: 957, column: 6, scope: !3712)
!3721 = !DILocalVariable(name: "duty_mask", scope: !3712, file: !3, line: 958, type: !106)
!3722 = !DILocation(line: 958, column: 6, scope: !3712)
!3723 = !DILocalVariable(name: "duty_value", scope: !3712, file: !3, line: 959, type: !106)
!3724 = !DILocation(line: 959, column: 6, scope: !3712)
!3725 = !DILocation(line: 961, column: 7, scope: !3726)
!3726 = distinct !DILexicalBlock(scope: !3712, file: !3, line: 961, column: 6)
!3727 = !DILocation(line: 961, column: 6, scope: !3712)
!3728 = !DILocation(line: 962, column: 3, scope: !3726)
!3729 = !DILocation(line: 964, column: 7, scope: !3730)
!3730 = distinct !DILexicalBlock(scope: !3712, file: !3, line: 964, column: 6)
!3731 = !DILocation(line: 964, column: 13, scope: !3730)
!3732 = !DILocation(line: 964, column: 18, scope: !3730)
!3733 = !DILocation(line: 964, column: 22, scope: !3730)
!3734 = !DILocation(line: 964, column: 31, scope: !3730)
!3735 = !DILocation(line: 964, column: 35, scope: !3730)
!3736 = !DILocation(line: 964, column: 46, scope: !3730)
!3737 = !DILocation(line: 964, column: 58, scope: !3730)
!3738 = !DILocation(line: 964, column: 28, scope: !3730)
!3739 = !DILocation(line: 964, column: 6, scope: !3712)
!3740 = !DILocation(line: 965, column: 3, scope: !3730)
!3741 = !DILocation(line: 967, column: 7, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !3712, file: !3, line: 967, column: 6)
!3743 = !DILocation(line: 967, column: 11, scope: !3742)
!3744 = !DILocation(line: 967, column: 17, scope: !3742)
!3745 = !DILocation(line: 967, column: 6, scope: !3712)
!3746 = !DILocation(line: 968, column: 3, scope: !3742)
!3747 = !DILocation(line: 970, column: 7, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !3712, file: !3, line: 970, column: 6)
!3749 = !DILocation(line: 970, column: 13, scope: !3748)
!3750 = !DILocation(line: 970, column: 17, scope: !3748)
!3751 = !DILocation(line: 970, column: 26, scope: !3748)
!3752 = !DILocation(line: 970, column: 30, scope: !3748)
!3753 = !DILocation(line: 970, column: 41, scope: !3748)
!3754 = !DILocation(line: 970, column: 23, scope: !3748)
!3755 = !DILocation(line: 970, column: 6, scope: !3712)
!3756 = !DILocation(line: 971, column: 3, scope: !3748)
!3757 = !DILocation(line: 973, column: 6, scope: !3758)
!3758 = distinct !DILexicalBlock(scope: !3712, file: !3, line: 973, column: 6)
!3759 = !DILocation(line: 973, column: 14, scope: !3758)
!3760 = !DILocation(line: 973, column: 18, scope: !3758)
!3761 = !DILocation(line: 973, column: 12, scope: !3758)
!3762 = !DILocation(line: 973, column: 6, scope: !3712)
!3763 = !DILocation(line: 974, column: 3, scope: !3758)
!3764 = !DILocation(line: 978, column: 6, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3712, file: !3, line: 978, column: 6)
!3766 = !DILocation(line: 978, column: 6, scope: !3712)
!3767 = !DILocation(line: 979, column: 16, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3765, file: !3, line: 978, column: 13)
!3769 = !DILocation(line: 979, column: 20, scope: !3768)
!3770 = !DILocation(line: 979, column: 31, scope: !3768)
!3771 = !DILocation(line: 979, column: 45, scope: !3768)
!3772 = !DILocation(line: 979, column: 43, scope: !3768)
!3773 = !DILocation(line: 979, column: 14, scope: !3768)
!3774 = !DILocation(line: 981, column: 18, scope: !3768)
!3775 = !DILocation(line: 981, column: 22, scope: !3768)
!3776 = !DILocation(line: 981, column: 33, scope: !3768)
!3777 = !DILocation(line: 981, column: 14, scope: !3768)
!3778 = !DILocation(line: 984, column: 15, scope: !3768)
!3779 = !DILocation(line: 984, column: 19, scope: !3768)
!3780 = !DILocation(line: 984, column: 30, scope: !3768)
!3781 = !DILocation(line: 984, column: 42, scope: !3768)
!3782 = !DILocation(line: 984, column: 13, scope: !3768)
!3783 = !DILocation(line: 986, column: 31, scope: !3768)
!3784 = !DILocation(line: 986, column: 17, scope: !3768)
!3785 = !DILocation(line: 986, column: 13, scope: !3768)
!3786 = !DILocation(line: 987, column: 16, scope: !3768)
!3787 = !DILocation(line: 987, column: 15, scope: !3768)
!3788 = !DILocation(line: 987, column: 13, scope: !3768)
!3789 = !DILocation(line: 988, column: 2, scope: !3768)
!3790 = !DILocation(line: 990, column: 2, scope: !3712)
!3791 = !DILocation(line: 990, column: 2, scope: !3792)
!3792 = distinct !DILexicalBlock(scope: !3712, file: !3, line: 990, column: 2)
!3793 = !DILocation(line: 996, column: 14, scope: !3712)
!3794 = !DILocation(line: 996, column: 18, scope: !3712)
!3795 = !DILocation(line: 996, column: 29, scope: !3712)
!3796 = !DILocation(line: 996, column: 10, scope: !3712)
!3797 = !DILocation(line: 996, column: 8, scope: !3712)
!3798 = !DILocation(line: 997, column: 6, scope: !3799)
!3799 = distinct !DILexicalBlock(scope: !3712, file: !3, line: 997, column: 6)
!3800 = !DILocation(line: 997, column: 12, scope: !3799)
!3801 = !DILocation(line: 997, column: 6, scope: !3712)
!3802 = !DILocation(line: 998, column: 9, scope: !3803)
!3803 = distinct !DILexicalBlock(scope: !3799, file: !3, line: 997, column: 20)
!3804 = !DILocation(line: 999, column: 8, scope: !3803)
!3805 = !DILocation(line: 999, column: 15, scope: !3803)
!3806 = !DILocation(line: 999, column: 19, scope: !3803)
!3807 = !DILocation(line: 999, column: 30, scope: !3803)
!3808 = !DILocation(line: 999, column: 3, scope: !3803)
!3809 = !DILocation(line: 1000, column: 2, scope: !3803)
!3810 = !DILocation(line: 1006, column: 6, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !3712, file: !3, line: 1006, column: 6)
!3812 = !DILocation(line: 1006, column: 6, scope: !3712)
!3813 = !DILocation(line: 1007, column: 12, scope: !3814)
!3814 = distinct !DILexicalBlock(scope: !3811, file: !3, line: 1006, column: 13)
!3815 = !DILocation(line: 1007, column: 9, scope: !3814)
!3816 = !DILocation(line: 1008, column: 12, scope: !3814)
!3817 = !DILocation(line: 1008, column: 9, scope: !3814)
!3818 = !DILocation(line: 1009, column: 8, scope: !3814)
!3819 = !DILocation(line: 1009, column: 15, scope: !3814)
!3820 = !DILocation(line: 1009, column: 19, scope: !3814)
!3821 = !DILocation(line: 1009, column: 30, scope: !3814)
!3822 = !DILocation(line: 1009, column: 3, scope: !3814)
!3823 = !DILocation(line: 1011, column: 9, scope: !3814)
!3824 = !DILocation(line: 1012, column: 8, scope: !3814)
!3825 = !DILocation(line: 1012, column: 15, scope: !3814)
!3826 = !DILocation(line: 1012, column: 19, scope: !3814)
!3827 = !DILocation(line: 1012, column: 30, scope: !3814)
!3828 = !DILocation(line: 1012, column: 3, scope: !3814)
!3829 = !DILocation(line: 1013, column: 2, scope: !3814)
!3830 = !DILocation(line: 1015, column: 25, scope: !3712)
!3831 = !DILocation(line: 1015, column: 2, scope: !3712)
!3832 = !DILocation(line: 1015, column: 6, scope: !3712)
!3833 = !DILocation(line: 1015, column: 17, scope: !3712)
!3834 = !DILocation(line: 1015, column: 23, scope: !3712)
!3835 = !DILocation(line: 1017, column: 2, scope: !3712)
!3836 = !DILocation(line: 1017, column: 2, scope: !3837)
!3837 = distinct !DILexicalBlock(scope: !3712, file: !3, line: 1017, column: 2)
!3838 = !DILocation(line: 1024, column: 2, scope: !3712)
!3839 = !DILocation(line: 1025, column: 1, scope: !3712)
!3840 = distinct !DISubprogram(name: "acpi_processor_get_fadt_info", scope: !3, file: !3, line: 920, type: !257, scopeLine: 921, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!3841 = !DILocalVariable(name: "pr", arg: 1, scope: !3840, file: !3, line: 920, type: !97)
!3842 = !DILocation(line: 920, column: 64, scope: !3840)
!3843 = !DILocalVariable(name: "i", scope: !3840, file: !3, line: 922, type: !116)
!3844 = !DILocation(line: 922, column: 6, scope: !3840)
!3845 = !DILocalVariable(name: "step", scope: !3840, file: !3, line: 922, type: !116)
!3846 = !DILocation(line: 922, column: 9, scope: !3840)
!3847 = !DILocation(line: 924, column: 7, scope: !3848)
!3848 = distinct !DILexicalBlock(scope: !3840, file: !3, line: 924, column: 6)
!3849 = !DILocation(line: 924, column: 11, scope: !3848)
!3850 = !DILocation(line: 924, column: 22, scope: !3848)
!3851 = !DILocation(line: 924, column: 6, scope: !3840)
!3852 = !DILocation(line: 926, column: 3, scope: !3853)
!3853 = distinct !DILexicalBlock(scope: !3848, file: !3, line: 924, column: 31)
!3854 = !DILocation(line: 927, column: 14, scope: !3855)
!3855 = distinct !DILexicalBlock(scope: !3848, file: !3, line: 927, column: 13)
!3856 = !DILocation(line: 927, column: 18, scope: !3855)
!3857 = !DILocation(line: 927, column: 29, scope: !3855)
!3858 = !DILocation(line: 927, column: 13, scope: !3848)
!3859 = !DILocation(line: 929, column: 3, scope: !3860)
!3860 = distinct !DILexicalBlock(scope: !3855, file: !3, line: 927, column: 41)
!3861 = !DILocation(line: 932, column: 12, scope: !3862)
!3862 = distinct !DILexicalBlock(scope: !3855, file: !3, line: 932, column: 11)
!3863 = !DILocation(line: 932, column: 16, scope: !3862)
!3864 = !DILocation(line: 932, column: 27, scope: !3862)
!3865 = !DILocation(line: 932, column: 41, scope: !3862)
!3866 = !DILocation(line: 932, column: 45, scope: !3862)
!3867 = !DILocation(line: 932, column: 56, scope: !3862)
!3868 = !DILocation(line: 932, column: 39, scope: !3862)
!3869 = !DILocation(line: 932, column: 68, scope: !3862)
!3870 = !DILocation(line: 932, column: 11, scope: !3855)
!3871 = !DILocation(line: 933, column: 3, scope: !3872)
!3872 = distinct !DILexicalBlock(scope: !3862, file: !3, line: 932, column: 73)
!3873 = !DILocation(line: 934, column: 3, scope: !3872)
!3874 = !DILocation(line: 937, column: 50, scope: !3840)
!3875 = !DILocation(line: 937, column: 36, scope: !3840)
!3876 = !DILocation(line: 937, column: 33, scope: !3840)
!3877 = !DILocation(line: 937, column: 2, scope: !3840)
!3878 = !DILocation(line: 937, column: 6, scope: !3840)
!3879 = !DILocation(line: 937, column: 17, scope: !3840)
!3880 = !DILocation(line: 937, column: 29, scope: !3840)
!3881 = !DILocation(line: 945, column: 17, scope: !3840)
!3882 = !DILocation(line: 945, column: 21, scope: !3840)
!3883 = !DILocation(line: 945, column: 32, scope: !3840)
!3884 = !DILocation(line: 945, column: 15, scope: !3840)
!3885 = !DILocation(line: 945, column: 7, scope: !3840)
!3886 = !DILocation(line: 947, column: 9, scope: !3887)
!3887 = distinct !DILexicalBlock(scope: !3840, file: !3, line: 947, column: 2)
!3888 = !DILocation(line: 947, column: 7, scope: !3887)
!3889 = !DILocation(line: 947, column: 14, scope: !3890)
!3890 = distinct !DILexicalBlock(scope: !3887, file: !3, line: 947, column: 2)
!3891 = !DILocation(line: 947, column: 18, scope: !3890)
!3892 = !DILocation(line: 947, column: 22, scope: !3890)
!3893 = !DILocation(line: 947, column: 33, scope: !3890)
!3894 = !DILocation(line: 947, column: 16, scope: !3890)
!3895 = !DILocation(line: 947, column: 2, scope: !3887)
!3896 = !DILocation(line: 948, column: 49, scope: !3897)
!3897 = distinct !DILexicalBlock(scope: !3890, file: !3, line: 947, column: 51)
!3898 = !DILocation(line: 948, column: 56, scope: !3897)
!3899 = !DILocation(line: 948, column: 54, scope: !3897)
!3900 = !DILocation(line: 948, column: 47, scope: !3897)
!3901 = !DILocation(line: 948, column: 42, scope: !3897)
!3902 = !DILocation(line: 948, column: 3, scope: !3897)
!3903 = !DILocation(line: 948, column: 7, scope: !3897)
!3904 = !DILocation(line: 948, column: 18, scope: !3897)
!3905 = !DILocation(line: 948, column: 25, scope: !3897)
!3906 = !DILocation(line: 948, column: 28, scope: !3897)
!3907 = !DILocation(line: 948, column: 40, scope: !3897)
!3908 = !DILocation(line: 949, column: 43, scope: !3897)
!3909 = !DILocation(line: 949, column: 50, scope: !3897)
!3910 = !DILocation(line: 949, column: 48, scope: !3897)
!3911 = !DILocation(line: 949, column: 41, scope: !3897)
!3912 = !DILocation(line: 949, column: 36, scope: !3897)
!3913 = !DILocation(line: 949, column: 3, scope: !3897)
!3914 = !DILocation(line: 949, column: 7, scope: !3897)
!3915 = !DILocation(line: 949, column: 18, scope: !3897)
!3916 = !DILocation(line: 949, column: 25, scope: !3897)
!3917 = !DILocation(line: 949, column: 28, scope: !3897)
!3918 = !DILocation(line: 949, column: 34, scope: !3897)
!3919 = !DILocation(line: 950, column: 2, scope: !3897)
!3920 = !DILocation(line: 947, column: 47, scope: !3890)
!3921 = !DILocation(line: 947, column: 2, scope: !3890)
!3922 = distinct !{!3922, !3895, !3923}
!3923 = !DILocation(line: 950, column: 2, scope: !3887)
!3924 = !DILocation(line: 951, column: 2, scope: !3840)
!3925 = !DILocation(line: 952, column: 1, scope: !3840)
!3926 = distinct !DISubprogram(name: "acpi_processor_get_throttling_ptc", scope: !3, file: !3, line: 860, type: !257, scopeLine: 861, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!3927 = !DILocalVariable(name: "pr", arg: 1, scope: !3926, file: !3, line: 860, type: !97)
!3928 = !DILocation(line: 860, column: 69, scope: !3926)
!3929 = !DILocalVariable(name: "state", scope: !3926, file: !3, line: 862, type: !116)
!3930 = !DILocation(line: 862, column: 6, scope: !3926)
!3931 = !DILocalVariable(name: "ret", scope: !3926, file: !3, line: 863, type: !116)
!3932 = !DILocation(line: 863, column: 6, scope: !3926)
!3933 = !DILocalVariable(name: "value", scope: !3926, file: !3, line: 864, type: !171)
!3934 = !DILocation(line: 864, column: 6, scope: !3926)
!3935 = !DILocation(line: 866, column: 7, scope: !3936)
!3936 = distinct !DILexicalBlock(scope: !3926, file: !3, line: 866, column: 6)
!3937 = !DILocation(line: 866, column: 6, scope: !3926)
!3938 = !DILocation(line: 867, column: 3, scope: !3936)
!3939 = !DILocation(line: 869, column: 7, scope: !3940)
!3940 = distinct !DILexicalBlock(scope: !3926, file: !3, line: 869, column: 6)
!3941 = !DILocation(line: 869, column: 11, scope: !3940)
!3942 = !DILocation(line: 869, column: 17, scope: !3940)
!3943 = !DILocation(line: 869, column: 6, scope: !3926)
!3944 = !DILocation(line: 870, column: 3, scope: !3940)
!3945 = !DILocation(line: 872, column: 2, scope: !3926)
!3946 = !DILocation(line: 872, column: 6, scope: !3926)
!3947 = !DILocation(line: 872, column: 17, scope: !3926)
!3948 = !DILocation(line: 872, column: 23, scope: !3926)
!3949 = !DILocation(line: 874, column: 8, scope: !3926)
!3950 = !DILocation(line: 875, column: 36, scope: !3926)
!3951 = !DILocation(line: 875, column: 8, scope: !3926)
!3952 = !DILocation(line: 875, column: 6, scope: !3926)
!3953 = !DILocation(line: 876, column: 6, scope: !3954)
!3954 = distinct !DILexicalBlock(scope: !3926, file: !3, line: 876, column: 6)
!3955 = !DILocation(line: 876, column: 10, scope: !3954)
!3956 = !DILocation(line: 876, column: 6, scope: !3926)
!3957 = !DILocation(line: 877, column: 37, scope: !3958)
!3958 = distinct !DILexicalBlock(scope: !3954, file: !3, line: 876, column: 16)
!3959 = !DILocation(line: 877, column: 41, scope: !3958)
!3960 = !DILocation(line: 877, column: 11, scope: !3958)
!3961 = !DILocation(line: 877, column: 9, scope: !3958)
!3962 = !DILocation(line: 878, column: 7, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3958, file: !3, line: 878, column: 7)
!3964 = !DILocation(line: 878, column: 13, scope: !3963)
!3965 = !DILocation(line: 878, column: 7, scope: !3958)
!3966 = !DILocation(line: 881, column: 10, scope: !3967)
!3967 = distinct !DILexicalBlock(scope: !3963, file: !3, line: 878, column: 20)
!3968 = !DILocation(line: 882, column: 42, scope: !3967)
!3969 = !DILocation(line: 882, column: 46, scope: !3967)
!3970 = !DILocation(line: 882, column: 10, scope: !3967)
!3971 = !DILocation(line: 882, column: 8, scope: !3967)
!3972 = !DILocation(line: 884, column: 8, scope: !3973)
!3973 = distinct !DILexicalBlock(scope: !3967, file: !3, line: 884, column: 8)
!3974 = !DILocation(line: 884, column: 8, scope: !3967)
!3975 = !DILocation(line: 885, column: 12, scope: !3973)
!3976 = !DILocation(line: 885, column: 5, scope: !3973)
!3977 = !DILocation(line: 886, column: 3, scope: !3967)
!3978 = !DILocation(line: 887, column: 26, scope: !3958)
!3979 = !DILocation(line: 887, column: 3, scope: !3958)
!3980 = !DILocation(line: 887, column: 7, scope: !3958)
!3981 = !DILocation(line: 887, column: 18, scope: !3958)
!3982 = !DILocation(line: 887, column: 24, scope: !3958)
!3983 = !DILocation(line: 888, column: 2, scope: !3958)
!3984 = !DILocation(line: 890, column: 2, scope: !3926)
!3985 = !DILocation(line: 891, column: 1, scope: !3926)
!3986 = distinct !DISubprogram(name: "acpi_processor_set_throttling_ptc", scope: !3, file: !3, line: 1027, type: !261, scopeLine: 1029, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!3987 = !DILocalVariable(name: "pr", arg: 1, scope: !3986, file: !3, line: 1027, type: !97)
!3988 = !DILocation(line: 1027, column: 69, scope: !3986)
!3989 = !DILocalVariable(name: "state", arg: 2, scope: !3986, file: !3, line: 1028, type: !116)
!3990 = !DILocation(line: 1028, column: 15, scope: !3986)
!3991 = !DILocalVariable(name: "force", arg: 3, scope: !3986, file: !3, line: 1028, type: !263)
!3992 = !DILocation(line: 1028, column: 27, scope: !3986)
!3993 = !DILocalVariable(name: "ret", scope: !3986, file: !3, line: 1030, type: !116)
!3994 = !DILocation(line: 1030, column: 6, scope: !3986)
!3995 = !DILocalVariable(name: "value", scope: !3986, file: !3, line: 1031, type: !171)
!3996 = !DILocation(line: 1031, column: 6, scope: !3986)
!3997 = !DILocation(line: 1033, column: 7, scope: !3998)
!3998 = distinct !DILexicalBlock(scope: !3986, file: !3, line: 1033, column: 6)
!3999 = !DILocation(line: 1033, column: 6, scope: !3986)
!4000 = !DILocation(line: 1034, column: 3, scope: !3998)
!4001 = !DILocation(line: 1036, column: 7, scope: !4002)
!4002 = distinct !DILexicalBlock(scope: !3986, file: !3, line: 1036, column: 6)
!4003 = !DILocation(line: 1036, column: 13, scope: !4002)
!4004 = !DILocation(line: 1036, column: 18, scope: !4002)
!4005 = !DILocation(line: 1036, column: 22, scope: !4002)
!4006 = !DILocation(line: 1036, column: 31, scope: !4002)
!4007 = !DILocation(line: 1036, column: 35, scope: !4002)
!4008 = !DILocation(line: 1036, column: 46, scope: !4002)
!4009 = !DILocation(line: 1036, column: 58, scope: !4002)
!4010 = !DILocation(line: 1036, column: 28, scope: !4002)
!4011 = !DILocation(line: 1036, column: 6, scope: !3986)
!4012 = !DILocation(line: 1037, column: 3, scope: !4002)
!4013 = !DILocation(line: 1039, column: 7, scope: !4014)
!4014 = distinct !DILexicalBlock(scope: !3986, file: !3, line: 1039, column: 6)
!4015 = !DILocation(line: 1039, column: 11, scope: !4014)
!4016 = !DILocation(line: 1039, column: 17, scope: !4014)
!4017 = !DILocation(line: 1039, column: 6, scope: !3986)
!4018 = !DILocation(line: 1040, column: 3, scope: !4014)
!4019 = !DILocation(line: 1042, column: 7, scope: !4020)
!4020 = distinct !DILexicalBlock(scope: !3986, file: !3, line: 1042, column: 6)
!4021 = !DILocation(line: 1042, column: 13, scope: !4020)
!4022 = !DILocation(line: 1042, column: 17, scope: !4020)
!4023 = !DILocation(line: 1042, column: 26, scope: !4020)
!4024 = !DILocation(line: 1042, column: 30, scope: !4020)
!4025 = !DILocation(line: 1042, column: 41, scope: !4020)
!4026 = !DILocation(line: 1042, column: 23, scope: !4020)
!4027 = !DILocation(line: 1042, column: 6, scope: !3986)
!4028 = !DILocation(line: 1043, column: 3, scope: !4020)
!4029 = !DILocation(line: 1045, column: 6, scope: !4030)
!4030 = distinct !DILexicalBlock(scope: !3986, file: !3, line: 1045, column: 6)
!4031 = !DILocation(line: 1045, column: 14, scope: !4030)
!4032 = !DILocation(line: 1045, column: 18, scope: !4030)
!4033 = !DILocation(line: 1045, column: 12, scope: !4030)
!4034 = !DILocation(line: 1045, column: 6, scope: !3986)
!4035 = !DILocation(line: 1046, column: 3, scope: !4030)
!4036 = !DILocation(line: 1048, column: 8, scope: !3986)
!4037 = !DILocation(line: 1049, column: 34, scope: !3986)
!4038 = !DILocation(line: 1049, column: 38, scope: !3986)
!4039 = !DILocation(line: 1049, column: 8, scope: !3986)
!4040 = !DILocation(line: 1049, column: 6, scope: !3986)
!4041 = !DILocation(line: 1050, column: 6, scope: !4042)
!4042 = distinct !DILexicalBlock(scope: !3986, file: !3, line: 1050, column: 6)
!4043 = !DILocation(line: 1050, column: 10, scope: !4042)
!4044 = !DILocation(line: 1050, column: 6, scope: !3986)
!4045 = !DILocation(line: 1051, column: 31, scope: !4046)
!4046 = distinct !DILexicalBlock(scope: !4042, file: !3, line: 1050, column: 16)
!4047 = !DILocation(line: 1051, column: 35, scope: !4046)
!4048 = !DILocation(line: 1051, column: 3, scope: !4046)
!4049 = !DILocation(line: 1052, column: 26, scope: !4046)
!4050 = !DILocation(line: 1052, column: 3, scope: !4046)
!4051 = !DILocation(line: 1052, column: 7, scope: !4046)
!4052 = !DILocation(line: 1052, column: 18, scope: !4046)
!4053 = !DILocation(line: 1052, column: 24, scope: !4046)
!4054 = !DILocation(line: 1053, column: 2, scope: !4046)
!4055 = !DILocation(line: 1055, column: 2, scope: !3986)
!4056 = !DILocation(line: 1056, column: 1, scope: !3986)
!4057 = distinct !DISubprogram(name: "acpi_processor_get_tsd", scope: !3, file: !3, line: 570, type: !257, scopeLine: 571, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!4058 = !DILocalVariable(name: "pr", arg: 1, scope: !4057, file: !3, line: 570, type: !97)
!4059 = !DILocation(line: 570, column: 58, scope: !4057)
!4060 = !DILocalVariable(name: "result", scope: !4057, file: !3, line: 572, type: !116)
!4061 = !DILocation(line: 572, column: 6, scope: !4057)
!4062 = !DILocalVariable(name: "status", scope: !4057, file: !3, line: 573, type: !2441)
!4063 = !DILocation(line: 573, column: 14, scope: !4057)
!4064 = !DILocalVariable(name: "buffer", scope: !4057, file: !3, line: 574, type: !3364)
!4065 = !DILocation(line: 574, column: 21, scope: !4057)
!4066 = !DILocalVariable(name: "format", scope: !4057, file: !3, line: 575, type: !3364)
!4067 = !DILocation(line: 575, column: 21, scope: !4057)
!4068 = !DILocalVariable(name: "state", scope: !4057, file: !3, line: 576, type: !3364)
!4069 = !DILocation(line: 576, column: 21, scope: !4057)
!4070 = !DILocalVariable(name: "tsd", scope: !4057, file: !3, line: 577, type: !2442)
!4071 = !DILocation(line: 577, column: 21, scope: !4057)
!4072 = !DILocalVariable(name: "pdomain", scope: !4057, file: !3, line: 578, type: !2600)
!4073 = !DILocation(line: 578, column: 27, scope: !4057)
!4074 = !DILocalVariable(name: "pthrottling", scope: !4057, file: !3, line: 579, type: !2605)
!4075 = !DILocation(line: 579, column: 36, scope: !4057)
!4076 = !DILocation(line: 581, column: 17, scope: !4057)
!4077 = !DILocation(line: 581, column: 21, scope: !4057)
!4078 = !DILocation(line: 581, column: 14, scope: !4057)
!4079 = !DILocation(line: 582, column: 2, scope: !4057)
!4080 = !DILocation(line: 582, column: 15, scope: !4057)
!4081 = !DILocation(line: 582, column: 30, scope: !4057)
!4082 = !DILocation(line: 584, column: 32, scope: !4057)
!4083 = !DILocation(line: 584, column: 36, scope: !4057)
!4084 = !DILocation(line: 584, column: 11, scope: !4057)
!4085 = !DILocation(line: 584, column: 9, scope: !4057)
!4086 = !DILocation(line: 585, column: 6, scope: !4087)
!4087 = distinct !DILexicalBlock(scope: !4057, file: !3, line: 585, column: 6)
!4088 = !DILocation(line: 585, column: 6, scope: !4057)
!4089 = !DILocation(line: 586, column: 7, scope: !4090)
!4090 = distinct !DILexicalBlock(scope: !4091, file: !3, line: 586, column: 7)
!4091 = distinct !DILexicalBlock(scope: !4087, file: !3, line: 585, column: 28)
!4092 = !DILocation(line: 586, column: 14, scope: !4090)
!4093 = !DILocation(line: 586, column: 7, scope: !4091)
!4094 = !DILocation(line: 587, column: 4, scope: !4095)
!4095 = distinct !DILexicalBlock(scope: !4090, file: !3, line: 586, column: 31)
!4096 = !DILocation(line: 588, column: 3, scope: !4095)
!4097 = !DILocation(line: 589, column: 3, scope: !4091)
!4098 = !DILocation(line: 592, column: 15, scope: !4057)
!4099 = !DILocation(line: 592, column: 8, scope: !4057)
!4100 = !DILocation(line: 592, column: 6, scope: !4057)
!4101 = !DILocation(line: 593, column: 7, scope: !4102)
!4102 = distinct !DILexicalBlock(scope: !4057, file: !3, line: 593, column: 6)
!4103 = !DILocation(line: 593, column: 11, scope: !4102)
!4104 = !DILocation(line: 593, column: 15, scope: !4102)
!4105 = !DILocation(line: 593, column: 20, scope: !4102)
!4106 = !DILocation(line: 593, column: 25, scope: !4102)
!4107 = !DILocation(line: 593, column: 6, scope: !4057)
!4108 = !DILocation(line: 594, column: 3, scope: !4109)
!4109 = distinct !DILexicalBlock(scope: !4102, file: !3, line: 593, column: 48)
!4110 = !DILocation(line: 595, column: 10, scope: !4109)
!4111 = !DILocation(line: 596, column: 3, scope: !4109)
!4112 = !DILocation(line: 599, column: 6, scope: !4113)
!4113 = distinct !DILexicalBlock(scope: !4057, file: !3, line: 599, column: 6)
!4114 = !DILocation(line: 599, column: 11, scope: !4113)
!4115 = !DILocation(line: 599, column: 19, scope: !4113)
!4116 = !DILocation(line: 599, column: 25, scope: !4113)
!4117 = !DILocation(line: 599, column: 6, scope: !4057)
!4118 = !DILocation(line: 600, column: 3, scope: !4119)
!4119 = distinct !DILexicalBlock(scope: !4113, file: !3, line: 599, column: 31)
!4120 = !DILocation(line: 601, column: 10, scope: !4119)
!4121 = !DILocation(line: 602, column: 3, scope: !4119)
!4122 = !DILocation(line: 605, column: 14, scope: !4057)
!4123 = !DILocation(line: 605, column: 18, scope: !4057)
!4124 = !DILocation(line: 605, column: 29, scope: !4057)
!4125 = !DILocation(line: 605, column: 10, scope: !4057)
!4126 = !DILocation(line: 607, column: 8, scope: !4057)
!4127 = !DILocation(line: 607, column: 15, scope: !4057)
!4128 = !DILocation(line: 608, column: 18, scope: !4057)
!4129 = !DILocation(line: 608, column: 8, scope: !4057)
!4130 = !DILocation(line: 608, column: 16, scope: !4057)
!4131 = !DILocation(line: 610, column: 34, scope: !4057)
!4132 = !DILocation(line: 610, column: 39, scope: !4057)
!4133 = !DILocation(line: 610, column: 47, scope: !4057)
!4134 = !DILocation(line: 610, column: 11, scope: !4057)
!4135 = !DILocation(line: 610, column: 9, scope: !4057)
!4136 = !DILocation(line: 612, column: 6, scope: !4137)
!4137 = distinct !DILexicalBlock(scope: !4057, file: !3, line: 612, column: 6)
!4138 = !DILocation(line: 612, column: 6, scope: !4057)
!4139 = !DILocation(line: 613, column: 3, scope: !4140)
!4140 = distinct !DILexicalBlock(scope: !4137, file: !3, line: 612, column: 28)
!4141 = !DILocation(line: 614, column: 10, scope: !4140)
!4142 = !DILocation(line: 615, column: 3, scope: !4140)
!4143 = !DILocation(line: 618, column: 6, scope: !4144)
!4144 = distinct !DILexicalBlock(scope: !4057, file: !3, line: 618, column: 6)
!4145 = !DILocation(line: 618, column: 15, scope: !4144)
!4146 = !DILocation(line: 618, column: 27, scope: !4144)
!4147 = !DILocation(line: 618, column: 6, scope: !4057)
!4148 = !DILocation(line: 619, column: 3, scope: !4149)
!4149 = distinct !DILexicalBlock(scope: !4144, file: !3, line: 618, column: 53)
!4150 = !DILocation(line: 620, column: 10, scope: !4149)
!4151 = !DILocation(line: 621, column: 3, scope: !4149)
!4152 = !DILocation(line: 624, column: 6, scope: !4153)
!4153 = distinct !DILexicalBlock(scope: !4057, file: !3, line: 624, column: 6)
!4154 = !DILocation(line: 624, column: 15, scope: !4153)
!4155 = !DILocation(line: 624, column: 24, scope: !4153)
!4156 = !DILocation(line: 624, column: 6, scope: !4057)
!4157 = !DILocation(line: 625, column: 3, scope: !4158)
!4158 = distinct !DILexicalBlock(scope: !4153, file: !3, line: 624, column: 51)
!4159 = !DILocation(line: 626, column: 10, scope: !4158)
!4160 = !DILocation(line: 627, column: 3, scope: !4158)
!4161 = !DILocation(line: 630, column: 17, scope: !4057)
!4162 = !DILocation(line: 630, column: 21, scope: !4057)
!4163 = !DILocation(line: 630, column: 14, scope: !4057)
!4164 = !DILocation(line: 631, column: 2, scope: !4057)
!4165 = !DILocation(line: 631, column: 15, scope: !4057)
!4166 = !DILocation(line: 631, column: 30, scope: !4057)
!4167 = !DILocation(line: 632, column: 29, scope: !4057)
!4168 = !DILocation(line: 632, column: 38, scope: !4057)
!4169 = !DILocation(line: 632, column: 2, scope: !4057)
!4170 = !DILocation(line: 632, column: 15, scope: !4057)
!4171 = !DILocation(line: 632, column: 27, scope: !4057)
!4172 = !DILocation(line: 633, column: 18, scope: !4057)
!4173 = !DILocation(line: 633, column: 22, scope: !4057)
!4174 = !DILocation(line: 633, column: 26, scope: !4057)
!4175 = !DILocation(line: 633, column: 39, scope: !4057)
!4176 = !DILocation(line: 633, column: 2, scope: !4057)
!4177 = !DILocation(line: 639, column: 6, scope: !4178)
!4178 = distinct !DILexicalBlock(scope: !4057, file: !3, line: 639, column: 6)
!4179 = !DILocation(line: 639, column: 15, scope: !4178)
!4180 = !DILocation(line: 639, column: 26, scope: !4178)
!4181 = !DILocation(line: 639, column: 54, scope: !4178)
!4182 = !DILocation(line: 640, column: 3, scope: !4178)
!4183 = !DILocation(line: 640, column: 12, scope: !4178)
!4184 = !DILocation(line: 640, column: 23, scope: !4178)
!4185 = !DILocation(line: 640, column: 51, scope: !4178)
!4186 = !DILocation(line: 641, column: 3, scope: !4178)
!4187 = !DILocation(line: 641, column: 12, scope: !4178)
!4188 = !DILocation(line: 641, column: 23, scope: !4178)
!4189 = !DILocation(line: 639, column: 6, scope: !4057)
!4190 = !DILocation(line: 642, column: 3, scope: !4191)
!4191 = distinct !DILexicalBlock(scope: !4178, file: !3, line: 641, column: 52)
!4192 = !DILocation(line: 642, column: 16, scope: !4191)
!4193 = !DILocation(line: 642, column: 31, scope: !4191)
!4194 = !DILocation(line: 643, column: 3, scope: !4191)
!4195 = !DILocation(line: 643, column: 16, scope: !4191)
!4196 = !DILocation(line: 643, column: 28, scope: !4191)
!4197 = !DILocation(line: 644, column: 2, scope: !4191)
!4198 = !DILocation(line: 641, column: 26, scope: !4178)
!4199 = !DILabel(scope: !4057, name: "end", file: !3, line: 646)
!4200 = !DILocation(line: 646, column: 7, scope: !4057)
!4201 = !DILocation(line: 647, column: 15, scope: !4057)
!4202 = !DILocation(line: 647, column: 2, scope: !4057)
!4203 = !DILocation(line: 648, column: 9, scope: !4057)
!4204 = !DILocation(line: 648, column: 2, scope: !4057)
!4205 = !DILocation(line: 649, column: 1, scope: !4057)
!4206 = distinct !DISubprogram(name: "cpumask_set_cpu", scope: !219, file: !219, line: 332, type: !4207, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!4207 = !DISubroutineType(types: !4208)
!4208 = !{null, !7, !4209}
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!4210 = !DILocalVariable(name: "cpu", arg: 1, scope: !4206, file: !219, line: 332, type: !7)
!4211 = !DILocation(line: 332, column: 49, scope: !4206)
!4212 = !DILocalVariable(name: "dstp", arg: 2, scope: !4206, file: !219, line: 332, type: !4209)
!4213 = !DILocation(line: 332, column: 70, scope: !4206)
!4214 = !DILocation(line: 334, column: 24, scope: !4206)
!4215 = !DILocation(line: 334, column: 10, scope: !4206)
!4216 = !DILocation(line: 334, column: 30, scope: !4206)
!4217 = !DILocation(line: 334, column: 2, scope: !4206)
!4218 = !DILocation(line: 335, column: 1, scope: !4206)
!4219 = distinct !DISubprogram(name: "zalloc_cpumask_var", scope: !219, file: !219, line: 772, type: !4220, scopeLine: 773, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!4220 = !DISubroutineType(types: !4221)
!4221 = !{!263, !4222, !94}
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!4223 = !DILocalVariable(name: "mask", arg: 1, scope: !4219, file: !219, line: 772, type: !4222)
!4224 = !DILocation(line: 772, column: 54, scope: !4219)
!4225 = !DILocalVariable(name: "flags", arg: 2, scope: !4219, file: !219, line: 772, type: !94)
!4226 = !DILocation(line: 772, column: 66, scope: !4219)
!4227 = !DILocation(line: 774, column: 17, scope: !4219)
!4228 = !DILocation(line: 774, column: 16, scope: !4219)
!4229 = !DILocation(line: 774, column: 2, scope: !4219)
!4230 = !DILocation(line: 775, column: 2, scope: !4219)
!4231 = distinct !DISubprogram(name: "cpumask_test_cpu", scope: !219, file: !219, line: 365, type: !4232, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!4232 = !DISubroutineType(types: !4233)
!4233 = !{!116, !116, !2439}
!4234 = !DILocalVariable(name: "cpu", arg: 1, scope: !4231, file: !219, line: 365, type: !116)
!4235 = !DILocation(line: 365, column: 40, scope: !4231)
!4236 = !DILocalVariable(name: "cpumask", arg: 2, scope: !4231, file: !219, line: 365, type: !2439)
!4237 = !DILocation(line: 365, column: 67, scope: !4231)
!4238 = !DILocation(line: 367, column: 32, scope: !4231)
!4239 = !DILocation(line: 367, column: 18, scope: !4231)
!4240 = !DILocation(line: 367, column: 38, scope: !4231)
!4241 = !DILocation(line: 367, column: 9, scope: !4231)
!4242 = !DILocation(line: 367, column: 2, scope: !4231)
!4243 = distinct !DISubprogram(name: "cpumask_copy", scope: !219, file: !219, line: 597, type: !4244, scopeLine: 599, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!4244 = !DISubroutineType(types: !4245)
!4245 = !{null, !4209, !2439}
!4246 = !DILocalVariable(name: "dstp", arg: 1, scope: !4243, file: !219, line: 597, type: !4209)
!4247 = !DILocation(line: 597, column: 49, scope: !4243)
!4248 = !DILocalVariable(name: "srcp", arg: 2, scope: !4243, file: !219, line: 598, type: !2439)
!4249 = !DILocation(line: 598, column: 27, scope: !4243)
!4250 = !DILocation(line: 600, column: 14, scope: !4243)
!4251 = !DILocation(line: 600, column: 34, scope: !4243)
!4252 = !DILocation(line: 600, column: 2, scope: !4243)
!4253 = !DILocation(line: 601, column: 1, scope: !4243)
!4254 = distinct !DISubprogram(name: "free_cpumask_var", scope: !219, file: !219, line: 789, type: !4255, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!4255 = !DISubroutineType(types: !4256)
!4256 = !{null, !4209}
!4257 = !DILocalVariable(name: "mask", arg: 1, scope: !4254, file: !219, line: 789, type: !4209)
!4258 = !DILocation(line: 789, column: 51, scope: !4254)
!4259 = !DILocation(line: 791, column: 1, scope: !4254)
!4260 = distinct !DISubprogram(name: "cpumask_clear", scope: !219, file: !219, line: 411, type: !4255, scopeLine: 412, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!4261 = !DILocalVariable(name: "dstp", arg: 1, scope: !4260, file: !219, line: 411, type: !4209)
!4262 = !DILocation(line: 411, column: 50, scope: !4260)
!4263 = !DILocation(line: 413, column: 14, scope: !4260)
!4264 = !DILocation(line: 413, column: 2, scope: !4260)
!4265 = !DILocation(line: 414, column: 1, scope: !4260)
!4266 = distinct !DISubprogram(name: "test_bit", scope: !4267, file: !4267, line: 132, type: !4268, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!4267 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!4268 = !DISubroutineType(types: !4269)
!4269 = !{!263, !398, !4270}
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4271, size: 64)
!4271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4272)
!4272 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !225)
!4273 = !DILocalVariable(name: "nr", arg: 1, scope: !4274, file: !4275, line: 210, type: !398)
!4274 = distinct !DISubprogram(name: "variable_test_bit", scope: !4275, file: !4275, line: 210, type: !4268, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!4275 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4276 = !DILocation(line: 210, column: 52, scope: !4274, inlinedAt: !4277)
!4277 = distinct !DILocation(line: 135, column: 9, scope: !4266)
!4278 = !DILocalVariable(name: "addr", arg: 2, scope: !4274, file: !4275, line: 210, type: !4270)
!4279 = !DILocation(line: 210, column: 86, scope: !4274, inlinedAt: !4277)
!4280 = !DILocalVariable(name: "oldbit", scope: !4274, file: !4275, line: 212, type: !263)
!4281 = !DILocation(line: 212, column: 7, scope: !4274, inlinedAt: !4277)
!4282 = !DILocalVariable(name: "nr", arg: 1, scope: !4283, file: !4275, line: 204, type: !398)
!4283 = distinct !DISubprogram(name: "constant_test_bit", scope: !4275, file: !4275, line: 204, type: !4268, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!4284 = !DILocation(line: 204, column: 52, scope: !4283, inlinedAt: !4285)
!4285 = distinct !DILocation(line: 135, column: 9, scope: !4266)
!4286 = !DILocalVariable(name: "addr", arg: 2, scope: !4283, file: !4275, line: 204, type: !4270)
!4287 = !DILocation(line: 204, column: 86, scope: !4283, inlinedAt: !4285)
!4288 = !DILocalVariable(name: "v", arg: 1, scope: !4289, file: !4290, line: 69, type: !4293)
!4289 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !4290, file: !4290, line: 69, type: !4291, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!4290 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!4291 = !DISubroutineType(types: !4292)
!4292 = !{null, !4293, !409}
!4293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4294, size: 64)
!4294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4295)
!4295 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4296 = !DILocation(line: 69, column: 73, scope: !4289, inlinedAt: !4297)
!4297 = distinct !DILocation(line: 134, column: 2, scope: !4266)
!4298 = !DILocalVariable(name: "size", arg: 2, scope: !4289, file: !4290, line: 69, type: !409)
!4299 = !DILocation(line: 69, column: 83, scope: !4289, inlinedAt: !4297)
!4300 = !DILocalVariable(name: "nr", arg: 1, scope: !4266, file: !4267, line: 132, type: !398)
!4301 = !DILocation(line: 132, column: 34, scope: !4266)
!4302 = !DILocalVariable(name: "addr", arg: 2, scope: !4266, file: !4267, line: 132, type: !4270)
!4303 = !DILocation(line: 132, column: 68, scope: !4266)
!4304 = !DILocation(line: 134, column: 25, scope: !4266)
!4305 = !DILocation(line: 134, column: 32, scope: !4266)
!4306 = !DILocation(line: 134, column: 30, scope: !4266)
!4307 = !DILocation(line: 71, column: 19, scope: !4289, inlinedAt: !4297)
!4308 = !DILocation(line: 71, column: 22, scope: !4289, inlinedAt: !4297)
!4309 = !DILocation(line: 71, column: 2, scope: !4289, inlinedAt: !4297)
!4310 = !DILocation(line: 72, column: 2, scope: !4289, inlinedAt: !4297)
!4311 = !DILocation(line: 135, column: 9, scope: !4266)
!4312 = !DILocation(line: 206, column: 19, scope: !4283, inlinedAt: !4285)
!4313 = !DILocation(line: 206, column: 22, scope: !4283, inlinedAt: !4285)
!4314 = !DILocation(line: 206, column: 15, scope: !4283, inlinedAt: !4285)
!4315 = !DILocation(line: 207, column: 4, scope: !4283, inlinedAt: !4285)
!4316 = !DILocation(line: 207, column: 9, scope: !4283, inlinedAt: !4285)
!4317 = !DILocation(line: 207, column: 12, scope: !4283, inlinedAt: !4285)
!4318 = !DILocation(line: 206, column: 44, scope: !4283, inlinedAt: !4285)
!4319 = !DILocation(line: 207, column: 37, scope: !4283, inlinedAt: !4285)
!4320 = !DILocation(line: 217, column: 33, scope: !4274, inlinedAt: !4277)
!4321 = !DILocation(line: 217, column: 46, scope: !4274, inlinedAt: !4277)
!4322 = !DILocation(line: 214, column: 2, scope: !4274, inlinedAt: !4277)
!4323 = !{i32 -2147172400, i32 -2147172340}
!4324 = !DILocation(line: 219, column: 9, scope: !4274, inlinedAt: !4277)
!4325 = !DILocation(line: 135, column: 2, scope: !4266)
!4326 = distinct !DISubprogram(name: "cpumask_check", scope: !219, file: !219, line: 142, type: !4327, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!4327 = !DISubroutineType(types: !4328)
!4328 = !{!7, !7}
!4329 = !DILocalVariable(name: "cpu", arg: 1, scope: !4326, file: !219, line: 142, type: !7)
!4330 = !DILocation(line: 142, column: 55, scope: !4326)
!4331 = !DILocation(line: 144, column: 20, scope: !4326)
!4332 = !DILocation(line: 144, column: 2, scope: !4326)
!4333 = !DILocation(line: 145, column: 9, scope: !4326)
!4334 = !DILocation(line: 145, column: 2, scope: !4326)
!4335 = distinct !DISubprogram(name: "kasan_check_read", scope: !4336, file: !4336, line: 34, type: !4337, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!4336 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!4337 = !DISubroutineType(types: !4338)
!4338 = !{!263, !4293, !7}
!4339 = !DILocalVariable(name: "p", arg: 1, scope: !4335, file: !4336, line: 34, type: !4293)
!4340 = !DILocation(line: 34, column: 58, scope: !4335)
!4341 = !DILocalVariable(name: "size", arg: 2, scope: !4335, file: !4336, line: 34, type: !7)
!4342 = !DILocation(line: 34, column: 74, scope: !4335)
!4343 = !DILocation(line: 36, column: 2, scope: !4335)
!4344 = distinct !DISubprogram(name: "kcsan_check_access", scope: !4345, file: !4345, line: 178, type: !4346, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!4345 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!4346 = !DISubroutineType(types: !4347)
!4347 = !{null, !4293, !409, !116}
!4348 = !DILocalVariable(name: "ptr", arg: 1, scope: !4344, file: !4345, line: 178, type: !4293)
!4349 = !DILocation(line: 178, column: 60, scope: !4344)
!4350 = !DILocalVariable(name: "size", arg: 2, scope: !4344, file: !4345, line: 178, type: !409)
!4351 = !DILocation(line: 178, column: 72, scope: !4344)
!4352 = !DILocalVariable(name: "type", arg: 3, scope: !4344, file: !4345, line: 179, type: !116)
!4353 = !DILocation(line: 179, column: 15, scope: !4344)
!4354 = !DILocation(line: 179, column: 23, scope: !4344)
!4355 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !219, file: !219, line: 134, type: !4356, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!4356 = !DISubroutineType(types: !4357)
!4357 = !{null, !7, !7}
!4358 = !DILocalVariable(name: "cpu", arg: 1, scope: !4355, file: !219, line: 134, type: !7)
!4359 = !DILocation(line: 134, column: 51, scope: !4355)
!4360 = !DILocalVariable(name: "bits", arg: 2, scope: !4355, file: !219, line: 134, type: !7)
!4361 = !DILocation(line: 134, column: 69, scope: !4355)
!4362 = !DILocation(line: 139, column: 1, scope: !4355)
!4363 = distinct !DISubprogram(name: "bitmap_copy", scope: !4364, file: !4364, line: 247, type: !4365, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!4364 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/lizy2001/genbc/linux")
!4365 = !DISubroutineType(types: !4366)
!4366 = !{null, !2287, !4367, !7}
!4367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4368, size: 64)
!4368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !225)
!4369 = !DILocalVariable(name: "dst", arg: 1, scope: !4363, file: !4364, line: 247, type: !2287)
!4370 = !DILocation(line: 247, column: 47, scope: !4363)
!4371 = !DILocalVariable(name: "src", arg: 2, scope: !4363, file: !4364, line: 247, type: !4367)
!4372 = !DILocation(line: 247, column: 73, scope: !4363)
!4373 = !DILocalVariable(name: "nbits", arg: 3, scope: !4363, file: !4364, line: 248, type: !7)
!4374 = !DILocation(line: 248, column: 17, scope: !4363)
!4375 = !DILocalVariable(name: "len", scope: !4363, file: !4364, line: 250, type: !7)
!4376 = !DILocation(line: 250, column: 15, scope: !4363)
!4377 = !DILocation(line: 250, column: 21, scope: !4363)
!4378 = !DILocation(line: 250, column: 42, scope: !4363)
!4379 = !DILocation(line: 251, column: 9, scope: !4363)
!4380 = !DILocation(line: 251, column: 2, scope: !4363)
!4381 = !DILocation(line: 251, column: 14, scope: !4363)
!4382 = !DILocation(line: 251, column: 19, scope: !4363)
!4383 = !DILocation(line: 252, column: 1, scope: !4363)
!4384 = distinct !DISubprogram(name: "bitmap_zero", scope: !4364, file: !4364, line: 235, type: !4385, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!4385 = !DISubroutineType(types: !4386)
!4386 = !{null, !2287, !7}
!4387 = !DILocalVariable(name: "dst", arg: 1, scope: !4384, file: !4364, line: 235, type: !2287)
!4388 = !DILocation(line: 235, column: 47, scope: !4384)
!4389 = !DILocalVariable(name: "nbits", arg: 2, scope: !4384, file: !4364, line: 235, type: !7)
!4390 = !DILocation(line: 235, column: 65, scope: !4384)
!4391 = !DILocalVariable(name: "len", scope: !4384, file: !4364, line: 237, type: !7)
!4392 = !DILocation(line: 237, column: 15, scope: !4384)
!4393 = !DILocation(line: 237, column: 21, scope: !4384)
!4394 = !DILocation(line: 237, column: 42, scope: !4384)
!4395 = !DILocation(line: 238, column: 9, scope: !4384)
!4396 = !DILocation(line: 238, column: 2, scope: !4384)
!4397 = !DILocation(line: 238, column: 17, scope: !4384)
!4398 = !DILocation(line: 239, column: 1, scope: !4384)
!4399 = distinct !DISubprogram(name: "call_on_cpu", scope: !99, file: !99, line: 300, type: !4400, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!4400 = !DISubroutineType(types: !4401)
!4401 = !{!116, !116, !4402, !104, !263}
!4402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4403, size: 64)
!4403 = !DISubroutineType(types: !4404)
!4404 = !{!398, !104}
!4405 = !DILocalVariable(name: "cpu", arg: 1, scope: !4399, file: !99, line: 300, type: !116)
!4406 = !DILocation(line: 300, column: 35, scope: !4399)
!4407 = !DILocalVariable(name: "fn", arg: 2, scope: !4399, file: !99, line: 300, type: !4402)
!4408 = !DILocation(line: 300, column: 47, scope: !4399)
!4409 = !DILocalVariable(name: "arg", arg: 3, scope: !4399, file: !99, line: 300, type: !104)
!4410 = !DILocation(line: 300, column: 66, scope: !4399)
!4411 = !DILocalVariable(name: "direct", arg: 4, scope: !4399, file: !99, line: 301, type: !263)
!4412 = !DILocation(line: 301, column: 15, scope: !4399)
!4413 = !DILocation(line: 303, column: 6, scope: !4414)
!4414 = distinct !DILexicalBlock(scope: !4399, file: !99, line: 303, column: 6)
!4415 = !DILocation(line: 303, column: 13, scope: !4414)
!4416 = !DILocation(line: 303, column: 17, scope: !4414)
!4417 = !DILocation(line: 303, column: 36, scope: !4414)
!4418 = !DILocation(line: 303, column: 39, scope: !4414)
!4419 = !DILocation(line: 303, column: 43, scope: !4414)
!4420 = !DILocation(line: 303, column: 6, scope: !4399)
!4421 = !DILocation(line: 304, column: 10, scope: !4414)
!4422 = !DILocation(line: 304, column: 13, scope: !4414)
!4423 = !DILocation(line: 304, column: 3, scope: !4414)
!4424 = !DILocation(line: 305, column: 21, scope: !4399)
!4425 = !DILocation(line: 305, column: 26, scope: !4399)
!4426 = !DILocation(line: 305, column: 30, scope: !4399)
!4427 = !DILocation(line: 305, column: 9, scope: !4399)
!4428 = !DILocation(line: 305, column: 2, scope: !4399)
!4429 = !DILocation(line: 306, column: 1, scope: !4399)
!4430 = distinct !DISubprogram(name: "__acpi_processor_get_throttling", scope: !3, file: !3, line: 893, type: !4403, scopeLine: 894, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!4431 = !DILocalVariable(name: "data", arg: 1, scope: !4430, file: !3, line: 893, type: !104)
!4432 = !DILocation(line: 893, column: 51, scope: !4430)
!4433 = !DILocalVariable(name: "pr", scope: !4430, file: !3, line: 895, type: !97)
!4434 = !DILocation(line: 895, column: 25, scope: !4430)
!4435 = !DILocation(line: 895, column: 30, scope: !4430)
!4436 = !DILocation(line: 897, column: 9, scope: !4430)
!4437 = !DILocation(line: 897, column: 13, scope: !4430)
!4438 = !DILocation(line: 897, column: 24, scope: !4430)
!4439 = !DILocation(line: 897, column: 54, scope: !4430)
!4440 = !DILocation(line: 897, column: 2, scope: !4430)
!4441 = distinct !DISubprogram(name: "is_percpu_thread", scope: !619, file: !619, line: 1583, type: !1572, scopeLine: 1584, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!4442 = !DILocation(line: 1589, column: 2, scope: !4441)
!4443 = distinct !DISubprogram(name: "work_on_cpu", scope: !1517, file: !1517, line: 630, type: !4444, scopeLine: 631, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!4444 = !DISubroutineType(types: !4445)
!4445 = !{!398, !116, !4402, !104}
!4446 = !DILocalVariable(name: "cpu", arg: 1, scope: !4443, file: !1517, line: 630, type: !116)
!4447 = !DILocation(line: 630, column: 36, scope: !4443)
!4448 = !DILocalVariable(name: "fn", arg: 2, scope: !4443, file: !1517, line: 630, type: !4402)
!4449 = !DILocation(line: 630, column: 48, scope: !4443)
!4450 = !DILocalVariable(name: "arg", arg: 3, scope: !4443, file: !1517, line: 630, type: !104)
!4451 = !DILocation(line: 630, column: 67, scope: !4443)
!4452 = !DILocation(line: 632, column: 9, scope: !4443)
!4453 = !DILocation(line: 632, column: 12, scope: !4443)
!4454 = !DILocation(line: 632, column: 2, scope: !4443)
!4455 = distinct !DISubprogram(name: "acpi_processor_throttling_notifier", scope: !3, file: !3, line: 208, type: !4456, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!4456 = !DISubroutineType(types: !4457)
!4457 = !{!116, !225, !104}
!4458 = !DILocalVariable(name: "event", arg: 1, scope: !4455, file: !3, line: 208, type: !225)
!4459 = !DILocation(line: 208, column: 61, scope: !4455)
!4460 = !DILocalVariable(name: "data", arg: 2, scope: !4455, file: !3, line: 208, type: !104)
!4461 = !DILocation(line: 208, column: 74, scope: !4455)
!4462 = !DILocalVariable(name: "p_tstate", scope: !4455, file: !3, line: 210, type: !4463)
!4463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!4464 = !DILocation(line: 210, column: 28, scope: !4455)
!4465 = !DILocation(line: 210, column: 39, scope: !4455)
!4466 = !DILocalVariable(name: "pr", scope: !4455, file: !3, line: 211, type: !97)
!4467 = !DILocation(line: 211, column: 25, scope: !4455)
!4468 = !DILocalVariable(name: "cpu", scope: !4455, file: !3, line: 212, type: !7)
!4469 = !DILocation(line: 212, column: 15, scope: !4455)
!4470 = !DILocalVariable(name: "target_state", scope: !4455, file: !3, line: 213, type: !116)
!4471 = !DILocation(line: 213, column: 6, scope: !4455)
!4472 = !DILocalVariable(name: "p_limit", scope: !4455, file: !3, line: 214, type: !2868)
!4473 = !DILocation(line: 214, column: 31, scope: !4455)
!4474 = !DILocalVariable(name: "p_throttling", scope: !4455, file: !3, line: 215, type: !2605)
!4475 = !DILocation(line: 215, column: 36, scope: !4455)
!4476 = !DILocation(line: 217, column: 8, scope: !4455)
!4477 = !DILocation(line: 217, column: 18, scope: !4455)
!4478 = !DILocation(line: 217, column: 6, scope: !4455)
!4479 = !DILocation(line: 218, column: 7, scope: !4480)
!4480 = distinct !DILexicalBlock(scope: !4455, file: !3, line: 218, column: 7)
!4481 = !DILocation(line: 218, column: 7, scope: !4482)
!4482 = distinct !DILexicalBlock(scope: !4480, file: !3, line: 218, column: 7)
!4483 = !DILocalVariable(name: "__vpp_verify", scope: !4484, file: !3, line: 218, type: !1312)
!4484 = distinct !DILexicalBlock(scope: !4482, file: !3, line: 218, column: 7)
!4485 = !DILocation(line: 218, column: 7, scope: !4484)
!4486 = !DILocation(line: 218, column: 7, scope: !4455)
!4487 = !DILocation(line: 218, column: 5, scope: !4455)
!4488 = !DILocation(line: 219, column: 7, scope: !4489)
!4489 = distinct !DILexicalBlock(scope: !4455, file: !3, line: 219, column: 6)
!4490 = !DILocation(line: 219, column: 6, scope: !4455)
!4491 = !DILocation(line: 221, column: 3, scope: !4492)
!4492 = distinct !DILexicalBlock(scope: !4489, file: !3, line: 219, column: 11)
!4493 = !DILocation(line: 223, column: 7, scope: !4494)
!4494 = distinct !DILexicalBlock(scope: !4455, file: !3, line: 223, column: 6)
!4495 = !DILocation(line: 223, column: 11, scope: !4494)
!4496 = !DILocation(line: 223, column: 17, scope: !4494)
!4497 = !DILocation(line: 223, column: 6, scope: !4455)
!4498 = !DILocation(line: 226, column: 3, scope: !4499)
!4499 = distinct !DILexicalBlock(scope: !4494, file: !3, line: 223, column: 29)
!4500 = !DILocation(line: 228, column: 17, scope: !4455)
!4501 = !DILocation(line: 228, column: 27, scope: !4455)
!4502 = !DILocation(line: 228, column: 15, scope: !4455)
!4503 = !DILocation(line: 229, column: 19, scope: !4455)
!4504 = !DILocation(line: 229, column: 23, scope: !4455)
!4505 = !DILocation(line: 229, column: 15, scope: !4455)
!4506 = !DILocation(line: 230, column: 10, scope: !4455)
!4507 = !DILocation(line: 230, column: 2, scope: !4455)
!4508 = !DILocation(line: 236, column: 14, scope: !4509)
!4509 = distinct !DILexicalBlock(scope: !4455, file: !3, line: 230, column: 17)
!4510 = !DILocation(line: 236, column: 18, scope: !4509)
!4511 = !DILocation(line: 236, column: 11, scope: !4509)
!4512 = !DILocation(line: 237, column: 7, scope: !4513)
!4513 = distinct !DILexicalBlock(scope: !4509, file: !3, line: 237, column: 7)
!4514 = !DILocation(line: 237, column: 16, scope: !4513)
!4515 = !DILocation(line: 237, column: 24, scope: !4513)
!4516 = !DILocation(line: 237, column: 29, scope: !4513)
!4517 = !DILocation(line: 237, column: 27, scope: !4513)
!4518 = !DILocation(line: 237, column: 7, scope: !4509)
!4519 = !DILocation(line: 238, column: 19, scope: !4513)
!4520 = !DILocation(line: 238, column: 28, scope: !4513)
!4521 = !DILocation(line: 238, column: 36, scope: !4513)
!4522 = !DILocation(line: 238, column: 17, scope: !4513)
!4523 = !DILocation(line: 238, column: 4, scope: !4513)
!4524 = !DILocation(line: 239, column: 7, scope: !4525)
!4525 = distinct !DILexicalBlock(scope: !4509, file: !3, line: 239, column: 7)
!4526 = !DILocation(line: 239, column: 16, scope: !4525)
!4527 = !DILocation(line: 239, column: 21, scope: !4525)
!4528 = !DILocation(line: 239, column: 26, scope: !4525)
!4529 = !DILocation(line: 239, column: 24, scope: !4525)
!4530 = !DILocation(line: 239, column: 7, scope: !4509)
!4531 = !DILocation(line: 240, column: 19, scope: !4525)
!4532 = !DILocation(line: 240, column: 28, scope: !4525)
!4533 = !DILocation(line: 240, column: 33, scope: !4525)
!4534 = !DILocation(line: 240, column: 17, scope: !4525)
!4535 = !DILocation(line: 240, column: 4, scope: !4525)
!4536 = !DILocation(line: 241, column: 7, scope: !4537)
!4537 = distinct !DILexicalBlock(scope: !4509, file: !3, line: 241, column: 7)
!4538 = !DILocation(line: 241, column: 11, scope: !4537)
!4539 = !DILocation(line: 241, column: 39, scope: !4537)
!4540 = !DILocation(line: 241, column: 37, scope: !4537)
!4541 = !DILocation(line: 241, column: 7, scope: !4509)
!4542 = !DILocation(line: 242, column: 19, scope: !4537)
!4543 = !DILocation(line: 242, column: 23, scope: !4537)
!4544 = !DILocation(line: 242, column: 17, scope: !4537)
!4545 = !DILocation(line: 242, column: 4, scope: !4537)
!4546 = !DILocation(line: 243, column: 7, scope: !4547)
!4547 = distinct !DILexicalBlock(scope: !4509, file: !3, line: 243, column: 7)
!4548 = !DILocation(line: 243, column: 23, scope: !4547)
!4549 = !DILocation(line: 243, column: 37, scope: !4547)
!4550 = !DILocation(line: 243, column: 20, scope: !4547)
!4551 = !DILocation(line: 243, column: 7, scope: !4509)
!4552 = !DILocation(line: 244, column: 4, scope: !4553)
!4553 = distinct !DILexicalBlock(scope: !4547, file: !3, line: 243, column: 50)
!4554 = !DILocation(line: 246, column: 19, scope: !4553)
!4555 = !DILocation(line: 246, column: 33, scope: !4553)
!4556 = !DILocation(line: 246, column: 45, scope: !4553)
!4557 = !DILocation(line: 246, column: 17, scope: !4553)
!4558 = !DILocation(line: 247, column: 3, scope: !4553)
!4559 = !DILocation(line: 248, column: 28, scope: !4509)
!4560 = !DILocation(line: 248, column: 3, scope: !4509)
!4561 = !DILocation(line: 248, column: 13, scope: !4509)
!4562 = !DILocation(line: 248, column: 26, scope: !4509)
!4563 = !DILocation(line: 252, column: 3, scope: !4509)
!4564 = !DILocation(line: 258, column: 25, scope: !4509)
!4565 = !DILocation(line: 258, column: 3, scope: !4509)
!4566 = !DILocation(line: 258, column: 17, scope: !4509)
!4567 = !DILocation(line: 258, column: 23, scope: !4509)
!4568 = !DILocation(line: 262, column: 3, scope: !4509)
!4569 = !DILocation(line: 264, column: 3, scope: !4509)
!4570 = !DILocation(line: 266, column: 3, scope: !4509)
!4571 = !DILocation(line: 269, column: 2, scope: !4455)
!4572 = !DILocation(line: 270, column: 1, scope: !4455)
!4573 = distinct !DISubprogram(name: "acpi_processor_throttling_fn", scope: !3, file: !3, line: 1058, type: !4403, scopeLine: 1059, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!4574 = !DILocalVariable(name: "data", arg: 1, scope: !4573, file: !3, line: 1058, type: !104)
!4575 = !DILocation(line: 1058, column: 48, scope: !4573)
!4576 = !DILocalVariable(name: "arg", scope: !4573, file: !3, line: 1060, type: !4577)
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!4578 = !DILocation(line: 1060, column: 40, scope: !4573)
!4579 = !DILocation(line: 1060, column: 46, scope: !4573)
!4580 = !DILocalVariable(name: "pr", scope: !4573, file: !3, line: 1061, type: !97)
!4581 = !DILocation(line: 1061, column: 25, scope: !4573)
!4582 = !DILocation(line: 1061, column: 30, scope: !4573)
!4583 = !DILocation(line: 1061, column: 35, scope: !4573)
!4584 = !DILocation(line: 1063, column: 9, scope: !4573)
!4585 = !DILocation(line: 1063, column: 13, scope: !4573)
!4586 = !DILocation(line: 1063, column: 24, scope: !4573)
!4587 = !DILocation(line: 1063, column: 54, scope: !4573)
!4588 = !DILocation(line: 1064, column: 4, scope: !4573)
!4589 = !DILocation(line: 1064, column: 9, scope: !4573)
!4590 = !DILocation(line: 1064, column: 23, scope: !4573)
!4591 = !DILocation(line: 1064, column: 28, scope: !4573)
!4592 = !DILocation(line: 1063, column: 2, scope: !4573)
!4593 = distinct !DISubprogram(name: "kmalloc_array", scope: !87, file: !87, line: 584, type: !4594, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!4594 = !DISubroutineType(types: !4595)
!4595 = !{!104, !409, !409, !94}
!4596 = !DILocalVariable(name: "s", arg: 1, scope: !4597, file: !87, line: 445, type: !1231)
!4597 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !87, file: !87, line: 445, type: !4598, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!4598 = !DISubroutineType(types: !4599)
!4599 = !{!104, !1231, !94, !409}
!4600 = !DILocation(line: 445, column: 72, scope: !4597, inlinedAt: !4601)
!4601 = distinct !DILocation(line: 552, column: 10, scope: !4602, inlinedAt: !4607)
!4602 = distinct !DILexicalBlock(scope: !4603, file: !87, line: 540, column: 34)
!4603 = distinct !DILexicalBlock(scope: !4604, file: !87, line: 540, column: 6)
!4604 = distinct !DISubprogram(name: "kmalloc", scope: !87, file: !87, line: 538, type: !4605, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!4605 = !DISubroutineType(types: !4606)
!4606 = !{!104, !409, !94}
!4607 = distinct !DILocation(line: 591, column: 10, scope: !4608)
!4608 = distinct !DILexicalBlock(scope: !4593, file: !87, line: 590, column: 6)
!4609 = !DILocalVariable(name: "flags", arg: 2, scope: !4597, file: !87, line: 446, type: !94)
!4610 = !DILocation(line: 446, column: 9, scope: !4597, inlinedAt: !4601)
!4611 = !DILocalVariable(name: "size", arg: 3, scope: !4597, file: !87, line: 446, type: !409)
!4612 = !DILocation(line: 446, column: 23, scope: !4597, inlinedAt: !4601)
!4613 = !DILocalVariable(name: "ret", scope: !4597, file: !87, line: 448, type: !104)
!4614 = !DILocation(line: 448, column: 8, scope: !4597, inlinedAt: !4601)
!4615 = !DILocalVariable(name: "flags", arg: 1, scope: !4616, file: !87, line: 318, type: !94)
!4616 = distinct !DISubprogram(name: "kmalloc_type", scope: !87, file: !87, line: 318, type: !4617, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!4617 = !DISubroutineType(types: !4618)
!4618 = !{!86, !94}
!4619 = !DILocation(line: 318, column: 67, scope: !4616, inlinedAt: !4620)
!4620 = distinct !DILocation(line: 553, column: 20, scope: !4602, inlinedAt: !4607)
!4621 = !DILocalVariable(name: "size", arg: 1, scope: !4622, file: !87, line: 346, type: !409)
!4622 = distinct !DISubprogram(name: "kmalloc_index", scope: !87, file: !87, line: 346, type: !4623, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!4623 = !DISubroutineType(types: !4624)
!4624 = !{!7, !409}
!4625 = !DILocation(line: 346, column: 58, scope: !4622, inlinedAt: !4626)
!4626 = distinct !DILocation(line: 547, column: 11, scope: !4602, inlinedAt: !4607)
!4627 = !DILocalVariable(name: "size", arg: 1, scope: !4628, file: !87, line: 472, type: !409)
!4628 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !87, file: !87, line: 472, type: !4629, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!4629 = !DISubroutineType(types: !4630)
!4630 = !{!104, !409, !94, !7}
!4631 = !DILocation(line: 472, column: 28, scope: !4628, inlinedAt: !4632)
!4632 = distinct !DILocation(line: 481, column: 9, scope: !4633, inlinedAt: !4634)
!4633 = distinct !DISubprogram(name: "kmalloc_large", scope: !87, file: !87, line: 478, type: !4605, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!4634 = distinct !DILocation(line: 545, column: 11, scope: !4635, inlinedAt: !4607)
!4635 = distinct !DILexicalBlock(scope: !4602, file: !87, line: 544, column: 7)
!4636 = !DILocalVariable(name: "flags", arg: 2, scope: !4628, file: !87, line: 472, type: !94)
!4637 = !DILocation(line: 472, column: 40, scope: !4628, inlinedAt: !4632)
!4638 = !DILocalVariable(name: "order", arg: 3, scope: !4628, file: !87, line: 472, type: !7)
!4639 = !DILocation(line: 472, column: 60, scope: !4628, inlinedAt: !4632)
!4640 = !DILocalVariable(name: "size", arg: 1, scope: !4633, file: !87, line: 478, type: !409)
!4641 = !DILocation(line: 478, column: 51, scope: !4633, inlinedAt: !4634)
!4642 = !DILocalVariable(name: "flags", arg: 2, scope: !4633, file: !87, line: 478, type: !94)
!4643 = !DILocation(line: 478, column: 63, scope: !4633, inlinedAt: !4634)
!4644 = !DILocalVariable(name: "order", scope: !4633, file: !87, line: 480, type: !7)
!4645 = !DILocation(line: 480, column: 15, scope: !4633, inlinedAt: !4634)
!4646 = !DILocalVariable(name: "size", arg: 1, scope: !4604, file: !87, line: 538, type: !409)
!4647 = !DILocation(line: 538, column: 45, scope: !4604, inlinedAt: !4607)
!4648 = !DILocalVariable(name: "flags", arg: 2, scope: !4604, file: !87, line: 538, type: !94)
!4649 = !DILocation(line: 538, column: 57, scope: !4604, inlinedAt: !4607)
!4650 = !DILocalVariable(name: "index", scope: !4602, file: !87, line: 542, type: !7)
!4651 = !DILocation(line: 542, column: 16, scope: !4602, inlinedAt: !4607)
!4652 = !DILocalVariable(name: "n", arg: 1, scope: !4593, file: !87, line: 584, type: !409)
!4653 = !DILocation(line: 584, column: 42, scope: !4593)
!4654 = !DILocalVariable(name: "size", arg: 2, scope: !4593, file: !87, line: 584, type: !409)
!4655 = !DILocation(line: 584, column: 52, scope: !4593)
!4656 = !DILocalVariable(name: "flags", arg: 3, scope: !4593, file: !87, line: 584, type: !94)
!4657 = !DILocation(line: 584, column: 64, scope: !4593)
!4658 = !DILocalVariable(name: "bytes", scope: !4593, file: !87, line: 586, type: !409)
!4659 = !DILocation(line: 586, column: 9, scope: !4593)
!4660 = !DILocalVariable(name: "__a", scope: !4661, file: !87, line: 588, type: !409)
!4661 = distinct !DILexicalBlock(scope: !4662, file: !87, line: 588, column: 6)
!4662 = distinct !DILexicalBlock(scope: !4593, file: !87, line: 588, column: 6)
!4663 = !DILocation(line: 588, column: 6, scope: !4661)
!4664 = !DILocalVariable(name: "__b", scope: !4661, file: !87, line: 588, type: !409)
!4665 = !DILocalVariable(name: "__d", scope: !4661, file: !87, line: 588, type: !4666)
!4666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!4667 = !DILocation(line: 588, column: 6, scope: !4662)
!4668 = !DILocation(line: 588, column: 6, scope: !4593)
!4669 = !DILocation(line: 589, column: 3, scope: !4662)
!4670 = !DILocation(line: 590, column: 27, scope: !4608)
!4671 = !DILocation(line: 590, column: 6, scope: !4608)
!4672 = !DILocation(line: 590, column: 30, scope: !4608)
!4673 = !DILocation(line: 590, column: 54, scope: !4608)
!4674 = !DILocation(line: 590, column: 33, scope: !4608)
!4675 = !DILocation(line: 590, column: 6, scope: !4593)
!4676 = !DILocation(line: 591, column: 18, scope: !4608)
!4677 = !DILocation(line: 591, column: 25, scope: !4608)
!4678 = !DILocation(line: 540, column: 27, scope: !4603, inlinedAt: !4607)
!4679 = !DILocation(line: 540, column: 6, scope: !4603, inlinedAt: !4607)
!4680 = !DILocation(line: 540, column: 6, scope: !4604, inlinedAt: !4607)
!4681 = !DILocation(line: 544, column: 7, scope: !4635, inlinedAt: !4607)
!4682 = !DILocation(line: 544, column: 12, scope: !4635, inlinedAt: !4607)
!4683 = !DILocation(line: 544, column: 7, scope: !4602, inlinedAt: !4607)
!4684 = !DILocation(line: 545, column: 25, scope: !4635, inlinedAt: !4607)
!4685 = !DILocation(line: 545, column: 31, scope: !4635, inlinedAt: !4607)
!4686 = !DILocation(line: 480, column: 33, scope: !4633, inlinedAt: !4634)
!4687 = !DILocation(line: 480, column: 23, scope: !4633, inlinedAt: !4634)
!4688 = !DILocation(line: 481, column: 29, scope: !4633, inlinedAt: !4634)
!4689 = !DILocation(line: 481, column: 35, scope: !4633, inlinedAt: !4634)
!4690 = !DILocation(line: 481, column: 42, scope: !4633, inlinedAt: !4634)
!4691 = !DILocation(line: 474, column: 23, scope: !4628, inlinedAt: !4632)
!4692 = !DILocation(line: 474, column: 29, scope: !4628, inlinedAt: !4632)
!4693 = !DILocation(line: 474, column: 36, scope: !4628, inlinedAt: !4632)
!4694 = !DILocation(line: 474, column: 9, scope: !4628, inlinedAt: !4632)
!4695 = !DILocation(line: 545, column: 4, scope: !4635, inlinedAt: !4607)
!4696 = !DILocation(line: 547, column: 25, scope: !4602, inlinedAt: !4607)
!4697 = !DILocation(line: 348, column: 7, scope: !4698, inlinedAt: !4626)
!4698 = distinct !DILexicalBlock(scope: !4622, file: !87, line: 348, column: 6)
!4699 = !DILocation(line: 348, column: 6, scope: !4622, inlinedAt: !4626)
!4700 = !DILocation(line: 349, column: 3, scope: !4698, inlinedAt: !4626)
!4701 = !DILocation(line: 351, column: 6, scope: !4702, inlinedAt: !4626)
!4702 = distinct !DILexicalBlock(scope: !4622, file: !87, line: 351, column: 6)
!4703 = !DILocation(line: 351, column: 11, scope: !4702, inlinedAt: !4626)
!4704 = !DILocation(line: 351, column: 6, scope: !4622, inlinedAt: !4626)
!4705 = !DILocation(line: 352, column: 3, scope: !4702, inlinedAt: !4626)
!4706 = !DILocation(line: 354, column: 32, scope: !4707, inlinedAt: !4626)
!4707 = distinct !DILexicalBlock(scope: !4622, file: !87, line: 354, column: 6)
!4708 = !DILocation(line: 354, column: 37, scope: !4707, inlinedAt: !4626)
!4709 = !DILocation(line: 354, column: 42, scope: !4707, inlinedAt: !4626)
!4710 = !DILocation(line: 354, column: 45, scope: !4707, inlinedAt: !4626)
!4711 = !DILocation(line: 354, column: 50, scope: !4707, inlinedAt: !4626)
!4712 = !DILocation(line: 354, column: 6, scope: !4622, inlinedAt: !4626)
!4713 = !DILocation(line: 355, column: 3, scope: !4707, inlinedAt: !4626)
!4714 = !DILocation(line: 356, column: 32, scope: !4715, inlinedAt: !4626)
!4715 = distinct !DILexicalBlock(scope: !4622, file: !87, line: 356, column: 6)
!4716 = !DILocation(line: 356, column: 37, scope: !4715, inlinedAt: !4626)
!4717 = !DILocation(line: 356, column: 43, scope: !4715, inlinedAt: !4626)
!4718 = !DILocation(line: 356, column: 46, scope: !4715, inlinedAt: !4626)
!4719 = !DILocation(line: 356, column: 51, scope: !4715, inlinedAt: !4626)
!4720 = !DILocation(line: 356, column: 6, scope: !4622, inlinedAt: !4626)
!4721 = !DILocation(line: 357, column: 3, scope: !4715, inlinedAt: !4626)
!4722 = !DILocation(line: 358, column: 6, scope: !4723, inlinedAt: !4626)
!4723 = distinct !DILexicalBlock(scope: !4622, file: !87, line: 358, column: 6)
!4724 = !DILocation(line: 358, column: 11, scope: !4723, inlinedAt: !4626)
!4725 = !DILocation(line: 358, column: 6, scope: !4622, inlinedAt: !4626)
!4726 = !DILocation(line: 358, column: 26, scope: !4723, inlinedAt: !4626)
!4727 = !DILocation(line: 359, column: 6, scope: !4728, inlinedAt: !4626)
!4728 = distinct !DILexicalBlock(scope: !4622, file: !87, line: 359, column: 6)
!4729 = !DILocation(line: 359, column: 11, scope: !4728, inlinedAt: !4626)
!4730 = !DILocation(line: 359, column: 6, scope: !4622, inlinedAt: !4626)
!4731 = !DILocation(line: 359, column: 26, scope: !4728, inlinedAt: !4626)
!4732 = !DILocation(line: 360, column: 6, scope: !4733, inlinedAt: !4626)
!4733 = distinct !DILexicalBlock(scope: !4622, file: !87, line: 360, column: 6)
!4734 = !DILocation(line: 360, column: 11, scope: !4733, inlinedAt: !4626)
!4735 = !DILocation(line: 360, column: 6, scope: !4622, inlinedAt: !4626)
!4736 = !DILocation(line: 360, column: 26, scope: !4733, inlinedAt: !4626)
!4737 = !DILocation(line: 361, column: 6, scope: !4738, inlinedAt: !4626)
!4738 = distinct !DILexicalBlock(scope: !4622, file: !87, line: 361, column: 6)
!4739 = !DILocation(line: 361, column: 11, scope: !4738, inlinedAt: !4626)
!4740 = !DILocation(line: 361, column: 6, scope: !4622, inlinedAt: !4626)
!4741 = !DILocation(line: 361, column: 26, scope: !4738, inlinedAt: !4626)
!4742 = !DILocation(line: 362, column: 6, scope: !4743, inlinedAt: !4626)
!4743 = distinct !DILexicalBlock(scope: !4622, file: !87, line: 362, column: 6)
!4744 = !DILocation(line: 362, column: 11, scope: !4743, inlinedAt: !4626)
!4745 = !DILocation(line: 362, column: 6, scope: !4622, inlinedAt: !4626)
!4746 = !DILocation(line: 362, column: 26, scope: !4743, inlinedAt: !4626)
!4747 = !DILocation(line: 363, column: 6, scope: !4748, inlinedAt: !4626)
!4748 = distinct !DILexicalBlock(scope: !4622, file: !87, line: 363, column: 6)
!4749 = !DILocation(line: 363, column: 11, scope: !4748, inlinedAt: !4626)
!4750 = !DILocation(line: 363, column: 6, scope: !4622, inlinedAt: !4626)
!4751 = !DILocation(line: 363, column: 26, scope: !4748, inlinedAt: !4626)
!4752 = !DILocation(line: 364, column: 6, scope: !4753, inlinedAt: !4626)
!4753 = distinct !DILexicalBlock(scope: !4622, file: !87, line: 364, column: 6)
!4754 = !DILocation(line: 364, column: 11, scope: !4753, inlinedAt: !4626)
!4755 = !DILocation(line: 364, column: 6, scope: !4622, inlinedAt: !4626)
!4756 = !DILocation(line: 364, column: 26, scope: !4753, inlinedAt: !4626)
!4757 = !DILocation(line: 365, column: 6, scope: !4758, inlinedAt: !4626)
!4758 = distinct !DILexicalBlock(scope: !4622, file: !87, line: 365, column: 6)
!4759 = !DILocation(line: 365, column: 11, scope: !4758, inlinedAt: !4626)
!4760 = !DILocation(line: 365, column: 6, scope: !4622, inlinedAt: !4626)
!4761 = !DILocation(line: 365, column: 26, scope: !4758, inlinedAt: !4626)
!4762 = !DILocation(line: 366, column: 6, scope: !4763, inlinedAt: !4626)
!4763 = distinct !DILexicalBlock(scope: !4622, file: !87, line: 366, column: 6)
!4764 = !DILocation(line: 366, column: 11, scope: !4763, inlinedAt: !4626)
!4765 = !DILocation(line: 366, column: 6, scope: !4622, inlinedAt: !4626)
!4766 = !DILocation(line: 366, column: 26, scope: !4763, inlinedAt: !4626)
!4767 = !DILocation(line: 367, column: 6, scope: !4768, inlinedAt: !4626)
!4768 = distinct !DILexicalBlock(scope: !4622, file: !87, line: 367, column: 6)
!4769 = !DILocation(line: 367, column: 11, scope: !4768, inlinedAt: !4626)
!4770 = !DILocation(line: 367, column: 6, scope: !4622, inlinedAt: !4626)
!4771 = !DILocation(line: 367, column: 26, scope: !4768, inlinedAt: !4626)
!4772 = !DILocation(line: 368, column: 6, scope: !4773, inlinedAt: !4626)
!4773 = distinct !DILexicalBlock(scope: !4622, file: !87, line: 368, column: 6)
!4774 = !DILocation(line: 368, column: 11, scope: !4773, inlinedAt: !4626)
!4775 = !DILocation(line: 368, column: 6, scope: !4622, inlinedAt: !4626)
!4776 = !DILocation(line: 368, column: 26, scope: !4773, inlinedAt: !4626)
!4777 = !DILocation(line: 369, column: 6, scope: !4778, inlinedAt: !4626)
!4778 = distinct !DILexicalBlock(scope: !4622, file: !87, line: 369, column: 6)
!4779 = !DILocation(line: 369, column: 11, scope: !4778, inlinedAt: !4626)
!4780 = !DILocation(line: 369, column: 6, scope: !4622, inlinedAt: !4626)
!4781 = !DILocation(line: 369, column: 26, scope: !4778, inlinedAt: !4626)
!4782 = !DILocation(line: 370, column: 6, scope: !4783, inlinedAt: !4626)
!4783 = distinct !DILexicalBlock(scope: !4622, file: !87, line: 370, column: 6)
!4784 = !DILocation(line: 370, column: 11, scope: !4783, inlinedAt: !4626)
!4785 = !DILocation(line: 370, column: 6, scope: !4622, inlinedAt: !4626)
!4786 = !DILocation(line: 370, column: 26, scope: !4783, inlinedAt: !4626)
!4787 = !DILocation(line: 371, column: 6, scope: !4788, inlinedAt: !4626)
!4788 = distinct !DILexicalBlock(scope: !4622, file: !87, line: 371, column: 6)
!4789 = !DILocation(line: 371, column: 11, scope: !4788, inlinedAt: !4626)
!4790 = !DILocation(line: 371, column: 6, scope: !4622, inlinedAt: !4626)
!4791 = !DILocation(line: 371, column: 26, scope: !4788, inlinedAt: !4626)
!4792 = !DILocation(line: 372, column: 6, scope: !4793, inlinedAt: !4626)
!4793 = distinct !DILexicalBlock(scope: !4622, file: !87, line: 372, column: 6)
!4794 = !DILocation(line: 372, column: 11, scope: !4793, inlinedAt: !4626)
!4795 = !DILocation(line: 372, column: 6, scope: !4622, inlinedAt: !4626)
!4796 = !DILocation(line: 372, column: 26, scope: !4793, inlinedAt: !4626)
!4797 = !DILocation(line: 373, column: 6, scope: !4798, inlinedAt: !4626)
!4798 = distinct !DILexicalBlock(scope: !4622, file: !87, line: 373, column: 6)
!4799 = !DILocation(line: 373, column: 11, scope: !4798, inlinedAt: !4626)
!4800 = !DILocation(line: 373, column: 6, scope: !4622, inlinedAt: !4626)
!4801 = !DILocation(line: 373, column: 26, scope: !4798, inlinedAt: !4626)
!4802 = !DILocation(line: 374, column: 6, scope: !4803, inlinedAt: !4626)
!4803 = distinct !DILexicalBlock(scope: !4622, file: !87, line: 374, column: 6)
!4804 = !DILocation(line: 374, column: 11, scope: !4803, inlinedAt: !4626)
!4805 = !DILocation(line: 374, column: 6, scope: !4622, inlinedAt: !4626)
!4806 = !DILocation(line: 374, column: 26, scope: !4803, inlinedAt: !4626)
!4807 = !DILocation(line: 375, column: 6, scope: !4808, inlinedAt: !4626)
!4808 = distinct !DILexicalBlock(scope: !4622, file: !87, line: 375, column: 6)
!4809 = !DILocation(line: 375, column: 11, scope: !4808, inlinedAt: !4626)
!4810 = !DILocation(line: 375, column: 6, scope: !4622, inlinedAt: !4626)
!4811 = !DILocation(line: 375, column: 27, scope: !4808, inlinedAt: !4626)
!4812 = !DILocation(line: 376, column: 6, scope: !4813, inlinedAt: !4626)
!4813 = distinct !DILexicalBlock(scope: !4622, file: !87, line: 376, column: 6)
!4814 = !DILocation(line: 376, column: 11, scope: !4813, inlinedAt: !4626)
!4815 = !DILocation(line: 376, column: 6, scope: !4622, inlinedAt: !4626)
!4816 = !DILocation(line: 376, column: 32, scope: !4813, inlinedAt: !4626)
!4817 = !DILocation(line: 377, column: 6, scope: !4818, inlinedAt: !4626)
!4818 = distinct !DILexicalBlock(scope: !4622, file: !87, line: 377, column: 6)
!4819 = !DILocation(line: 377, column: 11, scope: !4818, inlinedAt: !4626)
!4820 = !DILocation(line: 377, column: 6, scope: !4622, inlinedAt: !4626)
!4821 = !DILocation(line: 377, column: 32, scope: !4818, inlinedAt: !4626)
!4822 = !DILocation(line: 378, column: 6, scope: !4823, inlinedAt: !4626)
!4823 = distinct !DILexicalBlock(scope: !4622, file: !87, line: 378, column: 6)
!4824 = !DILocation(line: 378, column: 11, scope: !4823, inlinedAt: !4626)
!4825 = !DILocation(line: 378, column: 6, scope: !4622, inlinedAt: !4626)
!4826 = !DILocation(line: 378, column: 32, scope: !4823, inlinedAt: !4626)
!4827 = !DILocation(line: 379, column: 6, scope: !4828, inlinedAt: !4626)
!4828 = distinct !DILexicalBlock(scope: !4622, file: !87, line: 379, column: 6)
!4829 = !DILocation(line: 379, column: 11, scope: !4828, inlinedAt: !4626)
!4830 = !DILocation(line: 379, column: 6, scope: !4622, inlinedAt: !4626)
!4831 = !DILocation(line: 379, column: 33, scope: !4828, inlinedAt: !4626)
!4832 = !DILocation(line: 380, column: 6, scope: !4833, inlinedAt: !4626)
!4833 = distinct !DILexicalBlock(scope: !4622, file: !87, line: 380, column: 6)
!4834 = !DILocation(line: 380, column: 11, scope: !4833, inlinedAt: !4626)
!4835 = !DILocation(line: 380, column: 6, scope: !4622, inlinedAt: !4626)
!4836 = !DILocation(line: 380, column: 33, scope: !4833, inlinedAt: !4626)
!4837 = !DILocation(line: 381, column: 6, scope: !4838, inlinedAt: !4626)
!4838 = distinct !DILexicalBlock(scope: !4622, file: !87, line: 381, column: 6)
!4839 = !DILocation(line: 381, column: 11, scope: !4838, inlinedAt: !4626)
!4840 = !DILocation(line: 381, column: 6, scope: !4622, inlinedAt: !4626)
!4841 = !DILocation(line: 381, column: 33, scope: !4838, inlinedAt: !4626)
!4842 = !DILocation(line: 382, column: 2, scope: !4843, inlinedAt: !4626)
!4843 = distinct !DILexicalBlock(scope: !4844, file: !87, line: 382, column: 2)
!4844 = distinct !DILexicalBlock(scope: !4622, file: !87, line: 382, column: 2)
!4845 = !{i32 -2144216183, i32 -2144216154, i32 -2144216108, i32 -2144216050, i32 -2144215996, i32 -2144215942, i32 -2144215887, i32 -2144215856}
!4846 = !DILocation(line: 382, column: 2, scope: !4847, inlinedAt: !4626)
!4847 = distinct !DILexicalBlock(scope: !4848, file: !87, line: 382, column: 2)
!4848 = distinct !DILexicalBlock(scope: !4844, file: !87, line: 382, column: 2)
!4849 = !{i32 -2144215413, i32 -2144215406, i32 -2144215352, i32 -2144215321, i32 -2144215291}
!4850 = !DILocation(line: 382, column: 2, scope: !4848, inlinedAt: !4626)
!4851 = !DILocation(line: 386, column: 1, scope: !4622, inlinedAt: !4626)
!4852 = !DILocation(line: 547, column: 9, scope: !4602, inlinedAt: !4607)
!4853 = !DILocation(line: 549, column: 8, scope: !4854, inlinedAt: !4607)
!4854 = distinct !DILexicalBlock(scope: !4602, file: !87, line: 549, column: 7)
!4855 = !DILocation(line: 549, column: 7, scope: !4602, inlinedAt: !4607)
!4856 = !DILocation(line: 550, column: 4, scope: !4854, inlinedAt: !4607)
!4857 = !DILocation(line: 553, column: 33, scope: !4602, inlinedAt: !4607)
!4858 = !DILocation(line: 325, column: 6, scope: !4859, inlinedAt: !4620)
!4859 = distinct !DILexicalBlock(scope: !4616, file: !87, line: 325, column: 6)
!4860 = !DILocation(line: 325, column: 6, scope: !4616, inlinedAt: !4620)
!4861 = !DILocation(line: 326, column: 3, scope: !4859, inlinedAt: !4620)
!4862 = !DILocation(line: 332, column: 9, scope: !4616, inlinedAt: !4620)
!4863 = !DILocation(line: 332, column: 15, scope: !4616, inlinedAt: !4620)
!4864 = !DILocation(line: 332, column: 2, scope: !4616, inlinedAt: !4620)
!4865 = !DILocation(line: 336, column: 1, scope: !4616, inlinedAt: !4620)
!4866 = !DILocation(line: 553, column: 5, scope: !4602, inlinedAt: !4607)
!4867 = !DILocation(line: 553, column: 41, scope: !4602, inlinedAt: !4607)
!4868 = !DILocation(line: 554, column: 5, scope: !4602, inlinedAt: !4607)
!4869 = !DILocation(line: 554, column: 12, scope: !4602, inlinedAt: !4607)
!4870 = !DILocation(line: 448, column: 31, scope: !4597, inlinedAt: !4601)
!4871 = !DILocation(line: 448, column: 34, scope: !4597, inlinedAt: !4601)
!4872 = !DILocation(line: 448, column: 14, scope: !4597, inlinedAt: !4601)
!4873 = !DILocation(line: 450, column: 22, scope: !4597, inlinedAt: !4601)
!4874 = !DILocation(line: 450, column: 25, scope: !4597, inlinedAt: !4601)
!4875 = !DILocation(line: 450, column: 30, scope: !4597, inlinedAt: !4601)
!4876 = !DILocation(line: 450, column: 36, scope: !4597, inlinedAt: !4601)
!4877 = !DILocation(line: 450, column: 8, scope: !4597, inlinedAt: !4601)
!4878 = !DILocation(line: 450, column: 6, scope: !4597, inlinedAt: !4601)
!4879 = !DILocation(line: 451, column: 9, scope: !4597, inlinedAt: !4601)
!4880 = !DILocation(line: 552, column: 3, scope: !4602, inlinedAt: !4607)
!4881 = !DILocation(line: 557, column: 19, scope: !4604, inlinedAt: !4607)
!4882 = !DILocation(line: 557, column: 25, scope: !4604, inlinedAt: !4607)
!4883 = !DILocation(line: 557, column: 9, scope: !4604, inlinedAt: !4607)
!4884 = !DILocation(line: 557, column: 2, scope: !4604, inlinedAt: !4607)
!4885 = !DILocation(line: 558, column: 1, scope: !4604, inlinedAt: !4607)
!4886 = !DILocation(line: 591, column: 3, scope: !4608)
!4887 = !DILocation(line: 592, column: 19, scope: !4593)
!4888 = !DILocation(line: 592, column: 26, scope: !4593)
!4889 = !DILocation(line: 592, column: 9, scope: !4593)
!4890 = !DILocation(line: 592, column: 2, scope: !4593)
!4891 = !DILocation(line: 593, column: 1, scope: !4593)
!4892 = distinct !DISubprogram(name: "__must_check_overflow", scope: !4893, file: !4893, line: 52, type: !4894, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!4893 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!4894 = !DISubroutineType(types: !4895)
!4895 = !{!263, !263}
!4896 = !DILocalVariable(name: "overflow", arg: 1, scope: !4892, file: !4893, line: 52, type: !263)
!4897 = !DILocation(line: 52, column: 60, scope: !4892)
!4898 = !DILocation(line: 54, column: 9, scope: !4892)
!4899 = !DILocation(line: 54, column: 2, scope: !4892)
!4900 = distinct !DISubprogram(name: "get_order", scope: !4901, file: !4901, line: 29, type: !4902, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!4901 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4902 = !DISubroutineType(types: !4903)
!4903 = !{!116, !225}
!4904 = !DILocalVariable(name: "x", arg: 1, scope: !4905, file: !4275, line: 366, type: !172)
!4905 = distinct !DISubprogram(name: "fls64", scope: !4275, file: !4275, line: 366, type: !4906, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!4906 = !DISubroutineType(types: !4907)
!4907 = !{!116, !172}
!4908 = !DILocation(line: 366, column: 40, scope: !4905, inlinedAt: !4909)
!4909 = distinct !DILocation(line: 46, column: 9, scope: !4900)
!4910 = !DILocalVariable(name: "bitpos", scope: !4905, file: !4275, line: 368, type: !116)
!4911 = !DILocation(line: 368, column: 6, scope: !4905, inlinedAt: !4909)
!4912 = !DILocalVariable(name: "size", arg: 1, scope: !4900, file: !4901, line: 29, type: !225)
!4913 = !DILocation(line: 29, column: 63, scope: !4900)
!4914 = !DILocation(line: 31, column: 27, scope: !4915)
!4915 = distinct !DILexicalBlock(scope: !4900, file: !4901, line: 31, column: 6)
!4916 = !DILocation(line: 31, column: 6, scope: !4915)
!4917 = !DILocation(line: 31, column: 6, scope: !4900)
!4918 = !DILocation(line: 32, column: 8, scope: !4919)
!4919 = distinct !DILexicalBlock(scope: !4920, file: !4901, line: 32, column: 7)
!4920 = distinct !DILexicalBlock(scope: !4915, file: !4901, line: 31, column: 34)
!4921 = !DILocation(line: 32, column: 7, scope: !4920)
!4922 = !DILocation(line: 33, column: 4, scope: !4919)
!4923 = !DILocation(line: 35, column: 7, scope: !4924)
!4924 = distinct !DILexicalBlock(scope: !4920, file: !4901, line: 35, column: 7)
!4925 = !DILocation(line: 35, column: 12, scope: !4924)
!4926 = !DILocation(line: 35, column: 7, scope: !4920)
!4927 = !DILocation(line: 36, column: 4, scope: !4924)
!4928 = !DILocation(line: 38, column: 10, scope: !4920)
!4929 = !DILocation(line: 38, column: 28, scope: !4920)
!4930 = !DILocation(line: 38, column: 41, scope: !4920)
!4931 = !DILocation(line: 38, column: 3, scope: !4920)
!4932 = !DILocation(line: 41, column: 6, scope: !4900)
!4933 = !DILocation(line: 42, column: 7, scope: !4900)
!4934 = !DILocation(line: 46, column: 15, scope: !4900)
!4935 = !DILocation(line: 374, column: 2, scope: !4905, inlinedAt: !4909)
!4936 = !DILocation(line: 376, column: 14, scope: !4905, inlinedAt: !4909)
!4937 = !{i32 270573}
!4938 = !DILocation(line: 377, column: 9, scope: !4905, inlinedAt: !4909)
!4939 = !DILocation(line: 377, column: 16, scope: !4905, inlinedAt: !4909)
!4940 = !DILocation(line: 46, column: 2, scope: !4900)
!4941 = !DILocation(line: 48, column: 1, scope: !4900)
!4942 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4943, file: !4943, line: 30, type: !4944, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!4943 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4944 = !DISubroutineType(types: !4945)
!4945 = !{!116, !171}
!4946 = !DILocation(line: 366, column: 40, scope: !4905, inlinedAt: !4947)
!4947 = distinct !DILocation(line: 32, column: 9, scope: !4942)
!4948 = !DILocation(line: 368, column: 6, scope: !4905, inlinedAt: !4947)
!4949 = !DILocalVariable(name: "n", arg: 1, scope: !4942, file: !4943, line: 30, type: !171)
!4950 = !DILocation(line: 30, column: 21, scope: !4942)
!4951 = !DILocation(line: 32, column: 15, scope: !4942)
!4952 = !DILocation(line: 374, column: 2, scope: !4905, inlinedAt: !4947)
!4953 = !DILocation(line: 376, column: 14, scope: !4905, inlinedAt: !4947)
!4954 = !DILocation(line: 377, column: 9, scope: !4905, inlinedAt: !4947)
!4955 = !DILocation(line: 377, column: 16, scope: !4905, inlinedAt: !4947)
!4956 = !DILocation(line: 32, column: 18, scope: !4942)
!4957 = !DILocation(line: 32, column: 2, scope: !4942)
!4958 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !4959, file: !4959, line: 137, type: !4960, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!4959 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!4960 = !DISubroutineType(types: !4961)
!4961 = !{!104, !1231, !1312, !409, !94}
!4962 = !DILocalVariable(name: "s", arg: 1, scope: !4958, file: !4959, line: 137, type: !1231)
!4963 = !DILocation(line: 137, column: 54, scope: !4958)
!4964 = !DILocalVariable(name: "object", arg: 2, scope: !4958, file: !4959, line: 137, type: !1312)
!4965 = !DILocation(line: 137, column: 69, scope: !4958)
!4966 = !DILocalVariable(name: "size", arg: 3, scope: !4958, file: !4959, line: 138, type: !409)
!4967 = !DILocation(line: 138, column: 12, scope: !4958)
!4968 = !DILocalVariable(name: "flags", arg: 4, scope: !4958, file: !4959, line: 138, type: !94)
!4969 = !DILocation(line: 138, column: 24, scope: !4958)
!4970 = !DILocation(line: 140, column: 17, scope: !4958)
!4971 = !DILocation(line: 140, column: 2, scope: !4958)
!4972 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !4973, file: !4973, line: 656, type: !2572, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!4973 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!4974 = !DILocalVariable(name: "__edi", scope: !4975, file: !4973, line: 658, type: !225)
!4975 = distinct !DILexicalBlock(scope: !4972, file: !4973, line: 658, column: 2)
!4976 = !DILocation(line: 658, column: 2, scope: !4975)
!4977 = !DILocalVariable(name: "__esi", scope: !4975, file: !4973, line: 658, type: !225)
!4978 = !DILocalVariable(name: "__edx", scope: !4975, file: !4973, line: 658, type: !225)
!4979 = !DILocalVariable(name: "__ecx", scope: !4975, file: !4973, line: 658, type: !225)
!4980 = !DILocalVariable(name: "__eax", scope: !4975, file: !4973, line: 658, type: !225)
!4981 = !{i32 -2145752723, i32 -2145751991, i32 -2145751757, i32 -2145751706, i32 -2145751678, i32 -2145751653, i32 -2145751969, i32 -2145751956, i32 -2145751518, i32 -2145751399, i32 -2145751864, i32 -2145751837, i32 -2145751809, i32 -2145751779}
!4982 = !DILocation(line: 659, column: 1, scope: !4972)
!4983 = distinct !DISubprogram(name: "inl", scope: !4984, file: !4984, line: 336, type: !4985, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!4984 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!4985 = !DISubroutineType(types: !4986)
!4986 = !{!7, !116}
!4987 = !DILocalVariable(name: "port", arg: 1, scope: !4983, file: !4984, line: 336, type: !116)
!4988 = !DILocation(line: 336, column: 1, scope: !4983)
!4989 = !DILocalVariable(name: "value", scope: !4983, file: !4984, line: 336, type: !7)
!4990 = !{i32 -2142843888}
!4991 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !4973, file: !4973, line: 661, type: !2572, scopeLine: 662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!4992 = !DILocalVariable(name: "__edi", scope: !4993, file: !4973, line: 663, type: !225)
!4993 = distinct !DILexicalBlock(scope: !4991, file: !4973, line: 663, column: 2)
!4994 = !DILocation(line: 663, column: 2, scope: !4993)
!4995 = !DILocalVariable(name: "__esi", scope: !4993, file: !4973, line: 663, type: !225)
!4996 = !DILocalVariable(name: "__edx", scope: !4993, file: !4973, line: 663, type: !225)
!4997 = !DILocalVariable(name: "__ecx", scope: !4993, file: !4973, line: 663, type: !225)
!4998 = !DILocalVariable(name: "__eax", scope: !4993, file: !4973, line: 663, type: !225)
!4999 = !{i32 -2145750139, i32 -2145749409, i32 -2145749175, i32 -2145749124, i32 -2145749096, i32 -2145749071, i32 -2145749387, i32 -2145749374, i32 -2145748936, i32 -2145748817, i32 -2145749282, i32 -2145749255, i32 -2145749227, i32 -2145749197}
!5000 = !DILocation(line: 664, column: 1, scope: !4991)
!5001 = distinct !DISubprogram(name: "outl", scope: !4984, file: !4984, line: 336, type: !5002, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!5002 = !DISubroutineType(types: !5003)
!5003 = !{null, !7, !116}
!5004 = !DILocalVariable(name: "value", arg: 1, scope: !5001, file: !4984, line: 336, type: !7)
!5005 = !DILocation(line: 336, column: 1, scope: !5001)
!5006 = !DILocalVariable(name: "port", arg: 2, scope: !5001, file: !4984, line: 336, type: !116)
!5007 = !{i32 -2142844090}
!5008 = distinct !DISubprogram(name: "acpi_read_throttling_status", scope: !3, file: !3, line: 765, type: !5009, scopeLine: 767, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!5009 = !DISubroutineType(types: !5010)
!5010 = !{!116, !97, !2334}
!5011 = !DILocalVariable(name: "pr", arg: 1, scope: !5008, file: !3, line: 765, type: !97)
!5012 = !DILocation(line: 765, column: 63, scope: !5008)
!5013 = !DILocalVariable(name: "value", arg: 2, scope: !5008, file: !3, line: 766, type: !2334)
!5014 = !DILocation(line: 766, column: 11, scope: !5008)
!5015 = !DILocalVariable(name: "bit_width", scope: !5008, file: !3, line: 768, type: !106)
!5016 = !DILocation(line: 768, column: 6, scope: !5008)
!5017 = !DILocalVariable(name: "bit_offset", scope: !5008, file: !3, line: 768, type: !106)
!5018 = !DILocation(line: 768, column: 17, scope: !5008)
!5019 = !DILocalVariable(name: "ptc_value", scope: !5008, file: !3, line: 769, type: !106)
!5020 = !DILocation(line: 769, column: 6, scope: !5008)
!5021 = !DILocalVariable(name: "ptc_mask", scope: !5008, file: !3, line: 770, type: !171)
!5022 = !DILocation(line: 770, column: 6, scope: !5008)
!5023 = !DILocalVariable(name: "throttling", scope: !5008, file: !3, line: 771, type: !2605)
!5024 = !DILocation(line: 771, column: 36, scope: !5008)
!5025 = !DILocalVariable(name: "ret", scope: !5008, file: !3, line: 772, type: !116)
!5026 = !DILocation(line: 772, column: 6, scope: !5008)
!5027 = !DILocation(line: 774, column: 16, scope: !5008)
!5028 = !DILocation(line: 774, column: 20, scope: !5008)
!5029 = !DILocation(line: 774, column: 13, scope: !5008)
!5030 = !DILocation(line: 775, column: 10, scope: !5008)
!5031 = !DILocation(line: 775, column: 22, scope: !5008)
!5032 = !DILocation(line: 775, column: 38, scope: !5008)
!5033 = !DILocation(line: 775, column: 2, scope: !5008)
!5034 = !DILocation(line: 777, column: 15, scope: !5035)
!5035 = distinct !DILexicalBlock(scope: !5008, file: !3, line: 775, column: 48)
!5036 = !DILocation(line: 777, column: 27, scope: !5035)
!5037 = !DILocation(line: 777, column: 43, scope: !5035)
!5038 = !DILocation(line: 777, column: 13, scope: !5035)
!5039 = !DILocation(line: 778, column: 16, scope: !5035)
!5040 = !DILocation(line: 778, column: 28, scope: !5035)
!5041 = !DILocation(line: 778, column: 44, scope: !5035)
!5042 = !DILocation(line: 778, column: 14, scope: !5035)
!5043 = !DILocation(line: 780, column: 39, scope: !5035)
!5044 = !DILocation(line: 780, column: 51, scope: !5035)
!5045 = !DILocation(line: 781, column: 7, scope: !5035)
!5046 = !DILocation(line: 782, column: 14, scope: !5035)
!5047 = !DILocation(line: 782, column: 26, scope: !5035)
!5048 = !DILocation(line: 782, column: 24, scope: !5035)
!5049 = !DILocation(line: 780, column: 3, scope: !5035)
!5050 = !DILocation(line: 783, column: 20, scope: !5035)
!5051 = !DILocation(line: 783, column: 17, scope: !5035)
!5052 = !DILocation(line: 783, column: 31, scope: !5035)
!5053 = !DILocation(line: 783, column: 14, scope: !5035)
!5054 = !DILocation(line: 783, column: 12, scope: !5035)
!5055 = !DILocation(line: 784, column: 20, scope: !5035)
!5056 = !DILocation(line: 784, column: 33, scope: !5035)
!5057 = !DILocation(line: 784, column: 30, scope: !5035)
!5058 = !DILocation(line: 784, column: 19, scope: !5035)
!5059 = !DILocation(line: 784, column: 47, scope: !5035)
!5060 = !DILocation(line: 784, column: 45, scope: !5035)
!5061 = !DILocation(line: 784, column: 4, scope: !5035)
!5062 = !DILocation(line: 784, column: 10, scope: !5035)
!5063 = !DILocation(line: 785, column: 7, scope: !5035)
!5064 = !DILocation(line: 786, column: 3, scope: !5035)
!5065 = !DILocation(line: 788, column: 31, scope: !5035)
!5066 = !DILocation(line: 788, column: 9, scope: !5035)
!5067 = !DILocation(line: 788, column: 7, scope: !5035)
!5068 = !DILocation(line: 789, column: 3, scope: !5035)
!5069 = !DILocation(line: 792, column: 17, scope: !5035)
!5070 = !DILocation(line: 792, column: 29, scope: !5035)
!5071 = !DILocation(line: 792, column: 45, scope: !5035)
!5072 = !DILocation(line: 792, column: 10, scope: !5035)
!5073 = !DILocation(line: 791, column: 3, scope: !5035)
!5074 = !DILocation(line: 793, column: 2, scope: !5035)
!5075 = !DILocation(line: 794, column: 9, scope: !5008)
!5076 = !DILocation(line: 794, column: 2, scope: !5008)
!5077 = distinct !DISubprogram(name: "acpi_get_throttling_state", scope: !3, file: !3, line: 830, type: !5078, scopeLine: 832, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!5078 = !DISubroutineType(types: !5079)
!5079 = !{!116, !97, !171}
!5080 = !DILocalVariable(name: "pr", arg: 1, scope: !5077, file: !3, line: 830, type: !97)
!5081 = !DILocation(line: 830, column: 61, scope: !5077)
!5082 = !DILocalVariable(name: "value", arg: 2, scope: !5077, file: !3, line: 831, type: !171)
!5083 = !DILocation(line: 831, column: 9, scope: !5077)
!5084 = !DILocalVariable(name: "i", scope: !5077, file: !3, line: 833, type: !116)
!5085 = !DILocation(line: 833, column: 6, scope: !5077)
!5086 = !DILocation(line: 835, column: 9, scope: !5087)
!5087 = distinct !DILexicalBlock(scope: !5077, file: !3, line: 835, column: 2)
!5088 = !DILocation(line: 835, column: 7, scope: !5087)
!5089 = !DILocation(line: 835, column: 14, scope: !5090)
!5090 = distinct !DILexicalBlock(scope: !5087, file: !3, line: 835, column: 2)
!5091 = !DILocation(line: 835, column: 18, scope: !5090)
!5092 = !DILocation(line: 835, column: 22, scope: !5090)
!5093 = !DILocation(line: 835, column: 33, scope: !5090)
!5094 = !DILocation(line: 835, column: 16, scope: !5090)
!5095 = !DILocation(line: 835, column: 2, scope: !5087)
!5096 = !DILocalVariable(name: "tx", scope: !5097, file: !3, line: 836, type: !238)
!5097 = distinct !DILexicalBlock(scope: !5090, file: !3, line: 835, column: 51)
!5098 = !DILocation(line: 836, column: 33, scope: !5097)
!5099 = !DILocation(line: 837, column: 41, scope: !5097)
!5100 = !DILocation(line: 837, column: 45, scope: !5097)
!5101 = !DILocation(line: 838, column: 13, scope: !5097)
!5102 = !DILocation(line: 838, column: 24, scope: !5097)
!5103 = !DILocation(line: 839, column: 7, scope: !5104)
!5104 = distinct !DILexicalBlock(scope: !5097, file: !3, line: 839, column: 7)
!5105 = !DILocation(line: 839, column: 11, scope: !5104)
!5106 = !DILocation(line: 839, column: 22, scope: !5104)
!5107 = !DILocation(line: 839, column: 19, scope: !5104)
!5108 = !DILocation(line: 839, column: 7, scope: !5097)
!5109 = !DILocation(line: 840, column: 11, scope: !5104)
!5110 = !DILocation(line: 840, column: 4, scope: !5104)
!5111 = !DILocation(line: 841, column: 2, scope: !5097)
!5112 = !DILocation(line: 835, column: 47, scope: !5090)
!5113 = !DILocation(line: 835, column: 2, scope: !5090)
!5114 = distinct !{!5114, !5095, !5115}
!5115 = !DILocation(line: 841, column: 2, scope: !5087)
!5116 = !DILocation(line: 842, column: 2, scope: !5077)
!5117 = !DILocation(line: 843, column: 1, scope: !5077)
!5118 = distinct !DISubprogram(name: "acpi_throttling_rdmsr", scope: !3, file: !3, line: 710, type: !5119, scopeLine: 711, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!5119 = !DISubroutineType(types: !5120)
!5120 = !{!116, !2334}
!5121 = !DILocalVariable(name: "nr", arg: 1, scope: !5122, file: !5123, line: 358, type: !7)
!5122 = distinct !DISubprogram(name: "x86_this_cpu_constant_test_bit", scope: !5123, file: !5123, line: 358, type: !5124, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!5123 = !DIFile(filename: "./arch/x86/include/asm/percpu.h", directory: "/home/lizy2001/genbc/linux")
!5124 = !DISubroutineType(types: !5125)
!5125 = !{!263, !7, !4367}
!5126 = !DILocation(line: 358, column: 73, scope: !5122, inlinedAt: !5127)
!5127 = distinct !DILocation(line: 717, column: 4, scope: !5128)
!5128 = distinct !DILexicalBlock(scope: !5118, file: !3, line: 716, column: 6)
!5129 = !DILocalVariable(name: "addr", arg: 2, scope: !5122, file: !5123, line: 359, type: !4367)
!5130 = !DILocation(line: 359, column: 55, scope: !5122, inlinedAt: !5127)
!5131 = !DILocalVariable(name: "a", scope: !5122, file: !5123, line: 361, type: !2287)
!5132 = !DILocation(line: 361, column: 26, scope: !5122, inlinedAt: !5127)
!5133 = !DILocalVariable(name: "pfo_val__", scope: !5134, file: !5123, line: 365, type: !171)
!5134 = distinct !DILexicalBlock(scope: !5122, file: !5123, line: 365, column: 42)
!5135 = !DILocation(line: 365, column: 42, scope: !5134, inlinedAt: !5127)
!5136 = !DILocalVariable(name: "value", arg: 1, scope: !5118, file: !3, line: 710, type: !2334)
!5137 = !DILocation(line: 710, column: 39, scope: !5118)
!5138 = !DILocalVariable(name: "msr_high", scope: !5118, file: !3, line: 712, type: !171)
!5139 = !DILocation(line: 712, column: 6, scope: !5118)
!5140 = !DILocalVariable(name: "msr_low", scope: !5118, file: !3, line: 712, type: !171)
!5141 = !DILocation(line: 712, column: 16, scope: !5118)
!5142 = !DILocalVariable(name: "msr", scope: !5118, file: !3, line: 713, type: !171)
!5143 = !DILocation(line: 713, column: 6, scope: !5118)
!5144 = !DILocalVariable(name: "ret", scope: !5118, file: !3, line: 714, type: !116)
!5145 = !DILocation(line: 714, column: 6, scope: !5118)
!5146 = !DILocalVariable(name: "pscr_ret__", scope: !5147, file: !3, line: 716, type: !123)
!5147 = distinct !DILexicalBlock(scope: !5128, file: !3, line: 716, column: 7)
!5148 = !DILocation(line: 716, column: 7, scope: !5147)
!5149 = !DILocalVariable(name: "__vpp_verify", scope: !5150, file: !3, line: 716, type: !1312)
!5150 = distinct !DILexicalBlock(scope: !5147, file: !3, line: 716, column: 7)
!5151 = !DILocation(line: 716, column: 7, scope: !5150)
!5152 = !DILocalVariable(name: "pfo_val__", scope: !5153, file: !3, line: 716, type: !122)
!5153 = distinct !DILexicalBlock(scope: !5147, file: !3, line: 716, column: 7)
!5154 = !DILocation(line: 716, column: 7, scope: !5153)
!5155 = !{i32 -2142544691}
!5156 = !DILocation(line: 716, column: 7, scope: !5128)
!5157 = !DILocation(line: 716, column: 42, scope: !5128)
!5158 = !DILocation(line: 716, column: 63, scope: !5128)
!5159 = !DILocation(line: 716, column: 6, scope: !5118)
!5160 = !DILocation(line: 717, column: 4, scope: !5128)
!5161 = !DILocation(line: 362, column: 29, scope: !5122, inlinedAt: !5127)
!5162 = !DILocation(line: 362, column: 36, scope: !5122, inlinedAt: !5127)
!5163 = !DILocation(line: 362, column: 39, scope: !5122, inlinedAt: !5127)
!5164 = !DILocation(line: 362, column: 34, scope: !5122, inlinedAt: !5127)
!5165 = !DILocation(line: 365, column: 19, scope: !5122, inlinedAt: !5127)
!5166 = !DILocation(line: 365, column: 22, scope: !5122, inlinedAt: !5127)
!5167 = !DILocation(line: 365, column: 15, scope: !5122, inlinedAt: !5127)
!5168 = !{i32 -2146237517}
!5169 = !DILocation(line: 365, column: 40, scope: !5122, inlinedAt: !5127)
!5170 = !DILocation(line: 365, column: 62, scope: !5122, inlinedAt: !5127)
!5171 = !DILocation(line: 718, column: 3, scope: !5172)
!5172 = distinct !DILexicalBlock(scope: !5128, file: !3, line: 717, column: 36)
!5173 = !DILocation(line: 720, column: 2, scope: !5172)
!5174 = !DILocation(line: 721, column: 11, scope: !5175)
!5175 = distinct !DILexicalBlock(scope: !5128, file: !3, line: 720, column: 9)
!5176 = !DILocation(line: 722, column: 12, scope: !5175)
!5177 = !DILocalVariable(name: "_err", scope: !5178, file: !3, line: 723, type: !116)
!5178 = distinct !DILexicalBlock(scope: !5175, file: !3, line: 723, column: 3)
!5179 = !DILocation(line: 723, column: 3, scope: !5178)
!5180 = !DILocalVariable(name: "_l", scope: !5178, file: !3, line: 723, type: !171)
!5181 = !DILocation(line: 725, column: 10, scope: !5175)
!5182 = !DILocation(line: 725, column: 19, scope: !5175)
!5183 = !DILocation(line: 725, column: 28, scope: !5175)
!5184 = !DILocation(line: 725, column: 26, scope: !5175)
!5185 = !DILocation(line: 725, column: 7, scope: !5175)
!5186 = !DILocation(line: 726, column: 18, scope: !5175)
!5187 = !DILocation(line: 726, column: 4, scope: !5175)
!5188 = !DILocation(line: 726, column: 10, scope: !5175)
!5189 = !DILocation(line: 727, column: 7, scope: !5175)
!5190 = !DILocation(line: 729, column: 9, scope: !5118)
!5191 = !DILocation(line: 729, column: 2, scope: !5118)
!5192 = distinct !DISubprogram(name: "x86_this_cpu_variable_test_bit", scope: !5123, file: !5123, line: 371, type: !5193, scopeLine: 373, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!5193 = !DISubroutineType(types: !5194)
!5194 = !{!263, !116, !4367}
!5195 = !DILocalVariable(name: "nr", arg: 1, scope: !5192, file: !5123, line: 371, type: !116)
!5196 = !DILocation(line: 371, column: 55, scope: !5192)
!5197 = !DILocalVariable(name: "addr", arg: 2, scope: !5192, file: !5123, line: 372, type: !4367)
!5198 = !DILocation(line: 372, column: 55, scope: !5192)
!5199 = !DILocalVariable(name: "oldbit", scope: !5192, file: !5123, line: 374, type: !263)
!5200 = !DILocation(line: 374, column: 7, scope: !5192)
!5201 = !DILocation(line: 379, column: 38, scope: !5192)
!5202 = !DILocation(line: 379, column: 51, scope: !5192)
!5203 = !DILocation(line: 376, column: 2, scope: !5192)
!5204 = !{i32 1242883, i32 -2146237216}
!5205 = !DILocation(line: 381, column: 9, scope: !5192)
!5206 = !DILocation(line: 381, column: 2, scope: !5192)
!5207 = distinct !DISubprogram(name: "paravirt_read_msr_safe", scope: !4973, file: !4973, line: 174, type: !5208, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!5208 = !DISubroutineType(types: !5209)
!5209 = !{!171, !7, !930}
!5210 = !DILocalVariable(name: "msr", arg: 1, scope: !5207, file: !4973, line: 174, type: !7)
!5211 = !DILocation(line: 174, column: 51, scope: !5207)
!5212 = !DILocalVariable(name: "err", arg: 2, scope: !5207, file: !4973, line: 174, type: !930)
!5213 = !DILocation(line: 174, column: 61, scope: !5207)
!5214 = !DILocalVariable(name: "__ret", scope: !5215, file: !4973, line: 176, type: !171)
!5215 = distinct !DILexicalBlock(scope: !5207, file: !4973, line: 176, column: 9)
!5216 = !DILocation(line: 176, column: 9, scope: !5215)
!5217 = !DILocalVariable(name: "__edi", scope: !5215, file: !4973, line: 176, type: !225)
!5218 = !DILocalVariable(name: "__esi", scope: !5215, file: !4973, line: 176, type: !225)
!5219 = !DILocalVariable(name: "__edx", scope: !5215, file: !4973, line: 176, type: !225)
!5220 = !DILocalVariable(name: "__ecx", scope: !5215, file: !4973, line: 176, type: !225)
!5221 = !DILocalVariable(name: "__eax", scope: !5215, file: !4973, line: 176, type: !225)
!5222 = !DILocation(line: 176, column: 9, scope: !5223)
!5223 = distinct !DILexicalBlock(scope: !5224, file: !4973, line: 176, column: 9)
!5224 = distinct !DILexicalBlock(scope: !5215, file: !4973, line: 176, column: 9)
!5225 = !{i32 -2145948221, i32 -2145945710, i32 -2145945476, i32 -2145945425, i32 -2145945397, i32 -2145945372, i32 -2145945688, i32 -2145945675, i32 -2145945237, i32 -2145945118, i32 -2145945583, i32 -2145945556, i32 -2145945528, i32 -2145945498}
!5226 = !DILocalVariable(name: "__mask", scope: !5227, file: !4973, line: 176, type: !225)
!5227 = distinct !DILexicalBlock(scope: !5223, file: !4973, line: 176, column: 9)
!5228 = !DILocation(line: 176, column: 9, scope: !5227)
!5229 = !DILocation(line: 176, column: 9, scope: !5224)
!5230 = !DILocation(line: 176, column: 2, scope: !5207)
!5231 = distinct !DISubprogram(name: "acpi_get_throttling_value", scope: !3, file: !3, line: 845, type: !5232, scopeLine: 847, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!5232 = !DISubroutineType(types: !5233)
!5233 = !{!116, !97, !116, !2334}
!5234 = !DILocalVariable(name: "pr", arg: 1, scope: !5231, file: !3, line: 845, type: !97)
!5235 = !DILocation(line: 845, column: 61, scope: !5231)
!5236 = !DILocalVariable(name: "state", arg: 2, scope: !5231, file: !3, line: 846, type: !116)
!5237 = !DILocation(line: 846, column: 8, scope: !5231)
!5238 = !DILocalVariable(name: "value", arg: 3, scope: !5231, file: !3, line: 846, type: !2334)
!5239 = !DILocation(line: 846, column: 20, scope: !5231)
!5240 = !DILocalVariable(name: "ret", scope: !5231, file: !3, line: 848, type: !116)
!5241 = !DILocation(line: 848, column: 6, scope: !5231)
!5242 = !DILocation(line: 850, column: 6, scope: !5243)
!5243 = distinct !DILexicalBlock(scope: !5231, file: !3, line: 850, column: 6)
!5244 = !DILocation(line: 850, column: 12, scope: !5243)
!5245 = !DILocation(line: 850, column: 17, scope: !5243)
!5246 = !DILocation(line: 850, column: 20, scope: !5243)
!5247 = !DILocation(line: 850, column: 29, scope: !5243)
!5248 = !DILocation(line: 850, column: 33, scope: !5243)
!5249 = !DILocation(line: 850, column: 44, scope: !5243)
!5250 = !DILocation(line: 850, column: 26, scope: !5243)
!5251 = !DILocation(line: 850, column: 6, scope: !5231)
!5252 = !DILocalVariable(name: "tx", scope: !5253, file: !3, line: 851, type: !238)
!5253 = distinct !DILexicalBlock(scope: !5243, file: !3, line: 850, column: 57)
!5254 = !DILocation(line: 851, column: 33, scope: !5253)
!5255 = !DILocation(line: 852, column: 41, scope: !5253)
!5256 = !DILocation(line: 852, column: 45, scope: !5253)
!5257 = !DILocation(line: 853, column: 13, scope: !5253)
!5258 = !DILocation(line: 853, column: 24, scope: !5253)
!5259 = !DILocation(line: 854, column: 12, scope: !5253)
!5260 = !DILocation(line: 854, column: 16, scope: !5253)
!5261 = !DILocation(line: 854, column: 4, scope: !5253)
!5262 = !DILocation(line: 854, column: 10, scope: !5253)
!5263 = !DILocation(line: 855, column: 7, scope: !5253)
!5264 = !DILocation(line: 856, column: 2, scope: !5253)
!5265 = !DILocation(line: 857, column: 9, scope: !5231)
!5266 = !DILocation(line: 857, column: 2, scope: !5231)
!5267 = distinct !DISubprogram(name: "acpi_write_throttling_state", scope: !3, file: !3, line: 797, type: !5078, scopeLine: 799, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!5268 = !DILocalVariable(name: "pr", arg: 1, scope: !5267, file: !3, line: 797, type: !97)
!5269 = !DILocation(line: 797, column: 63, scope: !5267)
!5270 = !DILocalVariable(name: "value", arg: 2, scope: !5267, file: !3, line: 798, type: !171)
!5271 = !DILocation(line: 798, column: 9, scope: !5267)
!5272 = !DILocalVariable(name: "bit_width", scope: !5267, file: !3, line: 800, type: !106)
!5273 = !DILocation(line: 800, column: 6, scope: !5267)
!5274 = !DILocalVariable(name: "bit_offset", scope: !5267, file: !3, line: 800, type: !106)
!5275 = !DILocation(line: 800, column: 17, scope: !5267)
!5276 = !DILocalVariable(name: "ptc_value", scope: !5267, file: !3, line: 801, type: !171)
!5277 = !DILocation(line: 801, column: 6, scope: !5267)
!5278 = !DILocalVariable(name: "ptc_mask", scope: !5267, file: !3, line: 802, type: !171)
!5279 = !DILocation(line: 802, column: 6, scope: !5267)
!5280 = !DILocalVariable(name: "throttling", scope: !5267, file: !3, line: 803, type: !2605)
!5281 = !DILocation(line: 803, column: 36, scope: !5267)
!5282 = !DILocalVariable(name: "ret", scope: !5267, file: !3, line: 804, type: !116)
!5283 = !DILocation(line: 804, column: 6, scope: !5267)
!5284 = !DILocation(line: 806, column: 16, scope: !5267)
!5285 = !DILocation(line: 806, column: 20, scope: !5267)
!5286 = !DILocation(line: 806, column: 13, scope: !5267)
!5287 = !DILocation(line: 807, column: 10, scope: !5267)
!5288 = !DILocation(line: 807, column: 22, scope: !5267)
!5289 = !DILocation(line: 807, column: 39, scope: !5267)
!5290 = !DILocation(line: 807, column: 2, scope: !5267)
!5291 = !DILocation(line: 809, column: 15, scope: !5292)
!5292 = distinct !DILexicalBlock(scope: !5267, file: !3, line: 807, column: 49)
!5293 = !DILocation(line: 809, column: 27, scope: !5292)
!5294 = !DILocation(line: 809, column: 44, scope: !5292)
!5295 = !DILocation(line: 809, column: 13, scope: !5292)
!5296 = !DILocation(line: 810, column: 16, scope: !5292)
!5297 = !DILocation(line: 810, column: 28, scope: !5292)
!5298 = !DILocation(line: 810, column: 45, scope: !5292)
!5299 = !DILocation(line: 810, column: 14, scope: !5292)
!5300 = !DILocation(line: 811, column: 20, scope: !5292)
!5301 = !DILocation(line: 811, column: 17, scope: !5292)
!5302 = !DILocation(line: 811, column: 31, scope: !5292)
!5303 = !DILocation(line: 811, column: 14, scope: !5292)
!5304 = !DILocation(line: 811, column: 12, scope: !5292)
!5305 = !DILocation(line: 812, column: 15, scope: !5292)
!5306 = !DILocation(line: 812, column: 23, scope: !5292)
!5307 = !DILocation(line: 812, column: 21, scope: !5292)
!5308 = !DILocation(line: 812, column: 13, scope: !5292)
!5309 = !DILocation(line: 814, column: 40, scope: !5292)
!5310 = !DILocation(line: 815, column: 6, scope: !5292)
!5311 = !DILocation(line: 815, column: 23, scope: !5292)
!5312 = !DILocation(line: 816, column: 13, scope: !5292)
!5313 = !DILocation(line: 816, column: 26, scope: !5292)
!5314 = !DILocation(line: 816, column: 23, scope: !5292)
!5315 = !DILocation(line: 816, column: 6, scope: !5292)
!5316 = !DILocation(line: 817, column: 13, scope: !5292)
!5317 = !DILocation(line: 817, column: 25, scope: !5292)
!5318 = !DILocation(line: 817, column: 23, scope: !5292)
!5319 = !DILocation(line: 814, column: 3, scope: !5292)
!5320 = !DILocation(line: 818, column: 7, scope: !5292)
!5321 = !DILocation(line: 819, column: 3, scope: !5292)
!5322 = !DILocation(line: 821, column: 31, scope: !5292)
!5323 = !DILocation(line: 821, column: 9, scope: !5292)
!5324 = !DILocation(line: 821, column: 7, scope: !5292)
!5325 = !DILocation(line: 822, column: 3, scope: !5292)
!5326 = !DILocation(line: 825, column: 17, scope: !5292)
!5327 = !DILocation(line: 825, column: 29, scope: !5292)
!5328 = !DILocation(line: 825, column: 46, scope: !5292)
!5329 = !DILocation(line: 825, column: 10, scope: !5292)
!5330 = !DILocation(line: 824, column: 3, scope: !5292)
!5331 = !DILocation(line: 826, column: 2, scope: !5292)
!5332 = !DILocation(line: 827, column: 9, scope: !5267)
!5333 = !DILocation(line: 827, column: 2, scope: !5267)
!5334 = distinct !DISubprogram(name: "acpi_throttling_wrmsr", scope: !3, file: !3, line: 732, type: !4944, scopeLine: 733, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!5335 = !DILocation(line: 358, column: 73, scope: !5122, inlinedAt: !5336)
!5336 = distinct !DILocation(line: 738, column: 4, scope: !5337)
!5337 = distinct !DILexicalBlock(scope: !5334, file: !3, line: 737, column: 6)
!5338 = !DILocation(line: 359, column: 55, scope: !5122, inlinedAt: !5336)
!5339 = !DILocation(line: 361, column: 26, scope: !5122, inlinedAt: !5336)
!5340 = !DILocation(line: 365, column: 42, scope: !5134, inlinedAt: !5336)
!5341 = !DILocalVariable(name: "value", arg: 1, scope: !5334, file: !3, line: 732, type: !171)
!5342 = !DILocation(line: 732, column: 38, scope: !5334)
!5343 = !DILocalVariable(name: "ret", scope: !5334, file: !3, line: 734, type: !116)
!5344 = !DILocation(line: 734, column: 6, scope: !5334)
!5345 = !DILocalVariable(name: "msr", scope: !5334, file: !3, line: 735, type: !171)
!5346 = !DILocation(line: 735, column: 6, scope: !5334)
!5347 = !DILocalVariable(name: "pscr_ret__", scope: !5348, file: !3, line: 737, type: !123)
!5348 = distinct !DILexicalBlock(scope: !5337, file: !3, line: 737, column: 7)
!5349 = !DILocation(line: 737, column: 7, scope: !5348)
!5350 = !DILocalVariable(name: "__vpp_verify", scope: !5351, file: !3, line: 737, type: !1312)
!5351 = distinct !DILexicalBlock(scope: !5348, file: !3, line: 737, column: 7)
!5352 = !DILocation(line: 737, column: 7, scope: !5351)
!5353 = !DILocalVariable(name: "pfo_val__", scope: !5354, file: !3, line: 737, type: !122)
!5354 = distinct !DILexicalBlock(scope: !5348, file: !3, line: 737, column: 7)
!5355 = !DILocation(line: 737, column: 7, scope: !5354)
!5356 = !{i32 -2142536375}
!5357 = !DILocation(line: 737, column: 7, scope: !5337)
!5358 = !DILocation(line: 737, column: 42, scope: !5337)
!5359 = !DILocation(line: 737, column: 63, scope: !5337)
!5360 = !DILocation(line: 737, column: 6, scope: !5334)
!5361 = !DILocation(line: 738, column: 4, scope: !5337)
!5362 = !DILocation(line: 362, column: 29, scope: !5122, inlinedAt: !5336)
!5363 = !DILocation(line: 362, column: 36, scope: !5122, inlinedAt: !5336)
!5364 = !DILocation(line: 362, column: 39, scope: !5122, inlinedAt: !5336)
!5365 = !DILocation(line: 362, column: 34, scope: !5122, inlinedAt: !5336)
!5366 = !DILocation(line: 365, column: 19, scope: !5122, inlinedAt: !5336)
!5367 = !DILocation(line: 365, column: 22, scope: !5122, inlinedAt: !5336)
!5368 = !DILocation(line: 365, column: 15, scope: !5122, inlinedAt: !5336)
!5369 = !DILocation(line: 365, column: 40, scope: !5122, inlinedAt: !5336)
!5370 = !DILocation(line: 365, column: 62, scope: !5122, inlinedAt: !5336)
!5371 = !DILocation(line: 739, column: 3, scope: !5372)
!5372 = distinct !DILexicalBlock(scope: !5337, file: !3, line: 738, column: 36)
!5373 = !DILocation(line: 741, column: 2, scope: !5372)
!5374 = !DILocation(line: 742, column: 9, scope: !5375)
!5375 = distinct !DILexicalBlock(scope: !5337, file: !3, line: 741, column: 9)
!5376 = !DILocation(line: 742, column: 7, scope: !5375)
!5377 = !DILocation(line: 743, column: 3, scope: !5375)
!5378 = !DILocation(line: 745, column: 7, scope: !5375)
!5379 = !DILocation(line: 747, column: 9, scope: !5334)
!5380 = !DILocation(line: 747, column: 2, scope: !5334)
!5381 = distinct !DISubprogram(name: "paravirt_write_msr_safe", scope: !4973, file: !4973, line: 179, type: !5382, scopeLine: 181, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!5382 = !DISubroutineType(types: !5383)
!5383 = !{!116, !7, !7, !7}
!5384 = !DILocalVariable(name: "msr", arg: 1, scope: !5381, file: !4973, line: 179, type: !7)
!5385 = !DILocation(line: 179, column: 52, scope: !5381)
!5386 = !DILocalVariable(name: "low", arg: 2, scope: !5381, file: !4973, line: 180, type: !7)
!5387 = !DILocation(line: 180, column: 17, scope: !5381)
!5388 = !DILocalVariable(name: "high", arg: 3, scope: !5381, file: !4973, line: 180, type: !7)
!5389 = !DILocation(line: 180, column: 31, scope: !5381)
!5390 = !DILocalVariable(name: "__ret", scope: !5391, file: !4973, line: 182, type: !116)
!5391 = distinct !DILexicalBlock(scope: !5381, file: !4973, line: 182, column: 9)
!5392 = !DILocation(line: 182, column: 9, scope: !5391)
!5393 = !DILocalVariable(name: "__edi", scope: !5391, file: !4973, line: 182, type: !225)
!5394 = !DILocalVariable(name: "__esi", scope: !5391, file: !4973, line: 182, type: !225)
!5395 = !DILocalVariable(name: "__edx", scope: !5391, file: !4973, line: 182, type: !225)
!5396 = !DILocalVariable(name: "__ecx", scope: !5391, file: !4973, line: 182, type: !225)
!5397 = !DILocalVariable(name: "__eax", scope: !5391, file: !4973, line: 182, type: !225)
!5398 = !DILocation(line: 182, column: 9, scope: !5399)
!5399 = distinct !DILexicalBlock(scope: !5400, file: !4973, line: 182, column: 9)
!5400 = distinct !DILexicalBlock(scope: !5391, file: !4973, line: 182, column: 9)
!5401 = !{i32 -2145942421, i32 -2145939849, i32 -2145939615, i32 -2145939564, i32 -2145939536, i32 -2145939511, i32 -2145939827, i32 -2145939814, i32 -2145939376, i32 -2145939257, i32 -2145939722, i32 -2145939695, i32 -2145939667, i32 -2145939637}
!5402 = !DILocalVariable(name: "__mask", scope: !5403, file: !4973, line: 182, type: !225)
!5403 = distinct !DILexicalBlock(scope: !5399, file: !4973, line: 182, column: 9)
!5404 = !DILocation(line: 182, column: 9, scope: !5403)
!5405 = !DILocation(line: 182, column: 9, scope: !5400)
!5406 = !DILocation(line: 182, column: 2, scope: !5381)
!5407 = distinct !DISubprogram(name: "set_bit", scope: !5408, file: !5408, line: 26, type: !5409, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!5408 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/lizy2001/genbc/linux")
!5409 = !DISubroutineType(types: !5410)
!5410 = !{null, !398, !5411}
!5411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4272, size: 64)
!5412 = !DILocalVariable(name: "nr", arg: 1, scope: !5413, file: !4275, line: 52, type: !398)
!5413 = distinct !DISubprogram(name: "arch_set_bit", scope: !4275, file: !4275, line: 52, type: !5409, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!5414 = !DILocation(line: 52, column: 19, scope: !5413, inlinedAt: !5415)
!5415 = distinct !DILocation(line: 29, column: 2, scope: !5407)
!5416 = !DILocalVariable(name: "addr", arg: 2, scope: !5413, file: !4275, line: 52, type: !5411)
!5417 = !DILocation(line: 52, column: 47, scope: !5413, inlinedAt: !5415)
!5418 = !DILocalVariable(name: "v", arg: 1, scope: !5419, file: !4290, line: 84, type: !4293)
!5419 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !4290, file: !4290, line: 84, type: !4291, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!5420 = !DILocation(line: 84, column: 74, scope: !5419, inlinedAt: !5421)
!5421 = distinct !DILocation(line: 28, column: 2, scope: !5407)
!5422 = !DILocalVariable(name: "size", arg: 2, scope: !5419, file: !4290, line: 84, type: !409)
!5423 = !DILocation(line: 84, column: 84, scope: !5419, inlinedAt: !5421)
!5424 = !DILocalVariable(name: "nr", arg: 1, scope: !5407, file: !5408, line: 26, type: !398)
!5425 = !DILocation(line: 26, column: 33, scope: !5407)
!5426 = !DILocalVariable(name: "addr", arg: 2, scope: !5407, file: !5408, line: 26, type: !5411)
!5427 = !DILocation(line: 26, column: 61, scope: !5407)
!5428 = !DILocation(line: 28, column: 26, scope: !5407)
!5429 = !DILocation(line: 28, column: 33, scope: !5407)
!5430 = !DILocation(line: 28, column: 31, scope: !5407)
!5431 = !DILocation(line: 86, column: 20, scope: !5419, inlinedAt: !5421)
!5432 = !DILocation(line: 86, column: 23, scope: !5419, inlinedAt: !5421)
!5433 = !DILocation(line: 86, column: 2, scope: !5419, inlinedAt: !5421)
!5434 = !DILocation(line: 87, column: 2, scope: !5419, inlinedAt: !5421)
!5435 = !DILocation(line: 29, column: 15, scope: !5407)
!5436 = !DILocation(line: 29, column: 19, scope: !5407)
!5437 = !DILocation(line: 54, column: 27, scope: !5438, inlinedAt: !5415)
!5438 = distinct !DILexicalBlock(scope: !5413, file: !4275, line: 54, column: 6)
!5439 = !DILocation(line: 54, column: 6, scope: !5438, inlinedAt: !5415)
!5440 = !DILocation(line: 54, column: 6, scope: !5413, inlinedAt: !5415)
!5441 = !DILocation(line: 56, column: 6, scope: !5442, inlinedAt: !5415)
!5442 = distinct !DILexicalBlock(scope: !5438, file: !4275, line: 54, column: 32)
!5443 = !DILocation(line: 57, column: 12, scope: !5442, inlinedAt: !5415)
!5444 = !DILocation(line: 55, column: 3, scope: !5442, inlinedAt: !5415)
!5445 = !{i32 -2147181648}
!5446 = !DILocation(line: 59, column: 2, scope: !5442, inlinedAt: !5415)
!5447 = !DILocation(line: 61, column: 8, scope: !5448, inlinedAt: !5415)
!5448 = distinct !DILexicalBlock(scope: !5438, file: !4275, line: 59, column: 9)
!5449 = !DILocation(line: 61, column: 32, scope: !5448, inlinedAt: !5415)
!5450 = !DILocation(line: 60, column: 3, scope: !5448, inlinedAt: !5415)
!5451 = !{i32 -2147181516}
!5452 = !DILocation(line: 30, column: 1, scope: !5407)
!5453 = distinct !DISubprogram(name: "kasan_check_write", scope: !4336, file: !4336, line: 38, type: !4337, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !336)
!5454 = !DILocalVariable(name: "p", arg: 1, scope: !5453, file: !4336, line: 38, type: !4293)
!5455 = !DILocation(line: 38, column: 59, scope: !5453)
!5456 = !DILocalVariable(name: "size", arg: 2, scope: !5453, file: !4336, line: 38, type: !7)
!5457 = !DILocation(line: 38, column: 75, scope: !5453)
!5458 = !DILocation(line: 40, column: 2, scope: !5453)
