; ModuleID = '../bcout/drivers/base/cpu.llvm.bc'
source_filename = "drivers/base/cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
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
%struct.device_private = type { %struct.klist, %struct.klist_node, %struct.klist_node, %struct.klist_node, %struct.klist_node, %struct.list_head, %struct.device_driver*, i8*, %struct.device*, i8 }
%struct.klist = type { %struct.spinlock, %struct.list_head, void (%struct.klist_node*)*, void (%struct.klist_node*)* }
%struct.klist_node = type { i8*, %struct.list_head, %struct.kref }
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.module = type opaque
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type { %struct.kobject, %struct.klist, %struct.klist_node, %struct.module_kobject*, %struct.device_driver* }
%struct.module_kobject = type { %struct.kobject, %struct.module*, %struct.kobject*, %struct.module_param_attrs*, %struct.completion* }
%struct.module_param_attrs = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
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
%struct.dev_pm_qos_request = type { i32, %union.anon.38, %struct.device* }
%union.anon.38 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, %struct.freq_constraints* }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, i32 (%struct.device*)*, void (%struct.device*, i1)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
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
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_ops = type opaque
%struct.subsys_private = type { %struct.kset, %struct.kset*, %struct.list_head, %struct.mutex, %struct.kset*, %struct.klist, %struct.klist, %struct.blocking_notifier_head, i8, %struct.bus_type*, %struct.kset, %struct.class* }
%struct.lock_class_key = type {}
%struct.kmem_cache = type opaque
%struct.cpuinfo_x86 = type { i8, i8, i8, i8, i32, [3 x i32], i8, i8, i8, i8, i32, i32, %union.anon.39, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8 }
%union.anon.39 = type { i64, [72 x i8] }
%struct.cpu_attr = type { %struct.device_attribute, %struct.cpumask* }
%struct.device_attribute = type { %struct.attribute, {}*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.cpu = type { i32, i32, %struct.device }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@cpu_subsys = dso_local global %struct.bus_type { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), %struct.device* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.attribute_group** null, i32 (%struct.device*, %struct.device_driver*)* @cpu_subsys_match, i32 (%struct.device*, %struct.kobj_uevent_env*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, %struct.dev_pm_ops* null, %struct.iommu_ops* null, %struct.subsys_private* null, %struct.lock_class_key zeroinitializer, i8 0 }, align 8, !dbg !0
@common_cpu_attr_groups = internal global [1 x %struct.attribute_group*] zeroinitializer, align 8, !dbg !2338
@hotplugable_cpu_attr_groups = internal global [1 x %struct.attribute_group*] zeroinitializer, align 8, !dbg !2341
@cpu_sys_devices = internal global %struct.device* null, section ".data", align 8, !dbg !2334
@.str.1 = private unnamed_addr constant [14 x i8] c"Not affected\0A\00", align 1
@cpu_root_attr_groups = internal global [2 x %struct.attribute_group*] [%struct.attribute_group* @cpu_root_attr_group, %struct.attribute_group* null], align 16, !dbg !2343
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to register CPU subsystem\00", align 1
@total_cpus = dso_local global i32 0, align 4, !dbg !2336
@.str.3 = private unnamed_addr constant [12 x i8] c"MODALIAS=%s\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"cpu:type:x86,ven%04Xfam%04Xmod%04X:feature:\00", align 1
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@.str.6 = private unnamed_addr constant [28 x i8] c"CPU features overflow page\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"drivers/base/cpu.c\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c",%04X\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@cpu_root_attr_group = internal global %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([8 x %struct.attribute*], [8 x %struct.attribute*]* @cpu_root_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !2346
@cpu_root_attrs = internal global [8 x %struct.attribute*] [%struct.attribute* getelementptr inbounds ([3 x %struct.cpu_attr], [3 x %struct.cpu_attr]* bitcast ([3 x { { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }, %struct.cpumask* }]* @cpu_attrs to [3 x %struct.cpu_attr]*), i32 0, i32 0, i32 0, i32 0), %struct.attribute* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x { { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }, %struct.cpumask* }]* @cpu_attrs to i8*), i64 40) to %struct.attribute*), %struct.attribute* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x { { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }, %struct.cpumask* }]* @cpu_attrs to i8*), i64 80) to %struct.attribute*), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* bitcast ({ %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }* @dev_attr_kernel_max to %struct.device_attribute*), i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* bitcast ({ %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }* @dev_attr_offline to %struct.device_attribute*), i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* bitcast ({ %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }* @dev_attr_isolated to %struct.device_attribute*), i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* bitcast ({ %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }* @dev_attr_modalias to %struct.device_attribute*), i32 0, i32 0), %struct.attribute* null], align 16, !dbg !2348
@.str.10 = private unnamed_addr constant [7 x i8] c"online\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@.str.11 = private unnamed_addr constant [9 x i8] c"possible\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@.str.12 = private unnamed_addr constant [8 x i8] c"present\00", align 1
@__cpu_present_mask = external dso_local global %struct.cpumask, align 8
@cpu_attrs = internal global [3 x { { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }, %struct.cpumask* }] [{ { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }, %struct.cpumask* } { { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* } { %struct.attribute { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @show_cpus_attr, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, %struct.cpumask* @__cpu_online_mask }, { { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }, %struct.cpumask* } { { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* } { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @show_cpus_attr, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, %struct.cpumask* @__cpu_possible_mask }, { { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }, %struct.cpumask* } { { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* } { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @show_cpus_attr, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, %struct.cpumask* @__cpu_present_mask }], align 16, !dbg !2351
@.str.14 = private unnamed_addr constant [11 x i8] c"kernel_max\00", align 1
@dev_attr_kernel_max = internal global { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* } { %struct.attribute { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @print_cpus_kernel_max, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2354
@.str.16 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"offline\00", align 1
@dev_attr_offline = internal global { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* } { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @print_cpus_offline, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2356
@.str.19 = private unnamed_addr constant [6 x i8] c"%*pbl\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"%u-%d\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"isolated\00", align 1
@dev_attr_isolated = internal global { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* } { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @print_cpus_isolated, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2358
@.str.25 = private unnamed_addr constant [7 x i8] c"%*pbl\0A\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"modalias\00", align 1
@dev_attr_modalias = internal global { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* } { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @print_cpu_modalias, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2360
@cpu_root_vulnerabilities_group = internal constant %struct.attribute_group { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0), i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([10 x %struct.attribute*], [10 x %struct.attribute*]* @cpu_root_vulnerabilities_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !2362
@.str.28 = private unnamed_addr constant [42 x i8] c"\013Unable to register CPU vulnerabilities\0A\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"vulnerabilities\00", align 1
@cpu_root_vulnerabilities_attrs = internal global [10 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* bitcast ({ %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }* @dev_attr_meltdown to %struct.device_attribute*), i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* bitcast ({ %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }* @dev_attr_spectre_v1 to %struct.device_attribute*), i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* bitcast ({ %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }* @dev_attr_spectre_v2 to %struct.device_attribute*), i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* bitcast ({ %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }* @dev_attr_spec_store_bypass to %struct.device_attribute*), i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* bitcast ({ %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }* @dev_attr_l1tf to %struct.device_attribute*), i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* bitcast ({ %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }* @dev_attr_mds to %struct.device_attribute*), i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* bitcast ({ %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }* @dev_attr_tsx_async_abort to %struct.device_attribute*), i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* bitcast ({ %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }* @dev_attr_itlb_multihit to %struct.device_attribute*), i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* bitcast ({ %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }* @dev_attr_srbds to %struct.device_attribute*), i32 0, i32 0), %struct.attribute* null], align 16, !dbg !2364
@.str.30 = private unnamed_addr constant [9 x i8] c"meltdown\00", align 1
@dev_attr_meltdown = internal global { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* } { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @cpu_show_meltdown, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2369
@.str.32 = private unnamed_addr constant [11 x i8] c"spectre_v1\00", align 1
@dev_attr_spectre_v1 = internal global { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* } { %struct.attribute { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @cpu_show_spectre_v1, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2371
@.str.34 = private unnamed_addr constant [11 x i8] c"spectre_v2\00", align 1
@dev_attr_spectre_v2 = internal global { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* } { %struct.attribute { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @cpu_show_spectre_v2, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2373
@.str.36 = private unnamed_addr constant [18 x i8] c"spec_store_bypass\00", align 1
@dev_attr_spec_store_bypass = internal global { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* } { %struct.attribute { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.36, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @cpu_show_spec_store_bypass, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2375
@.str.38 = private unnamed_addr constant [5 x i8] c"l1tf\00", align 1
@dev_attr_l1tf = internal global { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* } { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @cpu_show_l1tf, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2377
@.str.40 = private unnamed_addr constant [4 x i8] c"mds\00", align 1
@dev_attr_mds = internal global { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* } { %struct.attribute { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @cpu_show_mds, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2379
@.str.42 = private unnamed_addr constant [16 x i8] c"tsx_async_abort\00", align 1
@dev_attr_tsx_async_abort = internal global { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* } { %struct.attribute { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @cpu_show_tsx_async_abort, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2381
@.str.44 = private unnamed_addr constant [14 x i8] c"itlb_multihit\00", align 1
@dev_attr_itlb_multihit = internal global { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* } { %struct.attribute { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @cpu_show_itlb_multihit, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2383
@.str.46 = private unnamed_addr constant [6 x i8] c"srbds\00", align 1
@dev_attr_srbds = internal global { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* } { %struct.attribute { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @cpu_show_srbds, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2385

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cpu_subsys_match(%struct.device* %dev, %struct.device_driver* %drv) #0 !dbg !2392 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %drv.addr = alloca %struct.device_driver*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2393, metadata !DIExpression()), !dbg !2394
  store %struct.device_driver* %drv, %struct.device_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_driver** %drv.addr, metadata !2395, metadata !DIExpression()), !dbg !2396
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2397
  %1 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !2399
  %call = call zeroext i1 @acpi_driver_match_device(%struct.device* %0, %struct.device_driver* %1) #11, !dbg !2400
  br i1 %call, label %if.then, label %if.end, !dbg !2401

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !2402
  br label %return, !dbg !2402

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2403
  br label %return, !dbg !2403

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !2404
  ret i32 %2, !dbg !2404
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @register_cpu(%struct.cpu* %cpu, i32 %num) #0 !dbg !2405 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca %struct.cpu*, align 8
  %num.addr = alloca i32, align 4
  %error = alloca i32, align 4
  %tmp = alloca %struct.device**, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp27 = alloca %struct.device**, align 8
  store %struct.cpu* %cpu, %struct.cpu** %cpu.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpu** %cpu.addr, metadata !2408, metadata !DIExpression()), !dbg !2409
  store i32 %num, i32* %num.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num.addr, metadata !2410, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.declare(metadata i32* %error, metadata !2412, metadata !DIExpression()), !dbg !2413
  %0 = load i32, i32* %num.addr, align 4, !dbg !2414
  %1 = load %struct.cpu*, %struct.cpu** %cpu.addr, align 8, !dbg !2415
  %node_id = getelementptr inbounds %struct.cpu, %struct.cpu* %1, i32 0, i32 0, !dbg !2416
  store i32 0, i32* %node_id, align 8, !dbg !2417
  %2 = load %struct.cpu*, %struct.cpu** %cpu.addr, align 8, !dbg !2418
  %dev = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i32 0, i32 2, !dbg !2419
  %3 = bitcast %struct.device* %dev to i8*, !dbg !2420
  call void @llvm.memset.p0i8.i64(i8* align 8 %3, i8 0, i64 696, i1 false), !dbg !2420
  %4 = load i32, i32* %num.addr, align 4, !dbg !2421
  %5 = load %struct.cpu*, %struct.cpu** %cpu.addr, align 8, !dbg !2422
  %dev1 = getelementptr inbounds %struct.cpu, %struct.cpu* %5, i32 0, i32 2, !dbg !2423
  %id = getelementptr inbounds %struct.device, %struct.device* %dev1, i32 0, i32 26, !dbg !2424
  store i32 %4, i32* %id, align 4, !dbg !2425
  %6 = load %struct.cpu*, %struct.cpu** %cpu.addr, align 8, !dbg !2426
  %dev2 = getelementptr inbounds %struct.cpu, %struct.cpu* %6, i32 0, i32 2, !dbg !2427
  %bus = getelementptr inbounds %struct.device, %struct.device* %dev2, i32 0, i32 5, !dbg !2428
  store %struct.bus_type* @cpu_subsys, %struct.bus_type** %bus, align 8, !dbg !2429
  %7 = load %struct.cpu*, %struct.cpu** %cpu.addr, align 8, !dbg !2430
  %dev3 = getelementptr inbounds %struct.cpu, %struct.cpu* %7, i32 0, i32 2, !dbg !2431
  %release = getelementptr inbounds %struct.device, %struct.device* %dev3, i32 0, i32 31, !dbg !2432
  store void (%struct.device*)* @cpu_device_release, void (%struct.device*)** %release, align 8, !dbg !2433
  %8 = load %struct.cpu*, %struct.cpu** %cpu.addr, align 8, !dbg !2434
  %hotpluggable = getelementptr inbounds %struct.cpu, %struct.cpu* %8, i32 0, i32 1, !dbg !2435
  %9 = load i32, i32* %hotpluggable, align 4, !dbg !2435
  %tobool = icmp ne i32 %9, 0, !dbg !2436
  %lnot = xor i1 %tobool, true, !dbg !2436
  %10 = load %struct.cpu*, %struct.cpu** %cpu.addr, align 8, !dbg !2437
  %dev4 = getelementptr inbounds %struct.cpu, %struct.cpu* %10, i32 0, i32 2, !dbg !2438
  %offline_disabled = getelementptr inbounds %struct.device, %struct.device* %dev4, i32 0, i32 34, !dbg !2439
  %11 = zext i1 %lnot to i8, !dbg !2440
  %bf.load = load i8, i8* %offline_disabled, align 8, !dbg !2440
  %bf.clear = and i8 %bf.load, -2, !dbg !2440
  %bf.set = or i8 %bf.clear, %11, !dbg !2440
  store i8 %bf.set, i8* %offline_disabled, align 8, !dbg !2440
  %tobool5 = trunc i8 %11 to i1, !dbg !2440
  %12 = load i32, i32* %num.addr, align 4, !dbg !2441
  %cmp = icmp eq i32 %12, 0, !dbg !2441
  %lnot6 = xor i1 %cmp, true, !dbg !2442
  %13 = load %struct.cpu*, %struct.cpu** %cpu.addr, align 8, !dbg !2443
  %dev7 = getelementptr inbounds %struct.cpu, %struct.cpu* %13, i32 0, i32 2, !dbg !2444
  %offline = getelementptr inbounds %struct.device, %struct.device* %dev7, i32 0, i32 34, !dbg !2445
  %14 = zext i1 %lnot6 to i8, !dbg !2446
  %bf.load8 = load i8, i8* %offline, align 8, !dbg !2446
  %bf.shl = shl i8 %14, 1, !dbg !2446
  %bf.clear9 = and i8 %bf.load8, -3, !dbg !2446
  %bf.set10 = or i8 %bf.clear9, %bf.shl, !dbg !2446
  store i8 %bf.set10, i8* %offline, align 8, !dbg !2446
  %tobool11 = trunc i8 %14 to i1, !dbg !2446
  %15 = load i32, i32* %num.addr, align 4, !dbg !2447
  %call = call %struct.device_node* @of_get_cpu_node(i32 %15, i32* null) #11, !dbg !2448
  %16 = load %struct.cpu*, %struct.cpu** %cpu.addr, align 8, !dbg !2449
  %dev12 = getelementptr inbounds %struct.cpu, %struct.cpu* %16, i32 0, i32 2, !dbg !2450
  %of_node = getelementptr inbounds %struct.device, %struct.device* %dev12, i32 0, i32 23, !dbg !2451
  store %struct.device_node* %call, %struct.device_node** %of_node, align 8, !dbg !2452
  %17 = load %struct.cpu*, %struct.cpu** %cpu.addr, align 8, !dbg !2453
  %dev13 = getelementptr inbounds %struct.cpu, %struct.cpu* %17, i32 0, i32 2, !dbg !2454
  %bus14 = getelementptr inbounds %struct.device, %struct.device* %dev13, i32 0, i32 5, !dbg !2455
  %18 = load %struct.bus_type*, %struct.bus_type** %bus14, align 8, !dbg !2455
  %uevent = getelementptr inbounds %struct.bus_type, %struct.bus_type* %18, i32 0, i32 7, !dbg !2456
  store i32 (%struct.device*, %struct.kobj_uevent_env*)* @cpu_uevent, i32 (%struct.device*, %struct.kobj_uevent_env*)** %uevent, align 8, !dbg !2457
  %19 = load %struct.cpu*, %struct.cpu** %cpu.addr, align 8, !dbg !2458
  %dev15 = getelementptr inbounds %struct.cpu, %struct.cpu* %19, i32 0, i32 2, !dbg !2459
  %groups = getelementptr inbounds %struct.device, %struct.device* %dev15, i32 0, i32 30, !dbg !2460
  store %struct.attribute_group** getelementptr inbounds ([1 x %struct.attribute_group*], [1 x %struct.attribute_group*]* @common_cpu_attr_groups, i64 0, i64 0), %struct.attribute_group*** %groups, align 8, !dbg !2461
  %20 = load %struct.cpu*, %struct.cpu** %cpu.addr, align 8, !dbg !2462
  %hotpluggable16 = getelementptr inbounds %struct.cpu, %struct.cpu* %20, i32 0, i32 1, !dbg !2464
  %21 = load i32, i32* %hotpluggable16, align 4, !dbg !2464
  %tobool17 = icmp ne i32 %21, 0, !dbg !2462
  br i1 %tobool17, label %if.then, label %if.end, !dbg !2465

if.then:                                          ; preds = %entry
  %22 = load %struct.cpu*, %struct.cpu** %cpu.addr, align 8, !dbg !2466
  %dev18 = getelementptr inbounds %struct.cpu, %struct.cpu* %22, i32 0, i32 2, !dbg !2467
  %groups19 = getelementptr inbounds %struct.device, %struct.device* %dev18, i32 0, i32 30, !dbg !2468
  store %struct.attribute_group** getelementptr inbounds ([1 x %struct.attribute_group*], [1 x %struct.attribute_group*]* @hotplugable_cpu_attr_groups, i64 0, i64 0), %struct.attribute_group*** %groups19, align 8, !dbg !2469
  br label %if.end, !dbg !2466

if.end:                                           ; preds = %if.then, %entry
  %23 = load %struct.cpu*, %struct.cpu** %cpu.addr, align 8, !dbg !2470
  %dev20 = getelementptr inbounds %struct.cpu, %struct.cpu* %23, i32 0, i32 2, !dbg !2471
  %call21 = call i32 @device_register(%struct.device* %dev20) #11, !dbg !2472
  store i32 %call21, i32* %error, align 4, !dbg !2473
  %24 = load i32, i32* %error, align 4, !dbg !2474
  %tobool22 = icmp ne i32 %24, 0, !dbg !2474
  br i1 %tobool22, label %if.then23, label %if.end25, !dbg !2476

if.then23:                                        ; preds = %if.end
  %25 = load %struct.cpu*, %struct.cpu** %cpu.addr, align 8, !dbg !2477
  %dev24 = getelementptr inbounds %struct.cpu, %struct.cpu* %25, i32 0, i32 2, !dbg !2479
  call void @put_device(%struct.device* %dev24) #11, !dbg !2480
  %26 = load i32, i32* %error, align 4, !dbg !2481
  store i32 %26, i32* %retval, align 4, !dbg !2482
  br label %return, !dbg !2482

if.end25:                                         ; preds = %if.end
  %27 = load %struct.cpu*, %struct.cpu** %cpu.addr, align 8, !dbg !2483
  %dev26 = getelementptr inbounds %struct.cpu, %struct.cpu* %27, i32 0, i32 2, !dbg !2484
  %28 = load i32, i32* %num.addr, align 4, !dbg !2485
  br label %do.body, !dbg !2487

do.body:                                          ; preds = %if.end25
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !2489, metadata !DIExpression()), !dbg !2491
  store i8* null, i8** %__vpp_verify, align 8, !dbg !2491
  %29 = load i8*, i8** %__vpp_verify, align 8, !dbg !2491
  br label %do.end, !dbg !2491

do.end:                                           ; preds = %do.body
  store %struct.device** @cpu_sys_devices, %struct.device*** %tmp27, align 8, !dbg !2491
  %30 = load %struct.device**, %struct.device*** %tmp27, align 8, !dbg !2487
  store %struct.device** %30, %struct.device*** %tmp, align 8, !dbg !2485
  %31 = load %struct.device**, %struct.device*** %tmp, align 8, !dbg !2485
  store %struct.device* %dev26, %struct.device** %31, align 8, !dbg !2492
  %32 = load i32, i32* %num.addr, align 4, !dbg !2493
  %33 = load i32, i32* %num.addr, align 4, !dbg !2494
  %call28 = call i32 @register_cpu_under_node(i32 %32, i32 0) #11, !dbg !2495
  %34 = load %struct.cpu*, %struct.cpu** %cpu.addr, align 8, !dbg !2496
  %dev29 = getelementptr inbounds %struct.cpu, %struct.cpu* %34, i32 0, i32 2, !dbg !2497
  %call30 = call i32 @dev_pm_qos_expose_latency_limit(%struct.device* %dev29, i32 2147483647) #11, !dbg !2498
  store i32 0, i32* %retval, align 4, !dbg !2499
  br label %return, !dbg !2499

return:                                           ; preds = %do.end, %if.then23
  %35 = load i32, i32* %retval, align 4, !dbg !2500
  ret i32 %35, !dbg !2500
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cpu_device_release(%struct.device* %dev) #0 !dbg !2501 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2502, metadata !DIExpression()), !dbg !2503
  ret void, !dbg !2504
}

; Function Attrs: noredzone
declare dso_local %struct.device_node* @of_get_cpu_node(i32, i32*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cpu_uevent(%struct.device* %dev, %struct.kobj_uevent_env* %env) #0 !dbg !2505 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %env.addr = alloca %struct.kobj_uevent_env*, align 8
  %buf = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2506, metadata !DIExpression()), !dbg !2507
  store %struct.kobj_uevent_env* %env, %struct.kobj_uevent_env** %env.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobj_uevent_env** %env.addr, metadata !2508, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.declare(metadata i8** %buf, metadata !2510, metadata !DIExpression()), !dbg !2511
  %call = call i8* @kzalloc(i64 4096, i32 3264) #11, !dbg !2512
  store i8* %call, i8** %buf, align 8, !dbg !2511
  %0 = load i8*, i8** %buf, align 8, !dbg !2513
  %tobool = icmp ne i8* %0, null, !dbg !2513
  br i1 %tobool, label %if.then, label %if.end, !dbg !2515

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %buf, align 8, !dbg !2516
  %call1 = call i64 @print_cpu_modalias(%struct.device* null, %struct.device_attribute* null, i8* %1) #11, !dbg !2518
  %2 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %env.addr, align 8, !dbg !2519
  %3 = load i8*, i8** %buf, align 8, !dbg !2520
  %call2 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %3) #11, !dbg !2521
  %4 = load i8*, i8** %buf, align 8, !dbg !2522
  call void @kfree(i8* %4) #11, !dbg !2523
  br label %if.end, !dbg !2524

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !2525
}

; Function Attrs: noredzone
declare dso_local i32 @device_register(%struct.device*) #3

; Function Attrs: noredzone
declare dso_local void @put_device(%struct.device*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @register_cpu_under_node(i32 %cpu, i32 %nid) #0 !dbg !2526 {
entry:
  %cpu.addr = alloca i32, align 4
  %nid.addr = alloca i32, align 4
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !2530, metadata !DIExpression()), !dbg !2531
  store i32 %nid, i32* %nid.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nid.addr, metadata !2532, metadata !DIExpression()), !dbg !2533
  ret i32 0, !dbg !2534
}

; Function Attrs: noredzone
declare dso_local i32 @dev_pm_qos_expose_latency_limit(%struct.device*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.device* @get_cpu_device(i32 %cpu) #0 !dbg !2535 {
entry:
  %retval = alloca %struct.device*, align 8
  %cpu.addr = alloca i32, align 4
  %tmp = alloca %struct.device**, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp2 = alloca %struct.device**, align 8
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !2538, metadata !DIExpression()), !dbg !2539
  %0 = load i32, i32* %cpu.addr, align 4, !dbg !2540
  %cmp = icmp ult i32 %0, 1, !dbg !2542
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !2543

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %cpu.addr, align 4, !dbg !2544
  %cmp1 = icmp eq i32 %1, 0, !dbg !2544
  br i1 %cmp1, label %if.then, label %if.else, !dbg !2545

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, i32* %cpu.addr, align 4, !dbg !2546
  br label %do.body, !dbg !2548

do.body:                                          ; preds = %if.then
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !2550, metadata !DIExpression()), !dbg !2552
  store i8* null, i8** %__vpp_verify, align 8, !dbg !2552
  %3 = load i8*, i8** %__vpp_verify, align 8, !dbg !2552
  br label %do.end, !dbg !2552

do.end:                                           ; preds = %do.body
  store %struct.device** @cpu_sys_devices, %struct.device*** %tmp2, align 8, !dbg !2552
  %4 = load %struct.device**, %struct.device*** %tmp2, align 8, !dbg !2548
  store %struct.device** %4, %struct.device*** %tmp, align 8, !dbg !2546
  %5 = load %struct.device**, %struct.device*** %tmp, align 8, !dbg !2546
  %6 = load %struct.device*, %struct.device** %5, align 8, !dbg !2553
  store %struct.device* %6, %struct.device** %retval, align 8, !dbg !2554
  br label %return, !dbg !2554

if.else:                                          ; preds = %land.lhs.true, %entry
  store %struct.device* null, %struct.device** %retval, align 8, !dbg !2555
  br label %return, !dbg !2555

return:                                           ; preds = %if.else, %do.end
  %7 = load %struct.device*, %struct.device** %retval, align 8, !dbg !2556
  ret %struct.device* %7, !dbg !2556
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.device* @cpu_device_create(%struct.device* %parent, i8* %drvdata, %struct.attribute_group** %groups, i8* %fmt, ...) #0 !dbg !2557 {
entry:
  %parent.addr = alloca %struct.device*, align 8
  %drvdata.addr = alloca i8*, align 8
  %groups.addr = alloca %struct.attribute_group**, align 8
  %fmt.addr = alloca i8*, align 8
  %vargs = alloca [1 x %struct.__va_list_tag], align 16
  %dev = alloca %struct.device*, align 8
  store %struct.device* %parent, %struct.device** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %parent.addr, metadata !2560, metadata !DIExpression()), !dbg !2561
  store i8* %drvdata, i8** %drvdata.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %drvdata.addr, metadata !2562, metadata !DIExpression()), !dbg !2563
  store %struct.attribute_group** %groups, %struct.attribute_group*** %groups.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute_group*** %groups.addr, metadata !2564, metadata !DIExpression()), !dbg !2565
  store i8* %fmt, i8** %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %fmt.addr, metadata !2566, metadata !DIExpression()), !dbg !2567
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %vargs, metadata !2568, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !2581, metadata !DIExpression()), !dbg !2582
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i64 0, i64 0, !dbg !2583
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !2583
  call void @llvm.va_start(i8* %arraydecay1), !dbg !2583
  %0 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !2584
  %1 = load i8*, i8** %drvdata.addr, align 8, !dbg !2585
  %2 = load %struct.attribute_group**, %struct.attribute_group*** %groups.addr, align 8, !dbg !2586
  %3 = load i8*, i8** %fmt.addr, align 8, !dbg !2587
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i64 0, i64 0, !dbg !2588
  %call = call %struct.device* @__cpu_device_create(%struct.device* %0, i8* %1, %struct.attribute_group** %2, i8* %3, %struct.__va_list_tag* %arraydecay2) #11, !dbg !2589
  store %struct.device* %call, %struct.device** %dev, align 8, !dbg !2590
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i64 0, i64 0, !dbg !2591
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !2591
  call void @llvm.va_end(i8* %arraydecay34), !dbg !2591
  %4 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2592
  ret %struct.device* %4, !dbg !2593
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device* @__cpu_device_create(%struct.device* %parent, i8* %drvdata, %struct.attribute_group** %groups, i8* %fmt, %struct.__va_list_tag* %args) #0 !dbg !2594 {
entry:
  %retval = alloca %struct.device*, align 8
  %parent.addr = alloca %struct.device*, align 8
  %drvdata.addr = alloca i8*, align 8
  %groups.addr = alloca %struct.attribute_group**, align 8
  %fmt.addr = alloca i8*, align 8
  %args.addr = alloca %struct.__va_list_tag*, align 8
  %dev = alloca %struct.device*, align 8
  %retval1 = alloca i32, align 4
  store %struct.device* %parent, %struct.device** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %parent.addr, metadata !2598, metadata !DIExpression()), !dbg !2599
  store i8* %drvdata, i8** %drvdata.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %drvdata.addr, metadata !2600, metadata !DIExpression()), !dbg !2601
  store %struct.attribute_group** %groups, %struct.attribute_group*** %groups.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute_group*** %groups.addr, metadata !2602, metadata !DIExpression()), !dbg !2603
  store i8* %fmt, i8** %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %fmt.addr, metadata !2604, metadata !DIExpression()), !dbg !2605
  store %struct.__va_list_tag* %args, %struct.__va_list_tag** %args.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %args.addr, metadata !2606, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !2608, metadata !DIExpression()), !dbg !2609
  store %struct.device* null, %struct.device** %dev, align 8, !dbg !2609
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !2610, metadata !DIExpression()), !dbg !2611
  store i32 -19, i32* %retval1, align 4, !dbg !2611
  %call = call i8* @kzalloc(i64 696, i32 3264) #11, !dbg !2612
  %0 = bitcast i8* %call to %struct.device*, !dbg !2612
  store %struct.device* %0, %struct.device** %dev, align 8, !dbg !2613
  %1 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2614
  %tobool = icmp ne %struct.device* %1, null, !dbg !2614
  br i1 %tobool, label %if.end, label %if.then, !dbg !2616

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval1, align 4, !dbg !2617
  br label %error, !dbg !2619

if.end:                                           ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2620
  call void @device_initialize(%struct.device* %2) #11, !dbg !2621
  %3 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !2622
  %4 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2623
  %parent2 = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 1, !dbg !2624
  store %struct.device* %3, %struct.device** %parent2, align 8, !dbg !2625
  %5 = load %struct.attribute_group**, %struct.attribute_group*** %groups.addr, align 8, !dbg !2626
  %6 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2627
  %groups3 = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 30, !dbg !2628
  store %struct.attribute_group** %5, %struct.attribute_group*** %groups3, align 8, !dbg !2629
  %7 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2630
  %release = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 31, !dbg !2631
  store void (%struct.device*)* @device_create_release, void (%struct.device*)** %release, align 8, !dbg !2632
  %8 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2633
  call void @device_set_pm_not_required(%struct.device* %8) #11, !dbg !2634
  %9 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2635
  %10 = load i8*, i8** %drvdata.addr, align 8, !dbg !2636
  call void @dev_set_drvdata(%struct.device* %9, i8* %10) #11, !dbg !2637
  %11 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2638
  %kobj = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0, !dbg !2639
  %12 = load i8*, i8** %fmt.addr, align 8, !dbg !2640
  %13 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8, !dbg !2641
  %call4 = call i32 @kobject_set_name_vargs(%struct.kobject* %kobj, i8* %12, %struct.__va_list_tag* %13) #11, !dbg !2642
  store i32 %call4, i32* %retval1, align 4, !dbg !2643
  %14 = load i32, i32* %retval1, align 4, !dbg !2644
  %tobool5 = icmp ne i32 %14, 0, !dbg !2644
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !2646

if.then6:                                         ; preds = %if.end
  br label %error, !dbg !2647

if.end7:                                          ; preds = %if.end
  %15 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2648
  %call8 = call i32 @device_add(%struct.device* %15) #11, !dbg !2649
  store i32 %call8, i32* %retval1, align 4, !dbg !2650
  %16 = load i32, i32* %retval1, align 4, !dbg !2651
  %tobool9 = icmp ne i32 %16, 0, !dbg !2651
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !2653

if.then10:                                        ; preds = %if.end7
  br label %error, !dbg !2654

if.end11:                                         ; preds = %if.end7
  %17 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2655
  store %struct.device* %17, %struct.device** %retval, align 8, !dbg !2656
  br label %return, !dbg !2656

error:                                            ; preds = %if.then10, %if.then6, %if.then
  call void @llvm.dbg.label(metadata !2657), !dbg !2658
  %18 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2659
  call void @put_device(%struct.device* %18) #11, !dbg !2660
  %19 = load i32, i32* %retval1, align 4, !dbg !2661
  %conv = sext i32 %19 to i64, !dbg !2661
  %call12 = call i8* @ERR_PTR(i64 %conv) #11, !dbg !2662
  %20 = bitcast i8* %call12 to %struct.device*, !dbg !2662
  store %struct.device* %20, %struct.device** %retval, align 8, !dbg !2663
  br label %return, !dbg !2663

return:                                           ; preds = %error, %if.end11
  %21 = load %struct.device*, %struct.device** %retval, align 8, !dbg !2664
  ret %struct.device* %21, !dbg !2664
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @cpu_is_hotpluggable(i32 %cpu) #0 !dbg !2665 {
entry:
  %cpu.addr = alloca i32, align 4
  %dev = alloca %struct.device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.cpu*, align 8
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !2668, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !2670, metadata !DIExpression()), !dbg !2671
  %0 = load i32, i32* %cpu.addr, align 4, !dbg !2672
  %call = call %struct.device* @get_cpu_device(i32 %0) #11, !dbg !2673
  store %struct.device* %call, %struct.device** %dev, align 8, !dbg !2671
  %1 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2674
  %tobool = icmp ne %struct.device* %1, null, !dbg !2674
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !2675

land.rhs:                                         ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2676, metadata !DIExpression()), !dbg !2678
  %2 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2678
  %3 = bitcast %struct.device* %2 to i8*, !dbg !2678
  store i8* %3, i8** %__mptr, align 8, !dbg !2678
  br label %do.body, !dbg !2678

do.body:                                          ; preds = %land.rhs
  br label %do.end, !dbg !2679

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !2678
  %add.ptr = getelementptr i8, i8* %4, i64 -8, !dbg !2678
  %5 = bitcast i8* %add.ptr to %struct.cpu*, !dbg !2678
  store %struct.cpu* %5, %struct.cpu** %tmp, align 8, !dbg !2679
  %6 = load %struct.cpu*, %struct.cpu** %tmp, align 8, !dbg !2678
  %hotpluggable = getelementptr inbounds %struct.cpu, %struct.cpu* %6, i32 0, i32 1, !dbg !2681
  %7 = load i32, i32* %hotpluggable, align 4, !dbg !2681
  %tobool1 = icmp ne i32 %7, 0, !dbg !2675
  br label %land.end

land.end:                                         ; preds = %do.end, %entry
  %8 = phi i1 [ false, %entry ], [ %tobool1, %do.end ], !dbg !2682
  ret i1 %8, !dbg !2683
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define weak dso_local i64 @cpu_show_meltdown(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !2684 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2685, metadata !DIExpression()), !dbg !2686
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !2687, metadata !DIExpression()), !dbg !2688
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2689, metadata !DIExpression()), !dbg !2690
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !2691
  %call = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0)) #11, !dbg !2692
  %conv = sext i32 %call to i64, !dbg !2692
  ret i64 %conv, !dbg !2693
}

; Function Attrs: noredzone
declare dso_local i32 @sysfs_emit(i8*, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define weak dso_local i64 @cpu_show_spectre_v1(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !2694 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2695, metadata !DIExpression()), !dbg !2696
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !2697, metadata !DIExpression()), !dbg !2698
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2699, metadata !DIExpression()), !dbg !2700
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !2701
  %call = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0)) #11, !dbg !2702
  %conv = sext i32 %call to i64, !dbg !2702
  ret i64 %conv, !dbg !2703
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define weak dso_local i64 @cpu_show_spectre_v2(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !2704 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2705, metadata !DIExpression()), !dbg !2706
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !2707, metadata !DIExpression()), !dbg !2708
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2709, metadata !DIExpression()), !dbg !2710
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !2711
  %call = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0)) #11, !dbg !2712
  %conv = sext i32 %call to i64, !dbg !2712
  ret i64 %conv, !dbg !2713
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define weak dso_local i64 @cpu_show_spec_store_bypass(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !2714 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2715, metadata !DIExpression()), !dbg !2716
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !2717, metadata !DIExpression()), !dbg !2718
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2719, metadata !DIExpression()), !dbg !2720
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !2721
  %call = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0)) #11, !dbg !2722
  %conv = sext i32 %call to i64, !dbg !2722
  ret i64 %conv, !dbg !2723
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define weak dso_local i64 @cpu_show_l1tf(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !2724 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2725, metadata !DIExpression()), !dbg !2726
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !2727, metadata !DIExpression()), !dbg !2728
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2729, metadata !DIExpression()), !dbg !2730
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !2731
  %call = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0)) #11, !dbg !2732
  %conv = sext i32 %call to i64, !dbg !2732
  ret i64 %conv, !dbg !2733
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define weak dso_local i64 @cpu_show_mds(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !2734 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2735, metadata !DIExpression()), !dbg !2736
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !2737, metadata !DIExpression()), !dbg !2738
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2739, metadata !DIExpression()), !dbg !2740
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !2741
  %call = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0)) #11, !dbg !2742
  %conv = sext i32 %call to i64, !dbg !2742
  ret i64 %conv, !dbg !2743
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define weak dso_local i64 @cpu_show_tsx_async_abort(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !2744 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2745, metadata !DIExpression()), !dbg !2746
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !2747, metadata !DIExpression()), !dbg !2748
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2749, metadata !DIExpression()), !dbg !2750
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !2751
  %call = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0)) #11, !dbg !2752
  %conv = sext i32 %call to i64, !dbg !2752
  ret i64 %conv, !dbg !2753
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define weak dso_local i64 @cpu_show_itlb_multihit(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !2754 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2755, metadata !DIExpression()), !dbg !2756
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !2757, metadata !DIExpression()), !dbg !2758
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2759, metadata !DIExpression()), !dbg !2760
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !2761
  %call = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0)) #11, !dbg !2762
  %conv = sext i32 %call to i64, !dbg !2762
  ret i64 %conv, !dbg !2763
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define weak dso_local i64 @cpu_show_srbds(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !2764 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2765, metadata !DIExpression()), !dbg !2766
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !2767, metadata !DIExpression()), !dbg !2768
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2769, metadata !DIExpression()), !dbg !2770
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !2771
  %call = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0)) #11, !dbg !2772
  %conv = sext i32 %call to i64, !dbg !2772
  ret i64 %conv, !dbg !2773
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local void @cpu_dev_init() #5 section ".init.text" !dbg !2774 {
entry:
  %call = call i32 @subsys_system_register(%struct.bus_type* @cpu_subsys, %struct.attribute_group** getelementptr inbounds ([2 x %struct.attribute_group*], [2 x %struct.attribute_group*]* @cpu_root_attr_groups, i64 0, i64 0)) #11, !dbg !2777
  %tobool = icmp ne i32 %call, 0, !dbg !2777
  br i1 %tobool, label %if.then, label %if.end, !dbg !2779

if.then:                                          ; preds = %entry
  call void (i8*, ...) @panic(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0)) #12, !dbg !2780
  unreachable, !dbg !2780

if.end:                                           ; preds = %entry
  call void @cpu_dev_register_generic() #13, !dbg !2781
  call void @cpu_register_vulnerabilities() #13, !dbg !2782
  ret void, !dbg !2783
}

; Function Attrs: noredzone
declare dso_local i32 @subsys_system_register(%struct.bus_type*, %struct.attribute_group**) #3

; Function Attrs: cold noredzone noreturn
declare dso_local void @panic(i8*, ...) #6

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @cpu_dev_register_generic() #5 section ".init.text" !dbg !2784 {
entry:
  ret void, !dbg !2785
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @cpu_register_vulnerabilities() #5 section ".init.text" !dbg !2786 {
entry:
  %0 = load %struct.device*, %struct.device** getelementptr inbounds (%struct.bus_type, %struct.bus_type* @cpu_subsys, i32 0, i32 2), align 8, !dbg !2787
  %kobj = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 0, !dbg !2789
  %call = call i32 @sysfs_create_group(%struct.kobject* %kobj, %struct.attribute_group* @cpu_root_vulnerabilities_group) #11, !dbg !2790
  %tobool = icmp ne i32 %call, 0, !dbg !2790
  br i1 %tobool, label %if.then, label %if.end, !dbg !2791

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.28, i64 0, i64 0)) #13, !dbg !2792
  br label %if.end, !dbg !2792

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2793
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @acpi_driver_match_device(%struct.device*, %struct.device_driver*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !2794 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2797, metadata !DIExpression()), !dbg !2801
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2807, metadata !DIExpression()), !dbg !2808
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2809, metadata !DIExpression()), !dbg !2810
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2811, metadata !DIExpression()), !dbg !2812
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2813, metadata !DIExpression()), !dbg !2817
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2819, metadata !DIExpression()), !dbg !2823
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2825, metadata !DIExpression()), !dbg !2829
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !2834, metadata !DIExpression()), !dbg !2835
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !2836, metadata !DIExpression()), !dbg !2837
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2838, metadata !DIExpression()), !dbg !2839
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !2840, metadata !DIExpression()), !dbg !2841
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !2842, metadata !DIExpression()), !dbg !2843
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2844, metadata !DIExpression()), !dbg !2845
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !2846, metadata !DIExpression()), !dbg !2847
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !2848, metadata !DIExpression()), !dbg !2849
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2850, metadata !DIExpression()), !dbg !2851
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2852, metadata !DIExpression()), !dbg !2853
  %0 = load i64, i64* %size.addr, align 8, !dbg !2854
  %1 = load i32, i32* %flags.addr, align 4, !dbg !2855
  %or = or i32 %1, 256, !dbg !2856
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !2857
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #4, !dbg !2858
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !2859

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !2860
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !2861
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !2862

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !2863
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !2864
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !2865
  %call.i.i = call i32 @get_order(i64 %7) #14, !dbg !2866
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !2843
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !2867
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !2868
  %10 = load i32, i32* %order.i.i, align 4, !dbg !2869
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !2870
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !2871
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !2872
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #15, !dbg !2873
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !2873
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !2873
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !2873
  call void @llvm.assume(i1 %maskcond.i.i.i) #4, !dbg !2873
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !2874
  br label %kmalloc.exit, !dbg !2874

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !2875
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2876
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !2876
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !2878

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !2879
  br label %kmalloc_index.exit.i, !dbg !2879

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2880
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !2882
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !2883

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2884
  br label %kmalloc_index.exit.i, !dbg !2884

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2885
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !2887
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !2888

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2889
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !2890
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !2891

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !2892
  br label %kmalloc_index.exit.i, !dbg !2892

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2893
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !2895
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !2896

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2897
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !2898
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !2899

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !2900
  br label %kmalloc_index.exit.i, !dbg !2900

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2901
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !2903
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !2904

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2905
  br label %kmalloc_index.exit.i, !dbg !2905

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2906
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !2908
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !2909

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !2910
  br label %kmalloc_index.exit.i, !dbg !2910

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2911
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !2913
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !2914

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !2915
  br label %kmalloc_index.exit.i, !dbg !2915

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2916
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !2918
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !2919

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !2920
  br label %kmalloc_index.exit.i, !dbg !2920

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2921
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !2923
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !2924

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !2925
  br label %kmalloc_index.exit.i, !dbg !2925

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2926
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !2928
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !2929

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !2930
  br label %kmalloc_index.exit.i, !dbg !2930

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2931
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !2933
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !2934

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !2935
  br label %kmalloc_index.exit.i, !dbg !2935

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2936
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !2938
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !2939

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !2940
  br label %kmalloc_index.exit.i, !dbg !2940

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2941
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !2943
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !2944

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !2945
  br label %kmalloc_index.exit.i, !dbg !2945

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2946
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !2948
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !2949

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !2950
  br label %kmalloc_index.exit.i, !dbg !2950

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2951
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !2953
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !2954

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !2955
  br label %kmalloc_index.exit.i, !dbg !2955

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2956
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !2958
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !2959

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !2960
  br label %kmalloc_index.exit.i, !dbg !2960

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2961
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !2963
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !2964

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !2965
  br label %kmalloc_index.exit.i, !dbg !2965

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2966
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !2968
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !2969

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !2970
  br label %kmalloc_index.exit.i, !dbg !2970

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2971
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !2973
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !2974

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !2975
  br label %kmalloc_index.exit.i, !dbg !2975

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2976
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !2978
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !2979

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !2980
  br label %kmalloc_index.exit.i, !dbg !2980

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2981
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !2983
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !2984

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !2985
  br label %kmalloc_index.exit.i, !dbg !2985

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2986
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !2988
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !2989

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !2990
  br label %kmalloc_index.exit.i, !dbg !2990

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2991
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !2993
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !2994

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !2995
  br label %kmalloc_index.exit.i, !dbg !2995

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2996
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !2998
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !2999

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !3000
  br label %kmalloc_index.exit.i, !dbg !3000

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3001
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !3003
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !3004

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !3005
  br label %kmalloc_index.exit.i, !dbg !3005

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3006
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !3008
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !3009

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !3010
  br label %kmalloc_index.exit.i, !dbg !3010

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3011
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !3013
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !3014

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !3015
  br label %kmalloc_index.exit.i, !dbg !3015

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3016
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !3018
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !3019

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !3020
  br label %kmalloc_index.exit.i, !dbg !3020

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 382, i32 0, i64 12) #4, !dbg !3021, !srcloc !3024
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 160) #4, !dbg !3025, !srcloc !3028
  unreachable, !dbg !3029

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !3030
  store i32 %45, i32* %index.i, align 4, !dbg !3031
  %46 = load i32, i32* %index.i, align 4, !dbg !3032
  %tobool.i = icmp ne i32 %46, 0, !dbg !3032
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !3034

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !3035
  br label %kmalloc.exit, !dbg !3035

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !3036
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3037
  %and.i.i = and i32 %48, 17, !dbg !3037
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !3037
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !3037
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !3037
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !3037
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !3039

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !3040
  br label %kmalloc_type.exit.i, !dbg !3040

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3041
  %and2.i.i = and i32 %49, 1, !dbg !3042
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !3041
  %50 = zext i1 %tobool3.i.i to i64, !dbg !3041
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !3041
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !3043
  br label %kmalloc_type.exit.i, !dbg !3043

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !3044
  %idxprom.i = zext i32 %51 to i64, !dbg !3045
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !3045
  %52 = load i32, i32* %index.i, align 4, !dbg !3046
  %idxprom6.i = zext i32 %52 to i64, !dbg !3045
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !3045
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !3045
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !3047
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !3048
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3049
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3050
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #15, !dbg !3051
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !3051
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !3051
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !3051
  call void @llvm.assume(i1 %maskcond.i.i) #4, !dbg !3051
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !2812
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3052
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !3053
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !3054
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3055
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #15, !dbg !3056
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !3057
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !3058
  store i8* %62, i8** %retval.i, align 8, !dbg !3059
  br label %kmalloc.exit, !dbg !3059

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !3060
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !3061
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #15, !dbg !3062
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !3062
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !3062
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !3062
  call void @llvm.assume(i1 %maskcond.i) #4, !dbg !3062
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !3063
  br label %kmalloc.exit, !dbg !3063

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !3064
  ret i8* %65, !dbg !3065
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @print_cpu_modalias(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3066 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3067, metadata !DIExpression()), !dbg !3068
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3069, metadata !DIExpression()), !dbg !3070
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3071, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.declare(metadata i32* %len, metadata !3073, metadata !DIExpression()), !dbg !3074
  store i32 0, i32* %len, align 4, !dbg !3074
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3075, metadata !DIExpression()), !dbg !3076
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !3077
  %1 = load i32, i32* %len, align 4, !dbg !3078
  %2 = load i8, i8* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 1), align 1, !dbg !3079
  %conv = zext i8 %2 to i32, !dbg !3079
  %3 = load i8, i8* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 0), align 8, !dbg !3079
  %conv1 = zext i8 %3 to i32, !dbg !3079
  %4 = load i8, i8* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 2), align 2, !dbg !3079
  %conv2 = zext i8 %4 to i32, !dbg !3079
  %call = call i32 (i8*, i32, i8*, ...) @sysfs_emit_at(i8* %0, i32 %1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %conv, i32 %conv1, i32 %conv2) #11, !dbg !3080
  %5 = load i32, i32* %len, align 4, !dbg !3081
  %add = add i32 %5, %call, !dbg !3081
  store i32 %add, i32* %len, align 4, !dbg !3081
  store i32 0, i32* %i, align 4, !dbg !3082
  br label %for.cond, !dbg !3084

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4, !dbg !3085
  %cmp = icmp ult i32 %6, 608, !dbg !3087
  br i1 %cmp, label %for.body, label %for.end, !dbg !3088

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !dbg !3089
  %8 = call i1 @llvm.is.constant.i32(i32 %7), !dbg !3089
  br i1 %8, label %land.lhs.true, label %cond.false, !dbg !3089

land.lhs.true:                                    ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !3089
  %shr = lshr i32 %9, 5, !dbg !3089
  %cmp4 = icmp eq i32 %shr, 0, !dbg !3089
  br i1 %cmp4, label %land.lhs.true6, label %lor.lhs.false, !dbg !3089

land.lhs.true6:                                   ; preds = %land.lhs.true
  %10 = load i32, i32* %i, align 4, !dbg !3089
  %and = and i32 %10, 31, !dbg !3089
  %sh_prom = zext i32 %and to i64, !dbg !3089
  %shl = shl i64 1, %sh_prom, !dbg !3089
  %and7 = and i64 %shl, 117473633, !dbg !3089
  %tobool = icmp ne i64 %and7, 0, !dbg !3089
  br i1 %tobool, label %cond.true, label %lor.lhs.false, !dbg !3089

lor.lhs.false:                                    ; preds = %land.lhs.true6, %land.lhs.true
  %11 = load i32, i32* %i, align 4, !dbg !3089
  %shr8 = lshr i32 %11, 5, !dbg !3089
  %cmp9 = icmp eq i32 %shr8, 1, !dbg !3089
  br i1 %cmp9, label %land.lhs.true11, label %lor.lhs.false17, !dbg !3089

land.lhs.true11:                                  ; preds = %lor.lhs.false
  %12 = load i32, i32* %i, align 4, !dbg !3089
  %and12 = and i32 %12, 31, !dbg !3089
  %sh_prom13 = zext i32 %and12 to i64, !dbg !3089
  %shl14 = shl i64 1, %sh_prom13, !dbg !3089
  %and15 = and i64 %shl14, 536870912, !dbg !3089
  %tobool16 = icmp ne i64 %and15, 0, !dbg !3089
  br i1 %tobool16, label %cond.true, label %lor.lhs.false17, !dbg !3089

lor.lhs.false17:                                  ; preds = %land.lhs.true11, %lor.lhs.false
  %13 = load i32, i32* %i, align 4, !dbg !3089
  %shr18 = lshr i32 %13, 5, !dbg !3089
  %cmp19 = icmp eq i32 %shr18, 2, !dbg !3089
  br i1 %cmp19, label %land.lhs.true21, label %lor.lhs.false27, !dbg !3089

land.lhs.true21:                                  ; preds = %lor.lhs.false17
  %14 = load i32, i32* %i, align 4, !dbg !3089
  %and22 = and i32 %14, 31, !dbg !3089
  %sh_prom23 = zext i32 %and22 to i64, !dbg !3089
  %shl24 = shl i64 1, %sh_prom23, !dbg !3089
  %and25 = and i64 %shl24, 0, !dbg !3089
  %tobool26 = icmp ne i64 %and25, 0, !dbg !3089
  br i1 %tobool26, label %cond.true, label %lor.lhs.false27, !dbg !3089

lor.lhs.false27:                                  ; preds = %land.lhs.true21, %lor.lhs.false17
  %15 = load i32, i32* %i, align 4, !dbg !3089
  %shr28 = lshr i32 %15, 5, !dbg !3089
  %cmp29 = icmp eq i32 %shr28, 3, !dbg !3089
  br i1 %cmp29, label %land.lhs.true31, label %lor.lhs.false37, !dbg !3089

land.lhs.true31:                                  ; preds = %lor.lhs.false27
  %16 = load i32, i32* %i, align 4, !dbg !3089
  %and32 = and i32 %16, 31, !dbg !3089
  %sh_prom33 = zext i32 %and32 to i64, !dbg !3089
  %shl34 = shl i64 1, %sh_prom33, !dbg !3089
  %and35 = and i64 %shl34, 1048576, !dbg !3089
  %tobool36 = icmp ne i64 %and35, 0, !dbg !3089
  br i1 %tobool36, label %cond.true, label %lor.lhs.false37, !dbg !3089

lor.lhs.false37:                                  ; preds = %land.lhs.true31, %lor.lhs.false27
  %17 = load i32, i32* %i, align 4, !dbg !3089
  %shr38 = lshr i32 %17, 5, !dbg !3089
  %cmp39 = icmp eq i32 %shr38, 4, !dbg !3089
  br i1 %cmp39, label %land.lhs.true41, label %lor.lhs.false47, !dbg !3089

land.lhs.true41:                                  ; preds = %lor.lhs.false37
  %18 = load i32, i32* %i, align 4, !dbg !3089
  %and42 = and i32 %18, 31, !dbg !3089
  %sh_prom43 = zext i32 %and42 to i64, !dbg !3089
  %shl44 = shl i64 1, %sh_prom43, !dbg !3089
  %and45 = and i64 %shl44, 0, !dbg !3089
  %tobool46 = icmp ne i64 %and45, 0, !dbg !3089
  br i1 %tobool46, label %cond.true, label %lor.lhs.false47, !dbg !3089

lor.lhs.false47:                                  ; preds = %land.lhs.true41, %lor.lhs.false37
  %19 = load i32, i32* %i, align 4, !dbg !3089
  %shr48 = lshr i32 %19, 5, !dbg !3089
  %cmp49 = icmp eq i32 %shr48, 5, !dbg !3089
  br i1 %cmp49, label %land.lhs.true51, label %lor.lhs.false57, !dbg !3089

land.lhs.true51:                                  ; preds = %lor.lhs.false47
  %20 = load i32, i32* %i, align 4, !dbg !3089
  %and52 = and i32 %20, 31, !dbg !3089
  %sh_prom53 = zext i32 %and52 to i64, !dbg !3089
  %shl54 = shl i64 1, %sh_prom53, !dbg !3089
  %and55 = and i64 %shl54, 0, !dbg !3089
  %tobool56 = icmp ne i64 %and55, 0, !dbg !3089
  br i1 %tobool56, label %cond.true, label %lor.lhs.false57, !dbg !3089

lor.lhs.false57:                                  ; preds = %land.lhs.true51, %lor.lhs.false47
  %21 = load i32, i32* %i, align 4, !dbg !3089
  %shr58 = lshr i32 %21, 5, !dbg !3089
  %cmp59 = icmp eq i32 %shr58, 6, !dbg !3089
  br i1 %cmp59, label %land.lhs.true61, label %lor.lhs.false67, !dbg !3089

land.lhs.true61:                                  ; preds = %lor.lhs.false57
  %22 = load i32, i32* %i, align 4, !dbg !3089
  %and62 = and i32 %22, 31, !dbg !3089
  %sh_prom63 = zext i32 %and62 to i64, !dbg !3089
  %shl64 = shl i64 1, %sh_prom63, !dbg !3089
  %and65 = and i64 %shl64, 0, !dbg !3089
  %tobool66 = icmp ne i64 %and65, 0, !dbg !3089
  br i1 %tobool66, label %cond.true, label %lor.lhs.false67, !dbg !3089

lor.lhs.false67:                                  ; preds = %land.lhs.true61, %lor.lhs.false57
  %23 = load i32, i32* %i, align 4, !dbg !3089
  %shr68 = lshr i32 %23, 5, !dbg !3089
  %cmp69 = icmp eq i32 %shr68, 7, !dbg !3089
  br i1 %cmp69, label %land.lhs.true71, label %lor.lhs.false77, !dbg !3089

land.lhs.true71:                                  ; preds = %lor.lhs.false67
  %24 = load i32, i32* %i, align 4, !dbg !3089
  %and72 = and i32 %24, 31, !dbg !3089
  %sh_prom73 = zext i32 %and72 to i64, !dbg !3089
  %shl74 = shl i64 1, %sh_prom73, !dbg !3089
  %and75 = and i64 %shl74, 0, !dbg !3089
  %tobool76 = icmp ne i64 %and75, 0, !dbg !3089
  br i1 %tobool76, label %cond.true, label %lor.lhs.false77, !dbg !3089

lor.lhs.false77:                                  ; preds = %land.lhs.true71, %lor.lhs.false67
  %25 = load i32, i32* %i, align 4, !dbg !3089
  %shr78 = lshr i32 %25, 5, !dbg !3089
  %cmp79 = icmp eq i32 %shr78, 8, !dbg !3089
  br i1 %cmp79, label %land.lhs.true81, label %lor.lhs.false87, !dbg !3089

land.lhs.true81:                                  ; preds = %lor.lhs.false77
  %26 = load i32, i32* %i, align 4, !dbg !3089
  %and82 = and i32 %26, 31, !dbg !3089
  %sh_prom83 = zext i32 %and82 to i64, !dbg !3089
  %shl84 = shl i64 1, %sh_prom83, !dbg !3089
  %and85 = and i64 %shl84, 0, !dbg !3089
  %tobool86 = icmp ne i64 %and85, 0, !dbg !3089
  br i1 %tobool86, label %cond.true, label %lor.lhs.false87, !dbg !3089

lor.lhs.false87:                                  ; preds = %land.lhs.true81, %lor.lhs.false77
  %27 = load i32, i32* %i, align 4, !dbg !3089
  %shr88 = lshr i32 %27, 5, !dbg !3089
  %cmp89 = icmp eq i32 %shr88, 9, !dbg !3089
  br i1 %cmp89, label %land.lhs.true91, label %lor.lhs.false97, !dbg !3089

land.lhs.true91:                                  ; preds = %lor.lhs.false87
  %28 = load i32, i32* %i, align 4, !dbg !3089
  %and92 = and i32 %28, 31, !dbg !3089
  %sh_prom93 = zext i32 %and92 to i64, !dbg !3089
  %shl94 = shl i64 1, %sh_prom93, !dbg !3089
  %and95 = and i64 %shl94, 0, !dbg !3089
  %tobool96 = icmp ne i64 %and95, 0, !dbg !3089
  br i1 %tobool96, label %cond.true, label %lor.lhs.false97, !dbg !3089

lor.lhs.false97:                                  ; preds = %land.lhs.true91, %lor.lhs.false87
  %29 = load i32, i32* %i, align 4, !dbg !3089
  %shr98 = lshr i32 %29, 5, !dbg !3089
  %cmp99 = icmp eq i32 %shr98, 10, !dbg !3089
  br i1 %cmp99, label %land.lhs.true101, label %lor.lhs.false107, !dbg !3089

land.lhs.true101:                                 ; preds = %lor.lhs.false97
  %30 = load i32, i32* %i, align 4, !dbg !3089
  %and102 = and i32 %30, 31, !dbg !3089
  %sh_prom103 = zext i32 %and102 to i64, !dbg !3089
  %shl104 = shl i64 1, %sh_prom103, !dbg !3089
  %and105 = and i64 %shl104, 0, !dbg !3089
  %tobool106 = icmp ne i64 %and105, 0, !dbg !3089
  br i1 %tobool106, label %cond.true, label %lor.lhs.false107, !dbg !3089

lor.lhs.false107:                                 ; preds = %land.lhs.true101, %lor.lhs.false97
  %31 = load i32, i32* %i, align 4, !dbg !3089
  %shr108 = lshr i32 %31, 5, !dbg !3089
  %cmp109 = icmp eq i32 %shr108, 11, !dbg !3089
  br i1 %cmp109, label %land.lhs.true111, label %lor.lhs.false117, !dbg !3089

land.lhs.true111:                                 ; preds = %lor.lhs.false107
  %32 = load i32, i32* %i, align 4, !dbg !3089
  %and112 = and i32 %32, 31, !dbg !3089
  %sh_prom113 = zext i32 %and112 to i64, !dbg !3089
  %shl114 = shl i64 1, %sh_prom113, !dbg !3089
  %and115 = and i64 %shl114, 0, !dbg !3089
  %tobool116 = icmp ne i64 %and115, 0, !dbg !3089
  br i1 %tobool116, label %cond.true, label %lor.lhs.false117, !dbg !3089

lor.lhs.false117:                                 ; preds = %land.lhs.true111, %lor.lhs.false107
  %33 = load i32, i32* %i, align 4, !dbg !3089
  %shr118 = lshr i32 %33, 5, !dbg !3089
  %cmp119 = icmp eq i32 %shr118, 12, !dbg !3089
  br i1 %cmp119, label %land.lhs.true121, label %lor.lhs.false127, !dbg !3089

land.lhs.true121:                                 ; preds = %lor.lhs.false117
  %34 = load i32, i32* %i, align 4, !dbg !3089
  %and122 = and i32 %34, 31, !dbg !3089
  %sh_prom123 = zext i32 %and122 to i64, !dbg !3089
  %shl124 = shl i64 1, %sh_prom123, !dbg !3089
  %and125 = and i64 %shl124, 0, !dbg !3089
  %tobool126 = icmp ne i64 %and125, 0, !dbg !3089
  br i1 %tobool126, label %cond.true, label %lor.lhs.false127, !dbg !3089

lor.lhs.false127:                                 ; preds = %land.lhs.true121, %lor.lhs.false117
  %35 = load i32, i32* %i, align 4, !dbg !3089
  %shr128 = lshr i32 %35, 5, !dbg !3089
  %cmp129 = icmp eq i32 %shr128, 13, !dbg !3089
  br i1 %cmp129, label %land.lhs.true131, label %lor.lhs.false137, !dbg !3089

land.lhs.true131:                                 ; preds = %lor.lhs.false127
  %36 = load i32, i32* %i, align 4, !dbg !3089
  %and132 = and i32 %36, 31, !dbg !3089
  %sh_prom133 = zext i32 %and132 to i64, !dbg !3089
  %shl134 = shl i64 1, %sh_prom133, !dbg !3089
  %and135 = and i64 %shl134, 0, !dbg !3089
  %tobool136 = icmp ne i64 %and135, 0, !dbg !3089
  br i1 %tobool136, label %cond.true, label %lor.lhs.false137, !dbg !3089

lor.lhs.false137:                                 ; preds = %land.lhs.true131, %lor.lhs.false127
  %37 = load i32, i32* %i, align 4, !dbg !3089
  %shr138 = lshr i32 %37, 5, !dbg !3089
  %cmp139 = icmp eq i32 %shr138, 14, !dbg !3089
  br i1 %cmp139, label %land.lhs.true141, label %lor.lhs.false147, !dbg !3089

land.lhs.true141:                                 ; preds = %lor.lhs.false137
  %38 = load i32, i32* %i, align 4, !dbg !3089
  %and142 = and i32 %38, 31, !dbg !3089
  %sh_prom143 = zext i32 %and142 to i64, !dbg !3089
  %shl144 = shl i64 1, %sh_prom143, !dbg !3089
  %and145 = and i64 %shl144, 0, !dbg !3089
  %tobool146 = icmp ne i64 %and145, 0, !dbg !3089
  br i1 %tobool146, label %cond.true, label %lor.lhs.false147, !dbg !3089

lor.lhs.false147:                                 ; preds = %land.lhs.true141, %lor.lhs.false137
  %39 = load i32, i32* %i, align 4, !dbg !3089
  %shr148 = lshr i32 %39, 5, !dbg !3089
  %cmp149 = icmp eq i32 %shr148, 15, !dbg !3089
  br i1 %cmp149, label %land.lhs.true151, label %lor.lhs.false157, !dbg !3089

land.lhs.true151:                                 ; preds = %lor.lhs.false147
  %40 = load i32, i32* %i, align 4, !dbg !3089
  %and152 = and i32 %40, 31, !dbg !3089
  %sh_prom153 = zext i32 %and152 to i64, !dbg !3089
  %shl154 = shl i64 1, %sh_prom153, !dbg !3089
  %and155 = and i64 %shl154, 0, !dbg !3089
  %tobool156 = icmp ne i64 %and155, 0, !dbg !3089
  br i1 %tobool156, label %cond.true, label %lor.lhs.false157, !dbg !3089

lor.lhs.false157:                                 ; preds = %land.lhs.true151, %lor.lhs.false147
  %41 = load i32, i32* %i, align 4, !dbg !3089
  %shr158 = lshr i32 %41, 5, !dbg !3089
  %cmp159 = icmp eq i32 %shr158, 16, !dbg !3089
  br i1 %cmp159, label %land.lhs.true161, label %lor.lhs.false167, !dbg !3089

land.lhs.true161:                                 ; preds = %lor.lhs.false157
  %42 = load i32, i32* %i, align 4, !dbg !3089
  %and162 = and i32 %42, 31, !dbg !3089
  %sh_prom163 = zext i32 %and162 to i64, !dbg !3089
  %shl164 = shl i64 1, %sh_prom163, !dbg !3089
  %and165 = and i64 %shl164, 0, !dbg !3089
  %tobool166 = icmp ne i64 %and165, 0, !dbg !3089
  br i1 %tobool166, label %cond.true, label %lor.lhs.false167, !dbg !3089

lor.lhs.false167:                                 ; preds = %land.lhs.true161, %lor.lhs.false157
  %43 = load i32, i32* %i, align 4, !dbg !3089
  %shr168 = lshr i32 %43, 5, !dbg !3089
  %cmp169 = icmp eq i32 %shr168, 17, !dbg !3089
  br i1 %cmp169, label %land.lhs.true171, label %lor.lhs.false177, !dbg !3089

land.lhs.true171:                                 ; preds = %lor.lhs.false167
  %44 = load i32, i32* %i, align 4, !dbg !3089
  %and172 = and i32 %44, 31, !dbg !3089
  %sh_prom173 = zext i32 %and172 to i64, !dbg !3089
  %shl174 = shl i64 1, %sh_prom173, !dbg !3089
  %and175 = and i64 %shl174, 0, !dbg !3089
  %tobool176 = icmp ne i64 %and175, 0, !dbg !3089
  br i1 %tobool176, label %cond.true, label %lor.lhs.false177, !dbg !3089

lor.lhs.false177:                                 ; preds = %land.lhs.true171, %lor.lhs.false167
  %45 = load i32, i32* %i, align 4, !dbg !3089
  %shr178 = lshr i32 %45, 5, !dbg !3089
  %cmp179 = icmp eq i32 %shr178, 18, !dbg !3089
  br i1 %cmp179, label %land.lhs.true181, label %cond.false, !dbg !3089

land.lhs.true181:                                 ; preds = %lor.lhs.false177
  %46 = load i32, i32* %i, align 4, !dbg !3089
  %and182 = and i32 %46, 31, !dbg !3089
  %sh_prom183 = zext i32 %and182 to i64, !dbg !3089
  %shl184 = shl i64 1, %sh_prom183, !dbg !3089
  %and185 = and i64 %shl184, 0, !dbg !3089
  %tobool186 = icmp ne i64 %and185, 0, !dbg !3089
  br i1 %tobool186, label %cond.true, label %cond.false, !dbg !3091

cond.true:                                        ; preds = %land.lhs.true181, %land.lhs.true171, %land.lhs.true161, %land.lhs.true151, %land.lhs.true141, %land.lhs.true131, %land.lhs.true121, %land.lhs.true111, %land.lhs.true101, %land.lhs.true91, %land.lhs.true81, %land.lhs.true71, %land.lhs.true61, %land.lhs.true51, %land.lhs.true41, %land.lhs.true31, %land.lhs.true21, %land.lhs.true11, %land.lhs.true6
  br i1 true, label %if.then, label %if.end221, !dbg !3089

cond.false:                                       ; preds = %land.lhs.true181, %lor.lhs.false177, %for.body
  %47 = load i32, i32* %i, align 4, !dbg !3089
  %conv187 = zext i32 %47 to i64, !dbg !3089
  %call188 = call zeroext i1 @test_bit(i64 %conv187, i64* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 12, i32 0)) #11, !dbg !3089
  br i1 %call188, label %if.then, label %if.end221, !dbg !3091

if.then:                                          ; preds = %cond.false, %cond.true
  %48 = load i32, i32* %len, align 4, !dbg !3092
  %conv190 = sext i32 %48 to i64, !dbg !3092
  %add191 = add i64 %conv190, 7, !dbg !3095
  %cmp192 = icmp uge i64 %add191, 4096, !dbg !3096
  br i1 %cmp192, label %if.then194, label %if.end218, !dbg !3097

if.then194:                                       ; preds = %if.then
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !3098, metadata !DIExpression()), !dbg !3101
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !3101
  %49 = load i32, i32* %__ret_warn_on, align 4, !dbg !3102
  %tobool195 = icmp ne i32 %49, 0, !dbg !3102
  %lnot = xor i1 %tobool195, true, !dbg !3102
  %lnot196 = xor i1 %lnot, true, !dbg !3102
  %lnot.ext = zext i1 %lnot196 to i32, !dbg !3102
  %conv197 = sext i32 %lnot.ext to i64, !dbg !3102
  %tobool198 = icmp ne i64 %conv197, 0, !dbg !3102
  br i1 %tobool198, label %if.then199, label %if.end, !dbg !3101

if.then199:                                       ; preds = %if.then194
  br label %do.body, !dbg !3102

do.body:                                          ; preds = %if.then199
  br label %do.body200, !dbg !3104

do.body200:                                       ; preds = %do.body
  br label %do.end, !dbg !3106

do.end:                                           ; preds = %do.body200
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !3104
  br label %do.body201, !dbg !3104

do.body201:                                       ; preds = %do.end
  br label %do.body202, !dbg !3108

do.body202:                                       ; preds = %do.body201
  br label %do.end203, !dbg !3110

do.end203:                                        ; preds = %do.body202
  br label %do.body204, !dbg !3108

do.body204:                                       ; preds = %do.end203
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 330, i32 2313, i64 12) #4, !dbg !3112, !srcloc !3114
  br label %do.end205, !dbg !3112

do.end205:                                        ; preds = %do.body204
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 173) #4, !dbg !3115, !srcloc !3117
  br label %do.body206, !dbg !3108

do.body206:                                       ; preds = %do.end205
  br label %do.end207, !dbg !3118

do.end207:                                        ; preds = %do.body206
  br label %do.end208, !dbg !3108

do.end208:                                        ; preds = %do.end207
  br label %do.body209, !dbg !3104

do.body209:                                       ; preds = %do.end208
  br label %do.end210, !dbg !3120

do.end210:                                        ; preds = %do.body209
  br label %do.end211, !dbg !3104

do.end211:                                        ; preds = %do.end210
  br label %if.end, !dbg !3104

if.end:                                           ; preds = %do.end211, %if.then194
  %50 = load i32, i32* %__ret_warn_on, align 4, !dbg !3101
  %tobool212 = icmp ne i32 %50, 0, !dbg !3101
  %lnot213 = xor i1 %tobool212, true, !dbg !3101
  %lnot215 = xor i1 %lnot213, true, !dbg !3101
  %lnot.ext216 = zext i1 %lnot215 to i32, !dbg !3101
  %conv217 = sext i32 %lnot.ext216 to i64, !dbg !3101
  store i64 %conv217, i64* %tmp, align 8, !dbg !3102
  %51 = load i64, i64* %tmp, align 8, !dbg !3101
  br label %for.end, !dbg !3122

if.end218:                                        ; preds = %if.then
  %52 = load i8*, i8** %buf.addr, align 8, !dbg !3123
  %53 = load i32, i32* %len, align 4, !dbg !3124
  %54 = load i32, i32* %i, align 4, !dbg !3125
  %call219 = call i32 (i8*, i32, i8*, ...) @sysfs_emit_at(i8* %52, i32 %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %54) #11, !dbg !3126
  %55 = load i32, i32* %len, align 4, !dbg !3127
  %add220 = add i32 %55, %call219, !dbg !3127
  store i32 %add220, i32* %len, align 4, !dbg !3127
  br label %if.end221, !dbg !3128

if.end221:                                        ; preds = %if.end218, %cond.false, %cond.true
  br label %for.inc, !dbg !3089

for.inc:                                          ; preds = %if.end221
  %56 = load i32, i32* %i, align 4, !dbg !3129
  %inc = add i32 %56, 1, !dbg !3129
  store i32 %inc, i32* %i, align 4, !dbg !3129
  br label %for.cond, !dbg !3130, !llvm.loop !3131

for.end:                                          ; preds = %if.end, %for.cond
  %57 = load i8*, i8** %buf.addr, align 8, !dbg !3133
  %58 = load i32, i32* %len, align 4, !dbg !3134
  %call222 = call i32 (i8*, i32, i8*, ...) @sysfs_emit_at(i8* %57, i32 %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #11, !dbg !3135
  %59 = load i32, i32* %len, align 4, !dbg !3136
  %add223 = add i32 %59, %call222, !dbg !3136
  store i32 %add223, i32* %len, align 4, !dbg !3136
  %60 = load i32, i32* %len, align 4, !dbg !3137
  %conv224 = sext i32 %60 to i64, !dbg !3137
  ret i64 %conv224, !dbg !3138
}

; Function Attrs: noredzone
declare dso_local i32 @add_uevent_var(%struct.kobj_uevent_env*, i8*, ...) #3

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #3

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #3

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #8

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #9 !dbg !3139 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3143, metadata !DIExpression()), !dbg !3148
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3150, metadata !DIExpression()), !dbg !3151
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3152, metadata !DIExpression()), !dbg !3153
  %0 = load i64, i64* %size.addr, align 8, !dbg !3154
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3156
  br i1 %1, label %if.then, label %if.end447, !dbg !3157

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !3158
  %tobool = icmp ne i64 %2, 0, !dbg !3158
  br i1 %tobool, label %if.end, label %if.then1, !dbg !3161

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !3162
  br label %return, !dbg !3162

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !3163
  %cmp = icmp ult i64 %3, 4096, !dbg !3165
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3166

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3167
  br label %return, !dbg !3167

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub = sub i64 %4, 1, !dbg !3168
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !3168
  br i1 %5, label %cond.true, label %cond.false442, !dbg !3168

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub4 = sub i64 %6, 1, !dbg !3168
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !3168
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !3168

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub6 = sub i64 %8, 1, !dbg !3168
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !3168
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !3168

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !3168

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub9 = sub i64 %9, 1, !dbg !3168
  %and = and i64 %sub9, -9223372036854775808, !dbg !3168
  %tobool10 = icmp ne i64 %and, 0, !dbg !3168
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !3168

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !3168

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub13 = sub i64 %10, 1, !dbg !3168
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !3168
  %tobool15 = icmp ne i64 %and14, 0, !dbg !3168
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !3168

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !3168

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub18 = sub i64 %11, 1, !dbg !3168
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !3168
  %tobool20 = icmp ne i64 %and19, 0, !dbg !3168
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !3168

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !3168

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub23 = sub i64 %12, 1, !dbg !3168
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !3168
  %tobool25 = icmp ne i64 %and24, 0, !dbg !3168
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !3168

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !3168

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub28 = sub i64 %13, 1, !dbg !3168
  %and29 = and i64 %sub28, 576460752303423488, !dbg !3168
  %tobool30 = icmp ne i64 %and29, 0, !dbg !3168
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !3168

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !3168

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub33 = sub i64 %14, 1, !dbg !3168
  %and34 = and i64 %sub33, 288230376151711744, !dbg !3168
  %tobool35 = icmp ne i64 %and34, 0, !dbg !3168
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !3168

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !3168

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub38 = sub i64 %15, 1, !dbg !3168
  %and39 = and i64 %sub38, 144115188075855872, !dbg !3168
  %tobool40 = icmp ne i64 %and39, 0, !dbg !3168
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !3168

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !3168

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub43 = sub i64 %16, 1, !dbg !3168
  %and44 = and i64 %sub43, 72057594037927936, !dbg !3168
  %tobool45 = icmp ne i64 %and44, 0, !dbg !3168
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !3168

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !3168

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub48 = sub i64 %17, 1, !dbg !3168
  %and49 = and i64 %sub48, 36028797018963968, !dbg !3168
  %tobool50 = icmp ne i64 %and49, 0, !dbg !3168
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !3168

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !3168

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub53 = sub i64 %18, 1, !dbg !3168
  %and54 = and i64 %sub53, 18014398509481984, !dbg !3168
  %tobool55 = icmp ne i64 %and54, 0, !dbg !3168
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !3168

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !3168

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub58 = sub i64 %19, 1, !dbg !3168
  %and59 = and i64 %sub58, 9007199254740992, !dbg !3168
  %tobool60 = icmp ne i64 %and59, 0, !dbg !3168
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !3168

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !3168

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub63 = sub i64 %20, 1, !dbg !3168
  %and64 = and i64 %sub63, 4503599627370496, !dbg !3168
  %tobool65 = icmp ne i64 %and64, 0, !dbg !3168
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !3168

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !3168

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub68 = sub i64 %21, 1, !dbg !3168
  %and69 = and i64 %sub68, 2251799813685248, !dbg !3168
  %tobool70 = icmp ne i64 %and69, 0, !dbg !3168
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !3168

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !3168

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub73 = sub i64 %22, 1, !dbg !3168
  %and74 = and i64 %sub73, 1125899906842624, !dbg !3168
  %tobool75 = icmp ne i64 %and74, 0, !dbg !3168
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !3168

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !3168

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub78 = sub i64 %23, 1, !dbg !3168
  %and79 = and i64 %sub78, 562949953421312, !dbg !3168
  %tobool80 = icmp ne i64 %and79, 0, !dbg !3168
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !3168

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !3168

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub83 = sub i64 %24, 1, !dbg !3168
  %and84 = and i64 %sub83, 281474976710656, !dbg !3168
  %tobool85 = icmp ne i64 %and84, 0, !dbg !3168
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !3168

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !3168

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub88 = sub i64 %25, 1, !dbg !3168
  %and89 = and i64 %sub88, 140737488355328, !dbg !3168
  %tobool90 = icmp ne i64 %and89, 0, !dbg !3168
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !3168

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !3168

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub93 = sub i64 %26, 1, !dbg !3168
  %and94 = and i64 %sub93, 70368744177664, !dbg !3168
  %tobool95 = icmp ne i64 %and94, 0, !dbg !3168
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !3168

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !3168

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub98 = sub i64 %27, 1, !dbg !3168
  %and99 = and i64 %sub98, 35184372088832, !dbg !3168
  %tobool100 = icmp ne i64 %and99, 0, !dbg !3168
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !3168

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !3168

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub103 = sub i64 %28, 1, !dbg !3168
  %and104 = and i64 %sub103, 17592186044416, !dbg !3168
  %tobool105 = icmp ne i64 %and104, 0, !dbg !3168
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !3168

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !3168

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub108 = sub i64 %29, 1, !dbg !3168
  %and109 = and i64 %sub108, 8796093022208, !dbg !3168
  %tobool110 = icmp ne i64 %and109, 0, !dbg !3168
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !3168

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !3168

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub113 = sub i64 %30, 1, !dbg !3168
  %and114 = and i64 %sub113, 4398046511104, !dbg !3168
  %tobool115 = icmp ne i64 %and114, 0, !dbg !3168
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !3168

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !3168

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub118 = sub i64 %31, 1, !dbg !3168
  %and119 = and i64 %sub118, 2199023255552, !dbg !3168
  %tobool120 = icmp ne i64 %and119, 0, !dbg !3168
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !3168

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !3168

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub123 = sub i64 %32, 1, !dbg !3168
  %and124 = and i64 %sub123, 1099511627776, !dbg !3168
  %tobool125 = icmp ne i64 %and124, 0, !dbg !3168
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !3168

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !3168

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub128 = sub i64 %33, 1, !dbg !3168
  %and129 = and i64 %sub128, 549755813888, !dbg !3168
  %tobool130 = icmp ne i64 %and129, 0, !dbg !3168
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !3168

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !3168

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub133 = sub i64 %34, 1, !dbg !3168
  %and134 = and i64 %sub133, 274877906944, !dbg !3168
  %tobool135 = icmp ne i64 %and134, 0, !dbg !3168
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !3168

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !3168

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub138 = sub i64 %35, 1, !dbg !3168
  %and139 = and i64 %sub138, 137438953472, !dbg !3168
  %tobool140 = icmp ne i64 %and139, 0, !dbg !3168
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !3168

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !3168

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub143 = sub i64 %36, 1, !dbg !3168
  %and144 = and i64 %sub143, 68719476736, !dbg !3168
  %tobool145 = icmp ne i64 %and144, 0, !dbg !3168
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !3168

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !3168

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub148 = sub i64 %37, 1, !dbg !3168
  %and149 = and i64 %sub148, 34359738368, !dbg !3168
  %tobool150 = icmp ne i64 %and149, 0, !dbg !3168
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !3168

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !3168

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub153 = sub i64 %38, 1, !dbg !3168
  %and154 = and i64 %sub153, 17179869184, !dbg !3168
  %tobool155 = icmp ne i64 %and154, 0, !dbg !3168
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !3168

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !3168

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub158 = sub i64 %39, 1, !dbg !3168
  %and159 = and i64 %sub158, 8589934592, !dbg !3168
  %tobool160 = icmp ne i64 %and159, 0, !dbg !3168
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !3168

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !3168

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub163 = sub i64 %40, 1, !dbg !3168
  %and164 = and i64 %sub163, 4294967296, !dbg !3168
  %tobool165 = icmp ne i64 %and164, 0, !dbg !3168
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !3168

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !3168

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub168 = sub i64 %41, 1, !dbg !3168
  %and169 = and i64 %sub168, 2147483648, !dbg !3168
  %tobool170 = icmp ne i64 %and169, 0, !dbg !3168
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !3168

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !3168

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub173 = sub i64 %42, 1, !dbg !3168
  %and174 = and i64 %sub173, 1073741824, !dbg !3168
  %tobool175 = icmp ne i64 %and174, 0, !dbg !3168
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !3168

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !3168

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub178 = sub i64 %43, 1, !dbg !3168
  %and179 = and i64 %sub178, 536870912, !dbg !3168
  %tobool180 = icmp ne i64 %and179, 0, !dbg !3168
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !3168

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !3168

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub183 = sub i64 %44, 1, !dbg !3168
  %and184 = and i64 %sub183, 268435456, !dbg !3168
  %tobool185 = icmp ne i64 %and184, 0, !dbg !3168
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !3168

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !3168

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub188 = sub i64 %45, 1, !dbg !3168
  %and189 = and i64 %sub188, 134217728, !dbg !3168
  %tobool190 = icmp ne i64 %and189, 0, !dbg !3168
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !3168

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !3168

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub193 = sub i64 %46, 1, !dbg !3168
  %and194 = and i64 %sub193, 67108864, !dbg !3168
  %tobool195 = icmp ne i64 %and194, 0, !dbg !3168
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !3168

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !3168

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub198 = sub i64 %47, 1, !dbg !3168
  %and199 = and i64 %sub198, 33554432, !dbg !3168
  %tobool200 = icmp ne i64 %and199, 0, !dbg !3168
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !3168

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !3168

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub203 = sub i64 %48, 1, !dbg !3168
  %and204 = and i64 %sub203, 16777216, !dbg !3168
  %tobool205 = icmp ne i64 %and204, 0, !dbg !3168
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !3168

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !3168

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub208 = sub i64 %49, 1, !dbg !3168
  %and209 = and i64 %sub208, 8388608, !dbg !3168
  %tobool210 = icmp ne i64 %and209, 0, !dbg !3168
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !3168

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !3168

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub213 = sub i64 %50, 1, !dbg !3168
  %and214 = and i64 %sub213, 4194304, !dbg !3168
  %tobool215 = icmp ne i64 %and214, 0, !dbg !3168
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !3168

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !3168

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub218 = sub i64 %51, 1, !dbg !3168
  %and219 = and i64 %sub218, 2097152, !dbg !3168
  %tobool220 = icmp ne i64 %and219, 0, !dbg !3168
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !3168

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !3168

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub223 = sub i64 %52, 1, !dbg !3168
  %and224 = and i64 %sub223, 1048576, !dbg !3168
  %tobool225 = icmp ne i64 %and224, 0, !dbg !3168
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !3168

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !3168

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub228 = sub i64 %53, 1, !dbg !3168
  %and229 = and i64 %sub228, 524288, !dbg !3168
  %tobool230 = icmp ne i64 %and229, 0, !dbg !3168
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !3168

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !3168

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub233 = sub i64 %54, 1, !dbg !3168
  %and234 = and i64 %sub233, 262144, !dbg !3168
  %tobool235 = icmp ne i64 %and234, 0, !dbg !3168
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !3168

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !3168

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub238 = sub i64 %55, 1, !dbg !3168
  %and239 = and i64 %sub238, 131072, !dbg !3168
  %tobool240 = icmp ne i64 %and239, 0, !dbg !3168
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !3168

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !3168

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub243 = sub i64 %56, 1, !dbg !3168
  %and244 = and i64 %sub243, 65536, !dbg !3168
  %tobool245 = icmp ne i64 %and244, 0, !dbg !3168
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !3168

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !3168

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub248 = sub i64 %57, 1, !dbg !3168
  %and249 = and i64 %sub248, 32768, !dbg !3168
  %tobool250 = icmp ne i64 %and249, 0, !dbg !3168
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !3168

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !3168

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub253 = sub i64 %58, 1, !dbg !3168
  %and254 = and i64 %sub253, 16384, !dbg !3168
  %tobool255 = icmp ne i64 %and254, 0, !dbg !3168
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !3168

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !3168

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub258 = sub i64 %59, 1, !dbg !3168
  %and259 = and i64 %sub258, 8192, !dbg !3168
  %tobool260 = icmp ne i64 %and259, 0, !dbg !3168
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !3168

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !3168

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub263 = sub i64 %60, 1, !dbg !3168
  %and264 = and i64 %sub263, 4096, !dbg !3168
  %tobool265 = icmp ne i64 %and264, 0, !dbg !3168
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !3168

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !3168

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub268 = sub i64 %61, 1, !dbg !3168
  %and269 = and i64 %sub268, 2048, !dbg !3168
  %tobool270 = icmp ne i64 %and269, 0, !dbg !3168
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !3168

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !3168

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub273 = sub i64 %62, 1, !dbg !3168
  %and274 = and i64 %sub273, 1024, !dbg !3168
  %tobool275 = icmp ne i64 %and274, 0, !dbg !3168
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !3168

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !3168

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub278 = sub i64 %63, 1, !dbg !3168
  %and279 = and i64 %sub278, 512, !dbg !3168
  %tobool280 = icmp ne i64 %and279, 0, !dbg !3168
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !3168

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !3168

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub283 = sub i64 %64, 1, !dbg !3168
  %and284 = and i64 %sub283, 256, !dbg !3168
  %tobool285 = icmp ne i64 %and284, 0, !dbg !3168
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !3168

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !3168

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub288 = sub i64 %65, 1, !dbg !3168
  %and289 = and i64 %sub288, 128, !dbg !3168
  %tobool290 = icmp ne i64 %and289, 0, !dbg !3168
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !3168

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !3168

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub293 = sub i64 %66, 1, !dbg !3168
  %and294 = and i64 %sub293, 64, !dbg !3168
  %tobool295 = icmp ne i64 %and294, 0, !dbg !3168
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !3168

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !3168

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub298 = sub i64 %67, 1, !dbg !3168
  %and299 = and i64 %sub298, 32, !dbg !3168
  %tobool300 = icmp ne i64 %and299, 0, !dbg !3168
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !3168

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !3168

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub303 = sub i64 %68, 1, !dbg !3168
  %and304 = and i64 %sub303, 16, !dbg !3168
  %tobool305 = icmp ne i64 %and304, 0, !dbg !3168
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !3168

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !3168

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub308 = sub i64 %69, 1, !dbg !3168
  %and309 = and i64 %sub308, 8, !dbg !3168
  %tobool310 = icmp ne i64 %and309, 0, !dbg !3168
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !3168

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !3168

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub313 = sub i64 %70, 1, !dbg !3168
  %and314 = and i64 %sub313, 4, !dbg !3168
  %tobool315 = icmp ne i64 %and314, 0, !dbg !3168
  %71 = zext i1 %tobool315 to i64, !dbg !3168
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !3168
  br label %cond.end, !dbg !3168

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !3168
  br label %cond.end317, !dbg !3168

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !3168
  br label %cond.end319, !dbg !3168

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !3168
  br label %cond.end321, !dbg !3168

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !3168
  br label %cond.end323, !dbg !3168

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !3168
  br label %cond.end325, !dbg !3168

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !3168
  br label %cond.end327, !dbg !3168

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !3168
  br label %cond.end329, !dbg !3168

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !3168
  br label %cond.end331, !dbg !3168

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !3168
  br label %cond.end333, !dbg !3168

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !3168
  br label %cond.end335, !dbg !3168

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !3168
  br label %cond.end337, !dbg !3168

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !3168
  br label %cond.end339, !dbg !3168

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !3168
  br label %cond.end341, !dbg !3168

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !3168
  br label %cond.end343, !dbg !3168

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !3168
  br label %cond.end345, !dbg !3168

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !3168
  br label %cond.end347, !dbg !3168

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !3168
  br label %cond.end349, !dbg !3168

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !3168
  br label %cond.end351, !dbg !3168

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !3168
  br label %cond.end353, !dbg !3168

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !3168
  br label %cond.end355, !dbg !3168

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !3168
  br label %cond.end357, !dbg !3168

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !3168
  br label %cond.end359, !dbg !3168

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !3168
  br label %cond.end361, !dbg !3168

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !3168
  br label %cond.end363, !dbg !3168

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !3168
  br label %cond.end365, !dbg !3168

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !3168
  br label %cond.end367, !dbg !3168

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !3168
  br label %cond.end369, !dbg !3168

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !3168
  br label %cond.end371, !dbg !3168

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !3168
  br label %cond.end373, !dbg !3168

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !3168
  br label %cond.end375, !dbg !3168

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !3168
  br label %cond.end377, !dbg !3168

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !3168
  br label %cond.end379, !dbg !3168

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !3168
  br label %cond.end381, !dbg !3168

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !3168
  br label %cond.end383, !dbg !3168

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !3168
  br label %cond.end385, !dbg !3168

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !3168
  br label %cond.end387, !dbg !3168

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !3168
  br label %cond.end389, !dbg !3168

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !3168
  br label %cond.end391, !dbg !3168

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !3168
  br label %cond.end393, !dbg !3168

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !3168
  br label %cond.end395, !dbg !3168

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !3168
  br label %cond.end397, !dbg !3168

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !3168
  br label %cond.end399, !dbg !3168

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !3168
  br label %cond.end401, !dbg !3168

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !3168
  br label %cond.end403, !dbg !3168

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !3168
  br label %cond.end405, !dbg !3168

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !3168
  br label %cond.end407, !dbg !3168

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !3168
  br label %cond.end409, !dbg !3168

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !3168
  br label %cond.end411, !dbg !3168

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !3168
  br label %cond.end413, !dbg !3168

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !3168
  br label %cond.end415, !dbg !3168

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !3168
  br label %cond.end417, !dbg !3168

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !3168
  br label %cond.end419, !dbg !3168

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !3168
  br label %cond.end421, !dbg !3168

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !3168
  br label %cond.end423, !dbg !3168

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !3168
  br label %cond.end425, !dbg !3168

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !3168
  br label %cond.end427, !dbg !3168

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !3168
  br label %cond.end429, !dbg !3168

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !3168
  br label %cond.end431, !dbg !3168

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !3168
  br label %cond.end433, !dbg !3168

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !3168
  br label %cond.end435, !dbg !3168

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !3168
  br label %cond.end437, !dbg !3168

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !3168
  br label %cond.end440, !dbg !3168

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !3168

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !3168
  br label %cond.end444, !dbg !3168

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !3168
  %sub443 = sub i64 %72, 1, !dbg !3168
  %call = call i32 @__ilog2_u64(i64 %sub443) #14, !dbg !3168
  br label %cond.end444, !dbg !3168

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !3168
  %sub446 = sub i32 %cond445, 12, !dbg !3169
  %add = add i32 %sub446, 1, !dbg !3170
  store i32 %add, i32* %retval, align 4, !dbg !3171
  br label %return, !dbg !3171

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !3172
  %dec = add i64 %73, -1, !dbg !3172
  store i64 %dec, i64* %size.addr, align 8, !dbg !3172
  %74 = load i64, i64* %size.addr, align 8, !dbg !3173
  %shr = lshr i64 %74, 12, !dbg !3173
  store i64 %shr, i64* %size.addr, align 8, !dbg !3173
  %75 = load i64, i64* %size.addr, align 8, !dbg !3174
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3151
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !3175
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !3176
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #16, !dbg !3175, !srcloc !3177
  store i32 %78, i32* %bitpos.i, align 4, !dbg !3175
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !3178
  %add.i = add i32 %79, 1, !dbg !3179
  store i32 %add.i, i32* %retval, align 4, !dbg !3180
  br label %return, !dbg !3180

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !3181
  ret i32 %80, !dbg !3181
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #9 !dbg !3182 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3143, metadata !DIExpression()), !dbg !3186
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3150, metadata !DIExpression()), !dbg !3188
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3189, metadata !DIExpression()), !dbg !3190
  %0 = load i64, i64* %n.addr, align 8, !dbg !3191
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3188
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !3192
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !3193
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #16, !dbg !3192, !srcloc !3177
  store i32 %3, i32* %bitpos.i, align 4, !dbg !3192
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !3194
  %add.i = add i32 %4, 1, !dbg !3195
  %sub = sub i32 %add.i, 1, !dbg !3196
  ret i32 %sub, !dbg !3197
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !3198 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !3202, metadata !DIExpression()), !dbg !3203
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !3204, metadata !DIExpression()), !dbg !3205
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3206, metadata !DIExpression()), !dbg !3207
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3208, metadata !DIExpression()), !dbg !3209
  %0 = load i8*, i8** %object.addr, align 8, !dbg !3210
  ret i8* %0, !dbg !3211
}

; Function Attrs: noredzone
declare dso_local i32 @sysfs_emit_at(i8*, i32, i8*, ...) #3

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #7

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #0 !dbg !3212 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !3219, metadata !DIExpression()), !dbg !3221
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !3223, metadata !DIExpression()), !dbg !3224
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !3225, metadata !DIExpression()), !dbg !3226
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !3227, metadata !DIExpression()), !dbg !3229
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !3231, metadata !DIExpression()), !dbg !3232
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !3233, metadata !DIExpression()), !dbg !3241
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3243, metadata !DIExpression()), !dbg !3244
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !3245, metadata !DIExpression()), !dbg !3246
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !3247, metadata !DIExpression()), !dbg !3248
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !3249
  %1 = load i64, i64* %nr.addr, align 8, !dbg !3250
  %div = sdiv i64 %1, 64, !dbg !3250
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !3251
  %2 = bitcast i64* %add.ptr to i8*, !dbg !3249
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !3252
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !3253
  %conv.i = trunc i64 %4 to i32, !dbg !3253
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #15, !dbg !3254
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !3255
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !3255
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #15, !dbg !3255
  %7 = load i64, i64* %nr.addr, align 8, !dbg !3256
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !3256
  br i1 %8, label %cond.true, label %cond.false, !dbg !3256

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !3256
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !3256
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !3257
  %and.i = and i64 %11, 63, !dbg !3258
  %shl.i = shl i64 1, %and.i, !dbg !3259
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !3260
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !3261
  %shr.i = ashr i64 %13, 6, !dbg !3262
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !3260
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !3260
  %and1.i = and i64 %shl.i, %14, !dbg !3263
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !3264
  %conv = zext i1 %cmp.i to i32, !dbg !3256
  br label %cond.end, !dbg !3256

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !3256
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !3256
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !3265
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !3266
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #4, !dbg !3267, !srcloc !3268
  store i8 %19, i8* %oldbit.i, align 1, !dbg !3267
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !3269
  %tobool.i = trunc i8 %20 to i1, !dbg !3269
  %conv2 = zext i1 %tobool.i to i32, !dbg !3256
  br label %cond.end, !dbg !3256

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !3256
  %tobool = icmp ne i32 %cond, 0, !dbg !3256
  ret i1 %tobool, !dbg !3270
}

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !3271 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !3275, metadata !DIExpression()), !dbg !3276
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !3277, metadata !DIExpression()), !dbg !3278
  ret i1 true, !dbg !3279
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !3280 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3284, metadata !DIExpression()), !dbg !3285
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3286, metadata !DIExpression()), !dbg !3287
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !3288, metadata !DIExpression()), !dbg !3289
  ret void, !dbg !3290
}

; Function Attrs: noredzone
declare dso_local void @device_initialize(%struct.device*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @device_create_release(%struct.device* %dev) #0 !dbg !3291 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3292, metadata !DIExpression()), !dbg !3293
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3294
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3294
  call void @kfree(i8* %1) #11, !dbg !3295
  ret void, !dbg !3296
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @device_set_pm_not_required(%struct.device* %dev) #0 !dbg !3297 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3298, metadata !DIExpression()), !dbg !3299
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3300
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !3301
  %no_pm = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 1, !dbg !3302
  %bf.load = load i16, i16* %no_pm, align 4, !dbg !3303
  %bf.clear = and i16 %bf.load, -129, !dbg !3303
  %bf.set = or i16 %bf.clear, 128, !dbg !3303
  store i16 %bf.set, i16* %no_pm, align 4, !dbg !3303
  ret void, !dbg !3304
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #0 !dbg !3305 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3308, metadata !DIExpression()), !dbg !3309
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3310, metadata !DIExpression()), !dbg !3311
  %0 = load i8*, i8** %data.addr, align 8, !dbg !3312
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3313
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !3314
  store i8* %0, i8** %driver_data, align 8, !dbg !3315
  ret void, !dbg !3316
}

; Function Attrs: noredzone
declare dso_local i32 @kobject_set_name_vargs(%struct.kobject*, i8*, %struct.__va_list_tag*) #3

; Function Attrs: noredzone
declare dso_local i32 @device_add(%struct.device*) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !3317 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !3321, metadata !DIExpression()), !dbg !3322
  %0 = load i64, i64* %error.addr, align 8, !dbg !3323
  %1 = inttoptr i64 %0 to i8*, !dbg !3324
  ret i8* %1, !dbg !3325
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @show_cpus_attr(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3326 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %ca = alloca %struct.cpu_attr*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.cpu_attr*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3327, metadata !DIExpression()), !dbg !3328
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3329, metadata !DIExpression()), !dbg !3330
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3331, metadata !DIExpression()), !dbg !3332
  call void @llvm.dbg.declare(metadata %struct.cpu_attr** %ca, metadata !3333, metadata !DIExpression()), !dbg !3334
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3335, metadata !DIExpression()), !dbg !3337
  %0 = load %struct.device_attribute*, %struct.device_attribute** %attr.addr, align 8, !dbg !3337
  %1 = bitcast %struct.device_attribute* %0 to i8*, !dbg !3337
  store i8* %1, i8** %__mptr, align 8, !dbg !3337
  br label %do.body, !dbg !3337

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3338

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3337
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !3337
  %3 = bitcast i8* %add.ptr to %struct.cpu_attr*, !dbg !3337
  store %struct.cpu_attr* %3, %struct.cpu_attr** %tmp, align 8, !dbg !3338
  %4 = load %struct.cpu_attr*, %struct.cpu_attr** %tmp, align 8, !dbg !3337
  store %struct.cpu_attr* %4, %struct.cpu_attr** %ca, align 8, !dbg !3334
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !3340
  %6 = load %struct.cpu_attr*, %struct.cpu_attr** %ca, align 8, !dbg !3341
  %map = getelementptr inbounds %struct.cpu_attr, %struct.cpu_attr* %6, i32 0, i32 1, !dbg !3342
  %7 = load %struct.cpumask*, %struct.cpumask** %map, align 8, !dbg !3342
  %call = call i64 @cpumap_print_to_pagebuf(i1 zeroext true, i8* %5, %struct.cpumask* %7) #11, !dbg !3343
  ret i64 %call, !dbg !3344
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @cpumap_print_to_pagebuf(i1 zeroext %list, i8* %buf, %struct.cpumask* %mask) #0 !dbg !3345 {
entry:
  %list.addr = alloca i8, align 1
  %buf.addr = alloca i8*, align 8
  %mask.addr = alloca %struct.cpumask*, align 8
  %frombool = zext i1 %list to i8
  store i8 %frombool, i8* %list.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %list.addr, metadata !3348, metadata !DIExpression()), !dbg !3349
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3350, metadata !DIExpression()), !dbg !3351
  store %struct.cpumask* %mask, %struct.cpumask** %mask.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpumask** %mask.addr, metadata !3352, metadata !DIExpression()), !dbg !3353
  %0 = load i8, i8* %list.addr, align 1, !dbg !3354
  %tobool = trunc i8 %0 to i1, !dbg !3354
  %1 = load i8*, i8** %buf.addr, align 8, !dbg !3355
  %2 = load %struct.cpumask*, %struct.cpumask** %mask.addr, align 8, !dbg !3356
  %bits = getelementptr inbounds %struct.cpumask, %struct.cpumask* %2, i32 0, i32 0, !dbg !3356
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %bits, i64 0, i64 0, !dbg !3356
  %call = call i32 @bitmap_print_to_pagebuf(i1 zeroext %tobool, i8* %1, i64* %arraydecay, i32 1) #11, !dbg !3357
  %conv = sext i32 %call to i64, !dbg !3357
  ret i64 %conv, !dbg !3358
}

; Function Attrs: noredzone
declare dso_local i32 @bitmap_print_to_pagebuf(i1 zeroext, i8*, i64*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @print_cpus_kernel_max(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3359 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3360, metadata !DIExpression()), !dbg !3361
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3362, metadata !DIExpression()), !dbg !3363
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3364, metadata !DIExpression()), !dbg !3365
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !3366
  %call = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i32 0) #11, !dbg !3367
  %conv = sext i32 %call to i64, !dbg !3367
  ret i64 %conv, !dbg !3368
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @print_cpus_offline(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3369 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  %offline = alloca [1 x %struct.cpumask], align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3370, metadata !DIExpression()), !dbg !3371
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3372, metadata !DIExpression()), !dbg !3373
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3374, metadata !DIExpression()), !dbg !3375
  call void @llvm.dbg.declare(metadata i32* %len, metadata !3376, metadata !DIExpression()), !dbg !3377
  store i32 0, i32* %len, align 4, !dbg !3377
  call void @llvm.dbg.declare(metadata [1 x %struct.cpumask]* %offline, metadata !3378, metadata !DIExpression()), !dbg !3381
  %call = call zeroext i1 @alloc_cpumask_var([1 x %struct.cpumask]* %offline, i32 3264) #11, !dbg !3382
  br i1 %call, label %if.end, label %if.then, !dbg !3384

if.then:                                          ; preds = %entry
  store i64 -12, i64* %retval, align 8, !dbg !3385
  br label %return, !dbg !3385

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %offline, i64 0, i64 0, !dbg !3386
  %call1 = call i32 @cpumask_andnot(%struct.cpumask* %arraydecay, %struct.cpumask* @__cpu_possible_mask, %struct.cpumask* @__cpu_online_mask) #11, !dbg !3387
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !3388
  %1 = load i32, i32* %len, align 4, !dbg !3389
  %arraydecay2 = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %offline, i64 0, i64 0, !dbg !3390
  %bits = getelementptr inbounds %struct.cpumask, %struct.cpumask* %arraydecay2, i32 0, i32 0, !dbg !3390
  %arraydecay3 = getelementptr inbounds [1 x i64], [1 x i64]* %bits, i64 0, i64 0, !dbg !3390
  %call4 = call i32 (i8*, i32, i8*, ...) @sysfs_emit_at(i8* %0, i32 %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i32 1, i64* %arraydecay3) #11, !dbg !3391
  %2 = load i32, i32* %len, align 4, !dbg !3392
  %add = add i32 %2, %call4, !dbg !3392
  store i32 %add, i32* %len, align 4, !dbg !3392
  %arraydecay5 = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %offline, i64 0, i64 0, !dbg !3393
  call void @free_cpumask_var(%struct.cpumask* %arraydecay5) #11, !dbg !3394
  %3 = load i32, i32* @total_cpus, align 4, !dbg !3395
  %tobool = icmp ne i32 %3, 0, !dbg !3395
  br i1 %tobool, label %land.lhs.true, label %if.end17, !dbg !3397

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32, i32* @total_cpus, align 4, !dbg !3398
  %cmp = icmp ult i32 1, %4, !dbg !3399
  br i1 %cmp, label %if.then6, label %if.end17, !dbg !3400

if.then6:                                         ; preds = %land.lhs.true
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !3401
  %6 = load i32, i32* %len, align 4, !dbg !3403
  %call7 = call i32 (i8*, i32, i8*, ...) @sysfs_emit_at(i8* %5, i32 %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0)) #11, !dbg !3404
  %7 = load i32, i32* %len, align 4, !dbg !3405
  %add8 = add i32 %7, %call7, !dbg !3405
  store i32 %add8, i32* %len, align 4, !dbg !3405
  %8 = load i32, i32* @total_cpus, align 4, !dbg !3406
  %sub = sub i32 %8, 1, !dbg !3408
  %cmp9 = icmp eq i32 1, %sub, !dbg !3409
  br i1 %cmp9, label %if.then10, label %if.else, !dbg !3410

if.then10:                                        ; preds = %if.then6
  %9 = load i8*, i8** %buf.addr, align 8, !dbg !3411
  %10 = load i32, i32* %len, align 4, !dbg !3412
  %call11 = call i32 (i8*, i32, i8*, ...) @sysfs_emit_at(i8* %9, i32 %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i32 1) #11, !dbg !3413
  %11 = load i32, i32* %len, align 4, !dbg !3414
  %add12 = add i32 %11, %call11, !dbg !3414
  store i32 %add12, i32* %len, align 4, !dbg !3414
  br label %if.end16, !dbg !3415

if.else:                                          ; preds = %if.then6
  %12 = load i8*, i8** %buf.addr, align 8, !dbg !3416
  %13 = load i32, i32* %len, align 4, !dbg !3417
  %14 = load i32, i32* @total_cpus, align 4, !dbg !3418
  %sub13 = sub i32 %14, 1, !dbg !3419
  %call14 = call i32 (i8*, i32, i8*, ...) @sysfs_emit_at(i8* %12, i32 %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i32 1, i32 %sub13) #11, !dbg !3420
  %15 = load i32, i32* %len, align 4, !dbg !3421
  %add15 = add i32 %15, %call14, !dbg !3421
  store i32 %add15, i32* %len, align 4, !dbg !3421
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then10
  br label %if.end17, !dbg !3422

if.end17:                                         ; preds = %if.end16, %land.lhs.true, %if.end
  %16 = load i8*, i8** %buf.addr, align 8, !dbg !3423
  %17 = load i32, i32* %len, align 4, !dbg !3424
  %call18 = call i32 (i8*, i32, i8*, ...) @sysfs_emit_at(i8* %16, i32 %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #11, !dbg !3425
  %18 = load i32, i32* %len, align 4, !dbg !3426
  %add19 = add i32 %18, %call18, !dbg !3426
  store i32 %add19, i32* %len, align 4, !dbg !3426
  %19 = load i32, i32* %len, align 4, !dbg !3427
  %conv = sext i32 %19 to i64, !dbg !3427
  store i64 %conv, i64* %retval, align 8, !dbg !3428
  br label %return, !dbg !3428

return:                                           ; preds = %if.end17, %if.then
  %20 = load i64, i64* %retval, align 8, !dbg !3429
  ret i64 %20, !dbg !3429
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @alloc_cpumask_var([1 x %struct.cpumask]* %mask, i32 %flags) #0 !dbg !3430 {
entry:
  %mask.addr = alloca [1 x %struct.cpumask]*, align 8
  %flags.addr = alloca i32, align 4
  store [1 x %struct.cpumask]* %mask, [1 x %struct.cpumask]** %mask.addr, align 8
  call void @llvm.dbg.declare(metadata [1 x %struct.cpumask]** %mask.addr, metadata !3434, metadata !DIExpression()), !dbg !3435
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3436, metadata !DIExpression()), !dbg !3437
  ret i1 true, !dbg !3438
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cpumask_andnot(%struct.cpumask* %dstp, %struct.cpumask* %src1p, %struct.cpumask* %src2p) #0 !dbg !3439 {
entry:
  %dstp.addr = alloca %struct.cpumask*, align 8
  %src1p.addr = alloca %struct.cpumask*, align 8
  %src2p.addr = alloca %struct.cpumask*, align 8
  store %struct.cpumask* %dstp, %struct.cpumask** %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpumask** %dstp.addr, metadata !3443, metadata !DIExpression()), !dbg !3444
  store %struct.cpumask* %src1p, %struct.cpumask** %src1p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpumask** %src1p.addr, metadata !3445, metadata !DIExpression()), !dbg !3446
  store %struct.cpumask* %src2p, %struct.cpumask** %src2p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpumask** %src2p.addr, metadata !3447, metadata !DIExpression()), !dbg !3448
  %0 = load %struct.cpumask*, %struct.cpumask** %dstp.addr, align 8, !dbg !3449
  %bits = getelementptr inbounds %struct.cpumask, %struct.cpumask* %0, i32 0, i32 0, !dbg !3449
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %bits, i64 0, i64 0, !dbg !3449
  %1 = load %struct.cpumask*, %struct.cpumask** %src1p.addr, align 8, !dbg !3450
  %bits1 = getelementptr inbounds %struct.cpumask, %struct.cpumask* %1, i32 0, i32 0, !dbg !3450
  %arraydecay2 = getelementptr inbounds [1 x i64], [1 x i64]* %bits1, i64 0, i64 0, !dbg !3450
  %2 = load %struct.cpumask*, %struct.cpumask** %src2p.addr, align 8, !dbg !3451
  %bits3 = getelementptr inbounds %struct.cpumask, %struct.cpumask* %2, i32 0, i32 0, !dbg !3451
  %arraydecay4 = getelementptr inbounds [1 x i64], [1 x i64]* %bits3, i64 0, i64 0, !dbg !3451
  %call = call i32 @bitmap_andnot(i64* %arraydecay, i64* %arraydecay2, i64* %arraydecay4, i32 1) #11, !dbg !3452
  ret i32 %call, !dbg !3453
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @free_cpumask_var(%struct.cpumask* %mask) #0 !dbg !3454 {
entry:
  %mask.addr = alloca %struct.cpumask*, align 8
  store %struct.cpumask* %mask, %struct.cpumask** %mask.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpumask** %mask.addr, metadata !3457, metadata !DIExpression()), !dbg !3458
  ret void, !dbg !3459
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bitmap_andnot(i64* %dst, i64* %src1, i64* %src2, i32 %nbits) #0 !dbg !3460 {
entry:
  %retval = alloca i32, align 4
  %dst.addr = alloca i64*, align 8
  %src1.addr = alloca i64*, align 8
  %src2.addr = alloca i64*, align 8
  %nbits.addr = alloca i32, align 4
  store i64* %dst, i64** %dst.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %dst.addr, metadata !3466, metadata !DIExpression()), !dbg !3467
  store i64* %src1, i64** %src1.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %src1.addr, metadata !3468, metadata !DIExpression()), !dbg !3469
  store i64* %src2, i64** %src2.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %src2.addr, metadata !3470, metadata !DIExpression()), !dbg !3471
  store i32 %nbits, i32* %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nbits.addr, metadata !3472, metadata !DIExpression()), !dbg !3473
  %0 = load i32, i32* %nbits.addr, align 4, !dbg !3474
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !3474
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !3474

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %nbits.addr, align 4, !dbg !3474
  %cmp = icmp ule i32 %2, 64, !dbg !3474
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !3474

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, i32* %nbits.addr, align 4, !dbg !3474
  %cmp2 = icmp ugt i32 %3, 0, !dbg !3474
  br i1 %cmp2, label %if.then, label %if.end, !dbg !3476

if.then:                                          ; preds = %land.lhs.true1
  %4 = load i64*, i64** %src1.addr, align 8, !dbg !3477
  %5 = load i64, i64* %4, align 8, !dbg !3478
  %6 = load i64*, i64** %src2.addr, align 8, !dbg !3479
  %7 = load i64, i64* %6, align 8, !dbg !3480
  %neg = xor i64 %7, -1, !dbg !3481
  %and = and i64 %5, %neg, !dbg !3482
  %8 = load i32, i32* %nbits.addr, align 4, !dbg !3483
  %sub = sub i32 0, %8, !dbg !3483
  %and3 = and i32 %sub, 63, !dbg !3483
  %sh_prom = zext i32 %and3 to i64, !dbg !3483
  %shr = lshr i64 -1, %sh_prom, !dbg !3483
  %and4 = and i64 %and, %shr, !dbg !3484
  %9 = load i64*, i64** %dst.addr, align 8, !dbg !3485
  store i64 %and4, i64* %9, align 8, !dbg !3486
  %cmp5 = icmp ne i64 %and4, 0, !dbg !3487
  %conv = zext i1 %cmp5 to i32, !dbg !3487
  store i32 %conv, i32* %retval, align 4, !dbg !3488
  br label %return, !dbg !3488

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %10 = load i64*, i64** %dst.addr, align 8, !dbg !3489
  %11 = load i64*, i64** %src1.addr, align 8, !dbg !3490
  %12 = load i64*, i64** %src2.addr, align 8, !dbg !3491
  %13 = load i32, i32* %nbits.addr, align 4, !dbg !3492
  %call = call i32 @__bitmap_andnot(i64* %10, i64* %11, i64* %12, i32 %13) #11, !dbg !3493
  store i32 %call, i32* %retval, align 4, !dbg !3494
  br label %return, !dbg !3494

return:                                           ; preds = %if.end, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !3495
  ret i32 %14, !dbg !3495
}

; Function Attrs: noredzone
declare dso_local i32 @__bitmap_andnot(i64*, i64*, i64*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @print_cpus_isolated(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3496 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  %isolated = alloca [1 x %struct.cpumask], align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3497, metadata !DIExpression()), !dbg !3498
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3499, metadata !DIExpression()), !dbg !3500
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3501, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.declare(metadata i32* %len, metadata !3503, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.declare(metadata [1 x %struct.cpumask]* %isolated, metadata !3505, metadata !DIExpression()), !dbg !3506
  %call = call zeroext i1 @alloc_cpumask_var([1 x %struct.cpumask]* %isolated, i32 3264) #11, !dbg !3507
  br i1 %call, label %if.end, label %if.then, !dbg !3509

if.then:                                          ; preds = %entry
  store i64 -12, i64* %retval, align 8, !dbg !3510
  br label %return, !dbg !3510

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %isolated, i64 0, i64 0, !dbg !3511
  %call1 = call %struct.cpumask* @housekeeping_cpumask(i32 32) #11, !dbg !3512
  %call2 = call i32 @cpumask_andnot(%struct.cpumask* %arraydecay, %struct.cpumask* @__cpu_possible_mask, %struct.cpumask* %call1) #11, !dbg !3513
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !3514
  %arraydecay3 = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %isolated, i64 0, i64 0, !dbg !3515
  %bits = getelementptr inbounds %struct.cpumask, %struct.cpumask* %arraydecay3, i32 0, i32 0, !dbg !3515
  %arraydecay4 = getelementptr inbounds [1 x i64], [1 x i64]* %bits, i64 0, i64 0, !dbg !3515
  %call5 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i32 1, i64* %arraydecay4) #11, !dbg !3516
  store i32 %call5, i32* %len, align 4, !dbg !3517
  %arraydecay6 = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %isolated, i64 0, i64 0, !dbg !3518
  call void @free_cpumask_var(%struct.cpumask* %arraydecay6) #11, !dbg !3519
  %1 = load i32, i32* %len, align 4, !dbg !3520
  %conv = sext i32 %1 to i64, !dbg !3520
  store i64 %conv, i64* %retval, align 8, !dbg !3521
  br label %return, !dbg !3521

return:                                           ; preds = %if.end, %if.then
  %2 = load i64, i64* %retval, align 8, !dbg !3522
  ret i64 %2, !dbg !3522
}

; Function Attrs: noredzone
declare dso_local %struct.cpumask* @housekeeping_cpumask(i32) #3

; Function Attrs: noredzone
declare dso_local i32 @sysfs_create_group(%struct.kobject*, %struct.attribute_group*) #3

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #10

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { cold noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone willreturn }
attributes #8 = { nounwind willreturn }
attributes #9 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noredzone }
attributes #12 = { cold noredzone noreturn }
attributes #13 = { cold noredzone }
attributes #14 = { noredzone nounwind readnone }
attributes #15 = { noredzone nounwind }
attributes #16 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2387, !2388, !2389, !2390}
!llvm.ident = !{!2391}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "cpu_subsys", scope: !2, file: !3, line: 128, type: !1656, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !105, globals: !2333, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/base/cpu.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !56, !63, !67, !81, !88, !93}
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
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !82, line: 305, baseType: !7, size: 32, elements: !83)
!82 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!83 = !{!84, !85, !86, !87}
!84 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!85 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!86 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!87 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!88 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !89, line: 10, baseType: !7, size: 32, elements: !90)
!89 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!90 = !{!91, !92}
!91 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!92 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hk_flags", file: !94, line: 8, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/sched/isolation.h", directory: "/home/lizy2001/genbc/linux")
!95 = !{!96, !97, !98, !99, !100, !101, !102, !103, !104}
!96 = !DIEnumerator(name: "HK_FLAG_TIMER", value: 1, isUnsigned: true)
!97 = !DIEnumerator(name: "HK_FLAG_RCU", value: 2, isUnsigned: true)
!98 = !DIEnumerator(name: "HK_FLAG_MISC", value: 4, isUnsigned: true)
!99 = !DIEnumerator(name: "HK_FLAG_SCHED", value: 8, isUnsigned: true)
!100 = !DIEnumerator(name: "HK_FLAG_TICK", value: 16, isUnsigned: true)
!101 = !DIEnumerator(name: "HK_FLAG_DOMAIN", value: 32, isUnsigned: true)
!102 = !DIEnumerator(name: "HK_FLAG_WQ", value: 64, isUnsigned: true)
!103 = !DIEnumerator(name: "HK_FLAG_MANAGED_IRQ", value: 128, isUnsigned: true)
!104 = !DIEnumerator(name: "HK_FLAG_KTHREAD", value: 256, isUnsigned: true)
!105 = !{!106, !249, !679, !449, !2306, !1493, !2221, !2313, !2331, !7}
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !109)
!109 = !{!110, !1621, !1622, !1862, !1863, !1877, !1878, !1879, !1880, !1881, !1882, !1891, !2053, !2066, !2262, !2263, !2267, !2269, !2270, !2271, !2275, !2281, !2282, !2285, !2286, !2287, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2299, !2302, !2303, !2304, !2305}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !108, file: !30, line: 462, baseType: !111, size: 512)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !112, line: 64, size: 512, elements: !113)
!112 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!113 = !{!114, !118, !125, !127, !188, !1457, !1611, !1616, !1617, !1618, !1619, !1620}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !111, file: !112, line: 65, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!117 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !111, file: !112, line: 66, baseType: !119, size: 128, offset: 64)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !120, line: 178, size: 128, elements: !121)
!120 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!121 = !{!122, !124}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !119, file: !120, line: 179, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !119, file: !120, line: 179, baseType: !123, size: 64, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !111, file: !112, line: 67, baseType: !126, size: 64, offset: 192)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !111, file: !112, line: 68, baseType: !128, size: 64, offset: 256)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !112, line: 192, size: 704, elements: !130)
!130 = !{!131, !132, !148, !149}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !129, file: !112, line: 193, baseType: !119, size: 128)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !129, file: !112, line: 194, baseType: !133, offset: 128)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !134, line: 83, baseType: !135)
!134 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !134, line: 71, elements: !136)
!136 = !{!137}
!137 = !DIDerivedType(tag: DW_TAG_member, scope: !135, file: !134, line: 72, baseType: !138)
!138 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !135, file: !134, line: 72, elements: !139)
!139 = !{!140}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !138, file: !134, line: 73, baseType: !141)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !134, line: 20, elements: !142)
!142 = !{!143}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !141, file: !134, line: 21, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !145, line: 25, baseType: !146)
!145 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !145, line: 25, elements: !147)
!147 = !{}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !129, file: !112, line: 195, baseType: !111, size: 512, offset: 128)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !129, file: !112, line: 196, baseType: !150, size: 64, offset: 640)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !112, line: 156, size: 192, elements: !153)
!153 = !{!154, !160, !165}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !152, file: !112, line: 157, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{!159, !128, !126}
!159 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !152, file: !112, line: 158, baseType: !161, size: 64, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !162)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{!115, !128, !126}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !152, file: !112, line: 159, baseType: !166, size: 64, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DISubroutineType(types: !169)
!169 = !{!159, !128, !126, !170}
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !112, line: 148, size: 20736, elements: !172)
!172 = !{!173, !178, !182, !183, !187}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !171, file: !112, line: 149, baseType: !174, size: 192)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 192, elements: !176)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!176 = !{!177}
!177 = !DISubrange(count: 3)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !171, file: !112, line: 150, baseType: !179, size: 4096, offset: 192)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 4096, elements: !180)
!180 = !{!181}
!181 = !DISubrange(count: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !171, file: !112, line: 151, baseType: !159, size: 32, offset: 4288)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !171, file: !112, line: 152, baseType: !184, size: 16384, offset: 4320)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 16384, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 2048)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !171, file: !112, line: 153, baseType: !159, size: 32, offset: 20704)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !111, file: !112, line: 69, baseType: !189, size: 64, offset: 320)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !112, line: 138, size: 448, elements: !191)
!191 = !{!192, !196, !226, !228, !1405, !1436, !1440}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !190, file: !112, line: 139, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DISubroutineType(types: !195)
!195 = !{null, !126}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !190, file: !112, line: 140, baseType: !197, size: 64, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !199)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !200, line: 230, size: 128, elements: !201)
!200 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!201 = !{!202, !218}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !199, file: !200, line: 231, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DISubroutineType(types: !205)
!205 = !{!206, !126, !211, !175}
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !120, line: 60, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !208, line: 73, baseType: !209)
!208 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !208, line: 15, baseType: !210)
!210 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !200, line: 30, size: 128, elements: !213)
!213 = !{!214, !215}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !212, file: !200, line: 31, baseType: !115, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !212, file: !200, line: 32, baseType: !216, size: 16, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !120, line: 19, baseType: !217)
!217 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !199, file: !200, line: 232, baseType: !219, size: 64, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{!206, !126, !211, !115, !222}
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !120, line: 55, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !208, line: 72, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !208, line: 16, baseType: !225)
!225 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !190, file: !112, line: 141, baseType: !227, size: 64, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !190, file: !112, line: 142, baseType: !229, size: 64, offset: 192)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !232)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !200, line: 84, size: 320, elements: !233)
!233 = !{!234, !235, !239, !1402, !1403}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !232, file: !200, line: 85, baseType: !115, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !232, file: !200, line: 86, baseType: !236, size: 64, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{!216, !126, !211, !159}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !232, file: !200, line: 88, baseType: !240, size: 64, offset: 128)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{!216, !126, !243, !159}
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !200, line: 168, size: 448, elements: !245)
!245 = !{!246, !247, !248, !250, !260, !261}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !244, file: !200, line: 169, baseType: !212, size: 128)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !244, file: !200, line: 170, baseType: !222, size: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !244, file: !200, line: 171, baseType: !249, size: 64, offset: 192)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !244, file: !200, line: 172, baseType: !251, size: 64, offset: 256)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DISubroutineType(types: !253)
!253 = !{!206, !254, !126, !243, !175, !257, !222}
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !256, line: 526, flags: DIFlagFwdDecl)
!256 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !120, line: 46, baseType: !258)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !208, line: 88, baseType: !259)
!259 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !244, file: !200, line: 174, baseType: !251, size: 64, offset: 320)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !244, file: !200, line: 176, baseType: !262, size: 64, offset: 384)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{!159, !254, !126, !243, !265}
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !267, line: 305, size: 1472, elements: !268)
!267 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!268 = !{!269, !270, !271, !272, !273, !281, !282, !1376, !1382, !1383, !1388, !1389, !1392, !1396, !1397, !1398, !1399, !1400}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !266, file: !267, line: 308, baseType: !225, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !266, file: !267, line: 309, baseType: !225, size: 64, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !266, file: !267, line: 313, baseType: !265, size: 64, offset: 128)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !266, file: !267, line: 313, baseType: !265, size: 64, offset: 192)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !266, file: !267, line: 315, baseType: !274, size: 192, align: 64, offset: 256)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !275, line: 24, size: 192, align: 64, elements: !276)
!275 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!276 = !{!277, !278, !280}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !274, file: !275, line: 25, baseType: !225, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !274, file: !275, line: 26, baseType: !279, size: 64, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !274, file: !275, line: 27, baseType: !279, size: 64, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !266, file: !267, line: 323, baseType: !225, size: 64, offset: 448)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !266, file: !267, line: 327, baseType: !283, size: 64, offset: 512)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !267, line: 388, size: 7296, elements: !285)
!285 = !{!286, !1372}
!286 = !DIDerivedType(tag: DW_TAG_member, scope: !284, file: !267, line: 389, baseType: !287, size: 7296)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !284, file: !267, line: 389, size: 7296, elements: !288)
!288 = !{!289, !290, !294, !300, !304, !305, !306, !307, !308, !316, !321, !322, !323, !324, !333, !334, !335, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !370, !378, !381, !429, !430, !1342, !1343, !1346, !1350, !1351, !1354, !1355, !1356, !1359, !1371}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !287, file: !267, line: 390, baseType: !265, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !287, file: !267, line: 391, baseType: !291, size: 64, offset: 64)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !275, line: 31, size: 64, elements: !292)
!292 = !{!293}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !291, file: !275, line: 32, baseType: !279, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !287, file: !267, line: 392, baseType: !295, size: 64, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !296, line: 23, baseType: !297)
!296 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !298, line: 31, baseType: !299)
!298 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!299 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !287, file: !267, line: 394, baseType: !301, size: 64, offset: 192)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{!225, !254, !225, !225, !225, !225}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !287, file: !267, line: 398, baseType: !225, size: 64, offset: 256)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !287, file: !267, line: 399, baseType: !225, size: 64, offset: 320)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !287, file: !267, line: 405, baseType: !225, size: 64, offset: 384)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !287, file: !267, line: 406, baseType: !225, size: 64, offset: 448)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !287, file: !267, line: 407, baseType: !309, size: 64, offset: 512)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !256, line: 286, baseType: !311)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !256, line: 286, size: 64, elements: !312)
!312 = !{!313}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !311, file: !256, line: 286, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !315, line: 18, baseType: !225)
!315 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!316 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !287, file: !267, line: 416, baseType: !317, size: 32, offset: 576)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !120, line: 168, baseType: !318)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !120, line: 166, size: 32, elements: !319)
!319 = !{!320}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !318, file: !120, line: 167, baseType: !159, size: 32)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !287, file: !267, line: 428, baseType: !317, size: 32, offset: 608)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !287, file: !267, line: 437, baseType: !317, size: 32, offset: 640)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !287, file: !267, line: 447, baseType: !317, size: 32, offset: 672)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !287, file: !267, line: 450, baseType: !325, size: 64, offset: 704)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !326, line: 13, baseType: !327)
!326 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !120, line: 175, baseType: !328)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !120, line: 173, size: 64, elements: !329)
!329 = !{!330}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !328, file: !120, line: 174, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !296, line: 22, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !298, line: 30, baseType: !259)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !287, file: !267, line: 452, baseType: !159, size: 32, offset: 768)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !287, file: !267, line: 454, baseType: !133, offset: 800)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !287, file: !267, line: 457, baseType: !336, size: 256, offset: 832)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !337, line: 35, size: 256, elements: !338)
!337 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!338 = !{!339, !340, !341, !343}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !336, file: !337, line: 36, baseType: !325, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !336, file: !337, line: 42, baseType: !325, size: 64, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !336, file: !337, line: 46, baseType: !342, offset: 128)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !134, line: 29, baseType: !141)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !336, file: !337, line: 47, baseType: !119, size: 128, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !287, file: !267, line: 459, baseType: !119, size: 128, offset: 1088)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !287, file: !267, line: 466, baseType: !225, size: 64, offset: 1216)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !287, file: !267, line: 467, baseType: !225, size: 64, offset: 1280)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !287, file: !267, line: 469, baseType: !225, size: 64, offset: 1344)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !287, file: !267, line: 470, baseType: !225, size: 64, offset: 1408)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !287, file: !267, line: 471, baseType: !327, size: 64, offset: 1472)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !287, file: !267, line: 472, baseType: !225, size: 64, offset: 1536)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !287, file: !267, line: 473, baseType: !225, size: 64, offset: 1600)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !287, file: !267, line: 474, baseType: !225, size: 64, offset: 1664)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !287, file: !267, line: 475, baseType: !225, size: 64, offset: 1728)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !287, file: !267, line: 477, baseType: !133, offset: 1792)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !287, file: !267, line: 478, baseType: !225, size: 64, offset: 1792)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !287, file: !267, line: 478, baseType: !225, size: 64, offset: 1856)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !287, file: !267, line: 478, baseType: !225, size: 64, offset: 1920)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !287, file: !267, line: 478, baseType: !225, size: 64, offset: 1984)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !287, file: !267, line: 479, baseType: !225, size: 64, offset: 2048)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !287, file: !267, line: 479, baseType: !225, size: 64, offset: 2112)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !287, file: !267, line: 479, baseType: !225, size: 64, offset: 2176)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !287, file: !267, line: 480, baseType: !225, size: 64, offset: 2240)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !287, file: !267, line: 480, baseType: !225, size: 64, offset: 2304)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !287, file: !267, line: 480, baseType: !225, size: 64, offset: 2368)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !287, file: !267, line: 480, baseType: !225, size: 64, offset: 2432)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !287, file: !267, line: 482, baseType: !367, size: 2816, offset: 2496)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 2816, elements: !368)
!368 = !{!369}
!369 = !DISubrange(count: 44)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !287, file: !267, line: 488, baseType: !371, size: 256, offset: 5312)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !372, line: 60, size: 256, elements: !373)
!372 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!373 = !{!374}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !371, file: !372, line: 61, baseType: !375, size: 256)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 256, elements: !376)
!376 = !{!377}
!377 = !DISubrange(count: 4)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !287, file: !267, line: 490, baseType: !379, size: 64, offset: 5568)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !267, line: 490, flags: DIFlagFwdDecl)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !287, file: !267, line: 493, baseType: !382, size: 896, offset: 5632)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !383, line: 53, baseType: !384)
!383 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !383, line: 13, size: 896, elements: !385)
!385 = !{!386, !387, !388, !389, !392, !393, !400, !401, !421, !422, !425}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !384, file: !383, line: 18, baseType: !295, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !384, file: !383, line: 28, baseType: !327, size: 64, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !384, file: !383, line: 31, baseType: !336, size: 256, offset: 128)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !384, file: !383, line: 32, baseType: !390, size: 64, offset: 384)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !383, line: 32, flags: DIFlagFwdDecl)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !384, file: !383, line: 37, baseType: !217, size: 16, offset: 448)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !384, file: !383, line: 40, baseType: !394, size: 192, offset: 512)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !395, line: 53, size: 192, elements: !396)
!395 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!396 = !{!397, !398, !399}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !394, file: !395, line: 54, baseType: !325, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !394, file: !395, line: 55, baseType: !133, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !394, file: !395, line: 59, baseType: !119, size: 128, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !384, file: !383, line: 41, baseType: !249, size: 64, offset: 704)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !384, file: !383, line: 42, baseType: !402, size: 64, offset: 768)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !404)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !405, line: 13, size: 896, elements: !406)
!405 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!406 = !{!407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !404, file: !405, line: 14, baseType: !249, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !404, file: !405, line: 15, baseType: !225, size: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !404, file: !405, line: 17, baseType: !225, size: 64, offset: 128)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !404, file: !405, line: 17, baseType: !225, size: 64, offset: 192)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !404, file: !405, line: 19, baseType: !210, size: 64, offset: 256)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !404, file: !405, line: 21, baseType: !210, size: 64, offset: 320)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !404, file: !405, line: 22, baseType: !210, size: 64, offset: 384)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !404, file: !405, line: 23, baseType: !210, size: 64, offset: 448)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !404, file: !405, line: 24, baseType: !210, size: 64, offset: 512)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !404, file: !405, line: 25, baseType: !210, size: 64, offset: 576)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !404, file: !405, line: 26, baseType: !210, size: 64, offset: 640)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !404, file: !405, line: 27, baseType: !210, size: 64, offset: 704)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !404, file: !405, line: 28, baseType: !210, size: 64, offset: 768)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !404, file: !405, line: 29, baseType: !210, size: 64, offset: 832)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !384, file: !383, line: 44, baseType: !317, size: 32, offset: 832)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !384, file: !383, line: 50, baseType: !423, size: 16, offset: 864)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !296, line: 19, baseType: !424)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !298, line: 24, baseType: !217)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !384, file: !383, line: 51, baseType: !426, size: 16, offset: 880)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !296, line: 18, baseType: !427)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !298, line: 23, baseType: !428)
!428 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !287, file: !267, line: 495, baseType: !225, size: 64, offset: 6528)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !287, file: !267, line: 497, baseType: !431, size: 64, offset: 6592)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !267, line: 381, size: 384, elements: !433)
!433 = !{!434, !435, !1341}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !432, file: !267, line: 382, baseType: !317, size: 32)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !432, file: !267, line: 383, baseType: !436, size: 128, offset: 64)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !267, line: 376, size: 128, elements: !437)
!437 = !{!438, !1339}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !436, file: !267, line: 377, baseType: !439, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !441, line: 640, size: 48640, elements: !442)
!441 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!442 = !{!443, !451, !453, !454, !460, !461, !462, !463, !464, !465, !466, !467, !471, !489, !500, !595, !596, !597, !608, !609, !611, !612, !613, !614, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !693, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !749, !751, !752, !753, !765, !767, !768, !769, !770, !771, !777, !778, !779, !780, !781, !782, !783, !795, !800, !805, !806, !807, !810, !814, !817, !820, !823, !826, !830, !833, !836, !842, !843, !844, !850, !851, !852, !853, !854, !863, !864, !865, !866, !867, !872, !873, !874, !877, !878, !881, !884, !887, !890, !893, !896, !897, !977, !980, !983, !984, !987, !988, !989, !995, !996, !997, !1010, !1011, !1012, !1024, !1029, !1032, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !440, file: !441, line: 646, baseType: !444, size: 128)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !445, line: 56, size: 128, elements: !446)
!445 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!446 = !{!447, !448}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !444, file: !445, line: 57, baseType: !225, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !444, file: !445, line: 58, baseType: !449, size: 32, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !296, line: 21, baseType: !450)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !298, line: 27, baseType: !7)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !440, file: !441, line: 649, baseType: !452, size: 64, offset: 128)
!452 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !210)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !440, file: !441, line: 657, baseType: !249, size: 64, offset: 192)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !440, file: !441, line: 658, baseType: !455, size: 32, offset: 256)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !456, line: 113, baseType: !457)
!456 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !456, line: 111, size: 32, elements: !458)
!458 = !{!459}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !457, file: !456, line: 112, baseType: !317, size: 32)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !440, file: !441, line: 660, baseType: !7, size: 32, offset: 288)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !440, file: !441, line: 661, baseType: !7, size: 32, offset: 320)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !440, file: !441, line: 684, baseType: !159, size: 32, offset: 352)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !440, file: !441, line: 686, baseType: !159, size: 32, offset: 384)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !440, file: !441, line: 687, baseType: !159, size: 32, offset: 416)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !440, file: !441, line: 688, baseType: !159, size: 32, offset: 448)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !440, file: !441, line: 689, baseType: !7, size: 32, offset: 480)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !440, file: !441, line: 691, baseType: !468, size: 64, offset: 512)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !470)
!470 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !441, line: 691, flags: DIFlagFwdDecl)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !440, file: !441, line: 692, baseType: !472, size: 832, offset: 576)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !441, line: 451, size: 832, elements: !473)
!473 = !{!474, !479, !480, !481, !482, !483, !484, !485, !486, !487}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !472, file: !441, line: 453, baseType: !475, size: 128)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !441, line: 325, size: 128, elements: !476)
!476 = !{!477, !478}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !475, file: !441, line: 326, baseType: !225, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !475, file: !441, line: 327, baseType: !449, size: 32, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !472, file: !441, line: 454, baseType: !274, size: 192, align: 64, offset: 128)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !472, file: !441, line: 455, baseType: !119, size: 128, offset: 320)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !472, file: !441, line: 456, baseType: !7, size: 32, offset: 448)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !472, file: !441, line: 458, baseType: !295, size: 64, offset: 512)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !472, file: !441, line: 459, baseType: !295, size: 64, offset: 576)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !472, file: !441, line: 460, baseType: !295, size: 64, offset: 640)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !472, file: !441, line: 461, baseType: !295, size: 64, offset: 704)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !472, file: !441, line: 463, baseType: !295, size: 64, offset: 768)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !472, file: !441, line: 465, baseType: !488, offset: 832)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !441, line: 415, elements: !147)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !440, file: !441, line: 693, baseType: !490, size: 384, offset: 1408)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !441, line: 489, size: 384, elements: !491)
!491 = !{!492, !493, !494, !495, !496, !497, !498}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !490, file: !441, line: 490, baseType: !119, size: 128)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !490, file: !441, line: 491, baseType: !225, size: 64, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !490, file: !441, line: 492, baseType: !225, size: 64, offset: 192)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !490, file: !441, line: 493, baseType: !7, size: 32, offset: 256)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !490, file: !441, line: 494, baseType: !217, size: 16, offset: 288)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !490, file: !441, line: 495, baseType: !217, size: 16, offset: 304)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !490, file: !441, line: 497, baseType: !499, size: 64, offset: 320)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !440, file: !441, line: 697, baseType: !501, size: 1792, offset: 1792)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !441, line: 507, size: 1792, elements: !502)
!502 = !{!503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !592, !593}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !501, file: !441, line: 508, baseType: !274, size: 192, align: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !501, file: !441, line: 515, baseType: !295, size: 64, offset: 192)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !501, file: !441, line: 516, baseType: !295, size: 64, offset: 256)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !501, file: !441, line: 517, baseType: !295, size: 64, offset: 320)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !501, file: !441, line: 518, baseType: !295, size: 64, offset: 384)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !501, file: !441, line: 519, baseType: !295, size: 64, offset: 448)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !501, file: !441, line: 526, baseType: !331, size: 64, offset: 512)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !501, file: !441, line: 527, baseType: !295, size: 64, offset: 576)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !501, file: !441, line: 528, baseType: !7, size: 32, offset: 640)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !501, file: !441, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !501, file: !441, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !501, file: !441, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !501, file: !441, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !501, file: !441, line: 563, baseType: !517, size: 512, offset: 704)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !518)
!518 = !{!519, !527, !528, !533, !585, !589, !590, !591}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !517, file: !6, line: 119, baseType: !520, size: 256)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !521, line: 9, size: 256, elements: !522)
!521 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!522 = !{!523, !524}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !520, file: !521, line: 10, baseType: !274, size: 192, align: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !520, file: !521, line: 11, baseType: !525, size: 64, offset: 192)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !526, line: 29, baseType: !331)
!526 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!527 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !517, file: !6, line: 120, baseType: !525, size: 64, offset: 256)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !517, file: !6, line: 121, baseType: !529, size: 64, offset: 320)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{!5, !532}
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !517, file: !6, line: 122, baseType: !534, size: 64, offset: 384)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !536)
!536 = !{!537, !557, !558, !561, !571, !572, !580, !584}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !535, file: !6, line: 160, baseType: !538, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !540)
!540 = !{!541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !539, file: !6, line: 215, baseType: !342)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !539, file: !6, line: 216, baseType: !7, size: 32)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !539, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !539, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !539, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !539, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !539, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !539, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !539, file: !6, line: 233, baseType: !525, size: 64, offset: 128)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !539, file: !6, line: 234, baseType: !532, size: 64, offset: 192)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !539, file: !6, line: 235, baseType: !525, size: 64, offset: 256)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !539, file: !6, line: 236, baseType: !532, size: 64, offset: 320)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !539, file: !6, line: 237, baseType: !554, size: 4096, offset: 512)
!554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !535, size: 4096, elements: !555)
!555 = !{!556}
!556 = !DISubrange(count: 8)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !535, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !535, file: !6, line: 162, baseType: !559, size: 32, offset: 96)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !120, line: 27, baseType: !560)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !208, line: 96, baseType: !159)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !535, file: !6, line: 163, baseType: !562, size: 32, offset: 128)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !563, line: 276, baseType: !564)
!563 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !563, line: 276, size: 32, elements: !565)
!565 = !{!566}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !564, file: !563, line: 276, baseType: !567, size: 32)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !563, line: 70, baseType: !568)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !563, line: 65, size: 32, elements: !569)
!569 = !{!570}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !568, file: !563, line: 66, baseType: !7, size: 32)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !535, file: !6, line: 164, baseType: !532, size: 64, offset: 192)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !535, file: !6, line: 165, baseType: !573, size: 128, offset: 256)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !521, line: 14, size: 128, elements: !574)
!574 = !{!575}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !573, file: !521, line: 15, baseType: !576, size: 128)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !275, line: 125, size: 128, elements: !577)
!577 = !{!578, !579}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !576, file: !275, line: 126, baseType: !291, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !576, file: !275, line: 127, baseType: !279, size: 64, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !535, file: !6, line: 166, baseType: !581, size: 64, offset: 384)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{!525}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !535, file: !6, line: 167, baseType: !525, size: 64, offset: 448)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !517, file: !6, line: 123, baseType: !586, size: 8, offset: 448)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !296, line: 17, baseType: !587)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !298, line: 21, baseType: !588)
!588 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !517, file: !6, line: 124, baseType: !586, size: 8, offset: 456)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !517, file: !6, line: 125, baseType: !586, size: 8, offset: 464)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !517, file: !6, line: 126, baseType: !586, size: 8, offset: 472)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !501, file: !441, line: 572, baseType: !517, size: 512, offset: 1216)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !501, file: !441, line: 580, baseType: !594, size: 64, offset: 1728)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !440, file: !441, line: 721, baseType: !7, size: 32, offset: 3584)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !440, file: !441, line: 722, baseType: !159, size: 32, offset: 3616)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !440, file: !441, line: 723, baseType: !598, size: 64, offset: 3648)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !600)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !601, line: 17, baseType: !602)
!601 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !601, line: 17, size: 64, elements: !603)
!603 = !{!604}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !602, file: !601, line: 17, baseType: !605, size: 64)
!605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 64, elements: !606)
!606 = !{!607}
!607 = !DISubrange(count: 1)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !440, file: !441, line: 724, baseType: !600, size: 64, offset: 3712)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !440, file: !441, line: 749, baseType: !610, offset: 3776)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !441, line: 290, elements: !147)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !440, file: !441, line: 751, baseType: !119, size: 128, offset: 3776)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !440, file: !441, line: 757, baseType: !283, size: 64, offset: 3904)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !440, file: !441, line: 758, baseType: !283, size: 64, offset: 3968)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !440, file: !441, line: 761, baseType: !615, size: 320, offset: 4032)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !372, line: 34, size: 320, elements: !616)
!616 = !{!617, !618}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !615, file: !372, line: 35, baseType: !295, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !615, file: !372, line: 36, baseType: !619, size: 256, offset: 64)
!619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 256, elements: !376)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !440, file: !441, line: 766, baseType: !159, size: 32, offset: 4352)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !440, file: !441, line: 767, baseType: !159, size: 32, offset: 4384)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !440, file: !441, line: 768, baseType: !159, size: 32, offset: 4416)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !440, file: !441, line: 770, baseType: !159, size: 32, offset: 4448)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !440, file: !441, line: 772, baseType: !225, size: 64, offset: 4480)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !440, file: !441, line: 775, baseType: !7, size: 32, offset: 4544)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !440, file: !441, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !440, file: !441, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !440, file: !441, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !440, file: !441, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !440, file: !441, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !440, file: !441, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !440, file: !441, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !440, file: !441, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !440, file: !441, line: 831, baseType: !225, size: 64, offset: 4672)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !440, file: !441, line: 833, baseType: !636, size: 384, offset: 4736)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !637)
!637 = !{!638, !643}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !636, file: !12, line: 26, baseType: !639, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!210, !642}
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, scope: !636, file: !12, line: 27, baseType: !644, size: 320, offset: 64)
!644 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !636, file: !12, line: 27, size: 320, elements: !645)
!645 = !{!646, !656, !683}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !644, file: !12, line: 36, baseType: !647, size: 320)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !644, file: !12, line: 29, size: 320, elements: !648)
!648 = !{!649, !651, !652, !653, !654, !655}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !647, file: !12, line: 30, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !647, file: !12, line: 31, baseType: !449, size: 32, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !647, file: !12, line: 32, baseType: !449, size: 32, offset: 96)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !647, file: !12, line: 33, baseType: !449, size: 32, offset: 128)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !647, file: !12, line: 34, baseType: !295, size: 64, offset: 192)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !647, file: !12, line: 35, baseType: !650, size: 64, offset: 256)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !644, file: !12, line: 46, baseType: !657, size: 192)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !644, file: !12, line: 38, size: 192, elements: !658)
!658 = !{!659, !660, !661, !682}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !657, file: !12, line: 39, baseType: !559, size: 32)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !657, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!661 = !DIDerivedType(tag: DW_TAG_member, scope: !657, file: !12, line: 41, baseType: !662, size: 64, offset: 64)
!662 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !657, file: !12, line: 41, size: 64, elements: !663)
!663 = !{!664, !672}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !662, file: !12, line: 42, baseType: !665, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !667, line: 7, size: 128, elements: !668)
!667 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!668 = !{!669, !671}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !666, file: !667, line: 8, baseType: !670, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !208, line: 93, baseType: !259)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !666, file: !667, line: 9, baseType: !259, size: 64, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !662, file: !12, line: 43, baseType: !673, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !675, line: 7, size: 64, elements: !676)
!675 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!676 = !{!677, !681}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !674, file: !675, line: 8, baseType: !678, size: 32)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !675, line: 5, baseType: !679)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !296, line: 20, baseType: !680)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !298, line: 26, baseType: !159)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !674, file: !675, line: 9, baseType: !679, size: 32, offset: 32)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !657, file: !12, line: 45, baseType: !295, size: 64, offset: 128)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !644, file: !12, line: 54, baseType: !684, size: 256)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !644, file: !12, line: 48, size: 256, elements: !685)
!685 = !{!686, !689, !690, !691, !692}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !684, file: !12, line: 49, baseType: !687, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !684, file: !12, line: 50, baseType: !159, size: 32, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !684, file: !12, line: 51, baseType: !159, size: 32, offset: 96)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !684, file: !12, line: 52, baseType: !225, size: 64, offset: 128)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !684, file: !12, line: 53, baseType: !225, size: 64, offset: 192)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !440, file: !441, line: 835, baseType: !694, size: 32, offset: 5120)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !120, line: 22, baseType: !695)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !208, line: 28, baseType: !159)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !440, file: !441, line: 836, baseType: !694, size: 32, offset: 5152)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !440, file: !441, line: 840, baseType: !225, size: 64, offset: 5184)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !440, file: !441, line: 849, baseType: !439, size: 64, offset: 5248)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !440, file: !441, line: 852, baseType: !439, size: 64, offset: 5312)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !440, file: !441, line: 857, baseType: !119, size: 128, offset: 5376)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !440, file: !441, line: 858, baseType: !119, size: 128, offset: 5504)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !440, file: !441, line: 859, baseType: !439, size: 64, offset: 5632)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !440, file: !441, line: 867, baseType: !119, size: 128, offset: 5696)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !440, file: !441, line: 868, baseType: !119, size: 128, offset: 5824)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !440, file: !441, line: 871, baseType: !706, size: 64, offset: 5952)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !708, line: 59, size: 768, elements: !709)
!708 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!709 = !{!710, !711, !712, !713, !724, !725, !732, !741}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !707, file: !708, line: 61, baseType: !455, size: 32)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !707, file: !708, line: 62, baseType: !7, size: 32, offset: 32)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !707, file: !708, line: 63, baseType: !133, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !707, file: !708, line: 65, baseType: !714, size: 256, offset: 64)
!714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !715, size: 256, elements: !376)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !120, line: 182, size: 64, elements: !716)
!716 = !{!717}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !715, file: !120, line: 183, baseType: !718, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !120, line: 186, size: 128, elements: !720)
!720 = !{!721, !722}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !719, file: !120, line: 187, baseType: !718, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !719, file: !120, line: 187, baseType: !723, size: 64, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !707, file: !708, line: 66, baseType: !715, size: 64, offset: 320)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !707, file: !708, line: 68, baseType: !726, size: 128, offset: 384)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !727, line: 40, baseType: !728)
!727 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !727, line: 36, size: 128, elements: !729)
!729 = !{!730, !731}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !728, file: !727, line: 37, baseType: !133)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !728, file: !727, line: 38, baseType: !119, size: 128)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !707, file: !708, line: 69, baseType: !733, size: 128, align: 64, offset: 512)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !120, line: 216, size: 128, align: 64, elements: !734)
!734 = !{!735, !737}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !733, file: !120, line: 217, baseType: !736, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !733, file: !120, line: 218, baseType: !738, size: 64, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{null, !736}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !707, file: !708, line: 70, baseType: !742, size: 128, offset: 640)
!742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !743, size: 128, elements: !606)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !708, line: 54, size: 128, elements: !744)
!744 = !{!745, !746}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !743, file: !708, line: 55, baseType: !159, size: 32)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !743, file: !708, line: 56, baseType: !747, size: 64, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !708, line: 56, flags: DIFlagFwdDecl)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !440, file: !441, line: 872, baseType: !750, size: 512, offset: 6016)
!750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !719, size: 512, elements: !376)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !440, file: !441, line: 873, baseType: !119, size: 128, offset: 6528)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !440, file: !441, line: 874, baseType: !119, size: 128, offset: 6656)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !440, file: !441, line: 876, baseType: !754, size: 64, offset: 6784)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !756, line: 26, size: 192, elements: !757)
!756 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!757 = !{!758, !759}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !755, file: !756, line: 27, baseType: !7, size: 32)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !755, file: !756, line: 28, baseType: !760, size: 128, offset: 64)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !761, line: 43, size: 128, elements: !762)
!761 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!762 = !{!763, !764}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !760, file: !761, line: 44, baseType: !342)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !760, file: !761, line: 45, baseType: !119, size: 128)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !440, file: !441, line: 879, baseType: !766, size: 64, offset: 6848)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !440, file: !441, line: 882, baseType: !766, size: 64, offset: 6912)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !440, file: !441, line: 884, baseType: !295, size: 64, offset: 6976)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !440, file: !441, line: 885, baseType: !295, size: 64, offset: 7040)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !440, file: !441, line: 890, baseType: !295, size: 64, offset: 7104)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !440, file: !441, line: 891, baseType: !772, size: 128, offset: 7168)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !441, line: 242, size: 128, elements: !773)
!773 = !{!774, !775, !776}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !772, file: !441, line: 244, baseType: !295, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !772, file: !441, line: 245, baseType: !295, size: 64, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !772, file: !441, line: 246, baseType: !342, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !440, file: !441, line: 900, baseType: !225, size: 64, offset: 7296)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !440, file: !441, line: 901, baseType: !225, size: 64, offset: 7360)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !440, file: !441, line: 904, baseType: !295, size: 64, offset: 7424)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !440, file: !441, line: 907, baseType: !295, size: 64, offset: 7488)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !440, file: !441, line: 910, baseType: !225, size: 64, offset: 7552)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !440, file: !441, line: 911, baseType: !225, size: 64, offset: 7616)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !440, file: !441, line: 914, baseType: !784, size: 640, offset: 7680)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !785, line: 123, size: 640, elements: !786)
!785 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!786 = !{!787, !793, !794}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !784, file: !785, line: 124, baseType: !788, size: 576)
!788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !789, size: 576, elements: !176)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !785, line: 108, size: 192, elements: !790)
!790 = !{!791, !792}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !789, file: !785, line: 109, baseType: !295, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !789, file: !785, line: 110, baseType: !573, size: 128, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !784, file: !785, line: 125, baseType: !7, size: 32, offset: 576)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !784, file: !785, line: 126, baseType: !7, size: 32, offset: 608)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !440, file: !441, line: 917, baseType: !796, size: 192, offset: 8320)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !785, line: 134, size: 192, elements: !797)
!797 = !{!798, !799}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !796, file: !785, line: 135, baseType: !733, size: 128, align: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !796, file: !785, line: 136, baseType: !7, size: 32, offset: 128)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !440, file: !441, line: 923, baseType: !801, size: 64, offset: 8512)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !803)
!803 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !804, line: 11, flags: DIFlagFwdDecl)
!804 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/lizy2001/genbc/linux")
!805 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !440, file: !441, line: 926, baseType: !801, size: 64, offset: 8576)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !440, file: !441, line: 929, baseType: !801, size: 64, offset: 8640)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !440, file: !441, line: 933, baseType: !808, size: 64, offset: 8704)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !441, line: 933, flags: DIFlagFwdDecl)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !440, file: !441, line: 943, baseType: !811, size: 128, offset: 8768)
!811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 128, elements: !812)
!812 = !{!813}
!813 = !DISubrange(count: 16)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !440, file: !441, line: 945, baseType: !815, size: 64, offset: 8896)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !441, line: 49, flags: DIFlagFwdDecl)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !440, file: !441, line: 956, baseType: !818, size: 64, offset: 8960)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !441, line: 45, flags: DIFlagFwdDecl)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !440, file: !441, line: 959, baseType: !821, size: 64, offset: 9024)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !441, line: 959, flags: DIFlagFwdDecl)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !440, file: !441, line: 962, baseType: !824, size: 64, offset: 9088)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !441, line: 66, flags: DIFlagFwdDecl)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !440, file: !441, line: 966, baseType: !827, size: 64, offset: 9152)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !829, line: 35, flags: DIFlagFwdDecl)
!829 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!830 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !440, file: !441, line: 969, baseType: !831, size: 64, offset: 9216)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !785, line: 223, flags: DIFlagFwdDecl)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !440, file: !441, line: 970, baseType: !834, size: 64, offset: 9280)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !441, line: 62, flags: DIFlagFwdDecl)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !440, file: !441, line: 971, baseType: !837, size: 64, offset: 9344)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !838, line: 25, baseType: !839)
!838 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !838, line: 23, size: 64, elements: !840)
!840 = !{!841}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !839, file: !838, line: 24, baseType: !605, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !440, file: !441, line: 972, baseType: !837, size: 64, offset: 9408)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !440, file: !441, line: 974, baseType: !837, size: 64, offset: 9472)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !440, file: !441, line: 975, baseType: !845, size: 192, offset: 9536)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !846, line: 30, size: 192, elements: !847)
!846 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!847 = !{!848, !849}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !845, file: !846, line: 31, baseType: !119, size: 128)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !845, file: !846, line: 32, baseType: !837, size: 64, offset: 128)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !440, file: !441, line: 976, baseType: !225, size: 64, offset: 9728)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !440, file: !441, line: 977, baseType: !222, size: 64, offset: 9792)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !440, file: !441, line: 978, baseType: !7, size: 32, offset: 9856)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !440, file: !441, line: 980, baseType: !736, size: 64, offset: 9920)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !440, file: !441, line: 989, baseType: !855, size: 128, offset: 9984)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !856, line: 35, size: 128, elements: !857)
!856 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!857 = !{!858, !859, !860}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !855, file: !856, line: 36, baseType: !159, size: 32)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !855, file: !856, line: 37, baseType: !317, size: 32, offset: 32)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !855, file: !856, line: 38, baseType: !861, size: 64, offset: 64)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !856, line: 23, flags: DIFlagFwdDecl)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !440, file: !441, line: 992, baseType: !295, size: 64, offset: 10112)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !440, file: !441, line: 993, baseType: !295, size: 64, offset: 10176)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !440, file: !441, line: 996, baseType: !133, offset: 10240)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !440, file: !441, line: 999, baseType: !342, offset: 10240)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !440, file: !441, line: 1001, baseType: !868, size: 64, offset: 10240)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !441, line: 636, size: 64, elements: !869)
!869 = !{!870}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !868, file: !441, line: 637, baseType: !871, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !440, file: !441, line: 1005, baseType: !576, size: 128, offset: 10304)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !440, file: !441, line: 1007, baseType: !439, size: 64, offset: 10432)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !440, file: !441, line: 1009, baseType: !875, size: 64, offset: 10496)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !441, line: 1009, flags: DIFlagFwdDecl)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !440, file: !441, line: 1043, baseType: !249, size: 64, offset: 10560)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !440, file: !441, line: 1046, baseType: !879, size: 64, offset: 10624)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !441, line: 41, flags: DIFlagFwdDecl)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !440, file: !441, line: 1050, baseType: !882, size: 64, offset: 10688)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !441, line: 42, flags: DIFlagFwdDecl)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !440, file: !441, line: 1054, baseType: !885, size: 64, offset: 10752)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !441, line: 55, flags: DIFlagFwdDecl)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !440, file: !441, line: 1056, baseType: !888, size: 64, offset: 10816)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !441, line: 40, flags: DIFlagFwdDecl)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !440, file: !441, line: 1058, baseType: !891, size: 64, offset: 10880)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !441, line: 47, flags: DIFlagFwdDecl)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !440, file: !441, line: 1061, baseType: !894, size: 64, offset: 10944)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !441, line: 43, flags: DIFlagFwdDecl)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !440, file: !441, line: 1064, baseType: !225, size: 64, offset: 11008)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !440, file: !441, line: 1065, baseType: !898, size: 64, offset: 11072)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !846, line: 14, baseType: !900)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !846, line: 12, size: 384, elements: !901)
!901 = !{!902}
!902 = !DIDerivedType(tag: DW_TAG_member, scope: !900, file: !846, line: 13, baseType: !903, size: 384)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !900, file: !846, line: 13, size: 384, elements: !904)
!904 = !{!905, !906, !907, !908}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !903, file: !846, line: 13, baseType: !159, size: 32)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !903, file: !846, line: 13, baseType: !159, size: 32, offset: 32)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !903, file: !846, line: 13, baseType: !159, size: 32, offset: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !903, file: !846, line: 13, baseType: !909, size: 256, offset: 128)
!909 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !910, line: 32, size: 256, elements: !911)
!910 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!911 = !{!912, !918, !931, !937, !946, !966, !971}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !909, file: !910, line: 37, baseType: !913, size: 64)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !909, file: !910, line: 34, size: 64, elements: !914)
!914 = !{!915, !916}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !913, file: !910, line: 35, baseType: !695, size: 32)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !913, file: !910, line: 36, baseType: !917, size: 32, offset: 32)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !208, line: 49, baseType: !7)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !909, file: !910, line: 45, baseType: !919, size: 192)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !909, file: !910, line: 40, size: 192, elements: !920)
!920 = !{!921, !923, !924, !930}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !919, file: !910, line: 41, baseType: !922, size: 32)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !208, line: 95, baseType: !159)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !919, file: !910, line: 42, baseType: !159, size: 32, offset: 32)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !919, file: !910, line: 43, baseType: !925, size: 64, offset: 64)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !910, line: 11, baseType: !926)
!926 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !910, line: 8, size: 64, elements: !927)
!927 = !{!928, !929}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !926, file: !910, line: 9, baseType: !159, size: 32)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !926, file: !910, line: 10, baseType: !249, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !919, file: !910, line: 44, baseType: !159, size: 32, offset: 128)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !909, file: !910, line: 52, baseType: !932, size: 128)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !909, file: !910, line: 48, size: 128, elements: !933)
!933 = !{!934, !935, !936}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !932, file: !910, line: 49, baseType: !695, size: 32)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !932, file: !910, line: 50, baseType: !917, size: 32, offset: 32)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !932, file: !910, line: 51, baseType: !925, size: 64, offset: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !909, file: !910, line: 61, baseType: !938, size: 256)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !909, file: !910, line: 55, size: 256, elements: !939)
!939 = !{!940, !941, !942, !943, !945}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !938, file: !910, line: 56, baseType: !695, size: 32)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !938, file: !910, line: 57, baseType: !917, size: 32, offset: 32)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !938, file: !910, line: 58, baseType: !159, size: 32, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !938, file: !910, line: 59, baseType: !944, size: 64, offset: 128)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !208, line: 94, baseType: !209)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !938, file: !910, line: 60, baseType: !944, size: 64, offset: 192)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !909, file: !910, line: 95, baseType: !947, size: 256)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !909, file: !910, line: 64, size: 256, elements: !948)
!948 = !{!949, !950}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !947, file: !910, line: 65, baseType: !249, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, scope: !947, file: !910, line: 77, baseType: !951, size: 192, offset: 64)
!951 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !947, file: !910, line: 77, size: 192, elements: !952)
!952 = !{!953, !954, !961}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !951, file: !910, line: 82, baseType: !428, size: 16)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !951, file: !910, line: 88, baseType: !955, size: 192)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !951, file: !910, line: 84, size: 192, elements: !956)
!956 = !{!957, !959, !960}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !955, file: !910, line: 85, baseType: !958, size: 64)
!958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 64, elements: !555)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !955, file: !910, line: 86, baseType: !249, size: 64, offset: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !955, file: !910, line: 87, baseType: !249, size: 64, offset: 128)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !951, file: !910, line: 93, baseType: !962, size: 96)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !951, file: !910, line: 90, size: 96, elements: !963)
!963 = !{!964, !965}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !962, file: !910, line: 91, baseType: !958, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !962, file: !910, line: 92, baseType: !450, size: 32, offset: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !909, file: !910, line: 101, baseType: !967, size: 128)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !909, file: !910, line: 98, size: 128, elements: !968)
!968 = !{!969, !970}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !967, file: !910, line: 99, baseType: !210, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !967, file: !910, line: 100, baseType: !159, size: 32, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !909, file: !910, line: 108, baseType: !972, size: 128)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !909, file: !910, line: 104, size: 128, elements: !973)
!973 = !{!974, !975, !976}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !972, file: !910, line: 105, baseType: !249, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !972, file: !910, line: 106, baseType: !159, size: 32, offset: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !972, file: !910, line: 107, baseType: !7, size: 32, offset: 96)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !440, file: !441, line: 1067, baseType: !978, offset: 11136)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !979, line: 12, elements: !147)
!979 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!980 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !440, file: !441, line: 1099, baseType: !981, size: 64, offset: 11136)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !441, line: 56, flags: DIFlagFwdDecl)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !440, file: !441, line: 1103, baseType: !119, size: 128, offset: 11200)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !440, file: !441, line: 1104, baseType: !985, size: 64, offset: 11328)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !441, line: 46, flags: DIFlagFwdDecl)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !440, file: !441, line: 1105, baseType: !394, size: 192, offset: 11392)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !440, file: !441, line: 1106, baseType: !7, size: 32, offset: 11584)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !440, file: !441, line: 1109, baseType: !990, size: 128, offset: 11648)
!990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !991, size: 128, elements: !993)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !441, line: 51, flags: DIFlagFwdDecl)
!993 = !{!994}
!994 = !DISubrange(count: 2)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !440, file: !441, line: 1110, baseType: !394, size: 192, offset: 11776)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !440, file: !441, line: 1111, baseType: !119, size: 128, offset: 11968)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !440, file: !441, line: 1173, baseType: !998, size: 64, offset: 12096)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1000, line: 62, size: 256, align: 256, elements: !1001)
!1000 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1001 = !{!1002, !1003, !1004, !1009}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !999, file: !1000, line: 75, baseType: !450, size: 32)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !999, file: !1000, line: 90, baseType: !450, size: 32, offset: 32)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !999, file: !1000, line: 124, baseType: !1005, size: 64, offset: 64)
!1005 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !999, file: !1000, line: 109, size: 64, elements: !1006)
!1006 = !{!1007, !1008}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1005, file: !1000, line: 110, baseType: !297, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1005, file: !1000, line: 112, baseType: !297, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !999, file: !1000, line: 144, baseType: !450, size: 32, offset: 128)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !440, file: !441, line: 1174, baseType: !449, size: 32, offset: 12160)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !440, file: !441, line: 1179, baseType: !225, size: 64, offset: 12224)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !440, file: !441, line: 1182, baseType: !1013, size: 128, offset: 12288)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !372, line: 76, size: 128, elements: !1014)
!1014 = !{!1015, !1020, !1023}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1013, file: !372, line: 85, baseType: !1016, size: 64)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1017, line: 7, size: 64, elements: !1018)
!1017 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1018 = !{!1019}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1016, file: !1017, line: 12, baseType: !602, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1013, file: !372, line: 88, baseType: !1021, size: 8, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !120, line: 30, baseType: !1022)
!1022 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1013, file: !372, line: 95, baseType: !1021, size: 8, offset: 72)
!1024 = !DIDerivedType(tag: DW_TAG_member, scope: !440, file: !441, line: 1184, baseType: !1025, size: 128, offset: 12416)
!1025 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !440, file: !441, line: 1184, size: 128, elements: !1026)
!1026 = !{!1027, !1028}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1025, file: !441, line: 1185, baseType: !455, size: 32)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1025, file: !441, line: 1186, baseType: !733, size: 128, align: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !440, file: !441, line: 1190, baseType: !1030, size: 64, offset: 12544)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !441, line: 53, flags: DIFlagFwdDecl)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !440, file: !441, line: 1192, baseType: !1033, size: 128, offset: 12608)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !372, line: 64, size: 128, elements: !1034)
!1034 = !{!1035, !1128, !1129}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1033, file: !372, line: 65, baseType: !1036, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !267, line: 68, size: 512, align: 128, elements: !1038)
!1038 = !{!1039, !1040, !1120, !1127}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1037, file: !267, line: 69, baseType: !225, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, scope: !1037, file: !267, line: 77, baseType: !1041, size: 320, offset: 64)
!1041 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1037, file: !267, line: 77, size: 320, elements: !1042)
!1042 = !{!1043, !1052, !1057, !1085, !1093, !1099, !1112, !1119}
!1043 = !DIDerivedType(tag: DW_TAG_member, scope: !1041, file: !267, line: 78, baseType: !1044, size: 320)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1041, file: !267, line: 78, size: 320, elements: !1045)
!1045 = !{!1046, !1047, !1050, !1051}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1044, file: !267, line: 84, baseType: !119, size: 128)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1044, file: !267, line: 86, baseType: !1048, size: 64, offset: 128)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !267, line: 26, flags: DIFlagFwdDecl)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1044, file: !267, line: 87, baseType: !225, size: 64, offset: 192)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1044, file: !267, line: 94, baseType: !225, size: 64, offset: 256)
!1052 = !DIDerivedType(tag: DW_TAG_member, scope: !1041, file: !267, line: 96, baseType: !1053, size: 64)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1041, file: !267, line: 96, size: 64, elements: !1054)
!1054 = !{!1055}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1053, file: !267, line: 101, baseType: !1056, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !120, line: 143, baseType: !295)
!1057 = !DIDerivedType(tag: DW_TAG_member, scope: !1041, file: !267, line: 103, baseType: !1058, size: 320)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1041, file: !267, line: 103, size: 320, elements: !1059)
!1059 = !{!1060, !1070, !1073, !1074}
!1060 = !DIDerivedType(tag: DW_TAG_member, scope: !1058, file: !267, line: 104, baseType: !1061, size: 128)
!1061 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1058, file: !267, line: 104, size: 128, elements: !1062)
!1062 = !{!1063, !1064}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1061, file: !267, line: 105, baseType: !119, size: 128)
!1064 = !DIDerivedType(tag: DW_TAG_member, scope: !1061, file: !267, line: 106, baseType: !1065, size: 128)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1061, file: !267, line: 106, size: 128, elements: !1066)
!1066 = !{!1067, !1068, !1069}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1065, file: !267, line: 107, baseType: !1036, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1065, file: !267, line: 109, baseType: !159, size: 32, offset: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1065, file: !267, line: 110, baseType: !159, size: 32, offset: 96)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1058, file: !267, line: 117, baseType: !1071, size: 64, offset: 128)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !267, line: 117, flags: DIFlagFwdDecl)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1058, file: !267, line: 119, baseType: !249, size: 64, offset: 192)
!1074 = !DIDerivedType(tag: DW_TAG_member, scope: !1058, file: !267, line: 120, baseType: !1075, size: 64, offset: 256)
!1075 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1058, file: !267, line: 120, size: 64, elements: !1076)
!1076 = !{!1077, !1078, !1079}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1075, file: !267, line: 121, baseType: !249, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1075, file: !267, line: 122, baseType: !225, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, scope: !1075, file: !267, line: 123, baseType: !1080, size: 32)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1075, file: !267, line: 123, size: 32, elements: !1081)
!1081 = !{!1082, !1083, !1084}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1080, file: !267, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1080, file: !267, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1080, file: !267, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1085 = !DIDerivedType(tag: DW_TAG_member, scope: !1041, file: !267, line: 130, baseType: !1086, size: 192)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1041, file: !267, line: 130, size: 192, elements: !1087)
!1087 = !{!1088, !1089, !1090, !1091, !1092}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1086, file: !267, line: 131, baseType: !225, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1086, file: !267, line: 134, baseType: !588, size: 8, offset: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1086, file: !267, line: 135, baseType: !588, size: 8, offset: 72)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1086, file: !267, line: 136, baseType: !317, size: 32, offset: 96)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1086, file: !267, line: 137, baseType: !7, size: 32, offset: 128)
!1093 = !DIDerivedType(tag: DW_TAG_member, scope: !1041, file: !267, line: 139, baseType: !1094, size: 256)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1041, file: !267, line: 139, size: 256, elements: !1095)
!1095 = !{!1096, !1097, !1098}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1094, file: !267, line: 140, baseType: !225, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1094, file: !267, line: 141, baseType: !317, size: 32, offset: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1094, file: !267, line: 143, baseType: !119, size: 128, offset: 128)
!1099 = !DIDerivedType(tag: DW_TAG_member, scope: !1041, file: !267, line: 145, baseType: !1100, size: 256)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1041, file: !267, line: 145, size: 256, elements: !1101)
!1101 = !{!1102, !1103, !1105, !1106, !1111}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1100, file: !267, line: 146, baseType: !225, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1100, file: !267, line: 147, baseType: !1104, size: 64, offset: 64)
!1104 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !256, line: 509, baseType: !1036)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1100, file: !267, line: 148, baseType: !225, size: 64, offset: 128)
!1106 = !DIDerivedType(tag: DW_TAG_member, scope: !1100, file: !267, line: 149, baseType: !1107, size: 64, offset: 192)
!1107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1100, file: !267, line: 149, size: 64, elements: !1108)
!1108 = !{!1109, !1110}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1107, file: !267, line: 150, baseType: !283, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1107, file: !267, line: 151, baseType: !317, size: 32)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1100, file: !267, line: 156, baseType: !133, offset: 256)
!1112 = !DIDerivedType(tag: DW_TAG_member, scope: !1041, file: !267, line: 159, baseType: !1113, size: 128)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1041, file: !267, line: 159, size: 128, elements: !1114)
!1114 = !{!1115, !1118}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1113, file: !267, line: 161, baseType: !1116, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !267, line: 161, flags: DIFlagFwdDecl)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1113, file: !267, line: 162, baseType: !249, size: 64, offset: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1041, file: !267, line: 176, baseType: !733, size: 128, align: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, scope: !1037, file: !267, line: 179, baseType: !1121, size: 32, offset: 384)
!1121 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1037, file: !267, line: 179, size: 32, elements: !1122)
!1122 = !{!1123, !1124, !1125, !1126}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1121, file: !267, line: 184, baseType: !317, size: 32)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1121, file: !267, line: 192, baseType: !7, size: 32)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1121, file: !267, line: 194, baseType: !7, size: 32)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1121, file: !267, line: 195, baseType: !159, size: 32)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1037, file: !267, line: 199, baseType: !317, size: 32, offset: 416)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1033, file: !372, line: 67, baseType: !450, size: 32, offset: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1033, file: !372, line: 68, baseType: !450, size: 32, offset: 96)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !440, file: !441, line: 1206, baseType: !159, size: 32, offset: 12736)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !440, file: !441, line: 1207, baseType: !159, size: 32, offset: 12768)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !440, file: !441, line: 1209, baseType: !225, size: 64, offset: 12800)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !440, file: !441, line: 1219, baseType: !295, size: 64, offset: 12864)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !440, file: !441, line: 1220, baseType: !295, size: 64, offset: 12928)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !440, file: !441, line: 1317, baseType: !159, size: 32, offset: 12992)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !440, file: !441, line: 1319, baseType: !439, size: 64, offset: 13056)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !440, file: !441, line: 1322, baseType: !1138, size: 64, offset: 13120)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1140, line: 56, size: 512, elements: !1141)
!1140 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1141 = !{!1142, !1143, !1144, !1145, !1146, !1148, !1149, !1151}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1139, file: !1140, line: 57, baseType: !1138, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1139, file: !1140, line: 58, baseType: !249, size: 64, offset: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1139, file: !1140, line: 59, baseType: !225, size: 64, offset: 128)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1139, file: !1140, line: 60, baseType: !225, size: 64, offset: 192)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1139, file: !1140, line: 61, baseType: !1147, size: 64, offset: 256)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1139, file: !1140, line: 62, baseType: !7, size: 32, offset: 320)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1139, file: !1140, line: 63, baseType: !1150, size: 64, offset: 384)
!1150 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !120, line: 153, baseType: !295)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1139, file: !1140, line: 64, baseType: !1152, size: 64, offset: 448)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !440, file: !441, line: 1326, baseType: !455, size: 32, offset: 13184)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !440, file: !441, line: 1342, baseType: !249, size: 64, offset: 13248)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !440, file: !441, line: 1343, baseType: !297, size: 64, offset: 13312)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !440, file: !441, line: 1344, baseType: !295, size: 64, offset: 13376)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !440, file: !441, line: 1345, baseType: !297, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !440, file: !441, line: 1346, baseType: !297, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !440, file: !441, line: 1347, baseType: !297, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !440, file: !441, line: 1348, baseType: !733, size: 128, align: 64, offset: 13504)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !440, file: !441, line: 1358, baseType: !1163, size: 34816, offset: 13824)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1164, line: 485, size: 34816, elements: !1165)
!1164 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1165 = !{!1166, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1195, !1196, !1197, !1198, !1199, !1200, !1203, !1204, !1205}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1163, file: !1164, line: 487, baseType: !1167, size: 192)
!1167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1168, size: 192, elements: !176)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1169, line: 16, size: 64, elements: !1170)
!1169 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1170 = !{!1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1168, file: !1169, line: 17, baseType: !423, size: 16)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1168, file: !1169, line: 18, baseType: !423, size: 16, offset: 16)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1168, file: !1169, line: 19, baseType: !423, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1168, file: !1169, line: 19, baseType: !423, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1168, file: !1169, line: 19, baseType: !423, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1168, file: !1169, line: 19, baseType: !423, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1168, file: !1169, line: 19, baseType: !423, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1168, file: !1169, line: 20, baseType: !423, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1168, file: !1169, line: 20, baseType: !423, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1168, file: !1169, line: 20, baseType: !423, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1168, file: !1169, line: 20, baseType: !423, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1168, file: !1169, line: 20, baseType: !423, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1168, file: !1169, line: 20, baseType: !423, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1163, file: !1164, line: 491, baseType: !225, size: 64, offset: 192)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1163, file: !1164, line: 495, baseType: !217, size: 16, offset: 256)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1163, file: !1164, line: 496, baseType: !217, size: 16, offset: 272)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1163, file: !1164, line: 497, baseType: !217, size: 16, offset: 288)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1163, file: !1164, line: 498, baseType: !217, size: 16, offset: 304)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1163, file: !1164, line: 502, baseType: !225, size: 64, offset: 320)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1163, file: !1164, line: 503, baseType: !225, size: 64, offset: 384)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1163, file: !1164, line: 514, baseType: !1192, size: 256, offset: 448)
!1192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1193, size: 256, elements: !376)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1164, line: 483, flags: DIFlagFwdDecl)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1163, file: !1164, line: 516, baseType: !225, size: 64, offset: 704)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1163, file: !1164, line: 518, baseType: !225, size: 64, offset: 768)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1163, file: !1164, line: 520, baseType: !225, size: 64, offset: 832)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1163, file: !1164, line: 521, baseType: !225, size: 64, offset: 896)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1163, file: !1164, line: 522, baseType: !225, size: 64, offset: 960)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1163, file: !1164, line: 528, baseType: !1201, size: 64, offset: 1024)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1164, line: 10, flags: DIFlagFwdDecl)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1163, file: !1164, line: 535, baseType: !225, size: 64, offset: 1088)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1163, file: !1164, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1163, file: !1164, line: 540, baseType: !1206, size: 33280, offset: 1536)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1207, line: 317, size: 33280, elements: !1208)
!1207 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1208 = !{!1209, !1210, !1211}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1206, file: !1207, line: 330, baseType: !7, size: 32)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1206, file: !1207, line: 337, baseType: !225, size: 64, offset: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1206, file: !1207, line: 348, baseType: !1212, size: 32768, offset: 512)
!1212 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1207, line: 304, size: 32768, elements: !1213)
!1213 = !{!1214, !1229, !1268, !1318, !1335}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1212, file: !1207, line: 305, baseType: !1215, size: 896)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1207, line: 12, size: 896, elements: !1216)
!1216 = !{!1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1228}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1215, file: !1207, line: 13, baseType: !449, size: 32)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1215, file: !1207, line: 14, baseType: !449, size: 32, offset: 32)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1215, file: !1207, line: 15, baseType: !449, size: 32, offset: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1215, file: !1207, line: 16, baseType: !449, size: 32, offset: 96)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1215, file: !1207, line: 17, baseType: !449, size: 32, offset: 128)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1215, file: !1207, line: 18, baseType: !449, size: 32, offset: 160)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1215, file: !1207, line: 19, baseType: !449, size: 32, offset: 192)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1215, file: !1207, line: 22, baseType: !1225, size: 640, offset: 224)
!1225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !449, size: 640, elements: !1226)
!1226 = !{!1227}
!1227 = !DISubrange(count: 20)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1215, file: !1207, line: 25, baseType: !449, size: 32, offset: 864)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1212, file: !1207, line: 306, baseType: !1230, size: 4096, align: 128)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1207, line: 34, size: 4096, align: 128, elements: !1231)
!1231 = !{!1232, !1233, !1234, !1235, !1236, !1251, !1252, !1253, !1257, !1259, !1263}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1230, file: !1207, line: 35, baseType: !423, size: 16)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1230, file: !1207, line: 36, baseType: !423, size: 16, offset: 16)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1230, file: !1207, line: 37, baseType: !423, size: 16, offset: 32)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1230, file: !1207, line: 38, baseType: !423, size: 16, offset: 48)
!1236 = !DIDerivedType(tag: DW_TAG_member, scope: !1230, file: !1207, line: 39, baseType: !1237, size: 128, offset: 64)
!1237 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1230, file: !1207, line: 39, size: 128, elements: !1238)
!1238 = !{!1239, !1244}
!1239 = !DIDerivedType(tag: DW_TAG_member, scope: !1237, file: !1207, line: 40, baseType: !1240, size: 128)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1237, file: !1207, line: 40, size: 128, elements: !1241)
!1241 = !{!1242, !1243}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1240, file: !1207, line: 41, baseType: !295, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1240, file: !1207, line: 42, baseType: !295, size: 64, offset: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, scope: !1237, file: !1207, line: 44, baseType: !1245, size: 128)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1237, file: !1207, line: 44, size: 128, elements: !1246)
!1246 = !{!1247, !1248, !1249, !1250}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1245, file: !1207, line: 45, baseType: !449, size: 32)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1245, file: !1207, line: 46, baseType: !449, size: 32, offset: 32)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1245, file: !1207, line: 47, baseType: !449, size: 32, offset: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1245, file: !1207, line: 48, baseType: !449, size: 32, offset: 96)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1230, file: !1207, line: 51, baseType: !449, size: 32, offset: 192)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1230, file: !1207, line: 52, baseType: !449, size: 32, offset: 224)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1230, file: !1207, line: 55, baseType: !1254, size: 1024, offset: 256)
!1254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !449, size: 1024, elements: !1255)
!1255 = !{!1256}
!1256 = !DISubrange(count: 32)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1230, file: !1207, line: 58, baseType: !1258, size: 2048, offset: 1280)
!1258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !449, size: 2048, elements: !180)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1230, file: !1207, line: 60, baseType: !1260, size: 384, offset: 3328)
!1260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !449, size: 384, elements: !1261)
!1261 = !{!1262}
!1262 = !DISubrange(count: 12)
!1263 = !DIDerivedType(tag: DW_TAG_member, scope: !1230, file: !1207, line: 62, baseType: !1264, size: 384, offset: 3712)
!1264 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1230, file: !1207, line: 62, size: 384, elements: !1265)
!1265 = !{!1266, !1267}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1264, file: !1207, line: 63, baseType: !1260, size: 384)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1264, file: !1207, line: 64, baseType: !1260, size: 384)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1212, file: !1207, line: 307, baseType: !1269, size: 1088)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1207, line: 79, size: 1088, elements: !1270)
!1270 = !{!1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1317}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1269, file: !1207, line: 80, baseType: !449, size: 32)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1269, file: !1207, line: 81, baseType: !449, size: 32, offset: 32)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1269, file: !1207, line: 82, baseType: !449, size: 32, offset: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1269, file: !1207, line: 83, baseType: !449, size: 32, offset: 96)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1269, file: !1207, line: 84, baseType: !449, size: 32, offset: 128)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1269, file: !1207, line: 85, baseType: !449, size: 32, offset: 160)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1269, file: !1207, line: 86, baseType: !449, size: 32, offset: 192)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1269, file: !1207, line: 88, baseType: !1225, size: 640, offset: 224)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1269, file: !1207, line: 89, baseType: !586, size: 8, offset: 864)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1269, file: !1207, line: 90, baseType: !586, size: 8, offset: 872)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1269, file: !1207, line: 91, baseType: !586, size: 8, offset: 880)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1269, file: !1207, line: 92, baseType: !586, size: 8, offset: 888)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1269, file: !1207, line: 93, baseType: !586, size: 8, offset: 896)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1269, file: !1207, line: 94, baseType: !586, size: 8, offset: 904)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1269, file: !1207, line: 95, baseType: !1286, size: 64, offset: 960)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1288, line: 11, size: 128, elements: !1289)
!1288 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1289 = !{!1290, !1291}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1287, file: !1288, line: 12, baseType: !210, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1287, file: !1288, line: 13, baseType: !1292, size: 64, offset: 64)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1294, line: 56, size: 1344, elements: !1295)
!1294 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1295 = !{!1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1293, file: !1294, line: 61, baseType: !225, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1293, file: !1294, line: 62, baseType: !225, size: 64, offset: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1293, file: !1294, line: 63, baseType: !225, size: 64, offset: 128)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1293, file: !1294, line: 64, baseType: !225, size: 64, offset: 192)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1293, file: !1294, line: 65, baseType: !225, size: 64, offset: 256)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1293, file: !1294, line: 66, baseType: !225, size: 64, offset: 320)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1293, file: !1294, line: 68, baseType: !225, size: 64, offset: 384)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1293, file: !1294, line: 69, baseType: !225, size: 64, offset: 448)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1293, file: !1294, line: 70, baseType: !225, size: 64, offset: 512)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1293, file: !1294, line: 71, baseType: !225, size: 64, offset: 576)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1293, file: !1294, line: 72, baseType: !225, size: 64, offset: 640)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1293, file: !1294, line: 73, baseType: !225, size: 64, offset: 704)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1293, file: !1294, line: 74, baseType: !225, size: 64, offset: 768)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1293, file: !1294, line: 75, baseType: !225, size: 64, offset: 832)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1293, file: !1294, line: 76, baseType: !225, size: 64, offset: 896)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1293, file: !1294, line: 81, baseType: !225, size: 64, offset: 960)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1293, file: !1294, line: 83, baseType: !225, size: 64, offset: 1024)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1293, file: !1294, line: 84, baseType: !225, size: 64, offset: 1088)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1293, file: !1294, line: 85, baseType: !225, size: 64, offset: 1152)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1293, file: !1294, line: 86, baseType: !225, size: 64, offset: 1216)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1293, file: !1294, line: 87, baseType: !225, size: 64, offset: 1280)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1269, file: !1207, line: 96, baseType: !449, size: 32, offset: 1024)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1212, file: !1207, line: 308, baseType: !1319, size: 4608, align: 512)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1207, line: 289, size: 4608, align: 512, elements: !1320)
!1320 = !{!1321, !1322, !1331}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1319, file: !1207, line: 290, baseType: !1230, size: 4096, align: 128)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1319, file: !1207, line: 291, baseType: !1323, size: 512, offset: 4096)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1207, line: 268, size: 512, elements: !1324)
!1324 = !{!1325, !1326, !1327}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1323, file: !1207, line: 269, baseType: !295, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1323, file: !1207, line: 270, baseType: !295, size: 64, offset: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1323, file: !1207, line: 271, baseType: !1328, size: 384, offset: 128)
!1328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 384, elements: !1329)
!1329 = !{!1330}
!1330 = !DISubrange(count: 6)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1319, file: !1207, line: 292, baseType: !1332, offset: 4608)
!1332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !586, elements: !1333)
!1333 = !{!1334}
!1334 = !DISubrange(count: 0)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1212, file: !1207, line: 309, baseType: !1336, size: 32768)
!1336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !586, size: 32768, elements: !1337)
!1337 = !{!1338}
!1338 = !DISubrange(count: 4096)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !436, file: !267, line: 378, baseType: !1340, size: 64, offset: 64)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !432, file: !267, line: 384, baseType: !755, size: 192, offset: 192)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !287, file: !267, line: 500, baseType: !133, offset: 6656)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !287, file: !267, line: 501, baseType: !1344, size: 64, offset: 6656)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !267, line: 387, flags: DIFlagFwdDecl)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !287, file: !267, line: 516, baseType: !1347, size: 64, offset: 6720)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1349, line: 18, flags: DIFlagFwdDecl)
!1349 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !287, file: !267, line: 519, baseType: !254, size: 64, offset: 6784)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !287, file: !267, line: 521, baseType: !1352, size: 64, offset: 6848)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !267, line: 521, flags: DIFlagFwdDecl)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !287, file: !267, line: 545, baseType: !317, size: 32, offset: 6912)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !287, file: !267, line: 548, baseType: !1021, size: 8, offset: 6944)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !287, file: !267, line: 550, baseType: !1357, offset: 6952)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1358, line: 142, elements: !147)
!1358 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !287, file: !267, line: 554, baseType: !1360, size: 256, offset: 6976)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1361, line: 102, size: 256, elements: !1362)
!1361 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1362 = !{!1363, !1364, !1365}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1360, file: !1361, line: 103, baseType: !325, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1360, file: !1361, line: 104, baseType: !119, size: 128, offset: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1360, file: !1361, line: 105, baseType: !1366, size: 64, offset: 192)
!1366 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1361, line: 21, baseType: !1367)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{null, !1370}
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !287, file: !267, line: 557, baseType: !449, size: 32, offset: 7232)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !284, file: !267, line: 565, baseType: !1373, offset: 7296)
!1373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, elements: !1374)
!1374 = !{!1375}
!1375 = !DISubrange(count: -1)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !266, file: !267, line: 333, baseType: !1377, size: 64, offset: 576)
!1377 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !256, line: 284, baseType: !1378)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !256, line: 284, size: 64, elements: !1379)
!1379 = !{!1380}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1378, file: !256, line: 284, baseType: !1381, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !315, line: 19, baseType: !225)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !266, file: !267, line: 334, baseType: !225, size: 64, offset: 640)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !266, file: !267, line: 343, baseType: !1384, size: 256, offset: 704)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !266, file: !267, line: 340, size: 256, elements: !1385)
!1385 = !{!1386, !1387}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1384, file: !267, line: 341, baseType: !274, size: 192, align: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1384, file: !267, line: 342, baseType: !225, size: 64, offset: 192)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !266, file: !267, line: 351, baseType: !119, size: 128, offset: 960)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !266, file: !267, line: 353, baseType: !1390, size: 64, offset: 1088)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !267, line: 353, flags: DIFlagFwdDecl)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !266, file: !267, line: 356, baseType: !1393, size: 64, offset: 1152)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1395)
!1395 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !267, line: 356, flags: DIFlagFwdDecl)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !266, file: !267, line: 359, baseType: !225, size: 64, offset: 1216)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !266, file: !267, line: 361, baseType: !254, size: 64, offset: 1280)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !266, file: !267, line: 362, baseType: !249, size: 64, offset: 1344)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !266, file: !267, line: 365, baseType: !325, size: 64, offset: 1408)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !266, file: !267, line: 373, baseType: !1401, offset: 1472)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !267, line: 296, elements: !147)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !232, file: !200, line: 90, baseType: !227, size: 64, offset: 192)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !232, file: !200, line: 91, baseType: !1404, size: 64, offset: 256)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !190, file: !112, line: 143, baseType: !1406, size: 64, offset: 256)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!1409, !126}
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1411)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1412)
!1412 = !{!1413, !1414, !1418, !1422, !1428, !1432}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1411, file: !18, line: 40, baseType: !17, size: 32)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1411, file: !18, line: 41, baseType: !1415, size: 64, offset: 64)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!1021}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1411, file: !18, line: 42, baseType: !1419, size: 64, offset: 128)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!249}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1411, file: !18, line: 43, baseType: !1423, size: 64, offset: 192)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{!1152, !1426}
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1411, file: !18, line: 44, baseType: !1429, size: 64, offset: 256)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{!1152}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1411, file: !18, line: 45, baseType: !1433, size: 64, offset: 320)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{null, !249}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !190, file: !112, line: 144, baseType: !1437, size: 64, offset: 320)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!1152, !126}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !190, file: !112, line: 145, baseType: !1441, size: 64, offset: 384)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{null, !126, !1444, !1450}
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1349, line: 23, baseType: !1446)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1349, line: 21, size: 32, elements: !1447)
!1447 = !{!1448}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1446, file: !1349, line: 22, baseType: !1449, size: 32)
!1449 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !120, line: 32, baseType: !917)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1349, line: 28, baseType: !1452)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1349, line: 26, size: 32, elements: !1453)
!1453 = !{!1454}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1452, file: !1349, line: 27, baseType: !1455, size: 32)
!1455 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !120, line: 33, baseType: !1456)
!1456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !208, line: 50, baseType: !7)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !111, file: !112, line: 70, baseType: !1458, size: 64, offset: 384)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1460, line: 123, size: 1024, elements: !1461)
!1460 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1461 = !{!1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1604, !1605, !1606, !1607, !1608}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1459, file: !1460, line: 124, baseType: !317, size: 32)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1459, file: !1460, line: 125, baseType: !317, size: 32, offset: 32)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1459, file: !1460, line: 135, baseType: !1458, size: 64, offset: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1459, file: !1460, line: 136, baseType: !115, size: 64, offset: 128)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1459, file: !1460, line: 138, baseType: !274, size: 192, align: 64, offset: 192)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1459, file: !1460, line: 140, baseType: !1152, size: 64, offset: 384)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1459, file: !1460, line: 141, baseType: !7, size: 32, offset: 448)
!1469 = !DIDerivedType(tag: DW_TAG_member, scope: !1459, file: !1460, line: 142, baseType: !1470, size: 256, offset: 512)
!1470 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1459, file: !1460, line: 142, size: 256, elements: !1471)
!1471 = !{!1472, !1527, !1531}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1470, file: !1460, line: 143, baseType: !1473, size: 192)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1460, line: 91, size: 192, elements: !1474)
!1474 = !{!1475, !1476, !1477}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1473, file: !1460, line: 92, baseType: !225, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1473, file: !1460, line: 94, baseType: !291, size: 64, offset: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1473, file: !1460, line: 100, baseType: !1478, size: 64, offset: 128)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1460, line: 180, size: 704, elements: !1480)
!1480 = !{!1481, !1482, !1483, !1497, !1498, !1499, !1525, !1526}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1479, file: !1460, line: 182, baseType: !1458, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1479, file: !1460, line: 183, baseType: !7, size: 32, offset: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1479, file: !1460, line: 186, baseType: !1484, size: 192, offset: 128)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1485, line: 19, size: 192, elements: !1486)
!1485 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1486 = !{!1487, !1495, !1496}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1484, file: !1485, line: 20, baseType: !1488, size: 128)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1489, line: 292, size: 128, elements: !1490)
!1489 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1490 = !{!1491, !1492, !1494}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1488, file: !1489, line: 293, baseType: !133)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1488, file: !1489, line: 295, baseType: !1493, size: 32)
!1493 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !120, line: 148, baseType: !7)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1488, file: !1489, line: 296, baseType: !249, size: 64, offset: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1484, file: !1485, line: 21, baseType: !7, size: 32, offset: 128)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1484, file: !1485, line: 22, baseType: !7, size: 32, offset: 160)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1479, file: !1460, line: 187, baseType: !449, size: 32, offset: 320)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1479, file: !1460, line: 188, baseType: !449, size: 32, offset: 352)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1479, file: !1460, line: 189, baseType: !1500, size: 64, offset: 384)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1460, line: 168, size: 320, elements: !1502)
!1502 = !{!1503, !1509, !1513, !1517, !1521}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1501, file: !1460, line: 169, baseType: !1504, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{!159, !1507, !1478}
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !256, line: 539, flags: DIFlagFwdDecl)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1501, file: !1460, line: 171, baseType: !1510, size: 64, offset: 64)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!159, !1458, !115, !216}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1501, file: !1460, line: 173, baseType: !1514, size: 64, offset: 128)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!159, !1458}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1501, file: !1460, line: 174, baseType: !1518, size: 64, offset: 192)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!159, !1458, !1458, !115}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1501, file: !1460, line: 176, baseType: !1522, size: 64, offset: 256)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!159, !1507, !1458, !1478}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1479, file: !1460, line: 192, baseType: !119, size: 128, offset: 448)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1479, file: !1460, line: 194, baseType: !726, size: 128, offset: 576)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1470, file: !1460, line: 144, baseType: !1528, size: 64)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1460, line: 103, size: 64, elements: !1529)
!1529 = !{!1530}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1528, file: !1460, line: 104, baseType: !1458, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1470, file: !1460, line: 145, baseType: !1532, size: 256)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1460, line: 107, size: 256, elements: !1533)
!1533 = !{!1534, !1599, !1602, !1603}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1532, file: !1460, line: 108, baseType: !1535, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1537)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1460, line: 217, size: 768, elements: !1538)
!1538 = !{!1539, !1559, !1563, !1567, !1572, !1576, !1580, !1584, !1585, !1586, !1587, !1595}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1537, file: !1460, line: 222, baseType: !1540, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{!159, !1543}
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1460, line: 197, size: 1088, elements: !1545)
!1545 = !{!1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1544, file: !1460, line: 199, baseType: !1458, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1544, file: !1460, line: 200, baseType: !254, size: 64, offset: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1544, file: !1460, line: 201, baseType: !1507, size: 64, offset: 128)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1544, file: !1460, line: 202, baseType: !249, size: 64, offset: 192)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1544, file: !1460, line: 205, baseType: !394, size: 192, offset: 256)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1544, file: !1460, line: 206, baseType: !394, size: 192, offset: 448)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1544, file: !1460, line: 207, baseType: !159, size: 32, offset: 640)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1544, file: !1460, line: 208, baseType: !119, size: 128, offset: 704)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1544, file: !1460, line: 209, baseType: !175, size: 64, offset: 832)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1544, file: !1460, line: 211, baseType: !222, size: 64, offset: 896)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1544, file: !1460, line: 212, baseType: !1021, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1544, file: !1460, line: 213, baseType: !1021, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1544, file: !1460, line: 214, baseType: !1393, size: 64, offset: 1024)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1537, file: !1460, line: 223, baseType: !1560, size: 64, offset: 64)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{null, !1543}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1537, file: !1460, line: 236, baseType: !1564, size: 64, offset: 128)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{!159, !1507, !249}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1537, file: !1460, line: 238, baseType: !1568, size: 64, offset: 192)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!249, !1507, !1571}
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1537, file: !1460, line: 239, baseType: !1573, size: 64, offset: 256)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{!249, !1507, !249, !1571}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1537, file: !1460, line: 240, baseType: !1577, size: 64, offset: 320)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{null, !1507, !249}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1537, file: !1460, line: 242, baseType: !1581, size: 64, offset: 384)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!206, !1543, !175, !222, !257}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1537, file: !1460, line: 252, baseType: !222, size: 64, offset: 448)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1537, file: !1460, line: 259, baseType: !1021, size: 8, offset: 512)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1537, file: !1460, line: 260, baseType: !1581, size: 64, offset: 576)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1537, file: !1460, line: 263, baseType: !1588, size: 64, offset: 640)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{!1591, !1543, !1593}
!1591 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1592, line: 52, baseType: !7)
!1592 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1460, line: 27, flags: DIFlagFwdDecl)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1537, file: !1460, line: 266, baseType: !1596, size: 64, offset: 704)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!159, !1543, !265}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1532, file: !1460, line: 109, baseType: !1600, size: 64, offset: 64)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1460, line: 31, flags: DIFlagFwdDecl)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1532, file: !1460, line: 110, baseType: !257, size: 64, offset: 128)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1532, file: !1460, line: 111, baseType: !1458, size: 64, offset: 192)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1459, file: !1460, line: 148, baseType: !249, size: 64, offset: 768)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1459, file: !1460, line: 154, baseType: !295, size: 64, offset: 832)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1459, file: !1460, line: 156, baseType: !217, size: 16, offset: 896)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1459, file: !1460, line: 157, baseType: !216, size: 16, offset: 912)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1459, file: !1460, line: 158, baseType: !1609, size: 64, offset: 960)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1460, line: 32, flags: DIFlagFwdDecl)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !111, file: !112, line: 71, baseType: !1612, size: 32, offset: 448)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1613, line: 19, size: 32, elements: !1614)
!1613 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1614 = !{!1615}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1612, file: !1613, line: 20, baseType: !455, size: 32)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !111, file: !112, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !111, file: !112, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !111, file: !112, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !111, file: !112, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !111, file: !112, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !108, file: !30, line: 463, baseType: !107, size: 64, offset: 512)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !108, file: !30, line: 465, baseType: !1623, size: 64, offset: 576)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !1625, line: 88, size: 1664, elements: !1626)
!1625 = !DIFile(filename: "drivers/base/base.h", directory: "/home/lizy2001/genbc/linux")
!1626 = !{!1627, !1644, !1645, !1646, !1647, !1648, !1649, !1859, !1860, !1861}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "klist_children", scope: !1624, file: !1625, line: 89, baseType: !1628, size: 256, align: 64)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "klist", file: !1629, line: 18, size: 256, align: 64, elements: !1630)
!1629 = !DIFile(filename: "./include/linux/klist.h", directory: "/home/lizy2001/genbc/linux")
!1630 = !{!1631, !1632, !1633, !1643}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "k_lock", scope: !1628, file: !1629, line: 19, baseType: !133)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "k_list", scope: !1628, file: !1629, line: 20, baseType: !119, size: 128)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1628, file: !1629, line: 21, baseType: !1634, size: 64, offset: 128)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{null, !1637}
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "klist_node", file: !1629, line: 37, size: 256, elements: !1639)
!1639 = !{!1640, !1641, !1642}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "n_klist", scope: !1638, file: !1629, line: 38, baseType: !249, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "n_node", scope: !1638, file: !1629, line: 39, baseType: !119, size: 128, offset: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "n_ref", scope: !1638, file: !1629, line: 40, baseType: !1612, size: 32, offset: 192)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1628, file: !1629, line: 22, baseType: !1634, size: 64, offset: 192)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "knode_parent", scope: !1624, file: !1625, line: 90, baseType: !1638, size: 256, offset: 256)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "knode_driver", scope: !1624, file: !1625, line: 91, baseType: !1638, size: 256, offset: 512)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "knode_bus", scope: !1624, file: !1625, line: 92, baseType: !1638, size: 256, offset: 768)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "knode_class", scope: !1624, file: !1625, line: 93, baseType: !1638, size: 256, offset: 1024)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_probe", scope: !1624, file: !1625, line: 94, baseType: !119, size: 128, offset: 1280)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "async_driver", scope: !1624, file: !1625, line: 95, baseType: !1650, size: 64, offset: 1408)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1652)
!1652 = !{!1653, !1654, !1798, !1799, !1800, !1801, !1802, !1816, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1651, file: !24, line: 96, baseType: !115, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1651, file: !24, line: 97, baseType: !1655, size: 64, offset: 64)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1657, line: 82, size: 1408, elements: !1658)
!1657 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1658 = !{!1659, !1660, !1661, !1662, !1663, !1664, !1665, !1669, !1673, !1677, !1681, !1682, !1683, !1684, !1685, !1693, !1694, !1695, !1696, !1724, !1728, !1794, !1797}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1656, file: !1657, line: 83, baseType: !115, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1656, file: !1657, line: 84, baseType: !115, size: 64, offset: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1656, file: !1657, line: 85, baseType: !107, size: 64, offset: 128)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1656, file: !1657, line: 86, baseType: !229, size: 64, offset: 192)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1656, file: !1657, line: 87, baseType: !229, size: 64, offset: 256)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1656, file: !1657, line: 88, baseType: !229, size: 64, offset: 320)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1656, file: !1657, line: 90, baseType: !1666, size: 64, offset: 384)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{!159, !107, !1650}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1656, file: !1657, line: 91, baseType: !1670, size: 64, offset: 448)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!159, !107, !170}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1656, file: !1657, line: 92, baseType: !1674, size: 64, offset: 512)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{!159, !107}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1656, file: !1657, line: 93, baseType: !1678, size: 64, offset: 576)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{null, !107}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1656, file: !1657, line: 94, baseType: !1674, size: 64, offset: 640)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1656, file: !1657, line: 95, baseType: !1678, size: 64, offset: 704)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1656, file: !1657, line: 97, baseType: !1674, size: 64, offset: 768)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1656, file: !1657, line: 98, baseType: !1674, size: 64, offset: 832)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1656, file: !1657, line: 100, baseType: !1686, size: 64, offset: 896)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!159, !107, !1689}
!1689 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1690)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1691)
!1691 = !{!1692}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1690, file: !37, line: 51, baseType: !159, size: 32)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1656, file: !1657, line: 101, baseType: !1674, size: 64, offset: 960)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1656, file: !1657, line: 103, baseType: !1674, size: 64, offset: 1024)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1656, file: !1657, line: 105, baseType: !1674, size: 64, offset: 1088)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1656, file: !1657, line: 107, baseType: !1697, size: 64, offset: 1152)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1699)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1700)
!1700 = !{!1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1699, file: !37, line: 279, baseType: !1674, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1699, file: !37, line: 280, baseType: !1678, size: 64, offset: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1699, file: !37, line: 281, baseType: !1674, size: 64, offset: 128)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1699, file: !37, line: 282, baseType: !1674, size: 64, offset: 192)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1699, file: !37, line: 283, baseType: !1674, size: 64, offset: 256)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1699, file: !37, line: 284, baseType: !1674, size: 64, offset: 320)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1699, file: !37, line: 285, baseType: !1674, size: 64, offset: 384)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1699, file: !37, line: 286, baseType: !1674, size: 64, offset: 448)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1699, file: !37, line: 287, baseType: !1674, size: 64, offset: 512)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1699, file: !37, line: 288, baseType: !1674, size: 64, offset: 576)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1699, file: !37, line: 289, baseType: !1674, size: 64, offset: 640)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1699, file: !37, line: 290, baseType: !1674, size: 64, offset: 704)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1699, file: !37, line: 291, baseType: !1674, size: 64, offset: 768)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1699, file: !37, line: 292, baseType: !1674, size: 64, offset: 832)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1699, file: !37, line: 293, baseType: !1674, size: 64, offset: 896)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1699, file: !37, line: 294, baseType: !1674, size: 64, offset: 960)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1699, file: !37, line: 295, baseType: !1674, size: 64, offset: 1024)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1699, file: !37, line: 296, baseType: !1674, size: 64, offset: 1088)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1699, file: !37, line: 297, baseType: !1674, size: 64, offset: 1152)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1699, file: !37, line: 298, baseType: !1674, size: 64, offset: 1216)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1699, file: !37, line: 299, baseType: !1674, size: 64, offset: 1280)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1699, file: !37, line: 300, baseType: !1674, size: 64, offset: 1344)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1699, file: !37, line: 301, baseType: !1674, size: 64, offset: 1408)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1656, file: !1657, line: 109, baseType: !1725, size: 64, offset: 1216)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1727)
!1727 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1657, line: 109, flags: DIFlagFwdDecl)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1656, file: !1657, line: 111, baseType: !1729, size: 64, offset: 1280)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1625, line: 40, size: 2880, elements: !1731)
!1731 = !{!1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1755, !1756, !1757, !1758}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !1730, file: !1625, line: 41, baseType: !129, size: 704)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "devices_kset", scope: !1730, file: !1625, line: 42, baseType: !128, size: 64, offset: 704)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "interfaces", scope: !1730, file: !1625, line: 43, baseType: !119, size: 128, offset: 768)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1730, file: !1625, line: 44, baseType: !394, size: 192, offset: 896)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_kset", scope: !1730, file: !1625, line: 46, baseType: !128, size: 64, offset: 1088)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "klist_devices", scope: !1730, file: !1625, line: 47, baseType: !1628, size: 256, align: 64, offset: 1152)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "klist_drivers", scope: !1730, file: !1625, line: 48, baseType: !1628, size: 256, align: 64, offset: 1408)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "bus_notifier", scope: !1730, file: !1625, line: 49, baseType: !1740, size: 320, offset: 1664)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !1741, line: 65, size: 320, elements: !1742)
!1741 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!1742 = !{!1743, !1744}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !1740, file: !1741, line: 66, baseType: !336, size: 256)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1740, file: !1741, line: 67, baseType: !1745, size: 64, offset: 256)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !1741, line: 54, size: 192, elements: !1747)
!1747 = !{!1748, !1753, !1754}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !1746, file: !1741, line: 55, baseType: !1749, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !1741, line: 51, baseType: !1750)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!159, !1745, !225, !249}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1746, file: !1741, line: 56, baseType: !1745, size: 64, offset: 64)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1746, file: !1741, line: 57, baseType: !159, size: 32, offset: 128)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_autoprobe", scope: !1730, file: !1625, line: 50, baseType: !7, size: 1, offset: 1984, flags: DIFlagBitField, extraData: i64 1984)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1730, file: !1625, line: 51, baseType: !1655, size: 64, offset: 2048)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "glue_dirs", scope: !1730, file: !1625, line: 53, baseType: !129, size: 704, offset: 2112)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1730, file: !1625, line: 54, baseType: !1759, size: 64, offset: 2816)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1761, line: 54, size: 960, elements: !1762)
!1761 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!1762 = !{!1763, !1764, !1768, !1769, !1770, !1771, !1772, !1777, !1781, !1782, !1783, !1784, !1788, !1792, !1793}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1760, file: !1761, line: 55, baseType: !115, size: 64)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1760, file: !1761, line: 56, baseType: !1765, size: 64, offset: 64)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1767, line: 76, flags: DIFlagFwdDecl)
!1767 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1760, file: !1761, line: 58, baseType: !229, size: 64, offset: 128)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1760, file: !1761, line: 59, baseType: !229, size: 64, offset: 192)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !1760, file: !1761, line: 60, baseType: !126, size: 64, offset: 256)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1760, file: !1761, line: 62, baseType: !1670, size: 64, offset: 320)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1760, file: !1761, line: 63, baseType: !1773, size: 64, offset: 384)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!175, !107, !1776}
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1760, file: !1761, line: 65, baseType: !1778, size: 64, offset: 448)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{null, !1759}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1760, file: !1761, line: 66, baseType: !1678, size: 64, offset: 512)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1760, file: !1761, line: 68, baseType: !1674, size: 64, offset: 576)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1760, file: !1761, line: 70, baseType: !1409, size: 64, offset: 640)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1760, file: !1761, line: 71, baseType: !1785, size: 64, offset: 704)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DISubroutineType(types: !1787)
!1787 = !{!1152, !107}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1760, file: !1761, line: 73, baseType: !1789, size: 64, offset: 768)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DISubroutineType(types: !1791)
!1791 = !{null, !107, !1444, !1450}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1760, file: !1761, line: 75, baseType: !1697, size: 64, offset: 832)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1760, file: !1761, line: 77, baseType: !1729, size: 64, offset: 896)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1656, file: !1657, line: 112, baseType: !1795, offset: 1344)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1796, line: 187, elements: !147)
!1796 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1656, file: !1657, line: 114, baseType: !1021, size: 8, offset: 1344)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1651, file: !24, line: 99, baseType: !1765, size: 64, offset: 128)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1651, file: !24, line: 100, baseType: !115, size: 64, offset: 192)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1651, file: !24, line: 102, baseType: !1021, size: 8, offset: 256)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1651, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1651, file: !24, line: 105, baseType: !1803, size: 64, offset: 320)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1805)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1806, line: 262, size: 1600, elements: !1807)
!1806 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1807 = !{!1808, !1810, !1811, !1815}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1805, file: !1806, line: 263, baseType: !1809, size: 256)
!1809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 256, elements: !1255)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1805, file: !1806, line: 264, baseType: !1809, size: 256, offset: 256)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1805, file: !1806, line: 265, baseType: !1812, size: 1024, offset: 512)
!1812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 1024, elements: !1813)
!1813 = !{!1814}
!1814 = !DISubrange(count: 128)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1805, file: !1806, line: 266, baseType: !1152, size: 64, offset: 1536)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1651, file: !24, line: 106, baseType: !1817, size: 64, offset: 384)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1819)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1806, line: 210, size: 256, elements: !1820)
!1820 = !{!1821, !1825, !1827, !1828}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1819, file: !1806, line: 211, baseType: !1822, size: 72)
!1822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !587, size: 72, elements: !1823)
!1823 = !{!1824}
!1824 = !DISubrange(count: 9)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1819, file: !1806, line: 212, baseType: !1826, size: 64, offset: 128)
!1826 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1806, line: 14, baseType: !225)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1819, file: !1806, line: 213, baseType: !450, size: 32, offset: 192)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1819, file: !1806, line: 214, baseType: !450, size: 32, offset: 224)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1651, file: !24, line: 108, baseType: !1674, size: 64, offset: 448)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1651, file: !24, line: 109, baseType: !1678, size: 64, offset: 512)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1651, file: !24, line: 110, baseType: !1674, size: 64, offset: 576)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1651, file: !24, line: 111, baseType: !1678, size: 64, offset: 640)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1651, file: !24, line: 112, baseType: !1686, size: 64, offset: 704)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1651, file: !24, line: 113, baseType: !1674, size: 64, offset: 768)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1651, file: !24, line: 114, baseType: !229, size: 64, offset: 832)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1651, file: !24, line: 115, baseType: !229, size: 64, offset: 896)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1651, file: !24, line: 117, baseType: !1697, size: 64, offset: 960)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1651, file: !24, line: 118, baseType: !1678, size: 64, offset: 1024)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1651, file: !24, line: 120, baseType: !1840, size: 64, offset: 1088)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !1625, line: 58, size: 1152, elements: !1842)
!1842 = !{!1843, !1844, !1845, !1846, !1858}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1841, file: !1625, line: 59, baseType: !111, size: 512)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "klist_devices", scope: !1841, file: !1625, line: 60, baseType: !1628, size: 256, align: 64, offset: 512)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "knode_bus", scope: !1841, file: !1625, line: 61, baseType: !1638, size: 256, offset: 768)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1841, file: !1625, line: 62, baseType: !1847, size: 64, offset: 1024)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !1849, line: 46, size: 768, elements: !1850)
!1849 = !DIFile(filename: "./include/linux/module.h", directory: "/home/lizy2001/genbc/linux")
!1850 = !{!1851, !1852, !1853, !1854, !1857}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1848, file: !1849, line: 47, baseType: !111, size: 512)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1848, file: !1849, line: 48, baseType: !1765, size: 64, offset: 512)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1848, file: !1849, line: 49, baseType: !126, size: 64, offset: 576)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1848, file: !1849, line: 50, baseType: !1855, size: 64, offset: 640)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !1849, line: 50, flags: DIFlagFwdDecl)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1848, file: !1849, line: 51, baseType: !754, size: 64, offset: 704)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1841, file: !1625, line: 63, baseType: !1650, size: 64, offset: 1088)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_probe_reason", scope: !1624, file: !1625, line: 96, baseType: !175, size: 64, offset: 1472)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !1624, file: !1625, line: 97, baseType: !107, size: 64, offset: 1536)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !1624, file: !1625, line: 98, baseType: !586, size: 1, offset: 1600, flags: DIFlagBitField, extraData: i64 1600)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !108, file: !30, line: 467, baseType: !115, size: 64, offset: 640)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !108, file: !30, line: 468, baseType: !1864, size: 64, offset: 704)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1866)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1867)
!1867 = !{!1868, !1869, !1870, !1871, !1875, !1876}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1866, file: !30, line: 88, baseType: !115, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1866, file: !30, line: 89, baseType: !229, size: 64, offset: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1866, file: !30, line: 90, baseType: !1670, size: 64, offset: 128)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1866, file: !30, line: 91, baseType: !1872, size: 64, offset: 192)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{!175, !107, !1776, !1444, !1450}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1866, file: !30, line: 93, baseType: !1678, size: 64, offset: 256)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1866, file: !30, line: 95, baseType: !1697, size: 64, offset: 320)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !108, file: !30, line: 470, baseType: !1655, size: 64, offset: 768)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !108, file: !30, line: 471, baseType: !1650, size: 64, offset: 832)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !108, file: !30, line: 473, baseType: !249, size: 64, offset: 896)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !108, file: !30, line: 475, baseType: !249, size: 64, offset: 960)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !108, file: !30, line: 480, baseType: !394, size: 192, offset: 1024)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !108, file: !30, line: 484, baseType: !1883, size: 576, offset: 1216)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1884)
!1884 = !{!1885, !1886, !1887, !1888, !1889, !1890}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1883, file: !30, line: 362, baseType: !119, size: 128)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1883, file: !30, line: 363, baseType: !119, size: 128, offset: 128)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1883, file: !30, line: 364, baseType: !119, size: 128, offset: 256)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1883, file: !30, line: 365, baseType: !119, size: 128, offset: 384)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1883, file: !30, line: 366, baseType: !1021, size: 8, offset: 512)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1883, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !108, file: !30, line: 485, baseType: !1892, size: 2304, offset: 1792)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1893)
!1893 = !{!1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1989, !1993}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1892, file: !37, line: 566, baseType: !1689, size: 32)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1892, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1892, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1892, file: !37, line: 569, baseType: !1021, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1892, file: !37, line: 570, baseType: !1021, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1892, file: !37, line: 571, baseType: !1021, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1892, file: !37, line: 572, baseType: !1021, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1892, file: !37, line: 573, baseType: !1021, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1892, file: !37, line: 574, baseType: !1021, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1892, file: !37, line: 575, baseType: !1021, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1892, file: !37, line: 576, baseType: !1021, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1892, file: !37, line: 577, baseType: !449, size: 32, offset: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1892, file: !37, line: 578, baseType: !133, offset: 96)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1892, file: !37, line: 580, baseType: !119, size: 128, offset: 128)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1892, file: !37, line: 581, baseType: !755, size: 192, offset: 256)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1892, file: !37, line: 582, baseType: !1910, size: 64, offset: 448)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1912, line: 43, size: 1472, elements: !1913)
!1912 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1913 = !{!1914, !1915, !1916, !1917, !1918, !1921, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1911, file: !1912, line: 44, baseType: !115, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1911, file: !1912, line: 45, baseType: !159, size: 32, offset: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1911, file: !1912, line: 46, baseType: !119, size: 128, offset: 128)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1911, file: !1912, line: 47, baseType: !133, offset: 256)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1911, file: !1912, line: 48, baseType: !1919, size: 64, offset: 256)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1911, file: !1912, line: 49, baseType: !1922, size: 320, offset: 320)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1923, line: 11, size: 320, elements: !1924)
!1923 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1924 = !{!1925, !1926, !1927, !1932}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1922, file: !1923, line: 16, baseType: !719, size: 128)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1922, file: !1923, line: 17, baseType: !225, size: 64, offset: 128)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1922, file: !1923, line: 18, baseType: !1928, size: 64, offset: 192)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{null, !1931}
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1922, file: !1923, line: 19, baseType: !449, size: 32, offset: 256)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1911, file: !1912, line: 50, baseType: !225, size: 64, offset: 640)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1911, file: !1912, line: 51, baseType: !525, size: 64, offset: 704)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1911, file: !1912, line: 52, baseType: !525, size: 64, offset: 768)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1911, file: !1912, line: 53, baseType: !525, size: 64, offset: 832)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1911, file: !1912, line: 54, baseType: !525, size: 64, offset: 896)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1911, file: !1912, line: 55, baseType: !525, size: 64, offset: 960)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1911, file: !1912, line: 56, baseType: !225, size: 64, offset: 1024)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1911, file: !1912, line: 57, baseType: !225, size: 64, offset: 1088)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1911, file: !1912, line: 58, baseType: !225, size: 64, offset: 1152)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1911, file: !1912, line: 59, baseType: !225, size: 64, offset: 1216)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1911, file: !1912, line: 60, baseType: !225, size: 64, offset: 1280)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1911, file: !1912, line: 61, baseType: !107, size: 64, offset: 1344)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1911, file: !1912, line: 62, baseType: !1021, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1911, file: !1912, line: 63, baseType: !1021, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1892, file: !37, line: 583, baseType: !1021, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1892, file: !37, line: 584, baseType: !1021, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1892, file: !37, line: 585, baseType: !1021, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1892, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1892, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1892, file: !37, line: 592, baseType: !517, size: 512, offset: 576)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1892, file: !37, line: 593, baseType: !295, size: 64, offset: 1088)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1892, file: !37, line: 594, baseType: !1360, size: 256, offset: 1152)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1892, file: !37, line: 595, baseType: !726, size: 128, offset: 1408)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1892, file: !37, line: 596, baseType: !1919, size: 64, offset: 1536)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1892, file: !37, line: 597, baseType: !317, size: 32, offset: 1600)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1892, file: !37, line: 598, baseType: !317, size: 32, offset: 1632)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1892, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1892, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1892, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1892, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1892, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1892, file: !37, line: 604, baseType: !1021, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1892, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1892, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1892, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1892, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1892, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1892, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1892, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1892, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1892, file: !37, line: 613, baseType: !159, size: 32, offset: 1792)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1892, file: !37, line: 614, baseType: !159, size: 32, offset: 1824)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1892, file: !37, line: 615, baseType: !295, size: 64, offset: 1856)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1892, file: !37, line: 616, baseType: !295, size: 64, offset: 1920)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1892, file: !37, line: 617, baseType: !295, size: 64, offset: 1984)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1892, file: !37, line: 618, baseType: !295, size: 64, offset: 2048)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1892, file: !37, line: 620, baseType: !1980, size: 64, offset: 2112)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1982)
!1982 = !{!1983, !1984, !1985, !1986}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1981, file: !37, line: 537, baseType: !133)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1981, file: !37, line: 538, baseType: !7, size: 32)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1981, file: !37, line: 540, baseType: !119, size: 128, offset: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1981, file: !37, line: 543, baseType: !1987, size: 64, offset: 192)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1892, file: !37, line: 621, baseType: !1990, size: 64, offset: 2176)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{null, !107, !679}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1892, file: !37, line: 622, baseType: !1994, size: 64, offset: 2240)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !51, line: 117, size: 2304, elements: !1996)
!1996 = !{!1997, !2011, !2012, !2019, !2024, !2051, !2052}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency", scope: !1995, file: !51, line: 118, baseType: !1998, size: 320)
!1998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_constraints", file: !51, line: 52, size: 320, elements: !1999)
!1999 = !{!2000, !2005, !2006, !2007, !2008, !2009}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1998, file: !51, line: 53, baseType: !2001, size: 128)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_head", file: !2002, line: 79, size: 128, elements: !2003)
!2002 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/lizy2001/genbc/linux")
!2003 = !{!2004}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2001, file: !2002, line: 80, baseType: !119, size: 128)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "target_value", scope: !1998, file: !51, line: 54, baseType: !679, size: 32, offset: 128)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "default_value", scope: !1998, file: !51, line: 55, baseType: !679, size: 32, offset: 160)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "no_constraint_value", scope: !1998, file: !51, line: 56, baseType: !679, size: 32, offset: 192)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1998, file: !51, line: 57, baseType: !50, size: 32, offset: 224)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "notifiers", scope: !1998, file: !51, line: 58, baseType: !2010, size: 64, offset: 256)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance", scope: !1995, file: !51, line: 119, baseType: !1998, size: 320, offset: 320)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !1995, file: !51, line: 120, baseType: !2013, size: 1280, offset: 640)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_constraints", file: !51, line: 85, size: 1280, elements: !2014)
!2014 = !{!2015, !2016, !2017, !2018}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq", scope: !2013, file: !51, line: 86, baseType: !1998, size: 320)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq_notifiers", scope: !2013, file: !51, line: 87, baseType: !1740, size: 320, offset: 320)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq", scope: !2013, file: !51, line: 88, baseType: !1998, size: 320, offset: 640)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq_notifiers", scope: !2013, file: !51, line: 89, baseType: !1740, size: 320, offset: 960)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1995, file: !51, line: 121, baseType: !2020, size: 192, offset: 1920)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags", file: !51, line: 71, size: 192, elements: !2021)
!2021 = !{!2022, !2023}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2020, file: !51, line: 72, baseType: !119, size: 128)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "effective_flags", scope: !2020, file: !51, line: 73, baseType: !679, size: 32, offset: 128)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency_req", scope: !1995, file: !51, line: 122, baseType: !2025, size: 64, offset: 2112)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos_request", file: !51, line: 107, size: 576, elements: !2027)
!2027 = !{!2028, !2029, !2050}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2026, file: !51, line: 108, baseType: !56, size: 32)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2026, file: !51, line: 113, baseType: !2030, size: 448, offset: 64)
!2030 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2026, file: !51, line: 109, size: 448, elements: !2031)
!2031 = !{!2032, !2038, !2043}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !2030, file: !51, line: 110, baseType: !2033, size: 320)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2002, line: 83, size: 320, elements: !2034)
!2034 = !{!2035, !2036, !2037}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2033, file: !2002, line: 84, baseType: !159, size: 32)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2033, file: !2002, line: 85, baseType: !119, size: 128, offset: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2033, file: !2002, line: 86, baseType: !119, size: 128, offset: 192)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "flr", scope: !2030, file: !51, line: 111, baseType: !2039, size: 192)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags_request", file: !51, line: 66, size: 192, elements: !2040)
!2040 = !{!2041, !2042}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2039, file: !51, line: 67, baseType: !119, size: 128)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2039, file: !51, line: 68, baseType: !679, size: 32, offset: 128)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !2030, file: !51, line: 112, baseType: !2044, size: 448)
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_qos_request", file: !51, line: 92, size: 448, elements: !2045)
!2045 = !{!2046, !2047, !2048}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2044, file: !51, line: 93, baseType: !63, size: 32)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !2044, file: !51, line: 94, baseType: !2033, size: 320, offset: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2044, file: !51, line: 95, baseType: !2049, size: 64, offset: 384)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2026, file: !51, line: 114, baseType: !107, size: 64, offset: 512)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance_req", scope: !1995, file: !51, line: 123, baseType: !2025, size: 64, offset: 2176)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "flags_req", scope: !1995, file: !51, line: 124, baseType: !2025, size: 64, offset: 2240)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !108, file: !30, line: 486, baseType: !2054, size: 64, offset: 4096)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !2056)
!2056 = !{!2057, !2058, !2059, !2063, !2064, !2065}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2055, file: !37, line: 643, baseType: !1699, size: 1472)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2055, file: !37, line: 644, baseType: !1674, size: 64, offset: 1472)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2055, file: !37, line: 645, baseType: !2060, size: 64, offset: 1536)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{null, !107, !1021}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2055, file: !37, line: 646, baseType: !1674, size: 64, offset: 1600)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2055, file: !37, line: 647, baseType: !1678, size: 64, offset: 1664)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2055, file: !37, line: 648, baseType: !1678, size: 64, offset: 1728)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !108, file: !30, line: 493, baseType: !2067, size: 64, offset: 4160)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !68, line: 162, size: 1088, elements: !2069)
!2069 = !{!2070, !2071, !2072, !2246, !2247, !2248, !2249, !2250, !2251, !2254, !2255, !2256, !2257, !2258, !2259, !2260}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2068, file: !68, line: 163, baseType: !119, size: 128)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2068, file: !68, line: 164, baseType: !115, size: 64, offset: 128)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2068, file: !68, line: 165, baseType: !2073, size: 64, offset: 192)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2075)
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !68, line: 105, size: 640, elements: !2076)
!2076 = !{!2077, !2195, !2206, !2211, !2215, !2223, !2227, !2231, !2238, !2242}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2075, file: !68, line: 106, baseType: !2078, size: 64)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{!159, !2067, !2081, !67}
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2083, line: 51, size: 1344, elements: !2084)
!2083 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!2084 = !{!2085, !2086, !2088, !2089, !2179, !2188, !2189, !2190, !2191, !2192, !2193, !2194}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2082, file: !2083, line: 52, baseType: !115, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !2082, file: !2083, line: 53, baseType: !2087, size: 32, offset: 64)
!2087 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !2083, line: 28, baseType: !449)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !2082, file: !2083, line: 54, baseType: !115, size: 64, offset: 128)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2082, file: !2083, line: 55, baseType: !2090, size: 192, offset: 192)
!2090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2091, line: 17, size: 192, elements: !2092)
!2091 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!2092 = !{!2093, !2095, !2178}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !2090, file: !2091, line: 18, baseType: !2094, size: 64)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2090, file: !2091, line: 19, baseType: !2096, size: 64, offset: 64)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2098)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !2091, line: 110, size: 1152, elements: !2099)
!2099 = !{!2100, !2104, !2108, !2114, !2120, !2124, !2128, !2133, !2137, !2138, !2142, !2146, !2150, !2161, !2162, !2163, !2164, !2174}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2098, file: !2091, line: 111, baseType: !2101, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!2094, !2094}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2098, file: !2091, line: 112, baseType: !2105, size: 64, offset: 64)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{null, !2094}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !2098, file: !2091, line: 113, baseType: !2109, size: 64, offset: 128)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{!1021, !2112}
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2090)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !2098, file: !2091, line: 114, baseType: !2115, size: 64, offset: 192)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{!1152, !2112, !2118}
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !2098, file: !2091, line: 116, baseType: !2121, size: 64, offset: 256)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!1021, !2112, !115}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !2098, file: !2091, line: 118, baseType: !2125, size: 64, offset: 320)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!159, !2112, !115, !7, !249, !222}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !2098, file: !2091, line: 123, baseType: !2129, size: 64, offset: 384)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{!159, !2112, !115, !2132, !222}
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2098, file: !2091, line: 126, baseType: !2134, size: 64, offset: 448)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!115, !2112}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !2098, file: !2091, line: 127, baseType: !2134, size: 64, offset: 512)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2098, file: !2091, line: 128, baseType: !2139, size: 64, offset: 576)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{!2094, !2112}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !2098, file: !2091, line: 130, baseType: !2143, size: 64, offset: 640)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!2094, !2112, !2094}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !2098, file: !2091, line: 133, baseType: !2147, size: 64, offset: 704)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!2094, !2112, !115}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !2098, file: !2091, line: 135, baseType: !2151, size: 64, offset: 768)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!159, !2112, !115, !115, !7, !7, !2154}
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !2091, line: 43, size: 640, elements: !2156)
!2156 = !{!2157, !2158, !2159}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2155, file: !2091, line: 44, baseType: !2094, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2155, file: !2091, line: 45, baseType: !7, size: 32, offset: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2155, file: !2091, line: 46, baseType: !2160, size: 512, offset: 128)
!2160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 512, elements: !555)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !2098, file: !2091, line: 140, baseType: !2143, size: 64, offset: 832)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !2098, file: !2091, line: 143, baseType: !2139, size: 64, offset: 896)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !2098, file: !2091, line: 145, baseType: !2101, size: 64, offset: 960)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !2098, file: !2091, line: 146, baseType: !2165, size: 64, offset: 1024)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!159, !2112, !2168}
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !2091, line: 29, size: 128, elements: !2170)
!2170 = !{!2171, !2172, !2173}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2169, file: !2091, line: 30, baseType: !7, size: 32)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2169, file: !2091, line: 31, baseType: !7, size: 32, offset: 32)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2169, file: !2091, line: 32, baseType: !2112, size: 64, offset: 64)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !2098, file: !2091, line: 148, baseType: !2175, size: 64, offset: 1088)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!159, !2112, !107}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2090, file: !2091, line: 20, baseType: !107, size: 64, offset: 128)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2082, file: !2083, line: 57, baseType: !2180, size: 64, offset: 384)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !2083, line: 31, size: 704, elements: !2182)
!2182 = !{!2183, !2184, !2185, !2186, !2187}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2181, file: !2083, line: 32, baseType: !175, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2181, file: !2083, line: 33, baseType: !159, size: 32, offset: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2181, file: !2083, line: 34, baseType: !249, size: 64, offset: 128)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2181, file: !2083, line: 35, baseType: !2180, size: 64, offset: 192)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2181, file: !2083, line: 43, baseType: !244, size: 448, offset: 256)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !2082, file: !2083, line: 58, baseType: !2180, size: 64, offset: 448)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2082, file: !2083, line: 59, baseType: !2081, size: 64, offset: 512)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2082, file: !2083, line: 60, baseType: !2081, size: 64, offset: 576)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2082, file: !2083, line: 61, baseType: !2081, size: 64, offset: 640)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2082, file: !2083, line: 63, baseType: !111, size: 512, offset: 704)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2082, file: !2083, line: 65, baseType: !225, size: 64, offset: 1216)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2082, file: !2083, line: 66, baseType: !249, size: 64, offset: 1280)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !2075, file: !68, line: 108, baseType: !2196, size: 64, offset: 64)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!159, !2067, !2199, !67}
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !68, line: 63, size: 640, elements: !2201)
!2201 = !{!2202, !2203, !2204}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2200, file: !68, line: 64, baseType: !2094, size: 64)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !2200, file: !68, line: 65, baseType: !159, size: 32, offset: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !2200, file: !68, line: 66, baseType: !2205, size: 512, offset: 96)
!2205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !449, size: 512, elements: !812)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !2075, file: !68, line: 110, baseType: !2207, size: 64, offset: 128)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{!159, !2067, !7, !2210}
!2210 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !120, line: 164, baseType: !225)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !2075, file: !68, line: 111, baseType: !2212, size: 64, offset: 192)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{null, !2067, !7}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !2075, file: !68, line: 112, baseType: !2216, size: 64, offset: 256)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{!159, !2067, !2081, !2219, !7, !2221, !2222}
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !449)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2075, file: !68, line: 117, baseType: !2224, size: 64, offset: 320)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{!159, !2067, !7, !7, !249}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2075, file: !68, line: 119, baseType: !2228, size: 64, offset: 384)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DISubroutineType(types: !2230)
!2230 = !{null, !2067, !7, !7}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2075, file: !68, line: 121, baseType: !2232, size: 64, offset: 448)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{!159, !2067, !2235, !1021}
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !2237, line: 11, flags: DIFlagFwdDecl)
!2237 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !2075, file: !68, line: 122, baseType: !2239, size: 64, offset: 512)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{null, !2067, !2235}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !2075, file: !68, line: 123, baseType: !2243, size: 64, offset: 576)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = !DISubroutineType(types: !2245)
!2245 = !{!159, !2067, !2199, !2221, !2222}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !2068, file: !68, line: 166, baseType: !249, size: 64, offset: 256)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2068, file: !68, line: 167, baseType: !7, size: 32, offset: 320)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !2068, file: !68, line: 168, baseType: !7, size: 32, offset: 352)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2068, file: !68, line: 171, baseType: !2094, size: 64, offset: 384)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !2068, file: !68, line: 172, baseType: !67, size: 32, offset: 448)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !2068, file: !68, line: 173, baseType: !2252, size: 64, offset: 512)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !68, line: 134, flags: DIFlagFwdDecl)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2068, file: !68, line: 175, baseType: !2067, size: 64, offset: 576)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !2068, file: !68, line: 182, baseType: !2210, size: 64, offset: 640)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !2068, file: !68, line: 183, baseType: !7, size: 32, offset: 704)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !2068, file: !68, line: 184, baseType: !7, size: 32, offset: 736)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !2068, file: !68, line: 185, baseType: !1488, size: 128, offset: 768)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !2068, file: !68, line: 186, baseType: !394, size: 192, offset: 896)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !2068, file: !68, line: 187, baseType: !2261, offset: 1088)
!2261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !1374)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !108, file: !30, line: 499, baseType: !119, size: 128, offset: 4224)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !108, file: !30, line: 502, baseType: !2264, size: 64, offset: 4352)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2266)
!2266 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !108, file: !30, line: 504, baseType: !2268, size: 64, offset: 4416)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !108, file: !30, line: 505, baseType: !295, size: 64, offset: 4480)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !108, file: !30, line: 510, baseType: !295, size: 64, offset: 4544)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !108, file: !30, line: 511, baseType: !2272, size: 64, offset: 4608)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2274)
!2274 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !108, file: !30, line: 513, baseType: !2276, size: 64, offset: 4672)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !2278)
!2278 = !{!2279, !2280}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2277, file: !30, line: 293, baseType: !7, size: 32)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2277, file: !30, line: 294, baseType: !225, size: 64, offset: 64)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !108, file: !30, line: 515, baseType: !119, size: 128, offset: 4736)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !108, file: !30, line: 526, baseType: !2283, offset: 4864)
!2283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2284, line: 5, elements: !147)
!2284 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !108, file: !30, line: 528, baseType: !2081, size: 64, offset: 4864)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !108, file: !30, line: 529, baseType: !2094, size: 64, offset: 4928)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !108, file: !30, line: 534, baseType: !2288, size: 32, offset: 4992)
!2288 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !120, line: 16, baseType: !2289)
!2289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !120, line: 13, baseType: !449)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !108, file: !30, line: 535, baseType: !449, size: 32, offset: 5024)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !108, file: !30, line: 537, baseType: !133, offset: 5056)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !108, file: !30, line: 538, baseType: !119, size: 128, offset: 5056)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !108, file: !30, line: 540, baseType: !1759, size: 64, offset: 5184)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !108, file: !30, line: 541, baseType: !229, size: 64, offset: 5248)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !108, file: !30, line: 543, baseType: !1678, size: 64, offset: 5312)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !108, file: !30, line: 544, baseType: !2297, size: 64, offset: 5376)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !108, file: !30, line: 545, baseType: !2300, size: 64, offset: 5440)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !108, file: !30, line: 547, baseType: !1021, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !108, file: !30, line: 548, baseType: !1021, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !108, file: !30, line: 549, baseType: !1021, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !108, file: !30, line: 550, baseType: !1021, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu", file: !2308, line: 26, size: 5632, elements: !2309)
!2308 = !DIFile(filename: "./include/linux/cpu.h", directory: "/home/lizy2001/genbc/linux")
!2309 = !{!2310, !2311, !2312}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2307, file: !2308, line: 27, baseType: !159, size: 32)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "hotpluggable", scope: !2307, file: !2308, line: 28, baseType: !159, size: 32, offset: 32)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2307, file: !2308, line: 29, baseType: !108, size: 5568, offset: 64)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_attr", file: !3, line: 201, size: 320, elements: !2315)
!2315 = !{!2316, !2329}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2314, file: !3, line: 202, baseType: !2317, size: 256)
!2317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !30, line: 99, size: 256, elements: !2318)
!2318 = !{!2319, !2320, !2325}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2317, file: !30, line: 100, baseType: !212, size: 128)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2317, file: !30, line: 101, baseType: !2321, size: 64, offset: 128)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{!206, !107, !2324, !175}
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2317, file: !30, line: 103, baseType: !2326, size: 64, offset: 192)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{!206, !107, !2324, !115, !222}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !2314, file: !3, line: 203, baseType: !2330, size: 64, offset: 256)
!2330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2331)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !602)
!2333 = !{!0, !2334, !2336, !2338, !2341, !2343, !2346, !2348, !2351, !2354, !2356, !2358, !2360, !2362, !2364, !2369, !2371, !2373, !2375, !2377, !2379, !2381, !2383, !2385}
!2334 = !DIGlobalVariableExpression(var: !2335, expr: !DIExpression())
!2335 = distinct !DIGlobalVariable(name: "cpu_sys_devices", scope: !2, file: !3, line: 26, type: !107, isLocal: true, isDefinition: true)
!2336 = !DIGlobalVariableExpression(var: !2337, expr: !DIExpression())
!2337 = distinct !DIGlobalVariable(name: "total_cpus", scope: !2, file: !3, line: 236, type: !7, isLocal: false, isDefinition: true)
!2338 = !DIGlobalVariableExpression(var: !2339, expr: !DIExpression())
!2339 = distinct !DIGlobalVariable(name: "common_cpu_attr_groups", scope: !2, file: !3, line: 183, type: !2340, isLocal: true, isDefinition: true)
!2340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 64, elements: !606)
!2341 = !DIGlobalVariableExpression(var: !2342, expr: !DIExpression())
!2342 = distinct !DIGlobalVariable(name: "hotplugable_cpu_attr_groups", scope: !2, file: !3, line: 190, type: !2340, isLocal: true, isDefinition: true)
!2343 = !DIGlobalVariableExpression(var: !2344, expr: !DIExpression())
!2344 = distinct !DIGlobalVariable(name: "cpu_root_attr_groups", scope: !2, file: !3, line: 484, type: !2345, isLocal: true, isDefinition: true)
!2345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 128, elements: !993)
!2346 = !DIGlobalVariableExpression(var: !2347, expr: !DIExpression())
!2347 = distinct !DIGlobalVariable(name: "cpu_root_attr_group", scope: !2, file: !3, line: 480, type: !232, isLocal: true, isDefinition: true)
!2348 = !DIGlobalVariableExpression(var: !2349, expr: !DIExpression())
!2349 = distinct !DIGlobalVariable(name: "cpu_root_attrs", scope: !2, file: !3, line: 460, type: !2350, isLocal: true, isDefinition: true)
!2350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 512, elements: !555)
!2351 = !DIGlobalVariableExpression(var: !2352, expr: !DIExpression())
!2352 = distinct !DIGlobalVariable(name: "cpu_attrs", scope: !2, file: !3, line: 219, type: !2353, isLocal: true, isDefinition: true)
!2353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2314, size: 960, elements: !176)
!2354 = !DIGlobalVariableExpression(var: !2355, expr: !DIExpression())
!2355 = distinct !DIGlobalVariable(name: "dev_attr_kernel_max", scope: !2, file: !3, line: 233, type: !2317, isLocal: true, isDefinition: true)
!2356 = !DIGlobalVariableExpression(var: !2357, expr: !DIExpression())
!2357 = distinct !DIGlobalVariable(name: "dev_attr_offline", scope: !2, file: !3, line: 266, type: !2317, isLocal: true, isDefinition: true)
!2358 = !DIGlobalVariableExpression(var: !2359, expr: !DIExpression())
!2359 = distinct !DIGlobalVariable(name: "dev_attr_isolated", scope: !2, file: !3, line: 285, type: !2317, isLocal: true, isDefinition: true)
!2360 = !DIGlobalVariableExpression(var: !2361, expr: !DIExpression())
!2361 = distinct !DIGlobalVariable(name: "dev_attr_modalias", scope: !2, file: !3, line: 457, type: !2317, isLocal: true, isDefinition: true)
!2362 = !DIGlobalVariableExpression(var: !2363, expr: !DIExpression())
!2363 = distinct !DIGlobalVariable(name: "cpu_root_vulnerabilities_group", scope: !2, file: !3, line: 592, type: !231, isLocal: true, isDefinition: true)
!2364 = !DIGlobalVariableExpression(var: !2365, expr: !DIExpression())
!2365 = distinct !DIGlobalVariable(name: "cpu_root_vulnerabilities_attrs", scope: !2, file: !3, line: 579, type: !2366, isLocal: true, isDefinition: true)
!2366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 640, elements: !2367)
!2367 = !{!2368}
!2368 = !DISubrange(count: 10)
!2369 = !DIGlobalVariableExpression(var: !2370, expr: !DIExpression())
!2370 = distinct !DIGlobalVariable(name: "dev_attr_meltdown", scope: !2, file: !3, line: 569, type: !2317, isLocal: true, isDefinition: true)
!2371 = !DIGlobalVariableExpression(var: !2372, expr: !DIExpression())
!2372 = distinct !DIGlobalVariable(name: "dev_attr_spectre_v1", scope: !2, file: !3, line: 570, type: !2317, isLocal: true, isDefinition: true)
!2373 = !DIGlobalVariableExpression(var: !2374, expr: !DIExpression())
!2374 = distinct !DIGlobalVariable(name: "dev_attr_spectre_v2", scope: !2, file: !3, line: 571, type: !2317, isLocal: true, isDefinition: true)
!2375 = !DIGlobalVariableExpression(var: !2376, expr: !DIExpression())
!2376 = distinct !DIGlobalVariable(name: "dev_attr_spec_store_bypass", scope: !2, file: !3, line: 572, type: !2317, isLocal: true, isDefinition: true)
!2377 = !DIGlobalVariableExpression(var: !2378, expr: !DIExpression())
!2378 = distinct !DIGlobalVariable(name: "dev_attr_l1tf", scope: !2, file: !3, line: 573, type: !2317, isLocal: true, isDefinition: true)
!2379 = !DIGlobalVariableExpression(var: !2380, expr: !DIExpression())
!2380 = distinct !DIGlobalVariable(name: "dev_attr_mds", scope: !2, file: !3, line: 574, type: !2317, isLocal: true, isDefinition: true)
!2381 = !DIGlobalVariableExpression(var: !2382, expr: !DIExpression())
!2382 = distinct !DIGlobalVariable(name: "dev_attr_tsx_async_abort", scope: !2, file: !3, line: 575, type: !2317, isLocal: true, isDefinition: true)
!2383 = !DIGlobalVariableExpression(var: !2384, expr: !DIExpression())
!2384 = distinct !DIGlobalVariable(name: "dev_attr_itlb_multihit", scope: !2, file: !3, line: 576, type: !2317, isLocal: true, isDefinition: true)
!2385 = !DIGlobalVariableExpression(var: !2386, expr: !DIExpression())
!2386 = distinct !DIGlobalVariable(name: "dev_attr_srbds", scope: !2, file: !3, line: 577, type: !2317, isLocal: true, isDefinition: true)
!2387 = !{i32 7, !"Dwarf Version", i32 4}
!2388 = !{i32 2, !"Debug Info Version", i32 3}
!2389 = !{i32 1, !"wchar_size", i32 2}
!2390 = !{i32 1, !"Code Model", i32 2}
!2391 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2392 = distinct !DISubprogram(name: "cpu_subsys_match", scope: !3, file: !3, line: 28, type: !1667, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!2393 = !DILocalVariable(name: "dev", arg: 1, scope: !2392, file: !3, line: 28, type: !107)
!2394 = !DILocation(line: 28, column: 44, scope: !2392)
!2395 = !DILocalVariable(name: "drv", arg: 2, scope: !2392, file: !3, line: 28, type: !1650)
!2396 = !DILocation(line: 28, column: 71, scope: !2392)
!2397 = !DILocation(line: 31, column: 31, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2392, file: !3, line: 31, column: 6)
!2399 = !DILocation(line: 31, column: 36, scope: !2398)
!2400 = !DILocation(line: 31, column: 6, scope: !2398)
!2401 = !DILocation(line: 31, column: 6, scope: !2392)
!2402 = !DILocation(line: 32, column: 3, scope: !2398)
!2403 = !DILocation(line: 34, column: 2, scope: !2392)
!2404 = !DILocation(line: 35, column: 1, scope: !2392)
!2405 = distinct !DISubprogram(name: "register_cpu", scope: !3, file: !3, line: 359, type: !2406, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !147)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!159, !2306, !159}
!2408 = !DILocalVariable(name: "cpu", arg: 1, scope: !2405, file: !3, line: 359, type: !2306)
!2409 = !DILocation(line: 359, column: 30, scope: !2405)
!2410 = !DILocalVariable(name: "num", arg: 2, scope: !2405, file: !3, line: 359, type: !159)
!2411 = !DILocation(line: 359, column: 39, scope: !2405)
!2412 = !DILocalVariable(name: "error", scope: !2405, file: !3, line: 361, type: !159)
!2413 = !DILocation(line: 361, column: 6, scope: !2405)
!2414 = !DILocation(line: 363, column: 17, scope: !2405)
!2415 = !DILocation(line: 363, column: 2, scope: !2405)
!2416 = !DILocation(line: 363, column: 7, scope: !2405)
!2417 = !DILocation(line: 363, column: 15, scope: !2405)
!2418 = !DILocation(line: 364, column: 10, scope: !2405)
!2419 = !DILocation(line: 364, column: 15, scope: !2405)
!2420 = !DILocation(line: 364, column: 2, scope: !2405)
!2421 = !DILocation(line: 365, column: 16, scope: !2405)
!2422 = !DILocation(line: 365, column: 2, scope: !2405)
!2423 = !DILocation(line: 365, column: 7, scope: !2405)
!2424 = !DILocation(line: 365, column: 11, scope: !2405)
!2425 = !DILocation(line: 365, column: 14, scope: !2405)
!2426 = !DILocation(line: 366, column: 2, scope: !2405)
!2427 = !DILocation(line: 366, column: 7, scope: !2405)
!2428 = !DILocation(line: 366, column: 11, scope: !2405)
!2429 = !DILocation(line: 366, column: 15, scope: !2405)
!2430 = !DILocation(line: 367, column: 2, scope: !2405)
!2431 = !DILocation(line: 367, column: 7, scope: !2405)
!2432 = !DILocation(line: 367, column: 11, scope: !2405)
!2433 = !DILocation(line: 367, column: 19, scope: !2405)
!2434 = !DILocation(line: 368, column: 31, scope: !2405)
!2435 = !DILocation(line: 368, column: 36, scope: !2405)
!2436 = !DILocation(line: 368, column: 30, scope: !2405)
!2437 = !DILocation(line: 368, column: 2, scope: !2405)
!2438 = !DILocation(line: 368, column: 7, scope: !2405)
!2439 = !DILocation(line: 368, column: 11, scope: !2405)
!2440 = !DILocation(line: 368, column: 28, scope: !2405)
!2441 = !DILocation(line: 369, column: 22, scope: !2405)
!2442 = !DILocation(line: 369, column: 21, scope: !2405)
!2443 = !DILocation(line: 369, column: 2, scope: !2405)
!2444 = !DILocation(line: 369, column: 7, scope: !2405)
!2445 = !DILocation(line: 369, column: 11, scope: !2405)
!2446 = !DILocation(line: 369, column: 19, scope: !2405)
!2447 = !DILocation(line: 370, column: 37, scope: !2405)
!2448 = !DILocation(line: 370, column: 21, scope: !2405)
!2449 = !DILocation(line: 370, column: 2, scope: !2405)
!2450 = !DILocation(line: 370, column: 7, scope: !2405)
!2451 = !DILocation(line: 370, column: 11, scope: !2405)
!2452 = !DILocation(line: 370, column: 19, scope: !2405)
!2453 = !DILocation(line: 372, column: 2, scope: !2405)
!2454 = !DILocation(line: 372, column: 7, scope: !2405)
!2455 = !DILocation(line: 372, column: 11, scope: !2405)
!2456 = !DILocation(line: 372, column: 16, scope: !2405)
!2457 = !DILocation(line: 372, column: 23, scope: !2405)
!2458 = !DILocation(line: 374, column: 2, scope: !2405)
!2459 = !DILocation(line: 374, column: 7, scope: !2405)
!2460 = !DILocation(line: 374, column: 11, scope: !2405)
!2461 = !DILocation(line: 374, column: 18, scope: !2405)
!2462 = !DILocation(line: 375, column: 6, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2405, file: !3, line: 375, column: 6)
!2464 = !DILocation(line: 375, column: 11, scope: !2463)
!2465 = !DILocation(line: 375, column: 6, scope: !2405)
!2466 = !DILocation(line: 376, column: 3, scope: !2463)
!2467 = !DILocation(line: 376, column: 8, scope: !2463)
!2468 = !DILocation(line: 376, column: 12, scope: !2463)
!2469 = !DILocation(line: 376, column: 19, scope: !2463)
!2470 = !DILocation(line: 377, column: 27, scope: !2405)
!2471 = !DILocation(line: 377, column: 32, scope: !2405)
!2472 = !DILocation(line: 377, column: 10, scope: !2405)
!2473 = !DILocation(line: 377, column: 8, scope: !2405)
!2474 = !DILocation(line: 378, column: 6, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2405, file: !3, line: 378, column: 6)
!2476 = !DILocation(line: 378, column: 6, scope: !2405)
!2477 = !DILocation(line: 379, column: 15, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2475, file: !3, line: 378, column: 13)
!2479 = !DILocation(line: 379, column: 20, scope: !2478)
!2480 = !DILocation(line: 379, column: 3, scope: !2478)
!2481 = !DILocation(line: 380, column: 10, scope: !2478)
!2482 = !DILocation(line: 380, column: 3, scope: !2478)
!2483 = !DILocation(line: 383, column: 35, scope: !2405)
!2484 = !DILocation(line: 383, column: 40, scope: !2405)
!2485 = !DILocation(line: 383, column: 2, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2405, file: !3, line: 383, column: 2)
!2487 = !DILocation(line: 383, column: 2, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 383, column: 2)
!2489 = !DILocalVariable(name: "__vpp_verify", scope: !2490, file: !3, line: 383, type: !1152)
!2490 = distinct !DILexicalBlock(scope: !2488, file: !3, line: 383, column: 2)
!2491 = !DILocation(line: 383, column: 2, scope: !2490)
!2492 = !DILocation(line: 383, column: 32, scope: !2405)
!2493 = !DILocation(line: 384, column: 26, scope: !2405)
!2494 = !DILocation(line: 384, column: 31, scope: !2405)
!2495 = !DILocation(line: 384, column: 2, scope: !2405)
!2496 = !DILocation(line: 385, column: 35, scope: !2405)
!2497 = !DILocation(line: 385, column: 40, scope: !2405)
!2498 = !DILocation(line: 385, column: 2, scope: !2405)
!2499 = !DILocation(line: 388, column: 2, scope: !2405)
!2500 = !DILocation(line: 389, column: 1, scope: !2405)
!2501 = distinct !DISubprogram(name: "cpu_device_release", scope: !3, file: !3, line: 296, type: !1679, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!2502 = !DILocalVariable(name: "dev", arg: 1, scope: !2501, file: !3, line: 296, type: !107)
!2503 = !DILocation(line: 296, column: 47, scope: !2501)
!2504 = !DILocation(line: 313, column: 1, scope: !2501)
!2505 = distinct !DISubprogram(name: "cpu_uevent", scope: !3, file: !3, line: 339, type: !1671, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!2506 = !DILocalVariable(name: "dev", arg: 1, scope: !2505, file: !3, line: 339, type: !107)
!2507 = !DILocation(line: 339, column: 38, scope: !2505)
!2508 = !DILocalVariable(name: "env", arg: 2, scope: !2505, file: !3, line: 339, type: !170)
!2509 = !DILocation(line: 339, column: 67, scope: !2505)
!2510 = !DILocalVariable(name: "buf", scope: !2505, file: !3, line: 341, type: !175)
!2511 = !DILocation(line: 341, column: 8, scope: !2505)
!2512 = !DILocation(line: 341, column: 14, scope: !2505)
!2513 = !DILocation(line: 342, column: 6, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2505, file: !3, line: 342, column: 6)
!2515 = !DILocation(line: 342, column: 6, scope: !2505)
!2516 = !DILocation(line: 343, column: 34, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2514, file: !3, line: 342, column: 11)
!2518 = !DILocation(line: 343, column: 3, scope: !2517)
!2519 = !DILocation(line: 344, column: 18, scope: !2517)
!2520 = !DILocation(line: 344, column: 38, scope: !2517)
!2521 = !DILocation(line: 344, column: 3, scope: !2517)
!2522 = !DILocation(line: 345, column: 9, scope: !2517)
!2523 = !DILocation(line: 345, column: 3, scope: !2517)
!2524 = !DILocation(line: 346, column: 2, scope: !2517)
!2525 = !DILocation(line: 347, column: 2, scope: !2505)
!2526 = distinct !DISubprogram(name: "register_cpu_under_node", scope: !2527, file: !2527, line: 164, type: !2528, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!2527 = !DIFile(filename: "./include/linux/node.h", directory: "/home/lizy2001/genbc/linux")
!2528 = !DISubroutineType(types: !2529)
!2529 = !{!159, !7, !7}
!2530 = !DILocalVariable(name: "cpu", arg: 1, scope: !2526, file: !2527, line: 164, type: !7)
!2531 = !DILocation(line: 164, column: 56, scope: !2526)
!2532 = !DILocalVariable(name: "nid", arg: 2, scope: !2526, file: !2527, line: 164, type: !7)
!2533 = !DILocation(line: 164, column: 74, scope: !2526)
!2534 = !DILocation(line: 166, column: 2, scope: !2526)
!2535 = distinct !DISubprogram(name: "get_cpu_device", scope: !3, file: !3, line: 391, type: !2536, scopeLine: 392, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !147)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!107, !7}
!2538 = !DILocalVariable(name: "cpu", arg: 1, scope: !2535, file: !3, line: 391, type: !7)
!2539 = !DILocation(line: 391, column: 40, scope: !2535)
!2540 = !DILocation(line: 393, column: 6, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2535, file: !3, line: 393, column: 6)
!2542 = !DILocation(line: 393, column: 10, scope: !2541)
!2543 = !DILocation(line: 393, column: 23, scope: !2541)
!2544 = !DILocation(line: 393, column: 26, scope: !2541)
!2545 = !DILocation(line: 393, column: 6, scope: !2535)
!2546 = !DILocation(line: 394, column: 10, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2541, file: !3, line: 394, column: 10)
!2548 = !DILocation(line: 394, column: 10, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2547, file: !3, line: 394, column: 10)
!2550 = !DILocalVariable(name: "__vpp_verify", scope: !2551, file: !3, line: 394, type: !1152)
!2551 = distinct !DILexicalBlock(scope: !2549, file: !3, line: 394, column: 10)
!2552 = !DILocation(line: 394, column: 10, scope: !2551)
!2553 = !DILocation(line: 394, column: 10, scope: !2541)
!2554 = !DILocation(line: 394, column: 3, scope: !2541)
!2555 = !DILocation(line: 396, column: 3, scope: !2541)
!2556 = !DILocation(line: 397, column: 1, scope: !2535)
!2557 = distinct !DISubprogram(name: "cpu_device_create", scope: !3, file: !3, line: 442, type: !2558, scopeLine: 445, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !147)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{!107, !107, !249, !229, !115, null}
!2560 = !DILocalVariable(name: "parent", arg: 1, scope: !2557, file: !3, line: 442, type: !107)
!2561 = !DILocation(line: 442, column: 49, scope: !2557)
!2562 = !DILocalVariable(name: "drvdata", arg: 2, scope: !2557, file: !3, line: 442, type: !249)
!2563 = !DILocation(line: 442, column: 63, scope: !2557)
!2564 = !DILocalVariable(name: "groups", arg: 3, scope: !2557, file: !3, line: 443, type: !229)
!2565 = !DILocation(line: 443, column: 37, scope: !2557)
!2566 = !DILocalVariable(name: "fmt", arg: 4, scope: !2557, file: !3, line: 444, type: !115)
!2567 = !DILocation(line: 444, column: 18, scope: !2557)
!2568 = !DILocalVariable(name: "vargs", scope: !2557, file: !3, line: 446, type: !2569)
!2569 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2570, line: 99, baseType: !2571)
!2570 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdarg.h", directory: "")
!2571 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2570, line: 40, baseType: !2572)
!2572 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 446, baseType: !2573)
!2573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2574, size: 192, elements: !606)
!2574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 446, size: 192, elements: !2575)
!2575 = !{!2576, !2577, !2578, !2579}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2574, file: !3, line: 446, baseType: !7, size: 32)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2574, file: !3, line: 446, baseType: !7, size: 32, offset: 32)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2574, file: !3, line: 446, baseType: !249, size: 64, offset: 64)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2574, file: !3, line: 446, baseType: !249, size: 64, offset: 128)
!2580 = !DILocation(line: 446, column: 10, scope: !2557)
!2581 = !DILocalVariable(name: "dev", scope: !2557, file: !3, line: 447, type: !107)
!2582 = !DILocation(line: 447, column: 17, scope: !2557)
!2583 = !DILocation(line: 449, column: 2, scope: !2557)
!2584 = !DILocation(line: 450, column: 28, scope: !2557)
!2585 = !DILocation(line: 450, column: 36, scope: !2557)
!2586 = !DILocation(line: 450, column: 45, scope: !2557)
!2587 = !DILocation(line: 450, column: 53, scope: !2557)
!2588 = !DILocation(line: 450, column: 58, scope: !2557)
!2589 = !DILocation(line: 450, column: 8, scope: !2557)
!2590 = !DILocation(line: 450, column: 6, scope: !2557)
!2591 = !DILocation(line: 451, column: 2, scope: !2557)
!2592 = !DILocation(line: 452, column: 9, scope: !2557)
!2593 = !DILocation(line: 452, column: 2, scope: !2557)
!2594 = distinct !DISubprogram(name: "__cpu_device_create", scope: !3, file: !3, line: 407, type: !2595, scopeLine: 410, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!2595 = !DISubroutineType(types: !2596)
!2596 = !{!107, !107, !249, !229, !115, !2597}
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2598 = !DILocalVariable(name: "parent", arg: 1, scope: !2594, file: !3, line: 407, type: !107)
!2599 = !DILocation(line: 407, column: 36, scope: !2594)
!2600 = !DILocalVariable(name: "drvdata", arg: 2, scope: !2594, file: !3, line: 407, type: !249)
!2601 = !DILocation(line: 407, column: 50, scope: !2594)
!2602 = !DILocalVariable(name: "groups", arg: 3, scope: !2594, file: !3, line: 408, type: !229)
!2603 = !DILocation(line: 408, column: 38, scope: !2594)
!2604 = !DILocalVariable(name: "fmt", arg: 4, scope: !2594, file: !3, line: 409, type: !115)
!2605 = !DILocation(line: 409, column: 19, scope: !2594)
!2606 = !DILocalVariable(name: "args", arg: 5, scope: !2594, file: !3, line: 409, type: !2597)
!2607 = !DILocation(line: 409, column: 32, scope: !2594)
!2608 = !DILocalVariable(name: "dev", scope: !2594, file: !3, line: 411, type: !107)
!2609 = !DILocation(line: 411, column: 17, scope: !2594)
!2610 = !DILocalVariable(name: "retval", scope: !2594, file: !3, line: 412, type: !159)
!2611 = !DILocation(line: 412, column: 6, scope: !2594)
!2612 = !DILocation(line: 414, column: 8, scope: !2594)
!2613 = !DILocation(line: 414, column: 6, scope: !2594)
!2614 = !DILocation(line: 415, column: 7, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2594, file: !3, line: 415, column: 6)
!2616 = !DILocation(line: 415, column: 6, scope: !2594)
!2617 = !DILocation(line: 416, column: 10, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2615, file: !3, line: 415, column: 12)
!2619 = !DILocation(line: 417, column: 3, scope: !2618)
!2620 = !DILocation(line: 420, column: 20, scope: !2594)
!2621 = !DILocation(line: 420, column: 2, scope: !2594)
!2622 = !DILocation(line: 421, column: 16, scope: !2594)
!2623 = !DILocation(line: 421, column: 2, scope: !2594)
!2624 = !DILocation(line: 421, column: 7, scope: !2594)
!2625 = !DILocation(line: 421, column: 14, scope: !2594)
!2626 = !DILocation(line: 422, column: 16, scope: !2594)
!2627 = !DILocation(line: 422, column: 2, scope: !2594)
!2628 = !DILocation(line: 422, column: 7, scope: !2594)
!2629 = !DILocation(line: 422, column: 14, scope: !2594)
!2630 = !DILocation(line: 423, column: 2, scope: !2594)
!2631 = !DILocation(line: 423, column: 7, scope: !2594)
!2632 = !DILocation(line: 423, column: 15, scope: !2594)
!2633 = !DILocation(line: 424, column: 29, scope: !2594)
!2634 = !DILocation(line: 424, column: 2, scope: !2594)
!2635 = !DILocation(line: 425, column: 18, scope: !2594)
!2636 = !DILocation(line: 425, column: 23, scope: !2594)
!2637 = !DILocation(line: 425, column: 2, scope: !2594)
!2638 = !DILocation(line: 427, column: 35, scope: !2594)
!2639 = !DILocation(line: 427, column: 40, scope: !2594)
!2640 = !DILocation(line: 427, column: 46, scope: !2594)
!2641 = !DILocation(line: 427, column: 51, scope: !2594)
!2642 = !DILocation(line: 427, column: 11, scope: !2594)
!2643 = !DILocation(line: 427, column: 9, scope: !2594)
!2644 = !DILocation(line: 428, column: 6, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2594, file: !3, line: 428, column: 6)
!2646 = !DILocation(line: 428, column: 6, scope: !2594)
!2647 = !DILocation(line: 429, column: 3, scope: !2645)
!2648 = !DILocation(line: 431, column: 22, scope: !2594)
!2649 = !DILocation(line: 431, column: 11, scope: !2594)
!2650 = !DILocation(line: 431, column: 9, scope: !2594)
!2651 = !DILocation(line: 432, column: 6, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2594, file: !3, line: 432, column: 6)
!2653 = !DILocation(line: 432, column: 6, scope: !2594)
!2654 = !DILocation(line: 433, column: 3, scope: !2652)
!2655 = !DILocation(line: 435, column: 9, scope: !2594)
!2656 = !DILocation(line: 435, column: 2, scope: !2594)
!2657 = !DILabel(scope: !2594, name: "error", file: !3, line: 437)
!2658 = !DILocation(line: 437, column: 1, scope: !2594)
!2659 = !DILocation(line: 438, column: 13, scope: !2594)
!2660 = !DILocation(line: 438, column: 2, scope: !2594)
!2661 = !DILocation(line: 439, column: 17, scope: !2594)
!2662 = !DILocation(line: 439, column: 9, scope: !2594)
!2663 = !DILocation(line: 439, column: 2, scope: !2594)
!2664 = !DILocation(line: 440, column: 1, scope: !2594)
!2665 = distinct !DISubprogram(name: "cpu_is_hotpluggable", scope: !3, file: !3, line: 489, type: !2666, scopeLine: 490, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !147)
!2666 = !DISubroutineType(types: !2667)
!2667 = !{!1021, !7}
!2668 = !DILocalVariable(name: "cpu", arg: 1, scope: !2665, file: !3, line: 489, type: !7)
!2669 = !DILocation(line: 489, column: 35, scope: !2665)
!2670 = !DILocalVariable(name: "dev", scope: !2665, file: !3, line: 491, type: !107)
!2671 = !DILocation(line: 491, column: 17, scope: !2665)
!2672 = !DILocation(line: 491, column: 38, scope: !2665)
!2673 = !DILocation(line: 491, column: 23, scope: !2665)
!2674 = !DILocation(line: 492, column: 9, scope: !2665)
!2675 = !DILocation(line: 492, column: 13, scope: !2665)
!2676 = !DILocalVariable(name: "__mptr", scope: !2677, file: !3, line: 492, type: !249)
!2677 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 492, column: 16)
!2678 = !DILocation(line: 492, column: 16, scope: !2677)
!2679 = !DILocation(line: 492, column: 16, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2677, file: !3, line: 492, column: 16)
!2681 = !DILocation(line: 492, column: 52, scope: !2665)
!2682 = !DILocation(line: 0, scope: !2665)
!2683 = !DILocation(line: 492, column: 2, scope: !2665)
!2684 = distinct !DISubprogram(name: "cpu_show_meltdown", scope: !3, file: !3, line: 514, type: !2322, scopeLine: 516, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !147)
!2685 = !DILocalVariable(name: "dev", arg: 1, scope: !2684, file: !3, line: 514, type: !107)
!2686 = !DILocation(line: 514, column: 49, scope: !2684)
!2687 = !DILocalVariable(name: "attr", arg: 2, scope: !2684, file: !3, line: 515, type: !2324)
!2688 = !DILocation(line: 515, column: 31, scope: !2684)
!2689 = !DILocalVariable(name: "buf", arg: 3, scope: !2684, file: !3, line: 515, type: !175)
!2690 = !DILocation(line: 515, column: 43, scope: !2684)
!2691 = !DILocation(line: 517, column: 20, scope: !2684)
!2692 = !DILocation(line: 517, column: 9, scope: !2684)
!2693 = !DILocation(line: 517, column: 2, scope: !2684)
!2694 = distinct !DISubprogram(name: "cpu_show_spectre_v1", scope: !3, file: !3, line: 520, type: !2322, scopeLine: 522, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !147)
!2695 = !DILocalVariable(name: "dev", arg: 1, scope: !2694, file: !3, line: 520, type: !107)
!2696 = !DILocation(line: 520, column: 51, scope: !2694)
!2697 = !DILocalVariable(name: "attr", arg: 2, scope: !2694, file: !3, line: 521, type: !2324)
!2698 = !DILocation(line: 521, column: 33, scope: !2694)
!2699 = !DILocalVariable(name: "buf", arg: 3, scope: !2694, file: !3, line: 521, type: !175)
!2700 = !DILocation(line: 521, column: 45, scope: !2694)
!2701 = !DILocation(line: 523, column: 20, scope: !2694)
!2702 = !DILocation(line: 523, column: 9, scope: !2694)
!2703 = !DILocation(line: 523, column: 2, scope: !2694)
!2704 = distinct !DISubprogram(name: "cpu_show_spectre_v2", scope: !3, file: !3, line: 526, type: !2322, scopeLine: 528, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !147)
!2705 = !DILocalVariable(name: "dev", arg: 1, scope: !2704, file: !3, line: 526, type: !107)
!2706 = !DILocation(line: 526, column: 51, scope: !2704)
!2707 = !DILocalVariable(name: "attr", arg: 2, scope: !2704, file: !3, line: 527, type: !2324)
!2708 = !DILocation(line: 527, column: 33, scope: !2704)
!2709 = !DILocalVariable(name: "buf", arg: 3, scope: !2704, file: !3, line: 527, type: !175)
!2710 = !DILocation(line: 527, column: 45, scope: !2704)
!2711 = !DILocation(line: 529, column: 20, scope: !2704)
!2712 = !DILocation(line: 529, column: 9, scope: !2704)
!2713 = !DILocation(line: 529, column: 2, scope: !2704)
!2714 = distinct !DISubprogram(name: "cpu_show_spec_store_bypass", scope: !3, file: !3, line: 532, type: !2322, scopeLine: 534, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !147)
!2715 = !DILocalVariable(name: "dev", arg: 1, scope: !2714, file: !3, line: 532, type: !107)
!2716 = !DILocation(line: 532, column: 58, scope: !2714)
!2717 = !DILocalVariable(name: "attr", arg: 2, scope: !2714, file: !3, line: 533, type: !2324)
!2718 = !DILocation(line: 533, column: 33, scope: !2714)
!2719 = !DILocalVariable(name: "buf", arg: 3, scope: !2714, file: !3, line: 533, type: !175)
!2720 = !DILocation(line: 533, column: 45, scope: !2714)
!2721 = !DILocation(line: 535, column: 20, scope: !2714)
!2722 = !DILocation(line: 535, column: 9, scope: !2714)
!2723 = !DILocation(line: 535, column: 2, scope: !2714)
!2724 = distinct !DISubprogram(name: "cpu_show_l1tf", scope: !3, file: !3, line: 538, type: !2322, scopeLine: 540, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !147)
!2725 = !DILocalVariable(name: "dev", arg: 1, scope: !2724, file: !3, line: 538, type: !107)
!2726 = !DILocation(line: 538, column: 45, scope: !2724)
!2727 = !DILocalVariable(name: "attr", arg: 2, scope: !2724, file: !3, line: 539, type: !2324)
!2728 = !DILocation(line: 539, column: 34, scope: !2724)
!2729 = !DILocalVariable(name: "buf", arg: 3, scope: !2724, file: !3, line: 539, type: !175)
!2730 = !DILocation(line: 539, column: 46, scope: !2724)
!2731 = !DILocation(line: 541, column: 20, scope: !2724)
!2732 = !DILocation(line: 541, column: 9, scope: !2724)
!2733 = !DILocation(line: 541, column: 2, scope: !2724)
!2734 = distinct !DISubprogram(name: "cpu_show_mds", scope: !3, file: !3, line: 544, type: !2322, scopeLine: 546, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !147)
!2735 = !DILocalVariable(name: "dev", arg: 1, scope: !2734, file: !3, line: 544, type: !107)
!2736 = !DILocation(line: 544, column: 44, scope: !2734)
!2737 = !DILocalVariable(name: "attr", arg: 2, scope: !2734, file: !3, line: 545, type: !2324)
!2738 = !DILocation(line: 545, column: 33, scope: !2734)
!2739 = !DILocalVariable(name: "buf", arg: 3, scope: !2734, file: !3, line: 545, type: !175)
!2740 = !DILocation(line: 545, column: 45, scope: !2734)
!2741 = !DILocation(line: 547, column: 20, scope: !2734)
!2742 = !DILocation(line: 547, column: 9, scope: !2734)
!2743 = !DILocation(line: 547, column: 2, scope: !2734)
!2744 = distinct !DISubprogram(name: "cpu_show_tsx_async_abort", scope: !3, file: !3, line: 550, type: !2322, scopeLine: 553, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !147)
!2745 = !DILocalVariable(name: "dev", arg: 1, scope: !2744, file: !3, line: 550, type: !107)
!2746 = !DILocation(line: 550, column: 56, scope: !2744)
!2747 = !DILocalVariable(name: "attr", arg: 2, scope: !2744, file: !3, line: 551, type: !2324)
!2748 = !DILocation(line: 551, column: 31, scope: !2744)
!2749 = !DILocalVariable(name: "buf", arg: 3, scope: !2744, file: !3, line: 552, type: !175)
!2750 = !DILocation(line: 552, column: 12, scope: !2744)
!2751 = !DILocation(line: 554, column: 20, scope: !2744)
!2752 = !DILocation(line: 554, column: 9, scope: !2744)
!2753 = !DILocation(line: 554, column: 2, scope: !2744)
!2754 = distinct !DISubprogram(name: "cpu_show_itlb_multihit", scope: !3, file: !3, line: 557, type: !2322, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !147)
!2755 = !DILocalVariable(name: "dev", arg: 1, scope: !2754, file: !3, line: 557, type: !107)
!2756 = !DILocation(line: 557, column: 54, scope: !2754)
!2757 = !DILocalVariable(name: "attr", arg: 2, scope: !2754, file: !3, line: 558, type: !2324)
!2758 = !DILocation(line: 558, column: 36, scope: !2754)
!2759 = !DILocalVariable(name: "buf", arg: 3, scope: !2754, file: !3, line: 558, type: !175)
!2760 = !DILocation(line: 558, column: 48, scope: !2754)
!2761 = !DILocation(line: 560, column: 20, scope: !2754)
!2762 = !DILocation(line: 560, column: 9, scope: !2754)
!2763 = !DILocation(line: 560, column: 2, scope: !2754)
!2764 = distinct !DISubprogram(name: "cpu_show_srbds", scope: !3, file: !3, line: 563, type: !2322, scopeLine: 565, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !147)
!2765 = !DILocalVariable(name: "dev", arg: 1, scope: !2764, file: !3, line: 563, type: !107)
!2766 = !DILocation(line: 563, column: 46, scope: !2764)
!2767 = !DILocalVariable(name: "attr", arg: 2, scope: !2764, file: !3, line: 564, type: !2324)
!2768 = !DILocation(line: 564, column: 35, scope: !2764)
!2769 = !DILocalVariable(name: "buf", arg: 3, scope: !2764, file: !3, line: 564, type: !175)
!2770 = !DILocation(line: 564, column: 47, scope: !2764)
!2771 = !DILocation(line: 566, column: 20, scope: !2764)
!2772 = !DILocation(line: 566, column: 9, scope: !2764)
!2773 = !DILocation(line: 566, column: 2, scope: !2764)
!2774 = distinct !DISubprogram(name: "cpu_dev_init", scope: !3, file: !3, line: 608, type: !2775, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !147)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{null}
!2777 = !DILocation(line: 610, column: 6, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2774, file: !3, line: 610, column: 6)
!2779 = !DILocation(line: 610, column: 6, scope: !2774)
!2780 = !DILocation(line: 611, column: 3, scope: !2778)
!2781 = !DILocation(line: 613, column: 2, scope: !2774)
!2782 = !DILocation(line: 614, column: 2, scope: !2774)
!2783 = !DILocation(line: 615, column: 1, scope: !2774)
!2784 = distinct !DISubprogram(name: "cpu_dev_register_generic", scope: !3, file: !3, line: 500, type: !2775, scopeLine: 501, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!2785 = !DILocation(line: 510, column: 1, scope: !2784)
!2786 = distinct !DISubprogram(name: "cpu_register_vulnerabilities", scope: !3, file: !3, line: 597, type: !2775, scopeLine: 598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!2787 = !DILocation(line: 599, column: 37, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2786, file: !3, line: 599, column: 6)
!2789 = !DILocation(line: 599, column: 47, scope: !2788)
!2790 = !DILocation(line: 599, column: 6, scope: !2788)
!2791 = !DILocation(line: 599, column: 6, scope: !2786)
!2792 = !DILocation(line: 601, column: 3, scope: !2788)
!2793 = !DILocation(line: 602, column: 1, scope: !2786)
!2794 = distinct !DISubprogram(name: "kzalloc", scope: !82, file: !82, line: 662, type: !2795, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{!249, !222, !1493}
!2797 = !DILocalVariable(name: "s", arg: 1, scope: !2798, file: !82, line: 445, type: !1071)
!2798 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !82, file: !82, line: 445, type: !2799, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!249, !1071, !1493, !222}
!2801 = !DILocation(line: 445, column: 72, scope: !2798, inlinedAt: !2802)
!2802 = distinct !DILocation(line: 552, column: 10, scope: !2803, inlinedAt: !2806)
!2803 = distinct !DILexicalBlock(scope: !2804, file: !82, line: 540, column: 34)
!2804 = distinct !DILexicalBlock(scope: !2805, file: !82, line: 540, column: 6)
!2805 = distinct !DISubprogram(name: "kmalloc", scope: !82, file: !82, line: 538, type: !2795, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!2806 = distinct !DILocation(line: 664, column: 9, scope: !2794)
!2807 = !DILocalVariable(name: "flags", arg: 2, scope: !2798, file: !82, line: 446, type: !1493)
!2808 = !DILocation(line: 446, column: 9, scope: !2798, inlinedAt: !2802)
!2809 = !DILocalVariable(name: "size", arg: 3, scope: !2798, file: !82, line: 446, type: !222)
!2810 = !DILocation(line: 446, column: 23, scope: !2798, inlinedAt: !2802)
!2811 = !DILocalVariable(name: "ret", scope: !2798, file: !82, line: 448, type: !249)
!2812 = !DILocation(line: 448, column: 8, scope: !2798, inlinedAt: !2802)
!2813 = !DILocalVariable(name: "flags", arg: 1, scope: !2814, file: !82, line: 318, type: !1493)
!2814 = distinct !DISubprogram(name: "kmalloc_type", scope: !82, file: !82, line: 318, type: !2815, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{!81, !1493}
!2817 = !DILocation(line: 318, column: 67, scope: !2814, inlinedAt: !2818)
!2818 = distinct !DILocation(line: 553, column: 20, scope: !2803, inlinedAt: !2806)
!2819 = !DILocalVariable(name: "size", arg: 1, scope: !2820, file: !82, line: 346, type: !222)
!2820 = distinct !DISubprogram(name: "kmalloc_index", scope: !82, file: !82, line: 346, type: !2821, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{!7, !222}
!2823 = !DILocation(line: 346, column: 58, scope: !2820, inlinedAt: !2824)
!2824 = distinct !DILocation(line: 547, column: 11, scope: !2803, inlinedAt: !2806)
!2825 = !DILocalVariable(name: "size", arg: 1, scope: !2826, file: !82, line: 472, type: !222)
!2826 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !82, file: !82, line: 472, type: !2827, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{!249, !222, !1493, !7}
!2829 = !DILocation(line: 472, column: 28, scope: !2826, inlinedAt: !2830)
!2830 = distinct !DILocation(line: 481, column: 9, scope: !2831, inlinedAt: !2832)
!2831 = distinct !DISubprogram(name: "kmalloc_large", scope: !82, file: !82, line: 478, type: !2795, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!2832 = distinct !DILocation(line: 545, column: 11, scope: !2833, inlinedAt: !2806)
!2833 = distinct !DILexicalBlock(scope: !2803, file: !82, line: 544, column: 7)
!2834 = !DILocalVariable(name: "flags", arg: 2, scope: !2826, file: !82, line: 472, type: !1493)
!2835 = !DILocation(line: 472, column: 40, scope: !2826, inlinedAt: !2830)
!2836 = !DILocalVariable(name: "order", arg: 3, scope: !2826, file: !82, line: 472, type: !7)
!2837 = !DILocation(line: 472, column: 60, scope: !2826, inlinedAt: !2830)
!2838 = !DILocalVariable(name: "size", arg: 1, scope: !2831, file: !82, line: 478, type: !222)
!2839 = !DILocation(line: 478, column: 51, scope: !2831, inlinedAt: !2832)
!2840 = !DILocalVariable(name: "flags", arg: 2, scope: !2831, file: !82, line: 478, type: !1493)
!2841 = !DILocation(line: 478, column: 63, scope: !2831, inlinedAt: !2832)
!2842 = !DILocalVariable(name: "order", scope: !2831, file: !82, line: 480, type: !7)
!2843 = !DILocation(line: 480, column: 15, scope: !2831, inlinedAt: !2832)
!2844 = !DILocalVariable(name: "size", arg: 1, scope: !2805, file: !82, line: 538, type: !222)
!2845 = !DILocation(line: 538, column: 45, scope: !2805, inlinedAt: !2806)
!2846 = !DILocalVariable(name: "flags", arg: 2, scope: !2805, file: !82, line: 538, type: !1493)
!2847 = !DILocation(line: 538, column: 57, scope: !2805, inlinedAt: !2806)
!2848 = !DILocalVariable(name: "index", scope: !2803, file: !82, line: 542, type: !7)
!2849 = !DILocation(line: 542, column: 16, scope: !2803, inlinedAt: !2806)
!2850 = !DILocalVariable(name: "size", arg: 1, scope: !2794, file: !82, line: 662, type: !222)
!2851 = !DILocation(line: 662, column: 36, scope: !2794)
!2852 = !DILocalVariable(name: "flags", arg: 2, scope: !2794, file: !82, line: 662, type: !1493)
!2853 = !DILocation(line: 662, column: 48, scope: !2794)
!2854 = !DILocation(line: 664, column: 17, scope: !2794)
!2855 = !DILocation(line: 664, column: 23, scope: !2794)
!2856 = !DILocation(line: 664, column: 29, scope: !2794)
!2857 = !DILocation(line: 540, column: 27, scope: !2804, inlinedAt: !2806)
!2858 = !DILocation(line: 540, column: 6, scope: !2804, inlinedAt: !2806)
!2859 = !DILocation(line: 540, column: 6, scope: !2805, inlinedAt: !2806)
!2860 = !DILocation(line: 544, column: 7, scope: !2833, inlinedAt: !2806)
!2861 = !DILocation(line: 544, column: 12, scope: !2833, inlinedAt: !2806)
!2862 = !DILocation(line: 544, column: 7, scope: !2803, inlinedAt: !2806)
!2863 = !DILocation(line: 545, column: 25, scope: !2833, inlinedAt: !2806)
!2864 = !DILocation(line: 545, column: 31, scope: !2833, inlinedAt: !2806)
!2865 = !DILocation(line: 480, column: 33, scope: !2831, inlinedAt: !2832)
!2866 = !DILocation(line: 480, column: 23, scope: !2831, inlinedAt: !2832)
!2867 = !DILocation(line: 481, column: 29, scope: !2831, inlinedAt: !2832)
!2868 = !DILocation(line: 481, column: 35, scope: !2831, inlinedAt: !2832)
!2869 = !DILocation(line: 481, column: 42, scope: !2831, inlinedAt: !2832)
!2870 = !DILocation(line: 474, column: 23, scope: !2826, inlinedAt: !2830)
!2871 = !DILocation(line: 474, column: 29, scope: !2826, inlinedAt: !2830)
!2872 = !DILocation(line: 474, column: 36, scope: !2826, inlinedAt: !2830)
!2873 = !DILocation(line: 474, column: 9, scope: !2826, inlinedAt: !2830)
!2874 = !DILocation(line: 545, column: 4, scope: !2833, inlinedAt: !2806)
!2875 = !DILocation(line: 547, column: 25, scope: !2803, inlinedAt: !2806)
!2876 = !DILocation(line: 348, column: 7, scope: !2877, inlinedAt: !2824)
!2877 = distinct !DILexicalBlock(scope: !2820, file: !82, line: 348, column: 6)
!2878 = !DILocation(line: 348, column: 6, scope: !2820, inlinedAt: !2824)
!2879 = !DILocation(line: 349, column: 3, scope: !2877, inlinedAt: !2824)
!2880 = !DILocation(line: 351, column: 6, scope: !2881, inlinedAt: !2824)
!2881 = distinct !DILexicalBlock(scope: !2820, file: !82, line: 351, column: 6)
!2882 = !DILocation(line: 351, column: 11, scope: !2881, inlinedAt: !2824)
!2883 = !DILocation(line: 351, column: 6, scope: !2820, inlinedAt: !2824)
!2884 = !DILocation(line: 352, column: 3, scope: !2881, inlinedAt: !2824)
!2885 = !DILocation(line: 354, column: 32, scope: !2886, inlinedAt: !2824)
!2886 = distinct !DILexicalBlock(scope: !2820, file: !82, line: 354, column: 6)
!2887 = !DILocation(line: 354, column: 37, scope: !2886, inlinedAt: !2824)
!2888 = !DILocation(line: 354, column: 42, scope: !2886, inlinedAt: !2824)
!2889 = !DILocation(line: 354, column: 45, scope: !2886, inlinedAt: !2824)
!2890 = !DILocation(line: 354, column: 50, scope: !2886, inlinedAt: !2824)
!2891 = !DILocation(line: 354, column: 6, scope: !2820, inlinedAt: !2824)
!2892 = !DILocation(line: 355, column: 3, scope: !2886, inlinedAt: !2824)
!2893 = !DILocation(line: 356, column: 32, scope: !2894, inlinedAt: !2824)
!2894 = distinct !DILexicalBlock(scope: !2820, file: !82, line: 356, column: 6)
!2895 = !DILocation(line: 356, column: 37, scope: !2894, inlinedAt: !2824)
!2896 = !DILocation(line: 356, column: 43, scope: !2894, inlinedAt: !2824)
!2897 = !DILocation(line: 356, column: 46, scope: !2894, inlinedAt: !2824)
!2898 = !DILocation(line: 356, column: 51, scope: !2894, inlinedAt: !2824)
!2899 = !DILocation(line: 356, column: 6, scope: !2820, inlinedAt: !2824)
!2900 = !DILocation(line: 357, column: 3, scope: !2894, inlinedAt: !2824)
!2901 = !DILocation(line: 358, column: 6, scope: !2902, inlinedAt: !2824)
!2902 = distinct !DILexicalBlock(scope: !2820, file: !82, line: 358, column: 6)
!2903 = !DILocation(line: 358, column: 11, scope: !2902, inlinedAt: !2824)
!2904 = !DILocation(line: 358, column: 6, scope: !2820, inlinedAt: !2824)
!2905 = !DILocation(line: 358, column: 26, scope: !2902, inlinedAt: !2824)
!2906 = !DILocation(line: 359, column: 6, scope: !2907, inlinedAt: !2824)
!2907 = distinct !DILexicalBlock(scope: !2820, file: !82, line: 359, column: 6)
!2908 = !DILocation(line: 359, column: 11, scope: !2907, inlinedAt: !2824)
!2909 = !DILocation(line: 359, column: 6, scope: !2820, inlinedAt: !2824)
!2910 = !DILocation(line: 359, column: 26, scope: !2907, inlinedAt: !2824)
!2911 = !DILocation(line: 360, column: 6, scope: !2912, inlinedAt: !2824)
!2912 = distinct !DILexicalBlock(scope: !2820, file: !82, line: 360, column: 6)
!2913 = !DILocation(line: 360, column: 11, scope: !2912, inlinedAt: !2824)
!2914 = !DILocation(line: 360, column: 6, scope: !2820, inlinedAt: !2824)
!2915 = !DILocation(line: 360, column: 26, scope: !2912, inlinedAt: !2824)
!2916 = !DILocation(line: 361, column: 6, scope: !2917, inlinedAt: !2824)
!2917 = distinct !DILexicalBlock(scope: !2820, file: !82, line: 361, column: 6)
!2918 = !DILocation(line: 361, column: 11, scope: !2917, inlinedAt: !2824)
!2919 = !DILocation(line: 361, column: 6, scope: !2820, inlinedAt: !2824)
!2920 = !DILocation(line: 361, column: 26, scope: !2917, inlinedAt: !2824)
!2921 = !DILocation(line: 362, column: 6, scope: !2922, inlinedAt: !2824)
!2922 = distinct !DILexicalBlock(scope: !2820, file: !82, line: 362, column: 6)
!2923 = !DILocation(line: 362, column: 11, scope: !2922, inlinedAt: !2824)
!2924 = !DILocation(line: 362, column: 6, scope: !2820, inlinedAt: !2824)
!2925 = !DILocation(line: 362, column: 26, scope: !2922, inlinedAt: !2824)
!2926 = !DILocation(line: 363, column: 6, scope: !2927, inlinedAt: !2824)
!2927 = distinct !DILexicalBlock(scope: !2820, file: !82, line: 363, column: 6)
!2928 = !DILocation(line: 363, column: 11, scope: !2927, inlinedAt: !2824)
!2929 = !DILocation(line: 363, column: 6, scope: !2820, inlinedAt: !2824)
!2930 = !DILocation(line: 363, column: 26, scope: !2927, inlinedAt: !2824)
!2931 = !DILocation(line: 364, column: 6, scope: !2932, inlinedAt: !2824)
!2932 = distinct !DILexicalBlock(scope: !2820, file: !82, line: 364, column: 6)
!2933 = !DILocation(line: 364, column: 11, scope: !2932, inlinedAt: !2824)
!2934 = !DILocation(line: 364, column: 6, scope: !2820, inlinedAt: !2824)
!2935 = !DILocation(line: 364, column: 26, scope: !2932, inlinedAt: !2824)
!2936 = !DILocation(line: 365, column: 6, scope: !2937, inlinedAt: !2824)
!2937 = distinct !DILexicalBlock(scope: !2820, file: !82, line: 365, column: 6)
!2938 = !DILocation(line: 365, column: 11, scope: !2937, inlinedAt: !2824)
!2939 = !DILocation(line: 365, column: 6, scope: !2820, inlinedAt: !2824)
!2940 = !DILocation(line: 365, column: 26, scope: !2937, inlinedAt: !2824)
!2941 = !DILocation(line: 366, column: 6, scope: !2942, inlinedAt: !2824)
!2942 = distinct !DILexicalBlock(scope: !2820, file: !82, line: 366, column: 6)
!2943 = !DILocation(line: 366, column: 11, scope: !2942, inlinedAt: !2824)
!2944 = !DILocation(line: 366, column: 6, scope: !2820, inlinedAt: !2824)
!2945 = !DILocation(line: 366, column: 26, scope: !2942, inlinedAt: !2824)
!2946 = !DILocation(line: 367, column: 6, scope: !2947, inlinedAt: !2824)
!2947 = distinct !DILexicalBlock(scope: !2820, file: !82, line: 367, column: 6)
!2948 = !DILocation(line: 367, column: 11, scope: !2947, inlinedAt: !2824)
!2949 = !DILocation(line: 367, column: 6, scope: !2820, inlinedAt: !2824)
!2950 = !DILocation(line: 367, column: 26, scope: !2947, inlinedAt: !2824)
!2951 = !DILocation(line: 368, column: 6, scope: !2952, inlinedAt: !2824)
!2952 = distinct !DILexicalBlock(scope: !2820, file: !82, line: 368, column: 6)
!2953 = !DILocation(line: 368, column: 11, scope: !2952, inlinedAt: !2824)
!2954 = !DILocation(line: 368, column: 6, scope: !2820, inlinedAt: !2824)
!2955 = !DILocation(line: 368, column: 26, scope: !2952, inlinedAt: !2824)
!2956 = !DILocation(line: 369, column: 6, scope: !2957, inlinedAt: !2824)
!2957 = distinct !DILexicalBlock(scope: !2820, file: !82, line: 369, column: 6)
!2958 = !DILocation(line: 369, column: 11, scope: !2957, inlinedAt: !2824)
!2959 = !DILocation(line: 369, column: 6, scope: !2820, inlinedAt: !2824)
!2960 = !DILocation(line: 369, column: 26, scope: !2957, inlinedAt: !2824)
!2961 = !DILocation(line: 370, column: 6, scope: !2962, inlinedAt: !2824)
!2962 = distinct !DILexicalBlock(scope: !2820, file: !82, line: 370, column: 6)
!2963 = !DILocation(line: 370, column: 11, scope: !2962, inlinedAt: !2824)
!2964 = !DILocation(line: 370, column: 6, scope: !2820, inlinedAt: !2824)
!2965 = !DILocation(line: 370, column: 26, scope: !2962, inlinedAt: !2824)
!2966 = !DILocation(line: 371, column: 6, scope: !2967, inlinedAt: !2824)
!2967 = distinct !DILexicalBlock(scope: !2820, file: !82, line: 371, column: 6)
!2968 = !DILocation(line: 371, column: 11, scope: !2967, inlinedAt: !2824)
!2969 = !DILocation(line: 371, column: 6, scope: !2820, inlinedAt: !2824)
!2970 = !DILocation(line: 371, column: 26, scope: !2967, inlinedAt: !2824)
!2971 = !DILocation(line: 372, column: 6, scope: !2972, inlinedAt: !2824)
!2972 = distinct !DILexicalBlock(scope: !2820, file: !82, line: 372, column: 6)
!2973 = !DILocation(line: 372, column: 11, scope: !2972, inlinedAt: !2824)
!2974 = !DILocation(line: 372, column: 6, scope: !2820, inlinedAt: !2824)
!2975 = !DILocation(line: 372, column: 26, scope: !2972, inlinedAt: !2824)
!2976 = !DILocation(line: 373, column: 6, scope: !2977, inlinedAt: !2824)
!2977 = distinct !DILexicalBlock(scope: !2820, file: !82, line: 373, column: 6)
!2978 = !DILocation(line: 373, column: 11, scope: !2977, inlinedAt: !2824)
!2979 = !DILocation(line: 373, column: 6, scope: !2820, inlinedAt: !2824)
!2980 = !DILocation(line: 373, column: 26, scope: !2977, inlinedAt: !2824)
!2981 = !DILocation(line: 374, column: 6, scope: !2982, inlinedAt: !2824)
!2982 = distinct !DILexicalBlock(scope: !2820, file: !82, line: 374, column: 6)
!2983 = !DILocation(line: 374, column: 11, scope: !2982, inlinedAt: !2824)
!2984 = !DILocation(line: 374, column: 6, scope: !2820, inlinedAt: !2824)
!2985 = !DILocation(line: 374, column: 26, scope: !2982, inlinedAt: !2824)
!2986 = !DILocation(line: 375, column: 6, scope: !2987, inlinedAt: !2824)
!2987 = distinct !DILexicalBlock(scope: !2820, file: !82, line: 375, column: 6)
!2988 = !DILocation(line: 375, column: 11, scope: !2987, inlinedAt: !2824)
!2989 = !DILocation(line: 375, column: 6, scope: !2820, inlinedAt: !2824)
!2990 = !DILocation(line: 375, column: 27, scope: !2987, inlinedAt: !2824)
!2991 = !DILocation(line: 376, column: 6, scope: !2992, inlinedAt: !2824)
!2992 = distinct !DILexicalBlock(scope: !2820, file: !82, line: 376, column: 6)
!2993 = !DILocation(line: 376, column: 11, scope: !2992, inlinedAt: !2824)
!2994 = !DILocation(line: 376, column: 6, scope: !2820, inlinedAt: !2824)
!2995 = !DILocation(line: 376, column: 32, scope: !2992, inlinedAt: !2824)
!2996 = !DILocation(line: 377, column: 6, scope: !2997, inlinedAt: !2824)
!2997 = distinct !DILexicalBlock(scope: !2820, file: !82, line: 377, column: 6)
!2998 = !DILocation(line: 377, column: 11, scope: !2997, inlinedAt: !2824)
!2999 = !DILocation(line: 377, column: 6, scope: !2820, inlinedAt: !2824)
!3000 = !DILocation(line: 377, column: 32, scope: !2997, inlinedAt: !2824)
!3001 = !DILocation(line: 378, column: 6, scope: !3002, inlinedAt: !2824)
!3002 = distinct !DILexicalBlock(scope: !2820, file: !82, line: 378, column: 6)
!3003 = !DILocation(line: 378, column: 11, scope: !3002, inlinedAt: !2824)
!3004 = !DILocation(line: 378, column: 6, scope: !2820, inlinedAt: !2824)
!3005 = !DILocation(line: 378, column: 32, scope: !3002, inlinedAt: !2824)
!3006 = !DILocation(line: 379, column: 6, scope: !3007, inlinedAt: !2824)
!3007 = distinct !DILexicalBlock(scope: !2820, file: !82, line: 379, column: 6)
!3008 = !DILocation(line: 379, column: 11, scope: !3007, inlinedAt: !2824)
!3009 = !DILocation(line: 379, column: 6, scope: !2820, inlinedAt: !2824)
!3010 = !DILocation(line: 379, column: 33, scope: !3007, inlinedAt: !2824)
!3011 = !DILocation(line: 380, column: 6, scope: !3012, inlinedAt: !2824)
!3012 = distinct !DILexicalBlock(scope: !2820, file: !82, line: 380, column: 6)
!3013 = !DILocation(line: 380, column: 11, scope: !3012, inlinedAt: !2824)
!3014 = !DILocation(line: 380, column: 6, scope: !2820, inlinedAt: !2824)
!3015 = !DILocation(line: 380, column: 33, scope: !3012, inlinedAt: !2824)
!3016 = !DILocation(line: 381, column: 6, scope: !3017, inlinedAt: !2824)
!3017 = distinct !DILexicalBlock(scope: !2820, file: !82, line: 381, column: 6)
!3018 = !DILocation(line: 381, column: 11, scope: !3017, inlinedAt: !2824)
!3019 = !DILocation(line: 381, column: 6, scope: !2820, inlinedAt: !2824)
!3020 = !DILocation(line: 381, column: 33, scope: !3017, inlinedAt: !2824)
!3021 = !DILocation(line: 382, column: 2, scope: !3022, inlinedAt: !2824)
!3022 = distinct !DILexicalBlock(scope: !3023, file: !82, line: 382, column: 2)
!3023 = distinct !DILexicalBlock(scope: !2820, file: !82, line: 382, column: 2)
!3024 = !{i32 -2143522561, i32 -2143522532, i32 -2143522486, i32 -2143522428, i32 -2143522374, i32 -2143522320, i32 -2143522265, i32 -2143522234}
!3025 = !DILocation(line: 382, column: 2, scope: !3026, inlinedAt: !2824)
!3026 = distinct !DILexicalBlock(scope: !3027, file: !82, line: 382, column: 2)
!3027 = distinct !DILexicalBlock(scope: !3023, file: !82, line: 382, column: 2)
!3028 = !{i32 -2143521791, i32 -2143521784, i32 -2143521730, i32 -2143521699, i32 -2143521669}
!3029 = !DILocation(line: 382, column: 2, scope: !3027, inlinedAt: !2824)
!3030 = !DILocation(line: 386, column: 1, scope: !2820, inlinedAt: !2824)
!3031 = !DILocation(line: 547, column: 9, scope: !2803, inlinedAt: !2806)
!3032 = !DILocation(line: 549, column: 8, scope: !3033, inlinedAt: !2806)
!3033 = distinct !DILexicalBlock(scope: !2803, file: !82, line: 549, column: 7)
!3034 = !DILocation(line: 549, column: 7, scope: !2803, inlinedAt: !2806)
!3035 = !DILocation(line: 550, column: 4, scope: !3033, inlinedAt: !2806)
!3036 = !DILocation(line: 553, column: 33, scope: !2803, inlinedAt: !2806)
!3037 = !DILocation(line: 325, column: 6, scope: !3038, inlinedAt: !2818)
!3038 = distinct !DILexicalBlock(scope: !2814, file: !82, line: 325, column: 6)
!3039 = !DILocation(line: 325, column: 6, scope: !2814, inlinedAt: !2818)
!3040 = !DILocation(line: 326, column: 3, scope: !3038, inlinedAt: !2818)
!3041 = !DILocation(line: 332, column: 9, scope: !2814, inlinedAt: !2818)
!3042 = !DILocation(line: 332, column: 15, scope: !2814, inlinedAt: !2818)
!3043 = !DILocation(line: 332, column: 2, scope: !2814, inlinedAt: !2818)
!3044 = !DILocation(line: 336, column: 1, scope: !2814, inlinedAt: !2818)
!3045 = !DILocation(line: 553, column: 5, scope: !2803, inlinedAt: !2806)
!3046 = !DILocation(line: 553, column: 41, scope: !2803, inlinedAt: !2806)
!3047 = !DILocation(line: 554, column: 5, scope: !2803, inlinedAt: !2806)
!3048 = !DILocation(line: 554, column: 12, scope: !2803, inlinedAt: !2806)
!3049 = !DILocation(line: 448, column: 31, scope: !2798, inlinedAt: !2802)
!3050 = !DILocation(line: 448, column: 34, scope: !2798, inlinedAt: !2802)
!3051 = !DILocation(line: 448, column: 14, scope: !2798, inlinedAt: !2802)
!3052 = !DILocation(line: 450, column: 22, scope: !2798, inlinedAt: !2802)
!3053 = !DILocation(line: 450, column: 25, scope: !2798, inlinedAt: !2802)
!3054 = !DILocation(line: 450, column: 30, scope: !2798, inlinedAt: !2802)
!3055 = !DILocation(line: 450, column: 36, scope: !2798, inlinedAt: !2802)
!3056 = !DILocation(line: 450, column: 8, scope: !2798, inlinedAt: !2802)
!3057 = !DILocation(line: 450, column: 6, scope: !2798, inlinedAt: !2802)
!3058 = !DILocation(line: 451, column: 9, scope: !2798, inlinedAt: !2802)
!3059 = !DILocation(line: 552, column: 3, scope: !2803, inlinedAt: !2806)
!3060 = !DILocation(line: 557, column: 19, scope: !2805, inlinedAt: !2806)
!3061 = !DILocation(line: 557, column: 25, scope: !2805, inlinedAt: !2806)
!3062 = !DILocation(line: 557, column: 9, scope: !2805, inlinedAt: !2806)
!3063 = !DILocation(line: 557, column: 2, scope: !2805, inlinedAt: !2806)
!3064 = !DILocation(line: 558, column: 1, scope: !2805, inlinedAt: !2806)
!3065 = !DILocation(line: 664, column: 2, scope: !2794)
!3066 = distinct !DISubprogram(name: "print_cpu_modalias", scope: !3, file: !3, line: 316, type: !2322, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!3067 = !DILocalVariable(name: "dev", arg: 1, scope: !3066, file: !3, line: 316, type: !107)
!3068 = !DILocation(line: 316, column: 50, scope: !3066)
!3069 = !DILocalVariable(name: "attr", arg: 2, scope: !3066, file: !3, line: 317, type: !2324)
!3070 = !DILocation(line: 317, column: 32, scope: !3066)
!3071 = !DILocalVariable(name: "buf", arg: 3, scope: !3066, file: !3, line: 318, type: !175)
!3072 = !DILocation(line: 318, column: 13, scope: !3066)
!3073 = !DILocalVariable(name: "len", scope: !3066, file: !3, line: 320, type: !159)
!3074 = !DILocation(line: 320, column: 6, scope: !3066)
!3075 = !DILocalVariable(name: "i", scope: !3066, file: !3, line: 321, type: !449)
!3076 = !DILocation(line: 321, column: 6, scope: !3066)
!3077 = !DILocation(line: 323, column: 23, scope: !3066)
!3078 = !DILocation(line: 323, column: 28, scope: !3066)
!3079 = !DILocation(line: 325, column: 9, scope: !3066)
!3080 = !DILocation(line: 323, column: 9, scope: !3066)
!3081 = !DILocation(line: 323, column: 6, scope: !3066)
!3082 = !DILocation(line: 327, column: 9, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3066, file: !3, line: 327, column: 2)
!3084 = !DILocation(line: 327, column: 7, scope: !3083)
!3085 = !DILocation(line: 327, column: 14, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3083, file: !3, line: 327, column: 2)
!3087 = !DILocation(line: 327, column: 16, scope: !3086)
!3088 = !DILocation(line: 327, column: 2, scope: !3083)
!3089 = !DILocation(line: 328, column: 7, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3086, file: !3, line: 328, column: 7)
!3091 = !DILocation(line: 328, column: 7, scope: !3086)
!3092 = !DILocation(line: 329, column: 8, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3094, file: !3, line: 329, column: 8)
!3094 = distinct !DILexicalBlock(scope: !3090, file: !3, line: 328, column: 28)
!3095 = !DILocation(line: 329, column: 12, scope: !3093)
!3096 = !DILocation(line: 329, column: 32, scope: !3093)
!3097 = !DILocation(line: 329, column: 8, scope: !3094)
!3098 = !DILocalVariable(name: "__ret_warn_on", scope: !3099, file: !3, line: 330, type: !159)
!3099 = distinct !DILexicalBlock(scope: !3100, file: !3, line: 330, column: 5)
!3100 = distinct !DILexicalBlock(scope: !3093, file: !3, line: 329, column: 46)
!3101 = !DILocation(line: 330, column: 5, scope: !3099)
!3102 = !DILocation(line: 330, column: 5, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3099, file: !3, line: 330, column: 5)
!3104 = !DILocation(line: 330, column: 5, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3103, file: !3, line: 330, column: 5)
!3106 = !DILocation(line: 330, column: 5, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !3105, file: !3, line: 330, column: 5)
!3108 = !DILocation(line: 330, column: 5, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3105, file: !3, line: 330, column: 5)
!3110 = !DILocation(line: 330, column: 5, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3109, file: !3, line: 330, column: 5)
!3112 = !DILocation(line: 330, column: 5, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3109, file: !3, line: 330, column: 5)
!3114 = !{i32 -2142686126, i32 -2142686097, i32 -2142686051, i32 -2142685993, i32 -2142685939, i32 -2142685885, i32 -2142685830, i32 -2142685799}
!3115 = !DILocation(line: 330, column: 5, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !3109, file: !3, line: 330, column: 5)
!3117 = !{i32 -2142685388, i32 -2142685381, i32 -2142685329, i32 -2142685298, i32 -2142685268}
!3118 = !DILocation(line: 330, column: 5, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3109, file: !3, line: 330, column: 5)
!3120 = !DILocation(line: 330, column: 5, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3105, file: !3, line: 330, column: 5)
!3122 = !DILocation(line: 331, column: 5, scope: !3100)
!3123 = !DILocation(line: 333, column: 25, scope: !3094)
!3124 = !DILocation(line: 333, column: 30, scope: !3094)
!3125 = !DILocation(line: 333, column: 44, scope: !3094)
!3126 = !DILocation(line: 333, column: 11, scope: !3094)
!3127 = !DILocation(line: 333, column: 8, scope: !3094)
!3128 = !DILocation(line: 334, column: 3, scope: !3094)
!3129 = !DILocation(line: 327, column: 37, scope: !3086)
!3130 = !DILocation(line: 327, column: 2, scope: !3086)
!3131 = distinct !{!3131, !3088, !3132}
!3132 = !DILocation(line: 334, column: 3, scope: !3083)
!3133 = !DILocation(line: 335, column: 23, scope: !3066)
!3134 = !DILocation(line: 335, column: 28, scope: !3066)
!3135 = !DILocation(line: 335, column: 9, scope: !3066)
!3136 = !DILocation(line: 335, column: 6, scope: !3066)
!3137 = !DILocation(line: 336, column: 9, scope: !3066)
!3138 = !DILocation(line: 336, column: 2, scope: !3066)
!3139 = distinct !DISubprogram(name: "get_order", scope: !3140, file: !3140, line: 29, type: !3141, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!3140 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!159, !225}
!3143 = !DILocalVariable(name: "x", arg: 1, scope: !3144, file: !3145, line: 366, type: !297)
!3144 = distinct !DISubprogram(name: "fls64", scope: !3145, file: !3145, line: 366, type: !3146, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!3145 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!3146 = !DISubroutineType(types: !3147)
!3147 = !{!159, !297}
!3148 = !DILocation(line: 366, column: 40, scope: !3144, inlinedAt: !3149)
!3149 = distinct !DILocation(line: 46, column: 9, scope: !3139)
!3150 = !DILocalVariable(name: "bitpos", scope: !3144, file: !3145, line: 368, type: !159)
!3151 = !DILocation(line: 368, column: 6, scope: !3144, inlinedAt: !3149)
!3152 = !DILocalVariable(name: "size", arg: 1, scope: !3139, file: !3140, line: 29, type: !225)
!3153 = !DILocation(line: 29, column: 63, scope: !3139)
!3154 = !DILocation(line: 31, column: 27, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3139, file: !3140, line: 31, column: 6)
!3156 = !DILocation(line: 31, column: 6, scope: !3155)
!3157 = !DILocation(line: 31, column: 6, scope: !3139)
!3158 = !DILocation(line: 32, column: 8, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3160, file: !3140, line: 32, column: 7)
!3160 = distinct !DILexicalBlock(scope: !3155, file: !3140, line: 31, column: 34)
!3161 = !DILocation(line: 32, column: 7, scope: !3160)
!3162 = !DILocation(line: 33, column: 4, scope: !3159)
!3163 = !DILocation(line: 35, column: 7, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3160, file: !3140, line: 35, column: 7)
!3165 = !DILocation(line: 35, column: 12, scope: !3164)
!3166 = !DILocation(line: 35, column: 7, scope: !3160)
!3167 = !DILocation(line: 36, column: 4, scope: !3164)
!3168 = !DILocation(line: 38, column: 10, scope: !3160)
!3169 = !DILocation(line: 38, column: 28, scope: !3160)
!3170 = !DILocation(line: 38, column: 41, scope: !3160)
!3171 = !DILocation(line: 38, column: 3, scope: !3160)
!3172 = !DILocation(line: 41, column: 6, scope: !3139)
!3173 = !DILocation(line: 42, column: 7, scope: !3139)
!3174 = !DILocation(line: 46, column: 15, scope: !3139)
!3175 = !DILocation(line: 374, column: 2, scope: !3144, inlinedAt: !3149)
!3176 = !DILocation(line: 376, column: 14, scope: !3144, inlinedAt: !3149)
!3177 = !{i32 254252}
!3178 = !DILocation(line: 377, column: 9, scope: !3144, inlinedAt: !3149)
!3179 = !DILocation(line: 377, column: 16, scope: !3144, inlinedAt: !3149)
!3180 = !DILocation(line: 46, column: 2, scope: !3139)
!3181 = !DILocation(line: 48, column: 1, scope: !3139)
!3182 = distinct !DISubprogram(name: "__ilog2_u64", scope: !3183, file: !3183, line: 30, type: !3184, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!3183 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!3184 = !DISubroutineType(types: !3185)
!3185 = !{!159, !295}
!3186 = !DILocation(line: 366, column: 40, scope: !3144, inlinedAt: !3187)
!3187 = distinct !DILocation(line: 32, column: 9, scope: !3182)
!3188 = !DILocation(line: 368, column: 6, scope: !3144, inlinedAt: !3187)
!3189 = !DILocalVariable(name: "n", arg: 1, scope: !3182, file: !3183, line: 30, type: !295)
!3190 = !DILocation(line: 30, column: 21, scope: !3182)
!3191 = !DILocation(line: 32, column: 15, scope: !3182)
!3192 = !DILocation(line: 374, column: 2, scope: !3144, inlinedAt: !3187)
!3193 = !DILocation(line: 376, column: 14, scope: !3144, inlinedAt: !3187)
!3194 = !DILocation(line: 377, column: 9, scope: !3144, inlinedAt: !3187)
!3195 = !DILocation(line: 377, column: 16, scope: !3144, inlinedAt: !3187)
!3196 = !DILocation(line: 32, column: 18, scope: !3182)
!3197 = !DILocation(line: 32, column: 2, scope: !3182)
!3198 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !3199, file: !3199, line: 137, type: !3200, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!3199 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!3200 = !DISubroutineType(types: !3201)
!3201 = !{!249, !1071, !1152, !222, !1493}
!3202 = !DILocalVariable(name: "s", arg: 1, scope: !3198, file: !3199, line: 137, type: !1071)
!3203 = !DILocation(line: 137, column: 54, scope: !3198)
!3204 = !DILocalVariable(name: "object", arg: 2, scope: !3198, file: !3199, line: 137, type: !1152)
!3205 = !DILocation(line: 137, column: 69, scope: !3198)
!3206 = !DILocalVariable(name: "size", arg: 3, scope: !3198, file: !3199, line: 138, type: !222)
!3207 = !DILocation(line: 138, column: 12, scope: !3198)
!3208 = !DILocalVariable(name: "flags", arg: 4, scope: !3198, file: !3199, line: 138, type: !1493)
!3209 = !DILocation(line: 138, column: 24, scope: !3198)
!3210 = !DILocation(line: 140, column: 17, scope: !3198)
!3211 = !DILocation(line: 140, column: 2, scope: !3198)
!3212 = distinct !DISubprogram(name: "test_bit", scope: !3213, file: !3213, line: 132, type: !3214, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!3213 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!1021, !210, !3216}
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3218)
!3218 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !225)
!3219 = !DILocalVariable(name: "nr", arg: 1, scope: !3220, file: !3145, line: 210, type: !210)
!3220 = distinct !DISubprogram(name: "variable_test_bit", scope: !3145, file: !3145, line: 210, type: !3214, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!3221 = !DILocation(line: 210, column: 52, scope: !3220, inlinedAt: !3222)
!3222 = distinct !DILocation(line: 135, column: 9, scope: !3212)
!3223 = !DILocalVariable(name: "addr", arg: 2, scope: !3220, file: !3145, line: 210, type: !3216)
!3224 = !DILocation(line: 210, column: 86, scope: !3220, inlinedAt: !3222)
!3225 = !DILocalVariable(name: "oldbit", scope: !3220, file: !3145, line: 212, type: !1021)
!3226 = !DILocation(line: 212, column: 7, scope: !3220, inlinedAt: !3222)
!3227 = !DILocalVariable(name: "nr", arg: 1, scope: !3228, file: !3145, line: 204, type: !210)
!3228 = distinct !DISubprogram(name: "constant_test_bit", scope: !3145, file: !3145, line: 204, type: !3214, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!3229 = !DILocation(line: 204, column: 52, scope: !3228, inlinedAt: !3230)
!3230 = distinct !DILocation(line: 135, column: 9, scope: !3212)
!3231 = !DILocalVariable(name: "addr", arg: 2, scope: !3228, file: !3145, line: 204, type: !3216)
!3232 = !DILocation(line: 204, column: 86, scope: !3228, inlinedAt: !3230)
!3233 = !DILocalVariable(name: "v", arg: 1, scope: !3234, file: !3235, line: 69, type: !3238)
!3234 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !3235, file: !3235, line: 69, type: !3236, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!3235 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!3236 = !DISubroutineType(types: !3237)
!3237 = !{null, !3238, !222}
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3240)
!3240 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!3241 = !DILocation(line: 69, column: 73, scope: !3234, inlinedAt: !3242)
!3242 = distinct !DILocation(line: 134, column: 2, scope: !3212)
!3243 = !DILocalVariable(name: "size", arg: 2, scope: !3234, file: !3235, line: 69, type: !222)
!3244 = !DILocation(line: 69, column: 83, scope: !3234, inlinedAt: !3242)
!3245 = !DILocalVariable(name: "nr", arg: 1, scope: !3212, file: !3213, line: 132, type: !210)
!3246 = !DILocation(line: 132, column: 34, scope: !3212)
!3247 = !DILocalVariable(name: "addr", arg: 2, scope: !3212, file: !3213, line: 132, type: !3216)
!3248 = !DILocation(line: 132, column: 68, scope: !3212)
!3249 = !DILocation(line: 134, column: 25, scope: !3212)
!3250 = !DILocation(line: 134, column: 32, scope: !3212)
!3251 = !DILocation(line: 134, column: 30, scope: !3212)
!3252 = !DILocation(line: 71, column: 19, scope: !3234, inlinedAt: !3242)
!3253 = !DILocation(line: 71, column: 22, scope: !3234, inlinedAt: !3242)
!3254 = !DILocation(line: 71, column: 2, scope: !3234, inlinedAt: !3242)
!3255 = !DILocation(line: 72, column: 2, scope: !3234, inlinedAt: !3242)
!3256 = !DILocation(line: 135, column: 9, scope: !3212)
!3257 = !DILocation(line: 206, column: 19, scope: !3228, inlinedAt: !3230)
!3258 = !DILocation(line: 206, column: 22, scope: !3228, inlinedAt: !3230)
!3259 = !DILocation(line: 206, column: 15, scope: !3228, inlinedAt: !3230)
!3260 = !DILocation(line: 207, column: 4, scope: !3228, inlinedAt: !3230)
!3261 = !DILocation(line: 207, column: 9, scope: !3228, inlinedAt: !3230)
!3262 = !DILocation(line: 207, column: 12, scope: !3228, inlinedAt: !3230)
!3263 = !DILocation(line: 206, column: 44, scope: !3228, inlinedAt: !3230)
!3264 = !DILocation(line: 207, column: 37, scope: !3228, inlinedAt: !3230)
!3265 = !DILocation(line: 217, column: 33, scope: !3220, inlinedAt: !3222)
!3266 = !DILocation(line: 217, column: 46, scope: !3220, inlinedAt: !3222)
!3267 = !DILocation(line: 214, column: 2, scope: !3220, inlinedAt: !3222)
!3268 = !{i32 -2147188721, i32 -2147188661}
!3269 = !DILocation(line: 219, column: 9, scope: !3220, inlinedAt: !3222)
!3270 = !DILocation(line: 135, column: 2, scope: !3212)
!3271 = distinct !DISubprogram(name: "kasan_check_read", scope: !3272, file: !3272, line: 34, type: !3273, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!3272 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!3273 = !DISubroutineType(types: !3274)
!3274 = !{!1021, !3238, !7}
!3275 = !DILocalVariable(name: "p", arg: 1, scope: !3271, file: !3272, line: 34, type: !3238)
!3276 = !DILocation(line: 34, column: 58, scope: !3271)
!3277 = !DILocalVariable(name: "size", arg: 2, scope: !3271, file: !3272, line: 34, type: !7)
!3278 = !DILocation(line: 34, column: 74, scope: !3271)
!3279 = !DILocation(line: 36, column: 2, scope: !3271)
!3280 = distinct !DISubprogram(name: "kcsan_check_access", scope: !3281, file: !3281, line: 178, type: !3282, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!3281 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!3282 = !DISubroutineType(types: !3283)
!3283 = !{null, !3238, !222, !159}
!3284 = !DILocalVariable(name: "ptr", arg: 1, scope: !3280, file: !3281, line: 178, type: !3238)
!3285 = !DILocation(line: 178, column: 60, scope: !3280)
!3286 = !DILocalVariable(name: "size", arg: 2, scope: !3280, file: !3281, line: 178, type: !222)
!3287 = !DILocation(line: 178, column: 72, scope: !3280)
!3288 = !DILocalVariable(name: "type", arg: 3, scope: !3280, file: !3281, line: 179, type: !159)
!3289 = !DILocation(line: 179, column: 15, scope: !3280)
!3290 = !DILocation(line: 179, column: 23, scope: !3280)
!3291 = distinct !DISubprogram(name: "device_create_release", scope: !3, file: !3, line: 400, type: !1679, scopeLine: 401, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!3292 = !DILocalVariable(name: "dev", arg: 1, scope: !3291, file: !3, line: 400, type: !107)
!3293 = !DILocation(line: 400, column: 50, scope: !3291)
!3294 = !DILocation(line: 402, column: 8, scope: !3291)
!3295 = !DILocation(line: 402, column: 2, scope: !3291)
!3296 = !DILocation(line: 403, column: 1, scope: !3291)
!3297 = distinct !DISubprogram(name: "device_set_pm_not_required", scope: !30, file: !30, line: 707, type: !1679, scopeLine: 708, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!3298 = !DILocalVariable(name: "dev", arg: 1, scope: !3297, file: !30, line: 707, type: !107)
!3299 = !DILocation(line: 707, column: 62, scope: !3297)
!3300 = !DILocation(line: 709, column: 2, scope: !3297)
!3301 = !DILocation(line: 709, column: 7, scope: !3297)
!3302 = !DILocation(line: 709, column: 13, scope: !3297)
!3303 = !DILocation(line: 709, column: 19, scope: !3297)
!3304 = !DILocation(line: 710, column: 1, scope: !3297)
!3305 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !30, file: !30, line: 660, type: !3306, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{null, !107, !249}
!3308 = !DILocalVariable(name: "dev", arg: 1, scope: !3305, file: !30, line: 660, type: !107)
!3309 = !DILocation(line: 660, column: 51, scope: !3305)
!3310 = !DILocalVariable(name: "data", arg: 2, scope: !3305, file: !30, line: 660, type: !249)
!3311 = !DILocation(line: 660, column: 62, scope: !3305)
!3312 = !DILocation(line: 662, column: 21, scope: !3305)
!3313 = !DILocation(line: 662, column: 2, scope: !3305)
!3314 = !DILocation(line: 662, column: 7, scope: !3305)
!3315 = !DILocation(line: 662, column: 19, scope: !3305)
!3316 = !DILocation(line: 663, column: 1, scope: !3305)
!3317 = distinct !DISubprogram(name: "ERR_PTR", scope: !3318, file: !3318, line: 24, type: !3319, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!3318 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!3319 = !DISubroutineType(types: !3320)
!3320 = !{!249, !210}
!3321 = !DILocalVariable(name: "error", arg: 1, scope: !3317, file: !3318, line: 24, type: !210)
!3322 = !DILocation(line: 24, column: 48, scope: !3317)
!3323 = !DILocation(line: 26, column: 18, scope: !3317)
!3324 = !DILocation(line: 26, column: 9, scope: !3317)
!3325 = !DILocation(line: 26, column: 2, scope: !3317)
!3326 = distinct !DISubprogram(name: "show_cpus_attr", scope: !3, file: !3, line: 206, type: !2322, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!3327 = !DILocalVariable(name: "dev", arg: 1, scope: !3326, file: !3, line: 206, type: !107)
!3328 = !DILocation(line: 206, column: 46, scope: !3326)
!3329 = !DILocalVariable(name: "attr", arg: 2, scope: !3326, file: !3, line: 207, type: !2324)
!3330 = !DILocation(line: 207, column: 35, scope: !3326)
!3331 = !DILocalVariable(name: "buf", arg: 3, scope: !3326, file: !3, line: 208, type: !175)
!3332 = !DILocation(line: 208, column: 16, scope: !3326)
!3333 = !DILocalVariable(name: "ca", scope: !3326, file: !3, line: 210, type: !2313)
!3334 = !DILocation(line: 210, column: 19, scope: !3326)
!3335 = !DILocalVariable(name: "__mptr", scope: !3336, file: !3, line: 210, type: !249)
!3336 = distinct !DILexicalBlock(scope: !3326, file: !3, line: 210, column: 24)
!3337 = !DILocation(line: 210, column: 24, scope: !3336)
!3338 = !DILocation(line: 210, column: 24, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3336, file: !3, line: 210, column: 24)
!3340 = !DILocation(line: 212, column: 39, scope: !3326)
!3341 = !DILocation(line: 212, column: 44, scope: !3326)
!3342 = !DILocation(line: 212, column: 48, scope: !3326)
!3343 = !DILocation(line: 212, column: 9, scope: !3326)
!3344 = !DILocation(line: 212, column: 2, scope: !3326)
!3345 = distinct !DISubprogram(name: "cpumap_print_to_pagebuf", scope: !601, file: !601, line: 919, type: !3346, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!3346 = !DISubroutineType(types: !3347)
!3347 = !{!206, !1021, !175, !2331}
!3348 = !DILocalVariable(name: "list", arg: 1, scope: !3345, file: !601, line: 919, type: !1021)
!3349 = !DILocation(line: 919, column: 30, scope: !3345)
!3350 = !DILocalVariable(name: "buf", arg: 2, scope: !3345, file: !601, line: 919, type: !175)
!3351 = !DILocation(line: 919, column: 42, scope: !3345)
!3352 = !DILocalVariable(name: "mask", arg: 3, scope: !3345, file: !601, line: 919, type: !2331)
!3353 = !DILocation(line: 919, column: 69, scope: !3345)
!3354 = !DILocation(line: 921, column: 33, scope: !3345)
!3355 = !DILocation(line: 921, column: 39, scope: !3345)
!3356 = !DILocation(line: 921, column: 44, scope: !3345)
!3357 = !DILocation(line: 921, column: 9, scope: !3345)
!3358 = !DILocation(line: 921, column: 2, scope: !3345)
!3359 = distinct !DISubprogram(name: "print_cpus_kernel_max", scope: !3, file: !3, line: 228, type: !2322, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!3360 = !DILocalVariable(name: "dev", arg: 1, scope: !3359, file: !3, line: 228, type: !107)
!3361 = !DILocation(line: 228, column: 53, scope: !3359)
!3362 = !DILocalVariable(name: "attr", arg: 2, scope: !3359, file: !3, line: 229, type: !2324)
!3363 = !DILocation(line: 229, column: 35, scope: !3359)
!3364 = !DILocalVariable(name: "buf", arg: 3, scope: !3359, file: !3, line: 229, type: !175)
!3365 = !DILocation(line: 229, column: 47, scope: !3359)
!3366 = !DILocation(line: 231, column: 20, scope: !3359)
!3367 = !DILocation(line: 231, column: 9, scope: !3359)
!3368 = !DILocation(line: 231, column: 2, scope: !3359)
!3369 = distinct !DISubprogram(name: "print_cpus_offline", scope: !3, file: !3, line: 238, type: !2322, scopeLine: 240, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!3370 = !DILocalVariable(name: "dev", arg: 1, scope: !3369, file: !3, line: 238, type: !107)
!3371 = !DILocation(line: 238, column: 50, scope: !3369)
!3372 = !DILocalVariable(name: "attr", arg: 2, scope: !3369, file: !3, line: 239, type: !2324)
!3373 = !DILocation(line: 239, column: 32, scope: !3369)
!3374 = !DILocalVariable(name: "buf", arg: 3, scope: !3369, file: !3, line: 239, type: !175)
!3375 = !DILocation(line: 239, column: 44, scope: !3369)
!3376 = !DILocalVariable(name: "len", scope: !3369, file: !3, line: 241, type: !159)
!3377 = !DILocation(line: 241, column: 6, scope: !3369)
!3378 = !DILocalVariable(name: "offline", scope: !3369, file: !3, line: 242, type: !3379)
!3379 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !601, line: 756, baseType: !3380)
!3380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !602, size: 64, elements: !606)
!3381 = !DILocation(line: 242, column: 16, scope: !3369)
!3382 = !DILocation(line: 245, column: 7, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !3369, file: !3, line: 245, column: 6)
!3384 = !DILocation(line: 245, column: 6, scope: !3369)
!3385 = !DILocation(line: 246, column: 3, scope: !3383)
!3386 = !DILocation(line: 247, column: 17, scope: !3369)
!3387 = !DILocation(line: 247, column: 2, scope: !3369)
!3388 = !DILocation(line: 248, column: 23, scope: !3369)
!3389 = !DILocation(line: 248, column: 28, scope: !3369)
!3390 = !DILocation(line: 248, column: 42, scope: !3369)
!3391 = !DILocation(line: 248, column: 9, scope: !3369)
!3392 = !DILocation(line: 248, column: 6, scope: !3369)
!3393 = !DILocation(line: 249, column: 19, scope: !3369)
!3394 = !DILocation(line: 249, column: 2, scope: !3369)
!3395 = !DILocation(line: 252, column: 6, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3369, file: !3, line: 252, column: 6)
!3397 = !DILocation(line: 252, column: 17, scope: !3396)
!3398 = !DILocation(line: 252, column: 33, scope: !3396)
!3399 = !DILocation(line: 252, column: 31, scope: !3396)
!3400 = !DILocation(line: 252, column: 6, scope: !3369)
!3401 = !DILocation(line: 253, column: 24, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3396, file: !3, line: 252, column: 45)
!3403 = !DILocation(line: 253, column: 29, scope: !3402)
!3404 = !DILocation(line: 253, column: 10, scope: !3402)
!3405 = !DILocation(line: 253, column: 7, scope: !3402)
!3406 = !DILocation(line: 255, column: 21, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3402, file: !3, line: 255, column: 7)
!3408 = !DILocation(line: 255, column: 31, scope: !3407)
!3409 = !DILocation(line: 255, column: 18, scope: !3407)
!3410 = !DILocation(line: 255, column: 7, scope: !3402)
!3411 = !DILocation(line: 256, column: 25, scope: !3407)
!3412 = !DILocation(line: 256, column: 30, scope: !3407)
!3413 = !DILocation(line: 256, column: 11, scope: !3407)
!3414 = !DILocation(line: 256, column: 8, scope: !3407)
!3415 = !DILocation(line: 256, column: 4, scope: !3407)
!3416 = !DILocation(line: 258, column: 25, scope: !3407)
!3417 = !DILocation(line: 258, column: 30, scope: !3407)
!3418 = !DILocation(line: 259, column: 23, scope: !3407)
!3419 = !DILocation(line: 259, column: 34, scope: !3407)
!3420 = !DILocation(line: 258, column: 11, scope: !3407)
!3421 = !DILocation(line: 258, column: 8, scope: !3407)
!3422 = !DILocation(line: 260, column: 2, scope: !3402)
!3423 = !DILocation(line: 262, column: 23, scope: !3369)
!3424 = !DILocation(line: 262, column: 28, scope: !3369)
!3425 = !DILocation(line: 262, column: 9, scope: !3369)
!3426 = !DILocation(line: 262, column: 6, scope: !3369)
!3427 = !DILocation(line: 264, column: 9, scope: !3369)
!3428 = !DILocation(line: 264, column: 2, scope: !3369)
!3429 = !DILocation(line: 265, column: 1, scope: !3369)
!3430 = distinct !DISubprogram(name: "alloc_cpumask_var", scope: !601, file: !601, line: 761, type: !3431, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!3431 = !DISubroutineType(types: !3432)
!3432 = !{!1021, !3433, !1493}
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3434 = !DILocalVariable(name: "mask", arg: 1, scope: !3430, file: !601, line: 761, type: !3433)
!3435 = !DILocation(line: 761, column: 53, scope: !3430)
!3436 = !DILocalVariable(name: "flags", arg: 2, scope: !3430, file: !601, line: 761, type: !1493)
!3437 = !DILocation(line: 761, column: 65, scope: !3430)
!3438 = !DILocation(line: 763, column: 2, scope: !3430)
!3439 = distinct !DISubprogram(name: "cpumask_andnot", scope: !601, file: !601, line: 467, type: !3440, scopeLine: 470, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!3440 = !DISubroutineType(types: !3441)
!3441 = !{!159, !3442, !2331, !2331}
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!3443 = !DILocalVariable(name: "dstp", arg: 1, scope: !3439, file: !601, line: 467, type: !3442)
!3444 = !DILocation(line: 467, column: 50, scope: !3439)
!3445 = !DILocalVariable(name: "src1p", arg: 2, scope: !3439, file: !601, line: 468, type: !2331)
!3446 = !DILocation(line: 468, column: 29, scope: !3439)
!3447 = !DILocalVariable(name: "src2p", arg: 3, scope: !3439, file: !601, line: 469, type: !2331)
!3448 = !DILocation(line: 469, column: 29, scope: !3439)
!3449 = !DILocation(line: 471, column: 23, scope: !3439)
!3450 = !DILocation(line: 471, column: 43, scope: !3439)
!3451 = !DILocation(line: 472, column: 8, scope: !3439)
!3452 = !DILocation(line: 471, column: 9, scope: !3439)
!3453 = !DILocation(line: 471, column: 2, scope: !3439)
!3454 = distinct !DISubprogram(name: "free_cpumask_var", scope: !601, file: !601, line: 789, type: !3455, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!3455 = !DISubroutineType(types: !3456)
!3456 = !{null, !3442}
!3457 = !DILocalVariable(name: "mask", arg: 1, scope: !3454, file: !601, line: 789, type: !3442)
!3458 = !DILocation(line: 789, column: 51, scope: !3454)
!3459 = !DILocation(line: 791, column: 1, scope: !3454)
!3460 = distinct !DISubprogram(name: "bitmap_andnot", scope: !3461, file: !3461, line: 309, type: !3462, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!3461 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/lizy2001/genbc/linux")
!3462 = !DISubroutineType(types: !3463)
!3463 = !{!159, !2221, !3464, !3464, !7}
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !225)
!3466 = !DILocalVariable(name: "dst", arg: 1, scope: !3460, file: !3461, line: 309, type: !2221)
!3467 = !DILocation(line: 309, column: 48, scope: !3460)
!3468 = !DILocalVariable(name: "src1", arg: 2, scope: !3460, file: !3461, line: 309, type: !3464)
!3469 = !DILocation(line: 309, column: 74, scope: !3460)
!3470 = !DILocalVariable(name: "src2", arg: 3, scope: !3460, file: !3461, line: 310, type: !3464)
!3471 = !DILocation(line: 310, column: 25, scope: !3460)
!3472 = !DILocalVariable(name: "nbits", arg: 4, scope: !3460, file: !3461, line: 310, type: !7)
!3473 = !DILocation(line: 310, column: 44, scope: !3460)
!3474 = !DILocation(line: 312, column: 6, scope: !3475)
!3475 = distinct !DILexicalBlock(scope: !3460, file: !3461, line: 312, column: 6)
!3476 = !DILocation(line: 312, column: 6, scope: !3460)
!3477 = !DILocation(line: 313, column: 19, scope: !3475)
!3478 = !DILocation(line: 313, column: 18, scope: !3475)
!3479 = !DILocation(line: 313, column: 29, scope: !3475)
!3480 = !DILocation(line: 313, column: 28, scope: !3475)
!3481 = !DILocation(line: 313, column: 26, scope: !3475)
!3482 = !DILocation(line: 313, column: 24, scope: !3475)
!3483 = !DILocation(line: 313, column: 37, scope: !3475)
!3484 = !DILocation(line: 313, column: 35, scope: !3475)
!3485 = !DILocation(line: 313, column: 12, scope: !3475)
!3486 = !DILocation(line: 313, column: 16, scope: !3475)
!3487 = !DILocation(line: 313, column: 67, scope: !3475)
!3488 = !DILocation(line: 313, column: 3, scope: !3475)
!3489 = !DILocation(line: 314, column: 25, scope: !3460)
!3490 = !DILocation(line: 314, column: 30, scope: !3460)
!3491 = !DILocation(line: 314, column: 36, scope: !3460)
!3492 = !DILocation(line: 314, column: 42, scope: !3460)
!3493 = !DILocation(line: 314, column: 9, scope: !3460)
!3494 = !DILocation(line: 314, column: 2, scope: !3460)
!3495 = !DILocation(line: 315, column: 1, scope: !3460)
!3496 = distinct !DISubprogram(name: "print_cpus_isolated", scope: !3, file: !3, line: 268, type: !2322, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!3497 = !DILocalVariable(name: "dev", arg: 1, scope: !3496, file: !3, line: 268, type: !107)
!3498 = !DILocation(line: 268, column: 51, scope: !3496)
!3499 = !DILocalVariable(name: "attr", arg: 2, scope: !3496, file: !3, line: 269, type: !2324)
!3500 = !DILocation(line: 269, column: 32, scope: !3496)
!3501 = !DILocalVariable(name: "buf", arg: 3, scope: !3496, file: !3, line: 269, type: !175)
!3502 = !DILocation(line: 269, column: 44, scope: !3496)
!3503 = !DILocalVariable(name: "len", scope: !3496, file: !3, line: 271, type: !159)
!3504 = !DILocation(line: 271, column: 6, scope: !3496)
!3505 = !DILocalVariable(name: "isolated", scope: !3496, file: !3, line: 272, type: !3379)
!3506 = !DILocation(line: 272, column: 16, scope: !3496)
!3507 = !DILocation(line: 274, column: 7, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3496, file: !3, line: 274, column: 6)
!3509 = !DILocation(line: 274, column: 6, scope: !3496)
!3510 = !DILocation(line: 275, column: 3, scope: !3508)
!3511 = !DILocation(line: 277, column: 17, scope: !3496)
!3512 = !DILocation(line: 278, column: 10, scope: !3496)
!3513 = !DILocation(line: 277, column: 2, scope: !3496)
!3514 = !DILocation(line: 279, column: 19, scope: !3496)
!3515 = !DILocation(line: 279, column: 35, scope: !3496)
!3516 = !DILocation(line: 279, column: 8, scope: !3496)
!3517 = !DILocation(line: 279, column: 6, scope: !3496)
!3518 = !DILocation(line: 281, column: 19, scope: !3496)
!3519 = !DILocation(line: 281, column: 2, scope: !3496)
!3520 = !DILocation(line: 283, column: 9, scope: !3496)
!3521 = !DILocation(line: 283, column: 2, scope: !3496)
!3522 = !DILocation(line: 284, column: 1, scope: !3496)
