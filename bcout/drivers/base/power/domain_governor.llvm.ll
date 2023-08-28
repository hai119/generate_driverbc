; ModuleID = '../bcout/drivers/base/power/domain_governor.llvm.bc'
source_filename = "drivers/base/power/domain_governor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.dev_power_governor = type { i1 (%struct.dev_pm_domain*)*, i1 (%struct.device*)* }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, i32 (%struct.device*)*, void (%struct.device*, i1)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
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
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, {}*, void (%struct.device*)*, {}*, void (%struct.device*)*, {}*, {}*, i32 (%struct.device*, i32)*, {}*, {}*, {}*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, {}*, void (%struct.device*)*, {}*, void (%struct.device*)*, i32 (%struct.device*, i32)*, {}*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.module = type opaque
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i8, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, %struct.wakeup_source*, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, %struct.wake_irq*, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i64, i64, i64, i64, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.wakeup_source = type { i8*, i32, %struct.list_head, %struct.spinlock, %struct.wake_irq*, %struct.timer_list, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.device*, i8 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.wake_irq = type opaque
%struct.pm_subsys_data = type { %struct.spinlock, i32, %struct.list_head, %struct.pm_domain_data* }
%struct.pm_domain_data = type { %struct.list_head, %struct.device* }
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
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, {}*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.cpuidle_device = type { i8, i32, i64, i32, i64, i64, i64, [10 x %struct.cpuidle_state_usage], [10 x %struct.cpuidle_state_kobj*], %struct.cpuidle_driver_kobj*, %struct.cpuidle_device_kobj*, %struct.list_head }
%struct.cpuidle_state_usage = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.cpuidle_state_kobj = type opaque
%struct.cpuidle_driver_kobj = type opaque
%struct.cpuidle_device_kobj = type opaque
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
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.dev_power_governor*, %struct.work_struct, %struct.fwnode_handle*, i8, i8*, %struct.atomic_t, i32, i32, i32, i32, i32, [1 x %struct.cpumask], i32 (%struct.generic_pm_domain*)*, i32 (%struct.generic_pm_domain*)*, %struct.raw_notifier_head, %struct.opp_table*, i32 (%struct.generic_pm_domain*, %struct.dev_pm_opp*)*, i32 (%struct.generic_pm_domain*, i32)*, %struct.gpd_dev_ops, i64, i8, i8, i8, i32 (%struct.generic_pm_domain*, %struct.device*)*, void (%struct.generic_pm_domain*, %struct.device*)*, i32, %struct.genpd_power_state*, void (%struct.genpd_power_state*, i32)*, i32, i32, i64, i64, %struct.genpd_lock_ops*, %union.anon.39 }
%struct.raw_notifier_head = type { %struct.notifier_block* }
%struct.opp_table = type opaque
%struct.dev_pm_opp = type opaque
%struct.gpd_dev_ops = type { i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.genpd_power_state = type { i64, i64, i64, i64, i64, %struct.fwnode_handle*, i64, i8* }
%struct.genpd_lock_ops = type opaque
%union.anon.39 = type { %struct.mutex }
%struct.gpd_timing_data = type { i64, i64, i64, i8, i8 }
%struct.generic_pm_domain_data = type { %struct.pm_domain_data, %struct.gpd_timing_data, %struct.notifier_block, %struct.notifier_block*, i32, i32, i8* }
%struct.gpd_link = type { %struct.generic_pm_domain*, %struct.list_head, %struct.generic_pm_domain*, %struct.list_head, i32, i32 }

@pm_domain_cpu_gov = dso_local global %struct.dev_power_governor { i1 (%struct.dev_pm_domain*)* @cpu_power_down_ok, i1 (%struct.device*)* @default_suspend_ok }, align 8, !dbg !0
@simple_qos_governor = dso_local global %struct.dev_power_governor { i1 (%struct.dev_pm_domain*)* @default_power_down_ok, i1 (%struct.device*)* @default_suspend_ok }, align 8, !dbg !2291
@pm_domain_always_on_gov = dso_local global %struct.dev_power_governor { i1 (%struct.dev_pm_domain*)* @always_on_power_down_ok, i1 (%struct.device*)* @default_suspend_ok }, align 8, !dbg !2293
@cpuidle_devices = external dso_local global %struct.cpuidle_device*, section ".data", align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @cpu_power_down_ok(%struct.dev_pm_domain* %pd) #0 !dbg !2301 {
entry:
  %retval = alloca i1, align 1
  %pd.addr = alloca %struct.dev_pm_domain*, align 8
  %genpd = alloca %struct.generic_pm_domain*, align 8
  %dev = alloca %struct.cpuidle_device*, align 8
  %domain_wakeup = alloca i64, align 8
  %next_hrtimer = alloca i64, align 8
  %idle_duration_ns = alloca i64, align 8
  %cpu = alloca i32, align 4
  %i = alloca i32, align 4
  %tmp = alloca %struct.cpuidle_device**, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp5 = alloca %struct.cpuidle_device**, align 8
  %tmp10 = alloca i64, align 8
  store %struct.dev_pm_domain* %pd, %struct.dev_pm_domain** %pd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dev_pm_domain** %pd.addr, metadata !2302, metadata !DIExpression()), !dbg !2303
  call void @llvm.dbg.declare(metadata %struct.generic_pm_domain** %genpd, metadata !2304, metadata !DIExpression()), !dbg !2305
  %0 = load %struct.dev_pm_domain*, %struct.dev_pm_domain** %pd.addr, align 8, !dbg !2306
  %call = call %struct.generic_pm_domain* @pd_to_genpd(%struct.dev_pm_domain* %0) #5, !dbg !2307
  store %struct.generic_pm_domain* %call, %struct.generic_pm_domain** %genpd, align 8, !dbg !2305
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %dev, metadata !2308, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.declare(metadata i64* %domain_wakeup, metadata !2310, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.declare(metadata i64* %next_hrtimer, metadata !2312, metadata !DIExpression()), !dbg !2313
  call void @llvm.dbg.declare(metadata i64* %idle_duration_ns, metadata !2314, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.declare(metadata i32* %cpu, metadata !2316, metadata !DIExpression()), !dbg !2317
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2318, metadata !DIExpression()), !dbg !2319
  %1 = load %struct.dev_pm_domain*, %struct.dev_pm_domain** %pd.addr, align 8, !dbg !2320
  %call1 = call zeroext i1 @default_power_down_ok(%struct.dev_pm_domain* %1) #5, !dbg !2322
  br i1 %call1, label %if.end, label %if.then, !dbg !2323

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !2324
  br label %return, !dbg !2324

if.end:                                           ; preds = %entry
  %2 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %genpd, align 8, !dbg !2325
  %flags = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %2, i32 0, i32 31, !dbg !2327
  %3 = load i32, i32* %flags, align 8, !dbg !2327
  %and = and i32 %3, 16, !dbg !2328
  %tobool = icmp ne i32 %and, 0, !dbg !2328
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !2329

if.then2:                                         ; preds = %if.end
  store i1 true, i1* %retval, align 1, !dbg !2330
  br label %return, !dbg !2330

if.end3:                                          ; preds = %if.end
  %call4 = call i64 @ktime_set(i64 9223372036, i64 0) #5, !dbg !2331
  store i64 %call4, i64* %domain_wakeup, align 8, !dbg !2332
  store i32 0, i32* %cpu, align 4, !dbg !2333
  br label %for.cond, !dbg !2333

for.cond:                                         ; preds = %for.inc, %if.end3
  %4 = load i32, i32* %cpu, align 4, !dbg !2335
  %cmp = icmp slt i32 %4, 1, !dbg !2335
  br i1 %cmp, label %for.body, label %for.end, !dbg !2333

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %cpu, align 4, !dbg !2337
  br label %do.body, !dbg !2340

do.body:                                          ; preds = %for.body
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !2342, metadata !DIExpression()), !dbg !2344
  store i8* null, i8** %__vpp_verify, align 8, !dbg !2344
  %6 = load i8*, i8** %__vpp_verify, align 8, !dbg !2344
  br label %do.end, !dbg !2344

do.end:                                           ; preds = %do.body
  store %struct.cpuidle_device** @cpuidle_devices, %struct.cpuidle_device*** %tmp5, align 8, !dbg !2344
  %7 = load %struct.cpuidle_device**, %struct.cpuidle_device*** %tmp5, align 8, !dbg !2340
  store %struct.cpuidle_device** %7, %struct.cpuidle_device*** %tmp, align 8, !dbg !2337
  %8 = load %struct.cpuidle_device**, %struct.cpuidle_device*** %tmp, align 8, !dbg !2337
  %9 = load %struct.cpuidle_device*, %struct.cpuidle_device** %8, align 8, !dbg !2345
  store %struct.cpuidle_device* %9, %struct.cpuidle_device** %dev, align 8, !dbg !2346
  %10 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev, align 8, !dbg !2347
  %tobool6 = icmp ne %struct.cpuidle_device* %10, null, !dbg !2347
  br i1 %tobool6, label %if.then7, label %if.end15, !dbg !2349

if.then7:                                         ; preds = %do.end
  br label %do.body8, !dbg !2350

do.body8:                                         ; preds = %if.then7
  br label %do.end9, !dbg !2353

do.end9:                                          ; preds = %do.body8
  %11 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev, align 8, !dbg !2350
  %next_hrtimer11 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %11, i32 0, i32 2, !dbg !2350
  %12 = load volatile i64, i64* %next_hrtimer11, align 8, !dbg !2350
  store i64 %12, i64* %tmp10, align 8, !dbg !2353
  %13 = load i64, i64* %tmp10, align 8, !dbg !2350
  store i64 %13, i64* %next_hrtimer, align 8, !dbg !2355
  %14 = load i64, i64* %next_hrtimer, align 8, !dbg !2356
  %15 = load i64, i64* %domain_wakeup, align 8, !dbg !2358
  %call12 = call zeroext i1 @ktime_before(i64 %14, i64 %15) #5, !dbg !2359
  br i1 %call12, label %if.then13, label %if.end14, !dbg !2360

if.then13:                                        ; preds = %do.end9
  %16 = load i64, i64* %next_hrtimer, align 8, !dbg !2361
  store i64 %16, i64* %domain_wakeup, align 8, !dbg !2362
  br label %if.end14, !dbg !2363

if.end14:                                         ; preds = %if.then13, %do.end9
  br label %if.end15, !dbg !2364

if.end15:                                         ; preds = %if.end14, %do.end
  br label %for.inc, !dbg !2365

for.inc:                                          ; preds = %if.end15
  %17 = load i32, i32* %cpu, align 4, !dbg !2335
  %inc = add i32 %17, 1, !dbg !2335
  store i32 %inc, i32* %cpu, align 4, !dbg !2335
  %18 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %genpd, align 8, !dbg !2335
  %cpus = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %18, i32 0, i32 17, !dbg !2335
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %cpus, i64 0, i64 0, !dbg !2335
  br label %for.cond, !dbg !2335, !llvm.loop !2366

for.end:                                          ; preds = %for.cond
  %19 = load i64, i64* %domain_wakeup, align 8, !dbg !2368
  %call16 = call i64 @ktime_get() #5, !dbg !2368
  %sub = sub i64 %19, %call16, !dbg !2368
  %call17 = call i64 @ktime_to_ns(i64 %sub) #5, !dbg !2369
  store i64 %call17, i64* %idle_duration_ns, align 8, !dbg !2370
  %20 = load i64, i64* %idle_duration_ns, align 8, !dbg !2371
  %cmp18 = icmp sle i64 %20, 0, !dbg !2373
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !2374

if.then19:                                        ; preds = %for.end
  store i1 false, i1* %retval, align 1, !dbg !2375
  br label %return, !dbg !2375

if.end20:                                         ; preds = %for.end
  %21 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %genpd, align 8, !dbg !2376
  %state_idx = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %21, i32 0, i32 35, !dbg !2377
  %22 = load i32, i32* %state_idx, align 4, !dbg !2377
  store i32 %22, i32* %i, align 4, !dbg !2378
  br label %do.body21, !dbg !2379

do.body21:                                        ; preds = %do.cond, %if.end20
  %23 = load i64, i64* %idle_duration_ns, align 8, !dbg !2380
  %24 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %genpd, align 8, !dbg !2383
  %states = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %24, i32 0, i32 32, !dbg !2384
  %25 = load %struct.genpd_power_state*, %struct.genpd_power_state** %states, align 8, !dbg !2384
  %26 = load i32, i32* %i, align 4, !dbg !2385
  %idxprom = sext i32 %26 to i64, !dbg !2383
  %arrayidx = getelementptr %struct.genpd_power_state, %struct.genpd_power_state* %25, i64 %idxprom, !dbg !2383
  %residency_ns = getelementptr inbounds %struct.genpd_power_state, %struct.genpd_power_state* %arrayidx, i32 0, i32 2, !dbg !2386
  %27 = load i64, i64* %residency_ns, align 8, !dbg !2386
  %28 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %genpd, align 8, !dbg !2387
  %states22 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %28, i32 0, i32 32, !dbg !2388
  %29 = load %struct.genpd_power_state*, %struct.genpd_power_state** %states22, align 8, !dbg !2388
  %30 = load i32, i32* %i, align 4, !dbg !2389
  %idxprom23 = sext i32 %30 to i64, !dbg !2387
  %arrayidx24 = getelementptr %struct.genpd_power_state, %struct.genpd_power_state* %29, i64 %idxprom23, !dbg !2387
  %power_off_latency_ns = getelementptr inbounds %struct.genpd_power_state, %struct.genpd_power_state* %arrayidx24, i32 0, i32 0, !dbg !2390
  %31 = load i64, i64* %power_off_latency_ns, align 8, !dbg !2390
  %add = add i64 %27, %31, !dbg !2391
  %cmp25 = icmp sge i64 %23, %add, !dbg !2392
  br i1 %cmp25, label %if.then26, label %if.end28, !dbg !2393

if.then26:                                        ; preds = %do.body21
  %32 = load i32, i32* %i, align 4, !dbg !2394
  %33 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %genpd, align 8, !dbg !2396
  %state_idx27 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %33, i32 0, i32 35, !dbg !2397
  store i32 %32, i32* %state_idx27, align 4, !dbg !2398
  store i1 true, i1* %retval, align 1, !dbg !2399
  br label %return, !dbg !2399

if.end28:                                         ; preds = %do.body21
  br label %do.cond, !dbg !2400

do.cond:                                          ; preds = %if.end28
  %34 = load i32, i32* %i, align 4, !dbg !2401
  %dec = add i32 %34, -1, !dbg !2401
  store i32 %dec, i32* %i, align 4, !dbg !2401
  %cmp29 = icmp sge i32 %dec, 0, !dbg !2402
  br i1 %cmp29, label %do.body21, label %do.end30, !dbg !2400, !llvm.loop !2403

do.end30:                                         ; preds = %do.cond
  store i1 false, i1* %retval, align 1, !dbg !2405
  br label %return, !dbg !2405

return:                                           ; preds = %do.end30, %if.then26, %if.then19, %if.then2, %if.then
  %35 = load i1, i1* %retval, align 1, !dbg !2406
  ret i1 %35, !dbg !2406
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @default_suspend_ok(%struct.device* %dev) #0 !dbg !2407 {
entry:
  %lock.addr.i60 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i60, metadata !2408, metadata !DIExpression()), !dbg !2414
  %flags.addr.i61 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i61, metadata !2418, metadata !DIExpression()), !dbg !2419
  %tmp.i62 = alloca i32, align 4
  %tmp8.i63 = alloca i32, align 4
  %lock.addr.i58 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i58, metadata !2408, metadata !DIExpression()), !dbg !2420
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !2418, metadata !DIExpression()), !dbg !2422
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2423, metadata !DIExpression()), !dbg !2428
  %retval = alloca i1, align 1
  %dev.addr = alloca %struct.device*, align 8
  %td = alloca %struct.gpd_timing_data*, align 8
  %flags = alloca i64, align 8
  %constraint_ns = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy6 = alloca i64, align 8
  %__dummy27 = alloca i64, align 8
  %tmp10 = alloca i32, align 4
  %ret = alloca i8, align 1
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2435, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.declare(metadata %struct.gpd_timing_data** %td, metadata !2437, metadata !DIExpression()), !dbg !2439
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2440
  %call = call %struct.generic_pm_domain_data* @dev_gpd_data(%struct.device* %0) #5, !dbg !2441
  %td1 = getelementptr inbounds %struct.generic_pm_domain_data, %struct.generic_pm_domain_data* %call, i32 0, i32 1, !dbg !2442
  store %struct.gpd_timing_data* %td1, %struct.gpd_timing_data** %td, align 8, !dbg !2439
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !2443, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.declare(metadata i64* %constraint_ns, metadata !2445, metadata !DIExpression()), !dbg !2446
  br label %do.body, !dbg !2447

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !2448

do.body2:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !2449, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !2452, metadata !DIExpression()), !dbg !2451
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !2451
  %conv = zext i1 %cmp to i32, !dbg !2451
  store i32 1, i32* %tmp, align 4, !dbg !2451
  %1 = load i32, i32* %tmp, align 4, !dbg !2451
  br label %do.body3, !dbg !2453

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !2454

do.body4:                                         ; preds = %do.body3
  br label %do.body5, !dbg !2455

do.body5:                                         ; preds = %do.body4
  call void @llvm.dbg.declare(metadata i64* %__dummy6, metadata !2457, metadata !DIExpression()), !dbg !2460
  call void @llvm.dbg.declare(metadata i64* %__dummy27, metadata !2461, metadata !DIExpression()), !dbg !2460
  %cmp8 = icmp eq i64* %__dummy6, %__dummy27, !dbg !2460
  %conv9 = zext i1 %cmp8 to i32, !dbg !2460
  store i32 1, i32* %tmp10, align 4, !dbg !2460
  %2 = load i32, i32* %tmp10, align 4, !dbg !2460
  %call11 = call i64 @arch_local_irq_save() #5, !dbg !2462
  store i64 %call11, i64* %flags, align 8, !dbg !2462
  br label %do.end, !dbg !2462

do.end:                                           ; preds = %do.body5
  br label %do.end12, !dbg !2455

do.end12:                                         ; preds = %do.end
  br label %do.body13, !dbg !2454

do.body13:                                        ; preds = %do.end12
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !2463, !srcloc !2464
  br label %do.body14, !dbg !2463

do.body14:                                        ; preds = %do.body13
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2465
  %power = getelementptr inbounds %struct.device, %struct.device* %3, i32 0, i32 11, !dbg !2465
  %lock = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 3, !dbg !2465
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %4 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2466
  %5 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %4, i32 0, i32 0, !dbg !2467
  %rlock.i = bitcast %union.anon* %5 to %struct.raw_spinlock*, !dbg !2467
  br label %do.end16, !dbg !2465

do.end16:                                         ; preds = %do.body14
  br label %do.end17, !dbg !2463

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !2454

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !2453

do.end19:                                         ; preds = %do.end18
  br label %do.end20, !dbg !2448

do.end20:                                         ; preds = %do.end19
  %6 = load %struct.gpd_timing_data*, %struct.gpd_timing_data** %td, align 8, !dbg !2468
  %constraint_changed = getelementptr inbounds %struct.gpd_timing_data, %struct.gpd_timing_data* %6, i32 0, i32 3, !dbg !2469
  %7 = load i8, i8* %constraint_changed, align 8, !dbg !2469
  %tobool = trunc i8 %7 to i1, !dbg !2469
  br i1 %tobool, label %if.end, label %if.then, !dbg !2470

if.then:                                          ; preds = %do.end20
  call void @llvm.dbg.declare(metadata i8* %ret, metadata !2471, metadata !DIExpression()), !dbg !2472
  %8 = load %struct.gpd_timing_data*, %struct.gpd_timing_data** %td, align 8, !dbg !2473
  %cached_suspend_ok = getelementptr inbounds %struct.gpd_timing_data, %struct.gpd_timing_data* %8, i32 0, i32 4, !dbg !2474
  %9 = load i8, i8* %cached_suspend_ok, align 1, !dbg !2474
  %tobool21 = trunc i8 %9 to i1, !dbg !2474
  %frombool = zext i1 %tobool21 to i8, !dbg !2472
  store i8 %frombool, i8* %ret, align 1, !dbg !2472
  %10 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2475
  %power22 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 11, !dbg !2476
  %lock23 = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power22, i32 0, i32 3, !dbg !2477
  %11 = load i64, i64* %flags, align 8, !dbg !2478
  store %struct.spinlock* %lock23, %struct.spinlock** %lock.addr.i60, align 8
  store i64 %11, i64* %flags.addr.i61, align 8
  call void @llvm.dbg.declare(metadata !185, metadata !2479, metadata !DIExpression()) #4, !dbg !2482
  call void @llvm.dbg.declare(metadata !185, metadata !2483, metadata !DIExpression()) #4, !dbg !2482
  store i32 1, i32* %tmp.i62, align 4, !dbg !2482
  %12 = load i32, i32* %tmp.i62, align 4, !dbg !2482
  call void @llvm.dbg.declare(metadata !185, metadata !2484, metadata !DIExpression()) #4, !dbg !2489
  call void @llvm.dbg.declare(metadata !185, metadata !2490, metadata !DIExpression()) #4, !dbg !2489
  store i32 1, i32* %tmp8.i63, align 4, !dbg !2489
  %13 = load i32, i32* %tmp8.i63, align 4, !dbg !2489
  %14 = load i64, i64* %flags.addr.i61, align 8, !dbg !2491
  call void @arch_local_irq_restore(i64 %14) #6, !dbg !2491
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !2492, !srcloc !2494
  %15 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i60, align 8, !dbg !2495
  %16 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %15, i32 0, i32 0, !dbg !2495
  %rlock.i64 = bitcast %union.anon* %16 to %struct.raw_spinlock*, !dbg !2495
  %17 = load i8, i8* %ret, align 1, !dbg !2497
  %tobool24 = trunc i8 %17 to i1, !dbg !2497
  store i1 %tobool24, i1* %retval, align 1, !dbg !2498
  br label %return, !dbg !2498

if.end:                                           ; preds = %do.end20
  %18 = load %struct.gpd_timing_data*, %struct.gpd_timing_data** %td, align 8, !dbg !2499
  %constraint_changed25 = getelementptr inbounds %struct.gpd_timing_data, %struct.gpd_timing_data* %18, i32 0, i32 3, !dbg !2500
  store i8 0, i8* %constraint_changed25, align 8, !dbg !2501
  %19 = load %struct.gpd_timing_data*, %struct.gpd_timing_data** %td, align 8, !dbg !2502
  %cached_suspend_ok26 = getelementptr inbounds %struct.gpd_timing_data, %struct.gpd_timing_data* %19, i32 0, i32 4, !dbg !2503
  store i8 0, i8* %cached_suspend_ok26, align 1, !dbg !2504
  %20 = load %struct.gpd_timing_data*, %struct.gpd_timing_data** %td, align 8, !dbg !2505
  %effective_constraint_ns = getelementptr inbounds %struct.gpd_timing_data, %struct.gpd_timing_data* %20, i32 0, i32 2, !dbg !2506
  store i64 0, i64* %effective_constraint_ns, align 8, !dbg !2507
  %21 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2508
  %call27 = call i32 @__dev_pm_qos_resume_latency(%struct.device* %21) #5, !dbg !2509
  %conv28 = sext i32 %call27 to i64, !dbg !2509
  store i64 %conv28, i64* %constraint_ns, align 8, !dbg !2510
  %22 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2511
  %power29 = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 11, !dbg !2512
  %lock30 = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power29, i32 0, i32 3, !dbg !2513
  %23 = load i64, i64* %flags, align 8, !dbg !2514
  store %struct.spinlock* %lock30, %struct.spinlock** %lock.addr.i58, align 8
  store i64 %23, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !185, metadata !2479, metadata !DIExpression()) #4, !dbg !2515
  call void @llvm.dbg.declare(metadata !185, metadata !2483, metadata !DIExpression()) #4, !dbg !2515
  store i32 1, i32* %tmp.i, align 4, !dbg !2515
  %24 = load i32, i32* %tmp.i, align 4, !dbg !2515
  call void @llvm.dbg.declare(metadata !185, metadata !2484, metadata !DIExpression()) #4, !dbg !2516
  call void @llvm.dbg.declare(metadata !185, metadata !2490, metadata !DIExpression()) #4, !dbg !2516
  store i32 1, i32* %tmp8.i, align 4, !dbg !2516
  %25 = load i32, i32* %tmp8.i, align 4, !dbg !2516
  %26 = load i64, i64* %flags.addr.i, align 8, !dbg !2517
  call void @arch_local_irq_restore(i64 %26) #6, !dbg !2517
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !2518, !srcloc !2494
  %27 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i58, align 8, !dbg !2519
  %28 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %27, i32 0, i32 0, !dbg !2519
  %rlock.i59 = bitcast %union.anon* %28 to %struct.raw_spinlock*, !dbg !2519
  %29 = load i64, i64* %constraint_ns, align 8, !dbg !2520
  %cmp31 = icmp eq i64 %29, 0, !dbg !2522
  br i1 %cmp31, label %if.then33, label %if.end34, !dbg !2523

if.then33:                                        ; preds = %if.end
  store i1 false, i1* %retval, align 1, !dbg !2524
  br label %return, !dbg !2524

if.end34:                                         ; preds = %if.end
  %30 = load i64, i64* %constraint_ns, align 8, !dbg !2525
  %mul = mul i64 %30, 1000, !dbg !2525
  store i64 %mul, i64* %constraint_ns, align 8, !dbg !2525
  %31 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2526
  %power35 = getelementptr inbounds %struct.device, %struct.device* %31, i32 0, i32 11, !dbg !2528
  %ignore_children = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power35, i32 0, i32 15, !dbg !2529
  %bf.load = load i16, i16* %ignore_children, align 8, !dbg !2529
  %bf.lshr = lshr i16 %bf.load, 7, !dbg !2529
  %bf.clear = and i16 %bf.lshr, 1, !dbg !2529
  %bf.cast = trunc i16 %bf.clear to i1, !dbg !2529
  br i1 %bf.cast, label %if.end38, label %if.then36, !dbg !2530

if.then36:                                        ; preds = %if.end34
  %32 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2531
  %33 = bitcast i64* %constraint_ns to i8*, !dbg !2532
  %call37 = call i32 @device_for_each_child(%struct.device* %32, i8* %33, i32 (%struct.device*, i8*)* @dev_update_qos_constraint) #5, !dbg !2533
  br label %if.end38, !dbg !2533

if.end38:                                         ; preds = %if.then36, %if.end34
  %34 = load i64, i64* %constraint_ns, align 8, !dbg !2534
  %cmp39 = icmp eq i64 %34, 2147483647000, !dbg !2536
  br i1 %cmp39, label %if.then41, label %if.else, !dbg !2537

if.then41:                                        ; preds = %if.end38
  %35 = load %struct.gpd_timing_data*, %struct.gpd_timing_data** %td, align 8, !dbg !2538
  %effective_constraint_ns42 = getelementptr inbounds %struct.gpd_timing_data, %struct.gpd_timing_data* %35, i32 0, i32 2, !dbg !2540
  store i64 2147483647000, i64* %effective_constraint_ns42, align 8, !dbg !2541
  %36 = load %struct.gpd_timing_data*, %struct.gpd_timing_data** %td, align 8, !dbg !2542
  %cached_suspend_ok43 = getelementptr inbounds %struct.gpd_timing_data, %struct.gpd_timing_data* %36, i32 0, i32 4, !dbg !2543
  store i8 1, i8* %cached_suspend_ok43, align 1, !dbg !2544
  br label %if.end55, !dbg !2545

if.else:                                          ; preds = %if.end38
  %37 = load i64, i64* %constraint_ns, align 8, !dbg !2546
  %cmp44 = icmp eq i64 %37, 0, !dbg !2548
  br i1 %cmp44, label %if.then46, label %if.else47, !dbg !2549

if.then46:                                        ; preds = %if.else
  store i1 false, i1* %retval, align 1, !dbg !2550
  br label %return, !dbg !2550

if.else47:                                        ; preds = %if.else
  %38 = load %struct.gpd_timing_data*, %struct.gpd_timing_data** %td, align 8, !dbg !2552
  %suspend_latency_ns = getelementptr inbounds %struct.gpd_timing_data, %struct.gpd_timing_data* %38, i32 0, i32 0, !dbg !2554
  %39 = load i64, i64* %suspend_latency_ns, align 8, !dbg !2554
  %40 = load %struct.gpd_timing_data*, %struct.gpd_timing_data** %td, align 8, !dbg !2555
  %resume_latency_ns = getelementptr inbounds %struct.gpd_timing_data, %struct.gpd_timing_data* %40, i32 0, i32 1, !dbg !2556
  %41 = load i64, i64* %resume_latency_ns, align 8, !dbg !2556
  %add = add i64 %39, %41, !dbg !2557
  %42 = load i64, i64* %constraint_ns, align 8, !dbg !2558
  %sub = sub i64 %42, %add, !dbg !2558
  store i64 %sub, i64* %constraint_ns, align 8, !dbg !2558
  %43 = load i64, i64* %constraint_ns, align 8, !dbg !2559
  %cmp48 = icmp sle i64 %43, 0, !dbg !2561
  br i1 %cmp48, label %if.then50, label %if.end51, !dbg !2562

if.then50:                                        ; preds = %if.else47
  store i1 false, i1* %retval, align 1, !dbg !2563
  br label %return, !dbg !2563

if.end51:                                         ; preds = %if.else47
  %44 = load i64, i64* %constraint_ns, align 8, !dbg !2564
  %45 = load %struct.gpd_timing_data*, %struct.gpd_timing_data** %td, align 8, !dbg !2565
  %effective_constraint_ns52 = getelementptr inbounds %struct.gpd_timing_data, %struct.gpd_timing_data* %45, i32 0, i32 2, !dbg !2566
  store i64 %44, i64* %effective_constraint_ns52, align 8, !dbg !2567
  %46 = load %struct.gpd_timing_data*, %struct.gpd_timing_data** %td, align 8, !dbg !2568
  %cached_suspend_ok53 = getelementptr inbounds %struct.gpd_timing_data, %struct.gpd_timing_data* %46, i32 0, i32 4, !dbg !2569
  store i8 1, i8* %cached_suspend_ok53, align 1, !dbg !2570
  br label %if.end54

if.end54:                                         ; preds = %if.end51
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.then41
  %47 = load %struct.gpd_timing_data*, %struct.gpd_timing_data** %td, align 8, !dbg !2571
  %cached_suspend_ok56 = getelementptr inbounds %struct.gpd_timing_data, %struct.gpd_timing_data* %47, i32 0, i32 4, !dbg !2572
  %48 = load i8, i8* %cached_suspend_ok56, align 1, !dbg !2572
  %tobool57 = trunc i8 %48 to i1, !dbg !2572
  store i1 %tobool57, i1* %retval, align 1, !dbg !2573
  br label %return, !dbg !2573

return:                                           ; preds = %if.end55, %if.then50, %if.then46, %if.then33, %if.then
  %49 = load i1, i1* %retval, align 1, !dbg !2574
  ret i1 %49, !dbg !2574
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @default_power_down_ok(%struct.dev_pm_domain* %pd) #0 !dbg !2575 {
entry:
  %retval = alloca i1, align 1
  %pd.addr = alloca %struct.dev_pm_domain*, align 8
  %genpd = alloca %struct.generic_pm_domain*, align 8
  %link = alloca %struct.gpd_link*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.gpd_link*, align 8
  %__mptr6 = alloca i8*, align 8
  %tmp11 = alloca %struct.gpd_link*, align 8
  store %struct.dev_pm_domain* %pd, %struct.dev_pm_domain** %pd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dev_pm_domain** %pd.addr, metadata !2576, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.declare(metadata %struct.generic_pm_domain** %genpd, metadata !2578, metadata !DIExpression()), !dbg !2579
  %0 = load %struct.dev_pm_domain*, %struct.dev_pm_domain** %pd.addr, align 8, !dbg !2580
  %call = call %struct.generic_pm_domain* @pd_to_genpd(%struct.dev_pm_domain* %0) #5, !dbg !2581
  store %struct.generic_pm_domain* %call, %struct.generic_pm_domain** %genpd, align 8, !dbg !2579
  call void @llvm.dbg.declare(metadata %struct.gpd_link** %link, metadata !2582, metadata !DIExpression()), !dbg !2583
  %1 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %genpd, align 8, !dbg !2584
  %max_off_time_changed = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %1, i32 0, i32 26, !dbg !2586
  %2 = load i8, i8* %max_off_time_changed, align 8, !dbg !2586
  %tobool = trunc i8 %2 to i1, !dbg !2586
  br i1 %tobool, label %if.end, label %if.then, !dbg !2587

if.then:                                          ; preds = %entry
  %3 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %genpd, align 8, !dbg !2588
  %cached_power_down_state_idx = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %3, i32 0, i32 28, !dbg !2590
  %4 = load i8, i8* %cached_power_down_state_idx, align 2, !dbg !2590
  %tobool1 = trunc i8 %4 to i1, !dbg !2590
  %conv = zext i1 %tobool1 to i32, !dbg !2588
  %5 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %genpd, align 8, !dbg !2591
  %state_idx = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %5, i32 0, i32 35, !dbg !2592
  store i32 %conv, i32* %state_idx, align 4, !dbg !2593
  %6 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %genpd, align 8, !dbg !2594
  %cached_power_down_ok = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %6, i32 0, i32 27, !dbg !2595
  %7 = load i8, i8* %cached_power_down_ok, align 1, !dbg !2595
  %tobool2 = trunc i8 %7 to i1, !dbg !2595
  store i1 %tobool2, i1* %retval, align 1, !dbg !2596
  br label %return, !dbg !2596

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2597, metadata !DIExpression()), !dbg !2600
  %8 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %genpd, align 8, !dbg !2600
  %child_links = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %8, i32 0, i32 4, !dbg !2600
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %child_links, i32 0, i32 0, !dbg !2600
  %9 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2600
  %10 = bitcast %struct.list_head* %9 to i8*, !dbg !2600
  store i8* %10, i8** %__mptr, align 8, !dbg !2600
  br label %do.body, !dbg !2600

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !2601

do.end:                                           ; preds = %do.body
  %11 = load i8*, i8** %__mptr, align 8, !dbg !2600
  %add.ptr = getelementptr i8, i8* %11, i64 -32, !dbg !2600
  %12 = bitcast i8* %add.ptr to %struct.gpd_link*, !dbg !2600
  store %struct.gpd_link* %12, %struct.gpd_link** %tmp, align 8, !dbg !2601
  %13 = load %struct.gpd_link*, %struct.gpd_link** %tmp, align 8, !dbg !2600
  store %struct.gpd_link* %13, %struct.gpd_link** %link, align 8, !dbg !2603
  br label %for.cond, !dbg !2603

for.cond:                                         ; preds = %do.end10, %do.end
  %14 = load %struct.gpd_link*, %struct.gpd_link** %link, align 8, !dbg !2604
  %child_node = getelementptr inbounds %struct.gpd_link, %struct.gpd_link* %14, i32 0, i32 3, !dbg !2604
  %15 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %genpd, align 8, !dbg !2604
  %child_links3 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %15, i32 0, i32 4, !dbg !2604
  %cmp = icmp eq %struct.list_head* %child_node, %child_links3, !dbg !2604
  %lnot = xor i1 %cmp, true, !dbg !2604
  br i1 %lnot, label %for.body, label %for.end, !dbg !2603

for.body:                                         ; preds = %for.cond
  %16 = load %struct.gpd_link*, %struct.gpd_link** %link, align 8, !dbg !2606
  %parent = getelementptr inbounds %struct.gpd_link, %struct.gpd_link* %16, i32 0, i32 0, !dbg !2607
  %17 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %parent, align 8, !dbg !2607
  %max_off_time_changed5 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %17, i32 0, i32 26, !dbg !2608
  store i8 1, i8* %max_off_time_changed5, align 8, !dbg !2609
  br label %for.inc, !dbg !2606

for.inc:                                          ; preds = %for.body
  call void @llvm.dbg.declare(metadata i8** %__mptr6, metadata !2610, metadata !DIExpression()), !dbg !2612
  %18 = load %struct.gpd_link*, %struct.gpd_link** %link, align 8, !dbg !2612
  %child_node7 = getelementptr inbounds %struct.gpd_link, %struct.gpd_link* %18, i32 0, i32 3, !dbg !2612
  %next8 = getelementptr inbounds %struct.list_head, %struct.list_head* %child_node7, i32 0, i32 0, !dbg !2612
  %19 = load %struct.list_head*, %struct.list_head** %next8, align 8, !dbg !2612
  %20 = bitcast %struct.list_head* %19 to i8*, !dbg !2612
  store i8* %20, i8** %__mptr6, align 8, !dbg !2612
  br label %do.body9, !dbg !2612

do.body9:                                         ; preds = %for.inc
  br label %do.end10, !dbg !2613

do.end10:                                         ; preds = %do.body9
  %21 = load i8*, i8** %__mptr6, align 8, !dbg !2612
  %add.ptr12 = getelementptr i8, i8* %21, i64 -32, !dbg !2612
  %22 = bitcast i8* %add.ptr12 to %struct.gpd_link*, !dbg !2612
  store %struct.gpd_link* %22, %struct.gpd_link** %tmp11, align 8, !dbg !2613
  %23 = load %struct.gpd_link*, %struct.gpd_link** %tmp11, align 8, !dbg !2612
  store %struct.gpd_link* %23, %struct.gpd_link** %link, align 8, !dbg !2604
  br label %for.cond, !dbg !2604, !llvm.loop !2615

for.end:                                          ; preds = %for.cond
  %24 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %genpd, align 8, !dbg !2617
  %max_off_time_ns = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %24, i32 0, i32 25, !dbg !2618
  store i64 -1, i64* %max_off_time_ns, align 8, !dbg !2619
  %25 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %genpd, align 8, !dbg !2620
  %max_off_time_changed13 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %25, i32 0, i32 26, !dbg !2621
  store i8 0, i8* %max_off_time_changed13, align 8, !dbg !2622
  %26 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %genpd, align 8, !dbg !2623
  %cached_power_down_ok14 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %26, i32 0, i32 27, !dbg !2624
  store i8 1, i8* %cached_power_down_ok14, align 1, !dbg !2625
  %27 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %genpd, align 8, !dbg !2626
  %state_count = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %27, i32 0, i32 34, !dbg !2627
  %28 = load i32, i32* %state_count, align 8, !dbg !2627
  %sub = sub i32 %28, 1, !dbg !2628
  %29 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %genpd, align 8, !dbg !2629
  %state_idx15 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %29, i32 0, i32 35, !dbg !2630
  store i32 %sub, i32* %state_idx15, align 4, !dbg !2631
  br label %while.cond, !dbg !2632

while.cond:                                       ; preds = %if.end24, %for.end
  %30 = load %struct.dev_pm_domain*, %struct.dev_pm_domain** %pd.addr, align 8, !dbg !2633
  %31 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %genpd, align 8, !dbg !2634
  %state_idx16 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %31, i32 0, i32 35, !dbg !2635
  %32 = load i32, i32* %state_idx16, align 4, !dbg !2635
  %call17 = call zeroext i1 @__default_power_down_ok(%struct.dev_pm_domain* %30, i32 %32) #5, !dbg !2636
  %lnot18 = xor i1 %call17, true, !dbg !2637
  br i1 %lnot18, label %while.body, label %while.end, !dbg !2632

while.body:                                       ; preds = %while.cond
  %33 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %genpd, align 8, !dbg !2638
  %state_idx19 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %33, i32 0, i32 35, !dbg !2641
  %34 = load i32, i32* %state_idx19, align 4, !dbg !2641
  %cmp20 = icmp eq i32 %34, 0, !dbg !2642
  br i1 %cmp20, label %if.then22, label %if.end24, !dbg !2643

if.then22:                                        ; preds = %while.body
  %35 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %genpd, align 8, !dbg !2644
  %cached_power_down_ok23 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %35, i32 0, i32 27, !dbg !2646
  store i8 0, i8* %cached_power_down_ok23, align 1, !dbg !2647
  br label %while.end, !dbg !2648

if.end24:                                         ; preds = %while.body
  %36 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %genpd, align 8, !dbg !2649
  %state_idx25 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %36, i32 0, i32 35, !dbg !2650
  %37 = load i32, i32* %state_idx25, align 4, !dbg !2651
  %dec = add i32 %37, -1, !dbg !2651
  store i32 %dec, i32* %state_idx25, align 4, !dbg !2651
  br label %while.cond, !dbg !2632, !llvm.loop !2652

while.end:                                        ; preds = %if.then22, %while.cond
  %38 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %genpd, align 8, !dbg !2654
  %state_idx26 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %38, i32 0, i32 35, !dbg !2655
  %39 = load i32, i32* %state_idx26, align 4, !dbg !2655
  %tobool27 = icmp ne i32 %39, 0, !dbg !2654
  %40 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %genpd, align 8, !dbg !2656
  %cached_power_down_state_idx28 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %40, i32 0, i32 28, !dbg !2657
  %frombool = zext i1 %tobool27 to i8, !dbg !2658
  store i8 %frombool, i8* %cached_power_down_state_idx28, align 2, !dbg !2658
  %41 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %genpd, align 8, !dbg !2659
  %cached_power_down_ok29 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %41, i32 0, i32 27, !dbg !2660
  %42 = load i8, i8* %cached_power_down_ok29, align 1, !dbg !2660
  %tobool30 = trunc i8 %42 to i1, !dbg !2660
  store i1 %tobool30, i1* %retval, align 1, !dbg !2661
  br label %return, !dbg !2661

return:                                           ; preds = %while.end, %if.then
  %43 = load i1, i1* %retval, align 1, !dbg !2662
  ret i1 %43, !dbg !2662
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @always_on_power_down_ok(%struct.dev_pm_domain* %domain) #0 !dbg !2663 {
entry:
  %domain.addr = alloca %struct.dev_pm_domain*, align 8
  store %struct.dev_pm_domain* %domain, %struct.dev_pm_domain** %domain.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dev_pm_domain** %domain.addr, metadata !2664, metadata !DIExpression()), !dbg !2665
  ret i1 false, !dbg !2666
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.generic_pm_domain* @pd_to_genpd(%struct.dev_pm_domain* %pd) #0 !dbg !2667 {
entry:
  %pd.addr = alloca %struct.dev_pm_domain*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.generic_pm_domain*, align 8
  store %struct.dev_pm_domain* %pd, %struct.dev_pm_domain** %pd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dev_pm_domain** %pd.addr, metadata !2670, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2672, metadata !DIExpression()), !dbg !2674
  %0 = load %struct.dev_pm_domain*, %struct.dev_pm_domain** %pd.addr, align 8, !dbg !2674
  %1 = bitcast %struct.dev_pm_domain* %0 to i8*, !dbg !2674
  store i8* %1, i8** %__mptr, align 8, !dbg !2674
  br label %do.body, !dbg !2674

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2675

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2674
  %add.ptr = getelementptr i8, i8* %2, i64 -696, !dbg !2674
  %3 = bitcast i8* %add.ptr to %struct.generic_pm_domain*, !dbg !2674
  store %struct.generic_pm_domain* %3, %struct.generic_pm_domain** %tmp, align 8, !dbg !2675
  %4 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %tmp, align 8, !dbg !2674
  ret %struct.generic_pm_domain* %4, !dbg !2677
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @ktime_set(i64 %secs, i64 %nsecs) #0 !dbg !2678 {
entry:
  %retval = alloca i64, align 8
  %secs.addr = alloca i64, align 8
  %nsecs.addr = alloca i64, align 8
  store i64 %secs, i64* %secs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %secs.addr, metadata !2683, metadata !DIExpression()), !dbg !2684
  store i64 %nsecs, i64* %nsecs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nsecs.addr, metadata !2685, metadata !DIExpression()), !dbg !2686
  %0 = load i64, i64* %secs.addr, align 8, !dbg !2687
  %cmp = icmp sge i64 %0, 9223372036, !dbg !2687
  %lnot = xor i1 %cmp, true, !dbg !2687
  %lnot1 = xor i1 %lnot, true, !dbg !2687
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2687
  %conv = sext i32 %lnot.ext to i64, !dbg !2687
  %tobool = icmp ne i64 %conv, 0, !dbg !2687
  br i1 %tobool, label %if.then, label %if.end, !dbg !2689

if.then:                                          ; preds = %entry
  store i64 9223372036854775807, i64* %retval, align 8, !dbg !2690
  br label %return, !dbg !2690

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %secs.addr, align 8, !dbg !2691
  %mul = mul i64 %1, 1000000000, !dbg !2692
  %2 = load i64, i64* %nsecs.addr, align 8, !dbg !2693
  %add = add i64 %mul, %2, !dbg !2694
  store i64 %add, i64* %retval, align 8, !dbg !2695
  br label %return, !dbg !2695

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, i64* %retval, align 8, !dbg !2696
  ret i64 %3, !dbg !2696
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @ktime_before(i64 %cmp1, i64 %cmp2) #0 !dbg !2697 {
entry:
  %cmp1.addr = alloca i64, align 8
  %cmp2.addr = alloca i64, align 8
  store i64 %cmp1, i64* %cmp1.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %cmp1.addr, metadata !2701, metadata !DIExpression()), !dbg !2702
  store i64 %cmp2, i64* %cmp2.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %cmp2.addr, metadata !2703, metadata !DIExpression()), !dbg !2704
  %0 = load i64, i64* %cmp1.addr, align 8, !dbg !2705
  %1 = load i64, i64* %cmp2.addr, align 8, !dbg !2706
  %call = call i32 @ktime_compare(i64 %0, i64 %1) #5, !dbg !2707
  %cmp = icmp slt i32 %call, 0, !dbg !2708
  ret i1 %cmp, !dbg !2709
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @ktime_to_ns(i64 %kt) #0 !dbg !2710 {
entry:
  %kt.addr = alloca i64, align 8
  store i64 %kt, i64* %kt.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %kt.addr, metadata !2713, metadata !DIExpression()), !dbg !2714
  %0 = load i64, i64* %kt.addr, align 8, !dbg !2715
  ret i64 %0, !dbg !2716
}

; Function Attrs: noredzone
declare dso_local i64 @ktime_get() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ktime_compare(i64 %cmp1, i64 %cmp2) #0 !dbg !2717 {
entry:
  %retval = alloca i32, align 4
  %cmp1.addr = alloca i64, align 8
  %cmp2.addr = alloca i64, align 8
  store i64 %cmp1, i64* %cmp1.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %cmp1.addr, metadata !2720, metadata !DIExpression()), !dbg !2721
  store i64 %cmp2, i64* %cmp2.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %cmp2.addr, metadata !2722, metadata !DIExpression()), !dbg !2723
  %0 = load i64, i64* %cmp1.addr, align 8, !dbg !2724
  %1 = load i64, i64* %cmp2.addr, align 8, !dbg !2726
  %cmp = icmp slt i64 %0, %1, !dbg !2727
  br i1 %cmp, label %if.then, label %if.end, !dbg !2728

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !2729
  br label %return, !dbg !2729

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %cmp1.addr, align 8, !dbg !2730
  %3 = load i64, i64* %cmp2.addr, align 8, !dbg !2732
  %cmp3 = icmp sgt i64 %2, %3, !dbg !2733
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !2734

if.then4:                                         ; preds = %if.end
  store i32 1, i32* %retval, align 4, !dbg !2735
  br label %return, !dbg !2735

if.end5:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !2736
  br label %return, !dbg !2736

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !2737
  ret i32 %4, !dbg !2737
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.generic_pm_domain_data* @dev_gpd_data(%struct.device* %dev) #0 !dbg !2738 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2741, metadata !DIExpression()), !dbg !2742
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2743
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !2744
  %subsys_data = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 25, !dbg !2745
  %1 = load %struct.pm_subsys_data*, %struct.pm_subsys_data** %subsys_data, align 8, !dbg !2745
  %domain_data = getelementptr inbounds %struct.pm_subsys_data, %struct.pm_subsys_data* %1, i32 0, i32 3, !dbg !2746
  %2 = load %struct.pm_domain_data*, %struct.pm_domain_data** %domain_data, align 8, !dbg !2746
  %call = call %struct.generic_pm_domain_data* @to_gpd_data(%struct.pm_domain_data* %2) #5, !dbg !2747
  ret %struct.generic_pm_domain_data* %call, !dbg !2748
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !2749 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !2753, metadata !DIExpression()), !dbg !2754
  %call = call i64 @arch_local_save_flags() #5, !dbg !2755
  store i64 %call, i64* %f, align 8, !dbg !2756
  call void @arch_local_irq_disable() #5, !dbg !2757
  %0 = load i64, i64* %f, align 8, !dbg !2758
  ret i64 %0, !dbg !2759
}

; Function Attrs: noredzone
declare dso_local i32 @__dev_pm_qos_resume_latency(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local i32 @device_for_each_child(%struct.device*, i8*, i32 (%struct.device*, i8*)*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dev_update_qos_constraint(%struct.device* %dev, i8* %data) #0 !dbg !2760 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  %constraint_ns_p = alloca i64*, align 8
  %constraint_ns = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2763, metadata !DIExpression()), !dbg !2764
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2765, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.declare(metadata i64** %constraint_ns_p, metadata !2767, metadata !DIExpression()), !dbg !2769
  %0 = load i8*, i8** %data.addr, align 8, !dbg !2770
  %1 = bitcast i8* %0 to i64*, !dbg !2770
  store i64* %1, i64** %constraint_ns_p, align 8, !dbg !2769
  call void @llvm.dbg.declare(metadata i64* %constraint_ns, metadata !2771, metadata !DIExpression()), !dbg !2772
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2773
  %power = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 11, !dbg !2775
  %subsys_data = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 25, !dbg !2776
  %3 = load %struct.pm_subsys_data*, %struct.pm_subsys_data** %subsys_data, align 8, !dbg !2776
  %tobool = icmp ne %struct.pm_subsys_data* %3, null, !dbg !2773
  br i1 %tobool, label %land.lhs.true, label %if.else, !dbg !2777

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2778
  %power1 = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 11, !dbg !2779
  %subsys_data2 = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power1, i32 0, i32 25, !dbg !2780
  %5 = load %struct.pm_subsys_data*, %struct.pm_subsys_data** %subsys_data2, align 8, !dbg !2780
  %domain_data = getelementptr inbounds %struct.pm_subsys_data, %struct.pm_subsys_data* %5, i32 0, i32 3, !dbg !2781
  %6 = load %struct.pm_domain_data*, %struct.pm_domain_data** %domain_data, align 8, !dbg !2781
  %tobool3 = icmp ne %struct.pm_domain_data* %6, null, !dbg !2778
  br i1 %tobool3, label %if.then, label %if.else, !dbg !2782

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2783
  %call = call %struct.generic_pm_domain_data* @dev_gpd_data(%struct.device* %7) #5, !dbg !2785
  %td = getelementptr inbounds %struct.generic_pm_domain_data, %struct.generic_pm_domain_data* %call, i32 0, i32 1, !dbg !2786
  %effective_constraint_ns = getelementptr inbounds %struct.gpd_timing_data, %struct.gpd_timing_data* %td, i32 0, i32 2, !dbg !2787
  %8 = load i64, i64* %effective_constraint_ns, align 8, !dbg !2787
  store i64 %8, i64* %constraint_ns, align 8, !dbg !2788
  br label %if.end, !dbg !2789

if.else:                                          ; preds = %land.lhs.true, %entry
  %9 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2790
  %call4 = call i32 @dev_pm_qos_read_value(%struct.device* %9, i32 1) #5, !dbg !2792
  %conv = sext i32 %call4 to i64, !dbg !2792
  store i64 %conv, i64* %constraint_ns, align 8, !dbg !2793
  %10 = load i64, i64* %constraint_ns, align 8, !dbg !2794
  %mul = mul i64 %10, 1000, !dbg !2794
  store i64 %mul, i64* %constraint_ns, align 8, !dbg !2794
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load i64, i64* %constraint_ns, align 8, !dbg !2795
  %12 = load i64*, i64** %constraint_ns_p, align 8, !dbg !2797
  %13 = load i64, i64* %12, align 8, !dbg !2798
  %cmp = icmp slt i64 %11, %13, !dbg !2799
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !2800

if.then6:                                         ; preds = %if.end
  %14 = load i64, i64* %constraint_ns, align 8, !dbg !2801
  %15 = load i64*, i64** %constraint_ns_p, align 8, !dbg !2802
  store i64 %14, i64* %15, align 8, !dbg !2803
  br label %if.end7, !dbg !2804

if.end7:                                          ; preds = %if.then6, %if.end
  ret i32 0, !dbg !2805
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.generic_pm_domain_data* @to_gpd_data(%struct.pm_domain_data* %pdd) #0 !dbg !2806 {
entry:
  %pdd.addr = alloca %struct.pm_domain_data*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.generic_pm_domain_data*, align 8
  store %struct.pm_domain_data* %pdd, %struct.pm_domain_data** %pdd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pm_domain_data** %pdd.addr, metadata !2809, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2811, metadata !DIExpression()), !dbg !2813
  %0 = load %struct.pm_domain_data*, %struct.pm_domain_data** %pdd.addr, align 8, !dbg !2813
  %1 = bitcast %struct.pm_domain_data* %0 to i8*, !dbg !2813
  store i8* %1, i8** %__mptr, align 8, !dbg !2813
  br label %do.body, !dbg !2813

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2814

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2813
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !2813
  %3 = bitcast i8* %add.ptr to %struct.generic_pm_domain_data*, !dbg !2813
  store %struct.generic_pm_domain_data* %3, %struct.generic_pm_domain_data** %tmp, align 8, !dbg !2814
  %4 = load %struct.generic_pm_domain_data*, %struct.generic_pm_domain_data** %tmp, align 8, !dbg !2813
  ret %struct.generic_pm_domain_data* %4, !dbg !2816
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !2817 {
entry:
  %__ret = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  %__mask = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !2818, metadata !DIExpression()), !dbg !2820
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !2821, metadata !DIExpression()), !dbg !2820
  %0 = load i64, i64* %__edi, align 8, !dbg !2820
  store i64 %0, i64* %__edi, align 8, !dbg !2820
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !2822, metadata !DIExpression()), !dbg !2820
  %1 = load i64, i64* %__esi, align 8, !dbg !2820
  store i64 %1, i64* %__esi, align 8, !dbg !2820
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !2823, metadata !DIExpression()), !dbg !2820
  %2 = load i64, i64* %__edx, align 8, !dbg !2820
  store i64 %2, i64* %__edx, align 8, !dbg !2820
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !2824, metadata !DIExpression()), !dbg !2820
  %3 = load i64, i64* %__ecx, align 8, !dbg !2820
  store i64 %3, i64* %__ecx, align 8, !dbg !2820
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !2825, metadata !DIExpression()), !dbg !2820
  %4 = load i64, i64* %__eax, align 8, !dbg !2820
  store i64 %4, i64* %__eax, align 8, !dbg !2820
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !2820
  %6 = call i64 @llvm.read_register.i64(metadata !2295), !dbg !2826
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #4, !dbg !2826, !srcloc !2829
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !2826
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !2826
  store i64 %asmresult, i64* %__eax, align 8, !dbg !2826
  call void @llvm.write_register.i64(metadata !2295, i64 %asmresult1), !dbg !2826
  %8 = load i64, i64* %__eax, align 8, !dbg !2826
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !2830, metadata !DIExpression()), !dbg !2832
  store i64 -1, i64* %__mask, align 8, !dbg !2832
  %9 = load i64, i64* %__mask, align 8, !dbg !2832
  store i64 %9, i64* %tmp, align 8, !dbg !2832
  %10 = load i64, i64* %tmp, align 8, !dbg !2832
  %and = and i64 %8, %10, !dbg !2826
  store i64 %and, i64* %__ret, align 8, !dbg !2826
  %11 = load i64, i64* %__ret, align 8, !dbg !2820
  store i64 %11, i64* %tmp2, align 8, !dbg !2833
  %12 = load i64, i64* %tmp2, align 8, !dbg !2820
  ret i64 %12, !dbg !2834
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !2835 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !2838, metadata !DIExpression()), !dbg !2840
  %0 = load i64, i64* %__edi, align 8, !dbg !2840
  store i64 %0, i64* %__edi, align 8, !dbg !2840
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !2841, metadata !DIExpression()), !dbg !2840
  %1 = load i64, i64* %__esi, align 8, !dbg !2840
  store i64 %1, i64* %__esi, align 8, !dbg !2840
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !2842, metadata !DIExpression()), !dbg !2840
  %2 = load i64, i64* %__edx, align 8, !dbg !2840
  store i64 %2, i64* %__edx, align 8, !dbg !2840
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !2843, metadata !DIExpression()), !dbg !2840
  %3 = load i64, i64* %__ecx, align 8, !dbg !2840
  store i64 %3, i64* %__ecx, align 8, !dbg !2840
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !2844, metadata !DIExpression()), !dbg !2840
  %4 = load i64, i64* %__eax, align 8, !dbg !2840
  store i64 %4, i64* %__eax, align 8, !dbg !2840
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !2840
  %6 = call i64 @llvm.read_register.i64(metadata !2295), !dbg !2840
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #4, !dbg !2840, !srcloc !2845
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !2840
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !2840
  store i64 %asmresult, i64* %__eax, align 8, !dbg !2840
  call void @llvm.write_register.i64(metadata !2295, i64 %asmresult1), !dbg !2840
  ret void, !dbg !2846
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #3

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !2847 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !2850, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !2852, metadata !DIExpression()), !dbg !2854
  %0 = load i64, i64* %__edi, align 8, !dbg !2854
  store i64 %0, i64* %__edi, align 8, !dbg !2854
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !2855, metadata !DIExpression()), !dbg !2854
  %1 = load i64, i64* %__esi, align 8, !dbg !2854
  store i64 %1, i64* %__esi, align 8, !dbg !2854
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !2856, metadata !DIExpression()), !dbg !2854
  %2 = load i64, i64* %__edx, align 8, !dbg !2854
  store i64 %2, i64* %__edx, align 8, !dbg !2854
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !2857, metadata !DIExpression()), !dbg !2854
  %3 = load i64, i64* %__ecx, align 8, !dbg !2854
  store i64 %3, i64* %__ecx, align 8, !dbg !2854
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !2858, metadata !DIExpression()), !dbg !2854
  %4 = load i64, i64* %__eax, align 8, !dbg !2854
  store i64 %4, i64* %__eax, align 8, !dbg !2854
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !2854
  %6 = call i64 @llvm.read_register.i64(metadata !2295), !dbg !2854
  %7 = load i64, i64* %f.addr, align 8, !dbg !2854
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #4, !dbg !2854, !srcloc !2859
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !2854
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !2854
  store i64 %asmresult, i64* %__eax, align 8, !dbg !2854
  call void @llvm.write_register.i64(metadata !2295, i64 %asmresult1), !dbg !2854
  ret void, !dbg !2860
}

; Function Attrs: noredzone
declare dso_local i32 @dev_pm_qos_read_value(%struct.device*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__default_power_down_ok(%struct.dev_pm_domain* %pd, i32 %state) #0 !dbg !2861 {
entry:
  %retval = alloca i1, align 1
  %pd.addr = alloca %struct.dev_pm_domain*, align 8
  %state.addr = alloca i32, align 4
  %genpd = alloca %struct.generic_pm_domain*, align 8
  %link = alloca %struct.gpd_link*, align 8
  %pdd = alloca %struct.pm_domain_data*, align 8
  %min_off_time_ns = alloca i64, align 8
  %off_on_time_ns = alloca i64, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.gpd_link*, align 8
  %sd = alloca %struct.generic_pm_domain*, align 8
  %sd_max_off_ns = alloca i64, align 8
  %__mptr13 = alloca i8*, align 8
  %tmp18 = alloca %struct.gpd_link*, align 8
  %__mptr20 = alloca i8*, align 8
  %tmp24 = alloca %struct.pm_domain_data*, align 8
  %td = alloca %struct.gpd_timing_data*, align 8
  %constraint_ns = alloca i64, align 8
  %__mptr45 = alloca i8*, align 8
  %tmp50 = alloca %struct.pm_domain_data*, align 8
  store %struct.dev_pm_domain* %pd, %struct.dev_pm_domain** %pd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dev_pm_domain** %pd.addr, metadata !2864, metadata !DIExpression()), !dbg !2865
  store i32 %state, i32* %state.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %state.addr, metadata !2866, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.declare(metadata %struct.generic_pm_domain** %genpd, metadata !2868, metadata !DIExpression()), !dbg !2869
  %0 = load %struct.dev_pm_domain*, %struct.dev_pm_domain** %pd.addr, align 8, !dbg !2870
  %call = call %struct.generic_pm_domain* @pd_to_genpd(%struct.dev_pm_domain* %0) #5, !dbg !2871
  store %struct.generic_pm_domain* %call, %struct.generic_pm_domain** %genpd, align 8, !dbg !2869
  call void @llvm.dbg.declare(metadata %struct.gpd_link** %link, metadata !2872, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.declare(metadata %struct.pm_domain_data** %pdd, metadata !2874, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.declare(metadata i64* %min_off_time_ns, metadata !2876, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.declare(metadata i64* %off_on_time_ns, metadata !2878, metadata !DIExpression()), !dbg !2879
  %1 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %genpd, align 8, !dbg !2880
  %states = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %1, i32 0, i32 32, !dbg !2881
  %2 = load %struct.genpd_power_state*, %struct.genpd_power_state** %states, align 8, !dbg !2881
  %3 = load i32, i32* %state.addr, align 4, !dbg !2882
  %idxprom = zext i32 %3 to i64, !dbg !2880
  %arrayidx = getelementptr %struct.genpd_power_state, %struct.genpd_power_state* %2, i64 %idxprom, !dbg !2880
  %power_off_latency_ns = getelementptr inbounds %struct.genpd_power_state, %struct.genpd_power_state* %arrayidx, i32 0, i32 0, !dbg !2883
  %4 = load i64, i64* %power_off_latency_ns, align 8, !dbg !2883
  %5 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %genpd, align 8, !dbg !2884
  %states1 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %5, i32 0, i32 32, !dbg !2885
  %6 = load %struct.genpd_power_state*, %struct.genpd_power_state** %states1, align 8, !dbg !2885
  %7 = load i32, i32* %state.addr, align 4, !dbg !2886
  %idxprom2 = zext i32 %7 to i64, !dbg !2884
  %arrayidx3 = getelementptr %struct.genpd_power_state, %struct.genpd_power_state* %6, i64 %idxprom2, !dbg !2884
  %power_on_latency_ns = getelementptr inbounds %struct.genpd_power_state, %struct.genpd_power_state* %arrayidx3, i32 0, i32 1, !dbg !2887
  %8 = load i64, i64* %power_on_latency_ns, align 8, !dbg !2887
  %add = add i64 %4, %8, !dbg !2888
  store i64 %add, i64* %off_on_time_ns, align 8, !dbg !2889
  store i64 -1, i64* %min_off_time_ns, align 8, !dbg !2890
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2891, metadata !DIExpression()), !dbg !2894
  %9 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %genpd, align 8, !dbg !2894
  %parent_links = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %9, i32 0, i32 3, !dbg !2894
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %parent_links, i32 0, i32 0, !dbg !2894
  %10 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2894
  %11 = bitcast %struct.list_head* %10 to i8*, !dbg !2894
  store i8* %11, i8** %__mptr, align 8, !dbg !2894
  br label %do.body, !dbg !2894

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2895

do.end:                                           ; preds = %do.body
  %12 = load i8*, i8** %__mptr, align 8, !dbg !2894
  %add.ptr = getelementptr i8, i8* %12, i64 -8, !dbg !2894
  %13 = bitcast i8* %add.ptr to %struct.gpd_link*, !dbg !2894
  store %struct.gpd_link* %13, %struct.gpd_link** %tmp, align 8, !dbg !2895
  %14 = load %struct.gpd_link*, %struct.gpd_link** %tmp, align 8, !dbg !2894
  store %struct.gpd_link* %14, %struct.gpd_link** %link, align 8, !dbg !2897
  br label %for.cond, !dbg !2897

for.cond:                                         ; preds = %do.end17, %do.end
  %15 = load %struct.gpd_link*, %struct.gpd_link** %link, align 8, !dbg !2898
  %parent_node = getelementptr inbounds %struct.gpd_link, %struct.gpd_link* %15, i32 0, i32 1, !dbg !2898
  %16 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %genpd, align 8, !dbg !2898
  %parent_links4 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %16, i32 0, i32 3, !dbg !2898
  %cmp = icmp eq %struct.list_head* %parent_node, %parent_links4, !dbg !2898
  %lnot = xor i1 %cmp, true, !dbg !2898
  br i1 %lnot, label %for.body, label %for.end, !dbg !2897

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.generic_pm_domain** %sd, metadata !2900, metadata !DIExpression()), !dbg !2902
  %17 = load %struct.gpd_link*, %struct.gpd_link** %link, align 8, !dbg !2903
  %child = getelementptr inbounds %struct.gpd_link, %struct.gpd_link* %17, i32 0, i32 2, !dbg !2904
  %18 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %child, align 8, !dbg !2904
  store %struct.generic_pm_domain* %18, %struct.generic_pm_domain** %sd, align 8, !dbg !2902
  call void @llvm.dbg.declare(metadata i64* %sd_max_off_ns, metadata !2905, metadata !DIExpression()), !dbg !2906
  %19 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %sd, align 8, !dbg !2907
  %max_off_time_ns = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %19, i32 0, i32 25, !dbg !2908
  %20 = load i64, i64* %max_off_time_ns, align 8, !dbg !2908
  store i64 %20, i64* %sd_max_off_ns, align 8, !dbg !2906
  %21 = load i64, i64* %sd_max_off_ns, align 8, !dbg !2909
  %cmp5 = icmp slt i64 %21, 0, !dbg !2911
  br i1 %cmp5, label %if.then, label %if.end, !dbg !2912

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !2913

if.end:                                           ; preds = %for.body
  %22 = load i64, i64* %sd_max_off_ns, align 8, !dbg !2914
  %23 = load i64, i64* %off_on_time_ns, align 8, !dbg !2916
  %cmp6 = icmp sle i64 %22, %23, !dbg !2917
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !2918

if.then7:                                         ; preds = %if.end
  store i1 false, i1* %retval, align 1, !dbg !2919
  br label %return, !dbg !2919

if.end8:                                          ; preds = %if.end
  %24 = load i64, i64* %min_off_time_ns, align 8, !dbg !2920
  %25 = load i64, i64* %sd_max_off_ns, align 8, !dbg !2922
  %cmp9 = icmp sgt i64 %24, %25, !dbg !2923
  br i1 %cmp9, label %if.then11, label %lor.lhs.false, !dbg !2924

lor.lhs.false:                                    ; preds = %if.end8
  %26 = load i64, i64* %min_off_time_ns, align 8, !dbg !2925
  %cmp10 = icmp slt i64 %26, 0, !dbg !2926
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !2927

if.then11:                                        ; preds = %lor.lhs.false, %if.end8
  %27 = load i64, i64* %sd_max_off_ns, align 8, !dbg !2928
  store i64 %27, i64* %min_off_time_ns, align 8, !dbg !2929
  br label %if.end12, !dbg !2930

if.end12:                                         ; preds = %if.then11, %lor.lhs.false
  br label %for.inc, !dbg !2931

for.inc:                                          ; preds = %if.end12, %if.then
  call void @llvm.dbg.declare(metadata i8** %__mptr13, metadata !2932, metadata !DIExpression()), !dbg !2934
  %28 = load %struct.gpd_link*, %struct.gpd_link** %link, align 8, !dbg !2934
  %parent_node14 = getelementptr inbounds %struct.gpd_link, %struct.gpd_link* %28, i32 0, i32 1, !dbg !2934
  %next15 = getelementptr inbounds %struct.list_head, %struct.list_head* %parent_node14, i32 0, i32 0, !dbg !2934
  %29 = load %struct.list_head*, %struct.list_head** %next15, align 8, !dbg !2934
  %30 = bitcast %struct.list_head* %29 to i8*, !dbg !2934
  store i8* %30, i8** %__mptr13, align 8, !dbg !2934
  br label %do.body16, !dbg !2934

do.body16:                                        ; preds = %for.inc
  br label %do.end17, !dbg !2935

do.end17:                                         ; preds = %do.body16
  %31 = load i8*, i8** %__mptr13, align 8, !dbg !2934
  %add.ptr19 = getelementptr i8, i8* %31, i64 -8, !dbg !2934
  %32 = bitcast i8* %add.ptr19 to %struct.gpd_link*, !dbg !2934
  store %struct.gpd_link* %32, %struct.gpd_link** %tmp18, align 8, !dbg !2935
  %33 = load %struct.gpd_link*, %struct.gpd_link** %tmp18, align 8, !dbg !2934
  store %struct.gpd_link* %33, %struct.gpd_link** %link, align 8, !dbg !2898
  br label %for.cond, !dbg !2898, !llvm.loop !2937

for.end:                                          ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i8** %__mptr20, metadata !2939, metadata !DIExpression()), !dbg !2942
  %34 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %genpd, align 8, !dbg !2942
  %dev_list = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %34, i32 0, i32 5, !dbg !2942
  %next21 = getelementptr inbounds %struct.list_head, %struct.list_head* %dev_list, i32 0, i32 0, !dbg !2942
  %35 = load %struct.list_head*, %struct.list_head** %next21, align 8, !dbg !2942
  %36 = bitcast %struct.list_head* %35 to i8*, !dbg !2942
  store i8* %36, i8** %__mptr20, align 8, !dbg !2942
  br label %do.body22, !dbg !2942

do.body22:                                        ; preds = %for.end
  br label %do.end23, !dbg !2943

do.end23:                                         ; preds = %do.body22
  %37 = load i8*, i8** %__mptr20, align 8, !dbg !2942
  %add.ptr25 = getelementptr i8, i8* %37, i64 0, !dbg !2942
  %38 = bitcast i8* %add.ptr25 to %struct.pm_domain_data*, !dbg !2942
  store %struct.pm_domain_data* %38, %struct.pm_domain_data** %tmp24, align 8, !dbg !2943
  %39 = load %struct.pm_domain_data*, %struct.pm_domain_data** %tmp24, align 8, !dbg !2942
  store %struct.pm_domain_data* %39, %struct.pm_domain_data** %pdd, align 8, !dbg !2945
  br label %for.cond26, !dbg !2945

for.cond26:                                       ; preds = %do.end49, %do.end23
  %40 = load %struct.pm_domain_data*, %struct.pm_domain_data** %pdd, align 8, !dbg !2946
  %list_node = getelementptr inbounds %struct.pm_domain_data, %struct.pm_domain_data* %40, i32 0, i32 0, !dbg !2946
  %41 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %genpd, align 8, !dbg !2946
  %dev_list27 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %41, i32 0, i32 5, !dbg !2946
  %cmp28 = icmp eq %struct.list_head* %list_node, %dev_list27, !dbg !2946
  %lnot29 = xor i1 %cmp28, true, !dbg !2946
  br i1 %lnot29, label %for.body30, label %for.end52, !dbg !2945

for.body30:                                       ; preds = %for.cond26
  call void @llvm.dbg.declare(metadata %struct.gpd_timing_data** %td, metadata !2948, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.declare(metadata i64* %constraint_ns, metadata !2951, metadata !DIExpression()), !dbg !2952
  %42 = load %struct.pm_domain_data*, %struct.pm_domain_data** %pdd, align 8, !dbg !2953
  %call31 = call %struct.generic_pm_domain_data* @to_gpd_data(%struct.pm_domain_data* %42) #5, !dbg !2954
  %td32 = getelementptr inbounds %struct.generic_pm_domain_data, %struct.generic_pm_domain_data* %call31, i32 0, i32 1, !dbg !2955
  store %struct.gpd_timing_data* %td32, %struct.gpd_timing_data** %td, align 8, !dbg !2956
  %43 = load %struct.gpd_timing_data*, %struct.gpd_timing_data** %td, align 8, !dbg !2957
  %effective_constraint_ns = getelementptr inbounds %struct.gpd_timing_data, %struct.gpd_timing_data* %43, i32 0, i32 2, !dbg !2958
  %44 = load i64, i64* %effective_constraint_ns, align 8, !dbg !2958
  store i64 %44, i64* %constraint_ns, align 8, !dbg !2959
  %45 = load i64, i64* %constraint_ns, align 8, !dbg !2960
  %cmp33 = icmp eq i64 %45, 2147483647000, !dbg !2962
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !2963

if.then34:                                        ; preds = %for.body30
  br label %for.inc44, !dbg !2964

if.end35:                                         ; preds = %for.body30
  %46 = load i64, i64* %constraint_ns, align 8, !dbg !2965
  %47 = load i64, i64* %off_on_time_ns, align 8, !dbg !2967
  %cmp36 = icmp sle i64 %46, %47, !dbg !2968
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !2969

if.then37:                                        ; preds = %if.end35
  store i1 false, i1* %retval, align 1, !dbg !2970
  br label %return, !dbg !2970

if.end38:                                         ; preds = %if.end35
  %48 = load i64, i64* %min_off_time_ns, align 8, !dbg !2971
  %49 = load i64, i64* %constraint_ns, align 8, !dbg !2973
  %cmp39 = icmp sgt i64 %48, %49, !dbg !2974
  br i1 %cmp39, label %if.then42, label %lor.lhs.false40, !dbg !2975

lor.lhs.false40:                                  ; preds = %if.end38
  %50 = load i64, i64* %min_off_time_ns, align 8, !dbg !2976
  %cmp41 = icmp slt i64 %50, 0, !dbg !2977
  br i1 %cmp41, label %if.then42, label %if.end43, !dbg !2978

if.then42:                                        ; preds = %lor.lhs.false40, %if.end38
  %51 = load i64, i64* %constraint_ns, align 8, !dbg !2979
  store i64 %51, i64* %min_off_time_ns, align 8, !dbg !2980
  br label %if.end43, !dbg !2981

if.end43:                                         ; preds = %if.then42, %lor.lhs.false40
  br label %for.inc44, !dbg !2982

for.inc44:                                        ; preds = %if.end43, %if.then34
  call void @llvm.dbg.declare(metadata i8** %__mptr45, metadata !2983, metadata !DIExpression()), !dbg !2985
  %52 = load %struct.pm_domain_data*, %struct.pm_domain_data** %pdd, align 8, !dbg !2985
  %list_node46 = getelementptr inbounds %struct.pm_domain_data, %struct.pm_domain_data* %52, i32 0, i32 0, !dbg !2985
  %next47 = getelementptr inbounds %struct.list_head, %struct.list_head* %list_node46, i32 0, i32 0, !dbg !2985
  %53 = load %struct.list_head*, %struct.list_head** %next47, align 8, !dbg !2985
  %54 = bitcast %struct.list_head* %53 to i8*, !dbg !2985
  store i8* %54, i8** %__mptr45, align 8, !dbg !2985
  br label %do.body48, !dbg !2985

do.body48:                                        ; preds = %for.inc44
  br label %do.end49, !dbg !2986

do.end49:                                         ; preds = %do.body48
  %55 = load i8*, i8** %__mptr45, align 8, !dbg !2985
  %add.ptr51 = getelementptr i8, i8* %55, i64 0, !dbg !2985
  %56 = bitcast i8* %add.ptr51 to %struct.pm_domain_data*, !dbg !2985
  store %struct.pm_domain_data* %56, %struct.pm_domain_data** %tmp50, align 8, !dbg !2986
  %57 = load %struct.pm_domain_data*, %struct.pm_domain_data** %tmp50, align 8, !dbg !2985
  store %struct.pm_domain_data* %57, %struct.pm_domain_data** %pdd, align 8, !dbg !2946
  br label %for.cond26, !dbg !2946, !llvm.loop !2988

for.end52:                                        ; preds = %for.cond26
  %58 = load i64, i64* %min_off_time_ns, align 8, !dbg !2990
  %cmp53 = icmp slt i64 %58, 0, !dbg !2992
  br i1 %cmp53, label %if.then54, label %if.end55, !dbg !2993

if.then54:                                        ; preds = %for.end52
  store i1 true, i1* %retval, align 1, !dbg !2994
  br label %return, !dbg !2994

if.end55:                                         ; preds = %for.end52
  %59 = load i64, i64* %min_off_time_ns, align 8, !dbg !2995
  %60 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %genpd, align 8, !dbg !2996
  %states56 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %60, i32 0, i32 32, !dbg !2997
  %61 = load %struct.genpd_power_state*, %struct.genpd_power_state** %states56, align 8, !dbg !2997
  %62 = load i32, i32* %state.addr, align 4, !dbg !2998
  %idxprom57 = zext i32 %62 to i64, !dbg !2996
  %arrayidx58 = getelementptr %struct.genpd_power_state, %struct.genpd_power_state* %61, i64 %idxprom57, !dbg !2996
  %power_on_latency_ns59 = getelementptr inbounds %struct.genpd_power_state, %struct.genpd_power_state* %arrayidx58, i32 0, i32 1, !dbg !2999
  %63 = load i64, i64* %power_on_latency_ns59, align 8, !dbg !2999
  %sub = sub i64 %59, %63, !dbg !3000
  %64 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %genpd, align 8, !dbg !3001
  %max_off_time_ns60 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %64, i32 0, i32 25, !dbg !3002
  store i64 %sub, i64* %max_off_time_ns60, align 8, !dbg !3003
  store i1 true, i1* %retval, align 1, !dbg !3004
  br label %return, !dbg !3004

return:                                           ; preds = %if.end55, %if.then54, %if.then37, %if.then7
  %65 = load i1, i1* %retval, align 1, !dbg !3005
  ret i1 %65, !dbg !3005
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { noredzone }
attributes #6 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!2295}
!llvm.module.flags = !{!2296, !2297, !2298, !2299}
!llvm.ident = !{!2300}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pm_domain_cpu_gov", scope: !2, file: !3, line: 304, type: !2168, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !77, globals: !2290, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/base/power/domain_governor.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !56, !63, !67, !72}
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
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gpd_status", file: !68, line: 66, baseType: !7, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/pm_domain.h", directory: "/home/lizy2001/genbc/linux")
!69 = !{!70, !71}
!70 = !DIEnumerator(name: "GENPD_STATE_ON", value: 0, isUnsigned: true)
!71 = !DIEnumerator(name: "GENPD_STATE_OFF", value: 1, isUnsigned: true)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !73, line: 10, baseType: !7, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!74 = !{!75, !76}
!75 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!76 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!77 = !{!78, !83, !86, !134, !135, !138, !148, !681, !460, !2264, !145, !2281, !1872}
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !79, line: 22, baseType: !80)
!79 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !81, line: 30, baseType: !82)
!81 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!82 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !79, line: 23, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !81, line: 31, baseType: !85)
!85 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_device", file: !89, line: 92, size: 6400, elements: !90)
!89 = !DIFile(filename: "./include/linux/cpuidle.h", directory: "/home/lizy2001/genbc/linux")
!90 = !{!91, !92, !93, !94, !95, !98, !100, !101, !102, !103, !117, !121, !124, !127}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !88, file: !89, line: 93, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !88, file: !89, line: 94, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "poll_time_limit", scope: !88, file: !89, line: 95, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !88, file: !89, line: 96, baseType: !7, size: 32, offset: 32)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "next_hrtimer", scope: !88, file: !89, line: 97, baseType: !96, size: 64, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !97, line: 29, baseType: !78)
!97 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!98 = !DIDerivedType(tag: DW_TAG_member, name: "last_state_idx", scope: !88, file: !89, line: 99, baseType: !99, size: 32, offset: 128)
!99 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "last_residency_ns", scope: !88, file: !89, line: 100, baseType: !83, size: 64, offset: 192)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "poll_limit_ns", scope: !88, file: !89, line: 101, baseType: !83, size: 64, offset: 256)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "forced_idle_latency_limit_ns", scope: !88, file: !89, line: 102, baseType: !83, size: 64, offset: 320)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "states_usage", scope: !88, file: !89, line: 103, baseType: !104, size: 5120, offset: 384)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 5120, elements: !115)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_state_usage", file: !89, line: 35, size: 512, elements: !106)
!106 = !{!107, !108, !109, !110, !111, !112, !113, !114}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !105, file: !89, line: 36, baseType: !85, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !105, file: !89, line: 37, baseType: !85, size: 64, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !105, file: !89, line: 38, baseType: !83, size: 64, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "above", scope: !105, file: !89, line: 39, baseType: !85, size: 64, offset: 192)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "below", scope: !105, file: !89, line: 40, baseType: !85, size: 64, offset: 256)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "rejected", scope: !105, file: !89, line: 41, baseType: !85, size: 64, offset: 320)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "s2idle_usage", scope: !105, file: !89, line: 43, baseType: !85, size: 64, offset: 384)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "s2idle_time", scope: !105, file: !89, line: 44, baseType: !85, size: 64, offset: 448)
!115 = !{!116}
!116 = !DISubrange(count: 10)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "kobjs", scope: !88, file: !89, line: 104, baseType: !118, size: 640, offset: 5504)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 640, elements: !115)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_state_kobj", file: !89, line: 89, flags: DIFlagFwdDecl)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_driver", scope: !88, file: !89, line: 105, baseType: !122, size: 64, offset: 6144)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_driver_kobj", file: !89, line: 90, flags: DIFlagFwdDecl)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_dev", scope: !88, file: !89, line: 106, baseType: !125, size: 64, offset: 6208)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_device_kobj", file: !89, line: 88, flags: DIFlagFwdDecl)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !88, file: !89, line: 107, baseType: !128, size: 128, offset: 6272)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !129, line: 178, size: 128, elements: !130)
!129 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!130 = !{!131, !133}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !128, file: !129, line: 179, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !128, file: !129, line: 179, baseType: !132, size: 64, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !82)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !141, line: 17, size: 64, elements: !142)
!141 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!142 = !{!143}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !140, file: !141, line: 17, baseType: !144, size: 64)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 64, elements: !146)
!145 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!146 = !{!147}
!147 = !DISubrange(count: 1)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "generic_pm_domain", file: !68, line: 103, size: 10048, elements: !150)
!150 = !{!151, !2161, !2162, !2163, !2164, !2165, !2166, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2191, !2195, !2196, !2200, !2203, !2209, !2213, !2218, !2219, !2220, !2221, !2222, !2226, !2230, !2231, !2243, !2247, !2248, !2249, !2250, !2251, !2255}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !149, file: !68, line: 104, baseType: !152, size: 5568)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !153)
!153 = !{!154, !1609, !1611, !1614, !1615, !1666, !1763, !1764, !1765, !1766, !1767, !1776, !1956, !1969, !1972, !1973, !1977, !1979, !1980, !1981, !1985, !1991, !1992, !1995, !2110, !2111, !2114, !2115, !2116, !2117, !2149, !2150, !2151, !2154, !2157, !2158, !2159, !2160}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !152, file: !30, line: 462, baseType: !155, size: 512)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !156, line: 64, size: 512, elements: !157)
!156 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!157 = !{!158, !162, !163, !165, !225, !1445, !1599, !1604, !1605, !1606, !1607, !1608}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !155, file: !156, line: 65, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !161)
!161 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !155, file: !156, line: 66, baseType: !128, size: 128, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !155, file: !156, line: 67, baseType: !164, size: 64, offset: 192)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !155, file: !156, line: 68, baseType: !166, size: 64, offset: 256)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !156, line: 192, size: 704, elements: !168)
!168 = !{!169, !170, !186, !187}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !167, file: !156, line: 193, baseType: !128, size: 128)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !167, file: !156, line: 194, baseType: !171, offset: 128)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !172, line: 83, baseType: !173)
!172 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !172, line: 71, elements: !174)
!174 = !{!175}
!175 = !DIDerivedType(tag: DW_TAG_member, scope: !173, file: !172, line: 72, baseType: !176)
!176 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !173, file: !172, line: 72, elements: !177)
!177 = !{!178}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !176, file: !172, line: 73, baseType: !179)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !172, line: 20, elements: !180)
!180 = !{!181}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !179, file: !172, line: 21, baseType: !182)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !183, line: 25, baseType: !184)
!183 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !183, line: 25, elements: !185)
!185 = !{}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !167, file: !156, line: 195, baseType: !155, size: 512, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !167, file: !156, line: 196, baseType: !188, size: 64, offset: 640)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !190)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !156, line: 156, size: 192, elements: !191)
!191 = !{!192, !197, !202}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !190, file: !156, line: 157, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !194)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!99, !166, !164}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !190, file: !156, line: 158, baseType: !198, size: 64, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !199)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DISubroutineType(types: !201)
!201 = !{!159, !166, !164}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !190, file: !156, line: 159, baseType: !203, size: 64, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!99, !166, !164, !207}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !156, line: 148, size: 20736, elements: !209)
!209 = !{!210, !215, !219, !220, !224}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !208, file: !156, line: 149, baseType: !211, size: 192)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 192, elements: !213)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!213 = !{!214}
!214 = !DISubrange(count: 3)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !208, file: !156, line: 150, baseType: !216, size: 4096, offset: 192)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 4096, elements: !217)
!217 = !{!218}
!218 = !DISubrange(count: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !208, file: !156, line: 151, baseType: !99, size: 32, offset: 4288)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !208, file: !156, line: 152, baseType: !221, size: 16384, offset: 4320)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 16384, elements: !222)
!222 = !{!223}
!223 = !DISubrange(count: 2048)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !208, file: !156, line: 153, baseType: !99, size: 32, offset: 20704)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !155, file: !156, line: 69, baseType: !226, size: 64, offset: 320)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !156, line: 138, size: 448, elements: !228)
!228 = !{!229, !233, !262, !264, !1391, !1424, !1428}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !227, file: !156, line: 139, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{null, !164}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !227, file: !156, line: 140, baseType: !234, size: 64, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !236)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !237, line: 230, size: 128, elements: !238)
!237 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!238 = !{!239, !255}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !236, file: !237, line: 231, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{!243, !164, !248, !212}
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !129, line: 60, baseType: !244)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !245, line: 73, baseType: !246)
!245 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !245, line: 15, baseType: !247)
!247 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !237, line: 30, size: 128, elements: !250)
!250 = !{!251, !252}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !249, file: !237, line: 31, baseType: !159, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !249, file: !237, line: 32, baseType: !253, size: 16, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !129, line: 19, baseType: !254)
!254 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !236, file: !237, line: 232, baseType: !256, size: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{!243, !164, !248, !159, !259}
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !129, line: 55, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !245, line: 72, baseType: !261)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !245, line: 16, baseType: !145)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !227, file: !156, line: 141, baseType: !263, size: 64, offset: 128)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !227, file: !156, line: 142, baseType: !265, size: 64, offset: 192)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !268)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !237, line: 84, size: 320, elements: !269)
!269 = !{!270, !271, !275, !1388, !1389}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !268, file: !237, line: 85, baseType: !159, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !268, file: !237, line: 86, baseType: !272, size: 64, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{!253, !164, !248, !99}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !268, file: !237, line: 88, baseType: !276, size: 64, offset: 128)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!253, !164, !279, !99}
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !237, line: 168, size: 448, elements: !281)
!281 = !{!282, !283, !284, !285, !294, !295}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !280, file: !237, line: 169, baseType: !249, size: 128)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !280, file: !237, line: 170, baseType: !259, size: 64, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !280, file: !237, line: 171, baseType: !134, size: 64, offset: 192)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !280, file: !237, line: 172, baseType: !286, size: 64, offset: 256)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{!243, !289, !164, !279, !212, !292, !259}
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !291, line: 526, flags: DIFlagFwdDecl)
!291 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !129, line: 46, baseType: !293)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !245, line: 88, baseType: !82)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !280, file: !237, line: 174, baseType: !286, size: 64, offset: 320)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !280, file: !237, line: 176, baseType: !296, size: 64, offset: 384)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{!99, !289, !164, !279, !299}
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !301, line: 305, size: 1472, elements: !302)
!301 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!302 = !{!303, !304, !305, !306, !307, !315, !316, !1362, !1368, !1369, !1374, !1375, !1378, !1382, !1383, !1384, !1385, !1386}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !300, file: !301, line: 308, baseType: !145, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !300, file: !301, line: 309, baseType: !145, size: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !300, file: !301, line: 313, baseType: !299, size: 64, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !300, file: !301, line: 313, baseType: !299, size: 64, offset: 192)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !300, file: !301, line: 315, baseType: !308, size: 192, align: 64, offset: 256)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !309, line: 24, size: 192, align: 64, elements: !310)
!309 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!310 = !{!311, !312, !314}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !308, file: !309, line: 25, baseType: !145, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !308, file: !309, line: 26, baseType: !313, size: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !308, file: !309, line: 27, baseType: !313, size: 64, offset: 128)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !300, file: !301, line: 323, baseType: !145, size: 64, offset: 448)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !300, file: !301, line: 327, baseType: !317, size: 64, offset: 512)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !301, line: 388, size: 7296, elements: !319)
!319 = !{!320, !1358}
!320 = !DIDerivedType(tag: DW_TAG_member, scope: !318, file: !301, line: 389, baseType: !321, size: 7296)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !318, file: !301, line: 389, size: 7296, elements: !322)
!322 = !{!323, !324, !328, !329, !333, !334, !335, !336, !337, !345, !350, !351, !352, !353, !360, !361, !362, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !397, !405, !408, !440, !441, !1328, !1329, !1332, !1336, !1337, !1340, !1341, !1342, !1345, !1357}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !321, file: !301, line: 390, baseType: !299, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !321, file: !301, line: 391, baseType: !325, size: 64, offset: 64)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !309, line: 31, size: 64, elements: !326)
!326 = !{!327}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !325, file: !309, line: 32, baseType: !313, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !321, file: !301, line: 392, baseType: !83, size: 64, offset: 128)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !321, file: !301, line: 394, baseType: !330, size: 64, offset: 192)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{!145, !289, !145, !145, !145, !145}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !321, file: !301, line: 398, baseType: !145, size: 64, offset: 256)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !321, file: !301, line: 399, baseType: !145, size: 64, offset: 320)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !321, file: !301, line: 405, baseType: !145, size: 64, offset: 384)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !321, file: !301, line: 406, baseType: !145, size: 64, offset: 448)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !321, file: !301, line: 407, baseType: !338, size: 64, offset: 512)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !291, line: 286, baseType: !340)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !291, line: 286, size: 64, elements: !341)
!341 = !{!342}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !340, file: !291, line: 286, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !344, line: 18, baseType: !145)
!344 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!345 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !321, file: !301, line: 416, baseType: !346, size: 32, offset: 576)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !129, line: 168, baseType: !347)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !129, line: 166, size: 32, elements: !348)
!348 = !{!349}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !347, file: !129, line: 167, baseType: !99, size: 32)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !321, file: !301, line: 428, baseType: !346, size: 32, offset: 608)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !321, file: !301, line: 437, baseType: !346, size: 32, offset: 640)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !321, file: !301, line: 447, baseType: !346, size: 32, offset: 672)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !321, file: !301, line: 450, baseType: !354, size: 64, offset: 704)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !355, line: 13, baseType: !356)
!355 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !129, line: 175, baseType: !357)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !129, line: 173, size: 64, elements: !358)
!358 = !{!359}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !357, file: !129, line: 174, baseType: !78, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !321, file: !301, line: 452, baseType: !99, size: 32, offset: 768)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !321, file: !301, line: 454, baseType: !171, offset: 800)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !321, file: !301, line: 457, baseType: !363, size: 256, offset: 832)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !364, line: 35, size: 256, elements: !365)
!364 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!365 = !{!366, !367, !368, !370}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !363, file: !364, line: 36, baseType: !354, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !363, file: !364, line: 42, baseType: !354, size: 64, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !363, file: !364, line: 46, baseType: !369, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !172, line: 29, baseType: !179)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !363, file: !364, line: 47, baseType: !128, size: 128, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !321, file: !301, line: 459, baseType: !128, size: 128, offset: 1088)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !321, file: !301, line: 466, baseType: !145, size: 64, offset: 1216)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !321, file: !301, line: 467, baseType: !145, size: 64, offset: 1280)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !321, file: !301, line: 469, baseType: !145, size: 64, offset: 1344)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !321, file: !301, line: 470, baseType: !145, size: 64, offset: 1408)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !321, file: !301, line: 471, baseType: !356, size: 64, offset: 1472)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !321, file: !301, line: 472, baseType: !145, size: 64, offset: 1536)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !321, file: !301, line: 473, baseType: !145, size: 64, offset: 1600)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !321, file: !301, line: 474, baseType: !145, size: 64, offset: 1664)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !321, file: !301, line: 475, baseType: !145, size: 64, offset: 1728)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !321, file: !301, line: 477, baseType: !171, offset: 1792)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !321, file: !301, line: 478, baseType: !145, size: 64, offset: 1792)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !321, file: !301, line: 478, baseType: !145, size: 64, offset: 1856)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !321, file: !301, line: 478, baseType: !145, size: 64, offset: 1920)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !321, file: !301, line: 478, baseType: !145, size: 64, offset: 1984)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !321, file: !301, line: 479, baseType: !145, size: 64, offset: 2048)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !321, file: !301, line: 479, baseType: !145, size: 64, offset: 2112)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !321, file: !301, line: 479, baseType: !145, size: 64, offset: 2176)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !321, file: !301, line: 480, baseType: !145, size: 64, offset: 2240)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !321, file: !301, line: 480, baseType: !145, size: 64, offset: 2304)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !321, file: !301, line: 480, baseType: !145, size: 64, offset: 2368)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !321, file: !301, line: 480, baseType: !145, size: 64, offset: 2432)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !321, file: !301, line: 482, baseType: !394, size: 2816, offset: 2496)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 2816, elements: !395)
!395 = !{!396}
!396 = !DISubrange(count: 44)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !321, file: !301, line: 488, baseType: !398, size: 256, offset: 5312)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !399, line: 60, size: 256, elements: !400)
!399 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!400 = !{!401}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !398, file: !399, line: 61, baseType: !402, size: 256)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !354, size: 256, elements: !403)
!403 = !{!404}
!404 = !DISubrange(count: 4)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !321, file: !301, line: 490, baseType: !406, size: 64, offset: 5568)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !301, line: 490, flags: DIFlagFwdDecl)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !321, file: !301, line: 493, baseType: !409, size: 896, offset: 5632)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !410, line: 53, baseType: !411)
!410 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !410, line: 13, size: 896, elements: !412)
!412 = !{!413, !414, !415, !416, !419, !420, !427, !428, !432, !433, !436}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !411, file: !410, line: 18, baseType: !83, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !411, file: !410, line: 28, baseType: !356, size: 64, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !411, file: !410, line: 31, baseType: !363, size: 256, offset: 128)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !411, file: !410, line: 32, baseType: !417, size: 64, offset: 384)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !410, line: 32, flags: DIFlagFwdDecl)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !411, file: !410, line: 37, baseType: !254, size: 16, offset: 448)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !411, file: !410, line: 40, baseType: !421, size: 192, offset: 512)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !422, line: 53, size: 192, elements: !423)
!422 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!423 = !{!424, !425, !426}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !421, file: !422, line: 54, baseType: !354, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !421, file: !422, line: 55, baseType: !171, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !421, file: !422, line: 59, baseType: !128, size: 128, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !411, file: !410, line: 41, baseType: !134, size: 64, offset: 704)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !411, file: !410, line: 42, baseType: !429, size: 64, offset: 768)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !431)
!431 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !410, line: 42, flags: DIFlagFwdDecl)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !411, file: !410, line: 44, baseType: !346, size: 32, offset: 832)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !411, file: !410, line: 50, baseType: !434, size: 16, offset: 864)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !79, line: 19, baseType: !435)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !81, line: 24, baseType: !254)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !411, file: !410, line: 51, baseType: !437, size: 16, offset: 880)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !79, line: 18, baseType: !438)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !81, line: 23, baseType: !439)
!439 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !321, file: !301, line: 495, baseType: !145, size: 64, offset: 6528)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !321, file: !301, line: 497, baseType: !442, size: 64, offset: 6592)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !301, line: 381, size: 384, elements: !444)
!444 = !{!445, !446, !1327}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !443, file: !301, line: 382, baseType: !346, size: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !443, file: !301, line: 383, baseType: !447, size: 128, offset: 64)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !301, line: 376, size: 128, elements: !448)
!448 = !{!449, !1325}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !447, file: !301, line: 377, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !452, line: 640, size: 48640, elements: !453)
!452 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!453 = !{!454, !462, !464, !465, !471, !472, !473, !474, !475, !476, !477, !478, !482, !500, !511, !604, !605, !606, !610, !611, !613, !614, !615, !616, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !695, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !751, !753, !754, !755, !767, !769, !770, !771, !772, !773, !779, !780, !781, !782, !783, !784, !785, !797, !802, !806, !807, !808, !811, !815, !818, !821, !824, !827, !830, !833, !836, !842, !843, !844, !850, !851, !852, !853, !854, !863, !864, !865, !866, !867, !872, !873, !874, !877, !878, !881, !884, !887, !890, !893, !896, !897, !977, !980, !983, !984, !987, !988, !989, !995, !996, !997, !1010, !1011, !1012, !1024, !1029, !1032, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !451, file: !452, line: 646, baseType: !455, size: 128)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !456, line: 56, size: 128, elements: !457)
!456 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!457 = !{!458, !459}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !455, file: !456, line: 57, baseType: !145, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !455, file: !456, line: 58, baseType: !460, size: 32, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !79, line: 21, baseType: !461)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !81, line: 27, baseType: !7)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !451, file: !452, line: 649, baseType: !463, size: 64, offset: 128)
!463 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !247)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !451, file: !452, line: 657, baseType: !134, size: 64, offset: 192)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !451, file: !452, line: 658, baseType: !466, size: 32, offset: 256)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !467, line: 113, baseType: !468)
!467 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !467, line: 111, size: 32, elements: !469)
!469 = !{!470}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !468, file: !467, line: 112, baseType: !346, size: 32)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !451, file: !452, line: 660, baseType: !7, size: 32, offset: 288)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !451, file: !452, line: 661, baseType: !7, size: 32, offset: 320)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !451, file: !452, line: 684, baseType: !99, size: 32, offset: 352)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !451, file: !452, line: 686, baseType: !99, size: 32, offset: 384)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !451, file: !452, line: 687, baseType: !99, size: 32, offset: 416)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !451, file: !452, line: 688, baseType: !99, size: 32, offset: 448)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !451, file: !452, line: 689, baseType: !7, size: 32, offset: 480)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !451, file: !452, line: 691, baseType: !479, size: 64, offset: 512)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !481)
!481 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !452, line: 691, flags: DIFlagFwdDecl)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !451, file: !452, line: 692, baseType: !483, size: 832, offset: 576)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !452, line: 451, size: 832, elements: !484)
!484 = !{!485, !490, !491, !492, !493, !494, !495, !496, !497, !498}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !483, file: !452, line: 453, baseType: !486, size: 128)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !452, line: 325, size: 128, elements: !487)
!487 = !{!488, !489}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !486, file: !452, line: 326, baseType: !145, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !486, file: !452, line: 327, baseType: !460, size: 32, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !483, file: !452, line: 454, baseType: !308, size: 192, align: 64, offset: 128)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !483, file: !452, line: 455, baseType: !128, size: 128, offset: 320)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !483, file: !452, line: 456, baseType: !7, size: 32, offset: 448)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !483, file: !452, line: 458, baseType: !83, size: 64, offset: 512)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !483, file: !452, line: 459, baseType: !83, size: 64, offset: 576)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !483, file: !452, line: 460, baseType: !83, size: 64, offset: 640)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !483, file: !452, line: 461, baseType: !83, size: 64, offset: 704)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !483, file: !452, line: 463, baseType: !83, size: 64, offset: 768)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !483, file: !452, line: 465, baseType: !499, offset: 832)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !452, line: 415, elements: !185)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !451, file: !452, line: 693, baseType: !501, size: 384, offset: 1408)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !452, line: 489, size: 384, elements: !502)
!502 = !{!503, !504, !505, !506, !507, !508, !509}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !501, file: !452, line: 490, baseType: !128, size: 128)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !501, file: !452, line: 491, baseType: !145, size: 64, offset: 128)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !501, file: !452, line: 492, baseType: !145, size: 64, offset: 192)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !501, file: !452, line: 493, baseType: !7, size: 32, offset: 256)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !501, file: !452, line: 494, baseType: !254, size: 16, offset: 288)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !501, file: !452, line: 495, baseType: !254, size: 16, offset: 304)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !501, file: !452, line: 497, baseType: !510, size: 64, offset: 320)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !451, file: !452, line: 697, baseType: !512, size: 1792, offset: 1792)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !452, line: 507, size: 1792, elements: !513)
!513 = !{!514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !601, !602}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !512, file: !452, line: 508, baseType: !308, size: 192, align: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !512, file: !452, line: 515, baseType: !83, size: 64, offset: 192)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !512, file: !452, line: 516, baseType: !83, size: 64, offset: 256)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !512, file: !452, line: 517, baseType: !83, size: 64, offset: 320)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !512, file: !452, line: 518, baseType: !83, size: 64, offset: 384)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !512, file: !452, line: 519, baseType: !83, size: 64, offset: 448)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !512, file: !452, line: 526, baseType: !78, size: 64, offset: 512)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !512, file: !452, line: 527, baseType: !83, size: 64, offset: 576)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !512, file: !452, line: 528, baseType: !7, size: 32, offset: 640)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !512, file: !452, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !512, file: !452, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !512, file: !452, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !512, file: !452, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !512, file: !452, line: 563, baseType: !528, size: 512, offset: 704)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !529)
!529 = !{!530, !536, !537, !542, !594, !598, !599, !600}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !528, file: !6, line: 119, baseType: !531, size: 256)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !532, line: 9, size: 256, elements: !533)
!532 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!533 = !{!534, !535}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !531, file: !532, line: 10, baseType: !308, size: 192, align: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !531, file: !532, line: 11, baseType: !96, size: 64, offset: 192)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !528, file: !6, line: 120, baseType: !96, size: 64, offset: 256)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !528, file: !6, line: 121, baseType: !538, size: 64, offset: 320)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!5, !541}
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !528, file: !6, line: 122, baseType: !543, size: 64, offset: 384)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !545)
!545 = !{!546, !566, !567, !570, !580, !581, !589, !593}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !544, file: !6, line: 160, baseType: !547, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !549)
!549 = !{!550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !548, file: !6, line: 215, baseType: !369)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !548, file: !6, line: 216, baseType: !7, size: 32)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !548, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !548, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !548, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !548, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !548, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !548, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !548, file: !6, line: 233, baseType: !96, size: 64, offset: 128)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !548, file: !6, line: 234, baseType: !541, size: 64, offset: 192)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !548, file: !6, line: 235, baseType: !96, size: 64, offset: 256)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !548, file: !6, line: 236, baseType: !541, size: 64, offset: 320)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !548, file: !6, line: 237, baseType: !563, size: 4096, offset: 512)
!563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !544, size: 4096, elements: !564)
!564 = !{!565}
!565 = !DISubrange(count: 8)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !544, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !544, file: !6, line: 162, baseType: !568, size: 32, offset: 96)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !129, line: 27, baseType: !569)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !245, line: 96, baseType: !99)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !544, file: !6, line: 163, baseType: !571, size: 32, offset: 128)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !572, line: 276, baseType: !573)
!572 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !572, line: 276, size: 32, elements: !574)
!574 = !{!575}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !573, file: !572, line: 276, baseType: !576, size: 32)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !572, line: 70, baseType: !577)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !572, line: 65, size: 32, elements: !578)
!578 = !{!579}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !577, file: !572, line: 66, baseType: !7, size: 32)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !544, file: !6, line: 164, baseType: !541, size: 64, offset: 192)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !544, file: !6, line: 165, baseType: !582, size: 128, offset: 256)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !532, line: 14, size: 128, elements: !583)
!583 = !{!584}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !582, file: !532, line: 15, baseType: !585, size: 128)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !309, line: 125, size: 128, elements: !586)
!586 = !{!587, !588}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !585, file: !309, line: 126, baseType: !325, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !585, file: !309, line: 127, baseType: !313, size: 64, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !544, file: !6, line: 166, baseType: !590, size: 64, offset: 384)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{!96}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !544, file: !6, line: 167, baseType: !96, size: 64, offset: 448)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !528, file: !6, line: 123, baseType: !595, size: 8, offset: 448)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !79, line: 17, baseType: !596)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !81, line: 21, baseType: !597)
!597 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !528, file: !6, line: 124, baseType: !595, size: 8, offset: 456)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !528, file: !6, line: 125, baseType: !595, size: 8, offset: 464)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !528, file: !6, line: 126, baseType: !595, size: 8, offset: 472)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !512, file: !452, line: 572, baseType: !528, size: 512, offset: 1216)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !512, file: !452, line: 580, baseType: !603, size: 64, offset: 1728)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !451, file: !452, line: 721, baseType: !7, size: 32, offset: 3584)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !451, file: !452, line: 722, baseType: !99, size: 32, offset: 3616)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !451, file: !452, line: 723, baseType: !607, size: 64, offset: 3648)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !609)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !141, line: 17, baseType: !140)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !451, file: !452, line: 724, baseType: !609, size: 64, offset: 3712)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !451, file: !452, line: 749, baseType: !612, offset: 3776)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !452, line: 290, elements: !185)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !451, file: !452, line: 751, baseType: !128, size: 128, offset: 3776)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !451, file: !452, line: 757, baseType: !317, size: 64, offset: 3904)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !451, file: !452, line: 758, baseType: !317, size: 64, offset: 3968)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !451, file: !452, line: 761, baseType: !617, size: 320, offset: 4032)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !399, line: 34, size: 320, elements: !618)
!618 = !{!619, !620}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !617, file: !399, line: 35, baseType: !83, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !617, file: !399, line: 36, baseType: !621, size: 256, offset: 64)
!621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 256, elements: !403)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !451, file: !452, line: 766, baseType: !99, size: 32, offset: 4352)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !451, file: !452, line: 767, baseType: !99, size: 32, offset: 4384)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !451, file: !452, line: 768, baseType: !99, size: 32, offset: 4416)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !451, file: !452, line: 770, baseType: !99, size: 32, offset: 4448)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !451, file: !452, line: 772, baseType: !145, size: 64, offset: 4480)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !451, file: !452, line: 775, baseType: !7, size: 32, offset: 4544)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !451, file: !452, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !451, file: !452, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !451, file: !452, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !451, file: !452, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !451, file: !452, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !451, file: !452, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !451, file: !452, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !451, file: !452, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !451, file: !452, line: 831, baseType: !145, size: 64, offset: 4672)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !451, file: !452, line: 833, baseType: !638, size: 384, offset: 4736)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !639)
!639 = !{!640, !645}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !638, file: !12, line: 26, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{!247, !644}
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, scope: !638, file: !12, line: 27, baseType: !646, size: 320, offset: 64)
!646 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !638, file: !12, line: 27, size: 320, elements: !647)
!647 = !{!648, !658, !685}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !646, file: !12, line: 36, baseType: !649, size: 320)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !646, file: !12, line: 29, size: 320, elements: !650)
!650 = !{!651, !653, !654, !655, !656, !657}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !649, file: !12, line: 30, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !649, file: !12, line: 31, baseType: !460, size: 32, offset: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !649, file: !12, line: 32, baseType: !460, size: 32, offset: 96)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !649, file: !12, line: 33, baseType: !460, size: 32, offset: 128)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !649, file: !12, line: 34, baseType: !83, size: 64, offset: 192)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !649, file: !12, line: 35, baseType: !652, size: 64, offset: 256)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !646, file: !12, line: 46, baseType: !659, size: 192)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !646, file: !12, line: 38, size: 192, elements: !660)
!660 = !{!661, !662, !663, !684}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !659, file: !12, line: 39, baseType: !568, size: 32)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !659, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!663 = !DIDerivedType(tag: DW_TAG_member, scope: !659, file: !12, line: 41, baseType: !664, size: 64, offset: 64)
!664 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !659, file: !12, line: 41, size: 64, elements: !665)
!665 = !{!666, !674}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !664, file: !12, line: 42, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !669, line: 7, size: 128, elements: !670)
!669 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!670 = !{!671, !673}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !668, file: !669, line: 8, baseType: !672, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !245, line: 93, baseType: !82)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !668, file: !669, line: 9, baseType: !82, size: 64, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !664, file: !12, line: 43, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !677, line: 7, size: 64, elements: !678)
!677 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!678 = !{!679, !683}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !676, file: !677, line: 8, baseType: !680, size: 32)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !677, line: 5, baseType: !681)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !79, line: 20, baseType: !682)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !81, line: 26, baseType: !99)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !676, file: !677, line: 9, baseType: !681, size: 32, offset: 32)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !659, file: !12, line: 45, baseType: !83, size: 64, offset: 128)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !646, file: !12, line: 54, baseType: !686, size: 256)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !646, file: !12, line: 48, size: 256, elements: !687)
!687 = !{!688, !691, !692, !693, !694}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !686, file: !12, line: 49, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !686, file: !12, line: 50, baseType: !99, size: 32, offset: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !686, file: !12, line: 51, baseType: !99, size: 32, offset: 96)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !686, file: !12, line: 52, baseType: !145, size: 64, offset: 128)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !686, file: !12, line: 53, baseType: !145, size: 64, offset: 192)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !451, file: !452, line: 835, baseType: !696, size: 32, offset: 5120)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !129, line: 22, baseType: !697)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !245, line: 28, baseType: !99)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !451, file: !452, line: 836, baseType: !696, size: 32, offset: 5152)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !451, file: !452, line: 840, baseType: !145, size: 64, offset: 5184)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !451, file: !452, line: 849, baseType: !450, size: 64, offset: 5248)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !451, file: !452, line: 852, baseType: !450, size: 64, offset: 5312)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !451, file: !452, line: 857, baseType: !128, size: 128, offset: 5376)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !451, file: !452, line: 858, baseType: !128, size: 128, offset: 5504)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !451, file: !452, line: 859, baseType: !450, size: 64, offset: 5632)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !451, file: !452, line: 867, baseType: !128, size: 128, offset: 5696)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !451, file: !452, line: 868, baseType: !128, size: 128, offset: 5824)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !451, file: !452, line: 871, baseType: !708, size: 64, offset: 5952)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !710, line: 59, size: 768, elements: !711)
!710 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!711 = !{!712, !713, !714, !715, !726, !727, !734, !743}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !709, file: !710, line: 61, baseType: !466, size: 32)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !709, file: !710, line: 62, baseType: !7, size: 32, offset: 32)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !709, file: !710, line: 63, baseType: !171, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !709, file: !710, line: 65, baseType: !716, size: 256, offset: 64)
!716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !717, size: 256, elements: !403)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !129, line: 182, size: 64, elements: !718)
!718 = !{!719}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !717, file: !129, line: 183, baseType: !720, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !129, line: 186, size: 128, elements: !722)
!722 = !{!723, !724}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !721, file: !129, line: 187, baseType: !720, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !721, file: !129, line: 187, baseType: !725, size: 64, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !709, file: !710, line: 66, baseType: !717, size: 64, offset: 320)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !709, file: !710, line: 68, baseType: !728, size: 128, offset: 384)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !729, line: 40, baseType: !730)
!729 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !729, line: 36, size: 128, elements: !731)
!731 = !{!732, !733}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !730, file: !729, line: 37, baseType: !171)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !730, file: !729, line: 38, baseType: !128, size: 128)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !709, file: !710, line: 69, baseType: !735, size: 128, align: 64, offset: 512)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !129, line: 216, size: 128, align: 64, elements: !736)
!736 = !{!737, !739}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !735, file: !129, line: 217, baseType: !738, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !735, file: !129, line: 218, baseType: !740, size: 64, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DISubroutineType(types: !742)
!742 = !{null, !738}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !709, file: !710, line: 70, baseType: !744, size: 128, offset: 640)
!744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !745, size: 128, elements: !146)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !710, line: 54, size: 128, elements: !746)
!746 = !{!747, !748}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !745, file: !710, line: 55, baseType: !99, size: 32)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !745, file: !710, line: 56, baseType: !749, size: 64, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !710, line: 56, flags: DIFlagFwdDecl)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !451, file: !452, line: 872, baseType: !752, size: 512, offset: 6016)
!752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !721, size: 512, elements: !403)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !451, file: !452, line: 873, baseType: !128, size: 128, offset: 6528)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !451, file: !452, line: 874, baseType: !128, size: 128, offset: 6656)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !451, file: !452, line: 876, baseType: !756, size: 64, offset: 6784)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !758, line: 26, size: 192, elements: !759)
!758 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!759 = !{!760, !761}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !757, file: !758, line: 27, baseType: !7, size: 32)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !757, file: !758, line: 28, baseType: !762, size: 128, offset: 64)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !763, line: 43, size: 128, elements: !764)
!763 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!764 = !{!765, !766}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !762, file: !763, line: 44, baseType: !369)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !762, file: !763, line: 45, baseType: !128, size: 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !451, file: !452, line: 879, baseType: !768, size: 64, offset: 6848)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !451, file: !452, line: 882, baseType: !768, size: 64, offset: 6912)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !451, file: !452, line: 884, baseType: !83, size: 64, offset: 6976)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !451, file: !452, line: 885, baseType: !83, size: 64, offset: 7040)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !451, file: !452, line: 890, baseType: !83, size: 64, offset: 7104)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !451, file: !452, line: 891, baseType: !774, size: 128, offset: 7168)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !452, line: 242, size: 128, elements: !775)
!775 = !{!776, !777, !778}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !774, file: !452, line: 244, baseType: !83, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !774, file: !452, line: 245, baseType: !83, size: 64, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !774, file: !452, line: 246, baseType: !369, offset: 128)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !451, file: !452, line: 900, baseType: !145, size: 64, offset: 7296)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !451, file: !452, line: 901, baseType: !145, size: 64, offset: 7360)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !451, file: !452, line: 904, baseType: !83, size: 64, offset: 7424)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !451, file: !452, line: 907, baseType: !83, size: 64, offset: 7488)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !451, file: !452, line: 910, baseType: !145, size: 64, offset: 7552)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !451, file: !452, line: 911, baseType: !145, size: 64, offset: 7616)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !451, file: !452, line: 914, baseType: !786, size: 640, offset: 7680)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !787, line: 123, size: 640, elements: !788)
!787 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!788 = !{!789, !795, !796}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !786, file: !787, line: 124, baseType: !790, size: 576)
!790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !791, size: 576, elements: !213)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !787, line: 108, size: 192, elements: !792)
!792 = !{!793, !794}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !791, file: !787, line: 109, baseType: !83, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !791, file: !787, line: 110, baseType: !582, size: 128, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !786, file: !787, line: 125, baseType: !7, size: 32, offset: 576)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !786, file: !787, line: 126, baseType: !7, size: 32, offset: 608)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !451, file: !452, line: 917, baseType: !798, size: 192, offset: 8320)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !787, line: 134, size: 192, elements: !799)
!799 = !{!800, !801}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !798, file: !787, line: 135, baseType: !735, size: 128, align: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !798, file: !787, line: 136, baseType: !7, size: 32, offset: 128)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !451, file: !452, line: 923, baseType: !803, size: 64, offset: 8512)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !805)
!805 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !452, line: 923, flags: DIFlagFwdDecl)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !451, file: !452, line: 926, baseType: !803, size: 64, offset: 8576)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !451, file: !452, line: 929, baseType: !803, size: 64, offset: 8640)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !451, file: !452, line: 933, baseType: !809, size: 64, offset: 8704)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !452, line: 933, flags: DIFlagFwdDecl)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !451, file: !452, line: 943, baseType: !812, size: 128, offset: 8768)
!812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 128, elements: !813)
!813 = !{!814}
!814 = !DISubrange(count: 16)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !451, file: !452, line: 945, baseType: !816, size: 64, offset: 8896)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !452, line: 49, flags: DIFlagFwdDecl)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !451, file: !452, line: 956, baseType: !819, size: 64, offset: 8960)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !452, line: 45, flags: DIFlagFwdDecl)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !451, file: !452, line: 959, baseType: !822, size: 64, offset: 9024)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !452, line: 959, flags: DIFlagFwdDecl)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !451, file: !452, line: 962, baseType: !825, size: 64, offset: 9088)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !452, line: 66, flags: DIFlagFwdDecl)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !451, file: !452, line: 966, baseType: !828, size: 64, offset: 9152)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !452, line: 50, flags: DIFlagFwdDecl)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !451, file: !452, line: 969, baseType: !831, size: 64, offset: 9216)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !787, line: 223, flags: DIFlagFwdDecl)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !451, file: !452, line: 970, baseType: !834, size: 64, offset: 9280)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !452, line: 62, flags: DIFlagFwdDecl)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !451, file: !452, line: 971, baseType: !837, size: 64, offset: 9344)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !838, line: 25, baseType: !839)
!838 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !838, line: 23, size: 64, elements: !840)
!840 = !{!841}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !839, file: !838, line: 24, baseType: !144, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !451, file: !452, line: 972, baseType: !837, size: 64, offset: 9408)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !451, file: !452, line: 974, baseType: !837, size: 64, offset: 9472)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !451, file: !452, line: 975, baseType: !845, size: 192, offset: 9536)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !846, line: 30, size: 192, elements: !847)
!846 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!847 = !{!848, !849}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !845, file: !846, line: 31, baseType: !128, size: 128)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !845, file: !846, line: 32, baseType: !837, size: 64, offset: 128)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !451, file: !452, line: 976, baseType: !145, size: 64, offset: 9728)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !451, file: !452, line: 977, baseType: !259, size: 64, offset: 9792)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !451, file: !452, line: 978, baseType: !7, size: 32, offset: 9856)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !451, file: !452, line: 980, baseType: !738, size: 64, offset: 9920)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !451, file: !452, line: 989, baseType: !855, size: 128, offset: 9984)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !856, line: 35, size: 128, elements: !857)
!856 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!857 = !{!858, !859, !860}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !855, file: !856, line: 36, baseType: !99, size: 32)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !855, file: !856, line: 37, baseType: !346, size: 32, offset: 32)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !855, file: !856, line: 38, baseType: !861, size: 64, offset: 64)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !856, line: 23, flags: DIFlagFwdDecl)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !451, file: !452, line: 992, baseType: !83, size: 64, offset: 10112)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !451, file: !452, line: 993, baseType: !83, size: 64, offset: 10176)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !451, file: !452, line: 996, baseType: !171, offset: 10240)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !451, file: !452, line: 999, baseType: !369, offset: 10240)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !451, file: !452, line: 1001, baseType: !868, size: 64, offset: 10240)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !452, line: 636, size: 64, elements: !869)
!869 = !{!870}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !868, file: !452, line: 637, baseType: !871, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !451, file: !452, line: 1005, baseType: !585, size: 128, offset: 10304)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !451, file: !452, line: 1007, baseType: !450, size: 64, offset: 10432)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !451, file: !452, line: 1009, baseType: !875, size: 64, offset: 10496)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !452, line: 1009, flags: DIFlagFwdDecl)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !451, file: !452, line: 1043, baseType: !134, size: 64, offset: 10560)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !451, file: !452, line: 1046, baseType: !879, size: 64, offset: 10624)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !452, line: 41, flags: DIFlagFwdDecl)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !451, file: !452, line: 1050, baseType: !882, size: 64, offset: 10688)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !452, line: 42, flags: DIFlagFwdDecl)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !451, file: !452, line: 1054, baseType: !885, size: 64, offset: 10752)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !452, line: 55, flags: DIFlagFwdDecl)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !451, file: !452, line: 1056, baseType: !888, size: 64, offset: 10816)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !452, line: 40, flags: DIFlagFwdDecl)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !451, file: !452, line: 1058, baseType: !891, size: 64, offset: 10880)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !452, line: 47, flags: DIFlagFwdDecl)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !451, file: !452, line: 1061, baseType: !894, size: 64, offset: 10944)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !452, line: 43, flags: DIFlagFwdDecl)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !451, file: !452, line: 1064, baseType: !145, size: 64, offset: 11008)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !451, file: !452, line: 1065, baseType: !898, size: 64, offset: 11072)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !846, line: 14, baseType: !900)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !846, line: 12, size: 384, elements: !901)
!901 = !{!902}
!902 = !DIDerivedType(tag: DW_TAG_member, scope: !900, file: !846, line: 13, baseType: !903, size: 384)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !900, file: !846, line: 13, size: 384, elements: !904)
!904 = !{!905, !906, !907, !908}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !903, file: !846, line: 13, baseType: !99, size: 32)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !903, file: !846, line: 13, baseType: !99, size: 32, offset: 32)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !903, file: !846, line: 13, baseType: !99, size: 32, offset: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !903, file: !846, line: 13, baseType: !909, size: 256, offset: 128)
!909 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !910, line: 32, size: 256, elements: !911)
!910 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!911 = !{!912, !918, !931, !937, !946, !966, !971}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !909, file: !910, line: 37, baseType: !913, size: 64)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !909, file: !910, line: 34, size: 64, elements: !914)
!914 = !{!915, !916}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !913, file: !910, line: 35, baseType: !697, size: 32)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !913, file: !910, line: 36, baseType: !917, size: 32, offset: 32)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !245, line: 49, baseType: !7)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !909, file: !910, line: 45, baseType: !919, size: 192)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !909, file: !910, line: 40, size: 192, elements: !920)
!920 = !{!921, !923, !924, !930}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !919, file: !910, line: 41, baseType: !922, size: 32)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !245, line: 95, baseType: !99)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !919, file: !910, line: 42, baseType: !99, size: 32, offset: 32)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !919, file: !910, line: 43, baseType: !925, size: 64, offset: 64)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !910, line: 11, baseType: !926)
!926 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !910, line: 8, size: 64, elements: !927)
!927 = !{!928, !929}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !926, file: !910, line: 9, baseType: !99, size: 32)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !926, file: !910, line: 10, baseType: !134, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !919, file: !910, line: 44, baseType: !99, size: 32, offset: 128)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !909, file: !910, line: 52, baseType: !932, size: 128)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !909, file: !910, line: 48, size: 128, elements: !933)
!933 = !{!934, !935, !936}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !932, file: !910, line: 49, baseType: !697, size: 32)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !932, file: !910, line: 50, baseType: !917, size: 32, offset: 32)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !932, file: !910, line: 51, baseType: !925, size: 64, offset: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !909, file: !910, line: 61, baseType: !938, size: 256)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !909, file: !910, line: 55, size: 256, elements: !939)
!939 = !{!940, !941, !942, !943, !945}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !938, file: !910, line: 56, baseType: !697, size: 32)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !938, file: !910, line: 57, baseType: !917, size: 32, offset: 32)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !938, file: !910, line: 58, baseType: !99, size: 32, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !938, file: !910, line: 59, baseType: !944, size: 64, offset: 128)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !245, line: 94, baseType: !246)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !938, file: !910, line: 60, baseType: !944, size: 64, offset: 192)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !909, file: !910, line: 95, baseType: !947, size: 256)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !909, file: !910, line: 64, size: 256, elements: !948)
!948 = !{!949, !950}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !947, file: !910, line: 65, baseType: !134, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, scope: !947, file: !910, line: 77, baseType: !951, size: 192, offset: 64)
!951 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !947, file: !910, line: 77, size: 192, elements: !952)
!952 = !{!953, !954, !961}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !951, file: !910, line: 82, baseType: !439, size: 16)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !951, file: !910, line: 88, baseType: !955, size: 192)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !951, file: !910, line: 84, size: 192, elements: !956)
!956 = !{!957, !959, !960}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !955, file: !910, line: 85, baseType: !958, size: 64)
!958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 64, elements: !564)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !955, file: !910, line: 86, baseType: !134, size: 64, offset: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !955, file: !910, line: 87, baseType: !134, size: 64, offset: 128)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !951, file: !910, line: 93, baseType: !962, size: 96)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !951, file: !910, line: 90, size: 96, elements: !963)
!963 = !{!964, !965}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !962, file: !910, line: 91, baseType: !958, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !962, file: !910, line: 92, baseType: !461, size: 32, offset: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !909, file: !910, line: 101, baseType: !967, size: 128)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !909, file: !910, line: 98, size: 128, elements: !968)
!968 = !{!969, !970}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !967, file: !910, line: 99, baseType: !247, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !967, file: !910, line: 100, baseType: !99, size: 32, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !909, file: !910, line: 108, baseType: !972, size: 128)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !909, file: !910, line: 104, size: 128, elements: !973)
!973 = !{!974, !975, !976}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !972, file: !910, line: 105, baseType: !134, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !972, file: !910, line: 106, baseType: !99, size: 32, offset: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !972, file: !910, line: 107, baseType: !7, size: 32, offset: 96)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !451, file: !452, line: 1067, baseType: !978, offset: 11136)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !979, line: 12, elements: !185)
!979 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!980 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !451, file: !452, line: 1099, baseType: !981, size: 64, offset: 11136)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !452, line: 56, flags: DIFlagFwdDecl)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !451, file: !452, line: 1103, baseType: !128, size: 128, offset: 11200)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !451, file: !452, line: 1104, baseType: !985, size: 64, offset: 11328)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !452, line: 46, flags: DIFlagFwdDecl)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !451, file: !452, line: 1105, baseType: !421, size: 192, offset: 11392)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !451, file: !452, line: 1106, baseType: !7, size: 32, offset: 11584)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !451, file: !452, line: 1109, baseType: !990, size: 128, offset: 11648)
!990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !991, size: 128, elements: !993)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !452, line: 51, flags: DIFlagFwdDecl)
!993 = !{!994}
!994 = !DISubrange(count: 2)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !451, file: !452, line: 1110, baseType: !421, size: 192, offset: 11776)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !451, file: !452, line: 1111, baseType: !128, size: 128, offset: 11968)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !451, file: !452, line: 1173, baseType: !998, size: 64, offset: 12096)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1000, line: 62, size: 256, align: 256, elements: !1001)
!1000 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1001 = !{!1002, !1003, !1004, !1009}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !999, file: !1000, line: 75, baseType: !461, size: 32)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !999, file: !1000, line: 90, baseType: !461, size: 32, offset: 32)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !999, file: !1000, line: 124, baseType: !1005, size: 64, offset: 64)
!1005 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !999, file: !1000, line: 109, size: 64, elements: !1006)
!1006 = !{!1007, !1008}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1005, file: !1000, line: 110, baseType: !84, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1005, file: !1000, line: 112, baseType: !84, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !999, file: !1000, line: 144, baseType: !461, size: 32, offset: 128)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !451, file: !452, line: 1174, baseType: !460, size: 32, offset: 12160)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !451, file: !452, line: 1179, baseType: !145, size: 64, offset: 12224)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !451, file: !452, line: 1182, baseType: !1013, size: 128, offset: 12288)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !399, line: 76, size: 128, elements: !1014)
!1014 = !{!1015, !1020, !1023}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1013, file: !399, line: 85, baseType: !1016, size: 64)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1017, line: 7, size: 64, elements: !1018)
!1017 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1018 = !{!1019}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1016, file: !1017, line: 12, baseType: !140, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1013, file: !399, line: 88, baseType: !1021, size: 8, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !129, line: 30, baseType: !1022)
!1022 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1013, file: !399, line: 95, baseType: !1021, size: 8, offset: 72)
!1024 = !DIDerivedType(tag: DW_TAG_member, scope: !451, file: !452, line: 1184, baseType: !1025, size: 128, offset: 12416)
!1025 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !451, file: !452, line: 1184, size: 128, elements: !1026)
!1026 = !{!1027, !1028}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1025, file: !452, line: 1185, baseType: !466, size: 32)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1025, file: !452, line: 1186, baseType: !735, size: 128, align: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !451, file: !452, line: 1190, baseType: !1030, size: 64, offset: 12544)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !452, line: 53, flags: DIFlagFwdDecl)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !451, file: !452, line: 1192, baseType: !1033, size: 128, offset: 12608)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !399, line: 64, size: 128, elements: !1034)
!1034 = !{!1035, !1128, !1129}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1033, file: !399, line: 65, baseType: !1036, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !301, line: 68, size: 512, align: 128, elements: !1038)
!1038 = !{!1039, !1040, !1120, !1127}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1037, file: !301, line: 69, baseType: !145, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, scope: !1037, file: !301, line: 77, baseType: !1041, size: 320, offset: 64)
!1041 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1037, file: !301, line: 77, size: 320, elements: !1042)
!1042 = !{!1043, !1052, !1057, !1085, !1093, !1099, !1112, !1119}
!1043 = !DIDerivedType(tag: DW_TAG_member, scope: !1041, file: !301, line: 78, baseType: !1044, size: 320)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1041, file: !301, line: 78, size: 320, elements: !1045)
!1045 = !{!1046, !1047, !1050, !1051}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1044, file: !301, line: 84, baseType: !128, size: 128)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1044, file: !301, line: 86, baseType: !1048, size: 64, offset: 128)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !301, line: 26, flags: DIFlagFwdDecl)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1044, file: !301, line: 87, baseType: !145, size: 64, offset: 192)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1044, file: !301, line: 94, baseType: !145, size: 64, offset: 256)
!1052 = !DIDerivedType(tag: DW_TAG_member, scope: !1041, file: !301, line: 96, baseType: !1053, size: 64)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1041, file: !301, line: 96, size: 64, elements: !1054)
!1054 = !{!1055}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1053, file: !301, line: 101, baseType: !1056, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !129, line: 143, baseType: !83)
!1057 = !DIDerivedType(tag: DW_TAG_member, scope: !1041, file: !301, line: 103, baseType: !1058, size: 320)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1041, file: !301, line: 103, size: 320, elements: !1059)
!1059 = !{!1060, !1070, !1073, !1074}
!1060 = !DIDerivedType(tag: DW_TAG_member, scope: !1058, file: !301, line: 104, baseType: !1061, size: 128)
!1061 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1058, file: !301, line: 104, size: 128, elements: !1062)
!1062 = !{!1063, !1064}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1061, file: !301, line: 105, baseType: !128, size: 128)
!1064 = !DIDerivedType(tag: DW_TAG_member, scope: !1061, file: !301, line: 106, baseType: !1065, size: 128)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1061, file: !301, line: 106, size: 128, elements: !1066)
!1066 = !{!1067, !1068, !1069}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1065, file: !301, line: 107, baseType: !1036, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1065, file: !301, line: 109, baseType: !99, size: 32, offset: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1065, file: !301, line: 110, baseType: !99, size: 32, offset: 96)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1058, file: !301, line: 117, baseType: !1071, size: 64, offset: 128)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !301, line: 117, flags: DIFlagFwdDecl)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1058, file: !301, line: 119, baseType: !134, size: 64, offset: 192)
!1074 = !DIDerivedType(tag: DW_TAG_member, scope: !1058, file: !301, line: 120, baseType: !1075, size: 64, offset: 256)
!1075 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1058, file: !301, line: 120, size: 64, elements: !1076)
!1076 = !{!1077, !1078, !1079}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1075, file: !301, line: 121, baseType: !134, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1075, file: !301, line: 122, baseType: !145, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, scope: !1075, file: !301, line: 123, baseType: !1080, size: 32)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1075, file: !301, line: 123, size: 32, elements: !1081)
!1081 = !{!1082, !1083, !1084}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1080, file: !301, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1080, file: !301, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1080, file: !301, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1085 = !DIDerivedType(tag: DW_TAG_member, scope: !1041, file: !301, line: 130, baseType: !1086, size: 192)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1041, file: !301, line: 130, size: 192, elements: !1087)
!1087 = !{!1088, !1089, !1090, !1091, !1092}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1086, file: !301, line: 131, baseType: !145, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1086, file: !301, line: 134, baseType: !597, size: 8, offset: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1086, file: !301, line: 135, baseType: !597, size: 8, offset: 72)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1086, file: !301, line: 136, baseType: !346, size: 32, offset: 96)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1086, file: !301, line: 137, baseType: !7, size: 32, offset: 128)
!1093 = !DIDerivedType(tag: DW_TAG_member, scope: !1041, file: !301, line: 139, baseType: !1094, size: 256)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1041, file: !301, line: 139, size: 256, elements: !1095)
!1095 = !{!1096, !1097, !1098}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1094, file: !301, line: 140, baseType: !145, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1094, file: !301, line: 141, baseType: !346, size: 32, offset: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1094, file: !301, line: 143, baseType: !128, size: 128, offset: 128)
!1099 = !DIDerivedType(tag: DW_TAG_member, scope: !1041, file: !301, line: 145, baseType: !1100, size: 256)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1041, file: !301, line: 145, size: 256, elements: !1101)
!1101 = !{!1102, !1103, !1105, !1106, !1111}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1100, file: !301, line: 146, baseType: !145, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1100, file: !301, line: 147, baseType: !1104, size: 64, offset: 64)
!1104 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !291, line: 509, baseType: !1036)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1100, file: !301, line: 148, baseType: !145, size: 64, offset: 128)
!1106 = !DIDerivedType(tag: DW_TAG_member, scope: !1100, file: !301, line: 149, baseType: !1107, size: 64, offset: 192)
!1107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1100, file: !301, line: 149, size: 64, elements: !1108)
!1108 = !{!1109, !1110}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1107, file: !301, line: 150, baseType: !317, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1107, file: !301, line: 151, baseType: !346, size: 32)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1100, file: !301, line: 156, baseType: !171, offset: 256)
!1112 = !DIDerivedType(tag: DW_TAG_member, scope: !1041, file: !301, line: 159, baseType: !1113, size: 128)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1041, file: !301, line: 159, size: 128, elements: !1114)
!1114 = !{!1115, !1118}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1113, file: !301, line: 161, baseType: !1116, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !301, line: 161, flags: DIFlagFwdDecl)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1113, file: !301, line: 162, baseType: !134, size: 64, offset: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1041, file: !301, line: 176, baseType: !735, size: 128, align: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, scope: !1037, file: !301, line: 179, baseType: !1121, size: 32, offset: 384)
!1121 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1037, file: !301, line: 179, size: 32, elements: !1122)
!1122 = !{!1123, !1124, !1125, !1126}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1121, file: !301, line: 184, baseType: !346, size: 32)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1121, file: !301, line: 192, baseType: !7, size: 32)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1121, file: !301, line: 194, baseType: !7, size: 32)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1121, file: !301, line: 195, baseType: !99, size: 32)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1037, file: !301, line: 199, baseType: !346, size: 32, offset: 416)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1033, file: !399, line: 67, baseType: !461, size: 32, offset: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1033, file: !399, line: 68, baseType: !461, size: 32, offset: 96)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !451, file: !452, line: 1206, baseType: !99, size: 32, offset: 12736)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !451, file: !452, line: 1207, baseType: !99, size: 32, offset: 12768)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !451, file: !452, line: 1209, baseType: !145, size: 64, offset: 12800)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !451, file: !452, line: 1219, baseType: !83, size: 64, offset: 12864)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !451, file: !452, line: 1220, baseType: !83, size: 64, offset: 12928)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !451, file: !452, line: 1317, baseType: !99, size: 32, offset: 12992)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !451, file: !452, line: 1319, baseType: !450, size: 64, offset: 13056)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !451, file: !452, line: 1322, baseType: !1138, size: 64, offset: 13120)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !452, line: 1322, flags: DIFlagFwdDecl)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !451, file: !452, line: 1326, baseType: !466, size: 32, offset: 13184)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !451, file: !452, line: 1342, baseType: !134, size: 64, offset: 13248)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !451, file: !452, line: 1343, baseType: !84, size: 64, offset: 13312)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !451, file: !452, line: 1344, baseType: !83, size: 64, offset: 13376)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !451, file: !452, line: 1345, baseType: !84, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !451, file: !452, line: 1346, baseType: !84, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !451, file: !452, line: 1347, baseType: !84, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !451, file: !452, line: 1348, baseType: !735, size: 128, align: 64, offset: 13504)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !451, file: !452, line: 1358, baseType: !1149, size: 34816, offset: 13824)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1150, line: 485, size: 34816, elements: !1151)
!1150 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1151 = !{!1152, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1181, !1182, !1183, !1184, !1185, !1186, !1189, !1190, !1191}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1149, file: !1150, line: 487, baseType: !1153, size: 192)
!1153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1154, size: 192, elements: !213)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1155, line: 16, size: 64, elements: !1156)
!1155 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1156 = !{!1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1154, file: !1155, line: 17, baseType: !434, size: 16)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1154, file: !1155, line: 18, baseType: !434, size: 16, offset: 16)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1154, file: !1155, line: 19, baseType: !434, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1154, file: !1155, line: 19, baseType: !434, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1154, file: !1155, line: 19, baseType: !434, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1154, file: !1155, line: 19, baseType: !434, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1154, file: !1155, line: 19, baseType: !434, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1154, file: !1155, line: 20, baseType: !434, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1154, file: !1155, line: 20, baseType: !434, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1154, file: !1155, line: 20, baseType: !434, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1154, file: !1155, line: 20, baseType: !434, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1154, file: !1155, line: 20, baseType: !434, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1154, file: !1155, line: 20, baseType: !434, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1149, file: !1150, line: 491, baseType: !145, size: 64, offset: 192)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1149, file: !1150, line: 495, baseType: !254, size: 16, offset: 256)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1149, file: !1150, line: 496, baseType: !254, size: 16, offset: 272)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1149, file: !1150, line: 497, baseType: !254, size: 16, offset: 288)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1149, file: !1150, line: 498, baseType: !254, size: 16, offset: 304)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1149, file: !1150, line: 502, baseType: !145, size: 64, offset: 320)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1149, file: !1150, line: 503, baseType: !145, size: 64, offset: 384)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1149, file: !1150, line: 514, baseType: !1178, size: 256, offset: 448)
!1178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1179, size: 256, elements: !403)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1150, line: 483, flags: DIFlagFwdDecl)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1149, file: !1150, line: 516, baseType: !145, size: 64, offset: 704)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1149, file: !1150, line: 518, baseType: !145, size: 64, offset: 768)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1149, file: !1150, line: 520, baseType: !145, size: 64, offset: 832)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1149, file: !1150, line: 521, baseType: !145, size: 64, offset: 896)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1149, file: !1150, line: 522, baseType: !145, size: 64, offset: 960)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1149, file: !1150, line: 528, baseType: !1187, size: 64, offset: 1024)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1150, line: 10, flags: DIFlagFwdDecl)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1149, file: !1150, line: 535, baseType: !145, size: 64, offset: 1088)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1149, file: !1150, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1149, file: !1150, line: 540, baseType: !1192, size: 33280, offset: 1536)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1193, line: 317, size: 33280, elements: !1194)
!1193 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1194 = !{!1195, !1196, !1197}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1192, file: !1193, line: 330, baseType: !7, size: 32)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1192, file: !1193, line: 337, baseType: !145, size: 64, offset: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1192, file: !1193, line: 348, baseType: !1198, size: 32768, offset: 512)
!1198 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1193, line: 304, size: 32768, elements: !1199)
!1199 = !{!1200, !1215, !1254, !1304, !1321}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1198, file: !1193, line: 305, baseType: !1201, size: 896)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1193, line: 12, size: 896, elements: !1202)
!1202 = !{!1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1214}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1201, file: !1193, line: 13, baseType: !460, size: 32)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1201, file: !1193, line: 14, baseType: !460, size: 32, offset: 32)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1201, file: !1193, line: 15, baseType: !460, size: 32, offset: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1201, file: !1193, line: 16, baseType: !460, size: 32, offset: 96)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1201, file: !1193, line: 17, baseType: !460, size: 32, offset: 128)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1201, file: !1193, line: 18, baseType: !460, size: 32, offset: 160)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1201, file: !1193, line: 19, baseType: !460, size: 32, offset: 192)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1201, file: !1193, line: 22, baseType: !1211, size: 640, offset: 224)
!1211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 640, elements: !1212)
!1212 = !{!1213}
!1213 = !DISubrange(count: 20)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1201, file: !1193, line: 25, baseType: !460, size: 32, offset: 864)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1198, file: !1193, line: 306, baseType: !1216, size: 4096, align: 128)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1193, line: 34, size: 4096, align: 128, elements: !1217)
!1217 = !{!1218, !1219, !1220, !1221, !1222, !1237, !1238, !1239, !1243, !1245, !1249}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1216, file: !1193, line: 35, baseType: !434, size: 16)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1216, file: !1193, line: 36, baseType: !434, size: 16, offset: 16)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1216, file: !1193, line: 37, baseType: !434, size: 16, offset: 32)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1216, file: !1193, line: 38, baseType: !434, size: 16, offset: 48)
!1222 = !DIDerivedType(tag: DW_TAG_member, scope: !1216, file: !1193, line: 39, baseType: !1223, size: 128, offset: 64)
!1223 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1216, file: !1193, line: 39, size: 128, elements: !1224)
!1224 = !{!1225, !1230}
!1225 = !DIDerivedType(tag: DW_TAG_member, scope: !1223, file: !1193, line: 40, baseType: !1226, size: 128)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1223, file: !1193, line: 40, size: 128, elements: !1227)
!1227 = !{!1228, !1229}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1226, file: !1193, line: 41, baseType: !83, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1226, file: !1193, line: 42, baseType: !83, size: 64, offset: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, scope: !1223, file: !1193, line: 44, baseType: !1231, size: 128)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1223, file: !1193, line: 44, size: 128, elements: !1232)
!1232 = !{!1233, !1234, !1235, !1236}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1231, file: !1193, line: 45, baseType: !460, size: 32)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1231, file: !1193, line: 46, baseType: !460, size: 32, offset: 32)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1231, file: !1193, line: 47, baseType: !460, size: 32, offset: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1231, file: !1193, line: 48, baseType: !460, size: 32, offset: 96)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1216, file: !1193, line: 51, baseType: !460, size: 32, offset: 192)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1216, file: !1193, line: 52, baseType: !460, size: 32, offset: 224)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1216, file: !1193, line: 55, baseType: !1240, size: 1024, offset: 256)
!1240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 1024, elements: !1241)
!1241 = !{!1242}
!1242 = !DISubrange(count: 32)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1216, file: !1193, line: 58, baseType: !1244, size: 2048, offset: 1280)
!1244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 2048, elements: !217)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1216, file: !1193, line: 60, baseType: !1246, size: 384, offset: 3328)
!1246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 384, elements: !1247)
!1247 = !{!1248}
!1248 = !DISubrange(count: 12)
!1249 = !DIDerivedType(tag: DW_TAG_member, scope: !1216, file: !1193, line: 62, baseType: !1250, size: 384, offset: 3712)
!1250 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1216, file: !1193, line: 62, size: 384, elements: !1251)
!1251 = !{!1252, !1253}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1250, file: !1193, line: 63, baseType: !1246, size: 384)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1250, file: !1193, line: 64, baseType: !1246, size: 384)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1198, file: !1193, line: 307, baseType: !1255, size: 1088)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1193, line: 79, size: 1088, elements: !1256)
!1256 = !{!1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1303}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1255, file: !1193, line: 80, baseType: !460, size: 32)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1255, file: !1193, line: 81, baseType: !460, size: 32, offset: 32)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1255, file: !1193, line: 82, baseType: !460, size: 32, offset: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1255, file: !1193, line: 83, baseType: !460, size: 32, offset: 96)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1255, file: !1193, line: 84, baseType: !460, size: 32, offset: 128)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1255, file: !1193, line: 85, baseType: !460, size: 32, offset: 160)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1255, file: !1193, line: 86, baseType: !460, size: 32, offset: 192)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1255, file: !1193, line: 88, baseType: !1211, size: 640, offset: 224)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1255, file: !1193, line: 89, baseType: !595, size: 8, offset: 864)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1255, file: !1193, line: 90, baseType: !595, size: 8, offset: 872)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1255, file: !1193, line: 91, baseType: !595, size: 8, offset: 880)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1255, file: !1193, line: 92, baseType: !595, size: 8, offset: 888)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1255, file: !1193, line: 93, baseType: !595, size: 8, offset: 896)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1255, file: !1193, line: 94, baseType: !595, size: 8, offset: 904)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1255, file: !1193, line: 95, baseType: !1272, size: 64, offset: 960)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1274, line: 11, size: 128, elements: !1275)
!1274 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1275 = !{!1276, !1277}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1273, file: !1274, line: 12, baseType: !247, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1273, file: !1274, line: 13, baseType: !1278, size: 64, offset: 64)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1280, line: 56, size: 1344, elements: !1281)
!1280 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1281 = !{!1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1279, file: !1280, line: 61, baseType: !145, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1279, file: !1280, line: 62, baseType: !145, size: 64, offset: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1279, file: !1280, line: 63, baseType: !145, size: 64, offset: 128)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1279, file: !1280, line: 64, baseType: !145, size: 64, offset: 192)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1279, file: !1280, line: 65, baseType: !145, size: 64, offset: 256)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1279, file: !1280, line: 66, baseType: !145, size: 64, offset: 320)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1279, file: !1280, line: 68, baseType: !145, size: 64, offset: 384)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1279, file: !1280, line: 69, baseType: !145, size: 64, offset: 448)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1279, file: !1280, line: 70, baseType: !145, size: 64, offset: 512)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1279, file: !1280, line: 71, baseType: !145, size: 64, offset: 576)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1279, file: !1280, line: 72, baseType: !145, size: 64, offset: 640)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1279, file: !1280, line: 73, baseType: !145, size: 64, offset: 704)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1279, file: !1280, line: 74, baseType: !145, size: 64, offset: 768)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1279, file: !1280, line: 75, baseType: !145, size: 64, offset: 832)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1279, file: !1280, line: 76, baseType: !145, size: 64, offset: 896)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1279, file: !1280, line: 81, baseType: !145, size: 64, offset: 960)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1279, file: !1280, line: 83, baseType: !145, size: 64, offset: 1024)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1279, file: !1280, line: 84, baseType: !145, size: 64, offset: 1088)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1279, file: !1280, line: 85, baseType: !145, size: 64, offset: 1152)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1279, file: !1280, line: 86, baseType: !145, size: 64, offset: 1216)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1279, file: !1280, line: 87, baseType: !145, size: 64, offset: 1280)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1255, file: !1193, line: 96, baseType: !460, size: 32, offset: 1024)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1198, file: !1193, line: 308, baseType: !1305, size: 4608, align: 512)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1193, line: 289, size: 4608, align: 512, elements: !1306)
!1306 = !{!1307, !1308, !1317}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1305, file: !1193, line: 290, baseType: !1216, size: 4096, align: 128)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1305, file: !1193, line: 291, baseType: !1309, size: 512, offset: 4096)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1193, line: 268, size: 512, elements: !1310)
!1310 = !{!1311, !1312, !1313}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1309, file: !1193, line: 269, baseType: !83, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1309, file: !1193, line: 270, baseType: !83, size: 64, offset: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1309, file: !1193, line: 271, baseType: !1314, size: 384, offset: 128)
!1314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 384, elements: !1315)
!1315 = !{!1316}
!1316 = !DISubrange(count: 6)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1305, file: !1193, line: 292, baseType: !1318, offset: 4608)
!1318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !595, elements: !1319)
!1319 = !{!1320}
!1320 = !DISubrange(count: 0)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1198, file: !1193, line: 309, baseType: !1322, size: 32768)
!1322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !595, size: 32768, elements: !1323)
!1323 = !{!1324}
!1324 = !DISubrange(count: 4096)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !447, file: !301, line: 378, baseType: !1326, size: 64, offset: 64)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !443, file: !301, line: 384, baseType: !757, size: 192, offset: 192)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !321, file: !301, line: 500, baseType: !171, offset: 6656)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !321, file: !301, line: 501, baseType: !1330, size: 64, offset: 6656)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !301, line: 387, flags: DIFlagFwdDecl)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !321, file: !301, line: 516, baseType: !1333, size: 64, offset: 6720)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1335, line: 18, flags: DIFlagFwdDecl)
!1335 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !321, file: !301, line: 519, baseType: !289, size: 64, offset: 6784)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !321, file: !301, line: 521, baseType: !1338, size: 64, offset: 6848)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !301, line: 521, flags: DIFlagFwdDecl)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !321, file: !301, line: 545, baseType: !346, size: 32, offset: 6912)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !321, file: !301, line: 548, baseType: !1021, size: 8, offset: 6944)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !321, file: !301, line: 550, baseType: !1343, offset: 6952)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1344, line: 142, elements: !185)
!1344 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !321, file: !301, line: 554, baseType: !1346, size: 256, offset: 6976)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1347, line: 102, size: 256, elements: !1348)
!1347 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1348 = !{!1349, !1350, !1351}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1346, file: !1347, line: 103, baseType: !354, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1346, file: !1347, line: 104, baseType: !128, size: 128, offset: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1346, file: !1347, line: 105, baseType: !1352, size: 64, offset: 192)
!1352 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1347, line: 21, baseType: !1353)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{null, !1356}
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !321, file: !301, line: 557, baseType: !460, size: 32, offset: 7232)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !318, file: !301, line: 565, baseType: !1359, offset: 7296)
!1359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, elements: !1360)
!1360 = !{!1361}
!1361 = !DISubrange(count: -1)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !300, file: !301, line: 333, baseType: !1363, size: 64, offset: 576)
!1363 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !291, line: 284, baseType: !1364)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !291, line: 284, size: 64, elements: !1365)
!1365 = !{!1366}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1364, file: !291, line: 284, baseType: !1367, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !344, line: 19, baseType: !145)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !300, file: !301, line: 334, baseType: !145, size: 64, offset: 640)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !300, file: !301, line: 343, baseType: !1370, size: 256, offset: 704)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !300, file: !301, line: 340, size: 256, elements: !1371)
!1371 = !{!1372, !1373}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1370, file: !301, line: 341, baseType: !308, size: 192, align: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1370, file: !301, line: 342, baseType: !145, size: 64, offset: 192)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !300, file: !301, line: 351, baseType: !128, size: 128, offset: 960)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !300, file: !301, line: 353, baseType: !1376, size: 64, offset: 1088)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !301, line: 353, flags: DIFlagFwdDecl)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !300, file: !301, line: 356, baseType: !1379, size: 64, offset: 1152)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1381)
!1381 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !301, line: 356, flags: DIFlagFwdDecl)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !300, file: !301, line: 359, baseType: !145, size: 64, offset: 1216)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !300, file: !301, line: 361, baseType: !289, size: 64, offset: 1280)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !300, file: !301, line: 362, baseType: !134, size: 64, offset: 1344)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !300, file: !301, line: 365, baseType: !354, size: 64, offset: 1408)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !300, file: !301, line: 373, baseType: !1387, offset: 1472)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !301, line: 296, elements: !185)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !268, file: !237, line: 90, baseType: !263, size: 64, offset: 192)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !268, file: !237, line: 91, baseType: !1390, size: 64, offset: 256)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !227, file: !156, line: 143, baseType: !1392, size: 64, offset: 256)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!1395, !164}
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1397)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1398)
!1398 = !{!1399, !1400, !1404, !1408, !1416, !1420}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1397, file: !18, line: 40, baseType: !17, size: 32)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1397, file: !18, line: 41, baseType: !1401, size: 64, offset: 64)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{!1021}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1397, file: !18, line: 42, baseType: !1405, size: 64, offset: 128)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!134}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1397, file: !18, line: 43, baseType: !1409, size: 64, offset: 192)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{!1412, !1414}
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1397, file: !18, line: 44, baseType: !1417, size: 64, offset: 256)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{!1412}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1397, file: !18, line: 45, baseType: !1421, size: 64, offset: 320)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{null, !134}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !227, file: !156, line: 144, baseType: !1425, size: 64, offset: 320)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!1412, !164}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !227, file: !156, line: 145, baseType: !1429, size: 64, offset: 384)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{null, !164, !1432, !1438}
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1335, line: 23, baseType: !1434)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1335, line: 21, size: 32, elements: !1435)
!1435 = !{!1436}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1434, file: !1335, line: 22, baseType: !1437, size: 32)
!1437 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !129, line: 32, baseType: !917)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1335, line: 28, baseType: !1440)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1335, line: 26, size: 32, elements: !1441)
!1441 = !{!1442}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1440, file: !1335, line: 27, baseType: !1443, size: 32)
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !129, line: 33, baseType: !1444)
!1444 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !245, line: 50, baseType: !7)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !155, file: !156, line: 70, baseType: !1446, size: 64, offset: 384)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1448, line: 123, size: 1024, elements: !1449)
!1448 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1449 = !{!1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1592, !1593, !1594, !1595, !1596}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1447, file: !1448, line: 124, baseType: !346, size: 32)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1447, file: !1448, line: 125, baseType: !346, size: 32, offset: 32)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1447, file: !1448, line: 135, baseType: !1446, size: 64, offset: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1447, file: !1448, line: 136, baseType: !159, size: 64, offset: 128)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1447, file: !1448, line: 138, baseType: !308, size: 192, align: 64, offset: 192)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1447, file: !1448, line: 140, baseType: !1412, size: 64, offset: 384)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1447, file: !1448, line: 141, baseType: !7, size: 32, offset: 448)
!1457 = !DIDerivedType(tag: DW_TAG_member, scope: !1447, file: !1448, line: 142, baseType: !1458, size: 256, offset: 512)
!1458 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1447, file: !1448, line: 142, size: 256, elements: !1459)
!1459 = !{!1460, !1515, !1519}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1458, file: !1448, line: 143, baseType: !1461, size: 192)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1448, line: 91, size: 192, elements: !1462)
!1462 = !{!1463, !1464, !1465}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1461, file: !1448, line: 92, baseType: !145, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1461, file: !1448, line: 94, baseType: !325, size: 64, offset: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1461, file: !1448, line: 100, baseType: !1466, size: 64, offset: 128)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1448, line: 180, size: 704, elements: !1468)
!1468 = !{!1469, !1470, !1471, !1485, !1486, !1487, !1513, !1514}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1467, file: !1448, line: 182, baseType: !1446, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1467, file: !1448, line: 183, baseType: !7, size: 32, offset: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1467, file: !1448, line: 186, baseType: !1472, size: 192, offset: 128)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1473, line: 19, size: 192, elements: !1474)
!1473 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1474 = !{!1475, !1483, !1484}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1472, file: !1473, line: 20, baseType: !1476, size: 128)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1477, line: 292, size: 128, elements: !1478)
!1477 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1478 = !{!1479, !1480, !1482}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1476, file: !1477, line: 293, baseType: !171)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1476, file: !1477, line: 295, baseType: !1481, size: 32)
!1481 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !129, line: 148, baseType: !7)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1476, file: !1477, line: 296, baseType: !134, size: 64, offset: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1472, file: !1473, line: 21, baseType: !7, size: 32, offset: 128)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1472, file: !1473, line: 22, baseType: !7, size: 32, offset: 160)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1467, file: !1448, line: 187, baseType: !460, size: 32, offset: 320)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1467, file: !1448, line: 188, baseType: !460, size: 32, offset: 352)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1467, file: !1448, line: 189, baseType: !1488, size: 64, offset: 384)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1448, line: 168, size: 320, elements: !1490)
!1490 = !{!1491, !1497, !1501, !1505, !1509}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1489, file: !1448, line: 169, baseType: !1492, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{!99, !1495, !1466}
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !291, line: 539, flags: DIFlagFwdDecl)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1489, file: !1448, line: 171, baseType: !1498, size: 64, offset: 64)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DISubroutineType(types: !1500)
!1500 = !{!99, !1446, !159, !253}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1489, file: !1448, line: 173, baseType: !1502, size: 64, offset: 128)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{!99, !1446}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1489, file: !1448, line: 174, baseType: !1506, size: 64, offset: 192)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{!99, !1446, !1446, !159}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1489, file: !1448, line: 176, baseType: !1510, size: 64, offset: 256)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!99, !1495, !1446, !1466}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1467, file: !1448, line: 192, baseType: !128, size: 128, offset: 448)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1467, file: !1448, line: 194, baseType: !728, size: 128, offset: 576)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1458, file: !1448, line: 144, baseType: !1516, size: 64)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1448, line: 103, size: 64, elements: !1517)
!1517 = !{!1518}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1516, file: !1448, line: 104, baseType: !1446, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1458, file: !1448, line: 145, baseType: !1520, size: 256)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1448, line: 107, size: 256, elements: !1521)
!1521 = !{!1522, !1587, !1590, !1591}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1520, file: !1448, line: 108, baseType: !1523, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1525)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1448, line: 217, size: 768, elements: !1526)
!1526 = !{!1527, !1547, !1551, !1555, !1560, !1564, !1568, !1572, !1573, !1574, !1575, !1583}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1525, file: !1448, line: 222, baseType: !1528, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{!99, !1531}
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1448, line: 197, size: 1088, elements: !1533)
!1533 = !{!1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1532, file: !1448, line: 199, baseType: !1446, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1532, file: !1448, line: 200, baseType: !289, size: 64, offset: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1532, file: !1448, line: 201, baseType: !1495, size: 64, offset: 128)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1532, file: !1448, line: 202, baseType: !134, size: 64, offset: 192)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1532, file: !1448, line: 205, baseType: !421, size: 192, offset: 256)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1532, file: !1448, line: 206, baseType: !421, size: 192, offset: 448)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1532, file: !1448, line: 207, baseType: !99, size: 32, offset: 640)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1532, file: !1448, line: 208, baseType: !128, size: 128, offset: 704)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1532, file: !1448, line: 209, baseType: !212, size: 64, offset: 832)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1532, file: !1448, line: 211, baseType: !259, size: 64, offset: 896)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1532, file: !1448, line: 212, baseType: !1021, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1532, file: !1448, line: 213, baseType: !1021, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1532, file: !1448, line: 214, baseType: !1379, size: 64, offset: 1024)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1525, file: !1448, line: 223, baseType: !1548, size: 64, offset: 64)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{null, !1531}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1525, file: !1448, line: 236, baseType: !1552, size: 64, offset: 128)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!99, !1495, !134}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1525, file: !1448, line: 238, baseType: !1556, size: 64, offset: 192)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{!134, !1495, !1559}
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1525, file: !1448, line: 239, baseType: !1561, size: 64, offset: 256)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{!134, !1495, !134, !1559}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1525, file: !1448, line: 240, baseType: !1565, size: 64, offset: 320)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{null, !1495, !134}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1525, file: !1448, line: 242, baseType: !1569, size: 64, offset: 384)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!243, !1531, !212, !259, !292}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1525, file: !1448, line: 252, baseType: !259, size: 64, offset: 448)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1525, file: !1448, line: 259, baseType: !1021, size: 8, offset: 512)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1525, file: !1448, line: 260, baseType: !1569, size: 64, offset: 576)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1525, file: !1448, line: 263, baseType: !1576, size: 64, offset: 640)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!1579, !1531, !1581}
!1579 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1580, line: 52, baseType: !7)
!1580 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1448, line: 27, flags: DIFlagFwdDecl)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1525, file: !1448, line: 266, baseType: !1584, size: 64, offset: 704)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!99, !1531, !299}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1520, file: !1448, line: 109, baseType: !1588, size: 64, offset: 64)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1448, line: 31, flags: DIFlagFwdDecl)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1520, file: !1448, line: 110, baseType: !292, size: 64, offset: 128)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1520, file: !1448, line: 111, baseType: !1446, size: 64, offset: 192)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1447, file: !1448, line: 148, baseType: !134, size: 64, offset: 768)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1447, file: !1448, line: 154, baseType: !83, size: 64, offset: 832)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1447, file: !1448, line: 156, baseType: !254, size: 16, offset: 896)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1447, file: !1448, line: 157, baseType: !253, size: 16, offset: 912)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1447, file: !1448, line: 158, baseType: !1597, size: 64, offset: 960)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1448, line: 32, flags: DIFlagFwdDecl)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !155, file: !156, line: 71, baseType: !1600, size: 32, offset: 448)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1601, line: 19, size: 32, elements: !1602)
!1601 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1602 = !{!1603}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1600, file: !1601, line: 20, baseType: !466, size: 32)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !155, file: !156, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !155, file: !156, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !155, file: !156, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !155, file: !156, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !155, file: !156, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !152, file: !30, line: 463, baseType: !1610, size: 64, offset: 512)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !152, file: !30, line: 465, baseType: !1612, size: 64, offset: 576)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !152, file: !30, line: 467, baseType: !159, size: 64, offset: 640)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !152, file: !30, line: 468, baseType: !1616, size: 64, offset: 704)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1618)
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1619)
!1619 = !{!1620, !1621, !1622, !1626, !1631, !1635}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1618, file: !30, line: 88, baseType: !159, size: 64)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1618, file: !30, line: 89, baseType: !265, size: 64, offset: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1618, file: !30, line: 90, baseType: !1623, size: 64, offset: 128)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{!99, !1610, !207}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1618, file: !30, line: 91, baseType: !1627, size: 64, offset: 192)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!212, !1610, !1630, !1432, !1438}
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1618, file: !30, line: 93, baseType: !1632, size: 64, offset: 256)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{null, !1610}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1618, file: !30, line: 95, baseType: !1636, size: 64, offset: 320)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1638)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1639)
!1639 = !{!1640, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1638, file: !37, line: 279, baseType: !1641, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!99, !1610}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1638, file: !37, line: 280, baseType: !1632, size: 64, offset: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1638, file: !37, line: 281, baseType: !1641, size: 64, offset: 128)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1638, file: !37, line: 282, baseType: !1641, size: 64, offset: 192)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1638, file: !37, line: 283, baseType: !1641, size: 64, offset: 256)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1638, file: !37, line: 284, baseType: !1641, size: 64, offset: 320)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1638, file: !37, line: 285, baseType: !1641, size: 64, offset: 384)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1638, file: !37, line: 286, baseType: !1641, size: 64, offset: 448)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1638, file: !37, line: 287, baseType: !1641, size: 64, offset: 512)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1638, file: !37, line: 288, baseType: !1641, size: 64, offset: 576)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1638, file: !37, line: 289, baseType: !1641, size: 64, offset: 640)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1638, file: !37, line: 290, baseType: !1641, size: 64, offset: 704)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1638, file: !37, line: 291, baseType: !1641, size: 64, offset: 768)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1638, file: !37, line: 292, baseType: !1641, size: 64, offset: 832)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1638, file: !37, line: 293, baseType: !1641, size: 64, offset: 896)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1638, file: !37, line: 294, baseType: !1641, size: 64, offset: 960)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1638, file: !37, line: 295, baseType: !1641, size: 64, offset: 1024)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1638, file: !37, line: 296, baseType: !1641, size: 64, offset: 1088)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1638, file: !37, line: 297, baseType: !1641, size: 64, offset: 1152)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1638, file: !37, line: 298, baseType: !1641, size: 64, offset: 1216)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1638, file: !37, line: 299, baseType: !1641, size: 64, offset: 1280)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1638, file: !37, line: 300, baseType: !1641, size: 64, offset: 1344)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1638, file: !37, line: 301, baseType: !1641, size: 64, offset: 1408)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !152, file: !30, line: 470, baseType: !1667, size: 64, offset: 768)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1669, line: 82, size: 1408, elements: !1670)
!1669 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1670 = !{!1671, !1672, !1673, !1674, !1675, !1676, !1677, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1756, !1759, !1762}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1668, file: !1669, line: 83, baseType: !159, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1668, file: !1669, line: 84, baseType: !159, size: 64, offset: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1668, file: !1669, line: 85, baseType: !1610, size: 64, offset: 128)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1668, file: !1669, line: 86, baseType: !265, size: 64, offset: 192)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1668, file: !1669, line: 87, baseType: !265, size: 64, offset: 256)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1668, file: !1669, line: 88, baseType: !265, size: 64, offset: 320)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1668, file: !1669, line: 90, baseType: !1678, size: 64, offset: 384)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!99, !1610, !1681}
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1683)
!1683 = !{!1684, !1685, !1686, !1690, !1691, !1692, !1693, !1707, !1720, !1721, !1722, !1723, !1724, !1732, !1733, !1734, !1735, !1736, !1737}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1682, file: !24, line: 96, baseType: !159, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1682, file: !24, line: 97, baseType: !1667, size: 64, offset: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1682, file: !24, line: 99, baseType: !1687, size: 64, offset: 128)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1689, line: 76, flags: DIFlagFwdDecl)
!1689 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1682, file: !24, line: 100, baseType: !159, size: 64, offset: 192)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1682, file: !24, line: 102, baseType: !1021, size: 8, offset: 256)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1682, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1682, file: !24, line: 105, baseType: !1694, size: 64, offset: 320)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1696)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1697, line: 262, size: 1600, elements: !1698)
!1697 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1698 = !{!1699, !1701, !1702, !1706}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1696, file: !1697, line: 263, baseType: !1700, size: 256)
!1700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 256, elements: !1241)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1696, file: !1697, line: 264, baseType: !1700, size: 256, offset: 256)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1696, file: !1697, line: 265, baseType: !1703, size: 1024, offset: 512)
!1703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 1024, elements: !1704)
!1704 = !{!1705}
!1705 = !DISubrange(count: 128)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1696, file: !1697, line: 266, baseType: !1412, size: 64, offset: 1536)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1682, file: !24, line: 106, baseType: !1708, size: 64, offset: 384)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1710)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1697, line: 210, size: 256, elements: !1711)
!1711 = !{!1712, !1716, !1718, !1719}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1710, file: !1697, line: 211, baseType: !1713, size: 72)
!1713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !596, size: 72, elements: !1714)
!1714 = !{!1715}
!1715 = !DISubrange(count: 9)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1710, file: !1697, line: 212, baseType: !1717, size: 64, offset: 128)
!1717 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1697, line: 14, baseType: !145)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1710, file: !1697, line: 213, baseType: !461, size: 32, offset: 192)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1710, file: !1697, line: 214, baseType: !461, size: 32, offset: 224)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1682, file: !24, line: 108, baseType: !1641, size: 64, offset: 448)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1682, file: !24, line: 109, baseType: !1632, size: 64, offset: 512)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1682, file: !24, line: 110, baseType: !1641, size: 64, offset: 576)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1682, file: !24, line: 111, baseType: !1632, size: 64, offset: 640)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1682, file: !24, line: 112, baseType: !1725, size: 64, offset: 704)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!99, !1610, !1728}
!1728 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1729)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1730)
!1730 = !{!1731}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1729, file: !37, line: 51, baseType: !99, size: 32)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1682, file: !24, line: 113, baseType: !1641, size: 64, offset: 768)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1682, file: !24, line: 114, baseType: !265, size: 64, offset: 832)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1682, file: !24, line: 115, baseType: !265, size: 64, offset: 896)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1682, file: !24, line: 117, baseType: !1636, size: 64, offset: 960)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1682, file: !24, line: 118, baseType: !1632, size: 64, offset: 1024)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1682, file: !24, line: 120, baseType: !1738, size: 64, offset: 1088)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1668, file: !1669, line: 91, baseType: !1623, size: 64, offset: 448)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1668, file: !1669, line: 92, baseType: !1641, size: 64, offset: 512)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1668, file: !1669, line: 93, baseType: !1632, size: 64, offset: 576)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1668, file: !1669, line: 94, baseType: !1641, size: 64, offset: 640)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1668, file: !1669, line: 95, baseType: !1632, size: 64, offset: 704)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1668, file: !1669, line: 97, baseType: !1641, size: 64, offset: 768)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1668, file: !1669, line: 98, baseType: !1641, size: 64, offset: 832)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1668, file: !1669, line: 100, baseType: !1725, size: 64, offset: 896)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1668, file: !1669, line: 101, baseType: !1641, size: 64, offset: 960)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1668, file: !1669, line: 103, baseType: !1641, size: 64, offset: 1024)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1668, file: !1669, line: 105, baseType: !1641, size: 64, offset: 1088)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1668, file: !1669, line: 107, baseType: !1636, size: 64, offset: 1152)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1668, file: !1669, line: 109, baseType: !1753, size: 64, offset: 1216)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1755)
!1755 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1669, line: 109, flags: DIFlagFwdDecl)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1668, file: !1669, line: 111, baseType: !1757, size: 64, offset: 1280)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1669, line: 111, flags: DIFlagFwdDecl)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1668, file: !1669, line: 112, baseType: !1760, offset: 1344)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1761, line: 187, elements: !185)
!1761 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1668, file: !1669, line: 114, baseType: !1021, size: 8, offset: 1344)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !152, file: !30, line: 471, baseType: !1681, size: 64, offset: 832)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !152, file: !30, line: 473, baseType: !134, size: 64, offset: 896)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !152, file: !30, line: 475, baseType: !134, size: 64, offset: 960)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !152, file: !30, line: 480, baseType: !421, size: 192, offset: 1024)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !152, file: !30, line: 484, baseType: !1768, size: 576, offset: 1216)
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1769)
!1769 = !{!1770, !1771, !1772, !1773, !1774, !1775}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1768, file: !30, line: 362, baseType: !128, size: 128)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1768, file: !30, line: 363, baseType: !128, size: 128, offset: 128)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1768, file: !30, line: 364, baseType: !128, size: 128, offset: 256)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1768, file: !30, line: 365, baseType: !128, size: 128, offset: 384)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1768, file: !30, line: 366, baseType: !1021, size: 8, offset: 512)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1768, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !152, file: !30, line: 485, baseType: !1777, size: 2304, offset: 1792)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1778)
!1778 = !{!1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1877, !1881}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1777, file: !37, line: 566, baseType: !1728, size: 32)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1777, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1777, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1777, file: !37, line: 569, baseType: !1021, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1777, file: !37, line: 570, baseType: !1021, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1777, file: !37, line: 571, baseType: !1021, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1777, file: !37, line: 572, baseType: !1021, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1777, file: !37, line: 573, baseType: !1021, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1777, file: !37, line: 574, baseType: !1021, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1777, file: !37, line: 575, baseType: !1021, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1777, file: !37, line: 576, baseType: !1021, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1777, file: !37, line: 577, baseType: !460, size: 32, offset: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1777, file: !37, line: 578, baseType: !171, offset: 96)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1777, file: !37, line: 580, baseType: !128, size: 128, offset: 128)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1777, file: !37, line: 581, baseType: !757, size: 192, offset: 256)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1777, file: !37, line: 582, baseType: !1795, size: 64, offset: 448)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1797, line: 43, size: 1472, elements: !1798)
!1797 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1798 = !{!1799, !1800, !1801, !1802, !1803, !1806, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1796, file: !1797, line: 44, baseType: !159, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1796, file: !1797, line: 45, baseType: !99, size: 32, offset: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1796, file: !1797, line: 46, baseType: !128, size: 128, offset: 128)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1796, file: !1797, line: 47, baseType: !171, offset: 256)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1796, file: !1797, line: 48, baseType: !1804, size: 64, offset: 256)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1796, file: !1797, line: 49, baseType: !1807, size: 320, offset: 320)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1808, line: 11, size: 320, elements: !1809)
!1808 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1809 = !{!1810, !1811, !1812, !1817}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1807, file: !1808, line: 16, baseType: !721, size: 128)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1807, file: !1808, line: 17, baseType: !145, size: 64, offset: 128)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1807, file: !1808, line: 18, baseType: !1813, size: 64, offset: 192)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{null, !1816}
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1807, file: !1808, line: 19, baseType: !460, size: 32, offset: 256)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1796, file: !1797, line: 50, baseType: !145, size: 64, offset: 640)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1796, file: !1797, line: 51, baseType: !96, size: 64, offset: 704)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1796, file: !1797, line: 52, baseType: !96, size: 64, offset: 768)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1796, file: !1797, line: 53, baseType: !96, size: 64, offset: 832)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1796, file: !1797, line: 54, baseType: !96, size: 64, offset: 896)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1796, file: !1797, line: 55, baseType: !96, size: 64, offset: 960)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1796, file: !1797, line: 56, baseType: !145, size: 64, offset: 1024)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1796, file: !1797, line: 57, baseType: !145, size: 64, offset: 1088)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1796, file: !1797, line: 58, baseType: !145, size: 64, offset: 1152)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1796, file: !1797, line: 59, baseType: !145, size: 64, offset: 1216)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1796, file: !1797, line: 60, baseType: !145, size: 64, offset: 1280)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1796, file: !1797, line: 61, baseType: !1610, size: 64, offset: 1344)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1796, file: !1797, line: 62, baseType: !1021, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1796, file: !1797, line: 63, baseType: !1021, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1777, file: !37, line: 583, baseType: !1021, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1777, file: !37, line: 584, baseType: !1021, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1777, file: !37, line: 585, baseType: !1021, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1777, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1777, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1777, file: !37, line: 592, baseType: !528, size: 512, offset: 576)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1777, file: !37, line: 593, baseType: !83, size: 64, offset: 1088)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1777, file: !37, line: 594, baseType: !1346, size: 256, offset: 1152)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1777, file: !37, line: 595, baseType: !728, size: 128, offset: 1408)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1777, file: !37, line: 596, baseType: !1804, size: 64, offset: 1536)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1777, file: !37, line: 597, baseType: !346, size: 32, offset: 1600)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1777, file: !37, line: 598, baseType: !346, size: 32, offset: 1632)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1777, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1777, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1777, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1777, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1777, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1777, file: !37, line: 604, baseType: !1021, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1777, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1777, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1777, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1777, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1777, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1777, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1777, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1777, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1777, file: !37, line: 613, baseType: !99, size: 32, offset: 1792)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1777, file: !37, line: 614, baseType: !99, size: 32, offset: 1824)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1777, file: !37, line: 615, baseType: !83, size: 64, offset: 1856)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1777, file: !37, line: 616, baseType: !83, size: 64, offset: 1920)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1777, file: !37, line: 617, baseType: !83, size: 64, offset: 1984)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1777, file: !37, line: 618, baseType: !83, size: 64, offset: 2048)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1777, file: !37, line: 620, baseType: !1865, size: 64, offset: 2112)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1867)
!1867 = !{!1868, !1869, !1870, !1871}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1866, file: !37, line: 537, baseType: !171)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1866, file: !37, line: 538, baseType: !7, size: 32)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1866, file: !37, line: 540, baseType: !128, size: 128, offset: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1866, file: !37, line: 543, baseType: !1872, size: 64, offset: 192)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !68, line: 182, size: 192, elements: !1874)
!1874 = !{!1875, !1876}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !1873, file: !68, line: 183, baseType: !128, size: 128)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1873, file: !68, line: 184, baseType: !1610, size: 64, offset: 128)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1777, file: !37, line: 621, baseType: !1878, size: 64, offset: 2176)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DISubroutineType(types: !1880)
!1880 = !{null, !1610, !681}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1777, file: !37, line: 622, baseType: !1882, size: 64, offset: 2240)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !51, line: 117, size: 2304, elements: !1884)
!1884 = !{!1885, !1914, !1915, !1922, !1927, !1954, !1955}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency", scope: !1883, file: !51, line: 118, baseType: !1886, size: 320)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_constraints", file: !51, line: 52, size: 320, elements: !1887)
!1887 = !{!1888, !1893, !1894, !1895, !1896, !1897}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1886, file: !51, line: 53, baseType: !1889, size: 128)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_head", file: !1890, line: 79, size: 128, elements: !1891)
!1890 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/lizy2001/genbc/linux")
!1891 = !{!1892}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1889, file: !1890, line: 80, baseType: !128, size: 128)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "target_value", scope: !1886, file: !51, line: 54, baseType: !681, size: 32, offset: 128)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "default_value", scope: !1886, file: !51, line: 55, baseType: !681, size: 32, offset: 160)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "no_constraint_value", scope: !1886, file: !51, line: 56, baseType: !681, size: 32, offset: 192)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1886, file: !51, line: 57, baseType: !50, size: 32, offset: 224)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "notifiers", scope: !1886, file: !51, line: 58, baseType: !1898, size: 64, offset: 256)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !1900, line: 65, size: 320, elements: !1901)
!1900 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!1901 = !{!1902, !1903}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !1899, file: !1900, line: 66, baseType: !363, size: 256)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1899, file: !1900, line: 67, baseType: !1904, size: 64, offset: 256)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !1900, line: 54, size: 192, elements: !1906)
!1906 = !{!1907, !1912, !1913}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !1905, file: !1900, line: 55, baseType: !1908, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !1900, line: 51, baseType: !1909)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DISubroutineType(types: !1911)
!1911 = !{!99, !1904, !145, !134}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1905, file: !1900, line: 56, baseType: !1904, size: 64, offset: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1905, file: !1900, line: 57, baseType: !99, size: 32, offset: 128)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance", scope: !1883, file: !51, line: 119, baseType: !1886, size: 320, offset: 320)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !1883, file: !51, line: 120, baseType: !1916, size: 1280, offset: 640)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_constraints", file: !51, line: 85, size: 1280, elements: !1917)
!1917 = !{!1918, !1919, !1920, !1921}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq", scope: !1916, file: !51, line: 86, baseType: !1886, size: 320)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq_notifiers", scope: !1916, file: !51, line: 87, baseType: !1899, size: 320, offset: 320)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq", scope: !1916, file: !51, line: 88, baseType: !1886, size: 320, offset: 640)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq_notifiers", scope: !1916, file: !51, line: 89, baseType: !1899, size: 320, offset: 960)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1883, file: !51, line: 121, baseType: !1923, size: 192, offset: 1920)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags", file: !51, line: 71, size: 192, elements: !1924)
!1924 = !{!1925, !1926}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1923, file: !51, line: 72, baseType: !128, size: 128)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "effective_flags", scope: !1923, file: !51, line: 73, baseType: !681, size: 32, offset: 128)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency_req", scope: !1883, file: !51, line: 122, baseType: !1928, size: 64, offset: 2112)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos_request", file: !51, line: 107, size: 576, elements: !1930)
!1930 = !{!1931, !1932, !1953}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1929, file: !51, line: 108, baseType: !56, size: 32)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1929, file: !51, line: 113, baseType: !1933, size: 448, offset: 64)
!1933 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1929, file: !51, line: 109, size: 448, elements: !1934)
!1934 = !{!1935, !1941, !1946}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !1933, file: !51, line: 110, baseType: !1936, size: 320)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1890, line: 83, size: 320, elements: !1937)
!1937 = !{!1938, !1939, !1940}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1936, file: !1890, line: 84, baseType: !99, size: 32)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1936, file: !1890, line: 85, baseType: !128, size: 128, offset: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1936, file: !1890, line: 86, baseType: !128, size: 128, offset: 192)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "flr", scope: !1933, file: !51, line: 111, baseType: !1942, size: 192)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags_request", file: !51, line: 66, size: 192, elements: !1943)
!1943 = !{!1944, !1945}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1942, file: !51, line: 67, baseType: !128, size: 128)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1942, file: !51, line: 68, baseType: !681, size: 32, offset: 128)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !1933, file: !51, line: 112, baseType: !1947, size: 448)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_qos_request", file: !51, line: 92, size: 448, elements: !1948)
!1948 = !{!1949, !1950, !1951}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1947, file: !51, line: 93, baseType: !63, size: 32)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !1947, file: !51, line: 94, baseType: !1936, size: 320, offset: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1947, file: !51, line: 95, baseType: !1952, size: 64, offset: 384)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1929, file: !51, line: 114, baseType: !1610, size: 64, offset: 512)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance_req", scope: !1883, file: !51, line: 123, baseType: !1928, size: 64, offset: 2176)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "flags_req", scope: !1883, file: !51, line: 124, baseType: !1928, size: 64, offset: 2240)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !152, file: !30, line: 486, baseType: !1957, size: 64, offset: 4096)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1959)
!1959 = !{!1960, !1961, !1962, !1966, !1967, !1968}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1958, file: !37, line: 643, baseType: !1638, size: 1472)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1958, file: !37, line: 644, baseType: !1641, size: 64, offset: 1472)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1958, file: !37, line: 645, baseType: !1963, size: 64, offset: 1536)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{null, !1610, !1021}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1958, file: !37, line: 646, baseType: !1641, size: 64, offset: 1600)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1958, file: !37, line: 647, baseType: !1632, size: 64, offset: 1664)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1958, file: !37, line: 648, baseType: !1632, size: 64, offset: 1728)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !152, file: !30, line: 493, baseType: !1970, size: 64, offset: 4160)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !152, file: !30, line: 499, baseType: !128, size: 128, offset: 4224)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !152, file: !30, line: 502, baseType: !1974, size: 64, offset: 4352)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1976)
!1976 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !152, file: !30, line: 504, baseType: !1978, size: 64, offset: 4416)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !152, file: !30, line: 505, baseType: !83, size: 64, offset: 4480)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !152, file: !30, line: 510, baseType: !83, size: 64, offset: 4544)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !152, file: !30, line: 511, baseType: !1982, size: 64, offset: 4608)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1984)
!1984 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !152, file: !30, line: 513, baseType: !1986, size: 64, offset: 4672)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !1988)
!1988 = !{!1989, !1990}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1987, file: !30, line: 293, baseType: !7, size: 32)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1987, file: !30, line: 294, baseType: !145, size: 64, offset: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !152, file: !30, line: 515, baseType: !128, size: 128, offset: 4736)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !152, file: !30, line: 526, baseType: !1993, offset: 4864)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1994, line: 5, elements: !185)
!1994 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !152, file: !30, line: 528, baseType: !1996, size: 64, offset: 4864)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1998, line: 51, size: 1344, elements: !1999)
!1998 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!1999 = !{!2000, !2001, !2003, !2004, !2094, !2103, !2104, !2105, !2106, !2107, !2108, !2109}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1997, file: !1998, line: 52, baseType: !159, size: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1997, file: !1998, line: 53, baseType: !2002, size: 32, offset: 64)
!2002 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1998, line: 28, baseType: !460)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1997, file: !1998, line: 54, baseType: !159, size: 64, offset: 128)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1997, file: !1998, line: 55, baseType: !2005, size: 192, offset: 192)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2006, line: 17, size: 192, elements: !2007)
!2006 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!2007 = !{!2008, !2010, !2093}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !2005, file: !2006, line: 18, baseType: !2009, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2005, file: !2006, line: 19, baseType: !2011, size: 64, offset: 64)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2013)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !2006, line: 110, size: 1152, elements: !2014)
!2014 = !{!2015, !2019, !2023, !2029, !2035, !2039, !2043, !2048, !2052, !2053, !2057, !2061, !2065, !2076, !2077, !2078, !2079, !2089}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2013, file: !2006, line: 111, baseType: !2016, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{!2009, !2009}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2013, file: !2006, line: 112, baseType: !2020, size: 64, offset: 64)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{null, !2009}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !2013, file: !2006, line: 113, baseType: !2024, size: 64, offset: 128)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!1021, !2027}
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2005)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !2013, file: !2006, line: 114, baseType: !2030, size: 64, offset: 192)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{!1412, !2027, !2033}
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !2013, file: !2006, line: 116, baseType: !2036, size: 64, offset: 256)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{!1021, !2027, !159}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !2013, file: !2006, line: 118, baseType: !2040, size: 64, offset: 320)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{!99, !2027, !159, !7, !134, !259}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !2013, file: !2006, line: 123, baseType: !2044, size: 64, offset: 384)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!99, !2027, !159, !2047, !259}
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2013, file: !2006, line: 126, baseType: !2049, size: 64, offset: 448)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{!159, !2027}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !2013, file: !2006, line: 127, baseType: !2049, size: 64, offset: 512)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2013, file: !2006, line: 128, baseType: !2054, size: 64, offset: 576)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{!2009, !2027}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !2013, file: !2006, line: 130, baseType: !2058, size: 64, offset: 640)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{!2009, !2027, !2009}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !2013, file: !2006, line: 133, baseType: !2062, size: 64, offset: 704)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!2009, !2027, !159}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !2013, file: !2006, line: 135, baseType: !2066, size: 64, offset: 768)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{!99, !2027, !159, !159, !7, !7, !2069}
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !2006, line: 43, size: 640, elements: !2071)
!2071 = !{!2072, !2073, !2074}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2070, file: !2006, line: 44, baseType: !2009, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2070, file: !2006, line: 45, baseType: !7, size: 32, offset: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2070, file: !2006, line: 46, baseType: !2075, size: 512, offset: 128)
!2075 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 512, elements: !564)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !2013, file: !2006, line: 140, baseType: !2058, size: 64, offset: 832)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !2013, file: !2006, line: 143, baseType: !2054, size: 64, offset: 896)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !2013, file: !2006, line: 145, baseType: !2016, size: 64, offset: 960)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !2013, file: !2006, line: 146, baseType: !2080, size: 64, offset: 1024)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!99, !2027, !2083}
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !2006, line: 29, size: 128, elements: !2085)
!2085 = !{!2086, !2087, !2088}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2084, file: !2006, line: 30, baseType: !7, size: 32)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2084, file: !2006, line: 31, baseType: !7, size: 32, offset: 32)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2084, file: !2006, line: 32, baseType: !2027, size: 64, offset: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !2013, file: !2006, line: 148, baseType: !2090, size: 64, offset: 1088)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{!99, !2027, !1610}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2005, file: !2006, line: 20, baseType: !1610, size: 64, offset: 128)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1997, file: !1998, line: 57, baseType: !2095, size: 64, offset: 384)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1998, line: 31, size: 704, elements: !2097)
!2097 = !{!2098, !2099, !2100, !2101, !2102}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2096, file: !1998, line: 32, baseType: !212, size: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2096, file: !1998, line: 33, baseType: !99, size: 32, offset: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2096, file: !1998, line: 34, baseType: !134, size: 64, offset: 128)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2096, file: !1998, line: 35, baseType: !2095, size: 64, offset: 192)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2096, file: !1998, line: 43, baseType: !280, size: 448, offset: 256)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1997, file: !1998, line: 58, baseType: !2095, size: 64, offset: 448)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1997, file: !1998, line: 59, baseType: !1996, size: 64, offset: 512)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1997, file: !1998, line: 60, baseType: !1996, size: 64, offset: 576)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1997, file: !1998, line: 61, baseType: !1996, size: 64, offset: 640)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1997, file: !1998, line: 63, baseType: !155, size: 512, offset: 704)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1997, file: !1998, line: 65, baseType: !145, size: 64, offset: 1216)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1997, file: !1998, line: 66, baseType: !134, size: 64, offset: 1280)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !152, file: !30, line: 529, baseType: !2009, size: 64, offset: 4928)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !152, file: !30, line: 534, baseType: !2112, size: 32, offset: 4992)
!2112 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !129, line: 16, baseType: !2113)
!2113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !129, line: 13, baseType: !460)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !152, file: !30, line: 535, baseType: !460, size: 32, offset: 5024)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !152, file: !30, line: 537, baseType: !171, offset: 5056)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !152, file: !30, line: 538, baseType: !128, size: 128, offset: 5056)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !152, file: !30, line: 540, baseType: !2118, size: 64, offset: 5184)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2120, line: 54, size: 960, elements: !2121)
!2120 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2121 = !{!2122, !2123, !2124, !2125, !2126, !2127, !2128, !2132, !2136, !2137, !2138, !2139, !2143, !2147, !2148}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2119, file: !2120, line: 55, baseType: !159, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2119, file: !2120, line: 56, baseType: !1687, size: 64, offset: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2119, file: !2120, line: 58, baseType: !265, size: 64, offset: 128)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2119, file: !2120, line: 59, baseType: !265, size: 64, offset: 192)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2119, file: !2120, line: 60, baseType: !164, size: 64, offset: 256)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2119, file: !2120, line: 62, baseType: !1623, size: 64, offset: 320)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2119, file: !2120, line: 63, baseType: !2129, size: 64, offset: 384)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{!212, !1610, !1630}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2119, file: !2120, line: 65, baseType: !2133, size: 64, offset: 448)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{null, !2118}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2119, file: !2120, line: 66, baseType: !1632, size: 64, offset: 512)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2119, file: !2120, line: 68, baseType: !1641, size: 64, offset: 576)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2119, file: !2120, line: 70, baseType: !1395, size: 64, offset: 640)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2119, file: !2120, line: 71, baseType: !2140, size: 64, offset: 704)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{!1412, !1610}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2119, file: !2120, line: 73, baseType: !2144, size: 64, offset: 768)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{null, !1610, !1432, !1438}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2119, file: !2120, line: 75, baseType: !1636, size: 64, offset: 832)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2119, file: !2120, line: 77, baseType: !1757, size: 64, offset: 896)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !152, file: !30, line: 541, baseType: !265, size: 64, offset: 5248)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !152, file: !30, line: 543, baseType: !1632, size: 64, offset: 5312)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !152, file: !30, line: 544, baseType: !2152, size: 64, offset: 5376)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !152, file: !30, line: 545, baseType: !2155, size: 64, offset: 5440)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !152, file: !30, line: 547, baseType: !1021, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !152, file: !30, line: 548, baseType: !1021, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !152, file: !30, line: 549, baseType: !1021, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !152, file: !30, line: 550, baseType: !1021, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !149, file: !68, line: 105, baseType: !1958, size: 1792, offset: 5568)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "gpd_list_node", scope: !149, file: !68, line: 106, baseType: !128, size: 128, offset: 7360)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "parent_links", scope: !149, file: !68, line: 107, baseType: !128, size: 128, offset: 7488)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "child_links", scope: !149, file: !68, line: 108, baseType: !128, size: 128, offset: 7616)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "dev_list", scope: !149, file: !68, line: 109, baseType: !128, size: 128, offset: 7744)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "gov", scope: !149, file: !68, line: 110, baseType: !2167, size: 64, offset: 7872)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_power_governor", file: !68, line: 78, size: 128, elements: !2169)
!2169 = !{!2170, !2174}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "power_down_ok", scope: !2168, file: !68, line: 79, baseType: !2171, size: 64)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{!1021, !1957}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_ok", scope: !2168, file: !68, line: 80, baseType: !2175, size: 64, offset: 64)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!1021, !1610}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "power_off_work", scope: !149, file: !68, line: 111, baseType: !1346, size: 256, offset: 7936)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "provider", scope: !149, file: !68, line: 112, baseType: !2009, size: 64, offset: 8192)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "has_provider", scope: !149, file: !68, line: 113, baseType: !1021, size: 8, offset: 8256)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !149, file: !68, line: 114, baseType: !159, size: 64, offset: 8320)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "sd_count", scope: !149, file: !68, line: 115, baseType: !346, size: 32, offset: 8384)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !149, file: !68, line: 116, baseType: !67, size: 32, offset: 8416)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "device_count", scope: !149, file: !68, line: 117, baseType: !7, size: 32, offset: 8448)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_count", scope: !149, file: !68, line: 118, baseType: !7, size: 32, offset: 8480)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "prepared_count", scope: !149, file: !68, line: 119, baseType: !7, size: 32, offset: 8512)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "performance_state", scope: !149, file: !68, line: 120, baseType: !7, size: 32, offset: 8544)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "cpus", scope: !149, file: !68, line: 121, baseType: !2189, size: 64, offset: 8576)
!2189 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !141, line: 756, baseType: !2190)
!2190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 64, elements: !146)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "power_off", scope: !149, file: !68, line: 122, baseType: !2192, size: 64, offset: 8640)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DISubroutineType(types: !2194)
!2194 = !{!99, !148}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "power_on", scope: !149, file: !68, line: 123, baseType: !2192, size: 64, offset: 8704)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "power_notifiers", scope: !149, file: !68, line: 124, baseType: !2197, size: 64, offset: 8768)
!2197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_notifier_head", file: !1900, line: 70, size: 64, elements: !2198)
!2198 = !{!2199}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2197, file: !1900, line: 71, baseType: !1904, size: 64)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "opp_table", scope: !149, file: !68, line: 125, baseType: !2201, size: 64, offset: 8832)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = !DICompositeType(tag: DW_TAG_structure_type, name: "opp_table", file: !68, line: 101, flags: DIFlagFwdDecl)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "opp_to_performance_state", scope: !149, file: !68, line: 126, baseType: !2204, size: 64, offset: 8896)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{!7, !148, !2207}
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_opp", file: !68, line: 100, flags: DIFlagFwdDecl)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "set_performance_state", scope: !149, file: !68, line: 128, baseType: !2210, size: 64, offset: 8960)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{!99, !148, !7}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "dev_ops", scope: !149, file: !68, line: 130, baseType: !2214, size: 128, offset: 9024)
!2214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gpd_dev_ops", file: !68, line: 83, size: 128, elements: !2215)
!2215 = !{!2216, !2217}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2214, file: !68, line: 84, baseType: !1641, size: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2214, file: !68, line: 85, baseType: !1641, size: 64, offset: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "max_off_time_ns", scope: !149, file: !68, line: 131, baseType: !78, size: 64, offset: 9152)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "max_off_time_changed", scope: !149, file: !68, line: 132, baseType: !1021, size: 8, offset: 9216)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "cached_power_down_ok", scope: !149, file: !68, line: 133, baseType: !1021, size: 8, offset: 9224)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "cached_power_down_state_idx", scope: !149, file: !68, line: 134, baseType: !1021, size: 8, offset: 9232)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "attach_dev", scope: !149, file: !68, line: 135, baseType: !2223, size: 64, offset: 9280)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = !DISubroutineType(types: !2225)
!2225 = !{!99, !148, !1610}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "detach_dev", scope: !149, file: !68, line: 137, baseType: !2227, size: 64, offset: 9344)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DISubroutineType(types: !2229)
!2229 = !{null, !148, !1610}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !149, file: !68, line: 139, baseType: !7, size: 32, offset: 9408)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !149, file: !68, line: 140, baseType: !2232, size: 64, offset: 9472)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "genpd_power_state", file: !68, line: 88, size: 512, elements: !2234)
!2234 = !{!2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "power_off_latency_ns", scope: !2233, file: !68, line: 89, baseType: !78, size: 64)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "power_on_latency_ns", scope: !2233, file: !68, line: 90, baseType: !78, size: 64, offset: 64)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "residency_ns", scope: !2233, file: !68, line: 91, baseType: !78, size: 64, offset: 128)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2233, file: !68, line: 92, baseType: !83, size: 64, offset: 192)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "rejected", scope: !2233, file: !68, line: 93, baseType: !83, size: 64, offset: 256)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2233, file: !68, line: 94, baseType: !2009, size: 64, offset: 320)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "idle_time", scope: !2233, file: !68, line: 95, baseType: !96, size: 64, offset: 384)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2233, file: !68, line: 96, baseType: !134, size: 64, offset: 448)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "free_states", scope: !149, file: !68, line: 141, baseType: !2244, size: 64, offset: 9536)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{null, !2232, !7}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !149, file: !68, line: 143, baseType: !7, size: 32, offset: 9600)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "state_idx", scope: !149, file: !68, line: 144, baseType: !7, size: 32, offset: 9632)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "on_time", scope: !149, file: !68, line: 145, baseType: !96, size: 64, offset: 9664)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_time", scope: !149, file: !68, line: 146, baseType: !96, size: 64, offset: 9728)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !149, file: !68, line: 147, baseType: !2252, size: 64, offset: 9792)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2254)
!2254 = !DICompositeType(tag: DW_TAG_structure_type, name: "genpd_lock_ops", file: !68, line: 99, flags: DIFlagFwdDecl)
!2255 = !DIDerivedType(tag: DW_TAG_member, scope: !149, file: !68, line: 148, baseType: !2256, size: 192, offset: 9856)
!2256 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !149, file: !68, line: 148, size: 192, elements: !2257)
!2257 = !{!2258, !2259}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "mlock", scope: !2256, file: !68, line: 149, baseType: !421, size: 192)
!2259 = !DIDerivedType(tag: DW_TAG_member, scope: !2256, file: !68, line: 150, baseType: !2260, size: 64)
!2260 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2256, file: !68, line: 150, size: 64, elements: !2261)
!2261 = !{!2262, !2263}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "slock", scope: !2260, file: !68, line: 151, baseType: !171)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "lock_flags", scope: !2260, file: !68, line: 152, baseType: !145, size: 64)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "generic_pm_domain_data", file: !68, line: 187, size: 832, elements: !2266)
!2266 = !{!2267, !2268, !2276, !2277, !2278, !2279, !2280}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2265, file: !68, line: 188, baseType: !1873, size: 192)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "td", scope: !2265, file: !68, line: 189, baseType: !2269, size: 256, offset: 192)
!2269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gpd_timing_data", file: !68, line: 174, size: 256, elements: !2270)
!2270 = !{!2271, !2272, !2273, !2274, !2275}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_latency_ns", scope: !2269, file: !68, line: 175, baseType: !78, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency_ns", scope: !2269, file: !68, line: 176, baseType: !78, size: 64, offset: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "effective_constraint_ns", scope: !2269, file: !68, line: 177, baseType: !78, size: 64, offset: 128)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "constraint_changed", scope: !2269, file: !68, line: 178, baseType: !1021, size: 8, offset: 192)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "cached_suspend_ok", scope: !2269, file: !68, line: 179, baseType: !1021, size: 8, offset: 200)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "nb", scope: !2265, file: !68, line: 190, baseType: !1905, size: 192, offset: 448)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "power_nb", scope: !2265, file: !68, line: 191, baseType: !1904, size: 64, offset: 640)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2265, file: !68, line: 192, baseType: !99, size: 32, offset: 704)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "performance_state", scope: !2265, file: !68, line: 193, baseType: !7, size: 32, offset: 736)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2265, file: !68, line: 194, baseType: !134, size: 64, offset: 768)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gpd_link", file: !68, line: 163, size: 448, elements: !2283)
!2283 = !{!2284, !2285, !2286, !2287, !2288, !2289}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2282, file: !68, line: 164, baseType: !148, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "parent_node", scope: !2282, file: !68, line: 165, baseType: !128, size: 128, offset: 64)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2282, file: !68, line: 166, baseType: !148, size: 64, offset: 192)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "child_node", scope: !2282, file: !68, line: 167, baseType: !128, size: 128, offset: 256)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "performance_state", scope: !2282, file: !68, line: 170, baseType: !7, size: 32, offset: 384)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "prev_performance_state", scope: !2282, file: !68, line: 171, baseType: !7, size: 32, offset: 416)
!2290 = !{!0, !2291, !2293}
!2291 = !DIGlobalVariableExpression(var: !2292, expr: !DIExpression())
!2292 = distinct !DIGlobalVariable(name: "simple_qos_governor", scope: !2, file: !3, line: 310, type: !2168, isLocal: false, isDefinition: true)
!2293 = !DIGlobalVariableExpression(var: !2294, expr: !DIExpression())
!2294 = distinct !DIGlobalVariable(name: "pm_domain_always_on_gov", scope: !2, file: !3, line: 318, type: !2168, isLocal: false, isDefinition: true)
!2295 = !{!"rsp"}
!2296 = !{i32 7, !"Dwarf Version", i32 4}
!2297 = !{i32 2, !"Debug Info Version", i32 3}
!2298 = !{i32 1, !"wchar_size", i32 2}
!2299 = !{i32 1, !"Code Model", i32 2}
!2300 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2301 = distinct !DISubprogram(name: "cpu_power_down_ok", scope: !3, file: !3, line: 252, type: !2172, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !185)
!2302 = !DILocalVariable(name: "pd", arg: 1, scope: !2301, file: !3, line: 252, type: !1957)
!2303 = !DILocation(line: 252, column: 53, scope: !2301)
!2304 = !DILocalVariable(name: "genpd", scope: !2301, file: !3, line: 254, type: !148)
!2305 = !DILocation(line: 254, column: 28, scope: !2301)
!2306 = !DILocation(line: 254, column: 48, scope: !2301)
!2307 = !DILocation(line: 254, column: 36, scope: !2301)
!2308 = !DILocalVariable(name: "dev", scope: !2301, file: !3, line: 255, type: !87)
!2309 = !DILocation(line: 255, column: 25, scope: !2301)
!2310 = !DILocalVariable(name: "domain_wakeup", scope: !2301, file: !3, line: 256, type: !96)
!2311 = !DILocation(line: 256, column: 10, scope: !2301)
!2312 = !DILocalVariable(name: "next_hrtimer", scope: !2301, file: !3, line: 256, type: !96)
!2313 = !DILocation(line: 256, column: 25, scope: !2301)
!2314 = !DILocalVariable(name: "idle_duration_ns", scope: !2301, file: !3, line: 257, type: !78)
!2315 = !DILocation(line: 257, column: 6, scope: !2301)
!2316 = !DILocalVariable(name: "cpu", scope: !2301, file: !3, line: 258, type: !99)
!2317 = !DILocation(line: 258, column: 6, scope: !2301)
!2318 = !DILocalVariable(name: "i", scope: !2301, file: !3, line: 258, type: !99)
!2319 = !DILocation(line: 258, column: 11, scope: !2301)
!2320 = !DILocation(line: 261, column: 29, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2301, file: !3, line: 261, column: 6)
!2322 = !DILocation(line: 261, column: 7, scope: !2321)
!2323 = !DILocation(line: 261, column: 6, scope: !2301)
!2324 = !DILocation(line: 262, column: 3, scope: !2321)
!2325 = !DILocation(line: 264, column: 8, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2301, file: !3, line: 264, column: 6)
!2327 = !DILocation(line: 264, column: 15, scope: !2326)
!2328 = !DILocation(line: 264, column: 21, scope: !2326)
!2329 = !DILocation(line: 264, column: 6, scope: !2301)
!2330 = !DILocation(line: 265, column: 3, scope: !2326)
!2331 = !DILocation(line: 272, column: 18, scope: !2301)
!2332 = !DILocation(line: 272, column: 16, scope: !2301)
!2333 = !DILocation(line: 273, column: 2, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2301, file: !3, line: 273, column: 2)
!2335 = !DILocation(line: 273, column: 2, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2334, file: !3, line: 273, column: 2)
!2337 = !DILocation(line: 274, column: 9, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2339, file: !3, line: 274, column: 9)
!2339 = distinct !DILexicalBlock(scope: !2336, file: !3, line: 273, column: 54)
!2340 = !DILocation(line: 274, column: 9, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2338, file: !3, line: 274, column: 9)
!2342 = !DILocalVariable(name: "__vpp_verify", scope: !2343, file: !3, line: 274, type: !1412)
!2343 = distinct !DILexicalBlock(scope: !2341, file: !3, line: 274, column: 9)
!2344 = !DILocation(line: 274, column: 9, scope: !2343)
!2345 = !DILocation(line: 274, column: 9, scope: !2339)
!2346 = !DILocation(line: 274, column: 7, scope: !2339)
!2347 = !DILocation(line: 275, column: 7, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2339, file: !3, line: 275, column: 7)
!2349 = !DILocation(line: 275, column: 7, scope: !2339)
!2350 = !DILocation(line: 276, column: 19, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2352, file: !3, line: 276, column: 19)
!2352 = distinct !DILexicalBlock(scope: !2348, file: !3, line: 275, column: 12)
!2353 = !DILocation(line: 276, column: 19, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2351, file: !3, line: 276, column: 19)
!2355 = !DILocation(line: 276, column: 17, scope: !2352)
!2356 = !DILocation(line: 277, column: 21, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2352, file: !3, line: 277, column: 8)
!2358 = !DILocation(line: 277, column: 35, scope: !2357)
!2359 = !DILocation(line: 277, column: 8, scope: !2357)
!2360 = !DILocation(line: 277, column: 8, scope: !2352)
!2361 = !DILocation(line: 278, column: 21, scope: !2357)
!2362 = !DILocation(line: 278, column: 19, scope: !2357)
!2363 = !DILocation(line: 278, column: 5, scope: !2357)
!2364 = !DILocation(line: 279, column: 3, scope: !2352)
!2365 = !DILocation(line: 280, column: 2, scope: !2339)
!2366 = distinct !{!2366, !2333, !2367}
!2367 = !DILocation(line: 280, column: 2, scope: !2334)
!2368 = !DILocation(line: 283, column: 33, scope: !2301)
!2369 = !DILocation(line: 283, column: 21, scope: !2301)
!2370 = !DILocation(line: 283, column: 19, scope: !2301)
!2371 = !DILocation(line: 284, column: 6, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2301, file: !3, line: 284, column: 6)
!2373 = !DILocation(line: 284, column: 23, scope: !2372)
!2374 = !DILocation(line: 284, column: 6, scope: !2301)
!2375 = !DILocation(line: 285, column: 3, scope: !2372)
!2376 = !DILocation(line: 292, column: 6, scope: !2301)
!2377 = !DILocation(line: 292, column: 13, scope: !2301)
!2378 = !DILocation(line: 292, column: 4, scope: !2301)
!2379 = !DILocation(line: 293, column: 2, scope: !2301)
!2380 = !DILocation(line: 294, column: 7, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2382, file: !3, line: 294, column: 7)
!2382 = distinct !DILexicalBlock(scope: !2301, file: !3, line: 293, column: 5)
!2383 = !DILocation(line: 294, column: 28, scope: !2381)
!2384 = !DILocation(line: 294, column: 35, scope: !2381)
!2385 = !DILocation(line: 294, column: 42, scope: !2381)
!2386 = !DILocation(line: 294, column: 45, scope: !2381)
!2387 = !DILocation(line: 295, column: 7, scope: !2381)
!2388 = !DILocation(line: 295, column: 14, scope: !2381)
!2389 = !DILocation(line: 295, column: 21, scope: !2381)
!2390 = !DILocation(line: 295, column: 24, scope: !2381)
!2391 = !DILocation(line: 294, column: 58, scope: !2381)
!2392 = !DILocation(line: 294, column: 24, scope: !2381)
!2393 = !DILocation(line: 294, column: 7, scope: !2382)
!2394 = !DILocation(line: 296, column: 23, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2381, file: !3, line: 295, column: 47)
!2396 = !DILocation(line: 296, column: 4, scope: !2395)
!2397 = !DILocation(line: 296, column: 11, scope: !2395)
!2398 = !DILocation(line: 296, column: 21, scope: !2395)
!2399 = !DILocation(line: 297, column: 4, scope: !2395)
!2400 = !DILocation(line: 299, column: 2, scope: !2382)
!2401 = !DILocation(line: 299, column: 11, scope: !2301)
!2402 = !DILocation(line: 299, column: 15, scope: !2301)
!2403 = distinct !{!2403, !2379, !2404}
!2404 = !DILocation(line: 299, column: 19, scope: !2301)
!2405 = !DILocation(line: 301, column: 2, scope: !2301)
!2406 = !DILocation(line: 302, column: 1, scope: !2301)
!2407 = distinct !DISubprogram(name: "default_suspend_ok", scope: !3, file: !3, line: 50, type: !2176, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !185)
!2408 = !DILocalVariable(name: "lock", arg: 1, scope: !2409, file: !2410, line: 407, type: !2413)
!2409 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !2410, file: !2410, line: 407, type: !2411, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !185)
!2410 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!2411 = !DISubroutineType(types: !2412)
!2412 = !{null, !2413, !145}
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!2414 = !DILocation(line: 407, column: 64, scope: !2409, inlinedAt: !2415)
!2415 = distinct !DILocation(line: 63, column: 3, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2417, file: !3, line: 60, column: 31)
!2417 = distinct !DILexicalBlock(scope: !2407, file: !3, line: 60, column: 6)
!2418 = !DILocalVariable(name: "flags", arg: 2, scope: !2409, file: !2410, line: 407, type: !145)
!2419 = !DILocation(line: 407, column: 84, scope: !2409, inlinedAt: !2415)
!2420 = !DILocation(line: 407, column: 64, scope: !2409, inlinedAt: !2421)
!2421 = distinct !DILocation(line: 71, column: 2, scope: !2407)
!2422 = !DILocation(line: 407, column: 84, scope: !2409, inlinedAt: !2421)
!2423 = !DILocalVariable(name: "lock", arg: 1, scope: !2424, file: !2410, line: 327, type: !2413)
!2424 = distinct !DISubprogram(name: "spinlock_check", scope: !2410, file: !2410, line: 327, type: !2425, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !185)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{!2427, !2413}
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!2428 = !DILocation(line: 327, column: 67, scope: !2424, inlinedAt: !2429)
!2429 = distinct !DILocation(line: 58, column: 2, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2431, file: !3, line: 58, column: 2)
!2431 = distinct !DILexicalBlock(scope: !2432, file: !3, line: 58, column: 2)
!2432 = distinct !DILexicalBlock(scope: !2433, file: !3, line: 58, column: 2)
!2433 = distinct !DILexicalBlock(scope: !2434, file: !3, line: 58, column: 2)
!2434 = distinct !DILexicalBlock(scope: !2407, file: !3, line: 58, column: 2)
!2435 = !DILocalVariable(name: "dev", arg: 1, scope: !2407, file: !3, line: 50, type: !1610)
!2436 = !DILocation(line: 50, column: 47, scope: !2407)
!2437 = !DILocalVariable(name: "td", scope: !2407, file: !3, line: 52, type: !2438)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2439 = !DILocation(line: 52, column: 26, scope: !2407)
!2440 = !DILocation(line: 52, column: 45, scope: !2407)
!2441 = !DILocation(line: 52, column: 32, scope: !2407)
!2442 = !DILocation(line: 52, column: 51, scope: !2407)
!2443 = !DILocalVariable(name: "flags", scope: !2407, file: !3, line: 53, type: !145)
!2444 = !DILocation(line: 53, column: 16, scope: !2407)
!2445 = !DILocalVariable(name: "constraint_ns", scope: !2407, file: !3, line: 54, type: !78)
!2446 = !DILocation(line: 54, column: 6, scope: !2407)
!2447 = !DILocation(line: 58, column: 2, scope: !2407)
!2448 = !DILocation(line: 58, column: 2, scope: !2434)
!2449 = !DILocalVariable(name: "__dummy", scope: !2450, file: !3, line: 58, type: !145)
!2450 = distinct !DILexicalBlock(scope: !2433, file: !3, line: 58, column: 2)
!2451 = !DILocation(line: 58, column: 2, scope: !2450)
!2452 = !DILocalVariable(name: "__dummy2", scope: !2450, file: !3, line: 58, type: !145)
!2453 = !DILocation(line: 58, column: 2, scope: !2433)
!2454 = !DILocation(line: 58, column: 2, scope: !2432)
!2455 = !DILocation(line: 58, column: 2, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2432, file: !3, line: 58, column: 2)
!2457 = !DILocalVariable(name: "__dummy", scope: !2458, file: !3, line: 58, type: !145)
!2458 = distinct !DILexicalBlock(scope: !2459, file: !3, line: 58, column: 2)
!2459 = distinct !DILexicalBlock(scope: !2456, file: !3, line: 58, column: 2)
!2460 = !DILocation(line: 58, column: 2, scope: !2458)
!2461 = !DILocalVariable(name: "__dummy2", scope: !2458, file: !3, line: 58, type: !145)
!2462 = !DILocation(line: 58, column: 2, scope: !2459)
!2463 = !DILocation(line: 58, column: 2, scope: !2431)
!2464 = !{i32 -2143659980}
!2465 = !DILocation(line: 58, column: 2, scope: !2430)
!2466 = !DILocation(line: 329, column: 10, scope: !2424, inlinedAt: !2429)
!2467 = !DILocation(line: 329, column: 16, scope: !2424, inlinedAt: !2429)
!2468 = !DILocation(line: 60, column: 7, scope: !2417)
!2469 = !DILocation(line: 60, column: 11, scope: !2417)
!2470 = !DILocation(line: 60, column: 6, scope: !2407)
!2471 = !DILocalVariable(name: "ret", scope: !2416, file: !3, line: 61, type: !1021)
!2472 = !DILocation(line: 61, column: 8, scope: !2416)
!2473 = !DILocation(line: 61, column: 14, scope: !2416)
!2474 = !DILocation(line: 61, column: 18, scope: !2416)
!2475 = !DILocation(line: 63, column: 27, scope: !2416)
!2476 = !DILocation(line: 63, column: 32, scope: !2416)
!2477 = !DILocation(line: 63, column: 38, scope: !2416)
!2478 = !DILocation(line: 63, column: 44, scope: !2416)
!2479 = !DILocalVariable(name: "__dummy", scope: !2480, file: !2410, line: 409, type: !145)
!2480 = distinct !DILexicalBlock(scope: !2481, file: !2410, line: 409, column: 2)
!2481 = distinct !DILexicalBlock(scope: !2409, file: !2410, line: 409, column: 2)
!2482 = !DILocation(line: 409, column: 2, scope: !2480, inlinedAt: !2415)
!2483 = !DILocalVariable(name: "__dummy2", scope: !2480, file: !2410, line: 409, type: !145)
!2484 = !DILocalVariable(name: "__dummy", scope: !2485, file: !2410, line: 409, type: !145)
!2485 = distinct !DILexicalBlock(scope: !2486, file: !2410, line: 409, column: 2)
!2486 = distinct !DILexicalBlock(scope: !2487, file: !2410, line: 409, column: 2)
!2487 = distinct !DILexicalBlock(scope: !2488, file: !2410, line: 409, column: 2)
!2488 = distinct !DILexicalBlock(scope: !2481, file: !2410, line: 409, column: 2)
!2489 = !DILocation(line: 409, column: 2, scope: !2485, inlinedAt: !2415)
!2490 = !DILocalVariable(name: "__dummy2", scope: !2485, file: !2410, line: 409, type: !145)
!2491 = !DILocation(line: 409, column: 2, scope: !2486, inlinedAt: !2415)
!2492 = !DILocation(line: 409, column: 2, scope: !2493, inlinedAt: !2415)
!2493 = distinct !DILexicalBlock(scope: !2488, file: !2410, line: 409, column: 2)
!2494 = !{i32 -2145276113}
!2495 = !DILocation(line: 409, column: 2, scope: !2496, inlinedAt: !2415)
!2496 = distinct !DILexicalBlock(scope: !2493, file: !2410, line: 409, column: 2)
!2497 = !DILocation(line: 64, column: 10, scope: !2416)
!2498 = !DILocation(line: 64, column: 3, scope: !2416)
!2499 = !DILocation(line: 66, column: 2, scope: !2407)
!2500 = !DILocation(line: 66, column: 6, scope: !2407)
!2501 = !DILocation(line: 66, column: 25, scope: !2407)
!2502 = !DILocation(line: 67, column: 2, scope: !2407)
!2503 = !DILocation(line: 67, column: 6, scope: !2407)
!2504 = !DILocation(line: 67, column: 24, scope: !2407)
!2505 = !DILocation(line: 68, column: 2, scope: !2407)
!2506 = !DILocation(line: 68, column: 6, scope: !2407)
!2507 = !DILocation(line: 68, column: 30, scope: !2407)
!2508 = !DILocation(line: 69, column: 46, scope: !2407)
!2509 = !DILocation(line: 69, column: 18, scope: !2407)
!2510 = !DILocation(line: 69, column: 16, scope: !2407)
!2511 = !DILocation(line: 71, column: 26, scope: !2407)
!2512 = !DILocation(line: 71, column: 31, scope: !2407)
!2513 = !DILocation(line: 71, column: 37, scope: !2407)
!2514 = !DILocation(line: 71, column: 43, scope: !2407)
!2515 = !DILocation(line: 409, column: 2, scope: !2480, inlinedAt: !2421)
!2516 = !DILocation(line: 409, column: 2, scope: !2485, inlinedAt: !2421)
!2517 = !DILocation(line: 409, column: 2, scope: !2486, inlinedAt: !2421)
!2518 = !DILocation(line: 409, column: 2, scope: !2493, inlinedAt: !2421)
!2519 = !DILocation(line: 409, column: 2, scope: !2496, inlinedAt: !2421)
!2520 = !DILocation(line: 73, column: 6, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2407, file: !3, line: 73, column: 6)
!2522 = !DILocation(line: 73, column: 20, scope: !2521)
!2523 = !DILocation(line: 73, column: 6, scope: !2407)
!2524 = !DILocation(line: 74, column: 3, scope: !2521)
!2525 = !DILocation(line: 76, column: 16, scope: !2407)
!2526 = !DILocation(line: 82, column: 7, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2407, file: !3, line: 82, column: 6)
!2528 = !DILocation(line: 82, column: 12, scope: !2527)
!2529 = !DILocation(line: 82, column: 18, scope: !2527)
!2530 = !DILocation(line: 82, column: 6, scope: !2407)
!2531 = !DILocation(line: 83, column: 25, scope: !2527)
!2532 = !DILocation(line: 83, column: 30, scope: !2527)
!2533 = !DILocation(line: 83, column: 3, scope: !2527)
!2534 = !DILocation(line: 86, column: 6, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2407, file: !3, line: 86, column: 6)
!2536 = !DILocation(line: 86, column: 20, scope: !2535)
!2537 = !DILocation(line: 86, column: 6, scope: !2407)
!2538 = !DILocation(line: 88, column: 3, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2535, file: !3, line: 86, column: 63)
!2540 = !DILocation(line: 88, column: 7, scope: !2539)
!2541 = !DILocation(line: 88, column: 31, scope: !2539)
!2542 = !DILocation(line: 89, column: 3, scope: !2539)
!2543 = !DILocation(line: 89, column: 7, scope: !2539)
!2544 = !DILocation(line: 89, column: 25, scope: !2539)
!2545 = !DILocation(line: 90, column: 2, scope: !2539)
!2546 = !DILocation(line: 90, column: 13, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2535, file: !3, line: 90, column: 13)
!2548 = !DILocation(line: 90, column: 27, scope: !2547)
!2549 = !DILocation(line: 90, column: 13, scope: !2535)
!2550 = !DILocation(line: 97, column: 3, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2547, file: !3, line: 90, column: 33)
!2552 = !DILocation(line: 99, column: 20, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2547, file: !3, line: 98, column: 9)
!2554 = !DILocation(line: 99, column: 24, scope: !2553)
!2555 = !DILocation(line: 100, column: 5, scope: !2553)
!2556 = !DILocation(line: 100, column: 9, scope: !2553)
!2557 = !DILocation(line: 99, column: 43, scope: !2553)
!2558 = !DILocation(line: 99, column: 17, scope: !2553)
!2559 = !DILocation(line: 106, column: 7, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2553, file: !3, line: 106, column: 7)
!2561 = !DILocation(line: 106, column: 21, scope: !2560)
!2562 = !DILocation(line: 106, column: 7, scope: !2553)
!2563 = !DILocation(line: 107, column: 4, scope: !2560)
!2564 = !DILocation(line: 109, column: 33, scope: !2553)
!2565 = !DILocation(line: 109, column: 3, scope: !2553)
!2566 = !DILocation(line: 109, column: 7, scope: !2553)
!2567 = !DILocation(line: 109, column: 31, scope: !2553)
!2568 = !DILocation(line: 110, column: 3, scope: !2553)
!2569 = !DILocation(line: 110, column: 7, scope: !2553)
!2570 = !DILocation(line: 110, column: 25, scope: !2553)
!2571 = !DILocation(line: 117, column: 9, scope: !2407)
!2572 = !DILocation(line: 117, column: 13, scope: !2407)
!2573 = !DILocation(line: 117, column: 2, scope: !2407)
!2574 = !DILocation(line: 118, column: 1, scope: !2407)
!2575 = distinct !DISubprogram(name: "default_power_down_ok", scope: !3, file: !3, line: 209, type: !2172, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !185)
!2576 = !DILocalVariable(name: "pd", arg: 1, scope: !2575, file: !3, line: 209, type: !1957)
!2577 = !DILocation(line: 209, column: 57, scope: !2575)
!2578 = !DILocalVariable(name: "genpd", scope: !2575, file: !3, line: 211, type: !148)
!2579 = !DILocation(line: 211, column: 28, scope: !2575)
!2580 = !DILocation(line: 211, column: 48, scope: !2575)
!2581 = !DILocation(line: 211, column: 36, scope: !2575)
!2582 = !DILocalVariable(name: "link", scope: !2575, file: !3, line: 212, type: !2281)
!2583 = !DILocation(line: 212, column: 19, scope: !2575)
!2584 = !DILocation(line: 214, column: 7, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2575, file: !3, line: 214, column: 6)
!2586 = !DILocation(line: 214, column: 14, scope: !2585)
!2587 = !DILocation(line: 214, column: 6, scope: !2575)
!2588 = !DILocation(line: 215, column: 22, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 214, column: 36)
!2590 = !DILocation(line: 215, column: 29, scope: !2589)
!2591 = !DILocation(line: 215, column: 3, scope: !2589)
!2592 = !DILocation(line: 215, column: 10, scope: !2589)
!2593 = !DILocation(line: 215, column: 20, scope: !2589)
!2594 = !DILocation(line: 216, column: 10, scope: !2589)
!2595 = !DILocation(line: 216, column: 17, scope: !2589)
!2596 = !DILocation(line: 216, column: 3, scope: !2589)
!2597 = !DILocalVariable(name: "__mptr", scope: !2598, file: !3, line: 225, type: !134)
!2598 = distinct !DILexicalBlock(scope: !2599, file: !3, line: 225, column: 2)
!2599 = distinct !DILexicalBlock(scope: !2575, file: !3, line: 225, column: 2)
!2600 = !DILocation(line: 225, column: 2, scope: !2598)
!2601 = !DILocation(line: 225, column: 2, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2598, file: !3, line: 225, column: 2)
!2603 = !DILocation(line: 225, column: 2, scope: !2599)
!2604 = !DILocation(line: 225, column: 2, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2599, file: !3, line: 225, column: 2)
!2606 = !DILocation(line: 226, column: 3, scope: !2605)
!2607 = !DILocation(line: 226, column: 9, scope: !2605)
!2608 = !DILocation(line: 226, column: 17, scope: !2605)
!2609 = !DILocation(line: 226, column: 38, scope: !2605)
!2610 = !DILocalVariable(name: "__mptr", scope: !2611, file: !3, line: 225, type: !134)
!2611 = distinct !DILexicalBlock(scope: !2605, file: !3, line: 225, column: 2)
!2612 = !DILocation(line: 225, column: 2, scope: !2611)
!2613 = !DILocation(line: 225, column: 2, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2611, file: !3, line: 225, column: 2)
!2615 = distinct !{!2615, !2603, !2616}
!2616 = !DILocation(line: 226, column: 40, scope: !2599)
!2617 = !DILocation(line: 228, column: 2, scope: !2575)
!2618 = !DILocation(line: 228, column: 9, scope: !2575)
!2619 = !DILocation(line: 228, column: 25, scope: !2575)
!2620 = !DILocation(line: 229, column: 2, scope: !2575)
!2621 = !DILocation(line: 229, column: 9, scope: !2575)
!2622 = !DILocation(line: 229, column: 30, scope: !2575)
!2623 = !DILocation(line: 230, column: 2, scope: !2575)
!2624 = !DILocation(line: 230, column: 9, scope: !2575)
!2625 = !DILocation(line: 230, column: 30, scope: !2575)
!2626 = !DILocation(line: 231, column: 21, scope: !2575)
!2627 = !DILocation(line: 231, column: 28, scope: !2575)
!2628 = !DILocation(line: 231, column: 40, scope: !2575)
!2629 = !DILocation(line: 231, column: 2, scope: !2575)
!2630 = !DILocation(line: 231, column: 9, scope: !2575)
!2631 = !DILocation(line: 231, column: 19, scope: !2575)
!2632 = !DILocation(line: 234, column: 2, scope: !2575)
!2633 = !DILocation(line: 234, column: 34, scope: !2575)
!2634 = !DILocation(line: 234, column: 38, scope: !2575)
!2635 = !DILocation(line: 234, column: 45, scope: !2575)
!2636 = !DILocation(line: 234, column: 10, scope: !2575)
!2637 = !DILocation(line: 234, column: 9, scope: !2575)
!2638 = !DILocation(line: 235, column: 7, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2640, file: !3, line: 235, column: 7)
!2640 = distinct !DILexicalBlock(scope: !2575, file: !3, line: 234, column: 57)
!2641 = !DILocation(line: 235, column: 14, scope: !2639)
!2642 = !DILocation(line: 235, column: 24, scope: !2639)
!2643 = !DILocation(line: 235, column: 7, scope: !2640)
!2644 = !DILocation(line: 236, column: 4, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2639, file: !3, line: 235, column: 30)
!2646 = !DILocation(line: 236, column: 11, scope: !2645)
!2647 = !DILocation(line: 236, column: 32, scope: !2645)
!2648 = !DILocation(line: 237, column: 4, scope: !2645)
!2649 = !DILocation(line: 239, column: 3, scope: !2640)
!2650 = !DILocation(line: 239, column: 10, scope: !2640)
!2651 = !DILocation(line: 239, column: 19, scope: !2640)
!2652 = distinct !{!2652, !2632, !2653}
!2653 = !DILocation(line: 240, column: 2, scope: !2575)
!2654 = !DILocation(line: 242, column: 39, scope: !2575)
!2655 = !DILocation(line: 242, column: 46, scope: !2575)
!2656 = !DILocation(line: 242, column: 2, scope: !2575)
!2657 = !DILocation(line: 242, column: 9, scope: !2575)
!2658 = !DILocation(line: 242, column: 37, scope: !2575)
!2659 = !DILocation(line: 243, column: 9, scope: !2575)
!2660 = !DILocation(line: 243, column: 16, scope: !2575)
!2661 = !DILocation(line: 243, column: 2, scope: !2575)
!2662 = !DILocation(line: 244, column: 1, scope: !2575)
!2663 = distinct !DISubprogram(name: "always_on_power_down_ok", scope: !3, file: !3, line: 246, type: !2172, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !185)
!2664 = !DILocalVariable(name: "domain", arg: 1, scope: !2663, file: !3, line: 246, type: !1957)
!2665 = !DILocation(line: 246, column: 59, scope: !2663)
!2666 = !DILocation(line: 248, column: 2, scope: !2663)
!2667 = distinct !DISubprogram(name: "pd_to_genpd", scope: !68, file: !68, line: 158, type: !2668, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !185)
!2668 = !DISubroutineType(types: !2669)
!2669 = !{!148, !1957}
!2670 = !DILocalVariable(name: "pd", arg: 1, scope: !2667, file: !68, line: 158, type: !1957)
!2671 = !DILocation(line: 158, column: 75, scope: !2667)
!2672 = !DILocalVariable(name: "__mptr", scope: !2673, file: !68, line: 160, type: !134)
!2673 = distinct !DILexicalBlock(scope: !2667, file: !68, line: 160, column: 9)
!2674 = !DILocation(line: 160, column: 9, scope: !2673)
!2675 = !DILocation(line: 160, column: 9, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2673, file: !68, line: 160, column: 9)
!2677 = !DILocation(line: 160, column: 2, scope: !2667)
!2678 = distinct !DISubprogram(name: "ktime_set", scope: !97, file: !97, line: 38, type: !2679, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !185)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!96, !2681, !2682}
!2681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!2682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!2683 = !DILocalVariable(name: "secs", arg: 1, scope: !2678, file: !97, line: 38, type: !2681)
!2684 = !DILocation(line: 38, column: 43, scope: !2678)
!2685 = !DILocalVariable(name: "nsecs", arg: 2, scope: !2678, file: !97, line: 38, type: !2682)
!2686 = !DILocation(line: 38, column: 69, scope: !2678)
!2687 = !DILocation(line: 40, column: 6, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2678, file: !97, line: 40, column: 6)
!2689 = !DILocation(line: 40, column: 6, scope: !2678)
!2690 = !DILocation(line: 41, column: 3, scope: !2688)
!2691 = !DILocation(line: 43, column: 9, scope: !2678)
!2692 = !DILocation(line: 43, column: 14, scope: !2678)
!2693 = !DILocation(line: 43, column: 36, scope: !2678)
!2694 = !DILocation(line: 43, column: 29, scope: !2678)
!2695 = !DILocation(line: 43, column: 2, scope: !2678)
!2696 = !DILocation(line: 44, column: 1, scope: !2678)
!2697 = distinct !DISubprogram(name: "ktime_before", scope: !97, file: !97, line: 123, type: !2698, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !185)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!1021, !2700, !2700}
!2700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!2701 = !DILocalVariable(name: "cmp1", arg: 1, scope: !2697, file: !97, line: 123, type: !2700)
!2702 = !DILocation(line: 123, column: 47, scope: !2697)
!2703 = !DILocalVariable(name: "cmp2", arg: 2, scope: !2697, file: !97, line: 123, type: !2700)
!2704 = !DILocation(line: 123, column: 67, scope: !2697)
!2705 = !DILocation(line: 125, column: 23, scope: !2697)
!2706 = !DILocation(line: 125, column: 29, scope: !2697)
!2707 = !DILocation(line: 125, column: 9, scope: !2697)
!2708 = !DILocation(line: 125, column: 35, scope: !2697)
!2709 = !DILocation(line: 125, column: 2, scope: !2697)
!2710 = distinct !DISubprogram(name: "ktime_to_ns", scope: !97, file: !97, line: 80, type: !2711, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !185)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{!78, !2700}
!2713 = !DILocalVariable(name: "kt", arg: 1, scope: !2710, file: !97, line: 80, type: !2700)
!2714 = !DILocation(line: 80, column: 45, scope: !2710)
!2715 = !DILocation(line: 82, column: 9, scope: !2710)
!2716 = !DILocation(line: 82, column: 2, scope: !2710)
!2717 = distinct !DISubprogram(name: "ktime_compare", scope: !97, file: !97, line: 95, type: !2718, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !185)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!99, !2700, !2700}
!2720 = !DILocalVariable(name: "cmp1", arg: 1, scope: !2717, file: !97, line: 95, type: !2700)
!2721 = !DILocation(line: 95, column: 47, scope: !2717)
!2722 = !DILocalVariable(name: "cmp2", arg: 2, scope: !2717, file: !97, line: 95, type: !2700)
!2723 = !DILocation(line: 95, column: 67, scope: !2717)
!2724 = !DILocation(line: 97, column: 6, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2717, file: !97, line: 97, column: 6)
!2726 = !DILocation(line: 97, column: 13, scope: !2725)
!2727 = !DILocation(line: 97, column: 11, scope: !2725)
!2728 = !DILocation(line: 97, column: 6, scope: !2717)
!2729 = !DILocation(line: 98, column: 3, scope: !2725)
!2730 = !DILocation(line: 99, column: 6, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2717, file: !97, line: 99, column: 6)
!2732 = !DILocation(line: 99, column: 13, scope: !2731)
!2733 = !DILocation(line: 99, column: 11, scope: !2731)
!2734 = !DILocation(line: 99, column: 6, scope: !2717)
!2735 = !DILocation(line: 100, column: 3, scope: !2731)
!2736 = !DILocation(line: 101, column: 2, scope: !2717)
!2737 = !DILocation(line: 102, column: 1, scope: !2717)
!2738 = distinct !DISubprogram(name: "dev_gpd_data", scope: !68, file: !68, line: 203, type: !2739, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !185)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{!2264, !1610}
!2741 = !DILocalVariable(name: "dev", arg: 1, scope: !2738, file: !68, line: 203, type: !1610)
!2742 = !DILocation(line: 203, column: 74, scope: !2738)
!2743 = !DILocation(line: 205, column: 21, scope: !2738)
!2744 = !DILocation(line: 205, column: 26, scope: !2738)
!2745 = !DILocation(line: 205, column: 32, scope: !2738)
!2746 = !DILocation(line: 205, column: 45, scope: !2738)
!2747 = !DILocation(line: 205, column: 9, scope: !2738)
!2748 = !DILocation(line: 205, column: 2, scope: !2738)
!2749 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !2750, file: !2750, line: 666, type: !2751, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !185)
!2750 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!2751 = !DISubroutineType(types: !2752)
!2752 = !{!145}
!2753 = !DILocalVariable(name: "f", scope: !2749, file: !2750, line: 668, type: !145)
!2754 = !DILocation(line: 668, column: 16, scope: !2749)
!2755 = !DILocation(line: 670, column: 6, scope: !2749)
!2756 = !DILocation(line: 670, column: 4, scope: !2749)
!2757 = !DILocation(line: 671, column: 2, scope: !2749)
!2758 = !DILocation(line: 672, column: 9, scope: !2749)
!2759 = !DILocation(line: 672, column: 2, scope: !2749)
!2760 = distinct !DISubprogram(name: "dev_update_qos_constraint", scope: !3, file: !3, line: 15, type: !2761, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !185)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!99, !1610, !134}
!2763 = !DILocalVariable(name: "dev", arg: 1, scope: !2760, file: !3, line: 15, type: !1610)
!2764 = !DILocation(line: 15, column: 53, scope: !2760)
!2765 = !DILocalVariable(name: "data", arg: 2, scope: !2760, file: !3, line: 15, type: !134)
!2766 = !DILocation(line: 15, column: 64, scope: !2760)
!2767 = !DILocalVariable(name: "constraint_ns_p", scope: !2760, file: !3, line: 17, type: !2768)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!2769 = !DILocation(line: 17, column: 7, scope: !2760)
!2770 = !DILocation(line: 17, column: 25, scope: !2760)
!2771 = !DILocalVariable(name: "constraint_ns", scope: !2760, file: !3, line: 18, type: !78)
!2772 = !DILocation(line: 18, column: 6, scope: !2760)
!2773 = !DILocation(line: 20, column: 6, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2760, file: !3, line: 20, column: 6)
!2775 = !DILocation(line: 20, column: 11, scope: !2774)
!2776 = !DILocation(line: 20, column: 17, scope: !2774)
!2777 = !DILocation(line: 20, column: 29, scope: !2774)
!2778 = !DILocation(line: 20, column: 32, scope: !2774)
!2779 = !DILocation(line: 20, column: 37, scope: !2774)
!2780 = !DILocation(line: 20, column: 43, scope: !2774)
!2781 = !DILocation(line: 20, column: 56, scope: !2774)
!2782 = !DILocation(line: 20, column: 6, scope: !2760)
!2783 = !DILocation(line: 28, column: 32, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2774, file: !3, line: 20, column: 69)
!2785 = !DILocation(line: 28, column: 19, scope: !2784)
!2786 = !DILocation(line: 28, column: 38, scope: !2784)
!2787 = !DILocation(line: 28, column: 41, scope: !2784)
!2788 = !DILocation(line: 28, column: 17, scope: !2784)
!2789 = !DILocation(line: 29, column: 2, scope: !2784)
!2790 = !DILocation(line: 36, column: 41, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2774, file: !3, line: 29, column: 9)
!2792 = !DILocation(line: 36, column: 19, scope: !2791)
!2793 = !DILocation(line: 36, column: 17, scope: !2791)
!2794 = !DILocation(line: 37, column: 17, scope: !2791)
!2795 = !DILocation(line: 40, column: 6, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2760, file: !3, line: 40, column: 6)
!2797 = !DILocation(line: 40, column: 23, scope: !2796)
!2798 = !DILocation(line: 40, column: 22, scope: !2796)
!2799 = !DILocation(line: 40, column: 20, scope: !2796)
!2800 = !DILocation(line: 40, column: 6, scope: !2760)
!2801 = !DILocation(line: 41, column: 22, scope: !2796)
!2802 = !DILocation(line: 41, column: 4, scope: !2796)
!2803 = !DILocation(line: 41, column: 20, scope: !2796)
!2804 = !DILocation(line: 41, column: 3, scope: !2796)
!2805 = !DILocation(line: 43, column: 2, scope: !2760)
!2806 = distinct !DISubprogram(name: "to_gpd_data", scope: !68, file: !68, line: 198, type: !2807, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !185)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{!2264, !1872}
!2809 = !DILocalVariable(name: "pdd", arg: 1, scope: !2806, file: !68, line: 198, type: !1872)
!2810 = !DILocation(line: 198, column: 81, scope: !2806)
!2811 = !DILocalVariable(name: "__mptr", scope: !2812, file: !68, line: 200, type: !134)
!2812 = distinct !DILexicalBlock(scope: !2806, file: !68, line: 200, column: 9)
!2813 = !DILocation(line: 200, column: 9, scope: !2812)
!2814 = !DILocation(line: 200, column: 9, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2812, file: !68, line: 200, column: 9)
!2816 = !DILocation(line: 200, column: 2, scope: !2806)
!2817 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !2750, file: !2750, line: 646, type: !2751, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !185)
!2818 = !DILocalVariable(name: "__ret", scope: !2819, file: !2750, line: 648, type: !145)
!2819 = distinct !DILexicalBlock(scope: !2817, file: !2750, line: 648, column: 9)
!2820 = !DILocation(line: 648, column: 9, scope: !2819)
!2821 = !DILocalVariable(name: "__edi", scope: !2819, file: !2750, line: 648, type: !145)
!2822 = !DILocalVariable(name: "__esi", scope: !2819, file: !2750, line: 648, type: !145)
!2823 = !DILocalVariable(name: "__edx", scope: !2819, file: !2750, line: 648, type: !145)
!2824 = !DILocalVariable(name: "__ecx", scope: !2819, file: !2750, line: 648, type: !145)
!2825 = !DILocalVariable(name: "__eax", scope: !2819, file: !2750, line: 648, type: !145)
!2826 = !DILocation(line: 648, column: 9, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2828, file: !2750, line: 648, column: 9)
!2828 = distinct !DILexicalBlock(scope: !2819, file: !2750, line: 648, column: 9)
!2829 = !{i32 -2145752956, i32 -2145750641, i32 -2145750407, i32 -2145750356, i32 -2145750328, i32 -2145750303, i32 -2145750619, i32 -2145750606, i32 -2145750168, i32 -2145750049, i32 -2145750514, i32 -2145750487, i32 -2145750459, i32 -2145750429}
!2830 = !DILocalVariable(name: "__mask", scope: !2831, file: !2750, line: 648, type: !145)
!2831 = distinct !DILexicalBlock(scope: !2827, file: !2750, line: 648, column: 9)
!2832 = !DILocation(line: 648, column: 9, scope: !2831)
!2833 = !DILocation(line: 648, column: 9, scope: !2828)
!2834 = !DILocation(line: 648, column: 2, scope: !2817)
!2835 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !2750, file: !2750, line: 656, type: !2836, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !185)
!2836 = !DISubroutineType(types: !2837)
!2837 = !{null}
!2838 = !DILocalVariable(name: "__edi", scope: !2839, file: !2750, line: 658, type: !145)
!2839 = distinct !DILexicalBlock(scope: !2835, file: !2750, line: 658, column: 2)
!2840 = !DILocation(line: 658, column: 2, scope: !2839)
!2841 = !DILocalVariable(name: "__esi", scope: !2839, file: !2750, line: 658, type: !145)
!2842 = !DILocalVariable(name: "__edx", scope: !2839, file: !2750, line: 658, type: !145)
!2843 = !DILocalVariable(name: "__ecx", scope: !2839, file: !2750, line: 658, type: !145)
!2844 = !DILocalVariable(name: "__eax", scope: !2839, file: !2750, line: 658, type: !145)
!2845 = !{i32 -2145745862, i32 -2145745130, i32 -2145744896, i32 -2145744845, i32 -2145744817, i32 -2145744792, i32 -2145745108, i32 -2145745095, i32 -2145744657, i32 -2145744538, i32 -2145745003, i32 -2145744976, i32 -2145744948, i32 -2145744918}
!2846 = !DILocation(line: 659, column: 1, scope: !2835)
!2847 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !2750, file: !2750, line: 651, type: !2848, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !185)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{null, !145}
!2850 = !DILocalVariable(name: "f", arg: 1, scope: !2847, file: !2750, line: 651, type: !145)
!2851 = !DILocation(line: 651, column: 65, scope: !2847)
!2852 = !DILocalVariable(name: "__edi", scope: !2853, file: !2750, line: 653, type: !145)
!2853 = distinct !DILexicalBlock(scope: !2847, file: !2750, line: 653, column: 2)
!2854 = !DILocation(line: 653, column: 2, scope: !2853)
!2855 = !DILocalVariable(name: "__esi", scope: !2853, file: !2750, line: 653, type: !145)
!2856 = !DILocalVariable(name: "__edx", scope: !2853, file: !2750, line: 653, type: !145)
!2857 = !DILocalVariable(name: "__ecx", scope: !2853, file: !2750, line: 653, type: !145)
!2858 = !DILocalVariable(name: "__eax", scope: !2853, file: !2750, line: 653, type: !145)
!2859 = !{i32 -2145748489, i32 -2145747739, i32 -2145747505, i32 -2145747454, i32 -2145747426, i32 -2145747401, i32 -2145747717, i32 -2145747704, i32 -2145747266, i32 -2145747147, i32 -2145747612, i32 -2145747585, i32 -2145747557, i32 -2145747527}
!2860 = !DILocation(line: 654, column: 1, scope: !2847)
!2861 = distinct !DISubprogram(name: "__default_power_down_ok", scope: !3, file: !3, line: 120, type: !2862, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !185)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{!1021, !1957, !7}
!2864 = !DILocalVariable(name: "pd", arg: 1, scope: !2861, file: !3, line: 120, type: !1957)
!2865 = !DILocation(line: 120, column: 59, scope: !2861)
!2866 = !DILocalVariable(name: "state", arg: 2, scope: !2861, file: !3, line: 121, type: !7)
!2867 = !DILocation(line: 121, column: 23, scope: !2861)
!2868 = !DILocalVariable(name: "genpd", scope: !2861, file: !3, line: 123, type: !148)
!2869 = !DILocation(line: 123, column: 28, scope: !2861)
!2870 = !DILocation(line: 123, column: 48, scope: !2861)
!2871 = !DILocation(line: 123, column: 36, scope: !2861)
!2872 = !DILocalVariable(name: "link", scope: !2861, file: !3, line: 124, type: !2281)
!2873 = !DILocation(line: 124, column: 19, scope: !2861)
!2874 = !DILocalVariable(name: "pdd", scope: !2861, file: !3, line: 125, type: !1872)
!2875 = !DILocation(line: 125, column: 25, scope: !2861)
!2876 = !DILocalVariable(name: "min_off_time_ns", scope: !2861, file: !3, line: 126, type: !78)
!2877 = !DILocation(line: 126, column: 6, scope: !2861)
!2878 = !DILocalVariable(name: "off_on_time_ns", scope: !2861, file: !3, line: 127, type: !78)
!2879 = !DILocation(line: 127, column: 6, scope: !2861)
!2880 = !DILocation(line: 129, column: 19, scope: !2861)
!2881 = !DILocation(line: 129, column: 26, scope: !2861)
!2882 = !DILocation(line: 129, column: 33, scope: !2861)
!2883 = !DILocation(line: 129, column: 40, scope: !2861)
!2884 = !DILocation(line: 130, column: 3, scope: !2861)
!2885 = !DILocation(line: 130, column: 10, scope: !2861)
!2886 = !DILocation(line: 130, column: 17, scope: !2861)
!2887 = !DILocation(line: 130, column: 24, scope: !2861)
!2888 = !DILocation(line: 129, column: 61, scope: !2861)
!2889 = !DILocation(line: 129, column: 17, scope: !2861)
!2890 = !DILocation(line: 132, column: 18, scope: !2861)
!2891 = !DILocalVariable(name: "__mptr", scope: !2892, file: !3, line: 138, type: !134)
!2892 = distinct !DILexicalBlock(scope: !2893, file: !3, line: 138, column: 2)
!2893 = distinct !DILexicalBlock(scope: !2861, file: !3, line: 138, column: 2)
!2894 = !DILocation(line: 138, column: 2, scope: !2892)
!2895 = !DILocation(line: 138, column: 2, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2892, file: !3, line: 138, column: 2)
!2897 = !DILocation(line: 138, column: 2, scope: !2893)
!2898 = !DILocation(line: 138, column: 2, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2893, file: !3, line: 138, column: 2)
!2900 = !DILocalVariable(name: "sd", scope: !2901, file: !3, line: 139, type: !148)
!2901 = distinct !DILexicalBlock(scope: !2899, file: !3, line: 138, column: 63)
!2902 = !DILocation(line: 139, column: 29, scope: !2901)
!2903 = !DILocation(line: 139, column: 34, scope: !2901)
!2904 = !DILocation(line: 139, column: 40, scope: !2901)
!2905 = !DILocalVariable(name: "sd_max_off_ns", scope: !2901, file: !3, line: 140, type: !78)
!2906 = !DILocation(line: 140, column: 7, scope: !2901)
!2907 = !DILocation(line: 140, column: 23, scope: !2901)
!2908 = !DILocation(line: 140, column: 27, scope: !2901)
!2909 = !DILocation(line: 142, column: 7, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2901, file: !3, line: 142, column: 7)
!2911 = !DILocation(line: 142, column: 21, scope: !2910)
!2912 = !DILocation(line: 142, column: 7, scope: !2901)
!2913 = !DILocation(line: 143, column: 4, scope: !2910)
!2914 = !DILocation(line: 150, column: 7, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2901, file: !3, line: 150, column: 7)
!2916 = !DILocation(line: 150, column: 24, scope: !2915)
!2917 = !DILocation(line: 150, column: 21, scope: !2915)
!2918 = !DILocation(line: 150, column: 7, scope: !2901)
!2919 = !DILocation(line: 151, column: 4, scope: !2915)
!2920 = !DILocation(line: 153, column: 7, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2901, file: !3, line: 153, column: 7)
!2922 = !DILocation(line: 153, column: 25, scope: !2921)
!2923 = !DILocation(line: 153, column: 23, scope: !2921)
!2924 = !DILocation(line: 153, column: 39, scope: !2921)
!2925 = !DILocation(line: 153, column: 42, scope: !2921)
!2926 = !DILocation(line: 153, column: 58, scope: !2921)
!2927 = !DILocation(line: 153, column: 7, scope: !2901)
!2928 = !DILocation(line: 154, column: 22, scope: !2921)
!2929 = !DILocation(line: 154, column: 20, scope: !2921)
!2930 = !DILocation(line: 154, column: 4, scope: !2921)
!2931 = !DILocation(line: 155, column: 2, scope: !2901)
!2932 = !DILocalVariable(name: "__mptr", scope: !2933, file: !3, line: 138, type: !134)
!2933 = distinct !DILexicalBlock(scope: !2899, file: !3, line: 138, column: 2)
!2934 = !DILocation(line: 138, column: 2, scope: !2933)
!2935 = !DILocation(line: 138, column: 2, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !2933, file: !3, line: 138, column: 2)
!2937 = distinct !{!2937, !2897, !2938}
!2938 = !DILocation(line: 155, column: 2, scope: !2893)
!2939 = !DILocalVariable(name: "__mptr", scope: !2940, file: !3, line: 160, type: !134)
!2940 = distinct !DILexicalBlock(scope: !2941, file: !3, line: 160, column: 2)
!2941 = distinct !DILexicalBlock(scope: !2861, file: !3, line: 160, column: 2)
!2942 = !DILocation(line: 160, column: 2, scope: !2940)
!2943 = !DILocation(line: 160, column: 2, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2940, file: !3, line: 160, column: 2)
!2945 = !DILocation(line: 160, column: 2, scope: !2941)
!2946 = !DILocation(line: 160, column: 2, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2941, file: !3, line: 160, column: 2)
!2948 = !DILocalVariable(name: "td", scope: !2949, file: !3, line: 161, type: !2438)
!2949 = distinct !DILexicalBlock(scope: !2947, file: !3, line: 160, column: 56)
!2950 = !DILocation(line: 161, column: 27, scope: !2949)
!2951 = !DILocalVariable(name: "constraint_ns", scope: !2949, file: !3, line: 162, type: !78)
!2952 = !DILocation(line: 162, column: 7, scope: !2949)
!2953 = !DILocation(line: 169, column: 21, scope: !2949)
!2954 = !DILocation(line: 169, column: 9, scope: !2949)
!2955 = !DILocation(line: 169, column: 27, scope: !2949)
!2956 = !DILocation(line: 169, column: 6, scope: !2949)
!2957 = !DILocation(line: 170, column: 19, scope: !2949)
!2958 = !DILocation(line: 170, column: 23, scope: !2949)
!2959 = !DILocation(line: 170, column: 17, scope: !2949)
!2960 = !DILocation(line: 175, column: 7, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2949, file: !3, line: 175, column: 7)
!2962 = !DILocation(line: 175, column: 21, scope: !2961)
!2963 = !DILocation(line: 175, column: 7, scope: !2949)
!2964 = !DILocation(line: 176, column: 4, scope: !2961)
!2965 = !DILocation(line: 178, column: 7, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2949, file: !3, line: 178, column: 7)
!2967 = !DILocation(line: 178, column: 24, scope: !2966)
!2968 = !DILocation(line: 178, column: 21, scope: !2966)
!2969 = !DILocation(line: 178, column: 7, scope: !2949)
!2970 = !DILocation(line: 179, column: 4, scope: !2966)
!2971 = !DILocation(line: 181, column: 7, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2949, file: !3, line: 181, column: 7)
!2973 = !DILocation(line: 181, column: 25, scope: !2972)
!2974 = !DILocation(line: 181, column: 23, scope: !2972)
!2975 = !DILocation(line: 181, column: 39, scope: !2972)
!2976 = !DILocation(line: 181, column: 42, scope: !2972)
!2977 = !DILocation(line: 181, column: 58, scope: !2972)
!2978 = !DILocation(line: 181, column: 7, scope: !2949)
!2979 = !DILocation(line: 182, column: 22, scope: !2972)
!2980 = !DILocation(line: 182, column: 20, scope: !2972)
!2981 = !DILocation(line: 182, column: 4, scope: !2972)
!2982 = !DILocation(line: 183, column: 2, scope: !2949)
!2983 = !DILocalVariable(name: "__mptr", scope: !2984, file: !3, line: 160, type: !134)
!2984 = distinct !DILexicalBlock(scope: !2947, file: !3, line: 160, column: 2)
!2985 = !DILocation(line: 160, column: 2, scope: !2984)
!2986 = !DILocation(line: 160, column: 2, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2984, file: !3, line: 160, column: 2)
!2988 = distinct !{!2988, !2945, !2989}
!2989 = !DILocation(line: 183, column: 2, scope: !2941)
!2990 = !DILocation(line: 190, column: 6, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2861, file: !3, line: 190, column: 6)
!2992 = !DILocation(line: 190, column: 22, scope: !2991)
!2993 = !DILocation(line: 190, column: 6, scope: !2861)
!2994 = !DILocation(line: 191, column: 3, scope: !2991)
!2995 = !DILocation(line: 198, column: 27, scope: !2861)
!2996 = !DILocation(line: 199, column: 3, scope: !2861)
!2997 = !DILocation(line: 199, column: 10, scope: !2861)
!2998 = !DILocation(line: 199, column: 17, scope: !2861)
!2999 = !DILocation(line: 199, column: 24, scope: !2861)
!3000 = !DILocation(line: 198, column: 43, scope: !2861)
!3001 = !DILocation(line: 198, column: 2, scope: !2861)
!3002 = !DILocation(line: 198, column: 9, scope: !2861)
!3003 = !DILocation(line: 198, column: 25, scope: !2861)
!3004 = !DILocation(line: 200, column: 2, scope: !2861)
!3005 = !DILocation(line: 201, column: 1, scope: !2861)
